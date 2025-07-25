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
  baseUrl = "https://iap.googleapis.com/",
  batchPath = "batch",
  canonicalName = "Cloud IAP",
  description = "Controls access to cloud applications running on Google Cloud Platform.",
  discoveryVersion = "v1",
  documentationLink = "https://cloud.google.com/iap",
  fullyEncodeReservedExpansion = true,
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "iap:v1",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://iap.mtls.googleapis.com/",
  name = "iap",
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
        brands = {
          methods = {
            create = {
              description = "Constructs a new OAuth brand for the project if one does not exist. The created brand is \"internal only\", meaning that OAuth clients created under it only accept requests from users who belong to the same Google Workspace organization as the project. The brand is created in an un-reviewed status. NOTE: The \"internal only\" status can be manually changed in the Google Cloud Console. Requires that a brand does not already exist for the project, and that the specified support email is owned by the caller.",
              flatPath = "v1/projects/{projectsId}/brands",
              httpMethod = "POST",
              id = "iap.projects.brands.create",
              parameterOrder = {
                "parent",
              },
              parameters = {
                parent = {
                  description = "Required. GCP Project number/id under which the brand is to be created. In the following format: projects/{project_number/id}.",
                  location = "path",
                  pattern = "^projects/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/brands",
              request = {
                ["$ref"] = "Brand",
              },
              response = {
                ["$ref"] = "Brand",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            get = {
              description = "Retrieves the OAuth brand of the project.",
              flatPath = "v1/projects/{projectsId}/brands/{brandsId}",
              httpMethod = "GET",
              id = "iap.projects.brands.get",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. Name of the brand to be fetched. In the following format: projects/{project_number/id}/brands/{brand}.",
                  location = "path",
                  pattern = "^projects/[^/]+/brands/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}",
              response = {
                ["$ref"] = "Brand",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            list = {
              description = "Lists the existing brands for the project.",
              flatPath = "v1/projects/{projectsId}/brands",
              httpMethod = "GET",
              id = "iap.projects.brands.list",
              parameterOrder = {
                "parent",
              },
              parameters = {
                parent = {
                  description = "Required. GCP Project number/id. In the following format: projects/{project_number/id}.",
                  location = "path",
                  pattern = "^projects/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/brands",
              response = {
                ["$ref"] = "ListBrandsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
          },
          resources = {
            identityAwareProxyClients = {
              methods = {
                create = {
                  description = "Creates an Identity Aware Proxy (IAP) OAuth client. The client is owned by IAP. Requires that the brand for the project exists and that it is set for internal-only use.",
                  flatPath = "v1/projects/{projectsId}/brands/{brandsId}/identityAwareProxyClients",
                  httpMethod = "POST",
                  id = "iap.projects.brands.identityAwareProxyClients.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    parent = {
                      description = "Required. Path to create the client in. In the following format: projects/{project_number/id}/brands/{brand}. The project must belong to a G Suite account.",
                      location = "path",
                      pattern = "^projects/[^/]+/brands/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/identityAwareProxyClients",
                  request = {
                    ["$ref"] = "IdentityAwareProxyClient",
                  },
                  response = {
                    ["$ref"] = "IdentityAwareProxyClient",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                delete = {
                  description = "Deletes an Identity Aware Proxy (IAP) OAuth client. Useful for removing obsolete clients, managing the number of clients in a given project, and cleaning up after tests. Requires that the client is owned by IAP.",
                  flatPath = "v1/projects/{projectsId}/brands/{brandsId}/identityAwareProxyClients/{identityAwareProxyClientsId}",
                  httpMethod = "DELETE",
                  id = "iap.projects.brands.identityAwareProxyClients.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Name of the Identity Aware Proxy client to be deleted. In the following format: projects/{project_number/id}/brands/{brand}/identityAwareProxyClients/{client_id}.",
                      location = "path",
                      pattern = "^projects/[^/]+/brands/[^/]+/identityAwareProxyClients/[^/]+$",
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
                  description = "Retrieves an Identity Aware Proxy (IAP) OAuth client. Requires that the client is owned by IAP.",
                  flatPath = "v1/projects/{projectsId}/brands/{brandsId}/identityAwareProxyClients/{identityAwareProxyClientsId}",
                  httpMethod = "GET",
                  id = "iap.projects.brands.identityAwareProxyClients.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Name of the Identity Aware Proxy client to be fetched. In the following format: projects/{project_number/id}/brands/{brand}/identityAwareProxyClients/{client_id}.",
                      location = "path",
                      pattern = "^projects/[^/]+/brands/[^/]+/identityAwareProxyClients/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "IdentityAwareProxyClient",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                list = {
                  description = "Lists the existing clients for the brand.",
                  flatPath = "v1/projects/{projectsId}/brands/{brandsId}/identityAwareProxyClients",
                  httpMethod = "GET",
                  id = "iap.projects.brands.identityAwareProxyClients.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    pageSize = {
                      description = "The maximum number of clients to return. The service may return fewer than this value. If unspecified, at most 100 clients will be returned. The maximum value is 1000; values above 1000 will be coerced to 1000.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "A page token, received from a previous `ListIdentityAwareProxyClients` call. Provide this to retrieve the subsequent page. When paginating, all other parameters provided to `ListIdentityAwareProxyClients` must match the call that provided the page token.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. Full brand path. In the following format: projects/{project_number/id}/brands/{brand}.",
                      location = "path",
                      pattern = "^projects/[^/]+/brands/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/identityAwareProxyClients",
                  response = {
                    ["$ref"] = "ListIdentityAwareProxyClientsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                resetSecret = {
                  description = "Resets an Identity Aware Proxy (IAP) OAuth client secret. Useful if the secret was compromised. Requires that the client is owned by IAP.",
                  flatPath = "v1/projects/{projectsId}/brands/{brandsId}/identityAwareProxyClients/{identityAwareProxyClientsId}:resetSecret",
                  httpMethod = "POST",
                  id = "iap.projects.brands.identityAwareProxyClients.resetSecret",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Name of the Identity Aware Proxy client to that will have its secret reset. In the following format: projects/{project_number/id}/brands/{brand}/identityAwareProxyClients/{client_id}.",
                      location = "path",
                      pattern = "^projects/[^/]+/brands/[^/]+/identityAwareProxyClients/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}:resetSecret",
                  request = {
                    ["$ref"] = "ResetIdentityAwareProxyClientSecretRequest",
                  },
                  response = {
                    ["$ref"] = "IdentityAwareProxyClient",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
              },
            },
          },
        },
        iap_tunnel = {
          resources = {
            locations = {
              resources = {
                destGroups = {
                  methods = {
                    create = {
                      description = "Creates a new TunnelDestGroup.",
                      flatPath = "v1/projects/{projectsId}/iap_tunnel/locations/{locationsId}/destGroups",
                      httpMethod = "POST",
                      id = "iap.projects.iap_tunnel.locations.destGroups.create",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        parent = {
                          description = "Required. Google Cloud Project ID and location. In the following format: `projects/{project_number/id}/iap_tunnel/locations/{location}`.",
                          location = "path",
                          pattern = "^projects/[^/]+/iap_tunnel/locations/[^/]+$",
                          required = true,
                          type = "string",
                        },
                        tunnelDestGroupId = {
                          description = "Required. The ID to use for the TunnelDestGroup, which becomes the final component of the resource name. This value must be 4-63 characters, and valid characters are `[a-z]-`.",
                          location = "query",
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/destGroups",
                      request = {
                        ["$ref"] = "TunnelDestGroup",
                      },
                      response = {
                        ["$ref"] = "TunnelDestGroup",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    delete = {
                      description = "Deletes a TunnelDestGroup.",
                      flatPath = "v1/projects/{projectsId}/iap_tunnel/locations/{locationsId}/destGroups/{destGroupsId}",
                      httpMethod = "DELETE",
                      id = "iap.projects.iap_tunnel.locations.destGroups.delete",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. Name of the TunnelDestGroup to delete. In the following format: `projects/{project_number/id}/iap_tunnel/locations/{location}/destGroups/{dest_group}`.",
                          location = "path",
                          pattern = "^projects/[^/]+/iap_tunnel/locations/[^/]+/destGroups/[^/]+$",
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
                      description = "Retrieves an existing TunnelDestGroup.",
                      flatPath = "v1/projects/{projectsId}/iap_tunnel/locations/{locationsId}/destGroups/{destGroupsId}",
                      httpMethod = "GET",
                      id = "iap.projects.iap_tunnel.locations.destGroups.get",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. Name of the TunnelDestGroup to be fetched. In the following format: `projects/{project_number/id}/iap_tunnel/locations/{location}/destGroups/{dest_group}`.",
                          location = "path",
                          pattern = "^projects/[^/]+/iap_tunnel/locations/[^/]+/destGroups/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}",
                      response = {
                        ["$ref"] = "TunnelDestGroup",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    list = {
                      description = "Lists the existing TunnelDestGroups. To group across all locations, use a `-` as the location ID. For example: `/v1/projects/123/iap_tunnel/locations/-/destGroups`",
                      flatPath = "v1/projects/{projectsId}/iap_tunnel/locations/{locationsId}/destGroups",
                      httpMethod = "GET",
                      id = "iap.projects.iap_tunnel.locations.destGroups.list",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        pageSize = {
                          description = "The maximum number of groups to return. The service might return fewer than this value. If unspecified, at most 100 groups are returned. The maximum value is 1000; values above 1000 are coerced to 1000.",
                          format = "int32",
                          location = "query",
                          type = "integer",
                        },
                        pageToken = {
                          description = "A page token, received from a previous `ListTunnelDestGroups` call. Provide this to retrieve the subsequent page. When paginating, all other parameters provided to `ListTunnelDestGroups` must match the call that provided the page token.",
                          location = "query",
                          type = "string",
                        },
                        parent = {
                          description = "Required. Google Cloud Project ID and location. In the following format: `projects/{project_number/id}/iap_tunnel/locations/{location}`. A `-` can be used for the location to group across all locations.",
                          location = "path",
                          pattern = "^projects/[^/]+/iap_tunnel/locations/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/destGroups",
                      response = {
                        ["$ref"] = "ListTunnelDestGroupsResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    patch = {
                      description = "Updates a TunnelDestGroup.",
                      flatPath = "v1/projects/{projectsId}/iap_tunnel/locations/{locationsId}/destGroups/{destGroupsId}",
                      httpMethod = "PATCH",
                      id = "iap.projects.iap_tunnel.locations.destGroups.patch",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. Immutable. Identifier for the TunnelDestGroup. Must be unique within the project and contain only lower case letters (a-z) and dashes (-).",
                          location = "path",
                          pattern = "^projects/[^/]+/iap_tunnel/locations/[^/]+/destGroups/[^/]+$",
                          required = true,
                          type = "string",
                        },
                        updateMask = {
                          description = "A field mask that specifies which IAP settings to update. If omitted, then all of the settings are updated. See https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#fieldmask",
                          format = "google-fieldmask",
                          location = "query",
                          type = "string",
                        },
                      },
                      path = "v1/{+name}",
                      request = {
                        ["$ref"] = "TunnelDestGroup",
                      },
                      response = {
                        ["$ref"] = "TunnelDestGroup",
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
    v1 = {
      methods = {
        getIamPolicy = {
          description = "Gets the access control policy for an Identity-Aware Proxy protected resource. More information about managing access via IAP can be found at: https://cloud.google.com/iap/docs/managing-access#managing_access_via_the_api",
          flatPath = "v1/{v1Id}:getIamPolicy",
          httpMethod = "POST",
          id = "iap.getIamPolicy",
          parameterOrder = {
            "resource",
          },
          parameters = {
            resource = {
              description = "REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
              location = "path",
              pattern = "^.*$",
              required = true,
              type = "string",
            },
          },
          path = "v1/{+resource}:getIamPolicy",
          request = {
            ["$ref"] = "GetIamPolicyRequest",
          },
          response = {
            ["$ref"] = "Policy",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
        getIapSettings = {
          description = "Gets the IAP settings on a particular IAP protected resource.",
          flatPath = "v1/{v1Id}:iapSettings",
          httpMethod = "GET",
          id = "iap.getIapSettings",
          parameterOrder = {
            "name",
          },
          parameters = {
            name = {
              description = "Required. The resource name for which to retrieve the settings. Authorization: Requires the `getSettings` permission for the associated resource.",
              location = "path",
              pattern = "^.*$",
              required = true,
              type = "string",
            },
          },
          path = "v1/{+name}:iapSettings",
          response = {
            ["$ref"] = "IapSettings",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
        setIamPolicy = {
          description = "Sets the access control policy for an Identity-Aware Proxy protected resource. Replaces any existing policy. More information about managing access via IAP can be found at: https://cloud.google.com/iap/docs/managing-access#managing_access_via_the_api",
          flatPath = "v1/{v1Id}:setIamPolicy",
          httpMethod = "POST",
          id = "iap.setIamPolicy",
          parameterOrder = {
            "resource",
          },
          parameters = {
            resource = {
              description = "REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
              location = "path",
              pattern = "^.*$",
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
          description = "Returns permissions that a caller has on the Identity-Aware Proxy protected resource. More information about managing access via IAP can be found at: https://cloud.google.com/iap/docs/managing-access#managing_access_via_the_api",
          flatPath = "v1/{v1Id}:testIamPermissions",
          httpMethod = "POST",
          id = "iap.testIamPermissions",
          parameterOrder = {
            "resource",
          },
          parameters = {
            resource = {
              description = "REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
              location = "path",
              pattern = "^.*$",
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
        updateIapSettings = {
          description = "Updates the IAP settings on a particular IAP protected resource. It replaces all fields unless the `update_mask` is set.",
          flatPath = "v1/{v1Id}:iapSettings",
          httpMethod = "PATCH",
          id = "iap.updateIapSettings",
          parameterOrder = {
            "name",
          },
          parameters = {
            name = {
              description = "Required. The resource name of the IAP protected resource.",
              location = "path",
              pattern = "^.*$",
              required = true,
              type = "string",
            },
            updateMask = {
              description = "The field mask specifying which IAP settings should be updated. If omitted, the all of the settings are updated. See https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#fieldmask",
              format = "google-fieldmask",
              location = "query",
              type = "string",
            },
          },
          path = "v1/{+name}:iapSettings",
          request = {
            ["$ref"] = "IapSettings",
          },
          response = {
            ["$ref"] = "IapSettings",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
      },
    },
  },
  revision = "20221209",
  rootUrl = "https://iap.googleapis.com/",
  schemas = {
    AccessDeniedPageSettings = {
      description = "Custom content configuration for access denied page. IAP allows customers to define a custom URI to use as the error page when access is denied to users. If IAP prevents access to this page, the default IAP error page will be displayed instead.",
      id = "AccessDeniedPageSettings",
      properties = {
        accessDeniedPageUri = {
          description = "The URI to be redirected to when access is denied.",
          type = "string",
        },
        generateTroubleshootingUri = {
          description = "Whether to generate a troubleshooting URL on access denied events to this application.",
          type = "boolean",
        },
        remediationTokenGenerationEnabled = {
          description = "Whether to generate remediation token on access denied events to this application.",
          type = "boolean",
        },
      },
      type = "object",
    },
    AccessSettings = {
      description = "Access related settings for IAP protected apps.",
      id = "AccessSettings",
      properties = {
        allowedDomainsSettings = {
          ["$ref"] = "AllowedDomainsSettings",
          description = "Settings to configure and enable allowed domains.",
        },
        corsSettings = {
          ["$ref"] = "CorsSettings",
          description = "Configuration to allow cross-origin requests via IAP.",
        },
        gcipSettings = {
          ["$ref"] = "GcipSettings",
          description = "GCIP claims and endpoint configurations for 3p identity providers.",
        },
        oauthSettings = {
          ["$ref"] = "OAuthSettings",
          description = "Settings to configure IAP's OAuth behavior.",
        },
        policyDelegationSettings = {
          ["$ref"] = "PolicyDelegationSettings",
          description = "Settings to configure Policy delegation for apps hosted in tenant projects. INTERNAL_ONLY.",
        },
        reauthSettings = {
          ["$ref"] = "ReauthSettings",
          description = "Settings to configure reauthentication policies in IAP.",
        },
      },
      type = "object",
    },
    AllowedDomainsSettings = {
      description = "Configuration for IAP allowed domains. Lets you to restrict access to an app and allow access to only the domains that you list.",
      id = "AllowedDomainsSettings",
      properties = {
        domains = {
          description = "List of trusted domains.",
          items = {
            type = "string",
          },
          type = "array",
        },
        enable = {
          description = "Configuration for customers to opt in for the feature.",
          type = "boolean",
        },
      },
      type = "object",
    },
    ApplicationSettings = {
      description = "Wrapper over application specific settings for IAP.",
      id = "ApplicationSettings",
      properties = {
        accessDeniedPageSettings = {
          ["$ref"] = "AccessDeniedPageSettings",
          description = "Customization for Access Denied page.",
        },
        attributePropagationSettings = {
          ["$ref"] = "AttributePropagationSettings",
          description = "Settings to configure attribute propagation to customer application. These attributes may come from SAML/SessionStorage integration, or other sources in the future.",
        },
        cookieDomain = {
          description = "The Domain value to set for cookies generated by IAP. This value is not validated by the API, but will be ignored at runtime if invalid.",
          type = "string",
        },
        csmSettings = {
          ["$ref"] = "CsmSettings",
          description = "Settings to configure IAP's behavior for a service mesh.",
        },
      },
      type = "object",
    },
    AttributePropagationSettings = {
      description = "Configuration for propagating attributes to customer applications protected by IAP. These attributes may be SAML attributes from a 3rd party IdP, or potentially other sources in the future.",
      id = "AttributePropagationSettings",
      properties = {
        enable = {
          description = "Whether the provided attribute propagation settings should be evaluated on user requests. If set to true, attributes returned from the expression will be propagated in the set output credentials.",
          type = "boolean",
        },
        expression = {
          description = "Raw string CEL expression. Expression should be of the form attributes.saml_attributes.filter(attribute, attribute.name in [{attribute_list}]). An example expression to select the attributes \"my_attr\" and \"other_attr\": attributes.saml_attributes.filter(attribute, attribute.name in [\"my_attr\", \"other_attr\"])",
          type = "string",
        },
        outputCredentials = {
          description = "Which output credentials attributes selected by the CEL expression should be propagated in. All attributes will be fully duplicated in each selected output credential.",
          items = {
            enum = {
              "OUTPUT_CREDENTIALS_UNSPECIFIED",
              "HEADER",
              "JWT",
              "RCTOKEN",
            },
            enumDescriptions = {
              "No output credential. This is unsupported in IAP, there must be an output credential.",
              "Propagate attributes in the headers with \"x-goog-iap-attr-\" prefix.",
              "Propagate attributes in the JWT of the form: \"additional_claims\": { \"my_attribute\": [\"value1\", \"value2\"] }",
              "Propagate attributes in the RCToken of the form: \"additional_claims\": { \"my_attribute\": [\"value1\", \"value2\"] }",
            },
            type = "string",
          },
          type = "array",
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
    Brand = {
      description = "OAuth brand data. NOTE: Only contains a portion of the data that describes a brand.",
      id = "Brand",
      properties = {
        applicationTitle = {
          description = "Application name displayed on OAuth consent screen.",
          type = "string",
        },
        name = {
          description = "Output only. Identifier of the brand. NOTE: GCP project number achieves the same brand identification purpose as only one brand per project can be created.",
          readOnly = true,
          type = "string",
        },
        orgInternalOnly = {
          description = "Output only. Whether the brand is only intended for usage inside the G Suite organization only.",
          readOnly = true,
          type = "boolean",
        },
        supportEmail = {
          description = "Support email displayed on the OAuth consent screen.",
          type = "string",
        },
      },
      type = "object",
    },
    CorsSettings = {
      description = "Allows customers to configure HTTP request paths that'll allow HTTP OPTIONS call to bypass authentication and authorization.",
      id = "CorsSettings",
      properties = {
        allowHttpOptions = {
          description = "Configuration to allow HTTP OPTIONS calls to skip authorization. If undefined, IAP will not apply any special logic to OPTIONS requests.",
          type = "boolean",
        },
      },
      type = "object",
    },
    CsmSettings = {
      description = "Configuration for RCToken generated for service mesh workloads protected by IAP. RCToken are IAP generated JWTs that can be verified at the application. The RCToken is primarily used for service mesh deployments, and can be scoped to a single mesh by configuring the audience field accordingly.",
      id = "CsmSettings",
      properties = {
        rctokenAud = {
          description = "Audience claim set in the generated RCToken. This value is not validated by IAP.",
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
    GcipSettings = {
      description = "Allows customers to configure tenant_id for GCIP instance per-app.",
      id = "GcipSettings",
      properties = {
        loginPageUri = {
          description = "Login page URI associated with the GCIP tenants. Typically, all resources within the same project share the same login page, though it could be overridden at the sub resource level.",
          type = "string",
        },
        tenantIds = {
          description = "GCIP tenant ids that are linked to the IAP resource. tenant_ids could be a string beginning with a number character to indicate authenticating with GCIP tenant flow, or in the format of _ to indicate authenticating with GCIP agent flow. If agent flow is used, tenant_ids should only contain one single element, while for tenant flow, tenant_ids can contain multiple elements.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GetIamPolicyRequest = {
      description = "Request message for `GetIamPolicy` method.",
      id = "GetIamPolicyRequest",
      properties = {
        options = {
          ["$ref"] = "GetPolicyOptions",
          description = "OPTIONAL: A `GetPolicyOptions` object for specifying options to `GetIamPolicy`.",
        },
      },
      type = "object",
    },
    GetPolicyOptions = {
      description = "Encapsulates settings provided to GetIamPolicy.",
      id = "GetPolicyOptions",
      properties = {
        requestedPolicyVersion = {
          description = "Optional. The maximum policy version that will be used to format the policy. Valid values are 0, 1, and 3. Requests specifying an invalid value will be rejected. Requests for policies with any conditional role bindings must specify version 3. Policies with no conditional role bindings may specify any valid value or leave the field unset. The policy in the response might use the policy version that you specified, or it might use a lower policy version. For example, if you specify version 3, but the policy has no conditional role bindings, the response uses version 1. To learn which resources support conditions in their IAM policies, see the [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    IapSettings = {
      description = "The IAP configurable settings.",
      id = "IapSettings",
      properties = {
        accessSettings = {
          ["$ref"] = "AccessSettings",
          description = "Top level wrapper for all access related setting in IAP",
        },
        applicationSettings = {
          ["$ref"] = "ApplicationSettings",
          description = "Top level wrapper for all application related settings in IAP",
        },
        name = {
          description = "Required. The resource name of the IAP protected resource.",
          type = "string",
        },
      },
      type = "object",
    },
    IdentityAwareProxyClient = {
      description = "Contains the data that describes an Identity Aware Proxy owned client.",
      id = "IdentityAwareProxyClient",
      properties = {
        displayName = {
          description = "Human-friendly name given to the OAuth client.",
          type = "string",
        },
        name = {
          description = "Output only. Unique identifier of the OAuth client.",
          readOnly = true,
          type = "string",
        },
        secret = {
          description = "Output only. Client secret of the OAuth client.",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    ListBrandsResponse = {
      description = "Response message for ListBrands.",
      id = "ListBrandsResponse",
      properties = {
        brands = {
          description = "Brands existing in the project.",
          items = {
            ["$ref"] = "Brand",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ListIdentityAwareProxyClientsResponse = {
      description = "Response message for ListIdentityAwareProxyClients.",
      id = "ListIdentityAwareProxyClientsResponse",
      properties = {
        identityAwareProxyClients = {
          description = "Clients existing in the brand.",
          items = {
            ["$ref"] = "IdentityAwareProxyClient",
          },
          type = "array",
        },
        nextPageToken = {
          description = "A token, which can be send as `page_token` to retrieve the next page. If this field is omitted, there are no subsequent pages.",
          type = "string",
        },
      },
      type = "object",
    },
    ListTunnelDestGroupsResponse = {
      description = "The response from ListTunnelDestGroups.",
      id = "ListTunnelDestGroupsResponse",
      properties = {
        nextPageToken = {
          description = "A token that you can send as `page_token` to retrieve the next page. If this field is omitted, there are no subsequent pages.",
          type = "string",
        },
        tunnelDestGroups = {
          description = "TunnelDestGroup existing in the project.",
          items = {
            ["$ref"] = "TunnelDestGroup",
          },
          type = "array",
        },
      },
      type = "object",
    },
    OAuthSettings = {
      description = "Configuration for OAuth login&consent flow behavior as well as for OAuth Credentials.",
      id = "OAuthSettings",
      properties = {
        loginHint = {
          description = "Domain hint to send as hd=? parameter in OAuth request flow. Enables redirect to primary IDP by skipping Google's login screen. https://developers.google.com/identity/protocols/OpenIDConnect#hd-param Note: IAP does not verify that the id token's hd claim matches this value since access behavior is managed by IAM policies.",
          type = "string",
        },
      },
      type = "object",
    },
    Policy = {
      description = "An Identity and Access Management (IAM) policy, which specifies access controls for Google Cloud resources. A `Policy` is a collection of `bindings`. A `binding` binds one or more `members`, or principals, to a single `role`. Principals can be user accounts, service accounts, Google groups, and domains (such as G Suite). A `role` is a named list of permissions; each `role` can be an IAM predefined role or a user-created custom role. For some types of Google Cloud resources, a `binding` can also specify a `condition`, which is a logical expression that allows access to a resource only if the expression evaluates to `true`. A condition can add constraints based on attributes of the request, the resource, or both. To learn which resources support conditions in their IAM policies, see the [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies). **JSON example:** { \"bindings\": [ { \"role\": \"roles/resourcemanager.organizationAdmin\", \"members\": [ \"user:mike@example.com\", \"group:admins@example.com\", \"domain:google.com\", \"serviceAccount:my-project-id@appspot.gserviceaccount.com\" ] }, { \"role\": \"roles/resourcemanager.organizationViewer\", \"members\": [ \"user:eve@example.com\" ], \"condition\": { \"title\": \"expirable access\", \"description\": \"Does not grant access after Sep 2020\", \"expression\": \"request.time < timestamp('2020-10-01T00:00:00.000Z')\", } } ], \"etag\": \"BwWWja0YfJA=\", \"version\": 3 } **YAML example:** bindings: - members: - user:mike@example.com - group:admins@example.com - domain:google.com - serviceAccount:my-project-id@appspot.gserviceaccount.com role: roles/resourcemanager.organizationAdmin - members: - user:eve@example.com role: roles/resourcemanager.organizationViewer condition: title: expirable access description: Does not grant access after Sep 2020 expression: request.time < timestamp('2020-10-01T00:00:00.000Z') etag: BwWWja0YfJA= version: 3 For a description of IAM and its features, see the [IAM documentation](https://cloud.google.com/iam/docs/).",
      id = "Policy",
      properties = {
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
    PolicyDelegationSettings = {
      description = "PolicyDelegationConfig allows google-internal teams to use IAP for apps hosted in a tenant project. Using these settings, the app can delegate permission check to happen against the linked customer project. This is only ever supposed to be used by google internal teams, hence the restriction on the proto.",
      id = "PolicyDelegationSettings",
      properties = {
        iamPermission = {
          description = "Permission to check in IAM.",
          type = "string",
        },
        iamServiceName = {
          description = "The DNS name of the service (e.g. \"resourcemanager.googleapis.com\"). This should be the domain name part of the full resource names (see https://aip.dev/122#full-resource-names), which is usually the same as IamServiceSpec.service of the service where the resource type is defined.",
          type = "string",
        },
        policyName = {
          ["$ref"] = "PolicyName",
          description = "Policy name to be checked",
        },
        resource = {
          ["$ref"] = "Resource",
          description = "IAM resource to check permission on",
        },
      },
      type = "object",
    },
    PolicyName = {
      description = "An internal name for an IAM policy, based on the resource to which the policy applies. Not to be confused with a resource's external full resource name. For more information on this distinction, see go/iam-full-resource-names.",
      id = "PolicyName",
      properties = {
        id = {
          description = "Identifies an instance of the type. ID format varies by type. The ID format is defined in the IAM .service file that defines the type, either in path_mapping or in a comment.",
          type = "string",
        },
        region = {
          description = "For Cloud IAM: The location of the Policy. Must be empty or \"global\" for Policies owned by global IAM. Must name a region from prodspec/cloud-iam-cloudspec for Regional IAM Policies, see go/iam-faq#where-is-iam-currently-deployed. For Local IAM: This field should be set to \"local\".",
          type = "string",
        },
        type = {
          description = "Resource type. Types are defined in IAM's .service files. Valid values for type might be 'gce', 'gcs', 'project', 'account' etc.",
          type = "string",
        },
      },
      type = "object",
    },
    ReauthSettings = {
      description = "Configuration for IAP reauthentication policies.",
      id = "ReauthSettings",
      properties = {
        maxAge = {
          description = "Reauth session lifetime, how long before a user has to reauthenticate again.",
          format = "google-duration",
          type = "string",
        },
        method = {
          description = "Reauth method requested.",
          enum = {
            "METHOD_UNSPECIFIED",
            "LOGIN",
            "SECURE_KEY",
            "ENROLLED_SECOND_FACTORS",
          },
          enumDescriptions = {
            "Reauthentication disabled.",
            "Prompts the user to log in again.",
            "User must use their secure key 2nd factor device.",
            "User can use any enabled 2nd factor.",
          },
          type = "string",
        },
        policyType = {
          description = "How IAP determines the effective policy in cases of hierarchial policies. Policies are merged from higher in the hierarchy to lower in the hierarchy.",
          enum = {
            "POLICY_TYPE_UNSPECIFIED",
            "MINIMUM",
            "DEFAULT",
          },
          enumDescriptions = {
            "Default value. This value is unused.",
            "This policy acts as a minimum to other policies, lower in the hierarchy. Effective policy may only be the same or stricter.",
            "This policy acts as a default if no other reauth policy is set.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    ResetIdentityAwareProxyClientSecretRequest = {
      description = "The request sent to ResetIdentityAwareProxyClientSecret.",
      id = "ResetIdentityAwareProxyClientSecretRequest",
      properties = {},
      type = "object",
    },
    Resource = {
      id = "Resource",
      properties = {
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "The service defined labels of the resource on which the conditions will be evaluated. The semantics - including the key names - are vague to IAM. If the effective condition has a reference to a `resource.labels[foo]` construct, IAM consults with this map to retrieve the values associated with `foo` key for Conditions evaluation. If the provided key is not found in the labels map, the condition would evaluate to false. This field is in limited use. If your intended use case is not expected to express resource.labels attribute in IAM Conditions, leave this field empty. Before planning on using this attribute please: * Read go/iam-conditions-labels-comm and ensure your service can meet the data availability and management requirements. * Talk to iam-conditions-eng@ about your use case.",
          type = "object",
        },
        name = {
          description = "Name of the resource on which conditions will be evaluated. Must use the Relative Resource Name of the resource, which is the URI path of the resource without the leading \"/\". Examples are \"projects/_/buckets/[BUCKET-ID]\" for storage buckets or \"projects/[PROJECT-ID]/global/firewalls/[FIREWALL-ID]\" for a firewall. This field is required for evaluating conditions with rules on resource names. For a `list` permission check, the resource.name value must be set to the parent resource. If the parent resource is a project, this field should be left unset.",
          type = "string",
        },
        service = {
          description = "The name of the service this resource belongs to. It is configured using the official_service_name of the Service as defined in service configurations under //configs/cloud/resourcetypes. For example, the official_service_name of cloud resource manager service is set as 'cloudresourcemanager.googleapis.com' according to //configs/cloud/resourcetypes/google/cloud/resourcemanager/prod.yaml",
          type = "string",
        },
        type = {
          description = "The public resource type name of the resource on which conditions will be evaluated. It is configured using the official_name of the ResourceType as defined in service configurations under //configs/cloud/resourcetypes. For example, the official_name for GCP projects is set as 'cloudresourcemanager.googleapis.com/Project' according to //configs/cloud/resourcetypes/google/cloud/resourcemanager/prod.yaml For details see go/iam-conditions-integration-guide.",
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
    TunnelDestGroup = {
      description = "A TunnelDestGroup.",
      id = "TunnelDestGroup",
      properties = {
        cidrs = {
          description = "Unordered list. List of CIDRs that this group applies to.",
          items = {
            type = "string",
          },
          type = "array",
        },
        fqdns = {
          description = "Unordered list. List of FQDNs that this group applies to.",
          items = {
            type = "string",
          },
          type = "array",
        },
        name = {
          description = "Required. Immutable. Identifier for the TunnelDestGroup. Must be unique within the project and contain only lower case letters (a-z) and dashes (-).",
          type = "string",
        },
      },
      type = "object",
    },
  },
  servicePath = "",
  title = "Cloud Identity-Aware Proxy API",
  version = "v1",
  version_module = true,
}
