local http = require "resty.luasocket.http"
local cjson = require("cjson.safe")
local util = require "resty.gcp.request.util"
local table_concat = table.concat
local urlencode = ngx.escape_uri
local semaphore = require "ngx.semaphore"

local build_proxy_opts = util.build_proxy_opts
local apply_proxy_opts = util.apply_proxy_opts

-- These are hard coded in the current GCP token-exchange process, encoded at boot time for performance
local GRANT_TYPE_ENC = urlencode("urn:ietf:params:oauth:grant-type:token-exchange")
local SCOPE_ENC = urlencode("https://www.googleapis.com/auth/cloud-platform")
local REQUESTED_TOKEN_TYPE_ENC = urlencode("urn:ietf:params:oauth:token-type:access_token")

local SEMAPHORE_TIMEOUT = 30 -- semaphore timeout in seconds
local EXPIRY_WINDOW = 15 -- expiry window in seconds

local GOOGLE_APPLICATION_CREDENTIALS_FILE = os.getenv("GOOGLE_APPLICATION_CREDENTIALS")
local GOOGLE_ACF_FILE_CONTENT
do
    if GOOGLE_APPLICATION_CREDENTIALS_FILE then
        local file, err = io.open(GOOGLE_APPLICATION_CREDENTIALS_FILE, "r")
        if file then
            GOOGLE_ACF_FILE_CONTENT = file:read("*a")
            file:close()
        else
            ngx.log(ngx.ERR, "[workload_identity_federation] failed to open GOOGLE_APPLICATION_CREDENTIALS file: ", tostring(err))
        end
    end
end

--- Workload_Identity_Federation class for managing GCP access tokens from another account.
-- @classmod Workload_Identity_Federation
local Workload_Identity_Federation = {}

Workload_Identity_Federation.__index = Workload_Identity_Federation


local function do_sourcesystem_to_gcp_exchange(auth_conf, subject_token, proxy_opts)
    -- Handle specific cases
    if auth_conf.subject_token_type == "urn:ietf:params:aws:token-type:aws4_request" then
        -- Force a double-encode of the subject token
        subject_token = urlencode(subject_token)
    end

    local params = {
        "grant_type="           .. GRANT_TYPE_ENC,
        "audience="             .. urlencode(auth_conf.audience),
        "scope="                .. SCOPE_ENC,
        "requested_token_type=" .. REQUESTED_TOKEN_TYPE_ENC,
        "subject_token_type="   .. urlencode(auth_conf.subject_token_type),
        "subject_token="        .. urlencode(subject_token),
    }

    local payload = table_concat(params, "&")

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
-- @tparam[opt] string|table|nil federation_json Workload Identity Federation JSON string or Lua table;
--   if nil, falls back to the file pointed to by the `GOOGLE_APPLICATION_CREDENTIALS` environment variable
-- @tparam[opt] string|table|nil subject_token subject token for Workload Identity Federation
--   if nil, you must provide an opts.subject_token_refresh_function to acquire a new subject token when needed
-- @tparam[opt] table opts configuration options; all opts can be nil
-- @tparam[opt] function opts.subject_token_refresh_function function that returns a new subject token when called
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

    if opts.subject_token_refresh_function and type(opts.subject_token_refresh_function) == "function" then
        self.subject_token_refresh_function = opts.subject_token_refresh_function
    end

    self.expireWindow = opts.expireWindow or EXPIRY_WINDOW
    self.federation_json = federation_json or GOOGLE_ACF_FILE_CONTENT  -- prefer the 'user override' (per endpoint) over the 'sdk default'

    if not self.federation_json then
        ngx.log(ngx.ERR, "[workload_identity_federation] no federation JSON provided and no GOOGLE_APPLICATION_CREDENTIALS file found")
        return nil, "no federation JSON provided and no GOOGLE_APPLICATION_CREDENTIALS file found"
    end

    if type(self.federation_json) == "string" then
        self.federation_json, err = cjson.decode(self.federation_json)

        if err then
            ngx.log(ngx.ERR, "[workload_identity_federation] failed to decode federation auth JSON: ", tostring(err))
            return nil, "failed to decode federation auth JSON: " .. tostring(err)
        end
    end

    if subject_token and subject_token ~= ngx.null then
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

    elseif self.subject_token_refresh_function then
        -- We weren't passed an "initial" subject token, so call the refresh function
        -- to bootstrap the class
        local ok, err = self:refresh()
        if not ok then
            ngx.log(ngx.ERR, "[workload_identity_federation] failed to refresh token during initialization: ", tostring(err))
            return nil, "failed to refresh token during initialization: " .. tostring(err)
        end

    else
        ngx.log(ngx.ERR, "[workload_identity_federation] no subject token provided and no subject token refresh function defined")
        return nil, "no subject token provided and no subject token refresh function defined"
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
    if self.subject_token_refresh_function then
        local new_subject_token, err = self:subject_token_refresh_function()
        if not new_subject_token then
            return false, "failed to refresh subject token: " .. (err or "unknown error"), nil
        end

        if type(new_subject_token) == "table" then
            new_subject_token = cjson.encode(new_subject_token)
        end

        local token_data, err = do_sourcesystem_to_gcp_identity(self.federation_json, new_subject_token, self.proxy_opts)
        if not token_data then
            ngx.log(ngx.ERR, "[workload_identity_federation] failed to acquire access token: ", tostring(err))
            return false, "failed to acquire federated access token: " .. tostring(err), nil
        end

        self.token = token_data.access_token

        if token_data.expires_in > self.expireWindow then
            self.expireTime = ngx.now() + token_data.expires_in - self.expireWindow
        else
            self.expireTime = ngx.now() + token_data.expires_in
        end

        return true, self.token, self.expireTime
    end

    error("a signed subject_token can only be used once - create a new instance of Workload_Identity_Federation to refresh the token")
end

--- Get a valid access token, automatically refreshing when expired.
-- @treturn boolean true on success, false on failure
-- @treturn string the access token on success, or error message on failure
-- @treturn number the token expiration timestamp on success, or nil on failure
function Workload_Identity_Federation:get()
    if self.subject_token_refresh_function and type(self.subject_token_refresh_function) == "function" then
        while self:needsRefresh() do
            if self._semaphore then
                local ok, err = self._semaphore:wait(SEMAPHORE_TIMEOUT)
                if not ok then
                    ngx.log(ngx.ERR, "[workload_identity_federation] semaphore wait failed: ", tostring(err))
                    return nil, "semaphore wait failed: " .. tostring(err)
                end
            else
                local sema, err = semaphore:new()
                if not sema then
                    ngx.log(ngx.ERR, "[workload_identity_federation] create semaphore failed: ", tostring(err))
                    return nil, "create semaphore failed: " .. tostring(err)
                end
                self._semaphore = sema

                local ok, token_or_err, _ = self:refresh()

                self._semaphore = nil
                sema:post(math.abs(sema:count()) + 1)

                if not ok then
                    ngx.log(ngx.ERR, "[workload_identity_federation] failed to get new access token: ", tostring(token_or_err))
                    return nil, "failed to get new access token: " .. tostring(token_or_err)
                end
            end
        end
    end

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
