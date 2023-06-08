local build_request = require "resty.gcp"._build_request

local test_token = { token = "test_token" }
local test_basic_url = "https://storage.googleapis.com"

local function gen_request(api_definition, params, body)
    return build_request(test_token, api_definition, test_basic_url, params, body)
end

local function simple_header_check(request)
    assert.same({
        headers = {
            Authorization = 'Bearer test_token',
            ["Content-Type"] = 'application/json',
        },
        method = 'GET',
        ssl_verify = true,
    }, request)
end

describe("unit: build_request", function()
    it("simple flatPath", function()
        local url, request = gen_request({
            httpMethod = "GET",
            flatPath = "/test_service/{p1}/{p2}?{p3}",
        }, { p1 = "p1", p2 = "p2", p3 = "p3" })
        assert.same("https://storage.googleapis.com/test_service/p1/p2?p3", url)
        simple_header_check(request)
    end)

    it("media check", function()
        local api = {
            supportsMediaDownload = true,
            httpMethod = "GET",
            path = "/test_service/{p1}/{p2}?{p3}",
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
                }
            }
        }

        local url, request = gen_request(api, { p1 = "p1", p2 = "p2", p3 = "p3", alt = "media" })
        assert("https://storage.googleapis.com/test_service/p1/p2?p3&alt=media" == url or
            "https://storage.googleapis.com/test_service/p1/p2?alt=media&p3" == url)
        simple_header_check(request)

        url, request = gen_request(api, { p1 = "p1", p2 = "p2", p3 = "p3" })
        assert.same("https://storage.googleapis.com/test_service/p1/p2?p3", url)
        simple_header_check(request)

        api.supportsMediaDownload = false
        url, request = gen_request(api, { p1 = "p1", p2 = "p2", p3 = "p3" })
        assert.same("https://storage.googleapis.com/test_service/p1/p2?p3", url)
        simple_header_check(request)

        assert.has_error(function()
            gen_request(api, { p1 = "p1", p2 = "p2", p3 = "p3", alt = "media" })
        end, "API does not supported media download")
    end)

    it("media upload", function()
        local api = {
            supportsMediaUpload = true,
            httpMethod = "POST",
            mediaUpload = {
                accept = {
                    "*/*",
                },
                protocols = {
                    resumable = {
                        multipart = true,
                        path = "/resumable/upload/test_service/{p1}/{p2}?{p3}",
                    },
                    simple = {
                        multipart = true,
                        path = "/upload/test_service/{p1}/{p2}?{p3}",
                    },
                },
            },
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
            }
        }

        local test_body = "test_body"
        local url, request = gen_request(api, { p1 = "p1", p2 = "p2", p3 = "p3" }, test_body)
        assert.same("https://storage.googleapis.com/upload/test_service/p1/p2?p3", url)
        assert.same({
            headers = {
                Authorization = 'Bearer test_token',
                ["Content-Type"] = 'application/json',
            },
            method = 'POST',
            ssl_verify = true,
            body = test_body,
        }, request)
    end)

    it("create secret", function()
        local api = {
            flatPath = "/v1/projects/{projectsId}/secrets",
            httpMethod = "POST",
            parameterOrder = {
                "parent",
            },
            parameters = {
                parent = {
                    description = "Required. The resource name of the project to associate with the Secret, in the format `projects/*`.",
                    location = "path",
                    pattern = "^projects/[^/]+$",
                    required = true,
                    type = "string",
                },
                secretId = {
                    description = "Required. This must be unique within the project. A secret ID is a string with a maximum length of 255 characters and can contain uppercase and lowercase letters, numerals, and the hyphen (`-`) and underscore (`_`) characters.",
                    location = "query",
                    type = "string",
                },
            },
            path = "/v1/{+parent}/secrets",
        }

        local url, request = gen_request(
                api,
                { projectsId = "my-project", secretId = "my-secret"},
                {
                    replication = { automatic = {}}
                })
        assert.same("https://storage.googleapis.com/v1/projects/my-project/secrets?secretId=my-secret", url)
        assert.same({
            headers = {
                Authorization = 'Bearer test_token',
                ["Content-Type"] = 'application/json',
            },
            body = '{"replication":{"automatic":{}}}',
            method = 'POST',
            ssl_verify = true,
        }, request)
    end)
end)
