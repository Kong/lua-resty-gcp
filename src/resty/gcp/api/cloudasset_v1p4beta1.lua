local decode = require("cjson").new().decode
return assert(decode([===[
{ "error": { "code": 404, "message": "Discovery document not found for API service: cloudasset.googleapis.com format: rest version: v1p4beta1", "status": "NOT_FOUND" } }
]===]))
