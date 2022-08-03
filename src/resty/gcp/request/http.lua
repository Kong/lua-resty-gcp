-- load a version of resty-http using luasocket as a fallback
-- this enables using the SDK in the "init" phase where cosockets
-- are unavailable.
--
-- NOTE: the socket compatibilty is not sturdy enough to have the http-client
-- make multiple requests over the same connection. So after each request create
-- a new http client and do not re-use it.
local http
do
    -- store old values
    local old_tcp = ngx.socket.tcp
    local old_http_client = package.loaded["resty.http"]

    -- FIXME: need to remove this resty.aws dependency
    local socket = require "resty.aws.request.http.socket"

    -- patch/remove existing stuff
    package.loaded["resty.http"] = nil
    ngx.socket.tcp = socket.tcp  -- luacheck: ignore

    -- load http, upon requiring it will cache the TCP function
    http = require "resty.http"

    -- restore original versions
    ngx.socket.tcp = old_tcp  -- luacheck: ignore
    package.loaded["resty.http"] = old_http_client
end


local cjson = require("cjson.safe").new()
local resty_headers = require "resty.http_headers"

local cjson_decode = cjson.decode
local cjson_encode = cjson.encode
local type = type
local tostring = tostring

local ngx = ngx
local log = ngx.log
local DEBUG = ngx.DEBUG

local function new_http_headers(t)
    local headers = resty_headers.new()

    if t then
        for k, v in pairs(t) do
            headers[k] = v
        end
    end

    return headers
end

local _M = {}


-- HTTP request helper
--
-- Accepts the same arguments as `resty.http:request_uri()`
--
-- Both `uri` and `params` are required. An exception will be thrown if they
-- are not provided by the caller.
--
-- If `params.body` is a table, it will be JSON-encoded before sending.
--
-- If the response contains valid JSON in the body, it is decoded and stored in
-- the `json` attribute of the response object.
--
-- On success, returns the response object
-- On failure, returns `nil` and an error string
function _M.send_request(uri, params)
    local typ = type(uri)
    if typ ~= "string" then
        error("request uri must be a string (got '" .. typ .. "')", 2)
    end

    typ = type(params)
    if typ ~= "table" then
        error("request params must be a table (got '" .. typ .. "')", 2)
    end

    local client, err = http.new()
    if not client then
        return nil, "failed creating http client: " .. tostring(err)
    end

    -- TODO: detect when keepalive can be used
    params.keepalive = false

    -- FIXME: detect when ssl_verify can be used
    params.ssl_verify = false

    params.headers = new_http_headers(params.headers)

    -- handle request JSON body
    if params.body and type(params.body) == "table" then
        local body, jerr = cjson_encode(params.body)
        if jerr then
            return nil, "failed encoding JSON request body: " .. tostring(jerr)
        end

        -- caller is allowed to override Content-Type if they wish
        if not params.headers["Content-Type"] then
            params.headers["Content-Type"] = "application/json"
        end

        params.body = body
    end

    local res
    res, err = client:request_uri(uri, params)

    if not res then
        return nil, "sending http request failed: " .. tostring(err)

    elseif res.status >= 400 then
        log(DEBUG, "GCP request to '", uri, "' returned HTTP ", res.status)
    end


    -- optimistically attempt to decode the response body as a JSON blob. If
    -- this fails AND the response contains a JSON-esque Content-Type header,
    -- we consider it a failure and return an error response to the caller.
    --
    -- TODO: research GCP API guarantees so we can make this a little more
    -- strict
    if res.has_body then
        local json, jerr = cjson_decode(res.body)
        if json ~= nil then
            res.json = json

        else
            local ctype = res.headers["Content-Type"] or ""
            if ctype:lower():find("json", nil, true) then
                return nil, "failed decoding JSON response: " .. tostring(jerr)
            end
        end
    end

    return res
end


return _M