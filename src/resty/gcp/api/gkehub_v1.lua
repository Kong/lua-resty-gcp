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
  baseUrl = "https://gkehub.googleapis.com/",
  batchPath = "batch",
  canonicalName = "GKE Hub",
  description = "",
  discoveryVersion = "v1",
  documentationLink = "https://cloud.google.com/anthos/multicluster-management/connect/registering-a-cluster",
  fullyEncodeReservedExpansion = true,
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "gkehub:v1",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://gkehub.mtls.googleapis.com/",
  name = "gkehub",
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
              id = "gkehub.projects.locations.get",
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
              id = "gkehub.projects.locations.list",
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
            features = {
              methods = {
                create = {
                  description = "Adds a new Feature.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/features",
                  httpMethod = "POST",
                  id = "gkehub.projects.locations.features.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    featureId = {
                      description = "The ID of the feature to create.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The parent (project and location) where the Feature will be created. Specified in the format `projects/*/locations/*`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    requestId = {
                      description = "A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes after the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/features",
                  request = {
                    ["$ref"] = "Feature",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                delete = {
                  description = "Removes a Feature.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/features/{featuresId}",
                  httpMethod = "DELETE",
                  id = "gkehub.projects.locations.features.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    force = {
                      description = "If set to true, the delete will ignore any outstanding resources for this Feature (that is, `FeatureState.has_resources` is set to true). These resources will NOT be cleaned up or modified in any way.",
                      location = "query",
                      type = "boolean",
                    },
                    name = {
                      description = "Required. The Feature resource name in the format `projects/*/locations/*/features/*`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/features/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    requestId = {
                      description = "Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes after the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).",
                      location = "query",
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
                  description = "Gets details of a single Feature.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/features/{featuresId}",
                  httpMethod = "GET",
                  id = "gkehub.projects.locations.features.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The Feature resource name in the format `projects/*/locations/*/features/*`",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/features/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "Feature",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                getIamPolicy = {
                  description = "Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/features/{featuresId}:getIamPolicy",
                  httpMethod = "GET",
                  id = "gkehub.projects.locations.features.getIamPolicy",
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
                      pattern = "^projects/[^/]+/locations/[^/]+/features/[^/]+$",
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
                  description = "Lists Features in a given project and location.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/features",
                  httpMethod = "GET",
                  id = "gkehub.projects.locations.features.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    filter = {
                      description = "Lists Features that match the filter expression, following the syntax outlined in https://google.aip.dev/160. Examples: - Feature with the name \"servicemesh\" in project \"foo-proj\": name = \"projects/foo-proj/locations/global/features/servicemesh\" - Features that have a label called `foo`: labels.foo:* - Features that have a label called `foo` whose value is `bar`: labels.foo = bar",
                      location = "query",
                      type = "string",
                    },
                    orderBy = {
                      description = "One or more fields to compare and use to sort the output. See https://google.aip.dev/132#ordering.",
                      location = "query",
                      type = "string",
                    },
                    pageSize = {
                      description = "When requesting a 'page' of resources, `page_size` specifies number of resources to return. If unspecified or set to 0, all resources will be returned.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "Token returned by previous call to `ListFeatures` which specifies the position in the list from where to continue listing the resources.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The parent (project and location) where the Features will be listed. Specified in the format `projects/*/locations/*`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/features",
                  response = {
                    ["$ref"] = "ListFeaturesResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                patch = {
                  description = "Updates an existing Feature.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/features/{featuresId}",
                  httpMethod = "PATCH",
                  id = "gkehub.projects.locations.features.patch",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The Feature resource name in the format `projects/*/locations/*/features/*`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/features/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    requestId = {
                      description = "A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes after the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).",
                      location = "query",
                      type = "string",
                    },
                    updateMask = {
                      description = "Mask of fields to update.",
                      format = "google-fieldmask",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  request = {
                    ["$ref"] = "Feature",
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
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/features/{featuresId}:setIamPolicy",
                  httpMethod = "POST",
                  id = "gkehub.projects.locations.features.setIamPolicy",
                  parameterOrder = {
                    "resource",
                  },
                  parameters = {
                    resource = {
                      description = "REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/features/[^/]+$",
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
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/features/{featuresId}:testIamPermissions",
                  httpMethod = "POST",
                  id = "gkehub.projects.locations.features.testIamPermissions",
                  parameterOrder = {
                    "resource",
                  },
                  parameters = {
                    resource = {
                      description = "REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/features/[^/]+$",
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
            },
            memberships = {
              methods = {
                create = {
                  description = "Creates a new Membership. **This is currently only supported for GKE clusters on Google Cloud**. To register other clusters, follow the instructions at https://cloud.google.com/anthos/multicluster-management/connect/registering-a-cluster.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/memberships",
                  httpMethod = "POST",
                  id = "gkehub.projects.locations.memberships.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    membershipId = {
                      description = "Required. Client chosen ID for the membership. `membership_id` must be a valid RFC 1123 compliant DNS label: 1. At most 63 characters in length 2. It must consist of lower case alphanumeric characters or `-` 3. It must start and end with an alphanumeric character Which can be expressed as the regex: `[a-z0-9]([-a-z0-9]*[a-z0-9])?`, with a maximum length of 63 characters.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The parent (project and location) where the Memberships will be created. Specified in the format `projects/*/locations/*`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    requestId = {
                      description = "Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes after the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/memberships",
                  request = {
                    ["$ref"] = "Membership",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                delete = {
                  description = "Removes a Membership. **This is currently only supported for GKE clusters on Google Cloud**. To unregister other clusters, follow the instructions at https://cloud.google.com/anthos/multicluster-management/connect/unregistering-a-cluster.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/memberships/{membershipsId}",
                  httpMethod = "DELETE",
                  id = "gkehub.projects.locations.memberships.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The Membership resource name in the format `projects/*/locations/*/memberships/*`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/memberships/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    requestId = {
                      description = "Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes after the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).",
                      location = "query",
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
                generateConnectManifest = {
                  description = "Generates the manifest for deployment of the GKE connect agent. **This method is used internally by Google-provided libraries.** Most clients should not need to call this method directly.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/memberships/{membershipsId}:generateConnectManifest",
                  httpMethod = "GET",
                  id = "gkehub.projects.locations.memberships.generateConnectManifest",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    imagePullSecretContent = {
                      description = "Optional. The image pull secret content for the registry, if not public.",
                      format = "byte",
                      location = "query",
                      type = "string",
                    },
                    isUpgrade = {
                      description = "Optional. If true, generate the resources for upgrade only. Some resources generated only for installation (e.g. secrets) will be excluded.",
                      location = "query",
                      type = "boolean",
                    },
                    name = {
                      description = "Required. The Membership resource name the Agent will associate with, in the format `projects/*/locations/*/memberships/*`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/memberships/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    namespace = {
                      description = "Optional. Namespace for GKE Connect agent resources. Defaults to `gke-connect`. The Connect Agent is authorized automatically when run in the default namespace. Otherwise, explicit authorization must be granted with an additional IAM binding.",
                      location = "query",
                      type = "string",
                    },
                    proxy = {
                      description = "Optional. URI of a proxy if connectivity from the agent to gkeconnect.googleapis.com requires the use of a proxy. Format must be in the form `http(s)://{proxy_address}`, depending on the HTTP/HTTPS protocol supported by the proxy. This will direct the connect agent's outbound traffic through a HTTP(S) proxy.",
                      format = "byte",
                      location = "query",
                      type = "string",
                    },
                    registry = {
                      description = "Optional. The registry to fetch the connect agent image from. Defaults to gcr.io/gkeconnect.",
                      location = "query",
                      type = "string",
                    },
                    version = {
                      description = "Optional. The Connect agent version to use. Defaults to the most current version.",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+name}:generateConnectManifest",
                  response = {
                    ["$ref"] = "GenerateConnectManifestResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                get = {
                  description = "Gets the details of a Membership.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/memberships/{membershipsId}",
                  httpMethod = "GET",
                  id = "gkehub.projects.locations.memberships.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The Membership resource name in the format `projects/*/locations/*/memberships/*`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/memberships/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "Membership",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                getIamPolicy = {
                  description = "Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/memberships/{membershipsId}:getIamPolicy",
                  httpMethod = "GET",
                  id = "gkehub.projects.locations.memberships.getIamPolicy",
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
                      pattern = "^projects/[^/]+/locations/[^/]+/memberships/[^/]+$",
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
                  description = "Lists Memberships in a given project and location.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/memberships",
                  httpMethod = "GET",
                  id = "gkehub.projects.locations.memberships.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    filter = {
                      description = "Optional. Lists Memberships that match the filter expression, following the syntax outlined in https://google.aip.dev/160. Examples: - Name is `bar` in project `foo-proj` and location `global`: name = \"projects/foo-proj/locations/global/membership/bar\" - Memberships that have a label called `foo`: labels.foo:* - Memberships that have a label called `foo` whose value is `bar`: labels.foo = bar - Memberships in the CREATING state: state = CREATING",
                      location = "query",
                      type = "string",
                    },
                    orderBy = {
                      description = "Optional. One or more fields to compare and use to sort the output. See https://google.aip.dev/132#ordering.",
                      location = "query",
                      type = "string",
                    },
                    pageSize = {
                      description = "Optional. When requesting a 'page' of resources, `page_size` specifies number of resources to return. If unspecified or set to 0, all resources will be returned.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "Optional. Token returned by previous call to `ListMemberships` which specifies the position in the list from where to continue listing the resources.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The parent (project and location) where the Memberships will be listed. Specified in the format `projects/*/locations/*`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/memberships",
                  response = {
                    ["$ref"] = "ListMembershipsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                patch = {
                  description = "Updates an existing Membership.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/memberships/{membershipsId}",
                  httpMethod = "PATCH",
                  id = "gkehub.projects.locations.memberships.patch",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The Membership resource name in the format `projects/*/locations/*/memberships/*`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/memberships/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    requestId = {
                      description = "Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes after the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).",
                      location = "query",
                      type = "string",
                    },
                    updateMask = {
                      description = "Required. Mask of fields to update.",
                      format = "google-fieldmask",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  request = {
                    ["$ref"] = "Membership",
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
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/memberships/{membershipsId}:setIamPolicy",
                  httpMethod = "POST",
                  id = "gkehub.projects.locations.memberships.setIamPolicy",
                  parameterOrder = {
                    "resource",
                  },
                  parameters = {
                    resource = {
                      description = "REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/memberships/[^/]+$",
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
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/memberships/{membershipsId}:testIamPermissions",
                  httpMethod = "POST",
                  id = "gkehub.projects.locations.memberships.testIamPermissions",
                  parameterOrder = {
                    "resource",
                  },
                  parameters = {
                    resource = {
                      description = "REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/memberships/[^/]+$",
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
            },
            operations = {
              methods = {
                cancel = {
                  description = "Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of 1, corresponding to `Code.CANCELLED`.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/operations/{operationsId}:cancel",
                  httpMethod = "POST",
                  id = "gkehub.projects.locations.operations.cancel",
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
                  id = "gkehub.projects.locations.operations.delete",
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
                  id = "gkehub.projects.locations.operations.get",
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
                  id = "gkehub.projects.locations.operations.list",
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
  revision = "20221207",
  rootUrl = "https://gkehub.googleapis.com/",
  schemas = {
    AppDevExperienceFeatureSpec = {
      description = "Spec for App Dev Experience Feature.",
      id = "AppDevExperienceFeatureSpec",
      properties = {},
      type = "object",
    },
    AppDevExperienceFeatureState = {
      description = "State for App Dev Exp Feature.",
      id = "AppDevExperienceFeatureState",
      properties = {
        networkingInstallSucceeded = {
          ["$ref"] = "Status",
          description = "Status of subcomponent that detects configured Service Mesh resources.",
        },
      },
      type = "object",
    },
    ApplianceCluster = {
      description = "ApplianceCluster contains information specific to GDC Edge Appliance Clusters.",
      id = "ApplianceCluster",
      properties = {
        resourceLink = {
          description = "Immutable. Self-link of the GCP resource for the Appliance Cluster. For example: //transferappliance.googleapis.com/projects/my-project/locations/us-west1-a/appliances/my-appliance",
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
    Authority = {
      description = "Authority encodes how Google will recognize identities from this Membership. See the workload identity documentation for more details: https://cloud.google.com/kubernetes-engine/docs/how-to/workload-identity",
      id = "Authority",
      properties = {
        identityProvider = {
          description = "Output only. An identity provider that reflects the `issuer` in the workload identity pool.",
          readOnly = true,
          type = "string",
        },
        issuer = {
          description = "Optional. A JSON Web Token (JWT) issuer URI. `issuer` must start with `https://` and be a valid URL with length <2000 characters. If set, then Google will allow valid OIDC tokens from this issuer to authenticate within the workload_identity_pool. OIDC discovery will be performed on this URI to validate tokens from the issuer. Clearing `issuer` disables Workload Identity. `issuer` cannot be directly modified; it must be cleared (and Workload Identity disabled) before using a new issuer (and re-enabling Workload Identity).",
          type = "string",
        },
        oidcJwks = {
          description = "Optional. OIDC verification keys for this Membership in JWKS format (RFC 7517). When this field is set, OIDC discovery will NOT be performed on `issuer`, and instead OIDC tokens will be validated using this field.",
          format = "byte",
          type = "string",
        },
        workloadIdentityPool = {
          description = "Output only. The name of the workload identity pool in which `issuer` will be recognized. There is a single Workload Identity Pool per Hub that is shared between all Memberships that belong to that Hub. For a Hub hosted in {PROJECT_ID}, the workload pool format is `{PROJECT_ID}.hub.id.goog`, although this is subject to change in newer versions of this API.",
          readOnly = true,
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
    CommonFeatureSpec = {
      description = "CommonFeatureSpec contains Hub-wide configuration information",
      id = "CommonFeatureSpec",
      properties = {
        appdevexperience = {
          ["$ref"] = "AppDevExperienceFeatureSpec",
          description = "Appdevexperience specific spec.",
        },
        fleetobservability = {
          ["$ref"] = "FleetObservabilityFeatureSpec",
          description = "FleetObservability feature spec.",
        },
        multiclusteringress = {
          ["$ref"] = "MultiClusterIngressFeatureSpec",
          description = "Multicluster Ingress-specific spec.",
        },
      },
      type = "object",
    },
    CommonFeatureState = {
      description = "CommonFeatureState contains Hub-wide Feature status information.",
      id = "CommonFeatureState",
      properties = {
        appdevexperience = {
          ["$ref"] = "AppDevExperienceFeatureState",
          description = "Appdevexperience specific state.",
        },
        fleetobservability = {
          ["$ref"] = "FleetObservabilityFeatureState",
          description = "FleetObservability feature state.",
        },
        state = {
          ["$ref"] = "FeatureState",
          description = "Output only. The \"running state\" of the Feature in this Hub.",
          readOnly = true,
        },
      },
      type = "object",
    },
    ConfigManagementConfigSync = {
      description = "Configuration for Config Sync",
      id = "ConfigManagementConfigSync",
      properties = {
        allowVerticalScale = {
          description = "Set to true to allow the vertical scaling. Defaults to false which disallows vertical scaling. This field is deprecated.",
          type = "boolean",
        },
        enabled = {
          description = "Enables the installation of ConfigSync. If set to true, ConfigSync resources will be created and the other ConfigSync fields will be applied if exist. If set to false, all other ConfigSync fields will be ignored, ConfigSync resources will be deleted. If omitted, ConfigSync resources will be managed depends on the presence of git field.",
          type = "boolean",
        },
        git = {
          ["$ref"] = "ConfigManagementGitConfig",
          description = "Git repo configuration for the cluster.",
        },
        oci = {
          ["$ref"] = "ConfigManagementOciConfig",
          description = "OCI repo configuration for the cluster",
        },
        preventDrift = {
          description = "Set to true to enable the Config Sync admission webhook to prevent drifts. If set to `false`, disables the Config Sync admission webhook and does not prevent drifts.",
          type = "boolean",
        },
        sourceFormat = {
          description = "Specifies whether the Config Sync Repo is in \"hierarchical\" or \"unstructured\" mode.",
          type = "string",
        },
      },
      type = "object",
    },
    ConfigManagementConfigSyncDeploymentState = {
      description = "The state of ConfigSync's deployment on a cluster",
      id = "ConfigManagementConfigSyncDeploymentState",
      properties = {
        admissionWebhook = {
          description = "Deployment state of admission-webhook",
          enum = {
            "DEPLOYMENT_STATE_UNSPECIFIED",
            "NOT_INSTALLED",
            "INSTALLED",
            "ERROR",
          },
          enumDescriptions = {
            "Deployment's state cannot be determined",
            "Deployment is not installed",
            "Deployment is installed",
            "Deployment was attempted to be installed, but has errors",
          },
          type = "string",
        },
        gitSync = {
          description = "Deployment state of the git-sync pod",
          enum = {
            "DEPLOYMENT_STATE_UNSPECIFIED",
            "NOT_INSTALLED",
            "INSTALLED",
            "ERROR",
          },
          enumDescriptions = {
            "Deployment's state cannot be determined",
            "Deployment is not installed",
            "Deployment is installed",
            "Deployment was attempted to be installed, but has errors",
          },
          type = "string",
        },
        importer = {
          description = "Deployment state of the importer pod",
          enum = {
            "DEPLOYMENT_STATE_UNSPECIFIED",
            "NOT_INSTALLED",
            "INSTALLED",
            "ERROR",
          },
          enumDescriptions = {
            "Deployment's state cannot be determined",
            "Deployment is not installed",
            "Deployment is installed",
            "Deployment was attempted to be installed, but has errors",
          },
          type = "string",
        },
        monitor = {
          description = "Deployment state of the monitor pod",
          enum = {
            "DEPLOYMENT_STATE_UNSPECIFIED",
            "NOT_INSTALLED",
            "INSTALLED",
            "ERROR",
          },
          enumDescriptions = {
            "Deployment's state cannot be determined",
            "Deployment is not installed",
            "Deployment is installed",
            "Deployment was attempted to be installed, but has errors",
          },
          type = "string",
        },
        reconcilerManager = {
          description = "Deployment state of reconciler-manager pod",
          enum = {
            "DEPLOYMENT_STATE_UNSPECIFIED",
            "NOT_INSTALLED",
            "INSTALLED",
            "ERROR",
          },
          enumDescriptions = {
            "Deployment's state cannot be determined",
            "Deployment is not installed",
            "Deployment is installed",
            "Deployment was attempted to be installed, but has errors",
          },
          type = "string",
        },
        rootReconciler = {
          description = "Deployment state of root-reconciler",
          enum = {
            "DEPLOYMENT_STATE_UNSPECIFIED",
            "NOT_INSTALLED",
            "INSTALLED",
            "ERROR",
          },
          enumDescriptions = {
            "Deployment's state cannot be determined",
            "Deployment is not installed",
            "Deployment is installed",
            "Deployment was attempted to be installed, but has errors",
          },
          type = "string",
        },
        syncer = {
          description = "Deployment state of the syncer pod",
          enum = {
            "DEPLOYMENT_STATE_UNSPECIFIED",
            "NOT_INSTALLED",
            "INSTALLED",
            "ERROR",
          },
          enumDescriptions = {
            "Deployment's state cannot be determined",
            "Deployment is not installed",
            "Deployment is installed",
            "Deployment was attempted to be installed, but has errors",
          },
          type = "string",
        },
      },
      type = "object",
    },
    ConfigManagementConfigSyncState = {
      description = "State information for ConfigSync",
      id = "ConfigManagementConfigSyncState",
      properties = {
        deploymentState = {
          ["$ref"] = "ConfigManagementConfigSyncDeploymentState",
          description = "Information about the deployment of ConfigSync, including the version of the various Pods deployed",
        },
        syncState = {
          ["$ref"] = "ConfigManagementSyncState",
          description = "The state of ConfigSync's process to sync configs to a cluster",
        },
        version = {
          ["$ref"] = "ConfigManagementConfigSyncVersion",
          description = "The version of ConfigSync deployed",
        },
      },
      type = "object",
    },
    ConfigManagementConfigSyncVersion = {
      description = "Specific versioning information pertaining to ConfigSync's Pods",
      id = "ConfigManagementConfigSyncVersion",
      properties = {
        admissionWebhook = {
          description = "Version of the deployed admission_webhook pod",
          type = "string",
        },
        gitSync = {
          description = "Version of the deployed git-sync pod",
          type = "string",
        },
        importer = {
          description = "Version of the deployed importer pod",
          type = "string",
        },
        monitor = {
          description = "Version of the deployed monitor pod",
          type = "string",
        },
        reconcilerManager = {
          description = "Version of the deployed reconciler-manager pod",
          type = "string",
        },
        rootReconciler = {
          description = "Version of the deployed reconciler container in root-reconciler pod",
          type = "string",
        },
        syncer = {
          description = "Version of the deployed syncer pod",
          type = "string",
        },
      },
      type = "object",
    },
    ConfigManagementErrorResource = {
      description = "Model for a config file in the git repo with an associated Sync error",
      id = "ConfigManagementErrorResource",
      properties = {
        resourceGvk = {
          ["$ref"] = "ConfigManagementGroupVersionKind",
          description = "Group/version/kind of the resource that is causing an error",
        },
        resourceName = {
          description = "Metadata name of the resource that is causing an error",
          type = "string",
        },
        resourceNamespace = {
          description = "Namespace of the resource that is causing an error",
          type = "string",
        },
        sourcePath = {
          description = "Path in the git repo of the erroneous config",
          type = "string",
        },
      },
      type = "object",
    },
    ConfigManagementGatekeeperDeploymentState = {
      description = "State of Policy Controller installation.",
      id = "ConfigManagementGatekeeperDeploymentState",
      properties = {
        gatekeeperAudit = {
          description = "Status of gatekeeper-audit deployment.",
          enum = {
            "DEPLOYMENT_STATE_UNSPECIFIED",
            "NOT_INSTALLED",
            "INSTALLED",
            "ERROR",
          },
          enumDescriptions = {
            "Deployment's state cannot be determined",
            "Deployment is not installed",
            "Deployment is installed",
            "Deployment was attempted to be installed, but has errors",
          },
          type = "string",
        },
        gatekeeperControllerManagerState = {
          description = "Status of gatekeeper-controller-manager pod.",
          enum = {
            "DEPLOYMENT_STATE_UNSPECIFIED",
            "NOT_INSTALLED",
            "INSTALLED",
            "ERROR",
          },
          enumDescriptions = {
            "Deployment's state cannot be determined",
            "Deployment is not installed",
            "Deployment is installed",
            "Deployment was attempted to be installed, but has errors",
          },
          type = "string",
        },
        gatekeeperMutation = {
          description = "Status of the pod serving the mutation webhook.",
          enum = {
            "DEPLOYMENT_STATE_UNSPECIFIED",
            "NOT_INSTALLED",
            "INSTALLED",
            "ERROR",
          },
          enumDescriptions = {
            "Deployment's state cannot be determined",
            "Deployment is not installed",
            "Deployment is installed",
            "Deployment was attempted to be installed, but has errors",
          },
          type = "string",
        },
      },
      type = "object",
    },
    ConfigManagementGitConfig = {
      description = "Git repo configuration for a single cluster.",
      id = "ConfigManagementGitConfig",
      properties = {
        gcpServiceAccountEmail = {
          description = "The GCP Service Account Email used for auth when secret_type is gcpServiceAccount.",
          type = "string",
        },
        httpsProxy = {
          description = "URL for the HTTPS proxy to be used when communicating with the Git repo.",
          type = "string",
        },
        policyDir = {
          description = "The path within the Git repository that represents the top level of the repo to sync. Default: the root directory of the repository.",
          type = "string",
        },
        secretType = {
          description = "Type of secret configured for access to the Git repo. Must be one of ssh, cookiefile, gcenode, token, gcpserviceaccount or none. The validation of this is case-sensitive. Required.",
          type = "string",
        },
        syncBranch = {
          description = "The branch of the repository to sync from. Default: master.",
          type = "string",
        },
        syncRepo = {
          description = "The URL of the Git repository to use as the source of truth.",
          type = "string",
        },
        syncRev = {
          description = "Git revision (tag or hash) to check out. Default HEAD.",
          type = "string",
        },
        syncWaitSecs = {
          description = "Period in seconds between consecutive syncs. Default: 15.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    ConfigManagementGroupVersionKind = {
      description = "A Kubernetes object's GVK",
      id = "ConfigManagementGroupVersionKind",
      properties = {
        group = {
          description = "Kubernetes Group",
          type = "string",
        },
        kind = {
          description = "Kubernetes Kind",
          type = "string",
        },
        version = {
          description = "Kubernetes Version",
          type = "string",
        },
      },
      type = "object",
    },
    ConfigManagementHierarchyControllerConfig = {
      description = "Configuration for Hierarchy Controller",
      id = "ConfigManagementHierarchyControllerConfig",
      properties = {
        enableHierarchicalResourceQuota = {
          description = "Whether hierarchical resource quota is enabled in this cluster.",
          type = "boolean",
        },
        enablePodTreeLabels = {
          description = "Whether pod tree labels are enabled in this cluster.",
          type = "boolean",
        },
        enabled = {
          description = "Whether Hierarchy Controller is enabled in this cluster.",
          type = "boolean",
        },
      },
      type = "object",
    },
    ConfigManagementHierarchyControllerDeploymentState = {
      description = "Deployment state for Hierarchy Controller",
      id = "ConfigManagementHierarchyControllerDeploymentState",
      properties = {
        extension = {
          description = "The deployment state for Hierarchy Controller extension (e.g. v0.7.0-hc.1)",
          enum = {
            "DEPLOYMENT_STATE_UNSPECIFIED",
            "NOT_INSTALLED",
            "INSTALLED",
            "ERROR",
          },
          enumDescriptions = {
            "Deployment's state cannot be determined",
            "Deployment is not installed",
            "Deployment is installed",
            "Deployment was attempted to be installed, but has errors",
          },
          type = "string",
        },
        hnc = {
          description = "The deployment state for open source HNC (e.g. v0.7.0-hc.0)",
          enum = {
            "DEPLOYMENT_STATE_UNSPECIFIED",
            "NOT_INSTALLED",
            "INSTALLED",
            "ERROR",
          },
          enumDescriptions = {
            "Deployment's state cannot be determined",
            "Deployment is not installed",
            "Deployment is installed",
            "Deployment was attempted to be installed, but has errors",
          },
          type = "string",
        },
      },
      type = "object",
    },
    ConfigManagementHierarchyControllerState = {
      description = "State for Hierarchy Controller",
      id = "ConfigManagementHierarchyControllerState",
      properties = {
        state = {
          ["$ref"] = "ConfigManagementHierarchyControllerDeploymentState",
          description = "The deployment state for Hierarchy Controller",
        },
        version = {
          ["$ref"] = "ConfigManagementHierarchyControllerVersion",
          description = "The version for Hierarchy Controller",
        },
      },
      type = "object",
    },
    ConfigManagementHierarchyControllerVersion = {
      description = "Version for Hierarchy Controller",
      id = "ConfigManagementHierarchyControllerVersion",
      properties = {
        extension = {
          description = "Version for Hierarchy Controller extension",
          type = "string",
        },
        hnc = {
          description = "Version for open source HNC",
          type = "string",
        },
      },
      type = "object",
    },
    ConfigManagementInstallError = {
      description = "Errors pertaining to the installation of ACM",
      id = "ConfigManagementInstallError",
      properties = {
        errorMessage = {
          description = "A string representing the user facing error message",
          type = "string",
        },
      },
      type = "object",
    },
    ConfigManagementMembershipSpec = {
      description = "**Anthos Config Management**: Configuration for a single cluster. Intended to parallel the ConfigManagement CR.",
      id = "ConfigManagementMembershipSpec",
      properties = {
        configSync = {
          ["$ref"] = "ConfigManagementConfigSync",
          description = "Config Sync configuration for the cluster.",
        },
        hierarchyController = {
          ["$ref"] = "ConfigManagementHierarchyControllerConfig",
          description = "Hierarchy Controller configuration for the cluster.",
        },
        policyController = {
          ["$ref"] = "ConfigManagementPolicyController",
          description = "Policy Controller configuration for the cluster.",
        },
        version = {
          description = "Version of ACM installed.",
          type = "string",
        },
      },
      type = "object",
    },
    ConfigManagementMembershipState = {
      description = "**Anthos Config Management**: State for a single cluster.",
      id = "ConfigManagementMembershipState",
      properties = {
        clusterName = {
          description = "The user-defined name for the cluster used by ClusterSelectors to group clusters together. This should match Membership's membership_name, unless the user installed ACM on the cluster manually prior to enabling the ACM hub feature. Unique within a Anthos Config Management installation.",
          type = "string",
        },
        configSyncState = {
          ["$ref"] = "ConfigManagementConfigSyncState",
          description = "Current sync status",
        },
        hierarchyControllerState = {
          ["$ref"] = "ConfigManagementHierarchyControllerState",
          description = "Hierarchy Controller status",
        },
        membershipSpec = {
          ["$ref"] = "ConfigManagementMembershipSpec",
          description = "Membership configuration in the cluster. This represents the actual state in the cluster, while the MembershipSpec in the FeatureSpec represents the intended state",
        },
        operatorState = {
          ["$ref"] = "ConfigManagementOperatorState",
          description = "Current install status of ACM's Operator",
        },
        policyControllerState = {
          ["$ref"] = "ConfigManagementPolicyControllerState",
          description = "PolicyController status",
        },
      },
      type = "object",
    },
    ConfigManagementOciConfig = {
      description = "OCI repo configuration for a single cluster",
      id = "ConfigManagementOciConfig",
      properties = {
        gcpServiceAccountEmail = {
          description = "The GCP Service Account Email used for auth when secret_type is gcpServiceAccount.",
          type = "string",
        },
        policyDir = {
          description = "The absolute path of the directory that contains the local resources. Default: the root directory of the image.",
          type = "string",
        },
        secretType = {
          description = "Type of secret configured for access to the Git repo.",
          type = "string",
        },
        syncRepo = {
          description = "The OCI image repository URL for the package to sync from. e.g. `LOCATION-docker.pkg.dev/PROJECT_ID/REPOSITORY_NAME/PACKAGE_NAME`.",
          type = "string",
        },
        syncWaitSecs = {
          description = "Period in seconds between consecutive syncs. Default: 15.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    ConfigManagementOperatorState = {
      description = "State information for an ACM's Operator",
      id = "ConfigManagementOperatorState",
      properties = {
        deploymentState = {
          description = "The state of the Operator's deployment",
          enum = {
            "DEPLOYMENT_STATE_UNSPECIFIED",
            "NOT_INSTALLED",
            "INSTALLED",
            "ERROR",
          },
          enumDescriptions = {
            "Deployment's state cannot be determined",
            "Deployment is not installed",
            "Deployment is installed",
            "Deployment was attempted to be installed, but has errors",
          },
          type = "string",
        },
        errors = {
          description = "Install errors.",
          items = {
            ["$ref"] = "ConfigManagementInstallError",
          },
          type = "array",
        },
        version = {
          description = "The semenatic version number of the operator",
          type = "string",
        },
      },
      type = "object",
    },
    ConfigManagementPolicyController = {
      description = "Configuration for Policy Controller",
      id = "ConfigManagementPolicyController",
      properties = {
        auditIntervalSeconds = {
          description = "Sets the interval for Policy Controller Audit Scans (in seconds). When set to 0, this disables audit functionality altogether.",
          format = "int64",
          type = "string",
        },
        enabled = {
          description = "Enables the installation of Policy Controller. If false, the rest of PolicyController fields take no effect.",
          type = "boolean",
        },
        exemptableNamespaces = {
          description = "The set of namespaces that are excluded from Policy Controller checks. Namespaces do not need to currently exist on the cluster.",
          items = {
            type = "string",
          },
          type = "array",
        },
        logDeniesEnabled = {
          description = "Logs all denies and dry run failures.",
          type = "boolean",
        },
        monitoring = {
          ["$ref"] = "ConfigManagementPolicyControllerMonitoring",
          description = "Monitoring specifies the configuration of monitoring.",
        },
        mutationEnabled = {
          description = "Enable or disable mutation in policy controller. If true, mutation CRDs, webhook and controller deployment will be deployed to the cluster.",
          type = "boolean",
        },
        referentialRulesEnabled = {
          description = "Enables the ability to use Constraint Templates that reference to objects other than the object currently being evaluated.",
          type = "boolean",
        },
        templateLibraryInstalled = {
          description = "Installs the default template library along with Policy Controller.",
          type = "boolean",
        },
      },
      type = "object",
    },
    ConfigManagementPolicyControllerMonitoring = {
      description = "PolicyControllerMonitoring specifies the backends Policy Controller should export metrics to. For example, to specify metrics should be exported to Cloud Monitoring and Prometheus, specify backends: [\"cloudmonitoring\", \"prometheus\"]",
      id = "ConfigManagementPolicyControllerMonitoring",
      properties = {
        backends = {
          description = "Specifies the list of backends Policy Controller will export to. An empty list would effectively disable metrics export.",
          items = {
            enum = {
              "MONITORING_BACKEND_UNSPECIFIED",
              "PROMETHEUS",
              "CLOUD_MONITORING",
            },
            enumDescriptions = {
              "Backend cannot be determined",
              "Prometheus backend for monitoring",
              "Stackdriver/Cloud Monitoring backend for monitoring",
            },
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ConfigManagementPolicyControllerState = {
      description = "State for PolicyControllerState.",
      id = "ConfigManagementPolicyControllerState",
      properties = {
        deploymentState = {
          ["$ref"] = "ConfigManagementGatekeeperDeploymentState",
          description = "The state about the policy controller installation.",
        },
        version = {
          ["$ref"] = "ConfigManagementPolicyControllerVersion",
          description = "The version of Gatekeeper Policy Controller deployed.",
        },
      },
      type = "object",
    },
    ConfigManagementPolicyControllerVersion = {
      description = "The build version of Gatekeeper Policy Controller is using.",
      id = "ConfigManagementPolicyControllerVersion",
      properties = {
        version = {
          description = "The gatekeeper image tag that is composed of ACM version, git tag, build number.",
          type = "string",
        },
      },
      type = "object",
    },
    ConfigManagementSyncError = {
      description = "An ACM created error representing a problem syncing configurations",
      id = "ConfigManagementSyncError",
      properties = {
        code = {
          description = "An ACM defined error code",
          type = "string",
        },
        errorMessage = {
          description = "A description of the error",
          type = "string",
        },
        errorResources = {
          description = "A list of config(s) associated with the error, if any",
          items = {
            ["$ref"] = "ConfigManagementErrorResource",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ConfigManagementSyncState = {
      description = "State indicating an ACM's progress syncing configurations to a cluster",
      id = "ConfigManagementSyncState",
      properties = {
        code = {
          description = "Sync status code",
          enum = {
            "SYNC_CODE_UNSPECIFIED",
            "SYNCED",
            "PENDING",
            "ERROR",
            "NOT_CONFIGURED",
            "NOT_INSTALLED",
            "UNAUTHORIZED",
            "UNREACHABLE",
          },
          enumDescriptions = {
            "ACM cannot determine a sync code",
            "ACM successfully synced the git Repo with the cluster",
            "ACM is in the progress of syncing a new change",
            "Indicates an error configuring ACM, and user action is required",
            "ACM has been installed (operator manifest deployed), but not configured.",
            "ACM has not been installed (no operator pod found)",
            "Error authorizing with the cluster",
            "Cluster could not be reached",
          },
          type = "string",
        },
        errors = {
          description = "A list of errors resulting from problematic configs. This list will be truncated after 100 errors, although it is unlikely for that many errors to simultaneously exist.",
          items = {
            ["$ref"] = "ConfigManagementSyncError",
          },
          type = "array",
        },
        importToken = {
          description = "Token indicating the state of the importer.",
          type = "string",
        },
        lastSync = {
          description = "Deprecated: use last_sync_time instead. Timestamp of when ACM last successfully synced the repo The time format is specified in https://golang.org/pkg/time/#Time.String",
          type = "string",
        },
        lastSyncTime = {
          description = "Timestamp type of when ACM last successfully synced the repo",
          format = "google-datetime",
          type = "string",
        },
        sourceToken = {
          description = "Token indicating the state of the repo.",
          type = "string",
        },
        syncToken = {
          description = "Token indicating the state of the syncer.",
          type = "string",
        },
      },
      type = "object",
    },
    ConnectAgentResource = {
      description = "ConnectAgentResource represents a Kubernetes resource manifest for Connect Agent deployment.",
      id = "ConnectAgentResource",
      properties = {
        manifest = {
          description = "YAML manifest of the resource.",
          type = "string",
        },
        type = {
          ["$ref"] = "TypeMeta",
          description = "Kubernetes type of the resource.",
        },
      },
      type = "object",
    },
    EdgeCluster = {
      description = "EdgeCluster contains information specific to Google Edge Clusters.",
      id = "EdgeCluster",
      properties = {
        resourceLink = {
          description = "Immutable. Self-link of the GCP resource for the Edge Cluster. For example: //edgecontainer.googleapis.com/projects/my-project/locations/us-west1-a/clusters/my-cluster",
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
    Feature = {
      description = "Feature represents the settings and status of any Hub Feature.",
      id = "Feature",
      properties = {
        createTime = {
          description = "Output only. When the Feature resource was created.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        deleteTime = {
          description = "Output only. When the Feature resource was deleted.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "GCP labels for this Feature.",
          type = "object",
        },
        membershipSpecs = {
          additionalProperties = {
            ["$ref"] = "MembershipFeatureSpec",
          },
          description = "Optional. Membership-specific configuration for this Feature. If this Feature does not support any per-Membership configuration, this field may be unused. The keys indicate which Membership the configuration is for, in the form: `projects/{p}/locations/{l}/memberships/{m}` Where {p} is the project, {l} is a valid location and {m} is a valid Membership in this project at that location. {p} WILL match the Feature's project. {p} will always be returned as the project number, but the project ID is also accepted during input. If the same Membership is specified in the map twice (using the project ID form, and the project number form), exactly ONE of the entries will be saved, with no guarantees as to which. For this reason, it is recommended the same format be used for all entries when mutating a Feature.",
          type = "object",
        },
        membershipStates = {
          additionalProperties = {
            ["$ref"] = "MembershipFeatureState",
          },
          description = "Output only. Membership-specific Feature status. If this Feature does report any per-Membership status, this field may be unused. The keys indicate which Membership the state is for, in the form: `projects/{p}/locations/{l}/memberships/{m}` Where {p} is the project number, {l} is a valid location and {m} is a valid Membership in this project at that location. {p} MUST match the Feature's project number.",
          readOnly = true,
          type = "object",
        },
        name = {
          description = "Output only. The full, unique name of this Feature resource in the format `projects/*/locations/*/features/*`.",
          readOnly = true,
          type = "string",
        },
        resourceState = {
          ["$ref"] = "FeatureResourceState",
          description = "Output only. State of the Feature resource itself.",
          readOnly = true,
        },
        scopeSpecs = {
          additionalProperties = {
            ["$ref"] = "ScopeFeatureSpec",
          },
          description = "Optional. Scope-specific configuration for this Feature. If this Feature does not support any per-Scope configuration, this field may be unused. The keys indicate which Scope the configuration is for, in the form: `projects/{p}/locations/global/scopes/{s}` Where {p} is the project, {s} is a valid Scope in this project. {p} WILL match the Feature's project. {p} will always be returned as the project number, but the project ID is also accepted during input. If the same Scope is specified in the map twice (using the project ID form, and the project number form), exactly ONE of the entries will be saved, with no guarantees as to which. For this reason, it is recommended the same format be used for all entries when mutating a Feature.",
          type = "object",
        },
        scopeStates = {
          additionalProperties = {
            ["$ref"] = "ScopeFeatureState",
          },
          description = "Output only. Scope-specific Feature status. If this Feature does report any per-Scope status, this field may be unused. The keys indicate which Scope the state is for, in the form: `projects/{p}/locations/global/scopes/{s}` Where {p} is the project, {s} is a valid Scope in this project. {p} WILL match the Feature's project.",
          readOnly = true,
          type = "object",
        },
        spec = {
          ["$ref"] = "CommonFeatureSpec",
          description = "Optional. Hub-wide Feature configuration. If this Feature does not support any Hub-wide configuration, this field may be unused.",
        },
        state = {
          ["$ref"] = "CommonFeatureState",
          description = "Output only. The Hub-wide Feature state.",
          readOnly = true,
        },
        updateTime = {
          description = "Output only. When the Feature resource was last updated.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    FeatureResourceState = {
      description = "FeatureResourceState describes the state of a Feature *resource* in the GkeHub API. See `FeatureState` for the \"running state\" of the Feature in the Hub and across Memberships.",
      id = "FeatureResourceState",
      properties = {
        state = {
          description = "The current state of the Feature resource in the Hub API.",
          enum = {
            "STATE_UNSPECIFIED",
            "ENABLING",
            "ACTIVE",
            "DISABLING",
            "UPDATING",
            "SERVICE_UPDATING",
          },
          enumDescriptions = {
            "State is unknown or not set.",
            "The Feature is being enabled, and the Feature resource is being created. Once complete, the corresponding Feature will be enabled in this Hub.",
            "The Feature is enabled in this Hub, and the Feature resource is fully available.",
            "The Feature is being disabled in this Hub, and the Feature resource is being deleted.",
            "The Feature resource is being updated.",
            "The Feature resource is being updated by the Hub Service.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    FeatureState = {
      description = "FeatureState describes the high-level state of a Feature. It may be used to describe a Feature's state at the environ-level, or per-membershop, depending on the context.",
      id = "FeatureState",
      properties = {
        code = {
          description = "The high-level, machine-readable status of this Feature.",
          enum = {
            "CODE_UNSPECIFIED",
            "OK",
            "WARNING",
            "ERROR",
          },
          enumDescriptions = {
            "Unknown or not set.",
            "The Feature is operating normally.",
            "The Feature has encountered an issue, and is operating in a degraded state. The Feature may need intervention to return to normal operation. See the description and any associated Feature-specific details for more information.",
            "The Feature is not operating or is in a severely degraded state. The Feature may need intervention to return to normal operation. See the description and any associated Feature-specific details for more information.",
          },
          type = "string",
        },
        description = {
          description = "A human-readable description of the current status.",
          type = "string",
        },
        updateTime = {
          description = "The time this status and any related Feature-specific details were updated.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    FleetObservabilityFeatureSpec = {
      description = "**Fleet Observability**: The Hub-wide input for the FleetObservability feature.",
      id = "FleetObservabilityFeatureSpec",
      properties = {},
      type = "object",
    },
    FleetObservabilityFeatureState = {
      description = "**FleetObservability**: An empty state left as an example Hub-wide Feature state.",
      id = "FleetObservabilityFeatureState",
      properties = {},
      type = "object",
    },
    FleetObservabilityMembershipSpec = {
      description = "**FleetObservability**: The membership-specific input for FleetObservability feature.",
      id = "FleetObservabilityMembershipSpec",
      properties = {},
      type = "object",
    },
    FleetObservabilityMembershipState = {
      description = "**FleetObservability**: An empty state left as an example membership-specific Feature state.",
      id = "FleetObservabilityMembershipState",
      properties = {},
      type = "object",
    },
    GenerateConnectManifestResponse = {
      description = "GenerateConnectManifestResponse contains manifest information for installing/upgrading a Connect agent.",
      id = "GenerateConnectManifestResponse",
      properties = {
        manifest = {
          description = "The ordered list of Kubernetes resources that need to be applied to the cluster for GKE Connect agent installation/upgrade.",
          items = {
            ["$ref"] = "ConnectAgentResource",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GkeCluster = {
      description = "GkeCluster contains information specific to GKE clusters.",
      id = "GkeCluster",
      properties = {
        clusterMissing = {
          description = "Output only. If cluster_missing is set then it denotes that the GKE cluster no longer exists in the GKE Control Plane.",
          readOnly = true,
          type = "boolean",
        },
        resourceLink = {
          description = "Immutable. Self-link of the GCP resource for the GKE cluster. For example: //container.googleapis.com/projects/my-project/locations/us-west1-a/clusters/my-cluster Zonal clusters are also supported.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleRpcStatus = {
      description = "The `Status` type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by [gRPC](https://github.com/grpc). Each `Status` message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the [API Design Guide](https://cloud.google.com/apis/design/errors).",
      id = "GoogleRpcStatus",
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
    IdentityServiceAuthMethod = {
      description = "Configuration of an auth method for a member/cluster. Only one authentication method (e.g., OIDC and LDAP) can be set per AuthMethod.",
      id = "IdentityServiceAuthMethod",
      properties = {
        azureadConfig = {
          ["$ref"] = "IdentityServiceAzureADConfig",
          description = "AzureAD specific Configuration.",
        },
        googleConfig = {
          ["$ref"] = "IdentityServiceGoogleConfig",
          description = "GoogleConfig specific configuration",
        },
        name = {
          description = "Identifier for auth config.",
          type = "string",
        },
        oidcConfig = {
          ["$ref"] = "IdentityServiceOidcConfig",
          description = "OIDC specific configuration.",
        },
        proxy = {
          description = "Proxy server address to use for auth method.",
          type = "string",
        },
      },
      type = "object",
    },
    IdentityServiceAzureADConfig = {
      description = "Configuration for the AzureAD Auth flow.",
      id = "IdentityServiceAzureADConfig",
      properties = {
        clientId = {
          description = "ID for the registered client application that makes authentication requests to the Azure AD identity provider.",
          type = "string",
        },
        clientSecret = {
          description = "Input only. Unencrypted AzureAD client secret will be passed to the GKE Hub CLH.",
          type = "string",
        },
        encryptedClientSecret = {
          description = "Output only. Encrypted AzureAD client secret.",
          format = "byte",
          readOnly = true,
          type = "string",
        },
        kubectlRedirectUri = {
          description = "The redirect URL that kubectl uses for authorization.",
          type = "string",
        },
        tenant = {
          description = "Kind of Azure AD account to be authenticated. Supported values are or for accounts belonging to a specific tenant.",
          type = "string",
        },
      },
      type = "object",
    },
    IdentityServiceGoogleConfig = {
      description = "Configuration for the Google Plugin Auth flow.",
      id = "IdentityServiceGoogleConfig",
      properties = {
        disable = {
          description = "Disable automatic configuration of Google Plugin on supported platforms.",
          type = "boolean",
        },
      },
      type = "object",
    },
    IdentityServiceMembershipSpec = {
      description = "**Anthos Identity Service**: Configuration for a single Membership.",
      id = "IdentityServiceMembershipSpec",
      properties = {
        authMethods = {
          description = "A member may support multiple auth methods.",
          items = {
            ["$ref"] = "IdentityServiceAuthMethod",
          },
          type = "array",
        },
      },
      type = "object",
    },
    IdentityServiceMembershipState = {
      description = "**Anthos Identity Service**: State for a single Membership.",
      id = "IdentityServiceMembershipState",
      properties = {
        failureReason = {
          description = "The reason of the failure.",
          type = "string",
        },
        installedVersion = {
          description = "Installed AIS version. This is the AIS version installed on this member. The values makes sense iff state is OK.",
          type = "string",
        },
        memberConfig = {
          ["$ref"] = "IdentityServiceMembershipSpec",
          description = "Last reconciled membership configuration",
        },
        state = {
          description = "Deployment state on this member",
          enum = {
            "DEPLOYMENT_STATE_UNSPECIFIED",
            "OK",
            "ERROR",
          },
          enumDescriptions = {
            "Unspecified state",
            "deployment succeeds",
            "Failure with error.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    IdentityServiceOidcConfig = {
      description = "Configuration for OIDC Auth flow.",
      id = "IdentityServiceOidcConfig",
      properties = {
        certificateAuthorityData = {
          description = "PEM-encoded CA for OIDC provider.",
          type = "string",
        },
        clientId = {
          description = "ID for OIDC client application.",
          type = "string",
        },
        clientSecret = {
          description = "Input only. Unencrypted OIDC client secret will be passed to the GKE Hub CLH.",
          type = "string",
        },
        deployCloudConsoleProxy = {
          description = "Flag to denote if reverse proxy is used to connect to auth provider. This flag should be set to true when provider is not reachable by Google Cloud Console.",
          type = "boolean",
        },
        enableAccessToken = {
          description = "Enable access token.",
          type = "boolean",
        },
        encryptedClientSecret = {
          description = "Output only. Encrypted OIDC Client secret",
          format = "byte",
          readOnly = true,
          type = "string",
        },
        extraParams = {
          description = "Comma-separated list of key-value pairs.",
          type = "string",
        },
        groupPrefix = {
          description = "Prefix to prepend to group name.",
          type = "string",
        },
        groupsClaim = {
          description = "Claim in OIDC ID token that holds group information.",
          type = "string",
        },
        issuerUri = {
          description = "URI for the OIDC provider. This should point to the level below .well-known/openid-configuration.",
          type = "string",
        },
        kubectlRedirectUri = {
          description = "Registered redirect uri to redirect users going through OAuth flow using kubectl plugin.",
          type = "string",
        },
        scopes = {
          description = "Comma-separated list of identifiers.",
          type = "string",
        },
        userClaim = {
          description = "Claim in OIDC ID token that holds username.",
          type = "string",
        },
        userPrefix = {
          description = "Prefix to prepend to user name.",
          type = "string",
        },
      },
      type = "object",
    },
    KubernetesMetadata = {
      description = "KubernetesMetadata provides informational metadata for Memberships representing Kubernetes clusters.",
      id = "KubernetesMetadata",
      properties = {
        kubernetesApiServerVersion = {
          description = "Output only. Kubernetes API server version string as reported by `/version`.",
          readOnly = true,
          type = "string",
        },
        memoryMb = {
          description = "Output only. The total memory capacity as reported by the sum of all Kubernetes nodes resources, defined in MB.",
          format = "int32",
          readOnly = true,
          type = "integer",
        },
        nodeCount = {
          description = "Output only. Node count as reported by Kubernetes nodes resources.",
          format = "int32",
          readOnly = true,
          type = "integer",
        },
        nodeProviderId = {
          description = "Output only. Node providerID as reported by the first node in the list of nodes on the Kubernetes endpoint. On Kubernetes platforms that support zero-node clusters (like GKE-on-GCP), the node_count will be zero and the node_provider_id will be empty.",
          readOnly = true,
          type = "string",
        },
        updateTime = {
          description = "Output only. The time at which these details were last updated. This update_time is different from the Membership-level update_time since EndpointDetails are updated internally for API consumers.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        vcpuCount = {
          description = "Output only. vCPU count as reported by Kubernetes nodes resources.",
          format = "int32",
          readOnly = true,
          type = "integer",
        },
      },
      type = "object",
    },
    KubernetesResource = {
      description = "KubernetesResource contains the YAML manifests and configuration for Membership Kubernetes resources in the cluster. After CreateMembership or UpdateMembership, these resources should be re-applied in the cluster.",
      id = "KubernetesResource",
      properties = {
        connectResources = {
          description = "Output only. The Kubernetes resources for installing the GKE Connect agent This field is only populated in the Membership returned from a successful long-running operation from CreateMembership or UpdateMembership. It is not populated during normal GetMembership or ListMemberships requests. To get the resource manifest after the initial registration, the caller should make a UpdateMembership call with an empty field mask.",
          items = {
            ["$ref"] = "ResourceManifest",
          },
          readOnly = true,
          type = "array",
        },
        membershipCrManifest = {
          description = "Input only. The YAML representation of the Membership CR. This field is ignored for GKE clusters where Hub can read the CR directly. Callers should provide the CR that is currently present in the cluster during CreateMembership or UpdateMembership, or leave this field empty if none exists. The CR manifest is used to validate the cluster has not been registered with another Membership.",
          type = "string",
        },
        membershipResources = {
          description = "Output only. Additional Kubernetes resources that need to be applied to the cluster after Membership creation, and after every update. This field is only populated in the Membership returned from a successful long-running operation from CreateMembership or UpdateMembership. It is not populated during normal GetMembership or ListMemberships requests. To get the resource manifest after the initial registration, the caller should make a UpdateMembership call with an empty field mask.",
          items = {
            ["$ref"] = "ResourceManifest",
          },
          readOnly = true,
          type = "array",
        },
        resourceOptions = {
          ["$ref"] = "ResourceOptions",
          description = "Optional. Options for Kubernetes resource generation.",
        },
      },
      type = "object",
    },
    ListFeaturesResponse = {
      description = "Response message for the `GkeHub.ListFeatures` method.",
      id = "ListFeaturesResponse",
      properties = {
        nextPageToken = {
          description = "A token to request the next page of resources from the `ListFeatures` method. The value of an empty string means that there are no more resources to return.",
          type = "string",
        },
        resources = {
          description = "The list of matching Features",
          items = {
            ["$ref"] = "Feature",
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
    ListMembershipsResponse = {
      description = "Response message for the `GkeHub.ListMemberships` method.",
      id = "ListMembershipsResponse",
      properties = {
        nextPageToken = {
          description = "A token to request the next page of resources from the `ListMemberships` method. The value of an empty string means that there are no more resources to return.",
          type = "string",
        },
        resources = {
          description = "The list of matching Memberships.",
          items = {
            ["$ref"] = "Membership",
          },
          type = "array",
        },
        unreachable = {
          description = "List of locations that could not be reached while fetching this list.",
          items = {
            type = "string",
          },
          type = "array",
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
    Membership = {
      description = "Membership contains information about a member cluster.",
      id = "Membership",
      properties = {
        authority = {
          ["$ref"] = "Authority",
          description = "Optional. How to identify workloads from this Membership. See the documentation on Workload Identity for more details: https://cloud.google.com/kubernetes-engine/docs/how-to/workload-identity",
        },
        createTime = {
          description = "Output only. When the Membership was created.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        deleteTime = {
          description = "Output only. When the Membership was deleted.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        description = {
          description = "Output only. Description of this membership, limited to 63 characters. Must match the regex: `a-zA-Z0-9*` This field is present for legacy purposes.",
          readOnly = true,
          type = "string",
        },
        endpoint = {
          ["$ref"] = "MembershipEndpoint",
          description = "Optional. Endpoint information to reach this member.",
        },
        externalId = {
          description = "Optional. An externally-generated and managed ID for this Membership. This ID may be modified after creation, but this is not recommended. The ID must match the regex: `a-zA-Z0-9*` If this Membership represents a Kubernetes cluster, this value should be set to the UID of the `kube-system` namespace object.",
          type = "string",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "Optional. GCP labels for this membership.",
          type = "object",
        },
        lastConnectionTime = {
          description = "Output only. For clusters using Connect, the timestamp of the most recent connection established with Google Cloud. This time is updated every several minutes, not continuously. For clusters that do not use GKE Connect, or that have never connected successfully, this field will be unset.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        name = {
          description = "Output only. The full, unique name of this Membership resource in the format `projects/*/locations/*/memberships/{membership_id}`, set during creation. `membership_id` must be a valid RFC 1123 compliant DNS label: 1. At most 63 characters in length 2. It must consist of lower case alphanumeric characters or `-` 3. It must start and end with an alphanumeric character Which can be expressed as the regex: `[a-z0-9]([-a-z0-9]*[a-z0-9])?`, with a maximum length of 63 characters.",
          readOnly = true,
          type = "string",
        },
        state = {
          ["$ref"] = "MembershipState",
          description = "Output only. State of the Membership resource.",
          readOnly = true,
        },
        uniqueId = {
          description = "Output only. Google-generated UUID for this resource. This is unique across all Membership resources. If a Membership resource is deleted and another resource with the same name is created, it gets a different unique_id.",
          readOnly = true,
          type = "string",
        },
        updateTime = {
          description = "Output only. When the Membership was last updated.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    MembershipEndpoint = {
      description = "MembershipEndpoint contains information needed to contact a Kubernetes API, endpoint and any additional Kubernetes metadata.",
      id = "MembershipEndpoint",
      properties = {
        applianceCluster = {
          ["$ref"] = "ApplianceCluster",
          description = "Optional. Specific information for a GDC Edge Appliance cluster.",
        },
        edgeCluster = {
          ["$ref"] = "EdgeCluster",
          description = "Optional. Specific information for a Google Edge cluster.",
        },
        gkeCluster = {
          ["$ref"] = "GkeCluster",
          description = "Optional. Specific information for a GKE-on-GCP cluster.",
        },
        kubernetesMetadata = {
          ["$ref"] = "KubernetesMetadata",
          description = "Output only. Useful Kubernetes-specific metadata.",
          readOnly = true,
        },
        kubernetesResource = {
          ["$ref"] = "KubernetesResource",
          description = "Optional. The in-cluster Kubernetes Resources that should be applied for a correctly registered cluster, in the steady state. These resources: * Ensure that the cluster is exclusively registered to one and only one Hub Membership. * Propagate Workload Pool Information available in the Membership Authority field. * Ensure proper initial configuration of default Hub Features.",
        },
        multiCloudCluster = {
          ["$ref"] = "MultiCloudCluster",
          description = "Optional. Specific information for a GKE Multi-Cloud cluster.",
        },
        onPremCluster = {
          ["$ref"] = "OnPremCluster",
          description = "Optional. Specific information for a GKE On-Prem cluster. An onprem user-cluster who has no resourceLink is not allowed to use this field, it should have a nil \"type\" instead.",
        },
      },
      type = "object",
    },
    MembershipFeatureSpec = {
      description = "MembershipFeatureSpec contains configuration information for a single Membership.",
      id = "MembershipFeatureSpec",
      properties = {
        configmanagement = {
          ["$ref"] = "ConfigManagementMembershipSpec",
          description = "Config Management-specific spec.",
        },
        fleetInherited = {
          description = "True if value of `feature_spec` was inherited from a fleet-level default.",
          type = "boolean",
        },
        fleetobservability = {
          ["$ref"] = "FleetObservabilityMembershipSpec",
          description = "Fleet observability membership spec",
        },
        identityservice = {
          ["$ref"] = "IdentityServiceMembershipSpec",
          description = "Identity Service-specific spec.",
        },
        mesh = {
          ["$ref"] = "ServiceMeshMembershipSpec",
          description = "Anthos Service Mesh-specific spec",
        },
      },
      type = "object",
    },
    MembershipFeatureState = {
      description = "MembershipFeatureState contains Feature status information for a single Membership.",
      id = "MembershipFeatureState",
      properties = {
        appdevexperience = {
          ["$ref"] = "AppDevExperienceFeatureState",
          description = "Appdevexperience specific state.",
        },
        configmanagement = {
          ["$ref"] = "ConfigManagementMembershipState",
          description = "Config Management-specific state.",
        },
        fleetobservability = {
          ["$ref"] = "FleetObservabilityMembershipState",
          description = "Fleet observability membership state.",
        },
        identityservice = {
          ["$ref"] = "IdentityServiceMembershipState",
          description = "Identity Service-specific state.",
        },
        servicemesh = {
          ["$ref"] = "ServiceMeshMembershipState",
          description = "Service Mesh-specific state.",
        },
        state = {
          ["$ref"] = "FeatureState",
          description = "The high-level state of this Feature for a single membership.",
        },
      },
      type = "object",
    },
    MembershipState = {
      description = "MembershipState describes the state of a Membership resource.",
      id = "MembershipState",
      properties = {
        code = {
          description = "Output only. The current state of the Membership resource.",
          enum = {
            "CODE_UNSPECIFIED",
            "CREATING",
            "READY",
            "DELETING",
            "UPDATING",
            "SERVICE_UPDATING",
          },
          enumDescriptions = {
            "The code is not set.",
            "The cluster is being registered.",
            "The cluster is registered.",
            "The cluster is being unregistered.",
            "The Membership is being updated.",
            "The Membership is being updated by the Hub Service.",
          },
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    MultiCloudCluster = {
      description = "MultiCloudCluster contains information specific to GKE Multi-Cloud clusters.",
      id = "MultiCloudCluster",
      properties = {
        clusterMissing = {
          description = "Output only. If cluster_missing is set then it denotes that API(gkemulticloud.googleapis.com) resource for this GKE Multi-Cloud cluster no longer exists.",
          readOnly = true,
          type = "boolean",
        },
        resourceLink = {
          description = "Immutable. Self-link of the GCP resource for the GKE Multi-Cloud cluster. For example: //gkemulticloud.googleapis.com/projects/my-project/locations/us-west1-a/awsClusters/my-cluster //gkemulticloud.googleapis.com/projects/my-project/locations/us-west1-a/azureClusters/my-cluster //gkemulticloud.googleapis.com/projects/my-project/locations/us-west1-a/attachedClusters/my-cluster",
          type = "string",
        },
      },
      type = "object",
    },
    MultiClusterIngressFeatureSpec = {
      description = "**Multi-cluster Ingress**: The configuration for the MultiClusterIngress feature.",
      id = "MultiClusterIngressFeatureSpec",
      properties = {
        configMembership = {
          description = "Fully-qualified Membership name which hosts the MultiClusterIngress CRD. Example: `projects/foo-proj/locations/global/memberships/bar`",
          type = "string",
        },
      },
      type = "object",
    },
    OnPremCluster = {
      description = "OnPremCluster contains information specific to GKE On-Prem clusters.",
      id = "OnPremCluster",
      properties = {
        adminCluster = {
          description = "Immutable. Whether the cluster is an admin cluster.",
          type = "boolean",
        },
        clusterMissing = {
          description = "Output only. If cluster_missing is set then it denotes that API(gkeonprem.googleapis.com) resource for this GKE On-Prem cluster no longer exists.",
          readOnly = true,
          type = "boolean",
        },
        clusterType = {
          description = "Immutable. The on prem cluster's type.",
          enum = {
            "CLUSTERTYPE_UNSPECIFIED",
            "BOOTSTRAP",
            "HYBRID",
            "STANDALONE",
            "USER",
          },
          enumDescriptions = {
            "The ClusterType is not set.",
            "The ClusterType is bootstrap cluster.",
            "The ClusterType is baremetal hybrid cluster.",
            "The ClusterType is baremetal standalone cluster.",
            "The ClusterType is user cluster.",
          },
          type = "string",
        },
        resourceLink = {
          description = "Immutable. Self-link of the GCP resource for the GKE On-Prem cluster. For example: //gkeonprem.googleapis.com/projects/my-project/locations/us-west1-a/vmwareClusters/my-cluster //gkeonprem.googleapis.com/projects/my-project/locations/us-west1-a/bareMetalClusters/my-cluster",
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
          ["$ref"] = "GoogleRpcStatus",
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
        cancelRequested = {
          description = "Output only. Identifies whether the user has requested cancellation of the operation. Operations that have successfully been cancelled have Operation.error value with a google.rpc.Status.code of 1, corresponding to `Code.CANCELLED`.",
          readOnly = true,
          type = "boolean",
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
        statusDetail = {
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
    ResourceManifest = {
      description = "ResourceManifest represents a single Kubernetes resource to be applied to the cluster.",
      id = "ResourceManifest",
      properties = {
        clusterScoped = {
          description = "Whether the resource provided in the manifest is `cluster_scoped`. If unset, the manifest is assumed to be namespace scoped. This field is used for REST mapping when applying the resource in a cluster.",
          type = "boolean",
        },
        manifest = {
          description = "YAML manifest of the resource.",
          type = "string",
        },
      },
      type = "object",
    },
    ResourceOptions = {
      description = "ResourceOptions represent options for Kubernetes resource generation.",
      id = "ResourceOptions",
      properties = {
        connectVersion = {
          description = "Optional. The Connect agent version to use for connect_resources. Defaults to the latest GKE Connect version. The version must be a currently supported version, obsolete versions will be rejected.",
          type = "string",
        },
        k8sVersion = {
          description = "Optional. Major version of the Kubernetes cluster. This is only used to determine which version to use for the CustomResourceDefinition resources, `apiextensions/v1beta1` or`apiextensions/v1`.",
          type = "string",
        },
        v1beta1Crd = {
          description = "Optional. Use `apiextensions/v1beta1` instead of `apiextensions/v1` for CustomResourceDefinition resources. This option should be set for clusters with Kubernetes apiserver versions <1.16.",
          type = "boolean",
        },
      },
      type = "object",
    },
    ScopeFeatureSpec = {
      description = "ScopeFeatureSpec contains feature specs for a fleet scope.",
      id = "ScopeFeatureSpec",
      properties = {},
      type = "object",
    },
    ScopeFeatureState = {
      description = "ScopeFeatureState contains Scope-wide Feature status information.",
      id = "ScopeFeatureState",
      properties = {
        state = {
          ["$ref"] = "FeatureState",
          description = "Output only. The \"running state\" of the Feature in this Scope.",
          readOnly = true,
        },
      },
      type = "object",
    },
    ServiceMeshControlPlaneManagement = {
      description = "Status of control plane management.",
      id = "ServiceMeshControlPlaneManagement",
      properties = {
        details = {
          description = "Explanation of state.",
          items = {
            ["$ref"] = "ServiceMeshStatusDetails",
          },
          type = "array",
        },
        state = {
          description = "LifecycleState of control plane management.",
          enum = {
            "LIFECYCLE_STATE_UNSPECIFIED",
            "DISABLED",
            "FAILED_PRECONDITION",
            "PROVISIONING",
            "ACTIVE",
            "STALLED",
            "NEEDS_ATTENTION",
            "DEGRADED",
          },
          enumDescriptions = {
            "Unspecified",
            "DISABLED means that the component is not enabled.",
            "FAILED_PRECONDITION means that provisioning cannot proceed because of some characteristic of the member cluster.",
            "PROVISIONING means that provisioning is in progress.",
            "ACTIVE means that the component is ready for use.",
            "STALLED means that provisioning could not be done.",
            "NEEDS_ATTENTION means that the component is ready, but some user intervention is required. (For example that the user should migrate workloads to a new control plane revision.)",
            "DEGRADED means that the component is ready, but operating in a degraded state.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    ServiceMeshDataPlaneManagement = {
      description = "Status of data plane management. Only reported per-member.",
      id = "ServiceMeshDataPlaneManagement",
      properties = {
        details = {
          description = "Explanation of the status.",
          items = {
            ["$ref"] = "ServiceMeshStatusDetails",
          },
          type = "array",
        },
        state = {
          description = "Lifecycle status of data plane management.",
          enum = {
            "LIFECYCLE_STATE_UNSPECIFIED",
            "DISABLED",
            "FAILED_PRECONDITION",
            "PROVISIONING",
            "ACTIVE",
            "STALLED",
            "NEEDS_ATTENTION",
            "DEGRADED",
          },
          enumDescriptions = {
            "Unspecified",
            "DISABLED means that the component is not enabled.",
            "FAILED_PRECONDITION means that provisioning cannot proceed because of some characteristic of the member cluster.",
            "PROVISIONING means that provisioning is in progress.",
            "ACTIVE means that the component is ready for use.",
            "STALLED means that provisioning could not be done.",
            "NEEDS_ATTENTION means that the component is ready, but some user intervention is required. (For example that the user should migrate workloads to a new control plane revision.)",
            "DEGRADED means that the component is ready, but operating in a degraded state.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    ServiceMeshMembershipSpec = {
      description = "**Service Mesh**: Spec for a single Membership for the servicemesh feature",
      id = "ServiceMeshMembershipSpec",
      properties = {
        controlPlane = {
          description = "Enables automatic control plane management.",
          enum = {
            "CONTROL_PLANE_MANAGEMENT_UNSPECIFIED",
            "AUTOMATIC",
            "MANUAL",
          },
          enumDescriptions = {
            "Unspecified",
            "Google should provision a control plane revision and make it available in the cluster. Google will enroll this revision in a release channel and keep it up to date. The control plane revision may be a managed service, or a managed install.",
            "User will manually configure the control plane (e.g. via CLI, or via the ControlPlaneRevision KRM API)",
          },
          type = "string",
        },
        management = {
          description = "Enables automatic Service Mesh management.",
          enum = {
            "MANAGEMENT_UNSPECIFIED",
            "MANAGEMENT_AUTOMATIC",
            "MANAGEMENT_MANUAL",
          },
          enumDescriptions = {
            "Unspecified",
            "Google should manage my Service Mesh for the cluster.",
            "User will manually configure their service mesh components.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    ServiceMeshMembershipState = {
      description = "**Service Mesh**: State for a single Membership, as analyzed by the Service Mesh Hub Controller.",
      id = "ServiceMeshMembershipState",
      properties = {
        controlPlaneManagement = {
          ["$ref"] = "ServiceMeshControlPlaneManagement",
          description = "Output only. Status of control plane management",
          readOnly = true,
        },
        dataPlaneManagement = {
          ["$ref"] = "ServiceMeshDataPlaneManagement",
          description = "Output only. Status of data plane management.",
          readOnly = true,
        },
      },
      type = "object",
    },
    ServiceMeshStatusDetails = {
      description = "Structured and human-readable details for a status.",
      id = "ServiceMeshStatusDetails",
      properties = {
        code = {
          description = "A machine-readable code that further describes a broad status.",
          type = "string",
        },
        details = {
          description = "Human-readable explanation of code.",
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
    Status = {
      description = "Status specifies state for the subcomponent.",
      id = "Status",
      properties = {
        code = {
          description = "Code specifies AppDevExperienceFeature's subcomponent ready state.",
          enum = {
            "CODE_UNSPECIFIED",
            "OK",
            "FAILED",
            "UNKNOWN",
          },
          enumDescriptions = {
            "Not set.",
            "AppDevExperienceFeature's specified subcomponent is ready.",
            "AppDevExperienceFeature's specified subcomponent ready state is false. This means AppDevExperienceFeature has encountered an issue that blocks all, or a portion, of its normal operation. See the `description` for more details.",
            "AppDevExperienceFeature's specified subcomponent has a pending or unknown state.",
          },
          type = "string",
        },
        description = {
          description = "Description is populated if Code is Failed, explaining why it has failed.",
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
    TypeMeta = {
      description = "TypeMeta is the type information needed for content unmarshalling of Kubernetes resources in the manifest.",
      id = "TypeMeta",
      properties = {
        apiVersion = {
          description = "APIVersion of the resource (e.g. v1).",
          type = "string",
        },
        kind = {
          description = "Kind of the resource (e.g. Deployment).",
          type = "string",
        },
      },
      type = "object",
    },
  },
  servicePath = "",
  title = "GKE Hub API",
  version = "v1",
  version_module = true,
}
