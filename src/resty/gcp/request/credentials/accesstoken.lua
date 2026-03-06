local http = require "resty.luasocket.http"
local jwt = require "resty.jwt"
local cjson = require("cjson.safe").new()
local semaphore = require "ngx.semaphore"

local SEMAPHORE_TIMEOUT = 30 -- semaphore timeout in seconds
local EXPIRY_WINDOW = 15 -- expiry window in seconds
local DEFAULT_OAUTH_TOKEN_URL = "https://www.googleapis.com/oauth2/v4/token"
local DEFAULT_METADATA_URL = "http://metadata.google.internal/computeMetadata/v1/instance/service-accounts/default/token"

local function GetJwtToken(serviceAccount, oauth_token_url)
    oauth_token_url = oauth_token_url or DEFAULT_OAUTH_TOKEN_URL
    local saDecode, err = cjson.decode(serviceAccount)
    if type(saDecode) ~= "table" then
        ngx.log(ngx.ERR, "[accesstoken] Invalid GCP_SERVICE_ACCOUNT, expect JSON: ", tostring(err))
        return nil, "Invalid format for GCP Service Account"
    end
    local timeNow = os.time()
    if (not (saDecode.client_email and saDecode.private_key and saDecode.private_key_id)) then
        ngx.log(ngx.ERR, "[accesstoken] Invalid GCP_SERVICE_ACCOUNT, missing required field")
        return nil, "Invalid GCP Service Account"
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
    local jwt_token, err =
        jwt:sign(
        saDecode.private_key,
        {
            header = {kid = saDecode.private_key_id, typ = "JWT", alg = "RS256"},
            payload = payloadJson
        }
    )
    if not jwt_token then
        ngx.log(ngx.ERR, "[accesstoken] Failed to sign JWT: ", tostring(err))
        return nil, err
    end
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
        return nil, err
    end

    client:close()
    local accessToken = cjson.decode(res.body)
    if accessToken.error then
        ngx.log(ngx.ERR, "[accesstoken] Unable to get access token: ", accessToken.error_description)
        return nil, accessToken.error_description
    end
    return accessToken
end

local function GetAccessTokenBySA(serviceAccount, oauth_token_url)
    oauth_token_url = oauth_token_url or DEFAULT_OAUTH_TOKEN_URL
    ngx.log(ngx.DEBUG, "[accesstoken] Using Environment Service Account to get Access Token")

    if not serviceAccount then
        -- Note: nginx workers do not have access to env vars. initialize in init phase
        -- or by the 'config' module.
        ngx.log(ngx.ERR, "[accesstoken] Couldn't find GCP_SERVICE_ACCOUNT env variable")
        return nil, "Couldn't find GCP_SERVICE_ACCOUNT env variable"
    end
    local jwtToken, err = GetJwtToken(serviceAccount, oauth_token_url)
    if not jwtToken then
        return nil, err
    end
    local res, err = GetAccessTokenByJwt(jwtToken, oauth_token_url)
    if not res then
        return nil, err
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
        return nil, err or "failed to get Access Token"
    end
    client:close()
    local accessToken = cjson.decode(res.body)
    return accessToken, "WI"
end

--- AccessToken class for managing GCP access tokens.
-- @classmod AccessToken
-- @field token string the current access token
-- @field expireTime number the token expiration time
-- @field authMethod string the authentication method used ("SA" or "WI")
-- @field gcpServiceAccount string|nil the GCP service account JSON
-- @field expireWindow number the expiry window in seconds
-- @field oauthTokenUrl string the OAuth token URL
-- @field metadataUrl string the metadata URL for Workload Identity
local AccessToken = {}

AccessToken.__index = AccessToken

--- Create a new AccessToken instance and acquire an initial token.
-- @tparam[opt] string gcpServiceAccount service account JSON string;
--   if nil, falls back to the `GCP_SERVICE_ACCOUNT` environment variable
-- @tparam[opt] table opts configuration options
-- @tparam[opt=15] number opts.expireWindow seconds before expiry to trigger refresh
-- @tparam[opt] string opts.oauth_token_url OAuth token endpoint URL
-- @tparam[opt] string opts.metadata_url GCE metadata endpoint URL
-- @tparam[opt="legacy"] string opts.auth_method_order authentication order:
--   `"legacy"` tries WI then SA; `"adc"` tries SA then WI
-- @treturn AccessToken a new AccessToken instance
-- @return nil, string on failure: nil and an error message
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
      accessToken, authMethod = GetAccessTokenByWI(self.metadataUrl)
      if not accessToken then
        accessToken, authMethod = GetAccessTokenBySA(gcpServiceAccount, self.oauthTokenUrl)
      end

    -- This simulates the official behavior of Application Default Credentials
    -- See https://cloud.google.com/docs/authentication/application-default-credentials#order
    -- for more details.
    -- The implementation is not exactly the same but a similar order of precedence is followed.
    elseif auth_method_order == "adc" then
      accessToken, authMethod = GetAccessTokenBySA(gcpServiceAccount, self.oauthTokenUrl)
      if not accessToken then
          accessToken, authMethod = GetAccessTokenByWI(self.metadataUrl)
      end

    else
        ngx.log(ngx.ERR, "[accesstoken] Invalid auth_method_order specified: ", auth_method_order)
    end

    if (accessToken) then
        self.token = accessToken.access_token
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
        return nil, "Failed to authenticate"
    end

    return self
end

function AccessToken:needsRefresh()
    return self.expireTime < ngx.now()
end

--- Force refresh by requesting a new access token regardless of expiry state.
-- @treturn boolean true on success, false on failure
-- @treturn string the access token on success, or error message on failure
-- @treturn number the token expiration timestamp on success, or nil on failure
function AccessToken:refresh()
    local accessToken, err
    if (self.authMethod == "SA") then
        accessToken, err = GetAccessTokenBySA(self.gcpServiceAccount, self.oauthTokenUrl)
    elseif (self.authMethod == "WI") then
        accessToken, err = GetAccessTokenByWI(self.metadataUrl)
    end

    if (accessToken) then
        self.token = accessToken.access_token
        local new_token_expires_in = tonumber(accessToken.expires_in)
        if new_token_expires_in > self.expireWindow then
            self.expireTime = ngx.now() + new_token_expires_in - self.expireWindow
        else
            self.expireTime = ngx.now() + new_token_expires_in
        end
        return true, self.token, self.expireTime
    end

    return nil, err
end

--- Get a valid access token, automatically refreshing when expired.
-- @treturn boolean true on success, false on failure
-- @treturn string the access token on success, or error message on failure
-- @treturn number the token expiration timestamp on success, or nil on failure
function AccessToken:get()
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

            local ok, token_or_err, _ = self:refresh()

            self._semaphore = nil
            sema:post(math.abs(sema:count()) + 1)

            if not ok then
                ngx.log(ngx.ERR, "[accesstoken] failed to get new access token: ", tostring(token_or_err))
                return nil, "failed to get new access token: " .. tostring(token_or_err)
            end
        end
    end

    return true, self.token, self.expireTime
end

return setmetatable(
    AccessToken,
    {
        __call = function(self, ...)
            return self:new(...)
        end
    }
)
