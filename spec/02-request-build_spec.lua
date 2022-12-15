local build_request = require "resty.gcp"._build_request

local test_token = { token = "test_token" }
local test_basic_url = "https://storage.googleapis.com/test_service/"

local function gen_request(api_definition, params, body)
    return build_request(test_token, api_definition, test_basic_url, params, body)
end

local function simple_header_check(request)
    assert.same({
        headers = {
            Authorization = 'Bearer test_token'
        },
        method = 'GET',
        ssl_verify = false,
    }, request)
end

describe("unit: build_request", function()
    it("simple flatPath", function()
        local url, request = gen_request({
            httpMethod = "GET",
            flatPath = "test_service/{p1}/{p2}?{p3}",
        }, { p1 = "p1", p2 = "p2", p3 = "p3" })
        assert.same("test_service/p1/p2?p3", url)
        simple_header_check(request)
    end)
    
    it("media check", function()
        local api = {
            supportsMediaDownload = true,
            httpMethod = "GET",
            flatPath = "test_service/{p1}/{p2}?{p3}",
            parameters = {
                p1 = {
                    location = "path",
                    type = "string",
                },
                p2 = {
                    location = "path",
                    type = "string",
                },
                p3 = {
                    location = "path",
                    type = "string",
                },
                alt = {
                    location = "query",
                    type = "string",
                }
            }
        }
        
        local url, request = gen_request(api, { p1 = "p1", p2 = "p2", p3 = "p3", alt = "media"})
        assert("test_service/p1/p2?p3&alt=media" == url or "test_service/p1/p2?alt=media&p3" == url)
        simple_header_check(request)
        
        url, request = gen_request(api, { p1 = "p1", p2 = "p2", p3 = "p3"})
        assert.same("test_service/p1/p2?p3", url)
        simple_header_check(request)

        api.supportsMediaDownload = false
        url, request = gen_request(api, { p1 = "p1", p2 = "p2", p3 = "p3"})
        assert.same("test_service/p1/p2?p3", url)
        simple_header_check(request)

        assert.has_error(function ()
            gen_request(api, { p1 = "p1", p2 = "p2", p3 = "p3", alt = "media"})
        end, "API does not supported media download")
    end)
end)
