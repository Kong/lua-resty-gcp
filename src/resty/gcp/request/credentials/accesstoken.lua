local http = require "resty.luasocket.http"
local jwt = require "resty.jwt"
local cjson = require("cjson.safe").new()
local semaphore = require "ngx.semaphore"

local SEMAPHORE_TIMEOUT = 30 -- semaphore timeout in seconds
local EXPIRY_WINDOW = 15 -- expiry window in seconds
local DEFAULT_OAUTH_TOKEN_URL = "https://www.googleapis.com/oauth2/v4/token"
local DEFAULT_METADATA_URL = "http://metadata.google.internal/computeMetadata/v1/instance/service-accounts/default/token"

-- Executes a xpcall but returns hard-errors as Lua 'nil+err' result.
-- Handles max of 10 return values.
-- @param f function to execute
-- @param ... parameters to pass to the function
local function safe_call(f, ...)
  local ok, result, err, r3, r4, r5, r6, r7, r8, r9, r10 = xpcall(f, debug.traceback, ...)
  if ok then
    return result, err, r3, r4, r5, r6, r7, r8, r9, r10
  end
  return nil, result
end

local function GetJwtToken(serviceAccount, oauth_token_url)
    oauth_token_url = oauth_token_url or DEFAULT_OAUTH_TOKEN_URL
    local saDecode, err = cjson.decode(serviceAccount)
    if type(saDecode) ~= "table" then
        ngx.log(ngx.ERR, "[accesstoken] Invalid GCP_SERVICE_ACCOUNT, expect JSON: ", tostring(err))
        error("Invalid format for GCP Service Account")
        return
    end
    local timeNow = os.time()
    if (not (saDecode.client_email and saDecode.private_key and saDecode.private_key_id)) then
        ngx.log(ngx.ERR, "[accesstoken] Invalid GCP_SERVICE_ACCOUNT, missing required field")
        error("Invalid GCP Service Account")
        return
    end
    local payload = {
        iss = saDecode.client_email,
        sub = saDecode.client_email,
        aud = oauth_token_url,
        iat = timeNow,
        exp = timeNow + 3600,
        scope = "https://www.googleapis.com/auth/cloud-platform"
    }
    local payloadJson = cjson.encode(payload)
    local jwt_token =
        jwt:sign(
        saDecode.private_key,
        {
            header = {kid = saDecode.private_key_id, typ = "JWT", alg = "RS256"},
            payload = payloadJson
        }
    )
    return jwt_token
end

local function GetAccessTokenByJwt(jwtToken, oauth_token_url)
    oauth_token_url = oauth_token_url or DEFAULT_OAUTH_TOKEN_URL
    local client = http.new()
    local params = {
        grant_type = "urn:ietf:params:oauth:grant-type:jwt-bearer",
        assertion = jwtToken
    }
    local res, err =
        client:request_uri(
        oauth_token_url,
        {
            method = "POST",
            body = cjson.encode(params),
            ssl_verify = true,
        }
    )
    if not res then
        ngx.log(ngx.ERR, "[accesstoken] Unable to get access token")
        error(err)
        return
    end

    client:close()
    local accessToken = cjson.decode(res.body)
    return accessToken
end

local function GetAccessTokenBySA(serviceAccount, oauth_token_url)
    oauth_token_url = oauth_token_url or DEFAULT_OAUTH_TOKEN_URL
    ngx.log(ngx.DEBUG, "[accesstoken] Using Environment Service Account to get Access Token")

    if not serviceAccount then
        -- Note: nginx workers do not have access to env vars. initialize in init phase
        -- or by the 'config' module.
        ngx.log(ngx.ERR, "[accesstoken] Couldn't find GCP_SERVICE_ACCOUNT env variable")
        error("Couldn't find GCP_SERVICE_ACCOUNT env variable")
        return
    end
    local jwtToken = GetJwtToken(serviceAccount, oauth_token_url)
    local res = assert(GetAccessTokenByJwt(jwtToken, oauth_token_url))
    if res.error then
        ngx.log(ngx.ERR, "[accesstoken] Unable to get access token: ", res.error_description)
        return
    end
    return res, "SA"
end

local function GetAccessTokenByWI(metadata_url)
    metadata_url = metadata_url or DEFAULT_METADATA_URL
    ngx.log(ngx.DEBUG, "[accesstoken] Using Workload Identity to get Access Token")
    local client = http.new()
    local res, err =
        client:request_uri(
        metadata_url,
        {
            headers = {
                ["Metadata-Flavor"] = "Google"
            },
        }
    )

    if not res or not res.status or (res.status >= 400) then
        ngx.log(ngx.ERR, "[accesstoken] failed to get Access Token ", tostring(err))
        return
    end
    client:close()
    local accessToken = cjson.decode(res.body)
    return accessToken, "WI"
end

local AccessToken = {}

function AccessToken.__index(self, key)
    if key == "token" then
        if self:needsRefresh() then
            local ok, err = self:refresh()
            if not ok then
                ngx.log(ngx.ERR, "[accesstoken] auto refresh failed: ", tostring(err))
                return nil
            end
        end
        return rawget(self, "_token")
    end

    return AccessToken[key]
end

function AccessToken:new(gcpServiceAccount, opts)
    local self = {}
    opts = opts or {}

    setmetatable(self, AccessToken)

    self.expireWindow = opts.expireWindow or EXPIRY_WINDOW
    self.oauthTokenUrl = opts.oauth_token_url or DEFAULT_OAUTH_TOKEN_URL
    self.metadataUrl = opts.metadata_url or DEFAULT_METADATA_URL

    local auth_method_order = opts.auth_method_order or "legacy"
    gcpServiceAccount = gcpServiceAccount or os.getenv("GCP_SERVICE_ACCOUNT")

    local accessToken, authMethod
    -- To avoid breaking changes we keep the legacy behavior of WI, SA
    -- and add the ADC (Application Default Credentials) option.
    if auth_method_order == "legacy" then
      -- First try via Workload Identity and then via Service Account
      accessToken, authMethod = safe_call(GetAccessTokenByWI, self.metadataUrl)
      if not accessToken then
        accessToken, authMethod = safe_call(GetAccessTokenBySA, gcpServiceAccount, self.oauthTokenUrl)
      end

    -- This simulates the official behavior of Application Default Credentials
    -- See https://cloud.google.com/docs/authentication/application-default-credentials#order
    -- for more details.
    -- The implementation is not exactly the same but a similar order of precedence is followed.
    elseif auth_method_order == "adc" then
      accessToken, authMethod = safe_call(GetAccessTokenBySA, gcpServiceAccount, self.oauthTokenUrl)
      if not accessToken then
          accessToken, authMethod = safe_call(GetAccessTokenByWI, self.metadataUrl)
      end

    else
        ngx.log(ngx.ERR, "[accesstoken] Invalid auth_method_order specified: ", auth_method_order)
    end

    if (accessToken) then
        self._token = accessToken.access_token
        local new_token_expires_in = tonumber(accessToken.expires_in)
        if new_token_expires_in > self.expireWindow then
            self.expireTime = ngx.now() + new_token_expires_in - self.expireWindow
        else
            self.expireTime = ngx.now() + new_token_expires_in
        end

        self.authMethod = authMethod
        self.gcpServiceAccount = gcpServiceAccount
    else
        ngx.log(ngx.ERR, "[accesstoken] Unable to get accesstoken")
        error("Failed to authenticate")
        return nil
    end

    return self
end

function AccessToken:needsRefresh()
    return self.expireTime < ngx.now()
end

function AccessToken:refresh()
    while self:needsRefresh() do
        if self._semaphore then
            local ok, err = self._semaphore:wait(SEMAPHORE_TIMEOUT)
            if not ok then
                ngx.log(ngx.ERR, "[accesstoken] semaphore wait failed: ", tostring(err))
                return nil, "semaphore wait failed: " .. tostring(err)
            end
        else
            local sema, err = semaphore:new()
            if not sema then
                ngx.log(ngx.ERR, "[accesstoken] create semaphore failed: ", tostring(err))
                return nil, "create semaphore failed: " .. tostring(err)
            end
            self._semaphore = sema

            local accessToken, err
            if (self.authMethod == "SA") then
                accessToken, err = safe_call(GetAccessTokenBySA, self.gcpServiceAccount, self.oauthTokenUrl)
            elseif (self.authMethod == "WI") then
                accessToken, err = safe_call(GetAccessTokenByWI, self.metadataUrl)
            end

            if (accessToken) then
                self._token = accessToken.access_token
                local new_token_expires_in = tonumber(accessToken.expires_in)
                if new_token_expires_in > self.expireWindow then
                  self.expireTime = ngx.now() + new_token_expires_in - self.expireWindow
                else
                  self.expireTime = ngx.now() + new_token_expires_in
                end
            end

            self._semaphore = nil
            sema:post(math.abs(sema:count()) + 1)

            if not accessToken then
                ngx.log(ngx.ERR, "[accesstoken] failed to get new access token: ", tostring(err))
                return nil, "failed to get new access token: " .. tostring(err)
            end
        end
    end

    return true
end

return setmetatable(
    AccessToken,
    {
        __call = function(self, ...)
            return self:new(...)
        end
    }
)
