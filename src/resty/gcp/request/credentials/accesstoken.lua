local http = require "resty.gcp.request.http"
local jwt = require "resty.jwt"
local cjson = require "cjson.safe"


local os = os
local ngx = ngx
local type = type
local tostring = tostring
local getenv = os.getenv
local ngx_log = ngx.log
local DEBUG = ngx.DEBUG

local cjson_decode = cjson.decode
local cjson_encode = cjson.encode
local send_request = http.send_request


local JWT_AUD        = "https://www.googleapis.com/oauth2/v4/token"
local JWT_AUTH_URL   = "https://www.googleapis.com/oauth2/v4/token"
local JWT_GRANT_TYPE = "urn:ietf:params:oauth:grant-type:jwt-bearer"
local JWT_SCOPE      = "https://www.googleapis.com/auth/cloud-platform"

local WI_AUTH_URL = "http://metadata.google.internal/computeMetadata/v1/instance/service-accounts/default/token"


local function log(lvl, ...)
    ngx_log(lvl, "[access_token] ", ...)
end


local function validate_and_store_token(self, token, method)
    method = method or self.authMethod

    local typ = type(token)

    if typ ~= "table" then
        return nil, "invalid token data type: " .. typ

    elseif not token.access_token then
        return nil, "token data is missing `access_token`"

    elseif not token.expires_in then
        return nil, "token data is missing `expires_in`"
    end

    self.token = token.access_token
    self.expireTime = ngx.now() + token.expires_in
    self.authMethod = method

    return true
end


local function get_service_account(self)
    if self._service_account then
        return self._service_account
    end

    local env = getenv("GCP_SERVICE_ACCOUNT")
    if not env or env == "" then
        return nil, "GCP_SERVICE_ACCOUNT env var is unset or empty"
    end

    local decoded, err = cjson_decode(env)
    local typ = type(decoded)

    if decoded == nil then
        return nil, "GCP_SERVICE_ACCOUNT contains invalid JSON: " .. tostring(err)

    elseif typ ~= "table" then
        return nil, "GCP_SERVICE_ACCOUNT contains unexpected JSON type: " .. typ

    elseif not decoded.client_email or
           not decoded.private_key or
           not decoded.private_key_id
    then
        return nil, "GCP_SERVICE_ACCOUNT data is missing required field " ..
                    "(`client_email` or `private_key` or `private_key_id`)"
    end

    self._service_account = decoded

    return decoded
end


local function GetAccessTokenByJwt(self)
    local sa, err = get_service_account(self)
    if not sa then
        return nil, "missing service account: " .. err
    end

    local time = os.time(os.date("!*t"))

    local payload = cjson_encode({
        iss = sa.client_email,
        sub = sa.client_email,
        aud = JWT_AUD,
        iat = time,
        exp = time + 3600,
        scope = JWT_SCOPE,
    })

    local jwt_token = jwt:sign(sa.private_key, {
        header = {
            kid = sa.private_key_id,
            typ = "JWT",
            alg = "RS256",
        },
        payload = payload,
    })

    local res
    res, err = send_request(JWT_AUTH_URL, {
        method = "POST",
        body = {
            grant_type = JWT_GRANT_TYPE,
            assertion = jwt_token,
        }
    })

    if not res then
        return nil, "JWT request failed: " .. err
    end

    return res
end


local function GetAccessTokenBySA(self)
    log(DEBUG, "Using Envrionment Service Account to get Access Token")

    local res, err = GetAccessTokenByJwt(self)
    if not res then
        return nil, err
    end

    return validate_and_store_token(self, res.json, "SA")
end


local function GetAccessTokenByWI(self)
    log(DEBUG, "Using Workload Identity to get Access Token")

    local res, err = send_request(WI_AUTH_URL, {
        headers = {
            ["Metadata-Flavor"] = "Google"
        },
    })

    if not res then
        return nil, "Workload Identity token request failed: " .. err
    end

    return validate_and_store_token(self, res.json, "WI")
end


local AccessToken = {}
AccessToken.__index = AccessToken


function AccessToken.new()
    local self = {}
    setmetatable(self, AccessToken)

    -- Note: nginx workers do not have access to env vars. initialize in init phase
    -- or by the 'config' module.
    get_service_account(self)

    local ok, wi_err, sa_err

    -- First try via Workload Identity and then via Service Account
    ok, wi_err = GetAccessTokenByWI(self)
    if ok then
        return true
    end

    ok, sa_err = GetAccessTokenBySA(self)
    if ok then
        return true
    end

    return nil, "failed to authenticate", { wi_err, sa_err }
end


function AccessToken:needsRefresh()
    return self.expireTime < ngx.now()
end


function AccessToken:refresh()
    local method = self.authMethod
    assert(method == "SA" or method == "WI",
           "invalid AccessToken.authMethod '" .. tostring(method) .. "'")

    if method == "SA" then
        return GetAccessTokenBySA(self)

    elseif method == "WI" then
        return GetAccessTokenByWI()
    end
end


return setmetatable(
    AccessToken,
    {
        __call = function()
            return AccessToken.new()
        end
    }
)