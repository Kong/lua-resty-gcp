return {
  auth = {
    oauth2 = {
      scopes = {
        ["https://www.googleapis.com/auth/cloud-platform"] = {
          description = "See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account.",
        },
      },
    },
  },
  basePath = "",
  baseUrl = "https://workloadmanager.googleapis.com/",
  batchPath = "batch",
  canonicalName = "Workload Manager",
  description = "",
  discoveryVersion = "v1",
  documentationLink = "https://cloud.google.com/workload-manager/docs",
  fullyEncodeReservedExpansion = true,
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "workloadmanager:v1",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://workloadmanager.mtls.googleapis.com/",
  name = "workloadmanager",
  ownerDomain = "google.com",
  ownerName = "Google",
  parameters = {
    ["$.xgafv"] = {
      description = "V1 error format.",
      enum = {
        "1",
        "2",
      },
      enumDescriptions = {
        "v1 error format",
        "v2 error format",
      },
      location = "query",
      type = "string",
    },
    access_token = {
      description = "OAuth access token.",
      location = "query",
      type = "string",
    },
    alt = {
      default = "json",
      description = "Data format for response.",
      enum = {
        "json",
        "media",
        "proto",
      },
      enumDescriptions = {
        "Responses with Content-Type of application/json",
        "Media download with context-dependent Content-Type",
        "Responses with Content-Type of application/x-protobuf",
      },
      location = "query",
      type = "string",
    },
    callback = {
      description = "JSONP",
      location = "query",
      type = "string",
    },
    fields = {
      description = "Selector specifying which fields to include in a partial response.",
      location = "query",
      type = "string",
    },
    key = {
      description = "API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.",
      location = "query",
      type = "string",
    },
    oauth_token = {
      description = "OAuth 2.0 token for the current user.",
      location = "query",
      type = "string",
    },
    prettyPrint = {
      default = "true",
      description = "Returns response with indentations and line breaks.",
      location = "query",
      type = "boolean",
    },
    quotaUser = {
      description = "Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.",
      location = "query",
      type = "string",
    },
    uploadType = {
      description = "Legacy upload protocol for media (e.g. \"media\", \"multipart\").",
      location = "query",
      type = "string",
    },
    upload_protocol = {
      description = "Upload protocol for media (e.g. \"raw\", \"multipart\").",
      location = "query",
      type = "string",
    },
  },
  protocol = "rest",
  resources = {
    projects = {
      resources = {
        locations = {
          methods = {
            get = {
              description = "Gets information about a location.",
              flatPath = "v1/projects/{projectsId}/locations/{locationsId}",
              httpMethod = "GET",
              id = "workloadmanager.projects.locations.get",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Resource name for the location.",
                  location = "path",
                  pattern = "^projects/[^/]+/locations/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}",
              response = {
                ["$ref"] = "Location",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            list = {
              description = "Lists information about the supported locations for this service.",
              flatPath = "v1/projects/{projectsId}/locations",
              httpMethod = "GET",
              id = "workloadmanager.projects.locations.list",
              parameterOrder = {
                "name",
              },
              parameters = {
                filter = {
                  description = "A filter to narrow down results to a preferred subset. The filtering language accepts strings like `\"displayName=tokyo\"`, and is documented in more detail in [AIP-160](https://google.aip.dev/160).",
                  location = "query",
                  type = "string",
                },
                name = {
                  description = "The resource that owns the locations collection, if applicable.",
                  location = "path",
                  pattern = "^projects/[^/]+$",
                  required = true,
                  type = "string",
                },
                pageSize = {
                  description = "The maximum number of results to return. If not set, the service selects a default.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "A page token received from the `next_page_token` field in the response. Send that page token to receive the subsequent page.",
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/{+name}/locations",
              response = {
                ["$ref"] = "ListLocationsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
          },
          resources = {
            evaluations = {
              methods = {
                create = {
                  description = "Creates a new Evaluation in a given project and location.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/evaluations",
                  httpMethod = "POST",
                  id = "workloadmanager.projects.locations.evaluations.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    evaluationId = {
                      description = "Required. Id of the requesting object If auto-generating Id server-side, remove this field and evaluation_id from the method_signature of Create RPC",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The resource name of the evaluation location using the form: `projects/{project_id}/locations/{location_id}` where `location_id` refers to a GCP region.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    requestId = {
                      description = "Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and t he request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/evaluations",
                  request = {
                    ["$ref"] = "Evaluation",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                get = {
                  description = "Gets details of a single Evaluation.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/evaluations/{evaluationsId}",
                  httpMethod = "GET",
                  id = "workloadmanager.projects.locations.evaluations.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Name of the resource",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/evaluations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "Evaluation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                list = {
                  description = "Lists Evaluations in a given project and location.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/evaluations",
                  httpMethod = "GET",
                  id = "workloadmanager.projects.locations.evaluations.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    filter = {
                      description = "Filtering results",
                      location = "query",
                      type = "string",
                    },
                    orderBy = {
                      description = "Hint for how to order the results",
                      location = "query",
                      type = "string",
                    },
                    pageSize = {
                      description = "Requested page size. Server may return fewer items than requested. If unspecified, server will pick an appropriate default.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "A token identifying a page of results the server should return.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. Parent value for ListEvaluationsRequest",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/evaluations",
                  response = {
                    ["$ref"] = "ListEvaluationsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
              },
            },
            insights = {
              methods = {
                writeInsight = {
                  description = "Write the data insights to workload manager data warehouse.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/insights:writeInsight",
                  httpMethod = "POST",
                  id = "workloadmanager.projects.locations.insights.writeInsight",
                  parameterOrder = {
                    "location",
                  },
                  parameters = {
                    location = {
                      description = "Required. The GCP location. The format is: projects/{project}/locations/{location}.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+location}/insights:writeInsight",
                  request = {
                    ["$ref"] = "WriteInsightRequest",
                  },
                  response = {
                    ["$ref"] = "WriteInsightResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
              },
            },
            operations = {
              methods = {
                cancel = {
                  description = "Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of 1, corresponding to `Code.CANCELLED`.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/operations/{operationsId}:cancel",
                  httpMethod = "POST",
                  id = "workloadmanager.projects.locations.operations.cancel",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "The name of the operation resource to be cancelled.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/operations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}:cancel",
                  request = {
                    ["$ref"] = "CancelOperationRequest",
                  },
                  response = {
                    ["$ref"] = "Empty",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                delete = {
                  description = "Deletes a long-running operation. This method indicates that the client is no longer interested in the operation result. It does not cancel the operation. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/operations/{operationsId}",
                  httpMethod = "DELETE",
                  id = "workloadmanager.projects.locations.operations.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "The name of the operation resource to be deleted.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/operations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "Empty",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                get = {
                  description = "Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/operations/{operationsId}",
                  httpMethod = "GET",
                  id = "workloadmanager.projects.locations.operations.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "The name of the operation resource.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/operations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                list = {
                  description = "Lists operations that match the specified filter in the request. If the server doesn't support this method, it returns `UNIMPLEMENTED`. NOTE: the `name` binding allows API services to override the binding to use different resource name schemes, such as `users/*/operations`. To override the binding, API services can add a binding such as `\"/v1/{name=users/*}/operations\"` to their service configuration. For backwards compatibility, the default name includes the operations collection id, however overriding users must ensure the name binding is the parent resource, without the operations collection id.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/operations",
                  httpMethod = "GET",
                  id = "workloadmanager.projects.locations.operations.list",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    filter = {
                      description = "The standard list filter.",
                      location = "query",
                      type = "string",
                    },
                    name = {
                      description = "The name of the operation's parent resource.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    pageSize = {
                      description = "The standard list page size.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "The standard list page token.",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+name}/operations",
                  response = {
                    ["$ref"] = "ListOperationsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
              },
            },
          },
        },
      },
    },
  },
  revision = "20230105",
  rootUrl = "https://workloadmanager.googleapis.com/",
  schemas = {
    CancelOperationRequest = {
      description = "The request message for Operations.CancelOperation.",
      id = "CancelOperationRequest",
      properties = {},
      type = "object",
    },
    Empty = {
      description = "A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }",
      id = "Empty",
      properties = {},
      type = "object",
    },
    Evaluation = {
      description = "Message describing Evaluation object",
      id = "Evaluation",
      properties = {
        createTime = {
          description = "Output only. [Output only] Create time stamp",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        description = {
          description = "Description of the Evaluation",
          type = "string",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "Labels as key value pairs",
          type = "object",
        },
        name = {
          description = "name of resource names have the form 'projects/{project_id}/locations/{location_id}/evaluations/{evaluation_id}'",
          type = "string",
        },
        resourceFilter = {
          ["$ref"] = "ResourceFilter",
          description = "annotations as key value pairs",
        },
        resourceStatus = {
          ["$ref"] = "ResourceStatus",
          description = "Output only. [Output only] The updated rule ids if exist.",
          readOnly = true,
        },
        ruleNames = {
          description = "the name of the rule",
          items = {
            type = "string",
          },
          type = "array",
        },
        ruleVersions = {
          description = "Output only. [Output only] The updated rule ids if exist.",
          items = {
            type = "string",
          },
          readOnly = true,
          type = "array",
        },
        updateTime = {
          description = "Output only. [Output only] Update time stamp",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    GceInstanceFilter = {
      description = "Message describing compute engine instance filter",
      id = "GceInstanceFilter",
      properties = {
        serviceAccounts = {
          description = "Service account of compute engine",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    Insight = {
      description = "A presentation of host resource usage where the workload runs.",
      id = "Insight",
      properties = {
        sapDiscovery = {
          ["$ref"] = "SapDiscovery",
          description = "The insights data for sap system discovery. This is a copy of SAP System proto and should get updated whenever that one changes.",
        },
        sapValidation = {
          ["$ref"] = "SapValidation",
          description = "The insights data for the sap workload validation.",
        },
        sentTime = {
          description = "Output only. [Output only] Create time stamp",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    ListEvaluationsResponse = {
      description = "Message for response to listing Evaluations",
      id = "ListEvaluationsResponse",
      properties = {
        evaluations = {
          description = "The list of Evaluation",
          items = {
            ["$ref"] = "Evaluation",
          },
          type = "array",
        },
        nextPageToken = {
          description = "A token identifying a page of results the server should return.",
          type = "string",
        },
        unreachable = {
          description = "Locations that could not be reached.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ListLocationsResponse = {
      description = "The response message for Locations.ListLocations.",
      id = "ListLocationsResponse",
      properties = {
        locations = {
          description = "A list of locations that matches the specified filter in the request.",
          items = {
            ["$ref"] = "Location",
          },
          type = "array",
        },
        nextPageToken = {
          description = "The standard List next-page token.",
          type = "string",
        },
      },
      type = "object",
    },
    ListOperationsResponse = {
      description = "The response message for Operations.ListOperations.",
      id = "ListOperationsResponse",
      properties = {
        nextPageToken = {
          description = "The standard List next-page token.",
          type = "string",
        },
        operations = {
          description = "A list of operations that matches the specified filter in the request.",
          items = {
            ["$ref"] = "Operation",
          },
          type = "array",
        },
      },
      type = "object",
    },
    Location = {
      description = "A resource that represents Google Cloud Platform location.",
      id = "Location",
      properties = {
        displayName = {
          description = "The friendly name for this location, typically a nearby city name. For example, \"Tokyo\".",
          type = "string",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "Cross-service attributes for the location. For example {\"cloud.googleapis.com/region\": \"us-east1\"}",
          type = "object",
        },
        locationId = {
          description = "The canonical id for this location. For example: `\"us-east1\"`.",
          type = "string",
        },
        metadata = {
          additionalProperties = {
            description = "Properties of the object. Contains field @type with type URL.",
            type = "any",
          },
          description = "Service-specific metadata. For example the available capacity at the given location.",
          type = "object",
        },
        name = {
          description = "Resource name for the location, which may vary between implementations. For example: `\"projects/example-project/locations/us-east1\"`",
          type = "string",
        },
      },
      type = "object",
    },
    Operation = {
      description = "This resource represents a long-running operation that is the result of a network API call.",
      id = "Operation",
      properties = {
        done = {
          description = "If the value is `false`, it means the operation is still in progress. If `true`, the operation is completed, and either `error` or `response` is available.",
          type = "boolean",
        },
        error = {
          ["$ref"] = "Status",
          description = "The error result of the operation in case of failure or cancellation.",
        },
        metadata = {
          additionalProperties = {
            description = "Properties of the object. Contains field @type with type URL.",
            type = "any",
          },
          description = "Service-specific metadata associated with the operation. It typically contains progress information and common metadata such as create time. Some services might not provide such metadata. Any method that returns a long-running operation should document the metadata type, if any.",
          type = "object",
        },
        name = {
          description = "The server-assigned name, which is only unique within the same service that originally returns it. If you use the default HTTP mapping, the `name` should be a resource name ending with `operations/{unique_id}`.",
          type = "string",
        },
        response = {
          additionalProperties = {
            description = "Properties of the object. Contains field @type with type URL.",
            type = "any",
          },
          description = "The normal response of the operation in case of success. If the original method returns no data on success, such as `Delete`, the response is `google.protobuf.Empty`. If the original method is standard `Get`/`Create`/`Update`, the response should be the resource. For other methods, the response should have the type `XxxResponse`, where `Xxx` is the original method name. For example, if the original method name is `TakeSnapshot()`, the inferred response type is `TakeSnapshotResponse`.",
          type = "object",
        },
      },
      type = "object",
    },
    OperationMetadata = {
      description = "Represents the metadata of the long-running operation.",
      id = "OperationMetadata",
      properties = {
        apiVersion = {
          description = "Output only. API version used to start the operation.",
          readOnly = true,
          type = "string",
        },
        createTime = {
          description = "Output only. The time the operation was created.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        endTime = {
          description = "Output only. The time the operation finished running.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        requestedCancellation = {
          description = "Output only. Identifies whether the user has requested cancellation of the operation. Operations that have been cancelled successfully have Operation.error value with a google.rpc.Status.code of 1, corresponding to `Code.CANCELLED`.",
          readOnly = true,
          type = "boolean",
        },
        statusMessage = {
          description = "Output only. Human-readable status of the operation, if any.",
          readOnly = true,
          type = "string",
        },
        target = {
          description = "Output only. Server-defined resource path for the target of the operation.",
          readOnly = true,
          type = "string",
        },
        verb = {
          description = "Output only. Name of the verb executed by the operation.",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    ResourceFilter = {
      description = "Message describing resource filters",
      id = "ResourceFilter",
      properties = {
        gceInstanceFilter = {
          ["$ref"] = "GceInstanceFilter",
          description = "Filter compute engine resource",
        },
        inclusionLabels = {
          additionalProperties = {
            type = "string",
          },
          description = "The label used for filter resource",
          type = "object",
        },
        resourceIdPatterns = {
          description = "The id pattern for filter resource",
          items = {
            type = "string",
          },
          type = "array",
        },
        scopes = {
          description = "The scopes of evaluation resource",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ResourceStatus = {
      description = "Message describing resource status",
      id = "ResourceStatus",
      properties = {
        rulesNewerVersions = {
          description = "the new version of rule id if exists",
          items = {
            type = "string",
          },
          type = "array",
        },
        state = {
          description = "State of the resource",
          enum = {
            "STATE_UNSPECIFIED",
            "CREATING",
            "ACTIVE",
            "DELETING",
          },
          enumDescriptions = {
            "The state has not been populated in this message.",
            "Resource has an active Create operation.",
            "Resource has no outstanding operations on it or has active Update operations.",
            "Resource has an active Delete operation.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    SapDiscovery = {
      description = "The schema of SAP system discovery data.",
      id = "SapDiscovery",
      properties = {
        applicationLayer = {
          ["$ref"] = "SapDiscoveryComponent",
          description = "An SAP system may run without an application layer.",
        },
        databaseLayer = {
          ["$ref"] = "SapDiscoveryComponent",
          description = "An SAP System must have a database.",
        },
        metadata = {
          ["$ref"] = "SapDiscoveryMetadata",
          description = "The metadata for SAP system discovery data.",
        },
        systemId = {
          description = "A combination of database SID, database instance URI and tenant DB name to make a unique identifier per-system.",
          type = "string",
        },
        updateTime = {
          description = "Unix timestamp this system has been updated last.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    SapDiscoveryComponent = {
      description = "Message describing the system component.",
      id = "SapDiscoveryComponent",
      properties = {
        applicationType = {
          description = "The component is a SAP application.",
          type = "string",
        },
        databaseType = {
          description = "The component is a SAP database.",
          type = "string",
        },
        hostProject = {
          description = "Pantheon Project in which the resources reside.",
          type = "string",
        },
        resources = {
          description = "The resources in a component.",
          items = {
            ["$ref"] = "SapDiscoveryResource",
          },
          type = "array",
        },
        sid = {
          description = "The sap identifier, used by the SAP software and helps differentiate systems for customers.",
          type = "string",
        },
      },
      type = "object",
    },
    SapDiscoveryMetadata = {
      description = "Message describing SAP discovery system metadata",
      id = "SapDiscoveryMetadata",
      properties = {
        customerRegion = {
          description = "Customer region string for customer's use. Does not represent GCP region.",
          type = "string",
        },
        definedSystem = {
          description = "Customer defined, something like \"E-commerce pre prod\"",
          type = "string",
        },
        environmentType = {
          description = "Should be \"prod\", \"QA\", \"dev\", \"staging\", etc.",
          type = "string",
        },
        sapProduct = {
          description = "This sap product name",
          type = "string",
        },
      },
      type = "object",
    },
    SapDiscoveryResource = {
      description = "Message describing a resource.",
      id = "SapDiscoveryResource",
      properties = {
        relatedResources = {
          description = "A list of resource URIs related to this resource.",
          items = {
            type = "string",
          },
          type = "array",
        },
        resourceKind = {
          description = "ComputeInstance, ComputeDisk, VPC, Bare Metal server, etc.",
          type = "string",
        },
        resourceType = {
          description = "The type of this resource.",
          enum = {
            "RESOURCE_TYPE_UNSPECIFIED",
            "COMPUTE",
            "STORAGE",
            "NETWORK",
          },
          enumDescriptions = {
            "Undefined resource type.",
            "This is a compute resource.",
            "This a storage resource.",
            "This is a network resource.",
          },
          type = "string",
        },
        resourceUri = {
          description = "URI of the resource, includes project, location, and name.",
          type = "string",
        },
        updateTime = {
          description = "Unix timestamp of when this resource last had its discovery data updated.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    SapValidation = {
      description = "A presentation of SAP workload insight. The schema of SAP workloads validation related data.",
      id = "SapValidation",
      properties = {
        validationDetails = {
          description = "A list of SAP validation metrics data.",
          items = {
            ["$ref"] = "SapValidationValidationDetail",
          },
          type = "array",
        },
      },
      type = "object",
    },
    SapValidationValidationDetail = {
      description = "Message describing the SAP validation metrics.",
      id = "SapValidationValidationDetail",
      properties = {
        details = {
          additionalProperties = {
            type = "string",
          },
          description = "The pairs of metrics data: field name & field value.",
          type = "object",
        },
        sapValidationType = {
          description = "The SAP system that the validation data is from.",
          enum = {
            "SAP_VALIDATION_TYPE_UNSPECIFIED",
            "SYSTEM",
            "COROSYNC",
            "PACEMAKER",
            "HANA",
            "NETWEAVER",
          },
          enumDescriptions = {
            "Unspecified type.",
            "The SAP system named SYSTEM.",
            "The SAP system named COROSYNC.",
            "The SAP system named PACEMAKER.",
            "The SAP system named HANA.",
            "The SAP system named NETWEAVER.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    Status = {
      description = "The `Status` type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by [gRPC](https://github.com/grpc). Each `Status` message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the [API Design Guide](https://cloud.google.com/apis/design/errors).",
      id = "Status",
      properties = {
        code = {
          description = "The status code, which should be an enum value of google.rpc.Code.",
          format = "int32",
          type = "integer",
        },
        details = {
          description = "A list of messages that carry the error details. There is a common set of message types for APIs to use.",
          items = {
            additionalProperties = {
              description = "Properties of the object. Contains field @type with type URL.",
              type = "any",
            },
            type = "object",
          },
          type = "array",
        },
        message = {
          description = "A developer-facing error message, which should be in English. Any user-facing error message should be localized and sent in the google.rpc.Status.details field, or localized by the client.",
          type = "string",
        },
      },
      type = "object",
    },
    WriteInsightRequest = {
      description = "Request for sending the data insights.",
      id = "WriteInsightRequest",
      properties = {
        insight = {
          ["$ref"] = "Insight",
          description = "Required. The metrics data details.",
        },
        requestId = {
          description = "Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and t he request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).",
          type = "string",
        },
      },
      type = "object",
    },
    WriteInsightResponse = {
      description = "The response for write insights request.",
      id = "WriteInsightResponse",
      properties = {},
      type = "object",
    },
  },
  servicePath = "",
  title = "Workload Manager API",
  version = "v1",
  version_module = true,
}
