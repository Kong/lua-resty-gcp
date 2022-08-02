local cjson = require("cjson.safe").new()
local http = require "resty.gcp.request.http.http"

local cjson_decode = cjson.decode
local fmt = string.format
local gsub = string.gsub
local ipairs = ipairs
local pairs = pairs
local setmetatable = setmetatable
local type = type
local rawget = rawget


local lookup_helper = function(self, key) -- signature to match __index meta-method
    if type(key) == "string" then
        local lckey = key:lower()
        if rawget(self, lckey) ~= nil then
            error(fmt("key %q not found, did you mean %q?", key, lckey), 2)
        end
    end
    error(fmt("key '%s' not found", key), 2)
end


local ApiDiscovery
do
    local apis

    function ApiDiscovery()
        if apis then
            return apis
        end

        local discovery = require "resty.gcp.request.discovery"
        apis = {}

        for i, v in ipairs(discovery.items) do
            local id = gsub(v.id, ":", "_")
            -- TODO: not sure what we need `s/./p/` for
            id = gsub(id, "%.", "p")
            apis[i] = id
        end

        return apis
    end
end


local FindApis
FindApis = function(apiClass, methods, curr)
    if type(apiClass) == "table" then
        for k, v in pairs(apiClass) do
            if k == "baseUrl" then
                methods[k] = v

            elseif k == "methods" then
                if curr then
                    methods[curr] = v
                else
                    methods = v
                end
            end

            if type(v) == "table" then
                FindApis(v, methods, k)
            end
        end
    end

    return methods
end


local BuildMethods = function(methods)
    local baseUrl = methods.baseUrl
    local services = {}
    for k, v in pairs(methods) do
        if type(v) == "table" then
            services[k] = {}
            for serviceName, apiDetail in pairs(v) do
                services[k][serviceName] = function(accesstoken, params, requestBody)
                    if not params then
                        return
                    end

                    local path = gsub(apiDetail.flatPath,
                        "{(.-)}",
                        function(p)
                            for paramK, paramV in pairs(params) do
                                if paramK == p then
                                    return paramV
                                end
                            end
                        end
                    )

                    local req = {
                        method = apiDetail.httpMethod,
                        headers = {
                            ["Authorization"] = "Bearer " .. accesstoken.token
                        },
                        body = requestBody,
                        ssl_verify = false
                    }

                    local client = http.new()
                    local res, err = client:request_uri(baseUrl .. path, req)

                    if not res then
                        error(err)
                        return
                    end

                    client:close()
                    return cjson_decode(res.body)
                end
            end
        end
    end
    return setmetatable(services, { __index = lookup_helper })
end


local GCP = {}
GCP.__index = lookup_helper


function GCP.new()
    local apis = ApiDiscovery()
    local self = setmetatable({}, GCP)

    for _, service in ipairs(apis) do
        local rawAPI = require("resty.gcp.api." .. service)
        local methods = FindApis(rawAPI, {})
        self[service] = BuildMethods(methods)
    end

    return self
end


return setmetatable(
    GCP,
    {
        __call = function()
            return GCP.new()
        end
    }
)
