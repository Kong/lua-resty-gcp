describe("resty.gcp", function()
    describe("entrypoint", function()
        local gcp

        before_each(function()
            package.loaded["resty.gcp"] = nil
            gcp = require "resty.gcp"
        end)

        it("returns a module/table", function()
            assert.is_table(gcp)
        end)

        it("creates a new object with gcp.new()", function()
            assert.is_table(gcp.new())
        end)

        it("create a new object with self()", function()
            assert.is_table(gcp())
        end)
    end)

    describe("instance", function()
        it("throws an error on table lookup errors", function()
            local gcp = require("resty.gcp").new()

            local key = "i-do-not-exist"

            -- sanity
            assert.is_nil(rawget(gcp, key))

            assert.has_errors(function()
                return gcp[key]
            end)
        end)

        it("doesn't throw an error for valid service API instances", function()
            local gcp = require("resty.gcp").new()
            assert.not_nil(gcp.vault_v1)
        end)
    end)
end)
