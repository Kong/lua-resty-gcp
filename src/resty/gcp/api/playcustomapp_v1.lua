local decode = require("cjson").new().decode
return assert(decode([===[
{ "documentationLink": "https://developers.google.com/android/work/play/custom-app-api/", "ownerName": "Google", "baseUrl": "https://playcustomapp.googleapis.com/", "auth": { "oauth2": { "scopes": { "https://www.googleapis.com/auth/androidpublisher": { "description": "View and manage your Google Play Developer account" } } } }, "description": "API to create and publish custom Android apps", "mtlsRootUrl": "https://playcustomapp.mtls.googleapis.com/", "name": "playcustomapp", "basePath": "", "id": "playcustomapp:v1", "batchPath": "batch", "protocol": "rest", "resources": { "accounts": { "resources": { "customApps": { "methods": { "create": { "parameters": { "account": { "description": "Developer account ID.", "location": "path", "required": true, "format": "int64", "type": "string" } }, "flatPath": "playcustomapp/v1/accounts/{account}/customApps", "response": { "$ref": "CustomApp" }, "mediaUpload": { "protocols": { "resumable": { "path": "/resumable/upload/playcustomapp/v1/accounts/{account}/customApps", "multipart": true }, "simple": { "path": "/upload/playcustomapp/v1/accounts/{account}/customApps", "multipart": true } }, "accept": [ "*/*" ], "maxSize": "10737418240" }, "request": { "$ref": "CustomApp" }, "id": "playcustomapp.accounts.customApps.create", "parameterOrder": [ "account" ], "supportsMediaUpload": true, "httpMethod": "POST", "path": "playcustomapp/v1/accounts/{account}/customApps", "scopes": [ "https://www.googleapis.com/auth/androidpublisher" ], "description": "Creates a new custom app." } } } } } }, "version": "v1", "title": "Google Play Custom App Publishing API", "fullyEncodeReservedExpansion": true, "servicePath": "", "revision": "20220711", "schemas": { "Organization": { "type": "object", "id": "Organization", "properties": { "organizationId": { "type": "string", "description": "Required. ID of the organization." }, "organizationName": { "type": "string", "description": "Optional. A human-readable name of the organization, to help recognize the organization." } }, "description": "Represents an organization that can access a custom app." }, "CustomApp": { "id": "CustomApp", "type": "object", "description": "This resource represents a custom app.", "properties": { "languageCode": { "description": "Default listing language in BCP 47 format.", "type": "string" }, "title": { "description": "Title for the Android app.", "type": "string" }, "packageName": { "readOnly": true, "description": "Output only. Package name of the created Android app. Only present in the API response.", "type": "string" }, "organizations": { "type": "array", "items": { "$ref": "Organization" }, "description": "Organizations to which the custom app should be made available. If the request contains any organizations, then the app will be restricted to only these organizations. To support the organization linked to the developer account, the organization ID should be provided explicitly together with other organizations. If no organizations are provided, then the app is only available to the organization linked to the developer account." } } } }, "ownerDomain": "google.com", "rootUrl": "https://playcustomapp.googleapis.com/", "kind": "discovery#restDescription", "parameters": { "oauth_token": { "location": "query", "description": "OAuth 2.0 token for the current user.", "type": "string" }, "callback": { "description": "JSONP", "location": "query", "type": "string" }, "upload_protocol": { "location": "query", "type": "string", "description": "Upload protocol for media (e.g. \"raw\", \"multipart\")." }, "quotaUser": { "location": "query", "description": "Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.", "type": "string" }, "key": { "description": "API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.", "type": "string", "location": "query" }, "$.xgafv": { "enumDescriptions": [ "v1 error format", "v2 error format" ], "enum": [ "1", "2" ], "location": "query", "type": "string", "description": "V1 error format." }, "alt": { "location": "query", "enumDescriptions": [ "Responses with Content-Type of application/json", "Media download with context-dependent Content-Type", "Responses with Content-Type of application/x-protobuf" ], "description": "Data format for response.", "type": "string", "default": "json", "enum": [ "json", "media", "proto" ] }, "fields": { "location": "query", "description": "Selector specifying which fields to include in a partial response.", "type": "string" }, "prettyPrint": { "type": "boolean", "location": "query", "description": "Returns response with indentations and line breaks.", "default": "true" }, "uploadType": { "type": "string", "location": "query", "description": "Legacy upload protocol for media (e.g. \"media\", \"multipart\")." }, "access_token": { "description": "OAuth access token.", "location": "query", "type": "string" } }, "discoveryVersion": "v1", "icons": { "x16": "http://www.google.com/images/icons/product/search-16.gif", "x32": "http://www.google.com/images/icons/product/search-32.gif" } }
]===]))