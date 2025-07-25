return {
  auth = {
    oauth2 = {
      scopes = {
        ["https://www.googleapis.com/auth/androidmanagement"] = {
          description = "Manage Android devices and apps for your customers",
        },
      },
    },
  },
  basePath = "",
  baseUrl = "https://androidmanagement.googleapis.com/",
  batchPath = "batch",
  canonicalName = "Android Management",
  description = "The Android Management API provides remote enterprise management of Android devices and apps.",
  discoveryVersion = "v1",
  documentationLink = "https://developers.google.com/android/management",
  fullyEncodeReservedExpansion = true,
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "androidmanagement:v1",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://androidmanagement.mtls.googleapis.com/",
  name = "androidmanagement",
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
    enterprises = {
      methods = {
        create = {
          description = "Creates an enterprise. This is the last step in the enterprise signup flow.",
          flatPath = "v1/enterprises",
          httpMethod = "POST",
          id = "androidmanagement.enterprises.create",
          parameterOrder = {},
          parameters = {
            agreementAccepted = {
              description = "Whether the enterprise admin has seen and agreed to the managed Google Play Agreement (https://www.android.com/enterprise/terms/). Do not set this field for any customer-managed enterprise (https://developers.google.com/android/management/create-enterprise#customer-managed_enterprises). Set this to field to true for all EMM-managed enterprises (https://developers.google.com/android/management/create-enterprise#emm-managed_enterprises).",
              location = "query",
              type = "boolean",
            },
            enterpriseToken = {
              description = "The enterprise token appended to the callback URL. Set this when creating a customer-managed enterprise (https://developers.google.com/android/management/create-enterprise#customer-managed_enterprises) and not when creating a deprecated EMM-managed enterprise (https://developers.google.com/android/management/create-enterprise#emm-managed_enterprises).",
              location = "query",
              type = "string",
            },
            projectId = {
              description = "The ID of the Google Cloud Platform project which will own the enterprise.",
              location = "query",
              type = "string",
            },
            signupUrlName = {
              description = "The name of the SignupUrl used to sign up for the enterprise. Set this when creating a customer-managed enterprise (https://developers.google.com/android/management/create-enterprise#customer-managed_enterprises) and not when creating a deprecated EMM-managed enterprise (https://developers.google.com/android/management/create-enterprise#emm-managed_enterprises).",
              location = "query",
              type = "string",
            },
          },
          path = "v1/enterprises",
          request = {
            ["$ref"] = "Enterprise",
          },
          response = {
            ["$ref"] = "Enterprise",
          },
          scopes = {
            "https://www.googleapis.com/auth/androidmanagement",
          },
        },
        delete = {
          description = "Deletes an enterprise. Only available for EMM-managed enterprises.",
          flatPath = "v1/enterprises/{enterprisesId}",
          httpMethod = "DELETE",
          id = "androidmanagement.enterprises.delete",
          parameterOrder = {
            "name",
          },
          parameters = {
            name = {
              description = "The name of the enterprise in the form enterprises/{enterpriseId}.",
              location = "path",
              pattern = "^enterprises/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "v1/{+name}",
          response = {
            ["$ref"] = "Empty",
          },
          scopes = {
            "https://www.googleapis.com/auth/androidmanagement",
          },
        },
        get = {
          description = "Gets an enterprise.",
          flatPath = "v1/enterprises/{enterprisesId}",
          httpMethod = "GET",
          id = "androidmanagement.enterprises.get",
          parameterOrder = {
            "name",
          },
          parameters = {
            name = {
              description = "The name of the enterprise in the form enterprises/{enterpriseId}.",
              location = "path",
              pattern = "^enterprises/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "v1/{+name}",
          response = {
            ["$ref"] = "Enterprise",
          },
          scopes = {
            "https://www.googleapis.com/auth/androidmanagement",
          },
        },
        list = {
          description = "Lists EMM-managed enterprises. Only BASIC fields are returned.",
          flatPath = "v1/enterprises",
          httpMethod = "GET",
          id = "androidmanagement.enterprises.list",
          parameterOrder = {},
          parameters = {
            pageSize = {
              description = "The requested page size. The actual page size may be fixed to a min or max value.",
              format = "int32",
              location = "query",
              type = "integer",
            },
            pageToken = {
              description = "A token identifying a page of results returned by the server.",
              location = "query",
              type = "string",
            },
            projectId = {
              description = "Required. The Cloud project ID of the EMM managing the enterprises.",
              location = "query",
              type = "string",
            },
            view = {
              description = "Specifies which Enterprise fields to return. This method only supports BASIC.",
              enum = {
                "ENTERPRISE_VIEW_UNSPECIFIED",
                "BASIC",
              },
              enumDescriptions = {
                "The API will default to the BASIC view for the List method.",
                "Includes name and enterprise_display_name fields.",
              },
              location = "query",
              type = "string",
            },
          },
          path = "v1/enterprises",
          response = {
            ["$ref"] = "ListEnterprisesResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/androidmanagement",
          },
        },
        patch = {
          description = "Updates an enterprise.",
          flatPath = "v1/enterprises/{enterprisesId}",
          httpMethod = "PATCH",
          id = "androidmanagement.enterprises.patch",
          parameterOrder = {
            "name",
          },
          parameters = {
            name = {
              description = "The name of the enterprise in the form enterprises/{enterpriseId}.",
              location = "path",
              pattern = "^enterprises/[^/]+$",
              required = true,
              type = "string",
            },
            updateMask = {
              description = "The field mask indicating the fields to update. If not set, all modifiable fields will be modified.",
              format = "google-fieldmask",
              location = "query",
              type = "string",
            },
          },
          path = "v1/{+name}",
          request = {
            ["$ref"] = "Enterprise",
          },
          response = {
            ["$ref"] = "Enterprise",
          },
          scopes = {
            "https://www.googleapis.com/auth/androidmanagement",
          },
        },
      },
      resources = {
        applications = {
          methods = {
            get = {
              description = "Gets info about an application.",
              flatPath = "v1/enterprises/{enterprisesId}/applications/{applicationsId}",
              httpMethod = "GET",
              id = "androidmanagement.enterprises.applications.get",
              parameterOrder = {
                "name",
              },
              parameters = {
                languageCode = {
                  description = "The preferred language for localized application info, as a BCP47 tag (e.g. \"en-US\", \"de\"). If not specified the default language of the application will be used.",
                  location = "query",
                  type = "string",
                },
                name = {
                  description = "The name of the application in the form enterprises/{enterpriseId}/applications/{package_name}.",
                  location = "path",
                  pattern = "^enterprises/[^/]+/applications/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}",
              response = {
                ["$ref"] = "Application",
              },
              scopes = {
                "https://www.googleapis.com/auth/androidmanagement",
              },
            },
          },
        },
        devices = {
          methods = {
            delete = {
              description = "Deletes a device. This operation wipes the device. Deleted devices do not show up in enterprises.devices.list calls and a 404 is returned from enterprises.devices.get.",
              flatPath = "v1/enterprises/{enterprisesId}/devices/{devicesId}",
              httpMethod = "DELETE",
              id = "androidmanagement.enterprises.devices.delete",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "The name of the device in the form enterprises/{enterpriseId}/devices/{deviceId}.",
                  location = "path",
                  pattern = "^enterprises/[^/]+/devices/[^/]+$",
                  required = true,
                  type = "string",
                },
                wipeDataFlags = {
                  description = "Optional flags that control the device wiping behavior.",
                  enum = {
                    "WIPE_DATA_FLAG_UNSPECIFIED",
                    "PRESERVE_RESET_PROTECTION_DATA",
                    "WIPE_EXTERNAL_STORAGE",
                  },
                  enumDescriptions = {
                    "This value is ignored.",
                    "Preserve the factory reset protection data on the device.",
                    "Additionally wipe the device's external storage (such as SD cards).",
                  },
                  location = "query",
                  repeated = true,
                  type = "string",
                },
                wipeReasonMessage = {
                  description = "Optional. A short message displayed to the user before wiping the work profile on personal devices. This has no effect on company owned devices. The maximum message length is 200 characters.",
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/{+name}",
              response = {
                ["$ref"] = "Empty",
              },
              scopes = {
                "https://www.googleapis.com/auth/androidmanagement",
              },
            },
            get = {
              description = "Gets a device. Deleted devices will respond with a 404 error.",
              flatPath = "v1/enterprises/{enterprisesId}/devices/{devicesId}",
              httpMethod = "GET",
              id = "androidmanagement.enterprises.devices.get",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "The name of the device in the form enterprises/{enterpriseId}/devices/{deviceId}.",
                  location = "path",
                  pattern = "^enterprises/[^/]+/devices/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}",
              response = {
                ["$ref"] = "Device",
              },
              scopes = {
                "https://www.googleapis.com/auth/androidmanagement",
              },
            },
            issueCommand = {
              description = "Issues a command to a device. The Operation resource returned contains a Command in its metadata field. Use the get operation method to get the status of the command.",
              flatPath = "v1/enterprises/{enterprisesId}/devices/{devicesId}:issueCommand",
              httpMethod = "POST",
              id = "androidmanagement.enterprises.devices.issueCommand",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "The name of the device in the form enterprises/{enterpriseId}/devices/{deviceId}.",
                  location = "path",
                  pattern = "^enterprises/[^/]+/devices/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}:issueCommand",
              request = {
                ["$ref"] = "Command",
              },
              response = {
                ["$ref"] = "Operation",
              },
              scopes = {
                "https://www.googleapis.com/auth/androidmanagement",
              },
            },
            list = {
              description = "Lists devices for a given enterprise. Deleted devices are not returned in the response.",
              flatPath = "v1/enterprises/{enterprisesId}/devices",
              httpMethod = "GET",
              id = "androidmanagement.enterprises.devices.list",
              parameterOrder = {
                "parent",
              },
              parameters = {
                pageSize = {
                  description = "The requested page size. The actual page size may be fixed to a min or max value.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "A token identifying a page of results returned by the server.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "The name of the enterprise in the form enterprises/{enterpriseId}.",
                  location = "path",
                  pattern = "^enterprises/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/devices",
              response = {
                ["$ref"] = "ListDevicesResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/androidmanagement",
              },
            },
            patch = {
              description = "Updates a device.",
              flatPath = "v1/enterprises/{enterprisesId}/devices/{devicesId}",
              httpMethod = "PATCH",
              id = "androidmanagement.enterprises.devices.patch",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "The name of the device in the form enterprises/{enterpriseId}/devices/{deviceId}.",
                  location = "path",
                  pattern = "^enterprises/[^/]+/devices/[^/]+$",
                  required = true,
                  type = "string",
                },
                updateMask = {
                  description = "The field mask indicating the fields to update. If not set, all modifiable fields will be modified.",
                  format = "google-fieldmask",
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/{+name}",
              request = {
                ["$ref"] = "Device",
              },
              response = {
                ["$ref"] = "Device",
              },
              scopes = {
                "https://www.googleapis.com/auth/androidmanagement",
              },
            },
          },
          resources = {
            operations = {
              methods = {
                cancel = {
                  description = "Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn't support this method, it returns google.rpc.Code.UNIMPLEMENTED. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of 1, corresponding to Code.CANCELLED.",
                  flatPath = "v1/enterprises/{enterprisesId}/devices/{devicesId}/operations/{operationsId}:cancel",
                  httpMethod = "POST",
                  id = "androidmanagement.enterprises.devices.operations.cancel",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "The name of the operation resource to be cancelled.",
                      location = "path",
                      pattern = "^enterprises/[^/]+/devices/[^/]+/operations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}:cancel",
                  response = {
                    ["$ref"] = "Empty",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/androidmanagement",
                  },
                },
                delete = {
                  description = "Deletes a long-running operation. This method indicates that the client is no longer interested in the operation result. It does not cancel the operation. If the server doesn't support this method, it returns google.rpc.Code.UNIMPLEMENTED.",
                  flatPath = "v1/enterprises/{enterprisesId}/devices/{devicesId}/operations/{operationsId}",
                  httpMethod = "DELETE",
                  id = "androidmanagement.enterprises.devices.operations.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "The name of the operation resource to be deleted.",
                      location = "path",
                      pattern = "^enterprises/[^/]+/devices/[^/]+/operations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "Empty",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/androidmanagement",
                  },
                },
                get = {
                  description = "Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.",
                  flatPath = "v1/enterprises/{enterprisesId}/devices/{devicesId}/operations/{operationsId}",
                  httpMethod = "GET",
                  id = "androidmanagement.enterprises.devices.operations.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "The name of the operation resource.",
                      location = "path",
                      pattern = "^enterprises/[^/]+/devices/[^/]+/operations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/androidmanagement",
                  },
                },
                list = {
                  description = "Lists operations that match the specified filter in the request. If the server doesn't support this method, it returns UNIMPLEMENTED.NOTE: the name binding allows API services to override the binding to use different resource name schemes, such as users/*/operations. To override the binding, API services can add a binding such as \"/v1/{name=users/*}/operations\" to their service configuration. For backwards compatibility, the default name includes the operations collection id, however overriding users must ensure the name binding is the parent resource, without the operations collection id.",
                  flatPath = "v1/enterprises/{enterprisesId}/devices/{devicesId}/operations",
                  httpMethod = "GET",
                  id = "androidmanagement.enterprises.devices.operations.list",
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
                      pattern = "^enterprises/[^/]+/devices/[^/]+/operations$",
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
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "ListOperationsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/androidmanagement",
                  },
                },
              },
            },
          },
        },
        enrollmentTokens = {
          methods = {
            create = {
              description = "Creates an enrollment token for a given enterprise. It's up to the caller's responsibility to manage the lifecycle of newly created tokens and deleting them when they're not intended to be used anymore. Once an enrollment token has been created, it's not possible to retrieve the token's content anymore using AM API. It is recommended for EMMs to securely store the token if it's intended to be reused.",
              flatPath = "v1/enterprises/{enterprisesId}/enrollmentTokens",
              httpMethod = "POST",
              id = "androidmanagement.enterprises.enrollmentTokens.create",
              parameterOrder = {
                "parent",
              },
              parameters = {
                parent = {
                  description = "The name of the enterprise in the form enterprises/{enterpriseId}.",
                  location = "path",
                  pattern = "^enterprises/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/enrollmentTokens",
              request = {
                ["$ref"] = "EnrollmentToken",
              },
              response = {
                ["$ref"] = "EnrollmentToken",
              },
              scopes = {
                "https://www.googleapis.com/auth/androidmanagement",
              },
            },
            delete = {
              description = "Deletes an enrollment token. This operation invalidates the token, preventing its future use.",
              flatPath = "v1/enterprises/{enterprisesId}/enrollmentTokens/{enrollmentTokensId}",
              httpMethod = "DELETE",
              id = "androidmanagement.enterprises.enrollmentTokens.delete",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "The name of the enrollment token in the form enterprises/{enterpriseId}/enrollmentTokens/{enrollmentTokenId}.",
                  location = "path",
                  pattern = "^enterprises/[^/]+/enrollmentTokens/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}",
              response = {
                ["$ref"] = "Empty",
              },
              scopes = {
                "https://www.googleapis.com/auth/androidmanagement",
              },
            },
            get = {
              description = "Gets an active, unexpired enrollment token. Only a partial view of EnrollmentToken is returned: all the fields but name and expiration_timestamp are empty. This method is meant to help manage active enrollment tokens lifecycle. For security reasons, it's recommended to delete active enrollment tokens as soon as they're not intended to be used anymore.",
              flatPath = "v1/enterprises/{enterprisesId}/enrollmentTokens/{enrollmentTokensId}",
              httpMethod = "GET",
              id = "androidmanagement.enterprises.enrollmentTokens.get",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. The name of the enrollment token in the form enterprises/{enterpriseId}/enrollmentTokens/{enrollmentTokenId}.",
                  location = "path",
                  pattern = "^enterprises/[^/]+/enrollmentTokens/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}",
              response = {
                ["$ref"] = "EnrollmentToken",
              },
              scopes = {
                "https://www.googleapis.com/auth/androidmanagement",
              },
            },
            list = {
              description = "Lists active, unexpired enrollment tokens for a given enterprise. The list items contain only a partial view of EnrollmentToken: all the fields but name and expiration_timestamp are empty. This method is meant to help manage active enrollment tokens lifecycle. For security reasons, it's recommended to delete active enrollment tokens as soon as they're not intended to be used anymore.",
              flatPath = "v1/enterprises/{enterprisesId}/enrollmentTokens",
              httpMethod = "GET",
              id = "androidmanagement.enterprises.enrollmentTokens.list",
              parameterOrder = {
                "parent",
              },
              parameters = {
                pageSize = {
                  description = "The requested page size. The service may return fewer than this value. If unspecified, at most 10 items will be returned. The maximum value is 100; values above 100 will be coerced to 100.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "A token identifying a page of results returned by the server.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "Required. The name of the enterprise in the form enterprises/{enterpriseId}.",
                  location = "path",
                  pattern = "^enterprises/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/enrollmentTokens",
              response = {
                ["$ref"] = "ListEnrollmentTokensResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/androidmanagement",
              },
            },
          },
        },
        policies = {
          methods = {
            delete = {
              description = "Deletes a policy. This operation is only permitted if no devices are currently referencing the policy.",
              flatPath = "v1/enterprises/{enterprisesId}/policies/{policiesId}",
              httpMethod = "DELETE",
              id = "androidmanagement.enterprises.policies.delete",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "The name of the policy in the form enterprises/{enterpriseId}/policies/{policyId}.",
                  location = "path",
                  pattern = "^enterprises/[^/]+/policies/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}",
              response = {
                ["$ref"] = "Empty",
              },
              scopes = {
                "https://www.googleapis.com/auth/androidmanagement",
              },
            },
            get = {
              description = "Gets a policy.",
              flatPath = "v1/enterprises/{enterprisesId}/policies/{policiesId}",
              httpMethod = "GET",
              id = "androidmanagement.enterprises.policies.get",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "The name of the policy in the form enterprises/{enterpriseId}/policies/{policyId}.",
                  location = "path",
                  pattern = "^enterprises/[^/]+/policies/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}",
              response = {
                ["$ref"] = "Policy",
              },
              scopes = {
                "https://www.googleapis.com/auth/androidmanagement",
              },
            },
            list = {
              description = "Lists policies for a given enterprise.",
              flatPath = "v1/enterprises/{enterprisesId}/policies",
              httpMethod = "GET",
              id = "androidmanagement.enterprises.policies.list",
              parameterOrder = {
                "parent",
              },
              parameters = {
                pageSize = {
                  description = "The requested page size. The actual page size may be fixed to a min or max value.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "A token identifying a page of results returned by the server.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "The name of the enterprise in the form enterprises/{enterpriseId}.",
                  location = "path",
                  pattern = "^enterprises/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/policies",
              response = {
                ["$ref"] = "ListPoliciesResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/androidmanagement",
              },
            },
            patch = {
              description = "Updates or creates a policy.",
              flatPath = "v1/enterprises/{enterprisesId}/policies/{policiesId}",
              httpMethod = "PATCH",
              id = "androidmanagement.enterprises.policies.patch",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "The name of the policy in the form enterprises/{enterpriseId}/policies/{policyId}.",
                  location = "path",
                  pattern = "^enterprises/[^/]+/policies/[^/]+$",
                  required = true,
                  type = "string",
                },
                updateMask = {
                  description = "The field mask indicating the fields to update. If not set, all modifiable fields will be modified.",
                  format = "google-fieldmask",
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/{+name}",
              request = {
                ["$ref"] = "Policy",
              },
              response = {
                ["$ref"] = "Policy",
              },
              scopes = {
                "https://www.googleapis.com/auth/androidmanagement",
              },
            },
          },
        },
        webApps = {
          methods = {
            create = {
              description = "Creates a web app.",
              flatPath = "v1/enterprises/{enterprisesId}/webApps",
              httpMethod = "POST",
              id = "androidmanagement.enterprises.webApps.create",
              parameterOrder = {
                "parent",
              },
              parameters = {
                parent = {
                  description = "The name of the enterprise in the form enterprises/{enterpriseId}.",
                  location = "path",
                  pattern = "^enterprises/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/webApps",
              request = {
                ["$ref"] = "WebApp",
              },
              response = {
                ["$ref"] = "WebApp",
              },
              scopes = {
                "https://www.googleapis.com/auth/androidmanagement",
              },
            },
            delete = {
              description = "Deletes a web app.",
              flatPath = "v1/enterprises/{enterprisesId}/webApps/{webAppsId}",
              httpMethod = "DELETE",
              id = "androidmanagement.enterprises.webApps.delete",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "The name of the web app in the form enterprises/{enterpriseId}/webApps/{packageName}.",
                  location = "path",
                  pattern = "^enterprises/[^/]+/webApps/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}",
              response = {
                ["$ref"] = "Empty",
              },
              scopes = {
                "https://www.googleapis.com/auth/androidmanagement",
              },
            },
            get = {
              description = "Gets a web app.",
              flatPath = "v1/enterprises/{enterprisesId}/webApps/{webAppsId}",
              httpMethod = "GET",
              id = "androidmanagement.enterprises.webApps.get",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "The name of the web app in the form enterprises/{enterpriseId}/webApp/{packageName}.",
                  location = "path",
                  pattern = "^enterprises/[^/]+/webApps/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}",
              response = {
                ["$ref"] = "WebApp",
              },
              scopes = {
                "https://www.googleapis.com/auth/androidmanagement",
              },
            },
            list = {
              description = "Lists web apps for a given enterprise.",
              flatPath = "v1/enterprises/{enterprisesId}/webApps",
              httpMethod = "GET",
              id = "androidmanagement.enterprises.webApps.list",
              parameterOrder = {
                "parent",
              },
              parameters = {
                pageSize = {
                  description = "The requested page size. This is a hint and the actual page size in the response may be different.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "A token identifying a page of results returned by the server.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "The name of the enterprise in the form enterprises/{enterpriseId}.",
                  location = "path",
                  pattern = "^enterprises/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/webApps",
              response = {
                ["$ref"] = "ListWebAppsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/androidmanagement",
              },
            },
            patch = {
              description = "Updates a web app.",
              flatPath = "v1/enterprises/{enterprisesId}/webApps/{webAppsId}",
              httpMethod = "PATCH",
              id = "androidmanagement.enterprises.webApps.patch",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "The name of the web app in the form enterprises/{enterpriseId}/webApps/{packageName}.",
                  location = "path",
                  pattern = "^enterprises/[^/]+/webApps/[^/]+$",
                  required = true,
                  type = "string",
                },
                updateMask = {
                  description = "The field mask indicating the fields to update. If not set, all modifiable fields will be modified.",
                  format = "google-fieldmask",
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/{+name}",
              request = {
                ["$ref"] = "WebApp",
              },
              response = {
                ["$ref"] = "WebApp",
              },
              scopes = {
                "https://www.googleapis.com/auth/androidmanagement",
              },
            },
          },
        },
        webTokens = {
          methods = {
            create = {
              description = "Creates a web token to access an embeddable managed Google Play web UI for a given enterprise.",
              flatPath = "v1/enterprises/{enterprisesId}/webTokens",
              httpMethod = "POST",
              id = "androidmanagement.enterprises.webTokens.create",
              parameterOrder = {
                "parent",
              },
              parameters = {
                parent = {
                  description = "The name of the enterprise in the form enterprises/{enterpriseId}.",
                  location = "path",
                  pattern = "^enterprises/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/webTokens",
              request = {
                ["$ref"] = "WebToken",
              },
              response = {
                ["$ref"] = "WebToken",
              },
              scopes = {
                "https://www.googleapis.com/auth/androidmanagement",
              },
            },
          },
        },
      },
    },
    signupUrls = {
      methods = {
        create = {
          description = "Creates an enterprise signup URL.",
          flatPath = "v1/signupUrls",
          httpMethod = "POST",
          id = "androidmanagement.signupUrls.create",
          parameterOrder = {},
          parameters = {
            callbackUrl = {
              description = "The callback URL that the admin will be redirected to after successfully creating an enterprise. Before redirecting there the system will add a query parameter to this URL named enterpriseToken which will contain an opaque token to be used for the create enterprise request. The URL will be parsed then reformatted in order to add the enterpriseToken parameter, so there may be some minor formatting changes.",
              location = "query",
              type = "string",
            },
            projectId = {
              description = "The ID of the Google Cloud Platform project which will own the enterprise.",
              location = "query",
              type = "string",
            },
          },
          path = "v1/signupUrls",
          response = {
            ["$ref"] = "SignupUrl",
          },
          scopes = {
            "https://www.googleapis.com/auth/androidmanagement",
          },
        },
      },
    },
  },
  revision = "20230116",
  rootUrl = "https://androidmanagement.googleapis.com/",
  schemas = {
    AdbShellCommandEvent = {
      description = "A shell command was issued over ADB via “adb shell command”.",
      id = "AdbShellCommandEvent",
      properties = {
        shellCmd = {
          description = "Shell command that was issued over ADB via \"adb shell command\". Redacted to empty string on organization-owned managed profile devices.",
          type = "string",
        },
      },
      type = "object",
    },
    AdbShellInteractiveEvent = {
      description = "An ADB interactive shell was opened via “adb shell”. Intentionally empty.",
      id = "AdbShellInteractiveEvent",
      properties = {},
      type = "object",
    },
    AdvancedSecurityOverrides = {
      description = "Security policies set to secure values by default. To maintain the security posture of a device, we don't recommend overriding any of the default values.",
      id = "AdvancedSecurityOverrides",
      properties = {
        commonCriteriaMode = {
          description = "Controls Common Criteria Mode—security standards defined in the Common Criteria for Information Technology Security Evaluation (https://www.commoncriteriaportal.org/) (CC). Enabling Common Criteria Mode increases certain security components on a device, including AES-GCM encryption of Bluetooth Long Term Keys, and Wi-Fi configuration stores.Warning: Common Criteria Mode enforces a strict security model typically only required for IT products used in national security systems and other highly sensitive organizations. Standard device use may be affected. Only enabled if required.",
          enum = {
            "COMMON_CRITERIA_MODE_UNSPECIFIED",
            "COMMON_CRITERIA_MODE_DISABLED",
            "COMMON_CRITERIA_MODE_ENABLED",
          },
          enumDescriptions = {
            "Unspecified. Defaults to COMMON_CRITERIA_MODE_DISABLED.",
            "Default. Disables Common Criteria Mode.",
            "Enables Common Criteria Mode.",
          },
          type = "string",
        },
        developerSettings = {
          description = "Controls access to developer settings: developer options and safe boot. Replaces safeBootDisabled (deprecated) and debuggingFeaturesAllowed (deprecated).",
          enum = {
            "DEVELOPER_SETTINGS_UNSPECIFIED",
            "DEVELOPER_SETTINGS_DISABLED",
            "DEVELOPER_SETTINGS_ALLOWED",
          },
          enumDescriptions = {
            "Unspecified. Defaults to DEVELOPER_SETTINGS_DISABLED.",
            "Default. Disables all developer settings and prevents the user from accessing them.",
            "Allows all developer settings. The user can access and optionally configure the settings.",
          },
          type = "string",
        },
        googlePlayProtectVerifyApps = {
          description = "Whether Google Play Protect verification (https://support.google.com/accounts/answer/2812853) is enforced. Replaces ensureVerifyAppsEnabled (deprecated).",
          enum = {
            "GOOGLE_PLAY_PROTECT_VERIFY_APPS_UNSPECIFIED",
            "VERIFY_APPS_ENFORCED",
            "VERIFY_APPS_USER_CHOICE",
          },
          enumDescriptions = {
            "Unspecified. Defaults to VERIFY_APPS_ENFORCED.",
            "Default. Force-enables app verification.",
            "Allows the user to choose whether to enable app verification.",
          },
          type = "string",
        },
        personalAppsThatCanReadWorkNotifications = {
          description = "Personal apps that can read work profile notifications using a NotificationListenerService (https://developer.android.com/reference/android/service/notification/NotificationListenerService). By default, no personal apps (aside from system apps) can read work notifications. Each value in the list must be a package name.",
          items = {
            type = "string",
          },
          type = "array",
        },
        untrustedAppsPolicy = {
          description = "The policy for untrusted apps (apps from unknown sources) enforced on the device. Replaces install_unknown_sources_allowed (deprecated).",
          enum = {
            "UNTRUSTED_APPS_POLICY_UNSPECIFIED",
            "DISALLOW_INSTALL",
            "ALLOW_INSTALL_IN_PERSONAL_PROFILE_ONLY",
            "ALLOW_INSTALL_DEVICE_WIDE",
          },
          enumDescriptions = {
            "Unspecified. Defaults to DISALLOW_INSTALL.",
            "Default. Disallow untrusted app installs on entire device.",
            "For devices with work profiles, allow untrusted app installs in the device's personal profile only.",
            "Allow untrusted app installs on entire device.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    AlwaysOnVpnPackage = {
      description = "Configuration for an always-on VPN connection.",
      id = "AlwaysOnVpnPackage",
      properties = {
        lockdownEnabled = {
          description = "Disallows networking when the VPN is not connected.",
          type = "boolean",
        },
        packageName = {
          description = "The package name of the VPN app.",
          type = "string",
        },
      },
      type = "object",
    },
    ApiLevelCondition = {
      description = "A compliance rule condition which is satisfied if the Android Framework API level on the device doesn't meet a minimum requirement. There can only be one rule with this type of condition per policy.",
      id = "ApiLevelCondition",
      properties = {
        minApiLevel = {
          description = "The minimum desired Android Framework API level. If the device doesn't meet the minimum requirement, this condition is satisfied. Must be greater than zero.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    AppProcessInfo = {
      description = "Information about a process. It contains process name, start time, app Uid, app Pid, seinfo tag, hash of the base APK.",
      id = "AppProcessInfo",
      properties = {
        apkSha256Hash = {
          description = "SHA-256 hash of the base APK, in hexadecimal format.",
          type = "string",
        },
        packageNames = {
          description = "Package names of all packages that are associated with the particular user ID. In most cases, this will be a single package name, the package that has been assigned that user ID. If multiple application share a UID then all packages sharing UID will be included.",
          items = {
            type = "string",
          },
          type = "array",
        },
        pid = {
          description = "Process ID.",
          format = "int32",
          type = "integer",
        },
        processName = {
          description = "Process name.",
          type = "string",
        },
        seinfo = {
          description = "SELinux policy info.",
          type = "string",
        },
        startTime = {
          description = "Process start time.",
          format = "google-datetime",
          type = "string",
        },
        uid = {
          description = "UID of the package.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    AppProcessStartEvent = {
      description = "An app process was started. This is available device-wide on fully managed devices and within the work profile on organization-owned devices with a work profile.",
      id = "AppProcessStartEvent",
      properties = {
        processInfo = {
          ["$ref"] = "AppProcessInfo",
          description = "Information about a process.",
        },
      },
      type = "object",
    },
    AppTrackInfo = {
      description = "Id to name association of a app track.",
      id = "AppTrackInfo",
      properties = {
        trackAlias = {
          description = "The track name associated with the trackId, set in the Play Console. The name is modifiable from Play Console.",
          type = "string",
        },
        trackId = {
          description = "The unmodifiable unique track identifier, taken from the releaseTrackId in the URL of the Play Console page that displays the app’s track information.",
          type = "string",
        },
      },
      type = "object",
    },
    AppVersion = {
      description = "This represents a single version of the app.",
      id = "AppVersion",
      properties = {
        production = {
          description = "If the value is True, it indicates that this version is a production track.",
          type = "boolean",
        },
        trackIds = {
          description = "Track identifiers that the app version is published in. This does not include the production track (see production instead).",
          items = {
            type = "string",
          },
          type = "array",
        },
        versionCode = {
          description = "Unique increasing identifier for the app version.",
          format = "int32",
          type = "integer",
        },
        versionString = {
          description = "The string used in the Play store by the app developer to identify the version. The string is not necessarily unique or localized (for example, the string could be \"1.4\").",
          type = "string",
        },
      },
      type = "object",
    },
    Application = {
      description = "Information about an app.",
      id = "Application",
      properties = {
        appPricing = {
          description = "Whether this app is free, free with in-app purchases, or paid. If the pricing is unspecified, this means the app is not generally available anymore (even though it might still be available to people who own it).",
          enum = {
            "APP_PRICING_UNSPECIFIED",
            "FREE",
            "FREE_WITH_IN_APP_PURCHASE",
            "PAID",
          },
          enumDescriptions = {
            "Unknown pricing, used to denote an approved app that is not generally available.",
            "The app is free.",
            "The app is free, but offers in-app purchases.",
            "The app is paid.",
          },
          type = "string",
        },
        appTracks = {
          description = "Application tracks visible to the enterprise.",
          items = {
            ["$ref"] = "AppTrackInfo",
          },
          type = "array",
        },
        appVersions = {
          description = "Versions currently available for this app.",
          items = {
            ["$ref"] = "AppVersion",
          },
          type = "array",
        },
        author = {
          description = "The name of the author of the apps (for example, the app developer).",
          type = "string",
        },
        availableCountries = {
          description = "The countries which this app is available in as per ISO 3166-1 alpha-2.",
          items = {
            type = "string",
          },
          type = "array",
        },
        category = {
          description = "The app category (e.g. RACING, SOCIAL, etc.)",
          type = "string",
        },
        contentRating = {
          description = "The content rating for this app.",
          enum = {
            "CONTENT_RATING_UNSPECIFIED",
            "THREE_YEARS",
            "SEVEN_YEARS",
            "TWELVE_YEARS",
            "SIXTEEN_YEARS",
            "EIGHTEEN_YEARS",
          },
          enumDescriptions = {
            "Unspecified.",
            "Content suitable for ages 3 and above only.",
            "Content suitable for ages 7 and above only.",
            "Content suitable for ages 12 and above only.",
            "Content suitable for ages 16 and above only.",
            "Content suitable for ages 18 and above only.",
          },
          type = "string",
        },
        description = {
          description = "The localized promotional description, if available.",
          type = "string",
        },
        distributionChannel = {
          description = "How and to whom the package is made available.",
          enum = {
            "DISTRIBUTION_CHANNEL_UNSPECIFIED",
            "PUBLIC_GOOGLE_HOSTED",
            "PRIVATE_GOOGLE_HOSTED",
            "PRIVATE_SELF_HOSTED",
          },
          enumDescriptions = {
            "Unspecified.",
            "Package is available through the Play store and not restricted to a specific enterprise.",
            "Package is a private app (restricted to an enterprise) but hosted by Google.",
            "Private app (restricted to an enterprise) and is privately hosted.",
          },
          type = "string",
        },
        features = {
          description = "Noteworthy features (if any) of this app.",
          items = {
            enum = {
              "APP_FEATURE_UNSPECIFIED",
              "VPN_APP",
            },
            enumDescriptions = {
              "Unspecified.",
              "The app is a VPN.",
            },
            type = "string",
          },
          type = "array",
        },
        fullDescription = {
          description = "Full app description, if available.",
          type = "string",
        },
        iconUrl = {
          description = "A link to an image that can be used as an icon for the app. This image is suitable for use up to a pixel size of 512 x 512.",
          type = "string",
        },
        managedProperties = {
          description = "The set of managed properties available to be pre-configured for the app.",
          items = {
            ["$ref"] = "ManagedProperty",
          },
          type = "array",
        },
        minAndroidSdkVersion = {
          description = "The minimum Android SDK necessary to run the app.",
          format = "int32",
          type = "integer",
        },
        name = {
          description = "The name of the app in the form enterprises/{enterprise}/applications/{package_name}.",
          type = "string",
        },
        permissions = {
          description = "The permissions required by the app.",
          items = {
            ["$ref"] = "ApplicationPermission",
          },
          type = "array",
        },
        playStoreUrl = {
          description = "A link to the (consumer) Google Play details page for the app.",
          type = "string",
        },
        recentChanges = {
          description = "A localised description of the recent changes made to the app.",
          type = "string",
        },
        screenshotUrls = {
          description = "A list of screenshot links representing the app.",
          items = {
            type = "string",
          },
          type = "array",
        },
        smallIconUrl = {
          description = "A link to a smaller image that can be used as an icon for the app. This image is suitable for use up to a pixel size of 128 x 128.",
          type = "string",
        },
        title = {
          description = "The title of the app. Localized.",
          type = "string",
        },
        updateTime = {
          description = "Output only. The approximate time (within 7 days) the app was last published.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    ApplicationEvent = {
      description = "An app-related event.",
      id = "ApplicationEvent",
      properties = {
        createTime = {
          description = "The creation time of the event.",
          format = "google-datetime",
          type = "string",
        },
        eventType = {
          description = "App event type.",
          enum = {
            "APPLICATION_EVENT_TYPE_UNSPECIFIED",
            "INSTALLED",
            "CHANGED",
            "DATA_CLEARED",
            "REMOVED",
            "REPLACED",
            "RESTARTED",
            "PINNED",
            "UNPINNED",
          },
          enumDescriptions = {
            "This value is disallowed.",
            "The app was installed.",
            "The app was changed, for example, a component was enabled or disabled.",
            "The app data was cleared.",
            "The app was removed.",
            "A new version of the app has been installed, replacing the old version.",
            "The app was restarted.",
            "The app was pinned to the foreground.",
            "The app was unpinned.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    ApplicationPermission = {
      description = "A permission required by the app.",
      id = "ApplicationPermission",
      properties = {
        description = {
          description = "A longer description of the permission, providing more detail on what it affects. Localized.",
          type = "string",
        },
        name = {
          description = "The name of the permission. Localized.",
          type = "string",
        },
        permissionId = {
          description = "An opaque string uniquely identifying the permission. Not localized.",
          type = "string",
        },
      },
      type = "object",
    },
    ApplicationPolicy = {
      description = "Policy for an individual app.",
      id = "ApplicationPolicy",
      properties = {
        accessibleTrackIds = {
          description = "List of the app’s track IDs that a device belonging to the enterprise can access. If the list contains multiple track IDs, devices receive the latest version among all accessible tracks. If the list contains no track IDs, devices only have access to the app’s production track. More details about each track are available in AppTrackInfo.",
          items = {
            type = "string",
          },
          type = "array",
        },
        alwaysOnVpnLockdownExemption = {
          description = "Specifies whether the app is allowed networking when the VPN is not connected and alwaysOnVpnPackage.lockdownEnabled is enabled. If set to VPN_LOCKDOWN_ENFORCED, the app is not allowed networking, and if set to VPN_LOCKDOWN_EXEMPTION, the app is allowed networking. Only supported on devices running Android 10 and above. If this is not supported by the device, the device will contain a NonComplianceDetail with non_compliance_reason set to API_LEVEL and a fieldPath. If this is not applicable to the app, the device will contain a NonComplianceDetail with non_compliance_reason set to UNSUPPORTED and a fieldPath. The fieldPath is set to applications[i].alwaysOnVpnLockdownExemption, where i is the index of the package in the applications policy.",
          enum = {
            "ALWAYS_ON_VPN_LOCKDOWN_EXEMPTION_UNSPECIFIED",
            "VPN_LOCKDOWN_ENFORCED",
            "VPN_LOCKDOWN_EXEMPTION",
          },
          enumDescriptions = {
            "Unspecified. Defaults to VPN_LOCKDOWN_ENFORCED.",
            "The app respects the always-on VPN lockdown setting.",
            "The app is exempt from the always-on VPN lockdown setting.",
          },
          type = "string",
        },
        autoUpdateMode = {
          description = "Controls the auto-update mode for the app.",
          enum = {
            "AUTO_UPDATE_MODE_UNSPECIFIED",
            "AUTO_UPDATE_DEFAULT",
            "AUTO_UPDATE_POSTPONED",
            "AUTO_UPDATE_HIGH_PRIORITY",
          },
          enumDescriptions = {
            "Unspecified. Defaults to AUTO_UPDATE_DEFAULT.",
            "The app is automatically updated with low priority to minimize the impact on the user.The app is updated when all of the following constraints are met: The device is not actively used. The device is connected to an unmetered network. The device is charging.The device is notified about a new update within 24 hours after it is published by the developer, after which the app is updated the next time the constraints above are met.",
            "The app is not automatically updated for a maximum of 90 days after the app becomes out of date.90 days after the app becomes out of date, the latest available version is installed automatically with low priority (see AUTO_UPDATE_DEFAULT). After the app is updated it is not automatically updated again until 90 days after it becomes out of date again.The user can still manually update the app from the Play Store at any time.",
            "The app is updated as soon as possible. No constraints are applied.The device is notified immediately about a new update after it becomes available.",
          },
          type = "string",
        },
        connectedWorkAndPersonalApp = {
          description = "Controls whether the app can communicate with itself across a device’s work and personal profiles, subject to user consent.",
          enum = {
            "CONNECTED_WORK_AND_PERSONAL_APP_UNSPECIFIED",
            "CONNECTED_WORK_AND_PERSONAL_APP_DISALLOWED",
            "CONNECTED_WORK_AND_PERSONAL_APP_ALLOWED",
          },
          enumDescriptions = {
            "Unspecified. Defaults to CONNECTED_WORK_AND_PERSONAL_APPS_DISALLOWED.",
            "Default. Prevents the app from communicating cross-profile.",
            "Allows the app to communicate across profiles after receiving user consent.",
          },
          type = "string",
        },
        defaultPermissionPolicy = {
          description = "The default policy for all permissions requested by the app. If specified, this overrides the policy-level default_permission_policy which applies to all apps. It does not override the permission_grants which applies to all apps.",
          enum = {
            "PERMISSION_POLICY_UNSPECIFIED",
            "PROMPT",
            "GRANT",
            "DENY",
          },
          enumDescriptions = {
            "Policy not specified. If no policy is specified for a permission at any level, then the PROMPT behavior is used by default.",
            "Prompt the user to grant a permission.",
            "Automatically grant a permission.",
            "Automatically deny a permission.",
          },
          type = "string",
        },
        delegatedScopes = {
          description = "The scopes delegated to the app from Android Device Policy.",
          items = {
            enum = {
              "DELEGATED_SCOPE_UNSPECIFIED",
              "CERT_INSTALL",
              "MANAGED_CONFIGURATIONS",
              "BLOCK_UNINSTALL",
              "PERMISSION_GRANT",
              "PACKAGE_ACCESS",
              "ENABLE_SYSTEM_APP",
              "NETWORK_ACTIVITY_LOGS",
              "SECURITY_LOGS",
            },
            enumDescriptions = {
              "No delegation scope specified.",
              "Grants access to certificate installation and management.",
              "Grants access to managed configurations management.",
              "Grants access to blocking uninstallation.",
              "Grants access to permission policy and permission grant state.",
              "Grants access to package access state.",
              "Grants access for enabling system apps.",
              "Grants access to network activity logs. Allows the delegated application to call setNetworkLoggingEnabled (https://developer.android.com/reference/android/app/admin/DevicePolicyManager#setNetworkLoggingEnabled%28android.content.ComponentName,%20boolean%29), isNetworkLoggingEnabled (https://developer.android.com/reference/android/app/admin/DevicePolicyManager#isNetworkLoggingEnabled%28android.content.ComponentName%29) and retrieveNetworkLogs (https://developer.android.com/reference/android/app/admin/DevicePolicyManager#retrieveNetworkLogs%28android.content.ComponentName,%20long%29) methods. This scope can be delegated to at most one application. Supported for fully managed devices on Android 10 and above. Supported for a work profile on Android 12 and above. When delegation is supported and set, NETWORK_ACTIVITY_LOGS is ignored.",
              "Grants access to security logs. Allows the delegated application to call setSecurityLoggingEnabled (https://developer.android.com/reference/android/app/admin/DevicePolicyManager#setSecurityLoggingEnabled%28android.content.ComponentName,%20boolean%29), isSecurityLoggingEnabled (https://developer.android.com/reference/android/app/admin/DevicePolicyManager#isSecurityLoggingEnabled%28android.content.ComponentName%29), retrieveSecurityLogs (https://developer.android.com/reference/android/app/admin/DevicePolicyManager#retrieveSecurityLogs%28android.content.ComponentName%29) and retrievePreRebootSecurityLogs (https://developer.android.com/reference/android/app/admin/DevicePolicyManager#retrievePreRebootSecurityLogs%28android.content.ComponentName%29) methods. This scope can be delegated to at most one application. Supported for fully managed devices and company-owned devices with a work profile on Android 12 and above. When delegation is supported and set, SECURITY_LOGS is ignored.",
            },
            type = "string",
          },
          type = "array",
        },
        disabled = {
          description = "Whether the app is disabled. When disabled, the app data is still preserved.",
          type = "boolean",
        },
        extensionConfig = {
          ["$ref"] = "ExtensionConfig",
          description = "Configuration to enable this app as an extension app, with the capability of interacting with Android Device Policy offline.This field can be set for at most one app.",
        },
        installType = {
          description = "The type of installation to perform.",
          enum = {
            "INSTALL_TYPE_UNSPECIFIED",
            "PREINSTALLED",
            "FORCE_INSTALLED",
            "BLOCKED",
            "AVAILABLE",
            "REQUIRED_FOR_SETUP",
            "KIOSK",
          },
          enumDescriptions = {
            "Unspecified. Defaults to AVAILABLE.",
            "The app is automatically installed and can be removed by the user.",
            "The app is automatically installed and can't be removed by the user.",
            "The app is blocked and can't be installed. If the app was installed under a previous policy, it will be uninstalled.",
            "The app is available to install.",
            "The app is automatically installed and can't be removed by the user and will prevent setup from completion until installation is complete.",
            "The app is automatically installed in kiosk mode: it's set as the preferred home intent and whitelisted for lock task mode. Device setup won't complete until the app is installed. After installation, users won't be able to remove the app. You can only set this installType for one app per policy. When this is present in the policy, status bar will be automatically disabled.",
          },
          type = "string",
        },
        lockTaskAllowed = {
          description = "Whether the app is allowed to lock itself in full-screen mode. DEPRECATED. Use InstallType KIOSK or kioskCustomLauncherEnabled to configure a dedicated device.",
          type = "boolean",
        },
        managedConfiguration = {
          additionalProperties = {
            description = "Properties of the object.",
            type = "any",
          },
          description = "Managed configuration applied to the app. The format for the configuration is dictated by the ManagedProperty values supported by the app. Each field name in the managed configuration must match the key field of the ManagedProperty. The field value must be compatible with the type of the ManagedProperty: *type* *JSON value* BOOL true or false STRING string INTEGER number CHOICE string MULTISELECT array of strings HIDDEN string BUNDLE_ARRAY array of objects ",
          type = "object",
        },
        managedConfigurationTemplate = {
          ["$ref"] = "ManagedConfigurationTemplate",
          description = "The managed configurations template for the app, saved from the managed configurations iframe. This field is ignored if managed_configuration is set.",
        },
        minimumVersionCode = {
          description = "The minimum version of the app that runs on the device. If set, the device attempts to update the app to at least this version code. If the app is not up-to-date, the device will contain a NonComplianceDetail with non_compliance_reason set to APP_NOT_UPDATED. The app must already be published to Google Play with a version code greater than or equal to this value. At most 20 apps may specify a minimum version code per policy.",
          format = "int32",
          type = "integer",
        },
        packageName = {
          description = "The package name of the app. For example, com.google.android.youtube for the YouTube app.",
          type = "string",
        },
        permissionGrants = {
          description = "Explicit permission grants or denials for the app. These values override the default_permission_policy and permission_grants which apply to all apps.",
          items = {
            ["$ref"] = "PermissionGrant",
          },
          type = "array",
        },
        workProfileWidgets = {
          description = "Specifies whether the app installed in the work profile is allowed to add widgets to the home screen.",
          enum = {
            "WORK_PROFILE_WIDGETS_UNSPECIFIED",
            "WORK_PROFILE_WIDGETS_ALLOWED",
            "WORK_PROFILE_WIDGETS_DISALLOWED",
          },
          enumDescriptions = {
            "Unspecified. Defaults to work_profile_widgets_default",
            "Work profile widgets are allowed. This means the application will be able to add widgets to the home screen.",
            "Work profile widgets are disallowed. This means the application will not be able to add widgets to the home screen.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    ApplicationReport = {
      description = "Information reported about an installed app.",
      id = "ApplicationReport",
      properties = {
        applicationSource = {
          description = "The source of the package.",
          enum = {
            "APPLICATION_SOURCE_UNSPECIFIED",
            "SYSTEM_APP_FACTORY_VERSION",
            "SYSTEM_APP_UPDATED_VERSION",
            "INSTALLED_FROM_PLAY_STORE",
          },
          enumDescriptions = {
            "The app was sideloaded from an unspecified source.",
            "This is a system app from the device's factory image.",
            "This is an updated system app.",
            "The app was installed from the Google Play Store.",
          },
          type = "string",
        },
        displayName = {
          description = "The display name of the app.",
          type = "string",
        },
        events = {
          description = "The list of app events which have occurred in the last 30 hours.",
          items = {
            ["$ref"] = "ApplicationEvent",
          },
          type = "array",
        },
        installerPackageName = {
          description = "The package name of the app that installed this app.",
          type = "string",
        },
        keyedAppStates = {
          description = "List of keyed app states reported by the app.",
          items = {
            ["$ref"] = "KeyedAppState",
          },
          type = "array",
        },
        packageName = {
          description = "Package name of the app.",
          type = "string",
        },
        packageSha256Hash = {
          description = "The SHA-256 hash of the app's APK file, which can be used to verify the app hasn't been modified. Each byte of the hash value is represented as a two-digit hexadecimal number.",
          type = "string",
        },
        signingKeyCertFingerprints = {
          description = "The SHA-1 hash of each android.content.pm.Signature (https://developer.android.com/reference/android/content/pm/Signature.html) associated with the app package. Each byte of each hash value is represented as a two-digit hexadecimal number.",
          items = {
            type = "string",
          },
          type = "array",
        },
        state = {
          description = "Application state.",
          enum = {
            "APPLICATION_STATE_UNSPECIFIED",
            "REMOVED",
            "INSTALLED",
          },
          enumDescriptions = {
            "App state is unspecified",
            "App was removed from the device",
            "App is installed on the device",
          },
          type = "string",
        },
        versionCode = {
          description = "The app version code, which can be used to determine whether one version is more recent than another.",
          format = "int32",
          type = "integer",
        },
        versionName = {
          description = "The app version as displayed to the user.",
          type = "string",
        },
      },
      type = "object",
    },
    ApplicationReportingSettings = {
      description = "Settings controlling the behavior of application reports.",
      id = "ApplicationReportingSettings",
      properties = {
        includeRemovedApps = {
          description = "Whether removed apps are included in application reports.",
          type = "boolean",
        },
      },
      type = "object",
    },
    BatchUsageLogEvents = {
      description = "Batched event logs of events from the device.",
      id = "BatchUsageLogEvents",
      properties = {
        device = {
          description = "The name of the device in the form ‘enterprises/{enterpriseId}/devices/{deviceId}’",
          type = "string",
        },
        retrievalTime = {
          description = "The device timestamp when the batch of events were collected from the device.",
          format = "google-datetime",
          type = "string",
        },
        usageLogEvents = {
          description = "The list of UsageLogEvent that were reported by the device, sorted chronologically by the event time.",
          items = {
            ["$ref"] = "UsageLogEvent",
          },
          type = "array",
        },
        user = {
          description = "The resource name of the user that owns this device in the form ‘enterprises/{enterpriseId}/users/{userId}’.",
          type = "string",
        },
      },
      type = "object",
    },
    BlockAction = {
      description = "An action to block access to apps and data on a fully managed device or in a work profile. This action also triggers a device or work profile to displays a user-facing notification with information (where possible) on how to correct the compliance issue. Note: wipeAction must also be specified.",
      id = "BlockAction",
      properties = {
        blockAfterDays = {
          description = "Number of days the policy is non-compliant before the device or work profile is blocked. To block access immediately, set to 0. blockAfterDays must be less than wipeAfterDays.",
          format = "int32",
          type = "integer",
        },
        blockScope = {
          description = "Specifies the scope of this BlockAction. Only applicable to devices that are company-owned.",
          enum = {
            "BLOCK_SCOPE_UNSPECIFIED",
            "BLOCK_SCOPE_WORK_PROFILE",
            "BLOCK_SCOPE_DEVICE",
          },
          enumDescriptions = {
            "Unspecified. Defaults to BLOCK_SCOPE_WORK_PROFILE.",
            "Block action is only applied to apps in the work profile. Apps in the personal profile are unaffected.",
            "Block action is applied to the entire device, including apps in the personal profile.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    CertAuthorityInstalledEvent = {
      description = "A new root certificate was installed into the system's trusted credential storage. This is available device-wide on fully managed devices and within the work profile on organization-owned devices with a work profile.",
      id = "CertAuthorityInstalledEvent",
      properties = {
        certificate = {
          description = "Subject of the certificate.",
          type = "string",
        },
        success = {
          description = "Whether the installation event succeeded.",
          type = "boolean",
        },
        userId = {
          description = "The user in which the certificate install event happened. Only available for devices running Android 11 and above.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    CertAuthorityRemovedEvent = {
      description = "A root certificate was removed from the system's trusted credential storage. This is available device-wide on fully managed devices and within the work profile on organization-owned devices with a work profile.",
      id = "CertAuthorityRemovedEvent",
      properties = {
        certificate = {
          description = "Subject of the certificate.",
          type = "string",
        },
        success = {
          description = "Whether the removal succeeded.",
          type = "boolean",
        },
        userId = {
          description = "The user in which the certificate removal event occurred. Only available for devices running Android 11 and above.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    CertValidationFailureEvent = {
      description = "An X.509v3 certificate failed to validate, currently this validation is performed on the Wi-FI access point and failure may be due to a mismatch upon server certificate validation. However it may in the future include other validation events of an X.509v3 certificate.",
      id = "CertValidationFailureEvent",
      properties = {
        failureReason = {
          description = "The reason why certification validation failed.",
          type = "string",
        },
      },
      type = "object",
    },
    ChoosePrivateKeyRule = {
      description = "Controls apps' access to private keys. The rule determines which private key, if any, Android Device Policy grants to the specified app. Access is granted either when the app calls KeyChain.choosePrivateKeyAlias (https://developer.android.com/reference/android/security/KeyChain#choosePrivateKeyAlias%28android.app.Activity,%20android.security.KeyChainAliasCallback,%20java.lang.String[],%20java.security.Principal[],%20java.lang.String,%20int,%20java.lang.String%29) (or any overloads) to request a private key alias for a given URL, or for rules that are not URL-specific (that is, if urlPattern is not set, or set to the empty string or .*) on Android 11 and above, directly so that the app can call KeyChain.getPrivateKey (https://developer.android.com/reference/android/security/KeyChain#getPrivateKey%28android.content.Context,%20java.lang.String%29), without first having to call KeyChain.choosePrivateKeyAlias.When an app calls KeyChain.choosePrivateKeyAlias if more than one choosePrivateKeyRules matches, the last matching rule defines which key alias to return.",
      id = "ChoosePrivateKeyRule",
      properties = {
        packageNames = {
          description = "The package names to which this rule applies. The hash of the signing certificate for each app is verified against the hash provided by Play. If no package names are specified, then the alias is provided to all apps that call KeyChain.choosePrivateKeyAlias (https://developer.android.com/reference/android/security/KeyChain#choosePrivateKeyAlias%28android.app.Activity,%20android.security.KeyChainAliasCallback,%20java.lang.String[],%20java.security.Principal[],%20java.lang.String,%20int,%20java.lang.String%29) or any overloads (but not without calling KeyChain.choosePrivateKeyAlias, even on Android 11 and above). Any app with the same Android UID as a package specified here will have access when they call KeyChain.choosePrivateKeyAlias.",
          items = {
            type = "string",
          },
          type = "array",
        },
        privateKeyAlias = {
          description = "The alias of the private key to be used.",
          type = "string",
        },
        urlPattern = {
          description = "The URL pattern to match against the URL of the request. If not set or empty, it matches all URLs. This uses the regular expression syntax of java.util.regex.Pattern.",
          type = "string",
        },
      },
      type = "object",
    },
    ClearAppsDataParams = {
      description = "Parameters associated with the CLEAR_APP_DATA command to clear the data of specified apps from the device.",
      id = "ClearAppsDataParams",
      properties = {
        packageNames = {
          description = "The package names of the apps whose data will be cleared when the command is executed.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ClearAppsDataStatus = {
      description = "Status of the CLEAR_APP_DATA command to clear the data of specified apps from the device.",
      id = "ClearAppsDataStatus",
      properties = {
        results = {
          additionalProperties = {
            ["$ref"] = "PerAppResult",
          },
          description = "The per-app results, a mapping from package names to the respective clearing result.",
          type = "object",
        },
      },
      type = "object",
    },
    Command = {
      description = "A command.",
      id = "Command",
      properties = {
        clearAppsDataParams = {
          ["$ref"] = "ClearAppsDataParams",
          description = "Parameters for the CLEAR_APP_DATA command to clear the data of specified apps from the device. See ClearAppsDataParams. If this is set, then it is suggested that type should not be set. In this case, the server automatically sets it to CLEAR_APP_DATA. It is also acceptable to explicitly set type to CLEAR_APP_DATA.",
        },
        clearAppsDataStatus = {
          ["$ref"] = "ClearAppsDataStatus",
          description = "Output only. Status of the CLEAR_APP_DATA command to clear the data of specified apps from the device. See ClearAppsDataStatus.",
          readOnly = true,
        },
        createTime = {
          description = "The timestamp at which the command was created. The timestamp is automatically generated by the server.",
          format = "google-datetime",
          type = "string",
        },
        duration = {
          description = "The duration for which the command is valid. The command will expire if not executed by the device during this time. The default duration if unspecified is ten minutes. There is no maximum duration.",
          format = "google-duration",
          type = "string",
        },
        errorCode = {
          description = "If the command failed, an error code explaining the failure. This is not set when the command is cancelled by the caller.",
          enum = {
            "COMMAND_ERROR_CODE_UNSPECIFIED",
            "UNKNOWN",
            "API_LEVEL",
            "MANAGEMENT_MODE",
            "INVALID_VALUE",
            "UNSUPPORTED",
          },
          enumDescriptions = {
            "There was no error.",
            "An unknown error occurred.",
            "The API level of the device does not support this command.",
            "The management mode (profile owner, device owner, etc.) does not support the command.",
            "The command has an invalid parameter value.",
            "The device doesn't support the command. Updating Android Device Policy to the latest version may resolve the issue.",
          },
          type = "string",
        },
        newPassword = {
          description = "For commands of type RESET_PASSWORD, optionally specifies the new password.",
          type = "string",
        },
        resetPasswordFlags = {
          description = "For commands of type RESET_PASSWORD, optionally specifies flags.",
          items = {
            enum = {
              "RESET_PASSWORD_FLAG_UNSPECIFIED",
              "REQUIRE_ENTRY",
              "DO_NOT_ASK_CREDENTIALS_ON_BOOT",
              "LOCK_NOW",
            },
            enumDescriptions = {
              "This value is ignored.",
              "Don't allow other admins to change the password again until the user has entered it.",
              "Don't ask for user credentials on device boot.",
              "Lock the device after password reset.",
            },
            type = "string",
          },
          type = "array",
        },
        type = {
          description = "The type of the command.",
          enum = {
            "COMMAND_TYPE_UNSPECIFIED",
            "LOCK",
            "RESET_PASSWORD",
            "REBOOT",
            "RELINQUISH_OWNERSHIP",
            "CLEAR_APP_DATA",
          },
          enumDescriptions = {
            "This value is disallowed.",
            "Lock the device, as if the lock screen timeout had expired.",
            "Reset the user's password.",
            "Reboot the device. Only supported on fully managed devices running Android 7.0 (API level 24) or higher.",
            "Removes the work profile and all policies from a company-owned Android 8.0+ device, relinquishing the device for personal use. Apps and data associated with the personal profile(s) are preserved. The device will be deleted from the server after it acknowledges the command.",
            "Clears the application data of specified apps. This is supported on Android 9 and above. Note that an application can store data outside of its application data, for example in external storage or in a user dictionary. See also clear_apps_data_params.",
          },
          type = "string",
        },
        userName = {
          description = "The resource name of the user that owns the device in the form enterprises/{enterpriseId}/users/{userId}. This is automatically generated by the server based on the device the command is sent to.",
          type = "string",
        },
      },
      type = "object",
    },
    CommonCriteriaModeInfo = {
      description = "Information about Common Criteria Mode—security standards defined in the Common Criteria for Information Technology Security Evaluation (https://www.commoncriteriaportal.org/) (CC).This information is only available if statusReportingSettings.commonCriteriaModeEnabled is true in the device's policy.",
      id = "CommonCriteriaModeInfo",
      properties = {
        commonCriteriaModeStatus = {
          description = "Whether Common Criteria Mode is enabled.",
          enum = {
            "COMMON_CRITERIA_MODE_STATUS_UNKNOWN",
            "COMMON_CRITERIA_MODE_DISABLED",
            "COMMON_CRITERIA_MODE_ENABLED",
          },
          enumDescriptions = {
            "Unknown status.",
            "Common Criteria Mode is currently disabled.",
            "Common Criteria Mode is currently enabled.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    ComplianceRule = {
      description = "A rule declaring which mitigating actions to take when a device is not compliant with its policy. For every rule, there is always an implicit mitigating action to set policy_compliant to false for the Device resource, and display a message on the device indicating that the device is not compliant with its policy. Other mitigating actions may optionally be taken as well, depending on the field values in the rule.",
      id = "ComplianceRule",
      properties = {
        apiLevelCondition = {
          ["$ref"] = "ApiLevelCondition",
          description = "A condition which is satisfied if the Android Framework API level on the device doesn't meet a minimum requirement.",
        },
        disableApps = {
          description = "If set to true, the rule includes a mitigating action to disable apps so that the device is effectively disabled, but app data is preserved. If the device is running an app in locked task mode, the app will be closed and a UI showing the reason for non-compliance will be displayed.",
          type = "boolean",
        },
        nonComplianceDetailCondition = {
          ["$ref"] = "NonComplianceDetailCondition",
          description = "A condition which is satisfied if there exists any matching NonComplianceDetail for the device.",
        },
        packageNamesToDisable = {
          description = "If set, the rule includes a mitigating action to disable apps specified in the list, but app data is preserved.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ConnectEvent = {
      description = "A TCP connect event was initiated through the standard network stack.",
      id = "ConnectEvent",
      properties = {
        destinationIpAddress = {
          description = "The destination IP address of the connect call.",
          type = "string",
        },
        destinationPort = {
          description = "The destination port of the connect call.",
          format = "int32",
          type = "integer",
        },
        packageName = {
          description = "The package name of the UID that performed the connect call.",
          type = "string",
        },
      },
      type = "object",
    },
    ContactInfo = {
      description = "Contact details for managed Google Play enterprises.",
      id = "ContactInfo",
      properties = {
        contactEmail = {
          description = "Email address for a point of contact, which will be used to send important announcements related to managed Google Play.",
          type = "string",
        },
        dataProtectionOfficerEmail = {
          description = "The email of the data protection officer. The email is validated but not verified.",
          type = "string",
        },
        dataProtectionOfficerName = {
          description = "The name of the data protection officer.",
          type = "string",
        },
        dataProtectionOfficerPhone = {
          description = "The phone number of the data protection officer The phone number is validated but not verified.",
          type = "string",
        },
        euRepresentativeEmail = {
          description = "The email of the EU representative. The email is validated but not verified.",
          type = "string",
        },
        euRepresentativeName = {
          description = "The name of the EU representative.",
          type = "string",
        },
        euRepresentativePhone = {
          description = "The phone number of the EU representative. The phone number is validated but not verified.",
          type = "string",
        },
      },
      type = "object",
    },
    ContentProviderEndpoint = {
      description = "This feature is not generally available.",
      id = "ContentProviderEndpoint",
      properties = {
        packageName = {
          description = "This feature is not generally available.",
          type = "string",
        },
        signingCertsSha256 = {
          description = "Required. This feature is not generally available.",
          items = {
            type = "string",
          },
          type = "array",
        },
        uri = {
          description = "This feature is not generally available.",
          type = "string",
        },
      },
      type = "object",
    },
    CrossProfilePolicies = {
      description = "Cross-profile policies applied on the device.",
      id = "CrossProfilePolicies",
      properties = {
        crossProfileCopyPaste = {
          description = "Whether text copied from one profile (personal or work) can be pasted in the other profile.",
          enum = {
            "CROSS_PROFILE_COPY_PASTE_UNSPECIFIED",
            "COPY_FROM_WORK_TO_PERSONAL_DISALLOWED",
            "CROSS_PROFILE_COPY_PASTE_ALLOWED",
          },
          enumDescriptions = {
            "Unspecified. Defaults to COPY_FROM_WORK_TO_PERSONAL_DISALLOWED",
            "Default. Prevents users from pasting into the personal profile text copied from the work profile. Text copied from the personal profile can be pasted into the work profile, and text copied from the work profile can be pasted into the work profile.",
            "Text copied in either profile can be pasted in the other profile.",
          },
          type = "string",
        },
        crossProfileDataSharing = {
          description = "Whether data from one profile (personal or work) can be shared with apps in the other profile. Specifically controls simple data sharing via intents. Management of other cross-profile communication channels, such as contact search, copy/paste, or connected work & personal apps, are configured separately.",
          enum = {
            "CROSS_PROFILE_DATA_SHARING_UNSPECIFIED",
            "CROSS_PROFILE_DATA_SHARING_DISALLOWED",
            "DATA_SHARING_FROM_WORK_TO_PERSONAL_DISALLOWED",
            "CROSS_PROFILE_DATA_SHARING_ALLOWED",
          },
          enumDescriptions = {
            "Unspecified. Defaults to DATA_SHARING_FROM_WORK_TO_PERSONAL_DISALLOWED.",
            "Prevents data from being shared from both the personal profile to the work profile and the work profile to the personal profile.",
            "Default. Prevents users from sharing data from the work profile to apps in the personal profile. Personal data can be shared with work apps.",
            "Data from either profile can be shared with the other profile.",
          },
          type = "string",
        },
        showWorkContactsInPersonalProfile = {
          description = "Whether contacts stored in the work profile can be shown in personal profile contact searches and incoming calls.",
          enum = {
            "SHOW_WORK_CONTACTS_IN_PERSONAL_PROFILE_UNSPECIFIED",
            "SHOW_WORK_CONTACTS_IN_PERSONAL_PROFILE_DISALLOWED",
            "SHOW_WORK_CONTACTS_IN_PERSONAL_PROFILE_ALLOWED",
          },
          enumDescriptions = {
            "Unspecified. Defaults to SHOW_WORK_CONTACTS_IN_PERSONAL_PROFILE_ALLOWED.",
            "Prevents work profile contacts from appearing in personal profile contact searches and incoming calls",
            "Default. Allows work profile contacts to appear in personal profile contact searches and incoming calls",
          },
          type = "string",
        },
        workProfileWidgetsDefault = {
          description = "Specifies the default behaviour for work profile widgets. If the policy does not specify work_profile_widgets for a specific application, it will behave according to the value specified here.",
          enum = {
            "WORK_PROFILE_WIDGETS_DEFAULT_UNSPECIFIED",
            "WORK_PROFILE_WIDGETS_DEFAULT_ALLOWED",
            "WORK_PROFILE_WIDGETS_DEFAULT_DISALLOWED",
          },
          enumDescriptions = {
            "Unspecified. Defaults to WORK_PROFILE_WIDGETS_DEFAULT_DISALLOWED.",
            "Work profile widgets are allowed by default. This means that if the policy does not specify work_profile_widgets as WORK_PROFILE_WIDGETS_DISALLOWED for the application, it will be able to add widgets to the home screen.",
            "Work profile widgets are disallowed by default. This means that if the policy does not specify work_profile_widgets as WORK_PROFILE_WIDGETS_ALLOWED for the application, it will be unable to add widgets to the home screen.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    CryptoSelfTestCompletedEvent = {
      description = "Validates whether Android’s built-in cryptographic library (BoringSSL) is valid. Should always succeed on device boot, if it fails, the device should be considered untrusted.",
      id = "CryptoSelfTestCompletedEvent",
      properties = {
        success = {
          description = "Whether the test succeeded.",
          type = "boolean",
        },
      },
      type = "object",
    },
    Date = {
      description = "Represents a whole or partial calendar date, such as a birthday. The time of day and time zone are either specified elsewhere or are insignificant. The date is relative to the Gregorian Calendar. This can represent one of the following: A full date, with non-zero year, month, and day values. A month and day, with a zero year (for example, an anniversary). A year on its own, with a zero month and a zero day. A year and month, with a zero day (for example, a credit card expiration date).Related types: google.type.TimeOfDay google.type.DateTime google.protobuf.Timestamp",
      id = "Date",
      properties = {
        day = {
          description = "Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to specify a year by itself or a year and month where the day isn't significant.",
          format = "int32",
          type = "integer",
        },
        month = {
          description = "Month of a year. Must be from 1 to 12, or 0 to specify a year without a month and day.",
          format = "int32",
          type = "integer",
        },
        year = {
          description = "Year of the date. Must be from 1 to 9999, or 0 to specify a date without a year.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    Device = {
      description = "A device owned by an enterprise. Unless otherwise noted, all fields are read-only and can't be modified by enterprises.devices.patch.",
      id = "Device",
      properties = {
        apiLevel = {
          description = "The API level of the Android platform version running on the device.",
          format = "int32",
          type = "integer",
        },
        applicationReports = {
          description = "Reports for apps installed on the device. This information is only available when application_reports_enabled is true in the device's policy.",
          items = {
            ["$ref"] = "ApplicationReport",
          },
          type = "array",
        },
        appliedPasswordPolicies = {
          description = "The password requirements currently applied to the device. The applied requirements may be slightly different from those specified in passwordPolicies in some cases. fieldPath is set based on passwordPolicies.",
          items = {
            ["$ref"] = "PasswordRequirements",
          },
          type = "array",
        },
        appliedPolicyName = {
          description = "The name of the policy currently applied to the device.",
          type = "string",
        },
        appliedPolicyVersion = {
          description = "The version of the policy currently applied to the device.",
          format = "int64",
          type = "string",
        },
        appliedState = {
          description = "The state currently applied to the device.",
          enum = {
            "DEVICE_STATE_UNSPECIFIED",
            "ACTIVE",
            "DISABLED",
            "DELETED",
            "PROVISIONING",
          },
          enumDescriptions = {
            "This value is disallowed.",
            "The device is active.",
            "The device is disabled.",
            "The device was deleted. This state is never returned by an API call, but is used in the final status report when the device acknowledges the deletion. If the device is deleted via the API call, this state is published to Pub/Sub. If the user deletes the work profile or resets the device, the device state will remain unknown to the server.",
            "The device is being provisioned. Newly enrolled devices are in this state until they have a policy applied.",
          },
          type = "string",
        },
        commonCriteriaModeInfo = {
          ["$ref"] = "CommonCriteriaModeInfo",
          description = "Information about Common Criteria Mode—security standards defined in the Common Criteria for Information Technology Security Evaluation (https://www.commoncriteriaportal.org/) (CC).This information is only available if statusReportingSettings.commonCriteriaModeEnabled is true in the device's policy.",
        },
        deviceSettings = {
          ["$ref"] = "DeviceSettings",
          description = "Device settings information. This information is only available if deviceSettingsEnabled is true in the device's policy.",
        },
        disabledReason = {
          ["$ref"] = "UserFacingMessage",
          description = "If the device state is DISABLED, an optional message that is displayed on the device indicating the reason the device is disabled. This field can be modified by a patch request.",
        },
        displays = {
          description = "Detailed information about displays on the device. This information is only available if displayInfoEnabled is true in the device's policy.",
          items = {
            ["$ref"] = "Display",
          },
          type = "array",
        },
        enrollmentTime = {
          description = "The time of device enrollment.",
          format = "google-datetime",
          type = "string",
        },
        enrollmentTokenData = {
          description = "If the device was enrolled with an enrollment token with additional data provided, this field contains that data.",
          type = "string",
        },
        enrollmentTokenName = {
          description = "If the device was enrolled with an enrollment token, this field contains the name of the token.",
          type = "string",
        },
        hardwareInfo = {
          ["$ref"] = "HardwareInfo",
          description = "Detailed information about the device hardware.",
        },
        hardwareStatusSamples = {
          description = "Hardware status samples in chronological order. This information is only available if hardwareStatusEnabled is true in the device's policy.",
          items = {
            ["$ref"] = "HardwareStatus",
          },
          type = "array",
        },
        lastPolicyComplianceReportTime = {
          description = "Deprecated.",
          format = "google-datetime",
          type = "string",
        },
        lastPolicySyncTime = {
          description = "The last time the device fetched its policy.",
          format = "google-datetime",
          type = "string",
        },
        lastStatusReportTime = {
          description = "The last time the device sent a status report.",
          format = "google-datetime",
          type = "string",
        },
        managementMode = {
          description = "The type of management mode Android Device Policy takes on the device. This influences which policy settings are supported.",
          enum = {
            "MANAGEMENT_MODE_UNSPECIFIED",
            "DEVICE_OWNER",
            "PROFILE_OWNER",
          },
          enumDescriptions = {
            "This value is disallowed.",
            "Device owner. Android Device Policy has full control over the device.",
            "Profile owner. Android Device Policy has control over a managed profile on the device.",
          },
          type = "string",
        },
        memoryEvents = {
          description = "Events related to memory and storage measurements in chronological order. This information is only available if memoryInfoEnabled is true in the device's policy.",
          items = {
            ["$ref"] = "MemoryEvent",
          },
          type = "array",
        },
        memoryInfo = {
          ["$ref"] = "MemoryInfo",
          description = "Memory information: contains information about device memory and storage.",
        },
        name = {
          description = "The name of the device in the form enterprises/{enterpriseId}/devices/{deviceId}.",
          type = "string",
        },
        networkInfo = {
          ["$ref"] = "NetworkInfo",
          description = "Device network information. This information is only available if networkInfoEnabled is true in the device's policy.",
        },
        nonComplianceDetails = {
          description = "Details about policy settings that the device is not compliant with.",
          items = {
            ["$ref"] = "NonComplianceDetail",
          },
          type = "array",
        },
        ownership = {
          description = "Ownership of the managed device.",
          enum = {
            "OWNERSHIP_UNSPECIFIED",
            "COMPANY_OWNED",
            "PERSONALLY_OWNED",
          },
          enumDescriptions = {
            "Ownership is unspecified.",
            "Device is company-owned.",
            "Device is personally-owned.",
          },
          type = "string",
        },
        policyCompliant = {
          description = "Whether the device is compliant with its policy.",
          type = "boolean",
        },
        policyName = {
          description = "The name of the policy applied to the device, in the form enterprises/{enterpriseId}/policies/{policyId}. If not specified, the policy_name for the device's user is applied. This field can be modified by a patch request. You can specify only the policyId when calling enterprises.devices.patch, as long as the policyId doesn’t contain any slashes. The rest of the policy name is inferred.",
          type = "string",
        },
        powerManagementEvents = {
          description = "Power management events on the device in chronological order. This information is only available if powerManagementEventsEnabled is true in the device's policy.",
          items = {
            ["$ref"] = "PowerManagementEvent",
          },
          type = "array",
        },
        previousDeviceNames = {
          description = "If the same physical device has been enrolled multiple times, this field contains its previous device names. The serial number is used as the unique identifier to determine if the same physical device has enrolled previously. The names are in chronological order.",
          items = {
            type = "string",
          },
          type = "array",
        },
        securityPosture = {
          ["$ref"] = "SecurityPosture",
          description = "Device's security posture value that reflects how secure the device is.",
        },
        softwareInfo = {
          ["$ref"] = "SoftwareInfo",
          description = "Detailed information about the device software. This information is only available if softwareInfoEnabled is true in the device's policy.",
        },
        state = {
          description = "The state to be applied to the device. This field can be modified by a patch request. Note that when calling enterprises.devices.patch, ACTIVE and DISABLED are the only allowable values. To enter the device into a DELETED state, call enterprises.devices.delete.",
          enum = {
            "DEVICE_STATE_UNSPECIFIED",
            "ACTIVE",
            "DISABLED",
            "DELETED",
            "PROVISIONING",
          },
          enumDescriptions = {
            "This value is disallowed.",
            "The device is active.",
            "The device is disabled.",
            "The device was deleted. This state is never returned by an API call, but is used in the final status report when the device acknowledges the deletion. If the device is deleted via the API call, this state is published to Pub/Sub. If the user deletes the work profile or resets the device, the device state will remain unknown to the server.",
            "The device is being provisioned. Newly enrolled devices are in this state until they have a policy applied.",
          },
          type = "string",
        },
        systemProperties = {
          additionalProperties = {
            type = "string",
          },
          description = "Map of selected system properties name and value related to the device. This information is only available if systemPropertiesEnabled is true in the device's policy.",
          type = "object",
        },
        user = {
          ["$ref"] = "User",
          description = "The user who owns the device.",
        },
        userName = {
          description = "The resource name of the user that owns this device in the form enterprises/{enterpriseId}/users/{userId}.",
          type = "string",
        },
      },
      type = "object",
    },
    DeviceSettings = {
      description = "Information about security related device settings on device.",
      id = "DeviceSettings",
      properties = {
        adbEnabled = {
          description = "Whether ADB (https://developer.android.com/studio/command-line/adb.html) is enabled on the device.",
          type = "boolean",
        },
        developmentSettingsEnabled = {
          description = "Whether developer mode is enabled on the device.",
          type = "boolean",
        },
        encryptionStatus = {
          description = "Encryption status from DevicePolicyManager.",
          enum = {
            "ENCRYPTION_STATUS_UNSPECIFIED",
            "UNSUPPORTED",
            "INACTIVE",
            "ACTIVATING",
            "ACTIVE",
            "ACTIVE_DEFAULT_KEY",
            "ACTIVE_PER_USER",
          },
          enumDescriptions = {
            "Unspecified. No device should have this type.",
            "Encryption is not supported by the device.",
            "Encryption is supported by the device, but is not currently active.",
            "Encryption is not currently active, but is currently being activated.",
            "Encryption is active.",
            "Encryption is active, but an encryption key is not set by the user.",
            "Encryption is active, and the encryption key is tied to the user profile.",
          },
          type = "string",
        },
        isDeviceSecure = {
          description = "Whether the device is secured with PIN/password.",
          type = "boolean",
        },
        isEncrypted = {
          description = "Whether the storage encryption is enabled.",
          type = "boolean",
        },
        unknownSourcesEnabled = {
          description = "Whether installing apps from unknown sources is enabled.",
          type = "boolean",
        },
        verifyAppsEnabled = {
          description = "Whether Google Play Protect verification (https://support.google.com/accounts/answer/2812853) is enforced on the device.",
          type = "boolean",
        },
      },
      type = "object",
    },
    Display = {
      description = "Device display information.",
      id = "Display",
      properties = {
        density = {
          description = "Display density expressed as dots-per-inch.",
          format = "int32",
          type = "integer",
        },
        displayId = {
          description = "Unique display id.",
          format = "int32",
          type = "integer",
        },
        height = {
          description = "Display height in pixels.",
          format = "int32",
          type = "integer",
        },
        name = {
          description = "Name of the display.",
          type = "string",
        },
        refreshRate = {
          description = "Refresh rate of the display in frames per second.",
          format = "int32",
          type = "integer",
        },
        state = {
          description = "State of the display.",
          enum = {
            "DISPLAY_STATE_UNSPECIFIED",
            "OFF",
            "ON",
            "DOZE",
            "SUSPENDED",
          },
          enumDescriptions = {
            "This value is disallowed.",
            "Display is off.",
            "Display is on.",
            "Display is dozing in a low power state",
            "Display is dozing in a suspended low power state.",
          },
          type = "string",
        },
        width = {
          description = "Display width in pixels.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    DnsEvent = {
      description = "A DNS lookup event was initiated through the standard network stack.",
      id = "DnsEvent",
      properties = {
        hostname = {
          description = "The hostname that was looked up.",
          type = "string",
        },
        ipAddresses = {
          description = "The (possibly truncated) list of the IP addresses returned for DNS lookup (max 10 IPv4 or IPv6 addresses).",
          items = {
            type = "string",
          },
          type = "array",
        },
        packageName = {
          description = "The package name of the UID that performed the DNS lookup.",
          type = "string",
        },
        totalIpAddressesReturned = {
          description = "The number of IP addresses returned from the DNS lookup event. May be higher than the amount of ip_addresses if there were too many addresses to log.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    Empty = {
      description = "A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); } ",
      id = "Empty",
      properties = {},
      type = "object",
    },
    EnrollmentToken = {
      description = "An enrollment token.",
      id = "EnrollmentToken",
      properties = {
        additionalData = {
          description = "Optional, arbitrary data associated with the enrollment token. This could contain, for example, the ID of an org unit the device is assigned to after enrollment. After a device enrolls with the token, this data will be exposed in the enrollment_token_data field of the Device resource. The data must be 1024 characters or less; otherwise, the creation request will fail.",
          type = "string",
        },
        allowPersonalUsage = {
          description = "Controls whether personal usage is allowed on a device provisioned with this enrollment token.For company-owned devices: Enabling personal usage allows the user to set up a work profile on the device. Disabling personal usage requires the user provision the device as a fully managed device.For personally-owned devices: Enabling personal usage allows the user to set up a work profile on the device. Disabling personal usage will prevent the device from provisioning. Personal usage cannot be disabled on personally-owned device.",
          enum = {
            "ALLOW_PERSONAL_USAGE_UNSPECIFIED",
            "PERSONAL_USAGE_ALLOWED",
            "PERSONAL_USAGE_DISALLOWED",
          },
          enumDescriptions = {
            "Personal usage restriction is not specified",
            "Personal usage is allowed",
            "Personal usage is disallowed",
          },
          type = "string",
        },
        duration = {
          description = "The length of time the enrollment token is valid, ranging from 1 minute to Durations.MAX_VALUE (https://developers.google.com/protocol-buffers/docs/reference/java/com/google/protobuf/util/Durations.html#MAX_VALUE), approximately 10,000 years. If not specified, the default duration is 1 hour. Please note that if requested duration causes the resulting expiration_timestamp to exceed Timestamps.MAX_VALUE (https://developers.google.com/protocol-buffers/docs/reference/java/com/google/protobuf/util/Timestamps.html#MAX_VALUE), then expiration_timestamp is coerced to Timestamps.MAX_VALUE.",
          format = "google-duration",
          type = "string",
        },
        expirationTimestamp = {
          description = "The expiration time of the token. This is a read-only field generated by the server.",
          format = "google-datetime",
          type = "string",
        },
        name = {
          description = "The name of the enrollment token, which is generated by the server during creation, in the form enterprises/{enterpriseId}/enrollmentTokens/{enrollmentTokenId}.",
          type = "string",
        },
        oneTimeOnly = {
          description = "Whether the enrollment token is for one time use only. If the flag is set to true, only one device can use it for registration.",
          type = "boolean",
        },
        policyName = {
          description = "The name of the policy initially applied to the enrolled device, in the form enterprises/{enterpriseId}/policies/{policyId}. If not specified, the policy_name for the device’s user is applied. If user_name is also not specified, enterprises/{enterpriseId}/policies/default is applied by default. When updating this field, you can specify only the policyId as long as the policyId doesn’t contain any slashes. The rest of the policy name will be inferred.",
          type = "string",
        },
        qrCode = {
          description = "A JSON string whose UTF-8 representation can be used to generate a QR code to enroll a device with this enrollment token. To enroll a device using NFC, the NFC record must contain a serialized java.util.Properties representation of the properties in the JSON.",
          type = "string",
        },
        user = {
          ["$ref"] = "User",
          description = "The user associated with this enrollment token. If it's specified when the enrollment token is created and the user does not exist, the user will be created. This field must not contain personally identifiable information. Only the account_identifier field needs to be set.",
        },
        value = {
          description = "The token value that's passed to the device and authorizes the device to enroll. This is a read-only field generated by the server.",
          type = "string",
        },
      },
      type = "object",
    },
    Enterprise = {
      description = "The configuration applied to an enterprise.",
      id = "Enterprise",
      properties = {
        appAutoApprovalEnabled = {
          description = "Deprecated and unused.",
          type = "boolean",
        },
        contactInfo = {
          ["$ref"] = "ContactInfo",
          description = "The enterprise contact info of an EMM-managed enterprise.",
        },
        enabledNotificationTypes = {
          description = "The types of Google Pub/Sub notifications enabled for the enterprise.",
          items = {
            enum = {
              "NOTIFICATION_TYPE_UNSPECIFIED",
              "ENROLLMENT",
              "COMPLIANCE_REPORT",
              "STATUS_REPORT",
              "COMMAND",
              "USAGE_LOGS",
            },
            enumDescriptions = {
              "This value is ignored.",
              "A notification sent when a device enrolls.",
              "Deprecated.",
              "A notification sent when a device issues a status report.",
              "A notification sent when a device command has completed.",
              "A notification sent when device sends BatchUsageLogEvents.",
            },
            type = "string",
          },
          type = "array",
        },
        enterpriseDisplayName = {
          description = "The name of the enterprise displayed to users.",
          type = "string",
        },
        logo = {
          ["$ref"] = "ExternalData",
          description = "An image displayed as a logo during device provisioning. Supported types are: image/bmp, image/gif, image/x-ico, image/jpeg, image/png, image/webp, image/vnd.wap.wbmp, image/x-adobe-dng.",
        },
        name = {
          description = "The name of the enterprise which is generated by the server during creation, in the form enterprises/{enterpriseId}.",
          type = "string",
        },
        primaryColor = {
          description = "A color in RGB format that indicates the predominant color to display in the device management app UI. The color components are stored as follows: (red << 16) | (green << 8) | blue, where the value of each component is between 0 and 255, inclusive.",
          format = "int32",
          type = "integer",
        },
        pubsubTopic = {
          description = "The topic which Pub/Sub notifications are published to, in the form projects/{project}/topics/{topic}. This field is only required if Pub/Sub notifications are enabled.",
          type = "string",
        },
        signinDetails = {
          description = "Sign-in details of the enterprise.",
          items = {
            ["$ref"] = "SigninDetail",
          },
          type = "array",
        },
        termsAndConditions = {
          description = "Terms and conditions that must be accepted when provisioning a device for this enterprise. A page of terms is generated for each value in this list.",
          items = {
            ["$ref"] = "TermsAndConditions",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ExtensionConfig = {
      description = "Configuration to enable an app as an extension app, with the capability of interacting with Android Device Policy offline. For Android versions 13 and above, extension apps are exempt from battery restrictions so will not be placed into the restricted App Standby Bucket (https://developer.android.com/topic/performance/appstandby#restricted-bucket). Extensions apps are also protected against users clearing their data or force-closing the application, although admins can continue to use the clear app data command (https://developer.android.com/management/reference/rest/v1/enterprises.devices/issueCommand#CommandType) on extension apps if needed for Android 13 and above.",
      id = "ExtensionConfig",
      properties = {
        notificationReceiver = {
          description = "Fully qualified class name of the receiver service class for Android Device Policy to notify the extension app of any local command status updates.",
          type = "string",
        },
        signingKeyFingerprintsSha256 = {
          description = "Hex-encoded SHA-256 hash of the signing certificate of the extension app. Only hexadecimal string representations of 64 characters are valid.If not specified, the signature for the corresponding package name is obtained from the Play Store instead.If this list is empty, the signature of the extension app on the device must match the signature obtained from the Play Store for the app to be able to communicate with Android Device Policy.If this list is not empty, the signature of the extension app on the device must match one of the entries in this list for the app to be able to communicate with Android Device Policy.In production use cases, it is recommended to leave this empty.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ExternalData = {
      description = "Data hosted at an external location. The data is to be downloaded by Android Device Policy and verified against the hash.",
      id = "ExternalData",
      properties = {
        sha256Hash = {
          description = "The base-64 encoded SHA-256 hash of the content hosted at url. If the content doesn't match this hash, Android Device Policy won't use the data.",
          type = "string",
        },
        url = {
          description = "The absolute URL to the data, which must use either the http or https scheme. Android Device Policy doesn't provide any credentials in the GET request, so the URL must be publicly accessible. Including a long, random component in the URL may be used to prevent attackers from discovering the URL.",
          type = "string",
        },
      },
      type = "object",
    },
    FilePulledEvent = {
      description = "A file was downloaded from the device.",
      id = "FilePulledEvent",
      properties = {
        filePath = {
          description = "The path of the file being pulled.",
          type = "string",
        },
      },
      type = "object",
    },
    FilePushedEvent = {
      description = "A file was uploaded onto the device.",
      id = "FilePushedEvent",
      properties = {
        filePath = {
          description = "The path of the file being pushed.",
          type = "string",
        },
      },
      type = "object",
    },
    FreezePeriod = {
      description = "A system freeze period. When a device’s clock is within the freeze period, all incoming system updates (including security patches) are blocked and won’t be installed. When a device is outside the freeze period, normal update behavior applies. Leap years are ignored in freeze period calculations, in particular: * If Feb. 29th is set as the start or end date of a freeze period, the freeze period will start or end on Feb. 28th instead. * When a device’s system clock reads Feb. 29th, it’s treated as Feb. 28th. * When calculating the number of days in a freeze period or the time between two freeze periods, Feb. 29th is ignored and not counted as a day.Note: For Freeze Periods to take effect, SystemUpdateType cannot be specified as SYSTEM_UPDATE_TYPE_UNSPECIFIED, because freeze periods require a defined policy to be specified.",
      id = "FreezePeriod",
      properties = {
        endDate = {
          ["$ref"] = "Date",
          description = "The end date (inclusive) of the freeze period. Must be no later than 90 days from the start date. If the end date is earlier than the start date, the freeze period is considered wrapping year-end. Note: year must not be set. For example, {\"month\": 1,\"date\": 30}.",
        },
        startDate = {
          ["$ref"] = "Date",
          description = "The start date (inclusive) of the freeze period. Note: year must not be set. For example, {\"month\": 1,\"date\": 30}.",
        },
      },
      type = "object",
    },
    HardwareInfo = {
      description = "Information about device hardware. The fields related to temperature thresholds are only available if hardwareStatusEnabled is true in the device's policy.",
      id = "HardwareInfo",
      properties = {
        batteryShutdownTemperatures = {
          description = "Battery shutdown temperature thresholds in Celsius for each battery on the device.",
          items = {
            format = "float",
            type = "number",
          },
          type = "array",
        },
        batteryThrottlingTemperatures = {
          description = "Battery throttling temperature thresholds in Celsius for each battery on the device.",
          items = {
            format = "float",
            type = "number",
          },
          type = "array",
        },
        brand = {
          description = "Brand of the device. For example, Google.",
          type = "string",
        },
        cpuShutdownTemperatures = {
          description = "CPU shutdown temperature thresholds in Celsius for each CPU on the device.",
          items = {
            format = "float",
            type = "number",
          },
          type = "array",
        },
        cpuThrottlingTemperatures = {
          description = "CPU throttling temperature thresholds in Celsius for each CPU on the device.",
          items = {
            format = "float",
            type = "number",
          },
          type = "array",
        },
        deviceBasebandVersion = {
          description = "Baseband version. For example, MDM9625_104662.22.05.34p.",
          type = "string",
        },
        enterpriseSpecificId = {
          description = "Output only. ID that uniquely identifies a personally-owned device in a particular organization. On the same physical device when enrolled with the same organization, this ID persists across setups and even factory resets. This ID is available on personally-owned devices with a work profile on devices running Android 12 and above.",
          readOnly = true,
          type = "string",
        },
        gpuShutdownTemperatures = {
          description = "GPU shutdown temperature thresholds in Celsius for each GPU on the device.",
          items = {
            format = "float",
            type = "number",
          },
          type = "array",
        },
        gpuThrottlingTemperatures = {
          description = "GPU throttling temperature thresholds in Celsius for each GPU on the device.",
          items = {
            format = "float",
            type = "number",
          },
          type = "array",
        },
        hardware = {
          description = "Name of the hardware. For example, Angler.",
          type = "string",
        },
        manufacturer = {
          description = "Manufacturer. For example, Motorola.",
          type = "string",
        },
        model = {
          description = "The model of the device. For example, Asus Nexus 7.",
          type = "string",
        },
        serialNumber = {
          description = "The device serial number.",
          type = "string",
        },
        skinShutdownTemperatures = {
          description = "Device skin shutdown temperature thresholds in Celsius.",
          items = {
            format = "float",
            type = "number",
          },
          type = "array",
        },
        skinThrottlingTemperatures = {
          description = "Device skin throttling temperature thresholds in Celsius.",
          items = {
            format = "float",
            type = "number",
          },
          type = "array",
        },
      },
      type = "object",
    },
    HardwareStatus = {
      description = "Hardware status. Temperatures may be compared to the temperature thresholds available in hardwareInfo to determine hardware health.",
      id = "HardwareStatus",
      properties = {
        batteryTemperatures = {
          description = "Current battery temperatures in Celsius for each battery on the device.",
          items = {
            format = "float",
            type = "number",
          },
          type = "array",
        },
        cpuTemperatures = {
          description = "Current CPU temperatures in Celsius for each CPU on the device.",
          items = {
            format = "float",
            type = "number",
          },
          type = "array",
        },
        cpuUsages = {
          description = "CPU usages in percentage for each core available on the device. Usage is 0 for each unplugged core. Empty array implies that CPU usage is not supported in the system.",
          items = {
            format = "float",
            type = "number",
          },
          type = "array",
        },
        createTime = {
          description = "The time the measurements were taken.",
          format = "google-datetime",
          type = "string",
        },
        fanSpeeds = {
          description = "Fan speeds in RPM for each fan on the device. Empty array means that there are no fans or fan speed is not supported on the system.",
          items = {
            format = "float",
            type = "number",
          },
          type = "array",
        },
        gpuTemperatures = {
          description = "Current GPU temperatures in Celsius for each GPU on the device.",
          items = {
            format = "float",
            type = "number",
          },
          type = "array",
        },
        skinTemperatures = {
          description = "Current device skin temperatures in Celsius.",
          items = {
            format = "float",
            type = "number",
          },
          type = "array",
        },
      },
      type = "object",
    },
    IssueCommandResponse = {
      description = "Response on issuing a command. This is currently empty as a placeholder.",
      id = "IssueCommandResponse",
      properties = {},
      type = "object",
    },
    KeyDestructionEvent = {
      description = "A cryptographic key including user installed, admin installed and system maintained private key is removed from the device either by the user or management. This is available device-wide on fully managed devices and within the work profile on organization-owned devices with a work profile.",
      id = "KeyDestructionEvent",
      properties = {
        applicationUid = {
          description = "UID of the application which owns the key.",
          format = "int32",
          type = "integer",
        },
        keyAlias = {
          description = "Alias of the key.",
          type = "string",
        },
        success = {
          description = "Whether the operation was successful.",
          type = "boolean",
        },
      },
      type = "object",
    },
    KeyGeneratedEvent = {
      description = "A cryptographic key including user installed, admin installed and system maintained private key is installed on the device either by the user or management.This is available device-wide on fully managed devices and within the work profile on organization-owned devices with a work profile.",
      id = "KeyGeneratedEvent",
      properties = {
        applicationUid = {
          description = "UID of the application which generated the key.",
          format = "int32",
          type = "integer",
        },
        keyAlias = {
          description = "Alias of the key.",
          type = "string",
        },
        success = {
          description = "Whether the operation was successful.",
          type = "boolean",
        },
      },
      type = "object",
    },
    KeyImportEvent = {
      description = "A cryptographic key including user installed, admin installed and system maintained private key is imported on the device either by the user or management. This is available device-wide on fully managed devices and within the work profile on organization-owned devices with a work profile.",
      id = "KeyImportEvent",
      properties = {
        applicationUid = {
          description = "UID of the application which imported the key",
          format = "int32",
          type = "integer",
        },
        keyAlias = {
          description = "Alias of the key.",
          type = "string",
        },
        success = {
          description = "Whether the operation was successful.",
          type = "boolean",
        },
      },
      type = "object",
    },
    KeyIntegrityViolationEvent = {
      description = "A cryptographic key including user installed, admin installed and system maintained private key is determined to be corrupted due to storage corruption, hardware failure or some OS issue. This is available device-wide on fully managed devices and within the work profile on organization-owned devices with a work profile.",
      id = "KeyIntegrityViolationEvent",
      properties = {
        applicationUid = {
          description = "UID of the application which owns the key",
          format = "int32",
          type = "integer",
        },
        keyAlias = {
          description = "Alias of the key.",
          type = "string",
        },
      },
      type = "object",
    },
    KeyedAppState = {
      description = "Keyed app state reported by the app.",
      id = "KeyedAppState",
      properties = {
        createTime = {
          description = "The creation time of the app state on the device.",
          format = "google-datetime",
          type = "string",
        },
        data = {
          description = "Optionally, a machine-readable value to be read by the EMM. For example, setting values that the admin can choose to query against in the EMM console (e.g. “notify me if the battery_warning data < 10”).",
          type = "string",
        },
        key = {
          description = "The key for the app state. Acts as a point of reference for what the app is providing state for. For example, when providing managed configuration feedback, this key could be the managed configuration key.",
          type = "string",
        },
        lastUpdateTime = {
          description = "The time the app state was most recently updated.",
          format = "google-datetime",
          type = "string",
        },
        message = {
          description = "Optionally, a free-form message string to explain the app state. If the state was triggered by a particular value (e.g. a managed configuration value), it should be included in the message.",
          type = "string",
        },
        severity = {
          description = "The severity of the app state.",
          enum = {
            "SEVERITY_UNSPECIFIED",
            "INFO",
            "ERROR",
          },
          enumDescriptions = {
            "Unspecified severity level.",
            "Information severity level.",
            "Error severity level. This should only be set for genuine error conditions that a management organization needs to take action to fix.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    KeyguardDismissAuthAttemptEvent = {
      description = "An attempt was made to unlock the device.",
      id = "KeyguardDismissAuthAttemptEvent",
      properties = {
        strongAuthMethodUsed = {
          description = "Whether a strong form of authentication (password, PIN, or pattern) was used to unlock device.",
          type = "boolean",
        },
        success = {
          description = "Whether the unlock attempt was successful.",
          type = "boolean",
        },
      },
      type = "object",
    },
    KeyguardDismissedEvent = {
      description = "The keyguard was dismissed. Intentionally empty.",
      id = "KeyguardDismissedEvent",
      properties = {},
      type = "object",
    },
    KeyguardSecuredEvent = {
      description = "The device was locked either by user or timeout. Intentionally empty.",
      id = "KeyguardSecuredEvent",
      properties = {},
      type = "object",
    },
    KioskCustomization = {
      description = "Settings controlling the behavior of a device in kiosk mode. To enable kiosk mode, set kioskCustomLauncherEnabled to true or specify an app in the policy with installType KIOSK.",
      id = "KioskCustomization",
      properties = {
        deviceSettings = {
          description = "Specifies whether the Settings app is allowed in kiosk mode.",
          enum = {
            "DEVICE_SETTINGS_UNSPECIFIED",
            "SETTINGS_ACCESS_ALLOWED",
            "SETTINGS_ACCESS_BLOCKED",
          },
          enumDescriptions = {
            "Unspecified, defaults to SETTINGS_ACCESS_ALLOWED.",
            "Access to the Settings app is allowed in kiosk mode.",
            "Access to the Settings app is not allowed in kiosk mode.",
          },
          type = "string",
        },
        powerButtonActions = {
          description = "Sets the behavior of a device in kiosk mode when a user presses and holds (long-presses) the Power button.",
          enum = {
            "POWER_BUTTON_ACTIONS_UNSPECIFIED",
            "POWER_BUTTON_AVAILABLE",
            "POWER_BUTTON_BLOCKED",
          },
          enumDescriptions = {
            "Unspecified, defaults to POWER_BUTTON_AVAILABLE.",
            "The power menu (e.g. Power off, Restart) is shown when a user long-presses the Power button of a device in kiosk mode.",
            "The power menu (e.g. Power off, Restart) is not shown when a user long-presses the Power button of a device in kiosk mode. Note: this may prevent users from turning off the device.",
          },
          type = "string",
        },
        statusBar = {
          description = "Specifies whether system info and notifications are disabled in kiosk mode.",
          enum = {
            "STATUS_BAR_UNSPECIFIED",
            "NOTIFICATIONS_AND_SYSTEM_INFO_ENABLED",
            "NOTIFICATIONS_AND_SYSTEM_INFO_DISABLED",
            "SYSTEM_INFO_ONLY",
          },
          enumDescriptions = {
            "Unspecified, defaults to INFO_AND_NOTIFICATIONS_DISABLED.",
            "System info and notifications are shown on the status bar in kiosk mode.Note: For this policy to take effect, the device's home button must be enabled using kioskCustomization.systemNavigation.",
            "System info and notifications are disabled in kiosk mode.",
            "Only system info is shown on the status bar.",
          },
          type = "string",
        },
        systemErrorWarnings = {
          description = "Specifies whether system error dialogs for crashed or unresponsive apps are blocked in kiosk mode. When blocked, the system will force-stop the app as if the user chooses the \"close app\" option on the UI.",
          enum = {
            "SYSTEM_ERROR_WARNINGS_UNSPECIFIED",
            "ERROR_AND_WARNINGS_ENABLED",
            "ERROR_AND_WARNINGS_MUTED",
          },
          enumDescriptions = {
            "Unspecified, defaults to ERROR_AND_WARNINGS_MUTED.",
            "All system error dialogs such as crash and app not responding (ANR) are displayed.",
            "All system error dialogs, such as crash and app not responding (ANR) are blocked. When blocked, the system force-stops the app as if the user closes the app from the UI.",
          },
          type = "string",
        },
        systemNavigation = {
          description = "Specifies which navigation features are enabled (e.g. Home, Overview buttons) in kiosk mode.",
          enum = {
            "SYSTEM_NAVIGATION_UNSPECIFIED",
            "NAVIGATION_ENABLED",
            "NAVIGATION_DISABLED",
            "HOME_BUTTON_ONLY",
          },
          enumDescriptions = {
            "Unspecified, defaults to NAVIGATION_DISABLED.",
            "Home and overview buttons are enabled.",
            "The home and Overview buttons are not accessible.",
            "Only the home button is enabled.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    LaunchAppAction = {
      description = "An action to launch an app.",
      id = "LaunchAppAction",
      properties = {
        packageName = {
          description = "Package name of app to be launched",
          type = "string",
        },
      },
      type = "object",
    },
    ListDevicesResponse = {
      description = "Response to a request to list devices for a given enterprise.",
      id = "ListDevicesResponse",
      properties = {
        devices = {
          description = "The list of devices.",
          items = {
            ["$ref"] = "Device",
          },
          type = "array",
        },
        nextPageToken = {
          description = "If there are more results, a token to retrieve next page of results.",
          type = "string",
        },
      },
      type = "object",
    },
    ListEnrollmentTokensResponse = {
      description = "Response to a request to list enrollment tokens for a given enterprise.",
      id = "ListEnrollmentTokensResponse",
      properties = {
        enrollmentTokens = {
          description = "The list of enrollment tokens.",
          items = {
            ["$ref"] = "EnrollmentToken",
          },
          type = "array",
        },
        nextPageToken = {
          description = "If there are more results, a token to retrieve next page of results.",
          type = "string",
        },
      },
      type = "object",
    },
    ListEnterprisesResponse = {
      description = "Response to a request to list enterprises.",
      id = "ListEnterprisesResponse",
      properties = {
        enterprises = {
          description = "The list of enterprises.",
          items = {
            ["$ref"] = "Enterprise",
          },
          type = "array",
        },
        nextPageToken = {
          description = "If there are more results, a token to retrieve next page of results.",
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
    ListPoliciesResponse = {
      description = "Response to a request to list policies for a given enterprise.",
      id = "ListPoliciesResponse",
      properties = {
        nextPageToken = {
          description = "If there are more results, a token to retrieve next page of results.",
          type = "string",
        },
        policies = {
          description = "The list of policies.",
          items = {
            ["$ref"] = "Policy",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ListWebAppsResponse = {
      description = "Response to a request to list web apps for a given enterprise.",
      id = "ListWebAppsResponse",
      properties = {
        nextPageToken = {
          description = "If there are more results, a token to retrieve next page of results.",
          type = "string",
        },
        webApps = {
          description = "The list of web apps.",
          items = {
            ["$ref"] = "WebApp",
          },
          type = "array",
        },
      },
      type = "object",
    },
    LogBufferSizeCriticalEvent = {
      description = "The usageLog buffer on the device has reached 90% of its capacity, therefore older events may be dropped. Intentionally empty.",
      id = "LogBufferSizeCriticalEvent",
      properties = {},
      type = "object",
    },
    LoggingStartedEvent = {
      description = "usageLog policy has been enabled. Intentionally empty.",
      id = "LoggingStartedEvent",
      properties = {},
      type = "object",
    },
    LoggingStoppedEvent = {
      description = "usageLog policy has been disabled. Intentionally empty.",
      id = "LoggingStoppedEvent",
      properties = {},
      type = "object",
    },
    ManagedConfigurationTemplate = {
      description = "The managed configurations template for the app, saved from the managed configurations iframe.",
      id = "ManagedConfigurationTemplate",
      properties = {
        configurationVariables = {
          additionalProperties = {
            type = "string",
          },
          description = "Optional, a map containing configuration variables defined for the configuration.",
          type = "object",
        },
        templateId = {
          description = "The ID of the managed configurations template.",
          type = "string",
        },
      },
      type = "object",
    },
    ManagedProperty = {
      description = "Managed property.",
      id = "ManagedProperty",
      properties = {
        defaultValue = {
          description = "The default value of the property. BUNDLE_ARRAY properties don't have a default value.",
          type = "any",
        },
        description = {
          description = "A longer description of the property, providing more detail of what it affects. Localized.",
          type = "string",
        },
        entries = {
          description = "For CHOICE or MULTISELECT properties, the list of possible entries.",
          items = {
            ["$ref"] = "ManagedPropertyEntry",
          },
          type = "array",
        },
        key = {
          description = "The unique key that the app uses to identify the property, e.g. \"com.google.android.gm.fieldname\".",
          type = "string",
        },
        nestedProperties = {
          description = "For BUNDLE_ARRAY properties, the list of nested properties. A BUNDLE_ARRAY property is at most two levels deep.",
          items = {
            ["$ref"] = "ManagedProperty",
          },
          type = "array",
        },
        title = {
          description = "The name of the property. Localized.",
          type = "string",
        },
        type = {
          description = "The type of the property.",
          enum = {
            "MANAGED_PROPERTY_TYPE_UNSPECIFIED",
            "BOOL",
            "STRING",
            "INTEGER",
            "CHOICE",
            "MULTISELECT",
            "HIDDEN",
            "BUNDLE",
            "BUNDLE_ARRAY",
          },
          enumDescriptions = {
            "Not used.",
            "A property of boolean type.",
            "A property of string type.",
            "A property of integer type.",
            "A choice of one item from a set.",
            "A choice of multiple items from a set.",
            "A hidden restriction of string type (the default value can be used to pass along information that can't be modified, such as a version code).",
            "A bundle of properties",
            "An array of property bundles.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    ManagedPropertyEntry = {
      description = "An entry of a managed property.",
      id = "ManagedPropertyEntry",
      properties = {
        name = {
          description = "The human-readable name of the value. Localized.",
          type = "string",
        },
        value = {
          description = "The machine-readable value of the entry, which should be used in the configuration. Not localized.",
          type = "string",
        },
      },
      type = "object",
    },
    MediaMountEvent = {
      description = "Removable media was mounted.",
      id = "MediaMountEvent",
      properties = {
        mountPoint = {
          description = "Mount point.",
          type = "string",
        },
        volumeLabel = {
          description = "Volume label. Redacted to empty string on organization-owned managed profile devices.",
          type = "string",
        },
      },
      type = "object",
    },
    MediaUnmountEvent = {
      description = "Removable media was unmounted.",
      id = "MediaUnmountEvent",
      properties = {
        mountPoint = {
          description = "Mount point.",
          type = "string",
        },
        volumeLabel = {
          description = "Volume label. Redacted to empty string on organization-owned managed profile devices.",
          type = "string",
        },
      },
      type = "object",
    },
    MemoryEvent = {
      description = "An event related to memory and storage measurements.",
      id = "MemoryEvent",
      properties = {
        byteCount = {
          description = "The number of free bytes in the medium, or for EXTERNAL_STORAGE_DETECTED, the total capacity in bytes of the storage medium.",
          format = "int64",
          type = "string",
        },
        createTime = {
          description = "The creation time of the event.",
          format = "google-datetime",
          type = "string",
        },
        eventType = {
          description = "Event type.",
          enum = {
            "MEMORY_EVENT_TYPE_UNSPECIFIED",
            "RAM_MEASURED",
            "INTERNAL_STORAGE_MEASURED",
            "EXTERNAL_STORAGE_DETECTED",
            "EXTERNAL_STORAGE_REMOVED",
            "EXTERNAL_STORAGE_MEASURED",
          },
          enumDescriptions = {
            "Unspecified. No events have this type.",
            "Free space in RAM was measured.",
            "Free space in internal storage was measured.",
            "A new external storage medium was detected. The reported byte count is the total capacity of the storage medium.",
            "An external storage medium was removed. The reported byte count is zero.",
            "Free space in an external storage medium was measured.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    MemoryInfo = {
      description = "Information about device memory and storage.",
      id = "MemoryInfo",
      properties = {
        totalInternalStorage = {
          description = "Total internal storage on device in bytes.",
          format = "int64",
          type = "string",
        },
        totalRam = {
          description = "Total RAM on device in bytes.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    NetworkInfo = {
      description = "Device network info.",
      id = "NetworkInfo",
      properties = {
        imei = {
          description = "IMEI number of the GSM device. For example, A1000031212.",
          type = "string",
        },
        meid = {
          description = "MEID number of the CDMA device. For example, A00000292788E1.",
          type = "string",
        },
        networkOperatorName = {
          description = "Alphabetic name of current registered operator. For example, Vodafone.",
          type = "string",
        },
        telephonyInfos = {
          description = "Provides telephony information associated with each SIM card on the device. Only supported on fully managed devices starting from Android API level 23.",
          items = {
            ["$ref"] = "TelephonyInfo",
          },
          type = "array",
        },
        wifiMacAddress = {
          description = "Wi-Fi MAC address of the device. For example, 7c:11:11:11:11:11.",
          type = "string",
        },
      },
      type = "object",
    },
    NonComplianceDetail = {
      description = "Provides detail about non-compliance with a policy setting.",
      id = "NonComplianceDetail",
      properties = {
        currentValue = {
          description = "If the policy setting could not be applied, the current value of the setting on the device.",
          type = "any",
        },
        fieldPath = {
          description = "For settings with nested fields, if a particular nested field is out of compliance, this specifies the full path to the offending field. The path is formatted in the same way the policy JSON field would be referenced in JavaScript, that is: 1) For object-typed fields, the field name is followed by a dot then by a subfield name. 2) For array-typed fields, the field name is followed by the array index enclosed in brackets. For example, to indicate a problem with the url field in the externalData field in the 3rd application, the path would be applications[2].externalData.url",
          type = "string",
        },
        installationFailureReason = {
          description = "If package_name is set and the non-compliance reason is APP_NOT_INSTALLED or APP_NOT_UPDATED, the detailed reason the app can't be installed or updated.",
          enum = {
            "INSTALLATION_FAILURE_REASON_UNSPECIFIED",
            "INSTALLATION_FAILURE_REASON_UNKNOWN",
            "IN_PROGRESS",
            "NOT_FOUND",
            "NOT_COMPATIBLE_WITH_DEVICE",
            "NOT_APPROVED",
            "PERMISSIONS_NOT_ACCEPTED",
            "NOT_AVAILABLE_IN_COUNTRY",
            "NO_LICENSES_REMAINING",
            "NOT_ENROLLED",
            "USER_INVALID",
          },
          enumDescriptions = {
            "This value is disallowed.",
            "An unknown condition is preventing the app from being installed. Some potential reasons are that the device doesn't have enough storage, the device network connection is unreliable, or the installation is taking longer than expected. The installation will be retried automatically.",
            "The installation is still in progress.",
            "The app was not found in Play.",
            "The app is incompatible with the device.",
            "The app has not been approved by the admin.",
            "The app has new permissions that have not been accepted by the admin.",
            "The app is not available in the user's country.",
            "There are no licenses available to assign to the user.",
            "The enterprise is no longer enrolled with Managed Google Play or the admin has not accepted the latest Managed Google Play Terms of Service.",
            "The user is no longer valid. The user may have been deleted or disabled.",
          },
          type = "string",
        },
        nonComplianceReason = {
          description = "The reason the device is not in compliance with the setting.",
          enum = {
            "NON_COMPLIANCE_REASON_UNSPECIFIED",
            "API_LEVEL",
            "MANAGEMENT_MODE",
            "USER_ACTION",
            "INVALID_VALUE",
            "APP_NOT_INSTALLED",
            "UNSUPPORTED",
            "APP_INSTALLED",
            "PENDING",
            "APP_INCOMPATIBLE",
            "APP_NOT_UPDATED",
          },
          enumDescriptions = {
            "This value is disallowed.",
            "The setting is not supported in the API level of the Android version running on the device.",
            "The management mode (profile owner, device owner, etc.) doesn't support the setting.",
            "The user has not taken required action to comply with the setting.",
            "The setting has an invalid value.",
            "The app required to implement the policy is not installed.",
            "The policy is not supported by the version of Android Device Policy on the device.",
            "A blocked app is installed.",
            "The setting hasn't been applied at the time of the report, but is expected to be applied shortly.",
            "The setting can't be applied to the app because the app doesn't support it, for example because its target SDK version is not high enough.",
            "The app is installed, but it hasn't been updated to the minimum version code specified by policy.",
          },
          type = "string",
        },
        packageName = {
          description = "The package name indicating which app is out of compliance, if applicable.",
          type = "string",
        },
        settingName = {
          description = "The name of the policy setting. This is the JSON field name of a top-level Policy field.",
          type = "string",
        },
        specificNonComplianceContext = {
          ["$ref"] = "SpecificNonComplianceContext",
          description = "Additional context for specific_non_compliance_reason.",
        },
        specificNonComplianceReason = {
          description = "The policy-specific reason the device is not in compliance with the setting.",
          enum = {
            "SPECIFIC_NON_COMPLIANCE_REASON_UNSPECIFIED",
            "PASSWORD_POLICIES_USER_CREDENTIALS_CONFIRMATION_REQUIRED",
            "PASSWORD_POLICIES_PASSWORD_EXPIRED",
            "PASSWORD_POLICIES_PASSWORD_NOT_SUFFICIENT",
            "ONC_WIFI_INVALID_VALUE",
            "ONC_WIFI_API_LEVEL",
          },
          enumDescriptions = {
            "Specific non-compliance reason is not specified. Fields in specific_non_compliance_context are not set.",
            "User needs to confirm credentials by entering the screen lock. Fields in specific_non_compliance_context are not set. nonComplianceReason is set to USER_ACTION.",
            "The device or profile password has expired. passwordPoliciesContext is set. nonComplianceReason is set to USER_ACTION.",
            "The device password does not satisfy password requirements. passwordPoliciesContext is set. nonComplianceReason is set to USER_ACTION.",
            "There is an incorrect value in ONC Wi-Fi configuration. fieldPath specifies which field value is incorrect. oncWifiContext is set. nonComplianceReason is set to INVALID_VALUE.",
            "The ONC Wi-Fi setting is not supported in the API level of the Android version running on the device. fieldPath specifies which field value is not supported. oncWifiContext is set. nonComplianceReason is set to API_LEVEL.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    NonComplianceDetailCondition = {
      description = "A compliance rule condition which is satisfied if there exists any matching NonComplianceDetail for the device. A NonComplianceDetail matches a NonComplianceDetailCondition if all the fields which are set within the NonComplianceDetailCondition match the corresponding NonComplianceDetail fields.",
      id = "NonComplianceDetailCondition",
      properties = {
        nonComplianceReason = {
          description = "The reason the device is not in compliance with the setting. If not set, then this condition matches any reason.",
          enum = {
            "NON_COMPLIANCE_REASON_UNSPECIFIED",
            "API_LEVEL",
            "MANAGEMENT_MODE",
            "USER_ACTION",
            "INVALID_VALUE",
            "APP_NOT_INSTALLED",
            "UNSUPPORTED",
            "APP_INSTALLED",
            "PENDING",
            "APP_INCOMPATIBLE",
            "APP_NOT_UPDATED",
          },
          enumDescriptions = {
            "This value is disallowed.",
            "The setting is not supported in the API level of the Android version running on the device.",
            "The management mode (profile owner, device owner, etc.) doesn't support the setting.",
            "The user has not taken required action to comply with the setting.",
            "The setting has an invalid value.",
            "The app required to implement the policy is not installed.",
            "The policy is not supported by the version of Android Device Policy on the device.",
            "A blocked app is installed.",
            "The setting hasn't been applied at the time of the report, but is expected to be applied shortly.",
            "The setting can't be applied to the app because the app doesn't support it, for example because its target SDK version is not high enough.",
            "The app is installed, but it hasn't been updated to the minimum version code specified by policy.",
          },
          type = "string",
        },
        packageName = {
          description = "The package name of the app that's out of compliance. If not set, then this condition matches any package name.",
          type = "string",
        },
        settingName = {
          description = "The name of the policy setting. This is the JSON field name of a top-level Policy field. If not set, then this condition matches any setting name.",
          type = "string",
        },
      },
      type = "object",
    },
    OncCertificateProvider = {
      description = "This feature is not generally available.",
      id = "OncCertificateProvider",
      properties = {
        certificateReferences = {
          description = "This feature is not generally available.",
          items = {
            type = "string",
          },
          type = "array",
        },
        contentProviderEndpoint = {
          ["$ref"] = "ContentProviderEndpoint",
          description = "This feature is not generally available.",
        },
      },
      type = "object",
    },
    OncWifiContext = {
      description = "Additional context for non-compliance related to Wi-Fi configuration.",
      id = "OncWifiContext",
      properties = {
        wifiGuid = {
          description = "The GUID of non-compliant Wi-Fi configuration.",
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
          description = "If the value is false, it means the operation is still in progress. If true, the operation is completed, and either error or response is available.",
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
          description = "The server-assigned name, which is only unique within the same service that originally returns it. If you use the default HTTP mapping, the name should be a resource name ending with operations/{unique_id}.",
          type = "string",
        },
        response = {
          additionalProperties = {
            description = "Properties of the object. Contains field @type with type URL.",
            type = "any",
          },
          description = "The normal response of the operation in case of success. If the original method returns no data on success, such as Delete, the response is google.protobuf.Empty. If the original method is standard Get/Create/Update, the response should be the resource. For other methods, the response should have the type XxxResponse, where Xxx is the original method name. For example, if the original method name is TakeSnapshot(), the inferred response type is TakeSnapshotResponse.",
          type = "object",
        },
      },
      type = "object",
    },
    OsShutdownEvent = {
      description = "Device was shutdown. Intentionally empty.",
      id = "OsShutdownEvent",
      properties = {},
      type = "object",
    },
    OsStartupEvent = {
      description = "Device was started.",
      id = "OsStartupEvent",
      properties = {
        verifiedBootState = {
          description = "Verified Boot state.",
          enum = {
            "VERIFIED_BOOT_STATE_UNSPECIFIED",
            "GREEN",
            "YELLOW",
            "ORANGE",
          },
          enumDescriptions = {
            "Unknown value.",
            "Indicates that there is a full chain of trust extending from the bootloader to verified partitions including the bootloader, boot partition, and all verified partitions.",
            "Indicates that the boot partition has been verified using the embedded certificate and the signature is valid.",
            "Indicates that the device may be freely modified. Device integrity is left to the user to verify out-of-band.",
          },
          type = "string",
        },
        verityMode = {
          description = "dm-verity mode.",
          enum = {
            "DM_VERITY_MODE_UNSPECIFIED",
            "ENFORCING",
            "IO_ERROR",
            "DISABLED",
          },
          enumDescriptions = {
            "Unknown value.",
            "Indicates that the device will be restarted when corruption is detected.",
            "Indicates that an I/O error will be returned for an attempt to read corrupted data blocks (also known as eio boot state).",
            "Indicates that dm-verity is disabled on device.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    PackageNameList = {
      description = "A list of package names.",
      id = "PackageNameList",
      properties = {
        packageNames = {
          description = "A list of package names.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    PasswordPoliciesContext = {
      description = "Additional context for non-compliance related to password policies.",
      id = "PasswordPoliciesContext",
      properties = {
        passwordPolicyScope = {
          description = "The scope of non-compliant password.",
          enum = {
            "SCOPE_UNSPECIFIED",
            "SCOPE_DEVICE",
            "SCOPE_PROFILE",
          },
          enumDescriptions = {
            "The scope is unspecified. The password requirements are applied to the work profile for work profile devices and the whole device for fully managed or dedicated devices.",
            "The password requirements are only applied to the device.",
            "The password requirements are only applied to the work profile.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    PasswordRequirements = {
      description = "Requirements for the password used to unlock a device.",
      id = "PasswordRequirements",
      properties = {
        maximumFailedPasswordsForWipe = {
          description = "Number of incorrect device-unlock passwords that can be entered before a device is wiped. A value of 0 means there is no restriction.",
          format = "int32",
          type = "integer",
        },
        passwordExpirationTimeout = {
          description = "Password expiration timeout.",
          format = "google-duration",
          type = "string",
        },
        passwordHistoryLength = {
          description = "The length of the password history. After setting this field, the user won't be able to enter a new password that is the same as any password in the history. A value of 0 means there is no restriction.",
          format = "int32",
          type = "integer",
        },
        passwordMinimumLength = {
          description = "The minimum allowed password length. A value of 0 means there is no restriction. Only enforced when password_quality is NUMERIC, NUMERIC_COMPLEX, ALPHABETIC, ALPHANUMERIC, or COMPLEX.",
          format = "int32",
          type = "integer",
        },
        passwordMinimumLetters = {
          description = "Minimum number of letters required in the password. Only enforced when password_quality is COMPLEX.",
          format = "int32",
          type = "integer",
        },
        passwordMinimumLowerCase = {
          description = "Minimum number of lower case letters required in the password. Only enforced when password_quality is COMPLEX.",
          format = "int32",
          type = "integer",
        },
        passwordMinimumNonLetter = {
          description = "Minimum number of non-letter characters (numerical digits or symbols) required in the password. Only enforced when password_quality is COMPLEX.",
          format = "int32",
          type = "integer",
        },
        passwordMinimumNumeric = {
          description = "Minimum number of numerical digits required in the password. Only enforced when password_quality is COMPLEX.",
          format = "int32",
          type = "integer",
        },
        passwordMinimumSymbols = {
          description = "Minimum number of symbols required in the password. Only enforced when password_quality is COMPLEX.",
          format = "int32",
          type = "integer",
        },
        passwordMinimumUpperCase = {
          description = "Minimum number of upper case letters required in the password. Only enforced when password_quality is COMPLEX.",
          format = "int32",
          type = "integer",
        },
        passwordQuality = {
          description = "The required password quality.",
          enum = {
            "PASSWORD_QUALITY_UNSPECIFIED",
            "BIOMETRIC_WEAK",
            "SOMETHING",
            "NUMERIC",
            "NUMERIC_COMPLEX",
            "ALPHABETIC",
            "ALPHANUMERIC",
            "COMPLEX",
            "COMPLEXITY_LOW",
            "COMPLEXITY_MEDIUM",
            "COMPLEXITY_HIGH",
          },
          enumDescriptions = {
            "There are no password requirements.",
            "The device must be secured with a low-security biometric recognition technology, at minimum. This includes technologies that can recognize the identity of an individual that are roughly equivalent to a 3-digit PIN (false detection is less than 1 in 1,000).This, when applied on personally owned work profile devices on Android 12 device-scoped, will be treated as COMPLEXITY_LOW for application. See PasswordQuality for details.",
            "A password is required, but there are no restrictions on what the password must contain.This, when applied on personally owned work profile devices on Android 12 device-scoped, will be treated as COMPLEXITY_LOW for application. See PasswordQuality for details.",
            "The password must contain numeric characters.This, when applied on personally owned work profile devices on Android 12 device-scoped, will be treated as COMPLEXITY_MEDIUM for application. See PasswordQuality for details.",
            "The password must contain numeric characters with no repeating (4444) or ordered (1234, 4321, 2468) sequences.This, when applied on personally owned work profile devices on Android 12 device-scoped, will be treated as COMPLEXITY_MEDIUM for application. See PasswordQuality for details.",
            "The password must contain alphabetic (or symbol) characters.This, when applied on personally owned work profile devices on Android 12 device-scoped, will be treated as COMPLEXITY_HIGH for application. See PasswordQuality for details.",
            "The password must contain both numeric and alphabetic (or symbol) characters.This, when applied on personally owned work profile devices on Android 12 device-scoped, will be treated as COMPLEXITY_HIGH for application. See PasswordQuality for details.",
            "The password must meet the minimum requirements specified in passwordMinimumLength, passwordMinimumLetters, passwordMinimumSymbols, etc. For example, if passwordMinimumSymbols is 2, the password must contain at least two symbols.This, when applied on personally owned work profile devices on Android 12 device-scoped, will be treated as COMPLEXITY_HIGH for application. In this case, the requirements in passwordMinimumLength, passwordMinimumLetters, passwordMinimumSymbols, etc are not applied. See PasswordQuality for details.",
            "Define the low password complexity band as: pattern PIN with repeating (4444) or ordered (1234, 4321, 2468) sequencesThis sets the minimum complexity band which the password must meet.Enforcement varies among different Android versions, management modes and password scopes. See PasswordQuality for details.",
            "Define the medium password complexity band as: PIN with no repeating (4444) or ordered (1234, 4321, 2468) sequences, length at least 4 alphabetic, length at least 4 alphanumeric, length at least 4This sets the minimum complexity band which the password must meet.Enforcement varies among different Android versions, management modes and password scopes. See PasswordQuality for details.",
            "Define the high password complexity band as:On Android 12 and above: PIN with no repeating (4444) or ordered (1234, 4321, 2468) sequences, length at least 8 alphabetic, length at least 6 alphanumeric, length at least 6This sets the minimum complexity band which the password must meet.Enforcement varies among different Android versions, management modes and password scopes. See PasswordQuality for details.",
          },
          type = "string",
        },
        passwordScope = {
          description = "The scope that the password requirement applies to.",
          enum = {
            "SCOPE_UNSPECIFIED",
            "SCOPE_DEVICE",
            "SCOPE_PROFILE",
          },
          enumDescriptions = {
            "The scope is unspecified. The password requirements are applied to the work profile for work profile devices and the whole device for fully managed or dedicated devices.",
            "The password requirements are only applied to the device.",
            "The password requirements are only applied to the work profile.",
          },
          type = "string",
        },
        requirePasswordUnlock = {
          description = "The length of time after a device or work profile is unlocked using a strong form of authentication (password, PIN, pattern) that it can be unlocked using any other authentication method (e.g. fingerprint, trust agents, face). After the specified time period elapses, only strong forms of authentication can be used to unlock the device or work profile.",
          enum = {
            "REQUIRE_PASSWORD_UNLOCK_UNSPECIFIED",
            "USE_DEFAULT_DEVICE_TIMEOUT",
            "REQUIRE_EVERY_DAY",
          },
          enumDescriptions = {
            "Unspecified. Defaults to USE_DEFAULT_DEVICE_TIMEOUT.",
            "The timeout period is set to the device’s default.",
            "The timeout period is set to 24 hours.",
          },
          type = "string",
        },
        unifiedLockSettings = {
          description = "Controls whether a unified lock is allowed for the device and the work profile, on devices running Android 9 and above with a work profile. This can be set only if password_scope is set to SCOPE_PROFILE, the policy will be rejected otherwise. If user has not set a separate work lock and this field is set to REQUIRE_SEPARATE_WORK_LOCK, a NonComplianceDetail is reported with nonComplianceReason set to USER_ACTION.",
          enum = {
            "UNIFIED_LOCK_SETTINGS_UNSPECIFIED",
            "ALLOW_UNIFIED_WORK_AND_PERSONAL_LOCK",
            "REQUIRE_SEPARATE_WORK_LOCK",
          },
          enumDescriptions = {
            "Unspecified. Defaults to ALLOW_UNIFIED_WORK_AND_PERSONAL_LOCK.",
            "A common lock for the device and the work profile is allowed.",
            "A separate lock for the work profile is required.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    PerAppResult = {
      description = "The result of an attempt to clear the data of a single app.",
      id = "PerAppResult",
      properties = {
        clearingResult = {
          description = "The result of an attempt to clear the data of a single app.",
          enum = {
            "CLEARING_RESULT_UNSPECIFIED",
            "SUCCESS",
            "APP_NOT_FOUND",
            "APP_PROTECTED",
            "API_LEVEL",
          },
          enumDescriptions = {
            "Unspecified result.",
            "This app’s data was successfully cleared.",
            "This app’s data could not be cleared because the app was not found.",
            "This app’s data could not be cleared because the app is protected. For example, this may apply to apps critical to the functioning of the device, such as Google Play Store.",
            "This app’s data could not be cleared because the device API level does not support this command.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    PermissionGrant = {
      description = "Configuration for an Android permission and its grant state.",
      id = "PermissionGrant",
      properties = {
        permission = {
          description = "The Android permission or group, e.g. android.permission.READ_CALENDAR or android.permission_group.CALENDAR.",
          type = "string",
        },
        policy = {
          description = "The policy for granting the permission.",
          enum = {
            "PERMISSION_POLICY_UNSPECIFIED",
            "PROMPT",
            "GRANT",
            "DENY",
          },
          enumDescriptions = {
            "Policy not specified. If no policy is specified for a permission at any level, then the PROMPT behavior is used by default.",
            "Prompt the user to grant a permission.",
            "Automatically grant a permission.",
            "Automatically deny a permission.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    PersistentPreferredActivity = {
      description = "A default activity for handling intents that match a particular intent filter. Note: To set up a kiosk, use InstallType to KIOSK rather than use persistent preferred activities.",
      id = "PersistentPreferredActivity",
      properties = {
        actions = {
          description = "The intent actions to match in the filter. If any actions are included in the filter, then an intent's action must be one of those values for it to match. If no actions are included, the intent action is ignored.",
          items = {
            type = "string",
          },
          type = "array",
        },
        categories = {
          description = "The intent categories to match in the filter. An intent includes the categories that it requires, all of which must be included in the filter in order to match. In other words, adding a category to the filter has no impact on matching unless that category is specified in the intent.",
          items = {
            type = "string",
          },
          type = "array",
        },
        receiverActivity = {
          description = "The activity that should be the default intent handler. This should be an Android component name, e.g. com.android.enterprise.app/.MainActivity. Alternatively, the value may be the package name of an app, which causes Android Device Policy to choose an appropriate activity from the app to handle the intent.",
          type = "string",
        },
      },
      type = "object",
    },
    PersonalApplicationPolicy = {
      description = "Policies for apps in the personal profile of a company-owned device with a work profile.",
      id = "PersonalApplicationPolicy",
      properties = {
        installType = {
          description = "The type of installation to perform.",
          enum = {
            "INSTALL_TYPE_UNSPECIFIED",
            "BLOCKED",
            "AVAILABLE",
          },
          enumDescriptions = {
            "Unspecified. Defaults to AVAILABLE.",
            "The app is blocked and can't be installed in the personal profile.",
            "The app is available to install in the personal profile.",
          },
          type = "string",
        },
        packageName = {
          description = "The package name of the application.",
          type = "string",
        },
      },
      type = "object",
    },
    PersonalUsagePolicies = {
      description = "Policies controlling personal usage on a company-owned device with a work profile.",
      id = "PersonalUsagePolicies",
      properties = {
        accountTypesWithManagementDisabled = {
          description = "Account types that can't be managed by the user.",
          items = {
            type = "string",
          },
          type = "array",
        },
        cameraDisabled = {
          description = "If true, the camera is disabled on the personal profile.",
          type = "boolean",
        },
        maxDaysWithWorkOff = {
          description = "Controls how long the work profile can stay off. The duration must be at least 3 days.",
          format = "int32",
          type = "integer",
        },
        personalApplications = {
          description = "Policy applied to applications in the personal profile.",
          items = {
            ["$ref"] = "PersonalApplicationPolicy",
          },
          type = "array",
        },
        personalPlayStoreMode = {
          description = "Used together with personalApplications to control how apps in the personal profile are allowed or blocked.",
          enum = {
            "PLAY_STORE_MODE_UNSPECIFIED",
            "BLACKLIST",
            "BLOCKLIST",
            "ALLOWLIST",
          },
          enumDescriptions = {
            "Unspecified. Defaults to BLOCKLIST.",
            "All Play Store apps are available for installation in the personal profile, except those whose installType is BLOCKED in personalApplications.",
            "All Play Store apps are available for installation in the personal profile, except those whose installType is BLOCKED in personalApplications.",
            "Only apps explicitly specified in personalApplications with installType set to AVAILABLE are allowed to be installed in the personal profile.",
          },
          type = "string",
        },
        screenCaptureDisabled = {
          description = "If true, screen capture is disabled for all users.",
          type = "boolean",
        },
      },
      type = "object",
    },
    Policy = {
      description = "A policy resource represents a group of settings that govern the behavior of a managed device and the apps installed on it.",
      id = "Policy",
      properties = {
        accountTypesWithManagementDisabled = {
          description = "Account types that can't be managed by the user.",
          items = {
            type = "string",
          },
          type = "array",
        },
        addUserDisabled = {
          description = "Whether adding new users and profiles is disabled.",
          type = "boolean",
        },
        adjustVolumeDisabled = {
          description = "Whether adjusting the master volume is disabled. Also mutes the device.",
          type = "boolean",
        },
        advancedSecurityOverrides = {
          ["$ref"] = "AdvancedSecurityOverrides",
          description = "Security policies set to secure values by default. To maintain the security posture of a device, we don't recommend overriding any of the default values.",
        },
        alwaysOnVpnPackage = {
          ["$ref"] = "AlwaysOnVpnPackage",
          description = "Configuration for an always-on VPN connection. Use with vpn_config_disabled to prevent modification of this setting.",
        },
        androidDevicePolicyTracks = {
          description = "The app tracks for Android Device Policy the device can access. The device receives the latest version among all accessible tracks. If no tracks are specified, then the device only uses the production track.",
          items = {
            enum = {
              "APP_TRACK_UNSPECIFIED",
              "PRODUCTION",
              "BETA",
            },
            enumDescriptions = {
              "This value is ignored.",
              "The production track, which provides the latest stable release.",
              "The beta track, which provides the latest beta release.",
            },
            type = "string",
          },
          type = "array",
        },
        appAutoUpdatePolicy = {
          description = "Deprecated. Use autoUpdateMode instead.When autoUpdateMode is set to AUTO_UPDATE_POSTPONED or AUTO_UPDATE_HIGH_PRIORITY, this field has no effect.The app auto update policy, which controls when automatic app updates can be applied.",
          enum = {
            "APP_AUTO_UPDATE_POLICY_UNSPECIFIED",
            "CHOICE_TO_THE_USER",
            "NEVER",
            "WIFI_ONLY",
            "ALWAYS",
          },
          enumDescriptions = {
            "The auto-update policy is not set. Equivalent to CHOICE_TO_THE_USER.",
            "The user can control auto-updates.",
            "Apps are never auto-updated.",
            "Apps are auto-updated over Wi-Fi only.",
            "Apps are auto-updated at any time. Data charges may apply.",
          },
          type = "string",
        },
        applications = {
          description = "Policy applied to apps.",
          items = {
            ["$ref"] = "ApplicationPolicy",
          },
          type = "array",
        },
        autoDateAndTimeZone = {
          description = "Whether auto date, time, and time zone are enabled on a company-owned device. If this is set, then autoTimeRequired is ignored.",
          enum = {
            "AUTO_DATE_AND_TIME_ZONE_UNSPECIFIED",
            "AUTO_DATE_AND_TIME_ZONE_USER_CHOICE",
            "AUTO_DATE_AND_TIME_ZONE_ENFORCED",
          },
          enumDescriptions = {
            "Unspecified. Defaults to AUTO_DATE_AND_TIME_ZONE_USER_CHOICE.",
            "Auto date, time, and time zone are left to user's choice.",
            "Enforce auto date, time, and time zone on the device.",
          },
          type = "string",
        },
        autoTimeRequired = {
          description = "Whether auto time is required, which prevents the user from manually setting the date and time. If autoDateAndTimeZone is set, this field is ignored.",
          type = "boolean",
        },
        blockApplicationsEnabled = {
          description = "Whether applications other than the ones configured in applications are blocked from being installed. When set, applications that were installed under a previous policy but no longer appear in the policy are automatically uninstalled.",
          type = "boolean",
        },
        bluetoothConfigDisabled = {
          description = "Whether configuring bluetooth is disabled.",
          type = "boolean",
        },
        bluetoothContactSharingDisabled = {
          description = "Whether bluetooth contact sharing is disabled.",
          type = "boolean",
        },
        bluetoothDisabled = {
          description = "Whether bluetooth is disabled. Prefer this setting over bluetooth_config_disabled because bluetooth_config_disabled can be bypassed by the user.",
          type = "boolean",
        },
        cameraAccess = {
          description = "Controls the use of the camera and whether the user has access to the camera access toggle.",
          enum = {
            "CAMERA_ACCESS_UNSPECIFIED",
            "CAMERA_ACCESS_USER_CHOICE",
            "CAMERA_ACCESS_DISABLED",
            "CAMERA_ACCESS_ENFORCED",
          },
          enumDescriptions = {
            "If camera_disabled is true, this is equivalent to CAMERA_ACCESS_DISABLED. Otherwise, this is equivalent to CAMERA_ACCESS_USER_CHOICE.",
            "The field camera_disabled is ignored. This is the default device behaviour: all cameras on the device are available. On Android 12 and above, the user can use the camera access toggle.",
            "The field camera_disabled is ignored. All cameras on the device are disabled (for fully managed devices, this applies device-wide and for work profiles this applies only to the work profile).There are no explicit restrictions placed on the camera access toggle on Android 12 and above: on fully managed devices, the camera access toggle has no effect as all cameras are disabled. On devices with a work profile, this toggle has no effect on apps in the work profile, but it affects apps outside the work profile.",
            "The field camera_disabled is ignored. All cameras on the device are available. On fully managed devices running Android 12 and above, the user is unable to use the camera access toggle. On devices which are not fully managed or which run Android 11 or below, this is equivalent to CAMERA_ACCESS_USER_CHOICE.",
          },
          type = "string",
        },
        cameraDisabled = {
          description = "If camera_access is set to any value other than CAMERA_ACCESS_UNSPECIFIED, this has no effect. Otherwise this field controls whether cameras are disabled: If true, all cameras are disabled, otherwise they are available. For fully managed devices this field applies for all apps on the device. For work profiles, this field applies only to apps in the work profile, and the camera access of apps outside the work profile is unaffected.",
          type = "boolean",
        },
        cellBroadcastsConfigDisabled = {
          description = "Whether configuring cell broadcast is disabled.",
          type = "boolean",
        },
        choosePrivateKeyRules = {
          description = "Rules for determining apps' access to private keys. See ChoosePrivateKeyRule for details.",
          items = {
            ["$ref"] = "ChoosePrivateKeyRule",
          },
          type = "array",
        },
        complianceRules = {
          description = "Rules declaring which mitigating actions to take when a device is not compliant with its policy. When the conditions for multiple rules are satisfied, all of the mitigating actions for the rules are taken. There is a maximum limit of 100 rules. Use policy enforcement rules instead.",
          items = {
            ["$ref"] = "ComplianceRule",
          },
          type = "array",
        },
        createWindowsDisabled = {
          description = "Whether creating windows besides app windows is disabled.",
          type = "boolean",
        },
        credentialsConfigDisabled = {
          description = "Whether configuring user credentials is disabled.",
          type = "boolean",
        },
        crossProfilePolicies = {
          ["$ref"] = "CrossProfilePolicies",
          description = "Cross-profile policies applied on the device.",
        },
        dataRoamingDisabled = {
          description = "Whether roaming data services are disabled.",
          type = "boolean",
        },
        debuggingFeaturesAllowed = {
          description = "Whether the user is allowed to enable debugging features.",
          type = "boolean",
        },
        defaultPermissionPolicy = {
          description = "The default permission policy for runtime permission requests.",
          enum = {
            "PERMISSION_POLICY_UNSPECIFIED",
            "PROMPT",
            "GRANT",
            "DENY",
          },
          enumDescriptions = {
            "Policy not specified. If no policy is specified for a permission at any level, then the PROMPT behavior is used by default.",
            "Prompt the user to grant a permission.",
            "Automatically grant a permission.",
            "Automatically deny a permission.",
          },
          type = "string",
        },
        deviceOwnerLockScreenInfo = {
          ["$ref"] = "UserFacingMessage",
          description = "The device owner information to be shown on the lock screen.",
        },
        encryptionPolicy = {
          description = "Whether encryption is enabled",
          enum = {
            "ENCRYPTION_POLICY_UNSPECIFIED",
            "ENABLED_WITHOUT_PASSWORD",
            "ENABLED_WITH_PASSWORD",
          },
          enumDescriptions = {
            "This value is ignored, i.e. no encryption required",
            "Encryption required but no password required to boot",
            "Encryption required with password required to boot",
          },
          type = "string",
        },
        ensureVerifyAppsEnabled = {
          description = "Whether app verification is force-enabled.",
          type = "boolean",
        },
        factoryResetDisabled = {
          description = "Whether factory resetting from settings is disabled.",
          type = "boolean",
        },
        frpAdminEmails = {
          description = "Email addresses of device administrators for factory reset protection. When the device is factory reset, it will require one of these admins to log in with the Google account email and password to unlock the device. If no admins are specified, the device won't provide factory reset protection.",
          items = {
            type = "string",
          },
          type = "array",
        },
        funDisabled = {
          description = "Whether the user is allowed to have fun. Controls whether the Easter egg game in Settings is disabled.",
          type = "boolean",
        },
        installAppsDisabled = {
          description = "Whether user installation of apps is disabled.",
          type = "boolean",
        },
        installUnknownSourcesAllowed = {
          description = "This field has no effect.",
          type = "boolean",
        },
        keyguardDisabled = {
          description = "If true, this disables the Lock Screen (https://source.android.com/docs/core/display/multi_display/lock-screen) for primary and/or secondary displays.",
          type = "boolean",
        },
        keyguardDisabledFeatures = {
          description = "Disabled keyguard customizations, such as widgets.",
          items = {
            enum = {
              "KEYGUARD_DISABLED_FEATURE_UNSPECIFIED",
              "CAMERA",
              "NOTIFICATIONS",
              "UNREDACTED_NOTIFICATIONS",
              "TRUST_AGENTS",
              "DISABLE_FINGERPRINT",
              "DISABLE_REMOTE_INPUT",
              "FACE",
              "IRIS",
              "BIOMETRICS",
              "ALL_FEATURES",
            },
            enumDescriptions = {
              "This value is ignored.",
              "Disable the camera on secure keyguard screens (e.g. PIN).",
              "Disable showing all notifications on secure keyguard screens.",
              "Disable unredacted notifications on secure keyguard screens.",
              "Ignore trust agent state on secure keyguard screens.",
              "Disable fingerprint sensor on secure keyguard screens.",
              "On devices running Android 6 and below, disables text entry into notifications on secure keyguard screens. Has no effect on Android 7 and above.",
              "Disable face authentication on secure keyguard screens.",
              "Disable iris authentication on secure keyguard screens.",
              "Disable all biometric authentication on secure keyguard screens.",
              "Disable all current and future keyguard customizations.",
            },
            type = "string",
          },
          type = "array",
        },
        kioskCustomLauncherEnabled = {
          description = "Whether the kiosk custom launcher is enabled. This replaces the home screen with a launcher that locks down the device to the apps installed via the applications setting. Apps appear on a single page in alphabetical order. Use kioskCustomization to further configure the kiosk device behavior.",
          type = "boolean",
        },
        kioskCustomization = {
          ["$ref"] = "KioskCustomization",
          description = "Settings controlling the behavior of a device in kiosk mode. To enable kiosk mode, set kioskCustomLauncherEnabled to true or specify an app in the policy with installType KIOSK.",
        },
        locationMode = {
          description = "The degree of location detection enabled.",
          enum = {
            "LOCATION_MODE_UNSPECIFIED",
            "HIGH_ACCURACY",
            "SENSORS_ONLY",
            "BATTERY_SAVING",
            "OFF",
            "LOCATION_USER_CHOICE",
            "LOCATION_ENFORCED",
            "LOCATION_DISABLED",
          },
          enumDescriptions = {
            "Defaults to LOCATION_USER_CHOICE.",
            "On Android 8 and below, all location detection methods are enabled, including GPS, networks, and other sensors. On Android 9 and above, this is equivalent to LOCATION_ENFORCED.",
            "On Android 8 and below, only GPS and other sensors are enabled. On Android 9 and above, this is equivalent to LOCATION_ENFORCED.",
            "On Android 8 and below, only the network location provider is enabled. On Android 9 and above, this is equivalent to LOCATION_ENFORCED.",
            "On Android 8 and below, location setting and accuracy are disabled. On Android 9 and above, this is equivalent to LOCATION_DISABLED.",
            "Location setting is not restricted on the device. No specific behavior is set or enforced.",
            "Enable location setting on the device.",
            "Disable location setting on the device.",
          },
          type = "string",
        },
        longSupportMessage = {
          ["$ref"] = "UserFacingMessage",
          description = "A message displayed to the user in the device administators settings screen.",
        },
        maximumTimeToLock = {
          description = "Maximum time in milliseconds for user activity until the device locks. A value of 0 means there is no restriction.",
          format = "int64",
          type = "string",
        },
        microphoneAccess = {
          description = "Controls the use of the microphone and whether the user has access to the microphone access toggle. This applies only on fully managed devices.",
          enum = {
            "MICROPHONE_ACCESS_UNSPECIFIED",
            "MICROPHONE_ACCESS_USER_CHOICE",
            "MICROPHONE_ACCESS_DISABLED",
            "MICROPHONE_ACCESS_ENFORCED",
          },
          enumDescriptions = {
            "If unmute_microphone_disabled is true, this is equivalent to MICROPHONE_ACCESS_DISABLED. Otherwise, this is equivalent to MICROPHONE_ACCESS_USER_CHOICE.",
            "The field unmute_microphone_disabled is ignored. This is the default device behaviour: the microphone on the device is available. On Android 12 and above, the user can use the microphone access toggle.",
            "The field unmute_microphone_disabled is ignored. The microphone on the device is disabled (for fully managed devices, this applies device-wide).The microphone access toggle has no effect as the microphone is disabled.",
            "The field unmute_microphone_disabled is ignored. The microphone on the device is available. On devices running Android 12 and above, the user is unable to use the microphone access toggle. On devices which run Android 11 or below, this is equivalent to MICROPHONE_ACCESS_USER_CHOICE.",
          },
          type = "string",
        },
        minimumApiLevel = {
          description = "The minimum allowed Android API level.",
          format = "int32",
          type = "integer",
        },
        mobileNetworksConfigDisabled = {
          description = "Whether configuring mobile networks is disabled.",
          type = "boolean",
        },
        modifyAccountsDisabled = {
          description = "Whether adding or removing accounts is disabled.",
          type = "boolean",
        },
        mountPhysicalMediaDisabled = {
          description = "Whether the user mounting physical external media is disabled.",
          type = "boolean",
        },
        name = {
          description = "The name of the policy in the form enterprises/{enterpriseId}/policies/{policyId}.",
          type = "string",
        },
        networkEscapeHatchEnabled = {
          description = "Whether the network escape hatch is enabled. If a network connection can't be made at boot time, the escape hatch prompts the user to temporarily connect to a network in order to refresh the device policy. After applying policy, the temporary network will be forgotten and the device will continue booting. This prevents being unable to connect to a network if there is no suitable network in the last policy and the device boots into an app in lock task mode, or the user is otherwise unable to reach device settings.Note: Setting wifiConfigDisabled to true will override this setting under specific circumstances. Please see wifiConfigDisabled for further details.",
          type = "boolean",
        },
        networkResetDisabled = {
          description = "Whether resetting network settings is disabled.",
          type = "boolean",
        },
        oncCertificateProviders = {
          description = "This feature is not generally available.",
          items = {
            ["$ref"] = "OncCertificateProvider",
          },
          type = "array",
        },
        openNetworkConfiguration = {
          additionalProperties = {
            description = "Properties of the object.",
            type = "any",
          },
          description = "Network configuration for the device. See configure networks for more information.",
          type = "object",
        },
        outgoingBeamDisabled = {
          description = "Whether using NFC to beam data from apps is disabled.",
          type = "boolean",
        },
        outgoingCallsDisabled = {
          description = "Whether outgoing calls are disabled.",
          type = "boolean",
        },
        passwordPolicies = {
          description = "Password requirement policies. Different policies can be set for work profile or fully managed devices by setting the password_scope field in the policy.",
          items = {
            ["$ref"] = "PasswordRequirements",
          },
          type = "array",
        },
        passwordRequirements = {
          ["$ref"] = "PasswordRequirements",
          description = "Password requirements. The field password_requirements.require_password_unlock must not be set. DEPRECATED - Use passwordPolicies.Note:Complexity-based values of PasswordQuality, that is, COMPLEXITY_LOW, COMPLEXITY_MEDIUM, and COMPLEXITY_HIGH, cannot be used here. unified_lock_settings cannot be used here.",
        },
        permissionGrants = {
          description = "Explicit permission or group grants or denials for all apps. These values override the default_permission_policy.",
          items = {
            ["$ref"] = "PermissionGrant",
          },
          type = "array",
        },
        permittedAccessibilityServices = {
          ["$ref"] = "PackageNameList",
          description = "Specifies permitted accessibility services. If the field is not set, any accessibility service can be used. If the field is set, only the accessibility services in this list and the system's built-in accessibility service can be used. In particular, if the field is set to empty, only the system's built-in accessibility servicess can be used. This can be set on fully managed devices and on work profiles. When applied to a work profile, this affects both the personal profile and the work profile.",
        },
        permittedInputMethods = {
          ["$ref"] = "PackageNameList",
          description = "If present, only the input methods provided by packages in this list are permitted. If this field is present, but the list is empty, then only system input methods are permitted.",
        },
        persistentPreferredActivities = {
          description = "Default intent handler activities.",
          items = {
            ["$ref"] = "PersistentPreferredActivity",
          },
          type = "array",
        },
        personalUsagePolicies = {
          ["$ref"] = "PersonalUsagePolicies",
          description = "Policies managing personal usage on a company-owned device.",
        },
        playStoreMode = {
          description = "This mode controls which apps are available to the user in the Play Store and the behavior on the device when apps are removed from the policy.",
          enum = {
            "PLAY_STORE_MODE_UNSPECIFIED",
            "WHITELIST",
            "BLACKLIST",
          },
          enumDescriptions = {
            "Unspecified. Defaults to WHITELIST.",
            "Only apps that are in the policy are available and any app not in the policy will be automatically uninstalled from the device.",
            "All apps are available and any app that should not be on the device should be explicitly marked as 'BLOCKED' in the applications policy.",
          },
          type = "string",
        },
        policyEnforcementRules = {
          description = "Rules that define the behavior when a particular policy can not be applied on device",
          items = {
            ["$ref"] = "PolicyEnforcementRule",
          },
          type = "array",
        },
        preferentialNetworkService = {
          description = "Controls whether preferential network service is enabled on the work profile. For example, an organization may have an agreement with a carrier that all of the work data from its employees' devices will be sent via a network service dedicated for enterprise use. An example of a supported preferential network service is the enterprise slice on 5G networks. This has no effect on fully managed devices.",
          enum = {
            "PREFERENTIAL_NETWORK_SERVICE_UNSPECIFIED",
            "PREFERENTIAL_NETWORK_SERVICE_DISABLED",
            "PREFERENTIAL_NETWORK_SERVICE_ENABLED",
          },
          enumDescriptions = {
            "Unspecified. Defaults to PREFERENTIAL_NETWORK_SERVICES_DISABLED.",
            "Preferential network service is disabled on the work profile.",
            "Preferential network service is enabled on the work profile.",
          },
          type = "string",
        },
        privateKeySelectionEnabled = {
          description = "Allows showing UI on a device for a user to choose a private key alias if there are no matching rules in ChoosePrivateKeyRules. For devices below Android P, setting this may leave enterprise keys vulnerable.",
          type = "boolean",
        },
        recommendedGlobalProxy = {
          ["$ref"] = "ProxyInfo",
          description = "The network-independent global HTTP proxy. Typically proxies should be configured per-network in open_network_configuration. However for unusual configurations like general internal filtering a global HTTP proxy may be useful. If the proxy is not accessible, network access may break. The global proxy is only a recommendation and some apps may ignore it.",
        },
        removeUserDisabled = {
          description = "Whether removing other users is disabled.",
          type = "boolean",
        },
        safeBootDisabled = {
          description = "Whether rebooting the device into safe boot is disabled.",
          type = "boolean",
        },
        screenCaptureDisabled = {
          description = "Whether screen capture is disabled.",
          type = "boolean",
        },
        setUserIconDisabled = {
          description = "Whether changing the user icon is disabled.",
          type = "boolean",
        },
        setWallpaperDisabled = {
          description = "Whether changing the wallpaper is disabled.",
          type = "boolean",
        },
        setupActions = {
          description = "Action to take during the setup process. At most one action may be specified.",
          items = {
            ["$ref"] = "SetupAction",
          },
          type = "array",
        },
        shareLocationDisabled = {
          description = "Whether location sharing is disabled. share_location_disabled is supported for both fully managed devices and personally owned work profiles.",
          type = "boolean",
        },
        shortSupportMessage = {
          ["$ref"] = "UserFacingMessage",
          description = "A message displayed to the user in the settings screen wherever functionality has been disabled by the admin. If the message is longer than 200 characters it may be truncated.",
        },
        skipFirstUseHintsEnabled = {
          description = "Flag to skip hints on the first use. Enterprise admin can enable the system recommendation for apps to skip their user tutorial and other introductory hints on first start-up.",
          type = "boolean",
        },
        smsDisabled = {
          description = "Whether sending and receiving SMS messages is disabled.",
          type = "boolean",
        },
        statusBarDisabled = {
          description = "Whether the status bar is disabled. This disables notifications, quick settings, and other screen overlays that allow escape from full-screen mode. DEPRECATED. To disable the status bar on a kiosk device, use InstallType KIOSK or kioskCustomLauncherEnabled.",
          type = "boolean",
        },
        statusReportingSettings = {
          ["$ref"] = "StatusReportingSettings",
          description = "Status reporting settings",
        },
        stayOnPluggedModes = {
          description = "The battery plugged in modes for which the device stays on. When using this setting, it is recommended to clear maximum_time_to_lock so that the device doesn't lock itself while it stays on.",
          items = {
            enum = {
              "BATTERY_PLUGGED_MODE_UNSPECIFIED",
              "AC",
              "USB",
              "WIRELESS",
            },
            enumDescriptions = {
              "This value is ignored.",
              "Power source is an AC charger.",
              "Power source is a USB port.",
              "Power source is wireless.",
            },
            type = "string",
          },
          type = "array",
        },
        systemUpdate = {
          ["$ref"] = "SystemUpdate",
          description = "The system update policy, which controls how OS updates are applied. If the update type is WINDOWED, the update window will automatically apply to Play app updates as well.",
        },
        tetheringConfigDisabled = {
          description = "Whether configuring tethering and portable hotspots is disabled.",
          type = "boolean",
        },
        uninstallAppsDisabled = {
          description = "Whether user uninstallation of applications is disabled. This prevents apps from being uninstalled, even those removed using applications",
          type = "boolean",
        },
        unmuteMicrophoneDisabled = {
          description = "If microphone_access is set to any value other than MICROPHONE_ACCESS_UNSPECIFIED, this has no effect. Otherwise this field controls whether microphones are disabled: If true, all microphones are disabled, otherwise they are available. This is available only on fully managed devices.",
          type = "boolean",
        },
        usageLog = {
          ["$ref"] = "UsageLog",
          description = "Configuration of device activity logging.",
        },
        usbFileTransferDisabled = {
          description = "Whether transferring files over USB is disabled. This is supported only on company-owned devices.",
          type = "boolean",
        },
        usbMassStorageEnabled = {
          description = "Whether USB storage is enabled. Deprecated.",
          type = "boolean",
        },
        version = {
          description = "The version of the policy. This is a read-only field. The version is incremented each time the policy is updated.",
          format = "int64",
          type = "string",
        },
        vpnConfigDisabled = {
          description = "Whether configuring VPN is disabled.",
          type = "boolean",
        },
        wifiConfigDisabled = {
          description = "Whether configuring Wi-Fi access points is disabled. Note: If a network connection can't be made at boot time and configuring Wi-Fi is disabled then network escape hatch will be shown in order to refresh the device policy (see networkEscapeHatchEnabled).",
          type = "boolean",
        },
        wifiConfigsLockdownEnabled = {
          description = "DEPRECATED - Use wifi_config_disabled.",
          type = "boolean",
        },
      },
      type = "object",
    },
    PolicyEnforcementRule = {
      description = "A rule that defines the actions to take if a device or work profile is not compliant with the policy specified in settingName.",
      id = "PolicyEnforcementRule",
      properties = {
        blockAction = {
          ["$ref"] = "BlockAction",
          description = "An action to block access to apps and data on a company owned device or in a work profile. This action also triggers a user-facing notification with information (where possible) on how to correct the compliance issue. Note: wipeAction must also be specified.",
        },
        settingName = {
          description = "The top-level policy to enforce. For example, applications or passwordPolicies.",
          type = "string",
        },
        wipeAction = {
          ["$ref"] = "WipeAction",
          description = "An action to reset a company owned device or delete a work profile. Note: blockAction must also be specified.",
        },
      },
      type = "object",
    },
    PostureDetail = {
      description = "Additional details regarding the security posture of the device.",
      id = "PostureDetail",
      properties = {
        advice = {
          description = "Corresponding admin-facing advice to mitigate this security risk and improve the security posture of the device.",
          items = {
            ["$ref"] = "UserFacingMessage",
          },
          type = "array",
        },
        securityRisk = {
          description = "A specific security risk that negatively affects the security posture of the device.",
          enum = {
            "SECURITY_RISK_UNSPECIFIED",
            "UNKNOWN_OS",
            "COMPROMISED_OS",
            "HARDWARE_BACKED_EVALUATION_FAILED",
          },
          enumDescriptions = {
            "Unspecified.",
            "SafetyNet detects that the device is running an unknown OS (basicIntegrity check succeeds but ctsProfileMatch fails).",
            "SafetyNet detects that the device is running a compromised OS (basicIntegrity check fails).",
            "SafetyNet detects that the device does not have a strong guarantee of system integrity, such as a hardware-backed keystore (https://developer.android.com/training/articles/security-key-attestation).",
          },
          type = "string",
        },
      },
      type = "object",
    },
    PowerManagementEvent = {
      description = "A power management event.",
      id = "PowerManagementEvent",
      properties = {
        batteryLevel = {
          description = "For BATTERY_LEVEL_COLLECTED events, the battery level as a percentage.",
          format = "float",
          type = "number",
        },
        createTime = {
          description = "The creation time of the event.",
          format = "google-datetime",
          type = "string",
        },
        eventType = {
          description = "Event type.",
          enum = {
            "POWER_MANAGEMENT_EVENT_TYPE_UNSPECIFIED",
            "BATTERY_LEVEL_COLLECTED",
            "POWER_CONNECTED",
            "POWER_DISCONNECTED",
            "BATTERY_LOW",
            "BATTERY_OKAY",
            "BOOT_COMPLETED",
            "SHUTDOWN",
          },
          enumDescriptions = {
            "Unspecified. No events have this type.",
            "Battery level was measured.",
            "The device started charging.",
            "The device stopped charging.",
            "The device entered low-power mode.",
            "The device exited low-power mode.",
            "The device booted.",
            "The device shut down.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    ProxyInfo = {
      description = "Configuration info for an HTTP proxy. For a direct proxy, set the host, port, and excluded_hosts fields. For a PAC script proxy, set the pac_uri field.",
      id = "ProxyInfo",
      properties = {
        excludedHosts = {
          description = "For a direct proxy, the hosts for which the proxy is bypassed. The host names may contain wildcards such as *.example.com.",
          items = {
            type = "string",
          },
          type = "array",
        },
        host = {
          description = "The host of the direct proxy.",
          type = "string",
        },
        pacUri = {
          description = "The URI of the PAC script used to configure the proxy.",
          type = "string",
        },
        port = {
          description = "The port of the direct proxy.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    RemoteLockEvent = {
      description = "The device or profile has been remotely locked via the LOCK command.",
      id = "RemoteLockEvent",
      properties = {
        adminPackageName = {
          description = "Package name of the admin app requesting the change.",
          type = "string",
        },
        adminUserId = {
          description = "User ID of the admin app from the which the change was requested.",
          format = "int32",
          type = "integer",
        },
        targetUserId = {
          description = "User ID in which the change was requested in.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    SecurityPosture = {
      description = "The security posture of the device, as determined by the current device state and the policies applied.",
      id = "SecurityPosture",
      properties = {
        devicePosture = {
          description = "Device's security posture value.",
          enum = {
            "POSTURE_UNSPECIFIED",
            "SECURE",
            "AT_RISK",
            "POTENTIALLY_COMPROMISED",
          },
          enumDescriptions = {
            "Unspecified. There is no posture detail for this posture value.",
            "This device is secure.",
            "This device may be more vulnerable to malicious actors than is recommended for use with corporate data.",
            "This device may be compromised and corporate data may be accessible to unauthorized actors.",
          },
          type = "string",
        },
        postureDetails = {
          description = "Additional details regarding the security posture of the device.",
          items = {
            ["$ref"] = "PostureDetail",
          },
          type = "array",
        },
      },
      type = "object",
    },
    SetupAction = {
      description = "An action executed during setup.",
      id = "SetupAction",
      properties = {
        description = {
          ["$ref"] = "UserFacingMessage",
          description = "Description of this action.",
        },
        launchApp = {
          ["$ref"] = "LaunchAppAction",
          description = "An action to launch an app. The app will be launched with an intent containing an extra with key com.google.android.apps.work.clouddpc.EXTRA_LAUNCHED_AS_SETUP_ACTION set to the boolean value true to indicate that this is a setup action flow.",
        },
        title = {
          ["$ref"] = "UserFacingMessage",
          description = "Title of this action.",
        },
      },
      type = "object",
    },
    SigninDetail = {
      description = "A resource containing sign in details for an enterprise.",
      id = "SigninDetail",
      properties = {
        allowPersonalUsage = {
          description = "Controls whether personal usage is allowed on a device provisioned with this enrollment token.For company-owned devices: Enabling personal usage allows the user to set up a work profile on the device. Disabling personal usage requires the user provision the device as a fully managed device.For personally-owned devices: Enabling personal usage allows the user to set up a work profile on the device. Disabling personal usage will prevent the device from provisioning. Personal usage cannot be disabled on personally-owned device.",
          enum = {
            "ALLOW_PERSONAL_USAGE_UNSPECIFIED",
            "PERSONAL_USAGE_ALLOWED",
            "PERSONAL_USAGE_DISALLOWED",
          },
          enumDescriptions = {
            "Personal usage restriction is not specified",
            "Personal usage is allowed",
            "Personal usage is disallowed",
          },
          type = "string",
        },
        qrCode = {
          description = "A JSON string whose UTF-8 representation can be used to generate a QR code to enroll a device with this enrollment token. To enroll a device using NFC, the NFC record must contain a serialized java.util.Properties representation of the properties in the JSON. This is a read-only field generated by the server.",
          type = "string",
        },
        signinEnrollmentToken = {
          description = "An enterprise wide enrollment token used to trigger custom sign-in flow. This is a read-only field generated by the server.",
          type = "string",
        },
        signinUrl = {
          description = "Sign-in URL for authentication when device is provisioned with a sign-in enrollment token. The sign-in endpoint should finish authentication flow with a URL in the form of https://enterprise.google.com/android/enroll?et= for a successful login, or https://enterprise.google.com/android/enroll/invalid for a failed login.",
          type = "string",
        },
      },
      type = "object",
    },
    SignupUrl = {
      description = "An enterprise signup URL.",
      id = "SignupUrl",
      properties = {
        name = {
          description = "The name of the resource. Use this value in the signupUrl field when calling enterprises.create to complete the enterprise signup flow.",
          type = "string",
        },
        url = {
          description = "A URL where an enterprise admin can register their enterprise. The page can't be rendered in an iframe.",
          type = "string",
        },
      },
      type = "object",
    },
    SoftwareInfo = {
      description = "Information about device software.",
      id = "SoftwareInfo",
      properties = {
        androidBuildNumber = {
          description = "Android build ID string meant for displaying to the user. For example, shamu-userdebug 6.0.1 MOB30I 2756745 dev-keys.",
          type = "string",
        },
        androidBuildTime = {
          description = "Build time.",
          format = "google-datetime",
          type = "string",
        },
        androidDevicePolicyVersionCode = {
          description = "The Android Device Policy app version code.",
          format = "int32",
          type = "integer",
        },
        androidDevicePolicyVersionName = {
          description = "The Android Device Policy app version as displayed to the user.",
          type = "string",
        },
        androidVersion = {
          description = "The user-visible Android version string. For example, 6.0.1.",
          type = "string",
        },
        bootloaderVersion = {
          description = "The system bootloader version number, e.g. 0.6.7.",
          type = "string",
        },
        deviceBuildSignature = {
          description = "SHA-256 hash of android.content.pm.Signature (https://developer.android.com/reference/android/content/pm/Signature.html) associated with the system package, which can be used to verify that the system build hasn't been modified.",
          type = "string",
        },
        deviceKernelVersion = {
          description = "Kernel version, for example, 2.6.32.9-g103d848.",
          type = "string",
        },
        primaryLanguageCode = {
          description = "An IETF BCP 47 language code for the primary locale on the device.",
          type = "string",
        },
        securityPatchLevel = {
          description = "Security patch level, e.g. 2016-05-01.",
          type = "string",
        },
        systemUpdateInfo = {
          ["$ref"] = "SystemUpdateInfo",
          description = "Information about a potential pending system update.",
        },
      },
      type = "object",
    },
    SpecificNonComplianceContext = {
      description = "Additional context for SpecificNonComplianceReason.",
      id = "SpecificNonComplianceContext",
      properties = {
        oncWifiContext = {
          ["$ref"] = "OncWifiContext",
          description = "Additional context for non-compliance related to Wi-Fi configuration. See ONC_WIFI_INVALID_VALUE and ONC_WIFI_API_LEVEL",
        },
        passwordPoliciesContext = {
          ["$ref"] = "PasswordPoliciesContext",
          description = "Additional context for non-compliance related to password policies. See PASSWORD_POLICIES_PASSWORD_EXPIRED and PASSWORD_POLICIES_PASSWORD_NOT_SUFFICIENT.",
        },
      },
      type = "object",
    },
    Status = {
      description = "The Status type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by gRPC (https://github.com/grpc). Each Status message contains three pieces of data: error code, error message, and error details.You can find out more about this error model and how to work with it in the API Design Guide (https://cloud.google.com/apis/design/errors).",
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
    StatusReportingSettings = {
      description = "Settings controlling the behavior of status reports.",
      id = "StatusReportingSettings",
      properties = {
        applicationReportingSettings = {
          ["$ref"] = "ApplicationReportingSettings",
          description = "Application reporting settings. Only applicable if application_reports_enabled is true.",
        },
        applicationReportsEnabled = {
          description = "Whether app reports are enabled.",
          type = "boolean",
        },
        commonCriteriaModeEnabled = {
          description = "Whether Common Criteria Mode reporting is enabled.",
          type = "boolean",
        },
        deviceSettingsEnabled = {
          description = "Whether device settings reporting is enabled.",
          type = "boolean",
        },
        displayInfoEnabled = {
          description = "Whether displays reporting is enabled. Report data is not available for personally owned devices with work profiles.",
          type = "boolean",
        },
        hardwareStatusEnabled = {
          description = "Whether hardware status reporting is enabled. Report data is not available for personally owned devices with work profiles.",
          type = "boolean",
        },
        memoryInfoEnabled = {
          description = "Whether memory event reporting is enabled.",
          type = "boolean",
        },
        networkInfoEnabled = {
          description = "Whether network info reporting is enabled.",
          type = "boolean",
        },
        powerManagementEventsEnabled = {
          description = "Whether power management event reporting is enabled. Report data is not available for personally owned devices with work profiles.",
          type = "boolean",
        },
        softwareInfoEnabled = {
          description = "Whether software info reporting is enabled.",
          type = "boolean",
        },
        systemPropertiesEnabled = {
          description = "Whether system properties reporting is enabled.",
          type = "boolean",
        },
      },
      type = "object",
    },
    SystemUpdate = {
      description = "Configuration for managing system updates",
      id = "SystemUpdate",
      properties = {
        endMinutes = {
          description = "If the type is WINDOWED, the end of the maintenance window, measured as the number of minutes after midnight in device's local time. This value must be between 0 and 1439, inclusive. If this value is less than start_minutes, then the maintenance window spans midnight. If the maintenance window specified is smaller than 30 minutes, the actual window is extended to 30 minutes beyond the start time.",
          format = "int32",
          type = "integer",
        },
        freezePeriods = {
          description = "An annually repeating time period in which over-the-air (OTA) system updates are postponed to freeze the OS version running on a device. To prevent freezing the device indefinitely, each freeze period must be separated by at least 60 days.",
          items = {
            ["$ref"] = "FreezePeriod",
          },
          type = "array",
        },
        startMinutes = {
          description = "If the type is WINDOWED, the start of the maintenance window, measured as the number of minutes after midnight in the device's local time. This value must be between 0 and 1439, inclusive.",
          format = "int32",
          type = "integer",
        },
        type = {
          description = "The type of system update to configure.",
          enum = {
            "SYSTEM_UPDATE_TYPE_UNSPECIFIED",
            "AUTOMATIC",
            "WINDOWED",
            "POSTPONE",
          },
          enumDescriptions = {
            "Follow the default update behavior for the device, which typically requires the user to accept system updates.",
            "Install automatically as soon as an update is available.",
            "Install automatically within a daily maintenance window. This also configures Play apps to be updated within the window. This is strongly recommended for kiosk devices because this is the only way apps persistently pinned to the foreground can be updated by Play.If autoUpdateMode is set to AUTO_UPDATE_HIGH_PRIORITY for an app, then the maintenance window is ignored for that app and it is updated as soon as possible even outside of the maintenance window.",
            "Postpone automatic install up to a maximum of 30 days.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    SystemUpdateInfo = {
      description = "Information about a potential pending system update.",
      id = "SystemUpdateInfo",
      properties = {
        updateReceivedTime = {
          description = "The time when the update was first available. A zero value indicates that this field is not set. This field is set only if an update is available (that is, updateStatus is neither UPDATE_STATUS_UNKNOWN nor UP_TO_DATE).",
          format = "google-datetime",
          type = "string",
        },
        updateStatus = {
          description = "The status of an update: whether an update exists and what type it is.",
          enum = {
            "UPDATE_STATUS_UNKNOWN",
            "UP_TO_DATE",
            "UNKNOWN_UPDATE_AVAILABLE",
            "SECURITY_UPDATE_AVAILABLE",
            "OS_UPDATE_AVAILABLE",
          },
          enumDescriptions = {
            "It is unknown whether there is a pending system update. This happens when, for example, the device API level is less than 26, or if the version of Android Device Policy is outdated.",
            "There is no pending system update available on the device.",
            "There is a pending system update available, but its type is not known.",
            "There is a pending security update available.",
            "There is a pending OS update available.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    TelephonyInfo = {
      description = "Telephony information associated with a given SIM card on the device. Only supported on fully managed devices starting from Android API level 23.",
      id = "TelephonyInfo",
      properties = {
        carrierName = {
          description = "The carrier name associated with this SIM card.",
          type = "string",
        },
        phoneNumber = {
          description = "The phone number associated with this SIM card.",
          type = "string",
        },
      },
      type = "object",
    },
    TermsAndConditions = {
      description = "A terms and conditions page to be accepted during provisioning.",
      id = "TermsAndConditions",
      properties = {
        content = {
          ["$ref"] = "UserFacingMessage",
          description = "A well-formatted HTML string. It will be parsed on the client with android.text.Html#fromHtml.",
        },
        header = {
          ["$ref"] = "UserFacingMessage",
          description = "A short header which appears above the HTML content.",
        },
      },
      type = "object",
    },
    UsageLog = {
      description = "Controls types of device activity logs collected from the device and reported via Pub/Sub notification (https://developers.google.com/android/management/notifications).",
      id = "UsageLog",
      properties = {
        enabledLogTypes = {
          description = "Specifies which log types are enabled. Note that users will receive on-device messaging when usage logging is enabled.",
          items = {
            enum = {
              "LOG_TYPE_UNSPECIFIED",
              "SECURITY_LOGS",
              "NETWORK_ACTIVITY_LOGS",
            },
            enumDescriptions = {
              "This value is not used.",
              "Enable logging of on-device security events, like when the device password is incorrectly entered or removable storage is mounted. See UsageLogEvent for a complete description of the logged security events. Supported for fully managed devices on Android 7 and above. Supported for company-owned devices with a work profile on Android 12 and above, on which only security events from the work profile are logged. Can be overridden by the application delegated scope SECURITY_LOGS",
              "Enable logging of on-device network events, like DNS lookups and TCP connections. See UsageLogEvent for a complete description of the logged network events. Supported for fully managed devices on Android 8 and above. Supported for company-owned devices with a work profile on Android 12 and above, on which only network events from the work profile are logged. Can be overridden by the application delegated scope NETWORK_ACTIVITY_LOGS",
            },
            type = "string",
          },
          type = "array",
        },
        uploadOnCellularAllowed = {
          description = "Specifies which of the enabled log types can be uploaded over mobile data. By default logs are queued for upload when the device connects to WiFi.",
          items = {
            enum = {
              "LOG_TYPE_UNSPECIFIED",
              "SECURITY_LOGS",
              "NETWORK_ACTIVITY_LOGS",
            },
            enumDescriptions = {
              "This value is not used.",
              "Enable logging of on-device security events, like when the device password is incorrectly entered or removable storage is mounted. See UsageLogEvent for a complete description of the logged security events. Supported for fully managed devices on Android 7 and above. Supported for company-owned devices with a work profile on Android 12 and above, on which only security events from the work profile are logged. Can be overridden by the application delegated scope SECURITY_LOGS",
              "Enable logging of on-device network events, like DNS lookups and TCP connections. See UsageLogEvent for a complete description of the logged network events. Supported for fully managed devices on Android 8 and above. Supported for company-owned devices with a work profile on Android 12 and above, on which only network events from the work profile are logged. Can be overridden by the application delegated scope NETWORK_ACTIVITY_LOGS",
            },
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    UsageLogEvent = {
      description = "An event logged on the device.",
      id = "UsageLogEvent",
      properties = {
        adbShellCommandEvent = {
          ["$ref"] = "AdbShellCommandEvent",
          description = "A shell command was issued over ADB via “adb shell command”. Part of SECURITY_LOGS.",
        },
        adbShellInteractiveEvent = {
          ["$ref"] = "AdbShellInteractiveEvent",
          description = "An ADB interactive shell was opened via “adb shell”. Part of SECURITY_LOGS.",
        },
        appProcessStartEvent = {
          ["$ref"] = "AppProcessStartEvent",
          description = "An app process was started. Part of SECURITY_LOGS.",
        },
        certAuthorityInstalledEvent = {
          ["$ref"] = "CertAuthorityInstalledEvent",
          description = "A new root certificate was installed into the system's trusted credential storage. Part of SECURITY_LOGS.",
        },
        certAuthorityRemovedEvent = {
          ["$ref"] = "CertAuthorityRemovedEvent",
          description = "A root certificate was removed from the system's trusted credential storage. Part of SECURITY_LOGS.",
        },
        certValidationFailureEvent = {
          ["$ref"] = "CertValidationFailureEvent",
          description = "An X.509v3 certificate failed to validate, currently this validation is performed on the Wi-FI access point and failure may be due to a mismatch upon server certificate validation. However it may in the future include other validation events of an X.509v3 certificate. Part of SECURITY_LOGS.",
        },
        connectEvent = {
          ["$ref"] = "ConnectEvent",
          description = "A TCP connect event was initiated through the standard network stack. Part of NETWORK_ACTIVITY_LOGS.",
        },
        cryptoSelfTestCompletedEvent = {
          ["$ref"] = "CryptoSelfTestCompletedEvent",
          description = "Validates whether Android’s built-in cryptographic library (BoringSSL) is valid. Should always succeed on device boot, if it fails, the device should be considered untrusted. Part of SECURITY_LOGS.",
        },
        dnsEvent = {
          ["$ref"] = "DnsEvent",
          description = "A DNS lookup event was initiated through the standard network stack. Part of NETWORK_ACTIVITY_LOGS.",
        },
        eventId = {
          description = "Unique id of the event.",
          format = "int64",
          type = "string",
        },
        eventTime = {
          description = "Device timestamp when the event was logged.",
          format = "google-datetime",
          type = "string",
        },
        eventType = {
          description = "The particular usage log event type that was reported on the device. Use this to determine which event field to access.",
          enum = {
            "EVENT_TYPE_UNSPECIFIED",
            "ADB_SHELL_COMMAND",
            "ADB_SHELL_INTERACTIVE",
            "APP_PROCESS_START",
            "KEYGUARD_DISMISSED",
            "KEYGUARD_DISMISS_AUTH_ATTEMPT",
            "KEYGUARD_SECURED",
            "FILE_PULLED",
            "FILE_PUSHED",
            "CERT_AUTHORITY_INSTALLED",
            "CERT_AUTHORITY_REMOVED",
            "CERT_VALIDATION_FAILURE",
            "CRYPTO_SELF_TEST_COMPLETED",
            "KEY_DESTRUCTION",
            "KEY_GENERATED",
            "KEY_IMPORT",
            "KEY_INTEGRITY_VIOLATION",
            "LOGGING_STARTED",
            "LOGGING_STOPPED",
            "LOG_BUFFER_SIZE_CRITICAL",
            "MEDIA_MOUNT",
            "MEDIA_UNMOUNT",
            "OS_SHUTDOWN",
            "OS_STARTUP",
            "REMOTE_LOCK",
            "WIPE_FAILURE",
            "CONNECT",
            "DNS",
          },
          enumDescriptions = {
            "This value is not used",
            "Indicates adb_shell_command_event has been set.",
            "Indicates adb_shell_interactive_event has been set.",
            "Indicates app_process_start_event has been set.",
            "Indicates keyguard_dismissed_event has been set.",
            "Indicates keyguard_dismiss_auth_attempt_event has been set.",
            "Indicates keyguard_secured_event has been set.",
            "Indicates file_pulled_event has been set.",
            "Indicates file_pushed_event has been set.",
            "Indicates cert_authority_installed_event has been set.",
            "Indicates cert_authority_removed_event has been set.",
            "Indicates cert_validation_failure_event has been set.",
            "Indicates crypto_self_test_completed_event has been set.",
            "Indicates key_destruction_event has been set.",
            "Indicates key_generated_event has been set.",
            "Indicates key_import_event has been set.",
            "Indicates key_integrity_violation_event has been set.",
            "Indicates logging_started_event has been set.",
            "Indicates logging_stopped_event has been set.",
            "Indicates log_buffer_size_critical_event has been set.",
            "Indicates media_mount_event has been set.",
            "Indicates media_unmount_event has been set.",
            "Indicates os_shutdown_event has been set.",
            "Indicates os_startup_event has been set.",
            "Indicates remote_lock_event has been set.",
            "Indicates wipe_failure_event has been set.",
            "Indicates connect_event has been set.",
            "Indicates dns_event has been set.",
          },
          type = "string",
        },
        filePulledEvent = {
          ["$ref"] = "FilePulledEvent",
          description = "A file was downloaded from the device. Part of SECURITY_LOGS.",
        },
        filePushedEvent = {
          ["$ref"] = "FilePushedEvent",
          description = "A file was uploaded onto the device. Part of SECURITY_LOGS.",
        },
        keyDestructionEvent = {
          ["$ref"] = "KeyDestructionEvent",
          description = "A cryptographic key including user installed, admin installed and system maintained private key is removed from the device either by the user or management. Part of SECURITY_LOGS.",
        },
        keyGeneratedEvent = {
          ["$ref"] = "KeyGeneratedEvent",
          description = "A cryptographic key including user installed, admin installed and system maintained private key is installed on the device either by the user or management. Part of SECURITY_LOGS.",
        },
        keyImportEvent = {
          ["$ref"] = "KeyImportEvent",
          description = "A cryptographic key including user installed, admin installed and system maintained private key is imported on the device either by the user or management. Part of SECURITY_LOGS.",
        },
        keyIntegrityViolationEvent = {
          ["$ref"] = "KeyIntegrityViolationEvent",
          description = "A cryptographic key including user installed, admin installed and system maintained private key is determined to be corrupted due to storage corruption, hardware failure or some OS issue. Part of SECURITY_LOGS.",
        },
        keyguardDismissAuthAttemptEvent = {
          ["$ref"] = "KeyguardDismissAuthAttemptEvent",
          description = "An attempt was made to unlock the device. Part of SECURITY_LOGS.",
        },
        keyguardDismissedEvent = {
          ["$ref"] = "KeyguardDismissedEvent",
          description = "The keyguard was dismissed. Part of SECURITY_LOGS.",
        },
        keyguardSecuredEvent = {
          ["$ref"] = "KeyguardSecuredEvent",
          description = "The device was locked either by user or timeout. Part of SECURITY_LOGS.",
        },
        logBufferSizeCriticalEvent = {
          ["$ref"] = "LogBufferSizeCriticalEvent",
          description = "The audit log buffer has reached 90% of its capacity, therefore older events may be dropped. Part of SECURITY_LOGS.",
        },
        loggingStartedEvent = {
          ["$ref"] = "LoggingStartedEvent",
          description = "usageLog policy has been enabled. Part of SECURITY_LOGS.",
        },
        loggingStoppedEvent = {
          ["$ref"] = "LoggingStoppedEvent",
          description = "usageLog policy has been disabled. Part of SECURITY_LOGS.",
        },
        mediaMountEvent = {
          ["$ref"] = "MediaMountEvent",
          description = "Removable media was mounted. Part of SECURITY_LOGS.",
        },
        mediaUnmountEvent = {
          ["$ref"] = "MediaUnmountEvent",
          description = "Removable media was unmounted. Part of SECURITY_LOGS.",
        },
        osShutdownEvent = {
          ["$ref"] = "OsShutdownEvent",
          description = "Device was shutdown. Part of SECURITY_LOGS.",
        },
        osStartupEvent = {
          ["$ref"] = "OsStartupEvent",
          description = "Device was started. Part of SECURITY_LOGS.",
        },
        remoteLockEvent = {
          ["$ref"] = "RemoteLockEvent",
          description = "The device or profile has been remotely locked via the LOCK command. Part of SECURITY_LOGS.",
        },
        wipeFailureEvent = {
          ["$ref"] = "WipeFailureEvent",
          description = "The work profile or company-owned device failed to wipe when requested. This could be user initiated or admin initiated e.g. delete was received. Part of SECURITY_LOGS.",
        },
      },
      type = "object",
    },
    User = {
      description = "A user belonging to an enterprise.",
      id = "User",
      properties = {
        accountIdentifier = {
          description = "A unique identifier you create for this user, such as user342 or asset#44418. This field must be set when the user is created and can't be updated. This field must not contain personally identifiable information (PII). This identifier must be 1024 characters or less; otherwise, the update policy request will fail.",
          type = "string",
        },
      },
      type = "object",
    },
    UserFacingMessage = {
      description = "Provides a user-facing message with locale info. The maximum message length is 4096 characters.",
      id = "UserFacingMessage",
      properties = {
        defaultMessage = {
          description = "The default message displayed if no localized message is specified or the user's locale doesn't match with any of the localized messages. A default message must be provided if any localized messages are provided.",
          type = "string",
        },
        localizedMessages = {
          additionalProperties = {
            type = "string",
          },
          description = "A map containing pairs, where locale is a well-formed BCP 47 language (https://www.w3.org/International/articles/language-tags/) code, such as en-US, es-ES, or fr.",
          type = "object",
        },
      },
      type = "object",
    },
    WebApp = {
      description = "A web app.",
      id = "WebApp",
      properties = {
        displayMode = {
          description = "The display mode of the web app.",
          enum = {
            "DISPLAY_MODE_UNSPECIFIED",
            "MINIMAL_UI",
            "STANDALONE",
            "FULL_SCREEN",
          },
          enumDescriptions = {
            "Not used.",
            "Opens the web app with a minimal set of browser UI elements for controlling navigation and viewing the page URL.",
            "Opens the web app to look and feel like a standalone native application. The browser UI elements and page URL are not visible, however the system status bar and back button are visible.",
            "Opens the web app in full screen without any visible controls. The browser UI elements, page URL, system status bar and back button are not visible, and the web app takes up the entirety of the available display area.",
          },
          type = "string",
        },
        icons = {
          description = "A list of icons for the web app. Must have at least one element.",
          items = {
            ["$ref"] = "WebAppIcon",
          },
          type = "array",
        },
        name = {
          description = "The name of the web app, which is generated by the server during creation in the form enterprises/{enterpriseId}/webApps/{packageName}.",
          type = "string",
        },
        startUrl = {
          description = "The start URL, i.e. the URL that should load when the user opens the application.",
          type = "string",
        },
        title = {
          description = "The title of the web app as displayed to the user (e.g., amongst a list of other applications, or as a label for an icon).",
          type = "string",
        },
        versionCode = {
          description = "The current version of the app.Note that the version can automatically increase during the lifetime of the web app, while Google does internal housekeeping to keep the web app up-to-date.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    WebAppIcon = {
      description = "An icon for a web app. Supported formats are: png, jpg and webp.",
      id = "WebAppIcon",
      properties = {
        imageData = {
          description = "The actual bytes of the image in a base64url encoded string (c.f. RFC4648, section 5 \"Base 64 Encoding with URL and Filename Safe Alphabet\"). - The image type can be png or jpg. - The image should ideally be square. - The image should ideally have a size of 512x512. ",
          type = "string",
        },
      },
      type = "object",
    },
    WebToken = {
      description = "A web token used to access the managed Google Play iframe.",
      id = "WebToken",
      properties = {
        enabledFeatures = {
          description = "The features to enable. Use this if you want to control exactly which feature(s) will be activated; leave empty to allow all features.Restrictions / things to note: - If no features are listed here, all features are enabled — this is the default behavior where you give access to all features to your admins. - This must not contain any FEATURE_UNSPECIFIED values. - Repeated values are ignored ",
          items = {
            enum = {
              "FEATURE_UNSPECIFIED",
              "PLAY_SEARCH",
              "PRIVATE_APPS",
              "WEB_APPS",
              "STORE_BUILDER",
              "MANAGED_CONFIGURATIONS",
              "ZERO_TOUCH_CUSTOMER_MANAGEMENT",
            },
            enumDescriptions = {
              "Unspecified feature.",
              "The Managed Play search apps page (https://developers.google.com/android/management/apps#search-apps).",
              "The private apps page (https://developers.google.com/android/management/apps#private-apps).",
              "The Web Apps page (https://developers.google.com/android/management/apps#web-apps).",
              "The organize apps page (https://developers.google.com/android/management/apps#organize-apps).",
              "The managed configurations page (https://developers.google.com/android/management/managed-configurations-iframe).",
              "The zero-touch iframe (https://developers.google.com/android/management/zero-touch-iframe).",
            },
            type = "string",
          },
          type = "array",
        },
        name = {
          description = "The name of the web token, which is generated by the server during creation in the form enterprises/{enterpriseId}/webTokens/{webTokenId}.",
          type = "string",
        },
        parentFrameUrl = {
          description = "The URL of the parent frame hosting the iframe with the embedded UI. To prevent XSS, the iframe may not be hosted at other URLs. The URL must use the https scheme.",
          type = "string",
        },
        permissions = {
          description = "Permissions available to an admin in the embedded UI. An admin must have all of these permissions in order to view the UI. This field is deprecated.",
          items = {
            enum = {
              "WEB_TOKEN_PERMISSION_UNSPECIFIED",
              "APPROVE_APPS",
            },
            enumDescriptions = {
              "This value is ignored.",
              "The permission to approve apps for the enterprise.",
            },
            type = "string",
          },
          type = "array",
        },
        value = {
          description = "The token value which is used in the hosting page to generate the iframe with the embedded UI. This is a read-only field generated by the server.",
          type = "string",
        },
      },
      type = "object",
    },
    WipeAction = {
      description = "An action to reset a company owned device or delete a work profile. Note: blockAction must also be specified.",
      id = "WipeAction",
      properties = {
        preserveFrp = {
          description = "Whether the factory-reset protection data is preserved on the device. This setting doesn’t apply to work profiles.",
          type = "boolean",
        },
        wipeAfterDays = {
          description = "Number of days the policy is non-compliant before the device or work profile is wiped. wipeAfterDays must be greater than blockAfterDays.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    WipeFailureEvent = {
      description = "The work profile or company-owned device failed to wipe when requested. This could be user initiated or admin initiated e.g. delete was received. Intentionally empty.",
      id = "WipeFailureEvent",
      properties = {},
      type = "object",
    },
  },
  servicePath = "",
  title = "Android Management API",
  version = "v1",
  version_module = true,
}
