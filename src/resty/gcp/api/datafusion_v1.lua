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
  baseUrl = "https://datafusion.googleapis.com/",
  batchPath = "batch",
  canonicalName = "Data Fusion",
  description = "Cloud Data Fusion is a fully-managed, cloud native, enterprise data integration service for quickly building and managing data pipelines. It provides a graphical interface to increase time efficiency and reduce complexity, and allows business users, developers, and data scientists to easily and reliably build scalable data integration solutions to cleanse, prepare, blend, transfer and transform data without having to wrestle with infrastructure.",
  discoveryVersion = "v1",
  documentationLink = "https://cloud.google.com/data-fusion/docs",
  fullyEncodeReservedExpansion = true,
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "datafusion:v1",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://datafusion.mtls.googleapis.com/",
  name = "datafusion",
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
              id = "datafusion.projects.locations.get",
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
              id = "datafusion.projects.locations.list",
              parameterOrder = {
                "name",
              },
              parameters = {
                filter = {
                  description = "A filter to narrow down results to a preferred subset. The filtering language accepts strings like `\"displayName=tokyo\"`, and is documented in more detail in [AIP-160](https://google.aip.dev/160).",
                  location = "query",
                  type = "string",
                },
                includeUnrevealedLocations = {
                  description = "If true, the returned list will include locations which are not yet revealed.",
                  location = "query",
                  type = "boolean",
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
            instances = {
              methods = {
                create = {
                  description = "Creates a new Data Fusion instance in the specified project and location.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/instances",
                  httpMethod = "POST",
                  id = "datafusion.projects.locations.instances.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    instanceId = {
                      description = "Required. The name of the instance to create.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The instance's project and location in the format projects/{project}/locations/{location}.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/instances",
                  request = {
                    ["$ref"] = "Instance",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                delete = {
                  description = "Deletes a single Date Fusion instance.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/instances/{instancesId}",
                  httpMethod = "DELETE",
                  id = "datafusion.projects.locations.instances.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The instance resource name in the format projects/{project}/locations/{location}/instances/{instance}",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/instances/[^/]+$",
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
                  description = "Gets details of a single Data Fusion instance.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/instances/{instancesId}",
                  httpMethod = "GET",
                  id = "datafusion.projects.locations.instances.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The instance resource name in the format projects/{project}/locations/{location}/instances/{instance}.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/instances/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "Instance",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                getIamPolicy = {
                  description = "Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/instances/{instancesId}:getIamPolicy",
                  httpMethod = "GET",
                  id = "datafusion.projects.locations.instances.getIamPolicy",
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
                      pattern = "^projects/[^/]+/locations/[^/]+/instances/[^/]+$",
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
                  description = "Lists Data Fusion instances in the specified project and location.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/instances",
                  httpMethod = "GET",
                  id = "datafusion.projects.locations.instances.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    filter = {
                      description = "List filter.",
                      location = "query",
                      type = "string",
                    },
                    orderBy = {
                      description = "Sort results. Supported values are \"name\", \"name desc\", or \"\" (unsorted).",
                      location = "query",
                      type = "string",
                    },
                    pageSize = {
                      description = "The maximum number of items to return.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "The next_page_token value to use if there are additional results to retrieve for this list request.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The project and location for which to retrieve instance information in the format projects/{project}/locations/{location}. If the location is specified as '-' (wildcard), then all regions available to the project are queried, and the results are aggregated.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/instances",
                  response = {
                    ["$ref"] = "ListInstancesResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                patch = {
                  description = "Updates a single Data Fusion instance.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/instances/{instancesId}",
                  httpMethod = "PATCH",
                  id = "datafusion.projects.locations.instances.patch",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Output only. The name of this instance is in the form of projects/{project}/locations/{location}/instances/{instance}.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/instances/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    updateMask = {
                      description = "Field mask is used to specify the fields that the update will overwrite in an instance resource. The fields specified in the update_mask are relative to the resource, not the full request. A field will be overwritten if it is in the mask. If the user does not provide a mask, the label field will be overwritten.",
                      format = "google-fieldmask",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  request = {
                    ["$ref"] = "Instance",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                restart = {
                  description = "Restart a single Data Fusion instance. At the end of an operation instance is fully restarted.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/instances/{instancesId}:restart",
                  httpMethod = "POST",
                  id = "datafusion.projects.locations.instances.restart",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Name of the Data Fusion instance which need to be restarted in the form of projects/{project}/locations/{location}/instances/{instance}",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/instances/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}:restart",
                  request = {
                    ["$ref"] = "RestartInstanceRequest",
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
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/instances/{instancesId}:setIamPolicy",
                  httpMethod = "POST",
                  id = "datafusion.projects.locations.instances.setIamPolicy",
                  parameterOrder = {
                    "resource",
                  },
                  parameters = {
                    resource = {
                      description = "REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/instances/[^/]+$",
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
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/instances/{instancesId}:testIamPermissions",
                  httpMethod = "POST",
                  id = "datafusion.projects.locations.instances.testIamPermissions",
                  parameterOrder = {
                    "resource",
                  },
                  parameters = {
                    resource = {
                      description = "REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/instances/[^/]+$",
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
                dnsPeerings = {
                  methods = {
                    create = {
                      description = "Creates DNS peering on the given resource.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/instances/{instancesId}/dnsPeerings",
                      httpMethod = "POST",
                      id = "datafusion.projects.locations.instances.dnsPeerings.create",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        dnsPeeringId = {
                          description = "Required. The name of the peering to create.",
                          location = "query",
                          type = "string",
                        },
                        parent = {
                          description = "Required. The resource on which DNS peering will be created.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/instances/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/dnsPeerings",
                      request = {
                        ["$ref"] = "DnsPeering",
                      },
                      response = {
                        ["$ref"] = "DnsPeering",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    delete = {
                      description = "Deletes DNS peering on the given resource.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/instances/{instancesId}/dnsPeerings/{dnsPeeringsId}",
                      httpMethod = "DELETE",
                      id = "datafusion.projects.locations.instances.dnsPeerings.delete",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The name of the DNS peering zone to delete. Format: projects/{project}/locations/{location}/instances/{instance}/dnsPeerings/{dns_peering}",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/instances/[^/]+/dnsPeerings/[^/]+$",
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
                    list = {
                      description = "Lists DNS peerings for a given resource.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/instances/{instancesId}/dnsPeerings",
                      httpMethod = "GET",
                      id = "datafusion.projects.locations.instances.dnsPeerings.list",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        pageSize = {
                          description = "The maximum number of dns peerings to return. The service may return fewer than this value. If unspecified, at most 50 dns peerings will be returned. The maximum value is 200; values above 200 will be coerced to 200.",
                          format = "int32",
                          location = "query",
                          type = "integer",
                        },
                        pageToken = {
                          description = "A page token, received from a previous `ListDnsPeerings` call. Provide this to retrieve the subsequent page. When paginating, all other parameters provided to `ListDnsPeerings` must match the call that provided the page token.",
                          location = "query",
                          type = "string",
                        },
                        parent = {
                          description = "Required. The parent, which owns this collection of dns peerings. Format: projects/{project}/locations/{location}/instances/{instance}",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/instances/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/dnsPeerings",
                      response = {
                        ["$ref"] = "ListDnsPeeringsResponse",
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
                  id = "datafusion.projects.locations.operations.cancel",
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
                  id = "datafusion.projects.locations.operations.delete",
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
                  id = "datafusion.projects.locations.operations.get",
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
                  id = "datafusion.projects.locations.operations.list",
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
            versions = {
              methods = {
                list = {
                  description = "Lists possible versions for Data Fusion instances in the specified project and location.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/versions",
                  httpMethod = "GET",
                  id = "datafusion.projects.locations.versions.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    latestPatchOnly = {
                      description = "Whether or not to return the latest patch of every available minor version. If true, only the latest patch will be returned. Ex. if allowed versions is [6.1.1, 6.1.2, 6.2.0] then response will be [6.1.2, 6.2.0]",
                      location = "query",
                      type = "boolean",
                    },
                    pageSize = {
                      description = "The maximum number of items to return.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "The next_page_token value to use if there are additional results to retrieve for this list request.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The project and location for which to retrieve instance information in the format projects/{project}/locations/{location}.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/versions",
                  response = {
                    ["$ref"] = "ListAvailableVersionsResponse",
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
  revision = "20221213",
  rootUrl = "https://datafusion.googleapis.com/",
  schemas = {
    Accelerator = {
      description = "Identifies Data Fusion accelerators for an instance.",
      id = "Accelerator",
      properties = {
        acceleratorType = {
          description = "The type of an accelator for a CDF instance.",
          enum = {
            "ACCELERATOR_TYPE_UNSPECIFIED",
            "CDC",
            "HEALTHCARE",
            "CCAI_INSIGHTS",
          },
          enumDescriptions = {
            "Default value, if unspecified.",
            "Change Data Capture accelerator for CDF.",
            "Cloud Healthcare accelerator for CDF. This accelerator is to enable Cloud Healthcare specific CDF plugins developed by Healthcare team.",
            "Contact Center AI Insights This accelerator is used to enable import and export pipelines custom built to streamline CCAI Insights processing.",
          },
          type = "string",
        },
        state = {
          description = "The state of the accelerator.",
          enum = {
            "STATE_UNSPECIFIED",
            "ENABLED",
            "DISABLED",
            "UNKNOWN",
          },
          enumDescriptions = {
            "Default value, do not use.",
            "Indicates that the accelerator is enabled and available to use.",
            "Indicates that the accelerator is disabled and not available to use.",
            "Indicates that accelerator state is currently unknown. Requests for enable, disable could be retried while in this state.",
          },
          type = "string",
        },
      },
      type = "object",
    },
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
    CryptoKeyConfig = {
      description = "The crypto key configuration. This field is used by the Customer-managed encryption keys (CMEK) feature.",
      id = "CryptoKeyConfig",
      properties = {
        keyReference = {
          description = "The name of the key which is used to encrypt/decrypt customer data. For key in Cloud KMS, the key should be in the format of `projects/*/locations/*/keyRings/*/cryptoKeys/*`.",
          type = "string",
        },
      },
      type = "object",
    },
    DnsPeering = {
      description = "DNS peering configuration. These configurations are used to create DNS peering with the customer Cloud DNS.",
      id = "DnsPeering",
      properties = {
        description = {
          description = "Optional. Optional description of the dns zone.",
          type = "string",
        },
        domain = {
          description = "Required. The dns name suffix of the zone.",
          type = "string",
        },
        name = {
          description = "Required. The resource name of the dns peering zone. Format: projects/{project}/locations/{location}/instances/{instance}/dnsPeerings/{dns_peering}",
          type = "string",
        },
        targetNetwork = {
          description = "Optional. Optional target network to which dns peering should happen.",
          type = "string",
        },
        targetProject = {
          description = "Optional. Optional target project to which dns peering should happen.",
          type = "string",
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
    EventPublishConfig = {
      description = "Confirguration of PubSubEventWriter.",
      id = "EventPublishConfig",
      properties = {
        enabled = {
          description = "Required. Option to enable Event Publishing.",
          type = "boolean",
        },
        topic = {
          description = "Required. The resource name of the Pub/Sub topic. Format: projects/{project_id}/topics/{topic_id}",
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
    Instance = {
      description = "Represents a Data Fusion instance.",
      id = "Instance",
      properties = {
        accelerators = {
          description = "List of accelerators enabled for this CDF instance.",
          items = {
            ["$ref"] = "Accelerator",
          },
          type = "array",
        },
        apiEndpoint = {
          description = "Output only. Endpoint on which the REST APIs is accessible.",
          readOnly = true,
          type = "string",
        },
        availableVersion = {
          description = "Available versions that the instance can be upgraded to using UpdateInstanceRequest.",
          items = {
            ["$ref"] = "Version",
          },
          type = "array",
        },
        createTime = {
          description = "Output only. The time the instance was created.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        cryptoKeyConfig = {
          ["$ref"] = "CryptoKeyConfig",
          description = "The crypto key configuration. This field is used by the Customer-Managed Encryption Keys (CMEK) feature.",
        },
        dataprocServiceAccount = {
          description = "User-managed service account to set on Dataproc when Cloud Data Fusion creates Dataproc to run data processing pipelines. This allows users to have fine-grained access control on Dataproc's accesses to cloud resources.",
          type = "string",
        },
        description = {
          description = "A description of this instance.",
          type = "string",
        },
        disabledReason = {
          description = "Output only. If the instance state is DISABLED, the reason for disabling the instance.",
          items = {
            enum = {
              "DISABLED_REASON_UNSPECIFIED",
              "KMS_KEY_ISSUE",
            },
            enumDescriptions = {
              "This is an unknown reason for disabling.",
              "The KMS key used by the instance is either revoked or denied access to",
            },
            type = "string",
          },
          readOnly = true,
          type = "array",
        },
        displayName = {
          description = "Display name for an instance.",
          type = "string",
        },
        enableRbac = {
          description = "Option to enable granular role-based access control.",
          type = "boolean",
        },
        enableStackdriverLogging = {
          description = "Option to enable Stackdriver Logging.",
          type = "boolean",
        },
        enableStackdriverMonitoring = {
          description = "Option to enable Stackdriver Monitoring.",
          type = "boolean",
        },
        enableZoneSeparation = {
          description = "Option to enable granular zone separation.",
          type = "boolean",
        },
        eventPublishConfig = {
          ["$ref"] = "EventPublishConfig",
          description = "Option to enable and pass metadata for event publishing.",
        },
        gcsBucket = {
          description = "Output only. Cloud Storage bucket generated by Data Fusion in the customer project.",
          readOnly = true,
          type = "string",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "The resource labels for instance to use to annotate any related underlying resources such as Compute Engine VMs. The character '=' is not allowed to be used within the labels.",
          type = "object",
        },
        name = {
          description = "Output only. The name of this instance is in the form of projects/{project}/locations/{location}/instances/{instance}.",
          readOnly = true,
          type = "string",
        },
        networkConfig = {
          ["$ref"] = "NetworkConfig",
          description = "Network configuration options. These are required when a private Data Fusion instance is to be created.",
        },
        options = {
          additionalProperties = {
            type = "string",
          },
          description = "Map of additional options used to configure the behavior of Data Fusion instance.",
          type = "object",
        },
        p4ServiceAccount = {
          description = "Output only. P4 service account for the customer project.",
          readOnly = true,
          type = "string",
        },
        privateInstance = {
          description = "Specifies whether the Data Fusion instance should be private. If set to true, all Data Fusion nodes will have private IP addresses and will not be able to access the public internet.",
          type = "boolean",
        },
        serviceAccount = {
          description = "Output only. Deprecated. Use tenant_project_id instead to extract the tenant project ID.",
          readOnly = true,
          type = "string",
        },
        serviceEndpoint = {
          description = "Output only. Endpoint on which the Data Fusion UI is accessible.",
          readOnly = true,
          type = "string",
        },
        state = {
          description = "Output only. The current state of this Data Fusion instance.",
          enum = {
            "STATE_UNSPECIFIED",
            "CREATING",
            "ACTIVE",
            "FAILED",
            "DELETING",
            "UPGRADING",
            "RESTARTING",
            "UPDATING",
            "AUTO_UPDATING",
            "AUTO_UPGRADING",
            "DISABLED",
          },
          enumDescriptions = {
            "Instance does not have a state yet",
            "Instance is being created",
            "Instance is active and ready for requests. This corresponds to 'RUNNING' in datafusion.v1beta1.",
            "Instance creation failed",
            "Instance is being deleted",
            "Instance is being upgraded",
            "Instance is being restarted",
            "Instance is being updated on customer request",
            "Instance is being auto-updated",
            "Instance is being auto-upgraded",
            "Instance is disabled",
          },
          readOnly = true,
          type = "string",
        },
        stateMessage = {
          description = "Output only. Additional information about the current state of this Data Fusion instance if available.",
          readOnly = true,
          type = "string",
        },
        tenantProjectId = {
          description = "Output only. The name of the tenant project.",
          readOnly = true,
          type = "string",
        },
        type = {
          description = "Required. Instance type.",
          enum = {
            "TYPE_UNSPECIFIED",
            "BASIC",
            "ENTERPRISE",
            "DEVELOPER",
          },
          enumDescriptions = {
            "No type specified. The instance creation will fail.",
            "Basic Data Fusion instance. In Basic type, the user will be able to create data pipelines using point and click UI. However, there are certain limitations, such as fewer number of concurrent pipelines, no support for streaming pipelines, etc.",
            "Enterprise Data Fusion instance. In Enterprise type, the user will have all features available, such as support for streaming pipelines, higher number of concurrent pipelines, etc.",
            "Developer Data Fusion instance. In Developer type, the user will have all features available but with restrictive capabilities. This is to help enterprises design and develop their data ingestion and integration pipelines at low cost.",
          },
          type = "string",
        },
        updateTime = {
          description = "Output only. The time the instance was last updated.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        version = {
          description = "Current version of the Data Fusion. Only specifiable in Update.",
          type = "string",
        },
        zone = {
          description = "Name of the zone in which the Data Fusion instance will be created. Only DEVELOPER instances use this field.",
          type = "string",
        },
      },
      type = "object",
    },
    ListAvailableVersionsResponse = {
      description = "Response message for the list available versions request.",
      id = "ListAvailableVersionsResponse",
      properties = {
        availableVersions = {
          description = "Represents a list of versions that are supported.",
          items = {
            ["$ref"] = "Version",
          },
          type = "array",
        },
        nextPageToken = {
          description = "Token to retrieve the next page of results or empty if there are no more results in the list.",
          type = "string",
        },
      },
      type = "object",
    },
    ListDnsPeeringsResponse = {
      description = "Response message for list DNS peerings.",
      id = "ListDnsPeeringsResponse",
      properties = {
        dnsPeerings = {
          description = "List of dns peering.",
          items = {
            ["$ref"] = "DnsPeering",
          },
          type = "array",
        },
        nextPageToken = {
          description = "A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, there are no subsequent pages.",
          type = "string",
        },
      },
      type = "object",
    },
    ListInstancesResponse = {
      description = "Response message for the list instance request.",
      id = "ListInstancesResponse",
      properties = {
        instances = {
          description = "Represents a list of Data Fusion instances.",
          items = {
            ["$ref"] = "Instance",
          },
          type = "array",
        },
        nextPageToken = {
          description = "Token to retrieve the next page of results or empty if there are no more results in the list.",
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
    NetworkConfig = {
      description = "Network configuration for a Data Fusion instance. These configurations are used for peering with the customer network. Configurations are optional when a public Data Fusion instance is to be created. However, providing these configurations allows several benefits, such as reduced network latency while accessing the customer resources from managed Data Fusion instance nodes, as well as access to the customer on-prem resources.",
      id = "NetworkConfig",
      properties = {
        ipAllocation = {
          description = "The IP range in CIDR notation to use for the managed Data Fusion instance nodes. This range must not overlap with any other ranges used in the customer network.",
          type = "string",
        },
        network = {
          description = "Name of the network in the customer project with which the Tenant Project will be peered for executing pipelines. In case of shared VPC where the network resides in another host project the network should specified in the form of projects/{host-project-id}/global/networks/{network}",
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
      description = "Represents the metadata of a long-running operation.",
      id = "OperationMetadata",
      properties = {
        additionalStatus = {
          additionalProperties = {
            type = "string",
          },
          description = "Map to hold any additional status info for the operation If there is an accelerator being enabled/disabled/deleted, this will be populated with accelerator name as key and status as ENABLING, DISABLING or DELETING",
          type = "object",
        },
        apiVersion = {
          description = "API version used to start the operation.",
          type = "string",
        },
        createTime = {
          description = "The time the operation was created.",
          format = "google-datetime",
          type = "string",
        },
        endTime = {
          description = "The time the operation finished running.",
          format = "google-datetime",
          type = "string",
        },
        requestedCancellation = {
          description = "Identifies whether the user has requested cancellation of the operation. Operations that have successfully been cancelled have Operation.error value with a google.rpc.Status.code of 1, corresponding to `Code.CANCELLED`.",
          type = "boolean",
        },
        statusDetail = {
          description = "Human-readable status of the operation if any.",
          type = "string",
        },
        target = {
          description = "Server-defined resource path for the target of the operation.",
          type = "string",
        },
        verb = {
          description = "Name of the verb executed by the operation.",
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
    RestartInstanceRequest = {
      description = "Request message for restarting a Data Fusion instance.",
      id = "RestartInstanceRequest",
      properties = {},
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
    Version = {
      description = "The Data Fusion version. This proto message stores information about certain Data Fusion version, which is used for Data Fusion version upgrade.",
      id = "Version",
      properties = {
        availableFeatures = {
          description = "Represents a list of available feature names for a given version.",
          items = {
            type = "string",
          },
          type = "array",
        },
        defaultVersion = {
          description = "Whether this is currently the default version for Cloud Data Fusion",
          type = "boolean",
        },
        type = {
          description = "Type represents the release availability of the version",
          enum = {
            "TYPE_UNSPECIFIED",
            "TYPE_PREVIEW",
            "TYPE_GENERAL_AVAILABILITY",
          },
          enumDescriptions = {
            "Version does not have availability yet",
            "Version is under development and not considered stable",
            "Version is available for public use",
          },
          type = "string",
        },
        versionNumber = {
          description = "The version number of the Data Fusion instance, such as '6.0.1.0'.",
          type = "string",
        },
      },
      type = "object",
    },
  },
  servicePath = "",
  title = "Cloud Data Fusion API",
  version = "v1",
  version_module = true,
}
