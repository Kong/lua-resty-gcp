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
  baseUrl = "https://connectors.googleapis.com/",
  batchPath = "batch",
  canonicalName = "Connectors",
  description = "Enables users to create and manage connections to Google Cloud services and third-party business applications using the Connectors interface.",
  discoveryVersion = "v1",
  documentationLink = "https://cloud.google.com/apigee/docs/api-platform/connectors/about-connectors",
  fullyEncodeReservedExpansion = true,
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "connectors:v1",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://connectors.mtls.googleapis.com/",
  name = "connectors",
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
              id = "connectors.projects.locations.get",
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
            getRuntimeConfig = {
              description = "Gets the runtimeConfig of a location. RuntimeConfig is a singleton resource for each location.",
              flatPath = "v1/projects/{projectsId}/locations/{locationsId}/runtimeConfig",
              httpMethod = "GET",
              id = "connectors.projects.locations.getRuntimeConfig",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. Resource name of the form: `projects/*/locations/*/runtimeConfig`",
                  location = "path",
                  pattern = "^projects/[^/]+/locations/[^/]+/runtimeConfig$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}",
              response = {
                ["$ref"] = "RuntimeConfig",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            list = {
              description = "Lists information about the supported locations for this service.",
              flatPath = "v1/projects/{projectsId}/locations",
              httpMethod = "GET",
              id = "connectors.projects.locations.list",
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
            connections = {
              methods = {
                create = {
                  description = "Creates a new Connection in a given project and location.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/connections",
                  httpMethod = "POST",
                  id = "connectors.projects.locations.connections.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    connectionId = {
                      description = "Required. Identifier to assign to the Connection. Must be unique within scope of the parent resource.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. Parent resource of the Connection, of the form: `projects/*/locations/*`",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/connections",
                  request = {
                    ["$ref"] = "Connection",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                delete = {
                  description = "Deletes a single Connection.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/connections/{connectionsId}",
                  httpMethod = "DELETE",
                  id = "connectors.projects.locations.connections.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Resource name of the form: `projects/*/locations/*/connections/*`",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/connections/[^/]+$",
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
                get = {
                  description = "Gets details of a single Connection.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/connections/{connectionsId}",
                  httpMethod = "GET",
                  id = "connectors.projects.locations.connections.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Resource name of the form: `projects/*/locations/*/connections/*`",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/connections/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    view = {
                      description = "Specifies which fields of the Connection are returned in the response. Defaults to `BASIC` view.",
                      enum = {
                        "CONNECTION_VIEW_UNSPECIFIED",
                        "BASIC",
                        "FULL",
                      },
                      enumDescriptions = {
                        "CONNECTION_UNSPECIFIED.",
                        "Do not include runtime required configs.",
                        "Include runtime required configs.",
                      },
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "Connection",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                getConnectionSchemaMetadata = {
                  description = "Gets schema metadata of a connection. SchemaMetadata is a singleton resource for each connection.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/connections/{connectionsId}/connectionSchemaMetadata",
                  httpMethod = "GET",
                  id = "connectors.projects.locations.connections.getConnectionSchemaMetadata",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Connection name Format: projects/{project}/locations/{location}/connections/{connection}/connectionSchemaMetadata",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/connections/[^/]+/connectionSchemaMetadata$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "ConnectionSchemaMetadata",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                getIamPolicy = {
                  description = "Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/connections/{connectionsId}:getIamPolicy",
                  httpMethod = "GET",
                  id = "connectors.projects.locations.connections.getIamPolicy",
                  parameterOrder = {
                    "resource",
                  },
                  parameters = {
                    ["options.requestedPolicyVersion"] = {
                      description = "Optional. The maximum policy version that will be used to format the policy. Valid values are 0, 1, and 3. Requests specifying an invalid value will be rejected. Requests for policies with any conditional role bindings must specify version 3. Policies with no conditional role bindings may specify any valid value or leave the field unset. The policy in the response might use the policy version that you specified, or it might use a lower policy version. For example, if you specify version 3, but the policy has no conditional role bindings, the response uses version 1. To learn which resources support conditions in their IAM policies, see the [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    resource = {
                      description = "REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/connections/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+resource}:getIamPolicy",
                  response = {
                    ["$ref"] = "Policy",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                list = {
                  description = "Lists Connections in a given project and location.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/connections",
                  httpMethod = "GET",
                  id = "connectors.projects.locations.connections.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    filter = {
                      description = "Filter.",
                      location = "query",
                      type = "string",
                    },
                    orderBy = {
                      description = "Order by parameters.",
                      location = "query",
                      type = "string",
                    },
                    pageSize = {
                      description = "Page size.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "Page token.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. Parent resource of the Connection, of the form: `projects/*/locations/*`",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    view = {
                      description = "Specifies which fields of the Connection are returned in the response. Defaults to `BASIC` view.",
                      enum = {
                        "CONNECTION_VIEW_UNSPECIFIED",
                        "BASIC",
                        "FULL",
                      },
                      enumDescriptions = {
                        "CONNECTION_UNSPECIFIED.",
                        "Do not include runtime required configs.",
                        "Include runtime required configs.",
                      },
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/connections",
                  response = {
                    ["$ref"] = "ListConnectionsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                patch = {
                  description = "Updates the parameters of a single Connection.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/connections/{connectionsId}",
                  httpMethod = "PATCH",
                  id = "connectors.projects.locations.connections.patch",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Output only. Resource name of the Connection. Format: projects/{project}/locations/{location}/connections/{connection}",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/connections/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    updateMask = {
                      description = "Required. You can modify only the fields listed below. To lock/unlock a connection: * `lock_config` To suspend/resume a connection: * `suspended` To update the connection details: * `description` * `labels` * `connector_version` * `config_variables` * `auth_config` * `destination_configs` * `node_config`",
                      format = "google-fieldmask",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  request = {
                    ["$ref"] = "Connection",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                setIamPolicy = {
                  description = "Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/connections/{connectionsId}:setIamPolicy",
                  httpMethod = "POST",
                  id = "connectors.projects.locations.connections.setIamPolicy",
                  parameterOrder = {
                    "resource",
                  },
                  parameters = {
                    resource = {
                      description = "REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/connections/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+resource}:setIamPolicy",
                  request = {
                    ["$ref"] = "SetIamPolicyRequest",
                  },
                  response = {
                    ["$ref"] = "Policy",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                testIamPermissions = {
                  description = "Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a `NOT_FOUND` error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may \"fail open\" without warning.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/connections/{connectionsId}:testIamPermissions",
                  httpMethod = "POST",
                  id = "connectors.projects.locations.connections.testIamPermissions",
                  parameterOrder = {
                    "resource",
                  },
                  parameters = {
                    resource = {
                      description = "REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/connections/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+resource}:testIamPermissions",
                  request = {
                    ["$ref"] = "TestIamPermissionsRequest",
                  },
                  response = {
                    ["$ref"] = "TestIamPermissionsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
              },
              resources = {
                connectionSchemaMetadata = {
                  methods = {
                    refresh = {
                      description = "Refresh runtime schema of a connection.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/connections/{connectionsId}/connectionSchemaMetadata:refresh",
                      httpMethod = "POST",
                      id = "connectors.projects.locations.connections.connectionSchemaMetadata.refresh",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. Resource name. Format: projects/{project}/locations/{location}/connections/{connection}/connectionSchemaMetadata",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/connections/[^/]+/connectionSchemaMetadata$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}:refresh",
                      request = {
                        ["$ref"] = "RefreshConnectionSchemaMetadataRequest",
                      },
                      response = {
                        ["$ref"] = "Operation",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                  },
                },
                runtimeActionSchemas = {
                  methods = {
                    list = {
                      description = "List schema of a runtime actions filtered by action name.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/connections/{connectionsId}/runtimeActionSchemas",
                      httpMethod = "GET",
                      id = "connectors.projects.locations.connections.runtimeActionSchemas.list",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        filter = {
                          description = "Required. Filter Format: action=\"{actionId}\" Only action field is supported with literal equality operator. Accepted filter example: action=\"CancelOrder\" Wildcards are not supported in the filter currently.",
                          location = "query",
                          type = "string",
                        },
                        pageSize = {
                          description = "Page size.",
                          format = "int32",
                          location = "query",
                          type = "integer",
                        },
                        pageToken = {
                          description = "Page token.",
                          location = "query",
                          type = "string",
                        },
                        parent = {
                          description = "Required. Parent resource of RuntimeActionSchema Format: projects/{project}/locations/{location}/connections/{connection}",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/connections/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/runtimeActionSchemas",
                      response = {
                        ["$ref"] = "ListRuntimeActionSchemasResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                  },
                },
                runtimeEntitySchemas = {
                  methods = {
                    list = {
                      description = "List schema of a runtime entities filtered by entity name.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/connections/{connectionsId}/runtimeEntitySchemas",
                      httpMethod = "GET",
                      id = "connectors.projects.locations.connections.runtimeEntitySchemas.list",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        filter = {
                          description = "Required. Filter Format: entity=\"{entityId}\" Only entity field is supported with literal equality operator. Accepted filter example: entity=\"Order\" Wildcards are not supported in the filter currently.",
                          location = "query",
                          type = "string",
                        },
                        pageSize = {
                          description = "Page size.",
                          format = "int32",
                          location = "query",
                          type = "integer",
                        },
                        pageToken = {
                          description = "Page token.",
                          location = "query",
                          type = "string",
                        },
                        parent = {
                          description = "Required. Parent resource of RuntimeEntitySchema Format: projects/{project}/locations/{location}/connections/{connection}",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/connections/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/runtimeEntitySchemas",
                      response = {
                        ["$ref"] = "ListRuntimeEntitySchemasResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
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
                  id = "connectors.projects.locations.operations.cancel",
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
                  id = "connectors.projects.locations.operations.delete",
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
                  id = "connectors.projects.locations.operations.get",
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
                  id = "connectors.projects.locations.operations.list",
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
            providers = {
              methods = {
                get = {
                  description = "Gets details of a provider.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/providers/{providersId}",
                  httpMethod = "GET",
                  id = "connectors.projects.locations.providers.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Resource name of the form: `projects/*/locations/*/providers/*` Only global location is supported for Provider resource.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/providers/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "Provider",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                getIamPolicy = {
                  description = "Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/providers/{providersId}:getIamPolicy",
                  httpMethod = "GET",
                  id = "connectors.projects.locations.providers.getIamPolicy",
                  parameterOrder = {
                    "resource",
                  },
                  parameters = {
                    ["options.requestedPolicyVersion"] = {
                      description = "Optional. The maximum policy version that will be used to format the policy. Valid values are 0, 1, and 3. Requests specifying an invalid value will be rejected. Requests for policies with any conditional role bindings must specify version 3. Policies with no conditional role bindings may specify any valid value or leave the field unset. The policy in the response might use the policy version that you specified, or it might use a lower policy version. For example, if you specify version 3, but the policy has no conditional role bindings, the response uses version 1. To learn which resources support conditions in their IAM policies, see the [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    resource = {
                      description = "REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/providers/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+resource}:getIamPolicy",
                  response = {
                    ["$ref"] = "Policy",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                list = {
                  description = "Lists Providers in a given project and location.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/providers",
                  httpMethod = "GET",
                  id = "connectors.projects.locations.providers.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    pageSize = {
                      description = "Page size.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "Page token.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. Parent resource of the API, of the form: `projects/*/locations/*` Only global location is supported for Provider resource.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/providers",
                  response = {
                    ["$ref"] = "ListProvidersResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                setIamPolicy = {
                  description = "Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/providers/{providersId}:setIamPolicy",
                  httpMethod = "POST",
                  id = "connectors.projects.locations.providers.setIamPolicy",
                  parameterOrder = {
                    "resource",
                  },
                  parameters = {
                    resource = {
                      description = "REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/providers/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+resource}:setIamPolicy",
                  request = {
                    ["$ref"] = "SetIamPolicyRequest",
                  },
                  response = {
                    ["$ref"] = "Policy",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                testIamPermissions = {
                  description = "Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a `NOT_FOUND` error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may \"fail open\" without warning.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/providers/{providersId}:testIamPermissions",
                  httpMethod = "POST",
                  id = "connectors.projects.locations.providers.testIamPermissions",
                  parameterOrder = {
                    "resource",
                  },
                  parameters = {
                    resource = {
                      description = "REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/providers/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+resource}:testIamPermissions",
                  request = {
                    ["$ref"] = "TestIamPermissionsRequest",
                  },
                  response = {
                    ["$ref"] = "TestIamPermissionsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
              },
              resources = {
                connectors = {
                  methods = {
                    get = {
                      description = "Gets details of a single Connector.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/providers/{providersId}/connectors/{connectorsId}",
                      httpMethod = "GET",
                      id = "connectors.projects.locations.providers.connectors.get",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. Resource name of the form: `projects/*/locations/*/providers/*/connectors/*` Only global location is supported for Connector resource.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/providers/[^/]+/connectors/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}",
                      response = {
                        ["$ref"] = "Connector",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    list = {
                      description = "Lists Connectors in a given project and location.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/providers/{providersId}/connectors",
                      httpMethod = "GET",
                      id = "connectors.projects.locations.providers.connectors.list",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        pageSize = {
                          description = "Page size.",
                          format = "int32",
                          location = "query",
                          type = "integer",
                        },
                        pageToken = {
                          description = "Page token.",
                          location = "query",
                          type = "string",
                        },
                        parent = {
                          description = "Required. Parent resource of the connectors, of the form: `projects/*/locations/*/providers/*` Only global location is supported for Connector resource.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/providers/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/connectors",
                      response = {
                        ["$ref"] = "ListConnectorsResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                  },
                  resources = {
                    versions = {
                      methods = {
                        get = {
                          description = "Gets details of a single connector version.",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/providers/{providersId}/connectors/{connectorsId}/versions/{versionsId}",
                          httpMethod = "GET",
                          id = "connectors.projects.locations.providers.connectors.versions.get",
                          parameterOrder = {
                            "name",
                          },
                          parameters = {
                            name = {
                              description = "Required. Resource name of the form: `projects/*/locations/*/providers/*/connectors/*/versions/*` Only global location is supported for ConnectorVersion resource.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/providers/[^/]+/connectors/[^/]+/versions/[^/]+$",
                              required = true,
                              type = "string",
                            },
                            view = {
                              description = "Specifies which fields of the ConnectorVersion are returned in the response. Defaults to `CUSTOMER` view.",
                              enum = {
                                "CONNECTOR_VERSION_VIEW_UNSPECIFIED",
                                "CONNECTOR_VERSION_VIEW_BASIC",
                                "CONNECTOR_VERSION_VIEW_FULL",
                              },
                              enumDescriptions = {
                                "CONNECTOR_VERSION_VIEW_UNSPECIFIED.",
                                "Do not include role grant configs.",
                                "Include role grant configs.",
                              },
                              location = "query",
                              type = "string",
                            },
                          },
                          path = "v1/{+name}",
                          response = {
                            ["$ref"] = "ConnectorVersion",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                          },
                        },
                        list = {
                          description = "Lists Connector Versions in a given project and location.",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/providers/{providersId}/connectors/{connectorsId}/versions",
                          httpMethod = "GET",
                          id = "connectors.projects.locations.providers.connectors.versions.list",
                          parameterOrder = {
                            "parent",
                          },
                          parameters = {
                            pageSize = {
                              description = "Page size.",
                              format = "int32",
                              location = "query",
                              type = "integer",
                            },
                            pageToken = {
                              description = "Page token.",
                              location = "query",
                              type = "string",
                            },
                            parent = {
                              description = "Required. Parent resource of the connectors, of the form: `projects/*/locations/*/providers/*/connectors/*` Only global location is supported for ConnectorVersion resource.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/providers/[^/]+/connectors/[^/]+$",
                              required = true,
                              type = "string",
                            },
                            view = {
                              description = "Specifies which fields of the ConnectorVersion are returned in the response. Defaults to `BASIC` view.",
                              enum = {
                                "CONNECTOR_VERSION_VIEW_UNSPECIFIED",
                                "CONNECTOR_VERSION_VIEW_BASIC",
                                "CONNECTOR_VERSION_VIEW_FULL",
                              },
                              enumDescriptions = {
                                "CONNECTOR_VERSION_VIEW_UNSPECIFIED.",
                                "Do not include role grant configs.",
                                "Include role grant configs.",
                              },
                              location = "query",
                              type = "string",
                            },
                          },
                          path = "v1/{+parent}/versions",
                          response = {
                            ["$ref"] = "ListConnectorVersionsResponse",
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
        },
      },
    },
  },
  revision = "20230103",
  rootUrl = "https://connectors.googleapis.com/",
  schemas = {
    AuditConfig = {
      description = "Specifies the audit configuration for a service. The configuration determines which permission types are logged, and what identities, if any, are exempted from logging. An AuditConfig must have one or more AuditLogConfigs. If there are AuditConfigs for both `allServices` and a specific service, the union of the two AuditConfigs is used for that service: the log_types specified in each AuditConfig are enabled, and the exempted_members in each AuditLogConfig are exempted. Example Policy with multiple AuditConfigs: { \"audit_configs\": [ { \"service\": \"allServices\", \"audit_log_configs\": [ { \"log_type\": \"DATA_READ\", \"exempted_members\": [ \"user:jose@example.com\" ] }, { \"log_type\": \"DATA_WRITE\" }, { \"log_type\": \"ADMIN_READ\" } ] }, { \"service\": \"sampleservice.googleapis.com\", \"audit_log_configs\": [ { \"log_type\": \"DATA_READ\" }, { \"log_type\": \"DATA_WRITE\", \"exempted_members\": [ \"user:aliya@example.com\" ] } ] } ] } For sampleservice, this policy enables DATA_READ, DATA_WRITE and ADMIN_READ logging. It also exempts `jose@example.com` from DATA_READ logging, and `aliya@example.com` from DATA_WRITE logging.",
      id = "AuditConfig",
      properties = {
        auditLogConfigs = {
          description = "The configuration for logging of each type of permission.",
          items = {
            ["$ref"] = "AuditLogConfig",
          },
          type = "array",
        },
        service = {
          description = "Specifies a service that will be enabled for audit logging. For example, `storage.googleapis.com`, `cloudsql.googleapis.com`. `allServices` is a special value that covers all services.",
          type = "string",
        },
      },
      type = "object",
    },
    AuditLogConfig = {
      description = "Provides the configuration for logging a type of permissions. Example: { \"audit_log_configs\": [ { \"log_type\": \"DATA_READ\", \"exempted_members\": [ \"user:jose@example.com\" ] }, { \"log_type\": \"DATA_WRITE\" } ] } This enables 'DATA_READ' and 'DATA_WRITE' logging, while exempting jose@example.com from DATA_READ logging.",
      id = "AuditLogConfig",
      properties = {
        exemptedMembers = {
          description = "Specifies the identities that do not cause logging for this type of permission. Follows the same format of Binding.members.",
          items = {
            type = "string",
          },
          type = "array",
        },
        logType = {
          description = "The log type that this config enables.",
          enum = {
            "LOG_TYPE_UNSPECIFIED",
            "ADMIN_READ",
            "DATA_WRITE",
            "DATA_READ",
          },
          enumDescriptions = {
            "Default case. Should never be this.",
            "Admin reads. Example: CloudIAM getIamPolicy",
            "Data writes. Example: CloudSQL Users create",
            "Data reads. Example: CloudSQL Users list",
          },
          type = "string",
        },
      },
      type = "object",
    },
    AuthConfig = {
      description = "AuthConfig defines details of a authentication type.",
      id = "AuthConfig",
      properties = {
        additionalVariables = {
          description = "List containing additional auth configs.",
          items = {
            ["$ref"] = "ConfigVariable",
          },
          type = "array",
        },
        authType = {
          description = "The type of authentication configured.",
          enum = {
            "AUTH_TYPE_UNSPECIFIED",
            "USER_PASSWORD",
            "OAUTH2_JWT_BEARER",
            "OAUTH2_CLIENT_CREDENTIALS",
            "SSH_PUBLIC_KEY",
            "OAUTH2_AUTH_CODE_FLOW",
          },
          enumDescriptions = {
            "Authentication type not specified.",
            "Username and Password Authentication.",
            "JSON Web Token (JWT) Profile for Oauth 2.0 Authorization Grant based authentication",
            "Oauth 2.0 Client Credentials Grant Authentication",
            "SSH Public Key Authentication",
            "Oauth 2.0 Authorization Code Flow",
          },
          type = "string",
        },
        oauth2ClientCredentials = {
          ["$ref"] = "Oauth2ClientCredentials",
          description = "Oauth2ClientCredentials.",
        },
        oauth2JwtBearer = {
          ["$ref"] = "Oauth2JwtBearer",
          description = "Oauth2JwtBearer.",
        },
        sshPublicKey = {
          ["$ref"] = "SshPublicKey",
          description = "SSH Public Key.",
        },
        userPassword = {
          ["$ref"] = "UserPassword",
          description = "UserPassword.",
        },
      },
      type = "object",
    },
    AuthConfigTemplate = {
      description = "AuthConfigTemplate defines required field over an authentication type.",
      id = "AuthConfigTemplate",
      properties = {
        authType = {
          description = "The type of authentication configured.",
          enum = {
            "AUTH_TYPE_UNSPECIFIED",
            "USER_PASSWORD",
            "OAUTH2_JWT_BEARER",
            "OAUTH2_CLIENT_CREDENTIALS",
            "SSH_PUBLIC_KEY",
            "OAUTH2_AUTH_CODE_FLOW",
          },
          enumDescriptions = {
            "Authentication type not specified.",
            "Username and Password Authentication.",
            "JSON Web Token (JWT) Profile for Oauth 2.0 Authorization Grant based authentication",
            "Oauth 2.0 Client Credentials Grant Authentication",
            "SSH Public Key Authentication",
            "Oauth 2.0 Authorization Code Flow",
          },
          type = "string",
        },
        configVariableTemplates = {
          description = "Config variables to describe an `AuthConfig` for a `Connection`.",
          items = {
            ["$ref"] = "ConfigVariableTemplate",
          },
          type = "array",
        },
      },
      type = "object",
    },
    AuthorizationCodeLink = {
      description = "This configuration captures the details required to render an authorization link for the OAuth Authorization Code Flow.",
      id = "AuthorizationCodeLink",
      properties = {
        clientId = {
          description = "The client ID assigned to the GCP Connectors OAuth app for the connector data source.",
          type = "string",
        },
        enablePkce = {
          description = "Whether to enable PKCE for the auth code flow.",
          type = "boolean",
        },
        scopes = {
          description = "The scopes for which the user will authorize GCP Connectors on the connector data source.",
          items = {
            type = "string",
          },
          type = "array",
        },
        uri = {
          description = "The base URI the user must click to trigger the authorization code login flow.",
          type = "string",
        },
      },
      type = "object",
    },
    Binding = {
      description = "Associates `members`, or principals, with a `role`.",
      id = "Binding",
      properties = {
        condition = {
          ["$ref"] = "Expr",
          description = "The condition that is associated with this binding. If the condition evaluates to `true`, then this binding applies to the current request. If the condition evaluates to `false`, then this binding does not apply to the current request. However, a different role binding might grant the same role to one or more of the principals in this binding. To learn which resources support conditions in their IAM policies, see the [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).",
        },
        members = {
          description = "Specifies the principals requesting access for a Google Cloud resource. `members` can have the following values: * `allUsers`: A special identifier that represents anyone who is on the internet; with or without a Google account. * `allAuthenticatedUsers`: A special identifier that represents anyone who is authenticated with a Google account or a service account. Does not include identities that come from external identity providers (IdPs) through identity federation. * `user:{emailid}`: An email address that represents a specific Google account. For example, `alice@example.com` . * `serviceAccount:{emailid}`: An email address that represents a Google service account. For example, `my-other-app@appspot.gserviceaccount.com`. * `serviceAccount:{projectid}.svc.id.goog[{namespace}/{kubernetes-sa}]`: An identifier for a [Kubernetes service account](https://cloud.google.com/kubernetes-engine/docs/how-to/kubernetes-service-accounts). For example, `my-project.svc.id.goog[my-namespace/my-kubernetes-sa]`. * `group:{emailid}`: An email address that represents a Google group. For example, `admins@example.com`. * `deleted:user:{emailid}?uid={uniqueid}`: An email address (plus unique identifier) representing a user that has been recently deleted. For example, `alice@example.com?uid=123456789012345678901`. If the user is recovered, this value reverts to `user:{emailid}` and the recovered user retains the role in the binding. * `deleted:serviceAccount:{emailid}?uid={uniqueid}`: An email address (plus unique identifier) representing a service account that has been recently deleted. For example, `my-other-app@appspot.gserviceaccount.com?uid=123456789012345678901`. If the service account is undeleted, this value reverts to `serviceAccount:{emailid}` and the undeleted service account retains the role in the binding. * `deleted:group:{emailid}?uid={uniqueid}`: An email address (plus unique identifier) representing a Google group that has been recently deleted. For example, `admins@example.com?uid=123456789012345678901`. If the group is recovered, this value reverts to `group:{emailid}` and the recovered group retains the role in the binding. * `domain:{domain}`: The G Suite domain (primary) that represents all the users of that domain. For example, `google.com` or `example.com`. ",
          items = {
            type = "string",
          },
          type = "array",
        },
        role = {
          description = "Role that is assigned to the list of `members`, or principals. For example, `roles/viewer`, `roles/editor`, or `roles/owner`.",
          type = "string",
        },
      },
      type = "object",
    },
    CancelOperationRequest = {
      description = "The request message for Operations.CancelOperation.",
      id = "CancelOperationRequest",
      properties = {},
      type = "object",
    },
    ConfigVariable = {
      description = "ConfigVariable represents a configuration variable present in a Connection. or AuthConfig.",
      id = "ConfigVariable",
      properties = {
        boolValue = {
          description = "Value is a bool.",
          type = "boolean",
        },
        intValue = {
          description = "Value is an integer",
          format = "int64",
          type = "string",
        },
        key = {
          description = "Key of the config variable.",
          type = "string",
        },
        secretValue = {
          ["$ref"] = "Secret",
          description = "Value is a secret.",
        },
        stringValue = {
          description = "Value is a string.",
          type = "string",
        },
      },
      type = "object",
    },
    ConfigVariableTemplate = {
      description = "ConfigVariableTemplate provides metadata about a `ConfigVariable` that is used in a Connection.",
      id = "ConfigVariableTemplate",
      properties = {
        authorizationCodeLink = {
          ["$ref"] = "AuthorizationCodeLink",
          description = "Authorization code link options. To be populated if `ValueType` is `AUTHORIZATION_CODE`",
        },
        description = {
          description = "Description.",
          type = "string",
        },
        displayName = {
          description = "Display name of the parameter.",
          type = "string",
        },
        enumOptions = {
          description = "Enum options. To be populated if `ValueType` is `ENUM`",
          items = {
            ["$ref"] = "EnumOption",
          },
          type = "array",
        },
        key = {
          description = "Key of the config variable.",
          type = "string",
        },
        required = {
          description = "Flag represents that this `ConfigVariable` must be provided for a connection.",
          type = "boolean",
        },
        roleGrant = {
          ["$ref"] = "RoleGrant",
          description = "Role grant configuration for the config variable.",
        },
        state = {
          description = "State of the config variable.",
          enum = {
            "STATE_UNSPECIFIED",
            "ACTIVE",
            "DEPRECATED",
          },
          enumDescriptions = {
            "Status is unspecified.",
            "Config variable is active",
            "Config variable is deprecated.",
          },
          type = "string",
        },
        validationRegex = {
          description = "Regular expression in RE2 syntax used for validating the `value` of a `ConfigVariable`.",
          type = "string",
        },
        valueType = {
          description = "Type of the parameter: string, int, bool etc. consider custom type for the benefit for the validation.",
          enum = {
            "VALUE_TYPE_UNSPECIFIED",
            "STRING",
            "INT",
            "BOOL",
            "SECRET",
            "ENUM",
            "AUTHORIZATION_CODE",
          },
          enumDescriptions = {
            "Value type is not specified.",
            "Value type is string.",
            "Value type is integer.",
            "Value type is boolean.",
            "Value type is secret.",
            "Value type is enum.",
            "Value type is authorization code.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    Connection = {
      description = "Connection represents an instance of connector.",
      id = "Connection",
      properties = {
        authConfig = {
          ["$ref"] = "AuthConfig",
          description = "Optional. Configuration for establishing the connection's authentication with an external system.",
        },
        configVariables = {
          description = "Optional. Configuration for configuring the connection with an external system.",
          items = {
            ["$ref"] = "ConfigVariable",
          },
          type = "array",
        },
        connectorVersion = {
          description = "Required. Connector version on which the connection is created. The format is: projects/*/locations/*/providers/*/connectors/*/versions/* Only global location is supported for ConnectorVersion resource.",
          type = "string",
        },
        createTime = {
          description = "Output only. Created time.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        description = {
          description = "Optional. Description of the resource.",
          type = "string",
        },
        destinationConfigs = {
          description = "Optional. Configuration of the Connector's destination. Only accepted for Connectors that accepts user defined destination(s).",
          items = {
            ["$ref"] = "DestinationConfig",
          },
          type = "array",
        },
        envoyImageLocation = {
          description = "Output only. GCR location where the envoy image is stored. formatted like: gcr.io/{bucketName}/{imageName}",
          readOnly = true,
          type = "string",
        },
        imageLocation = {
          description = "Output only. GCR location where the runtime image is stored. formatted like: gcr.io/{bucketName}/{imageName}",
          readOnly = true,
          type = "string",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "Optional. Resource labels to represent user-provided metadata. Refer to cloud documentation on labels for more details. https://cloud.google.com/compute/docs/labeling-resources",
          type = "object",
        },
        lockConfig = {
          ["$ref"] = "LockConfig",
          description = "Optional. Configuration that indicates whether or not the Connection can be edited.",
        },
        name = {
          description = "Output only. Resource name of the Connection. Format: projects/{project}/locations/{location}/connections/{connection}",
          readOnly = true,
          type = "string",
        },
        nodeConfig = {
          ["$ref"] = "NodeConfig",
          description = "Optional. Node configuration for the connection.",
        },
        serviceAccount = {
          description = "Optional. Service account needed for runtime plane to access GCP resources.",
          type = "string",
        },
        serviceDirectory = {
          description = "Output only. The name of the Service Directory service name. Used for Private Harpoon to resolve the ILB address. e.g. \"projects/cloud-connectors-e2e-testing/locations/us-central1/namespaces/istio-system/services/istio-ingressgateway-connectors\"",
          readOnly = true,
          type = "string",
        },
        status = {
          ["$ref"] = "ConnectionStatus",
          description = "Output only. Current status of the connection.",
          readOnly = true,
        },
        suspended = {
          description = "Optional. Suspended indicates if a user has suspended a connection or not.",
          type = "boolean",
        },
        updateTime = {
          description = "Output only. Updated time.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    ConnectionSchemaMetadata = {
      description = "ConnectionSchemaMetadata is the singleton resource of each connection. It includes the entity and action names of runtime resources exposed by a connection backend.",
      id = "ConnectionSchemaMetadata",
      properties = {
        actions = {
          description = "Output only. List of actions.",
          items = {
            type = "string",
          },
          readOnly = true,
          type = "array",
        },
        entities = {
          description = "Output only. List of entity names.",
          items = {
            type = "string",
          },
          readOnly = true,
          type = "array",
        },
        name = {
          description = "Output only. Resource name. Format: projects/{project}/locations/{location}/connections/{connection}/connectionSchemaMetadata",
          readOnly = true,
          type = "string",
        },
        refreshTime = {
          description = "Output only. Timestamp when the connection runtime schema refresh was triggered.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        state = {
          description = "Output only. The current state of runtime schema.",
          enum = {
            "STATE_UNSPECIFIED",
            "REFRESHING",
            "UPDATED",
          },
          enumDescriptions = {
            "Default state.",
            "Schema refresh is in progress.",
            "Schema has been updated.",
          },
          readOnly = true,
          type = "string",
        },
        updateTime = {
          description = "Output only. Timestamp when the connection runtime schema was updated.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    ConnectionStatus = {
      description = "ConnectionStatus indicates the state of the connection.",
      id = "ConnectionStatus",
      properties = {
        description = {
          description = "Description.",
          type = "string",
        },
        state = {
          description = "State.",
          enum = {
            "STATE_UNSPECIFIED",
            "CREATING",
            "ACTIVE",
            "INACTIVE",
            "DELETING",
            "UPDATING",
            "ERROR",
          },
          enumDescriptions = {
            "Connection does not have a state yet.",
            "Connection is being created.",
            "Connection is running and ready for requests.",
            "Connection is stopped.",
            "Connection is being deleted.",
            "Connection is being updated.",
            "Connection is not running due to an error.",
          },
          type = "string",
        },
        status = {
          description = "Status provides detailed information for the state.",
          type = "string",
        },
      },
      type = "object",
    },
    Connector = {
      description = "Connectors indicates a specific connector type, e.x. Salesforce, SAP etc.",
      id = "Connector",
      properties = {
        createTime = {
          description = "Output only. Created time.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        description = {
          description = "Output only. Description of the resource.",
          readOnly = true,
          type = "string",
        },
        displayName = {
          description = "Output only. Display name.",
          readOnly = true,
          type = "string",
        },
        documentationUri = {
          description = "Output only. Link to documentation page.",
          readOnly = true,
          type = "string",
        },
        externalUri = {
          description = "Output only. Link to external page.",
          readOnly = true,
          type = "string",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "Output only. Resource labels to represent user-provided metadata. Refer to cloud documentation on labels for more details. https://cloud.google.com/compute/docs/labeling-resources",
          readOnly = true,
          type = "object",
        },
        launchStage = {
          description = "Output only. Flag to mark the version indicating the launch stage.",
          enum = {
            "LAUNCH_STAGE_UNSPECIFIED",
            "PREVIEW",
            "GA",
            "DEPRECATED",
            "PRIVATE_PREVIEW",
          },
          enumDescriptions = {
            "LAUNCH_STAGE_UNSPECIFIED.",
            "PREVIEW.",
            "GA.",
            "DEPRECATED.",
            "PRIVATE_PREVIEW.",
          },
          readOnly = true,
          type = "string",
        },
        name = {
          description = "Output only. Resource name of the Connector. Format: projects/{project}/locations/{location}/providers/{provider}/connectors/{connector} Only global location is supported for Connector resource.",
          readOnly = true,
          type = "string",
        },
        updateTime = {
          description = "Output only. Updated time.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        webAssetsLocation = {
          description = "Output only. Cloud storage location of icons etc consumed by UI.",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    ConnectorVersion = {
      description = "ConnectorVersion indicates a specific version of a connector.",
      id = "ConnectorVersion",
      properties = {
        authConfigTemplates = {
          description = "Output only. List of auth configs supported by the Connector Version.",
          items = {
            ["$ref"] = "AuthConfigTemplate",
          },
          readOnly = true,
          type = "array",
        },
        configVariableTemplates = {
          description = "Output only. List of config variables needed to create a connection.",
          items = {
            ["$ref"] = "ConfigVariableTemplate",
          },
          readOnly = true,
          type = "array",
        },
        createTime = {
          description = "Output only. Created time.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        displayName = {
          description = "Output only. Display name.",
          readOnly = true,
          type = "string",
        },
        egressControlConfig = {
          ["$ref"] = "EgressControlConfig",
          description = "Output only. Configuration for Egress Control.",
          readOnly = true,
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "Output only. Resource labels to represent user-provided metadata. Refer to cloud documentation on labels for more details. https://cloud.google.com/compute/docs/labeling-resources",
          readOnly = true,
          type = "object",
        },
        launchStage = {
          description = "Output only. Flag to mark the version indicating the launch stage.",
          enum = {
            "LAUNCH_STAGE_UNSPECIFIED",
            "PREVIEW",
            "GA",
            "DEPRECATED",
            "PRIVATE_PREVIEW",
          },
          enumDescriptions = {
            "LAUNCH_STAGE_UNSPECIFIED.",
            "PREVIEW.",
            "GA.",
            "DEPRECATED.",
            "PRIVATE_PREVIEW.",
          },
          readOnly = true,
          type = "string",
        },
        name = {
          description = "Output only. Resource name of the Version. Format: projects/{project}/locations/{location}/providers/{provider}/connectors/{connector}/versions/{version} Only global location is supported for Connector resource.",
          readOnly = true,
          type = "string",
        },
        releaseVersion = {
          description = "Output only. ReleaseVersion of the connector, for example: \"1.0.1-alpha\".",
          readOnly = true,
          type = "string",
        },
        roleGrant = {
          ["$ref"] = "RoleGrant",
          description = "Output only. Role grant configuration for this config variable. It will be DEPRECATED soon.",
          readOnly = true,
        },
        roleGrants = {
          description = "Output only. Role grant configurations for this connector version.",
          items = {
            ["$ref"] = "RoleGrant",
          },
          readOnly = true,
          type = "array",
        },
        supportedRuntimeFeatures = {
          ["$ref"] = "SupportedRuntimeFeatures",
          description = "Output only. Information about the runtime features supported by the Connector.",
          readOnly = true,
        },
        updateTime = {
          description = "Output only. Updated time.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    Destination = {
      id = "Destination",
      properties = {
        host = {
          description = "For publicly routable host.",
          type = "string",
        },
        port = {
          description = "The port is the target port number that is accepted by the destination.",
          format = "int32",
          type = "integer",
        },
        serviceAttachment = {
          description = "PSC service attachments. Format: projects/*/regions/*/serviceAttachments/*",
          type = "string",
        },
      },
      type = "object",
    },
    DestinationConfig = {
      description = "Define the Connectors target endpoint.",
      id = "DestinationConfig",
      properties = {
        destinations = {
          description = "The destinations for the key.",
          items = {
            ["$ref"] = "Destination",
          },
          type = "array",
        },
        key = {
          description = "The key is the destination identifier that is supported by the Connector.",
          type = "string",
        },
      },
      type = "object",
    },
    EgressControlConfig = {
      description = "Egress control config for connector runtime. These configurations define the rules to identify which outbound domains/hosts needs to be whitelisted. It may be a static information for a particular connector version or it is derived from the configurations provided by the customer in Connection resource.",
      id = "EgressControlConfig",
      properties = {
        backends = {
          description = "Static Comma separated backends which are common for all Connection resources. Supported formats for each backend are host:port or just host (host can be ip address or domain name).",
          type = "string",
        },
        extractionRules = {
          ["$ref"] = "ExtractionRules",
          description = "Extractions Rules to extract the backends from customer provided configuration.",
        },
      },
      type = "object",
    },
    Empty = {
      description = "A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }",
      id = "Empty",
      properties = {},
      type = "object",
    },
    EnumOption = {
      description = "EnumOption definition",
      id = "EnumOption",
      properties = {
        displayName = {
          description = "Display name of the option.",
          type = "string",
        },
        id = {
          description = "Id of the option.",
          type = "string",
        },
      },
      type = "object",
    },
    Expr = {
      description = "Represents a textual expression in the Common Expression Language (CEL) syntax. CEL is a C-like expression language. The syntax and semantics of CEL are documented at https://github.com/google/cel-spec. Example (Comparison): title: \"Summary size limit\" description: \"Determines if a summary is less than 100 chars\" expression: \"document.summary.size() < 100\" Example (Equality): title: \"Requestor is owner\" description: \"Determines if requestor is the document owner\" expression: \"document.owner == request.auth.claims.email\" Example (Logic): title: \"Public documents\" description: \"Determine whether the document should be publicly visible\" expression: \"document.type != 'private' && document.type != 'internal'\" Example (Data Manipulation): title: \"Notification string\" description: \"Create a notification string with a timestamp.\" expression: \"'New message received at ' + string(document.create_time)\" The exact variables and functions that may be referenced within an expression are determined by the service that evaluates it. See the service documentation for additional information.",
      id = "Expr",
      properties = {
        description = {
          description = "Optional. Description of the expression. This is a longer text which describes the expression, e.g. when hovered over it in a UI.",
          type = "string",
        },
        expression = {
          description = "Textual representation of an expression in Common Expression Language syntax.",
          type = "string",
        },
        location = {
          description = "Optional. String indicating the location of the expression for error reporting, e.g. a file name and a position in the file.",
          type = "string",
        },
        title = {
          description = "Optional. Title for the expression, i.e. a short string describing its purpose. This can be used e.g. in UIs which allow to enter the expression.",
          type = "string",
        },
      },
      type = "object",
    },
    ExtractionRule = {
      description = "Extraction Rule.",
      id = "ExtractionRule",
      properties = {
        extractionRegex = {
          description = "Regex used to extract backend details from source. If empty, whole source value will be used.",
          type = "string",
        },
        source = {
          ["$ref"] = "Source",
          description = "Source on which the rule is applied.",
        },
      },
      type = "object",
    },
    ExtractionRules = {
      description = "Extraction Rules to identity the backends from customer provided configuration in Connection resource.",
      id = "ExtractionRules",
      properties = {
        extractionRule = {
          description = "Collection of Extraction Rule.",
          items = {
            ["$ref"] = "ExtractionRule",
          },
          type = "array",
        },
      },
      type = "object",
    },
    Field = {
      description = "Metadata of an entity field.",
      id = "Field",
      properties = {
        additionalDetails = {
          additionalProperties = {
            description = "Properties of the object.",
            type = "any",
          },
          description = "The following map contains fields that are not explicitly mentioned above,this give connectors the flexibility to add new metadata fields.",
          type = "object",
        },
        dataType = {
          description = "The data type of the Field.",
          enum = {
            "DATA_TYPE_UNSPECIFIED",
            "DATA_TYPE_INT",
            "DATA_TYPE_SMALLINT",
            "DATA_TYPE_DOUBLE",
            "DATA_TYPE_DATE",
            "DATA_TYPE_DATETIME",
            "DATA_TYPE_TIME",
            "DATA_TYPE_STRING",
            "DATA_TYPE_LONG",
            "DATA_TYPE_BOOLEAN",
            "DATA_TYPE_DECIMAL",
            "DATA_TYPE_UUID",
            "DATA_TYPE_BLOB",
            "DATA_TYPE_BIT",
            "DATA_TYPE_TINYINT",
            "DATA_TYPE_INTEGER",
            "DATA_TYPE_BIGINT",
            "DATA_TYPE_FLOAT",
            "DATA_TYPE_REAL",
            "DATA_TYPE_NUMERIC",
            "DATA_TYPE_CHAR",
            "DATA_TYPE_VARCHAR",
            "DATA_TYPE_LONGVARCHAR",
            "DATA_TYPE_TIMESTAMP",
            "DATA_TYPE_NCHAR",
            "DATA_TYPE_NVARCHAR",
            "DATA_TYPE_LONGNVARCHAR",
            "DATA_TYPE_NULL",
            "DATA_TYPE_OTHER",
            "DATA_TYPE_JAVA_OBJECT",
            "DATA_TYPE_DISTINCT",
            "DATA_TYPE_STRUCT",
            "DATA_TYPE_ARRAY",
            "DATA_TYPE_CLOB",
            "DATA_TYPE_REF",
            "DATA_TYPE_DATALINK",
            "DATA_TYPE_ROWID",
            "DATA_TYPE_BINARY",
            "DATA_TYPE_VARBINARY",
            "DATA_TYPE_LONGVARBINARY",
            "DATA_TYPE_NCLOB",
            "DATA_TYPE_SQLXML",
            "DATA_TYPE_REF_CURSOR",
            "DATA_TYPE_TIME_WITH_TIMEZONE",
            "DATA_TYPE_TIMESTAMP_WITH_TIMEZONE",
          },
          enumDescriptions = {
            "Data type is not specified.",
            "DEPRECATED! Use DATA_TYPE_INTEGER.",
            "Short integer(int16) data type.",
            "Double data type.",
            "Date data type.",
            "DEPRECATED! Use DATA_TYPE_TIMESTAMP.",
            "Time data type.",
            "DEPRECATED! Use DATA_TYPE_VARCHAR.",
            "DEPRECATED! Use DATA_TYPE_BIGINT.",
            "Boolean data type.",
            "Decimal data type.",
            "DEPRECATED! Use DATA_TYPE_VARCHAR.",
            "UNSUPPORTED! Binary data type.",
            "Bit data type.",
            "Small integer(int8) data type.",
            "Integer(int32) data type.",
            "Long integer(int64) data type.",
            "Float data type.",
            "Real data type.",
            "Numeric data type.",
            "Char data type.",
            "Varchar data type.",
            "Longvarchar data type.",
            "Timestamp data type.",
            "Nchar data type.",
            "Nvarchar data type.",
            "Longnvarchar data type.",
            "Null data type.",
            "UNSUPPORTED! Binary data type.",
            "UNSUPPORTED! Binary data type.",
            "UNSUPPORTED! Binary data type.",
            "UNSUPPORTED! Binary data type.",
            "UNSUPPORTED! Binary data type.",
            "UNSUPPORTED! Binary data type.",
            "UNSUPPORTED! Binary data type.",
            "UNSUPPORTED! Binary data type.",
            "UNSUPPORTED! Row id data type.",
            "UNSUPPORTED! Binary data type.",
            "UNSUPPORTED! Variable binary data type.",
            "UNSUPPORTED! Long variable binary data type.",
            "UNSUPPORTED! NCLOB data type.",
            "UNSUPPORTED! SQL XML data type is not supported.",
            "UNSUPPORTED! Cursor reference type is not supported.",
            "UNSUPPORTED! Use TIME or TIMESTAMP instead.",
            "UNSUPPORTED! Use TIMESTAMP instead.",
          },
          type = "string",
        },
        defaultValue = {
          description = "The following field specifies the default value of the Field provided by the external system if a value is not provided.",
          type = "any",
        },
        description = {
          description = "A brief description of the Field.",
          type = "string",
        },
        field = {
          description = "Name of the Field.",
          type = "string",
        },
        key = {
          description = "The following boolean field specifies if the current Field acts as a primary key or id if the parent is of type entity.",
          type = "boolean",
        },
        nullable = {
          description = "Specifies whether a null value is allowed.",
          type = "boolean",
        },
        readonly = {
          description = "Specifies if the Field is readonly.",
          type = "boolean",
        },
      },
      type = "object",
    },
    InputParameter = {
      description = "Metadata of an input parameter.",
      id = "InputParameter",
      properties = {
        dataType = {
          description = "The data type of the Parameter.",
          enum = {
            "DATA_TYPE_UNSPECIFIED",
            "DATA_TYPE_INT",
            "DATA_TYPE_SMALLINT",
            "DATA_TYPE_DOUBLE",
            "DATA_TYPE_DATE",
            "DATA_TYPE_DATETIME",
            "DATA_TYPE_TIME",
            "DATA_TYPE_STRING",
            "DATA_TYPE_LONG",
            "DATA_TYPE_BOOLEAN",
            "DATA_TYPE_DECIMAL",
            "DATA_TYPE_UUID",
            "DATA_TYPE_BLOB",
            "DATA_TYPE_BIT",
            "DATA_TYPE_TINYINT",
            "DATA_TYPE_INTEGER",
            "DATA_TYPE_BIGINT",
            "DATA_TYPE_FLOAT",
            "DATA_TYPE_REAL",
            "DATA_TYPE_NUMERIC",
            "DATA_TYPE_CHAR",
            "DATA_TYPE_VARCHAR",
            "DATA_TYPE_LONGVARCHAR",
            "DATA_TYPE_TIMESTAMP",
            "DATA_TYPE_NCHAR",
            "DATA_TYPE_NVARCHAR",
            "DATA_TYPE_LONGNVARCHAR",
            "DATA_TYPE_NULL",
            "DATA_TYPE_OTHER",
            "DATA_TYPE_JAVA_OBJECT",
            "DATA_TYPE_DISTINCT",
            "DATA_TYPE_STRUCT",
            "DATA_TYPE_ARRAY",
            "DATA_TYPE_CLOB",
            "DATA_TYPE_REF",
            "DATA_TYPE_DATALINK",
            "DATA_TYPE_ROWID",
            "DATA_TYPE_BINARY",
            "DATA_TYPE_VARBINARY",
            "DATA_TYPE_LONGVARBINARY",
            "DATA_TYPE_NCLOB",
            "DATA_TYPE_SQLXML",
            "DATA_TYPE_REF_CURSOR",
            "DATA_TYPE_TIME_WITH_TIMEZONE",
            "DATA_TYPE_TIMESTAMP_WITH_TIMEZONE",
          },
          enumDescriptions = {
            "Data type is not specified.",
            "DEPRECATED! Use DATA_TYPE_INTEGER.",
            "Short integer(int16) data type.",
            "Double data type.",
            "Date data type.",
            "DEPRECATED! Use DATA_TYPE_TIMESTAMP.",
            "Time data type.",
            "DEPRECATED! Use DATA_TYPE_VARCHAR.",
            "DEPRECATED! Use DATA_TYPE_BIGINT.",
            "Boolean data type.",
            "Decimal data type.",
            "DEPRECATED! Use DATA_TYPE_VARCHAR.",
            "UNSUPPORTED! Binary data type.",
            "Bit data type.",
            "Small integer(int8) data type.",
            "Integer(int32) data type.",
            "Long integer(int64) data type.",
            "Float data type.",
            "Real data type.",
            "Numeric data type.",
            "Char data type.",
            "Varchar data type.",
            "Longvarchar data type.",
            "Timestamp data type.",
            "Nchar data type.",
            "Nvarchar data type.",
            "Longnvarchar data type.",
            "Null data type.",
            "UNSUPPORTED! Binary data type.",
            "UNSUPPORTED! Binary data type.",
            "UNSUPPORTED! Binary data type.",
            "UNSUPPORTED! Binary data type.",
            "UNSUPPORTED! Binary data type.",
            "UNSUPPORTED! Binary data type.",
            "UNSUPPORTED! Binary data type.",
            "UNSUPPORTED! Binary data type.",
            "UNSUPPORTED! Row id data type.",
            "UNSUPPORTED! Binary data type.",
            "UNSUPPORTED! Variable binary data type.",
            "UNSUPPORTED! Long variable binary data type.",
            "UNSUPPORTED! NCLOB data type.",
            "UNSUPPORTED! SQL XML data type is not supported.",
            "UNSUPPORTED! Cursor reference type is not supported.",
            "UNSUPPORTED! Use TIME or TIMESTAMP instead.",
            "UNSUPPORTED! Use TIMESTAMP instead.",
          },
          type = "string",
        },
        defaultValue = {
          description = "The following field specifies the default value of the Parameter provided by the external system if a value is not provided.",
          type = "any",
        },
        description = {
          description = "A brief description of the Parameter.",
          type = "string",
        },
        nullable = {
          description = "Specifies whether a null value is allowed.",
          type = "boolean",
        },
        parameter = {
          description = "Name of the Parameter.",
          type = "string",
        },
      },
      type = "object",
    },
    JwtClaims = {
      description = "JWT claims used for the jwt-bearer authorization grant.",
      id = "JwtClaims",
      properties = {
        audience = {
          description = "Value for the \"aud\" claim.",
          type = "string",
        },
        issuer = {
          description = "Value for the \"iss\" claim.",
          type = "string",
        },
        subject = {
          description = "Value for the \"sub\" claim.",
          type = "string",
        },
      },
      type = "object",
    },
    ListConnectionsResponse = {
      description = "Response message for ConnectorsService.ListConnections",
      id = "ListConnectionsResponse",
      properties = {
        connections = {
          description = "Connections.",
          items = {
            ["$ref"] = "Connection",
          },
          type = "array",
        },
        nextPageToken = {
          description = "Next page token.",
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
    ListConnectorVersionsResponse = {
      description = "Response message for Connectors.ListConnectorVersions.",
      id = "ListConnectorVersionsResponse",
      properties = {
        connectorVersions = {
          description = "A list of connector versions.",
          items = {
            ["$ref"] = "ConnectorVersion",
          },
          type = "array",
        },
        nextPageToken = {
          description = "Next page token.",
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
    ListConnectorsResponse = {
      description = "Response message for Connectors.ListConnectors.",
      id = "ListConnectorsResponse",
      properties = {
        connectors = {
          description = "A list of connectors.",
          items = {
            ["$ref"] = "Connector",
          },
          type = "array",
        },
        nextPageToken = {
          description = "Next page token.",
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
    ListProvidersResponse = {
      description = "Response message for Connectors.ListProviders.",
      id = "ListProvidersResponse",
      properties = {
        nextPageToken = {
          description = "Next page token.",
          type = "string",
        },
        providers = {
          description = "A list of providers.",
          items = {
            ["$ref"] = "Provider",
          },
          type = "array",
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
    ListRuntimeActionSchemasResponse = {
      description = "Response message for ConnectorsService.ListRuntimeActionSchemas.",
      id = "ListRuntimeActionSchemasResponse",
      properties = {
        nextPageToken = {
          description = "Next page token.",
          type = "string",
        },
        runtimeActionSchemas = {
          description = "Runtime action schemas.",
          items = {
            ["$ref"] = "RuntimeActionSchema",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ListRuntimeEntitySchemasResponse = {
      description = "Response message for ConnectorsService.ListRuntimeEntitySchemas.",
      id = "ListRuntimeEntitySchemasResponse",
      properties = {
        nextPageToken = {
          description = "Next page token.",
          type = "string",
        },
        runtimeEntitySchemas = {
          description = "Runtime entity schemas.",
          items = {
            ["$ref"] = "RuntimeEntitySchema",
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
    LockConfig = {
      description = "Determines whether or no a connection is locked. If locked, a reason must be specified.",
      id = "LockConfig",
      properties = {
        locked = {
          description = "Indicates whether or not the connection is locked.",
          type = "boolean",
        },
        reason = {
          description = "Describes why a connection is locked.",
          type = "string",
        },
      },
      type = "object",
    },
    NodeConfig = {
      description = "Node configuration for the connection.",
      id = "NodeConfig",
      properties = {
        maxNodeCount = {
          description = "Maximum number of nodes in the runtime nodes.",
          format = "int32",
          type = "integer",
        },
        minNodeCount = {
          description = "Minimum number of nodes in the runtime nodes.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    Oauth2ClientCredentials = {
      description = "Parameters to support Oauth 2.0 Client Credentials Grant Authentication. See https://tools.ietf.org/html/rfc6749#section-1.3.4 for more details.",
      id = "Oauth2ClientCredentials",
      properties = {
        clientId = {
          description = "The client identifier.",
          type = "string",
        },
        clientSecret = {
          ["$ref"] = "Secret",
          description = "Secret version reference containing the client secret.",
        },
      },
      type = "object",
    },
    Oauth2JwtBearer = {
      description = "Parameters to support JSON Web Token (JWT) Profile for Oauth 2.0 Authorization Grant based authentication. See https://tools.ietf.org/html/rfc7523 for more details.",
      id = "Oauth2JwtBearer",
      properties = {
        clientKey = {
          ["$ref"] = "Secret",
          description = "Secret version reference containing a PKCS#8 PEM-encoded private key associated with the Client Certificate. This private key will be used to sign JWTs used for the jwt-bearer authorization grant. Specified in the form as: `projects/*/secrets/*/versions/*`.",
        },
        jwtClaims = {
          ["$ref"] = "JwtClaims",
          description = "JwtClaims providers fields to generate the token.",
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
          description = "Output only. Identifies whether the user has requested cancellation of the operation. Operations that have successfully been cancelled have Operation.error value with a google.rpc.Status.code of 1, corresponding to `Code.CANCELLED`.",
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
    Policy = {
      description = "An Identity and Access Management (IAM) policy, which specifies access controls for Google Cloud resources. A `Policy` is a collection of `bindings`. A `binding` binds one or more `members`, or principals, to a single `role`. Principals can be user accounts, service accounts, Google groups, and domains (such as G Suite). A `role` is a named list of permissions; each `role` can be an IAM predefined role or a user-created custom role. For some types of Google Cloud resources, a `binding` can also specify a `condition`, which is a logical expression that allows access to a resource only if the expression evaluates to `true`. A condition can add constraints based on attributes of the request, the resource, or both. To learn which resources support conditions in their IAM policies, see the [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies). **JSON example:** { \"bindings\": [ { \"role\": \"roles/resourcemanager.organizationAdmin\", \"members\": [ \"user:mike@example.com\", \"group:admins@example.com\", \"domain:google.com\", \"serviceAccount:my-project-id@appspot.gserviceaccount.com\" ] }, { \"role\": \"roles/resourcemanager.organizationViewer\", \"members\": [ \"user:eve@example.com\" ], \"condition\": { \"title\": \"expirable access\", \"description\": \"Does not grant access after Sep 2020\", \"expression\": \"request.time < timestamp('2020-10-01T00:00:00.000Z')\", } } ], \"etag\": \"BwWWja0YfJA=\", \"version\": 3 } **YAML example:** bindings: - members: - user:mike@example.com - group:admins@example.com - domain:google.com - serviceAccount:my-project-id@appspot.gserviceaccount.com role: roles/resourcemanager.organizationAdmin - members: - user:eve@example.com role: roles/resourcemanager.organizationViewer condition: title: expirable access description: Does not grant access after Sep 2020 expression: request.time < timestamp('2020-10-01T00:00:00.000Z') etag: BwWWja0YfJA= version: 3 For a description of IAM and its features, see the [IAM documentation](https://cloud.google.com/iam/docs/).",
      id = "Policy",
      properties = {
        auditConfigs = {
          description = "Specifies cloud audit logging configuration for this policy.",
          items = {
            ["$ref"] = "AuditConfig",
          },
          type = "array",
        },
        bindings = {
          description = "Associates a list of `members`, or principals, with a `role`. Optionally, may specify a `condition` that determines how and when the `bindings` are applied. Each of the `bindings` must contain at least one principal. The `bindings` in a `Policy` can refer to up to 1,500 principals; up to 250 of these principals can be Google groups. Each occurrence of a principal counts towards these limits. For example, if the `bindings` grant 50 different roles to `user:alice@example.com`, and not to any other principal, then you can add another 1,450 principals to the `bindings` in the `Policy`.",
          items = {
            ["$ref"] = "Binding",
          },
          type = "array",
        },
        etag = {
          description = "`etag` is used for optimistic concurrency control as a way to help prevent simultaneous updates of a policy from overwriting each other. It is strongly suggested that systems make use of the `etag` in the read-modify-write cycle to perform policy updates in order to avoid race conditions: An `etag` is returned in the response to `getIamPolicy`, and systems are expected to put that etag in the request to `setIamPolicy` to ensure that their change will be applied to the same version of the policy. **Important:** If you use IAM Conditions, you must include the `etag` field whenever you call `setIamPolicy`. If you omit this field, then IAM allows you to overwrite a version `3` policy with a version `1` policy, and all of the conditions in the version `3` policy are lost.",
          format = "byte",
          type = "string",
        },
        version = {
          description = "Specifies the format of the policy. Valid values are `0`, `1`, and `3`. Requests that specify an invalid value are rejected. Any operation that affects conditional role bindings must specify version `3`. This requirement applies to the following operations: * Getting a policy that includes a conditional role binding * Adding a conditional role binding to a policy * Changing a conditional role binding in a policy * Removing any role binding, with or without a condition, from a policy that includes conditions **Important:** If you use IAM Conditions, you must include the `etag` field whenever you call `setIamPolicy`. If you omit this field, then IAM allows you to overwrite a version `3` policy with a version `1` policy, and all of the conditions in the version `3` policy are lost. If a policy does not include any conditions, operations on that policy may specify any valid version or leave the field unset. To learn which resources support conditions in their IAM policies, see the [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    Provider = {
      description = "Provider indicates the owner who provides the connectors.",
      id = "Provider",
      properties = {
        createTime = {
          description = "Output only. Created time.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        description = {
          description = "Output only. Description of the resource.",
          readOnly = true,
          type = "string",
        },
        displayName = {
          description = "Output only. Display name.",
          readOnly = true,
          type = "string",
        },
        documentationUri = {
          description = "Output only. Link to documentation page.",
          readOnly = true,
          type = "string",
        },
        externalUri = {
          description = "Output only. Link to external page.",
          readOnly = true,
          type = "string",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "Output only. Resource labels to represent user-provided metadata. Refer to cloud documentation on labels for more details. https://cloud.google.com/compute/docs/labeling-resources",
          readOnly = true,
          type = "object",
        },
        launchStage = {
          description = "Output only. Flag to mark the version indicating the launch stage.",
          enum = {
            "LAUNCH_STAGE_UNSPECIFIED",
            "PREVIEW",
            "GA",
            "DEPRECATED",
            "PRIVATE_PREVIEW",
          },
          enumDescriptions = {
            "LAUNCH_STAGE_UNSPECIFIED.",
            "PREVIEW.",
            "GA.",
            "DEPRECATED.",
            "PRIVATE_PREVIEW.",
          },
          readOnly = true,
          type = "string",
        },
        name = {
          description = "Output only. Resource name of the Provider. Format: projects/{project}/locations/{location}/providers/{provider} Only global location is supported for Provider resource.",
          readOnly = true,
          type = "string",
        },
        updateTime = {
          description = "Output only. Updated time.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        webAssetsLocation = {
          description = "Output only. Cloud storage location of icons etc consumed by UI.",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    RefreshConnectionSchemaMetadataRequest = {
      description = "Request message for ConnectorsService.RefreshConnectionSchemaMetadata.",
      id = "RefreshConnectionSchemaMetadataRequest",
      properties = {},
      type = "object",
    },
    Resource = {
      description = "Resource definition",
      id = "Resource",
      properties = {
        pathTemplate = {
          description = "Template to uniquely represent a GCP resource in a format IAM expects This is a template that can have references to other values provided in the config variable template.",
          type = "string",
        },
        type = {
          description = "Different types of resource supported.",
          enum = {
            "TYPE_UNSPECIFIED",
            "GCP_PROJECT",
            "GCP_RESOURCE",
            "GCP_SECRETMANAGER_SECRET",
            "GCP_SECRETMANAGER_SECRET_VERSION",
          },
          enumDescriptions = {
            "Value type is not specified.",
            "GCP Project Resource.",
            "Any GCP Resource which is identified uniquely by IAM.",
            "GCP Secret Resource.",
            "GCP Secret Version Resource.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    ResultMetadata = {
      description = "Metadata of result field.",
      id = "ResultMetadata",
      properties = {
        dataType = {
          description = "The data type of the field.",
          enum = {
            "DATA_TYPE_UNSPECIFIED",
            "DATA_TYPE_INT",
            "DATA_TYPE_SMALLINT",
            "DATA_TYPE_DOUBLE",
            "DATA_TYPE_DATE",
            "DATA_TYPE_DATETIME",
            "DATA_TYPE_TIME",
            "DATA_TYPE_STRING",
            "DATA_TYPE_LONG",
            "DATA_TYPE_BOOLEAN",
            "DATA_TYPE_DECIMAL",
            "DATA_TYPE_UUID",
            "DATA_TYPE_BLOB",
            "DATA_TYPE_BIT",
            "DATA_TYPE_TINYINT",
            "DATA_TYPE_INTEGER",
            "DATA_TYPE_BIGINT",
            "DATA_TYPE_FLOAT",
            "DATA_TYPE_REAL",
            "DATA_TYPE_NUMERIC",
            "DATA_TYPE_CHAR",
            "DATA_TYPE_VARCHAR",
            "DATA_TYPE_LONGVARCHAR",
            "DATA_TYPE_TIMESTAMP",
            "DATA_TYPE_NCHAR",
            "DATA_TYPE_NVARCHAR",
            "DATA_TYPE_LONGNVARCHAR",
            "DATA_TYPE_NULL",
            "DATA_TYPE_OTHER",
            "DATA_TYPE_JAVA_OBJECT",
            "DATA_TYPE_DISTINCT",
            "DATA_TYPE_STRUCT",
            "DATA_TYPE_ARRAY",
            "DATA_TYPE_CLOB",
            "DATA_TYPE_REF",
            "DATA_TYPE_DATALINK",
            "DATA_TYPE_ROWID",
            "DATA_TYPE_BINARY",
            "DATA_TYPE_VARBINARY",
            "DATA_TYPE_LONGVARBINARY",
            "DATA_TYPE_NCLOB",
            "DATA_TYPE_SQLXML",
            "DATA_TYPE_REF_CURSOR",
            "DATA_TYPE_TIME_WITH_TIMEZONE",
            "DATA_TYPE_TIMESTAMP_WITH_TIMEZONE",
          },
          enumDescriptions = {
            "Data type is not specified.",
            "DEPRECATED! Use DATA_TYPE_INTEGER.",
            "Short integer(int16) data type.",
            "Double data type.",
            "Date data type.",
            "DEPRECATED! Use DATA_TYPE_TIMESTAMP.",
            "Time data type.",
            "DEPRECATED! Use DATA_TYPE_VARCHAR.",
            "DEPRECATED! Use DATA_TYPE_BIGINT.",
            "Boolean data type.",
            "Decimal data type.",
            "DEPRECATED! Use DATA_TYPE_VARCHAR.",
            "UNSUPPORTED! Binary data type.",
            "Bit data type.",
            "Small integer(int8) data type.",
            "Integer(int32) data type.",
            "Long integer(int64) data type.",
            "Float data type.",
            "Real data type.",
            "Numeric data type.",
            "Char data type.",
            "Varchar data type.",
            "Longvarchar data type.",
            "Timestamp data type.",
            "Nchar data type.",
            "Nvarchar data type.",
            "Longnvarchar data type.",
            "Null data type.",
            "UNSUPPORTED! Binary data type.",
            "UNSUPPORTED! Binary data type.",
            "UNSUPPORTED! Binary data type.",
            "UNSUPPORTED! Binary data type.",
            "UNSUPPORTED! Binary data type.",
            "UNSUPPORTED! Binary data type.",
            "UNSUPPORTED! Binary data type.",
            "UNSUPPORTED! Binary data type.",
            "UNSUPPORTED! Row id data type.",
            "UNSUPPORTED! Binary data type.",
            "UNSUPPORTED! Variable binary data type.",
            "UNSUPPORTED! Long variable binary data type.",
            "UNSUPPORTED! NCLOB data type.",
            "UNSUPPORTED! SQL XML data type is not supported.",
            "UNSUPPORTED! Cursor reference type is not supported.",
            "UNSUPPORTED! Use TIME or TIMESTAMP instead.",
            "UNSUPPORTED! Use TIMESTAMP instead.",
          },
          type = "string",
        },
        description = {
          description = "A brief description of the field.",
          type = "string",
        },
        field = {
          description = "Name of the result field.",
          type = "string",
        },
      },
      type = "object",
    },
    RoleGrant = {
      description = "This configuration defines all the Cloud IAM roles that needs to be granted to a particular GCP resource for the selected prinicpal like service account. These configurations will let UI display to customers what IAM roles need to be granted by them. Or these configurations can be used by the UI to render a 'grant' button to do the same on behalf of the user.",
      id = "RoleGrant",
      properties = {
        helperTextTemplate = {
          description = "Template that UI can use to provide helper text to customers.",
          type = "string",
        },
        principal = {
          description = "Prinicipal/Identity for whom the role need to assigned.",
          enum = {
            "PRINCIPAL_UNSPECIFIED",
            "CONNECTOR_SA",
          },
          enumDescriptions = {
            "Value type is not specified.",
            "Service Account used for Connector workload identity This is either the default service account if unspecified or Service Account provided by Customers through BYOSA.",
          },
          type = "string",
        },
        resource = {
          ["$ref"] = "Resource",
          description = "Resource on which the roles needs to be granted for the principal.",
        },
        roles = {
          description = "List of roles that need to be granted.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    RuntimeActionSchema = {
      description = "Schema of a runtime action.",
      id = "RuntimeActionSchema",
      properties = {
        action = {
          description = "Output only. Name of the action.",
          readOnly = true,
          type = "string",
        },
        inputParameters = {
          description = "Output only. List of input parameter metadata for the action.",
          items = {
            ["$ref"] = "InputParameter",
          },
          readOnly = true,
          type = "array",
        },
        resultMetadata = {
          description = "Output only. List of result field metadata.",
          items = {
            ["$ref"] = "ResultMetadata",
          },
          readOnly = true,
          type = "array",
        },
      },
      type = "object",
    },
    RuntimeConfig = {
      description = "RuntimeConfig is the singleton resource of each location. It includes generic resource configs consumed by control plane and runtime plane like: pub/sub topic/subscription resource name, Cloud Storage location storing schema etc.",
      id = "RuntimeConfig",
      properties = {
        conndSubscription = {
          description = "Output only. Pub/Sub subscription for connd to receive message. E.g. projects/{project-id}/subscriptions/{topic-id}",
          readOnly = true,
          type = "string",
        },
        conndTopic = {
          description = "Output only. Pub/Sub topic for connd to send message. E.g. projects/{project-id}/topics/{topic-id}",
          readOnly = true,
          type = "string",
        },
        controlPlaneSubscription = {
          description = "Output only. Pub/Sub subscription for control plane to receive message. E.g. projects/{project-id}/subscriptions/{topic-id}",
          readOnly = true,
          type = "string",
        },
        controlPlaneTopic = {
          description = "Output only. Pub/Sub topic for control plne to send message. communication. E.g. projects/{project-id}/topics/{topic-id}",
          readOnly = true,
          type = "string",
        },
        locationId = {
          description = "Output only. location_id of the runtime location. E.g. \"us-west1\".",
          readOnly = true,
          type = "string",
        },
        name = {
          description = "Output only. Name of the runtimeConfig resource. Format: projects/{project}/locations/{location}/runtimeConfig",
          readOnly = true,
          type = "string",
        },
        runtimeEndpoint = {
          description = "Output only. The endpoint of the connectors runtime ingress.",
          readOnly = true,
          type = "string",
        },
        schemaGcsBucket = {
          description = "Output only. The Cloud Storage bucket that stores connector's schema reports.",
          readOnly = true,
          type = "string",
        },
        serviceDirectory = {
          description = "Output only. The name of the Service Directory service name.",
          readOnly = true,
          type = "string",
        },
        state = {
          description = "Output only. The state of the location.",
          enum = {
            "STATE_UNSPECIFIED",
            "INACTIVE",
            "ACTIVATING",
            "ACTIVE",
            "CREATING",
            "DELETING",
            "UPDATING",
          },
          enumDescriptions = {
            "STATE_UNSPECIFIED.",
            "INACTIVE.",
            "ACTIVATING.",
            "ACTIVE.",
            "CREATING.",
            "DELETING.",
            "UPDATING.",
          },
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    RuntimeEntitySchema = {
      description = "Schema of a runtime entity.",
      id = "RuntimeEntitySchema",
      properties = {
        entity = {
          description = "Output only. Name of the entity.",
          readOnly = true,
          type = "string",
        },
        fields = {
          description = "Output only. List of fields in the entity.",
          items = {
            ["$ref"] = "Field",
          },
          readOnly = true,
          type = "array",
        },
      },
      type = "object",
    },
    Secret = {
      description = "Secret provides a reference to entries in Secret Manager.",
      id = "Secret",
      properties = {
        secretVersion = {
          description = "The resource name of the secret version in the format, format as: `projects/*/secrets/*/versions/*`.",
          type = "string",
        },
      },
      type = "object",
    },
    SetIamPolicyRequest = {
      description = "Request message for `SetIamPolicy` method.",
      id = "SetIamPolicyRequest",
      properties = {
        policy = {
          ["$ref"] = "Policy",
          description = "REQUIRED: The complete policy to be applied to the `resource`. The size of the policy is limited to a few 10s of KB. An empty policy is a valid policy but certain Google Cloud services (such as Projects) might reject them.",
        },
        updateMask = {
          description = "OPTIONAL: A FieldMask specifying which fields of the policy to modify. Only the fields in the mask will be modified. If no mask is provided, the following default mask is used: `paths: \"bindings, etag\"`",
          format = "google-fieldmask",
          type = "string",
        },
      },
      type = "object",
    },
    Source = {
      description = "Source to extract the backend from.",
      id = "Source",
      properties = {
        fieldId = {
          description = "Field identifier. For example config vaiable name.",
          type = "string",
        },
        sourceType = {
          description = "Type of the source.",
          enum = {
            "SOURCE_TYPE_UNSPECIFIED",
            "CONFIG_VARIABLE",
          },
          enumDescriptions = {
            "Default SOURCE.",
            "Config Variable source type.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    SshPublicKey = {
      description = "Parameters to support Ssh public key Authentication.",
      id = "SshPublicKey",
      properties = {
        certType = {
          description = "Format of SSH Client cert.",
          type = "string",
        },
        sshClientCert = {
          ["$ref"] = "Secret",
          description = "SSH Client Cert. It should contain both public and private key.",
        },
        sshClientCertPass = {
          ["$ref"] = "Secret",
          description = "Password (passphrase) for ssh client certificate if it has one.",
        },
        username = {
          description = "The user account used to authenticate.",
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
    SupportedRuntimeFeatures = {
      description = "Supported runtime features of a connector version. This is passed to the management layer to add a new connector version by the connector developer. Details about how this proto is passed to the management layer is covered in this doc - go/runtime-manifest.",
      id = "SupportedRuntimeFeatures",
      properties = {
        actionApis = {
          description = "Specifies if the connector supports action apis like 'executeAction'.",
          type = "boolean",
        },
        entityApis = {
          description = "Specifies if the connector supports entity apis like 'createEntity'.",
          type = "boolean",
        },
        sqlQuery = {
          description = "Specifies if the connector supports 'ExecuteSqlQuery' operation.",
          type = "boolean",
        },
      },
      type = "object",
    },
    TestIamPermissionsRequest = {
      description = "Request message for `TestIamPermissions` method.",
      id = "TestIamPermissionsRequest",
      properties = {
        permissions = {
          description = "The set of permissions to check for the `resource`. Permissions with wildcards (such as `*` or `storage.*`) are not allowed. For more information see [IAM Overview](https://cloud.google.com/iam/docs/overview#permissions).",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    TestIamPermissionsResponse = {
      description = "Response message for `TestIamPermissions` method.",
      id = "TestIamPermissionsResponse",
      properties = {
        permissions = {
          description = "A subset of `TestPermissionsRequest.permissions` that the caller is allowed.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    UserPassword = {
      description = "Parameters to support Username and Password Authentication.",
      id = "UserPassword",
      properties = {
        password = {
          ["$ref"] = "Secret",
          description = "Secret version reference containing the password.",
        },
        username = {
          description = "Username.",
          type = "string",
        },
      },
      type = "object",
    },
  },
  servicePath = "",
  title = "Connectors API",
  version = "v1",
  version_module = true,
}
