local decode = require("cjson").new().decode
return assert(decode([===[
{ "id": "cloudtrace:v2", "documentationLink": "https://cloud.google.com/trace", "icons": { "x16": "http://www.google.com/images/icons/product/search-16.gif", "x32": "http://www.google.com/images/icons/product/search-32.gif" }, "ownerName": "Google", "version": "v2", "auth": { "oauth2": { "scopes": { "https://www.googleapis.com/auth/trace.append": { "description": "Write Trace data for a project or application" }, "https://www.googleapis.com/auth/cloud-platform": { "description": "See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account." } } } }, "batchPath": "batch", "ownerDomain": "google.com", "servicePath": "", "revision": "20220622", "kind": "discovery#restDescription", "protocol": "rest", "fullyEncodeReservedExpansion": true, "description": "Sends application trace data to Cloud Trace for viewing. Trace data is collected for all App Engine applications by default. Trace data from other applications can be provided using this API. This library is used to interact with the Cloud Trace API directly. If you are looking to instrument your application for Cloud Trace, we recommend using OpenTelemetry. ", "discoveryVersion": "v1", "baseUrl": "https://cloudtrace.googleapis.com/", "version_module": true, "mtlsRootUrl": "https://cloudtrace.mtls.googleapis.com/", "title": "Cloud Trace API", "name": "cloudtrace", "parameters": { "$.xgafv": { "type": "string", "enum": [ "1", "2" ], "enumDescriptions": [ "v1 error format", "v2 error format" ], "location": "query", "description": "V1 error format." }, "callback": { "location": "query", "description": "JSONP", "type": "string" }, "access_token": { "location": "query", "description": "OAuth access token.", "type": "string" }, "prettyPrint": { "type": "boolean", "location": "query", "default": "true", "description": "Returns response with indentations and line breaks." }, "key": { "description": "API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.", "type": "string", "location": "query" }, "fields": { "description": "Selector specifying which fields to include in a partial response.", "type": "string", "location": "query" }, "uploadType": { "type": "string", "description": "Legacy upload protocol for media (e.g. \"media\", \"multipart\").", "location": "query" }, "quotaUser": { "location": "query", "type": "string", "description": "Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters." }, "alt": { "enum": [ "json", "media", "proto" ], "description": "Data format for response.", "default": "json", "type": "string", "enumDescriptions": [ "Responses with Content-Type of application/json", "Media download with context-dependent Content-Type", "Responses with Content-Type of application/x-protobuf" ], "location": "query" }, "upload_protocol": { "type": "string", "location": "query", "description": "Upload protocol for media (e.g. \"raw\", \"multipart\")." }, "oauth_token": { "location": "query", "description": "OAuth 2.0 token for the current user.", "type": "string" } }, "resources": { "projects": { "resources": { "traces": { "resources": { "spans": { "methods": { "createSpan": { "scopes": [ "https://www.googleapis.com/auth/cloud-platform", "https://www.googleapis.com/auth/trace.append" ], "id": "cloudtrace.projects.traces.spans.createSpan", "parameterOrder": [ "name" ], "path": "v2/{+name}", "httpMethod": "POST", "description": "Creates a new span.", "response": { "$ref": "Span" }, "parameters": { "name": { "description": "Required. The resource name of the span in the following format: LICENSE Makefile README.md gsa_key.json lua-resty-gcp-dev-1.rockspec lua-resty-gcp-scm-1.rockspec.original lua-resty-gcp-scm-1.rockspec.template spec src upload.sh `projects/[PROJECT_ID]/traces/[TRACE_ID]/spans/[SPAN_ID]` `[TRACE_ID]` is a unique identifier for a trace within a project; it is a 32-character hexadecimal encoding of a 16-byte array. It should not be zero. `[SPAN_ID]` is a unique identifier for a span within a trace; it is a 16-character hexadecimal encoding of an 8-byte array. It should not be zero. .", "required": true, "location": "path", "pattern": "^projects/[^/]+/traces/[^/]+/spans/[^/]+$", "type": "string" } }, "request": { "$ref": "Span" }, "flatPath": "v2/projects/{projectsId}/traces/{tracesId}/spans/{spansId}" } } } }, "methods": { "batchWrite": { "description": "Batch writes new spans to new or existing traces. You cannot update existing spans.", "flatPath": "v2/projects/{projectsId}/traces:batchWrite", "parameters": { "name": { "required": true, "location": "path", "type": "string", "pattern": "^projects/[^/]+$", "description": "Required. The name of the project where the spans belong. The format is `projects/[PROJECT_ID]`." } }, "request": { "$ref": "BatchWriteSpansRequest" }, "id": "cloudtrace.projects.traces.batchWrite", "scopes": [ "https://www.googleapis.com/auth/cloud-platform", "https://www.googleapis.com/auth/trace.append" ], "parameterOrder": [ "name" ], "path": "v2/{+name}/traces:batchWrite", "httpMethod": "POST", "response": { "$ref": "Empty" } } } } } } }, "canonicalName": "Cloud Trace", "rootUrl": "https://cloudtrace.googleapis.com/", "schemas": { "StackFrame": { "description": "Represents a single stack frame in a stack trace.", "properties": { "columnNumber": { "description": "The column number where the function call appears, if available. This is important in JavaScript because of its anonymous functions.", "type": "string", "format": "int64" }, "fileName": { "description": "The name of the source file where the function call appears (up to 256 bytes).", "$ref": "TruncatableString" }, "loadModule": { "$ref": "Module", "description": "The binary module from where the code was loaded." }, "functionName": { "description": "The fully-qualified name that uniquely identifies the function or method that is active in this frame (up to 1024 bytes).", "$ref": "TruncatableString" }, "lineNumber": { "format": "int64", "type": "string", "description": "The line number in `file_name` where the function call appears." }, "sourceVersion": { "$ref": "TruncatableString", "description": "The version of the deployed source code (up to 128 bytes)." }, "originalFunctionName": { "$ref": "TruncatableString", "description": "An un-mangled function name, if `function_name` is [mangled](http://www.avabodh.com/cxxin/namemangling.html). The name can be fully-qualified (up to 1024 bytes)." } }, "type": "object", "id": "StackFrame" }, "AttributeValue": { "description": "The allowed types for `[VALUE]` in a `[KEY]:[VALUE]` attribute.", "type": "object", "properties": { "boolValue": { "description": "A Boolean value represented by `true` or `false`.", "type": "boolean" }, "stringValue": { "$ref": "TruncatableString", "description": "A string up to 256 bytes long." }, "intValue": { "format": "int64", "description": "A 64-bit signed integer.", "type": "string" } }, "id": "AttributeValue" }, "BatchWriteSpansRequest": { "description": "The request message for the `BatchWriteSpans` method.", "id": "BatchWriteSpansRequest", "properties": { "spans": { "items": { "$ref": "Span" }, "description": "Required. A list of new spans. The span names must not match existing spans, otherwise the results are undefined.", "type": "array" } }, "type": "object" }, "TimeEvents": { "type": "object", "id": "TimeEvents", "description": "A collection of `TimeEvent`s. A `TimeEvent` is a time-stamped annotation on the span, consisting of either user-supplied key:value pairs, or details of a message sent/received between Spans.", "properties": { "droppedAnnotationsCount": { "description": "The number of dropped annotations in all the included time events. If the value is 0, then no annotations were dropped.", "format": "int32", "type": "integer" }, "timeEvent": { "description": "A collection of `TimeEvent`s.", "items": { "$ref": "TimeEvent" }, "type": "array" }, "droppedMessageEventsCount": { "type": "integer", "description": "The number of dropped message events in all the included time events. If the value is 0, then no message events were dropped.", "format": "int32" } } }, "TruncatableString": { "properties": { "value": { "type": "string", "description": "The shortened string. For example, if the original string is 500 bytes long and the limit of the string is 128 bytes, then `value` contains the first 128 bytes of the 500-byte string. Truncation always happens on a UTF8 character boundary. If there are multi-byte characters in the string, then the length of the shortened string might be less than the size limit." }, "truncatedByteCount": { "format": "int32", "type": "integer", "description": "The number of bytes removed from the original string. If this value is 0, then the string was not shortened." } }, "id": "TruncatableString", "description": "Represents a string that might be shortened to a specified length.", "type": "object" }, "TimeEvent": { "properties": { "time": { "format": "google-datetime", "description": "The timestamp indicating the time the event occurred.", "type": "string" }, "messageEvent": { "$ref": "MessageEvent", "description": "An event describing a message sent/received between Spans." }, "annotation": { "description": "Text annotation with a set of attributes.", "$ref": "Annotation" } }, "id": "TimeEvent", "type": "object", "description": "A time-stamped annotation or message event in the Span." }, "Link": { "properties": { "spanId": { "description": "The `[SPAN_ID]` for a span within a trace.", "type": "string" }, "attributes": { "description": "A set of attributes on the link. Up to 32 attributes can be specified per link.", "$ref": "Attributes" }, "traceId": { "description": "The `[TRACE_ID]` for a trace within a project.", "type": "string" }, "type": { "description": "The relationship of the current span relative to the linked span.", "enumDescriptions": [ "The relationship of the two spans is unknown.", "The linked span is a child of the current span.", "The linked span is a parent of the current span." ], "enum": [ "TYPE_UNSPECIFIED", "CHILD_LINKED_SPAN", "PARENT_LINKED_SPAN" ], "type": "string" } }, "id": "Link", "type": "object", "description": "A pointer from the current span to another span in the same trace or in a different trace. For example, this can be used in batching operations, where a single batch handler processes multiple requests from different traces or when the handler receives a request from a different project." }, "StackTrace": { "type": "object", "id": "StackTrace", "description": "A call stack appearing in a trace.", "properties": { "stackFrames": { "$ref": "StackFrames", "description": "Stack frames in this stack trace. A maximum of 128 frames are allowed." }, "stackTraceHashId": { "type": "string", "description": "The hash ID is used to conserve network bandwidth for duplicate stack traces within a single trace. Often multiple spans will have identical stack traces. The first occurrence of a stack trace should contain both the `stackFrame` content and a value in `stackTraceHashId`. Subsequent spans within the same request can refer to that stack trace by only setting `stackTraceHashId`.", "format": "int64" } } }, "Attributes": { "type": "object", "description": "A set of attributes as key-value pairs.", "id": "Attributes", "properties": { "attributeMap": { "type": "object", "description": "A set of attributes. Each attribute's key can be up to 128 bytes long. The value can be a string up to 256 bytes, a signed 64-bit integer, or the boolean values `true` or `false`. For example: \"/instance_id\": { \"string_value\": { \"value\": \"my-instance\" } } \"/http/request_bytes\": { \"int_value\": 300 } \"abc.com/myattribute\": { \"bool_value\": false }", "additionalProperties": { "$ref": "AttributeValue" } }, "droppedAttributesCount": { "description": "The number of attributes that were discarded. Attributes can be discarded because their keys are too long or because there are too many attributes. If this value is 0 then all attributes are valid.", "format": "int32", "type": "integer" } } }, "Links": { "properties": { "link": { "description": "A collection of links.", "items": { "$ref": "Link" }, "type": "array" }, "droppedLinksCount": { "description": "The number of dropped links after the maximum size was enforced. If this value is 0, then no links were dropped.", "format": "int32", "type": "integer" } }, "type": "object", "id": "Links", "description": "A collection of links, which are references from this span to a span in the same or different trace." }, "Span": { "type": "object", "properties": { "name": { "description": "Required. The resource name of the span in the following format: LICENSE Makefile README.md gsa_key.json lua-resty-gcp-dev-1.rockspec lua-resty-gcp-scm-1.rockspec.original lua-resty-gcp-scm-1.rockspec.template spec src upload.sh `projects/[PROJECT_ID]/traces/[TRACE_ID]/spans/[SPAN_ID]` `[TRACE_ID]` is a unique identifier for a trace within a project; it is a 32-character hexadecimal encoding of a 16-byte array. It should not be zero. `[SPAN_ID]` is a unique identifier for a span within a trace; it is a 16-character hexadecimal encoding of an 8-byte array. It should not be zero. .", "type": "string" }, "timeEvents": { "description": "A set of time events. You can have up to 32 annotations and 128 message events per span.", "$ref": "TimeEvents" }, "spanId": { "description": "Required. The `[SPAN_ID]` portion of the span's resource name.", "type": "string" }, "displayName": { "$ref": "TruncatableString", "description": "Required. A description of the span's operation (up to 128 bytes). Cloud Trace displays the description in the Cloud console. For example, the display name can be a qualified method name or a file name and a line number where the operation is called. A best practice is to use the same display name within an application and at the same call point. This makes it easier to correlate spans in different traces." }, "childSpanCount": { "format": "int32", "type": "integer", "description": "Optional. The number of child spans that were generated while this span was active. If set, allows implementation to detect missing child spans." }, "endTime": { "format": "google-datetime", "description": "Required. The end time of the span. On the client side, this is the time kept by the local machine where the span execution ends. On the server side, this is the time when the server application handler stops running.", "type": "string" }, "attributes": { "$ref": "Attributes", "description": "A set of attributes on the span. You can have up to 32 attributes per span." }, "parentSpanId": { "description": "The `[SPAN_ID]` of this span's parent span. If this is a root span, then this field must be empty.", "type": "string" }, "sameProcessAsParentSpan": { "description": "Optional. Set this parameter to indicate whether this span is in the same process as its parent. If you do not set this parameter, Trace is unable to take advantage of this helpful information.", "type": "boolean" }, "stackTrace": { "$ref": "StackTrace", "description": "Stack trace captured at the start of the span." }, "status": { "$ref": "Status", "description": "Optional. The final status for this span." }, "startTime": { "description": "Required. The start time of the span. On the client side, this is the time kept by the local machine where the span execution starts. On the server side, this is the time when the server's application handler starts running.", "type": "string", "format": "google-datetime" }, "spanKind": { "enumDescriptions": [ "Unspecified. Do NOT use as default. Implementations MAY assume SpanKind.INTERNAL to be default.", "Indicates that the span is used internally. Default value.", "Indicates that the span covers server-side handling of an RPC or other remote network request.", "Indicates that the span covers the client-side wrapper around an RPC or other remote request.", "Indicates that the span describes producer sending a message to a broker. Unlike client and server, there is no direct critical path latency relationship between producer and consumer spans (e.g. publishing a message to a pubsub service).", "Indicates that the span describes consumer receiving a message from a broker. Unlike client and server, there is no direct critical path latency relationship between producer and consumer spans (e.g. receiving a message from a pubsub service subscription)." ], "description": "Optional. Distinguishes between spans generated in a particular context. For example, two spans with the same name may be distinguished using `CLIENT` (caller) and `SERVER` (callee) to identify an RPC call.", "type": "string", "enum": [ "SPAN_KIND_UNSPECIFIED", "INTERNAL", "SERVER", "CLIENT", "PRODUCER", "CONSUMER" ] }, "links": { "description": "Links associated with the span. You can have up to 128 links per Span.", "$ref": "Links" } }, "description": "A span represents a single operation within a trace. Spans can be nested to form a trace tree. Often, a trace contains a root span that describes the end-to-end latency, and one or more subspans for its sub-operations. A trace can also contain multiple root spans, or none at all. Spans do not need to be contiguous—there might be gaps or overlaps between spans in a trace.", "id": "Span" }, "Annotation": { "properties": { "attributes": { "description": "A set of attributes on the annotation. You can have up to 4 attributes per Annotation.", "$ref": "Attributes" }, "description": { "description": "A user-supplied message describing the event. The maximum length for the description is 256 bytes.", "$ref": "TruncatableString" } }, "type": "object", "description": "Text annotation with a set of attributes.", "id": "Annotation" }, "StackFrames": { "type": "object", "id": "StackFrames", "properties": { "frame": { "type": "array", "description": "Stack frames in this call stack.", "items": { "$ref": "StackFrame" } }, "droppedFramesCount": { "format": "int32", "description": "The number of stack frames that were dropped because there were too many stack frames. If this value is 0, then no stack frames were dropped.", "type": "integer" } }, "description": "A collection of stack frames, which can be truncated." }, "MessageEvent": { "properties": { "type": { "enum": [ "TYPE_UNSPECIFIED", "SENT", "RECEIVED" ], "type": "string", "description": "Type of MessageEvent. Indicates whether the message was sent or received.", "enumDescriptions": [ "Unknown event type.", "Indicates a sent message.", "Indicates a received message." ] }, "compressedSizeBytes": { "format": "int64", "type": "string", "description": "The number of compressed bytes sent or received. If missing, the compressed size is assumed to be the same size as the uncompressed size." }, "uncompressedSizeBytes": { "description": "The number of uncompressed bytes sent or received.", "type": "string", "format": "int64" }, "id": { "type": "string", "description": "An identifier for the MessageEvent's message that can be used to match `SENT` and `RECEIVED` MessageEvents.", "format": "int64" } }, "type": "object", "description": "An event describing a message sent/received between Spans.", "id": "MessageEvent" }, "Module": { "type": "object", "properties": { "buildId": { "description": "A unique identifier for the module, usually a hash of its contents (up to 128 bytes).", "$ref": "TruncatableString" }, "module": { "$ref": "TruncatableString", "description": "For example: main binary, kernel modules, and dynamic libraries such as libc.so, sharedlib.so (up to 256 bytes)." } }, "description": "Binary module.", "id": "Module" }, "Empty": { "id": "Empty", "type": "object", "description": "A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }", "properties": {} }, "Status": { "id": "Status", "type": "object", "description": "The `Status` type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by [gRPC](https://github.com/grpc). Each `Status` message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the [API Design Guide](https://cloud.google.com/apis/design/errors).", "properties": { "details": { "type": "array", "description": "A list of messages that carry the error details. There is a common set of message types for APIs to use.", "items": { "type": "object", "additionalProperties": { "type": "any", "description": "Properties of the object. Contains field @type with type URL." } } }, "message": { "description": "A developer-facing error message, which should be in English. Any user-facing error message should be localized and sent in the google.rpc.Status.details field, or localized by the client.", "type": "string" }, "code": { "format": "int32", "description": "The status code, which should be an enum value of google.rpc.Code.", "type": "integer" } } } }, "basePath": "" }
]===]))