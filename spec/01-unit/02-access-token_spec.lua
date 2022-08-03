-- it's way too long for me to type this out more than once
local MODULE = "resty.gcp.request.credentials.accesstoken"

local accesstoken = require(MODULE)
local JWT_AUD        = accesstoken.JWT_AUD
local JWT_AUTH_URL   = accesstoken.JWT_AUTH_URL
local JWT_GRANT_TYPE = accesstoken.JWT_GRANT_TYPE
local JWT_SCOPE      = accesstoken.JWT_SCOPE
local WI_AUTH_URL    = accesstoken.WI_AUTH_URL


local function reload(mod)
  package.loaded[mod] = nil
  return require(mod)
end

local function proxy(obj)
  return setmetatable({}, { __index = obj })
end

local function setup_mocks(finally)
  local saved = {
    globals = {
      ngx = _G.ngx,
      os = _G.os,
    },

    modules = {
      http = require("resty.gcp.request.http"),
      jwt  = require("resty.jwt"),
      cjson = require("cjson.safe"),
    }
  }

  local mocks = {
    ngx = proxy(saved.globals.ngx),
    os = proxy(saved.globals.os),
    http = proxy(saved.modules.http),
    jwt = proxy(saved.modules.jwt),
    cjson = proxy(saved.modules.cjson),
  }

  _G.ngx = mocks.ngx
  _G.os = mocks.os

  package.loaded["resty.gcp.request.http"] = mocks.http
  package.loaded["resty.jwt"] = mocks.jwt
  package.loaded["cjson.safe"] = mocks.cjson

  package.loaded["resty.gcp.request.http"] = mocks.http
  package.loaded["resty.jwt"] = mocks.jwt
  package.loaded["cjson.safe"] = mocks.cjson

  local done
  local function reset()
    -- don't run more than once
    if done then return end

    _G.ngx = saved.globals.ngx
    _G.os = saved.globals.os
    package.loaded["resty.gcp.request.http"] = saved.modules.http
    package.loaded["resty.jwt"] = saved.modules.jwt
    package.loaded["cjson.safe"] = saved.modules.cjson
  end

  if type(finally) == "function" then
    finally(reset)
  end

  return mocks, reset
end

describe("AccessToken", function()
  describe("entrypoint", function()
    it("returns a module/table", function()
      local access = require(MODULE)
      assert.is_table(access)
    end)
  end)

  describe("new() (happy paths)", function()
    it("returns a new access token object", function()
      local mocks = setup_mocks(finally)

      mocks.http.send_request = function()
        return {
          json = {
            access_token = "yay!",
            expires_in = 300,
          }
        }
      end

      local access = reload(MODULE)

      local at, err, err_t = access.new()
      assert.is_nil(err_t)
      assert.is_nil(err)
      assert.is_table(at)
      assert.equals("yay!", at.token)
      assert.is_number(at.expireTime)
    end)

    describe("Workload Identity", function()
      local mocks, reset, access
      local at, err, err_t
      local uris = {}

      lazy_setup(function()
        mocks, reset = setup_mocks()

        mocks.http.send_request = function(uri)
          table.insert(uris, uri)
          return {
            json = {
              access_token = "yay!",
              expires_in = 300,
            }
          }
        end

        access = reload(MODULE)
        at, err, err_t = access.new()
      end)

      lazy_teardown(reset)

      it("works!", function()
        assert.is_nil(err_t)
        assert.is_nil(err)
        assert.is_table(at)

        assert.equals("yay!", at.token)
        assert.is_number(at.expireTime)
      end)

      it("is the first method tried", function()
        assert.same({ at.WI_AUTH_URL }, uris)
      end)

      it("sets `authMethod` to 'WI'", function()
        assert.equals("WI", at.authMethod)
      end)
    end)

    describe("Service Account", function()
      local mocks, reset, access
      local at, err, err_t
      local uris = {}
      local vars = {}

      lazy_setup(function()
        mocks, reset = setup_mocks()
        uris = {}
        mocks.http.send_request = function(uri)
          table.insert(uris, uri)
          if uri == JWT_AUTH_URL then
            return {
              json = {
                access_token = "yay!",
                expires_in = 300,
              }
            }
          else
            return nil, "uh oh"
          end
        end

        vars = {}

        mocks.os.getenv = function(var)
          table.insert(vars, var)
          if var == "GCP_SERVICE_ACCOUNT" then
            return require("spec.fixtures.service-account")
          end
        end

        access = reload(MODULE)

        at, err, err_t = access.new()
      end)

      lazy_teardown(reset)

      it("works!", function()
        assert.is_nil(err_t)
        assert.is_nil(err)
        assert.is_table(at)

        assert.equals("yay!", at.token)
        assert.is_number(at.expireTime)
      end)

      it("is tried after Workload Identity fails", function()
        assert.same({ at.WI_AUTH_URL, at.JWT_AUTH_URL }, uris)
      end)

      it("sets `authMethod` to 'SA'", function()
        assert.equals("SA", at.authMethod)
      end)
    end)
  end)
end)
