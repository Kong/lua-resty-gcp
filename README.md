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

local param = {
    projectsId = "kong-supersecret-project",
    secretsId = "kong-secret-cmek",
    versionsId = 1
}

local response = gcp.secretmanager_v1.versions.access(gcpToken, params)

print("The secret is: " .. base64.decode(response.payload.data))

```
