local decode = require("cjson").new().decode
return assert(decode([===[
{ "ownerName": "Google", "resources": { "projects": { "resources": { "locations": { "resources": { "operations": { "methods": { "cancel": { "parameterOrder": [ "name" ], "scopes": [ "https://www.googleapis.com/auth/cloud-platform" ], "response": { "$ref": "Empty" }, "flatPath": "v1/projects/{projectsId}/locations/{locationsId}/operations/{operationsId}:cancel", "path": "v1/{+name}:cancel", "httpMethod": "POST", "id": "tpu.projects.locations.operations.cancel", "description": "Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of 1, corresponding to `Code.CANCELLED`.", "parameters": { "name": { "type": "string", "pattern": "^projects/[^/]+/locations/[^/]+/operations/[^/]+$", "location": "path", "description": "The name of the operation resource to be cancelled.", "required": true } } }, "delete": { "response": { "$ref": "Empty" }, "flatPath": "v1/projects/{projectsId}/locations/{locationsId}/operations/{operationsId}", "id": "tpu.projects.locations.operations.delete", "description": "Deletes a long-running operation. This method indicates that the client is no longer interested in the operation result. It does not cancel the operation. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.", "parameters": { "name": { "pattern": "^projects/[^/]+/locations/[^/]+/operations/[^/]+$", "type": "string", "location": "path", "required": true, "description": "The name of the operation resource to be deleted." } }, "path": "v1/{+name}", "httpMethod": "DELETE", "scopes": [ "https://www.googleapis.com/auth/cloud-platform" ], "parameterOrder": [ "name" ] }, "list": { "httpMethod": "GET", "flatPath": "v1/projects/{projectsId}/locations/{locationsId}/operations", "scopes": [ "https://www.googleapis.com/auth/cloud-platform" ], "id": "tpu.projects.locations.operations.list", "parameters": { "pageToken": { "location": "query", "type": "string", "description": "The standard list page token." }, "filter": { "location": "query", "type": "string", "description": "The standard list filter." }, "name": { "description": "The name of the operation's parent resource.", "type": "string", "pattern": "^projects/[^/]+/locations/[^/]+$", "location": "path", "required": true }, "pageSize": { "location": "query", "description": "The standard list page size.", "format": "int32", "type": "integer" } }, "description": "Lists operations that match the specified filter in the request. If the server doesn't support this method, it returns `UNIMPLEMENTED`. NOTE: the `name` binding allows API services to override the binding to use different resource name schemes, such as `users/*/operations`. To override the binding, API services can add a binding such as `\"/v1/{name=users/*}/operations\"` to their service configuration. For backwards compatibility, the default name includes the operations collection id, however overriding users must ensure the name binding is the parent resource, without the operations collection id.", "path": "v1/{+name}/operations", "response": { "$ref": "ListOperationsResponse" }, "parameterOrder": [ "name" ] }, "get": { "response": { "$ref": "Operation" }, "path": "v1/{+name}", "flatPath": "v1/projects/{projectsId}/locations/{locationsId}/operations/{operationsId}", "scopes": [ "https://www.googleapis.com/auth/cloud-platform" ], "httpMethod": "GET", "parameters": { "name": { "location": "path", "description": "The name of the operation resource.", "pattern": "^projects/[^/]+/locations/[^/]+/operations/[^/]+$", "required": true, "type": "string" } }, "id": "tpu.projects.locations.operations.get", "description": "Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.", "parameterOrder": [ "name" ] } } }, "nodes": { "methods": { "reimage": { "flatPath": "v1/projects/{projectsId}/locations/{locationsId}/nodes/{nodesId}:reimage", "parameters": { "name": { "location": "path", "description": "The resource name.", "pattern": "^projects/[^/]+/locations/[^/]+/nodes/[^/]+$", "type": "string", "required": true } }, "path": "v1/{+name}:reimage", "id": "tpu.projects.locations.nodes.reimage", "response": { "$ref": "Operation" }, "request": { "$ref": "ReimageNodeRequest" }, "description": "Reimages a node's OS.", "scopes": [ "https://www.googleapis.com/auth/cloud-platform" ], "httpMethod": "POST", "parameterOrder": [ "name" ] }, "stop": { "request": { "$ref": "StopNodeRequest" }, "scopes": [ "https://www.googleapis.com/auth/cloud-platform" ], "parameters": { "name": { "description": "The resource name.", "location": "path", "pattern": "^projects/[^/]+/locations/[^/]+/nodes/[^/]+$", "required": true, "type": "string" } }, "description": "Stops a node, this operation is only available with single TPU nodes.", "httpMethod": "POST", "id": "tpu.projects.locations.nodes.stop", "path": "v1/{+name}:stop", "parameterOrder": [ "name" ], "response": { "$ref": "Operation" }, "flatPath": "v1/projects/{projectsId}/locations/{locationsId}/nodes/{nodesId}:stop" }, "get": { "path": "v1/{+name}", "parameterOrder": [ "name" ], "scopes": [ "https://www.googleapis.com/auth/cloud-platform" ], "description": "Gets the details of a node.", "flatPath": "v1/projects/{projectsId}/locations/{locationsId}/nodes/{nodesId}", "response": { "$ref": "Node" }, "parameters": { "name": { "type": "string", "location": "path", "required": true, "pattern": "^projects/[^/]+/locations/[^/]+/nodes/[^/]+$", "description": "Required. The resource name." } }, "id": "tpu.projects.locations.nodes.get", "httpMethod": "GET" }, "list": { "description": "Lists nodes.", "parameters": { "pageSize": { "description": "The maximum number of items to return.", "format": "int32", "type": "integer", "location": "query" }, "pageToken": { "type": "string", "location": "query", "description": "The next_page_token value returned from a previous List request, if any." }, "parent": { "location": "path", "pattern": "^projects/[^/]+/locations/[^/]+$", "description": "Required. The parent resource name.", "type": "string", "required": true } }, "response": { "$ref": "ListNodesResponse" }, "parameterOrder": [ "parent" ], "path": "v1/{+parent}/nodes", "httpMethod": "GET", "flatPath": "v1/projects/{projectsId}/locations/{locationsId}/nodes", "id": "tpu.projects.locations.nodes.list", "scopes": [ "https://www.googleapis.com/auth/cloud-platform" ] }, "delete": { "flatPath": "v1/projects/{projectsId}/locations/{locationsId}/nodes/{nodesId}", "id": "tpu.projects.locations.nodes.delete", "parameterOrder": [ "name" ], "scopes": [ "https://www.googleapis.com/auth/cloud-platform" ], "response": { "$ref": "Operation" }, "description": "Deletes a node.", "parameters": { "name": { "description": "Required. The resource name.", "location": "path", "pattern": "^projects/[^/]+/locations/[^/]+/nodes/[^/]+$", "required": true, "type": "string" } }, "httpMethod": "DELETE", "path": "v1/{+name}" }, "start": { "id": "tpu.projects.locations.nodes.start", "scopes": [ "https://www.googleapis.com/auth/cloud-platform" ], "request": { "$ref": "StartNodeRequest" }, "parameterOrder": [ "name" ], "httpMethod": "POST", "response": { "$ref": "Operation" }, "description": "Starts a node.", "parameters": { "name": { "type": "string", "description": "The resource name.", "location": "path", "pattern": "^projects/[^/]+/locations/[^/]+/nodes/[^/]+$", "required": true } }, "flatPath": "v1/projects/{projectsId}/locations/{locationsId}/nodes/{nodesId}:start", "path": "v1/{+name}:start" }, "create": { "httpMethod": "POST", "id": "tpu.projects.locations.nodes.create", "response": { "$ref": "Operation" }, "scopes": [ "https://www.googleapis.com/auth/cloud-platform" ], "parameterOrder": [ "parent" ], "request": { "$ref": "Node" }, "parameters": { "parent": { "location": "path", "pattern": "^projects/[^/]+/locations/[^/]+$", "description": "Required. The parent resource name.", "type": "string", "required": true }, "nodeId": { "description": "The unqualified resource name.", "type": "string", "location": "query" } }, "flatPath": "v1/projects/{projectsId}/locations/{locationsId}/nodes", "description": "Creates a node.", "path": "v1/{+parent}/nodes" } } }, "acceleratorTypes": { "methods": { "list": { "parameterOrder": [ "parent" ], "flatPath": "v1/projects/{projectsId}/locations/{locationsId}/acceleratorTypes", "description": "Lists accelerator types supported by this API.", "id": "tpu.projects.locations.acceleratorTypes.list", "scopes": [ "https://www.googleapis.com/auth/cloud-platform" ], "response": { "$ref": "ListAcceleratorTypesResponse" }, "httpMethod": "GET", "parameters": { "orderBy": { "type": "string", "description": "Sort results.", "location": "query" }, "pageSize": { "location": "query", "description": "The maximum number of items to return.", "format": "int32", "type": "integer" }, "parent": { "description": "Required. The parent resource name.", "required": true, "pattern": "^projects/[^/]+/locations/[^/]+$", "type": "string", "location": "path" }, "filter": { "type": "string", "location": "query", "description": "List filter." }, "pageToken": { "description": "The next_page_token value returned from a previous List request, if any.", "type": "string", "location": "query" } }, "path": "v1/{+parent}/acceleratorTypes" }, "get": { "path": "v1/{+name}", "parameters": { "name": { "type": "string", "required": true, "pattern": "^projects/[^/]+/locations/[^/]+/acceleratorTypes/[^/]+$", "description": "Required. The resource name.", "location": "path" } }, "description": "Gets AcceleratorType.", "response": { "$ref": "AcceleratorType" }, "httpMethod": "GET", "scopes": [ "https://www.googleapis.com/auth/cloud-platform" ], "parameterOrder": [ "name" ], "id": "tpu.projects.locations.acceleratorTypes.get", "flatPath": "v1/projects/{projectsId}/locations/{locationsId}/acceleratorTypes/{acceleratorTypesId}" } } }, "tensorflowVersions": { "methods": { "list": { "response": { "$ref": "ListTensorFlowVersionsResponse" }, "parameters": { "filter": { "description": "List filter.", "type": "string", "location": "query" }, "orderBy": { "location": "query", "type": "string", "description": "Sort results." }, "pageToken": { "type": "string", "description": "The next_page_token value returned from a previous List request, if any.", "location": "query" }, "pageSize": { "description": "The maximum number of items to return.", "location": "query", "type": "integer", "format": "int32" }, "parent": { "pattern": "^projects/[^/]+/locations/[^/]+$", "location": "path", "required": true, "type": "string", "description": "Required. The parent resource name." } }, "httpMethod": "GET", "path": "v1/{+parent}/tensorflowVersions", "parameterOrder": [ "parent" ], "description": "List TensorFlow versions supported by this API.", "id": "tpu.projects.locations.tensorflowVersions.list", "flatPath": "v1/projects/{projectsId}/locations/{locationsId}/tensorflowVersions", "scopes": [ "https://www.googleapis.com/auth/cloud-platform" ] }, "get": { "response": { "$ref": "TensorFlowVersion" }, "httpMethod": "GET", "id": "tpu.projects.locations.tensorflowVersions.get", "flatPath": "v1/projects/{projectsId}/locations/{locationsId}/tensorflowVersions/{tensorflowVersionsId}", "scopes": [ "https://www.googleapis.com/auth/cloud-platform" ], "parameterOrder": [ "name" ], "parameters": { "name": { "description": "Required. The resource name.", "location": "path", "pattern": "^projects/[^/]+/locations/[^/]+/tensorflowVersions/[^/]+$", "required": true, "type": "string" } }, "path": "v1/{+name}", "description": "Gets TensorFlow Version." } } } }, "methods": { "list": { "id": "tpu.projects.locations.list", "scopes": [ "https://www.googleapis.com/auth/cloud-platform" ], "flatPath": "v1/projects/{projectsId}/locations", "parameterOrder": [ "name" ], "description": "Lists information about the supported locations for this service.", "parameters": { "pageToken": { "description": "A page token received from the `next_page_token` field in the response. Send that page token to receive the subsequent page.", "location": "query", "type": "string" }, "pageSize": { "type": "integer", "format": "int32", "location": "query", "description": "The maximum number of results to return. If not set, the service selects a default." }, "filter": { "type": "string", "location": "query", "description": "A filter to narrow down results to a preferred subset. The filtering language accepts strings like `\"displayName=tokyo\"`, and is documented in more detail in [AIP-160](https://google.aip.dev/160)." }, "name": { "pattern": "^projects/[^/]+$", "location": "path", "description": "The resource that owns the locations collection, if applicable.", "required": true, "type": "string" } }, "httpMethod": "GET", "response": { "$ref": "ListLocationsResponse" }, "path": "v1/{+name}/locations" }, "get": { "parameterOrder": [ "name" ], "flatPath": "v1/projects/{projectsId}/locations/{locationsId}", "description": "Gets information about a location.", "path": "v1/{+name}", "httpMethod": "GET", "response": { "$ref": "Location" }, "id": "tpu.projects.locations.get", "parameters": { "name": { "location": "path", "type": "string", "description": "Resource name for the location.", "pattern": "^projects/[^/]+/locations/[^/]+$", "required": true } }, "scopes": [ "https://www.googleapis.com/auth/cloud-platform" ] } } } } } }, "version_module": true, "fullyEncodeReservedExpansion": true, "protocol": "rest", "auth": { "oauth2": { "scopes": { "https://www.googleapis.com/auth/cloud-platform": { "description": "See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account." } } } }, "description": "TPU API provides customers with access to Google TPU technology.", "schemas": { "Symptom": { "id": "Symptom", "properties": { "workerId": { "description": "A string used to uniquely distinguish a worker within a TPU node.", "type": "string" }, "symptomType": { "enumDescriptions": [ "Unspecified symptom.", "TPU VM memory is low.", "TPU runtime is out of memory.", "TPU runtime execution has timed out.", "TPU runtime fails to construct a mesh that recognizes each TPU device's neighbors.", "TPU HBM is out of memory.", "Abusive behaviors have been identified on the current project." ], "enum": [ "SYMPTOM_TYPE_UNSPECIFIED", "LOW_MEMORY", "OUT_OF_MEMORY", "EXECUTE_TIMED_OUT", "MESH_BUILD_FAIL", "HBM_OUT_OF_MEMORY", "PROJECT_ABUSE" ], "description": "Type of the Symptom.", "type": "string" }, "details": { "type": "string", "description": "Detailed information of the current Symptom." }, "createTime": { "format": "google-datetime", "type": "string", "description": "Timestamp when the Symptom is created." } }, "type": "object", "description": "A Symptom instance." }, "NetworkEndpoint": { "description": "A network endpoint over which a TPU worker can be reached.", "type": "object", "id": "NetworkEndpoint", "properties": { "port": { "format": "int32", "type": "integer", "description": "The port of this network endpoint." }, "ipAddress": { "type": "string", "description": "The IP address of this network endpoint." } } }, "TensorFlowVersion": { "type": "object", "id": "TensorFlowVersion", "properties": { "version": { "type": "string", "description": "the tensorflow version." }, "name": { "description": "The resource name.", "type": "string" } }, "description": "A tensorflow version that a Node can be configured with." }, "ReimageNodeRequest": { "properties": { "tensorflowVersion": { "description": "The version for reimage to create.", "type": "string" } }, "id": "ReimageNodeRequest", "type": "object", "description": "Request for ReimageNode." }, "ListLocationsResponse": { "properties": { "locations": { "items": { "$ref": "Location" }, "type": "array", "description": "A list of locations that matches the specified filter in the request." }, "nextPageToken": { "type": "string", "description": "The standard List next-page token." } }, "id": "ListLocationsResponse", "type": "object", "description": "The response message for Locations.ListLocations." }, "ListAcceleratorTypesResponse": { "id": "ListAcceleratorTypesResponse", "description": "Response for ListAcceleratorTypes.", "properties": { "nextPageToken": { "type": "string", "description": "The next page token or empty if none." }, "unreachable": { "type": "array", "description": "Locations that could not be reached.", "items": { "type": "string" } }, "acceleratorTypes": { "description": "The listed nodes.", "type": "array", "items": { "$ref": "AcceleratorType" } } }, "type": "object" }, "ListOperationsResponse": { "type": "object", "id": "ListOperationsResponse", "properties": { "nextPageToken": { "description": "The standard List next-page token.", "type": "string" }, "operations": { "type": "array", "items": { "$ref": "Operation" }, "description": "A list of operations that matches the specified filter in the request." } }, "description": "The response message for Operations.ListOperations." }, "Operation": { "properties": { "metadata": { "type": "object", "description": "Service-specific metadata associated with the operation. It typically contains progress information and common metadata such as create time. Some services might not provide such metadata. Any method that returns a long-running operation should document the metadata type, if any.", "additionalProperties": { "type": "any", "description": "Properties of the object. Contains field @type with type URL." } }, "done": { "description": "If the value is `false`, it means the operation is still in progress. If `true`, the operation is completed, and either `error` or `response` is available.", "type": "boolean" }, "name": { "description": "The server-assigned name, which is only unique within the same service that originally returns it. If you use the default HTTP mapping, the `name` should be a resource name ending with `operations/{unique_id}`.", "type": "string" }, "error": { "$ref": "Status", "description": "The error result of the operation in case of failure or cancellation." }, "response": { "description": "The normal response of the operation in case of success. If the original method returns no data on success, such as `Delete`, the response is `google.protobuf.Empty`. If the original method is standard `Get`/`Create`/`Update`, the response should be the resource. For other methods, the response should have the type `XxxResponse`, where `Xxx` is the original method name. For example, if the original method name is `TakeSnapshot()`, the inferred response type is `TakeSnapshotResponse`.", "additionalProperties": { "type": "any", "description": "Properties of the object. Contains field @type with type URL." }, "type": "object" } }, "id": "Operation", "description": "This resource represents a long-running operation that is the result of a network API call.", "type": "object" }, "StopNodeRequest": { "properties": {}, "type": "object", "description": "Request for StopNode.", "id": "StopNodeRequest" }, "SchedulingConfig": { "id": "SchedulingConfig", "type": "object", "description": "Sets the scheduling options for this node.", "properties": { "reserved": { "description": "Whether the node is created under a reservation.", "type": "boolean" }, "preemptible": { "description": "Defines whether the node is preemptible.", "type": "boolean" } } }, "OperationMetadata": { "properties": { "statusDetail": { "type": "string", "description": "Human-readable status of the operation, if any." }, "verb": { "description": "Name of the verb executed by the operation.", "type": "string" }, "target": { "description": "Target of the operation - for example projects/project-1/connectivityTests/test-1", "type": "string" }, "createTime": { "format": "google-datetime", "description": "The time the operation was created.", "type": "string" }, "cancelRequested": { "description": "Specifies if cancellation was requested for the operation.", "type": "boolean" }, "apiVersion": { "description": "API version.", "type": "string" }, "endTime": { "format": "google-datetime", "description": "The time the operation finished running.", "type": "string" } }, "description": "Metadata describing an Operation", "type": "object", "id": "OperationMetadata" }, "Empty": { "id": "Empty", "type": "object", "description": "A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }", "properties": {} }, "Status": { "id": "Status", "type": "object", "description": "The `Status` type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by [gRPC](https://github.com/grpc). Each `Status` message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the [API Design Guide](https://cloud.google.com/apis/design/errors).", "properties": { "details": { "items": { "additionalProperties": { "type": "any", "description": "Properties of the object. Contains field @type with type URL." }, "type": "object" }, "description": "A list of messages that carry the error details. There is a common set of message types for APIs to use.", "type": "array" }, "message": { "type": "string", "description": "A developer-facing error message, which should be in English. Any user-facing error message should be localized and sent in the google.rpc.Status.details field, or localized by the client." }, "code": { "description": "The status code, which should be an enum value of google.rpc.Code.", "format": "int32", "type": "integer" } } }, "ListTensorFlowVersionsResponse": { "id": "ListTensorFlowVersionsResponse", "properties": { "unreachable": { "type": "array", "items": { "type": "string" }, "description": "Locations that could not be reached." }, "nextPageToken": { "type": "string", "description": "The next page token or empty if none." }, "tensorflowVersions": { "type": "array", "items": { "$ref": "TensorFlowVersion" }, "description": "The listed nodes." } }, "description": "Response for ListTensorFlowVersions.", "type": "object" }, "ListNodesResponse": { "properties": { "nextPageToken": { "type": "string", "description": "The next page token or empty if none." }, "nodes": { "items": { "$ref": "Node" }, "type": "array", "description": "The listed nodes." }, "unreachable": { "type": "array", "description": "Locations that could not be reached.", "items": { "type": "string" } } }, "description": "Response for ListNodes.", "type": "object", "id": "ListNodesResponse" }, "StartNodeRequest": { "id": "StartNodeRequest", "type": "object", "properties": {}, "description": "Request for StartNode." }, "Location": { "properties": { "metadata": { "additionalProperties": { "description": "Properties of the object. Contains field @type with type URL.", "type": "any" }, "type": "object", "description": "Service-specific metadata. For example the available capacity at the given location." }, "name": { "description": "Resource name for the location, which may vary between implementations. For example: `\"projects/example-project/locations/us-east1\"`", "type": "string" }, "locationId": { "type": "string", "description": "The canonical id for this location. For example: `\"us-east1\"`." }, "labels": { "type": "object", "additionalProperties": { "type": "string" }, "description": "Cross-service attributes for the location. For example {\"cloud.googleapis.com/region\": \"us-east1\"}" }, "displayName": { "description": "The friendly name for this location, typically a nearby city name. For example, \"Tokyo\".", "type": "string" } }, "description": "A resource that represents Google Cloud Platform location.", "type": "object", "id": "Location" }, "AcceleratorType": { "type": "object", "properties": { "type": { "description": "the accelerator type.", "type": "string" }, "name": { "type": "string", "description": "The resource name." } }, "id": "AcceleratorType", "description": "A accelerator type that a Node can be configured with." }, "Node": { "description": "A TPU instance.", "type": "object", "id": "Node", "properties": { "useServiceNetworking": { "description": "Whether the VPC peering for the node is set up through Service Networking API. The VPC Peering should be set up before provisioning the node. If this field is set, cidr_block field should not be specified. If the network, that you want to peer the TPU Node to, is Shared VPC networks, the node must be created with this this field enabled.", "type": "boolean" }, "tensorflowVersion": { "description": "Required. The version of Tensorflow running in the Node.", "type": "string" }, "name": { "readOnly": true, "type": "string", "description": "Output only. Immutable. The name of the TPU" }, "networkEndpoints": { "description": "Output only. The network endpoints where TPU workers can be accessed and sent work. It is recommended that Tensorflow clients of the node reach out to the 0th entry in this map first.", "type": "array", "readOnly": true, "items": { "$ref": "NetworkEndpoint" } }, "description": { "type": "string", "description": "The user-supplied description of the TPU. Maximum of 512 characters." }, "apiVersion": { "enum": [ "API_VERSION_UNSPECIFIED", "V1_ALPHA1", "V1", "V2_ALPHA1" ], "enumDescriptions": [ "API version is unknown.", "TPU API V1Alpha1 version.", "TPU API V1 version.", "TPU API V2Alpha1 version." ], "description": "Output only. The API version that created this Node.", "readOnly": true, "type": "string" }, "state": { "readOnly": true, "enum": [ "STATE_UNSPECIFIED", "CREATING", "READY", "RESTARTING", "REIMAGING", "DELETING", "REPAIRING", "STOPPED", "STOPPING", "STARTING", "PREEMPTED", "TERMINATED", "HIDING", "HIDDEN", "UNHIDING" ], "type": "string", "enumDescriptions": [ "TPU node state is not known/set.", "TPU node is being created.", "TPU node has been created.", "TPU node is restarting.", "TPU node is undergoing reimaging.", "TPU node is being deleted.", "TPU node is being repaired and may be unusable. Details can be found in the `help_description` field.", "TPU node is stopped.", "TPU node is currently stopping.", "TPU node is currently starting.", "TPU node has been preempted. Only applies to Preemptible TPU Nodes.", "TPU node has been terminated due to maintenance or has reached the end of its life cycle (for preemptible nodes).", "TPU node is currently hiding.", "TPU node has been hidden.", "TPU node is currently unhiding." ], "description": "Output only. The current state for the TPU Node." }, "serviceAccount": { "readOnly": true, "description": "Output only. The service account used to run the tensor flow services within the node. To share resources, including Google Cloud Storage data, with the Tensorflow job running in the Node, this account must have permissions to that data.", "type": "string" }, "schedulingConfig": { "description": "The scheduling options for this node.", "$ref": "SchedulingConfig" }, "acceleratorType": { "description": "Required. The type of hardware accelerators associated with this node.", "type": "string" }, "healthDescription": { "description": "Output only. If this field is populated, it contains a description of why the TPU Node is unhealthy.", "type": "string", "readOnly": true }, "health": { "enumDescriptions": [ "Health status is unknown: not initialized or failed to retrieve.", "The resource is healthy.", "The resource is unhealthy.", "The resource is unresponsive.", "The in-guest ML stack is unhealthy.", "The node is under maintenance/priority boost caused rescheduling and will resume running once rescheduled." ], "description": "The health status of the TPU node.", "enum": [ "HEALTH_UNSPECIFIED", "HEALTHY", "DEPRECATED_UNHEALTHY", "TIMEOUT", "UNHEALTHY_TENSORFLOW", "UNHEALTHY_MAINTENANCE" ], "type": "string" }, "createTime": { "readOnly": true, "format": "google-datetime", "type": "string", "description": "Output only. The time when the node was created." }, "network": { "description": "The name of a network they wish to peer the TPU node to. It must be a preexisting Compute Engine network inside of the project on which this API has been activated. If none is provided, \"default\" will be used.", "type": "string" }, "cidrBlock": { "type": "string", "description": "The CIDR block that the TPU node will use when selecting an IP address. This CIDR block must be a /29 block; the Compute Engine networks API forbids a smaller block, and using a larger block would be wasteful (a node can only consume one IP address). Errors will occur if the CIDR block has already been used for a currently existing TPU node, the CIDR block conflicts with any subnetworks in the user's provided network, or the provided network is peered with another network that is using that CIDR block." }, "labels": { "type": "object", "additionalProperties": { "type": "string" }, "description": "Resource labels to represent user-provided metadata." }, "port": { "description": "Output only. DEPRECATED! Use network_endpoints instead. The network port for the TPU Node as visible to Compute Engine instances.", "type": "string" }, "ipAddress": { "type": "string", "description": "Output only. DEPRECATED! Use network_endpoints instead. The network address for the TPU Node as visible to Compute Engine instances." }, "symptoms": { "type": "array", "readOnly": true, "items": { "$ref": "Symptom" }, "description": "Output only. The Symptoms that have occurred to the TPU Node." } } } }, "batchPath": "batch", "id": "tpu:v1", "canonicalName": "TPU", "discoveryVersion": "v1", "mtlsRootUrl": "https://tpu.mtls.googleapis.com/", "baseUrl": "https://tpu.googleapis.com/", "documentationLink": "https://cloud.google.com/tpu/", "revision": "20220629", "servicePath": "", "rootUrl": "https://tpu.googleapis.com/", "title": "Cloud TPU API", "parameters": { "upload_protocol": { "description": "Upload protocol for media (e.g. \"raw\", \"multipart\").", "location": "query", "type": "string" }, "access_token": { "description": "OAuth access token.", "location": "query", "type": "string" }, "key": { "type": "string", "location": "query", "description": "API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token." }, "quotaUser": { "description": "Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.", "type": "string", "location": "query" }, "$.xgafv": { "enumDescriptions": [ "v1 error format", "v2 error format" ], "type": "string", "description": "V1 error format.", "enum": [ "1", "2" ], "location": "query" }, "fields": { "type": "string", "location": "query", "description": "Selector specifying which fields to include in a partial response." }, "uploadType": { "type": "string", "description": "Legacy upload protocol for media (e.g. \"media\", \"multipart\").", "location": "query" }, "callback": { "type": "string", "location": "query", "description": "JSONP" }, "oauth_token": { "location": "query", "description": "OAuth 2.0 token for the current user.", "type": "string" }, "prettyPrint": { "type": "boolean", "default": "true", "description": "Returns response with indentations and line breaks.", "location": "query" }, "alt": { "location": "query", "description": "Data format for response.", "type": "string", "enum": [ "json", "media", "proto" ], "default": "json", "enumDescriptions": [ "Responses with Content-Type of application/json", "Media download with context-dependent Content-Type", "Responses with Content-Type of application/x-protobuf" ] } }, "kind": "discovery#restDescription", "basePath": "", "version": "v1", "ownerDomain": "google.com", "name": "tpu", "icons": { "x32": "http://www.google.com/images/icons/product/search-32.gif", "x16": "http://www.google.com/images/icons/product/search-16.gif" } }
]===]))