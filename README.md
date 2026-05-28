# lua-resty-gcp

GCP SDK libary for OpenResty.

## Status

This library is under early development. New releases may contain breaking changes
until further notice.


## Pre-requisites


## Installation

Installation is easiest using LuaRocks in the local folder

```
luarocks make
```

## Testing

The test will go through:
1. Test if GCP services imported
2. Test getting Access Token (Will need to set environment variable GCP_SERVICE_ACCOUNT)
3. Test using GCP services (Will need to change thew service and param in spec/01-test_spec.lua)

```
busted
```

## Using the SDK

This is an example. This creates a Secret Manager client and retrieves the secret versions:

``` lua

local base64 = require "base64"
local GCP = require "resty.gcp"
local AccessToken = require "resty.gcp.request.credentials.accesstoken"
local gcp = GCP()
local gcpToken = AccessToken()

local params = {
    projectsId = "kong-supersecret-project",
    secretsId = "kong-secret-cmek",
    versionsId = 1
}

local response = gcp.secretmanager_v1.versions.access(gcpToken, params)

print("The secret is: " .. base64.decode(response.payload.data))

```

## Authentication Mechanisms

These are the supported authentication methods, and how to use each one:

### Service Account JSON / Auth JSON / Workload Identity

To use a static service-account JSON, or directly use an assigned Workload Identity, simply launch
a new instance of the `accesstoken` class, and then **call it** to retrieve the current Bearer token
as a string":

``` lua

local AccessToken = require "resty.gcp.request.credentials.accesstoken"
local gcpToken = AccessToken()  -- returns an auth token table

```

### Workload Identity Federation

To authenticate using a [Workload Identity Federation](http://docs.cloud.google.com/iam/docs/authenticate-with-auth-libraries)
auth JSON, you should use the `workload_identity_federation` class.

To pass in the "Google Application Credentials" JSON, you can either:

* Pass the JSON directly into the constructor (as a string, or as a table)
* Set the environment variable `GOOGLE_APPLICATION_CREDENTIALS` that points to a file on the local filesystem

In this example, we pass the JSON as a table straight to the constructor:

``` lua

local WIF = require "resty.gcp.request.credentials.workload_identity_federation"

-- You would be given this when you set up the Federation Identity pool in GCP
local federation_json = {
  universe_domain = "googleapis.com",
  ["type"] = "external_account",
  audience = "//iam.googleapis.com/projects/123456789123/locations/global/workloadIdentityPools/aws/providers/aws-from-gcp",
  subject_token_type = "urn:ietf:params:aws:token-type:aws4_request",
  token_url = "https://sts.googleapis.com/v1/token",
  credential_source = {
    environment_id = "aws1",
    region_url = "http://169.254.169.254/latest/meta-data/placement/availability-zone",
    url = "http://169.254.169.254/latest/meta-data/iam/security-credentials",
    regional_cred_verification_url = "https://sts.{region}.amazonaws.com?Action=GetCallerIdentity&Version=2011-06-15",
  },
  service_account_impersonation_url = "https://iamcredentials.googleapis.com/v1/projects/-/serviceAccounts/resty-gcp-access-service-account@sample-account.iam.gserviceaccount.com:generateAccessToken",
}

-- Make a subject token that lets GCP call AWS STS for your credentials,
-- and then **sign it** (for AWS with the Instance/Pod IAM Role, in this example).
-- Use the signed headers as the subject token table.
local signing_req = {
  host = "sts.eu-west-1.amazonaws.com",
  method = "POST",
  path = "/",
    headers = {
      ["host"] = "sts.eu-west-1.amazonaws.com",
      ["x-goog-cloud-target-resource"] = federation_json.audience
    },
  query = "Action=GetCallerIdentity&Version=2011-06-15",
  protocol = "https"
}

local signature, err = require("resty.aws.request.sign")({}, signing_req)

local subject_token = {
  method = req.method,
  url = fmt("https://%s%s?%s", req.host, req.path, req.query),
  headers = {
    { key = "x-goog-cloud-target-resource", value = req.headers["x-goog-cloud-target-resource"] },
    { key = "Authorization", value = signature.headers["Authorization"] },
    { key = "X-Amz-Date", value = signature.headers["X-Amz-Date"] },
    { key = "Host", value = signature.headers["Host"] },
    { key = "X-Amz-Security-Token", value = signature.headers["X-Amz-Security-Token"] },
   }
}

-- Send it to GCP, who will check it with AWS,
-- and then produce you a Bearer token for accessing GCP services.
local gcpToken = WIF(federation_json, subject_token)

```

**⚠️ It is important to note that as above, the `subject_token` construction (and any authentication / signatures with the source system)
must be entirely handled by the caller.**

**This includes caching, expiry, and rotation (by calling `.new()` again) with a refreshed `subject_token`**.

## Proxy Configuration

The library supports routing all outbound HTTP requests (both token acquisition and
GCP API calls) through a proxy. Pass a `proxy_opts` table inside the `opts`
argument when creating an `AccessToken`:

``` lua
local AccessToken = require "resty.gcp.request.credentials.accesstoken"
local token = AccessToken:new(nil, {
    proxy_opts = {
        http_proxy          = "http://proxy.example.com:3128",
        https_proxy         = "http://proxy.example.com:3129",
        http_proxy_authorization  = "Basic dXNlcjpwYXNz",
        https_proxy_authorization = "Basic dXNlcjpwYXNz",
        no_proxy            = "localhost,127.0.0.1",
    },
})
```

The individual keys (`http_proxy`, `https_proxy`, etc.) may also be provided at the
top level of `opts` as a convenience shorthand. If both `opts.proxy_opts` and flat
keys are present, `opts.proxy_opts` takes precedence and the flat keys are ignored.

## TLS and certificate failures

The http client defaults to tls name verification. For this to work, the CA store must be set.
With OpenResty this is done through the [`lua_ssl_trusted_certificate`](https://github.com/openresty/lua-nginx-module#lua_ssl_trusted_certificate)
directive. However; the compatibility module used, [`lua-resty-luasocket`](https://github.com/Tieske/lua-resty-luasocket), cannot automatically
read that setting, hence you have to set it manually, see [the docs](https://tieske.github.io/lua-resty-luasocket/modules/resty.luasocket.html#get_luasec_defaults).

## Development

### Updating the API Definitions

Use the `update-api-defs` file in the `scripts` directory to update all API
definitions:

```
$ ./scripts/update-api-defs
```

Take special care to note and investigate any failures logged by this script
(i.e. download failures) before commiting the changes.

### Adding/Removing Source Files

Use the `update-rockspec` script to write the updated module list to the
rockspec file if files are added or removed during development.

```
$ ./scripts/update-rockspec
```

### Releasing New Versions

Before releasing a new version, please make sure the API Definitions and rockspec files are up-to-date.

As an example, let's assuming that we are releasing 0.1.0.

1. Change the filename of the rockspec to the new version: `lua-resty-gcp-0.1.0-1.rockspec`;
2. Then change the version in rockspec file to `0.1.0-1`, and source.tag to `0.1.0`;
3. Create new tag with command: `git tag 0.1.0`, and push that tag with `git push --tags`;
4. Create new release for github with the new tag, and make sure the change is included in the description;
5. Upload the rock to with Luarocks: `luarocks upload lua-resty-gcp-0.1.0-1.rockspec`.
