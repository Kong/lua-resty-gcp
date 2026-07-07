local http = require "resty.luasocket.http"
local cjson = require("cjson.safe")
local util = require "resty.gcp.request.util"
local table_concat = table.concat
local urlencode = ngx.escape_uri

local build_proxy_opts = util.build_proxy_opts
local apply_proxy_opts = util.apply_proxy_opts

-- These are hard coded in the current GCP token-exchange process, encoded at boot time for performance
local GRANT_TYPE_ENC = urlencode("urn:ietf:params:oauth:grant-type:token-exchange")
local SCOPE_ENC = urlencode("https://www.googleapis.com/auth/cloud-platform")
local REQUESTED_TOKEN_TYPE_ENC = urlencode("urn:ietf:params:oauth:token-type:access_token")

local EXPIRY_WINDOW = 15 -- expiry window in seconds

local GOOGLE_APPLICATION_CREDENTIALS_FILE = os.getenv("GOOGLE_APPLICATION_CREDENTIALS")
local GOOGLE_ACF_FILE_CONTENT
if GOOGLE_APPLICATION_CREDENTIALS_FILE then
    local file, err = io.open(GOOGLE_APPLICATION_CREDENTIALS_FILE, "r")
    if not file then
        error("[workload_identity_federation] failed to open file defined by GOOGLE_APPLICATION_CREDENTIALS environment variable: " .. tostring(err))
    end

    GOOGLE_ACF_FILE_CONTENT = file:read("*a")
    file:close()
end

--- Workload_Identity_Federation class for managing GCP access tokens from another account.
-- @classmod Workload_Identity_Federation
local Workload_Identity_Federation = {}

Workload_Identity_Federation.__index = Workload_Identity_Federation


local function params_to_payload(auth_conf, params)
    -- Handle specific cases
    if auth_conf.subject_token_type == "urn:ietf:params:aws:token-type:aws4_request" then
        -- Force a double-encode of the subject token
        params.subject_token = urlencode(params.subject_token)
    end
    --

    return table_concat(params, "&")
end

local function do_sourcesystem_to_gcp_exchange(auth_conf, subject_token, proxy_opts)
    local payload = params_to_payload(auth_conf, {
        "grant_type="           .. GRANT_TYPE_ENC,
        "audience="             .. urlencode(auth_conf.audience),
        "scope="                .. SCOPE_ENC,
        "requested_token_type=" .. REQUESTED_TOKEN_TYPE_ENC,
        "subject_token_type="   .. urlencode(auth_conf.subject_token_type),
        "subject_token="        .. urlencode(subject_token),
    })

    local httpc = http.new()
    apply_proxy_opts(httpc, proxy_opts)
    local res, err = httpc:request_uri(auth_conf.token_url, {
        method = "POST",
        headers = {
            ["Content-Type"] = "application/x-www-form-urlencoded"
        },
        body = payload
    })

    if not res then
        return nil, "failed to exchange subject token for GCP access token: " .. (err or "NONE")
    end

    if res.status ~= 200 then
        return nil, "failed to exchange subject token for GCP access token: HTTP " .. res.status .. ": " .. (res.body or "NONE")
    end

    if not res.body or res.body == "" then
        return nil, "empty token exchange response body"
    end
    local body, err = cjson.decode(res.body)
    if err then
        return nil, "failed to decode token exchange response: " .. err
    end

    if not body.access_token then
        return nil, "no access_token field in token exchange response"
    end

    return body
end

local function do_sourcesystem_to_gcp_identity(auth_conf, subject_token, proxy_opts)
    local exchange_token, err = do_sourcesystem_to_gcp_exchange(auth_conf, subject_token, proxy_opts)
    if err then
        return nil, err
    end

    local impersonation_url = auth_conf.service_account_impersonation_url

    if impersonation_url then
        local httpc = http.new()
        apply_proxy_opts(httpc, proxy_opts)
        local res, err = httpc:request_uri(impersonation_url, {
            method = "POST",
            headers = {
                ["Content-Type"] = "application/json",
                ["Authorization"] = "Bearer " .. exchange_token.access_token
            },
            body = cjson.encode({
                scope = {
                    "https://www.googleapis.com/auth/cloud-platform"
                },
            }),
        })

        if not res then
            return nil, "failed to impersonate service account: " .. (err or "NONE")
        end

        if res.status ~= 200 then
            return nil, "failed to impersonate service account: HTTP " .. res.status .. ": " .. (res.body or "NONE")
        end

        local body, err = cjson.decode(res.body)
        if not body then
            return nil, "failed to decode service account impersonation response: " .. (err or "NONE")
        end

        if not body.accessToken then
            return nil, "no accessToken field in service account impersonation response"
        end

        local token_expiry = 600 -- set a reasonable default in case we fail to parse the expiry time

        local aip_timestamp, _ = util.aip_date_to_timestamp(body.expireTime)
        if aip_timestamp then
            token_expiry = math.floor(aip_timestamp - ngx.now()) - 1
        end

        return {
            access_token = body.accessToken,
            expires_in = token_expiry
        }
    else
        return {
            access_token = exchange_token.access_token,
            expires_in = (exchange_token.expires_in and (exchange_token.expires_in > 0) and exchange_token.expires_in) or 600
        }
    end
end


--- Create a new Workload_Identity_Federation instance and acquire an initial token.
-- @tparam[opt] string|table federation_json Workload Identity Federation JSON string or Lua table;
--   if nil, falls back to the `GOOGLE_APPLICATION_CREDENTIALS` environment variable
-- @tparam[opt] string|table subject_token subject token for Workload Identity Federation
-- @tparam[opt] table opts configuration options
-- @tparam[opt=15] number opts.expireWindow seconds before expiry to trigger refresh
-- @tparam[opt] table opts.proxy_opts proxy options reused for token acquisition and API requests
-- @tparam[opt] string opts.proxy_opts.http_proxy HTTP proxy URL
-- @tparam[opt] string opts.proxy_opts.https_proxy HTTPS proxy URL
-- @tparam[opt] string opts.proxy_opts.http_proxy_authorization HTTP proxy authorization header value
-- @tparam[opt] string opts.proxy_opts.https_proxy_authorization HTTPS proxy authorization header value
-- @tparam[opt] string opts.proxy_opts.no_proxy comma-separated hosts that should bypass the proxy
-- @tparam[opt] string opts.http_proxy compatibility alias for `opts.proxy_opts.http_proxy`
-- @tparam[opt] string opts.https_proxy compatibility alias for `opts.proxy_opts.https_proxy`
-- @tparam[opt] string opts.http_proxy_authorization compatibility alias for `opts.proxy_opts.http_proxy_authorization`
-- @treturn Workload_Identity_Federation a new Workload_Identity_Federation instance
-- @return nil, string on failure: nil and an error message
function Workload_Identity_Federation:new(federation_json, subject_token, opts)
    local self = {}
    opts = opts or {}

    setmetatable(self, Workload_Identity_Federation)

    local err
    self.proxy_opts, err = build_proxy_opts(opts)
    if err then
        ngx.log(ngx.ERR, "[workload_identity_federation] Invalid proxy_opts specified: ", err)
        return nil, err
    end

    self.expireWindow = opts.expireWindow or EXPIRY_WINDOW
    self.federation_json = GOOGLE_ACF_FILE_CONTENT or federation_json or "{}"

    if type(self.federation_json) == "string" then
        self.federation_json, err = cjson.decode(self.federation_json)

        if err then
            ngx.log(ngx.ERR, "[workload_identity_federation] failed to decode federation auth JSON: ", tostring(err))
            return nil, "failed to decode federation auth JSON: " .. tostring(err)
        end
    end

    if type(subject_token) == "table" then
        subject_token = cjson.encode(subject_token)
    end

    local token_data, err = do_sourcesystem_to_gcp_identity(self.federation_json, subject_token, self.proxy_opts)
    if not token_data then
        ngx.log(ngx.ERR, "[workload_identity_federation] failed to acquire access token: ", tostring(err))
        return nil, "failed to acquire federated access token: " .. tostring(err)
    end

    self.token = token_data.access_token

    if token_data.expires_in > self.expireWindow then
        self.expireTime = ngx.now() + token_data.expires_in - self.expireWindow
    else
        self.expireTime = ngx.now() + token_data.expires_in
    end

    return self
end

function Workload_Identity_Federation:needsRefresh()
    return self.expireTime < ngx.now()
end

--- Force refresh by requesting a new access token regardless of expiry state.
-- @treturn boolean true on success, false on failure
-- @treturn string the access token on success, or error message on failure
-- @treturn number the token expiration timestamp on success, or nil on failure
function Workload_Identity_Federation:refresh()
    error("a signed subject_token can only be used once - create a new instance of Workload_Identity_Federation to refresh the token")
end

--- Get a valid access token, automatically refreshing when expired.
-- @treturn boolean true on success, false on failure
-- @treturn string the access token on success, or error message on failure
-- @treturn number the token expiration timestamp on success, or nil on failure
function Workload_Identity_Federation:get()
    return true, self.token, self.expireTime
end

return setmetatable(
    Workload_Identity_Federation,
    {
        __call = function(self, ...)
            return self:new(...)
        end
    }
)
