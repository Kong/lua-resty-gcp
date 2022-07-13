local cjson = require("cjson.safe").new()
local http = require "resty.gcp.request.http.http"


local lookup_helper = function(self, key) -- signature to match __index meta-method
    if type(key) == "string" then
        local lckey = key:lower()
        for k, v in pairs(self) do
            if type(k) == "string" and k:lower() == lckey then
                error(("key '%s' not found, did you mean '%s'?"):format(key, k), 2)
            end
        end
    end
    error(("key '%s' not found"):format(tostring(key)), 2)
end

local ApiDiscovery = function(apis)
    -- local req = {
    --     method = "GET",
    --     ssl_verify = false
    -- }
    -- local client = http.new()
    -- res, err = client:request_uri(url, req)
    -- if not res then
    --     error(err)
    --     return
    -- end
    -- client:close()
    -- local apis = cjson.decode(res.body).items
    -- if (not apis) then
    --     error("Failed to get Discovery API")
    -- end
    local apis = require "resty.gcp.request.discovery"
    apiList = {}
    for k, v in pairs(apis.items) do
        local id, _ = string.gsub(v.id, ":", "_")
        id, _ = string.gsub(id, "%.", "p")
        apiList[#apiList + 1] = id
    end
    return apiList
end

FindApis = function(apiClass, methods, curr)
    if type(apiClass) == "table" then
        for k, v in pairs(apiClass) do
            if k == "baseUrl" then
                methods[k] = v
            end
            if k == "methods" then
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
                    if (not params) then
                        return
                    end
                    local path, paramLen =
                        string.gsub(
                        apiDetail.flatPath,
                        "{(.-)}",
                        function(p)
                            for paramK, paramV in pairs(params) do
                                if (paramK == p) then
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
                    res, err = client:request_uri(baseUrl .. path, req)
                    if not res then
                        error(err)
                        return
                    end
                    client:close()
                    return cjson.decode(res.body)
                end
            end
        end
    end
    return setmetatable(services, {__index = lookup_helper})
end

local GCP = {}
GCP.__index = lookup_helper

function GCP:new()
    -- local discoveryUrl = "https://discovery.googleapis.com/discovery/v1/apis"
    local apis = ApiDiscovery()
    local servicesInstance = {}
    for _, service in pairs(apis) do
        local rawAPI = require("resty.gcp.api." .. service)
        local methods = FindApis(rawAPI, {})
        servicesInstance[service] = BuildMethods(methods)
    end
    local gcp_instance = setmetatable(servicesInstance, GCP)
    return gcp_instance
end

return setmetatable(
    GCP,
    {
        __call = function(self, ...)
            return self:new(...)
        end
    }
)
