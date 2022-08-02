describe("Test all", function()
    local GCP = require "resty.gcp"
    local gcp = GCP()

    it("Check GCP services exist", function()
        assert.is.table(gcp)
    end)

    it("Check GCP access token", function()
        local AccessToken = require "resty.gcp.request.credentials.accesstoken"
        local gcpToken = AccessToken()
        assert.same("string", type(gcpToken.token))
        assert.same("number", type(gcpToken.expireTime))
        assert.same("boolean", type(gcpToken:needsRefresh()))
    end)

    -- Change param and gcp service
    it("Check GCP service functionality", function()
        local AccessToken = require "resty.gcp.request.credentials.accesstoken"
        local gcpToken = AccessToken()
        local param = { projectsId = "project-last-hope", secretsId = "db-password", versionsId = "latest"}

        local response = gcp.secretmanager_v1.versions.access(gcpToken, param)

        assert.same("table", type(response))
        assert.same("table", type(response.payload))
        assert.same("string", type(response.payload.data))

        assert.same("table", type(gcp.secretmanager_v1.versions.list(gcpToken, param).versions))
    end)

end)
