local decode = require("cjson").new().decode
return assert(decode([===[
{ "auth": { "oauth2": { "scopes": { "https://www.googleapis.com/auth/homegraph": { "description": "Private Service: https://www.googleapis.com/auth/homegraph" } } } }, "description": "", "ownerDomain": "google.com", "rootUrl": "https://homegraph.googleapis.com/", "baseUrl": "https://homegraph.googleapis.com/", "resources": { "agentUsers": { "methods": { "delete": { "parameterOrder": [ "agentUserId" ], "scopes": [ "https://www.googleapis.com/auth/homegraph" ], "parameters": { "requestId": { "type": "string", "location": "query", "description": "Request ID used for debugging." }, "agentUserId": { "description": "Required. Third-party user ID.", "type": "string", "required": true, "location": "path", "pattern": "^agentUsers/.*$" } }, "response": { "$ref": "Empty" }, "httpMethod": "DELETE", "id": "homegraph.agentUsers.delete", "description": "Unlinks the given third-party user from your smart home Action. All data related to this user will be deleted. For more details on how users link their accounts, see [fulfillment and authentication](https://developers.google.com/assistant/smarthome/concepts/fulfillment-authentication). The third-party user's identity is passed in via the `agent_user_id` (see DeleteAgentUserRequest). This request must be authorized using service account credentials from your Actions console project.", "path": "v1/{+agentUserId}", "flatPath": "v1/agentUsers/{agentUsersId}" } } }, "devices": { "methods": { "requestSync": { "httpMethod": "POST", "id": "homegraph.devices.requestSync", "path": "v1/devices:requestSync", "parameterOrder": [], "scopes": [ "https://www.googleapis.com/auth/homegraph" ], "flatPath": "v1/devices:requestSync", "response": { "$ref": "RequestSyncDevicesResponse" }, "request": { "$ref": "RequestSyncDevicesRequest" }, "parameters": {}, "description": "Requests Google to send an `action.devices.SYNC` [intent](https://developers.google.com/assistant/smarthome/reference/intent/sync) to your smart home Action to update device metadata for the given user. The third-party user's identity is passed via the `agent_user_id` (see RequestSyncDevicesRequest). This request must be authorized using service account credentials from your Actions console project." }, "query": { "parameters": {}, "flatPath": "v1/devices:query", "scopes": [ "https://www.googleapis.com/auth/homegraph" ], "id": "homegraph.devices.query", "parameterOrder": [], "response": { "$ref": "QueryResponse" }, "path": "v1/devices:query", "request": { "$ref": "QueryRequest" }, "description": "Gets the current states in Home Graph for the given set of the third-party user's devices. The third-party user's identity is passed in via the `agent_user_id` (see QueryRequest). This request must be authorized using service account credentials from your Actions console project.", "httpMethod": "POST" }, "reportStateAndNotification": { "response": { "$ref": "ReportStateAndNotificationResponse" }, "parameters": {}, "flatPath": "v1/devices:reportStateAndNotification", "description": "Reports device state and optionally sends device notifications. Called by your smart home Action when the state of a third-party device changes or you need to send a notification about the device. See [Implement Report State](https://developers.google.com/assistant/smarthome/develop/report-state) for more information. This method updates the device state according to its declared [traits](https://developers.google.com/assistant/smarthome/concepts/devices-traits). Publishing a new state value outside of these traits will result in an `INVALID_ARGUMENT` error response. The third-party user's identity is passed in via the `agent_user_id` (see ReportStateAndNotificationRequest). This request must be authorized using service account credentials from your Actions console project.", "request": { "$ref": "ReportStateAndNotificationRequest" }, "path": "v1/devices:reportStateAndNotification", "httpMethod": "POST", "parameterOrder": [], "id": "homegraph.devices.reportStateAndNotification", "scopes": [ "https://www.googleapis.com/auth/homegraph" ] }, "sync": { "id": "homegraph.devices.sync", "path": "v1/devices:sync", "parameters": {}, "description": "Gets all the devices associated with the given third-party user. The third-party user's identity is passed in via the `agent_user_id` (see SyncRequest). This request must be authorized using service account credentials from your Actions console project.", "flatPath": "v1/devices:sync", "scopes": [ "https://www.googleapis.com/auth/homegraph" ], "request": { "$ref": "SyncRequest" }, "parameterOrder": [], "response": { "$ref": "SyncResponse" }, "httpMethod": "POST" } } } }, "basePath": "", "servicePath": "", "id": "homegraph:v1", "protocol": "rest", "version_module": true, "discoveryVersion": "v1", "icons": { "x16": "http://www.google.com/images/icons/product/search-16.gif", "x32": "http://www.google.com/images/icons/product/search-32.gif" }, "schemas": { "ReportStateAndNotificationResponse": { "id": "ReportStateAndNotificationResponse", "properties": { "requestId": { "type": "string", "description": "Request ID copied from ReportStateAndNotificationRequest." } }, "type": "object", "description": "Response type for the [`ReportStateAndNotification`](#google.home.graph.v1.HomeGraphApiService.ReportStateAndNotification) call." }, "DeviceInfo": { "id": "DeviceInfo", "properties": { "hwVersion": { "type": "string", "description": "Device hardware version." }, "swVersion": { "description": "Device software version.", "type": "string" }, "manufacturer": { "type": "string", "description": "Device manufacturer." }, "model": { "description": "Device model.", "type": "string" } }, "type": "object", "description": "Device information." }, "QueryRequestInput": { "type": "object", "description": "Device ID inputs to QueryRequest.", "id": "QueryRequestInput", "properties": { "payload": { "description": "Payload containing third-party device IDs.", "$ref": "QueryRequestPayload" } } }, "SyncRequest": { "properties": { "agentUserId": { "description": "Required. Third-party user ID.", "type": "string" }, "requestId": { "type": "string", "description": "Request ID used for debugging." } }, "id": "SyncRequest", "type": "object", "description": "Request type for the [`Sync`](#google.home.graph.v1.HomeGraphApiService.Sync) call." }, "QueryResponsePayload": { "type": "object", "properties": { "devices": { "additionalProperties": { "type": "object", "additionalProperties": { "type": "any", "description": "Properties of the object." } }, "description": "States of the devices. Map of third-party device ID to struct of device states.", "type": "object" } }, "id": "QueryResponsePayload", "description": "Payload containing device states information." }, "StateAndNotificationPayload": { "type": "object", "description": "Payload containing the state and notification information for devices.", "id": "StateAndNotificationPayload", "properties": { "devices": { "$ref": "ReportStateAndNotificationDevice", "description": "The devices for updating state and sending notifications." } } }, "SyncResponsePayload": { "properties": { "devices": { "description": "Devices associated with the third-party user.", "items": { "$ref": "Device" }, "type": "array" }, "agentUserId": { "description": "Third-party user ID", "type": "string" } }, "id": "SyncResponsePayload", "type": "object", "description": "Payload containing device information." }, "ReportStateAndNotificationDevice": { "description": "The states and notifications specific to a device.", "type": "object", "properties": { "states": { "description": "States of devices to update. See the **Device STATES** section of the individual trait [reference guides](https://developers.google.com/assistant/smarthome/traits).", "type": "object", "additionalProperties": { "description": "Properties of the object.", "type": "any" } }, "notifications": { "type": "object", "additionalProperties": { "description": "Properties of the object.", "type": "any" }, "description": "Notifications metadata for devices. See the **Device NOTIFICATIONS** section of the individual trait [reference guides](https://developers.google.com/assistant/smarthome/traits)." } }, "id": "ReportStateAndNotificationDevice" }, "Device": { "properties": { "customData": { "type": "object", "description": "Custom device attributes stored in Home Graph and provided to your smart home Action in each [QUERY](https://developers.google.com/assistant/smarthome/reference/intent/query) and [EXECUTE](https://developers.google.com/assistant/smarthome/reference/intent/execute) intent. Data in this object has a few constraints: No sensitive information, including but not limited to Personally Identifiable Information.", "additionalProperties": { "type": "any", "description": "Properties of the object." } }, "roomHint": { "description": "Suggested name for the room where this device is installed. Google attempts to use this value during user setup.", "type": "string" }, "name": { "$ref": "DeviceNames", "description": "Names given to this device by your smart home Action." }, "traits": { "description": "Traits supported by the device. See [device traits](https://developers.google.com/assistant/smarthome/traits).", "items": { "type": "string" }, "type": "array" }, "structureHint": { "type": "string", "description": "Suggested name for the structure where this device is installed. Google attempts to use this value during user setup." }, "type": { "type": "string", "description": "Hardware type of the device. See [device types](https://developers.google.com/assistant/smarthome/guides)." }, "deviceInfo": { "description": "Device manufacturer, model, hardware version, and software version.", "$ref": "DeviceInfo" }, "id": { "description": "Third-party device ID.", "type": "string" }, "notificationSupportedByAgent": { "description": "Indicates whether your smart home Action will report notifications to Google for this device via ReportStateAndNotification. If your smart home Action enables users to control device notifications, you should update this field and call RequestSyncDevices.", "type": "boolean" }, "willReportState": { "type": "boolean", "description": "Indicates whether your smart home Action will report state of this device to Google via ReportStateAndNotification." }, "attributes": { "description": "Attributes for the traits supported by the device.", "additionalProperties": { "description": "Properties of the object.", "type": "any" }, "type": "object" }, "otherDeviceIds": { "description": "Alternate IDs associated with this device. This is used to identify cloud synced devices enabled for [local fulfillment](https://developers.google.com/assistant/smarthome/concepts/local).", "items": { "$ref": "AgentOtherDeviceId" }, "type": "array" } }, "id": "Device", "type": "object", "description": "Third-party device definition. Next ID = 14" }, "ReportStateAndNotificationRequest": { "description": "Request type for the [`ReportStateAndNotification`](#google.home.graph.v1.HomeGraphApiService.ReportStateAndNotification) call. It may include states, notifications, or both. States and notifications are defined per `device_id` (for example, \"123\" and \"456\" in the following example). # Example ```json { \"requestId\": \"ff36a3cc-ec34-11e6-b1a0-64510650abcf\", \"agentUserId\": \"1234\", \"payload\": { \"devices\": { \"states\": { \"123\": { \"on\": true }, \"456\": { \"on\": true, \"brightness\": 10 } }, } } } ```", "type": "object", "properties": { "payload": { "description": "Required. State of devices to update and notification metadata for devices.", "$ref": "StateAndNotificationPayload" }, "agentUserId": { "type": "string", "description": "Required. Third-party user ID." }, "requestId": { "description": "Request ID used for debugging.", "type": "string" }, "eventId": { "type": "string", "description": "Unique identifier per event (for example, a doorbell press)." }, "followUpToken": { "description": "Deprecated.", "type": "string" } }, "id": "ReportStateAndNotificationRequest" }, "QueryRequest": { "id": "QueryRequest", "properties": { "requestId": { "type": "string", "description": "Request ID used for debugging." }, "agentUserId": { "type": "string", "description": "Required. Third-party user ID." }, "inputs": { "description": "Required. Inputs containing third-party device IDs for which to get the device states.", "items": { "$ref": "QueryRequestInput" }, "type": "array" } }, "type": "object", "description": "Request type for the [`Query`](#google.home.graph.v1.HomeGraphApiService.Query) call." }, "QueryResponse": { "description": "Response type for the [`Query`](#google.home.graph.v1.HomeGraphApiService.Query) call. This should follow the same format as the Google smart home `action.devices.QUERY` [response](https://developers.google.com/assistant/smarthome/reference/intent/query). # Example ```json { \"requestId\": \"ff36a3cc-ec34-11e6-b1a0-64510650abcf\", \"payload\": { \"devices\": { \"123\": { \"on\": true, \"online\": true }, \"456\": { \"on\": true, \"online\": true, \"brightness\": 80, \"color\": { \"name\": \"cerulean\", \"spectrumRGB\": 31655 } } } } } ```", "id": "QueryResponse", "type": "object", "properties": { "requestId": { "description": "Request ID used for debugging. Copied from the request.", "type": "string" }, "payload": { "$ref": "QueryResponsePayload", "description": "Device states for the devices given in the request." } } }, "Empty": { "description": "A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }", "properties": {}, "type": "object", "id": "Empty" }, "RequestSyncDevicesRequest": { "id": "RequestSyncDevicesRequest", "properties": { "agentUserId": { "description": "Required. Third-party user ID.", "type": "string" }, "async": { "description": "Optional. If set, the request will be added to a queue and a response will be returned immediately. This enables concurrent requests for the given `agent_user_id`, but the caller will not receive any error responses.", "type": "boolean" } }, "type": "object", "description": "Request type for the [`RequestSyncDevices`](#google.home.graph.v1.HomeGraphApiService.RequestSyncDevices) call." }, "RequestSyncDevicesResponse": { "type": "object", "description": "Response type for the [`RequestSyncDevices`](#google.home.graph.v1.HomeGraphApiService.RequestSyncDevices) call. Intentionally empty upon success. An HTTP response code is returned with more details upon failure.", "id": "RequestSyncDevicesResponse", "properties": {} }, "QueryRequestPayload": { "properties": { "devices": { "items": { "$ref": "AgentDeviceId" }, "description": "Third-party device IDs for which to get the device states.", "type": "array" } }, "type": "object", "id": "QueryRequestPayload", "description": "Payload containing device IDs." }, "AgentOtherDeviceId": { "id": "AgentOtherDeviceId", "description": "Alternate third-party device ID.", "type": "object", "properties": { "deviceId": { "description": "Unique third-party device ID.", "type": "string" }, "agentId": { "description": "Project ID for your smart home Action.", "type": "string" } } }, "AgentDeviceId": { "type": "object", "properties": { "id": { "type": "string", "description": "Third-party device ID." } }, "description": "Third-party device ID for one device.", "id": "AgentDeviceId" }, "DeviceNames": { "properties": { "defaultNames": { "description": "List of names provided by the manufacturer rather than the user, such as serial numbers, SKUs, etc.", "type": "array", "items": { "type": "string" } }, "name": { "type": "string", "description": "Primary name of the device, generally provided by the user." }, "nicknames": { "items": { "type": "string" }, "type": "array", "description": "Additional names provided by the user for the device." } }, "description": "Identifiers used to describe the device.", "id": "DeviceNames", "type": "object" }, "SyncResponse": { "properties": { "payload": { "$ref": "SyncResponsePayload", "description": "Devices associated with the third-party user." }, "requestId": { "type": "string", "description": "Request ID used for debugging. Copied from the request." } }, "type": "object", "id": "SyncResponse", "description": "Response type for the [`Sync`](#google.home.graph.v1.HomeGraphApiService.Sync) call. This should follow the same format as the Google smart home `action.devices.SYNC` [response](https://developers.google.com/assistant/smarthome/reference/intent/sync). # Example ```json { \"requestId\": \"ff36a3cc-ec34-11e6-b1a0-64510650abcf\", \"payload\": { \"agentUserId\": \"1836.15267389\", \"devices\": [{ \"id\": \"123\", \"type\": \"action.devices.types.OUTLET\", \"traits\": [ \"action.devices.traits.OnOff\" ], \"name\": { \"defaultNames\": [\"My Outlet 1234\"], \"name\": \"Night light\", \"nicknames\": [\"wall plug\"] }, \"willReportState\": false, \"deviceInfo\": { \"manufacturer\": \"lights-out-inc\", \"model\": \"hs1234\", \"hwVersion\": \"3.2\", \"swVersion\": \"11.4\" }, \"customData\": { \"fooValue\": 74, \"barValue\": true, \"bazValue\": \"foo\" } }] } } ```" } }, "mtlsRootUrl": "https://homegraph.mtls.googleapis.com/", "parameters": { "prettyPrint": { "type": "boolean", "location": "query", "default": "true", "description": "Returns response with indentations and line breaks." }, "$.xgafv": { "description": "V1 error format.", "location": "query", "enum": [ "1", "2" ], "enumDescriptions": [ "v1 error format", "v2 error format" ], "type": "string" }, "alt": { "enumDescriptions": [ "Responses with Content-Type of application/json", "Media download with context-dependent Content-Type", "Responses with Content-Type of application/x-protobuf" ], "description": "Data format for response.", "enum": [ "json", "media", "proto" ], "default": "json", "type": "string", "location": "query" }, "access_token": { "description": "OAuth access token.", "location": "query", "type": "string" }, "quotaUser": { "type": "string", "description": "Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.", "location": "query" }, "key": { "type": "string", "description": "API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.", "location": "query" }, "uploadType": { "description": "Legacy upload protocol for media (e.g. \"media\", \"multipart\").", "location": "query", "type": "string" }, "oauth_token": { "type": "string", "location": "query", "description": "OAuth 2.0 token for the current user." }, "upload_protocol": { "description": "Upload protocol for media (e.g. \"raw\", \"multipart\").", "location": "query", "type": "string" }, "callback": { "type": "string", "location": "query", "description": "JSONP" }, "fields": { "description": "Selector specifying which fields to include in a partial response.", "location": "query", "type": "string" } }, "fullyEncodeReservedExpansion": true, "ownerName": "Google", "title": "HomeGraph API", "canonicalName": "Home Graph Service", "version": "v1", "documentationLink": "https://developers.google.com/actions/smarthome/create-app#request-sync", "name": "homegraph", "kind": "discovery#restDescription", "batchPath": "batch", "revision": "20220629" }
]===]))