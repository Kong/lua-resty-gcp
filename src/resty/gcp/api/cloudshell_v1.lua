local decode = require("cjson").new().decode
return assert(decode([===[
{ "description": "Allows users to start, configure, and connect to interactive shell sessions running in the cloud. ", "documentationLink": "https://cloud.google.com/shell/docs/", "ownerDomain": "google.com", "protocol": "rest", "ownerName": "Google", "mtlsRootUrl": "https://cloudshell.mtls.googleapis.com/", "canonicalName": "Cloud Shell", "id": "cloudshell:v1", "version": "v1", "icons": { "x32": "http://www.google.com/images/icons/product/search-32.gif", "x16": "http://www.google.com/images/icons/product/search-16.gif" }, "version_module": true, "schemas": { "DeleteEnvironmentMetadata": { "id": "DeleteEnvironmentMetadata", "type": "object", "description": "Message included in the metadata field of operations returned from DeleteEnvironment.", "properties": {} }, "ListOperationsResponse": { "type": "object", "description": "The response message for Operations.ListOperations.", "properties": { "nextPageToken": { "type": "string", "description": "The standard List next-page token." }, "operations": { "items": { "$ref": "Operation" }, "description": "A list of operations that matches the specified filter in the request.", "type": "array" } }, "id": "ListOperationsResponse" }, "RemovePublicKeyResponse": { "type": "object", "description": "Response message for RemovePublicKey.", "properties": {}, "id": "RemovePublicKeyResponse" }, "Environment": { "id": "Environment", "properties": { "name": { "type": "string", "description": "Immutable. Full name of this resource, in the format `users/{owner_email}/environments/{environment_id}`. `{owner_email}` is the email address of the user to whom this environment belongs, and `{environment_id}` is the identifier of this environment. For example, `users/someone@example.com/environments/default`." }, "state": { "readOnly": true, "description": "Output only. Current execution state of this environment.", "enum": [ "STATE_UNSPECIFIED", "SUSPENDED", "PENDING", "RUNNING", "DELETING" ], "type": "string", "enumDescriptions": [ "The environment's states is unknown.", "The environment is not running and can't be connected to. Starting the environment will transition it to the PENDING state.", "The environment is being started but is not yet ready to accept connections.", "The environment is running and ready to accept connections. It will automatically transition back to DISABLED after a period of inactivity or if another environment is started.", "The environment is being deleted and can't be connected to." ] }, "webHost": { "readOnly": true, "description": "Output only. Host to which clients can connect to initiate HTTPS or WSS connections with the environment.", "type": "string" }, "publicKeys": { "readOnly": true, "type": "array", "description": "Output only. Public keys associated with the environment. Clients can connect to this environment via SSH only if they possess a private key corresponding to at least one of these public keys. Keys can be added to or removed from the environment using the AddPublicKey and RemovePublicKey methods.", "items": { "type": "string" } }, "sshHost": { "description": "Output only. Host to which clients can connect to initiate SSH sessions with the environment.", "readOnly": true, "type": "string" }, "sshUsername": { "readOnly": true, "type": "string", "description": "Output only. Username that clients should use when initiating SSH sessions with the environment." }, "sshPort": { "readOnly": true, "format": "int32", "type": "integer", "description": "Output only. Port to which clients can connect to initiate SSH sessions with the environment." }, "dockerImage": { "description": "Required. Immutable. Full path to the Docker image used to run this environment, e.g. \"gcr.io/dev-con/cloud-devshell:latest\".", "type": "string" }, "id": { "type": "string", "description": "Output only. The environment's identifier, unique among the user's environments.", "readOnly": true } }, "description": "A Cloud Shell environment, which is defined as the combination of a Docker image specifying what is installed on the environment and a home directory containing the user's data that will remain across sessions. Each user has at least an environment with the ID \"default\".", "type": "object" }, "Status": { "properties": { "details": { "type": "array", "description": "A list of messages that carry the error details. There is a common set of message types for APIs to use.", "items": { "additionalProperties": { "type": "any", "description": "Properties of the object. Contains field @type with type URL." }, "type": "object" } }, "code": { "description": "The status code, which should be an enum value of google.rpc.Code.", "format": "int32", "type": "integer" }, "message": { "description": "A developer-facing error message, which should be in English. Any user-facing error message should be localized and sent in the google.rpc.Status.details field, or localized by the client.", "type": "string" } }, "id": "Status", "description": "The `Status` type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by [gRPC](https://github.com/grpc). Each `Status` message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the [API Design Guide](https://cloud.google.com/apis/design/errors).", "type": "object" }, "StartEnvironmentMetadata": { "description": "Message included in the metadata field of operations returned from StartEnvironment.", "properties": { "state": { "enumDescriptions": [ "The environment's start state is unknown.", "The environment is in the process of being started, but no additional details are available.", "Startup is waiting for the user's disk to be unarchived. This can happen when the user returns to Cloud Shell after not having used it for a while, and suggests that startup will take longer than normal.", "Startup is waiting for compute resources to be assigned to the environment. This should normally happen very quickly, but an environment might stay in this state for an extended period of time if the system is experiencing heavy load.", "Startup has completed. If the start operation was successful, the user should be able to establish an SSH connection to their environment. Otherwise, the operation will contain details of the failure." ], "type": "string", "enum": [ "STATE_UNSPECIFIED", "STARTING", "UNARCHIVING_DISK", "AWAITING_COMPUTE_RESOURCES", "FINISHED" ], "description": "Current state of the environment being started." } }, "id": "StartEnvironmentMetadata", "type": "object" }, "CancelOperationRequest": { "description": "The request message for Operations.CancelOperation.", "properties": {}, "type": "object", "id": "CancelOperationRequest" }, "AuthorizeEnvironmentMetadata": { "type": "object", "description": "Message included in the metadata field of operations returned from AuthorizeEnvironment.", "id": "AuthorizeEnvironmentMetadata", "properties": {} }, "AddPublicKeyMetadata": { "id": "AddPublicKeyMetadata", "type": "object", "properties": {}, "description": "Message included in the metadata field of operations returned from AddPublicKey." }, "AddPublicKeyRequest": { "id": "AddPublicKeyRequest", "description": "Request message for AddPublicKey.", "type": "object", "properties": { "key": { "type": "string", "description": "Key that should be added to the environment. Supported formats are `ssh-dss` (see RFC4253), `ssh-rsa` (see RFC4253), `ecdsa-sha2-nistp256` (see RFC5656), `ecdsa-sha2-nistp384` (see RFC5656) and `ecdsa-sha2-nistp521` (see RFC5656). It should be structured as \u003cformat\u003e \u003ccontent\u003e, where \u003ccontent\u003e part is encoded with Base64." } } }, "AuthorizeEnvironmentResponse": { "id": "AuthorizeEnvironmentResponse", "description": "Response message for AuthorizeEnvironment.", "type": "object", "properties": {} }, "RemovePublicKeyMetadata": { "properties": {}, "id": "RemovePublicKeyMetadata", "type": "object", "description": "Message included in the metadata field of operations returned from RemovePublicKey." }, "CreateEnvironmentMetadata": { "properties": {}, "description": "Message included in the metadata field of operations returned from CreateEnvironment.", "id": "CreateEnvironmentMetadata", "type": "object" }, "AddPublicKeyResponse": { "description": "Response message for AddPublicKey.", "type": "object", "properties": { "key": { "type": "string", "description": "Key that was added to the environment." } }, "id": "AddPublicKeyResponse" }, "AuthorizeEnvironmentRequest": { "description": "Request message for AuthorizeEnvironment.", "type": "object", "properties": { "idToken": { "type": "string", "description": "The OAuth ID token that should be sent to the environment." }, "expireTime": { "type": "string", "format": "google-datetime", "description": "The time when the credentials expire. If not set, defaults to one hour from when the server received the request." }, "accessToken": { "type": "string", "description": "The OAuth access token that should be sent to the environment." } }, "id": "AuthorizeEnvironmentRequest" }, "RemovePublicKeyRequest": { "id": "RemovePublicKeyRequest", "properties": { "key": { "description": "Key that should be removed from the environment.", "type": "string" } }, "description": "Request message for RemovePublicKey.", "type": "object" }, "Empty": { "properties": {}, "description": "A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }", "type": "object", "id": "Empty" }, "StartEnvironmentResponse": { "properties": { "environment": { "$ref": "Environment", "description": "Environment that was started." } }, "type": "object", "description": "Message included in the response field of operations returned from StartEnvironment once the operation is complete.", "id": "StartEnvironmentResponse" }, "Operation": { "description": "This resource represents a long-running operation that is the result of a network API call.", "type": "object", "id": "Operation", "properties": { "response": { "additionalProperties": { "description": "Properties of the object. Contains field @type with type URL.", "type": "any" }, "description": "The normal response of the operation in case of success. If the original method returns no data on success, such as `Delete`, the response is `google.protobuf.Empty`. If the original method is standard `Get`/`Create`/`Update`, the response should be the resource. For other methods, the response should have the type `XxxResponse`, where `Xxx` is the original method name. For example, if the original method name is `TakeSnapshot()`, the inferred response type is `TakeSnapshotResponse`.", "type": "object" }, "metadata": { "additionalProperties": { "type": "any", "description": "Properties of the object. Contains field @type with type URL." }, "type": "object", "description": "Service-specific metadata associated with the operation. It typically contains progress information and common metadata such as create time. Some services might not provide such metadata. Any method that returns a long-running operation should document the metadata type, if any." }, "name": { "type": "string", "description": "The server-assigned name, which is only unique within the same service that originally returns it. If you use the default HTTP mapping, the `name` should be a resource name ending with `operations/{unique_id}`." }, "done": { "type": "boolean", "description": "If the value is `false`, it means the operation is still in progress. If `true`, the operation is completed, and either `error` or `response` is available." }, "error": { "description": "The error result of the operation in case of failure or cancellation.", "$ref": "Status" } } }, "StartEnvironmentRequest": { "description": "Request message for StartEnvironment.", "type": "object", "id": "StartEnvironmentRequest", "properties": { "publicKeys": { "description": "Public keys that should be added to the environment before it is started.", "type": "array", "items": { "type": "string" } }, "accessToken": { "type": "string", "description": "The initial access token passed to the environment. If this is present and valid, the environment will be pre-authenticated with gcloud so that the user can run gcloud commands in Cloud Shell without having to log in. This code can be updated later by calling AuthorizeEnvironment." } } } }, "discoveryVersion": "v1", "rootUrl": "https://cloudshell.googleapis.com/", "basePath": "", "batchPath": "batch", "baseUrl": "https://cloudshell.googleapis.com/", "name": "cloudshell", "parameters": { "oauth_token": { "type": "string", "description": "OAuth 2.0 token for the current user.", "location": "query" }, "prettyPrint": { "description": "Returns response with indentations and line breaks.", "default": "true", "location": "query", "type": "boolean" }, "$.xgafv": { "location": "query", "type": "string", "enum": [ "1", "2" ], "description": "V1 error format.", "enumDescriptions": [ "v1 error format", "v2 error format" ] }, "uploadType": { "description": "Legacy upload protocol for media (e.g. \"media\", \"multipart\").", "type": "string", "location": "query" }, "access_token": { "description": "OAuth access token.", "location": "query", "type": "string" }, "upload_protocol": { "description": "Upload protocol for media (e.g. \"raw\", \"multipart\").", "type": "string", "location": "query" }, "key": { "location": "query", "description": "API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.", "type": "string" }, "quotaUser": { "location": "query", "description": "Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.", "type": "string" }, "alt": { "type": "string", "enum": [ "json", "media", "proto" ], "enumDescriptions": [ "Responses with Content-Type of application/json", "Media download with context-dependent Content-Type", "Responses with Content-Type of application/x-protobuf" ], "description": "Data format for response.", "location": "query", "default": "json" }, "callback": { "type": "string", "description": "JSONP", "location": "query" }, "fields": { "type": "string", "description": "Selector specifying which fields to include in a partial response.", "location": "query" } }, "title": "Cloud Shell API", "fullyEncodeReservedExpansion": true, "servicePath": "", "auth": { "oauth2": { "scopes": { "https://www.googleapis.com/auth/cloud-platform": { "description": "See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account." } } } }, "kind": "discovery#restDescription", "revision": "20220711", "resources": { "users": { "resources": { "environments": { "methods": { "authorize": { "description": "Sends OAuth credentials to a running environment on behalf of a user. When this completes, the environment will be authorized to run various Google Cloud command line tools without requiring the user to manually authenticate.", "flatPath": "v1/users/{usersId}/environments/{environmentsId}:authorize", "response": { "$ref": "Operation" }, "request": { "$ref": "AuthorizeEnvironmentRequest" }, "scopes": [ "https://www.googleapis.com/auth/cloud-platform" ], "parameterOrder": [ "name" ], "parameters": { "name": { "required": true, "pattern": "^users/[^/]+/environments/[^/]+$", "description": "Name of the resource that should receive the credentials, for example `users/me/environments/default` or `users/someone@example.com/environments/default`.", "location": "path", "type": "string" } }, "path": "v1/{+name}:authorize", "httpMethod": "POST", "id": "cloudshell.users.environments.authorize" }, "addPublicKey": { "id": "cloudshell.users.environments.addPublicKey", "scopes": [ "https://www.googleapis.com/auth/cloud-platform" ], "parameterOrder": [ "environment" ], "parameters": { "environment": { "location": "path", "pattern": "^users/[^/]+/environments/[^/]+$", "type": "string", "required": true, "description": "Environment this key should be added to, e.g. `users/me/environments/default`." } }, "httpMethod": "POST", "description": "Adds a public SSH key to an environment, allowing clients with the corresponding private key to connect to that environment via SSH. If a key with the same content already exists, this will error with ALREADY_EXISTS.", "request": { "$ref": "AddPublicKeyRequest" }, "flatPath": "v1/users/{usersId}/environments/{environmentsId}:addPublicKey", "path": "v1/{+environment}:addPublicKey", "response": { "$ref": "Operation" } }, "removePublicKey": { "request": { "$ref": "RemovePublicKeyRequest" }, "id": "cloudshell.users.environments.removePublicKey", "scopes": [ "https://www.googleapis.com/auth/cloud-platform" ], "httpMethod": "POST", "response": { "$ref": "Operation" }, "parameterOrder": [ "environment" ], "parameters": { "environment": { "type": "string", "location": "path", "description": "Environment this key should be removed from, e.g. `users/me/environments/default`.", "required": true, "pattern": "^users/[^/]+/environments/[^/]+$" } }, "flatPath": "v1/users/{usersId}/environments/{environmentsId}:removePublicKey", "path": "v1/{+environment}:removePublicKey", "description": "Removes a public SSH key from an environment. Clients will no longer be able to connect to the environment using the corresponding private key. If a key with the same content is not present, this will error with NOT_FOUND." }, "get": { "flatPath": "v1/users/{usersId}/environments/{environmentsId}", "parameters": { "name": { "type": "string", "description": "Required. Name of the requested resource, for example `users/me/environments/default` or `users/someone@example.com/environments/default`.", "pattern": "^users/[^/]+/environments/[^/]+$", "location": "path", "required": true } }, "parameterOrder": [ "name" ], "httpMethod": "GET", "path": "v1/{+name}", "response": { "$ref": "Environment" }, "description": "Gets an environment. Returns NOT_FOUND if the environment does not exist.", "id": "cloudshell.users.environments.get", "scopes": [ "https://www.googleapis.com/auth/cloud-platform" ] }, "start": { "id": "cloudshell.users.environments.start", "parameterOrder": [ "name" ], "path": "v1/{+name}:start", "request": { "$ref": "StartEnvironmentRequest" }, "parameters": { "name": { "pattern": "^users/[^/]+/environments/[^/]+$", "required": true, "location": "path", "type": "string", "description": "Name of the resource that should be started, for example `users/me/environments/default` or `users/someone@example.com/environments/default`." } }, "scopes": [ "https://www.googleapis.com/auth/cloud-platform" ], "description": "Starts an existing environment, allowing clients to connect to it. The returned operation will contain an instance of StartEnvironmentMetadata in its metadata field. Users can wait for the environment to start by polling this operation via GetOperation. Once the environment has finished starting and is ready to accept connections, the operation will contain a StartEnvironmentResponse in its response field.", "response": { "$ref": "Operation" }, "httpMethod": "POST", "flatPath": "v1/users/{usersId}/environments/{environmentsId}:start" } } } } }, "operations": { "methods": { "cancel": { "response": { "$ref": "Empty" }, "httpMethod": "POST", "path": "v1/{+name}:cancel", "parameterOrder": [ "name" ], "parameters": { "name": { "type": "string", "pattern": "^operations/.*$", "description": "The name of the operation resource to be cancelled.", "required": true, "location": "path" } }, "flatPath": "v1/operations/{operationsId}:cancel", "description": "Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of 1, corresponding to `Code.CANCELLED`.", "scopes": [ "https://www.googleapis.com/auth/cloud-platform" ], "request": { "$ref": "CancelOperationRequest" }, "id": "cloudshell.operations.cancel" }, "delete": { "id": "cloudshell.operations.delete", "path": "v1/{+name}", "scopes": [ "https://www.googleapis.com/auth/cloud-platform" ], "flatPath": "v1/operations/{operationsId}", "response": { "$ref": "Empty" }, "description": "Deletes a long-running operation. This method indicates that the client is no longer interested in the operation result. It does not cancel the operation. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.", "httpMethod": "DELETE", "parameterOrder": [ "name" ], "parameters": { "name": { "required": true, "location": "path", "pattern": "^operations/.*$", "type": "string", "description": "The name of the operation resource to be deleted." } } }, "list": { "scopes": [ "https://www.googleapis.com/auth/cloud-platform" ], "httpMethod": "GET", "description": "Lists operations that match the specified filter in the request. If the server doesn't support this method, it returns `UNIMPLEMENTED`. NOTE: the `name` binding allows API services to override the binding to use different resource name schemes, such as `users/*/operations`. To override the binding, API services can add a binding such as `\"/v1/{name=users/*}/operations\"` to their service configuration. For backwards compatibility, the default name includes the operations collection id, however overriding users must ensure the name binding is the parent resource, without the operations collection id.", "path": "v1/{+name}", "parameterOrder": [ "name" ], "id": "cloudshell.operations.list", "parameters": { "filter": { "type": "string", "description": "The standard list filter.", "location": "query" }, "pageSize": { "format": "int32", "description": "The standard list page size.", "location": "query", "type": "integer" }, "pageToken": { "location": "query", "type": "string", "description": "The standard list page token." }, "name": { "type": "string", "pattern": "^operations$", "location": "path", "description": "The name of the operation's parent resource.", "required": true } }, "response": { "$ref": "ListOperationsResponse" }, "flatPath": "v1/operations" }, "get": { "parameters": { "name": { "pattern": "^operations/.*$", "location": "path", "description": "The name of the operation resource.", "required": true, "type": "string" } }, "description": "Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.", "id": "cloudshell.operations.get", "flatPath": "v1/operations/{operationsId}", "scopes": [ "https://www.googleapis.com/auth/cloud-platform" ], "response": { "$ref": "Operation" }, "httpMethod": "GET", "parameterOrder": [ "name" ], "path": "v1/{+name}" } } } } }
]===]))