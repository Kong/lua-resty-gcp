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
  baseUrl = "https://healthcare.googleapis.com/",
  batchPath = "batch",
  canonicalName = "Cloud Healthcare",
  description = "Manage, store, and access healthcare data in Google Cloud Platform.",
  discoveryVersion = "v1",
  documentationLink = "https://cloud.google.com/healthcare",
  fullyEncodeReservedExpansion = true,
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "healthcare:v1",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://healthcare.mtls.googleapis.com/",
  name = "healthcare",
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
              id = "healthcare.projects.locations.get",
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
              id = "healthcare.projects.locations.list",
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
            datasets = {
              methods = {
                create = {
                  description = "Creates a new health dataset. Results are returned through the Operation interface which returns either an `Operation.response` which contains a Dataset or `Operation.error`. The metadata field type is OperationMetadata.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/datasets",
                  httpMethod = "POST",
                  id = "healthcare.projects.locations.datasets.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    datasetId = {
                      description = "The ID of the dataset that is being created. The string must match the following regex: `[\\p{L}\\p{N}_\\-\\.]{1,256}`.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "The name of the project where the server creates the dataset. For example, `projects/{project_id}/locations/{location_id}`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/datasets",
                  request = {
                    ["$ref"] = "Dataset",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                deidentify = {
                  description = "Creates a new dataset containing de-identified data from the source dataset. The metadata field type is OperationMetadata. If the request is successful, the response field type is DeidentifySummary. If errors occur, error is set. The LRO result may still be successful if de-identification fails for some DICOM instances. The new de-identified dataset will not contain these failed resources. Failed resource totals are tracked in Operation.metadata. Error details are also logged to Cloud Logging. For more information, see [Viewing error logs in Cloud Logging](https://cloud.google.com/healthcare/docs/how-tos/logging).",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/datasets/{datasetsId}:deidentify",
                  httpMethod = "POST",
                  id = "healthcare.projects.locations.datasets.deidentify",
                  parameterOrder = {
                    "sourceDataset",
                  },
                  parameters = {
                    sourceDataset = {
                      description = "Source dataset resource name. For example, `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/datasets/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+sourceDataset}:deidentify",
                  request = {
                    ["$ref"] = "DeidentifyDatasetRequest",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                delete = {
                  description = "Deletes the specified health dataset and all data contained in the dataset. Deleting a dataset does not affect the sources from which the dataset was imported (if any).",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/datasets/{datasetsId}",
                  httpMethod = "DELETE",
                  id = "healthcare.projects.locations.datasets.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "The name of the dataset to delete. For example, `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/datasets/[^/]+$",
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
                  description = "Gets any metadata associated with a dataset.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/datasets/{datasetsId}",
                  httpMethod = "GET",
                  id = "healthcare.projects.locations.datasets.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "The name of the dataset to read. For example, `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/datasets/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "Dataset",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                getIamPolicy = {
                  description = "Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/datasets/{datasetsId}:getIamPolicy",
                  httpMethod = "GET",
                  id = "healthcare.projects.locations.datasets.getIamPolicy",
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
                      pattern = "^projects/[^/]+/locations/[^/]+/datasets/[^/]+$",
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
                  description = "Lists the health datasets in the current project.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/datasets",
                  httpMethod = "GET",
                  id = "healthcare.projects.locations.datasets.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    pageSize = {
                      description = "The maximum number of items to return. If not specified, 100 is used. May not be larger than 1000.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "The next_page_token value returned from a previous List request, if any.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "The name of the project whose datasets should be listed. For example, `projects/{project_id}/locations/{location_id}`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/datasets",
                  response = {
                    ["$ref"] = "ListDatasetsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                patch = {
                  description = "Updates dataset metadata.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/datasets/{datasetsId}",
                  httpMethod = "PATCH",
                  id = "healthcare.projects.locations.datasets.patch",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Resource name of the dataset, of the form `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/datasets/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    updateMask = {
                      description = "The update mask applies to the resource. For the `FieldMask` definition, see https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#fieldmask",
                      format = "google-fieldmask",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  request = {
                    ["$ref"] = "Dataset",
                  },
                  response = {
                    ["$ref"] = "Dataset",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                setIamPolicy = {
                  description = "Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/datasets/{datasetsId}:setIamPolicy",
                  httpMethod = "POST",
                  id = "healthcare.projects.locations.datasets.setIamPolicy",
                  parameterOrder = {
                    "resource",
                  },
                  parameters = {
                    resource = {
                      description = "REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/datasets/[^/]+$",
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
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/datasets/{datasetsId}:testIamPermissions",
                  httpMethod = "POST",
                  id = "healthcare.projects.locations.datasets.testIamPermissions",
                  parameterOrder = {
                    "resource",
                  },
                  parameters = {
                    resource = {
                      description = "REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/datasets/[^/]+$",
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
                consentStores = {
                  methods = {
                    checkDataAccess = {
                      description = "Checks if a particular data_id of a User data mapping in the specified consent store is consented for the specified use.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/datasets/{datasetsId}/consentStores/{consentStoresId}:checkDataAccess",
                      httpMethod = "POST",
                      id = "healthcare.projects.locations.datasets.consentStores.checkDataAccess",
                      parameterOrder = {
                        "consentStore",
                      },
                      parameters = {
                        consentStore = {
                          description = "Required. Name of the consent store where the requested data_id is stored, of the form `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/consentStores/{consent_store_id}`.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/datasets/[^/]+/consentStores/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+consentStore}:checkDataAccess",
                      request = {
                        ["$ref"] = "CheckDataAccessRequest",
                      },
                      response = {
                        ["$ref"] = "CheckDataAccessResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    create = {
                      description = "Creates a new consent store in the parent dataset. Attempting to create a consent store with the same ID as an existing store fails with an ALREADY_EXISTS error.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/datasets/{datasetsId}/consentStores",
                      httpMethod = "POST",
                      id = "healthcare.projects.locations.datasets.consentStores.create",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        consentStoreId = {
                          description = "Required. The ID of the consent store to create. The string must match the following regex: `[\\p{L}\\p{N}_\\-\\.]{1,256}`. Cannot be changed after creation.",
                          location = "query",
                          type = "string",
                        },
                        parent = {
                          description = "Required. The name of the dataset this consent store belongs to.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/datasets/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/consentStores",
                      request = {
                        ["$ref"] = "ConsentStore",
                      },
                      response = {
                        ["$ref"] = "ConsentStore",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    delete = {
                      description = "Deletes the specified consent store and removes all the consent store's data.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/datasets/{datasetsId}/consentStores/{consentStoresId}",
                      httpMethod = "DELETE",
                      id = "healthcare.projects.locations.datasets.consentStores.delete",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The resource name of the consent store to delete.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/datasets/[^/]+/consentStores/[^/]+$",
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
                    evaluateUserConsents = {
                      description = "Evaluates the user's Consents for all matching User data mappings. Note: User data mappings are indexed asynchronously, which can cause a slight delay between the time mappings are created or updated and when they are included in EvaluateUserConsents results.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/datasets/{datasetsId}/consentStores/{consentStoresId}:evaluateUserConsents",
                      httpMethod = "POST",
                      id = "healthcare.projects.locations.datasets.consentStores.evaluateUserConsents",
                      parameterOrder = {
                        "consentStore",
                      },
                      parameters = {
                        consentStore = {
                          description = "Required. Name of the consent store to retrieve User data mappings from.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/datasets/[^/]+/consentStores/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+consentStore}:evaluateUserConsents",
                      request = {
                        ["$ref"] = "EvaluateUserConsentsRequest",
                      },
                      response = {
                        ["$ref"] = "EvaluateUserConsentsResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    get = {
                      description = "Gets the specified consent store.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/datasets/{datasetsId}/consentStores/{consentStoresId}",
                      httpMethod = "GET",
                      id = "healthcare.projects.locations.datasets.consentStores.get",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The resource name of the consent store to get.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/datasets/[^/]+/consentStores/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}",
                      response = {
                        ["$ref"] = "ConsentStore",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    getIamPolicy = {
                      description = "Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/datasets/{datasetsId}/consentStores/{consentStoresId}:getIamPolicy",
                      httpMethod = "GET",
                      id = "healthcare.projects.locations.datasets.consentStores.getIamPolicy",
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
                          pattern = "^projects/[^/]+/locations/[^/]+/datasets/[^/]+/consentStores/[^/]+$",
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
                      description = "Lists the consent stores in the specified dataset.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/datasets/{datasetsId}/consentStores",
                      httpMethod = "GET",
                      id = "healthcare.projects.locations.datasets.consentStores.list",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        filter = {
                          description = "Optional. Restricts the stores returned to those matching a filter. Only filtering on labels is supported. For example, `filter=labels.key=value`.",
                          location = "query",
                          type = "string",
                        },
                        pageSize = {
                          description = "Optional. Limit on the number of consent stores to return in a single response. If not specified, 100 is used. May not be larger than 1000.",
                          format = "int32",
                          location = "query",
                          type = "integer",
                        },
                        pageToken = {
                          description = "Optional. Token to retrieve the next page of results, or empty to get the first page.",
                          location = "query",
                          type = "string",
                        },
                        parent = {
                          description = "Required. Name of the dataset.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/datasets/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/consentStores",
                      response = {
                        ["$ref"] = "ListConsentStoresResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    patch = {
                      description = "Updates the specified consent store.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/datasets/{datasetsId}/consentStores/{consentStoresId}",
                      httpMethod = "PATCH",
                      id = "healthcare.projects.locations.datasets.consentStores.patch",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Resource name of the consent store, of the form `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/consentStores/{consent_store_id}`. Cannot be changed after creation.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/datasets/[^/]+/consentStores/[^/]+$",
                          required = true,
                          type = "string",
                        },
                        updateMask = {
                          description = "Required. The update mask that applies to the resource. For the `FieldMask` definition, see https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#fieldmask. Only the `labels`, `default_consent_ttl`, and `enable_consent_create_on_update` fields are allowed to be updated.",
                          format = "google-fieldmask",
                          location = "query",
                          type = "string",
                        },
                      },
                      path = "v1/{+name}",
                      request = {
                        ["$ref"] = "ConsentStore",
                      },
                      response = {
                        ["$ref"] = "ConsentStore",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    queryAccessibleData = {
                      description = "Queries all data_ids that are consented for a specified use in the given consent store and writes them to a specified destination. The returned Operation includes a progress counter for the number of User data mappings processed. If the request is successful, a detailed response is returned of type QueryAccessibleDataResponse, contained in the response field when the operation finishes. The metadata field type is OperationMetadata. Errors are logged to Cloud Logging (see [Viewing error logs in Cloud Logging](https://cloud.google.com/healthcare/docs/how-tos/logging)). For example, the following sample log entry shows a `failed to evaluate consent policy` error that occurred during a QueryAccessibleData call to consent store `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/consentStores/{consent_store_id}`. ```json jsonPayload: { @type: \"type.googleapis.com/google.cloud.healthcare.logging.QueryAccessibleDataLogEntry\" error: { code: 9 message: \"failed to evaluate consent policy\" } resourceName: \"projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/consentStores/{consent_store_id}/consents/{consent_id}\" } logName: \"projects/{project_id}/logs/healthcare.googleapis.com%2Fquery_accessible_data\" operation: { id: \"projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/operations/{operation_id}\" producer: \"healthcare.googleapis.com/QueryAccessibleData\" } receiveTimestamp: \"TIMESTAMP\" resource: { labels: { consent_store_id: \"{consent_store_id}\" dataset_id: \"{dataset_id}\" location: \"{location_id}\" project_id: \"{project_id}\" } type: \"healthcare_consent_store\" } severity: \"ERROR\" timestamp: \"TIMESTAMP\" ```",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/datasets/{datasetsId}/consentStores/{consentStoresId}:queryAccessibleData",
                      httpMethod = "POST",
                      id = "healthcare.projects.locations.datasets.consentStores.queryAccessibleData",
                      parameterOrder = {
                        "consentStore",
                      },
                      parameters = {
                        consentStore = {
                          description = "Required. Name of the consent store to retrieve User data mappings from.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/datasets/[^/]+/consentStores/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+consentStore}:queryAccessibleData",
                      request = {
                        ["$ref"] = "QueryAccessibleDataRequest",
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
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/datasets/{datasetsId}/consentStores/{consentStoresId}:setIamPolicy",
                      httpMethod = "POST",
                      id = "healthcare.projects.locations.datasets.consentStores.setIamPolicy",
                      parameterOrder = {
                        "resource",
                      },
                      parameters = {
                        resource = {
                          description = "REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/datasets/[^/]+/consentStores/[^/]+$",
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
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/datasets/{datasetsId}/consentStores/{consentStoresId}:testIamPermissions",
                      httpMethod = "POST",
                      id = "healthcare.projects.locations.datasets.consentStores.testIamPermissions",
                      parameterOrder = {
                        "resource",
                      },
                      parameters = {
                        resource = {
                          description = "REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/datasets/[^/]+/consentStores/[^/]+$",
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
                    attributeDefinitions = {
                      methods = {
                        create = {
                          description = "Creates a new Attribute definition in the parent consent store.",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/datasets/{datasetsId}/consentStores/{consentStoresId}/attributeDefinitions",
                          httpMethod = "POST",
                          id = "healthcare.projects.locations.datasets.consentStores.attributeDefinitions.create",
                          parameterOrder = {
                            "parent",
                          },
                          parameters = {
                            attributeDefinitionId = {
                              description = "Required. The ID of the Attribute definition to create. The string must match the following regex: `_a-zA-Z{0,255}` and must not be a reserved keyword within the Common Expression Language as listed on https://github.com/google/cel-spec/blob/master/doc/langdef.md.",
                              location = "query",
                              type = "string",
                            },
                            parent = {
                              description = "Required. The name of the consent store that this Attribute definition belongs to.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/datasets/[^/]+/consentStores/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v1/{+parent}/attributeDefinitions",
                          request = {
                            ["$ref"] = "AttributeDefinition",
                          },
                          response = {
                            ["$ref"] = "AttributeDefinition",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                          },
                        },
                        delete = {
                          description = "Deletes the specified Attribute definition. Fails if the Attribute definition is referenced by any User data mapping, or the latest revision of any Consent.",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/datasets/{datasetsId}/consentStores/{consentStoresId}/attributeDefinitions/{attributeDefinitionsId}",
                          httpMethod = "DELETE",
                          id = "healthcare.projects.locations.datasets.consentStores.attributeDefinitions.delete",
                          parameterOrder = {
                            "name",
                          },
                          parameters = {
                            name = {
                              description = "Required. The resource name of the Attribute definition to delete. To preserve referential integrity, Attribute definitions referenced by a User data mapping or the latest revision of a Consent cannot be deleted.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/datasets/[^/]+/consentStores/[^/]+/attributeDefinitions/[^/]+$",
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
                          description = "Gets the specified Attribute definition.",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/datasets/{datasetsId}/consentStores/{consentStoresId}/attributeDefinitions/{attributeDefinitionsId}",
                          httpMethod = "GET",
                          id = "healthcare.projects.locations.datasets.consentStores.attributeDefinitions.get",
                          parameterOrder = {
                            "name",
                          },
                          parameters = {
                            name = {
                              description = "Required. The resource name of the Attribute definition to get.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/datasets/[^/]+/consentStores/[^/]+/attributeDefinitions/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v1/{+name}",
                          response = {
                            ["$ref"] = "AttributeDefinition",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                          },
                        },
                        list = {
                          description = "Lists the Attribute definitions in the specified consent store.",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/datasets/{datasetsId}/consentStores/{consentStoresId}/attributeDefinitions",
                          httpMethod = "GET",
                          id = "healthcare.projects.locations.datasets.consentStores.attributeDefinitions.list",
                          parameterOrder = {
                            "parent",
                          },
                          parameters = {
                            filter = {
                              description = "Optional. Restricts the attributes returned to those matching a filter. The only field available for filtering is `category`. For example, `filter=category=\\\"REQUEST\\\"`.",
                              location = "query",
                              type = "string",
                            },
                            pageSize = {
                              description = "Optional. Limit on the number of Attribute definitions to return in a single response. If not specified, 100 is used. May not be larger than 1000.",
                              format = "int32",
                              location = "query",
                              type = "integer",
                            },
                            pageToken = {
                              description = "Optional. Token to retrieve the next page of results or empty to get the first page.",
                              location = "query",
                              type = "string",
                            },
                            parent = {
                              description = "Required. Name of the consent store to retrieve Attribute definitions from.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/datasets/[^/]+/consentStores/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v1/{+parent}/attributeDefinitions",
                          response = {
                            ["$ref"] = "ListAttributeDefinitionsResponse",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                          },
                        },
                        patch = {
                          description = "Updates the specified Attribute definition.",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/datasets/{datasetsId}/consentStores/{consentStoresId}/attributeDefinitions/{attributeDefinitionsId}",
                          httpMethod = "PATCH",
                          id = "healthcare.projects.locations.datasets.consentStores.attributeDefinitions.patch",
                          parameterOrder = {
                            "name",
                          },
                          parameters = {
                            name = {
                              description = "Resource name of the Attribute definition, of the form `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/consentStores/{consent_store_id}/attributeDefinitions/{attribute_definition_id}`. Cannot be changed after creation.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/datasets/[^/]+/consentStores/[^/]+/attributeDefinitions/[^/]+$",
                              required = true,
                              type = "string",
                            },
                            updateMask = {
                              description = "Required. The update mask that applies to the resource. For the `FieldMask` definition, see https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#fieldmask. Only the `description`, `allowed_values`, `consent_default_values` and `data_mapping_default_value` fields can be updated. The updated `allowed_values` must contain all values from the previous `allowed_values`.",
                              format = "google-fieldmask",
                              location = "query",
                              type = "string",
                            },
                          },
                          path = "v1/{+name}",
                          request = {
                            ["$ref"] = "AttributeDefinition",
                          },
                          response = {
                            ["$ref"] = "AttributeDefinition",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                          },
                        },
                      },
                    },
                    consentArtifacts = {
                      methods = {
                        create = {
                          description = "Creates a new Consent artifact in the parent consent store.",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/datasets/{datasetsId}/consentStores/{consentStoresId}/consentArtifacts",
                          httpMethod = "POST",
                          id = "healthcare.projects.locations.datasets.consentStores.consentArtifacts.create",
                          parameterOrder = {
                            "parent",
                          },
                          parameters = {
                            parent = {
                              description = "Required. The name of the consent store this Consent artifact belongs to.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/datasets/[^/]+/consentStores/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v1/{+parent}/consentArtifacts",
                          request = {
                            ["$ref"] = "ConsentArtifact",
                          },
                          response = {
                            ["$ref"] = "ConsentArtifact",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                          },
                        },
                        delete = {
                          description = "Deletes the specified Consent artifact. Fails if the artifact is referenced by the latest revision of any Consent.",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/datasets/{datasetsId}/consentStores/{consentStoresId}/consentArtifacts/{consentArtifactsId}",
                          httpMethod = "DELETE",
                          id = "healthcare.projects.locations.datasets.consentStores.consentArtifacts.delete",
                          parameterOrder = {
                            "name",
                          },
                          parameters = {
                            name = {
                              description = "Required. The resource name of the Consent artifact to delete. To preserve referential integrity, Consent artifacts referenced by the latest revision of a Consent cannot be deleted.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/datasets/[^/]+/consentStores/[^/]+/consentArtifacts/[^/]+$",
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
                          description = "Gets the specified Consent artifact.",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/datasets/{datasetsId}/consentStores/{consentStoresId}/consentArtifacts/{consentArtifactsId}",
                          httpMethod = "GET",
                          id = "healthcare.projects.locations.datasets.consentStores.consentArtifacts.get",
                          parameterOrder = {
                            "name",
                          },
                          parameters = {
                            name = {
                              description = "Required. The resource name of the Consent artifact to retrieve.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/datasets/[^/]+/consentStores/[^/]+/consentArtifacts/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v1/{+name}",
                          response = {
                            ["$ref"] = "ConsentArtifact",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                          },
                        },
                        list = {
                          description = "Lists the Consent artifacts in the specified consent store.",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/datasets/{datasetsId}/consentStores/{consentStoresId}/consentArtifacts",
                          httpMethod = "GET",
                          id = "healthcare.projects.locations.datasets.consentStores.consentArtifacts.list",
                          parameterOrder = {
                            "parent",
                          },
                          parameters = {
                            filter = {
                              description = "Optional. Restricts the artifacts returned to those matching a filter. The following syntax is available: * A string field value can be written as text inside quotation marks, for example `\"query text\"`. The only valid relational operation for text fields is equality (`=`), where text is searched within the field, rather than having the field be equal to the text. For example, `\"Comment = great\"` returns messages with `great` in the comment field. * A number field value can be written as an integer, a decimal, or an exponential. The valid relational operators for number fields are the equality operator (`=`), along with the less than/greater than operators (`<`, `<=`, `>`, `>=`). Note that there is no inequality (`!=`) operator. You can prepend the `NOT` operator to an expression to negate it. * A date field value must be written in `yyyy-mm-dd` form. Fields with date and time use the RFC3339 time format. Leading zeros are required for one-digit months and days. The valid relational operators for date fields are the equality operator (`=`) , along with the less than/greater than operators (`<`, `<=`, `>`, `>=`). Note that there is no inequality (`!=`) operator. You can prepend the `NOT` operator to an expression to negate it. * Multiple field query expressions can be combined in one query by adding `AND` or `OR` operators between the expressions. If a boolean operator appears within a quoted string, it is not treated as special, it's just another part of the character string to be matched. You can prepend the `NOT` operator to an expression to negate it. The fields available for filtering are: - user_id. For example, `filter=user_id=\\\"user123\\\"`. - consent_content_version - metadata. For example, `filter=Metadata(\\\"testkey\\\")=\\\"value\\\"` or `filter=HasMetadata(\\\"testkey\\\")`.",
                              location = "query",
                              type = "string",
                            },
                            pageSize = {
                              description = "Optional. Limit on the number of consent artifacts to return in a single response. If not specified, 100 is used. May not be larger than 1000.",
                              format = "int32",
                              location = "query",
                              type = "integer",
                            },
                            pageToken = {
                              description = "Optional. The next_page_token value returned from the previous List request, if any.",
                              location = "query",
                              type = "string",
                            },
                            parent = {
                              description = "Required. Name of the consent store to retrieve consent artifacts from.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/datasets/[^/]+/consentStores/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v1/{+parent}/consentArtifacts",
                          response = {
                            ["$ref"] = "ListConsentArtifactsResponse",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                          },
                        },
                      },
                    },
                    consents = {
                      methods = {
                        activate = {
                          description = "Activates the latest revision of the specified Consent by committing a new revision with `state` updated to `ACTIVE`. If the latest revision of the specified Consent is in the `ACTIVE` state, no new revision is committed. A FAILED_PRECONDITION error occurs if the latest revision of the specified Consent is in the `REJECTED` or `REVOKED` state.",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/datasets/{datasetsId}/consentStores/{consentStoresId}/consents/{consentsId}:activate",
                          httpMethod = "POST",
                          id = "healthcare.projects.locations.datasets.consentStores.consents.activate",
                          parameterOrder = {
                            "name",
                          },
                          parameters = {
                            name = {
                              description = "Required. The resource name of the Consent to activate, of the form `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/consentStores/{consent_store_id}/consents/{consent_id}`. An INVALID_ARGUMENT error occurs if `revision_id` is specified in the name.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/datasets/[^/]+/consentStores/[^/]+/consents/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v1/{+name}:activate",
                          request = {
                            ["$ref"] = "ActivateConsentRequest",
                          },
                          response = {
                            ["$ref"] = "Consent",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                          },
                        },
                        create = {
                          description = "Creates a new Consent in the parent consent store.",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/datasets/{datasetsId}/consentStores/{consentStoresId}/consents",
                          httpMethod = "POST",
                          id = "healthcare.projects.locations.datasets.consentStores.consents.create",
                          parameterOrder = {
                            "parent",
                          },
                          parameters = {
                            parent = {
                              description = "Required. Name of the consent store.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/datasets/[^/]+/consentStores/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v1/{+parent}/consents",
                          request = {
                            ["$ref"] = "Consent",
                          },
                          response = {
                            ["$ref"] = "Consent",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                          },
                        },
                        delete = {
                          description = "Deletes the Consent and its revisions. To keep a record of the Consent but mark it inactive, see [RevokeConsent]. To delete a revision of a Consent, see [DeleteConsentRevision]. This operation does not delete the related Consent artifact.",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/datasets/{datasetsId}/consentStores/{consentStoresId}/consents/{consentsId}",
                          httpMethod = "DELETE",
                          id = "healthcare.projects.locations.datasets.consentStores.consents.delete",
                          parameterOrder = {
                            "name",
                          },
                          parameters = {
                            name = {
                              description = "Required. The resource name of the Consent to delete, of the form `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/consentStores/{consent_store_id}/consents/{consent_id}`. An INVALID_ARGUMENT error occurs if `revision_id` is specified in the name.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/datasets/[^/]+/consentStores/[^/]+/consents/[^/]+$",
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
                        deleteRevision = {
                          description = "Deletes the specified revision of a Consent. An INVALID_ARGUMENT error occurs if the specified revision is the latest revision.",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/datasets/{datasetsId}/consentStores/{consentStoresId}/consents/{consentsId}:deleteRevision",
                          httpMethod = "DELETE",
                          id = "healthcare.projects.locations.datasets.consentStores.consents.deleteRevision",
                          parameterOrder = {
                            "name",
                          },
                          parameters = {
                            name = {
                              description = "Required. The resource name of the Consent revision to delete, of the form `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/consentStores/{consent_store_id}/consents/{consent_id}@{revision_id}`. An INVALID_ARGUMENT error occurs if `revision_id` is not specified in the name.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/datasets/[^/]+/consentStores/[^/]+/consents/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v1/{+name}:deleteRevision",
                          response = {
                            ["$ref"] = "Empty",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                          },
                        },
                        get = {
                          description = "Gets the specified revision of a Consent, or the latest revision if `revision_id` is not specified in the resource name.",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/datasets/{datasetsId}/consentStores/{consentStoresId}/consents/{consentsId}",
                          httpMethod = "GET",
                          id = "healthcare.projects.locations.datasets.consentStores.consents.get",
                          parameterOrder = {
                            "name",
                          },
                          parameters = {
                            name = {
                              description = "Required. The resource name of the Consent to retrieve, of the form `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/consentStores/{consent_store_id}/consents/{consent_id}`. In order to retrieve a previous revision of the Consent, also provide the revision ID: `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/consentStores/{consent_store_id}/consents/{consent_id}@{revision_id}`",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/datasets/[^/]+/consentStores/[^/]+/consents/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v1/{+name}",
                          response = {
                            ["$ref"] = "Consent",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                          },
                        },
                        list = {
                          description = "Lists the Consent in the given consent store, returning each Consent's latest revision.",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/datasets/{datasetsId}/consentStores/{consentStoresId}/consents",
                          httpMethod = "GET",
                          id = "healthcare.projects.locations.datasets.consentStores.consents.list",
                          parameterOrder = {
                            "parent",
                          },
                          parameters = {
                            filter = {
                              description = "Optional. Restricts the Consents returned to those matching a filter. The following syntax is available: * A string field value can be written as text inside quotation marks, for example `\"query text\"`. The only valid relational operation for text fields is equality (`=`), where text is searched within the field, rather than having the field be equal to the text. For example, `\"Comment = great\"` returns messages with `great` in the comment field. * A number field value can be written as an integer, a decimal, or an exponential. The valid relational operators for number fields are the equality operator (`=`), along with the less than/greater than operators (`<`, `<=`, `>`, `>=`). Note that there is no inequality (`!=`) operator. You can prepend the `NOT` operator to an expression to negate it. * A date field value must be written in `yyyy-mm-dd` form. Fields with date and time use the RFC3339 time format. Leading zeros are required for one-digit months and days. The valid relational operators for date fields are the equality operator (`=`) , along with the less than/greater than operators (`<`, `<=`, `>`, `>=`). Note that there is no inequality (`!=`) operator. You can prepend the `NOT` operator to an expression to negate it. * Multiple field query expressions can be combined in one query by adding `AND` or `OR` operators between the expressions. If a boolean operator appears within a quoted string, it is not treated as special, it's just another part of the character string to be matched. You can prepend the `NOT` operator to an expression to negate it. The fields available for filtering are: - user_id. For example, `filter='user_id=\"user123\"'`. - consent_artifact - state - revision_create_time - metadata. For example, `filter=Metadata(\\\"testkey\\\")=\\\"value\\\"` or `filter=HasMetadata(\\\"testkey\\\")`.",
                              location = "query",
                              type = "string",
                            },
                            pageSize = {
                              description = "Optional. Limit on the number of Consents to return in a single response. If not specified, 100 is used. May not be larger than 1000.",
                              format = "int32",
                              location = "query",
                              type = "integer",
                            },
                            pageToken = {
                              description = "Optional. The next_page_token value returned from the previous List request, if any.",
                              location = "query",
                              type = "string",
                            },
                            parent = {
                              description = "Required. Name of the consent store to retrieve Consents from.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/datasets/[^/]+/consentStores/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v1/{+parent}/consents",
                          response = {
                            ["$ref"] = "ListConsentsResponse",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                          },
                        },
                        listRevisions = {
                          description = "Lists the revisions of the specified Consent in reverse chronological order.",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/datasets/{datasetsId}/consentStores/{consentStoresId}/consents/{consentsId}:listRevisions",
                          httpMethod = "GET",
                          id = "healthcare.projects.locations.datasets.consentStores.consents.listRevisions",
                          parameterOrder = {
                            "name",
                          },
                          parameters = {
                            filter = {
                              description = "Optional. Restricts the revisions returned to those matching a filter. The following syntax is available: * A string field value can be written as text inside quotation marks, for example `\"query text\"`. The only valid relational operation for text fields is equality (`=`), where text is searched within the field, rather than having the field be equal to the text. For example, `\"Comment = great\"` returns messages with `great` in the comment field. * A number field value can be written as an integer, a decimal, or an exponential. The valid relational operators for number fields are the equality operator (`=`), along with the less than/greater than operators (`<`, `<=`, `>`, `>=`). Note that there is no inequality (`!=`) operator. You can prepend the `NOT` operator to an expression to negate it. * A date field value must be written in `yyyy-mm-dd` form. Fields with date and time use the RFC3339 time format. Leading zeros are required for one-digit months and days. The valid relational operators for date fields are the equality operator (`=`) , along with the less than/greater than operators (`<`, `<=`, `>`, `>=`). Note that there is no inequality (`!=`) operator. You can prepend the `NOT` operator to an expression to negate it. * Multiple field query expressions can be combined in one query by adding `AND` or `OR` operators between the expressions. If a boolean operator appears within a quoted string, it is not treated as special, it's just another part of the character string to be matched. You can prepend the `NOT` operator to an expression to negate it. Fields available for filtering are: - user_id. For example, `filter='user_id=\"user123\"'`. - consent_artifact - state - revision_create_time - metadata. For example, `filter=Metadata(\\\"testkey\\\")=\\\"value\\\"` or `filter=HasMetadata(\\\"testkey\\\")`.",
                              location = "query",
                              type = "string",
                            },
                            name = {
                              description = "Required. The resource name of the Consent to retrieve revisions for.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/datasets/[^/]+/consentStores/[^/]+/consents/[^/]+$",
                              required = true,
                              type = "string",
                            },
                            pageSize = {
                              description = "Optional. Limit on the number of revisions to return in a single response. If not specified, 100 is used. May not be larger than 1000.",
                              format = "int32",
                              location = "query",
                              type = "integer",
                            },
                            pageToken = {
                              description = "Optional. Token to retrieve the next page of results or empty if there are no more results in the list.",
                              location = "query",
                              type = "string",
                            },
                          },
                          path = "v1/{+name}:listRevisions",
                          response = {
                            ["$ref"] = "ListConsentRevisionsResponse",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                          },
                        },
                        patch = {
                          description = "Updates the latest revision of the specified Consent by committing a new revision with the changes. A FAILED_PRECONDITION error occurs if the latest revision of the specified Consent is in the `REJECTED` or `REVOKED` state.",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/datasets/{datasetsId}/consentStores/{consentStoresId}/consents/{consentsId}",
                          httpMethod = "PATCH",
                          id = "healthcare.projects.locations.datasets.consentStores.consents.patch",
                          parameterOrder = {
                            "name",
                          },
                          parameters = {
                            name = {
                              description = "Resource name of the Consent, of the form `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/consentStores/{consent_store_id}/consents/{consent_id}`. Cannot be changed after creation.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/datasets/[^/]+/consentStores/[^/]+/consents/[^/]+$",
                              required = true,
                              type = "string",
                            },
                            updateMask = {
                              description = "Required. The update mask to apply to the resource. For the `FieldMask` definition, see https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#fieldmask. Only the `user_id`, `policies`, `consent_artifact`, and `metadata` fields can be updated.",
                              format = "google-fieldmask",
                              location = "query",
                              type = "string",
                            },
                          },
                          path = "v1/{+name}",
                          request = {
                            ["$ref"] = "Consent",
                          },
                          response = {
                            ["$ref"] = "Consent",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                          },
                        },
                        reject = {
                          description = "Rejects the latest revision of the specified Consent by committing a new revision with `state` updated to `REJECTED`. If the latest revision of the specified Consent is in the `REJECTED` state, no new revision is committed. A FAILED_PRECONDITION error occurs if the latest revision of the specified Consent is in the `ACTIVE` or `REVOKED` state.",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/datasets/{datasetsId}/consentStores/{consentStoresId}/consents/{consentsId}:reject",
                          httpMethod = "POST",
                          id = "healthcare.projects.locations.datasets.consentStores.consents.reject",
                          parameterOrder = {
                            "name",
                          },
                          parameters = {
                            name = {
                              description = "Required. The resource name of the Consent to reject, of the form `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/consentStores/{consent_store_id}/consents/{consent_id}`. An INVALID_ARGUMENT error occurs if `revision_id` is specified in the name.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/datasets/[^/]+/consentStores/[^/]+/consents/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v1/{+name}:reject",
                          request = {
                            ["$ref"] = "RejectConsentRequest",
                          },
                          response = {
                            ["$ref"] = "Consent",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                          },
                        },
                        revoke = {
                          description = "Revokes the latest revision of the specified Consent by committing a new revision with `state` updated to `REVOKED`. If the latest revision of the specified Consent is in the `REVOKED` state, no new revision is committed. A FAILED_PRECONDITION error occurs if the latest revision of the given consent is in `DRAFT` or `REJECTED` state.",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/datasets/{datasetsId}/consentStores/{consentStoresId}/consents/{consentsId}:revoke",
                          httpMethod = "POST",
                          id = "healthcare.projects.locations.datasets.consentStores.consents.revoke",
                          parameterOrder = {
                            "name",
                          },
                          parameters = {
                            name = {
                              description = "Required. The resource name of the Consent to revoke, of the form `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/consentStores/{consent_store_id}/consents/{consent_id}`. An INVALID_ARGUMENT error occurs if `revision_id` is specified in the name.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/datasets/[^/]+/consentStores/[^/]+/consents/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v1/{+name}:revoke",
                          request = {
                            ["$ref"] = "RevokeConsentRequest",
                          },
                          response = {
                            ["$ref"] = "Consent",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                          },
                        },
                      },
                    },
                    userDataMappings = {
                      methods = {
                        archive = {
                          description = "Archives the specified User data mapping.",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/datasets/{datasetsId}/consentStores/{consentStoresId}/userDataMappings/{userDataMappingsId}:archive",
                          httpMethod = "POST",
                          id = "healthcare.projects.locations.datasets.consentStores.userDataMappings.archive",
                          parameterOrder = {
                            "name",
                          },
                          parameters = {
                            name = {
                              description = "Required. The resource name of the User data mapping to archive.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/datasets/[^/]+/consentStores/[^/]+/userDataMappings/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v1/{+name}:archive",
                          request = {
                            ["$ref"] = "ArchiveUserDataMappingRequest",
                          },
                          response = {
                            ["$ref"] = "ArchiveUserDataMappingResponse",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                          },
                        },
                        create = {
                          description = "Creates a new User data mapping in the parent consent store.",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/datasets/{datasetsId}/consentStores/{consentStoresId}/userDataMappings",
                          httpMethod = "POST",
                          id = "healthcare.projects.locations.datasets.consentStores.userDataMappings.create",
                          parameterOrder = {
                            "parent",
                          },
                          parameters = {
                            parent = {
                              description = "Required. Name of the consent store.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/datasets/[^/]+/consentStores/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v1/{+parent}/userDataMappings",
                          request = {
                            ["$ref"] = "UserDataMapping",
                          },
                          response = {
                            ["$ref"] = "UserDataMapping",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                          },
                        },
                        delete = {
                          description = "Deletes the specified User data mapping.",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/datasets/{datasetsId}/consentStores/{consentStoresId}/userDataMappings/{userDataMappingsId}",
                          httpMethod = "DELETE",
                          id = "healthcare.projects.locations.datasets.consentStores.userDataMappings.delete",
                          parameterOrder = {
                            "name",
                          },
                          parameters = {
                            name = {
                              description = "Required. The resource name of the User data mapping to delete.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/datasets/[^/]+/consentStores/[^/]+/userDataMappings/[^/]+$",
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
                          description = "Gets the specified User data mapping.",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/datasets/{datasetsId}/consentStores/{consentStoresId}/userDataMappings/{userDataMappingsId}",
                          httpMethod = "GET",
                          id = "healthcare.projects.locations.datasets.consentStores.userDataMappings.get",
                          parameterOrder = {
                            "name",
                          },
                          parameters = {
                            name = {
                              description = "Required. The resource name of the User data mapping to retrieve.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/datasets/[^/]+/consentStores/[^/]+/userDataMappings/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v1/{+name}",
                          response = {
                            ["$ref"] = "UserDataMapping",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                          },
                        },
                        list = {
                          description = "Lists the User data mappings in the specified consent store.",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/datasets/{datasetsId}/consentStores/{consentStoresId}/userDataMappings",
                          httpMethod = "GET",
                          id = "healthcare.projects.locations.datasets.consentStores.userDataMappings.list",
                          parameterOrder = {
                            "parent",
                          },
                          parameters = {
                            filter = {
                              description = "Optional. Restricts the User data mappings returned to those matching a filter. The following syntax is available: * A string field value can be written as text inside quotation marks, for example `\"query text\"`. The only valid relational operation for text fields is equality (`=`), where text is searched within the field, rather than having the field be equal to the text. For example, `\"Comment = great\"` returns messages with `great` in the comment field. * A number field value can be written as an integer, a decimal, or an exponential. The valid relational operators for number fields are the equality operator (`=`), along with the less than/greater than operators (`<`, `<=`, `>`, `>=`). Note that there is no inequality (`!=`) operator. You can prepend the `NOT` operator to an expression to negate it. * A date field value must be written in `yyyy-mm-dd` form. Fields with date and time use the RFC3339 time format. Leading zeros are required for one-digit months and days. The valid relational operators for date fields are the equality operator (`=`) , along with the less than/greater than operators (`<`, `<=`, `>`, `>=`). Note that there is no inequality (`!=`) operator. You can prepend the `NOT` operator to an expression to negate it. * Multiple field query expressions can be combined in one query by adding `AND` or `OR` operators between the expressions. If a boolean operator appears within a quoted string, it is not treated as special, it's just another part of the character string to be matched. You can prepend the `NOT` operator to an expression to negate it. The fields available for filtering are: - data_id - user_id. For example, `filter=user_id=\\\"user123\\\"`. - archived - archive_time",
                              location = "query",
                              type = "string",
                            },
                            pageSize = {
                              description = "Optional. Limit on the number of User data mappings to return in a single response. If not specified, 100 is used. May not be larger than 1000.",
                              format = "int32",
                              location = "query",
                              type = "integer",
                            },
                            pageToken = {
                              description = "Optional. Token to retrieve the next page of results, or empty to get the first page.",
                              location = "query",
                              type = "string",
                            },
                            parent = {
                              description = "Required. Name of the consent store to retrieve User data mappings from.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/datasets/[^/]+/consentStores/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v1/{+parent}/userDataMappings",
                          response = {
                            ["$ref"] = "ListUserDataMappingsResponse",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                          },
                        },
                        patch = {
                          description = "Updates the specified User data mapping.",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/datasets/{datasetsId}/consentStores/{consentStoresId}/userDataMappings/{userDataMappingsId}",
                          httpMethod = "PATCH",
                          id = "healthcare.projects.locations.datasets.consentStores.userDataMappings.patch",
                          parameterOrder = {
                            "name",
                          },
                          parameters = {
                            name = {
                              description = "Resource name of the User data mapping, of the form `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/consentStores/{consent_store_id}/userDataMappings/{user_data_mapping_id}`.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/datasets/[^/]+/consentStores/[^/]+/userDataMappings/[^/]+$",
                              required = true,
                              type = "string",
                            },
                            updateMask = {
                              description = "Required. The update mask that applies to the resource. For the `FieldMask` definition, see https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#fieldmask. Only the `data_id`, `user_id` and `resource_attributes` fields can be updated.",
                              format = "google-fieldmask",
                              location = "query",
                              type = "string",
                            },
                          },
                          path = "v1/{+name}",
                          request = {
                            ["$ref"] = "UserDataMapping",
                          },
                          response = {
                            ["$ref"] = "UserDataMapping",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                          },
                        },
                      },
                    },
                  },
                },
                dicomStores = {
                  methods = {
                    create = {
                      description = "Creates a new DICOM store within the parent dataset.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/datasets/{datasetsId}/dicomStores",
                      httpMethod = "POST",
                      id = "healthcare.projects.locations.datasets.dicomStores.create",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        dicomStoreId = {
                          description = "The ID of the DICOM store that is being created. Any string value up to 256 characters in length.",
                          location = "query",
                          type = "string",
                        },
                        parent = {
                          description = "The name of the dataset this DICOM store belongs to.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/datasets/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/dicomStores",
                      request = {
                        ["$ref"] = "DicomStore",
                      },
                      response = {
                        ["$ref"] = "DicomStore",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    deidentify = {
                      description = "De-identifies data from the source store and writes it to the destination store. The metadata field type is OperationMetadata. If the request is successful, the response field type is DeidentifyDicomStoreSummary. If errors occur, error is set. The LRO result may still be successful if de-identification fails for some DICOM instances. The output DICOM store will not contain these failed resources. Failed resource totals are tracked in Operation.metadata. Error details are also logged to Cloud Logging (see [Viewing error logs in Cloud Logging](https://cloud.google.com/healthcare/docs/how-tos/logging)).",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/datasets/{datasetsId}/dicomStores/{dicomStoresId}:deidentify",
                      httpMethod = "POST",
                      id = "healthcare.projects.locations.datasets.dicomStores.deidentify",
                      parameterOrder = {
                        "sourceStore",
                      },
                      parameters = {
                        sourceStore = {
                          description = "Source DICOM store resource name. For example, `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/dicomStores/{dicom_store_id}`.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/datasets/[^/]+/dicomStores/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+sourceStore}:deidentify",
                      request = {
                        ["$ref"] = "DeidentifyDicomStoreRequest",
                      },
                      response = {
                        ["$ref"] = "Operation",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    delete = {
                      description = "Deletes the specified DICOM store and removes all images that are contained within it.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/datasets/{datasetsId}/dicomStores/{dicomStoresId}",
                      httpMethod = "DELETE",
                      id = "healthcare.projects.locations.datasets.dicomStores.delete",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "The resource name of the DICOM store to delete.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/datasets/[^/]+/dicomStores/[^/]+$",
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
                    export = {
                      description = "Exports data to the specified destination by copying it from the DICOM store. Errors are also logged to Cloud Logging. For more information, see [Viewing error logs in Cloud Logging](https://cloud.google.com/healthcare/docs/how-tos/logging). The metadata field type is OperationMetadata.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/datasets/{datasetsId}/dicomStores/{dicomStoresId}:export",
                      httpMethod = "POST",
                      id = "healthcare.projects.locations.datasets.dicomStores.export",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "The DICOM store resource name from which to export the data. For example, `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/dicomStores/{dicom_store_id}`.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/datasets/[^/]+/dicomStores/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}:export",
                      request = {
                        ["$ref"] = "ExportDicomDataRequest",
                      },
                      response = {
                        ["$ref"] = "Operation",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    get = {
                      description = "Gets the specified DICOM store.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/datasets/{datasetsId}/dicomStores/{dicomStoresId}",
                      httpMethod = "GET",
                      id = "healthcare.projects.locations.datasets.dicomStores.get",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "The resource name of the DICOM store to get.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/datasets/[^/]+/dicomStores/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}",
                      response = {
                        ["$ref"] = "DicomStore",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    getIamPolicy = {
                      description = "Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/datasets/{datasetsId}/dicomStores/{dicomStoresId}:getIamPolicy",
                      httpMethod = "GET",
                      id = "healthcare.projects.locations.datasets.dicomStores.getIamPolicy",
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
                          pattern = "^projects/[^/]+/locations/[^/]+/datasets/[^/]+/dicomStores/[^/]+$",
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
                    import = {
                      description = "Imports data into the DICOM store by copying it from the specified source. Errors are logged to Cloud Logging. For more information, see [Viewing error logs in Cloud Logging](https://cloud.google.com/healthcare/docs/how-tos/logging). The metadata field type is OperationMetadata.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/datasets/{datasetsId}/dicomStores/{dicomStoresId}:import",
                      httpMethod = "POST",
                      id = "healthcare.projects.locations.datasets.dicomStores.import",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "The name of the DICOM store resource into which the data is imported. For example, `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/dicomStores/{dicom_store_id}`.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/datasets/[^/]+/dicomStores/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}:import",
                      request = {
                        ["$ref"] = "ImportDicomDataRequest",
                      },
                      response = {
                        ["$ref"] = "Operation",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    list = {
                      description = "Lists the DICOM stores in the given dataset.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/datasets/{datasetsId}/dicomStores",
                      httpMethod = "GET",
                      id = "healthcare.projects.locations.datasets.dicomStores.list",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        filter = {
                          description = "Restricts stores returned to those matching a filter. The following syntax is available: * A string field value can be written as text inside quotation marks, for example `\"query text\"`. The only valid relational operation for text fields is equality (`=`), where text is searched within the field, rather than having the field be equal to the text. For example, `\"Comment = great\"` returns messages with `great` in the comment field. * A number field value can be written as an integer, a decimal, or an exponential. The valid relational operators for number fields are the equality operator (`=`), along with the less than/greater than operators (`<`, `<=`, `>`, `>=`). Note that there is no inequality (`!=`) operator. You can prepend the `NOT` operator to an expression to negate it. * A date field value must be written in `yyyy-mm-dd` form. Fields with date and time use the RFC3339 time format. Leading zeros are required for one-digit months and days. The valid relational operators for date fields are the equality operator (`=`) , along with the less than/greater than operators (`<`, `<=`, `>`, `>=`). Note that there is no inequality (`!=`) operator. You can prepend the `NOT` operator to an expression to negate it. * Multiple field query expressions can be combined in one query by adding `AND` or `OR` operators between the expressions. If a boolean operator appears within a quoted string, it is not treated as special, it's just another part of the character string to be matched. You can prepend the `NOT` operator to an expression to negate it. Only filtering on labels is supported. For example, `labels.key=value`.",
                          location = "query",
                          type = "string",
                        },
                        pageSize = {
                          description = "Limit on the number of DICOM stores to return in a single response. If not specified, 100 is used. May not be larger than 1000.",
                          format = "int32",
                          location = "query",
                          type = "integer",
                        },
                        pageToken = {
                          description = "The next_page_token value returned from the previous List request, if any.",
                          location = "query",
                          type = "string",
                        },
                        parent = {
                          description = "Name of the dataset.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/datasets/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/dicomStores",
                      response = {
                        ["$ref"] = "ListDicomStoresResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    patch = {
                      description = "Updates the specified DICOM store.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/datasets/{datasetsId}/dicomStores/{dicomStoresId}",
                      httpMethod = "PATCH",
                      id = "healthcare.projects.locations.datasets.dicomStores.patch",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Resource name of the DICOM store, of the form `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/dicomStores/{dicom_store_id}`.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/datasets/[^/]+/dicomStores/[^/]+$",
                          required = true,
                          type = "string",
                        },
                        updateMask = {
                          description = "The update mask applies to the resource. For the `FieldMask` definition, see https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#fieldmask",
                          format = "google-fieldmask",
                          location = "query",
                          type = "string",
                        },
                      },
                      path = "v1/{+name}",
                      request = {
                        ["$ref"] = "DicomStore",
                      },
                      response = {
                        ["$ref"] = "DicomStore",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    searchForInstances = {
                      description = "SearchForInstances returns a list of matching instances. See [Search Transaction] (http://dicom.nema.org/medical/dicom/current/output/html/part18.html#sect_10.6). For details on the implementation of SearchForInstances, see [Search transaction](https://cloud.google.com/healthcare/docs/dicom#search_transaction) in the Cloud Healthcare API conformance statement. For samples that show how to call SearchForInstances, see [Searching for studies, series, instances, and frames](https://cloud.google.com/healthcare/docs/how-tos/dicomweb#searching_for_studies_series_instances_and_frames).",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/datasets/{datasetsId}/dicomStores/{dicomStoresId}/dicomWeb/instances",
                      httpMethod = "GET",
                      id = "healthcare.projects.locations.datasets.dicomStores.searchForInstances",
                      parameterOrder = {
                        "parent",
                        "dicomWebPath",
                      },
                      parameters = {
                        dicomWebPath = {
                          description = "The path of the SearchForInstancesRequest DICOMweb request. For example, `instances`, `series/{series_uid}/instances`, or `studies/{study_uid}/instances`.",
                          location = "path",
                          pattern = "^instances$",
                          required = true,
                          type = "string",
                        },
                        parent = {
                          description = "The name of the DICOM store that is being accessed. For example, `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/dicomStores/{dicom_store_id}`.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/datasets/[^/]+/dicomStores/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/dicomWeb/{+dicomWebPath}",
                      response = {
                        ["$ref"] = "HttpBody",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    searchForSeries = {
                      description = "SearchForSeries returns a list of matching series. See [Search Transaction] (http://dicom.nema.org/medical/dicom/current/output/html/part18.html#sect_10.6). For details on the implementation of SearchForSeries, see [Search transaction](https://cloud.google.com/healthcare/docs/dicom#search_transaction) in the Cloud Healthcare API conformance statement. For samples that show how to call SearchForSeries, see [Searching for studies, series, instances, and frames](https://cloud.google.com/healthcare/docs/how-tos/dicomweb#searching_for_studies_series_instances_and_frames).",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/datasets/{datasetsId}/dicomStores/{dicomStoresId}/dicomWeb/series",
                      httpMethod = "GET",
                      id = "healthcare.projects.locations.datasets.dicomStores.searchForSeries",
                      parameterOrder = {
                        "parent",
                        "dicomWebPath",
                      },
                      parameters = {
                        dicomWebPath = {
                          description = "The path of the SearchForSeries DICOMweb request. For example, `series` or `studies/{study_uid}/series`.",
                          location = "path",
                          pattern = "^series$",
                          required = true,
                          type = "string",
                        },
                        parent = {
                          description = "The name of the DICOM store that is being accessed. For example, `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/dicomStores/{dicom_store_id}`.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/datasets/[^/]+/dicomStores/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/dicomWeb/{+dicomWebPath}",
                      response = {
                        ["$ref"] = "HttpBody",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    searchForStudies = {
                      description = "SearchForStudies returns a list of matching studies. See [Search Transaction] (http://dicom.nema.org/medical/dicom/current/output/html/part18.html#sect_10.6). For details on the implementation of SearchForStudies, see [Search transaction](https://cloud.google.com/healthcare/docs/dicom#search_transaction) in the Cloud Healthcare API conformance statement. For samples that show how to call SearchForStudies, see [Searching for studies, series, instances, and frames](https://cloud.google.com/healthcare/docs/how-tos/dicomweb#searching_for_studies_series_instances_and_frames).",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/datasets/{datasetsId}/dicomStores/{dicomStoresId}/dicomWeb/studies",
                      httpMethod = "GET",
                      id = "healthcare.projects.locations.datasets.dicomStores.searchForStudies",
                      parameterOrder = {
                        "parent",
                        "dicomWebPath",
                      },
                      parameters = {
                        dicomWebPath = {
                          description = "The path of the SearchForStudies DICOMweb request. For example, `studies`.",
                          location = "path",
                          pattern = "^studies$",
                          required = true,
                          type = "string",
                        },
                        parent = {
                          description = "The name of the DICOM store that is being accessed. For example, `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/dicomStores/{dicom_store_id}`.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/datasets/[^/]+/dicomStores/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/dicomWeb/{+dicomWebPath}",
                      response = {
                        ["$ref"] = "HttpBody",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    setIamPolicy = {
                      description = "Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/datasets/{datasetsId}/dicomStores/{dicomStoresId}:setIamPolicy",
                      httpMethod = "POST",
                      id = "healthcare.projects.locations.datasets.dicomStores.setIamPolicy",
                      parameterOrder = {
                        "resource",
                      },
                      parameters = {
                        resource = {
                          description = "REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/datasets/[^/]+/dicomStores/[^/]+$",
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
                    storeInstances = {
                      description = "StoreInstances stores DICOM instances associated with study instance unique identifiers (SUID). See [Store Transaction] (http://dicom.nema.org/medical/dicom/current/output/html/part18.html#sect_10.5). For details on the implementation of StoreInstances, see [Store transaction](https://cloud.google.com/healthcare/docs/dicom#store_transaction) in the Cloud Healthcare API conformance statement. For samples that show how to call StoreInstances, see [Storing DICOM data](https://cloud.google.com/healthcare/docs/how-tos/dicomweb#storing_dicom_data).",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/datasets/{datasetsId}/dicomStores/{dicomStoresId}/dicomWeb/studies",
                      httpMethod = "POST",
                      id = "healthcare.projects.locations.datasets.dicomStores.storeInstances",
                      parameterOrder = {
                        "parent",
                        "dicomWebPath",
                      },
                      parameters = {
                        dicomWebPath = {
                          description = "The path of the StoreInstances DICOMweb request. For example, `studies/[{study_uid}]`. Note that the `study_uid` is optional.",
                          location = "path",
                          pattern = "^studies$",
                          required = true,
                          type = "string",
                        },
                        parent = {
                          description = "The name of the DICOM store that is being accessed. For example, `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/dicomStores/{dicom_store_id}`.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/datasets/[^/]+/dicomStores/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/dicomWeb/{+dicomWebPath}",
                      request = {
                        ["$ref"] = "HttpBody",
                      },
                      response = {
                        ["$ref"] = "HttpBody",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    testIamPermissions = {
                      description = "Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a `NOT_FOUND` error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may \"fail open\" without warning.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/datasets/{datasetsId}/dicomStores/{dicomStoresId}:testIamPermissions",
                      httpMethod = "POST",
                      id = "healthcare.projects.locations.datasets.dicomStores.testIamPermissions",
                      parameterOrder = {
                        "resource",
                      },
                      parameters = {
                        resource = {
                          description = "REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/datasets/[^/]+/dicomStores/[^/]+$",
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
                    studies = {
                      methods = {
                        delete = {
                          description = "DeleteStudy deletes all instances within the given study. Delete requests are equivalent to the GET requests specified in the Retrieve transaction. The method returns an Operation which will be marked successful when the deletion is complete. Warning: Instances cannot be inserted into a study that is being deleted by an operation until the operation completes. For samples that show how to call DeleteStudy, see [Deleting a study, series, or instance](https://cloud.google.com/healthcare/docs/how-tos/dicomweb#deleting_a_study_series_or_instance).",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/datasets/{datasetsId}/dicomStores/{dicomStoresId}/dicomWeb/studies/{studiesId}",
                          httpMethod = "DELETE",
                          id = "healthcare.projects.locations.datasets.dicomStores.studies.delete",
                          parameterOrder = {
                            "parent",
                            "dicomWebPath",
                          },
                          parameters = {
                            dicomWebPath = {
                              description = "The path of the DeleteStudy request. For example, `studies/{study_uid}`.",
                              location = "path",
                              pattern = "^studies/[^/]+$",
                              required = true,
                              type = "string",
                            },
                            parent = {
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/datasets/[^/]+/dicomStores/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v1/{+parent}/dicomWeb/{+dicomWebPath}",
                          response = {
                            ["$ref"] = "Operation",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                          },
                        },
                        retrieveMetadata = {
                          description = "RetrieveStudyMetadata returns instance associated with the given study presented as metadata with the bulk data removed. See [RetrieveTransaction] (http://dicom.nema.org/medical/dicom/current/output/html/part18.html#sect_10.4). For details on the implementation of RetrieveStudyMetadata, see [Metadata resources](https://cloud.google.com/healthcare/docs/dicom#metadata_resources) in the Cloud Healthcare API conformance statement. For samples that show how to call RetrieveStudyMetadata, see [Retrieving metadata](https://cloud.google.com/healthcare/docs/how-tos/dicomweb#retrieving_metadata).",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/datasets/{datasetsId}/dicomStores/{dicomStoresId}/dicomWeb/studies/{studiesId}/metadata",
                          httpMethod = "GET",
                          id = "healthcare.projects.locations.datasets.dicomStores.studies.retrieveMetadata",
                          parameterOrder = {
                            "parent",
                            "dicomWebPath",
                          },
                          parameters = {
                            dicomWebPath = {
                              description = "The path of the RetrieveStudyMetadata DICOMweb request. For example, `studies/{study_uid}/metadata`.",
                              location = "path",
                              pattern = "^studies/[^/]+/metadata$",
                              required = true,
                              type = "string",
                            },
                            parent = {
                              description = "The name of the DICOM store that is being accessed. For example, `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/dicomStores/{dicom_store_id}`.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/datasets/[^/]+/dicomStores/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v1/{+parent}/dicomWeb/{+dicomWebPath}",
                          response = {
                            ["$ref"] = "HttpBody",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                          },
                        },
                        retrieveStudy = {
                          description = "RetrieveStudy returns all instances within the given study. See [RetrieveTransaction] (http://dicom.nema.org/medical/dicom/current/output/html/part18.html#sect_10.4). For details on the implementation of RetrieveStudy, see [DICOM study/series/instances](https://cloud.google.com/healthcare/docs/dicom#dicom_studyseriesinstances) in the Cloud Healthcare API conformance statement. For samples that show how to call RetrieveStudy, see [Retrieving DICOM data](https://cloud.google.com/healthcare/docs/how-tos/dicomweb#retrieving_dicom_data).",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/datasets/{datasetsId}/dicomStores/{dicomStoresId}/dicomWeb/studies/{studiesId}",
                          httpMethod = "GET",
                          id = "healthcare.projects.locations.datasets.dicomStores.studies.retrieveStudy",
                          parameterOrder = {
                            "parent",
                            "dicomWebPath",
                          },
                          parameters = {
                            dicomWebPath = {
                              description = "The path of the RetrieveStudy DICOMweb request. For example, `studies/{study_uid}`.",
                              location = "path",
                              pattern = "^studies/[^/]+$",
                              required = true,
                              type = "string",
                            },
                            parent = {
                              description = "The name of the DICOM store that is being accessed. For example, `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/dicomStores/{dicom_store_id}`.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/datasets/[^/]+/dicomStores/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v1/{+parent}/dicomWeb/{+dicomWebPath}",
                          response = {
                            ["$ref"] = "HttpBody",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                          },
                        },
                        searchForInstances = {
                          description = "SearchForInstances returns a list of matching instances. See [Search Transaction] (http://dicom.nema.org/medical/dicom/current/output/html/part18.html#sect_10.6). For details on the implementation of SearchForInstances, see [Search transaction](https://cloud.google.com/healthcare/docs/dicom#search_transaction) in the Cloud Healthcare API conformance statement. For samples that show how to call SearchForInstances, see [Searching for studies, series, instances, and frames](https://cloud.google.com/healthcare/docs/how-tos/dicomweb#searching_for_studies_series_instances_and_frames).",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/datasets/{datasetsId}/dicomStores/{dicomStoresId}/dicomWeb/studies/{studiesId}/instances",
                          httpMethod = "GET",
                          id = "healthcare.projects.locations.datasets.dicomStores.studies.searchForInstances",
                          parameterOrder = {
                            "parent",
                            "dicomWebPath",
                          },
                          parameters = {
                            dicomWebPath = {
                              description = "The path of the SearchForInstancesRequest DICOMweb request. For example, `instances`, `series/{series_uid}/instances`, or `studies/{study_uid}/instances`.",
                              location = "path",
                              pattern = "^studies/[^/]+/instances$",
                              required = true,
                              type = "string",
                            },
                            parent = {
                              description = "The name of the DICOM store that is being accessed. For example, `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/dicomStores/{dicom_store_id}`.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/datasets/[^/]+/dicomStores/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v1/{+parent}/dicomWeb/{+dicomWebPath}",
                          response = {
                            ["$ref"] = "HttpBody",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                          },
                        },
                        searchForSeries = {
                          description = "SearchForSeries returns a list of matching series. See [Search Transaction] (http://dicom.nema.org/medical/dicom/current/output/html/part18.html#sect_10.6). For details on the implementation of SearchForSeries, see [Search transaction](https://cloud.google.com/healthcare/docs/dicom#search_transaction) in the Cloud Healthcare API conformance statement. For samples that show how to call SearchForSeries, see [Searching for studies, series, instances, and frames](https://cloud.google.com/healthcare/docs/how-tos/dicomweb#searching_for_studies_series_instances_and_frames).",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/datasets/{datasetsId}/dicomStores/{dicomStoresId}/dicomWeb/studies/{studiesId}/series",
                          httpMethod = "GET",
                          id = "healthcare.projects.locations.datasets.dicomStores.studies.searchForSeries",
                          parameterOrder = {
                            "parent",
                            "dicomWebPath",
                          },
                          parameters = {
                            dicomWebPath = {
                              description = "The path of the SearchForSeries DICOMweb request. For example, `series` or `studies/{study_uid}/series`.",
                              location = "path",
                              pattern = "^studies/[^/]+/series$",
                              required = true,
                              type = "string",
                            },
                            parent = {
                              description = "The name of the DICOM store that is being accessed. For example, `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/dicomStores/{dicom_store_id}`.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/datasets/[^/]+/dicomStores/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v1/{+parent}/dicomWeb/{+dicomWebPath}",
                          response = {
                            ["$ref"] = "HttpBody",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                          },
                        },
                        storeInstances = {
                          description = "StoreInstances stores DICOM instances associated with study instance unique identifiers (SUID). See [Store Transaction] (http://dicom.nema.org/medical/dicom/current/output/html/part18.html#sect_10.5). For details on the implementation of StoreInstances, see [Store transaction](https://cloud.google.com/healthcare/docs/dicom#store_transaction) in the Cloud Healthcare API conformance statement. For samples that show how to call StoreInstances, see [Storing DICOM data](https://cloud.google.com/healthcare/docs/how-tos/dicomweb#storing_dicom_data).",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/datasets/{datasetsId}/dicomStores/{dicomStoresId}/dicomWeb/studies/{studiesId}",
                          httpMethod = "POST",
                          id = "healthcare.projects.locations.datasets.dicomStores.studies.storeInstances",
                          parameterOrder = {
                            "parent",
                            "dicomWebPath",
                          },
                          parameters = {
                            dicomWebPath = {
                              description = "The path of the StoreInstances DICOMweb request. For example, `studies/[{study_uid}]`. Note that the `study_uid` is optional.",
                              location = "path",
                              pattern = "^studies/[^/]+$",
                              required = true,
                              type = "string",
                            },
                            parent = {
                              description = "The name of the DICOM store that is being accessed. For example, `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/dicomStores/{dicom_store_id}`.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/datasets/[^/]+/dicomStores/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v1/{+parent}/dicomWeb/{+dicomWebPath}",
                          request = {
                            ["$ref"] = "HttpBody",
                          },
                          response = {
                            ["$ref"] = "HttpBody",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                          },
                        },
                      },
                      resources = {
                        series = {
                          methods = {
                            delete = {
                              description = "DeleteSeries deletes all instances within the given study and series. Delete requests are equivalent to the GET requests specified in the Retrieve transaction. The method returns an Operation which will be marked successful when the deletion is complete. Warning: Instances cannot be inserted into a series that is being deleted by an operation until the operation completes. For samples that show how to call DeleteSeries, see [Deleting a study, series, or instance](https://cloud.google.com/healthcare/docs/how-tos/dicomweb#deleting_a_study_series_or_instance).",
                              flatPath = "v1/projects/{projectsId}/locations/{locationsId}/datasets/{datasetsId}/dicomStores/{dicomStoresId}/dicomWeb/studies/{studiesId}/series/{seriesId}",
                              httpMethod = "DELETE",
                              id = "healthcare.projects.locations.datasets.dicomStores.studies.series.delete",
                              parameterOrder = {
                                "parent",
                                "dicomWebPath",
                              },
                              parameters = {
                                dicomWebPath = {
                                  description = "The path of the DeleteSeries request. For example, `studies/{study_uid}/series/{series_uid}`.",
                                  location = "path",
                                  pattern = "^studies/[^/]+/series/[^/]+$",
                                  required = true,
                                  type = "string",
                                },
                                parent = {
                                  description = "The name of the DICOM store that is being accessed. For example, `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/dicomStores/{dicom_store_id}`.",
                                  location = "path",
                                  pattern = "^projects/[^/]+/locations/[^/]+/datasets/[^/]+/dicomStores/[^/]+$",
                                  required = true,
                                  type = "string",
                                },
                              },
                              path = "v1/{+parent}/dicomWeb/{+dicomWebPath}",
                              response = {
                                ["$ref"] = "Operation",
                              },
                              scopes = {
                                "https://www.googleapis.com/auth/cloud-platform",
                              },
                            },
                            retrieveMetadata = {
                              description = "RetrieveSeriesMetadata returns instance associated with the given study and series, presented as metadata with the bulk data removed. See [RetrieveTransaction] (http://dicom.nema.org/medical/dicom/current/output/html/part18.html#sect_10.4). For details on the implementation of RetrieveSeriesMetadata, see [Metadata resources](https://cloud.google.com/healthcare/docs/dicom#metadata_resources) in the Cloud Healthcare API conformance statement. For samples that show how to call RetrieveSeriesMetadata, see [Retrieving metadata](https://cloud.google.com/healthcare/docs/how-tos/dicomweb#retrieving_metadata).",
                              flatPath = "v1/projects/{projectsId}/locations/{locationsId}/datasets/{datasetsId}/dicomStores/{dicomStoresId}/dicomWeb/studies/{studiesId}/series/{seriesId}/metadata",
                              httpMethod = "GET",
                              id = "healthcare.projects.locations.datasets.dicomStores.studies.series.retrieveMetadata",
                              parameterOrder = {
                                "parent",
                                "dicomWebPath",
                              },
                              parameters = {
                                dicomWebPath = {
                                  description = "The path of the RetrieveSeriesMetadata DICOMweb request. For example, `studies/{study_uid}/series/{series_uid}/metadata`.",
                                  location = "path",
                                  pattern = "^studies/[^/]+/series/[^/]+/metadata$",
                                  required = true,
                                  type = "string",
                                },
                                parent = {
                                  description = "The name of the DICOM store that is being accessed. For example, `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/dicomStores/{dicom_store_id}`.",
                                  location = "path",
                                  pattern = "^projects/[^/]+/locations/[^/]+/datasets/[^/]+/dicomStores/[^/]+$",
                                  required = true,
                                  type = "string",
                                },
                              },
                              path = "v1/{+parent}/dicomWeb/{+dicomWebPath}",
                              response = {
                                ["$ref"] = "HttpBody",
                              },
                              scopes = {
                                "https://www.googleapis.com/auth/cloud-platform",
                              },
                            },
                            retrieveSeries = {
                              description = "RetrieveSeries returns all instances within the given study and series. See [RetrieveTransaction] (http://dicom.nema.org/medical/dicom/current/output/html/part18.html#sect_10.4). For details on the implementation of RetrieveSeries, see [DICOM study/series/instances](https://cloud.google.com/healthcare/docs/dicom#dicom_studyseriesinstances) in the Cloud Healthcare API conformance statement. For samples that show how to call RetrieveSeries, see [Retrieving DICOM data](https://cloud.google.com/healthcare/docs/how-tos/dicomweb#retrieving_dicom_data).",
                              flatPath = "v1/projects/{projectsId}/locations/{locationsId}/datasets/{datasetsId}/dicomStores/{dicomStoresId}/dicomWeb/studies/{studiesId}/series/{seriesId}",
                              httpMethod = "GET",
                              id = "healthcare.projects.locations.datasets.dicomStores.studies.series.retrieveSeries",
                              parameterOrder = {
                                "parent",
                                "dicomWebPath",
                              },
                              parameters = {
                                dicomWebPath = {
                                  description = "The path of the RetrieveSeries DICOMweb request. For example, `studies/{study_uid}/series/{series_uid}`.",
                                  location = "path",
                                  pattern = "^studies/[^/]+/series/[^/]+$",
                                  required = true,
                                  type = "string",
                                },
                                parent = {
                                  description = "The name of the DICOM store that is being accessed. For example, `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/dicomStores/{dicom_store_id}`.",
                                  location = "path",
                                  pattern = "^projects/[^/]+/locations/[^/]+/datasets/[^/]+/dicomStores/[^/]+$",
                                  required = true,
                                  type = "string",
                                },
                              },
                              path = "v1/{+parent}/dicomWeb/{+dicomWebPath}",
                              response = {
                                ["$ref"] = "HttpBody",
                              },
                              scopes = {
                                "https://www.googleapis.com/auth/cloud-platform",
                              },
                            },
                            searchForInstances = {
                              description = "SearchForInstances returns a list of matching instances. See [Search Transaction] (http://dicom.nema.org/medical/dicom/current/output/html/part18.html#sect_10.6). For details on the implementation of SearchForInstances, see [Search transaction](https://cloud.google.com/healthcare/docs/dicom#search_transaction) in the Cloud Healthcare API conformance statement. For samples that show how to call SearchForInstances, see [Searching for studies, series, instances, and frames](https://cloud.google.com/healthcare/docs/how-tos/dicomweb#searching_for_studies_series_instances_and_frames).",
                              flatPath = "v1/projects/{projectsId}/locations/{locationsId}/datasets/{datasetsId}/dicomStores/{dicomStoresId}/dicomWeb/studies/{studiesId}/series/{seriesId}/instances",
                              httpMethod = "GET",
                              id = "healthcare.projects.locations.datasets.dicomStores.studies.series.searchForInstances",
                              parameterOrder = {
                                "parent",
                                "dicomWebPath",
                              },
                              parameters = {
                                dicomWebPath = {
                                  description = "The path of the SearchForInstancesRequest DICOMweb request. For example, `instances`, `series/{series_uid}/instances`, or `studies/{study_uid}/instances`.",
                                  location = "path",
                                  pattern = "^studies/[^/]+/series/[^/]+/instances$",
                                  required = true,
                                  type = "string",
                                },
                                parent = {
                                  description = "The name of the DICOM store that is being accessed. For example, `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/dicomStores/{dicom_store_id}`.",
                                  location = "path",
                                  pattern = "^projects/[^/]+/locations/[^/]+/datasets/[^/]+/dicomStores/[^/]+$",
                                  required = true,
                                  type = "string",
                                },
                              },
                              path = "v1/{+parent}/dicomWeb/{+dicomWebPath}",
                              response = {
                                ["$ref"] = "HttpBody",
                              },
                              scopes = {
                                "https://www.googleapis.com/auth/cloud-platform",
                              },
                            },
                          },
                          resources = {
                            instances = {
                              methods = {
                                delete = {
                                  description = "DeleteInstance deletes an instance associated with the given study, series, and SOP Instance UID. Delete requests are equivalent to the GET requests specified in the Retrieve transaction. Study and series search results can take a few seconds to be updated after an instance is deleted using DeleteInstance. For samples that show how to call DeleteInstance, see [Deleting a study, series, or instance](https://cloud.google.com/healthcare/docs/how-tos/dicomweb#deleting_a_study_series_or_instance).",
                                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/datasets/{datasetsId}/dicomStores/{dicomStoresId}/dicomWeb/studies/{studiesId}/series/{seriesId}/instances/{instancesId}",
                                  httpMethod = "DELETE",
                                  id = "healthcare.projects.locations.datasets.dicomStores.studies.series.instances.delete",
                                  parameterOrder = {
                                    "parent",
                                    "dicomWebPath",
                                  },
                                  parameters = {
                                    dicomWebPath = {
                                      description = "The path of the DeleteInstance request. For example, `studies/{study_uid}/series/{series_uid}/instances/{instance_uid}`.",
                                      location = "path",
                                      pattern = "^studies/[^/]+/series/[^/]+/instances/[^/]+$",
                                      required = true,
                                      type = "string",
                                    },
                                    parent = {
                                      description = "The name of the DICOM store that is being accessed. For example, `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/dicomStores/{dicom_store_id}`.",
                                      location = "path",
                                      pattern = "^projects/[^/]+/locations/[^/]+/datasets/[^/]+/dicomStores/[^/]+$",
                                      required = true,
                                      type = "string",
                                    },
                                  },
                                  path = "v1/{+parent}/dicomWeb/{+dicomWebPath}",
                                  response = {
                                    ["$ref"] = "Empty",
                                  },
                                  scopes = {
                                    "https://www.googleapis.com/auth/cloud-platform",
                                  },
                                },
                                retrieveInstance = {
                                  description = "RetrieveInstance returns instance associated with the given study, series, and SOP Instance UID. See [RetrieveTransaction] (http://dicom.nema.org/medical/dicom/current/output/html/part18.html#sect_10.4). For details on the implementation of RetrieveInstance, see [DICOM study/series/instances](https://cloud.google.com/healthcare/docs/dicom#dicom_studyseriesinstances) and [DICOM instances](https://cloud.google.com/healthcare/docs/dicom#dicom_instances) in the Cloud Healthcare API conformance statement. For samples that show how to call RetrieveInstance, see [Retrieving an instance](https://cloud.google.com/healthcare/docs/how-tos/dicomweb#retrieving_an_instance).",
                                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/datasets/{datasetsId}/dicomStores/{dicomStoresId}/dicomWeb/studies/{studiesId}/series/{seriesId}/instances/{instancesId}",
                                  httpMethod = "GET",
                                  id = "healthcare.projects.locations.datasets.dicomStores.studies.series.instances.retrieveInstance",
                                  parameterOrder = {
                                    "parent",
                                    "dicomWebPath",
                                  },
                                  parameters = {
                                    dicomWebPath = {
                                      description = "The path of the RetrieveInstance DICOMweb request. For example, `studies/{study_uid}/series/{series_uid}/instances/{instance_uid}`.",
                                      location = "path",
                                      pattern = "^studies/[^/]+/series/[^/]+/instances/[^/]+$",
                                      required = true,
                                      type = "string",
                                    },
                                    parent = {
                                      description = "The name of the DICOM store that is being accessed. For example, `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/dicomStores/{dicom_store_id}`.",
                                      location = "path",
                                      pattern = "^projects/[^/]+/locations/[^/]+/datasets/[^/]+/dicomStores/[^/]+$",
                                      required = true,
                                      type = "string",
                                    },
                                  },
                                  path = "v1/{+parent}/dicomWeb/{+dicomWebPath}",
                                  response = {
                                    ["$ref"] = "HttpBody",
                                  },
                                  scopes = {
                                    "https://www.googleapis.com/auth/cloud-platform",
                                  },
                                },
                                retrieveMetadata = {
                                  description = "RetrieveInstanceMetadata returns instance associated with the given study, series, and SOP Instance UID presented as metadata with the bulk data removed. See [RetrieveTransaction] (http://dicom.nema.org/medical/dicom/current/output/html/part18.html#sect_10.4). For details on the implementation of RetrieveInstanceMetadata, see [Metadata resources](https://cloud.google.com/healthcare/docs/dicom#metadata_resources) in the Cloud Healthcare API conformance statement. For samples that show how to call RetrieveInstanceMetadata, see [Retrieving metadata](https://cloud.google.com/healthcare/docs/how-tos/dicomweb#retrieving_metadata).",
                                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/datasets/{datasetsId}/dicomStores/{dicomStoresId}/dicomWeb/studies/{studiesId}/series/{seriesId}/instances/{instancesId}/metadata",
                                  httpMethod = "GET",
                                  id = "healthcare.projects.locations.datasets.dicomStores.studies.series.instances.retrieveMetadata",
                                  parameterOrder = {
                                    "parent",
                                    "dicomWebPath",
                                  },
                                  parameters = {
                                    dicomWebPath = {
                                      description = "The path of the RetrieveInstanceMetadata DICOMweb request. For example, `studies/{study_uid}/series/{series_uid}/instances/{instance_uid}/metadata`.",
                                      location = "path",
                                      pattern = "^studies/[^/]+/series/[^/]+/instances/[^/]+/metadata$",
                                      required = true,
                                      type = "string",
                                    },
                                    parent = {
                                      description = "The name of the DICOM store that is being accessed. For example, `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/dicomStores/{dicom_store_id}`.",
                                      location = "path",
                                      pattern = "^projects/[^/]+/locations/[^/]+/datasets/[^/]+/dicomStores/[^/]+$",
                                      required = true,
                                      type = "string",
                                    },
                                  },
                                  path = "v1/{+parent}/dicomWeb/{+dicomWebPath}",
                                  response = {
                                    ["$ref"] = "HttpBody",
                                  },
                                  scopes = {
                                    "https://www.googleapis.com/auth/cloud-platform",
                                  },
                                },
                                retrieveRendered = {
                                  description = "RetrieveRenderedInstance returns instance associated with the given study, series, and SOP Instance UID in an acceptable Rendered Media Type. See [RetrieveTransaction] (http://dicom.nema.org/medical/dicom/current/output/html/part18.html#sect_10.4). For details on the implementation of RetrieveRenderedInstance, see [Rendered resources](https://cloud.google.com/healthcare/docs/dicom#rendered_resources) in the Cloud Healthcare API conformance statement. For samples that show how to call RetrieveRenderedInstance, see [Retrieving consumer image formats](https://cloud.google.com/healthcare/docs/how-tos/dicomweb#retrieving_consumer_image_formats).",
                                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/datasets/{datasetsId}/dicomStores/{dicomStoresId}/dicomWeb/studies/{studiesId}/series/{seriesId}/instances/{instancesId}/rendered",
                                  httpMethod = "GET",
                                  id = "healthcare.projects.locations.datasets.dicomStores.studies.series.instances.retrieveRendered",
                                  parameterOrder = {
                                    "parent",
                                    "dicomWebPath",
                                  },
                                  parameters = {
                                    dicomWebPath = {
                                      description = "The path of the RetrieveRenderedInstance DICOMweb request. For example, `studies/{study_uid}/series/{series_uid}/instances/{instance_uid}/rendered`.",
                                      location = "path",
                                      pattern = "^studies/[^/]+/series/[^/]+/instances/[^/]+/rendered$",
                                      required = true,
                                      type = "string",
                                    },
                                    parent = {
                                      description = "The name of the DICOM store that is being accessed. For example, `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/dicomStores/{dicom_store_id}`.",
                                      location = "path",
                                      pattern = "^projects/[^/]+/locations/[^/]+/datasets/[^/]+/dicomStores/[^/]+$",
                                      required = true,
                                      type = "string",
                                    },
                                  },
                                  path = "v1/{+parent}/dicomWeb/{+dicomWebPath}",
                                  response = {
                                    ["$ref"] = "HttpBody",
                                  },
                                  scopes = {
                                    "https://www.googleapis.com/auth/cloud-platform",
                                  },
                                },
                              },
                              resources = {
                                frames = {
                                  methods = {
                                    retrieveFrames = {
                                      description = "RetrieveFrames returns instances associated with the given study, series, SOP Instance UID and frame numbers. See [RetrieveTransaction] (http://dicom.nema.org/medical/dicom/current/output/html/part18.html#sect_10.4}. For details on the implementation of RetrieveFrames, see [DICOM frames](https://cloud.google.com/healthcare/docs/dicom#dicom_frames) in the Cloud Healthcare API conformance statement. For samples that show how to call RetrieveFrames, see [Retrieving DICOM data](https://cloud.google.com/healthcare/docs/how-tos/dicomweb#retrieving_dicom_data).",
                                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/datasets/{datasetsId}/dicomStores/{dicomStoresId}/dicomWeb/studies/{studiesId}/series/{seriesId}/instances/{instancesId}/frames/{framesId}",
                                      httpMethod = "GET",
                                      id = "healthcare.projects.locations.datasets.dicomStores.studies.series.instances.frames.retrieveFrames",
                                      parameterOrder = {
                                        "parent",
                                        "dicomWebPath",
                                      },
                                      parameters = {
                                        dicomWebPath = {
                                          description = "The path of the RetrieveFrames DICOMweb request. For example, `studies/{study_uid}/series/{series_uid}/instances/{instance_uid}/frames/{frame_list}`.",
                                          location = "path",
                                          pattern = "^studies/[^/]+/series/[^/]+/instances/[^/]+/frames/[^/]+$",
                                          required = true,
                                          type = "string",
                                        },
                                        parent = {
                                          description = "The name of the DICOM store that is being accessed. For example, `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/dicomStores/{dicom_store_id}`.",
                                          location = "path",
                                          pattern = "^projects/[^/]+/locations/[^/]+/datasets/[^/]+/dicomStores/[^/]+$",
                                          required = true,
                                          type = "string",
                                        },
                                      },
                                      path = "v1/{+parent}/dicomWeb/{+dicomWebPath}",
                                      response = {
                                        ["$ref"] = "HttpBody",
                                      },
                                      scopes = {
                                        "https://www.googleapis.com/auth/cloud-platform",
                                      },
                                    },
                                    retrieveRendered = {
                                      description = "RetrieveRenderedFrames returns instances associated with the given study, series, SOP Instance UID and frame numbers in an acceptable Rendered Media Type. See [RetrieveTransaction] (http://dicom.nema.org/medical/dicom/current/output/html/part18.html#sect_10.4). For details on the implementation of RetrieveRenderedFrames, see [Rendered resources](https://cloud.google.com/healthcare/docs/dicom#rendered_resources) in the Cloud Healthcare API conformance statement. For samples that show how to call RetrieveRenderedFrames, see [Retrieving consumer image formats](https://cloud.google.com/healthcare/docs/how-tos/dicomweb#retrieving_consumer_image_formats).",
                                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/datasets/{datasetsId}/dicomStores/{dicomStoresId}/dicomWeb/studies/{studiesId}/series/{seriesId}/instances/{instancesId}/frames/{framesId}/rendered",
                                      httpMethod = "GET",
                                      id = "healthcare.projects.locations.datasets.dicomStores.studies.series.instances.frames.retrieveRendered",
                                      parameterOrder = {
                                        "parent",
                                        "dicomWebPath",
                                      },
                                      parameters = {
                                        dicomWebPath = {
                                          description = "The path of the RetrieveRenderedFrames DICOMweb request. For example, `studies/{study_uid}/series/{series_uid}/instances/{instance_uid}/frames/{frame_list}/rendered`.",
                                          location = "path",
                                          pattern = "^studies/[^/]+/series/[^/]+/instances/[^/]+/frames/[^/]+/rendered$",
                                          required = true,
                                          type = "string",
                                        },
                                        parent = {
                                          description = "The name of the DICOM store that is being accessed. For example, `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/dicomStores/{dicom_store_id}`.",
                                          location = "path",
                                          pattern = "^projects/[^/]+/locations/[^/]+/datasets/[^/]+/dicomStores/[^/]+$",
                                          required = true,
                                          type = "string",
                                        },
                                      },
                                      path = "v1/{+parent}/dicomWeb/{+dicomWebPath}",
                                      response = {
                                        ["$ref"] = "HttpBody",
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
                fhirStores = {
                  methods = {
                    create = {
                      description = "Creates a new FHIR store within the parent dataset.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/datasets/{datasetsId}/fhirStores",
                      httpMethod = "POST",
                      id = "healthcare.projects.locations.datasets.fhirStores.create",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        fhirStoreId = {
                          description = "The ID of the FHIR store that is being created. The string must match the following regex: `[\\p{L}\\p{N}_\\-\\.]{1,256}`.",
                          location = "query",
                          type = "string",
                        },
                        parent = {
                          description = "The name of the dataset this FHIR store belongs to.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/datasets/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/fhirStores",
                      request = {
                        ["$ref"] = "FhirStore",
                      },
                      response = {
                        ["$ref"] = "FhirStore",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    deidentify = {
                      description = "De-identifies data from the source store and writes it to the destination store. The metadata field type is OperationMetadata. If the request is successful, the response field type is DeidentifyFhirStoreSummary. If errors occur, error is set. Error details are also logged to Cloud Logging (see [Viewing error logs in Cloud Logging](https://cloud.google.com/healthcare/docs/how-tos/logging)).",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/datasets/{datasetsId}/fhirStores/{fhirStoresId}:deidentify",
                      httpMethod = "POST",
                      id = "healthcare.projects.locations.datasets.fhirStores.deidentify",
                      parameterOrder = {
                        "sourceStore",
                      },
                      parameters = {
                        sourceStore = {
                          description = "Source FHIR store resource name. For example, `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/fhirStores/{fhir_store_id}`.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/datasets/[^/]+/fhirStores/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+sourceStore}:deidentify",
                      request = {
                        ["$ref"] = "DeidentifyFhirStoreRequest",
                      },
                      response = {
                        ["$ref"] = "Operation",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    delete = {
                      description = "Deletes the specified FHIR store and removes all resources within it.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/datasets/{datasetsId}/fhirStores/{fhirStoresId}",
                      httpMethod = "DELETE",
                      id = "healthcare.projects.locations.datasets.fhirStores.delete",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "The resource name of the FHIR store to delete.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/datasets/[^/]+/fhirStores/[^/]+$",
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
                    export = {
                      description = "Export resources from the FHIR store to the specified destination. This method returns an Operation that can be used to track the status of the export by calling GetOperation. Immediate fatal errors appear in the error field, errors are also logged to Cloud Logging (see [Viewing error logs in Cloud Logging](https://cloud.google.com/healthcare/docs/how-tos/logging)). Otherwise, when the operation finishes, a detailed response of type ExportResourcesResponse is returned in the response field. The metadata field type for this operation is OperationMetadata.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/datasets/{datasetsId}/fhirStores/{fhirStoresId}:export",
                      httpMethod = "POST",
                      id = "healthcare.projects.locations.datasets.fhirStores.export",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "The name of the FHIR store to export resource from, in the format of `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/fhirStores/{fhir_store_id}`.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/datasets/[^/]+/fhirStores/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}:export",
                      request = {
                        ["$ref"] = "ExportResourcesRequest",
                      },
                      response = {
                        ["$ref"] = "Operation",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    get = {
                      description = "Gets the configuration of the specified FHIR store.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/datasets/{datasetsId}/fhirStores/{fhirStoresId}",
                      httpMethod = "GET",
                      id = "healthcare.projects.locations.datasets.fhirStores.get",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "The resource name of the FHIR store to get.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/datasets/[^/]+/fhirStores/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}",
                      response = {
                        ["$ref"] = "FhirStore",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    getIamPolicy = {
                      description = "Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/datasets/{datasetsId}/fhirStores/{fhirStoresId}:getIamPolicy",
                      httpMethod = "GET",
                      id = "healthcare.projects.locations.datasets.fhirStores.getIamPolicy",
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
                          pattern = "^projects/[^/]+/locations/[^/]+/datasets/[^/]+/fhirStores/[^/]+$",
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
                    import = {
                      description = "Imports resources to the FHIR store by loading data from the specified sources. This method is optimized to load large quantities of data using import semantics that ignore some FHIR store configuration options and are not suitable for all use cases. It is primarily intended to load data into an empty FHIR store that is not being used by other clients. In cases where this method is not appropriate, consider using ExecuteBundle to load data. Every resource in the input must contain a client-supplied ID. Each resource is stored using the supplied ID regardless of the enable_update_create setting on the FHIR store. It is strongly advised not to include or encode any sensitive data such as patient identifiers in client-specified resource IDs. Those IDs are part of the FHIR resource path recorded in Cloud Audit Logs and Cloud Pub/Sub notifications. Those IDs can also be contained in reference fields within other resources. The import process does not enforce referential integrity, regardless of the disable_referential_integrity setting on the FHIR store. This allows the import of resources with arbitrary interdependencies without considering grouping or ordering, but if the input data contains invalid references or if some resources fail to be imported, the FHIR store might be left in a state that violates referential integrity. The import process does not trigger Pub/Sub notification or BigQuery streaming update, regardless of how those are configured on the FHIR store. If a resource with the specified ID already exists, the most recent version of the resource is overwritten without creating a new historical version, regardless of the disable_resource_versioning setting on the FHIR store. If transient failures occur during the import, it's possible that successfully imported resources will be overwritten more than once. The import operation is idempotent unless the input data contains multiple valid resources with the same ID but different contents. In that case, after the import completes, the store contains exactly one resource with that ID but there is no ordering guarantee on which version of the contents it will have. The operation result counters do not count duplicate IDs as an error and count one success for each resource in the input, which might result in a success count larger than the number of resources in the FHIR store. This often occurs when importing data organized in bundles produced by Patient-everything where each bundle contains its own copy of a resource such as Practitioner that might be referred to by many patients. If some resources fail to import, for example due to parsing errors, successfully imported resources are not rolled back. The location and format of the input data is specified by the parameters in ImportResourcesRequest. Note that if no format is specified, this method assumes the `BUNDLE` format. When using the `BUNDLE` format this method ignores the `Bundle.type` field, except that `history` bundles are rejected, and does not apply any of the bundle processing semantics for batch or transaction bundles. Unlike in ExecuteBundle, transaction bundles are not executed as a single transaction and bundle-internal references are not rewritten. The bundle is treated as a collection of resources to be written as provided in `Bundle.entry.resource`, ignoring `Bundle.entry.request`. As an example, this allows the import of `searchset` bundles produced by a FHIR search or Patient-everything operation. This method returns an Operation that can be used to track the status of the import by calling GetOperation. Immediate fatal errors appear in the error field, errors are also logged to Cloud Logging (see [Viewing error logs in Cloud Logging](https://cloud.google.com/healthcare/docs/how-tos/logging)). Otherwise, when the operation finishes, a detailed response of type ImportResourcesResponse is returned in the response field. The metadata field type for this operation is OperationMetadata.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/datasets/{datasetsId}/fhirStores/{fhirStoresId}:import",
                      httpMethod = "POST",
                      id = "healthcare.projects.locations.datasets.fhirStores.import",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "The name of the FHIR store to import FHIR resources to, in the format of `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/fhirStores/{fhir_store_id}`.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/datasets/[^/]+/fhirStores/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}:import",
                      request = {
                        ["$ref"] = "ImportResourcesRequest",
                      },
                      response = {
                        ["$ref"] = "Operation",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    list = {
                      description = "Lists the FHIR stores in the given dataset.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/datasets/{datasetsId}/fhirStores",
                      httpMethod = "GET",
                      id = "healthcare.projects.locations.datasets.fhirStores.list",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        filter = {
                          description = "Restricts stores returned to those matching a filter. The following syntax is available: * A string field value can be written as text inside quotation marks, for example `\"query text\"`. The only valid relational operation for text fields is equality (`=`), where text is searched within the field, rather than having the field be equal to the text. For example, `\"Comment = great\"` returns messages with `great` in the comment field. * A number field value can be written as an integer, a decimal, or an exponential. The valid relational operators for number fields are the equality operator (`=`), along with the less than/greater than operators (`<`, `<=`, `>`, `>=`). Note that there is no inequality (`!=`) operator. You can prepend the `NOT` operator to an expression to negate it. * A date field value must be written in `yyyy-mm-dd` form. Fields with date and time use the RFC3339 time format. Leading zeros are required for one-digit months and days. The valid relational operators for date fields are the equality operator (`=`) , along with the less than/greater than operators (`<`, `<=`, `>`, `>=`). Note that there is no inequality (`!=`) operator. You can prepend the `NOT` operator to an expression to negate it. * Multiple field query expressions can be combined in one query by adding `AND` or `OR` operators between the expressions. If a boolean operator appears within a quoted string, it is not treated as special, it's just another part of the character string to be matched. You can prepend the `NOT` operator to an expression to negate it. Only filtering on labels is supported, for example `labels.key=value`.",
                          location = "query",
                          type = "string",
                        },
                        pageSize = {
                          description = "Limit on the number of FHIR stores to return in a single response. If not specified, 100 is used. May not be larger than 1000.",
                          format = "int32",
                          location = "query",
                          type = "integer",
                        },
                        pageToken = {
                          description = "The next_page_token value returned from the previous List request, if any.",
                          location = "query",
                          type = "string",
                        },
                        parent = {
                          description = "Name of the dataset.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/datasets/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/fhirStores",
                      response = {
                        ["$ref"] = "ListFhirStoresResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    patch = {
                      description = "Updates the configuration of the specified FHIR store.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/datasets/{datasetsId}/fhirStores/{fhirStoresId}",
                      httpMethod = "PATCH",
                      id = "healthcare.projects.locations.datasets.fhirStores.patch",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Output only. Resource name of the FHIR store, of the form `projects/{project_id}/datasets/{dataset_id}/fhirStores/{fhir_store_id}`.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/datasets/[^/]+/fhirStores/[^/]+$",
                          required = true,
                          type = "string",
                        },
                        updateMask = {
                          description = "The update mask applies to the resource. For the `FieldMask` definition, see https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#fieldmask",
                          format = "google-fieldmask",
                          location = "query",
                          type = "string",
                        },
                      },
                      path = "v1/{+name}",
                      request = {
                        ["$ref"] = "FhirStore",
                      },
                      response = {
                        ["$ref"] = "FhirStore",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    setIamPolicy = {
                      description = "Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/datasets/{datasetsId}/fhirStores/{fhirStoresId}:setIamPolicy",
                      httpMethod = "POST",
                      id = "healthcare.projects.locations.datasets.fhirStores.setIamPolicy",
                      parameterOrder = {
                        "resource",
                      },
                      parameters = {
                        resource = {
                          description = "REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/datasets/[^/]+/fhirStores/[^/]+$",
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
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/datasets/{datasetsId}/fhirStores/{fhirStoresId}:testIamPermissions",
                      httpMethod = "POST",
                      id = "healthcare.projects.locations.datasets.fhirStores.testIamPermissions",
                      parameterOrder = {
                        "resource",
                      },
                      parameters = {
                        resource = {
                          description = "REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/datasets/[^/]+/fhirStores/[^/]+$",
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
                    fhir = {
                      methods = {
                        ["Patient-everything"] = {
                          description = "Retrieves a Patient resource and resources related to that patient. Implements the FHIR extended operation Patient-everything ([DSTU2](http://hl7.org/implement/standards/fhir/DSTU2/patient-operations.html#everything), [STU3](http://hl7.org/implement/standards/fhir/STU3/patient-operations.html#everything), [R4](http://hl7.org/implement/standards/fhir/R4/patient-operations.html#everything)). On success, the response body contains a JSON-encoded representation of a `Bundle` resource of type `searchset`, containing the results of the operation. Errors generated by the FHIR store contain a JSON-encoded `OperationOutcome` resource describing the reason for the error. If the request cannot be mapped to a valid API method on a FHIR store, a generic GCP error might be returned instead. The resources in scope for the response are: * The patient resource itself. * All the resources directly referenced by the patient resource. * Resources directly referencing the patient resource that meet the inclusion criteria. The inclusion criteria are based on the membership rules in the patient compartment definition ([DSTU2](http://hl7.org/fhir/DSTU2/compartment-patient.html), [STU3](http://www.hl7.org/fhir/stu3/compartmentdefinition-patient.html), [R4](http://hl7.org/fhir/R4/compartmentdefinition-patient.html)), which details the eligible resource types and referencing search parameters. For samples that show how to call `Patient-everything`, see [Getting all patient compartment resources](https://cloud.google.com/healthcare/docs/how-tos/fhir-resources#getting_all_patient_compartment_resources).",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/datasets/{datasetsId}/fhirStores/{fhirStoresId}/fhir/Patient/{PatientId}/$everything",
                          httpMethod = "GET",
                          id = "healthcare.projects.locations.datasets.fhirStores.fhir.Patient-everything",
                          parameterOrder = {
                            "name",
                          },
                          parameters = {
                            _count = {
                              description = "Maximum number of resources in a page. If not specified, 100 is used. May not be larger than 1000.",
                              format = "int32",
                              location = "query",
                              type = "integer",
                            },
                            _page_token = {
                              description = "Used to retrieve the next or previous page of results when using pagination. Set `_page_token` to the value of _page_token set in next or previous page links' url. Next and previous page are returned in the response bundle's links field, where `link.relation` is \"previous\" or \"next\". Omit `_page_token` if no previous request has been made.",
                              location = "query",
                              type = "string",
                            },
                            _since = {
                              description = "If provided, only resources updated after this time are returned. The time uses the format YYYY-MM-DDThh:mm:ss.sss+zz:zz. For example, `2015-02-07T13:28:17.239+02:00` or `2017-01-01T00:00:00Z`. The time must be specified to the second and include a time zone.",
                              location = "query",
                              type = "string",
                            },
                            _type = {
                              description = "String of comma-delimited FHIR resource types. If provided, only resources of the specified resource type(s) are returned.",
                              location = "query",
                              type = "string",
                            },
                            ["end"] = {
                              description = "The response includes records prior to the end date. The date uses the format YYYY-MM-DD. If no end date is provided, all records subsequent to the start date are in scope.",
                              location = "query",
                              type = "string",
                            },
                            name = {
                              description = "Name of the `Patient` resource for which the information is required.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/datasets/[^/]+/fhirStores/[^/]+/fhir/Patient/[^/]+$",
                              required = true,
                              type = "string",
                            },
                            start = {
                              description = "The response includes records subsequent to the start date. The date uses the format YYYY-MM-DD. If no start date is provided, all records prior to the end date are in scope.",
                              location = "query",
                              type = "string",
                            },
                          },
                          path = "v1/{+name}/$everything",
                          response = {
                            ["$ref"] = "HttpBody",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                          },
                        },
                        ["Resource-purge"] = {
                          description = "Deletes all the historical versions of a resource (excluding the current version) from the FHIR store. To remove all versions of a resource, first delete the current version and then call this method. This is not a FHIR standard operation. For samples that show how to call `Resource-purge`, see [Deleting historical versions of a FHIR resource](https://cloud.google.com/healthcare/docs/how-tos/fhir-resources#deleting_historical_versions_of_a_fhir_resource).",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/datasets/{datasetsId}/fhirStores/{fhirStoresId}/fhir/{fhirId}/{fhirId1}/$purge",
                          httpMethod = "DELETE",
                          id = "healthcare.projects.locations.datasets.fhirStores.fhir.Resource-purge",
                          parameterOrder = {
                            "name",
                          },
                          parameters = {
                            name = {
                              description = "The name of the resource to purge.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/datasets/[^/]+/fhirStores/[^/]+/fhir/[^/]+/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v1/{+name}/$purge",
                          response = {
                            ["$ref"] = "Empty",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                          },
                        },
                        ["Resource-validate"] = {
                          description = "Validates an input FHIR resource's conformance to its profiles and the profiles configured on the FHIR store. Implements the FHIR extended operation $validate ([DSTU2](http://hl7.org/implement/standards/fhir/DSTU2/resource-operations.html#validate), [STU3](http://hl7.org/implement/standards/fhir/STU3/resource-operations.html#validate), or [R4](http://hl7.org/implement/standards/fhir/R4/resource-operation-validate.html)). The request body must contain a JSON-encoded FHIR resource, and the request headers must contain `Content-Type: application/fhir+json`. The `Parameters` input syntax is not supported. The `profile` query parameter can be used to request that the resource only be validated against a specific profile. If a profile with the given URL cannot be found in the FHIR store then an error is returned. Errors generated by validation contain a JSON-encoded `OperationOutcome` resource describing the reason for the error. If the request cannot be mapped to a valid API method on a FHIR store, a generic GCP error might be returned instead.",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/datasets/{datasetsId}/fhirStores/{fhirStoresId}/fhir/{fhirId}/$validate",
                          httpMethod = "POST",
                          id = "healthcare.projects.locations.datasets.fhirStores.fhir.Resource-validate",
                          parameterOrder = {
                            "parent",
                            "type",
                          },
                          parameters = {
                            parent = {
                              description = "The name of the FHIR store that holds the profiles being used for validation.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/datasets/[^/]+/fhirStores/[^/]+$",
                              required = true,
                              type = "string",
                            },
                            profile = {
                              description = "The canonical URL of a profile that this resource should be validated against. For example, to validate a Patient resource against the US Core Patient profile this parameter would be `http://hl7.org/fhir/us/core/StructureDefinition/us-core-patient`. A StructureDefinition with this canonical URL must exist in the FHIR store.",
                              location = "query",
                              type = "string",
                            },
                            type = {
                              description = "The FHIR resource type of the resource being validated. For a complete list, see the FHIR Resource Index ([DSTU2](http://hl7.org/implement/standards/fhir/DSTU2/resourcelist.html), [STU3](http://hl7.org/implement/standards/fhir/STU3/resourcelist.html), or [R4](http://hl7.org/implement/standards/fhir/R4/resourcelist.html)). Must match the resource type in the provided content.",
                              location = "path",
                              pattern = "^[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v1/{+parent}/fhir/{+type}/$validate",
                          request = {
                            ["$ref"] = "HttpBody",
                          },
                          response = {
                            ["$ref"] = "HttpBody",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                          },
                        },
                        capabilities = {
                          description = "Gets the FHIR capability statement ([STU3](http://hl7.org/implement/standards/fhir/STU3/capabilitystatement.html), [R4](http://hl7.org/implement/standards/fhir/R4/capabilitystatement.html)), or the [conformance statement](http://hl7.org/implement/standards/fhir/DSTU2/conformance.html) in the DSTU2 case for the store, which contains a description of functionality supported by the server. Implements the FHIR standard capabilities interaction ([STU3](http://hl7.org/implement/standards/fhir/STU3/http.html#capabilities), [R4](http://hl7.org/implement/standards/fhir/R4/http.html#capabilities)), or the [conformance interaction](http://hl7.org/implement/standards/fhir/DSTU2/http.html#conformance) in the DSTU2 case. On success, the response body contains a JSON-encoded representation of a `CapabilityStatement` resource.",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/datasets/{datasetsId}/fhirStores/{fhirStoresId}/fhir/metadata",
                          httpMethod = "GET",
                          id = "healthcare.projects.locations.datasets.fhirStores.fhir.capabilities",
                          parameterOrder = {
                            "name",
                          },
                          parameters = {
                            name = {
                              description = "Name of the FHIR store to retrieve the capabilities for.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/datasets/[^/]+/fhirStores/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v1/{+name}/fhir/metadata",
                          response = {
                            ["$ref"] = "HttpBody",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                          },
                        },
                        create = {
                          description = "Creates a FHIR resource. Implements the FHIR standard create interaction ([DSTU2](http://hl7.org/implement/standards/fhir/DSTU2/http.html#create), [STU3](http://hl7.org/implement/standards/fhir/STU3/http.html#create), [R4](http://hl7.org/implement/standards/fhir/R4/http.html#create)), which creates a new resource with a server-assigned resource ID. The request body must contain a JSON-encoded FHIR resource, and the request headers must contain `Content-Type: application/fhir+json`. On success, the response body contains a JSON-encoded representation of the resource as it was created on the server, including the server-assigned resource ID and version ID. Errors generated by the FHIR store contain a JSON-encoded `OperationOutcome` resource describing the reason for the error. If the request cannot be mapped to a valid API method on a FHIR store, a generic GCP error might be returned instead. For samples that show how to call `create`, see [Creating a FHIR resource](https://cloud.google.com/healthcare/docs/how-tos/fhir-resources#creating_a_fhir_resource).",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/datasets/{datasetsId}/fhirStores/{fhirStoresId}/fhir/{fhirId}",
                          httpMethod = "POST",
                          id = "healthcare.projects.locations.datasets.fhirStores.fhir.create",
                          parameterOrder = {
                            "parent",
                            "type",
                          },
                          parameters = {
                            parent = {
                              description = "The name of the FHIR store this resource belongs to.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/datasets/[^/]+/fhirStores/[^/]+$",
                              required = true,
                              type = "string",
                            },
                            type = {
                              description = "The FHIR resource type to create, such as Patient or Observation. For a complete list, see the FHIR Resource Index ([DSTU2](http://hl7.org/implement/standards/fhir/DSTU2/resourcelist.html), [STU3](http://hl7.org/implement/standards/fhir/STU3/resourcelist.html), [R4](http://hl7.org/implement/standards/fhir/R4/resourcelist.html)). Must match the resource type in the provided content.",
                              location = "path",
                              pattern = "^[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v1/{+parent}/fhir/{+type}",
                          request = {
                            ["$ref"] = "HttpBody",
                          },
                          response = {
                            ["$ref"] = "HttpBody",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                          },
                        },
                        delete = {
                          description = "Deletes a FHIR resource. Implements the FHIR standard delete interaction ([DSTU2](http://hl7.org/implement/standards/fhir/DSTU2/http.html#delete), [STU3](http://hl7.org/implement/standards/fhir/STU3/http.html#delete), [R4](http://hl7.org/implement/standards/fhir/R4/http.html#delete)). Note: Unless resource versioning is disabled by setting the disable_resource_versioning flag on the FHIR store, the deleted resources will be moved to a history repository that can still be retrieved through vread and related methods, unless they are removed by the purge method. For samples that show how to call `delete`, see [Deleting a FHIR resource](https://cloud.google.com/healthcare/docs/how-tos/fhir-resources#deleting_a_fhir_resource).",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/datasets/{datasetsId}/fhirStores/{fhirStoresId}/fhir/{fhirId}/{fhirId1}",
                          httpMethod = "DELETE",
                          id = "healthcare.projects.locations.datasets.fhirStores.fhir.delete",
                          parameterOrder = {
                            "name",
                          },
                          parameters = {
                            name = {
                              description = "The name of the resource to delete.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/datasets/[^/]+/fhirStores/[^/]+/fhir/[^/]+/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v1/{+name}",
                          response = {
                            ["$ref"] = "HttpBody",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                          },
                        },
                        executeBundle = {
                          description = "Executes all the requests in the given Bundle. Implements the FHIR standard batch/transaction interaction ([DSTU2](https://hl7.org/implement/standards/fhir/DSTU2/http.html#transaction), [STU3](https://hl7.org/implement/standards/fhir/STU3/http.html#transaction), [R4](https://hl7.org/implement/standards/fhir/R4/http.html#transaction)). Supports all interactions within a bundle, except search. This method accepts Bundles of type `batch` and `transaction`, processing them according to the batch processing rules ([DSTU2](https://hl7.org/implement/standards/fhir/DSTU2/http.html#2.1.0.16.1), [STU3](https://hl7.org/implement/standards/fhir/STU3/http.html#2.21.0.17.1), [R4](https://hl7.org/implement/standards/fhir/R4/http.html#brules)) and transaction processing rules ([DSTU2](https://hl7.org/implement/standards/fhir/DSTU2/http.html#2.1.0.16.2), [STU3](https://hl7.org/implement/standards/fhir/STU3/http.html#2.21.0.17.2), [R4](https://hl7.org/implement/standards/fhir/R4/http.html#trules)). The request body must contain a JSON-encoded FHIR `Bundle` resource, and the request headers must contain `Content-Type: application/fhir+json`. For a batch bundle or a successful transaction, the response body contains a JSON-encoded representation of a `Bundle` resource of type `batch-response` or `transaction-response` containing one entry for each entry in the request, with the outcome of processing the entry. In the case of an error for a transaction bundle, the response body contains a JSON-encoded `OperationOutcome` resource describing the reason for the error. If the request cannot be mapped to a valid API method on a FHIR store, a generic GCP error might be returned instead. This method checks permissions for each request in the bundle. The `executeBundle` permission is required to call this method, but you must also grant sufficient permissions to execute the individual requests in the bundle. For example, if the bundle contains a request to create a FHIR resource, the caller must also have been granted the `healthcare.fhirResources.create` permission. You can use audit logs to view the permissions for `executeBundle` and each request in the bundle. For more information, see [Viewing Cloud Audit logs](https://cloud.google.com/healthcare-api/docs/how-tos/audit-logging). For samples that show how to call `executeBundle`, see [Managing FHIR resources using FHIR bundles](https://cloud.google.com/healthcare/docs/how-tos/fhir-bundles).",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/datasets/{datasetsId}/fhirStores/{fhirStoresId}/fhir",
                          httpMethod = "POST",
                          id = "healthcare.projects.locations.datasets.fhirStores.fhir.executeBundle",
                          parameterOrder = {
                            "parent",
                          },
                          parameters = {
                            parent = {
                              description = "Name of the FHIR store in which this bundle will be executed.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/datasets/[^/]+/fhirStores/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v1/{+parent}/fhir",
                          request = {
                            ["$ref"] = "HttpBody",
                          },
                          response = {
                            ["$ref"] = "HttpBody",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                          },
                        },
                        history = {
                          description = "Lists all the versions of a resource (including the current version and deleted versions) from the FHIR store. Implements the per-resource form of the FHIR standard history interaction ([DSTU2](http://hl7.org/implement/standards/fhir/DSTU2/http.html#history), [STU3](http://hl7.org/implement/standards/fhir/STU3/http.html#history), [R4](http://hl7.org/implement/standards/fhir/R4/http.html#history)). On success, the response body contains a JSON-encoded representation of a `Bundle` resource of type `history`, containing the version history sorted from most recent to oldest versions. Errors generated by the FHIR store contain a JSON-encoded `OperationOutcome` resource describing the reason for the error. If the request cannot be mapped to a valid API method on a FHIR store, a generic GCP error might be returned instead. For samples that show how to call `history`, see [Listing FHIR resource versions](https://cloud.google.com/healthcare/docs/how-tos/fhir-resources#listing_fhir_resource_versions).",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/datasets/{datasetsId}/fhirStores/{fhirStoresId}/fhir/{fhirId}/{fhirId1}/_history",
                          httpMethod = "GET",
                          id = "healthcare.projects.locations.datasets.fhirStores.fhir.history",
                          parameterOrder = {
                            "name",
                          },
                          parameters = {
                            _at = {
                              description = "Only include resource versions that were current at some point during the time period specified in the date time value. The date parameter format is yyyy-mm-ddThh:mm:ss[Z|(+|-)hh:mm] Clients may specify any of the following: * An entire year: `_at=2019` * An entire month: `_at=2019-01` * A specific day: `_at=2019-01-20` * A specific second: `_at=2018-12-31T23:59:58Z`",
                              location = "query",
                              type = "string",
                            },
                            _count = {
                              description = "The maximum number of search results on a page. If not specified, 100 is used. May not be larger than 1000.",
                              format = "int32",
                              location = "query",
                              type = "integer",
                            },
                            _page_token = {
                              description = "Used to retrieve the first, previous, next, or last page of resource versions when using pagination. Value should be set to the value of `_page_token` set in next or previous page links' URLs. Next and previous page are returned in the response bundle's links field, where `link.relation` is \"previous\" or \"next\". Omit `_page_token` if no previous request has been made.",
                              location = "query",
                              type = "string",
                            },
                            _since = {
                              description = "Only include resource versions that were created at or after the given instant in time. The instant in time uses the format YYYY-MM-DDThh:mm:ss.sss+zz:zz (for example 2015-02-07T13:28:17.239+02:00 or 2017-01-01T00:00:00Z). The time must be specified to the second and include a time zone.",
                              location = "query",
                              type = "string",
                            },
                            name = {
                              description = "The name of the resource to retrieve.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/datasets/[^/]+/fhirStores/[^/]+/fhir/[^/]+/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v1/{+name}/_history",
                          response = {
                            ["$ref"] = "HttpBody",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                          },
                        },
                        patch = {
                          description = "Updates part of an existing resource by applying the operations specified in a [JSON Patch](http://jsonpatch.com/) document. Implements the FHIR standard patch interaction ([STU3](http://hl7.org/implement/standards/fhir/STU3/http.html#patch), [R4](http://hl7.org/implement/standards/fhir/R4/http.html#patch)). DSTU2 doesn't define a patch method, but the server supports it in the same way it supports STU3. The request body must contain a JSON Patch document, and the request headers must contain `Content-Type: application/json-patch+json`. On success, the response body contains a JSON-encoded representation of the updated resource, including the server-assigned version ID. Errors generated by the FHIR store contain a JSON-encoded `OperationOutcome` resource describing the reason for the error. If the request cannot be mapped to a valid API method on a FHIR store, a generic GCP error might be returned instead. For samples that show how to call `patch`, see [Patching a FHIR resource](https://cloud.google.com/healthcare/docs/how-tos/fhir-resources#patching_a_fhir_resource).",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/datasets/{datasetsId}/fhirStores/{fhirStoresId}/fhir/{fhirId}/{fhirId1}",
                          httpMethod = "PATCH",
                          id = "healthcare.projects.locations.datasets.fhirStores.fhir.patch",
                          parameterOrder = {
                            "name",
                          },
                          parameters = {
                            name = {
                              description = "The name of the resource to update.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/datasets/[^/]+/fhirStores/[^/]+/fhir/[^/]+/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v1/{+name}",
                          request = {
                            ["$ref"] = "HttpBody",
                          },
                          response = {
                            ["$ref"] = "HttpBody",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                          },
                        },
                        read = {
                          description = "Gets the contents of a FHIR resource. Implements the FHIR standard read interaction ([DSTU2](http://hl7.org/implement/standards/fhir/DSTU2/http.html#read), [STU3](http://hl7.org/implement/standards/fhir/STU3/http.html#read), [R4](http://hl7.org/implement/standards/fhir/R4/http.html#read)). Also supports the FHIR standard conditional read interaction ([DSTU2](http://hl7.org/implement/standards/fhir/DSTU2/http.html#cread), [STU3](http://hl7.org/implement/standards/fhir/STU3/http.html#cread), [R4](http://hl7.org/implement/standards/fhir/R4/http.html#cread)) specified by supplying an `If-Modified-Since` header with a date/time value or an `If-None-Match` header with an ETag value. On success, the response body contains a JSON-encoded representation of the resource. Errors generated by the FHIR store contain a JSON-encoded `OperationOutcome` resource describing the reason for the error. If the request cannot be mapped to a valid API method on a FHIR store, a generic GCP error might be returned instead. For samples that show how to call `read`, see [Getting a FHIR resource](https://cloud.google.com/healthcare/docs/how-tos/fhir-resources#getting_a_fhir_resource).",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/datasets/{datasetsId}/fhirStores/{fhirStoresId}/fhir/{fhirId}/{fhirId1}",
                          httpMethod = "GET",
                          id = "healthcare.projects.locations.datasets.fhirStores.fhir.read",
                          parameterOrder = {
                            "name",
                          },
                          parameters = {
                            name = {
                              description = "The name of the resource to retrieve.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/datasets/[^/]+/fhirStores/[^/]+/fhir/[^/]+/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v1/{+name}",
                          response = {
                            ["$ref"] = "HttpBody",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                          },
                        },
                        search = {
                          description = "Searches for resources in the given FHIR store according to criteria specified as query parameters. Implements the FHIR standard search interaction ([DSTU2](http://hl7.org/implement/standards/fhir/DSTU2/http.html#search), [STU3](http://hl7.org/implement/standards/fhir/STU3/http.html#search), [R4](http://hl7.org/implement/standards/fhir/R4/http.html#search)) using the search semantics described in the FHIR Search specification ([DSTU2](http://hl7.org/implement/standards/fhir/DSTU2/search.html), [STU3](http://hl7.org/implement/standards/fhir/STU3/search.html), [R4](http://hl7.org/implement/standards/fhir/R4/search.html)). Supports four methods of search defined by the specification: * `GET [base]?[parameters]` to search across all resources. * `GET [base]/[type]?[parameters]` to search resources of a specified type. * `POST [base]/_search?[parameters]` as an alternate form having the same semantics as the `GET` method across all resources. * `POST [base]/[type]/_search?[parameters]` as an alternate form having the same semantics as the `GET` method for the specified type. The `GET` and `POST` methods do not support compartment searches. The `POST` method does not support `application/x-www-form-urlencoded` search parameters. On success, the response body contains a JSON-encoded representation of a `Bundle` resource of type `searchset`, containing the results of the search. Errors generated by the FHIR store contain a JSON-encoded `OperationOutcome` resource describing the reason for the error. If the request cannot be mapped to a valid API method on a FHIR store, a generic GCP error might be returned instead. The server's capability statement, retrieved through capabilities, indicates what search parameters are supported on each FHIR resource. A list of all search parameters defined by the specification can be found in the FHIR Search Parameter Registry ([STU3](http://hl7.org/implement/standards/fhir/STU3/searchparameter-registry.html), [R4](http://hl7.org/implement/standards/fhir/R4/searchparameter-registry.html)). FHIR search parameters for DSTU2 can be found on each resource's definition page. Supported search modifiers: `:missing`, `:exact`, `:contains`, `:text`, `:in`, `:not-in`, `:above`, `:below`, `:[type]`, `:not`, and `recurse` (DSTU2 and STU3) or `:iterate` (R4). Supported search result parameters: `_sort`, `_count`, `_include`, `_revinclude`, `_summary=text`, `_summary=data`, and `_elements`. The maximum number of search results returned defaults to 100, which can be overridden by the `_count` parameter up to a maximum limit of 1000. If there are additional results, the returned `Bundle` contains a link of `relation` \"next\", which has a `_page_token` parameter for an opaque pagination token that can be used to retrieve the next page. Resources with a total size larger than 5MB or a field count larger than 50,000 might not be fully searchable as the server might trim its generated search index in those cases. Note: FHIR resources are indexed asynchronously, so there might be a slight delay between the time a resource is created or changes and when the change is reflected in search results. For samples and detailed information, see [Searching for FHIR resources](https://cloud.google.com/healthcare/docs/how-tos/fhir-search) and [Advanced FHIR search features](https://cloud.google.com/healthcare/docs/how-tos/fhir-advanced-search).",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/datasets/{datasetsId}/fhirStores/{fhirStoresId}/fhir/_search",
                          httpMethod = "POST",
                          id = "healthcare.projects.locations.datasets.fhirStores.fhir.search",
                          parameterOrder = {
                            "parent",
                          },
                          parameters = {
                            parent = {
                              description = "Name of the FHIR store to retrieve resources from.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/datasets/[^/]+/fhirStores/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v1/{+parent}/fhir/_search",
                          request = {
                            ["$ref"] = "SearchResourcesRequest",
                          },
                          response = {
                            ["$ref"] = "HttpBody",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                          },
                        },
                        ["search-type"] = {
                          description = "Searches for resources in the given FHIR store according to criteria specified as query parameters. Implements the FHIR standard search interaction ([DSTU2](http://hl7.org/implement/standards/fhir/DSTU2/http.html#search), [STU3](http://hl7.org/implement/standards/fhir/STU3/http.html#search), [R4](http://hl7.org/implement/standards/fhir/R4/http.html#search)) using the search semantics described in the FHIR Search specification ([DSTU2](http://hl7.org/implement/standards/fhir/DSTU2/search.html), [STU3](http://hl7.org/implement/standards/fhir/STU3/search.html), [R4](http://hl7.org/implement/standards/fhir/R4/search.html)). Supports four methods of search defined by the specification: * `GET [base]?[parameters]` to search across all resources. * `GET [base]/[type]?[parameters]` to search resources of a specified type. * `POST [base]/_search?[parameters]` as an alternate form having the same semantics as the `GET` method across all resources. * `POST [base]/[type]/_search?[parameters]` as an alternate form having the same semantics as the `GET` method for the specified type. The `GET` and `POST` methods do not support compartment searches. The `POST` method does not support `application/x-www-form-urlencoded` search parameters. On success, the response body contains a JSON-encoded representation of a `Bundle` resource of type `searchset`, containing the results of the search. Errors generated by the FHIR store contain a JSON-encoded `OperationOutcome` resource describing the reason for the error. If the request cannot be mapped to a valid API method on a FHIR store, a generic GCP error might be returned instead. The server's capability statement, retrieved through capabilities, indicates what search parameters are supported on each FHIR resource. A list of all search parameters defined by the specification can be found in the FHIR Search Parameter Registry ([STU3](http://hl7.org/implement/standards/fhir/STU3/searchparameter-registry.html), [R4](http://hl7.org/implement/standards/fhir/R4/searchparameter-registry.html)). FHIR search parameters for DSTU2 can be found on each resource's definition page. Supported search modifiers: `:missing`, `:exact`, `:contains`, `:text`, `:in`, `:not-in`, `:above`, `:below`, `:[type]`, `:not`, and `recurse` (DSTU2 and STU3) or `:iterate` (R4). Supported search result parameters: `_sort`, `_count`, `_include`, `_revinclude`, `_summary=text`, `_summary=data`, and `_elements`. The maximum number of search results returned defaults to 100, which can be overridden by the `_count` parameter up to a maximum limit of 1000. If there are additional results, the returned `Bundle` contains a link of `relation` \"next\", which has a `_page_token` parameter for an opaque pagination token that can be used to retrieve the next page. Resources with a total size larger than 5MB or a field count larger than 50,000 might not be fully searchable as the server might trim its generated search index in those cases. Note: FHIR resources are indexed asynchronously, so there might be a slight delay between the time a resource is created or changes and when the change is reflected in search results. For samples and detailed information, see [Searching for FHIR resources](https://cloud.google.com/healthcare/docs/how-tos/fhir-search) and [Advanced FHIR search features](https://cloud.google.com/healthcare/docs/how-tos/fhir-advanced-search).",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/datasets/{datasetsId}/fhirStores/{fhirStoresId}/fhir/{resourceType}/_search",
                          httpMethod = "POST",
                          id = "healthcare.projects.locations.datasets.fhirStores.fhir.search-type",
                          parameterOrder = {
                            "parent",
                            "resourceType",
                          },
                          parameters = {
                            parent = {
                              description = "Name of the FHIR store to retrieve resources from.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/datasets/[^/]+/fhirStores/[^/]+$",
                              required = true,
                              type = "string",
                            },
                            resourceType = {
                              description = "The FHIR resource type to search, such as Patient or Observation. For a complete list, see the FHIR Resource Index ([DSTU2](http://hl7.org/implement/standards/fhir/DSTU2/resourcelist.html), [STU3](http://hl7.org/implement/standards/fhir/STU3/resourcelist.html), [R4](http://hl7.org/implement/standards/fhir/R4/resourcelist.html)).",
                              location = "path",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v1/{+parent}/fhir/{resourceType}/_search",
                          request = {
                            ["$ref"] = "SearchResourcesRequest",
                          },
                          response = {
                            ["$ref"] = "HttpBody",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                          },
                        },
                        update = {
                          description = "Updates the entire contents of a resource. Implements the FHIR standard update interaction ([DSTU2](http://hl7.org/implement/standards/fhir/DSTU2/http.html#update), [STU3](http://hl7.org/implement/standards/fhir/STU3/http.html#update), [R4](http://hl7.org/implement/standards/fhir/R4/http.html#update)). If the specified resource does not exist and the FHIR store has enable_update_create set, creates the resource with the client-specified ID. It is strongly advised not to include or encode any sensitive data such as patient identifiers in client-specified resource IDs. Those IDs are part of the FHIR resource path recorded in Cloud Audit Logs and Pub/Sub notifications. Those IDs can also be contained in reference fields within other resources. The request body must contain a JSON-encoded FHIR resource, and the request headers must contain `Content-Type: application/fhir+json`. The resource must contain an `id` element having an identical value to the ID in the REST path of the request. On success, the response body contains a JSON-encoded representation of the updated resource, including the server-assigned version ID. Errors generated by the FHIR store contain a JSON-encoded `OperationOutcome` resource describing the reason for the error. If the request cannot be mapped to a valid API method on a FHIR store, a generic GCP error might be returned instead. For samples that show how to call `update`, see [Updating a FHIR resource](https://cloud.google.com/healthcare/docs/how-tos/fhir-resources#updating_a_fhir_resource).",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/datasets/{datasetsId}/fhirStores/{fhirStoresId}/fhir/{fhirId}/{fhirId1}",
                          httpMethod = "PUT",
                          id = "healthcare.projects.locations.datasets.fhirStores.fhir.update",
                          parameterOrder = {
                            "name",
                          },
                          parameters = {
                            name = {
                              description = "The name of the resource to update.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/datasets/[^/]+/fhirStores/[^/]+/fhir/[^/]+/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v1/{+name}",
                          request = {
                            ["$ref"] = "HttpBody",
                          },
                          response = {
                            ["$ref"] = "HttpBody",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                          },
                        },
                        vread = {
                          description = "Gets the contents of a version (current or historical) of a FHIR resource by version ID. Implements the FHIR standard vread interaction ([DSTU2](http://hl7.org/implement/standards/fhir/DSTU2/http.html#vread), [STU3](http://hl7.org/implement/standards/fhir/STU3/http.html#vread), [R4](http://hl7.org/implement/standards/fhir/R4/http.html#vread)). On success, the response body contains a JSON-encoded representation of the resource. Errors generated by the FHIR store contain a JSON-encoded `OperationOutcome` resource describing the reason for the error. If the request cannot be mapped to a valid API method on a FHIR store, a generic GCP error might be returned instead. For samples that show how to call `vread`, see [Retrieving a FHIR resource version](https://cloud.google.com/healthcare/docs/how-tos/fhir-resources#retrieving_a_fhir_resource_version).",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/datasets/{datasetsId}/fhirStores/{fhirStoresId}/fhir/{fhirId}/{fhirId1}/_history/{_historyId}",
                          httpMethod = "GET",
                          id = "healthcare.projects.locations.datasets.fhirStores.fhir.vread",
                          parameterOrder = {
                            "name",
                          },
                          parameters = {
                            name = {
                              description = "The name of the resource version to retrieve.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/datasets/[^/]+/fhirStores/[^/]+/fhir/[^/]+/[^/]+/_history/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v1/{+name}",
                          response = {
                            ["$ref"] = "HttpBody",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                          },
                        },
                      },
                    },
                  },
                },
                hl7V2Stores = {
                  methods = {
                    create = {
                      description = "Creates a new HL7v2 store within the parent dataset.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/datasets/{datasetsId}/hl7V2Stores",
                      httpMethod = "POST",
                      id = "healthcare.projects.locations.datasets.hl7V2Stores.create",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        hl7V2StoreId = {
                          description = "The ID of the HL7v2 store that is being created. The string must match the following regex: `[\\p{L}\\p{N}_\\-\\.]{1,256}`.",
                          location = "query",
                          type = "string",
                        },
                        parent = {
                          description = "The name of the dataset this HL7v2 store belongs to.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/datasets/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/hl7V2Stores",
                      request = {
                        ["$ref"] = "Hl7V2Store",
                      },
                      response = {
                        ["$ref"] = "Hl7V2Store",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    delete = {
                      description = "Deletes the specified HL7v2 store and removes all messages that it contains.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/datasets/{datasetsId}/hl7V2Stores/{hl7V2StoresId}",
                      httpMethod = "DELETE",
                      id = "healthcare.projects.locations.datasets.hl7V2Stores.delete",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "The resource name of the HL7v2 store to delete.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/datasets/[^/]+/hl7V2Stores/[^/]+$",
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
                    export = {
                      description = "Exports the messages to a destination. To filter messages to be exported, define a filter using the start and end time, relative to the message generation time (MSH.7). This API returns an Operation that can be used to track the status of the job by calling GetOperation. Immediate fatal errors appear in the error field. Otherwise, when the operation finishes, a detailed response of type ExportMessagesResponse is returned in the response field. The metadata field type for this operation is OperationMetadata.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/datasets/{datasetsId}/hl7V2Stores/{hl7V2StoresId}:export",
                      httpMethod = "POST",
                      id = "healthcare.projects.locations.datasets.hl7V2Stores.export",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "The name of the source HL7v2 store, in the format `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/hl7v2Stores/{hl7v2_store_id}`",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/datasets/[^/]+/hl7V2Stores/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}:export",
                      request = {
                        ["$ref"] = "ExportMessagesRequest",
                      },
                      response = {
                        ["$ref"] = "Operation",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    get = {
                      description = "Gets the specified HL7v2 store.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/datasets/{datasetsId}/hl7V2Stores/{hl7V2StoresId}",
                      httpMethod = "GET",
                      id = "healthcare.projects.locations.datasets.hl7V2Stores.get",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "The resource name of the HL7v2 store to get.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/datasets/[^/]+/hl7V2Stores/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}",
                      response = {
                        ["$ref"] = "Hl7V2Store",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    getIamPolicy = {
                      description = "Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/datasets/{datasetsId}/hl7V2Stores/{hl7V2StoresId}:getIamPolicy",
                      httpMethod = "GET",
                      id = "healthcare.projects.locations.datasets.hl7V2Stores.getIamPolicy",
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
                          pattern = "^projects/[^/]+/locations/[^/]+/datasets/[^/]+/hl7V2Stores/[^/]+$",
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
                    import = {
                      description = "Import messages to the HL7v2 store by loading data from the specified sources. This method is optimized to load large quantities of data using import semantics that ignore some HL7v2 store configuration options and are not suitable for all use cases. It is primarily intended to load data into an empty HL7v2 store that is not being used by other clients. An existing message will be overwritten if a duplicate message is imported. A duplicate message is a message with the same raw bytes as a message that already exists in this HL7v2 store. When a message is overwritten, its labels will also be overwritten. The import operation is idempotent unless the input data contains multiple valid messages with the same raw bytes but different labels. In that case, after the import completes, the store contains exactly one message with those raw bytes but there is no ordering guarantee on which version of the labels it has. The operation result counters do not count duplicated raw bytes as an error and count one success for each message in the input, which might result in a success count larger than the number of messages in the HL7v2 store. If some messages fail to import, for example due to parsing errors, successfully imported messages are not rolled back. This method returns an Operation that can be used to track the status of the import by calling GetOperation. Immediate fatal errors appear in the error field, errors are also logged to Cloud Logging (see [Viewing error logs in Cloud Logging](https://cloud.google.com/healthcare/docs/how-tos/logging)). Otherwise, when the operation finishes, a response of type ImportMessagesResponse is returned in the response field. The metadata field type for this operation is OperationMetadata.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/datasets/{datasetsId}/hl7V2Stores/{hl7V2StoresId}:import",
                      httpMethod = "POST",
                      id = "healthcare.projects.locations.datasets.hl7V2Stores.import",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "The name of the target HL7v2 store, in the format `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/hl7v2Stores/{hl7v2_store_id}`",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/datasets/[^/]+/hl7V2Stores/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}:import",
                      request = {
                        ["$ref"] = "ImportMessagesRequest",
                      },
                      response = {
                        ["$ref"] = "Operation",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    list = {
                      description = "Lists the HL7v2 stores in the given dataset.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/datasets/{datasetsId}/hl7V2Stores",
                      httpMethod = "GET",
                      id = "healthcare.projects.locations.datasets.hl7V2Stores.list",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        filter = {
                          description = "Restricts stores returned to those matching a filter. The following syntax is available: * A string field value can be written as text inside quotation marks, for example `\"query text\"`. The only valid relational operation for text fields is equality (`=`), where text is searched within the field, rather than having the field be equal to the text. For example, `\"Comment = great\"` returns messages with `great` in the comment field. * A number field value can be written as an integer, a decimal, or an exponential. The valid relational operators for number fields are the equality operator (`=`), along with the less than/greater than operators (`<`, `<=`, `>`, `>=`). Note that there is no inequality (`!=`) operator. You can prepend the `NOT` operator to an expression to negate it. * A date field value must be written in `yyyy-mm-dd` form. Fields with date and time use the RFC3339 time format. Leading zeros are required for one-digit months and days. The valid relational operators for date fields are the equality operator (`=`) , along with the less than/greater than operators (`<`, `<=`, `>`, `>=`). Note that there is no inequality (`!=`) operator. You can prepend the `NOT` operator to an expression to negate it. * Multiple field query expressions can be combined in one query by adding `AND` or `OR` operators between the expressions. If a boolean operator appears within a quoted string, it is not treated as special, it's just another part of the character string to be matched. You can prepend the `NOT` operator to an expression to negate it. Only filtering on labels is supported. For example, `labels.key=value`.",
                          location = "query",
                          type = "string",
                        },
                        pageSize = {
                          description = "Limit on the number of HL7v2 stores to return in a single response. If not specified, 100 is used. May not be larger than 1000.",
                          format = "int32",
                          location = "query",
                          type = "integer",
                        },
                        pageToken = {
                          description = "The next_page_token value returned from the previous List request, if any.",
                          location = "query",
                          type = "string",
                        },
                        parent = {
                          description = "Name of the dataset.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/datasets/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/hl7V2Stores",
                      response = {
                        ["$ref"] = "ListHl7V2StoresResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    patch = {
                      description = "Updates the HL7v2 store.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/datasets/{datasetsId}/hl7V2Stores/{hl7V2StoresId}",
                      httpMethod = "PATCH",
                      id = "healthcare.projects.locations.datasets.hl7V2Stores.patch",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Resource name of the HL7v2 store, of the form `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/hl7V2Stores/{hl7v2_store_id}`.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/datasets/[^/]+/hl7V2Stores/[^/]+$",
                          required = true,
                          type = "string",
                        },
                        updateMask = {
                          description = "The update mask applies to the resource. For the `FieldMask` definition, see https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#fieldmask",
                          format = "google-fieldmask",
                          location = "query",
                          type = "string",
                        },
                      },
                      path = "v1/{+name}",
                      request = {
                        ["$ref"] = "Hl7V2Store",
                      },
                      response = {
                        ["$ref"] = "Hl7V2Store",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    setIamPolicy = {
                      description = "Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/datasets/{datasetsId}/hl7V2Stores/{hl7V2StoresId}:setIamPolicy",
                      httpMethod = "POST",
                      id = "healthcare.projects.locations.datasets.hl7V2Stores.setIamPolicy",
                      parameterOrder = {
                        "resource",
                      },
                      parameters = {
                        resource = {
                          description = "REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/datasets/[^/]+/hl7V2Stores/[^/]+$",
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
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/datasets/{datasetsId}/hl7V2Stores/{hl7V2StoresId}:testIamPermissions",
                      httpMethod = "POST",
                      id = "healthcare.projects.locations.datasets.hl7V2Stores.testIamPermissions",
                      parameterOrder = {
                        "resource",
                      },
                      parameters = {
                        resource = {
                          description = "REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/datasets/[^/]+/hl7V2Stores/[^/]+$",
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
                    messages = {
                      methods = {
                        create = {
                          description = "Parses and stores an HL7v2 message. This method triggers an asynchronous notification to any Pub/Sub topic configured in Hl7V2Store.Hl7V2NotificationConfig, if the filtering matches the message. If an MLLP adapter is configured to listen to a Pub/Sub topic, the adapter transmits the message when a notification is received.",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/datasets/{datasetsId}/hl7V2Stores/{hl7V2StoresId}/messages",
                          httpMethod = "POST",
                          id = "healthcare.projects.locations.datasets.hl7V2Stores.messages.create",
                          parameterOrder = {
                            "parent",
                          },
                          parameters = {
                            parent = {
                              description = "The name of the dataset this message belongs to.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/datasets/[^/]+/hl7V2Stores/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v1/{+parent}/messages",
                          request = {
                            ["$ref"] = "CreateMessageRequest",
                          },
                          response = {
                            ["$ref"] = "Message",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                          },
                        },
                        delete = {
                          description = "Deletes an HL7v2 message.",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/datasets/{datasetsId}/hl7V2Stores/{hl7V2StoresId}/messages/{messagesId}",
                          httpMethod = "DELETE",
                          id = "healthcare.projects.locations.datasets.hl7V2Stores.messages.delete",
                          parameterOrder = {
                            "name",
                          },
                          parameters = {
                            name = {
                              description = "The resource name of the HL7v2 message to delete.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/datasets/[^/]+/hl7V2Stores/[^/]+/messages/[^/]+$",
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
                          description = "Gets an HL7v2 message.",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/datasets/{datasetsId}/hl7V2Stores/{hl7V2StoresId}/messages/{messagesId}",
                          httpMethod = "GET",
                          id = "healthcare.projects.locations.datasets.hl7V2Stores.messages.get",
                          parameterOrder = {
                            "name",
                          },
                          parameters = {
                            name = {
                              description = "The resource name of the HL7v2 message to retrieve.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/datasets/[^/]+/hl7V2Stores/[^/]+/messages/[^/]+$",
                              required = true,
                              type = "string",
                            },
                            view = {
                              description = "Specifies which parts of the Message resource to return in the response. When unspecified, equivalent to FULL.",
                              enum = {
                                "MESSAGE_VIEW_UNSPECIFIED",
                                "RAW_ONLY",
                                "PARSED_ONLY",
                                "FULL",
                                "SCHEMATIZED_ONLY",
                                "BASIC",
                              },
                              enumDescriptions = {
                                "Not specified, equivalent to FULL.",
                                "Server responses include all the message fields except parsed_data field, and schematized_data fields.",
                                "Server responses include all the message fields except data field, and schematized_data fields.",
                                "Server responses include all the message fields.",
                                "Server responses include all the message fields except data and parsed_data fields.",
                                "Server responses include only the name field.",
                              },
                              location = "query",
                              type = "string",
                            },
                          },
                          path = "v1/{+name}",
                          response = {
                            ["$ref"] = "Message",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                          },
                        },
                        ingest = {
                          description = "Parses and stores an HL7v2 message. This method triggers an asynchronous notification to any Pub/Sub topic configured in Hl7V2Store.Hl7V2NotificationConfig, if the filtering matches the message. If an MLLP adapter is configured to listen to a Pub/Sub topic, the adapter transmits the message when a notification is received. If the method is successful, it generates a response containing an HL7v2 acknowledgment (`ACK`) message. If the method encounters an error, it returns a negative acknowledgment (`NACK`) message. This behavior is suitable for replying to HL7v2 interface systems that expect these acknowledgments.",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/datasets/{datasetsId}/hl7V2Stores/{hl7V2StoresId}/messages:ingest",
                          httpMethod = "POST",
                          id = "healthcare.projects.locations.datasets.hl7V2Stores.messages.ingest",
                          parameterOrder = {
                            "parent",
                          },
                          parameters = {
                            parent = {
                              description = "The name of the HL7v2 store this message belongs to.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/datasets/[^/]+/hl7V2Stores/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v1/{+parent}/messages:ingest",
                          request = {
                            ["$ref"] = "IngestMessageRequest",
                          },
                          response = {
                            ["$ref"] = "IngestMessageResponse",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                          },
                        },
                        list = {
                          description = "Lists all the messages in the given HL7v2 store with support for filtering. Note: HL7v2 messages are indexed asynchronously, so there might be a slight delay between the time a message is created and when it can be found through a filter.",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/datasets/{datasetsId}/hl7V2Stores/{hl7V2StoresId}/messages",
                          httpMethod = "GET",
                          id = "healthcare.projects.locations.datasets.hl7V2Stores.messages.list",
                          parameterOrder = {
                            "parent",
                          },
                          parameters = {
                            filter = {
                              description = "Restricts messages returned to those matching a filter. The following syntax is available: * A string field value can be written as text inside quotation marks, for example `\"query text\"`. The only valid relational operation for text fields is equality (`=`), where text is searched within the field, rather than having the field be equal to the text. For example, `\"Comment = great\"` returns messages with `great` in the comment field. * A number field value can be written as an integer, a decimal, or an exponential. The valid relational operators for number fields are the equality operator (`=`), along with the less than/greater than operators (`<`, `<=`, `>`, `>=`). Note that there is no inequality (`!=`) operator. You can prepend the `NOT` operator to an expression to negate it. * A date field value must be written in `yyyy-mm-dd` form. Fields with date and time use the RFC3339 time format. Leading zeros are required for one-digit months and days. The valid relational operators for date fields are the equality operator (`=`) , along with the less than/greater than operators (`<`, `<=`, `>`, `>=`). Note that there is no inequality (`!=`) operator. You can prepend the `NOT` operator to an expression to negate it. * Multiple field query expressions can be combined in one query by adding `AND` or `OR` operators between the expressions. If a boolean operator appears within a quoted string, it is not treated as special, it's just another part of the character string to be matched. You can prepend the `NOT` operator to an expression to negate it. Fields/functions available for filtering are: * `message_type`, from the MSH-9.1 field. For example, `NOT message_type = \"ADT\"`. * `send_date` or `sendDate`, the YYYY-MM-DD date the message was sent in the dataset's time_zone, from the MSH-7 segment. For example, `send_date < \"2017-01-02\"`. * `send_time`, the timestamp when the message was sent, using the RFC3339 time format for comparisons, from the MSH-7 segment. For example, `send_time < \"2017-01-02T00:00:00-05:00\"`. * `create_time`, the timestamp when the message was created in the HL7v2 store. Use the RFC3339 time format for comparisons. For example, `create_time < \"2017-01-02T00:00:00-05:00\"`. * `send_facility`, the care center that the message came from, from the MSH-4 segment. For example, `send_facility = \"ABC\"`. * `PatientId(value, type)`, which matches if the message lists a patient having an ID of the given value and type in the PID-2, PID-3, or PID-4 segments. For example, `PatientId(\"123456\", \"MRN\")`. * `labels.x`, a string value of the label with key `x` as set using the Message.labels map. For example, `labels.\"priority\"=\"high\"`. The operator `:*` can be used to assert the existence of a label. For example, `labels.\"priority\":*`.",
                              location = "query",
                              type = "string",
                            },
                            orderBy = {
                              description = "Orders messages returned by the specified order_by clause. Syntax: https://cloud.google.com/apis/design/design_patterns#sorting_order Fields available for ordering are: * `send_time`",
                              location = "query",
                              type = "string",
                            },
                            pageSize = {
                              description = "Limit on the number of messages to return in a single response. If not specified, 100 is used. May not be larger than 1000.",
                              format = "int32",
                              location = "query",
                              type = "integer",
                            },
                            pageToken = {
                              description = "The next_page_token value returned from the previous List request, if any.",
                              location = "query",
                              type = "string",
                            },
                            parent = {
                              description = "Name of the HL7v2 store to retrieve messages from.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/datasets/[^/]+/hl7V2Stores/[^/]+$",
                              required = true,
                              type = "string",
                            },
                            view = {
                              description = "Specifies the parts of the Message to return in the response. When unspecified, equivalent to BASIC. Setting this to anything other than BASIC with a `page_size` larger than the default can generate a large response, which impacts the performance of this method.",
                              enum = {
                                "MESSAGE_VIEW_UNSPECIFIED",
                                "RAW_ONLY",
                                "PARSED_ONLY",
                                "FULL",
                                "SCHEMATIZED_ONLY",
                                "BASIC",
                              },
                              enumDescriptions = {
                                "Not specified, equivalent to FULL.",
                                "Server responses include all the message fields except parsed_data field, and schematized_data fields.",
                                "Server responses include all the message fields except data field, and schematized_data fields.",
                                "Server responses include all the message fields.",
                                "Server responses include all the message fields except data and parsed_data fields.",
                                "Server responses include only the name field.",
                              },
                              location = "query",
                              type = "string",
                            },
                          },
                          path = "v1/{+parent}/messages",
                          response = {
                            ["$ref"] = "ListMessagesResponse",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                          },
                        },
                        patch = {
                          description = "Update the message. The contents of the message in Message.data and data extracted from the contents such as Message.create_time cannot be altered. Only the Message.labels field is allowed to be updated. The labels in the request are merged with the existing set of labels. Existing labels with the same keys are updated.",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/datasets/{datasetsId}/hl7V2Stores/{hl7V2StoresId}/messages/{messagesId}",
                          httpMethod = "PATCH",
                          id = "healthcare.projects.locations.datasets.hl7V2Stores.messages.patch",
                          parameterOrder = {
                            "name",
                          },
                          parameters = {
                            name = {
                              description = "Resource name of the Message, of the form `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/hl7V2Stores/{hl7_v2_store_id}/messages/{message_id}`. Assigned by the server.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/datasets/[^/]+/hl7V2Stores/[^/]+/messages/[^/]+$",
                              required = true,
                              type = "string",
                            },
                            updateMask = {
                              description = "The update mask applies to the resource. For the `FieldMask` definition, see https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#fieldmask",
                              format = "google-fieldmask",
                              location = "query",
                              type = "string",
                            },
                          },
                          path = "v1/{+name}",
                          request = {
                            ["$ref"] = "Message",
                          },
                          response = {
                            ["$ref"] = "Message",
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
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/datasets/{datasetsId}/operations/{operationsId}:cancel",
                      httpMethod = "POST",
                      id = "healthcare.projects.locations.datasets.operations.cancel",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "The name of the operation resource to be cancelled.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/datasets/[^/]+/operations/[^/]+$",
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
                    get = {
                      description = "Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/datasets/{datasetsId}/operations/{operationsId}",
                      httpMethod = "GET",
                      id = "healthcare.projects.locations.datasets.operations.get",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "The name of the operation resource.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/datasets/[^/]+/operations/[^/]+$",
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
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/datasets/{datasetsId}/operations",
                      httpMethod = "GET",
                      id = "healthcare.projects.locations.datasets.operations.list",
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
                          pattern = "^projects/[^/]+/locations/[^/]+/datasets/[^/]+$",
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
            services = {
              resources = {
                nlp = {
                  methods = {
                    analyzeEntities = {
                      description = "Analyze heathcare entity in a document. Its response includes the recognized entity mentions and the relationships between them. AnalyzeEntities uses context aware models to detect entities.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/services/nlp:analyzeEntities",
                      httpMethod = "POST",
                      id = "healthcare.projects.locations.services.nlp.analyzeEntities",
                      parameterOrder = {
                        "nlpService",
                      },
                      parameters = {
                        nlpService = {
                          description = "The resource name of the service of the form: \"projects/{project_id}/locations/{location_id}/services/nlp\".",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/services/nlp$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+nlpService}:analyzeEntities",
                      request = {
                        ["$ref"] = "AnalyzeEntitiesRequest",
                      },
                      response = {
                        ["$ref"] = "AnalyzeEntitiesResponse",
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
  revision = "20221220",
  rootUrl = "https://healthcare.googleapis.com/",
  schemas = {
    ActivateConsentRequest = {
      description = "Activates the latest revision of the specified Consent by committing a new revision with `state` updated to `ACTIVE`. If the latest revision of the given Consent is in the `ACTIVE` state, no new revision is committed. A FAILED_PRECONDITION error occurs if the latest revision of the given consent is in the `REJECTED` or `REVOKED` state.",
      id = "ActivateConsentRequest",
      properties = {
        consentArtifact = {
          description = "Required. The resource name of the Consent artifact that contains documentation of the user's consent, of the form `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/consentStores/{consent_store_id}/consentArtifacts/{consent_artifact_id}`. If the draft Consent had a Consent artifact, this Consent artifact overwrites it.",
          type = "string",
        },
        expireTime = {
          description = "Timestamp in UTC of when this Consent is considered expired.",
          format = "google-datetime",
          type = "string",
        },
        ttl = {
          description = "The time to live for this Consent from when it is marked as active.",
          format = "google-duration",
          type = "string",
        },
      },
      type = "object",
    },
    AnalyzeEntitiesRequest = {
      description = "The request to analyze healthcare entities in a document.",
      id = "AnalyzeEntitiesRequest",
      properties = {
        documentContent = {
          description = "document_content is a document to be annotated.",
          type = "string",
        },
        licensedVocabularies = {
          description = "A list of licensed vocabularies to use in the request, in addition to the default unlicensed vocabularies.",
          items = {
            enum = {
              "LICENSED_VOCABULARY_UNSPECIFIED",
              "ICD10CM",
              "SNOMEDCT_US",
            },
            enumDescriptions = {
              "No licensed vocabulary specified.",
              "ICD-10-CM vocabulary",
              "SNOMED CT (US version) vocabulary",
            },
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    AnalyzeEntitiesResponse = {
      description = "Includes recognized entity mentions and relationships between them.",
      id = "AnalyzeEntitiesResponse",
      properties = {
        entities = {
          description = "The union of all the candidate entities that the entity_mentions in this response could link to. These are UMLS concepts or normalized mention content.",
          items = {
            ["$ref"] = "Entity",
          },
          type = "array",
        },
        entityMentions = {
          description = "entity_mentions contains all the annotated medical entities that were mentioned in the provided document.",
          items = {
            ["$ref"] = "EntityMention",
          },
          type = "array",
        },
        relationships = {
          description = "relationships contains all the binary relationships that were identified between entity mentions within the provided document.",
          items = {
            ["$ref"] = "EntityMentionRelationship",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ArchiveUserDataMappingRequest = {
      description = "Archives the specified User data mapping.",
      id = "ArchiveUserDataMappingRequest",
      properties = {},
      type = "object",
    },
    ArchiveUserDataMappingResponse = {
      description = "Archives the specified User data mapping.",
      id = "ArchiveUserDataMappingResponse",
      properties = {},
      type = "object",
    },
    Attribute = {
      description = "An attribute value for a Consent or User data mapping. Each Attribute must have a corresponding AttributeDefinition in the consent store that defines the default and allowed values.",
      id = "Attribute",
      properties = {
        attributeDefinitionId = {
          description = "Indicates the name of an attribute defined in the consent store.",
          type = "string",
        },
        values = {
          description = "Required. The value of the attribute. Must be an acceptable value as defined in the consent store. For example, if the consent store defines \"data type\" with acceptable values \"questionnaire\" and \"step-count\", when the attribute name is data type, this field must contain one of those values.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    AttributeDefinition = {
      description = "A client-defined consent attribute.",
      id = "AttributeDefinition",
      properties = {
        allowedValues = {
          description = "Required. Possible values for the attribute. The number of allowed values must not exceed 500. An empty list is invalid. The list can only be expanded after creation.",
          items = {
            type = "string",
          },
          type = "array",
        },
        category = {
          description = "Required. The category of the attribute. The value of this field cannot be changed after creation.",
          enum = {
            "CATEGORY_UNSPECIFIED",
            "RESOURCE",
            "REQUEST",
          },
          enumDescriptions = {
            "No category specified. This option is invalid.",
            "Specify this category when this attribute describes the properties of resources. For example, data anonymity or data type.",
            "Specify this category when this attribute describes the properties of requests. For example, requester's role or requester's organization.",
          },
          type = "string",
        },
        consentDefaultValues = {
          description = "Optional. Default values of the attribute in Consents. If no default values are specified, it defaults to an empty value.",
          items = {
            type = "string",
          },
          type = "array",
        },
        dataMappingDefaultValue = {
          description = "Optional. Default value of the attribute in User data mappings. If no default value is specified, it defaults to an empty value. This field is only applicable to attributes of the category `RESOURCE`.",
          type = "string",
        },
        description = {
          description = "Optional. A description of the attribute.",
          type = "string",
        },
        name = {
          description = "Resource name of the Attribute definition, of the form `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/consentStores/{consent_store_id}/attributeDefinitions/{attribute_definition_id}`. Cannot be changed after creation.",
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
    CharacterMaskConfig = {
      description = "Mask a string by replacing its characters with a fixed character.",
      id = "CharacterMaskConfig",
      properties = {
        maskingCharacter = {
          description = "Character to mask the sensitive values. If not supplied, defaults to \"*\".",
          type = "string",
        },
      },
      type = "object",
    },
    CheckDataAccessRequest = {
      description = "Checks if a particular data_id of a User data mapping in the given consent store is consented for a given use.",
      id = "CheckDataAccessRequest",
      properties = {
        consentList = {
          ["$ref"] = "ConsentList",
          description = "Optional. Specific Consents to evaluate the access request against. These Consents must have the same `user_id` as the evaluated User data mapping, must exist in the current `consent_store`, and have a `state` of either `ACTIVE` or `DRAFT`. A maximum of 100 Consents can be provided here. If no selection is specified, the access request is evaluated against all `ACTIVE` unexpired Consents with the same `user_id` as the evaluated User data mapping.",
        },
        dataId = {
          description = "Required. The unique identifier of the resource to check access for. This identifier must correspond to a User data mapping in the given consent store.",
          type = "string",
        },
        requestAttributes = {
          additionalProperties = {
            type = "string",
          },
          description = "The values of request attributes associated with this access request.",
          type = "object",
        },
        responseView = {
          description = "Optional. The view for CheckDataAccessResponse. If unspecified, defaults to `BASIC` and returns `consented` as `TRUE` or `FALSE`.",
          enum = {
            "RESPONSE_VIEW_UNSPECIFIED",
            "BASIC",
            "FULL",
          },
          enumDescriptions = {
            "No response view specified. The API will default to the BASIC view.",
            "Only the `consented` field is populated in CheckDataAccessResponse.",
            "All fields within CheckDataAccessResponse are populated. When set to `FULL`, all `ACTIVE` Consents are evaluated even if a matching policy is found during evaluation.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    CheckDataAccessResponse = {
      description = "Checks if a particular data_id of a User data mapping in the given consent store is consented for a given use.",
      id = "CheckDataAccessResponse",
      properties = {
        consentDetails = {
          additionalProperties = {
            ["$ref"] = "ConsentEvaluation",
          },
          description = "The resource names of all evaluated Consents mapped to their evaluation.",
          type = "object",
        },
        consented = {
          description = "Whether the requested resource is consented for the given use.",
          type = "boolean",
        },
      },
      type = "object",
    },
    Consent = {
      description = "Represents a user's consent.",
      id = "Consent",
      properties = {
        consentArtifact = {
          description = "Required. The resource name of the Consent artifact that contains proof of the end user's consent, of the form `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/consentStores/{consent_store_id}/consentArtifacts/{consent_artifact_id}`.",
          type = "string",
        },
        expireTime = {
          description = "Timestamp in UTC of when this Consent is considered expired.",
          format = "google-datetime",
          type = "string",
        },
        metadata = {
          additionalProperties = {
            type = "string",
          },
          description = "Optional. User-supplied key-value pairs used to organize Consent resources. Metadata keys must: - be between 1 and 63 characters long - have a UTF-8 encoding of maximum 128 bytes - begin with a letter - consist of up to 63 characters including lowercase letters, numeric characters, underscores, and dashes Metadata values must be: - be between 1 and 63 characters long - have a UTF-8 encoding of maximum 128 bytes - consist of up to 63 characters including lowercase letters, numeric characters, underscores, and dashes No more than 64 metadata entries can be associated with a given consent.",
          type = "object",
        },
        name = {
          description = "Resource name of the Consent, of the form `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/consentStores/{consent_store_id}/consents/{consent_id}`. Cannot be changed after creation.",
          type = "string",
        },
        policies = {
          description = "Optional. Represents a user's consent in terms of the resources that can be accessed and under what conditions.",
          items = {
            ["$ref"] = "GoogleCloudHealthcareV1ConsentPolicy",
          },
          type = "array",
        },
        revisionCreateTime = {
          description = "Output only. The timestamp that the revision was created.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        revisionId = {
          description = "Output only. The revision ID of the Consent. The format is an 8-character hexadecimal string. Refer to a specific revision of a Consent by appending `@{revision_id}` to the Consent's resource name.",
          readOnly = true,
          type = "string",
        },
        state = {
          description = "Required. Indicates the current state of this Consent.",
          enum = {
            "STATE_UNSPECIFIED",
            "ACTIVE",
            "ARCHIVED",
            "REVOKED",
            "DRAFT",
            "REJECTED",
          },
          enumDescriptions = {
            "No state specified. Treated as ACTIVE only at the time of resource creation.",
            "The Consent is active and is considered when evaluating a user's consent on resources.",
            "The archived state is currently not being used.",
            "A revoked Consent is not considered when evaluating a user's consent on resources.",
            "A draft Consent is not considered when evaluating a user's consent on resources unless explicitly specified.",
            "When a draft Consent is rejected by a user, it is set to a rejected state. A rejected Consent is not considered when evaluating a user's consent on resources.",
          },
          type = "string",
        },
        ttl = {
          description = "Input only. The time to live for this Consent from when it is created.",
          format = "google-duration",
          type = "string",
        },
        userId = {
          description = "Required. User's UUID provided by the client.",
          type = "string",
        },
      },
      type = "object",
    },
    ConsentArtifact = {
      description = "Documentation of a user's consent.",
      id = "ConsentArtifact",
      properties = {
        consentContentScreenshots = {
          description = "Optional. Screenshots, PDFs, or other binary information documenting the user's consent.",
          items = {
            ["$ref"] = "Image",
          },
          type = "array",
        },
        consentContentVersion = {
          description = "Optional. An string indicating the version of the consent information shown to the user.",
          type = "string",
        },
        guardianSignature = {
          ["$ref"] = "Signature",
          description = "Optional. A signature from a guardian.",
        },
        metadata = {
          additionalProperties = {
            type = "string",
          },
          description = "Optional. Metadata associated with the Consent artifact. For example, the consent locale or user agent version.",
          type = "object",
        },
        name = {
          description = "Resource name of the Consent artifact, of the form `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/consentStores/{consent_store_id}/consentArtifacts/{consent_artifact_id}`. Cannot be changed after creation.",
          type = "string",
        },
        userId = {
          description = "Required. User's UUID provided by the client.",
          type = "string",
        },
        userSignature = {
          ["$ref"] = "Signature",
          description = "Optional. User's signature.",
        },
        witnessSignature = {
          ["$ref"] = "Signature",
          description = "Optional. A signature from a witness.",
        },
      },
      type = "object",
    },
    ConsentEvaluation = {
      description = "The detailed evaluation of a particular Consent.",
      id = "ConsentEvaluation",
      properties = {
        evaluationResult = {
          description = "The evaluation result.",
          enum = {
            "EVALUATION_RESULT_UNSPECIFIED",
            "NOT_APPLICABLE",
            "NO_MATCHING_POLICY",
            "NO_SATISFIED_POLICY",
            "HAS_SATISFIED_POLICY",
          },
          enumDescriptions = {
            "No evaluation result specified. This option is invalid.",
            "The Consent is not applicable to the requested access determination. For example, the Consent does not apply to the user for which the access determination is requested, or it has a `state` of `REVOKED`, or it has expired.",
            "The Consent does not have a policy that matches the `resource_attributes` of the evaluated resource.",
            "The Consent has at least one policy that matches the `resource_attributes` of the evaluated resource, but no `authorization_rule` was satisfied.",
            "The Consent has at least one policy that matches the `resource_attributes` of the evaluated resource, and at least one `authorization_rule` was satisfied.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    ConsentList = {
      description = "List of resource names of Consent resources.",
      id = "ConsentList",
      properties = {
        consents = {
          description = "The resource names of the Consents to evaluate against, of the form `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/consentStores/{consent_store_id}/consents/{consent_id}`.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ConsentStore = {
      description = "Represents a consent store.",
      id = "ConsentStore",
      properties = {
        defaultConsentTtl = {
          description = "Optional. Default time to live for Consents created in this store. Must be at least 24 hours. Updating this field will not affect the expiration time of existing consents.",
          format = "google-duration",
          type = "string",
        },
        enableConsentCreateOnUpdate = {
          description = "Optional. If `true`, UpdateConsent creates the Consent if it does not already exist. If unspecified, defaults to `false`.",
          type = "boolean",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "Optional. User-supplied key-value pairs used to organize consent stores. Label keys must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: \\p{Ll}\\p{Lo}{0,62}. Label values must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: [\\p{Ll}\\p{Lo}\\p{N}_-]{0,63}. No more than 64 labels can be associated with a given store. For more information: https://cloud.google.com/healthcare/docs/how-tos/labeling-resources",
          type = "object",
        },
        name = {
          description = "Resource name of the consent store, of the form `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/consentStores/{consent_store_id}`. Cannot be changed after creation.",
          type = "string",
        },
      },
      type = "object",
    },
    CreateMessageRequest = {
      description = "Creates a new message.",
      id = "CreateMessageRequest",
      properties = {
        message = {
          ["$ref"] = "Message",
          description = "HL7v2 message.",
        },
      },
      type = "object",
    },
    CryptoHashConfig = {
      description = "Pseudonymization method that generates surrogates via cryptographic hashing. Uses SHA-256. Outputs a base64-encoded representation of the hashed output (for example, `L7k0BHmF1ha5U3NfGykjro4xWi1MPVQPjhMAZbSV9mM=`).",
      id = "CryptoHashConfig",
      properties = {
        cryptoKey = {
          description = "An AES 128/192/256 bit key. Causes the hash to be computed based on this key. A default key is generated for each Deidentify operation and is used when neither `crypto_key` nor `kms_wrapped` is specified. Must not be set if `kms_wrapped` is set.",
          format = "byte",
          type = "string",
        },
        kmsWrapped = {
          ["$ref"] = "KmsWrappedCryptoKey",
          description = "KMS wrapped key. Must not be set if `crypto_key` is set.",
        },
      },
      type = "object",
    },
    Dataset = {
      description = "A message representing a health dataset. A health dataset represents a collection of healthcare data pertaining to one or more patients. This may include multiple modalities of healthcare data, such as electronic medical records or medical imaging data.",
      id = "Dataset",
      properties = {
        name = {
          description = "Resource name of the dataset, of the form `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}`.",
          type = "string",
        },
        timeZone = {
          description = "The default timezone used by this dataset. Must be a either a valid IANA time zone name such as \"America/New_York\" or empty, which defaults to UTC. This is used for parsing times in resources, such as HL7 messages, where no explicit timezone is specified.",
          type = "string",
        },
      },
      type = "object",
    },
    DateShiftConfig = {
      description = "Shift a date forward or backward in time by a random amount which is consistent for a given patient and crypto key combination.",
      id = "DateShiftConfig",
      properties = {
        cryptoKey = {
          description = "An AES 128/192/256 bit key. The date shift is computed based on this key and the patient ID. If the patient ID is empty for a DICOM resource, the date shift is computed based on this key and the study instance UID. If `crypto_key` is not set, then `kms_wrapped` is used to calculate the date shift. If neither is set, a default key is generated for each de-identify operation. Must not be set if `kms_wrapped` is set.",
          format = "byte",
          type = "string",
        },
        kmsWrapped = {
          ["$ref"] = "KmsWrappedCryptoKey",
          description = "KMS wrapped key. If `kms_wrapped` is not set, then `crypto_key` is used to calculate the date shift. If neither is set, a default key is generated for each de-identify operation. Must not be set if `crypto_key` is set.",
        },
      },
      type = "object",
    },
    DeidentifiedStoreDestination = {
      description = "Contains configuration for streaming de-identified FHIR export.",
      id = "DeidentifiedStoreDestination",
      properties = {
        config = {
          ["$ref"] = "DeidentifyConfig",
          description = "The configuration to use when de-identifying resources that are added to this store.",
        },
        store = {
          description = "The full resource name of a Cloud Healthcare FHIR store, for example, `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/fhirStores/{fhir_store_id}`.",
          type = "string",
        },
      },
      type = "object",
    },
    DeidentifyConfig = {
      description = "Configures de-id options specific to different types of content. Each submessage customizes the handling of an https://tools.ietf.org/html/rfc6838 media type or subtype. Configs are applied in a nested manner at runtime.",
      id = "DeidentifyConfig",
      properties = {
        dicom = {
          ["$ref"] = "DicomConfig",
          description = "Configures de-id of application/DICOM content.",
        },
        fhir = {
          ["$ref"] = "FhirConfig",
          description = "Configures de-id of application/FHIR content.",
        },
        image = {
          ["$ref"] = "ImageConfig",
          description = "Configures de-identification of image pixels wherever they are found in the source_dataset.",
        },
        text = {
          ["$ref"] = "TextConfig",
          description = "Configures de-identification of text wherever it is found in the source_dataset.",
        },
      },
      type = "object",
    },
    DeidentifyDatasetRequest = {
      description = "Redacts identifying information from the specified dataset.",
      id = "DeidentifyDatasetRequest",
      properties = {
        config = {
          ["$ref"] = "DeidentifyConfig",
          description = "Deidentify configuration. Only one of `config` and `gcs_config_uri` can be specified.",
        },
        destinationDataset = {
          description = "The name of the dataset resource to create and write the redacted data to. * The destination dataset must not exist. * The destination dataset must be in the same location as the source dataset. De-identifying data across multiple locations is not supported.",
          type = "string",
        },
        gcsConfigUri = {
          description = "Cloud Storage location to read the JSON cloud.healthcare.deidentify.DeidentifyConfig from, overriding the default config. Must be of the form `gs://{bucket_id}/path/to/object`. The Cloud Storage location must grant the Cloud IAM role `roles/storage.objectViewer` to the project's Cloud Healthcare Service Agent service account. Only one of `config` and `gcs_config_uri` can be specified.",
          type = "string",
        },
      },
      type = "object",
    },
    DeidentifyDicomStoreRequest = {
      description = "Creates a new DICOM store with sensitive information de-identified.",
      id = "DeidentifyDicomStoreRequest",
      properties = {
        config = {
          ["$ref"] = "DeidentifyConfig",
          description = "Deidentify configuration. Only one of `config` and `gcs_config_uri` can be specified.",
        },
        destinationStore = {
          description = "The name of the DICOM store to create and write the redacted data to. For example, `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/dicomStores/{dicom_store_id}`. * The destination dataset must exist. * The source dataset and destination dataset must both reside in the same location. De-identifying data across multiple locations is not supported. * The destination DICOM store must not exist. * The caller must have the necessary permissions to create the destination DICOM store.",
          type = "string",
        },
        filterConfig = {
          ["$ref"] = "DicomFilterConfig",
          description = "Filter configuration.",
        },
        gcsConfigUri = {
          description = "Cloud Storage location to read the JSON cloud.healthcare.deidentify.DeidentifyConfig from, overriding the default config. Must be of the form `gs://{bucket_id}/path/to/object`. The Cloud Storage location must grant the Cloud IAM role `roles/storage.objectViewer` to the project's Cloud Healthcare Service Agent service account. Only one of `config` and `gcs_config_uri` can be specified.",
          type = "string",
        },
      },
      type = "object",
    },
    DeidentifyFhirStoreRequest = {
      description = "Creates a new FHIR store with sensitive information de-identified.",
      id = "DeidentifyFhirStoreRequest",
      properties = {
        config = {
          ["$ref"] = "DeidentifyConfig",
          description = "Deidentify configuration. Only one of `config` and `gcs_config_uri` can be specified.",
        },
        destinationStore = {
          description = "The name of the FHIR store to create and write the redacted data to. For example, `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/fhirStores/{fhir_store_id}`. * The destination dataset must exist. * The source dataset and destination dataset must both reside in the same location. De-identifying data across multiple locations is not supported. * The destination FHIR store must exist. * The caller must have the healthcare.fhirResources.update permission to write to the destination FHIR store.",
          type = "string",
        },
        gcsConfigUri = {
          description = "Cloud Storage location to read the JSON cloud.healthcare.deidentify.DeidentifyConfig from, overriding the default config. Must be of the form `gs://{bucket_id}/path/to/object`. The Cloud Storage location must grant the Cloud IAM role `roles/storage.objectViewer` to the project's Cloud Healthcare Service Agent service account. Only one of `config` and `gcs_config_uri` can be specified.",
          type = "string",
        },
        resourceFilter = {
          ["$ref"] = "FhirFilter",
          description = "A filter specifying the resources to include in the output. If not specified, all resources are included in the output.",
        },
        skipModifiedResources = {
          description = "If true, skips resources that are created or modified after the de-identify operation is created.",
          type = "boolean",
        },
      },
      type = "object",
    },
    DeidentifySummary = {
      description = "Contains a summary of the Deidentify operation.",
      id = "DeidentifySummary",
      properties = {},
      type = "object",
    },
    DicomConfig = {
      description = "Specifies the parameters needed for de-identification of DICOM stores.",
      id = "DicomConfig",
      properties = {
        filterProfile = {
          description = "Tag filtering profile that determines which tags to keep/remove.",
          enum = {
            "TAG_FILTER_PROFILE_UNSPECIFIED",
            "MINIMAL_KEEP_LIST_PROFILE",
            "ATTRIBUTE_CONFIDENTIALITY_BASIC_PROFILE",
            "KEEP_ALL_PROFILE",
            "DEIDENTIFY_TAG_CONTENTS",
          },
          enumDescriptions = {
            "No tag filtration profile provided. Same as KEEP_ALL_PROFILE.",
            "Keep only tags required to produce valid DICOM.",
            "Remove tags based on DICOM Standard's Attribute Confidentiality Basic Profile (DICOM Standard Edition 2018e) http://dicom.nema.org/medical/dicom/2018e/output/chtml/part15/chapter_E.html.",
            "Keep all tags.",
            "Inspects within tag contents and replaces sensitive text. The process can be configured using the TextConfig. Applies to all tags with the following Value Representation names: AE, LO, LT, PN, SH, ST, UC, UT, DA, DT, AS",
          },
          type = "string",
        },
        keepList = {
          ["$ref"] = "TagFilterList",
          description = "List of tags to keep. Remove all other tags.",
        },
        removeList = {
          ["$ref"] = "TagFilterList",
          description = "List of tags to remove. Keep all other tags.",
        },
        skipIdRedaction = {
          description = "If true, skip replacing StudyInstanceUID, SeriesInstanceUID, SOPInstanceUID, and MediaStorageSOPInstanceUID and leave them untouched. The Cloud Healthcare API regenerates these UIDs by default based on the DICOM Standard's reasoning: \"Whilst these UIDs cannot be mapped directly to an individual out of context, given access to the original images, or to a database of the original images containing the UIDs, it would be possible to recover the individual's identity.\" http://dicom.nema.org/medical/dicom/current/output/chtml/part15/sect_E.3.9.html",
          type = "boolean",
        },
      },
      type = "object",
    },
    DicomFilterConfig = {
      description = "Specifies the filter configuration for DICOM resources.",
      id = "DicomFilterConfig",
      properties = {
        resourcePathsGcsUri = {
          description = "The Cloud Storage location of the filter configuration file. The `gcs_uri` must be in the format `gs://bucket/path/to/object`. The filter configuration file must contain a list of resource paths separated by newline characters (\\n or \\r\\n). Each resource path must be in the format \"/studies/{studyUID}[/series/{seriesUID}[/instances/{instanceUID}]]\" The Cloud Healthcare API service account must have the `roles/storage.objectViewer` Cloud IAM role for this Cloud Storage location.",
          type = "string",
        },
      },
      type = "object",
    },
    DicomStore = {
      description = "Represents a DICOM store.",
      id = "DicomStore",
      properties = {
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "User-supplied key-value pairs used to organize DICOM stores. Label keys must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: \\p{Ll}\\p{Lo}{0,62} Label values are optional, must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: [\\p{Ll}\\p{Lo}\\p{N}_-]{0,63} No more than 64 labels can be associated with a given store.",
          type = "object",
        },
        name = {
          description = "Resource name of the DICOM store, of the form `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/dicomStores/{dicom_store_id}`.",
          type = "string",
        },
        notificationConfig = {
          ["$ref"] = "NotificationConfig",
          description = "Notification destination for new DICOM instances. Supplied by the client.",
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
    Entity = {
      description = "The candidate entities that an entity mention could link to.",
      id = "Entity",
      properties = {
        entityId = {
          description = "entity_id is a first class field entity_id uniquely identifies this concept and its meta-vocabulary. For example, \"UMLS/C0000970\".",
          type = "string",
        },
        preferredTerm = {
          description = "preferred_term is the preferred term for this concept. For example, \"Acetaminophen\". For ad hoc entities formed by normalization, this is the most popular unnormalized string.",
          type = "string",
        },
        vocabularyCodes = {
          description = "Vocabulary codes are first-class fields and differentiated from the concept unique identifier (entity_id). vocabulary_codes contains the representation of this concept in particular vocabularies, such as ICD-10, SNOMED-CT and RxNORM. These are prefixed by the name of the vocabulary, followed by the unique code within that vocabulary. For example, \"RXNORM/A10334543\".",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    EntityMention = {
      description = "An entity mention in the document.",
      id = "EntityMention",
      properties = {
        certaintyAssessment = {
          ["$ref"] = "Feature",
          description = "The certainty assessment of the entity mention. Its value is one of: LIKELY, SOMEWHAT_LIKELY, UNCERTAIN, SOMEWHAT_UNLIKELY, UNLIKELY, CONDITIONAL",
        },
        confidence = {
          description = "The model's confidence in this entity mention annotation. A number between 0 and 1.",
          format = "double",
          type = "number",
        },
        linkedEntities = {
          description = "linked_entities are candidate ontological concepts that this entity mention may refer to. They are sorted by decreasing confidence.",
          items = {
            ["$ref"] = "LinkedEntity",
          },
          type = "array",
        },
        mentionId = {
          description = "mention_id uniquely identifies each entity mention in a single response.",
          type = "string",
        },
        subject = {
          ["$ref"] = "Feature",
          description = "The subject this entity mention relates to. Its value is one of: PATIENT, FAMILY_MEMBER, OTHER",
        },
        temporalAssessment = {
          ["$ref"] = "Feature",
          description = "How this entity mention relates to the subject temporally. Its value is one of: CURRENT, CLINICAL_HISTORY, FAMILY_HISTORY, UPCOMING, ALLERGY",
        },
        text = {
          ["$ref"] = "TextSpan",
          description = "text is the location of the entity mention in the document.",
        },
        type = {
          description = "The semantic type of the entity: UNKNOWN_ENTITY_TYPE, ALONE, ANATOMICAL_STRUCTURE, ASSISTED_LIVING, BF_RESULT, BM_RESULT, BM_UNIT, BM_VALUE, BODY_FUNCTION, BODY_MEASUREMENT, COMPLIANT, DOESNOT_FOLLOWUP, FAMILY, FOLLOWSUP, LABORATORY_DATA, LAB_RESULT, LAB_UNIT, LAB_VALUE, MEDICAL_DEVICE, MEDICINE, MED_DOSE, MED_DURATION, MED_FORM, MED_FREQUENCY, MED_ROUTE, MED_STATUS, MED_STRENGTH, MED_TOTALDOSE, MED_UNIT, NON_COMPLIANT, OTHER_LIVINGSTATUS, PROBLEM, PROCEDURE, PROCEDURE_RESULT, PROC_METHOD, REASON_FOR_NONCOMPLIANCE, SEVERITY, SUBSTANCE_ABUSE, UNCLEAR_FOLLOWUP.",
          type = "string",
        },
      },
      type = "object",
    },
    EntityMentionRelationship = {
      description = "Defines directed relationship from one entity mention to another.",
      id = "EntityMentionRelationship",
      properties = {
        confidence = {
          description = "The model's confidence in this annotation. A number between 0 and 1.",
          format = "double",
          type = "number",
        },
        objectId = {
          description = "object_id is the id of the object entity mention.",
          type = "string",
        },
        subjectId = {
          description = "subject_id is the id of the subject entity mention.",
          type = "string",
        },
      },
      type = "object",
    },
    EvaluateUserConsentsRequest = {
      description = "Evaluate a user's Consents for all matching User data mappings. Note: User data mappings are indexed asynchronously, causing slight delays between the time mappings are created or updated and when they are included in EvaluateUserConsents results.",
      id = "EvaluateUserConsentsRequest",
      properties = {
        consentList = {
          ["$ref"] = "ConsentList",
          description = "Optional. Specific Consents to evaluate the access request against. These Consents must have the same `user_id` as the User data mappings being evalauted, must exist in the current `consent_store`, and must have a `state` of either `ACTIVE` or `DRAFT`. A maximum of 100 Consents can be provided here. If unspecified, all `ACTIVE` unexpired Consents in the current `consent_store` will be evaluated.",
        },
        pageSize = {
          description = "Optional. Limit on the number of User data mappings to return in a single response. If not specified, 100 is used. May not be larger than 1000.",
          format = "int32",
          type = "integer",
        },
        pageToken = {
          description = "Optional. Token to retrieve the next page of results, or empty to get the first page.",
          type = "string",
        },
        requestAttributes = {
          additionalProperties = {
            type = "string",
          },
          description = "Required. The values of request attributes associated with this access request.",
          type = "object",
        },
        resourceAttributes = {
          additionalProperties = {
            type = "string",
          },
          description = "Optional. The values of resource attributes associated with the resources being requested. If no values are specified, then all resources are queried.",
          type = "object",
        },
        responseView = {
          description = "Optional. The view for EvaluateUserConsentsResponse. If unspecified, defaults to `BASIC` and returns `consented` as `TRUE` or `FALSE`.",
          enum = {
            "RESPONSE_VIEW_UNSPECIFIED",
            "BASIC",
            "FULL",
          },
          enumDescriptions = {
            "No response view specified. The API will default to the BASIC view.",
            "Only the `data_id` and `consented` fields are populated in the response.",
            "All fields within the response are populated. When set to `FULL`, all `ACTIVE` Consents are evaluated even if a matching policy is found during evaluation.",
          },
          type = "string",
        },
        userId = {
          description = "Required. User ID to evaluate consents for.",
          type = "string",
        },
      },
      type = "object",
    },
    EvaluateUserConsentsResponse = {
      id = "EvaluateUserConsentsResponse",
      properties = {
        nextPageToken = {
          description = "Token to retrieve the next page of results, or empty if there are no more results in the list. This token is valid for 72 hours after it is created.",
          type = "string",
        },
        results = {
          description = "The consent evaluation result for each `data_id`.",
          items = {
            ["$ref"] = "Result",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ExportDicomDataRequest = {
      description = "Exports data from the specified DICOM store. If a given resource, such as a DICOM object with the same SOPInstance UID, already exists in the output, it is overwritten with the version in the source dataset. Exported DICOM data persists when the DICOM store from which it was exported is deleted.",
      id = "ExportDicomDataRequest",
      properties = {
        bigqueryDestination = {
          ["$ref"] = "GoogleCloudHealthcareV1DicomBigQueryDestination",
          description = "The BigQuery output destination. You can only export to a BigQuery dataset that's in the same project as the DICOM store you're exporting from. The Cloud Healthcare Service Agent requires two IAM roles on the BigQuery location: `roles/bigquery.dataEditor` and `roles/bigquery.jobUser`.",
        },
        gcsDestination = {
          ["$ref"] = "GoogleCloudHealthcareV1DicomGcsDestination",
          description = "The Cloud Storage output destination. The Cloud Healthcare Service Agent requires the `roles/storage.objectAdmin` Cloud IAM roles on the Cloud Storage location.",
        },
      },
      type = "object",
    },
    ExportDicomDataResponse = {
      description = "Returns additional information in regards to a completed DICOM store export.",
      id = "ExportDicomDataResponse",
      properties = {},
      type = "object",
    },
    ExportMessagesRequest = {
      description = "Request to schedule an export.",
      id = "ExportMessagesRequest",
      properties = {
        endTime = {
          description = "The end of the range in `send_time` (MSH.7, https://www.hl7.org/documentcenter/public_temp_2E58C1F9-1C23-BA17-0C6126475344DA9D/wg/conf/HL7MSH.htm) to process. If not specified, the time when the export is scheduled is used. This value has to come after the `start_time` defined below. Only messages whose `send_time` lies in the range `start_time` (inclusive) to `end_time` (exclusive) are exported.",
          format = "google-datetime",
          type = "string",
        },
        gcsDestination = {
          ["$ref"] = "GcsDestination",
          description = "Export to a Cloud Storage destination.",
        },
        startTime = {
          description = "The start of the range in `send_time` (MSH.7, https://www.hl7.org/documentcenter/public_temp_2E58C1F9-1C23-BA17-0C6126475344DA9D/wg/conf/HL7MSH.htm) to process. If not specified, the UNIX epoch (1970-01-01T00:00:00Z) is used. This value has to come before the `end_time` defined below. Only messages whose `send_time` lies in the range `start_time` (inclusive) to `end_time` (exclusive) are exported.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    ExportMessagesResponse = {
      description = "Final response for the export operation. This structure is included in the response to describe the detailed outcome.",
      id = "ExportMessagesResponse",
      properties = {},
      type = "object",
    },
    ExportResourcesRequest = {
      description = "Request to export resources.",
      id = "ExportResourcesRequest",
      properties = {
        _since = {
          description = "If provided, only resources updated after this time are exported. The time uses the format YYYY-MM-DDThh:mm:ss.sss+zz:zz. For example, `2015-02-07T13:28:17.239+02:00` or `2017-01-01T00:00:00Z`. The time must be specified to the second and include a time zone.",
          type = "string",
        },
        _type = {
          description = "String of comma-delimited FHIR resource types. If provided, only resources of the specified resource type(s) are exported.",
          type = "string",
        },
        bigqueryDestination = {
          ["$ref"] = "GoogleCloudHealthcareV1FhirBigQueryDestination",
          description = "The BigQuery output destination. The Cloud Healthcare Service Agent requires two IAM roles on the BigQuery location: `roles/bigquery.dataEditor` and `roles/bigquery.jobUser`. The output is one BigQuery table per resource type. Unlike when setting `BigQueryDestination` for `StreamConfig`, `ExportResources` does not create BigQuery views.",
        },
        gcsDestination = {
          ["$ref"] = "GoogleCloudHealthcareV1FhirGcsDestination",
          description = "The Cloud Storage output destination. The Healthcare Service Agent account requires the `roles/storage.objectAdmin` role on the Cloud Storage location. The exported outputs are organized by FHIR resource types. The server creates one object per resource type. Each object contains newline delimited JSON, and each line is a FHIR resource.",
        },
      },
      type = "object",
    },
    ExportResourcesResponse = {
      description = "Response when all resources export successfully. This structure is included in the response to describe the detailed outcome after the operation finishes successfully.",
      id = "ExportResourcesResponse",
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
      description = "A feature of an entity mention.",
      id = "Feature",
      properties = {
        confidence = {
          description = "The model's confidence in this feature annotation. A number between 0 and 1.",
          format = "double",
          type = "number",
        },
        value = {
          description = "The value of this feature annotation. Its range depends on the type of the feature.",
          type = "string",
        },
      },
      type = "object",
    },
    FhirConfig = {
      description = "Specifies how to handle de-identification of a FHIR store.",
      id = "FhirConfig",
      properties = {
        defaultKeepExtensions = {
          description = "The behaviour for handling FHIR extensions that aren't otherwise specified for de-identification. If true, all extensions are preserved during de-identification by default. If false or unspecified, all extensions are removed during de-identification by default.",
          type = "boolean",
        },
        fieldMetadataList = {
          description = "Specifies FHIR paths to match and how to transform them. Any field that is not matched by a FieldMetadata is passed through to the output dataset unmodified. All extensions will be processed according to `default_keep_extensions`.",
          items = {
            ["$ref"] = "FieldMetadata",
          },
          type = "array",
        },
      },
      type = "object",
    },
    FhirFilter = {
      description = "Filter configuration.",
      id = "FhirFilter",
      properties = {
        resources = {
          ["$ref"] = "Resources",
          description = "List of resources to include in the output. If this list is empty or not specified, all resources are included in the output.",
        },
      },
      type = "object",
    },
    FhirStore = {
      description = "Represents a FHIR store.",
      id = "FhirStore",
      properties = {
        complexDataTypeReferenceParsing = {
          description = "Enable parsing of references within complex FHIR data types such as Extensions. If this value is set to ENABLED, then features like referential integrity and Bundle reference rewriting apply to all references. If this flag has not been specified the behavior of the FHIR store will not change, references in complex data types will not be parsed. New stores will have this value set to ENABLED after a notification period. Warning: turning on this flag causes processing existing resources to fail if they contain references to non-existent resources.",
          enum = {
            "COMPLEX_DATA_TYPE_REFERENCE_PARSING_UNSPECIFIED",
            "DISABLED",
            "ENABLED",
          },
          enumDescriptions = {
            "No parsing behavior specified. This is the same as DISABLED for backwards compatibility.",
            "References in complex data types are ignored.",
            "References in complex data types are parsed.",
          },
          type = "string",
        },
        defaultSearchHandlingStrict = {
          description = "If true, overrides the default search behavior for this FHIR store to `handling=strict` which returns an error for unrecognized search parameters. If false, uses the FHIR specification default `handling=lenient` which ignores unrecognized search parameters. The handling can always be changed from the default on an individual API call by setting the HTTP header `Prefer: handling=strict` or `Prefer: handling=lenient`.",
          type = "boolean",
        },
        disableReferentialIntegrity = {
          description = "Immutable. Whether to disable referential integrity in this FHIR store. This field is immutable after FHIR store creation. The default value is false, meaning that the API enforces referential integrity and fails the requests that result in inconsistent state in the FHIR store. When this field is set to true, the API skips referential integrity checks. Consequently, operations that rely on references, such as GetPatientEverything, do not return all the results if broken references exist.",
          type = "boolean",
        },
        disableResourceVersioning = {
          description = "Immutable. Whether to disable resource versioning for this FHIR store. This field can not be changed after the creation of FHIR store. If set to false, which is the default behavior, all write operations cause historical versions to be recorded automatically. The historical versions can be fetched through the history APIs, but cannot be updated. If set to true, no historical versions are kept. The server sends errors for attempts to read the historical versions.",
          type = "boolean",
        },
        enableUpdateCreate = {
          description = "Whether this FHIR store has the [updateCreate capability](https://www.hl7.org/fhir/capabilitystatement-definitions.html#CapabilityStatement.rest.resource.updateCreate). This determines if the client can use an Update operation to create a new resource with a client-specified ID. If false, all IDs are server-assigned through the Create operation and attempts to update a non-existent resource return errors. It is strongly advised not to include or encode any sensitive data such as patient identifiers in client-specified resource IDs. Those IDs are part of the FHIR resource path recorded in Cloud audit logs and Pub/Sub notifications. Those IDs can also be contained in reference fields within other resources.",
          type = "boolean",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "User-supplied key-value pairs used to organize FHIR stores. Label keys must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: \\p{Ll}\\p{Lo}{0,62} Label values are optional, must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: [\\p{Ll}\\p{Lo}\\p{N}_-]{0,63} No more than 64 labels can be associated with a given store.",
          type = "object",
        },
        name = {
          description = "Output only. Resource name of the FHIR store, of the form `projects/{project_id}/datasets/{dataset_id}/fhirStores/{fhir_store_id}`.",
          type = "string",
        },
        notificationConfig = {
          ["$ref"] = "NotificationConfig",
          description = "If non-empty, publish all resource modifications of this FHIR store to this destination. The Pub/Sub message attributes contain a map with a string describing the action that has triggered the notification. For example, \"action\":\"CreateResource\".",
        },
        streamConfigs = {
          description = "A list of streaming configs that configure the destinations of streaming export for every resource mutation in this FHIR store. Each store is allowed to have up to 10 streaming configs. After a new config is added, the next resource mutation is streamed to the new location in addition to the existing ones. When a location is removed from the list, the server stops streaming to that location. Before adding a new config, you must add the required [`bigquery.dataEditor`](https://cloud.google.com/bigquery/docs/access-control#bigquery.dataEditor) role to your project's **Cloud Healthcare Service Agent** [service account](https://cloud.google.com/iam/docs/service-accounts). Some lag (typically on the order of dozens of seconds) is expected before the results show up in the streaming destination.",
          items = {
            ["$ref"] = "StreamConfig",
          },
          type = "array",
        },
        validationConfig = {
          ["$ref"] = "ValidationConfig",
          description = "Configuration for how to validate incoming FHIR resources against configured profiles.",
        },
        version = {
          description = "Immutable. The FHIR specification version that this FHIR store supports natively. This field is immutable after store creation. Requests are rejected if they contain FHIR resources of a different version. Version is required for every FHIR store.",
          enum = {
            "VERSION_UNSPECIFIED",
            "DSTU2",
            "STU3",
            "R4",
          },
          enumDescriptions = {
            "Users must specify a version on store creation or an error is returned.",
            "Draft Standard for Trial Use, [Release 2](https://www.hl7.org/fhir/DSTU2)",
            "Standard for Trial Use, [Release 3](https://www.hl7.org/fhir/STU3)",
            "[Release 4](https://www.hl7.org/fhir/R4)",
          },
          type = "string",
        },
      },
      type = "object",
    },
    Field = {
      description = "A (sub) field of a type.",
      id = "Field",
      properties = {
        maxOccurs = {
          description = "The maximum number of times this field can be repeated. 0 or -1 means unbounded.",
          format = "int32",
          type = "integer",
        },
        minOccurs = {
          description = "The minimum number of times this field must be present/repeated.",
          format = "int32",
          type = "integer",
        },
        name = {
          description = "The name of the field. For example, \"PID-1\" or just \"1\".",
          type = "string",
        },
        table = {
          description = "The HL7v2 table this field refers to. For example, PID-15 (Patient's Primary Language) usually refers to table \"0296\".",
          type = "string",
        },
        type = {
          description = "The type of this field. A Type with this name must be defined in an Hl7TypesConfig.",
          type = "string",
        },
      },
      type = "object",
    },
    FieldMetadata = {
      description = "Specifies FHIR paths to match, and how to handle de-identification of matching fields.",
      id = "FieldMetadata",
      properties = {
        action = {
          description = "Deidentify action for one field.",
          enum = {
            "ACTION_UNSPECIFIED",
            "TRANSFORM",
            "INSPECT_AND_TRANSFORM",
            "DO_NOT_TRANSFORM",
          },
          enumDescriptions = {
            "No action specified.",
            "Transform the entire field.",
            "Inspect and transform any found PHI.",
            "Do not transform.",
          },
          type = "string",
        },
        paths = {
          description = "List of paths to FHIR fields to be redacted. Each path is a period-separated list where each component is either a field name or FHIR type name, for example: Patient, HumanName. For \"choice\" types (those defined in the FHIR spec with the form: field[x]) we use two separate components. For example, \"deceasedAge.unit\" is matched by \"Deceased.Age.unit\". Supported types are: AdministrativeGenderCode, Base64Binary, Boolean, Code, Date, DateTime, Decimal, HumanName, Id, Instant, Integer, LanguageCode, Markdown, Oid, PositiveInt, String, UnsignedInt, Uri, Uuid, Xhtml.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GcsDestination = {
      description = "The Cloud Storage output destination. The Cloud Healthcare Service Agent requires the `roles/storage.objectAdmin` Cloud IAM roles on the Cloud Storage location.",
      id = "GcsDestination",
      properties = {
        contentStructure = {
          description = "The format of the exported HL7v2 message files.",
          enum = {
            "CONTENT_STRUCTURE_UNSPECIFIED",
            "MESSAGE_JSON",
          },
          enumDescriptions = {
            "If the content structure is not specified, the default value `MESSAGE_JSON` will be used.",
            "Messages are printed using the JSON format returned from the `GetMessage` API. Messages are delimited with newlines.",
          },
          type = "string",
        },
        messageView = {
          description = "Specifies the parts of the Message resource to include in the export. If not specified, FULL is used.",
          enum = {
            "MESSAGE_VIEW_UNSPECIFIED",
            "RAW_ONLY",
            "PARSED_ONLY",
            "FULL",
            "SCHEMATIZED_ONLY",
            "BASIC",
          },
          enumDescriptions = {
            "Not specified, equivalent to FULL.",
            "Server responses include all the message fields except parsed_data field, and schematized_data fields.",
            "Server responses include all the message fields except data field, and schematized_data fields.",
            "Server responses include all the message fields.",
            "Server responses include all the message fields except data and parsed_data fields.",
            "Server responses include only the name field.",
          },
          type = "string",
        },
        uriPrefix = {
          description = "URI of an existing Cloud Storage directory where the server writes result files, in the format `gs://{bucket-id}/{path/to/destination/dir}`. If there is no trailing slash, the service appends one when composing the object path.",
          type = "string",
        },
      },
      type = "object",
    },
    GcsSource = {
      description = "Specifies the configuration for importing data from Cloud Storage.",
      id = "GcsSource",
      properties = {
        uri = {
          description = "Points to a Cloud Storage URI containing file(s) to import. The URI must be in the following format: `gs://{bucket_id}/{object_id}`. The URI can include wildcards in `object_id` and thus identify multiple files. Supported wildcards: * `*` to match 0 or more non-separator characters * `**` to match 0 or more characters (including separators). Must be used at the end of a path and with no other wildcards in the path. Can also be used with a file extension (such as .ndjson), which imports all files with the extension in the specified directory and its sub-directories. For example, `gs://my-bucket/my-directory/**.ndjson` imports all files with `.ndjson` extensions in `my-directory/` and its sub-directories. * `?` to match 1 character Files matching the wildcard are expected to contain content only, no metadata.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudHealthcareV1ConsentGcsDestination = {
      description = "The Cloud Storage location for export.",
      id = "GoogleCloudHealthcareV1ConsentGcsDestination",
      properties = {
        uriPrefix = {
          description = "URI for a Cloud Storage directory where the server writes result files, in the format `gs://{bucket-id}/{path/to/destination/dir}`. If there is no trailing slash, the service appends one when composing the object path. The user is responsible for creating the Cloud Storage bucket and directory referenced in `uri_prefix`.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudHealthcareV1ConsentPolicy = {
      description = "Represents a user's consent in terms of the resources that can be accessed and under what conditions.",
      id = "GoogleCloudHealthcareV1ConsentPolicy",
      properties = {
        authorizationRule = {
          ["$ref"] = "Expr",
          description = "Required. The request conditions to meet to grant access. In addition to any supported comparison operators, authorization rules may have `IN` operator as well as at most 10 logical operators that are limited to `AND` (`&&`), `OR` (`||`).",
        },
        resourceAttributes = {
          description = "The resources that this policy applies to. A resource is a match if it matches all the attributes listed here. If empty, this policy applies to all User data mappings for the given user.",
          items = {
            ["$ref"] = "Attribute",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudHealthcareV1DeidentifyDeidentifyDicomStoreSummary = {
      description = "Contains a summary of the DeidentifyDicomStore operation.",
      id = "GoogleCloudHealthcareV1DeidentifyDeidentifyDicomStoreSummary",
      properties = {},
      type = "object",
    },
    GoogleCloudHealthcareV1DeidentifyDeidentifyFhirStoreSummary = {
      description = "Contains a summary of the DeidentifyFhirStore operation.",
      id = "GoogleCloudHealthcareV1DeidentifyDeidentifyFhirStoreSummary",
      properties = {},
      type = "object",
    },
    GoogleCloudHealthcareV1DicomBigQueryDestination = {
      description = "The BigQuery table where the server writes the output.",
      id = "GoogleCloudHealthcareV1DicomBigQueryDestination",
      properties = {
        force = {
          description = "Use `write_disposition` instead. If `write_disposition` is specified, this parameter is ignored. force=false is equivalent to write_disposition=WRITE_EMPTY and force=true is equivalent to write_disposition=WRITE_TRUNCATE.",
          type = "boolean",
        },
        tableUri = {
          description = "BigQuery URI to a table, up to 2000 characters long, in the format `bq://projectId.bqDatasetId.tableId`",
          type = "string",
        },
        writeDisposition = {
          description = "Determines whether the existing table in the destination is to be overwritten or appended to. If a write_disposition is specified, the `force` parameter is ignored.",
          enum = {
            "WRITE_DISPOSITION_UNSPECIFIED",
            "WRITE_EMPTY",
            "WRITE_TRUNCATE",
            "WRITE_APPEND",
          },
          enumDescriptions = {
            "Default behavior is the same as WRITE_EMPTY.",
            "Only export data if the destination table is empty.",
            "Erase all existing data in the destination table before writing the instances.",
            "Append data to the destination table.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudHealthcareV1DicomGcsDestination = {
      description = "The Cloud Storage location where the server writes the output and the export configuration.",
      id = "GoogleCloudHealthcareV1DicomGcsDestination",
      properties = {
        mimeType = {
          description = "MIME types supported by DICOM spec. Each file is written in the following format: `.../{study_id}/{series_id}/{instance_id}[/{frame_number}].{extension}` The frame_number component exists only for multi-frame instances. Supported MIME types are consistent with supported formats in DICOMweb: https://cloud.google.com/healthcare/docs/dicom#retrieve_transaction. Specifically, the following are supported: - application/dicom; transfer-syntax=1.2.840.10008.1.2.1 (uncompressed DICOM) - application/dicom; transfer-syntax=1.2.840.10008.1.2.4.50 (DICOM with embedded JPEG Baseline) - application/dicom; transfer-syntax=1.2.840.10008.1.2.4.90 (DICOM with embedded JPEG 2000 Lossless Only) - application/dicom; transfer-syntax=1.2.840.10008.1.2.4.91 (DICOM with embedded JPEG 2000) - application/dicom; transfer-syntax=* (DICOM with no transcoding) - application/octet-stream; transfer-syntax=1.2.840.10008.1.2.1 (raw uncompressed PixelData) - application/octet-stream; transfer-syntax=* (raw PixelData in whatever format it was uploaded in) - image/jpeg; transfer-syntax=1.2.840.10008.1.2.4.50 (Consumer JPEG) - image/png The following extensions are used for output files: - application/dicom -> .dcm - image/jpeg -> .jpg - image/png -> .png - application/octet-stream -> no extension If unspecified, the instances are exported in the original DICOM format they were uploaded in.",
          type = "string",
        },
        uriPrefix = {
          description = "The Cloud Storage destination to export to. URI for a Cloud Storage directory where the server writes the result files, in the format `gs://{bucket-id}/{path/to/destination/dir}`). If there is no trailing slash, the service appends one when composing the object path. The user is responsible for creating the Cloud Storage bucket referenced in `uri_prefix`.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudHealthcareV1DicomGcsSource = {
      description = "Specifies the configuration for importing data from Cloud Storage.",
      id = "GoogleCloudHealthcareV1DicomGcsSource",
      properties = {
        uri = {
          description = "Points to a Cloud Storage URI containing file(s) with content only. The URI must be in the following format: `gs://{bucket_id}/{object_id}`. The URI can include wildcards in `object_id` and thus identify multiple files. Supported wildcards: * '*' to match 0 or more non-separator characters * '**' to match 0 or more characters (including separators). Must be used at the end of a path and with no other wildcards in the path. Can also be used with a file extension (such as .dcm), which imports all files with the extension in the specified directory and its sub-directories. For example, `gs://my-bucket/my-directory/**.dcm` imports all files with .dcm extensions in `my-directory/` and its sub-directories. * '?' to match 1 character. All other URI formats are invalid. Files matching the wildcard are expected to contain content only, no metadata.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudHealthcareV1FhirBigQueryDestination = {
      description = "The configuration for exporting to BigQuery.",
      id = "GoogleCloudHealthcareV1FhirBigQueryDestination",
      properties = {
        datasetUri = {
          description = "BigQuery URI to an existing dataset, up to 2000 characters long, in the format `bq://projectId.bqDatasetId`.",
          type = "string",
        },
        force = {
          description = "If this flag is `TRUE`, all tables are deleted from the dataset before the new exported tables are written. If the flag is not set and the destination dataset contains tables, the export call returns an error. If `write_disposition` is specified, this parameter is ignored. force=false is equivalent to write_disposition=WRITE_EMPTY and force=true is equivalent to write_disposition=WRITE_TRUNCATE.",
          type = "boolean",
        },
        schemaConfig = {
          ["$ref"] = "SchemaConfig",
          description = "The configuration for the exported BigQuery schema.",
        },
        writeDisposition = {
          description = "Determines if existing data in the destination dataset is overwritten, appended to, or not written if the tables contain data. If a write_disposition is specified, the `force` parameter is ignored.",
          enum = {
            "WRITE_DISPOSITION_UNSPECIFIED",
            "WRITE_EMPTY",
            "WRITE_TRUNCATE",
            "WRITE_APPEND",
          },
          enumDescriptions = {
            "Default behavior is the same as WRITE_EMPTY.",
            "Only export data if the destination tables are empty.",
            "Erase all existing data in the destination tables before writing the FHIR resources.",
            "Append data to the destination tables.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudHealthcareV1FhirGcsDestination = {
      description = "The configuration for exporting to Cloud Storage.",
      id = "GoogleCloudHealthcareV1FhirGcsDestination",
      properties = {
        uriPrefix = {
          description = "URI for a Cloud Storage directory where result files should be written, in the format of `gs://{bucket-id}/{path/to/destination/dir}`. If there is no trailing slash, the service appends one when composing the object path. The user is responsible for creating the Cloud Storage bucket referenced in `uri_prefix`.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudHealthcareV1FhirGcsSource = {
      description = "Specifies the configuration for importing data from Cloud Storage.",
      id = "GoogleCloudHealthcareV1FhirGcsSource",
      properties = {
        uri = {
          description = "Points to a Cloud Storage URI containing file(s) to import. The URI must be in the following format: `gs://{bucket_id}/{object_id}`. The URI can include wildcards in `object_id` and thus identify multiple files. Supported wildcards: * `*` to match 0 or more non-separator characters * `**` to match 0 or more characters (including separators). Must be used at the end of a path and with no other wildcards in the path. Can also be used with a file extension (such as .ndjson), which imports all files with the extension in the specified directory and its sub-directories. For example, `gs://my-bucket/my-directory/**.ndjson` imports all files with `.ndjson` extensions in `my-directory/` and its sub-directories. * `?` to match 1 character Files matching the wildcard are expected to contain content only, no metadata.",
          type = "string",
        },
      },
      type = "object",
    },
    GroupOrSegment = {
      description = "Construct representing a logical group or a segment.",
      id = "GroupOrSegment",
      properties = {
        group = {
          ["$ref"] = "SchemaGroup",
        },
        segment = {
          ["$ref"] = "SchemaSegment",
        },
      },
      type = "object",
    },
    Hl7SchemaConfig = {
      description = "Root config message for HL7v2 schema. This contains a schema structure of groups and segments, and filters that determine which messages to apply the schema structure to.",
      id = "Hl7SchemaConfig",
      properties = {
        messageSchemaConfigs = {
          additionalProperties = {
            ["$ref"] = "SchemaGroup",
          },
          description = "Map from each HL7v2 message type and trigger event pair, such as ADT_A04, to its schema configuration root group.",
          type = "object",
        },
        version = {
          description = "Each VersionSource is tested and only if they all match is the schema used for the message.",
          items = {
            ["$ref"] = "VersionSource",
          },
          type = "array",
        },
      },
      type = "object",
    },
    Hl7TypesConfig = {
      description = "Root config for HL7v2 datatype definitions for a specific HL7v2 version.",
      id = "Hl7TypesConfig",
      properties = {
        type = {
          description = "The HL7v2 type definitions.",
          items = {
            ["$ref"] = "Type",
          },
          type = "array",
        },
        version = {
          description = "The version selectors that this config applies to. A message must match ALL version sources to apply.",
          items = {
            ["$ref"] = "VersionSource",
          },
          type = "array",
        },
      },
      type = "object",
    },
    Hl7V2NotificationConfig = {
      description = "Specifies where and whether to send notifications upon changes to a data store.",
      id = "Hl7V2NotificationConfig",
      properties = {
        filter = {
          description = "Restricts notifications sent for messages matching a filter. If this is empty, all messages are matched. The following syntax is available: * A string field value can be written as text inside quotation marks, for example `\"query text\"`. The only valid relational operation for text fields is equality (`=`), where text is searched within the field, rather than having the field be equal to the text. For example, `\"Comment = great\"` returns messages with `great` in the comment field. * A number field value can be written as an integer, a decimal, or an exponential. The valid relational operators for number fields are the equality operator (`=`), along with the less than/greater than operators (`<`, `<=`, `>`, `>=`). Note that there is no inequality (`!=`) operator. You can prepend the `NOT` operator to an expression to negate it. * A date field value must be written in `yyyy-mm-dd` form. Fields with date and time use the RFC3339 time format. Leading zeros are required for one-digit months and days. The valid relational operators for date fields are the equality operator (`=`) , along with the less than/greater than operators (`<`, `<=`, `>`, `>=`). Note that there is no inequality (`!=`) operator. You can prepend the `NOT` operator to an expression to negate it. * Multiple field query expressions can be combined in one query by adding `AND` or `OR` operators between the expressions. If a boolean operator appears within a quoted string, it is not treated as special, it's just another part of the character string to be matched. You can prepend the `NOT` operator to an expression to negate it. The following fields and functions are available for filtering: * `message_type`, from the MSH-9.1 field. For example, `NOT message_type = \"ADT\"`. * `send_date` or `sendDate`, the YYYY-MM-DD date the message was sent in the dataset's time_zone, from the MSH-7 segment. For example, `send_date < \"2017-01-02\"`. * `send_time`, the timestamp when the message was sent, using the RFC3339 time format for comparisons, from the MSH-7 segment. For example, `send_time < \"2017-01-02T00:00:00-05:00\"`. * `create_time`, the timestamp when the message was created in the HL7v2 store. Use the RFC3339 time format for comparisons. For example, `create_time < \"2017-01-02T00:00:00-05:00\"`. * `send_facility`, the care center that the message came from, from the MSH-4 segment. For example, `send_facility = \"ABC\"`. * `PatientId(value, type)`, which matches if the message lists a patient having an ID of the given value and type in the PID-2, PID-3, or PID-4 segments. For example, `PatientId(\"123456\", \"MRN\")`. * `labels.x`, a string value of the label with key `x` as set using the Message.labels map. For example, `labels.\"priority\"=\"high\"`. The operator `:*` can be used to assert the existence of a label. For example, `labels.\"priority\":*`.",
          type = "string",
        },
        pubsubTopic = {
          description = "The [Pub/Sub](https://cloud.google.com/pubsub/docs/) topic that notifications of changes are published on. Supplied by the client. The notification is a `PubsubMessage` with the following fields: * `PubsubMessage.Data` contains the resource name. * `PubsubMessage.MessageId` is the ID of this notification. It's guaranteed to be unique within the topic. * `PubsubMessage.PublishTime` is the time when the message was published. Note that notifications are only sent if the topic is non-empty. [Topic names](https://cloud.google.com/pubsub/docs/overview#names) must be scoped to a project. The Cloud Healthcare API service account, service-PROJECT_NUMBER@gcp-sa-healthcare.iam.gserviceaccount.com, must have publisher permissions on the given Pub/Sub topic. Not having adequate permissions causes the calls that send notifications to fail. If a notification cannot be published to Pub/Sub, errors are logged to Cloud Logging. For more information, see [Viewing error logs in Cloud Logging](https://cloud.google.com/healthcare/docs/how-tos/logging)).",
          type = "string",
        },
      },
      type = "object",
    },
    Hl7V2Store = {
      description = "Represents an HL7v2 store.",
      id = "Hl7V2Store",
      properties = {
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "User-supplied key-value pairs used to organize HL7v2 stores. Label keys must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: \\p{Ll}\\p{Lo}{0,62} Label values are optional, must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: [\\p{Ll}\\p{Lo}\\p{N}_-]{0,63} No more than 64 labels can be associated with a given store.",
          type = "object",
        },
        name = {
          description = "Resource name of the HL7v2 store, of the form `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/hl7V2Stores/{hl7v2_store_id}`.",
          type = "string",
        },
        notificationConfigs = {
          description = "A list of notification configs. Each configuration uses a filter to determine whether to publish a message (both Ingest & Create) on the corresponding notification destination. Only the message name is sent as part of the notification. Supplied by the client.",
          items = {
            ["$ref"] = "Hl7V2NotificationConfig",
          },
          type = "array",
        },
        parserConfig = {
          ["$ref"] = "ParserConfig",
          description = "The configuration for the parser. It determines how the server parses the messages.",
        },
        rejectDuplicateMessage = {
          description = "Determines whether to reject duplicate messages. A duplicate message is a message with the same raw bytes as a message that has already been ingested/created in this HL7v2 store. The default value is false, meaning that the store accepts the duplicate messages and it also returns the same ACK message in the IngestMessageResponse as has been returned previously. Note that only one resource is created in the store. When this field is set to true, CreateMessage/IngestMessage requests with a duplicate message will be rejected by the store, and IngestMessageErrorDetail returns a NACK message upon rejection.",
          type = "boolean",
        },
      },
      type = "object",
    },
    HttpBody = {
      description = "Message that represents an arbitrary HTTP body. It should only be used for payload formats that can't be represented as JSON, such as raw binary or an HTML page. This message can be used both in streaming and non-streaming API methods in the request as well as the response. It can be used as a top-level request field, which is convenient if one wants to extract parameters from either the URL or HTTP template into the request fields and also want access to the raw HTTP body. Example: message GetResourceRequest { // A unique request id. string request_id = 1; // The raw HTTP body is bound to this field. google.api.HttpBody http_body = 2; } service ResourceService { rpc GetResource(GetResourceRequest) returns (google.api.HttpBody); rpc UpdateResource(google.api.HttpBody) returns (google.protobuf.Empty); } Example with streaming methods: service CaldavService { rpc GetCalendar(stream google.api.HttpBody) returns (stream google.api.HttpBody); rpc UpdateCalendar(stream google.api.HttpBody) returns (stream google.api.HttpBody); } Use of this type only changes how the request and response bodies are handled, all other features will continue to work unchanged.",
      id = "HttpBody",
      properties = {
        contentType = {
          description = "The HTTP Content-Type header value specifying the content type of the body.",
          type = "string",
        },
        data = {
          description = "The HTTP request/response body as raw binary.",
          format = "byte",
          type = "string",
        },
        extensions = {
          description = "Application specific response metadata. Must be set in the first response for streaming APIs.",
          items = {
            additionalProperties = {
              description = "Properties of the object. Contains field @type with type URL.",
              type = "any",
            },
            type = "object",
          },
          type = "array",
        },
      },
      type = "object",
    },
    Image = {
      description = "Raw bytes representing consent artifact content.",
      id = "Image",
      properties = {
        gcsUri = {
          description = "Input only. Points to a Cloud Storage URI containing the consent artifact content. The URI must be in the following format: `gs://{bucket_id}/{object_id}`. The Cloud Healthcare API service account must have the `roles/storage.objectViewer` Cloud IAM role for this Cloud Storage location. The consent artifact content at this URI is copied to a Cloud Storage location managed by the Cloud Healthcare API. Responses to fetching requests return the consent artifact content in raw_bytes.",
          type = "string",
        },
        rawBytes = {
          description = "Consent artifact content represented as a stream of bytes. This field is populated when returned in GetConsentArtifact response, but not included in CreateConsentArtifact and ListConsentArtifact response.",
          format = "byte",
          type = "string",
        },
      },
      type = "object",
    },
    ImageConfig = {
      description = "Specifies how to handle de-identification of image pixels.",
      id = "ImageConfig",
      properties = {
        textRedactionMode = {
          description = "Determines how to redact text from image.",
          enum = {
            "TEXT_REDACTION_MODE_UNSPECIFIED",
            "REDACT_ALL_TEXT",
            "REDACT_SENSITIVE_TEXT",
            "REDACT_NO_TEXT",
          },
          enumDescriptions = {
            "No text redaction specified. Same as REDACT_NO_TEXT.",
            "Redact all text.",
            "Redact sensitive text. Uses the set of [Default DICOM InfoTypes](https://cloud.google.com/healthcare-api/docs/how-tos/dicom-deidentify#default_dicom_infotypes).",
            "Do not redact text.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    ImportDicomDataRequest = {
      description = "Imports data into the specified DICOM store. Returns an error if any of the files to import are not DICOM files. This API accepts duplicate DICOM instances by ignoring the newly-pushed instance. It does not overwrite.",
      id = "ImportDicomDataRequest",
      properties = {
        gcsSource = {
          ["$ref"] = "GoogleCloudHealthcareV1DicomGcsSource",
          description = "Cloud Storage source data location and import configuration. The Cloud Healthcare Service Agent requires the `roles/storage.objectViewer` Cloud IAM roles on the Cloud Storage location.",
        },
      },
      type = "object",
    },
    ImportDicomDataResponse = {
      description = "Returns additional information in regards to a completed DICOM store import.",
      id = "ImportDicomDataResponse",
      properties = {},
      type = "object",
    },
    ImportMessagesRequest = {
      description = "Request to import messages.",
      id = "ImportMessagesRequest",
      properties = {
        gcsSource = {
          ["$ref"] = "GcsSource",
          description = "Cloud Storage source data location and import configuration. The Cloud Healthcare Service Agent requires the `roles/storage.objectViewer` Cloud IAM roles on the Cloud Storage location.",
        },
      },
      type = "object",
    },
    ImportMessagesResponse = {
      description = "Final response of importing messages. This structure is included in the response to describe the detailed outcome. It is only included when the operation finishes successfully.",
      id = "ImportMessagesResponse",
      properties = {},
      type = "object",
    },
    ImportResourcesRequest = {
      description = "Request to import resources.",
      id = "ImportResourcesRequest",
      properties = {
        contentStructure = {
          description = "The content structure in the source location. If not specified, the server treats the input source files as BUNDLE.",
          enum = {
            "CONTENT_STRUCTURE_UNSPECIFIED",
            "BUNDLE",
            "RESOURCE",
            "BUNDLE_PRETTY",
            "RESOURCE_PRETTY",
          },
          enumDescriptions = {
            "If the content structure is not specified, the default value `BUNDLE` is used.",
            "The source file contains one or more lines of newline-delimited JSON (ndjson). Each line is a bundle that contains one or more resources.",
            "The source file contains one or more lines of newline-delimited JSON (ndjson). Each line is a single resource.",
            "The entire file is one JSON bundle. The JSON can span multiple lines.",
            "The entire file is one JSON resource. The JSON can span multiple lines.",
          },
          type = "string",
        },
        gcsSource = {
          ["$ref"] = "GoogleCloudHealthcareV1FhirGcsSource",
          description = "Cloud Storage source data location and import configuration. The Healthcare Service Agent account requires the `roles/storage.objectAdmin` role on the Cloud Storage location. Each Cloud Storage object should be a text file that contains the format specified in ContentStructure.",
        },
      },
      type = "object",
    },
    ImportResourcesResponse = {
      description = "Final response of importing resources. This structure is included in the response to describe the detailed outcome after the operation finishes successfully.",
      id = "ImportResourcesResponse",
      properties = {},
      type = "object",
    },
    InfoTypeTransformation = {
      description = "A transformation to apply to text that is identified as a specific info_type.",
      id = "InfoTypeTransformation",
      properties = {
        characterMaskConfig = {
          ["$ref"] = "CharacterMaskConfig",
          description = "Config for character mask.",
        },
        cryptoHashConfig = {
          ["$ref"] = "CryptoHashConfig",
          description = "Config for crypto hash.",
        },
        dateShiftConfig = {
          ["$ref"] = "DateShiftConfig",
          description = "Config for date shift.",
        },
        infoTypes = {
          description = "InfoTypes to apply this transformation to. If this is not specified, the transformation applies to any info_type.",
          items = {
            type = "string",
          },
          type = "array",
        },
        redactConfig = {
          ["$ref"] = "RedactConfig",
          description = "Config for text redaction.",
        },
        replaceWithInfoTypeConfig = {
          ["$ref"] = "ReplaceWithInfoTypeConfig",
          description = "Config for replace with InfoType.",
        },
      },
      type = "object",
    },
    IngestMessageRequest = {
      description = "Ingests a message into the specified HL7v2 store.",
      id = "IngestMessageRequest",
      properties = {
        message = {
          ["$ref"] = "Message",
          description = "HL7v2 message to ingest.",
        },
      },
      type = "object",
    },
    IngestMessageResponse = {
      description = "Acknowledges that a message has been ingested into the specified HL7v2 store.",
      id = "IngestMessageResponse",
      properties = {
        hl7Ack = {
          description = "HL7v2 ACK message.",
          format = "byte",
          type = "string",
        },
        message = {
          ["$ref"] = "Message",
          description = "Created message resource.",
        },
      },
      type = "object",
    },
    KmsWrappedCryptoKey = {
      description = "Include to use an existing data crypto key wrapped by KMS. The wrapped key must be a 128-, 192-, or 256-bit key. The key must grant the Cloud IAM permission `cloudkms.cryptoKeyVersions.useToDecrypt` to the project's Cloud Healthcare Service Agent service account. For more information, see [Creating a wrapped key] (https://cloud.google.com/dlp/docs/create-wrapped-key).",
      id = "KmsWrappedCryptoKey",
      properties = {
        cryptoKey = {
          description = "Required. The resource name of the KMS CryptoKey to use for unwrapping. For example, `projects/{project_id}/locations/{location_id}/keyRings/{keyring}/cryptoKeys/{key}`.",
          type = "string",
        },
        wrappedKey = {
          description = "Required. The wrapped data crypto key.",
          format = "byte",
          type = "string",
        },
      },
      type = "object",
    },
    LinkedEntity = {
      description = "EntityMentions can be linked to multiple entities using a LinkedEntity message lets us add other fields, e.g. confidence.",
      id = "LinkedEntity",
      properties = {
        entityId = {
          description = "entity_id is a concept unique identifier. These are prefixed by a string that identifies the entity coding system, followed by the unique identifier within that system. For example, \"UMLS/C0000970\". This also supports ad hoc entities, which are formed by normalizing entity mention content.",
          type = "string",
        },
      },
      type = "object",
    },
    ListAttributeDefinitionsResponse = {
      id = "ListAttributeDefinitionsResponse",
      properties = {
        attributeDefinitions = {
          description = "The returned Attribute definitions. The maximum number of attributes returned is determined by the value of page_size in the ListAttributeDefinitionsRequest.",
          items = {
            ["$ref"] = "AttributeDefinition",
          },
          type = "array",
        },
        nextPageToken = {
          description = "Token to retrieve the next page of results, or empty if there are no more results in the list.",
          type = "string",
        },
      },
      type = "object",
    },
    ListConsentArtifactsResponse = {
      id = "ListConsentArtifactsResponse",
      properties = {
        consentArtifacts = {
          description = "The returned Consent artifacts. The maximum number of artifacts returned is determined by the value of page_size in the ListConsentArtifactsRequest.",
          items = {
            ["$ref"] = "ConsentArtifact",
          },
          type = "array",
        },
        nextPageToken = {
          description = "Token to retrieve the next page of results, or empty if there are no more results in the list.",
          type = "string",
        },
      },
      type = "object",
    },
    ListConsentRevisionsResponse = {
      id = "ListConsentRevisionsResponse",
      properties = {
        consents = {
          description = "The returned Consent revisions. The maximum number of revisions returned is determined by the value of `page_size` in the ListConsentRevisionsRequest.",
          items = {
            ["$ref"] = "Consent",
          },
          type = "array",
        },
        nextPageToken = {
          description = "Token to retrieve the next page of results, or empty if there are no more results in the list.",
          type = "string",
        },
      },
      type = "object",
    },
    ListConsentStoresResponse = {
      id = "ListConsentStoresResponse",
      properties = {
        consentStores = {
          description = "The returned consent stores. The maximum number of stores returned is determined by the value of page_size in the ListConsentStoresRequest.",
          items = {
            ["$ref"] = "ConsentStore",
          },
          type = "array",
        },
        nextPageToken = {
          description = "Token to retrieve the next page of results, or empty if there are no more results in the list.",
          type = "string",
        },
      },
      type = "object",
    },
    ListConsentsResponse = {
      id = "ListConsentsResponse",
      properties = {
        consents = {
          description = "The returned Consents. The maximum number of Consents returned is determined by the value of page_size in the ListConsentsRequest.",
          items = {
            ["$ref"] = "Consent",
          },
          type = "array",
        },
        nextPageToken = {
          description = "Token to retrieve the next page of results, or empty if there are no more results in the list.",
          type = "string",
        },
      },
      type = "object",
    },
    ListDatasetsResponse = {
      description = "Lists the available datasets.",
      id = "ListDatasetsResponse",
      properties = {
        datasets = {
          description = "The first page of datasets.",
          items = {
            ["$ref"] = "Dataset",
          },
          type = "array",
        },
        nextPageToken = {
          description = "Token to retrieve the next page of results, or empty if there are no more results in the list.",
          type = "string",
        },
      },
      type = "object",
    },
    ListDicomStoresResponse = {
      description = "Lists the DICOM stores in the given dataset.",
      id = "ListDicomStoresResponse",
      properties = {
        dicomStores = {
          description = "The returned DICOM stores. Won't be more DICOM stores than the value of page_size in the request.",
          items = {
            ["$ref"] = "DicomStore",
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
    ListFhirStoresResponse = {
      description = "Lists the FHIR stores in the given dataset.",
      id = "ListFhirStoresResponse",
      properties = {
        fhirStores = {
          description = "The returned FHIR stores. Won't be more FHIR stores than the value of page_size in the request.",
          items = {
            ["$ref"] = "FhirStore",
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
    ListHl7V2StoresResponse = {
      description = "Lists the HL7v2 stores in the given dataset.",
      id = "ListHl7V2StoresResponse",
      properties = {
        hl7V2Stores = {
          description = "The returned HL7v2 stores. Won't be more HL7v2 stores than the value of page_size in the request.",
          items = {
            ["$ref"] = "Hl7V2Store",
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
    ListMessagesResponse = {
      description = "Lists the messages in the specified HL7v2 store.",
      id = "ListMessagesResponse",
      properties = {
        hl7V2Messages = {
          description = "The returned Messages. Won't be more Messages than the value of page_size in the request. See view for populated fields.",
          items = {
            ["$ref"] = "Message",
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
    ListUserDataMappingsResponse = {
      id = "ListUserDataMappingsResponse",
      properties = {
        nextPageToken = {
          description = "Token to retrieve the next page of results, or empty if there are no more results in the list.",
          type = "string",
        },
        userDataMappings = {
          description = "The returned User data mappings. The maximum number of User data mappings returned is determined by the value of page_size in the ListUserDataMappingsRequest.",
          items = {
            ["$ref"] = "UserDataMapping",
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
    Message = {
      description = "A complete HL7v2 message. See [Introduction to HL7 Standards] (https://www.hl7.org/implement/standards/index.cfm?ref=common) for details on the standard.",
      id = "Message",
      properties = {
        createTime = {
          description = "Output only. The datetime when the message was created. Set by the server.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        data = {
          description = "Raw message bytes.",
          format = "byte",
          type = "string",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "User-supplied key-value pairs used to organize HL7v2 stores. Label keys must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: \\p{Ll}\\p{Lo}{0,62} Label values are optional, must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: [\\p{Ll}\\p{Lo}\\p{N}_-]{0,63} No more than 64 labels can be associated with a given store.",
          type = "object",
        },
        messageType = {
          description = "The message type for this message. MSH-9.1.",
          type = "string",
        },
        name = {
          description = "Resource name of the Message, of the form `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/hl7V2Stores/{hl7_v2_store_id}/messages/{message_id}`. Assigned by the server.",
          type = "string",
        },
        parsedData = {
          ["$ref"] = "ParsedData",
          description = "Output only. The parsed version of the raw message data.",
          readOnly = true,
        },
        patientIds = {
          description = "All patient IDs listed in the PID-2, PID-3, and PID-4 segments of this message.",
          items = {
            ["$ref"] = "PatientId",
          },
          type = "array",
        },
        schematizedData = {
          ["$ref"] = "SchematizedData",
          description = "The parsed version of the raw message data schematized according to this store's schemas and type definitions.",
        },
        sendFacility = {
          description = "The hospital that this message came from. MSH-4.",
          type = "string",
        },
        sendTime = {
          description = "The datetime the sending application sent this message. MSH-7.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    NotificationConfig = {
      description = "Specifies where to send notifications upon changes to a data store.",
      id = "NotificationConfig",
      properties = {
        pubsubTopic = {
          description = "The [Pub/Sub](https://cloud.google.com/pubsub/docs/) topic that notifications of changes are published on. Supplied by the client. PubsubMessage.Data contains the resource name. PubsubMessage.MessageId is the ID of this message. It is guaranteed to be unique within the topic. PubsubMessage.PublishTime is the time at which the message was published. Notifications are only sent if the topic is non-empty. [Topic names](https://cloud.google.com/pubsub/docs/overview#names) must be scoped to a project. Cloud Healthcare API service account must have publisher permissions on the given Pub/Sub topic. Not having adequate permissions causes the calls that send notifications to fail. If a notification can't be published to Pub/Sub, errors are logged to Cloud Logging (see [Viewing error logs in Cloud Logging](https://cloud.google.com/healthcare/docs/how-tos/logging)). If the number of errors exceeds a certain rate, some aren't submitted. Note that not all operations trigger notifications, see [Configuring Pub/Sub notifications](https://cloud.google.com/healthcare/docs/how-tos/pubsub) for specific details.",
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
      description = "OperationMetadata provides information about the operation execution. Returned in the long-running operation's metadata field.",
      id = "OperationMetadata",
      properties = {
        apiMethodName = {
          description = "The name of the API method that initiated the operation.",
          type = "string",
        },
        cancelRequested = {
          description = "Specifies if cancellation was requested for the operation.",
          type = "boolean",
        },
        counter = {
          ["$ref"] = "ProgressCounter",
        },
        createTime = {
          description = "The time at which the operation was created by the API.",
          format = "google-datetime",
          type = "string",
        },
        endTime = {
          description = "The time at which execution was completed.",
          format = "google-datetime",
          type = "string",
        },
        logsUrl = {
          description = "A link to audit and error logs in the log viewer. Error logs are generated only by some operations, listed at [Viewing error logs in Cloud Logging](https://cloud.google.com/healthcare/docs/how-tos/logging).",
          type = "string",
        },
      },
      type = "object",
    },
    ParsedData = {
      description = "The content of a HL7v2 message in a structured format.",
      id = "ParsedData",
      properties = {
        segments = {
          items = {
            ["$ref"] = "Segment",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ParserConfig = {
      description = "The configuration for the parser. It determines how the server parses the messages.",
      id = "ParserConfig",
      properties = {
        allowNullHeader = {
          description = "Determines whether messages with no header are allowed.",
          type = "boolean",
        },
        schema = {
          ["$ref"] = "SchemaPackage",
          description = "Schemas used to parse messages in this store, if schematized parsing is desired.",
        },
        segmentTerminator = {
          description = "Byte(s) to use as the segment terminator. If this is unset, '\\r' is used as segment terminator, matching the HL7 version 2 specification.",
          format = "byte",
          type = "string",
        },
        version = {
          description = "Immutable. Determines the version of both the default parser to be used when `schema` is not given, as well as the schematized parser used when `schema` is specified. This field is immutable after HL7v2 store creation.",
          enum = {
            "PARSER_VERSION_UNSPECIFIED",
            "V1",
            "V2",
            "V3",
          },
          enumDescriptions = {
            "Unspecified parser version, equivalent to V1.",
            "The `parsed_data` includes every given non-empty message field except the Field Separator (MSH-1) field. As a result, the parsed MSH segment starts with the MSH-2 field and the field numbers are off-by-one with respect to the HL7 standard.",
            "The `parsed_data` includes every given non-empty message field.",
            "This version is the same as V2, with the following change. The `parsed_data` contains unescaped escaped field separators, component separators, sub-component separators, repetition separators, escape characters, and truncation characters. If `schema` is specified, the schematized parser uses improved parsing heuristics compared to previous versions.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    PatientId = {
      description = "A patient identifier and associated type.",
      id = "PatientId",
      properties = {
        type = {
          description = "ID type. For example, MRN or NHS.",
          type = "string",
        },
        value = {
          description = "The patient's unique identifier.",
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
    ProgressCounter = {
      description = "ProgressCounter provides counters to describe an operation's progress.",
      id = "ProgressCounter",
      properties = {
        failure = {
          description = "The number of units that failed in the operation.",
          format = "int64",
          type = "string",
        },
        pending = {
          description = "The number of units that are pending in the operation.",
          format = "int64",
          type = "string",
        },
        success = {
          description = "The number of units that succeeded in the operation.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    QueryAccessibleDataRequest = {
      description = "Queries all data_ids that are consented for a given use in the given consent store and writes them to a specified destination. The returned Operation includes a progress counter for the number of User data mappings processed. Errors are logged to Cloud Logging (see [Viewing error logs in Cloud Logging] (https://cloud.google.com/healthcare/docs/how-tos/logging) and [QueryAccessibleData] for a sample log entry).",
      id = "QueryAccessibleDataRequest",
      properties = {
        gcsDestination = {
          ["$ref"] = "GoogleCloudHealthcareV1ConsentGcsDestination",
          description = "The Cloud Storage destination. The Cloud Healthcare API service account must have the `roles/storage.objectAdmin` Cloud IAM role for this Cloud Storage location.",
        },
        requestAttributes = {
          additionalProperties = {
            type = "string",
          },
          description = "The values of request attributes associated with this access request.",
          type = "object",
        },
        resourceAttributes = {
          additionalProperties = {
            type = "string",
          },
          description = "Optional. The values of resource attributes associated with the type of resources being requested. If no values are specified, then all resource types are included in the output.",
          type = "object",
        },
      },
      type = "object",
    },
    QueryAccessibleDataResponse = {
      description = "Response for successful QueryAccessibleData operations. This structure is included in the response upon operation completion.",
      id = "QueryAccessibleDataResponse",
      properties = {
        gcsUris = {
          description = "List of files, each of which contains a list of data_id(s) that are consented for a specified use in the request.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    RedactConfig = {
      description = "Define how to redact sensitive values. Default behaviour is erase. For example, \"My name is Jane.\" becomes \"My name is .\"",
      id = "RedactConfig",
      properties = {},
      type = "object",
    },
    RejectConsentRequest = {
      description = "Rejects the latest revision of the specified Consent by committing a new revision with `state` updated to `REJECTED`. If the latest revision of the given Consent is in the `REJECTED` state, no new revision is committed.",
      id = "RejectConsentRequest",
      properties = {
        consentArtifact = {
          description = "Optional. The resource name of the Consent artifact that contains documentation of the user's rejection of the draft Consent, of the form `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/consentStores/{consent_store_id}/consentArtifacts/{consent_artifact_id}`. If the draft Consent had a Consent artifact, this Consent artifact overwrites it.",
          type = "string",
        },
      },
      type = "object",
    },
    ReplaceWithInfoTypeConfig = {
      description = "When using the INSPECT_AND_TRANSFORM action, each match is replaced with the name of the info_type. For example, \"My name is Jane\" becomes \"My name is [PERSON_NAME].\" The TRANSFORM action is equivalent to redacting.",
      id = "ReplaceWithInfoTypeConfig",
      properties = {},
      type = "object",
    },
    Resources = {
      description = "A list of FHIR resources.",
      id = "Resources",
      properties = {
        resources = {
          description = "List of resources IDs. For example, \"Patient/1234\".",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    Result = {
      description = "The consent evaluation result for a single `data_id`.",
      id = "Result",
      properties = {
        consentDetails = {
          additionalProperties = {
            ["$ref"] = "ConsentEvaluation",
          },
          description = "The resource names of all evaluated Consents mapped to their evaluation.",
          type = "object",
        },
        consented = {
          description = "Whether the resource is consented for the given use.",
          type = "boolean",
        },
        dataId = {
          description = "The unique identifier of the evaluated resource.",
          type = "string",
        },
      },
      type = "object",
    },
    RevokeConsentRequest = {
      description = "Revokes the latest revision of the specified Consent by committing a new revision with `state` updated to `REVOKED`. If the latest revision of the given Consent is in the `REVOKED` state, no new revision is committed.",
      id = "RevokeConsentRequest",
      properties = {
        consentArtifact = {
          description = "Optional. The resource name of the Consent artifact that contains proof of the user's revocation of the Consent, of the form `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/consentStores/{consent_store_id}/consentArtifacts/{consent_artifact_id}`.",
          type = "string",
        },
      },
      type = "object",
    },
    SchemaConfig = {
      description = "Configuration for the FHIR BigQuery schema. Determines how the server generates the schema.",
      id = "SchemaConfig",
      properties = {
        recursiveStructureDepth = {
          description = "The depth for all recursive structures in the output analytics schema. For example, `concept` in the CodeSystem resource is a recursive structure; when the depth is 2, the CodeSystem table will have a column called `concept.concept` but not `concept.concept.concept`. If not specified or set to 0, the server will use the default value 2. The maximum depth allowed is 5.",
          format = "int64",
          type = "string",
        },
        schemaType = {
          description = "Specifies the output schema type. Schema type is required.",
          enum = {
            "SCHEMA_TYPE_UNSPECIFIED",
            "ANALYTICS",
            "ANALYTICS_V2",
          },
          enumDescriptions = {
            "No schema type specified. This type is unsupported.",
            "Analytics schema defined by the FHIR community. See https://github.com/FHIR/sql-on-fhir/blob/master/sql-on-fhir.md. BigQuery only allows a maximum of 10,000 columns per table. Due to this limitation, the server will not generate schemas for fields of type `Resource`, which can hold any resource type. The affected fields are `Parameters.parameter.resource`, `Bundle.entry.resource`, and `Bundle.entry.response.outcome`.",
            "Analytics V2, similar to schema defined by the FHIR community, with added support for extensions with one or more occurrences and contained resources in stringified JSON. Analytics V2 uses more space in the destination table than Analytics V1.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    SchemaGroup = {
      description = "An HL7v2 logical group construct.",
      id = "SchemaGroup",
      properties = {
        choice = {
          description = "True indicates that this is a choice group, meaning that only one of its segments can exist in a given message.",
          type = "boolean",
        },
        maxOccurs = {
          description = "The maximum number of times this group can be repeated. 0 or -1 means unbounded.",
          format = "int32",
          type = "integer",
        },
        members = {
          description = "Nested groups and/or segments.",
          items = {
            ["$ref"] = "GroupOrSegment",
          },
          type = "array",
        },
        minOccurs = {
          description = "The minimum number of times this group must be present/repeated.",
          format = "int32",
          type = "integer",
        },
        name = {
          description = "The name of this group. For example, \"ORDER_DETAIL\".",
          type = "string",
        },
      },
      type = "object",
    },
    SchemaPackage = {
      description = "A schema package contains a set of schemas and type definitions.",
      id = "SchemaPackage",
      properties = {
        ignoreMinOccurs = {
          description = "Flag to ignore all min_occurs restrictions in the schema. This means that incoming messages can omit any group, segment, field, component, or subcomponent.",
          type = "boolean",
        },
        schemas = {
          description = "Schema configs that are layered based on their VersionSources that match the incoming message. Schema configs present in higher indices override those in lower indices with the same message type and trigger event if their VersionSources all match an incoming message.",
          items = {
            ["$ref"] = "Hl7SchemaConfig",
          },
          type = "array",
        },
        schematizedParsingType = {
          description = "Determines how messages that fail to parse are handled.",
          enum = {
            "SCHEMATIZED_PARSING_TYPE_UNSPECIFIED",
            "SOFT_FAIL",
            "HARD_FAIL",
          },
          enumDescriptions = {
            "Unspecified schematized parsing type, equivalent to `SOFT_FAIL`.",
            "Messages that fail to parse are still stored and ACKed but a parser error is stored in place of the schematized data.",
            "Messages that fail to parse are rejected from ingestion/insertion and return an error code.",
          },
          type = "string",
        },
        types = {
          description = "Schema type definitions that are layered based on their VersionSources that match the incoming message. Type definitions present in higher indices override those in lower indices with the same type name if their VersionSources all match an incoming message.",
          items = {
            ["$ref"] = "Hl7TypesConfig",
          },
          type = "array",
        },
        unexpectedSegmentHandling = {
          description = "Determines how unexpected segments (segments not matched to the schema) are handled.",
          enum = {
            "UNEXPECTED_SEGMENT_HANDLING_MODE_UNSPECIFIED",
            "FAIL",
            "SKIP",
            "PARSE",
          },
          enumDescriptions = {
            "Unspecified handling mode, equivalent to FAIL.",
            "Unexpected segments fail to parse and return an error.",
            "Unexpected segments do not fail, but are omitted from the output.",
            "Unexpected segments do not fail, but are parsed in place and added to the current group. If a segment has a type definition, it is used, otherwise it is parsed as VARIES.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    SchemaSegment = {
      description = "An HL7v2 Segment.",
      id = "SchemaSegment",
      properties = {
        maxOccurs = {
          description = "The maximum number of times this segment can be present in this group. 0 or -1 means unbounded.",
          format = "int32",
          type = "integer",
        },
        minOccurs = {
          description = "The minimum number of times this segment can be present in this group.",
          format = "int32",
          type = "integer",
        },
        type = {
          description = "The Segment type. For example, \"PID\".",
          type = "string",
        },
      },
      type = "object",
    },
    SchematizedData = {
      description = "The content of an HL7v2 message in a structured format as specified by a schema.",
      id = "SchematizedData",
      properties = {
        data = {
          description = "JSON output of the parser.",
          type = "string",
        },
        error = {
          description = "The error output of the parser.",
          type = "string",
        },
      },
      type = "object",
    },
    SearchResourcesRequest = {
      description = "Request to search the resources in the specified FHIR store.",
      id = "SearchResourcesRequest",
      properties = {
        resourceType = {
          description = "The FHIR resource type to search, such as Patient or Observation. For a complete list, see the FHIR Resource Index ([DSTU2](http://hl7.org/implement/standards/fhir/DSTU2/resourcelist.html), [STU3](http://hl7.org/implement/standards/fhir/STU3/resourcelist.html), [R4](http://hl7.org/implement/standards/fhir/R4/resourcelist.html)).",
          type = "string",
        },
      },
      type = "object",
    },
    Segment = {
      description = "A segment in a structured format.",
      id = "Segment",
      properties = {
        fields = {
          additionalProperties = {
            type = "string",
          },
          description = "A mapping from the positional location to the value. The key string uses zero-based indexes separated by dots to identify Fields, components and sub-components. A bracket notation is also used to identify different instances of a repeated field. Regex for key: (\\d+)(\\[\\d+\\])?(.\\d+)?(.\\d+)? Examples of (key, value) pairs: * (0.1, \"hemoglobin\") denotes that the first component of Field 0 has the value \"hemoglobin\". * (1.1.2, \"CBC\") denotes that the second sub-component of the first component of Field 1 has the value \"CBC\". * (1[0].1, \"HbA1c\") denotes that the first component of the first Instance of Field 1, which is repeated, has the value \"HbA1c\".",
          type = "object",
        },
        segmentId = {
          description = "A string that indicates the type of segment. For example, EVN or PID.",
          type = "string",
        },
        setId = {
          description = "Set ID for segments that can be in a set. This can be empty if it's missing or isn't applicable.",
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
    Signature = {
      description = "User signature.",
      id = "Signature",
      properties = {
        image = {
          ["$ref"] = "Image",
          description = "Optional. An image of the user's signature.",
        },
        metadata = {
          additionalProperties = {
            type = "string",
          },
          description = "Optional. Metadata associated with the user's signature. For example, the user's name or the user's title.",
          type = "object",
        },
        signatureTime = {
          description = "Optional. Timestamp of the signature.",
          format = "google-datetime",
          type = "string",
        },
        userId = {
          description = "Required. User's UUID provided by the client.",
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
    StreamConfig = {
      description = "Contains configuration for streaming FHIR export.",
      id = "StreamConfig",
      properties = {
        bigqueryDestination = {
          ["$ref"] = "GoogleCloudHealthcareV1FhirBigQueryDestination",
          description = "The destination BigQuery structure that contains both the dataset location and corresponding schema config. The output is organized in one table per resource type. The server reuses the existing tables (if any) that are named after the resource types. For example, \"Patient\", \"Observation\". When there is no existing table for a given resource type, the server attempts to create one. When a table schema doesn't align with the schema config, either because of existing incompatible schema or out of band incompatible modification, the server does not stream in new data. BigQuery imposes a 1 MB limit on streaming insert row size, therefore any resource mutation that generates more than 1 MB of BigQuery data is not streamed. One resolution in this case is to delete the incompatible table and let the server recreate one, though the newly created table only contains data after the table recreation. Results are written to BigQuery tables according to the parameters in BigQueryDestination.WriteDisposition. Different versions of the same resource are distinguishable by the meta.versionId and meta.lastUpdated columns. The operation (CREATE/UPDATE/DELETE) that results in the new version is recorded in the meta.tag. The tables contain all historical resource versions since streaming was enabled. For query convenience, the server also creates one view per table of the same name containing only the current resource version. The streamed data in the BigQuery dataset is not guaranteed to be completely unique. The combination of the id and meta.versionId columns should ideally identify a single unique row. But in rare cases, duplicates may exist. At query time, users may use the SQL select statement to keep only one of the duplicate rows given an id and meta.versionId pair. Alternatively, the server created view mentioned above also filters out duplicates. If a resource mutation cannot be streamed to BigQuery, errors are logged to Cloud Logging. For more information, see [Viewing error logs in Cloud Logging](https://cloud.google.com/healthcare/docs/how-tos/logging)).",
        },
        deidentifiedStoreDestination = {
          ["$ref"] = "DeidentifiedStoreDestination",
          description = "The destination FHIR store for de-identified resources. After this field is added, all subsequent creates/updates/patches to the source store will be de-identified using the provided configuration and applied to the destination store. Importing resources to the source store will not trigger the streaming. If the source store already contains resources when this option is enabled, those resources will not be copied to the destination store unless they are subsequently updated. This may result in invalid references in the destination store. Before adding this config, you must grant the healthcare.fhirResources.update permission on the destination store to your project's **Cloud Healthcare Service Agent** [service account](https://cloud.google.com/healthcare/docs/how-tos/permissions-healthcare-api-gcp-products#the_cloud_healthcare_service_agent). The destination store must set enable_update_create to true. The destination store must have disable_referential_integrity set to true. If a resource cannot be de-identified, errors will be logged to Cloud Logging (see [Viewing error logs in Cloud Logging](https://cloud.google.com/healthcare/docs/how-tos/logging)).",
        },
        resourceTypes = {
          description = "Supply a FHIR resource type (such as \"Patient\" or \"Observation\"). See https://www.hl7.org/fhir/valueset-resource-types.html for a list of all FHIR resource types. The server treats an empty list as an intent to stream all the supported resource types in this FHIR store.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    TagFilterList = {
      description = "List of tags to be filtered.",
      id = "TagFilterList",
      properties = {
        tags = {
          description = "Tags to be filtered. Tags must be DICOM Data Elements, File Meta Elements, or Directory Structuring Elements, as defined at: http://dicom.nema.org/medical/dicom/current/output/html/part06.html#table_6-1,. They may be provided by \"Keyword\" or \"Tag\". For example \"PatientID\", \"00100010\".",
          items = {
            type = "string",
          },
          type = "array",
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
    TextConfig = {
      id = "TextConfig",
      properties = {
        transformations = {
          description = "The transformations to apply to the detected data.",
          items = {
            ["$ref"] = "InfoTypeTransformation",
          },
          type = "array",
        },
      },
      type = "object",
    },
    TextSpan = {
      description = "A span of text in the provided document.",
      id = "TextSpan",
      properties = {
        beginOffset = {
          description = "The unicode codepoint index of the beginning of this span.",
          format = "int32",
          type = "integer",
        },
        content = {
          description = "The original text contained in this span.",
          type = "string",
        },
      },
      type = "object",
    },
    Type = {
      description = "A type definition for some HL7v2 type (incl. Segments and Datatypes).",
      id = "Type",
      properties = {
        fields = {
          description = "The (sub) fields this type has (if not primitive).",
          items = {
            ["$ref"] = "Field",
          },
          type = "array",
        },
        name = {
          description = "The name of this type. This would be the segment or datatype name. For example, \"PID\" or \"XPN\".",
          type = "string",
        },
        primitive = {
          description = "If this is a primitive type then this field is the type of the primitive For example, STRING. Leave unspecified for composite types.",
          enum = {
            "PRIMITIVE_UNSPECIFIED",
            "STRING",
            "VARIES",
            "UNESCAPED_STRING",
          },
          enumDescriptions = {
            "Not a primitive.",
            "String primitive.",
            "Element that can have unschematized children.",
            "Like STRING, but all delimiters below this element are ignored.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    UserDataMapping = {
      description = "Maps a resource to the associated user and Attributes.",
      id = "UserDataMapping",
      properties = {
        archiveTime = {
          description = "Output only. Indicates the time when this mapping was archived.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        archived = {
          description = "Output only. Indicates whether this mapping is archived.",
          readOnly = true,
          type = "boolean",
        },
        dataId = {
          description = "Required. A unique identifier for the mapped resource.",
          type = "string",
        },
        name = {
          description = "Resource name of the User data mapping, of the form `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/consentStores/{consent_store_id}/userDataMappings/{user_data_mapping_id}`.",
          type = "string",
        },
        resourceAttributes = {
          description = "Attributes of the resource. Only explicitly set attributes are displayed here. Attribute definitions with defaults set implicitly apply to these User data mappings. Attributes listed here must be single valued, that is, exactly one value is specified for the field \"values\" in each Attribute.",
          items = {
            ["$ref"] = "Attribute",
          },
          type = "array",
        },
        userId = {
          description = "Required. User's UUID provided by the client.",
          type = "string",
        },
      },
      type = "object",
    },
    ValidationConfig = {
      description = "Contains the configuration for FHIR profiles and validation.",
      id = "ValidationConfig",
      properties = {
        disableFhirpathValidation = {
          description = "Whether to disable FHIRPath validation for incoming resources. Set this to true to disable checking incoming resources for conformance against FHIRPath requirement defined in the FHIR specification. This property only affects resource types that do not have profiles configured for them, any rules in enabled implementation guides will still be enforced.",
          type = "boolean",
        },
        disableProfileValidation = {
          description = "Whether to disable profile validation for this FHIR store. Set this to true to disable checking incoming resources for conformance against structure definitions in this FHIR store.",
          type = "boolean",
        },
        disableReferenceTypeValidation = {
          description = "Whether to disable reference type validation for incoming resources. Set this to true to disable checking incoming resources for conformance against reference type requirement defined in the FHIR specification. This property only affects resource types that do not have profiles configured for them, any rules in enabled implementation guides will still be enforced.",
          type = "boolean",
        },
        disableRequiredFieldValidation = {
          description = "Whether to disable required fields validation for incoming resources. Set this to true to disable checking incoming resources for conformance against required fields requirement defined in the FHIR specification. This property only affects resource types that do not have profiles configured for them, any rules in enabled implementation guides will still be enforced.",
          type = "boolean",
        },
        enabledImplementationGuides = {
          description = "A list of implementation guide URLs in this FHIR store that are used to configure the profiles to use for validation. For example, to use the US Core profiles for validation, set `enabled_implementation_guides` to `[\"http://hl7.org/fhir/us/core/ImplementationGuide/ig\"]`. If `enabled_implementation_guides` is empty or omitted, then incoming resources are only required to conform to the base FHIR profiles. Otherwise, a resource must conform to at least one profile listed in the `global` property of one of the enabled ImplementationGuides. The Cloud Healthcare API does not currently enforce all of the rules in a StructureDefinition. The following rules are supported: - min/max - minValue/maxValue - maxLength - type - fixed[x] - pattern[x] on simple types - slicing, when using \"value\" as the discriminator type When a URL cannot be resolved (for example, in a type assertion), the server does not return an error.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    VersionSource = {
      description = "Describes a selector for extracting and matching an MSH field to a value.",
      id = "VersionSource",
      properties = {
        mshField = {
          description = "The field to extract from the MSH segment. For example, \"3.1\" or \"18[1].1\".",
          type = "string",
        },
        value = {
          description = "The value to match with the field. For example, \"My Application Name\" or \"2.3\".",
          type = "string",
        },
      },
      type = "object",
    },
  },
  servicePath = "",
  title = "Cloud Healthcare API",
  version = "v1",
  version_module = true,
}
