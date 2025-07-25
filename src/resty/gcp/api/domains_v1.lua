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
  baseUrl = "https://domains.googleapis.com/",
  batchPath = "batch",
  canonicalName = "Cloud Domains",
  description = "Enables management and configuration of domain names.",
  discoveryVersion = "v1",
  documentationLink = "https://cloud.google.com/domains/",
  fullyEncodeReservedExpansion = true,
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "domains:v1",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://domains.mtls.googleapis.com/",
  name = "domains",
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
              id = "domains.projects.locations.get",
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
              id = "domains.projects.locations.list",
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
            operations = {
              methods = {
                get = {
                  description = "Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/operations/{operationsId}",
                  httpMethod = "GET",
                  id = "domains.projects.locations.operations.get",
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
                  id = "domains.projects.locations.operations.list",
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
            registrations = {
              methods = {
                configureContactSettings = {
                  description = "Updates a `Registration`'s contact settings. Some changes require confirmation by the domain's registrant contact .",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/registrations/{registrationsId}:configureContactSettings",
                  httpMethod = "POST",
                  id = "domains.projects.locations.registrations.configureContactSettings",
                  parameterOrder = {
                    "registration",
                  },
                  parameters = {
                    registration = {
                      description = "Required. The name of the `Registration` whose contact settings are being updated, in the format `projects/*/locations/*/registrations/*`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/registrations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+registration}:configureContactSettings",
                  request = {
                    ["$ref"] = "ConfigureContactSettingsRequest",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                configureDnsSettings = {
                  description = "Updates a `Registration`'s DNS settings.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/registrations/{registrationsId}:configureDnsSettings",
                  httpMethod = "POST",
                  id = "domains.projects.locations.registrations.configureDnsSettings",
                  parameterOrder = {
                    "registration",
                  },
                  parameters = {
                    registration = {
                      description = "Required. The name of the `Registration` whose DNS settings are being updated, in the format `projects/*/locations/*/registrations/*`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/registrations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+registration}:configureDnsSettings",
                  request = {
                    ["$ref"] = "ConfigureDnsSettingsRequest",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                configureManagementSettings = {
                  description = "Updates a `Registration`'s management settings.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/registrations/{registrationsId}:configureManagementSettings",
                  httpMethod = "POST",
                  id = "domains.projects.locations.registrations.configureManagementSettings",
                  parameterOrder = {
                    "registration",
                  },
                  parameters = {
                    registration = {
                      description = "Required. The name of the `Registration` whose management settings are being updated, in the format `projects/*/locations/*/registrations/*`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/registrations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+registration}:configureManagementSettings",
                  request = {
                    ["$ref"] = "ConfigureManagementSettingsRequest",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                delete = {
                  description = "Deletes a `Registration` resource. This method works on any `Registration` resource using [Subscription or Commitment billing](/domains/pricing#billing-models), provided that the resource was created at least 1 day in the past. For `Registration` resources using [Monthly billing](/domains/pricing#billing-models), this method works if: * `state` is `EXPORTED` with `expire_time` in the past * `state` is `REGISTRATION_FAILED` * `state` is `TRANSFER_FAILED` When an active registration is successfully deleted, you can continue to use the domain in [Google Domains](https://domains.google/) until it expires. The calling user becomes the domain's sole owner in Google Domains, and permissions for the domain are subsequently managed there. The domain does not renew automatically unless the new owner sets up billing in Google Domains.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/registrations/{registrationsId}",
                  httpMethod = "DELETE",
                  id = "domains.projects.locations.registrations.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The name of the `Registration` to delete, in the format `projects/*/locations/*/registrations/*`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/registrations/[^/]+$",
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
                export = {
                  description = "Exports a `Registration` resource, such that it is no longer managed by Cloud Domains. When an active domain is successfully exported, you can continue to use the domain in [Google Domains](https://domains.google/) until it expires. The calling user becomes the domain's sole owner in Google Domains, and permissions for the domain are subsequently managed there. The domain does not renew automatically unless the new owner sets up billing in Google Domains.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/registrations/{registrationsId}:export",
                  httpMethod = "POST",
                  id = "domains.projects.locations.registrations.export",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The name of the `Registration` to export, in the format `projects/*/locations/*/registrations/*`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/registrations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}:export",
                  request = {
                    ["$ref"] = "ExportRegistrationRequest",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                get = {
                  description = "Gets the details of a `Registration` resource.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/registrations/{registrationsId}",
                  httpMethod = "GET",
                  id = "domains.projects.locations.registrations.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The name of the `Registration` to get, in the format `projects/*/locations/*/registrations/*`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/registrations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "Registration",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                getIamPolicy = {
                  description = "Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/registrations/{registrationsId}:getIamPolicy",
                  httpMethod = "GET",
                  id = "domains.projects.locations.registrations.getIamPolicy",
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
                      pattern = "^projects/[^/]+/locations/[^/]+/registrations/[^/]+$",
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
                  description = "Imports a domain name from [Google Domains](https://domains.google/) for use in Cloud Domains. To transfer a domain from another registrar, use the `TransferDomain` method instead. Since individual users can own domains in Google Domains, the calling user must have ownership permission on the domain.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/registrations:import",
                  httpMethod = "POST",
                  id = "domains.projects.locations.registrations.import",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    parent = {
                      description = "Required. The parent resource of the Registration. Must be in the format `projects/*/locations/*`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/registrations:import",
                  request = {
                    ["$ref"] = "ImportDomainRequest",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                list = {
                  description = "Lists the `Registration` resources in a project.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/registrations",
                  httpMethod = "GET",
                  id = "domains.projects.locations.registrations.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    filter = {
                      description = "Filter expression to restrict the `Registration`s returned. The expression must specify the field name, a comparison operator, and the value that you want to use for filtering. The value must be a string, a number, a boolean, or an enum value. The comparison operator should be one of =, !=, >, <, >=, <=, or : for prefix or wildcard matches. For example, to filter to a specific domain name, use an expression like `domainName=\"example.com\"`. You can also check for the existence of a field; for example, to find domains using custom DNS settings, use an expression like `dnsSettings.customDns:*`. You can also create compound filters by combining expressions with the `AND` and `OR` operators. For example, to find domains that are suspended or have specific issues flagged, use an expression like `(state=SUSPENDED) OR (issue:*)`.",
                      location = "query",
                      type = "string",
                    },
                    pageSize = {
                      description = "Maximum number of results to return.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "When set to the `next_page_token` from a prior response, provides the next page of results.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The project and location from which to list `Registration`s, specified in the format `projects/*/locations/*`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/registrations",
                  response = {
                    ["$ref"] = "ListRegistrationsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                patch = {
                  description = "Updates select fields of a `Registration` resource, notably `labels`. To update other fields, use the appropriate custom update method: * To update management settings, see `ConfigureManagementSettings` * To update DNS configuration, see `ConfigureDnsSettings` * To update contact information, see `ConfigureContactSettings`",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/registrations/{registrationsId}",
                  httpMethod = "PATCH",
                  id = "domains.projects.locations.registrations.patch",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Output only. Name of the `Registration` resource, in the format `projects/*/locations/*/registrations/`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/registrations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    updateMask = {
                      description = "Required. The field mask describing which fields to update as a comma-separated list. For example, if only the labels are being updated, the `update_mask` is `\"labels\"`.",
                      format = "google-fieldmask",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  request = {
                    ["$ref"] = "Registration",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                register = {
                  description = "Registers a new domain name and creates a corresponding `Registration` resource. Call `RetrieveRegisterParameters` first to check availability of the domain name and determine parameters like price that are needed to build a call to this method. A successful call creates a `Registration` resource in state `REGISTRATION_PENDING`, which resolves to `ACTIVE` within 1-2 minutes, indicating that the domain was successfully registered. If the resource ends up in state `REGISTRATION_FAILED`, it indicates that the domain was not registered successfully, and you can safely delete the resource and retry registration.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/registrations:register",
                  httpMethod = "POST",
                  id = "domains.projects.locations.registrations.register",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    parent = {
                      description = "Required. The parent resource of the `Registration`. Must be in the format `projects/*/locations/*`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/registrations:register",
                  request = {
                    ["$ref"] = "RegisterDomainRequest",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                resetAuthorizationCode = {
                  description = "Resets the authorization code of the `Registration` to a new random string. You can call this method only after 60 days have elapsed since the initial domain registration.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/registrations/{registrationsId}:resetAuthorizationCode",
                  httpMethod = "POST",
                  id = "domains.projects.locations.registrations.resetAuthorizationCode",
                  parameterOrder = {
                    "registration",
                  },
                  parameters = {
                    registration = {
                      description = "Required. The name of the `Registration` whose authorization code is being reset, in the format `projects/*/locations/*/registrations/*`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/registrations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+registration}:resetAuthorizationCode",
                  request = {
                    ["$ref"] = "ResetAuthorizationCodeRequest",
                  },
                  response = {
                    ["$ref"] = "AuthorizationCode",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                retrieveAuthorizationCode = {
                  description = "Gets the authorization code of the `Registration` for the purpose of transferring the domain to another registrar. You can call this method only after 60 days have elapsed since the initial domain registration.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/registrations/{registrationsId}:retrieveAuthorizationCode",
                  httpMethod = "GET",
                  id = "domains.projects.locations.registrations.retrieveAuthorizationCode",
                  parameterOrder = {
                    "registration",
                  },
                  parameters = {
                    registration = {
                      description = "Required. The name of the `Registration` whose authorization code is being retrieved, in the format `projects/*/locations/*/registrations/*`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/registrations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+registration}:retrieveAuthorizationCode",
                  response = {
                    ["$ref"] = "AuthorizationCode",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                retrieveImportableDomains = {
                  description = "Lists domain names from [Google Domains](https://domains.google/) that can be imported to Cloud Domains using the `ImportDomain` method. Since individual users can own domains in Google Domains, the list of domains returned depends on the individual user making the call. Domains already managed by Cloud Domains are not returned.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/registrations:retrieveImportableDomains",
                  httpMethod = "GET",
                  id = "domains.projects.locations.registrations.retrieveImportableDomains",
                  parameterOrder = {
                    "location",
                  },
                  parameters = {
                    location = {
                      description = "Required. The location. Must be in the format `projects/*/locations/*`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    pageSize = {
                      description = "Maximum number of results to return.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "When set to the `next_page_token` from a prior response, provides the next page of results.",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+location}/registrations:retrieveImportableDomains",
                  response = {
                    ["$ref"] = "RetrieveImportableDomainsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                retrieveRegisterParameters = {
                  description = "Gets parameters needed to register a new domain name, including price and up-to-date availability. Use the returned values to call `RegisterDomain`.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/registrations:retrieveRegisterParameters",
                  httpMethod = "GET",
                  id = "domains.projects.locations.registrations.retrieveRegisterParameters",
                  parameterOrder = {
                    "location",
                  },
                  parameters = {
                    domainName = {
                      description = "Required. The domain name. Unicode domain names must be expressed in Punycode format.",
                      location = "query",
                      type = "string",
                    },
                    location = {
                      description = "Required. The location. Must be in the format `projects/*/locations/*`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+location}/registrations:retrieveRegisterParameters",
                  response = {
                    ["$ref"] = "RetrieveRegisterParametersResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                retrieveTransferParameters = {
                  description = "Gets parameters needed to transfer a domain name from another registrar to Cloud Domains. For domains already managed by [Google Domains](https://domains.google/), use `ImportDomain` instead. Use the returned values to call `TransferDomain`.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/registrations:retrieveTransferParameters",
                  httpMethod = "GET",
                  id = "domains.projects.locations.registrations.retrieveTransferParameters",
                  parameterOrder = {
                    "location",
                  },
                  parameters = {
                    domainName = {
                      description = "Required. The domain name. Unicode domain names must be expressed in Punycode format.",
                      location = "query",
                      type = "string",
                    },
                    location = {
                      description = "Required. The location. Must be in the format `projects/*/locations/*`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+location}/registrations:retrieveTransferParameters",
                  response = {
                    ["$ref"] = "RetrieveTransferParametersResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                searchDomains = {
                  description = "Searches for available domain names similar to the provided query. Availability results from this method are approximate; call `RetrieveRegisterParameters` on a domain before registering to confirm availability.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/registrations:searchDomains",
                  httpMethod = "GET",
                  id = "domains.projects.locations.registrations.searchDomains",
                  parameterOrder = {
                    "location",
                  },
                  parameters = {
                    location = {
                      description = "Required. The location. Must be in the format `projects/*/locations/*`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    query = {
                      description = "Required. String used to search for available domain names.",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+location}/registrations:searchDomains",
                  response = {
                    ["$ref"] = "SearchDomainsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                setIamPolicy = {
                  description = "Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/registrations/{registrationsId}:setIamPolicy",
                  httpMethod = "POST",
                  id = "domains.projects.locations.registrations.setIamPolicy",
                  parameterOrder = {
                    "resource",
                  },
                  parameters = {
                    resource = {
                      description = "REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/registrations/[^/]+$",
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
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/registrations/{registrationsId}:testIamPermissions",
                  httpMethod = "POST",
                  id = "domains.projects.locations.registrations.testIamPermissions",
                  parameterOrder = {
                    "resource",
                  },
                  parameters = {
                    resource = {
                      description = "REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/registrations/[^/]+$",
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
                transfer = {
                  description = "Transfers a domain name from another registrar to Cloud Domains. For domains already managed by [Google Domains](https://domains.google/), use `ImportDomain` instead. Before calling this method, go to the domain's current registrar to unlock the domain for transfer and retrieve the domain's transfer authorization code. Then call `RetrieveTransferParameters` to confirm that the domain is unlocked and to get values needed to build a call to this method. A successful call creates a `Registration` resource in state `TRANSFER_PENDING`. It can take several days to complete the transfer process. The registrant can often speed up this process by approving the transfer through the current registrar, either by clicking a link in an email from the registrar or by visiting the registrar's website. A few minutes after transfer approval, the resource transitions to state `ACTIVE`, indicating that the transfer was successful. If the transfer is rejected or the request expires without being approved, the resource can end up in state `TRANSFER_FAILED`. If transfer fails, you can safely delete the resource and retry the transfer.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/registrations:transfer",
                  httpMethod = "POST",
                  id = "domains.projects.locations.registrations.transfer",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    parent = {
                      description = "Required. The parent resource of the `Registration`. Must be in the format `projects/*/locations/*`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/registrations:transfer",
                  request = {
                    ["$ref"] = "TransferDomainRequest",
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
          },
        },
      },
    },
  },
  revision = "20230105",
  rootUrl = "https://domains.googleapis.com/",
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
    AuthorizationCode = {
      description = "Defines an authorization code.",
      id = "AuthorizationCode",
      properties = {
        code = {
          description = "The Authorization Code in ASCII. It can be used to transfer the domain to or from another registrar.",
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
    ConfigureContactSettingsRequest = {
      description = "Request for the `ConfigureContactSettings` method.",
      id = "ConfigureContactSettingsRequest",
      properties = {
        contactNotices = {
          description = "The list of contact notices that the caller acknowledges. The notices needed here depend on the values specified in `contact_settings`.",
          items = {
            enum = {
              "CONTACT_NOTICE_UNSPECIFIED",
              "PUBLIC_CONTACT_DATA_ACKNOWLEDGEMENT",
            },
            enumDescriptions = {
              "The notice is undefined.",
              "Required when setting the `privacy` field of `ContactSettings` to `PUBLIC_CONTACT_DATA`, which exposes contact data publicly.",
            },
            type = "string",
          },
          type = "array",
        },
        contactSettings = {
          ["$ref"] = "ContactSettings",
          description = "Fields of the `ContactSettings` to update.",
        },
        updateMask = {
          description = "Required. The field mask describing which fields to update as a comma-separated list. For example, if only the registrant contact is being updated, the `update_mask` is `\"registrant_contact\"`.",
          format = "google-fieldmask",
          type = "string",
        },
        validateOnly = {
          description = "Validate the request without actually updating the contact settings.",
          type = "boolean",
        },
      },
      type = "object",
    },
    ConfigureDnsSettingsRequest = {
      description = "Request for the `ConfigureDnsSettings` method.",
      id = "ConfigureDnsSettingsRequest",
      properties = {
        dnsSettings = {
          ["$ref"] = "DnsSettings",
          description = "Fields of the `DnsSettings` to update.",
        },
        updateMask = {
          description = "Required. The field mask describing which fields to update as a comma-separated list. For example, if only the name servers are being updated for an existing Custom DNS configuration, the `update_mask` is `\"custom_dns.name_servers\"`. When changing the DNS provider from one type to another, pass the new provider's field name as part of the field mask. For example, when changing from a Google Domains DNS configuration to a Custom DNS configuration, the `update_mask` is `\"custom_dns\"`. //",
          format = "google-fieldmask",
          type = "string",
        },
        validateOnly = {
          description = "Validate the request without actually updating the DNS settings.",
          type = "boolean",
        },
      },
      type = "object",
    },
    ConfigureManagementSettingsRequest = {
      description = "Request for the `ConfigureManagementSettings` method.",
      id = "ConfigureManagementSettingsRequest",
      properties = {
        managementSettings = {
          ["$ref"] = "ManagementSettings",
          description = "Fields of the `ManagementSettings` to update.",
        },
        updateMask = {
          description = "Required. The field mask describing which fields to update as a comma-separated list. For example, if only the transfer lock is being updated, the `update_mask` is `\"transfer_lock_state\"`.",
          format = "google-fieldmask",
          type = "string",
        },
      },
      type = "object",
    },
    Contact = {
      description = "Details required for a contact associated with a `Registration`.",
      id = "Contact",
      properties = {
        email = {
          description = "Required. Email address of the contact.",
          type = "string",
        },
        faxNumber = {
          description = "Fax number of the contact in international format. For example, `\"+1-800-555-0123\"`.",
          type = "string",
        },
        phoneNumber = {
          description = "Required. Phone number of the contact in international format. For example, `\"+1-800-555-0123\"`.",
          type = "string",
        },
        postalAddress = {
          ["$ref"] = "PostalAddress",
          description = "Required. Postal address of the contact.",
        },
      },
      type = "object",
    },
    ContactSettings = {
      description = "Defines the contact information associated with a `Registration`. [ICANN](https://icann.org/) requires all domain names to have associated contact information. The `registrant_contact` is considered the domain's legal owner, and often the other contacts are identical.",
      id = "ContactSettings",
      properties = {
        adminContact = {
          ["$ref"] = "Contact",
          description = "Required. The administrative contact for the `Registration`.",
        },
        privacy = {
          description = "Required. Privacy setting for the contacts associated with the `Registration`.",
          enum = {
            "CONTACT_PRIVACY_UNSPECIFIED",
            "PUBLIC_CONTACT_DATA",
            "PRIVATE_CONTACT_DATA",
            "REDACTED_CONTACT_DATA",
          },
          enumDescriptions = {
            "The contact privacy settings are undefined.",
            "All the data from `ContactSettings` is publicly available. When setting this option, you must also provide a `PUBLIC_CONTACT_DATA_ACKNOWLEDGEMENT` in the `contact_notices` field of the request.",
            "None of the data from `ContactSettings` is publicly available. Instead, proxy contact data is published for your domain. Email sent to the proxy email address is forwarded to the registrant's email address. Cloud Domains provides this privacy proxy service at no additional cost.",
            "Some data from `ContactSettings` is publicly available. The actual information redacted depends on the domain. For details, see [the registration privacy article](https://support.google.com/domains/answer/3251242).",
          },
          type = "string",
        },
        registrantContact = {
          ["$ref"] = "Contact",
          description = "Required. The registrant contact for the `Registration`. *Caution: Anyone with access to this email address, phone number, and/or postal address can take control of the domain.* *Warning: For new `Registration`s, the registrant receives an email confirmation that they must complete within 15 days to avoid domain suspension.*",
        },
        technicalContact = {
          ["$ref"] = "Contact",
          description = "Required. The technical contact for the `Registration`.",
        },
      },
      type = "object",
    },
    CustomDns = {
      description = "Configuration for an arbitrary DNS provider.",
      id = "CustomDns",
      properties = {
        dsRecords = {
          description = "The list of DS records for this domain, which are used to enable DNSSEC. The domain's DNS provider can provide the values to set here. If this field is empty, DNSSEC is disabled.",
          items = {
            ["$ref"] = "DsRecord",
          },
          type = "array",
        },
        nameServers = {
          description = "Required. A list of name servers that store the DNS zone for this domain. Each name server is a domain name, with Unicode domain names expressed in Punycode format.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    DnsSettings = {
      description = "Defines the DNS configuration of a `Registration`, including name servers, DNSSEC, and glue records.",
      id = "DnsSettings",
      properties = {
        customDns = {
          ["$ref"] = "CustomDns",
          description = "An arbitrary DNS provider identified by its name servers.",
        },
        glueRecords = {
          description = "The list of glue records for this `Registration`. Commonly empty.",
          items = {
            ["$ref"] = "GlueRecord",
          },
          type = "array",
        },
        googleDomainsDns = {
          ["$ref"] = "GoogleDomainsDns",
          description = "The free DNS zone provided by [Google Domains](https://domains.google/).",
        },
      },
      type = "object",
    },
    Domain = {
      description = "A domain that the calling user manages in Google Domains.",
      id = "Domain",
      properties = {
        domainName = {
          description = "The domain name. Unicode domain names are expressed in Punycode format.",
          type = "string",
        },
        resourceState = {
          description = "The state of this domain as a `Registration` resource.",
          enum = {
            "RESOURCE_STATE_UNSPECIFIED",
            "IMPORTABLE",
            "UNSUPPORTED",
            "SUSPENDED",
            "EXPIRED",
            "DELETED",
          },
          enumDescriptions = {
            "The assessment is undefined.",
            "A `Registration` resource can be created for this domain by calling `ImportDomain`.",
            "A `Registration` resource cannot be created for this domain because it is not supported by Cloud Domains; for example, the top-level domain is not supported or the registry charges non-standard pricing for yearly renewals.",
            "A `Registration` resource cannot be created for this domain because it is suspended and needs to be resolved with Google Domains.",
            "A `Registration` resource cannot be created for this domain because it is expired and needs to be renewed with Google Domains.",
            "A `Registration` resource cannot be created for this domain because it is deleted, but it may be possible to restore it with Google Domains.",
          },
          type = "string",
        },
        yearlyPrice = {
          ["$ref"] = "Money",
          description = "Price to renew the domain for one year. Only set when `resource_state` is `IMPORTABLE`.",
        },
      },
      type = "object",
    },
    DsRecord = {
      description = "Defines a Delegation Signer (DS) record, which is needed to enable DNSSEC for a domain. It contains a digest (hash) of a DNSKEY record that must be present in the domain's DNS zone.",
      id = "DsRecord",
      properties = {
        algorithm = {
          description = "The algorithm used to generate the referenced DNSKEY.",
          enum = {
            "ALGORITHM_UNSPECIFIED",
            "RSAMD5",
            "DH",
            "DSA",
            "ECC",
            "RSASHA1",
            "DSANSEC3SHA1",
            "RSASHA1NSEC3SHA1",
            "RSASHA256",
            "RSASHA512",
            "ECCGOST",
            "ECDSAP256SHA256",
            "ECDSAP384SHA384",
            "ED25519",
            "ED448",
            "INDIRECT",
            "PRIVATEDNS",
            "PRIVATEOID",
          },
          enumDescriptions = {
            "The algorithm is unspecified.",
            "RSA/MD5. Cannot be used for new deployments.",
            "Diffie-Hellman. Cannot be used for new deployments.",
            "DSA/SHA1. Not recommended for new deployments.",
            "ECC. Not recommended for new deployments.",
            "RSA/SHA-1. Not recommended for new deployments.",
            "DSA-NSEC3-SHA1. Not recommended for new deployments.",
            "RSA/SHA1-NSEC3-SHA1. Not recommended for new deployments.",
            "RSA/SHA-256.",
            "RSA/SHA-512.",
            "GOST R 34.10-2001.",
            "ECDSA Curve P-256 with SHA-256.",
            "ECDSA Curve P-384 with SHA-384.",
            "Ed25519.",
            "Ed448.",
            "Reserved for Indirect Keys. Cannot be used for new deployments.",
            "Private algorithm. Cannot be used for new deployments.",
            "Private algorithm OID. Cannot be used for new deployments.",
          },
          type = "string",
        },
        digest = {
          description = "The digest generated from the referenced DNSKEY.",
          type = "string",
        },
        digestType = {
          description = "The hash function used to generate the digest of the referenced DNSKEY.",
          enum = {
            "DIGEST_TYPE_UNSPECIFIED",
            "SHA1",
            "SHA256",
            "GOST3411",
            "SHA384",
          },
          enumDescriptions = {
            "The DigestType is unspecified.",
            "SHA-1. Not recommended for new deployments.",
            "SHA-256.",
            "GOST R 34.11-94.",
            "SHA-384.",
          },
          type = "string",
        },
        keyTag = {
          description = "The key tag of the record. Must be set in range 0 -- 65535.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    ExportRegistrationRequest = {
      description = "Request for the `ExportRegistration` method.",
      id = "ExportRegistrationRequest",
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
    GlueRecord = {
      description = "Defines a host on your domain that is a DNS name server for your domain and/or other domains. Glue records are a way of making the IP address of a name server known, even when it serves DNS queries for its parent domain. For example, when `ns.example.com` is a name server for `example.com`, the host `ns.example.com` must have a glue record to break the circular DNS reference.",
      id = "GlueRecord",
      properties = {
        hostName = {
          description = "Required. Domain name of the host in Punycode format.",
          type = "string",
        },
        ipv4Addresses = {
          description = "List of IPv4 addresses corresponding to this host in the standard decimal format (e.g. `198.51.100.1`). At least one of `ipv4_address` and `ipv6_address` must be set.",
          items = {
            type = "string",
          },
          type = "array",
        },
        ipv6Addresses = {
          description = "List of IPv6 addresses corresponding to this host in the standard hexadecimal format (e.g. `2001:db8::`). At least one of `ipv4_address` and `ipv6_address` must be set.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleDomainsDns = {
      description = "Configuration for using the free DNS zone provided by Google Domains as a `Registration`'s `dns_provider`. You cannot configure the DNS zone itself using the API. To configure the DNS zone, go to [Google Domains](https://domains.google/).",
      id = "GoogleDomainsDns",
      properties = {
        dsRecords = {
          description = "Output only. The list of DS records published for this domain. The list is automatically populated when `ds_state` is `DS_RECORDS_PUBLISHED`, otherwise it remains empty.",
          items = {
            ["$ref"] = "DsRecord",
          },
          readOnly = true,
          type = "array",
        },
        dsState = {
          description = "Required. The state of DS records for this domain. Used to enable or disable automatic DNSSEC.",
          enum = {
            "DS_STATE_UNSPECIFIED",
            "DS_RECORDS_UNPUBLISHED",
            "DS_RECORDS_PUBLISHED",
          },
          enumDescriptions = {
            "DS state is unspecified.",
            "DNSSEC is disabled for this domain. No DS records for this domain are published in the parent DNS zone.",
            "DNSSEC is enabled for this domain. Appropriate DS records for this domain are published in the parent DNS zone. This option is valid only if the DNS zone referenced in the `Registration`'s `dns_provider` field is already DNSSEC-signed.",
          },
          type = "string",
        },
        nameServers = {
          description = "Output only. A list of name servers that store the DNS zone for this domain. Each name server is a domain name, with Unicode domain names expressed in Punycode format. This field is automatically populated with the name servers assigned to the Google Domains DNS zone.",
          items = {
            type = "string",
          },
          readOnly = true,
          type = "array",
        },
      },
      type = "object",
    },
    ImportDomainRequest = {
      description = "Request for the `ImportDomain` method.",
      id = "ImportDomainRequest",
      properties = {
        domainName = {
          description = "Required. The domain name. Unicode domain names must be expressed in Punycode format.",
          type = "string",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "Set of labels associated with the `Registration`.",
          type = "object",
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
    ListRegistrationsResponse = {
      description = "Response for the `ListRegistrations` method.",
      id = "ListRegistrationsResponse",
      properties = {
        nextPageToken = {
          description = "When present, there are more results to retrieve. Set `page_token` to this value on a subsequent call to get the next page of results.",
          type = "string",
        },
        registrations = {
          description = "A list of `Registration`s.",
          items = {
            ["$ref"] = "Registration",
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
    ManagementSettings = {
      description = "Defines renewal, billing, and transfer settings for a `Registration`.",
      id = "ManagementSettings",
      properties = {
        renewalMethod = {
          description = "Output only. The renewal method for this `Registration`.",
          enum = {
            "RENEWAL_METHOD_UNSPECIFIED",
            "AUTOMATIC_RENEWAL",
            "MANUAL_RENEWAL",
          },
          enumDescriptions = {
            "The renewal method is undefined.",
            "The domain is automatically renewed each year . To disable automatic renewals, delete the resource by calling `DeleteRegistration` or export it by calling `ExportRegistration`.",
            "The domain must be explicitly renewed each year before its `expire_time`. This option is only available when the `Registration` is in state `EXPORTED`. To manage the domain's current billing and renewal settings, go to [Google Domains](https://domains.google/).",
          },
          readOnly = true,
          type = "string",
        },
        transferLockState = {
          description = "Controls whether the domain can be transferred to another registrar.",
          enum = {
            "TRANSFER_LOCK_STATE_UNSPECIFIED",
            "UNLOCKED",
            "LOCKED",
          },
          enumDescriptions = {
            "The state is unspecified.",
            "The domain is unlocked and can be transferred to another registrar.",
            "The domain is locked and cannot be transferred to another registrar.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    Money = {
      description = "Represents an amount of money with its currency type.",
      id = "Money",
      properties = {
        currencyCode = {
          description = "The three-letter currency code defined in ISO 4217.",
          type = "string",
        },
        nanos = {
          description = "Number of nano (10^-9) units of the amount. The value must be between -999,999,999 and +999,999,999 inclusive. If `units` is positive, `nanos` must be positive or zero. If `units` is zero, `nanos` can be positive, zero, or negative. If `units` is negative, `nanos` must be negative or zero. For example $-1.75 is represented as `units`=-1 and `nanos`=-750,000,000.",
          format = "int32",
          type = "integer",
        },
        units = {
          description = "The whole units of the amount. For example if `currencyCode` is `\"USD\"`, then 1 unit is one US dollar.",
          format = "int64",
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
      description = "Represents the metadata of the long-running operation. Output only.",
      id = "OperationMetadata",
      properties = {
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
        statusDetail = {
          description = "Human-readable status of the operation, if any.",
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
    PostalAddress = {
      description = "Represents a postal address, e.g. for postal delivery or payments addresses. Given a postal address, a postal service can deliver items to a premise, P.O. Box or similar. It is not intended to model geographical locations (roads, towns, mountains). In typical usage an address would be created via user input or from importing existing data, depending on the type of process. Advice on address input / editing: - Use an internationalization-ready address widget such as https://github.com/google/libaddressinput) - Users should not be presented with UI elements for input or editing of fields outside countries where that field is used. For more guidance on how to use this schema, please see: https://support.google.com/business/answer/6397478",
      id = "PostalAddress",
      properties = {
        addressLines = {
          description = "Unstructured address lines describing the lower levels of an address. Because values in address_lines do not have type information and may sometimes contain multiple values in a single field (e.g. \"Austin, TX\"), it is important that the line order is clear. The order of address lines should be \"envelope order\" for the country/region of the address. In places where this can vary (e.g. Japan), address_language is used to make it explicit (e.g. \"ja\" for large-to-small ordering and \"ja-Latn\" or \"en\" for small-to-large). This way, the most specific line of an address can be selected based on the language. The minimum permitted structural representation of an address consists of a region_code with all remaining information placed in the address_lines. It would be possible to format such an address very approximately without geocoding, but no semantic reasoning could be made about any of the address components until it was at least partially resolved. Creating an address only containing a region_code and address_lines, and then geocoding is the recommended way to handle completely unstructured addresses (as opposed to guessing which parts of the address should be localities or administrative areas).",
          items = {
            type = "string",
          },
          type = "array",
        },
        administrativeArea = {
          description = "Optional. Highest administrative subdivision which is used for postal addresses of a country or region. For example, this can be a state, a province, an oblast, or a prefecture. Specifically, for Spain this is the province and not the autonomous community (e.g. \"Barcelona\" and not \"Catalonia\"). Many countries don't use an administrative area in postal addresses. E.g. in Switzerland this should be left unpopulated.",
          type = "string",
        },
        languageCode = {
          description = "Optional. BCP-47 language code of the contents of this address (if known). This is often the UI language of the input form or is expected to match one of the languages used in the address' country/region, or their transliterated equivalents. This can affect formatting in certain countries, but is not critical to the correctness of the data and will never affect any validation or other non-formatting related operations. If this value is not known, it should be omitted (rather than specifying a possibly incorrect default). Examples: \"zh-Hant\", \"ja\", \"ja-Latn\", \"en\".",
          type = "string",
        },
        locality = {
          description = "Optional. Generally refers to the city/town portion of the address. Examples: US city, IT comune, UK post town. In regions of the world where localities are not well defined or do not fit into this structure well, leave locality empty and use address_lines.",
          type = "string",
        },
        organization = {
          description = "Optional. The name of the organization at the address.",
          type = "string",
        },
        postalCode = {
          description = "Optional. Postal code of the address. Not all countries use or require postal codes to be present, but where they are used, they may trigger additional validation with other parts of the address (e.g. state/zip validation in the U.S.A.).",
          type = "string",
        },
        recipients = {
          description = "Optional. The recipient at the address. This field may, under certain circumstances, contain multiline information. For example, it might contain \"care of\" information.",
          items = {
            type = "string",
          },
          type = "array",
        },
        regionCode = {
          description = "Required. CLDR region code of the country/region of the address. This is never inferred and it is up to the user to ensure the value is correct. See https://cldr.unicode.org/ and https://www.unicode.org/cldr/charts/30/supplemental/territory_information.html for details. Example: \"CH\" for Switzerland.",
          type = "string",
        },
        revision = {
          description = "The schema revision of the `PostalAddress`. This must be set to 0, which is the latest revision. All new revisions **must** be backward compatible with old revisions.",
          format = "int32",
          type = "integer",
        },
        sortingCode = {
          description = "Optional. Additional, country-specific, sorting code. This is not used in most regions. Where it is used, the value is either a string like \"CEDEX\", optionally followed by a number (e.g. \"CEDEX 7\"), or just a number alone, representing the \"sector code\" (Jamaica), \"delivery area indicator\" (Malawi) or \"post office indicator\" (e.g. Côte d'Ivoire).",
          type = "string",
        },
        sublocality = {
          description = "Optional. Sublocality of the address. For example, this can be neighborhoods, boroughs, districts.",
          type = "string",
        },
      },
      type = "object",
    },
    RegisterDomainRequest = {
      description = "Request for the `RegisterDomain` method.",
      id = "RegisterDomainRequest",
      properties = {
        contactNotices = {
          description = "The list of contact notices that the caller acknowledges. The notices needed here depend on the values specified in `registration.contact_settings`.",
          items = {
            enum = {
              "CONTACT_NOTICE_UNSPECIFIED",
              "PUBLIC_CONTACT_DATA_ACKNOWLEDGEMENT",
            },
            enumDescriptions = {
              "The notice is undefined.",
              "Required when setting the `privacy` field of `ContactSettings` to `PUBLIC_CONTACT_DATA`, which exposes contact data publicly.",
            },
            type = "string",
          },
          type = "array",
        },
        domainNotices = {
          description = "The list of domain notices that you acknowledge. Call `RetrieveRegisterParameters` to see the notices that need acknowledgement.",
          items = {
            enum = {
              "DOMAIN_NOTICE_UNSPECIFIED",
              "HSTS_PRELOADED",
            },
            enumDescriptions = {
              "The notice is undefined.",
              "Indicates that the domain is preloaded on the HTTP Strict Transport Security list in browsers. Serving a website on such domain requires an SSL certificate. For details, see [how to get an SSL certificate](https://support.google.com/domains/answer/7638036).",
            },
            type = "string",
          },
          type = "array",
        },
        registration = {
          ["$ref"] = "Registration",
          description = "Required. The complete `Registration` resource to be created.",
        },
        validateOnly = {
          description = "When true, only validation is performed, without actually registering the domain. Follows: https://cloud.google.com/apis/design/design_patterns#request_validation",
          type = "boolean",
        },
        yearlyPrice = {
          ["$ref"] = "Money",
          description = "Required. Yearly price to register or renew the domain. The value that should be put here can be obtained from RetrieveRegisterParameters or SearchDomains calls.",
        },
      },
      type = "object",
    },
    RegisterParameters = {
      description = "Parameters required to register a new domain.",
      id = "RegisterParameters",
      properties = {
        availability = {
          description = "Indicates whether the domain is available for registration. This value is accurate when obtained by calling `RetrieveRegisterParameters`, but is approximate when obtained by calling `SearchDomains`.",
          enum = {
            "AVAILABILITY_UNSPECIFIED",
            "AVAILABLE",
            "UNAVAILABLE",
            "UNSUPPORTED",
            "UNKNOWN",
          },
          enumDescriptions = {
            "The availability is unspecified.",
            "The domain is available for registration.",
            "The domain is not available for registration. Generally this means it is already registered to another party.",
            "The domain is not currently supported by Cloud Domains, but may be available elsewhere.",
            "Cloud Domains is unable to determine domain availability, generally due to system maintenance at the domain name registry.",
          },
          type = "string",
        },
        domainName = {
          description = "The domain name. Unicode domain names are expressed in Punycode format.",
          type = "string",
        },
        domainNotices = {
          description = "Notices about special properties of the domain.",
          items = {
            enum = {
              "DOMAIN_NOTICE_UNSPECIFIED",
              "HSTS_PRELOADED",
            },
            enumDescriptions = {
              "The notice is undefined.",
              "Indicates that the domain is preloaded on the HTTP Strict Transport Security list in browsers. Serving a website on such domain requires an SSL certificate. For details, see [how to get an SSL certificate](https://support.google.com/domains/answer/7638036).",
            },
            type = "string",
          },
          type = "array",
        },
        supportedPrivacy = {
          description = "Contact privacy options that the domain supports.",
          items = {
            enum = {
              "CONTACT_PRIVACY_UNSPECIFIED",
              "PUBLIC_CONTACT_DATA",
              "PRIVATE_CONTACT_DATA",
              "REDACTED_CONTACT_DATA",
            },
            enumDescriptions = {
              "The contact privacy settings are undefined.",
              "All the data from `ContactSettings` is publicly available. When setting this option, you must also provide a `PUBLIC_CONTACT_DATA_ACKNOWLEDGEMENT` in the `contact_notices` field of the request.",
              "None of the data from `ContactSettings` is publicly available. Instead, proxy contact data is published for your domain. Email sent to the proxy email address is forwarded to the registrant's email address. Cloud Domains provides this privacy proxy service at no additional cost.",
              "Some data from `ContactSettings` is publicly available. The actual information redacted depends on the domain. For details, see [the registration privacy article](https://support.google.com/domains/answer/3251242).",
            },
            type = "string",
          },
          type = "array",
        },
        yearlyPrice = {
          ["$ref"] = "Money",
          description = "Price to register or renew the domain for one year.",
        },
      },
      type = "object",
    },
    Registration = {
      description = "The `Registration` resource facilitates managing and configuring domain name registrations. There are several ways to create a new `Registration` resource: To create a new `Registration` resource, find a suitable domain name by calling the `SearchDomains` method with a query to see available domain name options. After choosing a name, call `RetrieveRegisterParameters` to ensure availability and obtain information like pricing, which is needed to build a call to `RegisterDomain`. Another way to create a new `Registration` is to transfer an existing domain from another registrar. First, go to the current registrar to unlock the domain for transfer and retrieve the domain's transfer authorization code. Then call `RetrieveTransferParameters` to confirm that the domain is unlocked and to get values needed to build a call to `TransferDomain`. Finally, you can create a new `Registration` by importing an existing domain managed with [Google Domains](https://domains.google/). First, call `RetrieveImportableDomains` to list domains to which the calling user has sufficient access. Then call `ImportDomain` on any domain names you want to use with Cloud Domains.",
      id = "Registration",
      properties = {
        contactSettings = {
          ["$ref"] = "ContactSettings",
          description = "Required. Settings for contact information linked to the `Registration`. You cannot update these with the `UpdateRegistration` method. To update these settings, use the `ConfigureContactSettings` method.",
        },
        createTime = {
          description = "Output only. The creation timestamp of the `Registration` resource.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        dnsSettings = {
          ["$ref"] = "DnsSettings",
          description = "Settings controlling the DNS configuration of the `Registration`. You cannot update these with the `UpdateRegistration` method. To update these settings, use the `ConfigureDnsSettings` method.",
        },
        domainName = {
          description = "Required. Immutable. The domain name. Unicode domain names must be expressed in Punycode format.",
          type = "string",
        },
        expireTime = {
          description = "Output only. The expiration timestamp of the `Registration`.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        issues = {
          description = "Output only. The set of issues with the `Registration` that require attention.",
          items = {
            enum = {
              "ISSUE_UNSPECIFIED",
              "CONTACT_SUPPORT",
              "UNVERIFIED_EMAIL",
            },
            enumDescriptions = {
              "The issue is undefined.",
              "Contact the Cloud Support team to resolve a problem with this domain.",
              "[ICANN](https://icann.org/) requires verification of the email address in the `Registration`'s `contact_settings.registrant_contact` field. To verify the email address, follow the instructions in the email the `registrant_contact` receives following registration. If you do not complete email verification within 15 days of registration, the domain is suspended. To resend the verification email, call ConfigureContactSettings and provide the current `registrant_contact.email`.",
            },
            type = "string",
          },
          readOnly = true,
          type = "array",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "Set of labels associated with the `Registration`.",
          type = "object",
        },
        managementSettings = {
          ["$ref"] = "ManagementSettings",
          description = "Settings for management of the `Registration`, including renewal, billing, and transfer. You cannot update these with the `UpdateRegistration` method. To update these settings, use the `ConfigureManagementSettings` method.",
        },
        name = {
          description = "Output only. Name of the `Registration` resource, in the format `projects/*/locations/*/registrations/`.",
          readOnly = true,
          type = "string",
        },
        pendingContactSettings = {
          ["$ref"] = "ContactSettings",
          description = "Output only. Pending contact settings for the `Registration`. Updates to the `contact_settings` field that change its `registrant_contact` or `privacy` fields require email confirmation by the `registrant_contact` before taking effect. This field is set only if there are pending updates to the `contact_settings` that have not been confirmed. To confirm the changes, the `registrant_contact` must follow the instructions in the email they receive.",
          readOnly = true,
        },
        registerFailureReason = {
          description = "Output only. The reason the domain registration failed. Only set for domains in REGISTRATION_FAILED state.",
          enum = {
            "REGISTER_FAILURE_REASON_UNSPECIFIED",
            "REGISTER_FAILURE_REASON_UNKNOWN",
            "DOMAIN_NOT_AVAILABLE",
            "INVALID_CONTACTS",
          },
          enumDescriptions = {
            "Register failure unspecified.",
            "Registration failed for an unknown reason.",
            "The domain is not available for registration.",
            "The provided contact information was rejected.",
          },
          readOnly = true,
          type = "string",
        },
        state = {
          description = "Output only. The state of the `Registration`",
          enum = {
            "STATE_UNSPECIFIED",
            "REGISTRATION_PENDING",
            "REGISTRATION_FAILED",
            "TRANSFER_PENDING",
            "TRANSFER_FAILED",
            "IMPORT_PENDING",
            "ACTIVE",
            "SUSPENDED",
            "EXPORTED",
          },
          enumDescriptions = {
            "The state is undefined.",
            "The domain is being registered.",
            "The domain registration failed. You can delete resources in this state to allow registration to be retried.",
            "The domain is being transferred from another registrar to Cloud Domains.",
            "The attempt to transfer the domain from another registrar to Cloud Domains failed. You can delete resources in this state and retry the transfer.",
            "The domain is being imported from Google Domains to Cloud Domains.",
            "The domain is registered and operational. The domain renews automatically as long as it remains in this state.",
            "The domain is suspended and inoperative. For more details, see the `issues` field.",
            "The domain is no longer managed with Cloud Domains. It may have been transferred to another registrar or exported for management in [Google Domains](https://domains.google/). You can no longer update it with this API, and information shown about it may be stale. Domains in this state are not automatically renewed by Cloud Domains.",
          },
          readOnly = true,
          type = "string",
        },
        supportedPrivacy = {
          description = "Output only. Set of options for the `contact_settings.privacy` field that this `Registration` supports.",
          items = {
            enum = {
              "CONTACT_PRIVACY_UNSPECIFIED",
              "PUBLIC_CONTACT_DATA",
              "PRIVATE_CONTACT_DATA",
              "REDACTED_CONTACT_DATA",
            },
            enumDescriptions = {
              "The contact privacy settings are undefined.",
              "All the data from `ContactSettings` is publicly available. When setting this option, you must also provide a `PUBLIC_CONTACT_DATA_ACKNOWLEDGEMENT` in the `contact_notices` field of the request.",
              "None of the data from `ContactSettings` is publicly available. Instead, proxy contact data is published for your domain. Email sent to the proxy email address is forwarded to the registrant's email address. Cloud Domains provides this privacy proxy service at no additional cost.",
              "Some data from `ContactSettings` is publicly available. The actual information redacted depends on the domain. For details, see [the registration privacy article](https://support.google.com/domains/answer/3251242).",
            },
            type = "string",
          },
          readOnly = true,
          type = "array",
        },
        transferFailureReason = {
          description = "Output only. The reason the domain transfer failed. Only set for domains in TRANSFER_FAILED state.",
          enum = {
            "TRANSFER_FAILURE_REASON_UNSPECIFIED",
            "TRANSFER_FAILURE_REASON_UNKNOWN",
            "EMAIL_CONFIRMATION_FAILURE",
            "DOMAIN_NOT_REGISTERED",
            "DOMAIN_HAS_TRANSFER_LOCK",
            "INVALID_AUTHORIZATION_CODE",
            "TRANSFER_CANCELLED",
            "TRANSFER_REJECTED",
            "INVALID_REGISTRANT_EMAIL_ADDRESS",
            "DOMAIN_NOT_ELIGIBLE_FOR_TRANSFER",
            "TRANSFER_ALREADY_PENDING",
          },
          enumDescriptions = {
            "Transfer failure unspecified.",
            "Transfer failed for an unknown reason.",
            "An email confirmation sent to the user was rejected or expired.",
            "The domain is available for registration.",
            "The domain has a transfer lock with its current registrar which must be removed prior to transfer.",
            "The authorization code entered is not valid.",
            "The transfer was cancelled by the domain owner, current registrar, or TLD registry.",
            "The transfer was rejected by the current registrar. Contact the current registrar for more information.",
            "The registrant email address cannot be parsed from the domain's current public contact data.",
            "The domain is not eligible for transfer due requirements imposed by the current registrar or TLD registry.",
            "Another transfer is already pending for this domain. The existing transfer attempt must expire or be cancelled in order to proceed.",
          },
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    ResetAuthorizationCodeRequest = {
      description = "Request for the `ResetAuthorizationCode` method.",
      id = "ResetAuthorizationCodeRequest",
      properties = {},
      type = "object",
    },
    RetrieveImportableDomainsResponse = {
      description = "Response for the `RetrieveImportableDomains` method.",
      id = "RetrieveImportableDomainsResponse",
      properties = {
        domains = {
          description = "A list of domains that the calling user manages in Google Domains.",
          items = {
            ["$ref"] = "Domain",
          },
          type = "array",
        },
        nextPageToken = {
          description = "When present, there are more results to retrieve. Set `page_token` to this value on a subsequent call to get the next page of results.",
          type = "string",
        },
      },
      type = "object",
    },
    RetrieveRegisterParametersResponse = {
      description = "Response for the `RetrieveRegisterParameters` method.",
      id = "RetrieveRegisterParametersResponse",
      properties = {
        registerParameters = {
          ["$ref"] = "RegisterParameters",
          description = "Parameters to use when calling the `RegisterDomain` method.",
        },
      },
      type = "object",
    },
    RetrieveTransferParametersResponse = {
      description = "Response for the `RetrieveTransferParameters` method.",
      id = "RetrieveTransferParametersResponse",
      properties = {
        transferParameters = {
          ["$ref"] = "TransferParameters",
          description = "Parameters to use when calling the `TransferDomain` method.",
        },
      },
      type = "object",
    },
    SearchDomainsResponse = {
      description = "Response for the `SearchDomains` method.",
      id = "SearchDomainsResponse",
      properties = {
        registerParameters = {
          description = "Results of the domain name search.",
          items = {
            ["$ref"] = "RegisterParameters",
          },
          type = "array",
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
    TransferDomainRequest = {
      description = "Request for the `TransferDomain` method.",
      id = "TransferDomainRequest",
      properties = {
        authorizationCode = {
          ["$ref"] = "AuthorizationCode",
          description = "The domain's transfer authorization code. You can obtain this from the domain's current registrar.",
        },
        contactNotices = {
          description = "The list of contact notices that you acknowledge. The notices needed here depend on the values specified in `registration.contact_settings`.",
          items = {
            enum = {
              "CONTACT_NOTICE_UNSPECIFIED",
              "PUBLIC_CONTACT_DATA_ACKNOWLEDGEMENT",
            },
            enumDescriptions = {
              "The notice is undefined.",
              "Required when setting the `privacy` field of `ContactSettings` to `PUBLIC_CONTACT_DATA`, which exposes contact data publicly.",
            },
            type = "string",
          },
          type = "array",
        },
        registration = {
          ["$ref"] = "Registration",
          description = "Required. The complete `Registration` resource to be created. You can leave `registration.dns_settings` unset to import the domain's current DNS configuration from its current registrar. Use this option only if you are sure that the domain's current DNS service does not cease upon transfer, as is often the case for DNS services provided for free by the registrar.",
        },
        validateOnly = {
          description = "Validate the request without actually transferring the domain.",
          type = "boolean",
        },
        yearlyPrice = {
          ["$ref"] = "Money",
          description = "Required. Acknowledgement of the price to transfer or renew the domain for one year. Call `RetrieveTransferParameters` to obtain the price, which you must acknowledge.",
        },
      },
      type = "object",
    },
    TransferParameters = {
      description = "Parameters required to transfer a domain from another registrar.",
      id = "TransferParameters",
      properties = {
        currentRegistrar = {
          description = "The registrar that currently manages the domain.",
          type = "string",
        },
        currentRegistrarUri = {
          description = "The URL of the registrar that currently manages the domain.",
          type = "string",
        },
        domainName = {
          description = "The domain name. Unicode domain names are expressed in Punycode format.",
          type = "string",
        },
        nameServers = {
          description = "The name servers that currently store the configuration of the domain.",
          items = {
            type = "string",
          },
          type = "array",
        },
        supportedPrivacy = {
          description = "Contact privacy options that the domain supports.",
          items = {
            enum = {
              "CONTACT_PRIVACY_UNSPECIFIED",
              "PUBLIC_CONTACT_DATA",
              "PRIVATE_CONTACT_DATA",
              "REDACTED_CONTACT_DATA",
            },
            enumDescriptions = {
              "The contact privacy settings are undefined.",
              "All the data from `ContactSettings` is publicly available. When setting this option, you must also provide a `PUBLIC_CONTACT_DATA_ACKNOWLEDGEMENT` in the `contact_notices` field of the request.",
              "None of the data from `ContactSettings` is publicly available. Instead, proxy contact data is published for your domain. Email sent to the proxy email address is forwarded to the registrant's email address. Cloud Domains provides this privacy proxy service at no additional cost.",
              "Some data from `ContactSettings` is publicly available. The actual information redacted depends on the domain. For details, see [the registration privacy article](https://support.google.com/domains/answer/3251242).",
            },
            type = "string",
          },
          type = "array",
        },
        transferLockState = {
          description = "Indicates whether the domain is protected by a transfer lock. For a transfer to succeed, this must show `UNLOCKED`. To unlock a domain, go to its current registrar.",
          enum = {
            "TRANSFER_LOCK_STATE_UNSPECIFIED",
            "UNLOCKED",
            "LOCKED",
          },
          enumDescriptions = {
            "The state is unspecified.",
            "The domain is unlocked and can be transferred to another registrar.",
            "The domain is locked and cannot be transferred to another registrar.",
          },
          type = "string",
        },
        yearlyPrice = {
          ["$ref"] = "Money",
          description = "Price to transfer or renew the domain for one year.",
        },
      },
      type = "object",
    },
  },
  servicePath = "",
  title = "Cloud Domains API",
  version = "v1",
  version_module = true,
}
