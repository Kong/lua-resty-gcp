local decode = require("cjson").new().decode
return assert(decode([===[
{ "ownerDomain": "google.com", "servicePath": "", "rootUrl": "https://firebasestorage.googleapis.com/", "version_module": true, "kind": "discovery#restDescription", "icons": { "x32": "http://www.google.com/images/icons/product/search-32.gif", "x16": "http://www.google.com/images/icons/product/search-16.gif" }, "version": "v1beta", "parameters": { "upload_protocol": { "description": "Upload protocol for media (e.g. \"raw\", \"multipart\").", "type": "string", "location": "query" }, "uploadType": { "location": "query", "description": "Legacy upload protocol for media (e.g. \"media\", \"multipart\").", "type": "string" }, "$.xgafv": { "location": "query", "enumDescriptions": [ "v1 error format", "v2 error format" ], "description": "V1 error format.", "enum": [ "1", "2" ], "type": "string" }, "quotaUser": { "description": "Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.", "type": "string", "location": "query" }, "access_token": { "type": "string", "description": "OAuth access token.", "location": "query" }, "callback": { "type": "string", "description": "JSONP", "location": "query" }, "prettyPrint": { "type": "boolean", "location": "query", "default": "true", "description": "Returns response with indentations and line breaks." }, "alt": { "location": "query", "enum": [ "json", "media", "proto" ], "default": "json", "enumDescriptions": [ "Responses with Content-Type of application/json", "Media download with context-dependent Content-Type", "Responses with Content-Type of application/x-protobuf" ], "type": "string", "description": "Data format for response." }, "oauth_token": { "type": "string", "location": "query", "description": "OAuth 2.0 token for the current user." }, "fields": { "location": "query", "type": "string", "description": "Selector specifying which fields to include in a partial response." }, "key": { "location": "query", "type": "string", "description": "API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token." } }, "auth": { "oauth2": { "scopes": { "https://www.googleapis.com/auth/firebase": { "description": "View and administer all your Firebase data and settings" }, "https://www.googleapis.com/auth/cloud-platform": { "description": "See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account." } } } }, "mtlsRootUrl": "https://firebasestorage.mtls.googleapis.com/", "discoveryVersion": "v1", "documentationLink": "https://firebase.google.com/docs/storage", "schemas": { "Empty": { "properties": {}, "description": "A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }", "id": "Empty", "type": "object" }, "GoogleFirebaseStorageControlplaneV1betaMigrateLocationDestructivelyMetadata": { "id": "GoogleFirebaseStorageControlplaneV1betaMigrateLocationDestructivelyMetadata", "description": "Metadata for MigrateLocationDestructively LRO.", "properties": { "state": { "enum": [ "STATE_UNSPECIFIED", "PENDING", "CREATING_TEMP_BUCKET", "TRANSFERRING_TO_TEMP", "DELETING_SOURCE_BUCKET", "CREATING_DESTINATION_BUCKET", "TRANSFERRING_TO_DESTINATION", "DELETING_TEMP_BUCKET", "SUCCEEDED", "FAILED", "ROLLING_BACK", "ROLLED_BACK" ], "enumDescriptions": [ "Unspecified state. Should not be used.", "The MigrateLocationDestructively request has passed precondition checks and the bucket migration will begin soon.", "Generating a unique bucket name, storing the source -\u003e temp mapping in Spanner, and actually creating the temporary bucket via Bigstore.", "The first STS transfer to move all objects from the source bucket to the temp bucket is underway.", "The source bucket is being emptied and deleted.", "The source bucket is being recreated in the new location.", "The second STS transfer to move all objects from the temp bucket to the final bucket is underway.", "The temp bucket is being emptied and deleted.", "All stages of the migration have completed and the operation has been marked done and updated with a response.", "The migration failed at some stage and it is not possible to continue retrying that stage. Manual recovery may be needed. Rollback is either impossible at this stage, or has been attempted and failed.", "The migration has encountered a permanent failure and is now being rolled back so that the source bucket is restored to its original state.", "The migration has been successfully rolled back." ], "type": "string", "description": "The current state of the migration." }, "lastUpdateTime": { "description": "The time the LRO was last updated.", "format": "google-datetime", "type": "string" }, "createTime": { "format": "google-datetime", "description": "The time the LRO was created.", "type": "string" } }, "type": "object" }, "AddFirebaseRequest": { "type": "object", "description": "The request used to link a Google Cloud Storage bucket to a Firebase project.", "id": "AddFirebaseRequest", "properties": {} }, "GoogleFirebaseStorageControlplaneV1alphaMigrateLocationDestructivelyMetadata": { "id": "GoogleFirebaseStorageControlplaneV1alphaMigrateLocationDestructivelyMetadata", "description": "Metadata for MigrateLocationDestructively LRO.", "properties": { "lastUpdateTime": { "format": "google-datetime", "description": "The time the LRO was last updated.", "type": "string" }, "state": { "enum": [ "STATE_UNSPECIFIED", "PENDING", "CREATING_TEMP_BUCKET", "TRANSFERRING_TO_TEMP", "DELETING_SOURCE_BUCKET", "CREATING_DESTINATION_BUCKET", "TRANSFERRING_TO_DESTINATION", "DELETING_TEMP_BUCKET", "SUCCEEDED", "FAILED", "ROLLING_BACK", "ROLLED_BACK" ], "type": "string", "description": "The current state of the migration.", "enumDescriptions": [ "Unspecified state. Should not be used.", "The MigrateLocationDestructively request has passed precondition checks and the bucket migration will begin soon.", "Generating a unique bucket name, storing the source -\u003e temp mapping in Spanner, and actually creating the temporary bucket via Bigstore.", "The first STS transfer to move all objects from the source bucket to the temp bucket is underway.", "The source bucket is being emptied and deleted.", "The source bucket is being recreated in the new location.", "The second STS transfer to move all objects from the temp bucket to the final bucket is underway.", "The temp bucket is being emptied and deleted.", "All stages of the migration have completed and the operation has been marked done and updated with a response.", "The migration failed at some stage and it is not possible to continue retrying that stage. Manual recovery may be needed. Rollback is either impossible at this stage, or has been attempted and failed.", "The migration has encountered a permanent failure and is now being rolled back so that the source bucket is restored to its original state.", "The migration has been successfully rolled back." ] }, "createTime": { "description": "The time the LRO was created.", "type": "string", "format": "google-datetime" } }, "type": "object" }, "RemoveFirebaseRequest": { "properties": {}, "type": "object", "description": "The request used to unlink a Google Cloud Storage bucket from a Firebase project.", "id": "RemoveFirebaseRequest" }, "ListBucketsResponse": { "description": "The response returned by `ListBuckets`.", "type": "object", "properties": { "nextPageToken": { "description": "A token that can be sent as `page_token` to retrieve the next page. If this field is omitted, there are no subsequent pages.", "type": "string" }, "buckets": { "type": "array", "description": "The list of linked buckets.", "items": { "$ref": "Bucket" } } }, "id": "ListBucketsResponse" }, "Bucket": { "properties": { "name": { "description": "Resource name of the bucket.", "type": "string" }, "location": { "readOnly": true, "description": "Output only. Location of the storage bucket.", "type": "string" }, "reconciling": { "type": "boolean", "readOnly": true, "description": "Output only. Represents whether a bucket is being moved to a new location, in which case reconciling is set to true." } }, "type": "object", "description": "A storage bucket and its relation to a parent Firebase project.", "id": "Bucket" } }, "canonicalName": "Firebasestorage", "name": "firebasestorage", "title": "Cloud Storage for Firebase API", "resources": { "projects": { "resources": { "buckets": { "methods": { "removeFirebase": { "flatPath": "v1beta/projects/{projectsId}/buckets/{bucketsId}:removeFirebase", "scopes": [ "https://www.googleapis.com/auth/cloud-platform", "https://www.googleapis.com/auth/firebase" ], "id": "firebasestorage.projects.buckets.removeFirebase", "path": "v1beta/{+bucket}:removeFirebase", "parameterOrder": [ "bucket" ], "parameters": { "bucket": { "type": "string", "required": true, "description": "Required. Resource name of the bucket, mirrors the ID of the underlying Google Cloud Storage bucket, `projects/{project_number}/buckets/{bucket_id}`.", "pattern": "^projects/[^/]+/buckets/[^/]+$", "location": "path" } }, "httpMethod": "POST", "request": { "$ref": "RemoveFirebaseRequest" }, "response": { "$ref": "Empty" }, "description": "Unlinks a linked Google Cloud Storage bucket from a Firebase project." }, "addFirebase": { "description": "Links a Google Cloud Storage bucket to a Firebase project.", "path": "v1beta/{+bucket}:addFirebase", "parameterOrder": [ "bucket" ], "httpMethod": "POST", "response": { "$ref": "Bucket" }, "id": "firebasestorage.projects.buckets.addFirebase", "scopes": [ "https://www.googleapis.com/auth/cloud-platform", "https://www.googleapis.com/auth/firebase" ], "request": { "$ref": "AddFirebaseRequest" }, "flatPath": "v1beta/projects/{projectsId}/buckets/{bucketsId}:addFirebase", "parameters": { "bucket": { "location": "path", "required": true, "type": "string", "description": "Required. Resource name of the bucket, mirrors the ID of the underlying Google Cloud Storage bucket, `projects/{project_number}/buckets/{bucket_id}`.", "pattern": "^projects/[^/]+/buckets/[^/]+$" } } }, "get": { "description": "Gets a single linked storage bucket.", "response": { "$ref": "Bucket" }, "scopes": [ "https://www.googleapis.com/auth/cloud-platform", "https://www.googleapis.com/auth/firebase" ], "httpMethod": "GET", "id": "firebasestorage.projects.buckets.get", "flatPath": "v1beta/projects/{projectsId}/buckets/{bucketsId}", "parameters": { "name": { "required": true, "location": "path", "description": "Required. Resource name of the bucket, mirrors the ID of the underlying Google Cloud Storage bucket, `projects/{project_number}/buckets/{bucket_id}`.", "pattern": "^projects/[^/]+/buckets/[^/]+$", "type": "string" } }, "parameterOrder": [ "name" ], "path": "v1beta/{+name}" }, "list": { "flatPath": "v1beta/projects/{projectsId}/buckets", "httpMethod": "GET", "scopes": [ "https://www.googleapis.com/auth/cloud-platform", "https://www.googleapis.com/auth/firebase" ], "response": { "$ref": "ListBucketsResponse" }, "id": "firebasestorage.projects.buckets.list", "parameterOrder": [ "parent" ], "parameters": { "pageSize": { "type": "integer", "location": "query", "description": "The maximum number of buckets to return. If not set, the server will use a reasonable default.", "format": "int32" }, "parent": { "location": "path", "type": "string", "pattern": "^projects/[^/]+$", "required": true, "description": "Required. Resource name of the parent Firebase project, `projects/{project_number}`." }, "pageToken": { "location": "query", "description": "A page token, received from a previous `ListBuckets` call. Provide this to retrieve the subsequent page. When paginating, all other parameters provided to `ListBuckets` must match the call that provided the page token.", "type": "string" } }, "path": "v1beta/{+parent}/buckets", "description": "Lists the linked storage buckets for a project." } } } } } }, "id": "firebasestorage:v1beta", "baseUrl": "https://firebasestorage.googleapis.com/", "basePath": "", "protocol": "rest", "fullyEncodeReservedExpansion": true, "batchPath": "batch", "revision": "20220610", "description": "The Cloud Storage for Firebase API enables programmatic management of Cloud Storage buckets for use in Firebase projects", "ownerName": "Google" }
]===]))