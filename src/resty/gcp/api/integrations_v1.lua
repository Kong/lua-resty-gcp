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
  baseUrl = "https://integrations.googleapis.com/",
  batchPath = "batch",
  canonicalName = "Integrations",
  description = "",
  discoveryVersion = "v1",
  documentationLink = "https://cloud.google.com/application-integration",
  fullyEncodeReservedExpansion = true,
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "integrations:v1",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://integrations.mtls.googleapis.com/",
  name = "integrations",
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
    callback = {
      methods = {
        generateToken = {
          description = "Receives the auth code and auth config id to combine that with the client id and secret to retrieve access tokens from the token endpoint. Returns either a success or error message when it's done.",
          flatPath = "v1/callback:generateToken",
          httpMethod = "GET",
          id = "integrations.callback.generateToken",
          parameterOrder = {},
          parameters = {
            code = {
              description = "The auth code for the given request",
              location = "query",
              type = "string",
            },
            gcpProjectId = {
              description = "The gcp project id of the request",
              location = "query",
              type = "string",
            },
            product = {
              description = "Which product sends the request",
              enum = {
                "UNSPECIFIED_PRODUCT",
                "IP",
                "APIGEE",
                "SECURITY",
              },
              enumDescriptions = {
                "",
                "",
                "",
                "",
              },
              location = "query",
              type = "string",
            },
            redirectUri = {
              description = "Redirect uri of the auth code request",
              location = "query",
              type = "string",
            },
            state = {
              description = "The auth config id for the given request",
              location = "query",
              type = "string",
            },
          },
          path = "v1/callback:generateToken",
          response = {
            ["$ref"] = "GoogleCloudIntegrationsV1alphaGenerateTokenResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
      },
    },
    connectorPlatformRegions = {
      methods = {
        enumerate = {
          description = "Enumerates the regions for which Connector Platform is provisioned.",
          flatPath = "v1/connectorPlatformRegions:enumerate",
          httpMethod = "GET",
          id = "integrations.connectorPlatformRegions.enumerate",
          parameterOrder = {},
          parameters = {},
          path = "v1/connectorPlatformRegions:enumerate",
          response = {
            ["$ref"] = "GoogleCloudIntegrationsV1alphaEnumerateConnectorPlatformRegionsResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
      },
    },
    projects = {
      methods = {
        getClientmetadata = {
          description = "Gets the metadata info for the requested client",
          flatPath = "v1/projects/{projectsId}/clientmetadata",
          httpMethod = "GET",
          id = "integrations.projects.getClientmetadata",
          parameterOrder = {
            "parent",
          },
          parameters = {
            parent = {
              description = "Required. Required: The ID of the GCP Project to be provisioned.",
              location = "path",
              pattern = "^projects/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "v1/{+parent}/clientmetadata",
          response = {
            ["$ref"] = "GoogleCloudIntegrationsV1alphaGetClientMetadataResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
      },
      resources = {
        locations = {
          methods = {
            getClients = {
              description = "Gets the client configuration for the given project and location resource name",
              flatPath = "v1/projects/{projectsId}/locations/{locationsId}/clients",
              httpMethod = "GET",
              id = "integrations.projects.locations.getClients",
              parameterOrder = {
                "parent",
              },
              parameters = {
                parent = {
                  description = "Required. Required: The ID of the GCP Project to be provisioned.",
                  location = "path",
                  pattern = "^projects/[^/]+/locations/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/clients",
              response = {
                ["$ref"] = "GoogleCloudIntegrationsV1alphaGetClientResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            listTaskEntities = {
              description = "This is a UI only method and will be moved away. Returns a list of common tasks.",
              flatPath = "v1/projects/{projectsId}/locations/{locationsId}:listTaskEntities",
              httpMethod = "GET",
              id = "integrations.projects.locations.listTaskEntities",
              parameterOrder = {
                "parent",
              },
              parameters = {
                parent = {
                  description = "Required. The location resource of the request. This is not going to be used but preserve the field for future.",
                  location = "path",
                  pattern = "^projects/[^/]+/locations/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}:listTaskEntities",
              response = {
                ["$ref"] = "GoogleCloudIntegrationsV1alphaListTaskEntitiesResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
          },
          resources = {
            appsScriptProjects = {
              methods = {
                create = {
                  description = "Creates an Apps Script project.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/appsScriptProjects",
                  httpMethod = "POST",
                  id = "integrations.projects.locations.appsScriptProjects.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    parent = {
                      description = "Required. The project that the executed integration belongs to.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/appsScriptProjects",
                  request = {
                    ["$ref"] = "GoogleCloudIntegrationsV1alphaCreateAppsScriptProjectRequest",
                  },
                  response = {
                    ["$ref"] = "GoogleCloudIntegrationsV1alphaCreateAppsScriptProjectResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                link = {
                  description = "Links a existing Apps Script project.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/appsScriptProjects:link",
                  httpMethod = "POST",
                  id = "integrations.projects.locations.appsScriptProjects.link",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    parent = {
                      description = "Required. The project that the executed integration belongs to.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/appsScriptProjects:link",
                  request = {
                    ["$ref"] = "GoogleCloudIntegrationsV1alphaLinkAppsScriptProjectRequest",
                  },
                  response = {
                    ["$ref"] = "GoogleCloudIntegrationsV1alphaLinkAppsScriptProjectResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
              },
            },
            authConfigs = {
              methods = {
                create = {
                  description = "Creates an auth config record. Fetch corresponding credentials for specific auth types, e.g. access token for OAuth 2.0, JWT token for JWT. Encrypt the auth config with Cloud KMS and store the encrypted credentials in Spanner. Returns the encrypted auth config.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/authConfigs",
                  httpMethod = "POST",
                  id = "integrations.projects.locations.authConfigs.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    ["clientCertificate.encryptedPrivateKey"] = {
                      description = "The ssl certificate encoded in PEM format. This string must include the begin header and end footer lines. For example, -----BEGIN CERTIFICATE----- MIICTTCCAbagAwIBAgIJAPT0tSKNxan/MA0GCSqGSIb3DQEBCwUAMCoxFzAVBgNV BAoTDkdvb2dsZSBURVNUSU5HMQ8wDQYDVQQDEwZ0ZXN0Q0EwHhcNMTUwMTAxMDAw MDAwWhcNMjUwMTAxMDAwMDAwWjAuMRcwFQYDVQQKEw5Hb29nbGUgVEVTVElORzET MBEGA1UEAwwKam9lQGJhbmFuYTCBnzANBgkqhkiG9w0BAQEFAAOBjQAwgYkCgYEA vDYFgMgxi5W488d9J7UpCInl0NXmZQpJDEHE4hvkaRlH7pnC71H0DLt0/3zATRP1 JzY2+eqBmbGl4/sgZKYv8UrLnNyQNUTsNx1iZAfPUflf5FwgVsai8BM0pUciq1NB xD429VFcrGZNucvFLh72RuRFIKH8WUpiK/iZNFkWhZ0CAwEAAaN3MHUwDgYDVR0P AQH/BAQDAgWgMB0GA1UdJQQWMBQGCCsGAQUFBwMBBggrBgEFBQcDAjAMBgNVHRMB Af8EAjAAMBkGA1UdDgQSBBCVgnFBCWgL/iwCqnGrhTPQMBsGA1UdIwQUMBKAEKey Um2o4k2WiEVA0ldQvNYwDQYJKoZIhvcNAQELBQADgYEAYK986R4E3L1v+Q6esBtW JrUwA9UmJRSQr0N5w3o9XzarU37/bkjOP0Fw0k/A6Vv1n3vlciYfBFaBIam1qRHr 5dMsYf4CZS6w50r7hyzqyrwDoyNxkLnd2PdcHT/sym1QmflsjEs7pejtnohO6N2H wQW6M0H7Zt8claGRla4fKkg= -----END CERTIFICATE-----",
                      location = "query",
                      type = "string",
                    },
                    ["clientCertificate.passphrase"] = {
                      description = "'passphrase' should be left unset if private key is not encrypted. Note that 'passphrase' is not the password for web server, but an extra layer of security to protected private key.",
                      location = "query",
                      type = "string",
                    },
                    ["clientCertificate.sslCertificate"] = {
                      description = "The ssl certificate encoded in PEM format. This string must include the begin header and end footer lines. For example, -----BEGIN CERTIFICATE----- MIICTTCCAbagAwIBAgIJAPT0tSKNxan/MA0GCSqGSIb3DQEBCwUAMCoxFzAVBgNV BAoTDkdvb2dsZSBURVNUSU5HMQ8wDQYDVQQDEwZ0ZXN0Q0EwHhcNMTUwMTAxMDAw MDAwWhcNMjUwMTAxMDAwMDAwWjAuMRcwFQYDVQQKEw5Hb29nbGUgVEVTVElORzET MBEGA1UEAwwKam9lQGJhbmFuYTCBnzANBgkqhkiG9w0BAQEFAAOBjQAwgYkCgYEA vDYFgMgxi5W488d9J7UpCInl0NXmZQpJDEHE4hvkaRlH7pnC71H0DLt0/3zATRP1 JzY2+eqBmbGl4/sgZKYv8UrLnNyQNUTsNx1iZAfPUflf5FwgVsai8BM0pUciq1NB xD429VFcrGZNucvFLh72RuRFIKH8WUpiK/iZNFkWhZ0CAwEAAaN3MHUwDgYDVR0P AQH/BAQDAgWgMB0GA1UdJQQWMBQGCCsGAQUFBwMBBggrBgEFBQcDAjAMBgNVHRMB Af8EAjAAMBkGA1UdDgQSBBCVgnFBCWgL/iwCqnGrhTPQMBsGA1UdIwQUMBKAEKey Um2o4k2WiEVA0ldQvNYwDQYJKoZIhvcNAQELBQADgYEAYK986R4E3L1v+Q6esBtW JrUwA9UmJRSQr0N5w3o9XzarU37/bkjOP0Fw0k/A6Vv1n3vlciYfBFaBIam1qRHr 5dMsYf4CZS6w50r7hyzqyrwDoyNxkLnd2PdcHT/sym1QmflsjEs7pejtnohO6N2H wQW6M0H7Zt8claGRla4fKkg= -----END CERTIFICATE-----",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. \"projects/{project}/locations/{location}\" format.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/authConfigs",
                  request = {
                    ["$ref"] = "GoogleCloudIntegrationsV1alphaAuthConfig",
                  },
                  response = {
                    ["$ref"] = "GoogleCloudIntegrationsV1alphaAuthConfig",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                delete = {
                  description = "Deletes an auth config.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/authConfigs/{authConfigsId}",
                  httpMethod = "DELETE",
                  id = "integrations.projects.locations.authConfigs.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The name that is associated with the AuthConfig.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/authConfigs/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "GoogleProtobufEmpty",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                get = {
                  description = "Gets a complete auth config. If the auth config doesn't exist, Code.NOT_FOUND exception will be thrown. Returns the decrypted auth config.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/authConfigs/{authConfigsId}",
                  httpMethod = "GET",
                  id = "integrations.projects.locations.authConfigs.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The name that is associated with the AuthConfig.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/authConfigs/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "GoogleCloudIntegrationsV1alphaAuthConfig",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                list = {
                  description = "Lists all auth configs that match the filter. Restrict to auth configs belong to the current client only.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/authConfigs",
                  httpMethod = "GET",
                  id = "integrations.projects.locations.authConfigs.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    filter = {
                      description = "Filtering as supported in https://developers.google.com/authorized-buyers/apis/guides/v2/list-filters.",
                      location = "query",
                      type = "string",
                    },
                    pageSize = {
                      description = "The size of entries in the response. If unspecified, defaults to 100.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "The token returned in the previous response.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The client, which owns this collection of AuthConfigs.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    readMask = {
                      description = "The mask which specifies fields that need to be returned in the AuthConfig's response.",
                      format = "google-fieldmask",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/authConfigs",
                  response = {
                    ["$ref"] = "GoogleCloudIntegrationsV1alphaListAuthConfigsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                patch = {
                  description = "Updates an auth config. If credential is updated, fetch the encrypted auth config from Spanner, decrypt with Cloud KMS key, update the credential fields, re-encrypt with Cloud KMS key and update the Spanner record. For other fields, directly update the Spanner record. Returns the encrypted auth config.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/authConfigs/{authConfigsId}",
                  httpMethod = "PATCH",
                  id = "integrations.projects.locations.authConfigs.patch",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    ["clientCertificate.encryptedPrivateKey"] = {
                      description = "The ssl certificate encoded in PEM format. This string must include the begin header and end footer lines. For example, -----BEGIN CERTIFICATE----- MIICTTCCAbagAwIBAgIJAPT0tSKNxan/MA0GCSqGSIb3DQEBCwUAMCoxFzAVBgNV BAoTDkdvb2dsZSBURVNUSU5HMQ8wDQYDVQQDEwZ0ZXN0Q0EwHhcNMTUwMTAxMDAw MDAwWhcNMjUwMTAxMDAwMDAwWjAuMRcwFQYDVQQKEw5Hb29nbGUgVEVTVElORzET MBEGA1UEAwwKam9lQGJhbmFuYTCBnzANBgkqhkiG9w0BAQEFAAOBjQAwgYkCgYEA vDYFgMgxi5W488d9J7UpCInl0NXmZQpJDEHE4hvkaRlH7pnC71H0DLt0/3zATRP1 JzY2+eqBmbGl4/sgZKYv8UrLnNyQNUTsNx1iZAfPUflf5FwgVsai8BM0pUciq1NB xD429VFcrGZNucvFLh72RuRFIKH8WUpiK/iZNFkWhZ0CAwEAAaN3MHUwDgYDVR0P AQH/BAQDAgWgMB0GA1UdJQQWMBQGCCsGAQUFBwMBBggrBgEFBQcDAjAMBgNVHRMB Af8EAjAAMBkGA1UdDgQSBBCVgnFBCWgL/iwCqnGrhTPQMBsGA1UdIwQUMBKAEKey Um2o4k2WiEVA0ldQvNYwDQYJKoZIhvcNAQELBQADgYEAYK986R4E3L1v+Q6esBtW JrUwA9UmJRSQr0N5w3o9XzarU37/bkjOP0Fw0k/A6Vv1n3vlciYfBFaBIam1qRHr 5dMsYf4CZS6w50r7hyzqyrwDoyNxkLnd2PdcHT/sym1QmflsjEs7pejtnohO6N2H wQW6M0H7Zt8claGRla4fKkg= -----END CERTIFICATE-----",
                      location = "query",
                      type = "string",
                    },
                    ["clientCertificate.passphrase"] = {
                      description = "'passphrase' should be left unset if private key is not encrypted. Note that 'passphrase' is not the password for web server, but an extra layer of security to protected private key.",
                      location = "query",
                      type = "string",
                    },
                    ["clientCertificate.sslCertificate"] = {
                      description = "The ssl certificate encoded in PEM format. This string must include the begin header and end footer lines. For example, -----BEGIN CERTIFICATE----- MIICTTCCAbagAwIBAgIJAPT0tSKNxan/MA0GCSqGSIb3DQEBCwUAMCoxFzAVBgNV BAoTDkdvb2dsZSBURVNUSU5HMQ8wDQYDVQQDEwZ0ZXN0Q0EwHhcNMTUwMTAxMDAw MDAwWhcNMjUwMTAxMDAwMDAwWjAuMRcwFQYDVQQKEw5Hb29nbGUgVEVTVElORzET MBEGA1UEAwwKam9lQGJhbmFuYTCBnzANBgkqhkiG9w0BAQEFAAOBjQAwgYkCgYEA vDYFgMgxi5W488d9J7UpCInl0NXmZQpJDEHE4hvkaRlH7pnC71H0DLt0/3zATRP1 JzY2+eqBmbGl4/sgZKYv8UrLnNyQNUTsNx1iZAfPUflf5FwgVsai8BM0pUciq1NB xD429VFcrGZNucvFLh72RuRFIKH8WUpiK/iZNFkWhZ0CAwEAAaN3MHUwDgYDVR0P AQH/BAQDAgWgMB0GA1UdJQQWMBQGCCsGAQUFBwMBBggrBgEFBQcDAjAMBgNVHRMB Af8EAjAAMBkGA1UdDgQSBBCVgnFBCWgL/iwCqnGrhTPQMBsGA1UdIwQUMBKAEKey Um2o4k2WiEVA0ldQvNYwDQYJKoZIhvcNAQELBQADgYEAYK986R4E3L1v+Q6esBtW JrUwA9UmJRSQr0N5w3o9XzarU37/bkjOP0Fw0k/A6Vv1n3vlciYfBFaBIam1qRHr 5dMsYf4CZS6w50r7hyzqyrwDoyNxkLnd2PdcHT/sym1QmflsjEs7pejtnohO6N2H wQW6M0H7Zt8claGRla4fKkg= -----END CERTIFICATE-----",
                      location = "query",
                      type = "string",
                    },
                    name = {
                      description = "Resource name of the SFDC instance projects/{project}/locations/{location}/authConfigs/{authConfig}.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/authConfigs/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    updateMask = {
                      description = "Field mask specifying the fields in the above AuthConfig that have been modified and need to be updated.",
                      format = "google-fieldmask",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  request = {
                    ["$ref"] = "GoogleCloudIntegrationsV1alphaAuthConfig",
                  },
                  response = {
                    ["$ref"] = "GoogleCloudIntegrationsV1alphaAuthConfig",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
              },
            },
            certificates = {
              methods = {
                create = {
                  description = "Creates a new certificate. The certificate will be registered to the trawler service and will be encrypted using cloud KMS and stored in Spanner Returns the certificate.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/certificates",
                  httpMethod = "POST",
                  id = "integrations.projects.locations.certificates.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    parent = {
                      description = "Required. \"projects/{project}/locations/{location}\" format.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/certificates",
                  request = {
                    ["$ref"] = "GoogleCloudIntegrationsV1alphaCertificate",
                  },
                  response = {
                    ["$ref"] = "GoogleCloudIntegrationsV1alphaCertificate",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                delete = {
                  description = "Delete a certificate",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/certificates/{certificatesId}",
                  httpMethod = "DELETE",
                  id = "integrations.projects.locations.certificates.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The name that is associated with the Certificate.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/certificates/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "GoogleProtobufEmpty",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                get = {
                  description = "Get a certificates in the specified project.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/certificates/{certificatesId}",
                  httpMethod = "GET",
                  id = "integrations.projects.locations.certificates.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The certificate to retrieve. Format: projects/{project}/locations/{location}/certificates/{certificate}",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/certificates/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "GoogleCloudIntegrationsV1alphaCertificate",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                list = {
                  description = "List all the certificates that match the filter. Restrict to certificate of current client only.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/certificates",
                  httpMethod = "GET",
                  id = "integrations.projects.locations.certificates.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    filter = {
                      description = "Filtering as supported in https://developers.google.com/authorized-buyers/apis/guides/v2/list-filters.",
                      location = "query",
                      type = "string",
                    },
                    pageSize = {
                      description = "The size of entries in the response. If unspecified, defaults to 100.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "The token returned in the previous response.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The client, which owns this collection of Certificates.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    readMask = {
                      description = "The mask which specifies fields that need to be returned in the Certificate's response.",
                      format = "google-fieldmask",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/certificates",
                  response = {
                    ["$ref"] = "GoogleCloudIntegrationsV1alphaListCertificatesResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                patch = {
                  description = "Updates the certificate by id. If new certificate file is updated, it will register with the trawler service, re-encrypt with cloud KMS and update the Spanner record. Other fields will directly update the Spanner record. Returns the Certificate.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/certificates/{certificatesId}",
                  httpMethod = "PATCH",
                  id = "integrations.projects.locations.certificates.patch",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Output only. Auto generated primary key",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/certificates/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    updateMask = {
                      description = "Field mask specifying the fields in the above Certificate that have been modified and need to be updated.",
                      format = "google-fieldmask",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  request = {
                    ["$ref"] = "GoogleCloudIntegrationsV1alphaCertificate",
                  },
                  response = {
                    ["$ref"] = "GoogleCloudIntegrationsV1alphaCertificate",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
              },
            },
            clients = {
              methods = {
                deprovision = {
                  description = "Perform the deprovisioning steps to disable a user GCP project to use IP and purge all related data in a wipeout-compliant way.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/clients:deprovision",
                  httpMethod = "POST",
                  id = "integrations.projects.locations.clients.deprovision",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    parent = {
                      description = "Required. Required: The ID of the GCP Project to be deprovisioned.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/clients:deprovision",
                  request = {
                    ["$ref"] = "GoogleCloudIntegrationsV1alphaDeprovisionClientRequest",
                  },
                  response = {
                    ["$ref"] = "GoogleProtobufEmpty",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                provision = {
                  description = "Perform the provisioning steps to enable a user GCP project to use IP. If GCP project already registered on IP end via Apigee Integration, provisioning will fail.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/clients:provision",
                  httpMethod = "POST",
                  id = "integrations.projects.locations.clients.provision",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    parent = {
                      description = "Required. Required: The ID of the GCP Project to be provisioned.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/clients:provision",
                  request = {
                    ["$ref"] = "GoogleCloudIntegrationsV1alphaProvisionClientRequest",
                  },
                  response = {
                    ["$ref"] = "GoogleProtobufEmpty",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
              },
            },
            cloudFunctions = {
              methods = {
                create = {
                  description = "Creates an cloud function project.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/cloudFunctions",
                  httpMethod = "POST",
                  id = "integrations.projects.locations.cloudFunctions.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    parent = {
                      description = "Required. The project that the executed integration belongs to.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/cloudFunctions",
                  request = {
                    ["$ref"] = "GoogleCloudIntegrationsV1alphaCreateCloudFunctionRequest",
                  },
                  response = {
                    ["$ref"] = "GoogleCloudIntegrationsV1alphaCreateCloudFunctionResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
              },
            },
            connections = {
              methods = {
                getConnectionSchemaMetadata = {
                  description = "Lists the available entities and actions associated with a Connection.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/connections/{connectionsId}/connectionSchemaMetadata",
                  httpMethod = "GET",
                  id = "integrations.projects.locations.connections.getConnectionSchemaMetadata",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. ConnectionSchemaMetadata name. Format: projects/{project}/locations/{location}/connections/{connection}/connectionSchemaMetadata",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/connections/[^/]+/connectionSchemaMetadata$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "GoogleCloudIntegrationsV1alphaConnectionSchemaMetadata",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                list = {
                  description = "Lists Connections in a given project and location.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/connections",
                  httpMethod = "GET",
                  id = "integrations.projects.locations.connections.list",
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
                  },
                  path = "v1/{+parent}/connections",
                  response = {
                    ["$ref"] = "GoogleCloudIntegrationsV1alphaListConnectionsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
              },
              resources = {
                runtimeActionSchemas = {
                  methods = {
                    list = {
                      description = "Lists the JSON schemas for the inputs and outputs of actions, filtered by action name.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/connections/{connectionsId}/runtimeActionSchemas",
                      httpMethod = "GET",
                      id = "integrations.projects.locations.connections.runtimeActionSchemas.list",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        filter = {
                          description = "Filter. Only the action field with literal equality operator is supported.",
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
                          description = "Required. Parent resource of RuntimeActionSchema. Format: projects/{project}/locations/{location}/connections/{connection}",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/connections/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/runtimeActionSchemas",
                      response = {
                        ["$ref"] = "GoogleCloudIntegrationsV1alphaListRuntimeActionSchemasResponse",
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
                      description = "Lists the JSON schemas for the properties of runtime entities, filtered by entity name.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/connections/{connectionsId}/runtimeEntitySchemas",
                      httpMethod = "GET",
                      id = "integrations.projects.locations.connections.runtimeEntitySchemas.list",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        filter = {
                          description = "Filter. Only the entity field with literal equality operator is supported.",
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
                          description = "Required. Parent resource of RuntimeEntitySchema. Format: projects/{project}/locations/{location}/connections/{connection}",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/connections/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/runtimeEntitySchemas",
                      response = {
                        ["$ref"] = "GoogleCloudIntegrationsV1alphaListRuntimeEntitySchemasResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                  },
                },
              },
            },
            integrations = {
              methods = {
                delete = {
                  description = "Delete the selected integration and all versions inside",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/integrations/{integrationsId}",
                  httpMethod = "DELETE",
                  id = "integrations.projects.locations.integrations.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The location resource of the request.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/integrations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "GoogleProtobufEmpty",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                execute = {
                  description = "Executes integrations synchronously by passing the trigger id in the request body. The request is not returned until the requested executions are either fulfilled or experienced an error. If the integration name is not specified (passing `-`), all of the associated integration under the given trigger_id will be executed. Otherwise only the specified integration for the given `trigger_id` is executed. This is helpful for execution the integration from UI.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/integrations/{integrationsId}:execute",
                  httpMethod = "POST",
                  id = "integrations.projects.locations.integrations.execute",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The integration resource name.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/integrations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}:execute",
                  request = {
                    ["$ref"] = "GoogleCloudIntegrationsV1alphaExecuteIntegrationsRequest",
                  },
                  response = {
                    ["$ref"] = "GoogleCloudIntegrationsV1alphaExecuteIntegrationsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                list = {
                  description = "Returns the list of all integrations in the specified project.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/integrations",
                  httpMethod = "GET",
                  id = "integrations.projects.locations.integrations.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    filter = {
                      description = "Filter on fields of IntegrationVersion. Fields can be compared with literal values by use of \":\" (containment), \"=\" (equality), \">\" (greater), \"<\" (less than), >=\" (greater than or equal to), \"<=\" (less than or equal to), and \"!=\" (inequality) operators. Negation, conjunction, and disjunction are written using NOT, AND, and OR keywords. For example, organization_id=\\\"1\\\" AND state=ACTIVE AND description:\"test\". Filtering cannot be performed on repeated fields like `task_config`.",
                      location = "query",
                      type = "string",
                    },
                    orderBy = {
                      description = "The results would be returned in order you specified here. Supported sort keys are: Descending sort order by \"last_modified_time\", \"created_time\", \"snapshot_number\". Ascending sort order by the integration name.",
                      location = "query",
                      type = "string",
                    },
                    pageSize = {
                      description = "The page size for the resquest.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "The page token for the resquest.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. Project and location from which the integrations should be listed. Format: projects/{project}",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/integrations",
                  response = {
                    ["$ref"] = "GoogleCloudIntegrationsV1alphaListIntegrationsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                monitorexecutionstats = {
                  description = "Get execution stats",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/integrations/{integrationsId}:monitorexecutionstats",
                  httpMethod = "POST",
                  id = "integrations.projects.locations.integrations.monitorexecutionstats",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    parent = {
                      description = "Required. The parent resource name: {parent=projects/*/locations/*}.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/integrations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}:monitorexecutionstats",
                  request = {
                    ["$ref"] = "GoogleCloudIntegrationsV1alphaMonitorExecutionStatsRequest",
                  },
                  response = {
                    ["$ref"] = "GoogleCloudIntegrationsV1alphaMonitorExecutionStatsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                schedule = {
                  description = "Schedules an integration for execution by passing the trigger id and the scheduled time in the request body.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/integrations/{integrationsId}:schedule",
                  httpMethod = "POST",
                  id = "integrations.projects.locations.integrations.schedule",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "The integration resource name.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/integrations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}:schedule",
                  request = {
                    ["$ref"] = "GoogleCloudIntegrationsV1alphaScheduleIntegrationsRequest",
                  },
                  response = {
                    ["$ref"] = "GoogleCloudIntegrationsV1alphaScheduleIntegrationsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                test = {
                  description = "Execute the integration in draft state",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/integrations/{integrationsId}:test",
                  httpMethod = "POST",
                  id = "integrations.projects.locations.integrations.test",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Output only. Auto-generated primary key.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/integrations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}:test",
                  request = {
                    ["$ref"] = "GoogleCloudIntegrationsV1alphaTestIntegrationsRequest",
                  },
                  response = {
                    ["$ref"] = "GoogleCloudIntegrationsV1alphaTestIntegrationsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
              },
              resources = {
                executions = {
                  methods = {
                    download = {
                      description = "Download the execution.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/integrations/{integrationsId}/executions/{executionsId}:download",
                      httpMethod = "GET",
                      id = "integrations.projects.locations.integrations.executions.download",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The execution resource name. Format: projects/{gcp_project_id}/locations/{location}/products/{product}/integrations/{integration_id}/executions/{execution_id}",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/integrations/[^/]+/executions/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}:download",
                      response = {
                        ["$ref"] = "GoogleCloudIntegrationsV1alphaDownloadExecutionResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    get = {
                      description = "Get an execution in the specified project.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/integrations/{integrationsId}/executions/{executionsId}",
                      httpMethod = "GET",
                      id = "integrations.projects.locations.integrations.executions.get",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The execution resource name. Format: projects/{gcp_project_id}/locations/{location}/products/{product}/integrations/{integration_id}/executions/{execution_id}",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/integrations/[^/]+/executions/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}",
                      response = {
                        ["$ref"] = "GoogleCloudIntegrationsV1alphaExecution",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    list = {
                      description = "Lists the results of all the integration executions. The response includes the same information as the [execution log](https://cloud.google.com/application-integration/docs/viewing-logs) in the Integration UI.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/integrations/{integrationsId}/executions",
                      httpMethod = "GET",
                      id = "integrations.projects.locations.integrations.executions.list",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        filter = {
                          description = "Optional. Standard filter field, we support filtering on all fields in EventExecutionParamIndexes table. All fields support for EQUALS, in additional: CreateTimestamp support for LESS_THAN, GREATER_THAN ParameterKey, ParameterValue, ParameterType support for HAS For example: \"parameter_value\" HAS \\\"parameter1\\\" Also supports operators like AND, OR, NOT For example, trigger_id=\\\"id1\\\" AND event_execution_state=\\\"FAILED\\\"",
                          location = "query",
                          type = "string",
                        },
                        ["filterParams.customFilter"] = {
                          description = "Optional user-provided custom filter.",
                          location = "query",
                          type = "string",
                        },
                        ["filterParams.endTime"] = {
                          description = "End timestamp.",
                          format = "int64",
                          location = "query",
                          type = "string",
                        },
                        ["filterParams.eventStatuses"] = {
                          description = "List of possible event statuses.",
                          location = "query",
                          repeated = true,
                          type = "string",
                        },
                        ["filterParams.executionId"] = {
                          description = "Execution id.",
                          location = "query",
                          type = "string",
                        },
                        ["filterParams.parameterKey"] = {
                          description = "Param key. DEPRECATED. User parameter_pair_key instead.",
                          location = "query",
                          type = "string",
                        },
                        ["filterParams.parameterPairKey"] = {
                          description = "Param key in the key value pair filter.",
                          location = "query",
                          type = "string",
                        },
                        ["filterParams.parameterPairValue"] = {
                          description = "Param value in the key value pair filter.",
                          location = "query",
                          type = "string",
                        },
                        ["filterParams.parameterType"] = {
                          description = "Param type.",
                          location = "query",
                          type = "string",
                        },
                        ["filterParams.parameterValue"] = {
                          description = "Param value. DEPRECATED. User parameter_pair_value instead.",
                          location = "query",
                          type = "string",
                        },
                        ["filterParams.startTime"] = {
                          description = "Start timestamp.",
                          format = "int64",
                          location = "query",
                          type = "string",
                        },
                        ["filterParams.taskStatuses"] = {
                          description = "List of possible task statuses.",
                          location = "query",
                          repeated = true,
                          type = "string",
                        },
                        ["filterParams.workflowName"] = {
                          description = "Workflow name.",
                          location = "query",
                          type = "string",
                        },
                        orderBy = {
                          description = "Optional. The results would be returned in order you specified here. Currently supporting \"last_modified_time\" and \"create_time\".",
                          location = "query",
                          type = "string",
                        },
                        pageSize = {
                          description = "Optional. The size of entries in the response.",
                          format = "int32",
                          location = "query",
                          type = "integer",
                        },
                        pageToken = {
                          description = "Optional. The token returned in the previous response.",
                          location = "query",
                          type = "string",
                        },
                        parent = {
                          description = "Required. The parent resource name of the integration execution.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/integrations/[^/]+$",
                          required = true,
                          type = "string",
                        },
                        readMask = {
                          description = "Optional. View mask for the response data. If set, only the field specified will be returned as part of the result. If not set, all fields in event execution info will be filled and returned.",
                          format = "google-fieldmask",
                          location = "query",
                          type = "string",
                        },
                        refreshAcl = {
                          description = "Optional. If true, the service will use the most recent acl information to list event execution infos and renew the acl cache. Note that fetching the most recent acl is synchronous, so it will increase RPC call latency.",
                          location = "query",
                          type = "boolean",
                        },
                        truncateParams = {
                          description = "Optional. If true, the service will truncate the params to only keep the first 1000 characters of string params and empty the executions in order to make response smaller. Only works for UI and when the params fields are not filtered out.",
                          location = "query",
                          type = "boolean",
                        },
                      },
                      path = "v1/{+parent}/executions",
                      response = {
                        ["$ref"] = "GoogleCloudIntegrationsV1alphaListExecutionsResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                  },
                  resources = {
                    suspensions = {
                      methods = {
                        lift = {
                          description = "* Lifts suspension for advanced suspension task. Fetch corresponding suspension with provided suspension Id, resolve suspension, and set up suspension result for the Suspension Task.",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/integrations/{integrationsId}/executions/{executionsId}/suspensions/{suspensionsId}:lift",
                          httpMethod = "POST",
                          id = "integrations.projects.locations.integrations.executions.suspensions.lift",
                          parameterOrder = {
                            "name",
                          },
                          parameters = {
                            name = {
                              description = "Required. The resource that the suspension belongs to. \"projects/{project}/locations/{location}/products/{product}/integrations/{integration}/executions/{execution}/suspensions/{suspenion}\" format.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/integrations/[^/]+/executions/[^/]+/suspensions/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v1/{+name}:lift",
                          request = {
                            ["$ref"] = "GoogleCloudIntegrationsV1alphaLiftSuspensionRequest",
                          },
                          response = {
                            ["$ref"] = "GoogleCloudIntegrationsV1alphaLiftSuspensionResponse",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                          },
                        },
                        list = {
                          description = "* Lists suspensions associated with a specific execution. Only those with permissions to resolve the relevant suspensions will be able to view them.",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/integrations/{integrationsId}/executions/{executionsId}/suspensions",
                          httpMethod = "GET",
                          id = "integrations.projects.locations.integrations.executions.suspensions.list",
                          parameterOrder = {
                            "parent",
                          },
                          parameters = {
                            filter = {
                              description = "Standard filter field.",
                              location = "query",
                              type = "string",
                            },
                            orderBy = {
                              description = "Field name to order by.",
                              location = "query",
                              type = "string",
                            },
                            pageSize = {
                              description = "Maximum number of entries in the response.",
                              format = "int32",
                              location = "query",
                              type = "integer",
                            },
                            pageToken = {
                              description = "Token to retrieve a specific page.",
                              location = "query",
                              type = "string",
                            },
                            parent = {
                              description = "Required. projects/{gcp_project_id}/locations/{location}/products/{product}/integrations/{integration_name}/executions/{execution_name}",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/integrations/[^/]+/executions/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v1/{+parent}/suspensions",
                          response = {
                            ["$ref"] = "GoogleCloudIntegrationsV1alphaListSuspensionsResponse",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                          },
                        },
                        resolve = {
                          description = "* Resolves (lifts/rejects) any number of suspensions. If the integration is already running, only the status of the suspension is updated. Otherwise, the suspended integration will begin execution again.",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/integrations/{integrationsId}/executions/{executionsId}/suspensions/{suspensionsId}:resolve",
                          httpMethod = "POST",
                          id = "integrations.projects.locations.integrations.executions.suspensions.resolve",
                          parameterOrder = {
                            "name",
                          },
                          parameters = {
                            name = {
                              description = "Required. projects/{gcp_project_id}/locations/{location}/products/{product}/integrations/{integration_name}/executions/{execution_name}/suspensions/{suspension_id}",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/integrations/[^/]+/executions/[^/]+/suspensions/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v1/{+name}:resolve",
                          request = {
                            ["$ref"] = "GoogleCloudIntegrationsV1alphaResolveSuspensionRequest",
                          },
                          response = {
                            ["$ref"] = "GoogleCloudIntegrationsV1alphaResolveSuspensionResponse",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                          },
                        },
                      },
                    },
                  },
                },
                executionsnapshots = {
                  methods = {
                    list = {
                      description = "Lists the snapshots of a given integration executions. This RPC is not being used.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/integrations/{integrationsId}/executionsnapshots",
                      httpMethod = "GET",
                      id = "integrations.projects.locations.integrations.executionsnapshots.list",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        filter = {
                          description = "Currently supports filter by `execution_info_id` or `execution_snapshot_id`.",
                          location = "query",
                          type = "string",
                        },
                        pageSize = {
                          description = "Number of entries to be returned in a page.",
                          format = "int32",
                          location = "query",
                          type = "integer",
                        },
                        pageToken = {
                          description = "The token used to retrieve the next page results.",
                          location = "query",
                          type = "string",
                        },
                        parent = {
                          description = "Required. The parent resource name of the integration execution.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/integrations/[^/]+$",
                          required = true,
                          type = "string",
                        },
                        readMask = {
                          description = "View mask for the response data. If set, only the field specified will be returned as part of the result. If not set, all fields in event execution snapshot will be filled and returned.",
                          format = "google-fieldmask",
                          location = "query",
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/executionsnapshots",
                      response = {
                        ["$ref"] = "GoogleCloudIntegrationsV1alphaListExecutionSnapshotsResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                  },
                },
                versions = {
                  methods = {
                    archive = {
                      description = "Soft-deletes the integration. Changes the status of the integration to ARCHIVED. If the integration being ARCHIVED is tagged as \"HEAD\", the tag is removed from this snapshot and set to the previous non-ARCHIVED snapshot. The PUBLISH_REQUESTED, DUE_FOR_DELETION tags are removed too. This RPC throws an exception if the version being archived is DRAFT, and if the `locked_by` user is not the same as the user performing the Archive. Audit fields updated include last_modified_timestamp, last_modified_by. Any existing lock is released when Archiving a integration. Currently, there is no unarchive mechanism.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/integrations/{integrationsId}/versions/{versionsId}:archive",
                      httpMethod = "POST",
                      id = "integrations.projects.locations.integrations.versions.archive",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The version to archive. Format: projects/{project}/locations/{location}/integrations/{integration}/versions/{version}",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/integrations/[^/]+/versions/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}:archive",
                      request = {
                        ["$ref"] = "GoogleCloudIntegrationsV1alphaArchiveIntegrationVersionRequest",
                      },
                      response = {
                        ["$ref"] = "GoogleCloudIntegrationsV1alphaArchiveIntegrationVersionResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    create = {
                      description = "Create a integration with a draft version in the specified project.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/integrations/{integrationsId}/versions",
                      httpMethod = "POST",
                      id = "integrations.projects.locations.integrations.versions.create",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        newIntegration = {
                          description = "Set this flag to true, if draft version is to be created for a brand new integration. False, if the request is for an existing integration. For backward compatibility reasons, even if this flag is set to `false` and no existing integration is found, a new draft integration will still be created.",
                          location = "query",
                          type = "boolean",
                        },
                        parent = {
                          description = "Required. The parent resource where this version will be created. Format: projects/{project}/locations/{location}/integrations/{integration}",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/integrations/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/versions",
                      request = {
                        ["$ref"] = "GoogleCloudIntegrationsV1alphaIntegrationVersion",
                      },
                      response = {
                        ["$ref"] = "GoogleCloudIntegrationsV1alphaIntegrationVersion",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    deactivate = {
                      description = "Sets the status of the ACTIVE integration to SNAPSHOT with a new tag \"PREVIOUSLY_PUBLISHED\" after validating it. The \"HEAD\" and \"PUBLISH_REQUESTED\" tags do not change. This RPC throws an exception if the version being snapshot is not ACTIVE. Audit fields added include action, action_by, action_timestamp.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/integrations/{integrationsId}/versions/{versionsId}:deactivate",
                      httpMethod = "POST",
                      id = "integrations.projects.locations.integrations.versions.deactivate",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The version to deactivate. Format: projects/{project}/locations/{location}/integrations/{integration}/versions/{version}",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/integrations/[^/]+/versions/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}:deactivate",
                      request = {
                        ["$ref"] = "GoogleCloudIntegrationsV1alphaDeactivateIntegrationVersionRequest",
                      },
                      response = {
                        ["$ref"] = "GoogleCloudIntegrationsV1alphaDeactivateIntegrationVersionResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    delete = {
                      description = "Soft-deletes the integration. Changes the status of the integration to ARCHIVED. If the integration being ARCHIVED is tagged as \"HEAD\", the tag is removed from this snapshot and set to the previous non-ARCHIVED snapshot. The PUBLISH_REQUESTED, DUE_FOR_DELETION tags are removed too. This RPC throws an exception if the version being deleted is DRAFT, and if the `locked_by` user is not the same as the user performing the Delete. Audit fields updated include last_modified_timestamp, last_modified_by. Any existing lock is released when Deleting a integration. Currently, there is no undelete mechanism.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/integrations/{integrationsId}/versions/{versionsId}",
                      httpMethod = "DELETE",
                      id = "integrations.projects.locations.integrations.versions.delete",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The version to delete. Format: projects/{project}/locations/{location}/integrations/{integration}/versions/{version}",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/integrations/[^/]+/versions/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}",
                      response = {
                        ["$ref"] = "GoogleProtobufEmpty",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    download = {
                      description = "Downloads an integration. Retrieves the `IntegrationVersion` for a given `integration_id` and returns the response as a string.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/integrations/{integrationsId}/versions/{versionsId}:download",
                      httpMethod = "GET",
                      id = "integrations.projects.locations.integrations.versions.download",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        fileFormat = {
                          description = "File format for download request.",
                          enum = {
                            "FILE_FORMAT_UNSPECIFIED",
                            "JSON",
                            "YAML",
                          },
                          enumDescriptions = {
                            "Unspecified file format",
                            "JSON File Format",
                            "YAML File Format",
                          },
                          location = "query",
                          type = "string",
                        },
                        name = {
                          description = "Required. The version to download. Format: projects/{project}/locations/{location}/integrations/{integration}/versions/{version}",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/integrations/[^/]+/versions/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}:download",
                      response = {
                        ["$ref"] = "GoogleCloudIntegrationsV1alphaDownloadIntegrationVersionResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    get = {
                      description = "Get a integration in the specified project.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/integrations/{integrationsId}/versions/{versionsId}",
                      httpMethod = "GET",
                      id = "integrations.projects.locations.integrations.versions.get",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The version to retrieve. Format: projects/{project}/locations/{location}/integrations/{integration}/versions/{version}",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/integrations/[^/]+/versions/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}",
                      response = {
                        ["$ref"] = "GoogleCloudIntegrationsV1alphaIntegrationVersion",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    list = {
                      description = "Returns the list of all integration versions in the specified project.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/integrations/{integrationsId}/versions",
                      httpMethod = "GET",
                      id = "integrations.projects.locations.integrations.versions.list",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        fieldMask = {
                          description = "The field mask which specifies the particular data to be returned.",
                          format = "google-fieldmask",
                          location = "query",
                          type = "string",
                        },
                        filter = {
                          description = "Filter on fields of IntegrationVersion. Fields can be compared with literal values by use of \":\" (containment), \"=\" (equality), \">\" (greater), \"<\" (less than), >=\" (greater than or equal to), \"<=\" (less than or equal to), and \"!=\" (inequality) operators. Negation, conjunction, and disjunction are written using NOT, AND, and OR keywords. For example, organization_id=\\\"1\\\" AND state=ACTIVE AND description:\"test\". Filtering cannot be performed on repeated fields like `task_config`.",
                          location = "query",
                          type = "string",
                        },
                        orderBy = {
                          description = "The results would be returned in order you specified here. Currently supported sort keys are: Descending sort order for \"last_modified_time\", \"created_time\", \"snapshot_number\" Ascending sort order for \"name\".",
                          location = "query",
                          type = "string",
                        },
                        pageSize = {
                          description = "The maximum number of versions to return. The service may return fewer than this value. If unspecified, at most 50 versions will be returned. The maximum value is 1000; values above 1000 will be coerced to 1000.",
                          format = "int32",
                          location = "query",
                          type = "integer",
                        },
                        pageToken = {
                          description = "A page token, received from a previous `ListIntegrationVersions` call. Provide this to retrieve the subsequent page. When paginating, all other parameters provided to `ListIntegrationVersions` must match the call that provided the page token.",
                          location = "query",
                          type = "string",
                        },
                        parent = {
                          description = "Required. The parent resource where this version will be created. Format: projects/{project}/locations/{location}/integrations/{integration} Specifically, when parent equals: 1. projects//locations//integrations/, Meaning: \"List versions (with filter) for a particular integration\". 2. projects//locations//integrations/- Meaning: \"List versions (with filter) for a client within a particular region\". 3. projects//locations/-/integrations/- Meaning: \"List versions (with filter) for a client\".",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/integrations/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/versions",
                      response = {
                        ["$ref"] = "GoogleCloudIntegrationsV1alphaListIntegrationVersionsResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    patch = {
                      description = "Update a integration with a draft version in the specified project.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/integrations/{integrationsId}/versions/{versionsId}",
                      httpMethod = "PATCH",
                      id = "integrations.projects.locations.integrations.versions.patch",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Output only. Auto-generated primary key.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/integrations/[^/]+/versions/[^/]+$",
                          required = true,
                          type = "string",
                        },
                        updateMask = {
                          description = "Field mask specifying the fields in the above integration that have been modified and need to be updated.",
                          format = "google-fieldmask",
                          location = "query",
                          type = "string",
                        },
                      },
                      path = "v1/{+name}",
                      request = {
                        ["$ref"] = "GoogleCloudIntegrationsV1alphaIntegrationVersion",
                      },
                      response = {
                        ["$ref"] = "GoogleCloudIntegrationsV1alphaIntegrationVersion",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    publish = {
                      description = "This RPC throws an exception if the integration is in ARCHIVED or ACTIVE state. This RPC throws an exception if the version being published is DRAFT, and if the `locked_by` user is not the same as the user performing the Publish. Audit fields updated include last_published_timestamp, last_published_by, last_modified_timestamp, last_modified_by. Any existing lock is on this integration is released.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/integrations/{integrationsId}/versions/{versionsId}:publish",
                      httpMethod = "POST",
                      id = "integrations.projects.locations.integrations.versions.publish",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The version to publish. Format: projects/{project}/locations/{location}/integrations/{integration}/versions/{version}",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/integrations/[^/]+/versions/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}:publish",
                      request = {
                        ["$ref"] = "GoogleCloudIntegrationsV1alphaPublishIntegrationVersionRequest",
                      },
                      response = {
                        ["$ref"] = "GoogleCloudIntegrationsV1alphaPublishIntegrationVersionResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    unpublish = {
                      description = "Sets the status of the ACTIVE integration to SNAPSHOT with a new tag \"PREVIOUSLY_PUBLISHED\" after validating it. The \"HEAD\" and \"PUBLISH_REQUESTED\" tags do not change. This RPC throws an exception if the version being snapshot is not ACTIVE. Audit fields added include action, action_by, action_timestamp.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/integrations/{integrationsId}/versions/{versionsId}:unpublish",
                      httpMethod = "POST",
                      id = "integrations.projects.locations.integrations.versions.unpublish",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The version to deactivate. Format: projects/{project}/locations/{location}/integrations/{integration}/versions/{version}",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/integrations/[^/]+/versions/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}:unpublish",
                      request = {
                        ["$ref"] = "GoogleCloudIntegrationsV1alphaUnpublishIntegrationVersionRequest",
                      },
                      response = {
                        ["$ref"] = "GoogleProtobufEmpty",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    upload = {
                      description = "Uploads an integration. The content can be a previously downloaded integration. Performs the same function as CreateDraftIntegrationVersion, but accepts input in a string format, which holds the complete representation of the IntegrationVersion content.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/integrations/{integrationsId}/versions:upload",
                      httpMethod = "POST",
                      id = "integrations.projects.locations.integrations.versions.upload",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        parent = {
                          description = "Required. The version to upload. Format: projects/{project}/locations/{location}/integrations/{integration}",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/integrations/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/versions:upload",
                      request = {
                        ["$ref"] = "GoogleCloudIntegrationsV1alphaUploadIntegrationVersionRequest",
                      },
                      response = {
                        ["$ref"] = "GoogleCloudIntegrationsV1alphaUploadIntegrationVersionResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    validate = {
                      description = "Validates the given integration. If the id doesn't exist, a NotFoundException is thrown. If validation fails a CanonicalCodeException is thrown. If there was no failure an empty response is returned.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/integrations/{integrationsId}/versions/{versionsId}:validate",
                      httpMethod = "POST",
                      id = "integrations.projects.locations.integrations.versions.validate",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The version to validate. Format: projects/{project}/locations/{location}/integrations/{integration}/versions/{version}",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/integrations/[^/]+/versions/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}:validate",
                      request = {
                        ["$ref"] = "GoogleCloudIntegrationsV1alphaValidateIntegrationVersionRequest",
                      },
                      response = {
                        ["$ref"] = "GoogleCloudIntegrationsV1alphaValidateIntegrationVersionResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                  },
                },
              },
            },
            products = {
              methods = {
                createBundle = {
                  description = "PROTECT WITH A VISIBILITY LABEL. THIS METHOD WILL BE MOVED TO A SEPARATE SERVICE. Create a bundle.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/products/{productsId}:createBundle",
                  httpMethod = "POST",
                  id = "integrations.projects.locations.products.createBundle",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    parent = {
                      description = "Required. The location resource of the request.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/products/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}:createBundle",
                  request = {
                    ["$ref"] = "GoogleCloudIntegrationsV1alphaCreateBundleRequest",
                  },
                  response = {
                    ["$ref"] = "GoogleCloudIntegrationsV1alphaCreateBundleResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                listTaskEntities = {
                  description = "This is a UI only method and will be moved away. Returns a list of common tasks.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/products/{productsId}:listTaskEntities",
                  httpMethod = "GET",
                  id = "integrations.projects.locations.products.listTaskEntities",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    parent = {
                      description = "Required. The location resource of the request. This is not going to be used but preserve the field for future.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/products/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}:listTaskEntities",
                  response = {
                    ["$ref"] = "GoogleCloudIntegrationsV1alphaListTaskEntitiesResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
              },
              resources = {
                authConfigs = {
                  methods = {
                    create = {
                      description = "Creates an auth config record. Fetch corresponding credentials for specific auth types, e.g. access token for OAuth 2.0, JWT token for JWT. Encrypt the auth config with Cloud KMS and store the encrypted credentials in Spanner. Returns the encrypted auth config.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/products/{productsId}/authConfigs",
                      httpMethod = "POST",
                      id = "integrations.projects.locations.products.authConfigs.create",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        ["clientCertificate.encryptedPrivateKey"] = {
                          description = "The ssl certificate encoded in PEM format. This string must include the begin header and end footer lines. For example, -----BEGIN CERTIFICATE----- MIICTTCCAbagAwIBAgIJAPT0tSKNxan/MA0GCSqGSIb3DQEBCwUAMCoxFzAVBgNV BAoTDkdvb2dsZSBURVNUSU5HMQ8wDQYDVQQDEwZ0ZXN0Q0EwHhcNMTUwMTAxMDAw MDAwWhcNMjUwMTAxMDAwMDAwWjAuMRcwFQYDVQQKEw5Hb29nbGUgVEVTVElORzET MBEGA1UEAwwKam9lQGJhbmFuYTCBnzANBgkqhkiG9w0BAQEFAAOBjQAwgYkCgYEA vDYFgMgxi5W488d9J7UpCInl0NXmZQpJDEHE4hvkaRlH7pnC71H0DLt0/3zATRP1 JzY2+eqBmbGl4/sgZKYv8UrLnNyQNUTsNx1iZAfPUflf5FwgVsai8BM0pUciq1NB xD429VFcrGZNucvFLh72RuRFIKH8WUpiK/iZNFkWhZ0CAwEAAaN3MHUwDgYDVR0P AQH/BAQDAgWgMB0GA1UdJQQWMBQGCCsGAQUFBwMBBggrBgEFBQcDAjAMBgNVHRMB Af8EAjAAMBkGA1UdDgQSBBCVgnFBCWgL/iwCqnGrhTPQMBsGA1UdIwQUMBKAEKey Um2o4k2WiEVA0ldQvNYwDQYJKoZIhvcNAQELBQADgYEAYK986R4E3L1v+Q6esBtW JrUwA9UmJRSQr0N5w3o9XzarU37/bkjOP0Fw0k/A6Vv1n3vlciYfBFaBIam1qRHr 5dMsYf4CZS6w50r7hyzqyrwDoyNxkLnd2PdcHT/sym1QmflsjEs7pejtnohO6N2H wQW6M0H7Zt8claGRla4fKkg= -----END CERTIFICATE-----",
                          location = "query",
                          type = "string",
                        },
                        ["clientCertificate.passphrase"] = {
                          description = "'passphrase' should be left unset if private key is not encrypted. Note that 'passphrase' is not the password for web server, but an extra layer of security to protected private key.",
                          location = "query",
                          type = "string",
                        },
                        ["clientCertificate.sslCertificate"] = {
                          description = "The ssl certificate encoded in PEM format. This string must include the begin header and end footer lines. For example, -----BEGIN CERTIFICATE----- MIICTTCCAbagAwIBAgIJAPT0tSKNxan/MA0GCSqGSIb3DQEBCwUAMCoxFzAVBgNV BAoTDkdvb2dsZSBURVNUSU5HMQ8wDQYDVQQDEwZ0ZXN0Q0EwHhcNMTUwMTAxMDAw MDAwWhcNMjUwMTAxMDAwMDAwWjAuMRcwFQYDVQQKEw5Hb29nbGUgVEVTVElORzET MBEGA1UEAwwKam9lQGJhbmFuYTCBnzANBgkqhkiG9w0BAQEFAAOBjQAwgYkCgYEA vDYFgMgxi5W488d9J7UpCInl0NXmZQpJDEHE4hvkaRlH7pnC71H0DLt0/3zATRP1 JzY2+eqBmbGl4/sgZKYv8UrLnNyQNUTsNx1iZAfPUflf5FwgVsai8BM0pUciq1NB xD429VFcrGZNucvFLh72RuRFIKH8WUpiK/iZNFkWhZ0CAwEAAaN3MHUwDgYDVR0P AQH/BAQDAgWgMB0GA1UdJQQWMBQGCCsGAQUFBwMBBggrBgEFBQcDAjAMBgNVHRMB Af8EAjAAMBkGA1UdDgQSBBCVgnFBCWgL/iwCqnGrhTPQMBsGA1UdIwQUMBKAEKey Um2o4k2WiEVA0ldQvNYwDQYJKoZIhvcNAQELBQADgYEAYK986R4E3L1v+Q6esBtW JrUwA9UmJRSQr0N5w3o9XzarU37/bkjOP0Fw0k/A6Vv1n3vlciYfBFaBIam1qRHr 5dMsYf4CZS6w50r7hyzqyrwDoyNxkLnd2PdcHT/sym1QmflsjEs7pejtnohO6N2H wQW6M0H7Zt8claGRla4fKkg= -----END CERTIFICATE-----",
                          location = "query",
                          type = "string",
                        },
                        parent = {
                          description = "Required. \"projects/{project}/locations/{location}\" format.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/products/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/authConfigs",
                      request = {
                        ["$ref"] = "GoogleCloudIntegrationsV1alphaAuthConfig",
                      },
                      response = {
                        ["$ref"] = "GoogleCloudIntegrationsV1alphaAuthConfig",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    delete = {
                      description = "Deletes an auth config.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/products/{productsId}/authConfigs/{authConfigsId}",
                      httpMethod = "DELETE",
                      id = "integrations.projects.locations.products.authConfigs.delete",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The name that is associated with the AuthConfig.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/products/[^/]+/authConfigs/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}",
                      response = {
                        ["$ref"] = "GoogleProtobufEmpty",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    get = {
                      description = "Gets a complete auth config. If the auth config doesn't exist, Code.NOT_FOUND exception will be thrown. Returns the decrypted auth config.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/products/{productsId}/authConfigs/{authConfigsId}",
                      httpMethod = "GET",
                      id = "integrations.projects.locations.products.authConfigs.get",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The name that is associated with the AuthConfig.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/products/[^/]+/authConfigs/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}",
                      response = {
                        ["$ref"] = "GoogleCloudIntegrationsV1alphaAuthConfig",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    list = {
                      description = "Lists all auth configs that match the filter. Restrict to auth configs belong to the current client only.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/products/{productsId}/authConfigs",
                      httpMethod = "GET",
                      id = "integrations.projects.locations.products.authConfigs.list",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        filter = {
                          description = "Filtering as supported in https://developers.google.com/authorized-buyers/apis/guides/v2/list-filters.",
                          location = "query",
                          type = "string",
                        },
                        pageSize = {
                          description = "The size of entries in the response. If unspecified, defaults to 100.",
                          format = "int32",
                          location = "query",
                          type = "integer",
                        },
                        pageToken = {
                          description = "The token returned in the previous response.",
                          location = "query",
                          type = "string",
                        },
                        parent = {
                          description = "Required. The client, which owns this collection of AuthConfigs.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/products/[^/]+$",
                          required = true,
                          type = "string",
                        },
                        readMask = {
                          description = "The mask which specifies fields that need to be returned in the AuthConfig's response.",
                          format = "google-fieldmask",
                          location = "query",
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/authConfigs",
                      response = {
                        ["$ref"] = "GoogleCloudIntegrationsV1alphaListAuthConfigsResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    patch = {
                      description = "Updates an auth config. If credential is updated, fetch the encrypted auth config from Spanner, decrypt with Cloud KMS key, update the credential fields, re-encrypt with Cloud KMS key and update the Spanner record. For other fields, directly update the Spanner record. Returns the encrypted auth config.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/products/{productsId}/authConfigs/{authConfigsId}",
                      httpMethod = "PATCH",
                      id = "integrations.projects.locations.products.authConfigs.patch",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        ["clientCertificate.encryptedPrivateKey"] = {
                          description = "The ssl certificate encoded in PEM format. This string must include the begin header and end footer lines. For example, -----BEGIN CERTIFICATE----- MIICTTCCAbagAwIBAgIJAPT0tSKNxan/MA0GCSqGSIb3DQEBCwUAMCoxFzAVBgNV BAoTDkdvb2dsZSBURVNUSU5HMQ8wDQYDVQQDEwZ0ZXN0Q0EwHhcNMTUwMTAxMDAw MDAwWhcNMjUwMTAxMDAwMDAwWjAuMRcwFQYDVQQKEw5Hb29nbGUgVEVTVElORzET MBEGA1UEAwwKam9lQGJhbmFuYTCBnzANBgkqhkiG9w0BAQEFAAOBjQAwgYkCgYEA vDYFgMgxi5W488d9J7UpCInl0NXmZQpJDEHE4hvkaRlH7pnC71H0DLt0/3zATRP1 JzY2+eqBmbGl4/sgZKYv8UrLnNyQNUTsNx1iZAfPUflf5FwgVsai8BM0pUciq1NB xD429VFcrGZNucvFLh72RuRFIKH8WUpiK/iZNFkWhZ0CAwEAAaN3MHUwDgYDVR0P AQH/BAQDAgWgMB0GA1UdJQQWMBQGCCsGAQUFBwMBBggrBgEFBQcDAjAMBgNVHRMB Af8EAjAAMBkGA1UdDgQSBBCVgnFBCWgL/iwCqnGrhTPQMBsGA1UdIwQUMBKAEKey Um2o4k2WiEVA0ldQvNYwDQYJKoZIhvcNAQELBQADgYEAYK986R4E3L1v+Q6esBtW JrUwA9UmJRSQr0N5w3o9XzarU37/bkjOP0Fw0k/A6Vv1n3vlciYfBFaBIam1qRHr 5dMsYf4CZS6w50r7hyzqyrwDoyNxkLnd2PdcHT/sym1QmflsjEs7pejtnohO6N2H wQW6M0H7Zt8claGRla4fKkg= -----END CERTIFICATE-----",
                          location = "query",
                          type = "string",
                        },
                        ["clientCertificate.passphrase"] = {
                          description = "'passphrase' should be left unset if private key is not encrypted. Note that 'passphrase' is not the password for web server, but an extra layer of security to protected private key.",
                          location = "query",
                          type = "string",
                        },
                        ["clientCertificate.sslCertificate"] = {
                          description = "The ssl certificate encoded in PEM format. This string must include the begin header and end footer lines. For example, -----BEGIN CERTIFICATE----- MIICTTCCAbagAwIBAgIJAPT0tSKNxan/MA0GCSqGSIb3DQEBCwUAMCoxFzAVBgNV BAoTDkdvb2dsZSBURVNUSU5HMQ8wDQYDVQQDEwZ0ZXN0Q0EwHhcNMTUwMTAxMDAw MDAwWhcNMjUwMTAxMDAwMDAwWjAuMRcwFQYDVQQKEw5Hb29nbGUgVEVTVElORzET MBEGA1UEAwwKam9lQGJhbmFuYTCBnzANBgkqhkiG9w0BAQEFAAOBjQAwgYkCgYEA vDYFgMgxi5W488d9J7UpCInl0NXmZQpJDEHE4hvkaRlH7pnC71H0DLt0/3zATRP1 JzY2+eqBmbGl4/sgZKYv8UrLnNyQNUTsNx1iZAfPUflf5FwgVsai8BM0pUciq1NB xD429VFcrGZNucvFLh72RuRFIKH8WUpiK/iZNFkWhZ0CAwEAAaN3MHUwDgYDVR0P AQH/BAQDAgWgMB0GA1UdJQQWMBQGCCsGAQUFBwMBBggrBgEFBQcDAjAMBgNVHRMB Af8EAjAAMBkGA1UdDgQSBBCVgnFBCWgL/iwCqnGrhTPQMBsGA1UdIwQUMBKAEKey Um2o4k2WiEVA0ldQvNYwDQYJKoZIhvcNAQELBQADgYEAYK986R4E3L1v+Q6esBtW JrUwA9UmJRSQr0N5w3o9XzarU37/bkjOP0Fw0k/A6Vv1n3vlciYfBFaBIam1qRHr 5dMsYf4CZS6w50r7hyzqyrwDoyNxkLnd2PdcHT/sym1QmflsjEs7pejtnohO6N2H wQW6M0H7Zt8claGRla4fKkg= -----END CERTIFICATE-----",
                          location = "query",
                          type = "string",
                        },
                        name = {
                          description = "Resource name of the SFDC instance projects/{project}/locations/{location}/authConfigs/{authConfig}.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/products/[^/]+/authConfigs/[^/]+$",
                          required = true,
                          type = "string",
                        },
                        updateMask = {
                          description = "Field mask specifying the fields in the above AuthConfig that have been modified and need to be updated.",
                          format = "google-fieldmask",
                          location = "query",
                          type = "string",
                        },
                      },
                      path = "v1/{+name}",
                      request = {
                        ["$ref"] = "GoogleCloudIntegrationsV1alphaAuthConfig",
                      },
                      response = {
                        ["$ref"] = "GoogleCloudIntegrationsV1alphaAuthConfig",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                  },
                },
                certificates = {
                  methods = {
                    create = {
                      description = "Creates a new certificate. The certificate will be registered to the trawler service and will be encrypted using cloud KMS and stored in Spanner Returns the certificate.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/products/{productsId}/certificates",
                      httpMethod = "POST",
                      id = "integrations.projects.locations.products.certificates.create",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        parent = {
                          description = "Required. \"projects/{project}/locations/{location}\" format.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/products/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/certificates",
                      request = {
                        ["$ref"] = "GoogleCloudIntegrationsV1alphaCertificate",
                      },
                      response = {
                        ["$ref"] = "GoogleCloudIntegrationsV1alphaCertificate",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    delete = {
                      description = "Delete a certificate",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/products/{productsId}/certificates/{certificatesId}",
                      httpMethod = "DELETE",
                      id = "integrations.projects.locations.products.certificates.delete",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The name that is associated with the Certificate.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/products/[^/]+/certificates/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}",
                      response = {
                        ["$ref"] = "GoogleProtobufEmpty",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    get = {
                      description = "Get a certificates in the specified project.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/products/{productsId}/certificates/{certificatesId}",
                      httpMethod = "GET",
                      id = "integrations.projects.locations.products.certificates.get",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The certificate to retrieve. Format: projects/{project}/locations/{location}/certificates/{certificate}",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/products/[^/]+/certificates/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}",
                      response = {
                        ["$ref"] = "GoogleCloudIntegrationsV1alphaCertificate",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    list = {
                      description = "List all the certificates that match the filter. Restrict to certificate of current client only.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/products/{productsId}/certificates",
                      httpMethod = "GET",
                      id = "integrations.projects.locations.products.certificates.list",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        filter = {
                          description = "Filtering as supported in https://developers.google.com/authorized-buyers/apis/guides/v2/list-filters.",
                          location = "query",
                          type = "string",
                        },
                        pageSize = {
                          description = "The size of entries in the response. If unspecified, defaults to 100.",
                          format = "int32",
                          location = "query",
                          type = "integer",
                        },
                        pageToken = {
                          description = "The token returned in the previous response.",
                          location = "query",
                          type = "string",
                        },
                        parent = {
                          description = "Required. The client, which owns this collection of Certificates.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/products/[^/]+$",
                          required = true,
                          type = "string",
                        },
                        readMask = {
                          description = "The mask which specifies fields that need to be returned in the Certificate's response.",
                          format = "google-fieldmask",
                          location = "query",
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/certificates",
                      response = {
                        ["$ref"] = "GoogleCloudIntegrationsV1alphaListCertificatesResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    patch = {
                      description = "Updates the certificate by id. If new certificate file is updated, it will register with the trawler service, re-encrypt with cloud KMS and update the Spanner record. Other fields will directly update the Spanner record. Returns the Certificate.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/products/{productsId}/certificates/{certificatesId}",
                      httpMethod = "PATCH",
                      id = "integrations.projects.locations.products.certificates.patch",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Output only. Auto generated primary key",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/products/[^/]+/certificates/[^/]+$",
                          required = true,
                          type = "string",
                        },
                        updateMask = {
                          description = "Field mask specifying the fields in the above Certificate that have been modified and need to be updated.",
                          format = "google-fieldmask",
                          location = "query",
                          type = "string",
                        },
                      },
                      path = "v1/{+name}",
                      request = {
                        ["$ref"] = "GoogleCloudIntegrationsV1alphaCertificate",
                      },
                      response = {
                        ["$ref"] = "GoogleCloudIntegrationsV1alphaCertificate",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                  },
                },
                cloudFunctions = {
                  methods = {
                    create = {
                      description = "Creates an cloud function project.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/products/{productsId}/cloudFunctions",
                      httpMethod = "POST",
                      id = "integrations.projects.locations.products.cloudFunctions.create",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        parent = {
                          description = "Required. The project that the executed integration belongs to.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/products/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/cloudFunctions",
                      request = {
                        ["$ref"] = "GoogleCloudIntegrationsV1alphaCreateCloudFunctionRequest",
                      },
                      response = {
                        ["$ref"] = "GoogleCloudIntegrationsV1alphaCreateCloudFunctionResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                  },
                },
                integrations = {
                  methods = {
                    archiveBundle = {
                      description = "PROTECT WITH A VISIBILITY LABEL. THIS METHOD WILL BE MOVED TO A SEPARATE SERVICE. Soft-deletes the bundle.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/products/{productsId}/integrations/{integrationsId}:archiveBundle",
                      httpMethod = "POST",
                      id = "integrations.projects.locations.products.integrations.archiveBundle",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The bundle to archive. Format: projects/{project}/locations/{location}/integrations/{integration}",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/products/[^/]+/integrations/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}:archiveBundle",
                      request = {
                        ["$ref"] = "GoogleCloudIntegrationsV1alphaArchiveBundleRequest",
                      },
                      response = {
                        ["$ref"] = "GoogleCloudIntegrationsV1alphaArchiveBundleResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    execute = {
                      description = "Executes integrations synchronously by passing the trigger id in the request body. The request is not returned until the requested executions are either fulfilled or experienced an error. If the integration name is not specified (passing `-`), all of the associated integration under the given trigger_id will be executed. Otherwise only the specified integration for the given `trigger_id` is executed. This is helpful for execution the integration from UI.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/products/{productsId}/integrations/{integrationsId}:execute",
                      httpMethod = "POST",
                      id = "integrations.projects.locations.products.integrations.execute",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The integration resource name.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/products/[^/]+/integrations/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}:execute",
                      request = {
                        ["$ref"] = "GoogleCloudIntegrationsV1alphaExecuteIntegrationsRequest",
                      },
                      response = {
                        ["$ref"] = "GoogleCloudIntegrationsV1alphaExecuteIntegrationsResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    list = {
                      description = "Returns the list of all integrations in the specified project.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/products/{productsId}/integrations",
                      httpMethod = "GET",
                      id = "integrations.projects.locations.products.integrations.list",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        filter = {
                          description = "Filter on fields of IntegrationVersion. Fields can be compared with literal values by use of \":\" (containment), \"=\" (equality), \">\" (greater), \"<\" (less than), >=\" (greater than or equal to), \"<=\" (less than or equal to), and \"!=\" (inequality) operators. Negation, conjunction, and disjunction are written using NOT, AND, and OR keywords. For example, organization_id=\\\"1\\\" AND state=ACTIVE AND description:\"test\". Filtering cannot be performed on repeated fields like `task_config`.",
                          location = "query",
                          type = "string",
                        },
                        orderBy = {
                          description = "The results would be returned in order you specified here. Supported sort keys are: Descending sort order by \"last_modified_time\", \"created_time\", \"snapshot_number\". Ascending sort order by the integration name.",
                          location = "query",
                          type = "string",
                        },
                        pageSize = {
                          description = "The page size for the resquest.",
                          format = "int32",
                          location = "query",
                          type = "integer",
                        },
                        pageToken = {
                          description = "The page token for the resquest.",
                          location = "query",
                          type = "string",
                        },
                        parent = {
                          description = "Required. Project and location from which the integrations should be listed. Format: projects/{project}",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/products/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/integrations",
                      response = {
                        ["$ref"] = "GoogleCloudIntegrationsV1alphaListIntegrationsResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    monitorexecutionstats = {
                      description = "Get execution stats",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/products/{productsId}/integrations/{integrationsId}:monitorexecutionstats",
                      httpMethod = "POST",
                      id = "integrations.projects.locations.products.integrations.monitorexecutionstats",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        parent = {
                          description = "Required. The parent resource name: {parent=projects/*/locations/*}.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/products/[^/]+/integrations/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}:monitorexecutionstats",
                      request = {
                        ["$ref"] = "GoogleCloudIntegrationsV1alphaMonitorExecutionStatsRequest",
                      },
                      response = {
                        ["$ref"] = "GoogleCloudIntegrationsV1alphaMonitorExecutionStatsResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    schedule = {
                      description = "Schedules an integration for execution by passing the trigger id and the scheduled time in the request body.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/products/{productsId}/integrations/{integrationsId}:schedule",
                      httpMethod = "POST",
                      id = "integrations.projects.locations.products.integrations.schedule",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "The integration resource name.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/products/[^/]+/integrations/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}:schedule",
                      request = {
                        ["$ref"] = "GoogleCloudIntegrationsV1alphaScheduleIntegrationsRequest",
                      },
                      response = {
                        ["$ref"] = "GoogleCloudIntegrationsV1alphaScheduleIntegrationsResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    test = {
                      description = "Execute the integration in draft state",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/products/{productsId}/integrations/{integrationsId}:test",
                      httpMethod = "POST",
                      id = "integrations.projects.locations.products.integrations.test",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Output only. Auto-generated primary key.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/products/[^/]+/integrations/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}:test",
                      request = {
                        ["$ref"] = "GoogleCloudIntegrationsV1alphaTestIntegrationsRequest",
                      },
                      response = {
                        ["$ref"] = "GoogleCloudIntegrationsV1alphaTestIntegrationsResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                  },
                  resources = {
                    executions = {
                      methods = {
                        cancel = {
                          description = "Cancellation of an execution",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/products/{productsId}/integrations/{integrationsId}/executions/{executionsId}:cancel",
                          httpMethod = "POST",
                          id = "integrations.projects.locations.products.integrations.executions.cancel",
                          parameterOrder = {
                            "name",
                          },
                          parameters = {
                            name = {
                              description = "Required. The execution resource name. Format: projects/{gcp_project_id}/locations/{location}/products/{product}/integrations/{integration_id}/executions/{execution_id}",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/products/[^/]+/integrations/[^/]+/executions/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v1/{+name}:cancel",
                          request = {
                            ["$ref"] = "GoogleCloudIntegrationsV1alphaCancelExecutionRequest",
                          },
                          response = {
                            ["$ref"] = "GoogleCloudIntegrationsV1alphaCancelExecutionResponse",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                          },
                        },
                        download = {
                          description = "Download the execution.",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/products/{productsId}/integrations/{integrationsId}/executions/{executionsId}:download",
                          httpMethod = "GET",
                          id = "integrations.projects.locations.products.integrations.executions.download",
                          parameterOrder = {
                            "name",
                          },
                          parameters = {
                            name = {
                              description = "Required. The execution resource name. Format: projects/{gcp_project_id}/locations/{location}/products/{product}/integrations/{integration_id}/executions/{execution_id}",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/products/[^/]+/integrations/[^/]+/executions/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v1/{+name}:download",
                          response = {
                            ["$ref"] = "GoogleCloudIntegrationsV1alphaDownloadExecutionResponse",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                          },
                        },
                        get = {
                          description = "Get an execution in the specified project.",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/products/{productsId}/integrations/{integrationsId}/executions/{executionsId}",
                          httpMethod = "GET",
                          id = "integrations.projects.locations.products.integrations.executions.get",
                          parameterOrder = {
                            "name",
                          },
                          parameters = {
                            name = {
                              description = "Required. The execution resource name. Format: projects/{gcp_project_id}/locations/{location}/products/{product}/integrations/{integration_id}/executions/{execution_id}",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/products/[^/]+/integrations/[^/]+/executions/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v1/{+name}",
                          response = {
                            ["$ref"] = "GoogleCloudIntegrationsV1alphaExecution",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                          },
                        },
                        list = {
                          description = "Lists the results of all the integration executions. The response includes the same information as the [execution log](https://cloud.google.com/application-integration/docs/viewing-logs) in the Integration UI.",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/products/{productsId}/integrations/{integrationsId}/executions",
                          httpMethod = "GET",
                          id = "integrations.projects.locations.products.integrations.executions.list",
                          parameterOrder = {
                            "parent",
                          },
                          parameters = {
                            filter = {
                              description = "Optional. Standard filter field, we support filtering on all fields in EventExecutionParamIndexes table. All fields support for EQUALS, in additional: CreateTimestamp support for LESS_THAN, GREATER_THAN ParameterKey, ParameterValue, ParameterType support for HAS For example: \"parameter_value\" HAS \\\"parameter1\\\" Also supports operators like AND, OR, NOT For example, trigger_id=\\\"id1\\\" AND event_execution_state=\\\"FAILED\\\"",
                              location = "query",
                              type = "string",
                            },
                            ["filterParams.customFilter"] = {
                              description = "Optional user-provided custom filter.",
                              location = "query",
                              type = "string",
                            },
                            ["filterParams.endTime"] = {
                              description = "End timestamp.",
                              format = "int64",
                              location = "query",
                              type = "string",
                            },
                            ["filterParams.eventStatuses"] = {
                              description = "List of possible event statuses.",
                              location = "query",
                              repeated = true,
                              type = "string",
                            },
                            ["filterParams.executionId"] = {
                              description = "Execution id.",
                              location = "query",
                              type = "string",
                            },
                            ["filterParams.parameterKey"] = {
                              description = "Param key. DEPRECATED. User parameter_pair_key instead.",
                              location = "query",
                              type = "string",
                            },
                            ["filterParams.parameterPairKey"] = {
                              description = "Param key in the key value pair filter.",
                              location = "query",
                              type = "string",
                            },
                            ["filterParams.parameterPairValue"] = {
                              description = "Param value in the key value pair filter.",
                              location = "query",
                              type = "string",
                            },
                            ["filterParams.parameterType"] = {
                              description = "Param type.",
                              location = "query",
                              type = "string",
                            },
                            ["filterParams.parameterValue"] = {
                              description = "Param value. DEPRECATED. User parameter_pair_value instead.",
                              location = "query",
                              type = "string",
                            },
                            ["filterParams.startTime"] = {
                              description = "Start timestamp.",
                              format = "int64",
                              location = "query",
                              type = "string",
                            },
                            ["filterParams.taskStatuses"] = {
                              description = "List of possible task statuses.",
                              location = "query",
                              repeated = true,
                              type = "string",
                            },
                            ["filterParams.workflowName"] = {
                              description = "Workflow name.",
                              location = "query",
                              type = "string",
                            },
                            orderBy = {
                              description = "Optional. The results would be returned in order you specified here. Currently supporting \"last_modified_time\" and \"create_time\".",
                              location = "query",
                              type = "string",
                            },
                            pageSize = {
                              description = "Optional. The size of entries in the response.",
                              format = "int32",
                              location = "query",
                              type = "integer",
                            },
                            pageToken = {
                              description = "Optional. The token returned in the previous response.",
                              location = "query",
                              type = "string",
                            },
                            parent = {
                              description = "Required. The parent resource name of the integration execution.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/products/[^/]+/integrations/[^/]+$",
                              required = true,
                              type = "string",
                            },
                            readMask = {
                              description = "Optional. View mask for the response data. If set, only the field specified will be returned as part of the result. If not set, all fields in event execution info will be filled and returned.",
                              format = "google-fieldmask",
                              location = "query",
                              type = "string",
                            },
                            refreshAcl = {
                              description = "Optional. If true, the service will use the most recent acl information to list event execution infos and renew the acl cache. Note that fetching the most recent acl is synchronous, so it will increase RPC call latency.",
                              location = "query",
                              type = "boolean",
                            },
                            truncateParams = {
                              description = "Optional. If true, the service will truncate the params to only keep the first 1000 characters of string params and empty the executions in order to make response smaller. Only works for UI and when the params fields are not filtered out.",
                              location = "query",
                              type = "boolean",
                            },
                          },
                          path = "v1/{+parent}/executions",
                          response = {
                            ["$ref"] = "GoogleCloudIntegrationsV1alphaListExecutionsResponse",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                          },
                        },
                      },
                      resources = {
                        suspensions = {
                          methods = {
                            lift = {
                              description = "* Lifts suspension for advanced suspension task. Fetch corresponding suspension with provided suspension Id, resolve suspension, and set up suspension result for the Suspension Task.",
                              flatPath = "v1/projects/{projectsId}/locations/{locationsId}/products/{productsId}/integrations/{integrationsId}/executions/{executionsId}/suspensions/{suspensionsId}:lift",
                              httpMethod = "POST",
                              id = "integrations.projects.locations.products.integrations.executions.suspensions.lift",
                              parameterOrder = {
                                "name",
                              },
                              parameters = {
                                name = {
                                  description = "Required. The resource that the suspension belongs to. \"projects/{project}/locations/{location}/products/{product}/integrations/{integration}/executions/{execution}/suspensions/{suspenion}\" format.",
                                  location = "path",
                                  pattern = "^projects/[^/]+/locations/[^/]+/products/[^/]+/integrations/[^/]+/executions/[^/]+/suspensions/[^/]+$",
                                  required = true,
                                  type = "string",
                                },
                              },
                              path = "v1/{+name}:lift",
                              request = {
                                ["$ref"] = "GoogleCloudIntegrationsV1alphaLiftSuspensionRequest",
                              },
                              response = {
                                ["$ref"] = "GoogleCloudIntegrationsV1alphaLiftSuspensionResponse",
                              },
                              scopes = {
                                "https://www.googleapis.com/auth/cloud-platform",
                              },
                            },
                            list = {
                              description = "* Lists suspensions associated with a specific execution. Only those with permissions to resolve the relevant suspensions will be able to view them.",
                              flatPath = "v1/projects/{projectsId}/locations/{locationsId}/products/{productsId}/integrations/{integrationsId}/executions/{executionsId}/suspensions",
                              httpMethod = "GET",
                              id = "integrations.projects.locations.products.integrations.executions.suspensions.list",
                              parameterOrder = {
                                "parent",
                              },
                              parameters = {
                                filter = {
                                  description = "Standard filter field.",
                                  location = "query",
                                  type = "string",
                                },
                                orderBy = {
                                  description = "Field name to order by.",
                                  location = "query",
                                  type = "string",
                                },
                                pageSize = {
                                  description = "Maximum number of entries in the response.",
                                  format = "int32",
                                  location = "query",
                                  type = "integer",
                                },
                                pageToken = {
                                  description = "Token to retrieve a specific page.",
                                  location = "query",
                                  type = "string",
                                },
                                parent = {
                                  description = "Required. projects/{gcp_project_id}/locations/{location}/products/{product}/integrations/{integration_name}/executions/{execution_name}",
                                  location = "path",
                                  pattern = "^projects/[^/]+/locations/[^/]+/products/[^/]+/integrations/[^/]+/executions/[^/]+$",
                                  required = true,
                                  type = "string",
                                },
                              },
                              path = "v1/{+parent}/suspensions",
                              response = {
                                ["$ref"] = "GoogleCloudIntegrationsV1alphaListSuspensionsResponse",
                              },
                              scopes = {
                                "https://www.googleapis.com/auth/cloud-platform",
                              },
                            },
                            resolve = {
                              description = "* Resolves (lifts/rejects) any number of suspensions. If the integration is already running, only the status of the suspension is updated. Otherwise, the suspended integration will begin execution again.",
                              flatPath = "v1/projects/{projectsId}/locations/{locationsId}/products/{productsId}/integrations/{integrationsId}/executions/{executionsId}/suspensions/{suspensionsId}:resolve",
                              httpMethod = "POST",
                              id = "integrations.projects.locations.products.integrations.executions.suspensions.resolve",
                              parameterOrder = {
                                "name",
                              },
                              parameters = {
                                name = {
                                  description = "Required. projects/{gcp_project_id}/locations/{location}/products/{product}/integrations/{integration_name}/executions/{execution_name}/suspensions/{suspension_id}",
                                  location = "path",
                                  pattern = "^projects/[^/]+/locations/[^/]+/products/[^/]+/integrations/[^/]+/executions/[^/]+/suspensions/[^/]+$",
                                  required = true,
                                  type = "string",
                                },
                              },
                              path = "v1/{+name}:resolve",
                              request = {
                                ["$ref"] = "GoogleCloudIntegrationsV1alphaResolveSuspensionRequest",
                              },
                              response = {
                                ["$ref"] = "GoogleCloudIntegrationsV1alphaResolveSuspensionResponse",
                              },
                              scopes = {
                                "https://www.googleapis.com/auth/cloud-platform",
                              },
                            },
                          },
                        },
                      },
                    },
                    executionsnapshots = {
                      methods = {
                        list = {
                          description = "Lists the snapshots of a given integration executions. This RPC is not being used.",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/products/{productsId}/integrations/{integrationsId}/executionsnapshots",
                          httpMethod = "GET",
                          id = "integrations.projects.locations.products.integrations.executionsnapshots.list",
                          parameterOrder = {
                            "parent",
                          },
                          parameters = {
                            filter = {
                              description = "Currently supports filter by `execution_info_id` or `execution_snapshot_id`.",
                              location = "query",
                              type = "string",
                            },
                            pageSize = {
                              description = "Number of entries to be returned in a page.",
                              format = "int32",
                              location = "query",
                              type = "integer",
                            },
                            pageToken = {
                              description = "The token used to retrieve the next page results.",
                              location = "query",
                              type = "string",
                            },
                            parent = {
                              description = "Required. The parent resource name of the integration execution.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/products/[^/]+/integrations/[^/]+$",
                              required = true,
                              type = "string",
                            },
                            readMask = {
                              description = "View mask for the response data. If set, only the field specified will be returned as part of the result. If not set, all fields in event execution snapshot will be filled and returned.",
                              format = "google-fieldmask",
                              location = "query",
                              type = "string",
                            },
                          },
                          path = "v1/{+parent}/executionsnapshots",
                          response = {
                            ["$ref"] = "GoogleCloudIntegrationsV1alphaListExecutionSnapshotsResponse",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                          },
                        },
                      },
                    },
                    versions = {
                      methods = {
                        archive = {
                          description = "Soft-deletes the integration. Changes the status of the integration to ARCHIVED. If the integration being ARCHIVED is tagged as \"HEAD\", the tag is removed from this snapshot and set to the previous non-ARCHIVED snapshot. The PUBLISH_REQUESTED, DUE_FOR_DELETION tags are removed too. This RPC throws an exception if the version being archived is DRAFT, and if the `locked_by` user is not the same as the user performing the Archive. Audit fields updated include last_modified_timestamp, last_modified_by. Any existing lock is released when Archiving a integration. Currently, there is no unarchive mechanism.",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/products/{productsId}/integrations/{integrationsId}/versions/{versionsId}:archive",
                          httpMethod = "POST",
                          id = "integrations.projects.locations.products.integrations.versions.archive",
                          parameterOrder = {
                            "name",
                          },
                          parameters = {
                            name = {
                              description = "Required. The version to archive. Format: projects/{project}/locations/{location}/integrations/{integration}/versions/{version}",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/products/[^/]+/integrations/[^/]+/versions/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v1/{+name}:archive",
                          request = {
                            ["$ref"] = "GoogleCloudIntegrationsV1alphaArchiveIntegrationVersionRequest",
                          },
                          response = {
                            ["$ref"] = "GoogleCloudIntegrationsV1alphaArchiveIntegrationVersionResponse",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                          },
                        },
                        create = {
                          description = "Create a integration with a draft version in the specified project.",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/products/{productsId}/integrations/{integrationsId}/versions",
                          httpMethod = "POST",
                          id = "integrations.projects.locations.products.integrations.versions.create",
                          parameterOrder = {
                            "parent",
                          },
                          parameters = {
                            newIntegration = {
                              description = "Set this flag to true, if draft version is to be created for a brand new integration. False, if the request is for an existing integration. For backward compatibility reasons, even if this flag is set to `false` and no existing integration is found, a new draft integration will still be created.",
                              location = "query",
                              type = "boolean",
                            },
                            parent = {
                              description = "Required. The parent resource where this version will be created. Format: projects/{project}/locations/{location}/integrations/{integration}",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/products/[^/]+/integrations/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v1/{+parent}/versions",
                          request = {
                            ["$ref"] = "GoogleCloudIntegrationsV1alphaIntegrationVersion",
                          },
                          response = {
                            ["$ref"] = "GoogleCloudIntegrationsV1alphaIntegrationVersion",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                          },
                        },
                        deactivate = {
                          description = "Sets the status of the ACTIVE integration to SNAPSHOT with a new tag \"PREVIOUSLY_PUBLISHED\" after validating it. The \"HEAD\" and \"PUBLISH_REQUESTED\" tags do not change. This RPC throws an exception if the version being snapshot is not ACTIVE. Audit fields added include action, action_by, action_timestamp.",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/products/{productsId}/integrations/{integrationsId}/versions/{versionsId}:deactivate",
                          httpMethod = "POST",
                          id = "integrations.projects.locations.products.integrations.versions.deactivate",
                          parameterOrder = {
                            "name",
                          },
                          parameters = {
                            name = {
                              description = "Required. The version to deactivate. Format: projects/{project}/locations/{location}/integrations/{integration}/versions/{version}",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/products/[^/]+/integrations/[^/]+/versions/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v1/{+name}:deactivate",
                          request = {
                            ["$ref"] = "GoogleCloudIntegrationsV1alphaDeactivateIntegrationVersionRequest",
                          },
                          response = {
                            ["$ref"] = "GoogleCloudIntegrationsV1alphaDeactivateIntegrationVersionResponse",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                          },
                        },
                        delete = {
                          description = "Soft-deletes the integration. Changes the status of the integration to ARCHIVED. If the integration being ARCHIVED is tagged as \"HEAD\", the tag is removed from this snapshot and set to the previous non-ARCHIVED snapshot. The PUBLISH_REQUESTED, DUE_FOR_DELETION tags are removed too. This RPC throws an exception if the version being deleted is DRAFT, and if the `locked_by` user is not the same as the user performing the Delete. Audit fields updated include last_modified_timestamp, last_modified_by. Any existing lock is released when Deleting a integration. Currently, there is no undelete mechanism.",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/products/{productsId}/integrations/{integrationsId}/versions/{versionsId}",
                          httpMethod = "DELETE",
                          id = "integrations.projects.locations.products.integrations.versions.delete",
                          parameterOrder = {
                            "name",
                          },
                          parameters = {
                            name = {
                              description = "Required. The version to delete. Format: projects/{project}/locations/{location}/integrations/{integration}/versions/{version}",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/products/[^/]+/integrations/[^/]+/versions/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v1/{+name}",
                          response = {
                            ["$ref"] = "GoogleProtobufEmpty",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                          },
                        },
                        download = {
                          description = "Downloads an integration. Retrieves the `IntegrationVersion` for a given `integration_id` and returns the response as a string.",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/products/{productsId}/integrations/{integrationsId}/versions/{versionsId}:download",
                          httpMethod = "GET",
                          id = "integrations.projects.locations.products.integrations.versions.download",
                          parameterOrder = {
                            "name",
                          },
                          parameters = {
                            fileFormat = {
                              description = "File format for download request.",
                              enum = {
                                "FILE_FORMAT_UNSPECIFIED",
                                "JSON",
                                "YAML",
                              },
                              enumDescriptions = {
                                "Unspecified file format",
                                "JSON File Format",
                                "YAML File Format",
                              },
                              location = "query",
                              type = "string",
                            },
                            name = {
                              description = "Required. The version to download. Format: projects/{project}/locations/{location}/integrations/{integration}/versions/{version}",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/products/[^/]+/integrations/[^/]+/versions/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v1/{+name}:download",
                          response = {
                            ["$ref"] = "GoogleCloudIntegrationsV1alphaDownloadIntegrationVersionResponse",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                          },
                        },
                        get = {
                          description = "Get a integration in the specified project.",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/products/{productsId}/integrations/{integrationsId}/versions/{versionsId}",
                          httpMethod = "GET",
                          id = "integrations.projects.locations.products.integrations.versions.get",
                          parameterOrder = {
                            "name",
                          },
                          parameters = {
                            name = {
                              description = "Required. The version to retrieve. Format: projects/{project}/locations/{location}/integrations/{integration}/versions/{version}",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/products/[^/]+/integrations/[^/]+/versions/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v1/{+name}",
                          response = {
                            ["$ref"] = "GoogleCloudIntegrationsV1alphaIntegrationVersion",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                          },
                        },
                        getBundle = {
                          description = "PROTECT WITH A VISIBILITY LABEL. THIS METHOD WILL BE MOVED TO A SEPARATE SERVICE. RPC to get details of the Bundle",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/products/{productsId}/integrations/{integrationsId}/versions/{versionsId}:getBundle",
                          httpMethod = "GET",
                          id = "integrations.projects.locations.products.integrations.versions.getBundle",
                          parameterOrder = {
                            "name",
                          },
                          parameters = {
                            name = {
                              description = "Required. The bundle name.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/products/[^/]+/integrations/[^/]+/versions/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v1/{+name}:getBundle",
                          response = {
                            ["$ref"] = "GoogleCloudIntegrationsV1alphaGetBundleResponse",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                          },
                        },
                        list = {
                          description = "Returns the list of all integration versions in the specified project.",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/products/{productsId}/integrations/{integrationsId}/versions",
                          httpMethod = "GET",
                          id = "integrations.projects.locations.products.integrations.versions.list",
                          parameterOrder = {
                            "parent",
                          },
                          parameters = {
                            fieldMask = {
                              description = "The field mask which specifies the particular data to be returned.",
                              format = "google-fieldmask",
                              location = "query",
                              type = "string",
                            },
                            filter = {
                              description = "Filter on fields of IntegrationVersion. Fields can be compared with literal values by use of \":\" (containment), \"=\" (equality), \">\" (greater), \"<\" (less than), >=\" (greater than or equal to), \"<=\" (less than or equal to), and \"!=\" (inequality) operators. Negation, conjunction, and disjunction are written using NOT, AND, and OR keywords. For example, organization_id=\\\"1\\\" AND state=ACTIVE AND description:\"test\". Filtering cannot be performed on repeated fields like `task_config`.",
                              location = "query",
                              type = "string",
                            },
                            orderBy = {
                              description = "The results would be returned in order you specified here. Currently supported sort keys are: Descending sort order for \"last_modified_time\", \"created_time\", \"snapshot_number\" Ascending sort order for \"name\".",
                              location = "query",
                              type = "string",
                            },
                            pageSize = {
                              description = "The maximum number of versions to return. The service may return fewer than this value. If unspecified, at most 50 versions will be returned. The maximum value is 1000; values above 1000 will be coerced to 1000.",
                              format = "int32",
                              location = "query",
                              type = "integer",
                            },
                            pageToken = {
                              description = "A page token, received from a previous `ListIntegrationVersions` call. Provide this to retrieve the subsequent page. When paginating, all other parameters provided to `ListIntegrationVersions` must match the call that provided the page token.",
                              location = "query",
                              type = "string",
                            },
                            parent = {
                              description = "Required. The parent resource where this version will be created. Format: projects/{project}/locations/{location}/integrations/{integration} Specifically, when parent equals: 1. projects//locations//integrations/, Meaning: \"List versions (with filter) for a particular integration\". 2. projects//locations//integrations/- Meaning: \"List versions (with filter) for a client within a particular region\". 3. projects//locations/-/integrations/- Meaning: \"List versions (with filter) for a client\".",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/products/[^/]+/integrations/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v1/{+parent}/versions",
                          response = {
                            ["$ref"] = "GoogleCloudIntegrationsV1alphaListIntegrationVersionsResponse",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                          },
                        },
                        patch = {
                          description = "Update a integration with a draft version in the specified project.",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/products/{productsId}/integrations/{integrationsId}/versions/{versionsId}",
                          httpMethod = "PATCH",
                          id = "integrations.projects.locations.products.integrations.versions.patch",
                          parameterOrder = {
                            "name",
                          },
                          parameters = {
                            name = {
                              description = "Output only. Auto-generated primary key.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/products/[^/]+/integrations/[^/]+/versions/[^/]+$",
                              required = true,
                              type = "string",
                            },
                            updateMask = {
                              description = "Field mask specifying the fields in the above integration that have been modified and need to be updated.",
                              format = "google-fieldmask",
                              location = "query",
                              type = "string",
                            },
                          },
                          path = "v1/{+name}",
                          request = {
                            ["$ref"] = "GoogleCloudIntegrationsV1alphaIntegrationVersion",
                          },
                          response = {
                            ["$ref"] = "GoogleCloudIntegrationsV1alphaIntegrationVersion",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                          },
                        },
                        publish = {
                          description = "This RPC throws an exception if the integration is in ARCHIVED or ACTIVE state. This RPC throws an exception if the version being published is DRAFT, and if the `locked_by` user is not the same as the user performing the Publish. Audit fields updated include last_published_timestamp, last_published_by, last_modified_timestamp, last_modified_by. Any existing lock is on this integration is released.",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/products/{productsId}/integrations/{integrationsId}/versions/{versionsId}:publish",
                          httpMethod = "POST",
                          id = "integrations.projects.locations.products.integrations.versions.publish",
                          parameterOrder = {
                            "name",
                          },
                          parameters = {
                            name = {
                              description = "Required. The version to publish. Format: projects/{project}/locations/{location}/integrations/{integration}/versions/{version}",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/products/[^/]+/integrations/[^/]+/versions/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v1/{+name}:publish",
                          request = {
                            ["$ref"] = "GoogleCloudIntegrationsV1alphaPublishIntegrationVersionRequest",
                          },
                          response = {
                            ["$ref"] = "GoogleCloudIntegrationsV1alphaPublishIntegrationVersionResponse",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                          },
                        },
                        takeoverEditLock = {
                          description = "Clears the `locked_by` and `locked_at_timestamp`in the DRAFT version of this integration. It then performs the same action as the CreateDraftIntegrationVersion (i.e., copies the DRAFT version of the integration as a SNAPSHOT and then creates a new DRAFT version with the `locked_by` set to the `user_taking_over` and the `locked_at_timestamp` set to the current timestamp). Both the `locked_by` and `user_taking_over` are notified via email about the takeover. This RPC throws an exception if the integration is not in DRAFT status or if the `locked_by` and `locked_at_timestamp` fields are not set.The TakeoverEdit lock is treated the same as an edit of the integration, and hence shares ACLs with edit. Audit fields updated include last_modified_timestamp, last_modified_by.",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/products/{productsId}/integrations/{integrationsId}/versions/{versionsId}:takeoverEditLock",
                          httpMethod = "POST",
                          id = "integrations.projects.locations.products.integrations.versions.takeoverEditLock",
                          parameterOrder = {
                            "integrationVersion",
                          },
                          parameters = {
                            integrationVersion = {
                              description = "Required. The version to take over edit lock. Format: projects/{project}/locations/{location}/integrations/{integration}/versions/{version}",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/products/[^/]+/integrations/[^/]+/versions/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v1/{+integrationVersion}:takeoverEditLock",
                          request = {
                            ["$ref"] = "GoogleCloudIntegrationsV1alphaTakeoverEditLockRequest",
                          },
                          response = {
                            ["$ref"] = "GoogleCloudIntegrationsV1alphaTakeoverEditLockResponse",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                          },
                        },
                        unpublish = {
                          description = "Sets the status of the ACTIVE integration to SNAPSHOT with a new tag \"PREVIOUSLY_PUBLISHED\" after validating it. The \"HEAD\" and \"PUBLISH_REQUESTED\" tags do not change. This RPC throws an exception if the version being snapshot is not ACTIVE. Audit fields added include action, action_by, action_timestamp.",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/products/{productsId}/integrations/{integrationsId}/versions/{versionsId}:unpublish",
                          httpMethod = "POST",
                          id = "integrations.projects.locations.products.integrations.versions.unpublish",
                          parameterOrder = {
                            "name",
                          },
                          parameters = {
                            name = {
                              description = "Required. The version to deactivate. Format: projects/{project}/locations/{location}/integrations/{integration}/versions/{version}",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/products/[^/]+/integrations/[^/]+/versions/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v1/{+name}:unpublish",
                          request = {
                            ["$ref"] = "GoogleCloudIntegrationsV1alphaUnpublishIntegrationVersionRequest",
                          },
                          response = {
                            ["$ref"] = "GoogleProtobufEmpty",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                          },
                        },
                        updateBundle = {
                          description = "THIS METHOD WILL BE MOVED TO A SEPARATE SERVICE. RPC to update the Bundle",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/products/{productsId}/integrations/{integrationsId}/versions/{versionsId}:updateBundle",
                          httpMethod = "PATCH",
                          id = "integrations.projects.locations.products.integrations.versions.updateBundle",
                          parameterOrder = {
                            "name",
                          },
                          parameters = {
                            name = {
                              description = "Required. Bundle name",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/products/[^/]+/integrations/[^/]+/versions/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v1/{+name}:updateBundle",
                          request = {
                            ["$ref"] = "GoogleCloudIntegrationsV1alphaUpdateBundleRequest",
                          },
                          response = {
                            ["$ref"] = "GoogleCloudIntegrationsV1alphaUpdateBundleResponse",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                          },
                        },
                        upload = {
                          description = "Uploads an integration. The content can be a previously downloaded integration. Performs the same function as CreateDraftIntegrationVersion, but accepts input in a string format, which holds the complete representation of the IntegrationVersion content.",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/products/{productsId}/integrations/{integrationsId}/versions:upload",
                          httpMethod = "POST",
                          id = "integrations.projects.locations.products.integrations.versions.upload",
                          parameterOrder = {
                            "parent",
                          },
                          parameters = {
                            parent = {
                              description = "Required. The version to upload. Format: projects/{project}/locations/{location}/integrations/{integration}",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/products/[^/]+/integrations/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v1/{+parent}/versions:upload",
                          request = {
                            ["$ref"] = "GoogleCloudIntegrationsV1alphaUploadIntegrationVersionRequest",
                          },
                          response = {
                            ["$ref"] = "GoogleCloudIntegrationsV1alphaUploadIntegrationVersionResponse",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                          },
                        },
                        validate = {
                          description = "Validates the given integration. If the id doesn't exist, a NotFoundException is thrown. If validation fails a CanonicalCodeException is thrown. If there was no failure an empty response is returned.",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/products/{productsId}/integrations/{integrationsId}/versions/{versionsId}:validate",
                          httpMethod = "POST",
                          id = "integrations.projects.locations.products.integrations.versions.validate",
                          parameterOrder = {
                            "name",
                          },
                          parameters = {
                            name = {
                              description = "Required. The version to validate. Format: projects/{project}/locations/{location}/integrations/{integration}/versions/{version}",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/products/[^/]+/integrations/[^/]+/versions/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v1/{+name}:validate",
                          request = {
                            ["$ref"] = "GoogleCloudIntegrationsV1alphaValidateIntegrationVersionRequest",
                          },
                          response = {
                            ["$ref"] = "GoogleCloudIntegrationsV1alphaValidateIntegrationVersionResponse",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                          },
                        },
                      },
                    },
                  },
                },
                sfdcInstances = {
                  methods = {
                    create = {
                      description = "Creates an sfdc instance record. Store the sfdc instance in Spanner. Returns the sfdc instance.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/products/{productsId}/sfdcInstances",
                      httpMethod = "POST",
                      id = "integrations.projects.locations.products.sfdcInstances.create",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        parent = {
                          description = "Required. \"projects/{project}/locations/{location}\" format.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/products/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/sfdcInstances",
                      request = {
                        ["$ref"] = "GoogleCloudIntegrationsV1alphaSfdcInstance",
                      },
                      response = {
                        ["$ref"] = "GoogleCloudIntegrationsV1alphaSfdcInstance",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    delete = {
                      description = "Deletes an sfdc instance.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/products/{productsId}/sfdcInstances/{sfdcInstancesId}",
                      httpMethod = "DELETE",
                      id = "integrations.projects.locations.products.sfdcInstances.delete",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The name that is associated with the SfdcInstance.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/products/[^/]+/sfdcInstances/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}",
                      response = {
                        ["$ref"] = "GoogleProtobufEmpty",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    get = {
                      description = "Gets an sfdc instance. If the instance doesn't exist, Code.NOT_FOUND exception will be thrown.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/products/{productsId}/sfdcInstances/{sfdcInstancesId}",
                      httpMethod = "GET",
                      id = "integrations.projects.locations.products.sfdcInstances.get",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The name that is associated with the SfdcInstance.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/products/[^/]+/sfdcInstances/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}",
                      response = {
                        ["$ref"] = "GoogleCloudIntegrationsV1alphaSfdcInstance",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    list = {
                      description = "Lists all sfdc instances that match the filter. Restrict to sfdc instances belonging to the current client only.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/products/{productsId}/sfdcInstances",
                      httpMethod = "GET",
                      id = "integrations.projects.locations.products.sfdcInstances.list",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        filter = {
                          description = "Filtering as supported in https://developers.google.com/authorized-buyers/apis/guides/v2/list-filters.",
                          location = "query",
                          type = "string",
                        },
                        pageSize = {
                          description = "The size of entries in the response. If unspecified, defaults to 100.",
                          format = "int32",
                          location = "query",
                          type = "integer",
                        },
                        pageToken = {
                          description = "The token returned in the previous response.",
                          location = "query",
                          type = "string",
                        },
                        parent = {
                          description = "Required. The client, which owns this collection of SfdcInstances.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/products/[^/]+$",
                          required = true,
                          type = "string",
                        },
                        readMask = {
                          description = "The mask which specifies fields that need to be returned in the SfdcInstance's response.",
                          format = "google-fieldmask",
                          location = "query",
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/sfdcInstances",
                      response = {
                        ["$ref"] = "GoogleCloudIntegrationsV1alphaListSfdcInstancesResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    patch = {
                      description = "Updates an sfdc instance. Updates the sfdc instance in spanner. Returns the sfdc instance.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/products/{productsId}/sfdcInstances/{sfdcInstancesId}",
                      httpMethod = "PATCH",
                      id = "integrations.projects.locations.products.sfdcInstances.patch",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Resource name of the SFDC instance projects/{project}/locations/{location}/sfdcInstances/{sfdcInstance}.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/products/[^/]+/sfdcInstances/[^/]+$",
                          required = true,
                          type = "string",
                        },
                        updateMask = {
                          description = "Field mask specifying the fields in the above SfdcInstance that have been modified and need to be updated.",
                          format = "google-fieldmask",
                          location = "query",
                          type = "string",
                        },
                      },
                      path = "v1/{+name}",
                      request = {
                        ["$ref"] = "GoogleCloudIntegrationsV1alphaSfdcInstance",
                      },
                      response = {
                        ["$ref"] = "GoogleCloudIntegrationsV1alphaSfdcInstance",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                  },
                  resources = {
                    sfdcChannels = {
                      methods = {
                        create = {
                          description = "Creates an sfdc channel record. Store the sfdc channel in Spanner. Returns the sfdc channel.",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/products/{productsId}/sfdcInstances/{sfdcInstancesId}/sfdcChannels",
                          httpMethod = "POST",
                          id = "integrations.projects.locations.products.sfdcInstances.sfdcChannels.create",
                          parameterOrder = {
                            "parent",
                          },
                          parameters = {
                            parent = {
                              description = "Required. \"projects/{project}/locations/{location}\" format.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/products/[^/]+/sfdcInstances/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v1/{+parent}/sfdcChannels",
                          request = {
                            ["$ref"] = "GoogleCloudIntegrationsV1alphaSfdcChannel",
                          },
                          response = {
                            ["$ref"] = "GoogleCloudIntegrationsV1alphaSfdcChannel",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                          },
                        },
                        delete = {
                          description = "Deletes an sfdc channel.",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/products/{productsId}/sfdcInstances/{sfdcInstancesId}/sfdcChannels/{sfdcChannelsId}",
                          httpMethod = "DELETE",
                          id = "integrations.projects.locations.products.sfdcInstances.sfdcChannels.delete",
                          parameterOrder = {
                            "name",
                          },
                          parameters = {
                            name = {
                              description = "Required. The name that is associated with the SfdcChannel.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/products/[^/]+/sfdcInstances/[^/]+/sfdcChannels/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v1/{+name}",
                          response = {
                            ["$ref"] = "GoogleProtobufEmpty",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                          },
                        },
                        get = {
                          description = "Gets an sfdc channel. If the channel doesn't exist, Code.NOT_FOUND exception will be thrown.",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/products/{productsId}/sfdcInstances/{sfdcInstancesId}/sfdcChannels/{sfdcChannelsId}",
                          httpMethod = "GET",
                          id = "integrations.projects.locations.products.sfdcInstances.sfdcChannels.get",
                          parameterOrder = {
                            "name",
                          },
                          parameters = {
                            name = {
                              description = "Required. The name that is associated with the SfdcChannel.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/products/[^/]+/sfdcInstances/[^/]+/sfdcChannels/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v1/{+name}",
                          response = {
                            ["$ref"] = "GoogleCloudIntegrationsV1alphaSfdcChannel",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                          },
                        },
                        list = {
                          description = "Lists all sfdc channels that match the filter. Restrict to sfdc channels belonging to the current client only.",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/products/{productsId}/sfdcInstances/{sfdcInstancesId}/sfdcChannels",
                          httpMethod = "GET",
                          id = "integrations.projects.locations.products.sfdcInstances.sfdcChannels.list",
                          parameterOrder = {
                            "parent",
                          },
                          parameters = {
                            filter = {
                              description = "Filtering as supported in https://developers.google.com/authorized-buyers/apis/guides/v2/list-filters.",
                              location = "query",
                              type = "string",
                            },
                            pageSize = {
                              description = "The size of entries in the response. If unspecified, defaults to 100.",
                              format = "int32",
                              location = "query",
                              type = "integer",
                            },
                            pageToken = {
                              description = "The token returned in the previous response.",
                              location = "query",
                              type = "string",
                            },
                            parent = {
                              description = "Required. The client, which owns this collection of SfdcChannels.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/products/[^/]+/sfdcInstances/[^/]+$",
                              required = true,
                              type = "string",
                            },
                            readMask = {
                              description = "The mask which specifies fields that need to be returned in the SfdcChannel's response.",
                              format = "google-fieldmask",
                              location = "query",
                              type = "string",
                            },
                          },
                          path = "v1/{+parent}/sfdcChannels",
                          response = {
                            ["$ref"] = "GoogleCloudIntegrationsV1alphaListSfdcChannelsResponse",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                          },
                        },
                        patch = {
                          description = "Updates an sfdc channel. Updates the sfdc channel in spanner. Returns the sfdc channel.",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/products/{productsId}/sfdcInstances/{sfdcInstancesId}/sfdcChannels/{sfdcChannelsId}",
                          httpMethod = "PATCH",
                          id = "integrations.projects.locations.products.sfdcInstances.sfdcChannels.patch",
                          parameterOrder = {
                            "name",
                          },
                          parameters = {
                            name = {
                              description = "Resource name of the SFDC channel projects/{project}/locations/{location}/sfdcInstances/{sfdc_instance}/sfdcChannels/{sfdc_channel}.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/products/[^/]+/sfdcInstances/[^/]+/sfdcChannels/[^/]+$",
                              required = true,
                              type = "string",
                            },
                            updateMask = {
                              description = "Field mask specifying the fields in the above SfdcChannel that have been modified and need to be updated.",
                              format = "google-fieldmask",
                              location = "query",
                              type = "string",
                            },
                          },
                          path = "v1/{+name}",
                          request = {
                            ["$ref"] = "GoogleCloudIntegrationsV1alphaSfdcChannel",
                          },
                          response = {
                            ["$ref"] = "GoogleCloudIntegrationsV1alphaSfdcChannel",
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
            sfdcInstances = {
              methods = {
                create = {
                  description = "Creates an sfdc instance record. Store the sfdc instance in Spanner. Returns the sfdc instance.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/sfdcInstances",
                  httpMethod = "POST",
                  id = "integrations.projects.locations.sfdcInstances.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    parent = {
                      description = "Required. \"projects/{project}/locations/{location}\" format.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/sfdcInstances",
                  request = {
                    ["$ref"] = "GoogleCloudIntegrationsV1alphaSfdcInstance",
                  },
                  response = {
                    ["$ref"] = "GoogleCloudIntegrationsV1alphaSfdcInstance",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                delete = {
                  description = "Deletes an sfdc instance.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/sfdcInstances/{sfdcInstancesId}",
                  httpMethod = "DELETE",
                  id = "integrations.projects.locations.sfdcInstances.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The name that is associated with the SfdcInstance.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/sfdcInstances/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "GoogleProtobufEmpty",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                get = {
                  description = "Gets an sfdc instance. If the instance doesn't exist, Code.NOT_FOUND exception will be thrown.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/sfdcInstances/{sfdcInstancesId}",
                  httpMethod = "GET",
                  id = "integrations.projects.locations.sfdcInstances.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The name that is associated with the SfdcInstance.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/sfdcInstances/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "GoogleCloudIntegrationsV1alphaSfdcInstance",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                list = {
                  description = "Lists all sfdc instances that match the filter. Restrict to sfdc instances belonging to the current client only.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/sfdcInstances",
                  httpMethod = "GET",
                  id = "integrations.projects.locations.sfdcInstances.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    filter = {
                      description = "Filtering as supported in https://developers.google.com/authorized-buyers/apis/guides/v2/list-filters.",
                      location = "query",
                      type = "string",
                    },
                    pageSize = {
                      description = "The size of entries in the response. If unspecified, defaults to 100.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "The token returned in the previous response.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The client, which owns this collection of SfdcInstances.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    readMask = {
                      description = "The mask which specifies fields that need to be returned in the SfdcInstance's response.",
                      format = "google-fieldmask",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/sfdcInstances",
                  response = {
                    ["$ref"] = "GoogleCloudIntegrationsV1alphaListSfdcInstancesResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                patch = {
                  description = "Updates an sfdc instance. Updates the sfdc instance in spanner. Returns the sfdc instance.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/sfdcInstances/{sfdcInstancesId}",
                  httpMethod = "PATCH",
                  id = "integrations.projects.locations.sfdcInstances.patch",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Resource name of the SFDC instance projects/{project}/locations/{location}/sfdcInstances/{sfdcInstance}.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/sfdcInstances/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    updateMask = {
                      description = "Field mask specifying the fields in the above SfdcInstance that have been modified and need to be updated.",
                      format = "google-fieldmask",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  request = {
                    ["$ref"] = "GoogleCloudIntegrationsV1alphaSfdcInstance",
                  },
                  response = {
                    ["$ref"] = "GoogleCloudIntegrationsV1alphaSfdcInstance",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
              },
              resources = {
                sfdcChannels = {
                  methods = {
                    create = {
                      description = "Creates an sfdc channel record. Store the sfdc channel in Spanner. Returns the sfdc channel.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/sfdcInstances/{sfdcInstancesId}/sfdcChannels",
                      httpMethod = "POST",
                      id = "integrations.projects.locations.sfdcInstances.sfdcChannels.create",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        parent = {
                          description = "Required. \"projects/{project}/locations/{location}\" format.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/sfdcInstances/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/sfdcChannels",
                      request = {
                        ["$ref"] = "GoogleCloudIntegrationsV1alphaSfdcChannel",
                      },
                      response = {
                        ["$ref"] = "GoogleCloudIntegrationsV1alphaSfdcChannel",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    delete = {
                      description = "Deletes an sfdc channel.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/sfdcInstances/{sfdcInstancesId}/sfdcChannels/{sfdcChannelsId}",
                      httpMethod = "DELETE",
                      id = "integrations.projects.locations.sfdcInstances.sfdcChannels.delete",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The name that is associated with the SfdcChannel.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/sfdcInstances/[^/]+/sfdcChannels/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}",
                      response = {
                        ["$ref"] = "GoogleProtobufEmpty",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    get = {
                      description = "Gets an sfdc channel. If the channel doesn't exist, Code.NOT_FOUND exception will be thrown.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/sfdcInstances/{sfdcInstancesId}/sfdcChannels/{sfdcChannelsId}",
                      httpMethod = "GET",
                      id = "integrations.projects.locations.sfdcInstances.sfdcChannels.get",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The name that is associated with the SfdcChannel.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/sfdcInstances/[^/]+/sfdcChannels/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}",
                      response = {
                        ["$ref"] = "GoogleCloudIntegrationsV1alphaSfdcChannel",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    list = {
                      description = "Lists all sfdc channels that match the filter. Restrict to sfdc channels belonging to the current client only.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/sfdcInstances/{sfdcInstancesId}/sfdcChannels",
                      httpMethod = "GET",
                      id = "integrations.projects.locations.sfdcInstances.sfdcChannels.list",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        filter = {
                          description = "Filtering as supported in https://developers.google.com/authorized-buyers/apis/guides/v2/list-filters.",
                          location = "query",
                          type = "string",
                        },
                        pageSize = {
                          description = "The size of entries in the response. If unspecified, defaults to 100.",
                          format = "int32",
                          location = "query",
                          type = "integer",
                        },
                        pageToken = {
                          description = "The token returned in the previous response.",
                          location = "query",
                          type = "string",
                        },
                        parent = {
                          description = "Required. The client, which owns this collection of SfdcChannels.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/sfdcInstances/[^/]+$",
                          required = true,
                          type = "string",
                        },
                        readMask = {
                          description = "The mask which specifies fields that need to be returned in the SfdcChannel's response.",
                          format = "google-fieldmask",
                          location = "query",
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/sfdcChannels",
                      response = {
                        ["$ref"] = "GoogleCloudIntegrationsV1alphaListSfdcChannelsResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    patch = {
                      description = "Updates an sfdc channel. Updates the sfdc channel in spanner. Returns the sfdc channel.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/sfdcInstances/{sfdcInstancesId}/sfdcChannels/{sfdcChannelsId}",
                      httpMethod = "PATCH",
                      id = "integrations.projects.locations.sfdcInstances.sfdcChannels.patch",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Resource name of the SFDC channel projects/{project}/locations/{location}/sfdcInstances/{sfdc_instance}/sfdcChannels/{sfdc_channel}.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/sfdcInstances/[^/]+/sfdcChannels/[^/]+$",
                          required = true,
                          type = "string",
                        },
                        updateMask = {
                          description = "Field mask specifying the fields in the above SfdcChannel that have been modified and need to be updated.",
                          format = "google-fieldmask",
                          location = "query",
                          type = "string",
                        },
                      },
                      path = "v1/{+name}",
                      request = {
                        ["$ref"] = "GoogleCloudIntegrationsV1alphaSfdcChannel",
                      },
                      response = {
                        ["$ref"] = "GoogleCloudIntegrationsV1alphaSfdcChannel",
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
  revision = "20221215",
  rootUrl = "https://integrations.googleapis.com/",
  schemas = {
    CrmlogErrorCode = {
      description = "Registered ids for errors, as \"oneof\" enums. Each task or logical grouping of tasks may share the same enum.",
      id = "CrmlogErrorCode",
      properties = {
        commonErrorCode = {
          enum = {
            "COMMON_ERROR_CODE_UNSPECIFIED",
            "INVALID_CREDENTIALS",
            "REQUIRED_FIELDS_MISSING",
            "INVALID_FIELDS",
            "BACKEND",
            "GENERAL",
            "INTERNAL",
            "IO_ERROR",
            "NOT_FOUND",
            "EVENT_BUS",
            "ALREADY_EXISTS",
            "CONCORD",
            "CONVERSION",
            "FLUME",
            "PERMISSION",
            "SALES_FORCE",
            "SPANNER",
            "UNIMPLEMENTED",
            "RELTIO",
            "WORKFLOW_NOT_FOUND",
            "QUOTA_THROTTLED",
            "QUOTA_ENQUEUED",
            "INVALID_QUOTA_CONFIGURATION",
            "TASK_NOT_FOUND",
            "EXECUTION_TIMEOUT",
            "INVALID_EVENT_EXECUTION_STATE",
            "INVALID_ATTRIBUTE",
            "MISSING_ATTRIBUTE",
            "CLIENT_UNAUTHORIZED_FOR_WORKFLOW",
            "INVALID_PARAMETER",
            "MISSING_PARAMETER",
            "UNAUTHROIZED_WORKFLOW_EDITOR_ACTION",
            "FAILED_PRECONDITION",
            "INVALID_CLIENT",
            "MISSING_CLIENT",
            "INVALID_WORKFLOW",
            "MISSING_QUOTA_CONFIGURATION",
            "UNHANDLED_TASK_ERROR",
            "SCRIPT_TASK_RUNTIME_ERROR",
            "RPC",
            "INVALID_PROTO",
            "UNHANDLED_EVENTBUS_ERROR",
            "INVALID_TASK_STATE",
            "TYPED_TASK_INVALID_INPUT_OPERATION",
            "TYPED_TASK_INVALID_OUTPUT_OPERATION",
            "VALIDATION_ERROR",
            "RESUME_ERROR",
            "APPS_SCRIPT_EXECUTION_ERROR",
            "INVALID_VECTOR_USER",
            "INFORMATICA",
            "RETRYABLE_TASK_ERROR",
            "INVALID_TENANT",
            "WRONG_TENANT",
            "INFORMATICA_BACKEND_UNAVAILABLE",
            "RPC_PERMISSION_DENIED",
            "SYNC_EVENTBUS_EXECUTION_TIMEOUT",
            "ASYNC_EVENTBUS_EXECUTION_TIMEOUT",
            "NOT_SUPPORTED_DATA_TYPE",
            "UNSANITIZED_USER_INPUT",
            "TRANSFORM_EXPRESSION_EVALUATION_ERROR",
            "HTTP_EXCEPTION",
            "EXECUTION_CANCELLED",
          },
          enumDescriptions = {
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "SYNC_EVENTBUS_EXECUTION_TIMEOUT is for eventbus internal use only.",
            "ASYNC_EVENTBUS_EXECUTION_TIMEOUT is for eventbus internal use only. This error will be counted as server availability error.",
            "",
            "",
            "",
            "",
            "",
          },
          type = "string",
        },
      },
      type = "object",
    },
    EnterpriseCrmCardsCellValue = {
      id = "EnterpriseCrmCardsCellValue",
      properties = {
        booleanValue = {
          type = "boolean",
        },
        doubleValue = {
          format = "double",
          type = "number",
        },
        empty = {
          ["$ref"] = "GoogleProtobufEmpty",
        },
        longValue = {
          format = "int64",
          type = "string",
        },
        stringValue = {
          type = "string",
        },
      },
      type = "object",
    },
    EnterpriseCrmCardsRow = {
      id = "EnterpriseCrmCardsRow",
      properties = {
        cells = {
          description = "Ordered list of cell values within a row.",
          items = {
            ["$ref"] = "EnterpriseCrmCardsCellValue",
          },
          type = "array",
        },
      },
      type = "object",
    },
    EnterpriseCrmCardsTabularData = {
      description = "The generic data format returned from all connectors.",
      id = "EnterpriseCrmCardsTabularData",
      properties = {
        headers = {
          description = "Ordered list of column headers.",
          items = {
            type = "string",
          },
          type = "array",
        },
        rows = {
          description = "Ordered list of table rows.",
          items = {
            ["$ref"] = "EnterpriseCrmCardsRow",
          },
          type = "array",
        },
      },
      type = "object",
    },
    EnterpriseCrmCardsTemplatesAplosSeriesData = {
      description = "Data used to render an Aplos Series card.",
      id = "EnterpriseCrmCardsTemplatesAplosSeriesData",
      properties = {
        rows = {
          description = "A single Series Row",
          items = {
            ["$ref"] = "EnterpriseCrmCardsTemplatesAplosSeriesDataRow",
          },
          type = "array",
        },
      },
      type = "object",
    },
    EnterpriseCrmCardsTemplatesAplosSeriesDataRow = {
      description = "Aplos series row is exactly two columns labeled x and y.",
      id = "EnterpriseCrmCardsTemplatesAplosSeriesDataRow",
      properties = {
        x = {
          ["$ref"] = "EnterpriseCrmCardsCellValue",
        },
        y = {
          ["$ref"] = "EnterpriseCrmCardsCellValue",
        },
      },
      type = "object",
    },
    EnterpriseCrmCardsTemplatesAplosSeriesListData = {
      description = "Data used for Aplos charts that accept multiple Series.",
      id = "EnterpriseCrmCardsTemplatesAplosSeriesListData",
      properties = {
        series = {
          items = {
            ["$ref"] = "EnterpriseCrmCardsTemplatesAplosSeriesListDataSeries",
          },
          type = "array",
        },
      },
      type = "object",
    },
    EnterpriseCrmCardsTemplatesAplosSeriesListDataSeries = {
      id = "EnterpriseCrmCardsTemplatesAplosSeriesListDataSeries",
      properties = {
        data = {
          ["$ref"] = "EnterpriseCrmCardsTemplatesAplosSeriesData",
        },
        name = {
          type = "string",
        },
      },
      type = "object",
    },
    EnterpriseCrmEventbusAuthconfigAuthConfigTaskParam = {
      id = "EnterpriseCrmEventbusAuthconfigAuthConfigTaskParam",
      properties = {
        allowedCredentialTypes = {
          description = "Defines the credential types to be supported as Task may restrict specific types to use, e.g. Cloud SQL Task will use username/password type only.",
          items = {
            enum = {
              "CREDENTIAL_TYPE_UNSPECIFIED",
              "USERNAME_AND_PASSWORD",
              "API_KEY",
              "OAUTH2_AUTHORIZATION_CODE",
              "OAUTH2_IMPLICIT",
              "OAUTH2_CLIENT_CREDENTIALS",
              "OAUTH2_RESOURCE_OWNER_CREDENTIALS",
              "JWT",
              "AUTH_TOKEN",
              "SERVICE_ACCOUNT",
              "CLIENT_CERTIFICATE_ONLY",
              "OIDC_TOKEN",
            },
            enumDescriptions = {
              "",
              "Regular username/password pair.",
              "API key.",
              "OAuth 2.0 Authorization Code Grant Type.",
              "OAuth 2.0 Implicit Grant Type.",
              "OAuth 2.0 Client Credentials Grant Type.",
              "OAuth 2.0 Resource Owner Credentials Grant Type.",
              "JWT Token.",
              "Auth Token, e.g. bearer token.",
              "Service Account which can be used to generate token for authentication.",
              "Client Certificate only.",
              "Google OIDC ID Token",
            },
            type = "string",
          },
          type = "array",
        },
        allowedServiceAccountInContext = {
          type = "boolean",
        },
        authConfigId = {
          description = "UUID of the AuthConfig.",
          type = "string",
        },
        scope = {
          description = "A space-delimited list of requested scope permissions.",
          type = "string",
        },
        useServiceAccountInContext = {
          type = "boolean",
        },
      },
      type = "object",
    },
    EnterpriseCrmEventbusProtoAddress = {
      description = "Email address along with optional name and tokens. These tokens will be substituted for the variables in the form of [{var_name}], where var_name could be any string of no more than 32 bytes.",
      id = "EnterpriseCrmEventbusProtoAddress",
      properties = {
        email = {
          description = "Required.",
          type = "string",
        },
        name = {
          type = "string",
        },
        tokens = {
          items = {
            ["$ref"] = "EnterpriseCrmEventbusProtoToken",
          },
          type = "array",
        },
      },
      type = "object",
    },
    EnterpriseCrmEventbusProtoAttributes = {
      description = "Attributes are additional options that can be associated with each event property. For more information, see go/integration-platform/event_bus/attributes_registry.md. Next available: 8",
      id = "EnterpriseCrmEventbusProtoAttributes",
      properties = {
        dataType = {
          description = "Things like URL, Email, Currency, Timestamp (rather than string, int64...)",
          enum = {
            "DATA_TYPE_UNSPECIFIED",
            "EMAIL",
            "URL",
            "CURRENCY",
            "TIMESTAMP",
            "DOMAIN_NAME",
          },
          enumDescriptions = {
            "",
            "",
            "",
            "",
            "",
            "Domain is a web url string with one top-level private domain and a suffix (for example: google.com, walmart.com)",
          },
          type = "string",
        },
        defaultValue = {
          ["$ref"] = "EnterpriseCrmEventbusProtoValueType",
          description = "Used to define defaults.",
        },
        isRequired = {
          description = "Required for event execution. The validation will be done by the event bus when the event is triggered.",
          type = "boolean",
        },
        isSearchable = {
          description = "Used to indicate if a ParameterEntry should be converted to ParamIndexes for ST-Spanner full-text search. DEPRECATED: use searchable.",
          type = "boolean",
        },
        logSettings = {
          ["$ref"] = "EnterpriseCrmEventbusProtoLogSettings",
          description = "See go/integration-platform/analytics/logging_task.md for details.",
        },
        searchable = {
          enum = {
            "UNSPECIFIED",
            "YES",
            "NO",
          },
          enumDescriptions = {
            "",
            "If yes, the parameter key and value will be full-text indexed. In a proto, this value will propagate to all children whose searchable is unspecified.",
            "If no, the parameter key and value will not be full-text indexed. In a proto, this value will propagate to all children whose searchable is unspecified.",
          },
          type = "string",
        },
        taskVisibility = {
          description = "List of tasks that can view this property, if empty then all.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    EnterpriseCrmEventbusProtoBaseAlertConfigErrorEnumList = {
      description = "List of error enums for alerts.",
      id = "EnterpriseCrmEventbusProtoBaseAlertConfigErrorEnumList",
      properties = {
        enumStrings = {
          items = {
            type = "string",
          },
          type = "array",
        },
        filterType = {
          enum = {
            "DEFAULT_INCLUSIVE",
            "EXCLUSIVE",
          },
          enumDescriptions = {
            "",
            "",
          },
          type = "string",
        },
      },
      type = "object",
    },
    EnterpriseCrmEventbusProtoBaseAlertConfigThresholdValue = {
      description = "The threshold value of the metric, above or below which the alert should be triggered. See EventAlertConfig or TaskAlertConfig for the different alert metric types in each case. For the *RATE metrics, one or both of these fields may be set. Zero is the default value and can be left at that. For *PERCENTILE_DURATION metrics, one or both of these fields may be set, and also, the duration threshold value should be specified in the threshold_duration_ms member below. For *AVERAGE_DURATION metrics, these fields should not be set at all. A different member, threshold_duration_ms, must be set in the EventAlertConfig or the TaskAlertConfig. See go/eventbus-alert-config-examples",
      id = "EnterpriseCrmEventbusProtoBaseAlertConfigThresholdValue",
      properties = {
        absolute = {
          format = "int64",
          type = "string",
        },
        percentage = {
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    EnterpriseCrmEventbusProtoBaseFunction = {
      id = "EnterpriseCrmEventbusProtoBaseFunction",
      properties = {
        functionName = {
          enum = {
            "UNSPECIFIED",
            "NOW_IN_MILLIS",
            "INT_LIST",
            "ENVIRONMENT",
            "GET_EXECUTION_ID",
            "GET_INTEGRATION_NAME",
            "GET_REGION",
            "GET_UUID",
            "GET_PROJECT_ID",
          },
          enumDescriptions = {
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
          },
          type = "string",
        },
      },
      type = "object",
    },
    EnterpriseCrmEventbusProtoBaseValue = {
      id = "EnterpriseCrmEventbusProtoBaseValue",
      properties = {
        baseFunction = {
          ["$ref"] = "EnterpriseCrmEventbusProtoFunction",
          description = "Start with a function that does not build on existing values. Eg. CurrentTime, Min, Max, Exists, etc.",
        },
        literalValue = {
          ["$ref"] = "EnterpriseCrmEventbusProtoParameterValueType",
          description = "Start with a literal value.",
        },
        referenceValue = {
          description = "Start with a reference value to dereference.",
          type = "string",
        },
      },
      type = "object",
    },
    EnterpriseCrmEventbusProtoBooleanArrayFunction = {
      id = "EnterpriseCrmEventbusProtoBooleanArrayFunction",
      properties = {
        functionName = {
          enum = {
            "UNSPECIFIED",
            "GET",
            "APPEND",
            "SIZE",
            "TO_SET",
            "APPEND_ALL",
            "TO_JSON",
            "SET",
            "REMOVE",
            "REMOVE_AT",
            "CONTAINS",
            "FOR_EACH",
            "FILTER",
          },
          enumDescriptions = {
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
          },
          type = "string",
        },
      },
      type = "object",
    },
    EnterpriseCrmEventbusProtoBooleanFunction = {
      id = "EnterpriseCrmEventbusProtoBooleanFunction",
      properties = {
        functionName = {
          enum = {
            "UNSPECIFIED",
            "TO_JSON",
            "NOT",
            "AND",
            "NAND",
            "OR",
            "XOR",
            "NOR",
            "XNOR",
            "TO_STRING",
            "EQUALS",
          },
          enumDescriptions = {
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
          },
          type = "string",
        },
      },
      type = "object",
    },
    EnterpriseCrmEventbusProtoBooleanParameterArray = {
      id = "EnterpriseCrmEventbusProtoBooleanParameterArray",
      properties = {
        booleanValues = {
          items = {
            type = "boolean",
          },
          type = "array",
        },
      },
      type = "object",
    },
    EnterpriseCrmEventbusProtoBuganizerNotification = {
      id = "EnterpriseCrmEventbusProtoBuganizerNotification",
      properties = {
        assigneeEmailAddress = {
          description = "Whom to assign the new bug. Optional.",
          type = "string",
        },
        componentId = {
          description = "ID of the buganizer component within which to create a new issue. Required.",
          format = "int64",
          type = "string",
        },
        templateId = {
          description = "ID of the buganizer template to use. Optional.",
          format = "int64",
          type = "string",
        },
        title = {
          description = "Title of the issue to be created. Required.",
          type = "string",
        },
      },
      type = "object",
    },
    EnterpriseCrmEventbusProtoCloudSchedulerConfig = {
      description = "Cloud Scheduler Trigger configuration",
      id = "EnterpriseCrmEventbusProtoCloudSchedulerConfig",
      properties = {
        cronTab = {
          description = "Required. The cron tab of cloud scheduler trigger.",
          type = "string",
        },
        errorMessage = {
          description = "Optional. When the job was deleted from Pantheon UI, error_message will be populated when Get/List integrations",
          type = "string",
        },
        location = {
          description = "Required. The location where associated cloud scheduler job will be created",
          type = "string",
        },
        serviceAccountEmail = {
          description = "Required. Service account used by Cloud Scheduler to trigger the integration at scheduled time",
          type = "string",
        },
      },
      type = "object",
    },
    EnterpriseCrmEventbusProtoCombinedCondition = {
      description = "This message recursively combines constituent conditions using logical AND.",
      id = "EnterpriseCrmEventbusProtoCombinedCondition",
      properties = {
        conditions = {
          description = "A set of individual constituent conditions.",
          items = {
            ["$ref"] = "EnterpriseCrmEventbusProtoCondition",
          },
          type = "array",
        },
      },
      type = "object",
    },
    EnterpriseCrmEventbusProtoCondition = {
      description = "Condition that uses `operator` to evaluate the key against the value.",
      id = "EnterpriseCrmEventbusProtoCondition",
      properties = {
        eventPropertyKey = {
          description = "Key that's evaluated against the `value`. Please note the data type of the runtime value associated with the key should match the data type of `value`, else an IllegalArgumentException is thrown.",
          type = "string",
        },
        operator = {
          description = "Operator used to evaluate the condition. Please note that an operator with an inappropriate key/value operand will result in IllegalArgumentException, e.g. CONTAINS with boolean key/value pair.",
          enum = {
            "UNSET",
            "EQUALS",
            "CONTAINS",
            "LESS_THAN",
            "GREATER_THAN",
            "EXISTS",
            "DOES_NOT_EXIST",
            "IS_EMPTY",
            "IS_NOT_EMPTY",
          },
          enumDescriptions = {
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
          },
          type = "string",
        },
        value = {
          ["$ref"] = "EnterpriseCrmEventbusProtoValueType",
          description = "Value that's checked for the key.",
        },
      },
      type = "object",
    },
    EnterpriseCrmEventbusProtoConditionResult = {
      description = "Contains the combined condition calculation results.",
      id = "EnterpriseCrmEventbusProtoConditionResult",
      properties = {
        currentTaskNumber = {
          description = "the current task number.",
          type = "string",
        },
        nextTaskNumber = {
          description = "the next task number.",
          type = "string",
        },
        result = {
          description = "the result comes out after evaluate the combined condition. True if there's no combined condition specified.",
          type = "boolean",
        },
      },
      type = "object",
    },
    EnterpriseCrmEventbusProtoConnectorsConnection = {
      id = "EnterpriseCrmEventbusProtoConnectorsConnection",
      properties = {
        connectionName = {
          description = "Connection name Format: projects/{project}/locations/{location}/connections/{connection}",
          type = "string",
        },
        connectorVersion = {
          description = "Connector version Format: projects/{project}/locations/{location}/providers/{provider}/connectors/{connector}/versions/{version}",
          type = "string",
        },
        serviceName = {
          description = "Service name Format: projects/{project}/locations/{location}/namespaces/{namespace}/services/{service}",
          type = "string",
        },
      },
      type = "object",
    },
    EnterpriseCrmEventbusProtoConnectorsGenericConnectorTaskConfig = {
      id = "EnterpriseCrmEventbusProtoConnectorsGenericConnectorTaskConfig",
      properties = {
        connection = {
          ["$ref"] = "EnterpriseCrmEventbusProtoConnectorsConnection",
          description = "User-selected connection.",
        },
        operation = {
          description = "Operation to perform using the configured connection.",
          enum = {
            "OPERATION_UNSPECIFIED",
            "EXECUTE_ACTION",
            "LIST_ENTITIES",
            "GET_ENTITY",
            "CREATE_ENTITY",
            "UPDATE_ENTITY",
            "DELETE_ENTITY",
          },
          enumDescriptions = {
            "",
            "",
            "",
            "",
            "",
            "",
            "",
          },
          type = "string",
        },
      },
      type = "object",
    },
    EnterpriseCrmEventbusProtoCoordinate = {
      description = "Represents two-dimensional positions.",
      id = "EnterpriseCrmEventbusProtoCoordinate",
      properties = {
        x = {
          format = "int32",
          type = "integer",
        },
        y = {
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    EnterpriseCrmEventbusProtoCustomSuspensionRequest = {
      id = "EnterpriseCrmEventbusProtoCustomSuspensionRequest",
      properties = {
        postToQueueWithTriggerIdRequest = {
          ["$ref"] = "GoogleInternalCloudCrmEventbusV3PostToQueueWithTriggerIdRequest",
          description = "Request to fire an event containing the SuspensionInfo message.",
        },
        suspensionInfoEventParameterKey = {
          description = "In the fired event, set the SuspensionInfo message as the value for this key.",
          type = "string",
        },
      },
      type = "object",
    },
    EnterpriseCrmEventbusProtoDoubleArray = {
      id = "EnterpriseCrmEventbusProtoDoubleArray",
      properties = {
        values = {
          items = {
            format = "double",
            type = "number",
          },
          type = "array",
        },
      },
      type = "object",
    },
    EnterpriseCrmEventbusProtoDoubleArrayFunction = {
      id = "EnterpriseCrmEventbusProtoDoubleArrayFunction",
      properties = {
        functionName = {
          enum = {
            "UNSPECIFIED",
            "GET",
            "APPEND",
            "SIZE",
            "SUM",
            "AVG",
            "MAX",
            "MIN",
            "TO_SET",
            "APPEND_ALL",
            "TO_JSON",
            "SET",
            "REMOVE",
            "REMOVE_AT",
            "CONTAINS",
            "FOR_EACH",
            "FILTER",
          },
          enumDescriptions = {
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
          },
          type = "string",
        },
      },
      type = "object",
    },
    EnterpriseCrmEventbusProtoDoubleFunction = {
      id = "EnterpriseCrmEventbusProtoDoubleFunction",
      properties = {
        functionName = {
          enum = {
            "UNSPECIFIED",
            "TO_JSON",
            "TO_STRING",
            "ADD",
            "SUBTRACT",
            "MULTIPLY",
            "DIVIDE",
            "EXPONENT",
            "ROUND",
            "FLOOR",
            "CEIL",
            "GREATER_THAN",
            "LESS_THAN",
            "EQUALS",
            "GREATER_THAN_EQUALS",
            "LESS_THAN_EQUALS",
            "MOD",
          },
          enumDescriptions = {
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
          },
          type = "string",
        },
      },
      type = "object",
    },
    EnterpriseCrmEventbusProtoDoubleParameterArray = {
      id = "EnterpriseCrmEventbusProtoDoubleParameterArray",
      properties = {
        doubleValues = {
          items = {
            format = "double",
            type = "number",
          },
          type = "array",
        },
      },
      type = "object",
    },
    EnterpriseCrmEventbusProtoErrorDetail = {
      description = "An error, warning, or information message associated with a workflow.",
      id = "EnterpriseCrmEventbusProtoErrorDetail",
      properties = {
        errorCode = {
          ["$ref"] = "CrmlogErrorCode",
          description = "The associated error-code, which can be a common or internal code.",
        },
        errorMessage = {
          description = "The full text of the error message, including any parameters that were thrown along with the exception.",
          type = "string",
        },
        severity = {
          description = "The severity of the error: ERROR|WARN|INFO.",
          enum = {
            "SEVERITY_UNSPECIFIED",
            "ERROR",
            "WARN",
            "INFO",
          },
          enumDescriptions = {
            "",
            "",
            "",
            "",
          },
          type = "string",
        },
        taskNumber = {
          description = "The task try-number, in which, the error occurred. If zero, the error happened at the event level.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    EnterpriseCrmEventbusProtoEventBusProperties = {
      description = "LINT.IfChange This message is used for storing key value pair properties for each Event / Task in the EventBus. Please see go/cloud-crm-eng/platform/event_bus.md for more details.",
      id = "EnterpriseCrmEventbusProtoEventBusProperties",
      properties = {
        properties = {
          description = "An unordered list of property entries.",
          items = {
            ["$ref"] = "EnterpriseCrmEventbusProtoPropertyEntry",
          },
          type = "array",
        },
      },
      type = "object",
    },
    EnterpriseCrmEventbusProtoEventExecutionDetails = {
      description = "Contains the details of the execution info of this event: this includes the tasks execution details plus the event execution statistics. Next available id: 10",
      id = "EnterpriseCrmEventbusProtoEventExecutionDetails",
      properties = {
        eventAttemptStats = {
          items = {
            ["$ref"] = "EnterpriseCrmEventbusProtoEventExecutionDetailsEventAttemptStats",
          },
          type = "array",
        },
        eventExecutionSnapshot = {
          items = {
            ["$ref"] = "EnterpriseCrmEventbusProtoEventExecutionSnapshot",
          },
          type = "array",
        },
        eventExecutionState = {
          enum = {
            "UNSPECIFIED",
            "ON_HOLD",
            "IN_PROCESS",
            "SUCCEEDED",
            "FAILED",
            "CANCELED",
            "RETRY_ON_HOLD",
            "SUSPENDED",
          },
          enumDescriptions = {
            "",
            "Event is received and waiting for the execution. This happens when firing the event via \"postToQueue\" or \"schedule\".",
            "Event is under processing.",
            "Event execution successfully finished. There's no more change after this state.",
            "Event execution failed. There's no more change after this state.",
            "Event execution canceled by user. There's no more change after this state.",
            "Event execution failed and waiting for retry.",
            "Event execution suspended and waiting for manual intervention.",
          },
          type = "string",
        },
        eventRetriesFromBeginningCount = {
          description = "Indicates the number of times the execution has restarted from the beginning.",
          format = "int32",
          type = "integer",
        },
        logFilePath = {
          description = "The log file path (aka. cns address) for this event.",
          type = "string",
        },
        networkAddress = {
          description = "The network address (aka. bns address) that indicates where the event executor is running.",
          type = "string",
        },
        nextExecutionTime = {
          description = "Next scheduled execution time in case the execution status was RETRY_ON_HOLD.",
          format = "int64",
          type = "string",
        },
        ryeLockUnheldCount = {
          description = "Used internally and shouldn't be exposed to users. A counter for the cron job to record how many times this event is in in_process state but don't have a lock consecutively/",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    EnterpriseCrmEventbusProtoEventExecutionDetailsEventAttemptStats = {
      id = "EnterpriseCrmEventbusProtoEventExecutionDetailsEventAttemptStats",
      properties = {
        endTime = {
          description = "The end time of the event execution for current attempt.",
          format = "int64",
          type = "string",
        },
        startTime = {
          description = "The start time of the event execution for current attempt. This could be in the future if it's been scheduled.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    EnterpriseCrmEventbusProtoEventExecutionSnapshot = {
      description = "Contains the snapshot of the event execution for a given checkpoint. Next available id: 13",
      id = "EnterpriseCrmEventbusProtoEventExecutionSnapshot",
      properties = {
        checkpointTaskNumber = {
          description = "Indicates \"right after which checkpoint task's execution\" this snapshot is taken.",
          type = "string",
        },
        conditionResults = {
          description = "All of the computed conditions that been calculated.",
          items = {
            ["$ref"] = "EnterpriseCrmEventbusProtoConditionResult",
          },
          type = "array",
        },
        diffParams = {
          ["$ref"] = "EnterpriseCrmEventbusProtoEventParameters",
          description = "The parameters in Event object that differs from last snapshot.",
        },
        eventExecutionInfoId = {
          description = "Points to the event execution info this snapshot belongs to.",
          type = "string",
        },
        eventExecutionSnapshotId = {
          description = "Auto-generated. Used as primary key for EventExecutionSnapshots table.",
          type = "string",
        },
        eventExecutionSnapshotMetadata = {
          ["$ref"] = "EnterpriseCrmEventbusProtoEventExecutionSnapshotEventExecutionSnapshotMetadata",
        },
        eventParams = {
          ["$ref"] = "EnterpriseCrmEventbusProtoEventParameters",
          description = "The parameters in Event object.",
        },
        exceedMaxSize = {
          description = "indicate whether snapshot exceeded maximum size before clean up",
          type = "boolean",
        },
        snapshotTime = {
          description = "Indicates when this snapshot is taken.",
          format = "int64",
          type = "string",
        },
        taskExecutionDetails = {
          description = "All of the task execution details at the given point of time.",
          items = {
            ["$ref"] = "EnterpriseCrmEventbusProtoTaskExecutionDetails",
          },
          type = "array",
        },
        taskName = {
          description = "The task name associated with this snapshot. Could be empty.",
          type = "string",
        },
      },
      type = "object",
    },
    EnterpriseCrmEventbusProtoEventExecutionSnapshotEventExecutionSnapshotMetadata = {
      id = "EnterpriseCrmEventbusProtoEventExecutionSnapshotEventExecutionSnapshotMetadata",
      properties = {
        eventAttemptNum = {
          description = "the event attempt number this snapshot belongs to.",
          format = "int32",
          type = "integer",
        },
        taskAttemptNum = {
          description = "the task attempt number this snapshot belongs to. Could be empty.",
          format = "int32",
          type = "integer",
        },
        taskName = {
          description = "the task name associated with this snapshot. Could be empty.",
          type = "string",
        },
        taskNumber = {
          description = "The task number associated with this snapshot. Could be empty.",
          type = "string",
        },
      },
      type = "object",
    },
    EnterpriseCrmEventbusProtoEventParameters = {
      description = "LINT.IfChange This message is used for processing and persisting (when applicable) key value pair parameters for each event in the event bus. Please see go/integration-platform/event_bus.md for more details. Next id: 4",
      id = "EnterpriseCrmEventbusProtoEventParameters",
      properties = {
        parameters = {
          description = "Parameters are a part of Event and can be used to communicate between different tasks that are part of the same integration execution.",
          items = {
            ["$ref"] = "EnterpriseCrmEventbusProtoParameterEntry",
          },
          type = "array",
        },
      },
      type = "object",
    },
    EnterpriseCrmEventbusProtoExecutionTraceInfo = {
      description = "Message that helps aggregate all sub-executions triggered by one execution and keeps track of child-parent relationships.",
      id = "EnterpriseCrmEventbusProtoExecutionTraceInfo",
      properties = {
        parentEventExecutionInfoId = {
          description = "Parent event execution info id that triggers the current execution through SubWorkflowExecutorTask.",
          type = "string",
        },
        traceId = {
          description = "Used to aggregate ExecutionTraceInfo.",
          type = "string",
        },
      },
      type = "object",
    },
    EnterpriseCrmEventbusProtoExternalTraffic = {
      description = "Represents external traffic type and id.",
      id = "EnterpriseCrmEventbusProtoExternalTraffic",
      properties = {
        gcpProjectId = {
          description = "User’s GCP project id the traffic is referring to.",
          type = "string",
        },
        gcpProjectNumber = {
          description = "User’s GCP project number the traffic is referring to.",
          type = "string",
        },
        location = {
          description = "Location for the user's request.",
          type = "string",
        },
        source = {
          description = "LINT.ThenChange(//depot/google3/enterprise/crm/eventbus/proto/product.proto:product, //depot/google3/java/com/google/enterprise/crm/integrationplatform/api/utils/ConverterUtils.java:source_to_product)",
          enum = {
            "SOURCE_UNSPECIFIED",
            "APIGEE",
            "SECURITY",
          },
          enumDescriptions = {
            "",
            "",
            "",
          },
          type = "string",
        },
      },
      type = "object",
    },
    EnterpriseCrmEventbusProtoFailurePolicy = {
      description = "Policy that defines the task retry logic and failure type. If no FailurePolicy is defined for a task, all its dependent tasks will not be executed (i.e, a `retry_strategy` of NONE will be applied).",
      id = "EnterpriseCrmEventbusProtoFailurePolicy",
      properties = {
        intervalInSeconds = {
          description = "Required if retry_strategy is FIXED_INTERVAL or LINEAR/EXPONENTIAL_BACKOFF/RESTART_WORKFLOW_WITH_BACKOFF. Defines the initial interval for backoff.",
          format = "int64",
          type = "string",
        },
        maxNumRetries = {
          description = "Required if retry_strategy is FIXED_INTERVAL or LINEAR/EXPONENTIAL_BACKOFF/RESTART_WORKFLOW_WITH_BACKOFF. Defines the number of times the task will be retried if failed.",
          format = "int32",
          type = "integer",
        },
        retryStrategy = {
          description = "Defines what happens to the task upon failure.",
          enum = {
            "UNSPECIFIED",
            "IGNORE",
            "NONE",
            "FATAL",
            "FIXED_INTERVAL",
            "LINEAR_BACKOFF",
            "EXPONENTIAL_BACKOFF",
            "RESTART_WORKFLOW_WITH_BACKOFF",
          },
          enumDescriptions = {
            "",
            "Ignores the failure of this task. The rest of the workflow will be executed Assuming this task succeeded.",
            "Causes a permanent failure of the task. However, if the last task(s) of event was successfully completed despite the failure of this task, it has no impact on the workflow.",
            "Causes a permanent failure of the event. It is different from NONE because this will mark the event as FAILED by shutting down the event execution.",
            "The task will be retried from the failed task onwards after a fixed delay. A max-retry count is required to be specified with this strategy. A jitter is added to each exponential interval so that concurrently failing tasks of the same type do not end up retrying after the exact same exponential interval. Max_num_retries and interval_in_seconds must be specified.",
            "The task will be retried from the failed task onwards after a fixed delay that linearly increases with each retry attempt. A jitter is added to each exponential interval so that concurrently failing tasks of the same type do not end up retrying after the exact same exponential interval. A max-retry count is required to be specified with this strategy. Max_num_retries and interval_in_seconds must be specified.",
            "The task will be retried after an exponentially increasing period of time with each failure. A jitter is added to each exponential interval so that concurrently failing tasks of the same type do not end up retrying after the exact same exponential interval. A max-retry count is required to be specified with this strategy. `max_num_retries` and `interval_in_seconds` must be specified.",
            "The entire workflow will be restarted with the initial parameters that were set when the event was fired. A max-retry count is required to be specified with this strategy. `max_num_retries` and `interval_in_seconds` must be specified.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    EnterpriseCrmEventbusProtoField = {
      description = "Information about the value and type of the field. Next Id: 8",
      id = "EnterpriseCrmEventbusProtoField",
      properties = {
        cardinality = {
          description = "By default, if the cardinality is unspecified the field is considered required while mapping.",
          enum = {
            "UNSPECIFIED",
            "OPTIONAL",
          },
          enumDescriptions = {
            "For fields with unspecified cardinality.",
            "If field cardinality is set to optional, ignore errors if input field value is null or the reference_key is not found.",
          },
          type = "string",
        },
        defaultValue = {
          ["$ref"] = "EnterpriseCrmEventbusProtoParameterValueType",
          description = "This holds the default values for the fields. This value is supplied by user so may or may not contain PII or SPII data. This field will be scrubbed using DatapolScrubber#maybeScrub() with go/proto-sanitizer#level3",
        },
        fieldType = {
          description = "Specifies the data type of the field.",
          enum = {
            "DATA_TYPE_UNSPECIFIED",
            "STRING_VALUE",
            "INT_VALUE",
            "DOUBLE_VALUE",
            "BOOLEAN_VALUE",
            "PROTO_VALUE",
            "SERIALIZED_OBJECT_VALUE",
            "STRING_ARRAY",
            "INT_ARRAY",
            "DOUBLE_ARRAY",
            "PROTO_ARRAY",
            "PROTO_ENUM",
            "BOOLEAN_ARRAY",
            "PROTO_ENUM_ARRAY",
            "BYTES",
            "BYTES_ARRAY",
            "NON_SERIALIZABLE_OBJECT",
            "JSON_VALUE",
          },
          enumDescriptions = {
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "BYTES and BYTES_ARRAY data types are not allowed for top-level params. They're only meant to support protobufs with BYTES (sub)fields.",
            "",
            "",
            "",
          },
          type = "string",
        },
        protoDefPath = {
          description = "Optional. The fully qualified proto name (e.g. enterprise.crm.storage.Account). Required for output field of type PROTO_VALUE or PROTO_ARRAY. For e.g., if input field_type is BYTES and output field_type is PROTO_VALUE, then fully qualified proto type url should be provided to parse the input bytes. If field_type is *_ARRAY, then all the converted protos are of the same type.",
          type = "string",
        },
        referenceKey = {
          description = "This holds the reference key of the workflow or task parameter. 1. Any workflow parameter, for e.g. $workflowParam1$. 2. Any task input or output parameter, for e.g. $task1_param1$. 3. Any workflow or task parameters with subfield references, for e.g., $task1_param1.employee.id$",
          type = "string",
        },
        transformExpression = {
          ["$ref"] = "EnterpriseCrmEventbusProtoTransformExpression",
          description = "This is the transform expression to fetch the input field value. for e.g. $param1$.CONCAT('test'). See go/transform-functions-design for more details. Keep points - 1. Only input field can have a transform expression. 2. If a transform expression is provided, reference_key will be ignored. 3. If no value is returned after evaluation of transform expression, default_value can be mapped if provided. 4. The field_type should be the type of the final object returned after the transform expression is evaluated. Scrubs the transform expression before logging as value provided by user so may or may not contain PII or SPII data.",
        },
      },
      type = "object",
    },
    EnterpriseCrmEventbusProtoFieldMappingConfig = {
      description = "Field Mapping Config to map multiple output fields values from input fields values. Next id: 2",
      id = "EnterpriseCrmEventbusProtoFieldMappingConfig",
      properties = {
        mappedFields = {
          items = {
            ["$ref"] = "EnterpriseCrmEventbusProtoMappedField",
          },
          type = "array",
        },
      },
      type = "object",
    },
    EnterpriseCrmEventbusProtoFunction = {
      id = "EnterpriseCrmEventbusProtoFunction",
      properties = {
        functionType = {
          ["$ref"] = "EnterpriseCrmEventbusProtoFunctionType",
          description = "The name of the function to perform.",
        },
        parameters = {
          description = "List of parameters required for the transformation.",
          items = {
            ["$ref"] = "EnterpriseCrmEventbusProtoTransformExpression",
          },
          type = "array",
        },
      },
      type = "object",
    },
    EnterpriseCrmEventbusProtoFunctionType = {
      id = "EnterpriseCrmEventbusProtoFunctionType",
      properties = {
        baseFunction = {
          ["$ref"] = "EnterpriseCrmEventbusProtoBaseFunction",
          description = "LINT.IfChange",
        },
        booleanArrayFunction = {
          ["$ref"] = "EnterpriseCrmEventbusProtoBooleanArrayFunction",
        },
        booleanFunction = {
          ["$ref"] = "EnterpriseCrmEventbusProtoBooleanFunction",
        },
        doubleArrayFunction = {
          ["$ref"] = "EnterpriseCrmEventbusProtoDoubleArrayFunction",
        },
        doubleFunction = {
          ["$ref"] = "EnterpriseCrmEventbusProtoDoubleFunction",
        },
        intArrayFunction = {
          ["$ref"] = "EnterpriseCrmEventbusProtoIntArrayFunction",
        },
        intFunction = {
          ["$ref"] = "EnterpriseCrmEventbusProtoIntFunction",
        },
        jsonFunction = {
          ["$ref"] = "EnterpriseCrmEventbusProtoJsonFunction",
          description = "LINT.ThenChange(//depot/google3/alkali/apps/integrationplatform/client/workflow_editor/utils/transform_function.ts)",
        },
        protoArrayFunction = {
          ["$ref"] = "EnterpriseCrmEventbusProtoProtoArrayFunction",
        },
        protoFunction = {
          ["$ref"] = "EnterpriseCrmEventbusProtoProtoFunction",
        },
        stringArrayFunction = {
          ["$ref"] = "EnterpriseCrmEventbusProtoStringArrayFunction",
        },
        stringFunction = {
          ["$ref"] = "EnterpriseCrmEventbusProtoStringFunction",
        },
      },
      type = "object",
    },
    EnterpriseCrmEventbusProtoIntArray = {
      id = "EnterpriseCrmEventbusProtoIntArray",
      properties = {
        values = {
          items = {
            format = "int64",
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    EnterpriseCrmEventbusProtoIntArrayFunction = {
      id = "EnterpriseCrmEventbusProtoIntArrayFunction",
      properties = {
        functionName = {
          enum = {
            "UNSPECIFIED",
            "GET",
            "APPEND",
            "SIZE",
            "SUM",
            "AVG",
            "MAX",
            "MIN",
            "TO_SET",
            "APPEND_ALL",
            "TO_JSON",
            "SET",
            "REMOVE",
            "REMOVE_AT",
            "CONTAINS",
            "FOR_EACH",
            "FILTER",
          },
          enumDescriptions = {
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
          },
          type = "string",
        },
      },
      type = "object",
    },
    EnterpriseCrmEventbusProtoIntFunction = {
      id = "EnterpriseCrmEventbusProtoIntFunction",
      properties = {
        functionName = {
          enum = {
            "UNSPECIFIED",
            "ADD",
            "SUBTRACT",
            "MULTIPLY",
            "DIVIDE",
            "EXPONENT",
            "GREATER_THAN_EQUAL_TO",
            "GREATER_THAN",
            "LESS_THAN_EQUAL_TO",
            "LESS_THAN",
            "TO_DOUBLE",
            "TO_STRING",
            "EQUALS",
            "TO_JSON",
            "MOD",
            "EPOCH_TO_HUMAN_READABLE_TIME",
          },
          enumDescriptions = {
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
          },
          type = "string",
        },
      },
      type = "object",
    },
    EnterpriseCrmEventbusProtoIntParameterArray = {
      id = "EnterpriseCrmEventbusProtoIntParameterArray",
      properties = {
        intValues = {
          items = {
            format = "int64",
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    EnterpriseCrmEventbusProtoJsonFunction = {
      id = "EnterpriseCrmEventbusProtoJsonFunction",
      properties = {
        functionName = {
          enum = {
            "UNSPECIFIED",
            "GET_PROPERTY",
            "GET_ELEMENT",
            "APPEND_ELEMENT",
            "SIZE",
            "SET_PROPERTY",
            "FLATTEN",
            "FLATTEN_ONCE",
            "MERGE",
            "TO_STRING",
            "TO_INT",
            "TO_DOUBLE",
            "TO_BOOLEAN",
            "TO_PROTO",
            "TO_STRING_ARRAY",
            "TO_INT_ARRAY",
            "TO_DOUBLE_ARRAY",
            "TO_PROTO_ARRAY",
            "TO_BOOLEAN_ARRAY",
            "REMOVE_PROPERTY",
            "RESOLVE_TEMPLATE",
            "EQUALS",
            "FOR_EACH",
            "FILTER_ELEMENTS",
          },
          enumDescriptions = {
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "next id: 24",
          },
          type = "string",
        },
      },
      type = "object",
    },
    EnterpriseCrmEventbusProtoLogSettings = {
      description = "The LogSettings define the logging attributes for an event property. These attributes are used to map the property to the parameter in the log proto. Also used to define scrubbing/truncation behavior and PII information. See go/integration-platform/analytics/logging_task.md for details.",
      id = "EnterpriseCrmEventbusProtoLogSettings",
      properties = {
        logFieldName = {
          description = "The name of corresponding logging field of the event property. If omitted, assumes the same name as the event property key.",
          type = "string",
        },
        sanitizeOptions = {
          ["$ref"] = "EnterpriseCrmLoggingGwsSanitizeOptions",
          description = "Contains the scrubbing options, such as whether to scrub, obfuscate, etc.",
        },
        seedPeriod = {
          enum = {
            "SEED_PERIOD_UNSPECIFIED",
            "DAY",
            "WEEK",
            "MONTH",
          },
          enumDescriptions = {
            "",
            "Sanitized values remain constant for the day of the event.",
            "Sanitized values remain constant for the week of the event; may cross month boundaries.",
            "Sanitized values remain constant for the month of the event.",
          },
          type = "string",
        },
        seedScope = {
          enum = {
            "SEED_SCOPE_UNSPECIFIED",
            "EVENT_NAME",
            "TIME_PERIOD",
            "PARAM_NAME",
          },
          enumDescriptions = {
            "",
            "Hash computations include the event name.",
            "Hash computations include a time period.",
            "Hash computations include the param name.",
          },
          type = "string",
        },
        shorteningLimits = {
          ["$ref"] = "EnterpriseCrmLoggingGwsFieldLimits",
          description = "Contains the field limits for shortening, such as max string length and max array length.",
        },
      },
      type = "object",
    },
    EnterpriseCrmEventbusProtoLoopMetadata = {
      id = "EnterpriseCrmEventbusProtoLoopMetadata",
      properties = {
        currentIterationCount = {
          description = "Starting from 1, not 0.",
          format = "int64",
          type = "string",
        },
        currentIterationDetail = {
          description = "Needs to be set by the loop impl class before each iteration. The abstract loop class will append the request and response to it. Eg. The foreach Loop will clean up and set it as the current iteration element at the start of each loop. The post request and response will be appended to the value once they are available.",
          type = "string",
        },
        errorMsg = {
          description = "Add the error message when loops fail.",
          type = "string",
        },
        failureLocation = {
          description = "Indicates where in the loop logic did it error out.",
          enum = {
            "UNKNOWN",
            "SUBWORKFLOW",
            "PARAM_OVERRIDING",
            "PARAM_AGGREGATING",
            "SETTING_ITERATION_ELEMENT",
            "GETTING_LIST_TO_ITERATE",
            "CONDITION_EVALUATION",
            "BUILDING_REQUEST",
          },
          enumDescriptions = {
            "No error or Unknown.",
            "Subworkflow failed while firing/running.",
            "Param overrides failed.",
            "Param aggregation failed.",
            "Setting for loop current element failed.",
            "Getting the list to iterate.",
            "Evaluating the while loop condition.",
            "Building the iteration request",
          },
          type = "string",
        },
      },
      type = "object",
    },
    EnterpriseCrmEventbusProtoMappedField = {
      description = "Mapped field is a pair of input field and output field. Next Id: 3",
      id = "EnterpriseCrmEventbusProtoMappedField",
      properties = {
        inputField = {
          ["$ref"] = "EnterpriseCrmEventbusProtoField",
          description = "The input field being mapped from.",
        },
        outputField = {
          ["$ref"] = "EnterpriseCrmEventbusProtoField",
          description = "The output field being mapped to.",
        },
      },
      type = "object",
    },
    EnterpriseCrmEventbusProtoNextTask = {
      description = "The task that is next in line to be executed, if the condition specified evaluated to true.",
      id = "EnterpriseCrmEventbusProtoNextTask",
      properties = {
        combinedConditions = {
          description = "Combined condition for this task to become an eligible next task. Each of these combined_conditions are joined with logical OR. DEPRECATED: use `condition`",
          items = {
            ["$ref"] = "EnterpriseCrmEventbusProtoCombinedCondition",
          },
          type = "array",
        },
        condition = {
          description = "Standard filter expression for this task to become an eligible next task.",
          type = "string",
        },
        description = {
          description = "User-provided description intended to give more business context about the next task edge or condition.",
          type = "string",
        },
        label = {
          description = "User-provided label that is attached to this edge in the UI.",
          type = "string",
        },
        taskConfigId = {
          description = "ID of the next task.",
          type = "string",
        },
        taskNumber = {
          description = "Task number of the next task.",
          type = "string",
        },
      },
      type = "object",
    },
    EnterpriseCrmEventbusProtoNextTeardownTask = {
      description = "The teardown task that is next in line to be executed. We support only sequential execution of teardown tasks (i.e. no branching).",
      id = "EnterpriseCrmEventbusProtoNextTeardownTask",
      properties = {
        name = {
          description = "Required. Name of the next teardown task.",
          type = "string",
        },
      },
      type = "object",
    },
    EnterpriseCrmEventbusProtoNodeIdentifier = {
      description = "Represents a node identifier (type + id). Next highest id: 3",
      id = "EnterpriseCrmEventbusProtoNodeIdentifier",
      properties = {
        elementIdentifier = {
          description = "Configuration of the edge.",
          type = "string",
        },
        elementType = {
          description = "Destination node where the edge ends. It can only be a task config.",
          enum = {
            "UNKNOWN_TYPE",
            "TASK_CONFIG",
            "TRIGGER_CONFIG",
          },
          enumDescriptions = {
            "",
            "",
            "",
          },
          type = "string",
        },
      },
      type = "object",
    },
    EnterpriseCrmEventbusProtoNotification = {
      id = "EnterpriseCrmEventbusProtoNotification",
      properties = {
        buganizerNotification = {
          ["$ref"] = "EnterpriseCrmEventbusProtoBuganizerNotification",
        },
        emailAddress = {
          ["$ref"] = "EnterpriseCrmEventbusProtoAddress",
        },
        escalatorQueue = {
          type = "string",
        },
        pubsubTopic = {
          type = "string",
        },
        request = {
          ["$ref"] = "EnterpriseCrmEventbusProtoCustomSuspensionRequest",
          description = "If the out-of-the-box email/pubsub notifications are not suitable and custom logic is required, fire a workflow containing all info needed to notify users to resume execution.",
        },
      },
      type = "object",
    },
    EnterpriseCrmEventbusProtoParamSpecEntryConfig = {
      id = "EnterpriseCrmEventbusProtoParamSpecEntryConfig",
      properties = {
        descriptivePhrase = {
          description = "A short phrase to describe what this parameter contains.",
          type = "string",
        },
        helpText = {
          description = "Detailed help text for this parameter containing information not provided elsewhere. For example, instructions on how to migrate from a deprecated parameter.",
          type = "string",
        },
        hideDefaultValue = {
          description = "Whether the default value is hidden in the UI.",
          type = "boolean",
        },
        inputDisplayOption = {
          enum = {
            "DEFAULT",
            "STRING_MULTI_LINE",
            "NUMBER_SLIDER",
            "BOOLEAN_TOGGLE",
          },
          enumDescriptions = {
            "A single-line input for strings, a numeric input box for numbers, or a checkbox for booleans.",
            "A multi-line input box for longer strings/string templates.",
            "A slider to select a numerical value. The default range is [0, 100].",
            "A toggle button for boolean parameters.",
          },
          type = "string",
        },
        isHidden = {
          description = "Whether this field is hidden in the UI.",
          type = "boolean",
        },
        label = {
          description = "A user-friendly label for the parameter.",
          type = "string",
        },
        parameterNameOption = {
          enum = {
            "DEFAULT_NOT_PARAMETER_NAME",
            "IS_PARAMETER_NAME",
            "KEY_IS_PARAMETER_NAME",
            "VALUE_IS_PARAMETER_NAME",
          },
          enumDescriptions = {
            "This field is not a parameter name.",
            "If this field is a string and this option is selected, the field will be interpreted as a parameter name. Users will be able to choose a variable using the autocomplete, but the name will be stored as a literal string.",
            "If this field is a ParameterMap and this option is selected, the map's keys will be interpreted as parameter names. Ignored if this field is not a ParameterMap.",
            "If this field is a ParameterMap and this option is selected, the map's values will be interpreted as parameter names. Ignored if this field is not a ParameterMap.",
          },
          type = "string",
        },
        subSectionLabel = {
          description = "A user-friendly label for subSection under which the parameter will be displayed.",
          type = "string",
        },
        uiPlaceholderText = {
          description = "Placeholder text which will appear in the UI input form for this parameter.",
          type = "string",
        },
      },
      type = "object",
    },
    EnterpriseCrmEventbusProtoParamSpecEntryProtoDefinition = {
      id = "EnterpriseCrmEventbusProtoParamSpecEntryProtoDefinition",
      properties = {
        fullName = {
          description = "The fully-qualified proto name. This message, for example, would be \"enterprise.crm.eventbus.proto.ParamSpecEntry.ProtoDefinition\".",
          type = "string",
        },
        path = {
          description = "Path to the proto file that contains the message type's definition.",
          type = "string",
        },
      },
      type = "object",
    },
    EnterpriseCrmEventbusProtoParamSpecEntryValidationRule = {
      id = "EnterpriseCrmEventbusProtoParamSpecEntryValidationRule",
      properties = {
        doubleRange = {
          ["$ref"] = "EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleDoubleRange",
        },
        intRange = {
          ["$ref"] = "EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleIntRange",
        },
        stringRegex = {
          ["$ref"] = "EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleStringRegex",
        },
      },
      type = "object",
    },
    EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleDoubleRange = {
      description = "Range used to validate doubles and floats.",
      id = "EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleDoubleRange",
      properties = {
        max = {
          description = "The inclusive maximum of the acceptable range.",
          format = "double",
          type = "number",
        },
        min = {
          description = "The inclusive minimum of the acceptable range.",
          format = "double",
          type = "number",
        },
      },
      type = "object",
    },
    EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleIntRange = {
      description = "Range used to validate longs and ints.",
      id = "EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleIntRange",
      properties = {
        max = {
          description = "The inclusive maximum of the acceptable range.",
          format = "int64",
          type = "string",
        },
        min = {
          description = "The inclusive minimum of the acceptable range.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleStringRegex = {
      description = "Rule used to validate strings.",
      id = "EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleStringRegex",
      properties = {
        exclusive = {
          description = "Whether the regex matcher is applied exclusively (if true, matching values will be rejected).",
          type = "boolean",
        },
        regex = {
          description = "The regex applied to the input value(s).",
          type = "string",
        },
      },
      type = "object",
    },
    EnterpriseCrmEventbusProtoParameterEntry = {
      description = "Key-value pair of EventBus parameters.",
      id = "EnterpriseCrmEventbusProtoParameterEntry",
      properties = {
        key = {
          description = "Key is used to retrieve the corresponding parameter value. This should be unique for a given fired event. These parameters must be predefined in the integration definition.",
          type = "string",
        },
        value = {
          ["$ref"] = "EnterpriseCrmEventbusProtoParameterValueType",
          description = "Values for the defined keys. Each value can either be string, int, double or any proto message.",
        },
      },
      type = "object",
    },
    EnterpriseCrmEventbusProtoParameterMap = {
      description = "A generic multi-map that holds key value pairs. They keys and values can be of any type, unless specified.",
      id = "EnterpriseCrmEventbusProtoParameterMap",
      properties = {
        entries = {
          items = {
            ["$ref"] = "EnterpriseCrmEventbusProtoParameterMapEntry",
          },
          type = "array",
        },
        keyType = {
          description = "Option to specify key value type for all entries of the map. If provided then field types for all entries must conform to this.",
          enum = {
            "DATA_TYPE_UNSPECIFIED",
            "STRING_VALUE",
            "INT_VALUE",
            "DOUBLE_VALUE",
            "BOOLEAN_VALUE",
            "PROTO_VALUE",
            "SERIALIZED_OBJECT_VALUE",
            "STRING_ARRAY",
            "INT_ARRAY",
            "DOUBLE_ARRAY",
            "PROTO_ARRAY",
            "PROTO_ENUM",
            "BOOLEAN_ARRAY",
            "PROTO_ENUM_ARRAY",
            "BYTES",
            "BYTES_ARRAY",
            "NON_SERIALIZABLE_OBJECT",
            "JSON_VALUE",
          },
          enumDescriptions = {
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "BYTES and BYTES_ARRAY data types are not allowed for top-level params. They're only meant to support protobufs with BYTES (sub)fields.",
            "",
            "",
            "",
          },
          type = "string",
        },
        valueType = {
          enum = {
            "DATA_TYPE_UNSPECIFIED",
            "STRING_VALUE",
            "INT_VALUE",
            "DOUBLE_VALUE",
            "BOOLEAN_VALUE",
            "PROTO_VALUE",
            "SERIALIZED_OBJECT_VALUE",
            "STRING_ARRAY",
            "INT_ARRAY",
            "DOUBLE_ARRAY",
            "PROTO_ARRAY",
            "PROTO_ENUM",
            "BOOLEAN_ARRAY",
            "PROTO_ENUM_ARRAY",
            "BYTES",
            "BYTES_ARRAY",
            "NON_SERIALIZABLE_OBJECT",
            "JSON_VALUE",
          },
          enumDescriptions = {
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "BYTES and BYTES_ARRAY data types are not allowed for top-level params. They're only meant to support protobufs with BYTES (sub)fields.",
            "",
            "",
            "",
          },
          type = "string",
        },
      },
      type = "object",
    },
    EnterpriseCrmEventbusProtoParameterMapEntry = {
      description = "Entry is a pair of key and value.",
      id = "EnterpriseCrmEventbusProtoParameterMapEntry",
      properties = {
        key = {
          ["$ref"] = "EnterpriseCrmEventbusProtoParameterMapField",
        },
        value = {
          ["$ref"] = "EnterpriseCrmEventbusProtoParameterMapField",
        },
      },
      type = "object",
    },
    EnterpriseCrmEventbusProtoParameterMapField = {
      description = "Field represents either the key or value in an entry.",
      id = "EnterpriseCrmEventbusProtoParameterMapField",
      properties = {
        literalValue = {
          ["$ref"] = "EnterpriseCrmEventbusProtoParameterValueType",
          description = "Passing a literal value.",
        },
        referenceKey = {
          description = "Referencing one of the WF variables.",
          type = "string",
        },
      },
      type = "object",
    },
    EnterpriseCrmEventbusProtoParameterValueType = {
      description = "LINT.IfChange To support various types of parameter values. Next available id: 14",
      id = "EnterpriseCrmEventbusProtoParameterValueType",
      properties = {
        booleanArray = {
          ["$ref"] = "EnterpriseCrmEventbusProtoBooleanParameterArray",
        },
        booleanValue = {
          type = "boolean",
        },
        doubleArray = {
          ["$ref"] = "EnterpriseCrmEventbusProtoDoubleParameterArray",
        },
        doubleValue = {
          format = "double",
          type = "number",
        },
        intArray = {
          ["$ref"] = "EnterpriseCrmEventbusProtoIntParameterArray",
        },
        intValue = {
          format = "int64",
          type = "string",
        },
        protoArray = {
          ["$ref"] = "EnterpriseCrmEventbusProtoProtoParameterArray",
        },
        protoValue = {
          additionalProperties = {
            description = "Properties of the object. Contains field @type with type URL.",
            type = "any",
          },
          type = "object",
        },
        serializedObjectValue = {
          ["$ref"] = "EnterpriseCrmEventbusProtoSerializedObjectParameter",
        },
        stringArray = {
          ["$ref"] = "EnterpriseCrmEventbusProtoStringParameterArray",
        },
        stringValue = {
          type = "string",
        },
      },
      type = "object",
    },
    EnterpriseCrmEventbusProtoPropertyEntry = {
      description = "Key-value pair of EventBus property.",
      id = "EnterpriseCrmEventbusProtoPropertyEntry",
      properties = {
        key = {
          description = "Key is used to retrieve the corresponding property value. This should be unique for a given fired event. The Tasks should be aware of the keys used while firing the events for them to be able to retrieve the values.",
          type = "string",
        },
        value = {
          ["$ref"] = "EnterpriseCrmEventbusProtoValueType",
          description = "Values for the defined keys. Each value can either be string, int, double or any proto message.",
        },
      },
      type = "object",
    },
    EnterpriseCrmEventbusProtoProtoArrayFunction = {
      id = "EnterpriseCrmEventbusProtoProtoArrayFunction",
      properties = {
        functionName = {
          enum = {
            "UNSPECIFIED",
            "GET",
            "APPEND",
            "SIZE",
            "TO_SET",
            "APPEND_ALL",
            "TO_JSON",
            "SET",
            "REMOVE",
            "REMOVE_AT",
            "CONTAINS",
            "FOR_EACH",
            "FILTER",
          },
          enumDescriptions = {
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
          },
          type = "string",
        },
      },
      type = "object",
    },
    EnterpriseCrmEventbusProtoProtoFunction = {
      id = "EnterpriseCrmEventbusProtoProtoFunction",
      properties = {
        functionName = {
          enum = {
            "UNSPECIFIED",
            "GET_STRING_SUBFIELD",
            "GET_INT_SUBFIELD",
            "GET_DOUBLE_SUBFIELD",
            "GET_BOOLEAN_SUBFIELD",
            "GET_STRING_ARRAY_SUBFIELD",
            "GET_INT_ARRAY_SUBFIELD",
            "GET_DOUBLE_ARRAY_SUBFIELD",
            "GET_BOOLEAN_ARRAY_SUBFIELD",
            "GET_PROTO_ARRAY_SUBFIELD",
            "GET_PROTO_SUBFIELD",
            "TO_JSON",
            "GET_BYTES_SUBFIELD_AS_UTF_8_STRING",
            "GET_BYTES_SUBFIELD_AS_PROTO",
            "EQUALS",
          },
          enumDescriptions = {
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
          },
          type = "string",
        },
      },
      type = "object",
    },
    EnterpriseCrmEventbusProtoProtoParameterArray = {
      id = "EnterpriseCrmEventbusProtoProtoParameterArray",
      properties = {
        protoValues = {
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
    EnterpriseCrmEventbusProtoScatterResponse = {
      id = "EnterpriseCrmEventbusProtoScatterResponse",
      properties = {
        errorMsg = {
          description = "The error message of the failure if applicable.",
          type = "string",
        },
        executionIds = {
          description = "The execution ids of each Subworkflow fired by this scatter.",
          items = {
            type = "string",
          },
          type = "array",
        },
        isSuccessful = {
          description = "If execution is sync, this is true if the execution passed and false if it failed. If the execution is async, this is true if the WF was fired off successfully, and false if it failed to execute. The success or failure of the subworkflows executed are not captured.",
          type = "boolean",
        },
        responseParams = {
          description = "A list of all the response parameters in the aggregtorMap stored with the remapped key.",
          items = {
            ["$ref"] = "EnterpriseCrmEventbusProtoParameterEntry",
          },
          type = "array",
        },
        scatterElement = {
          ["$ref"] = "EnterpriseCrmEventbusProtoParameterValueType",
          description = "The element that was scattered for this execution.",
        },
      },
      type = "object",
    },
    EnterpriseCrmEventbusProtoSerializedObjectParameter = {
      id = "EnterpriseCrmEventbusProtoSerializedObjectParameter",
      properties = {
        objectValue = {
          format = "byte",
          type = "string",
        },
      },
      type = "object",
    },
    EnterpriseCrmEventbusProtoStringArray = {
      id = "EnterpriseCrmEventbusProtoStringArray",
      properties = {
        values = {
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    EnterpriseCrmEventbusProtoStringArrayFunction = {
      id = "EnterpriseCrmEventbusProtoStringArrayFunction",
      properties = {
        functionName = {
          enum = {
            "UNSPECIFIED",
            "GET",
            "APPEND",
            "SIZE",
            "TO_SET",
            "APPEND_ALL",
            "TO_JSON",
            "SET",
            "REMOVE",
            "REMOVE_AT",
            "CONTAINS",
            "FOR_EACH",
            "FILTER",
          },
          enumDescriptions = {
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
          },
          type = "string",
        },
      },
      type = "object",
    },
    EnterpriseCrmEventbusProtoStringFunction = {
      id = "EnterpriseCrmEventbusProtoStringFunction",
      properties = {
        functionName = {
          enum = {
            "UNSPECIFIED",
            "CONCAT",
            "TO_UPPERCASE",
            "TO_LOWERCASE",
            "CONTAINS",
            "SPLIT",
            "LENGTH",
            "EQUALS",
            "TO_INT",
            "TO_DOUBLE",
            "TO_BOOLEAN",
            "TO_BASE_64",
            "TO_JSON",
            "EQUALS_IGNORE_CASE",
            "REPLACE_ALL",
            "SUBSTRING",
            "RESOLVE_TEMPLATE",
          },
          enumDescriptions = {
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
          },
          type = "string",
        },
      },
      type = "object",
    },
    EnterpriseCrmEventbusProtoStringParameterArray = {
      id = "EnterpriseCrmEventbusProtoStringParameterArray",
      properties = {
        stringValues = {
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    EnterpriseCrmEventbusProtoSuccessPolicy = {
      description = "Policy that dictates the behavior for the task after it completes successfully.",
      id = "EnterpriseCrmEventbusProtoSuccessPolicy",
      properties = {
        finalState = {
          description = "State to which the execution snapshot status will be set if the task succeeds.",
          enum = {
            "UNSPECIFIED",
            "SUCCEEDED",
            "SUSPENDED",
          },
          enumDescriptions = {
            "",
            "The default behavior, where successful tasks will be marked as SUCCEEDED.",
            "Sets the state to SUSPENDED after executing. This is required for SuspensionTask; event execution will continue once the user calls ResolveSuspensions with the event_execution_info_id and the task number.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    EnterpriseCrmEventbusProtoSuspensionAuthPermissions = {
      description = "LINT.IfChange",
      id = "EnterpriseCrmEventbusProtoSuspensionAuthPermissions",
      properties = {
        gaiaIdentity = {
          ["$ref"] = "EnterpriseCrmEventbusProtoSuspensionAuthPermissionsGaiaIdentity",
          description = "Represents a Gaia identity for a person or service account.",
        },
        googleGroup = {
          ["$ref"] = "EnterpriseCrmEventbusProtoSuspensionAuthPermissionsGaiaIdentity",
        },
        loasRole = {
          type = "string",
        },
        mdbGroup = {
          type = "string",
        },
      },
      type = "object",
    },
    EnterpriseCrmEventbusProtoSuspensionAuthPermissionsGaiaIdentity = {
      id = "EnterpriseCrmEventbusProtoSuspensionAuthPermissionsGaiaIdentity",
      properties = {
        emailAddress = {
          type = "string",
        },
        gaiaId = {
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    EnterpriseCrmEventbusProtoSuspensionConfig = {
      id = "EnterpriseCrmEventbusProtoSuspensionConfig",
      properties = {
        customMessage = {
          description = "Optional information to provide recipients of the suspension in addition to the resolution URL, typically containing relevant parameter values from the originating workflow.",
          type = "string",
        },
        notifications = {
          items = {
            ["$ref"] = "EnterpriseCrmEventbusProtoNotification",
          },
          type = "array",
        },
        suspensionExpiration = {
          ["$ref"] = "EnterpriseCrmEventbusProtoSuspensionExpiration",
          description = "Indicates the next steps when no external actions happen on the suspension.",
        },
        whoMayResolve = {
          description = "Identities able to resolve this suspension.",
          items = {
            ["$ref"] = "EnterpriseCrmEventbusProtoSuspensionAuthPermissions",
          },
          type = "array",
        },
      },
      type = "object",
    },
    EnterpriseCrmEventbusProtoSuspensionExpiration = {
      id = "EnterpriseCrmEventbusProtoSuspensionExpiration",
      properties = {
        expireAfterMs = {
          description = "Milliseconds after which the suspension expires, if no action taken.",
          format = "int32",
          type = "integer",
        },
        liftWhenExpired = {
          description = "Whether the suspension will be REJECTED or LIFTED upon expiration. REJECTED is the default behavior.",
          type = "boolean",
        },
        remindAfterMs = {
          description = "Milliseconds after which the previous suspension action reminder, if any, is sent using the selected notification option, for a suspension which is still PENDING_UNSPECIFIED.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    EnterpriseCrmEventbusProtoSuspensionResolutionInfo = {
      id = "EnterpriseCrmEventbusProtoSuspensionResolutionInfo",
      properties = {
        audit = {
          ["$ref"] = "EnterpriseCrmEventbusProtoSuspensionResolutionInfoAudit",
        },
        createdTimestamp = {
          description = "Auto-generated.",
          format = "google-datetime",
          type = "string",
        },
        eventExecutionInfoId = {
          description = "Required. ID of the associated execution.",
          type = "string",
        },
        externalTraffic = {
          ["$ref"] = "EnterpriseCrmEventbusProtoExternalTraffic",
          description = "The origin of the suspension for periodic notifications.",
        },
        lastModifiedTimestamp = {
          description = "Auto-generated.",
          format = "google-datetime",
          type = "string",
        },
        product = {
          description = "Which Google product the suspension belongs to. If not set, the suspension belongs to Integration Platform by default.",
          enum = {
            "UNSPECIFIED_PRODUCT",
            "IP",
            "APIGEE",
            "SECURITY",
          },
          enumDescriptions = {
            "",
            "",
            "",
            "",
          },
          type = "string",
        },
        status = {
          enum = {
            "PENDING_UNSPECIFIED",
            "REJECTED",
            "LIFTED",
          },
          enumDescriptions = {
            "",
            "",
            "",
          },
          type = "string",
        },
        suspensionConfig = {
          ["$ref"] = "EnterpriseCrmEventbusProtoSuspensionConfig",
        },
        suspensionId = {
          description = "Primary key for the SuspensionResolutionInfoTable.",
          type = "string",
        },
        taskNumber = {
          description = "Required. Task number of the associated SuspensionTask.",
          type = "string",
        },
        workflowName = {
          description = "Required. The name of the originating workflow.",
          type = "string",
        },
      },
      type = "object",
    },
    EnterpriseCrmEventbusProtoSuspensionResolutionInfoAudit = {
      id = "EnterpriseCrmEventbusProtoSuspensionResolutionInfoAudit",
      properties = {
        resolvedBy = {
          type = "string",
        },
        resolvedByCpi = {
          type = "string",
        },
        timestamp = {
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    EnterpriseCrmEventbusProtoTaskAlertConfig = {
      description = "Message to be used to configure alerting in the {@code TaskConfig} protos for tasks in an event. See go/eventbus-alert-config-examples for examples of the different alerts that can be configured.",
      id = "EnterpriseCrmEventbusProtoTaskAlertConfig",
      properties = {
        aggregationPeriod = {
          description = "The period over which the metric value should be aggregated and evaluated. Format is , where integer should be a positive integer and unit should be one of (s,m,h,d,w) meaning (second, minute, hour, day, week).",
          type = "string",
        },
        alertDisabled = {
          description = "Set to false by default. When set to true, the metrics are not aggregated or pushed to Monarch for this workflow alert.",
          type = "boolean",
        },
        alertName = {
          description = "A name to identify this alert. This will be displayed in the alert subject. If set, this name should be unique in within the scope of the containing workflow.",
          type = "string",
        },
        clientId = {
          description = "Client associated with this alert configuration. Must be a client enabled in one of the containing workflow's triggers.",
          type = "string",
        },
        durationThresholdMs = {
          description = "Should be specified only for TASK_AVERAGE_DURATION and TASK_PERCENTILE_DURATION metrics. This member should be used to specify what duration value the metrics should exceed for the alert to trigger.",
          format = "int64",
          type = "string",
        },
        errorEnumList = {
          ["$ref"] = "EnterpriseCrmEventbusProtoBaseAlertConfigErrorEnumList",
        },
        metricType = {
          enum = {
            "METRIC_TYPE_UNSPECIFIED",
            "TASK_ERROR_RATE",
            "TASK_WARNING_RATE",
            "TASK_RATE",
            "TASK_AVERAGE_DURATION",
            "TASK_PERCENTILE_DURATION",
          },
          enumDescriptions = {
            "The default value. Metric type should always be set to one of the other non-default values, otherwise it will result in an INVALID_ARGUMENT error.",
            "Specifies alerting on the rate of errors (potentially for a specific set of enum values) for the enclosing TaskConfig.",
            "Specifies alerting on the rate of warnings (potentially for a specific set of enum values) for the enclosing TaskConfig. Warnings use the same enum values as errors.",
            "Specifies alerting on the number of instances for the enclosing TaskConfig executed in the given aggregation_period.",
            "Specifies alerting on the average duration of execution for the enclosing task.",
            "Specifies alerting on the duration of a particular percentile of task executions. E.g. If 10% or more of the task executions have durations above 5 seconds, alert.",
          },
          type = "string",
        },
        numAggregationPeriods = {
          description = "For how many contiguous aggregation periods should the expected min or max be violated for the alert to be fired.",
          format = "int32",
          type = "integer",
        },
        onlyFinalAttempt = {
          description = "Only count final task attempts, not retries.",
          type = "boolean",
        },
        playbookUrl = {
          description = "Link to a playbook for resolving the issue that triggered this alert.",
          type = "string",
        },
        thresholdType = {
          description = "The threshold type for which this alert is being configured. If value falls below expected_min or exceeds expected_max, an alert will be fired.",
          enum = {
            "UNSPECIFIED_THRESHOLD_TYPE",
            "EXPECTED_MIN",
            "EXPECTED_MAX",
          },
          enumDescriptions = {
            "",
            "Note that this field will only trigger alerts if the workflow specifying it runs at least once in 24 hours (which is our in-memory retention period for monarch streams). Also note that `aggregation_period` for this alert configuration must be less than 24 hours.",
            "",
          },
          type = "string",
        },
        thresholdValue = {
          ["$ref"] = "EnterpriseCrmEventbusProtoBaseAlertConfigThresholdValue",
          description = "The metric value, above or below which the alert should be triggered.",
        },
        warningEnumList = {
          ["$ref"] = "EnterpriseCrmEventbusProtoBaseAlertConfigErrorEnumList",
        },
      },
      type = "object",
    },
    EnterpriseCrmEventbusProtoTaskExecutionDetails = {
      description = "Contains the details of the execution of this task. Next available id: 11",
      id = "EnterpriseCrmEventbusProtoTaskExecutionDetails",
      properties = {
        taskAttemptStats = {
          items = {
            ["$ref"] = "EnterpriseCrmEventbusProtoTaskExecutionDetailsTaskAttemptStats",
          },
          type = "array",
        },
        taskExecutionState = {
          enum = {
            "UNSPECIFIED",
            "PENDING_EXECUTION",
            "IN_PROCESS",
            "SUCCEED",
            "FAILED",
            "FATAL",
            "RETRY_ON_HOLD",
            "SKIPPED",
            "CANCELED",
            "PENDING_ROLLBACK",
            "ROLLBACK_IN_PROCESS",
            "ROLLEDBACK",
            "SUSPENDED",
          },
          enumDescriptions = {
            "",
            "Task is waiting for its precondition tasks to finish to start the execution.",
            "Task is under processing.",
            "Task execution successfully finished. There's no more change after this state.",
            "Task execution failed. There's no more change after this state.",
            "Task execution failed and cause the whole event execution to fail immediately. There's no more change after this state.",
            "Task execution failed and waiting for retry.",
            "Task execution skipped. This happens when its precondition wasn't met, or the event execution been canceled before reach to the task. There's no more changes after this state.",
            "Task execution canceled when in progress. This happens when event execution been canceled or any other task fall in fatal state.",
            "Task is waiting for its dependency tasks' rollback to finish to start its rollback.",
            "Task is rolling back.",
            "Task is rolled back. This is the state we will set regardless of rollback succeeding or failing.",
            "Task is a SuspensionTask which has executed once, creating a pending suspension.",
          },
          type = "string",
        },
        taskNumber = {
          description = "Pointer to the task config it used for execution.",
          type = "string",
        },
      },
      type = "object",
    },
    EnterpriseCrmEventbusProtoTaskExecutionDetailsTaskAttemptStats = {
      id = "EnterpriseCrmEventbusProtoTaskExecutionDetailsTaskAttemptStats",
      properties = {
        endTime = {
          description = "The end time of the task execution for current attempt.",
          format = "int64",
          type = "string",
        },
        startTime = {
          description = "The start time of the task execution for current attempt. This could be in the future if it's been scheduled.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    EnterpriseCrmEventbusProtoTaskMetadata = {
      description = "TaskMetadata are attributes that are associated to every common Task we have. Next available: 26",
      id = "EnterpriseCrmEventbusProtoTaskMetadata",
      properties = {
        activeTaskName = {
          description = "The new task name to replace the current task if it is deprecated. Otherwise, it is the same as the current task name.",
          type = "string",
        },
        admins = {
          items = {
            ["$ref"] = "EnterpriseCrmEventbusProtoTaskMetadataAdmin",
          },
          type = "array",
        },
        category = {
          enum = {
            "UNSPECIFIED_CATEGORY",
            "CUSTOM",
            "FLOW_CONTROL",
            "DATA_MANIPULATION",
            "SCRIPTING",
            "CONNECTOR",
            "HIDDEN",
            "CLOUD_SYSTEMS",
            "CUSTOM_TASK_TEMPLATE",
          },
          enumDescriptions = {
            "",
            "",
            "",
            "",
            "",
            "",
            "Internal IP tasks that should not be available in the UI.",
            "Tasks that are relevant to cloud systems teams and typically",
            "include connecting to Vector salesforce, CRM Hub Spanner etc. Task entities that derive from a custom task template.",
          },
          type = "string",
        },
        codeSearchLink = {
          description = "The Code Search link to the Task Java file.",
          type = "string",
        },
        defaultJsonValidationOption = {
          description = "Controls whether JSON workflow parameters are validated against provided schemas before and/or after this task's execution.",
          enum = {
            "UNSPECIFIED_JSON_VALIDATION_OPTION",
            "SKIP",
            "PRE_EXECUTION",
            "POST_EXECUTION",
            "PRE_POST_EXECUTION",
          },
          enumDescriptions = {
            "As per the default behavior, no validation will be run. Will not override any option set in a Task.",
            "Do not run any validation against JSON schemas.",
            "Validate all potential input JSON parameters against schemas specified in WorkflowParameters.",
            "Validate all potential output JSON parameters against schemas specified in WorkflowParameters.",
            "Perform both PRE_EXECUTION and POST_EXECUTION validations.",
          },
          type = "string",
        },
        defaultSpec = {
          description = "Contains the initial configuration of the task with default values set. For now, The string should be compatible to an ASCII-proto format.",
          type = "string",
        },
        description = {
          description = "In a few sentences, describe the purpose and usage of the task.",
          type = "string",
        },
        descriptiveName = {
          description = "The string name to show on the task list on the Workflow editor screen. This should be a very short, one to two words name for the task. (e.g. \"Send Mail\")",
          type = "string",
        },
        docMarkdown = {
          description = "Snippet of markdown documentation to embed in the RHP for this task.",
          type = "string",
        },
        externalCategory = {
          enum = {
            "UNSPECIFIED_EXTERNAL_CATEGORY",
            "CORE",
            "CONNECTORS",
          },
          enumDescriptions = {
            "",
            "",
            "",
          },
          type = "string",
        },
        externalCategorySequence = {
          description = "Sequence with which the task in specific category to be displayed in task discovery panel for external users.",
          format = "int32",
          type = "integer",
        },
        externalDocHtml = {
          description = "External-facing documention embedded in the RHP for this task.",
          type = "string",
        },
        externalDocLink = {
          description = "Doc link for external-facing documentation (separate from g3doc).",
          type = "string",
        },
        externalDocMarkdown = {
          description = "DEPRECATED: Use external_doc_html.",
          type = "string",
        },
        g3DocLink = {
          description = "URL to the associated G3 Doc for the task if available",
          type = "string",
        },
        iconLink = {
          description = "URL to gstatic image icon for this task. This icon shows up on the task list panel along with the task name in the Workflow Editor screen. Use the 24p, 2x, gray color icon image format. See go/icons.",
          type = "string",
        },
        isDeprecated = {
          description = "The deprecation status of the current task. Default value is false;",
          type = "boolean",
        },
        name = {
          description = "The actual class name or the annotated name of the task. Task Author should initialize this field with value from the getName() method of the Task class.",
          type = "string",
        },
        standaloneExternalDocHtml = {
          description = "External-facing documention for standalone IP in pantheon embedded in the RHP for this task. Non null only if different from external_doc_html",
          type = "string",
        },
        status = {
          description = "Allows author to indicate if the task is ready to use or not. If not set, then it will default to INACTIVE.",
          enum = {
            "UNSPECIFIED_STATUS",
            "DEFAULT_INACTIVE",
            "ACTIVE",
          },
          enumDescriptions = {
            "Default value. Actual Task Status should always be set to either INACTIVE or ACTIVE. If none is specified at runtime, it will be set to INACTIVE.",
            "Still in-progress or incomplete, and not intended for use.",
            "Available for use.",
          },
          type = "string",
        },
        system = {
          enum = {
            "UNSPECIFIED_SYSTEM",
            "GENERIC",
            "BUGANIZER",
            "SALESFORCE",
            "CLOUD_SQL",
            "PLX",
            "SHEETS",
            "GOOGLE_GROUPS",
            "EMAIL",
            "SPANNER",
            "DATA_BRIDGE",
          },
          enumDescriptions = {
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
          },
          type = "string",
        },
        tags = {
          description = "A set of tags that pertain to a particular task. This can be used to improve the searchability of tasks with several names (\"REST Caller\" vs. \"Call REST Endpoint\") or to help users find tasks based on related words.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    EnterpriseCrmEventbusProtoTaskMetadataAdmin = {
      description = "Admins are owners of a Task, and have all permissions on a particular task identified by the task name. By default, Eventbus periodically scans all task metadata and syncs (adds) any new admins defined here to Zanzibar.",
      id = "EnterpriseCrmEventbusProtoTaskMetadataAdmin",
      properties = {
        googleGroupEmail = {
          type = "string",
        },
        userEmail = {
          type = "string",
        },
      },
      type = "object",
    },
    EnterpriseCrmEventbusProtoTaskUiConfig = {
      description = "Task authors would use this type to configure the UI for a particular task by specifying what UI config modules should be included to compose the UI. Learn more about config module framework: go/integration-platform-config-module-framework",
      id = "EnterpriseCrmEventbusProtoTaskUiConfig",
      properties = {
        taskUiModuleConfigs = {
          description = "Configurations of included config modules.",
          items = {
            ["$ref"] = "EnterpriseCrmEventbusProtoTaskUiModuleConfig",
          },
          type = "array",
        },
      },
      type = "object",
    },
    EnterpriseCrmEventbusProtoTaskUiModuleConfig = {
      description = "Task author would use this type to configure a config module.",
      id = "EnterpriseCrmEventbusProtoTaskUiModuleConfig",
      properties = {
        moduleId = {
          description = "ID of the config module.",
          enum = {
            "UNSPECIFIED_TASK_MODULE",
            "LABEL",
            "ERROR_HANDLING",
            "TASK_PARAM_TABLE",
            "TASK_PARAM_FORM",
            "PRECONDITION",
            "SCRIPT_EDITOR",
            "RPC",
            "TASK_SUMMARY",
            "SUSPENSION",
            "RPC_TYPED",
            "SUB_WORKFLOW",
            "APPS_SCRIPT_NAVIGATOR",
            "SUB_WORKFLOW_FOR_EACH_LOOP",
            "FIELD_MAPPING",
            "README",
            "REST_CALLER",
            "SUB_WORKFLOW_SCATTER_GATHER",
            "CLOUD_SQL",
            "GENERIC_CONNECTOR_TASK",
          },
          enumDescriptions = {
            "Default",
            "Supports editing label of a task config.",
            "Supports editing error handling settings such as retry strategy.",
            "Supports adding, removing and editing task parameter values in a table with little assistance or restriction.",
            "Supports editing values of declared input parameters of a task. Think of it as a \"strongly typed\" upgrade to the TASK_PARAM_TABLE.",
            "Supports editing preconditions of a task config.",
            "Supports adding, editing, and deleting the scripts associated with a script task, as well as modifying the input/output parameters.",
            "Supports editing task parameters associated with an RPC/stubby task.",
            "Contains readonly task information, including input/output type info.",
            "Configures a SuspensionTask.",
            "Configures a GenericStubbyTypedTask.",
            "Configures a SubWorkflowExecutorTask.",
            "Supports navigating to Apps Script editor",
            "Configures a SubWorkflowForEachLoopTask.",
            "Configures a FieldMappingTask.",
            "Contains embedded in-product documentation for a task.",
            "UI widget for the rest caller task.",
            "Configures a SubWorkflowScatterGatherTask.",
            "Configures a CloudSql Task.",
            "Configure a GenericConnectorTask.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    EnterpriseCrmEventbusProtoTeardown = {
      id = "EnterpriseCrmEventbusProtoTeardown",
      properties = {
        teardownTaskConfigs = {
          description = "Required.",
          items = {
            ["$ref"] = "EnterpriseCrmEventbusProtoTeardownTaskConfig",
          },
          type = "array",
        },
      },
      type = "object",
    },
    EnterpriseCrmEventbusProtoTeardownTaskConfig = {
      id = "EnterpriseCrmEventbusProtoTeardownTaskConfig",
      properties = {
        creatorEmail = {
          description = "The creator's email address.",
          type = "string",
        },
        name = {
          description = "Required. Unique identifier of the teardown task within this Config. We use this field as the identifier to find next teardown tasks.",
          type = "string",
        },
        nextTeardownTask = {
          ["$ref"] = "EnterpriseCrmEventbusProtoNextTeardownTask",
        },
        parameters = {
          ["$ref"] = "EnterpriseCrmEventbusProtoEventParameters",
          description = "The parameters the user can pass to this task.",
        },
        properties = {
          ["$ref"] = "EnterpriseCrmEventbusProtoEventBusProperties",
        },
        teardownTaskImplementationClassName = {
          description = "Required. Implementation class name.",
          type = "string",
        },
      },
      type = "object",
    },
    EnterpriseCrmEventbusProtoToken = {
      id = "EnterpriseCrmEventbusProtoToken",
      properties = {
        name = {
          type = "string",
        },
        value = {
          type = "string",
        },
      },
      type = "object",
    },
    EnterpriseCrmEventbusProtoTransformExpression = {
      id = "EnterpriseCrmEventbusProtoTransformExpression",
      properties = {
        initialValue = {
          ["$ref"] = "EnterpriseCrmEventbusProtoBaseValue",
          description = "Initial value upon which to perform transformations.",
        },
        transformationFunctions = {
          description = "Transformations to be applied sequentially.",
          items = {
            ["$ref"] = "EnterpriseCrmEventbusProtoFunction",
          },
          type = "array",
        },
      },
      type = "object",
    },
    EnterpriseCrmEventbusProtoTriggerCriteria = {
      id = "EnterpriseCrmEventbusProtoTriggerCriteria",
      properties = {
        condition = {
          description = "Required. Standard filter expression, when true the workflow will be executed. If there's no trigger_criteria_task_implementation_class_name specified, the condition will be validated directly.",
          type = "string",
        },
        parameters = {
          ["$ref"] = "EnterpriseCrmEventbusProtoEventParameters",
          description = "Optional. To be used in TaskConfig for the implementation class.",
        },
        triggerCriteriaTaskImplementationClassName = {
          description = "Optional. Implementation class name. The class should implement the “TypedTask” interface.",
          type = "string",
        },
      },
      type = "object",
    },
    EnterpriseCrmEventbusProtoValueType = {
      description = "Used for define type for values. Currently supported value types include int, string, double, array, and any proto message.",
      id = "EnterpriseCrmEventbusProtoValueType",
      properties = {
        booleanValue = {
          type = "boolean",
        },
        doubleArray = {
          ["$ref"] = "EnterpriseCrmEventbusProtoDoubleArray",
        },
        doubleValue = {
          format = "double",
          type = "number",
        },
        intArray = {
          ["$ref"] = "EnterpriseCrmEventbusProtoIntArray",
        },
        intValue = {
          format = "int64",
          type = "string",
        },
        protoValue = {
          additionalProperties = {
            description = "Properties of the object. Contains field @type with type URL.",
            type = "any",
          },
          type = "object",
        },
        stringArray = {
          ["$ref"] = "EnterpriseCrmEventbusProtoStringArray",
        },
        stringValue = {
          type = "string",
        },
      },
      type = "object",
    },
    EnterpriseCrmEventbusProtoWorkflowAlertConfig = {
      description = "Message to be used to configure custom alerting in the {@code EventConfig} protos for an event. See go/eventbus-alert-config-examples for examples of the different alerts that can be configured.",
      id = "EnterpriseCrmEventbusProtoWorkflowAlertConfig",
      properties = {
        aggregationPeriod = {
          description = "For an EXPECTED_MIN threshold, this aggregation_period must be lesser than 24 hours.",
          type = "string",
        },
        alertDisabled = {
          description = "Set to false by default. When set to true, the metrics are not aggregated or pushed to Monarch for this workflow alert.",
          type = "boolean",
        },
        alertName = {
          description = "A name to identify this alert. This will be displayed in the alert subject. If set, this name should be unique within the scope of the workflow.",
          type = "string",
        },
        clientId = {
          description = "Client associated with this alert configuration.",
          type = "string",
        },
        durationThresholdMs = {
          description = "Should be specified only for *AVERAGE_DURATION and *PERCENTILE_DURATION metrics. This member should be used to specify what duration value the metrics should exceed for the alert to trigger.",
          format = "int64",
          type = "string",
        },
        errorEnumList = {
          ["$ref"] = "EnterpriseCrmEventbusProtoBaseAlertConfigErrorEnumList",
        },
        metricType = {
          enum = {
            "METRIC_TYPE_UNSPECIFIED",
            "EVENT_ERROR_RATE",
            "EVENT_WARNING_RATE",
            "TASK_ERROR_RATE",
            "TASK_WARNING_RATE",
            "TASK_RATE",
            "EVENT_RATE",
            "EVENT_AVERAGE_DURATION",
            "EVENT_PERCENTILE_DURATION",
            "TASK_AVERAGE_DURATION",
            "TASK_PERCENTILE_DURATION",
          },
          enumDescriptions = {
            "The default value. Metric type should always be set to one of the other non-default values, otherwise it will result in an INVALID_ARGUMENT error.",
            "Specifies alerting on the rate of errors for the enclosing workflow.",
            "Specifies alerting on the rate of warnings for the enclosing workflow. Warnings use the same enum values as errors.",
            "Specifies alerting on the rate of errors for any task in the enclosing workflow.",
            "Specifies alerting on the rate of warnings for any task in the enclosing workflow.",
            "Specifies alerting on the rate of executions over all tasks in the enclosing workflow.",
            "Specifies alerting on the number of events executed in the given aggregation_period.",
            "Specifies alerting on the average duration of executions for this workflow.",
            "Specifies alerting on the duration value of a particular percentile of workflow executions. E.g. If 10% or more of the workflow executions have durations above 5 seconds, alert.",
            "Specifies alerting on the average duration of any task in the enclosing workflow,",
            "Specifies alerting on the duration value of a particular percentile of any task executions within the enclosing workflow. E.g. If 10% or more of the task executions in the workflow have durations above 5 seconds, alert.",
          },
          type = "string",
        },
        numAggregationPeriods = {
          description = "For how many contiguous aggregation periods should the expected min or max be violated for the alert to be fired.",
          format = "int32",
          type = "integer",
        },
        onlyFinalAttempt = {
          description = "For either events or tasks, depending on the type of alert, count only final attempts, not retries.",
          type = "boolean",
        },
        playbookUrl = {
          description = "Link to a playbook for resolving the issue that triggered this alert.",
          type = "string",
        },
        thresholdType = {
          description = "The threshold type, whether lower(expected_min) or upper(expected_max), for which this alert is being configured. If value falls below expected_min or exceeds expected_max, an alert will be fired.",
          enum = {
            "UNSPECIFIED_THRESHOLD_TYPE",
            "EXPECTED_MIN",
            "EXPECTED_MAX",
          },
          enumDescriptions = {
            "",
            "Note that this field will only trigger alerts if the workflow specifying it runs at least once in 24 hours (which is our in-memory retention period for monarch streams). Also note that `aggregation_period` for this alert configuration must be less than 24 hours.",
            "",
          },
          type = "string",
        },
        thresholdValue = {
          ["$ref"] = "EnterpriseCrmEventbusProtoBaseAlertConfigThresholdValue",
          description = "The metric value, above or below which the alert should be triggered. See go/eventbus-alert-config-examples.",
        },
        warningEnumList = {
          ["$ref"] = "EnterpriseCrmEventbusProtoBaseAlertConfigErrorEnumList",
        },
      },
      type = "object",
    },
    EnterpriseCrmEventbusStats = {
      description = "Stats for the requested dimensions: QPS, duration, and error/warning rate",
      id = "EnterpriseCrmEventbusStats",
      properties = {
        dimensions = {
          ["$ref"] = "EnterpriseCrmEventbusStatsDimensions",
          description = "Dimensions that these stats have been aggregated on.",
        },
        durationInSeconds = {
          description = "Average duration in seconds.",
          format = "double",
          type = "number",
        },
        errorRate = {
          description = "Average error rate.",
          format = "double",
          type = "number",
        },
        qps = {
          description = "Queries per second.",
          format = "double",
          type = "number",
        },
        warningRate = {
          description = "Average warning rate.",
          format = "double",
          type = "number",
        },
      },
      type = "object",
    },
    EnterpriseCrmEventbusStatsDimensions = {
      id = "EnterpriseCrmEventbusStatsDimensions",
      properties = {
        clientId = {
          type = "string",
        },
        enumFilterType = {
          description = "Whether to include or exclude the enums matching the regex.",
          enum = {
            "DEFAULT_INCLUSIVE",
            "EXCLUSIVE",
          },
          enumDescriptions = {
            "",
            "",
          },
          type = "string",
        },
        errorEnumString = {
          type = "string",
        },
        retryAttempt = {
          enum = {
            "UNSPECIFIED",
            "FINAL",
            "RETRYABLE",
            "CANCELED",
          },
          enumDescriptions = {
            "",
            "Task has completed successfully or has depleted all retry attempts.",
            "Task has failed but may be retried.",
            "Task has been deliberately canceled.",
          },
          type = "string",
        },
        taskName = {
          type = "string",
        },
        taskNumber = {
          type = "string",
        },
        triggerId = {
          description = "Stats have been or will be aggregated on set fields for any semantically-meaningful combination.",
          type = "string",
        },
        warningEnumString = {
          type = "string",
        },
        workflowId = {
          type = "string",
        },
        workflowName = {
          type = "string",
        },
      },
      type = "object",
    },
    EnterpriseCrmFrontendsEventbusProtoBooleanParameterArray = {
      id = "EnterpriseCrmFrontendsEventbusProtoBooleanParameterArray",
      properties = {
        booleanValues = {
          items = {
            type = "boolean",
          },
          type = "array",
        },
      },
      type = "object",
    },
    EnterpriseCrmFrontendsEventbusProtoDoubleParameterArray = {
      id = "EnterpriseCrmFrontendsEventbusProtoDoubleParameterArray",
      properties = {
        doubleValues = {
          items = {
            format = "double",
            type = "number",
          },
          type = "array",
        },
      },
      type = "object",
    },
    EnterpriseCrmFrontendsEventbusProtoEventExecutionDetails = {
      description = "Contains the details of the execution info of this event: this includes the tasks execution details plus the event execution statistics. Next available id: 10",
      id = "EnterpriseCrmFrontendsEventbusProtoEventExecutionDetails",
      properties = {
        eventAttemptStats = {
          items = {
            ["$ref"] = "EnterpriseCrmEventbusProtoEventExecutionDetailsEventAttemptStats",
          },
          type = "array",
        },
        eventExecutionSnapshot = {
          description = "After snapshot migration, this field will no longer be populated, but old execution snapshots will still be accessible.",
          items = {
            ["$ref"] = "EnterpriseCrmFrontendsEventbusProtoEventExecutionSnapshot",
          },
          type = "array",
        },
        eventExecutionState = {
          description = "The execution state of this event.",
          enum = {
            "UNSPECIFIED",
            "ON_HOLD",
            "IN_PROCESS",
            "SUCCEEDED",
            "FAILED",
            "CANCELED",
            "RETRY_ON_HOLD",
            "SUSPENDED",
          },
          enumDescriptions = {
            "",
            "Event is received and waiting for the execution. This happens when firing the event via \"postToQueue\" or \"schedule\".",
            "Event is under processing.",
            "Event execution successfully finished. There's no more change after this state.",
            "Event execution failed. There's no more change after this state.",
            "Event execution canceled by user. There's no more change after this state.",
            "Event execution failed and waiting for retry.",
            "Event execution suspended and waiting for manual intervention.",
          },
          type = "string",
        },
        eventRetriesFromBeginningCount = {
          description = "Indicates the number of times the execution has restarted from the beginning.",
          format = "int32",
          type = "integer",
        },
        logFilePath = {
          description = "The log file path (aka. cns address) for this event.",
          type = "string",
        },
        networkAddress = {
          description = "The network address (aka. bns address) that indicates where the event executor is running.",
          type = "string",
        },
        nextExecutionTime = {
          description = "Next scheduled execution time in case the execution status was RETRY_ON_HOLD.",
          format = "int64",
          type = "string",
        },
        ryeLockUnheldCount = {
          description = "Used internally and shouldn't be exposed to users. A counter for the cron job to record how many times this event is in in_process state but don't have a lock consecutively/",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    EnterpriseCrmFrontendsEventbusProtoEventExecutionInfo = {
      description = "Contains all the execution details for a workflow instance. Next available id: 24",
      id = "EnterpriseCrmFrontendsEventbusProtoEventExecutionInfo",
      properties = {
        clientId = {
          description = "The event data user sends as request.",
          type = "string",
        },
        createTime = {
          description = "Auto-generated.",
          format = "int64",
          type = "string",
        },
        errorCode = {
          ["$ref"] = "CrmlogErrorCode",
          description = "Final error-code if event failed.",
        },
        errors = {
          description = "Errors, warnings, and informationals associated with the workflow/task. The order in which the errors were added by the workflow/task is maintained.",
          items = {
            ["$ref"] = "EnterpriseCrmEventbusProtoErrorDetail",
          },
          type = "array",
        },
        eventExecutionDetails = {
          ["$ref"] = "EnterpriseCrmFrontendsEventbusProtoEventExecutionDetails",
          description = "The execution info about this event.",
        },
        eventExecutionInfoId = {
          description = "Auto-generated primary key.",
          type = "string",
        },
        executionTraceInfo = {
          ["$ref"] = "EnterpriseCrmEventbusProtoExecutionTraceInfo",
          description = "Execution trace info to aggregate parent-child executions.",
        },
        lastModifiedTime = {
          description = "Auto-generated.",
          format = "int64",
          type = "string",
        },
        postMethod = {
          description = "The ways user posts this event.",
          enum = {
            "UNSPECIFIED",
            "POST",
            "POST_TO_QUEUE",
            "SCHEDULE",
            "POST_BY_EVENT_CONFIG_ID",
            "POST_WITH_EVENT_DETAILS",
          },
          enumDescriptions = {
            "",
            "",
            "",
            "",
            "",
            "",
          },
          type = "string",
        },
        product = {
          description = "Which Google product the execution_info belongs to. If not set, the execution_info belongs to Integration Platform by default.",
          enum = {
            "UNSPECIFIED_PRODUCT",
            "IP",
            "APIGEE",
            "SECURITY",
          },
          enumDescriptions = {
            "",
            "",
            "",
            "",
          },
          type = "string",
        },
        requestId = {
          description = "Optional. This is used to de-dup incoming request.",
          type = "string",
        },
        requestParams = {
          ["$ref"] = "EnterpriseCrmFrontendsEventbusProtoEventParameters",
          description = "Event parameters come in as part of the request.",
        },
        responseParams = {
          ["$ref"] = "EnterpriseCrmFrontendsEventbusProtoEventParameters",
          description = "Event parameters come out as part of the response.",
        },
        snapshotNumber = {
          description = "Workflow snapshot number.",
          format = "int64",
          type = "string",
        },
        tenant = {
          description = "Tenant this event is created. Used to reschedule the event to correct tenant.",
          type = "string",
        },
        triggerId = {
          description = "The trigger id of the workflow trigger config. If both trigger_id and client_id is present, the workflow is executed from the start tasks provided by the matching trigger config otherwise it is executed from the default start tasks.",
          type = "string",
        },
        workflowId = {
          description = "Required. Pointer to the workflow it is executing.",
          type = "string",
        },
        workflowName = {
          description = "Name of the workflow.",
          type = "string",
        },
        workflowRetryBackoffIntervalSeconds = {
          description = "Time interval in seconds to schedule retry of workflow in manifold when workflow is already running",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    EnterpriseCrmFrontendsEventbusProtoEventExecutionSnapshot = {
      id = "EnterpriseCrmFrontendsEventbusProtoEventExecutionSnapshot",
      properties = {
        checkpointTaskNumber = {
          description = "Indicates \"right after which checkpoint task's execution\" this snapshot is taken.",
          type = "string",
        },
        conditionResults = {
          description = "All of the computed conditions that been calculated.",
          items = {
            ["$ref"] = "EnterpriseCrmEventbusProtoConditionResult",
          },
          type = "array",
        },
        diffParams = {
          ["$ref"] = "EnterpriseCrmFrontendsEventbusProtoEventParameters",
          description = "The parameters in Event object that differs from last snapshot.",
        },
        eventExecutionInfoId = {
          description = "Points to the event execution info this snapshot belongs to.",
          type = "string",
        },
        eventExecutionSnapshotId = {
          description = "Auto-generated. Used as primary key for EventExecutionSnapshots table.",
          type = "string",
        },
        eventExecutionSnapshotMetadata = {
          ["$ref"] = "EnterpriseCrmEventbusProtoEventExecutionSnapshotEventExecutionSnapshotMetadata",
        },
        eventParams = {
          ["$ref"] = "EnterpriseCrmFrontendsEventbusProtoEventParameters",
          description = "The parameters in Event object.",
        },
        snapshotTime = {
          description = "Indicates when this snapshot is taken.",
          format = "int64",
          type = "string",
        },
        taskExecutionDetails = {
          description = "All of the task execution details at the given point of time.",
          items = {
            ["$ref"] = "EnterpriseCrmEventbusProtoTaskExecutionDetails",
          },
          type = "array",
        },
        taskName = {
          description = "The task name associated with this snapshot. Could be empty.",
          type = "string",
        },
      },
      type = "object",
    },
    EnterpriseCrmFrontendsEventbusProtoEventParameters = {
      description = "LINT.IfChange This message is used for processing and persisting (when applicable) key value pair parameters for each event in the event bus. Please see go/integration-platform/event_bus.md for more details. Next id: 4",
      id = "EnterpriseCrmFrontendsEventbusProtoEventParameters",
      properties = {
        parameters = {
          description = "Parameters are a part of Event and can be used to communicate between different tasks that are part of the same workflow execution.",
          items = {
            ["$ref"] = "EnterpriseCrmFrontendsEventbusProtoParameterEntry",
          },
          type = "array",
        },
      },
      type = "object",
    },
    EnterpriseCrmFrontendsEventbusProtoIntParameterArray = {
      id = "EnterpriseCrmFrontendsEventbusProtoIntParameterArray",
      properties = {
        intValues = {
          items = {
            format = "int64",
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    EnterpriseCrmFrontendsEventbusProtoParamSpecEntry = {
      description = "Key-value pair of EventBus task parameters. Next id: 13",
      id = "EnterpriseCrmFrontendsEventbusProtoParamSpecEntry",
      properties = {
        className = {
          description = "The FQCN of the Java object this represents. A string, for example, would be \"java.lang.String\". If this is \"java.lang.Object\", the parameter can be of any type.",
          type = "string",
        },
        collectionElementClassName = {
          description = "If it is a collection of objects, this would be the FCQN of every individual element in the collection. If this is \"java.lang.Object\", the parameter is a collection of any type.",
          type = "string",
        },
        config = {
          ["$ref"] = "EnterpriseCrmEventbusProtoParamSpecEntryConfig",
          description = "Optional fields, such as help text and other useful info.",
        },
        dataType = {
          description = "The data type of the parameter.",
          enum = {
            "DATA_TYPE_UNSPECIFIED",
            "STRING_VALUE",
            "INT_VALUE",
            "DOUBLE_VALUE",
            "BOOLEAN_VALUE",
            "PROTO_VALUE",
            "SERIALIZED_OBJECT_VALUE",
            "STRING_ARRAY",
            "INT_ARRAY",
            "DOUBLE_ARRAY",
            "PROTO_ARRAY",
            "PROTO_ENUM",
            "BOOLEAN_ARRAY",
            "PROTO_ENUM_ARRAY",
            "BYTES",
            "BYTES_ARRAY",
            "NON_SERIALIZABLE_OBJECT",
            "JSON_VALUE",
          },
          enumDescriptions = {
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "BYTES and BYTES_ARRAY data types are not allowed for top-level params. They're only meant to support protobufs with BYTES (sub)fields.",
            "",
            "",
            "",
          },
          type = "string",
        },
        defaultValue = {
          ["$ref"] = "EnterpriseCrmFrontendsEventbusProtoParameterValueType",
          description = "Default values for the defined keys. Each value can either be string, int, double or any proto message or a serialized object.",
        },
        isDeprecated = {
          description = "If set, this entry is deprecated, so further use of this parameter should be prohibited.",
          type = "boolean",
        },
        isOutput = {
          type = "boolean",
        },
        jsonSchema = {
          description = "If the data_type is JSON_VALUE, then this will define its schema.",
          type = "string",
        },
        key = {
          description = "Key is used to retrieve the corresponding parameter value. This should be unique for a given task. These parameters must be predefined in the workflow definition.",
          type = "string",
        },
        protoDef = {
          ["$ref"] = "EnterpriseCrmEventbusProtoParamSpecEntryProtoDefinition",
          description = "Populated if this represents a proto or proto array.",
        },
        required = {
          description = "If set, the user must provide an input value for this parameter.",
          type = "boolean",
        },
        validationRule = {
          ["$ref"] = "EnterpriseCrmEventbusProtoParamSpecEntryValidationRule",
          description = "Rule used to validate inputs (individual values and collection elements) for this parameter.",
        },
      },
      type = "object",
    },
    EnterpriseCrmFrontendsEventbusProtoParamSpecsMessage = {
      id = "EnterpriseCrmFrontendsEventbusProtoParamSpecsMessage",
      properties = {
        parameters = {
          items = {
            ["$ref"] = "EnterpriseCrmFrontendsEventbusProtoParamSpecEntry",
          },
          type = "array",
        },
      },
      type = "object",
    },
    EnterpriseCrmFrontendsEventbusProtoParameterEntry = {
      description = "Key-value pair of EventBus parameters.",
      id = "EnterpriseCrmFrontendsEventbusProtoParameterEntry",
      properties = {
        dataType = {
          description = "Explicitly getting the type of the parameter.",
          enum = {
            "DATA_TYPE_UNSPECIFIED",
            "STRING_VALUE",
            "INT_VALUE",
            "DOUBLE_VALUE",
            "BOOLEAN_VALUE",
            "PROTO_VALUE",
            "SERIALIZED_OBJECT_VALUE",
            "STRING_ARRAY",
            "INT_ARRAY",
            "DOUBLE_ARRAY",
            "PROTO_ARRAY",
            "PROTO_ENUM",
            "BOOLEAN_ARRAY",
            "PROTO_ENUM_ARRAY",
            "BYTES",
            "BYTES_ARRAY",
            "NON_SERIALIZABLE_OBJECT",
            "JSON_VALUE",
          },
          enumDescriptions = {
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "BYTES and BYTES_ARRAY data types are not allowed for top-level params. They're only meant to support protobufs with BYTES (sub)fields.",
            "",
            "",
            "",
          },
          type = "string",
        },
        key = {
          description = "Key is used to retrieve the corresponding parameter value. This should be unique for a given fired event. These parameters must be predefined in the workflow definition.",
          type = "string",
        },
        value = {
          ["$ref"] = "EnterpriseCrmFrontendsEventbusProtoParameterValueType",
          description = "Values for the defined keys. Each value can either be string, int, double or any proto message.",
        },
      },
      type = "object",
    },
    EnterpriseCrmFrontendsEventbusProtoParameterMap = {
      description = "A generic multi-map that holds key value pairs. They keys and values can be of any type, unless specified.",
      id = "EnterpriseCrmFrontendsEventbusProtoParameterMap",
      properties = {
        entries = {
          items = {
            ["$ref"] = "EnterpriseCrmFrontendsEventbusProtoParameterMapEntry",
          },
          type = "array",
        },
        keyType = {
          description = "Option to specify key value type for all entries of the map. If provided then field types for all entries must conform to this.",
          enum = {
            "DATA_TYPE_UNSPECIFIED",
            "STRING_VALUE",
            "INT_VALUE",
            "DOUBLE_VALUE",
            "BOOLEAN_VALUE",
            "PROTO_VALUE",
            "SERIALIZED_OBJECT_VALUE",
            "STRING_ARRAY",
            "INT_ARRAY",
            "DOUBLE_ARRAY",
            "PROTO_ARRAY",
            "PROTO_ENUM",
            "BOOLEAN_ARRAY",
            "PROTO_ENUM_ARRAY",
            "BYTES",
            "BYTES_ARRAY",
            "NON_SERIALIZABLE_OBJECT",
            "JSON_VALUE",
          },
          enumDescriptions = {
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "BYTES and BYTES_ARRAY data types are not allowed for top-level params. They're only meant to support protobufs with BYTES (sub)fields.",
            "",
            "",
            "",
          },
          type = "string",
        },
        valueType = {
          enum = {
            "DATA_TYPE_UNSPECIFIED",
            "STRING_VALUE",
            "INT_VALUE",
            "DOUBLE_VALUE",
            "BOOLEAN_VALUE",
            "PROTO_VALUE",
            "SERIALIZED_OBJECT_VALUE",
            "STRING_ARRAY",
            "INT_ARRAY",
            "DOUBLE_ARRAY",
            "PROTO_ARRAY",
            "PROTO_ENUM",
            "BOOLEAN_ARRAY",
            "PROTO_ENUM_ARRAY",
            "BYTES",
            "BYTES_ARRAY",
            "NON_SERIALIZABLE_OBJECT",
            "JSON_VALUE",
          },
          enumDescriptions = {
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "BYTES and BYTES_ARRAY data types are not allowed for top-level params. They're only meant to support protobufs with BYTES (sub)fields.",
            "",
            "",
            "",
          },
          type = "string",
        },
      },
      type = "object",
    },
    EnterpriseCrmFrontendsEventbusProtoParameterMapEntry = {
      description = "Entry is a pair of key and value.",
      id = "EnterpriseCrmFrontendsEventbusProtoParameterMapEntry",
      properties = {
        key = {
          ["$ref"] = "EnterpriseCrmFrontendsEventbusProtoParameterMapField",
        },
        value = {
          ["$ref"] = "EnterpriseCrmFrontendsEventbusProtoParameterMapField",
        },
      },
      type = "object",
    },
    EnterpriseCrmFrontendsEventbusProtoParameterMapField = {
      description = "Field represents either the key or value in an entry.",
      id = "EnterpriseCrmFrontendsEventbusProtoParameterMapField",
      properties = {
        literalValue = {
          ["$ref"] = "EnterpriseCrmFrontendsEventbusProtoParameterValueType",
          description = "Passing a literal value.",
        },
        referenceKey = {
          description = "Referencing one of the WF variables.",
          type = "string",
        },
      },
      type = "object",
    },
    EnterpriseCrmFrontendsEventbusProtoParameterValueType = {
      description = "To support various types of parameter values. Next available id: 14",
      id = "EnterpriseCrmFrontendsEventbusProtoParameterValueType",
      properties = {
        booleanArray = {
          ["$ref"] = "EnterpriseCrmFrontendsEventbusProtoBooleanParameterArray",
        },
        booleanValue = {
          type = "boolean",
        },
        doubleArray = {
          ["$ref"] = "EnterpriseCrmFrontendsEventbusProtoDoubleParameterArray",
        },
        doubleValue = {
          format = "double",
          type = "number",
        },
        intArray = {
          ["$ref"] = "EnterpriseCrmFrontendsEventbusProtoIntParameterArray",
        },
        intValue = {
          format = "int64",
          type = "string",
        },
        jsonValue = {
          type = "string",
        },
        protoArray = {
          ["$ref"] = "EnterpriseCrmFrontendsEventbusProtoProtoParameterArray",
        },
        protoValue = {
          additionalProperties = {
            description = "Properties of the object. Contains field @type with type URL.",
            type = "any",
          },
          type = "object",
        },
        serializedObjectValue = {
          ["$ref"] = "EnterpriseCrmFrontendsEventbusProtoSerializedObjectParameter",
        },
        stringArray = {
          ["$ref"] = "EnterpriseCrmFrontendsEventbusProtoStringParameterArray",
        },
        stringValue = {
          type = "string",
        },
      },
      type = "object",
    },
    EnterpriseCrmFrontendsEventbusProtoProtoParameterArray = {
      id = "EnterpriseCrmFrontendsEventbusProtoProtoParameterArray",
      properties = {
        protoValues = {
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
    EnterpriseCrmFrontendsEventbusProtoRollbackStrategy = {
      description = "Next available id: 4",
      id = "EnterpriseCrmFrontendsEventbusProtoRollbackStrategy",
      properties = {
        parameters = {
          ["$ref"] = "EnterpriseCrmFrontendsEventbusProtoEventParameters",
          description = "Optional. The customized parameters the user can pass to this task.",
        },
        rollbackTaskImplementationClassName = {
          description = "Required. This is the name of the task that needs to be executed upon rollback of this task.",
          type = "string",
        },
        taskNumbersToRollback = {
          description = "Required. These are the tasks numbers of the tasks whose `rollback_strategy.rollback_task_implementation_class_name` needs to be executed upon failure of this task.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    EnterpriseCrmFrontendsEventbusProtoSerializedObjectParameter = {
      id = "EnterpriseCrmFrontendsEventbusProtoSerializedObjectParameter",
      properties = {
        objectValue = {
          format = "byte",
          type = "string",
        },
      },
      type = "object",
    },
    EnterpriseCrmFrontendsEventbusProtoStringParameterArray = {
      id = "EnterpriseCrmFrontendsEventbusProtoStringParameterArray",
      properties = {
        stringValues = {
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    EnterpriseCrmFrontendsEventbusProtoTaskConfig = {
      description = "The task configuration details. This is not the implementation of Task. There might be multiple TaskConfigs for the same Task. Next available id: 27",
      id = "EnterpriseCrmFrontendsEventbusProtoTaskConfig",
      properties = {
        alertConfigs = {
          description = "Alert configurations on error rate, warning rate, number of runs, durations, etc.",
          items = {
            ["$ref"] = "EnterpriseCrmEventbusProtoTaskAlertConfig",
          },
          type = "array",
        },
        createTime = {
          description = "Auto-generated.",
          format = "google-datetime",
          type = "string",
        },
        creatorEmail = {
          description = "The creator's email address. Auto-generated from the user's email.",
          type = "string",
        },
        description = {
          description = "User-provided description intended to give more business context about the task.",
          type = "string",
        },
        disableStrictTypeValidation = {
          description = "If this config contains a TypedTask, allow validation to succeed if an input is read from the output of another TypedTask whose output type is declared as a superclass of the requested input type. For instance, if the previous task declares an output of type Message, any task with this flag enabled will pass validation when attempting to read any proto Message type from the resultant Event parameter.",
          type = "boolean",
        },
        failurePolicy = {
          ["$ref"] = "EnterpriseCrmEventbusProtoFailurePolicy",
          description = "Optional. Determines the number of times the task will be retried on failure and with what retry strategy. This is applicable for asynchronous calls to Eventbus alone (Post To Queue, Schedule etc.).",
        },
        incomingEdgeCount = {
          description = "The number of edges leading into this TaskConfig.",
          format = "int32",
          type = "integer",
        },
        jsonValidationOption = {
          description = "If set, overrides the option configured in the Task implementation class.",
          enum = {
            "UNSPECIFIED_JSON_VALIDATION_OPTION",
            "SKIP",
            "PRE_EXECUTION",
            "POST_EXECUTION",
            "PRE_POST_EXECUTION",
          },
          enumDescriptions = {
            "As per the default behavior, no validation will be run. Will not override any option set in a Task.",
            "Do not run any validation against JSON schemas.",
            "Validate all potential input JSON parameters against schemas specified in WorkflowParameters.",
            "Validate all potential output JSON parameters against schemas specified in WorkflowParameters.",
            "Perform both PRE_EXECUTION and POST_EXECUTION validations.",
          },
          type = "string",
        },
        label = {
          description = "User-provided label that is attached to this TaskConfig in the UI.",
          type = "string",
        },
        lastModifiedTime = {
          description = "Auto-generated.",
          format = "google-datetime",
          type = "string",
        },
        nextTasks = {
          description = "The set of tasks that are next in line to be executed as per the execution graph defined for the parent event, specified by `event_config_id`. Each of these next tasks are executed only if the condition associated with them evaluates to true.",
          items = {
            ["$ref"] = "EnterpriseCrmEventbusProtoNextTask",
          },
          type = "array",
        },
        nextTasksExecutionPolicy = {
          description = "The policy dictating the execution of the next set of tasks for the current task.",
          enum = {
            "UNSPECIFIED",
            "RUN_ALL_MATCH",
            "RUN_FIRST_MATCH",
          },
          enumDescriptions = {
            "Default",
            "Execute all the tasks that satisfy their associated condition.",
            "Execute the first task that satisfies the associated condition.",
          },
          type = "string",
        },
        parameters = {
          additionalProperties = {
            ["$ref"] = "EnterpriseCrmFrontendsEventbusProtoParameterEntry",
          },
          description = "The customized parameters the user can pass to this task.",
          type = "object",
        },
        position = {
          ["$ref"] = "EnterpriseCrmEventbusProtoCoordinate",
          description = "Optional. Informs the front-end application where to draw this task config on the UI.",
        },
        precondition = {
          description = "Optional. Standard filter expression evaluated before execution. Independent of other conditions and tasks. Can be used to enable rollout. e.g. \"rollout(5)\" will only allow 5% of incoming traffic to task.",
          type = "string",
        },
        preconditionLabel = {
          description = "Optional. User-provided label that is attached to precondition in the UI.",
          type = "string",
        },
        rollbackStrategy = {
          ["$ref"] = "EnterpriseCrmFrontendsEventbusProtoRollbackStrategy",
          description = "Optional. Contains information about what needs to be done upon failure (either a permanent error or after it has been retried too many times).",
        },
        successPolicy = {
          ["$ref"] = "EnterpriseCrmEventbusProtoSuccessPolicy",
          description = "Determines what action to take upon successful task completion.",
        },
        synchronousCallFailurePolicy = {
          ["$ref"] = "EnterpriseCrmEventbusProtoFailurePolicy",
          description = "Optional. Determines the number of times the task will be retried on failure and with what retry strategy. This is applicable for synchronous calls to Eventbus alone (Post).",
        },
        taskEntity = {
          ["$ref"] = "EnterpriseCrmFrontendsEventbusProtoTaskEntity",
          description = "Copy of the task entity that this task config is an instance of.",
        },
        taskExecutionStrategy = {
          description = "The policy dictating the execution strategy of this task.",
          enum = {
            "WHEN_ALL_SUCCEED",
            "WHEN_ANY_SUCCEED",
            "WHEN_ALL_TASKS_AND_CONDITIONS_SUCCEED",
          },
          enumDescriptions = {
            "Wait until all of its previous tasks finished execution, then verify at least one of the edge conditions is met, and execute if possible. This should be considered as WHEN_ALL_TASKS_SUCCEED.",
            "Start execution as long as any of its previous tasks finished execution and the corresponding edge condition is met (since we will execute if only that succeeding edge condition is met).",
            "Wait until all of its previous tasks finished execution, then verify the all edge conditions are met and execute if possible.",
          },
          type = "string",
        },
        taskName = {
          description = "The name for the task.",
          type = "string",
        },
        taskNumber = {
          description = "REQUIRED: the identifier of this task within its parent event config, specified by the client. This should be unique among all the tasks belong to the same event config. We use this field as the identifier to find next tasks (via field `next_tasks.task_number`).",
          type = "string",
        },
        taskSpec = {
          description = "A string template that allows user to configure task parameters (with either literal default values or tokens which will be resolved at execution time) for the task. It will eventually replace the old \"parameters\" field. Please refer to go/eventbus-task-spec-example for detailed usage example.",
          type = "string",
        },
        taskTemplateName = {
          description = "Used to define task-template name if task is of type task-template",
          type = "string",
        },
        taskType = {
          description = "Defines the type of the task",
          enum = {
            "TASK",
            "ASIS_TEMPLATE",
            "IO_TEMPLATE",
          },
          enumDescriptions = {
            "Normal IP task",
            "Task is of As-Is Template type",
            "Task is of I/O template type with a different underlying task",
          },
          type = "string",
        },
      },
      type = "object",
    },
    EnterpriseCrmFrontendsEventbusProtoTaskEntity = {
      description = "Contains a task's metadata and associated information. Next available id: 7",
      id = "EnterpriseCrmFrontendsEventbusProtoTaskEntity",
      properties = {
        disabledForVpcSc = {
          description = "True if the task has conflict with vpcsc",
          type = "boolean",
        },
        metadata = {
          ["$ref"] = "EnterpriseCrmEventbusProtoTaskMetadata",
          description = "Metadata inclueds the task name, author and so on.",
        },
        paramSpecs = {
          ["$ref"] = "EnterpriseCrmFrontendsEventbusProtoParamSpecsMessage",
          description = "Declarations for inputs/outputs for a TypedTask. This is also associated with the METADATA mask.",
        },
        stats = {
          ["$ref"] = "EnterpriseCrmEventbusStats",
          description = "Deprecated - statistics from the Monarch query.",
        },
        taskType = {
          description = "Defines the type of the task",
          enum = {
            "TASK",
            "ASIS_TEMPLATE",
            "IO_TEMPLATE",
          },
          enumDescriptions = {
            "Normal IP task",
            "Task is of As-Is Template type",
            "Task is of I/O template type with a different underlying task",
          },
          type = "string",
        },
        uiConfig = {
          ["$ref"] = "EnterpriseCrmEventbusProtoTaskUiConfig",
          description = "UI configuration for this task Also associated with the METADATA mask.",
        },
      },
      type = "object",
    },
    EnterpriseCrmFrontendsEventbusProtoTriggerConfig = {
      description = "Configuration detail of a trigger. Next available id: 17",
      id = "EnterpriseCrmFrontendsEventbusProtoTriggerConfig",
      properties = {
        alertConfig = {
          description = "An alert threshold configuration for the [trigger + client + workflow] tuple. If these values are not specified in the trigger config, default values will be populated by the system. Note that there must be exactly one alert threshold configured per [client + trigger + workflow] when published.",
          items = {
            ["$ref"] = "EnterpriseCrmEventbusProtoWorkflowAlertConfig",
          },
          type = "array",
        },
        cloudSchedulerConfig = {
          ["$ref"] = "EnterpriseCrmEventbusProtoCloudSchedulerConfig",
        },
        description = {
          description = "User-provided description intended to give more business context about the task.",
          type = "string",
        },
        enabledClients = {
          description = "Required. The list of client ids which are enabled to execute the workflow using this trigger. In other words, these clients have the workflow execution privledges for this trigger. For API trigger, the client id in the incoming request is validated against the list of enabled clients. For non-API triggers, one workflow execution is triggered on behalf of each enabled client.",
          items = {
            type = "string",
          },
          type = "array",
        },
        label = {
          description = "The user created label for a particular trigger.",
          type = "string",
        },
        nextTasksExecutionPolicy = {
          description = "Dictates how next tasks will be executed.",
          enum = {
            "UNSPECIFIED",
            "RUN_ALL_MATCH",
            "RUN_FIRST_MATCH",
          },
          enumDescriptions = {
            "Default",
            "Execute all the tasks that satisfy their associated condition.",
            "Execute the first task that satisfies the associated condition.",
          },
          type = "string",
        },
        pauseWorkflowExecutions = {
          description = "Optional. If set to true, any upcoming requests for this trigger config will be paused and the executions will be resumed later when the flag is reset. The workflow to which this trigger config belongs has to be in ACTIVE status for the executions to be paused or resumed.",
          type = "boolean",
        },
        position = {
          ["$ref"] = "EnterpriseCrmEventbusProtoCoordinate",
          description = "Optional. Informs the front-end application where to draw this trigger config on the UI.",
        },
        properties = {
          additionalProperties = {
            type = "string",
          },
          description = "Configurable properties of the trigger, not to be confused with workflow parameters. E.g. \"name\" is a property for API triggers and \"subscription\" is a property for Cloud Pubsub triggers.",
          type = "object",
        },
        startTasks = {
          description = "Set of tasks numbers from where the workflow execution is started by this trigger. If this is empty, then workflow is executed with default start tasks. In the list of start tasks, none of two tasks can have direct ancestor-descendant relationships (i.e. in a same workflow execution graph).",
          items = {
            ["$ref"] = "EnterpriseCrmEventbusProtoNextTask",
          },
          type = "array",
        },
        triggerCriteria = {
          ["$ref"] = "EnterpriseCrmEventbusProtoTriggerCriteria",
          description = "Optional. When set, Eventbus will run the task specified in the trigger_criteria and validate the result using the trigger_criteria.condition, and only execute the workflow when result is true.",
        },
        triggerId = {
          description = "The backend trigger ID.",
          type = "string",
        },
        triggerNumber = {
          description = "Required. A number to uniquely identify each trigger config within the workflow on UI.",
          type = "string",
        },
        triggerType = {
          enum = {
            "UNKNOWN",
            "CLOUD_PUBSUB",
            "GOOPS",
            "SFDC_SYNC",
            "CRON",
            "API",
            "MANIFOLD_TRIGGER",
            "DATALAYER_DATA_CHANGE",
            "SFDC_CHANNEL",
            "CLOUD_PUBSUB_EXTERNAL",
            "SFDC_CDC_CHANNEL",
            "SFDC_PLATFORM_EVENTS_CHANNEL",
            "CLOUD_SCHEDULER",
          },
          enumDescriptions = {
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
          },
          type = "string",
        },
      },
      type = "object",
    },
    EnterpriseCrmFrontendsEventbusProtoWorkflowParameterEntry = {
      id = "EnterpriseCrmFrontendsEventbusProtoWorkflowParameterEntry",
      properties = {
        attributes = {
          ["$ref"] = "EnterpriseCrmEventbusProtoAttributes",
          description = "Metadata information about the parameters.",
        },
        children = {
          description = "Child parameters nested within this parameter. This field only applies to protobuf parameters",
          items = {
            ["$ref"] = "EnterpriseCrmFrontendsEventbusProtoWorkflowParameterEntry",
          },
          type = "array",
        },
        dataType = {
          description = "The data type of the parameter.",
          enum = {
            "DATA_TYPE_UNSPECIFIED",
            "STRING_VALUE",
            "INT_VALUE",
            "DOUBLE_VALUE",
            "BOOLEAN_VALUE",
            "PROTO_VALUE",
            "SERIALIZED_OBJECT_VALUE",
            "STRING_ARRAY",
            "INT_ARRAY",
            "DOUBLE_ARRAY",
            "PROTO_ARRAY",
            "PROTO_ENUM",
            "BOOLEAN_ARRAY",
            "PROTO_ENUM_ARRAY",
            "BYTES",
            "BYTES_ARRAY",
            "NON_SERIALIZABLE_OBJECT",
            "JSON_VALUE",
          },
          enumDescriptions = {
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "BYTES and BYTES_ARRAY data types are not allowed for top-level params. They're only meant to support protobufs with BYTES (sub)fields.",
            "",
            "",
            "",
          },
          type = "string",
        },
        defaultValue = {
          ["$ref"] = "EnterpriseCrmFrontendsEventbusProtoParameterValueType",
          description = "Default values for the defined keys. Each value can either be string, int, double or any proto message or a serialized object.",
        },
        inOutType = {
          description = "Specifies the input/output type for the parameter.",
          enum = {
            "IN_OUT_TYPE_UNSPECIFIED",
            "IN",
            "OUT",
            "IN_OUT",
          },
          enumDescriptions = {
            "",
            "Input parameters for the workflow. EventBus validates that these parameters exist in the workflows before execution.",
            "Output Parameters for the workflow. EventBus will only return the workflow parameters tagged with OUT in the response back.",
            "Input or Output Parameters. These can be used as both input and output. EventBus will validate for the existence of these parameters before execution and will also return this parameter back in the response.",
          },
          type = "string",
        },
        isTransient = {
          description = "Whether this parameter is a transient parameter. go/ip-transient-parameters",
          type = "boolean",
        },
        jsonSchema = {
          description = "This schema will be used to validate runtime JSON-typed values of this parameter.",
          type = "string",
        },
        key = {
          description = "Key is used to retrieve the corresponding parameter value. This should be unique for a given fired event. These parameters must be predefined in the workflow definition.",
          type = "string",
        },
        name = {
          description = "The name (without prefix) to be displayed in the UI for this parameter. E.g. if the key is \"foo.bar.myName\", then the name would be \"myName\".",
          type = "string",
        },
        producedBy = {
          ["$ref"] = "EnterpriseCrmEventbusProtoNodeIdentifier",
          description = "The identifier of the node (TaskConfig/TriggerConfig) this parameter was produced by, if it is a transient param or a copy of an input param.",
        },
        producer = {
          type = "string",
        },
        protoDefName = {
          description = "The name of the protobuf type if the parameter has a protobuf data type.",
          type = "string",
        },
        protoDefPath = {
          description = "If the data type is of type proto or proto array, this field needs to be populated with the fully qualified proto name. This message, for example, would be \"enterprise.crm.frontends.eventbus.proto.WorkflowParameterEntry\".",
          type = "string",
        },
      },
      type = "object",
    },
    EnterpriseCrmFrontendsEventbusProtoWorkflowParameters = {
      description = "LINT.IfChange This is the frontend version of WorkflowParameters. It's exactly like the backend version except that instead of flattening protobuf parameters and treating every field and subfield of a protobuf parameter as a separate parameter, the fields/subfields of a protobuf parameter will be nested as \"children\" (see 'children' field below) parameters of the parent parameter. Please refer to enterprise/crm/eventbus/proto/workflow_parameters.proto for more information about WorkflowParameters.",
      id = "EnterpriseCrmFrontendsEventbusProtoWorkflowParameters",
      properties = {
        parameters = {
          description = "Parameters are a part of Event and can be used to communiticate between different tasks that are part of the same workflow execution.",
          items = {
            ["$ref"] = "EnterpriseCrmFrontendsEventbusProtoWorkflowParameterEntry",
          },
          type = "array",
        },
      },
      type = "object",
    },
    EnterpriseCrmLoggingGwsFieldLimits = {
      description = "Describes string and array limits when writing to logs. When a limit is exceeded the *shortener_type* describes how to shorten the field. next_id: 6",
      id = "EnterpriseCrmLoggingGwsFieldLimits",
      properties = {
        logAction = {
          enum = {
            "LOG_ACTION_UNSPECIFIED",
            "DONT_LOG",
            "LOG",
          },
          enumDescriptions = {
            "",
            "",
            "",
          },
          type = "string",
        },
        logType = {
          description = "To which type(s) of logs the limits apply.",
          items = {
            enum = {
              "LOG_TYPE_UNSPECIFIED",
              "GWS",
              "GTS",
              "ALL",
            },
            enumDescriptions = {
              "",
              "Limits apply when log detail records are written to GWS.",
              "Limits apply when log detail records are written to GTS (e.g., RecordIO files).",
              "Limits apply to *all* output log types.",
            },
            type = "string",
          },
          type = "array",
        },
        maxArraySize = {
          description = "maximum array size. If the array exceds this size, the field (list) is truncated.",
          format = "int32",
          type = "integer",
        },
        maxStringLength = {
          description = "maximum string length. If the field exceeds this amount the field is shortened.",
          format = "int32",
          type = "integer",
        },
        shortenerType = {
          enum = {
            "SHORTENER_TYPE_UNSPECIFIED",
            "SHORTEN",
            "HASH",
            "SHORTEN_WITH_HASH",
            "SHORTEN_EMAIL",
            "SHORTEN_EMAIL_WITH_HASH",
            "SHORTEN_DOMAIN",
          },
          enumDescriptions = {
            "",
            "String is shortened to max_string_length.",
            "String is replaced by its hex-string hash.",
            "String is replaced by a combination of string shortening and a hex-string hash.",
            "String shortening for email addresses. Shortening may be done on the user and/or domain portion of the email address.",
            "String is replaced by a combination of string shortening and a hex-string hash for an email address.",
            "Shortens a domain name (e.g., as part of an email address or URL).",
          },
          type = "string",
        },
      },
      type = "object",
    },
    EnterpriseCrmLoggingGwsSanitizeOptions = {
      description = "Identifies whether a field contains, or may contain, PII or sensitive data, and how to sanitize the field if it does. If a field's privacy type cannot be determined then it is sanitized (e.g., scrubbed). The specific sanitizer implementation is determined by run-time configuration and environment options (e.g., prod vs. qa). next_id: 5",
      id = "EnterpriseCrmLoggingGwsSanitizeOptions",
      properties = {
        isAlreadySanitized = {
          description = "If true, the value has already been sanitized and needs no further sanitization. For instance, a D3 customer id is already an obfuscated entity and *might not* need further sanitization.",
          type = "boolean",
        },
        logType = {
          description = "To which type(s) of logs the sanitize options apply.",
          items = {
            enum = {
              "LOG_TYPE_UNSPECIFIED",
              "GWS",
              "GTS",
              "ALL",
            },
            enumDescriptions = {
              "",
              "Limits apply when log detail records are written to GWS.",
              "Limits apply when log detail records are written to GTS (e.g., RecordIO files).",
              "Limits apply to *all* output log types.",
            },
            type = "string",
          },
          type = "array",
        },
        privacy = {
          enum = {
            "PRIVACY_TYPE_UNSPECIFIED",
            "NOT_PII",
            "PII",
            "SPII",
            "UNSURE",
          },
          enumDescriptions = {
            "",
            "Field does *NOT* contain PII or sensitive data.",
            "Field contains PII.",
            "Field contains Sensitive PII.",
            "Unsure if field contains PII.",
          },
          type = "string",
        },
        sanitizeType = {
          enum = {
            "SANITIZE_TYPE_UNSPECIFIED",
            "SCRUB",
            "ANONYMIZE",
            "ANONYMIZE_LIMITED_REPEATABLE",
            "OBFUSCATE",
            "ENCRYPT",
            "DO_NOT_SANITIZE",
          },
          enumDescriptions = {
            "",
            "Replace value with a scrubbed value (usu. a constant).",
            "Transform a value so that it cannot be tracked across events. However, a given value, is transformed to the same value *within* an event. E.g., \"foo.com\" is transformed to \"0xabcdef\" for event 1001, and to \"0xfedcba\" for event 1002.",
            "Transform values as with ANONYMIZER, but the same transformation is repeated for a limited time (e.g., 1 day).",
            "The value is transformed using a well-defined obfuscator (e.g., D3_CUSTOMER_ID).",
            "The value is encrypted.",
            "No sanitization is required.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudConnectorsV1AuthConfig = {
      description = "AuthConfig defines details of a authentication type.",
      id = "GoogleCloudConnectorsV1AuthConfig",
      properties = {
        additionalVariables = {
          description = "List containing additional auth configs.",
          items = {
            ["$ref"] = "GoogleCloudConnectorsV1ConfigVariable",
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
          ["$ref"] = "GoogleCloudConnectorsV1AuthConfigOauth2ClientCredentials",
          description = "Oauth2ClientCredentials.",
        },
        oauth2JwtBearer = {
          ["$ref"] = "GoogleCloudConnectorsV1AuthConfigOauth2JwtBearer",
          description = "Oauth2JwtBearer.",
        },
        sshPublicKey = {
          ["$ref"] = "GoogleCloudConnectorsV1AuthConfigSshPublicKey",
          description = "SSH Public Key.",
        },
        userPassword = {
          ["$ref"] = "GoogleCloudConnectorsV1AuthConfigUserPassword",
          description = "UserPassword.",
        },
      },
      type = "object",
    },
    GoogleCloudConnectorsV1AuthConfigOauth2ClientCredentials = {
      description = "Parameters to support Oauth 2.0 Client Credentials Grant Authentication. See https://tools.ietf.org/html/rfc6749#section-1.3.4 for more details.",
      id = "GoogleCloudConnectorsV1AuthConfigOauth2ClientCredentials",
      properties = {
        clientId = {
          description = "The client identifier.",
          type = "string",
        },
        clientSecret = {
          ["$ref"] = "GoogleCloudConnectorsV1Secret",
          description = "Secret version reference containing the client secret.",
        },
      },
      type = "object",
    },
    GoogleCloudConnectorsV1AuthConfigOauth2JwtBearer = {
      description = "Parameters to support JSON Web Token (JWT) Profile for Oauth 2.0 Authorization Grant based authentication. See https://tools.ietf.org/html/rfc7523 for more details.",
      id = "GoogleCloudConnectorsV1AuthConfigOauth2JwtBearer",
      properties = {
        clientKey = {
          ["$ref"] = "GoogleCloudConnectorsV1Secret",
          description = "Secret version reference containing a PKCS#8 PEM-encoded private key associated with the Client Certificate. This private key will be used to sign JWTs used for the jwt-bearer authorization grant. Specified in the form as: `projects/*/secrets/*/versions/*`.",
        },
        jwtClaims = {
          ["$ref"] = "GoogleCloudConnectorsV1AuthConfigOauth2JwtBearerJwtClaims",
          description = "JwtClaims providers fields to generate the token.",
        },
      },
      type = "object",
    },
    GoogleCloudConnectorsV1AuthConfigOauth2JwtBearerJwtClaims = {
      description = "JWT claims used for the jwt-bearer authorization grant.",
      id = "GoogleCloudConnectorsV1AuthConfigOauth2JwtBearerJwtClaims",
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
    GoogleCloudConnectorsV1AuthConfigSshPublicKey = {
      description = "Parameters to support Ssh public key Authentication.",
      id = "GoogleCloudConnectorsV1AuthConfigSshPublicKey",
      properties = {
        certType = {
          description = "Format of SSH Client cert.",
          type = "string",
        },
        sshClientCert = {
          ["$ref"] = "GoogleCloudConnectorsV1Secret",
          description = "SSH Client Cert. It should contain both public and private key.",
        },
        sshClientCertPass = {
          ["$ref"] = "GoogleCloudConnectorsV1Secret",
          description = "Password (passphrase) for ssh client certificate if it has one.",
        },
        username = {
          description = "The user account used to authenticate.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudConnectorsV1AuthConfigUserPassword = {
      description = "Parameters to support Username and Password Authentication.",
      id = "GoogleCloudConnectorsV1AuthConfigUserPassword",
      properties = {
        password = {
          ["$ref"] = "GoogleCloudConnectorsV1Secret",
          description = "Secret version reference containing the password.",
        },
        username = {
          description = "Username.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudConnectorsV1ConfigVariable = {
      description = "ConfigVariable represents a configuration variable present in a Connection. or AuthConfig.",
      id = "GoogleCloudConnectorsV1ConfigVariable",
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
          ["$ref"] = "GoogleCloudConnectorsV1Secret",
          description = "Value is a secret.",
        },
        stringValue = {
          description = "Value is a string.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudConnectorsV1Connection = {
      description = "Connection represents an instance of connector.",
      id = "GoogleCloudConnectorsV1Connection",
      properties = {
        authConfig = {
          ["$ref"] = "GoogleCloudConnectorsV1AuthConfig",
          description = "Optional. Configuration for establishing the connection's authentication with an external system.",
        },
        configVariables = {
          description = "Optional. Configuration for configuring the connection with an external system.",
          items = {
            ["$ref"] = "GoogleCloudConnectorsV1ConfigVariable",
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
            ["$ref"] = "GoogleCloudConnectorsV1DestinationConfig",
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
          ["$ref"] = "GoogleCloudConnectorsV1LockConfig",
          description = "Optional. Configuration that indicates whether or not the Connection can be edited.",
        },
        name = {
          description = "Output only. Resource name of the Connection. Format: projects/{project}/locations/{location}/connections/{connection}",
          readOnly = true,
          type = "string",
        },
        nodeConfig = {
          ["$ref"] = "GoogleCloudConnectorsV1NodeConfig",
          description = "Optional. Configuration for the connection.",
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
          ["$ref"] = "GoogleCloudConnectorsV1ConnectionStatus",
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
    GoogleCloudConnectorsV1ConnectionStatus = {
      description = "ConnectionStatus indicates the state of the connection.",
      id = "GoogleCloudConnectorsV1ConnectionStatus",
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
    GoogleCloudConnectorsV1Destination = {
      id = "GoogleCloudConnectorsV1Destination",
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
    GoogleCloudConnectorsV1DestinationConfig = {
      description = "Define the Connectors target endpoint.",
      id = "GoogleCloudConnectorsV1DestinationConfig",
      properties = {
        destinations = {
          description = "The destinations for the key.",
          items = {
            ["$ref"] = "GoogleCloudConnectorsV1Destination",
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
    GoogleCloudConnectorsV1LockConfig = {
      description = "Determines whether or no a connection is locked. If locked, a reason must be specified.",
      id = "GoogleCloudConnectorsV1LockConfig",
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
    GoogleCloudConnectorsV1NodeConfig = {
      description = "Configuration for the connection.",
      id = "GoogleCloudConnectorsV1NodeConfig",
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
    GoogleCloudConnectorsV1Secret = {
      description = "Secret provides a reference to entries in Secret Manager.",
      id = "GoogleCloudConnectorsV1Secret",
      properties = {
        secretVersion = {
          description = "The resource name of the secret version in the format, format as: `projects/*/secrets/*/versions/*`.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudIntegrationsV1alphaAccessToken = {
      description = "The access token represents the authorization of a specific application to access specific parts of a user’s data.",
      id = "GoogleCloudIntegrationsV1alphaAccessToken",
      properties = {
        accessToken = {
          description = "The access token encapsulating the security identity of a process or thread.",
          type = "string",
        },
        accessTokenExpireTime = {
          description = "Required. The approximate time until the access token retrieved is valid.",
          format = "google-datetime",
          type = "string",
        },
        refreshToken = {
          description = "If the access token will expire, use the refresh token to obtain another access token.",
          type = "string",
        },
        refreshTokenExpireTime = {
          description = "The approximate time until the refresh token retrieved is valid.",
          format = "google-datetime",
          type = "string",
        },
        tokenType = {
          description = "Only support \"bearer\" token in v1 as bearer token is the predominant type used with OAuth 2.0.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudIntegrationsV1alphaArchiveBundleRequest = {
      description = "Request for ArchiveBundle.",
      id = "GoogleCloudIntegrationsV1alphaArchiveBundleRequest",
      properties = {},
      type = "object",
    },
    GoogleCloudIntegrationsV1alphaArchiveBundleResponse = {
      description = "Response for ArchiveBundle.",
      id = "GoogleCloudIntegrationsV1alphaArchiveBundleResponse",
      properties = {},
      type = "object",
    },
    GoogleCloudIntegrationsV1alphaArchiveIntegrationVersionRequest = {
      description = "Request for ArchiveIntegrationVersion.",
      id = "GoogleCloudIntegrationsV1alphaArchiveIntegrationVersionRequest",
      properties = {},
      type = "object",
    },
    GoogleCloudIntegrationsV1alphaArchiveIntegrationVersionResponse = {
      description = "Response for ArchiveIntegrationVersion.",
      id = "GoogleCloudIntegrationsV1alphaArchiveIntegrationVersionResponse",
      properties = {},
      type = "object",
    },
    GoogleCloudIntegrationsV1alphaAttemptStats = {
      description = "Status for the execution attempt.",
      id = "GoogleCloudIntegrationsV1alphaAttemptStats",
      properties = {
        endTime = {
          description = "The end time of the event execution for current attempt.",
          format = "google-datetime",
          type = "string",
        },
        startTime = {
          description = "The start time of the event execution for current attempt. This could be in the future if it's been scheduled.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudIntegrationsV1alphaAuthConfig = {
      description = "The AuthConfig resource use to hold channels and connection config data.",
      id = "GoogleCloudIntegrationsV1alphaAuthConfig",
      properties = {
        certificateId = {
          description = "Certificate id for client certificate",
          type = "string",
        },
        createTime = {
          description = "Output only. The timestamp when the auth config is created.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        creatorEmail = {
          description = "The creator's email address. Generated based on the End User Credentials/LOAS role of the user making the call.",
          type = "string",
        },
        credentialType = {
          description = "Credential type of the encrypted credential.",
          enum = {
            "CREDENTIAL_TYPE_UNSPECIFIED",
            "USERNAME_AND_PASSWORD",
            "API_KEY",
            "OAUTH2_AUTHORIZATION_CODE",
            "OAUTH2_IMPLICIT",
            "OAUTH2_CLIENT_CREDENTIALS",
            "OAUTH2_RESOURCE_OWNER_CREDENTIALS",
            "JWT",
            "AUTH_TOKEN",
            "SERVICE_ACCOUNT",
            "CLIENT_CERTIFICATE_ONLY",
            "OIDC_TOKEN",
          },
          enumDescriptions = {
            "Unspecified credential type",
            "Regular username/password pair.",
            "API key.",
            "OAuth 2.0 Authorization Code Grant Type.",
            "OAuth 2.0 Implicit Grant Type.",
            "OAuth 2.0 Client Credentials Grant Type.",
            "OAuth 2.0 Resource Owner Credentials Grant Type.",
            "JWT Token.",
            "Auth Token, e.g. bearer token.",
            "Service Account which can be used to generate token for authentication.",
            "Client Certificate only.",
            "Google OIDC ID Token",
          },
          type = "string",
        },
        decryptedCredential = {
          ["$ref"] = "GoogleCloudIntegrationsV1alphaCredential",
          description = "Raw auth credentials.",
        },
        description = {
          description = "A description of the auth config.",
          type = "string",
        },
        displayName = {
          description = "The name of the auth config.",
          type = "string",
        },
        encryptedCredential = {
          description = "Auth credential encrypted by Cloud KMS. Can be decrypted as Credential with proper KMS key.",
          format = "byte",
          type = "string",
        },
        expiryNotificationDuration = {
          description = "User can define the time to receive notification after which the auth config becomes invalid. Support up to 30 days. Support granularity in hours.",
          items = {
            format = "google-duration",
            type = "string",
          },
          type = "array",
        },
        lastModifierEmail = {
          description = "The last modifier's email address. Generated based on the End User Credentials/LOAS role of the user making the call.",
          type = "string",
        },
        name = {
          description = "Resource name of the SFDC instance projects/{project}/locations/{location}/authConfigs/{authConfig}.",
          type = "string",
        },
        overrideValidTime = {
          description = "User provided expiry time to override. For the example of Salesforce, username/password credentials can be valid for 6 months depending on the instance settings.",
          format = "google-datetime",
          type = "string",
        },
        reason = {
          description = "The reason / details of the current status.",
          type = "string",
        },
        state = {
          description = "The status of the auth config.",
          enum = {
            "STATE_UNSPECIFIED",
            "VALID",
            "INVALID",
            "SOFT_DELETED",
            "EXPIRED",
            "UNAUTHORIZED",
            "UNSUPPORTED",
          },
          enumDescriptions = {
            "Status not specified.",
            "Valid Auth config.",
            "General invalidity, if it doesn't fits in the detailed issue below.",
            "Auth config soft deleted.",
            "Auth config expired.",
            "Auth config unauthorized.",
            "Auth config not supported.",
          },
          type = "string",
        },
        updateTime = {
          description = "Output only. The timestamp when the auth config is modified.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        validTime = {
          description = "The time until the auth config is valid. Empty or max value is considered the auth config won't expire.",
          format = "google-datetime",
          type = "string",
        },
        visibility = {
          description = "The visibility of the auth config.",
          enum = {
            "AUTH_CONFIG_VISIBILITY_UNSPECIFIED",
            "PRIVATE",
            "CLIENT_VISIBLE",
          },
          enumDescriptions = {
            "Visibility not specified.",
            "Profile visible to the creator only.",
            "Profile visible within the client.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudIntegrationsV1alphaAuthToken = {
      description = "The credentials to authenticate a user agent with a server that is put in HTTP Authorization request header.",
      id = "GoogleCloudIntegrationsV1alphaAuthToken",
      properties = {
        token = {
          description = "The token for the auth type.",
          type = "string",
        },
        type = {
          description = "Authentication type, e.g. \"Basic\", \"Bearer\", etc.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudIntegrationsV1alphaBooleanParameterArray = {
      description = "This message only contains a field of boolean array.",
      id = "GoogleCloudIntegrationsV1alphaBooleanParameterArray",
      properties = {
        booleanValues = {
          description = "Boolean array.",
          items = {
            type = "boolean",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudIntegrationsV1alphaCancelExecutionRequest = {
      description = "Request for cancelling an execution.",
      id = "GoogleCloudIntegrationsV1alphaCancelExecutionRequest",
      properties = {},
      type = "object",
    },
    GoogleCloudIntegrationsV1alphaCancelExecutionResponse = {
      description = "Response for cancelling an execution.",
      id = "GoogleCloudIntegrationsV1alphaCancelExecutionResponse",
      properties = {
        isCanceled = {
          description = "True if cancellation performed successfully",
          type = "boolean",
        },
      },
      type = "object",
    },
    GoogleCloudIntegrationsV1alphaCertificate = {
      description = "The certificate definition",
      id = "GoogleCloudIntegrationsV1alphaCertificate",
      properties = {
        certificateStatus = {
          description = "Status of the certificate",
          enum = {
            "STATE_UNSPECIFIED",
            "ACTIVE",
            "EXPIRED",
          },
          enumDescriptions = {
            "Unspecified certificate status",
            "Certificate in active state will be able to use",
            "Certificate in expired state needs to be updated",
          },
          type = "string",
        },
        credentialId = {
          description = "Immutable. Credential id that will be used to register with trawler INTERNAL_ONLY",
          type = "string",
        },
        description = {
          description = "Description of the certificate",
          type = "string",
        },
        displayName = {
          description = "Name of the certificate",
          type = "string",
        },
        name = {
          description = "Output only. Auto generated primary key",
          readOnly = true,
          type = "string",
        },
        rawCertificate = {
          ["$ref"] = "GoogleCloudIntegrationsV1alphaClientCertificate",
          description = "Input only. Raw client certificate which would be registered with trawler",
        },
        requestorId = {
          description = "Immutable. Requestor ID to be used to register certificate with trawler",
          type = "string",
        },
        validEndTime = {
          description = "Output only. The timestamp after which certificate will expire",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        validStartTime = {
          description = "Output only. The timestamp after which certificate will be valid",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudIntegrationsV1alphaClientCertificate = {
      description = "Contains client certificate information",
      id = "GoogleCloudIntegrationsV1alphaClientCertificate",
      properties = {
        encryptedPrivateKey = {
          description = "The ssl certificate encoded in PEM format. This string must include the begin header and end footer lines. For example, -----BEGIN CERTIFICATE----- MIICTTCCAbagAwIBAgIJAPT0tSKNxan/MA0GCSqGSIb3DQEBCwUAMCoxFzAVBgNV BAoTDkdvb2dsZSBURVNUSU5HMQ8wDQYDVQQDEwZ0ZXN0Q0EwHhcNMTUwMTAxMDAw MDAwWhcNMjUwMTAxMDAwMDAwWjAuMRcwFQYDVQQKEw5Hb29nbGUgVEVTVElORzET MBEGA1UEAwwKam9lQGJhbmFuYTCBnzANBgkqhkiG9w0BAQEFAAOBjQAwgYkCgYEA vDYFgMgxi5W488d9J7UpCInl0NXmZQpJDEHE4hvkaRlH7pnC71H0DLt0/3zATRP1 JzY2+eqBmbGl4/sgZKYv8UrLnNyQNUTsNx1iZAfPUflf5FwgVsai8BM0pUciq1NB xD429VFcrGZNucvFLh72RuRFIKH8WUpiK/iZNFkWhZ0CAwEAAaN3MHUwDgYDVR0P AQH/BAQDAgWgMB0GA1UdJQQWMBQGCCsGAQUFBwMBBggrBgEFBQcDAjAMBgNVHRMB Af8EAjAAMBkGA1UdDgQSBBCVgnFBCWgL/iwCqnGrhTPQMBsGA1UdIwQUMBKAEKey Um2o4k2WiEVA0ldQvNYwDQYJKoZIhvcNAQELBQADgYEAYK986R4E3L1v+Q6esBtW JrUwA9UmJRSQr0N5w3o9XzarU37/bkjOP0Fw0k/A6Vv1n3vlciYfBFaBIam1qRHr 5dMsYf4CZS6w50r7hyzqyrwDoyNxkLnd2PdcHT/sym1QmflsjEs7pejtnohO6N2H wQW6M0H7Zt8claGRla4fKkg= -----END CERTIFICATE-----",
          type = "string",
        },
        passphrase = {
          description = "'passphrase' should be left unset if private key is not encrypted. Note that 'passphrase' is not the password for web server, but an extra layer of security to protected private key.",
          type = "string",
        },
        sslCertificate = {
          description = "The ssl certificate encoded in PEM format. This string must include the begin header and end footer lines. For example, -----BEGIN CERTIFICATE----- MIICTTCCAbagAwIBAgIJAPT0tSKNxan/MA0GCSqGSIb3DQEBCwUAMCoxFzAVBgNV BAoTDkdvb2dsZSBURVNUSU5HMQ8wDQYDVQQDEwZ0ZXN0Q0EwHhcNMTUwMTAxMDAw MDAwWhcNMjUwMTAxMDAwMDAwWjAuMRcwFQYDVQQKEw5Hb29nbGUgVEVTVElORzET MBEGA1UEAwwKam9lQGJhbmFuYTCBnzANBgkqhkiG9w0BAQEFAAOBjQAwgYkCgYEA vDYFgMgxi5W488d9J7UpCInl0NXmZQpJDEHE4hvkaRlH7pnC71H0DLt0/3zATRP1 JzY2+eqBmbGl4/sgZKYv8UrLnNyQNUTsNx1iZAfPUflf5FwgVsai8BM0pUciq1NB xD429VFcrGZNucvFLh72RuRFIKH8WUpiK/iZNFkWhZ0CAwEAAaN3MHUwDgYDVR0P AQH/BAQDAgWgMB0GA1UdJQQWMBQGCCsGAQUFBwMBBggrBgEFBQcDAjAMBgNVHRMB Af8EAjAAMBkGA1UdDgQSBBCVgnFBCWgL/iwCqnGrhTPQMBsGA1UdIwQUMBKAEKey Um2o4k2WiEVA0ldQvNYwDQYJKoZIhvcNAQELBQADgYEAYK986R4E3L1v+Q6esBtW JrUwA9UmJRSQr0N5w3o9XzarU37/bkjOP0Fw0k/A6Vv1n3vlciYfBFaBIam1qRHr 5dMsYf4CZS6w50r7hyzqyrwDoyNxkLnd2PdcHT/sym1QmflsjEs7pejtnohO6N2H wQW6M0H7Zt8claGRla4fKkg= -----END CERTIFICATE-----",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudIntegrationsV1alphaClientConfig = {
      description = "The configuration information for the Client",
      id = "GoogleCloudIntegrationsV1alphaClientConfig",
      properties = {
        billingType = {
          description = "Indicates the billing type of the client",
          enum = {
            "BILLING_TYPE_UNSPECIFIED",
            "BILLING_TYPE_APIGEE_TRIALS",
            "BILLING_TYPE_APIGEE_SUBSCRIPTION",
            "BILLING_TYPE_PAYG",
          },
          enumDescriptions = {
            "Unspecified billing type",
            "A trial org provisioned through Apigee Provisioning Wizard",
            "Subscription based users of Apigee",
            "Consumption based users of IP",
          },
          type = "string",
        },
        clientState = {
          description = "Indicates the activity state the client",
          enum = {
            "CLIENT_STATE_UNSPECIFIED",
            "CLIENT_STATE_ACTIVE",
            "CLIENT_STATE_DISABLED",
          },
          enumDescriptions = {
            "The client state is unspecified",
            "The client is active and able to make calls to the IP APIs",
            "The client is disabled and will soon be deleted",
          },
          type = "string",
        },
        cloudKmsConfig = {
          ["$ref"] = "GoogleCloudIntegrationsV1alphaCloudKmsConfig",
          description = "Cloud KMS config for Auth Module to encrypt/decrypt credentials.",
        },
        cloudLoggingConfig = {
          ["$ref"] = "GoogleCloudIntegrationsV1alphaCloudLoggingConfig",
          description = "Determines the cloud logging configuration for the project",
        },
        createTime = {
          description = "The timestamp when the client was first created.",
          format = "google-datetime",
          type = "string",
        },
        description = {
          description = "Description of what the client is used for",
          type = "string",
        },
        id = {
          description = "Globally unique ID (project_id + region)",
          type = "string",
        },
        p4ServiceAccount = {
          description = "The P4SA account associated with this client",
          type = "string",
        },
        projectId = {
          description = "The GCP project id of the client associated with",
          type = "string",
        },
        region = {
          description = "The region the client is linked to.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudIntegrationsV1alphaCloudKmsConfig = {
      description = "Configuration information for Client's Cloud KMS information",
      id = "GoogleCloudIntegrationsV1alphaCloudKmsConfig",
      properties = {
        key = {
          description = "Required. A Cloud KMS key is a named object containing one or more key versions, along with metadata for the key. A key exists on exactly one key ring tied to a specific location.",
          type = "string",
        },
        keyVersion = {
          description = "Optional. Each version of a key contains key material used for encryption or signing. A key's version is represented by an integer, starting at 1. To decrypt data or verify a signature, you must use the same key version that was used to encrypt or sign the data.",
          type = "string",
        },
        kmsLocation = {
          description = "Required. Location name of the key ring, e.g. \"us-west1\".",
          type = "string",
        },
        kmsRing = {
          description = "Required. A key ring organizes keys in a specific Google Cloud location and allows you to manage access control on groups of keys. A key ring's name does not need to be unique across a Google Cloud project, but must be unique within a given location.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudIntegrationsV1alphaCloudLoggingConfig = {
      description = "Config info for Cloud Logging",
      id = "GoogleCloudIntegrationsV1alphaCloudLoggingConfig",
      properties = {
        bucket = {
          description = "Cloud bucket name for the project.",
          type = "string",
        },
        enableCloudLogging = {
          description = "This field determines whether the logs should be sent to cloud logging api",
          type = "boolean",
        },
      },
      type = "object",
    },
    GoogleCloudIntegrationsV1alphaCloudSchedulerConfig = {
      description = "Cloud Scheduler Trigger configuration",
      id = "GoogleCloudIntegrationsV1alphaCloudSchedulerConfig",
      properties = {
        cronTab = {
          description = "Required. The cron tab of cloud scheduler trigger.",
          type = "string",
        },
        errorMessage = {
          description = "Optional. When the job was deleted from Pantheon UI, error_message will be populated when Get/List integrations",
          type = "string",
        },
        location = {
          description = "Required. The location where associated cloud scheduler job will be created",
          type = "string",
        },
        serviceAccountEmail = {
          description = "Required. Service account used by Cloud Scheduler to trigger the integration at scheduled time",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudIntegrationsV1alphaConnectionSchemaMetadata = {
      description = "Metadata of runtime connection schema.",
      id = "GoogleCloudIntegrationsV1alphaConnectionSchemaMetadata",
      properties = {
        actions = {
          description = "List of actions.",
          items = {
            type = "string",
          },
          type = "array",
        },
        entities = {
          description = "List of entity names.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudIntegrationsV1alphaCreateAppsScriptProjectRequest = {
      description = "Request for CreateAppsScriptProject rpc call.",
      id = "GoogleCloudIntegrationsV1alphaCreateAppsScriptProjectRequest",
      properties = {
        appsScriptProject = {
          description = "The name of the Apps Script project to be created.",
          type = "string",
        },
        authConfigId = {
          description = "The auth config id necessary to fetch the necessary credentials to create the project for external clients",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudIntegrationsV1alphaCreateAppsScriptProjectResponse = {
      description = "Response for CreateAppsScriptProject rpc call.",
      id = "GoogleCloudIntegrationsV1alphaCreateAppsScriptProjectResponse",
      properties = {
        projectId = {
          description = "The created AppsScriptProject ID.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudIntegrationsV1alphaCreateBundleRequest = {
      description = "PROTECT WITH A VISIBILITY LABEL. THIS METHOD WILL BE MOVED TO A SEPARATE SERVICE. Request to create a new Bundle.",
      id = "GoogleCloudIntegrationsV1alphaCreateBundleRequest",
      properties = {
        bundleId = {
          description = "Required. name of the bundle that will be created",
          type = "string",
        },
        integrations = {
          description = "A list of integrations that can be executed by the bundle",
          items = {
            type = "string",
          },
          type = "array",
        },
        secondaryCustomerOrgId = {
          description = "Optional. The prefix for the SA, it should be in the format \"o\". This is an optional field, and if empty service account will be created per project, where we are creating bundle. This should only be used as the org ID for which we want to run the integrations in the bundle.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudIntegrationsV1alphaCreateBundleResponse = {
      description = "Response for create bundle.",
      id = "GoogleCloudIntegrationsV1alphaCreateBundleResponse",
      properties = {
        config = {
          ["$ref"] = "GoogleCloudIntegrationsV1alphaIntegrationBundleConfig",
          description = "It contains the bundle data",
        },
        triggerId = {
          description = "trigger_id of the bundle task",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudIntegrationsV1alphaCreateCloudFunctionRequest = {
      description = "Request for Creating Cloud Function rpc call.",
      id = "GoogleCloudIntegrationsV1alphaCreateCloudFunctionRequest",
      properties = {
        functionName = {
          description = "The function name of CF to be created",
          type = "string",
        },
        functionRegion = {
          description = "The function region of CF to be created",
          type = "string",
        },
        projectId = {
          description = "Indicates the id of the GCP project that the function will be created in.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudIntegrationsV1alphaCreateCloudFunctionResponse = {
      description = "Response for Creating Cloud Function rpc call.",
      id = "GoogleCloudIntegrationsV1alphaCreateCloudFunctionResponse",
      properties = {
        triggerUrl = {
          description = "The trigger url that will be returned",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudIntegrationsV1alphaCredential = {
      description = "Defines parameters for a single, canonical credential.",
      id = "GoogleCloudIntegrationsV1alphaCredential",
      properties = {
        authToken = {
          ["$ref"] = "GoogleCloudIntegrationsV1alphaAuthToken",
          description = "Auth token credential",
        },
        credentialType = {
          description = "Credential type associated with auth config.",
          enum = {
            "CREDENTIAL_TYPE_UNSPECIFIED",
            "USERNAME_AND_PASSWORD",
            "API_KEY",
            "OAUTH2_AUTHORIZATION_CODE",
            "OAUTH2_IMPLICIT",
            "OAUTH2_CLIENT_CREDENTIALS",
            "OAUTH2_RESOURCE_OWNER_CREDENTIALS",
            "JWT",
            "AUTH_TOKEN",
            "SERVICE_ACCOUNT",
            "CLIENT_CERTIFICATE_ONLY",
            "OIDC_TOKEN",
          },
          enumDescriptions = {
            "Unspecified credential type",
            "Regular username/password pair.",
            "API key.",
            "OAuth 2.0 Authorization Code Grant Type.",
            "OAuth 2.0 Implicit Grant Type.",
            "OAuth 2.0 Client Credentials Grant Type.",
            "OAuth 2.0 Resource Owner Credentials Grant Type.",
            "JWT Token.",
            "Auth Token, e.g. bearer token.",
            "Service Account which can be used to generate token for authentication.",
            "Client Certificate only.",
            "Google OIDC ID Token",
          },
          type = "string",
        },
        jwt = {
          ["$ref"] = "GoogleCloudIntegrationsV1alphaJwt",
          description = "JWT credential",
        },
        oauth2AuthorizationCode = {
          ["$ref"] = "GoogleCloudIntegrationsV1alphaOAuth2AuthorizationCode",
          description = "The api_key and oauth2_implicit are not covered in v1 and will be picked up once v1 is implemented. ApiKey api_key = 3; OAuth2 authorization code credential",
        },
        oauth2ClientCredentials = {
          ["$ref"] = "GoogleCloudIntegrationsV1alphaOAuth2ClientCredentials",
          description = "OAuth2Implicit oauth2_implicit = 5; OAuth2 client credentials",
        },
        oauth2ResourceOwnerCredentials = {
          ["$ref"] = "GoogleCloudIntegrationsV1alphaOAuth2ResourceOwnerCredentials",
          description = "OAuth2 resource owner credentials",
        },
        oidcToken = {
          ["$ref"] = "GoogleCloudIntegrationsV1alphaOidcToken",
          description = "Google OIDC ID Token",
        },
        serviceAccountCredentials = {
          ["$ref"] = "GoogleCloudIntegrationsV1alphaServiceAccountCredentials",
          description = "Service account credential",
        },
        usernameAndPassword = {
          ["$ref"] = "GoogleCloudIntegrationsV1alphaUsernameAndPassword",
          description = "Username and password credential",
        },
      },
      type = "object",
    },
    GoogleCloudIntegrationsV1alphaDeactivateIntegrationVersionRequest = {
      description = "Request for DeactivateIntegrationVersion.",
      id = "GoogleCloudIntegrationsV1alphaDeactivateIntegrationVersionRequest",
      properties = {},
      type = "object",
    },
    GoogleCloudIntegrationsV1alphaDeactivateIntegrationVersionResponse = {
      description = "Response for DeactivateIntegrationVersion.",
      id = "GoogleCloudIntegrationsV1alphaDeactivateIntegrationVersionResponse",
      properties = {},
      type = "object",
    },
    GoogleCloudIntegrationsV1alphaDeprovisionClientRequest = {
      description = "Request for the Deprovision rpc",
      id = "GoogleCloudIntegrationsV1alphaDeprovisionClientRequest",
      properties = {},
      type = "object",
    },
    GoogleCloudIntegrationsV1alphaDoubleParameterArray = {
      description = "This message only contains a field of double number array.",
      id = "GoogleCloudIntegrationsV1alphaDoubleParameterArray",
      properties = {
        doubleValues = {
          description = "Double number array.",
          items = {
            format = "double",
            type = "number",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudIntegrationsV1alphaDownloadExecutionResponse = {
      description = "Response for downloading an execution.",
      id = "GoogleCloudIntegrationsV1alphaDownloadExecutionResponse",
      properties = {
        content = {
          description = "The content of downloaded execution.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudIntegrationsV1alphaDownloadIntegrationVersionResponse = {
      description = "Response for DownloadIntegrationVersion.",
      id = "GoogleCloudIntegrationsV1alphaDownloadIntegrationVersionResponse",
      properties = {
        content = {
          description = "String representation of the integration version.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudIntegrationsV1alphaEnumerateConnectorPlatformRegionsResponse = {
      description = "Response containing all provisioned regions for Connector Platform.",
      id = "GoogleCloudIntegrationsV1alphaEnumerateConnectorPlatformRegionsResponse",
      properties = {
        regions = {
          description = "All regions where Connector Platform is provisioned.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudIntegrationsV1alphaEventParameter = {
      description = "This message is used for processing and persisting (when applicable) key value pair parameters for each event in the event bus.",
      id = "GoogleCloudIntegrationsV1alphaEventParameter",
      properties = {
        key = {
          description = "Key is used to retrieve the corresponding parameter value. This should be unique for a given fired event. These parameters must be predefined in the integration definition.",
          type = "string",
        },
        value = {
          ["$ref"] = "GoogleCloudIntegrationsV1alphaValueType",
          description = "Values for the defined keys. Each value can either be string, int, double or any proto message.",
        },
      },
      type = "object",
    },
    GoogleCloudIntegrationsV1alphaExecuteIntegrationsRequest = {
      description = "The request for executing an integration.",
      id = "GoogleCloudIntegrationsV1alphaExecuteIntegrationsRequest",
      properties = {
        doNotPropagateError = {
          description = "Optional. Flag to determine how to should propagate errors. If this flag is set to be true, it will not throw an exception. Instead, it will return a {@link ExecuteIntegrationsResponse} with an execution id and error messages as PostWithTriggerIdExecutionException in {@link EventParameters}. The flag is set to be false by default.",
          type = "boolean",
        },
        executionId = {
          description = "Optional. The id of the ON_HOLD execution to be resumed.",
          type = "string",
        },
        inputParameters = {
          additionalProperties = {
            ["$ref"] = "GoogleCloudIntegrationsV1alphaValueType",
          },
          description = "Optional. Input parameters used by integration execution.",
          type = "object",
        },
        parameterEntries = {
          description = "Optional. Parameters are a part of Event and can be used to communicate between different tasks that are part of the same integration execution.",
          items = {
            ["$ref"] = "EnterpriseCrmFrontendsEventbusProtoParameterEntry",
          },
          type = "array",
        },
        parameters = {
          ["$ref"] = "EnterpriseCrmFrontendsEventbusProtoEventParameters",
          description = "Optional. Passed in as parameters to each integration execution. Redacted",
        },
        requestId = {
          description = "Optional. This is used to de-dup incoming request: if the duplicate request was detected, the response from the previous execution is returned.",
          type = "string",
        },
        triggerId = {
          description = "Required. Matched against all {@link TriggerConfig}s across all integrations. i.e. TriggerConfig.trigger_id.equals(trigger_id). The trigger_id is in the format of `api_trigger/TRIGGER_NAME`.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudIntegrationsV1alphaExecuteIntegrationsResponse = {
      description = "The response for executing an integration.",
      id = "GoogleCloudIntegrationsV1alphaExecuteIntegrationsResponse",
      properties = {
        eventParameters = {
          ["$ref"] = "EnterpriseCrmFrontendsEventbusProtoEventParameters",
          description = "Details for the integration that were executed.",
        },
        executionFailed = {
          description = "Is true if any execution in the integration failed. False otherwise.",
          type = "boolean",
        },
        executionId = {
          description = "The id of the execution corresponding to this run of integration.",
          type = "string",
        },
        outputParameters = {
          additionalProperties = {
            description = "Properties of the object.",
            type = "any",
          },
          description = "OUTPUT parameters in format of Map. Where Key is the name of the parameter. Note: Name of the system generated parameters are wrapped by backtick(`) to distinguish them from the user defined parameters.",
          type = "object",
        },
        parameterEntries = {
          description = "Parameters are a part of Event and can be used to communicate between different tasks that are part of the same integration execution.",
          items = {
            ["$ref"] = "EnterpriseCrmFrontendsEventbusProtoParameterEntry",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudIntegrationsV1alphaExecution = {
      description = "The Execution resource contains detailed information of an individual integration execution.",
      id = "GoogleCloudIntegrationsV1alphaExecution",
      properties = {
        createTime = {
          description = "Output only. Created time of the execution.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        directSubExecutions = {
          description = "Direct sub executions of the following Execution.",
          items = {
            ["$ref"] = "GoogleCloudIntegrationsV1alphaExecution",
          },
          type = "array",
        },
        eventExecutionDetails = {
          ["$ref"] = "EnterpriseCrmEventbusProtoEventExecutionDetails",
          description = "The execution info about this event.",
        },
        executionDetails = {
          ["$ref"] = "GoogleCloudIntegrationsV1alphaExecutionDetails",
          description = "Detailed info of this execution.",
        },
        executionMethod = {
          description = "The ways user posts this event.",
          enum = {
            "EXECUTION_METHOD_UNSPECIFIED",
            "POST",
            "POST_TO_QUEUE",
            "SCHEDULE",
          },
          enumDescriptions = {
            "Default value.",
            "Sync post.",
            "Async post.",
            "Async post with schedule time.",
          },
          type = "string",
        },
        name = {
          description = "Auto-generated primary key.",
          type = "string",
        },
        requestParameters = {
          additionalProperties = {
            ["$ref"] = "GoogleCloudIntegrationsV1alphaValueType",
          },
          description = "Event parameters come in as part of the request.",
          type = "object",
        },
        requestParams = {
          description = "Event parameters come in as part of the request.",
          items = {
            ["$ref"] = "EnterpriseCrmFrontendsEventbusProtoParameterEntry",
          },
          type = "array",
        },
        responseParameters = {
          additionalProperties = {
            ["$ref"] = "GoogleCloudIntegrationsV1alphaValueType",
          },
          description = "Event parameters returned as part of the response.",
          type = "object",
        },
        responseParams = {
          description = "Event parameters come out as part of the response.",
          items = {
            ["$ref"] = "EnterpriseCrmFrontendsEventbusProtoParameterEntry",
          },
          type = "array",
        },
        triggerId = {
          description = "The trigger id of the integration trigger config. If both trigger_id and client_id is present, the integration is executed from the start tasks provided by the matching trigger config otherwise it is executed from the default start tasks.",
          type = "string",
        },
        updateTime = {
          description = "Output only. Last modified time of the execution.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudIntegrationsV1alphaExecutionDetails = {
      description = "Contains the details of the execution info: this includes the tasks execution details plus the event execution statistics.",
      id = "GoogleCloudIntegrationsV1alphaExecutionDetails",
      properties = {
        attemptStats = {
          description = "List of Start and end time of the execution attempts.",
          items = {
            ["$ref"] = "GoogleCloudIntegrationsV1alphaAttemptStats",
          },
          type = "array",
        },
        executionSnapshots = {
          description = "List of snapshots taken during the execution.",
          items = {
            ["$ref"] = "GoogleCloudIntegrationsV1alphaExecutionSnapshot",
          },
          type = "array",
        },
        state = {
          description = "Status of the execution.",
          enum = {
            "STATE_UNSPECIFIED",
            "PENDING",
            "PROCESSING",
            "SUCCEEDED",
            "FAILED",
            "CANCELLED",
            "RETRY_ON_HOLD",
            "SUSPENDED",
          },
          enumDescriptions = {
            "Default.",
            "Execution is scheduled and awaiting to be triggered.",
            "Execution is processing.",
            "Execution successfully finished. There's no more change after this state.",
            "Execution failed. There's no more change after this state.",
            "Execution canceled by user. There's no more change after this state.",
            "Execution failed and waiting for retry.",
            "Execution suspended and waiting for manual intervention.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudIntegrationsV1alphaExecutionSnapshot = {
      description = "Contains the snapshot of the execution for a given checkpoint.",
      id = "GoogleCloudIntegrationsV1alphaExecutionSnapshot",
      properties = {
        checkpointTaskNumber = {
          description = "Indicates \"after which checkpoint task's execution\" this snapshot is taken.",
          type = "string",
        },
        executionSnapshotMetadata = {
          ["$ref"] = "GoogleCloudIntegrationsV1alphaExecutionSnapshotExecutionSnapshotMetadata",
          description = "Metadata of the execution snapshot.",
        },
        params = {
          additionalProperties = {
            ["$ref"] = "GoogleCloudIntegrationsV1alphaValueType",
          },
          description = "Parameters used during the execution.",
          type = "object",
        },
        taskExecutionDetails = {
          description = "All of the task execution details at the given point of time.",
          items = {
            ["$ref"] = "GoogleCloudIntegrationsV1alphaTaskExecutionDetails",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudIntegrationsV1alphaExecutionSnapshotExecutionSnapshotMetadata = {
      description = "Metadata of the execution snapshot.",
      id = "GoogleCloudIntegrationsV1alphaExecutionSnapshotExecutionSnapshotMetadata",
      properties = {
        executionAttempt = {
          description = "the execution attempt number this snapshot belongs to.",
          format = "int32",
          type = "integer",
        },
        task = {
          description = "the task name associated with this snapshot.",
          type = "string",
        },
        taskAttempt = {
          description = "the task attempt number this snapshot belongs to.",
          format = "int32",
          type = "integer",
        },
        taskNumber = {
          description = "The task number associated with this snapshot.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudIntegrationsV1alphaFailurePolicy = {
      description = "Policy that defines the task retry logic and failure type. If no FailurePolicy is defined for a task, all its dependent tasks will not be executed (i.e, a `retry_strategy` of NONE will be applied).",
      id = "GoogleCloudIntegrationsV1alphaFailurePolicy",
      properties = {
        intervalTime = {
          description = "Required if retry_strategy is FIXED_INTERVAL or LINEAR/EXPONENTIAL_BACKOFF/RESTART_INTEGRATION_WITH_BACKOFF. Defines the initial interval in seconds for backoff.",
          format = "google-datetime",
          type = "string",
        },
        maxRetries = {
          description = "Required if retry_strategy is FIXED_INTERVAL or LINEAR/EXPONENTIAL_BACKOFF/RESTART_INTEGRATION_WITH_BACKOFF. Defines the number of times the task will be retried if failed.",
          format = "int32",
          type = "integer",
        },
        retryStrategy = {
          description = "Defines what happens to the task upon failure.",
          enum = {
            "RETRY_STRATEGY_UNSPECIFIED",
            "IGNORE",
            "NONE",
            "FATAL",
            "FIXED_INTERVAL",
            "LINEAR_BACKOFF",
            "EXPONENTIAL_BACKOFF",
            "RESTART_INTEGRATION_WITH_BACKOFF",
          },
          enumDescriptions = {
            "UNSPECIFIED.",
            "Ignores the failure of this task. The rest of the integration will be executed Assuming this task succeeded.",
            "Causes a permanent failure of the task. However, if the last task(s) of event was successfully completed despite the failure of this task, it has no impact on the integration.",
            "Causes a permanent failure of the event. It is different from NONE because this will mark the event as FAILED by shutting down the event execution.",
            "The task will be retried from the failed task onwards after a fixed delay. A max-retry count is required to be specified with this strategy. A jitter is added to each exponential interval so that concurrently failing tasks of the same type do not end up retrying after the exact same exponential interval. max_retries and interval_in_seconds must be specified.",
            "The task will be retried from the failed task onwards after a fixed delay that linearly increases with each retry attempt. A jitter is added to each exponential interval so that concurrently failing tasks of the same type do not end up retrying after the exact same exponential interval. A max-retry count is required to be specified with this strategy. max_retries and interval_in_seconds must be specified.",
            "The task will be retried after an exponentially increasing period of time with each failure. A jitter is added to each exponential interval so that concurrently failing tasks of the same type do not end up retrying after the exact same exponential interval. A max-retry count is required to be specified with this strategy. `max_retries` and `interval_in_seconds` must be specified.",
            "The entire integration will be restarted with the initial parameters that were set when the event was fired. A max-retry count is required to be specified with this strategy. `max_retries` and `interval_in_seconds` must be specified.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudIntegrationsV1alphaGenerateTokenResponse = {
      description = "Returns success or error message",
      id = "GoogleCloudIntegrationsV1alphaGenerateTokenResponse",
      properties = {
        message = {
          description = "The message that notifies the user if the request succeeded or not.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudIntegrationsV1alphaGetBundleResponse = {
      description = "Response for GetBundle.",
      id = "GoogleCloudIntegrationsV1alphaGetBundleResponse",
      properties = {
        config = {
          ["$ref"] = "GoogleCloudIntegrationsV1alphaIntegrationBundleConfig",
          description = "It contains the bundle data",
        },
      },
      type = "object",
    },
    GoogleCloudIntegrationsV1alphaGetClientMetadataResponse = {
      description = "Response for the GetClientMetadata rpc",
      id = "GoogleCloudIntegrationsV1alphaGetClientMetadataResponse",
      properties = {
        properties = {
          ["$ref"] = "GoogleCloudIntegrationsV1alphaProjectProperties",
          description = "Required. Required: The client configuration that was requested",
        },
      },
      type = "object",
    },
    GoogleCloudIntegrationsV1alphaGetClientResponse = {
      description = "Response for the GetClient rpc",
      id = "GoogleCloudIntegrationsV1alphaGetClientResponse",
      properties = {
        client = {
          ["$ref"] = "GoogleCloudIntegrationsV1alphaClientConfig",
          description = "Required. Required: The client configuration that was requested",
        },
      },
      type = "object",
    },
    GoogleCloudIntegrationsV1alphaIntParameterArray = {
      description = "This message only contains a field of integer array.",
      id = "GoogleCloudIntegrationsV1alphaIntParameterArray",
      properties = {
        intValues = {
          description = "Integer array.",
          items = {
            format = "int64",
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudIntegrationsV1alphaIntegration = {
      description = "The integration definition.",
      id = "GoogleCloudIntegrationsV1alphaIntegration",
      properties = {
        active = {
          description = "Required. If any integration version is published.",
          type = "boolean",
        },
        description = {
          description = "Optional.",
          type = "string",
        },
        name = {
          description = "Required. The resource name of the integration.",
          type = "string",
        },
        updateTime = {
          description = "Output only. Auto-generated.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudIntegrationsV1alphaIntegrationAlertConfig = {
      description = "Message to be used to configure custom alerting in the {@code EventConfig} protos for an event.",
      id = "GoogleCloudIntegrationsV1alphaIntegrationAlertConfig",
      properties = {
        aggregationPeriod = {
          description = "The period over which the metric value should be aggregated and evaluated. Format is , where integer should be a positive integer and unit should be one of (s,m,h,d,w) meaning (second, minute, hour, day, week). For an EXPECTED_MIN threshold, this aggregation_period must be lesser than 24 hours.",
          type = "string",
        },
        alertThreshold = {
          description = "For how many contiguous aggregation periods should the expected min or max be violated for the alert to be fired.",
          format = "int32",
          type = "integer",
        },
        disableAlert = {
          description = "Set to false by default. When set to true, the metrics are not aggregated or pushed to Monarch for this integration alert.",
          type = "boolean",
        },
        displayName = {
          description = "Name of the alert. This will be displayed in the alert subject. If set, this name should be unique within the scope of the integration.",
          type = "string",
        },
        durationThreshold = {
          description = "Should be specified only for *AVERAGE_DURATION and *PERCENTILE_DURATION metrics. This member should be used to specify what duration value the metrics should exceed for the alert to trigger.",
          format = "google-duration",
          type = "string",
        },
        metricType = {
          description = "The type of metric.",
          enum = {
            "METRIC_TYPE_UNSPECIFIED",
            "EVENT_ERROR_RATE",
            "EVENT_WARNING_RATE",
            "TASK_ERROR_RATE",
            "TASK_WARNING_RATE",
            "TASK_RATE",
            "EVENT_RATE",
            "EVENT_AVERAGE_DURATION",
            "EVENT_PERCENTILE_DURATION",
            "TASK_AVERAGE_DURATION",
            "TASK_PERCENTILE_DURATION",
          },
          enumDescriptions = {
            "The default value. Metric type should always be set to one of the other non-default values, otherwise it will result in an INVALID_ARGUMENT error.",
            "Specifies alerting on the rate of errors for the enclosing integration.",
            "Specifies alerting on the rate of warnings for the enclosing integration. Warnings use the same enum values as errors.",
            "Specifies alerting on the rate of errors for any task in the enclosing integration.",
            "Specifies alerting on the rate of warnings for any task in the enclosing integration.",
            "Specifies alerting on the rate of executions over all tasks in the enclosing integration.",
            "Specifies alerting on the number of events executed in the given aggregation_period.",
            "Specifies alerting on the average duration of executions for this integration.",
            "Specifies alerting on the duration value of a particular percentile of integration executions. E.g. If 10% or more of the integration executions have durations above 5 seconds, alert.",
            "Specifies alerting on the average duration of any task in the enclosing integration,",
            "Specifies alerting on the duration value of a particular percentile of any task executions within the enclosing integration. E.g. If 10% or more of the task executions in the integration have durations above 5 seconds, alert.",
          },
          type = "string",
        },
        onlyFinalAttempt = {
          description = "For either events or tasks, depending on the type of alert, count only final attempts, not retries.",
          type = "boolean",
        },
        thresholdType = {
          description = "The threshold type, whether lower(expected_min) or upper(expected_max), for which this alert is being configured. If value falls below expected_min or exceeds expected_max, an alert will be fired.",
          enum = {
            "THRESHOLD_TYPE_UNSPECIFIED",
            "EXPECTED_MIN",
            "EXPECTED_MAX",
          },
          enumDescriptions = {
            "Default.",
            "Note that this field will only trigger alerts if the integration specifying it runs at least once in 24 hours (which is our in-memory retention period for monarch streams). Also note that `aggregation_period` for this alert configuration must be less than 24 hours. Min value threshold.",
            "Max value threshold.",
          },
          type = "string",
        },
        thresholdValue = {
          ["$ref"] = "GoogleCloudIntegrationsV1alphaIntegrationAlertConfigThresholdValue",
          description = "The metric value, above or below which the alert should be triggered.",
        },
      },
      type = "object",
    },
    GoogleCloudIntegrationsV1alphaIntegrationAlertConfigThresholdValue = {
      description = "The threshold value of the metric, above or below which the alert should be triggered. See EventAlertConfig or TaskAlertConfig for the different alert metric types in each case. For the *RATE metrics, one or both of these fields may be set. Zero is the default value and can be left at that. For *PERCENTILE_DURATION metrics, one or both of these fields may be set, and also, the duration threshold value should be specified in the threshold_duration_ms member below. For *AVERAGE_DURATION metrics, these fields should not be set at all. A different member, threshold_duration_ms, must be set in the EventAlertConfig or the TaskAlertConfig.",
      id = "GoogleCloudIntegrationsV1alphaIntegrationAlertConfigThresholdValue",
      properties = {
        absolute = {
          description = "Absolute value threshold.",
          format = "int64",
          type = "string",
        },
        percentage = {
          description = "Percentage threshold.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    GoogleCloudIntegrationsV1alphaIntegrationBundleConfig = {
      description = "This proto holds the core runner data in the bundle task. It is not expected to be directly edited by the user. Instead, a default value will be provided at the task creation time.",
      id = "GoogleCloudIntegrationsV1alphaIntegrationBundleConfig",
      properties = {
        integrations = {
          description = "A bundle of integrations that can be executed by the task at runtime.",
          items = {
            type = "string",
          },
          type = "array",
        },
        serviceAccount = {
          description = "Output only. The service account created and owned by IP and added to the customers GCP project.",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudIntegrationsV1alphaIntegrationParameter = {
      description = "Integration Parameter is defined in the integration config and are used to provide information about data types of the expected parameters and provide any default values if needed. They can also be used to add custom attributes. These are static in nature and should not be used for dynamic event definition.",
      id = "GoogleCloudIntegrationsV1alphaIntegrationParameter",
      properties = {
        dataType = {
          description = "Type of the parameter.",
          enum = {
            "INTEGRATION_PARAMETER_DATA_TYPE_UNSPECIFIED",
            "STRING_VALUE",
            "INT_VALUE",
            "DOUBLE_VALUE",
            "BOOLEAN_VALUE",
            "STRING_ARRAY",
            "INT_ARRAY",
            "DOUBLE_ARRAY",
            "BOOLEAN_ARRAY",
            "JSON_VALUE",
            "PROTO_VALUE",
            "PROTO_ARRAY",
          },
          enumDescriptions = {
            "Unspecified.",
            "String.",
            "Integer.",
            "Double Number.",
            "Boolean.",
            "String Array.",
            "Integer Array.",
            "Double Number Array.",
            "Boolean Array.",
            "Json.",
            "Proto Value (Internal use only).",
            "Proto Array (Internal use only).",
          },
          type = "string",
        },
        defaultValue = {
          ["$ref"] = "GoogleCloudIntegrationsV1alphaValueType",
          description = "Default values for the defined keys. Each value can either be string, int, double or any proto message or a serialized object.",
        },
        displayName = {
          description = "The name (without prefix) to be displayed in the UI for this parameter. E.g. if the key is \"foo.bar.myName\", then the name would be \"myName\".",
          type = "string",
        },
        inputOutputType = {
          description = "Specifies the input/output type for the parameter.",
          enum = {
            "IN_OUT_TYPE_UNSPECIFIED",
            "IN",
            "OUT",
            "IN_OUT",
          },
          enumDescriptions = {
            "Default.",
            "Input parameters for the integration. EventBus validates that these parameters exist in the integrations before execution.",
            "Output Parameters for the integration. EventBus will only return the integration parameters tagged with OUT in the response back.",
            "Input and Output Parameters. These can be used as both input and output. EventBus will validate for the existence of these parameters before execution and will also return this parameter back in the response.",
          },
          type = "string",
        },
        isTransient = {
          description = "Whether this parameter is a transient parameter.",
          type = "boolean",
        },
        jsonSchema = {
          description = "This schema will be used to validate runtime JSON-typed values of this parameter.",
          type = "string",
        },
        key = {
          description = "Key is used to retrieve the corresponding parameter value. This should be unique for a given fired event. These parameters must be predefined in the integration definition.",
          type = "string",
        },
        producer = {
          description = "The identifier of the node (TaskConfig/TriggerConfig) this parameter was produced by, if it is a transient param or a copy of an input param.",
          type = "string",
        },
        searchable = {
          description = "Searchable in the execution log or not.",
          type = "boolean",
        },
      },
      type = "object",
    },
    GoogleCloudIntegrationsV1alphaIntegrationVersion = {
      description = "The integration version definition.",
      id = "GoogleCloudIntegrationsV1alphaIntegrationVersion",
      properties = {
        createTime = {
          description = "Output only. Auto-generated.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        databasePersistencePolicy = {
          description = "Optional. Flag to disable database persistence for execution data, including event execution info, execution export info, execution metadata index and execution param index.",
          enum = {
            "DATABASE_PERSISTENCE_POLICY_UNSPECIFIED",
            "DATABASE_PERSISTENCE_DISABLED",
          },
          enumDescriptions = {
            "Enables persistence for all execution data.",
            "Disables persistence for all execution data.",
          },
          type = "string",
        },
        description = {
          description = "Optional. The integration description.",
          type = "string",
        },
        integrationParameters = {
          description = "Optional. Parameters that are expected to be passed to the integration when an event is triggered. This consists of all the parameters that are expected in the integration execution. This gives the user the ability to provide default values, add information like PII and also provide data types of each parameter.",
          items = {
            ["$ref"] = "GoogleCloudIntegrationsV1alphaIntegrationParameter",
          },
          type = "array",
        },
        integrationParametersInternal = {
          ["$ref"] = "EnterpriseCrmFrontendsEventbusProtoWorkflowParameters",
          description = "Optional. Parameters that are expected to be passed to the integration when an event is triggered. This consists of all the parameters that are expected in the integration execution. This gives the user the ability to provide default values, add information like PII and also provide data types of each parameter.",
        },
        lastModifierEmail = {
          description = "Optional. The last modifier's email address. Generated based on the End User Credentials/LOAS role of the user making the call.",
          type = "string",
        },
        lockHolder = {
          description = "Optional. The edit lock holder's email address. Generated based on the End User Credentials/LOAS role of the user making the call.",
          type = "string",
        },
        name = {
          description = "Output only. Auto-generated primary key.",
          readOnly = true,
          type = "string",
        },
        origin = {
          description = "Optional. The origin that indicates where this integration is coming from.",
          enum = {
            "UNSPECIFIED",
            "UI",
            "PIPER_V2",
            "PIPER_V3",
            "APPLICATION_IP_PROVISIONING",
          },
          enumDescriptions = {
            "",
            "Workflow is being created via event bus UI.",
            "User checked in this workflow in Piper as v2 textproto format and we synced it into spanner.",
            "User checked in this workflow in piper as v3 textproto format and we synced it into spanner.",
            "Workflow is being created via Standalone IP Provisioning",
          },
          type = "string",
        },
        parentTemplateId = {
          description = "Optional. The id of the template which was used to create this integration_version.",
          type = "string",
        },
        snapshotNumber = {
          description = "Optional. An increasing sequence that is set when a new snapshot is created. The last created snapshot can be identified by [workflow_name, org_id latest(snapshot_number)]. However, last created snapshot need not be same as the HEAD. So users should always use \"HEAD\" tag to identify the head.",
          format = "int64",
          type = "string",
        },
        state = {
          description = "Output only. User should not set it as an input.",
          enum = {
            "INTEGRATION_STATE_UNSPECIFIED",
            "DRAFT",
            "ACTIVE",
            "ARCHIVED",
            "SNAPSHOT",
          },
          enumDescriptions = {
            "Default.",
            "Draft.",
            "Active.",
            "Archived.",
            "Snapshot.",
          },
          readOnly = true,
          type = "string",
        },
        status = {
          description = "Output only. Generated by eventbus. User should not set it as an input.",
          enum = {
            "UNKNOWN",
            "DRAFT",
            "ACTIVE",
            "ARCHIVED",
            "SNAPSHOT",
          },
          enumDescriptions = {
            "",
            "",
            "",
            "",
            "",
          },
          readOnly = true,
          type = "string",
        },
        taskConfigs = {
          description = "Optional. Task configuration for the integration. It's optional, but the integration doesn't do anything without task_configs.",
          items = {
            ["$ref"] = "GoogleCloudIntegrationsV1alphaTaskConfig",
          },
          type = "array",
        },
        taskConfigsInternal = {
          description = "Optional. Task configuration for the integration. It's optional, but the integration doesn't do anything without task_configs.",
          items = {
            ["$ref"] = "EnterpriseCrmFrontendsEventbusProtoTaskConfig",
          },
          type = "array",
        },
        teardown = {
          ["$ref"] = "EnterpriseCrmEventbusProtoTeardown",
          description = "Optional. Contains a graph of tasks that will be executed before putting the event in a terminal state (SUCCEEDED/FAILED/FATAL), regardless of success or failure, similar to \"finally\" in code.",
        },
        triggerConfigs = {
          description = "Optional. Trigger configurations.",
          items = {
            ["$ref"] = "GoogleCloudIntegrationsV1alphaTriggerConfig",
          },
          type = "array",
        },
        triggerConfigsInternal = {
          description = "Optional. Trigger configurations.",
          items = {
            ["$ref"] = "EnterpriseCrmFrontendsEventbusProtoTriggerConfig",
          },
          type = "array",
        },
        updateTime = {
          description = "Output only. Auto-generated.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        userLabel = {
          description = "Optional. A user-defined label that annotates an integration version. Typically, this is only set when the integration version is created.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudIntegrationsV1alphaJwt = {
      description = "Represents JSON web token(JWT), which is a compact, URL-safe means of representing claims to be transferred between two parties, enabling the claims to be digitally signed or integrity protected.",
      id = "GoogleCloudIntegrationsV1alphaJwt",
      properties = {
        jwt = {
          description = "The token calculated by the header, payload and signature.",
          type = "string",
        },
        jwtHeader = {
          description = "Identifies which algorithm is used to generate the signature.",
          type = "string",
        },
        jwtPayload = {
          description = "Contains a set of claims. The JWT specification defines seven Registered Claim Names which are the standard fields commonly included in tokens. Custom claims are usually also included, depending on the purpose of the token.",
          type = "string",
        },
        secret = {
          description = "User's pre-shared secret to sign the token.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudIntegrationsV1alphaLiftSuspensionRequest = {
      description = "Request for lift Suspension",
      id = "GoogleCloudIntegrationsV1alphaLiftSuspensionRequest",
      properties = {
        suspensionResult = {
          description = "User passed in suspension result and will be used to control workflow execution branching behavior by setting up corresponnding edge condition with suspension result. For example, if you want to lift the suspension, you can pass \"Approved\", or if you want to reject the suspension and terminate workfloe execution, you can pass \"Rejected\" and terminate the workflow execution with configuring the edge condition.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudIntegrationsV1alphaLiftSuspensionResponse = {
      description = "Response of lift Suspense",
      id = "GoogleCloudIntegrationsV1alphaLiftSuspensionResponse",
      properties = {
        eventExecutionInfoId = {
          description = "Execution Id that will be returned",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudIntegrationsV1alphaLinkAppsScriptProjectRequest = {
      description = "Request for LinkAppsScriptProject rpc call.",
      id = "GoogleCloudIntegrationsV1alphaLinkAppsScriptProjectRequest",
      properties = {
        scriptId = {
          description = "The id of the Apps Script project to be linked.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudIntegrationsV1alphaLinkAppsScriptProjectResponse = {
      description = "Response for LinkAppsScriptProject rpc call.",
      id = "GoogleCloudIntegrationsV1alphaLinkAppsScriptProjectResponse",
      properties = {
        scriptId = {
          description = "The id of the linked Apps Script project.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudIntegrationsV1alphaListAuthConfigsResponse = {
      description = "Response to list AuthConfigs.",
      id = "GoogleCloudIntegrationsV1alphaListAuthConfigsResponse",
      properties = {
        authConfigs = {
          description = "The list of AuthConfigs retrieved.",
          items = {
            ["$ref"] = "GoogleCloudIntegrationsV1alphaAuthConfig",
          },
          type = "array",
        },
        nextPageToken = {
          description = "The token used to retrieve the next page of results.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudIntegrationsV1alphaListCertificatesResponse = {
      description = "Response to list Certificates.",
      id = "GoogleCloudIntegrationsV1alphaListCertificatesResponse",
      properties = {
        certificates = {
          description = "The list of Certificates retrieved.",
          items = {
            ["$ref"] = "GoogleCloudIntegrationsV1alphaCertificate",
          },
          type = "array",
        },
        nextPageToken = {
          description = "The token used to retrieve the next page of results.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudIntegrationsV1alphaListConnectionsResponse = {
      description = "Response containing Connections listed by region.",
      id = "GoogleCloudIntegrationsV1alphaListConnectionsResponse",
      properties = {
        connections = {
          description = "Connections.",
          items = {
            ["$ref"] = "GoogleCloudConnectorsV1Connection",
          },
          type = "array",
        },
        nextPageToken = {
          description = "Next page token.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudIntegrationsV1alphaListExecutionSnapshotsResponse = {
      description = "Response for listing the integration execution snapshot.",
      id = "GoogleCloudIntegrationsV1alphaListExecutionSnapshotsResponse",
      properties = {
        executionSnapshots = {
          description = "Required. The detailed information for the execution snapshot.",
          items = {
            ["$ref"] = "EnterpriseCrmEventbusProtoEventExecutionSnapshot",
          },
          type = "array",
        },
        nextPageToken = {
          description = "The token returned in the previous response.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudIntegrationsV1alphaListExecutionsResponse = {
      description = "Response for listing the integration execution data.",
      id = "GoogleCloudIntegrationsV1alphaListExecutionsResponse",
      properties = {
        executionInfos = {
          description = "Required. The detailed information of requested executions.",
          items = {
            ["$ref"] = "EnterpriseCrmFrontendsEventbusProtoEventExecutionInfo",
          },
          type = "array",
        },
        executions = {
          description = "The detailed information of requested executions",
          items = {
            ["$ref"] = "GoogleCloudIntegrationsV1alphaExecution",
          },
          type = "array",
        },
        nextPageToken = {
          description = "The token used to retrieve the next page results.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudIntegrationsV1alphaListIntegrationVersionsResponse = {
      description = "Response for ListIntegrationVersions.",
      id = "GoogleCloudIntegrationsV1alphaListIntegrationVersionsResponse",
      properties = {
        integrationVersions = {
          description = "The integrations which match the request.",
          items = {
            ["$ref"] = "GoogleCloudIntegrationsV1alphaIntegrationVersion",
          },
          type = "array",
        },
        nextPageToken = {
          description = "A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, there are no subsequent pages.",
          type = "string",
        },
        noPermission = {
          description = "Whether the user has no permission on the version or not.",
          type = "boolean",
        },
      },
      type = "object",
    },
    GoogleCloudIntegrationsV1alphaListIntegrationsResponse = {
      description = "Response for ListIntegrations.",
      id = "GoogleCloudIntegrationsV1alphaListIntegrationsResponse",
      properties = {
        integrations = {
          description = "The integrations which match the request.",
          items = {
            ["$ref"] = "GoogleCloudIntegrationsV1alphaIntegration",
          },
          type = "array",
        },
        nextPageToken = {
          description = "The next page token for the response.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudIntegrationsV1alphaListRuntimeActionSchemasResponse = {
      description = "Response for listing RuntimeActionSchemas for a specific Connection.",
      id = "GoogleCloudIntegrationsV1alphaListRuntimeActionSchemasResponse",
      properties = {
        nextPageToken = {
          description = "Next page token.",
          type = "string",
        },
        runtimeActionSchemas = {
          description = "Runtime action schemas.",
          items = {
            ["$ref"] = "GoogleCloudIntegrationsV1alphaRuntimeActionSchema",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudIntegrationsV1alphaListRuntimeEntitySchemasResponse = {
      description = "Response for listing RuntimeEntitySchemas for a specific Connection.",
      id = "GoogleCloudIntegrationsV1alphaListRuntimeEntitySchemasResponse",
      properties = {
        nextPageToken = {
          description = "Next page token.",
          type = "string",
        },
        runtimeEntitySchemas = {
          description = "Runtime entity schemas.",
          items = {
            ["$ref"] = "GoogleCloudIntegrationsV1alphaRuntimeEntitySchema",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudIntegrationsV1alphaListSfdcChannelsResponse = {
      description = "Response to list SfdcChannels.",
      id = "GoogleCloudIntegrationsV1alphaListSfdcChannelsResponse",
      properties = {
        nextPageToken = {
          description = "The token used to retrieve the next page of results.",
          type = "string",
        },
        sfdcChannels = {
          description = "The list of SfdcChannels retrieved.",
          items = {
            ["$ref"] = "GoogleCloudIntegrationsV1alphaSfdcChannel",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudIntegrationsV1alphaListSfdcInstancesResponse = {
      description = "Response to list SfdcInstances.",
      id = "GoogleCloudIntegrationsV1alphaListSfdcInstancesResponse",
      properties = {
        nextPageToken = {
          description = "The token used to retrieve the next page of results.",
          type = "string",
        },
        sfdcInstances = {
          description = "The list of SfdcInstances retrieved.",
          items = {
            ["$ref"] = "GoogleCloudIntegrationsV1alphaSfdcInstance",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudIntegrationsV1alphaListSuspensionsResponse = {
      description = "Response for Suspensions.ListSuspensions.",
      id = "GoogleCloudIntegrationsV1alphaListSuspensionsResponse",
      properties = {
        nextPageToken = {
          description = "Token to retrieve the next page of results.",
          type = "string",
        },
        suspensions = {
          description = "The suspensions for the relevant execution which the caller has permissions to view and resolve.",
          items = {
            ["$ref"] = "GoogleCloudIntegrationsV1alphaSuspension",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudIntegrationsV1alphaListTaskEntitiesResponse = {
      description = "This is a UI only method and will be moved away. Response for ListTaskEntities.",
      id = "GoogleCloudIntegrationsV1alphaListTaskEntitiesResponse",
      properties = {
        taskEntities = {
          description = "The list of the tasks.",
          items = {
            ["$ref"] = "EnterpriseCrmFrontendsEventbusProtoTaskEntity",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudIntegrationsV1alphaMonitorExecutionStatsRequestGroupBy = {
      description = "MashQuery GroupBy parameters.",
      id = "GoogleCloudIntegrationsV1alphaMonitorExecutionStatsRequestGroupBy",
      properties = {
        fields = {
          description = "Optional. optional, metrics list for GroupBy.",
          items = {
            type = "string",
          },
          type = "array",
        },
        reducer = {
          description = "Optional. optional, reduce function for GroupBy.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudIntegrationsV1alphaMonitorExecutionStatsRequestMashQuery = {
      description = "The MashQuery for searching data, set both queries for Join Operation.",
      id = "GoogleCloudIntegrationsV1alphaMonitorExecutionStatsRequestMashQuery",
      properties = {
        firstQuery = {
          ["$ref"] = "GoogleCloudIntegrationsV1alphaMonitorExecutionStatsRequestMashQueryComponent",
          description = "Required. The components for constructing a mash query. Set \"point_operation\" if this is a single query",
        },
        operationMode = {
          ["$ref"] = "GoogleCloudIntegrationsV1alphaMonitorExecutionStatsRequestMashQueryOperationMode",
          description = "Optional. optional, only set when joining 2 queries. By default join 2 queries with join operation.",
        },
        secondQuery = {
          ["$ref"] = "GoogleCloudIntegrationsV1alphaMonitorExecutionStatsRequestMashQueryComponent",
          description = "Optional. optional, only set when joining 2 queries. Set \"point_operation\" for joined query.",
        },
      },
      type = "object",
    },
    GoogleCloudIntegrationsV1alphaMonitorExecutionStatsRequestMashQueryComponent = {
      description = "The components for constructing MashQuery.",
      id = "GoogleCloudIntegrationsV1alphaMonitorExecutionStatsRequestMashQueryComponent",
      properties = {
        borgTaskMetric = {
          description = "Required. The metric for monarch.BorgTask.",
          enum = {
            "BORG_TASK_METRIC_UNSPECIFIED",
            "TASK_INDIVIDUAL_COUNT",
            "EVENT_COUNT",
            "EVENT_DURATION",
            "TASK_INDIVIDUAL_DURATION",
          },
          enumDescriptions = {
            "Unknown metric",
            "Metric end with: \"/task/individual_count\".",
            "Metric end with: \"/event/count\".",
            "Metric end with: \"/event/duration\".",
            "Metric end with: \"/task/individual_duration\".",
          },
          type = "string",
        },
        dataFilters = {
          description = "Optional. optional, filters on fetched data, \"metric:client_id\" not supported.",
          items = {
            type = "string",
          },
          type = "array",
        },
        fetchFilters = {
          description = "Optional. optional, filters for Fetch Raw, \"metric:client_id\" not supported.",
          items = {
            type = "string",
          },
          type = "array",
        },
        groupBy = {
          ["$ref"] = "GoogleCloudIntegrationsV1alphaMonitorExecutionStatsRequestGroupBy",
          description = "Optional. optional, GroupBy variables.",
        },
        pointOperation = {
          description = "Optional. optional, Point Operation on single query or joined query.",
          type = "string",
        },
        timeDelta = {
          description = "Required. Window time delta.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudIntegrationsV1alphaMonitorExecutionStatsRequestMashQueryOperationMode = {
      description = "Operation between 2 query",
      id = "GoogleCloudIntegrationsV1alphaMonitorExecutionStatsRequestMashQueryOperationMode",
      properties = {
        joinConfig = {
          ["$ref"] = "GoogleCloudIntegrationsV1alphaMonitorExecutionStatsRequestMashQueryOperationModeJoinConfig",
          description = "Optional. join operation",
        },
        operationType = {
          description = "Optional. optional operation types.",
          enum = {
            "OPERATION_TYPE_UNSPECIFIED",
            "UNION",
            "JOIN",
          },
          enumDescriptions = {
            "By default join.",
            "Union operation",
            "Join Operation",
          },
          type = "string",
        },
        unionConfig = {
          ["$ref"] = "GoogleCloudIntegrationsV1alphaMonitorExecutionStatsRequestMashQueryOperationModeUnionConfig",
          description = "Optional. union operation",
        },
      },
      type = "object",
    },
    GoogleCloudIntegrationsV1alphaMonitorExecutionStatsRequestMashQueryOperationModeJoinConfig = {
      description = "Join Operation",
      id = "GoogleCloudIntegrationsV1alphaMonitorExecutionStatsRequestMashQueryOperationModeJoinConfig",
      properties = {},
      type = "object",
    },
    GoogleCloudIntegrationsV1alphaMonitorExecutionStatsRequestMashQueryOperationModeUnionConfig = {
      description = "Union operation",
      id = "GoogleCloudIntegrationsV1alphaMonitorExecutionStatsRequestMashQueryOperationModeUnionConfig",
      properties = {
        reducer = {
          description = "Optional. optional, reduce function",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudIntegrationsV1alphaNextTask = {
      description = "The task that is next in line to be executed, if the condition specified evaluated to true.",
      id = "GoogleCloudIntegrationsV1alphaNextTask",
      properties = {
        condition = {
          description = "Standard filter expression for this task to become an eligible next task.",
          type = "string",
        },
        description = {
          description = "User-provided description intended to give additional business context about the task.",
          type = "string",
        },
        displayName = {
          description = "User-provided label that is attached to this edge in the UI.",
          type = "string",
        },
        taskConfigId = {
          description = "ID of the next task.",
          type = "string",
        },
        taskId = {
          description = "Task number of the next task.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudIntegrationsV1alphaOAuth2AuthorizationCode = {
      description = "The OAuth Type where the client sends request with the client id and requested scopes to auth endpoint. User sees a consent screen and auth code is received at specified redirect url afterwards. The auth code is then combined with the client id and secret and sent to the token endpoint in exchange for the access and refresh token. The refresh token can be used to fetch new access tokens.",
      id = "GoogleCloudIntegrationsV1alphaOAuth2AuthorizationCode",
      properties = {
        accessToken = {
          ["$ref"] = "GoogleCloudIntegrationsV1alphaAccessToken",
          description = "The access token received from the token endpoint.",
        },
        applyReauthPolicy = {
          description = "Indicates if the user has opted in Google Reauth Policy. If opted in, the refresh token will be valid for 20 hours, after which time users must re-authenticate in order to obtain a new one.",
          type = "boolean",
        },
        authCode = {
          description = "The Auth Code that is used to initially retrieve the access token.",
          type = "string",
        },
        authEndpoint = {
          description = "The auth url endpoint to send the auth code request to.",
          type = "string",
        },
        authParams = {
          ["$ref"] = "GoogleCloudIntegrationsV1alphaParameterMap",
          description = "The auth parameters sent along with the auth code request.",
        },
        clientId = {
          description = "The client's id.",
          type = "string",
        },
        clientSecret = {
          description = "The client's secret.",
          type = "string",
        },
        requestType = {
          description = "Represent how to pass parameters to fetch access token",
          enum = {
            "REQUEST_TYPE_UNSPECIFIED",
            "REQUEST_BODY",
            "QUERY_PARAMETERS",
            "ENCODED_HEADER",
          },
          enumDescriptions = {
            "Unspecified request type",
            "To pass all the parameters in post body.",
            "To pass all the parameters as a part of query parameter.",
            "To pass client id and client secret as base 64 encoding of client_id:client_password and rest parameters in post body.",
          },
          type = "string",
        },
        scope = {
          description = "A space-delimited list of requested scope permissions.",
          type = "string",
        },
        tokenEndpoint = {
          description = "The token url endpoint to send the token request to.",
          type = "string",
        },
        tokenParams = {
          ["$ref"] = "GoogleCloudIntegrationsV1alphaParameterMap",
          description = "The token parameters sent along with the token request.",
        },
      },
      type = "object",
    },
    GoogleCloudIntegrationsV1alphaOAuth2ClientCredentials = {
      description = "For client credentials grant, the client sends a POST request with grant_type as 'client_credentials' to the authorization server. The authorization server will respond with a JSON object containing the access token.",
      id = "GoogleCloudIntegrationsV1alphaOAuth2ClientCredentials",
      properties = {
        accessToken = {
          ["$ref"] = "GoogleCloudIntegrationsV1alphaAccessToken",
          description = "Access token fetched from the authorization server.",
        },
        clientId = {
          description = "The client's ID.",
          type = "string",
        },
        clientSecret = {
          description = "The client's secret.",
          type = "string",
        },
        requestType = {
          description = "Represent how to pass parameters to fetch access token",
          enum = {
            "REQUEST_TYPE_UNSPECIFIED",
            "REQUEST_BODY",
            "QUERY_PARAMETERS",
            "ENCODED_HEADER",
          },
          enumDescriptions = {
            "Unspecified request type",
            "To pass all the parameters in post body.",
            "To pass all the parameters as a part of query parameter.",
            "To pass client id and client secret as base 64 encoding of client_id:client_password and rest parameters in post body.",
          },
          type = "string",
        },
        scope = {
          description = "A space-delimited list of requested scope permissions.",
          type = "string",
        },
        tokenEndpoint = {
          description = "The token endpoint is used by the client to obtain an access token by presenting its authorization grant or refresh token.",
          type = "string",
        },
        tokenParams = {
          ["$ref"] = "GoogleCloudIntegrationsV1alphaParameterMap",
          description = "Token parameters for the auth request.",
        },
      },
      type = "object",
    },
    GoogleCloudIntegrationsV1alphaOAuth2ResourceOwnerCredentials = {
      description = "For resource owner credentials grant, the client will ask the user for their authorization credentials (ususally a username and password) and send a POST request to the authorization server. The authorization server will respond with a JSON object containing the access token.",
      id = "GoogleCloudIntegrationsV1alphaOAuth2ResourceOwnerCredentials",
      properties = {
        accessToken = {
          ["$ref"] = "GoogleCloudIntegrationsV1alphaAccessToken",
          description = "Access token fetched from the authorization server.",
        },
        clientId = {
          description = "The client's ID.",
          type = "string",
        },
        clientSecret = {
          description = "The client's secret.",
          type = "string",
        },
        password = {
          description = "The user's password.",
          type = "string",
        },
        requestType = {
          description = "Represent how to pass parameters to fetch access token",
          enum = {
            "REQUEST_TYPE_UNSPECIFIED",
            "REQUEST_BODY",
            "QUERY_PARAMETERS",
            "ENCODED_HEADER",
          },
          enumDescriptions = {
            "Unspecified request type",
            "To pass all the parameters in post body.",
            "To pass all the parameters as a part of query parameter.",
            "To pass client id and client secret as base 64 encoding of client_id:client_password and rest parameters in post body.",
          },
          type = "string",
        },
        scope = {
          description = "A space-delimited list of requested scope permissions.",
          type = "string",
        },
        tokenEndpoint = {
          description = "The token endpoint is used by the client to obtain an access token by presenting its authorization grant or refresh token.",
          type = "string",
        },
        tokenParams = {
          ["$ref"] = "GoogleCloudIntegrationsV1alphaParameterMap",
          description = "Token parameters for the auth request.",
        },
        username = {
          description = "The user's username.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudIntegrationsV1alphaOidcToken = {
      description = "OIDC Token",
      id = "GoogleCloudIntegrationsV1alphaOidcToken",
      properties = {
        audience = {
          description = "Audience to be used when generating OIDC token. The audience claim identifies the recipients that the JWT is intended for.",
          type = "string",
        },
        serviceAccountEmail = {
          description = "The service account email to be used as the identity for the token.",
          type = "string",
        },
        token = {
          description = "ID token obtained for the service account",
          type = "string",
        },
        tokenExpireTime = {
          description = "The approximate time until the token retrieved is valid.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudIntegrationsV1alphaParameterMap = {
      description = "A generic multi-map that holds key value pairs. They keys and values can be of any type, unless specified.",
      id = "GoogleCloudIntegrationsV1alphaParameterMap",
      properties = {
        entries = {
          description = "A list of parameter map entries.",
          items = {
            ["$ref"] = "GoogleCloudIntegrationsV1alphaParameterMapEntry",
          },
          type = "array",
        },
        keyType = {
          description = "Option to specify key type for all entries of the map. If provided then field types for all entries must conform to this.",
          enum = {
            "INTEGRATION_PARAMETER_DATA_TYPE_UNSPECIFIED",
            "STRING_VALUE",
            "INT_VALUE",
            "DOUBLE_VALUE",
            "BOOLEAN_VALUE",
            "STRING_ARRAY",
            "INT_ARRAY",
            "DOUBLE_ARRAY",
            "BOOLEAN_ARRAY",
            "JSON_VALUE",
            "PROTO_VALUE",
            "PROTO_ARRAY",
          },
          enumDescriptions = {
            "Unspecified.",
            "String.",
            "Integer.",
            "Double Number.",
            "Boolean.",
            "String Array.",
            "Integer Array.",
            "Double Number Array.",
            "Boolean Array.",
            "Json.",
            "Proto Value (Internal use only).",
            "Proto Array (Internal use only).",
          },
          type = "string",
        },
        valueType = {
          description = "Option to specify value type for all entries of the map. If provided then field types for all entries must conform to this.",
          enum = {
            "INTEGRATION_PARAMETER_DATA_TYPE_UNSPECIFIED",
            "STRING_VALUE",
            "INT_VALUE",
            "DOUBLE_VALUE",
            "BOOLEAN_VALUE",
            "STRING_ARRAY",
            "INT_ARRAY",
            "DOUBLE_ARRAY",
            "BOOLEAN_ARRAY",
            "JSON_VALUE",
            "PROTO_VALUE",
            "PROTO_ARRAY",
          },
          enumDescriptions = {
            "Unspecified.",
            "String.",
            "Integer.",
            "Double Number.",
            "Boolean.",
            "String Array.",
            "Integer Array.",
            "Double Number Array.",
            "Boolean Array.",
            "Json.",
            "Proto Value (Internal use only).",
            "Proto Array (Internal use only).",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudIntegrationsV1alphaParameterMapEntry = {
      description = "Entry is a pair of key and value.",
      id = "GoogleCloudIntegrationsV1alphaParameterMapEntry",
      properties = {
        key = {
          ["$ref"] = "GoogleCloudIntegrationsV1alphaParameterMapField",
          description = "Key of the map entry.",
        },
        value = {
          ["$ref"] = "GoogleCloudIntegrationsV1alphaParameterMapField",
          description = "Value of the map entry.",
        },
      },
      type = "object",
    },
    GoogleCloudIntegrationsV1alphaParameterMapField = {
      description = "Field represents either the key or value in an entry.",
      id = "GoogleCloudIntegrationsV1alphaParameterMapField",
      properties = {
        literalValue = {
          ["$ref"] = "GoogleCloudIntegrationsV1alphaValueType",
          description = "Passing a literal value.",
        },
        referenceKey = {
          description = "Referencing one of the Integration variables.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudIntegrationsV1alphaProjectProperties = {
      description = "Metadata information for the given project",
      id = "GoogleCloudIntegrationsV1alphaProjectProperties",
      properties = {
        ipEnablementState = {
          description = "An enum value of what the enablement state is for the given project",
          enum = {
            "IP_ENABLEMENT_STATE_UNSPECIFIED",
            "IP_ENABLEMENT_STATE_STANDALONE",
            "IP_ENABLEMENT_STATE_APIGEE",
            "IP_ENABLEMENT_STATE_APIGEE_ENTITLED",
          },
          enumDescriptions = {
            "The client enablement status is unspecified",
            "The client is enabled on Standalone IP",
            "The client is enabled on Apigee",
            "The client is entitled for Apigee but not enabled",
          },
          type = "string",
        },
        provisionedRegions = {
          description = "A list of provisioned regions on the current project",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudIntegrationsV1alphaProvisionClientRequest = {
      description = "Request for the Provision rpc",
      id = "GoogleCloudIntegrationsV1alphaProvisionClientRequest",
      properties = {
        cloudKmsConfig = {
          ["$ref"] = "GoogleCloudIntegrationsV1alphaCloudKmsConfig",
          description = "Required. Required: Cloud KMS config for AuthModule to encrypt/decrypt credentials.",
        },
        createSampleWorkflows = {
          description = "Optional. Indicates if sample workflow should be created along with provisioning",
          type = "boolean",
        },
      },
      type = "object",
    },
    GoogleCloudIntegrationsV1alphaPublishIntegrationVersionRequest = {
      description = "Request for PublishIntegrationVersion.",
      id = "GoogleCloudIntegrationsV1alphaPublishIntegrationVersionRequest",
      properties = {},
      type = "object",
    },
    GoogleCloudIntegrationsV1alphaPublishIntegrationVersionResponse = {
      description = "Response for PublishIntegrationVersion.",
      id = "GoogleCloudIntegrationsV1alphaPublishIntegrationVersionResponse",
      properties = {},
      type = "object",
    },
    GoogleCloudIntegrationsV1alphaResolveSuspensionRequest = {
      description = "Request for [Suspensions.ResolveSuspensions].",
      id = "GoogleCloudIntegrationsV1alphaResolveSuspensionRequest",
      properties = {
        suspension = {
          ["$ref"] = "GoogleCloudIntegrationsV1alphaSuspension",
          description = "Suspension, containing the event_execution_info_id, task_id, and state to set on the corresponding suspension record.",
        },
      },
      type = "object",
    },
    GoogleCloudIntegrationsV1alphaResolveSuspensionResponse = {
      description = "Response for Suspensions.ResolveSuspensions.",
      id = "GoogleCloudIntegrationsV1alphaResolveSuspensionResponse",
      properties = {},
      type = "object",
    },
    GoogleCloudIntegrationsV1alphaRuntimeActionSchema = {
      description = "Metadata of an action, including schemas for its inputs and outputs.",
      id = "GoogleCloudIntegrationsV1alphaRuntimeActionSchema",
      properties = {
        action = {
          description = "Name of the action.",
          type = "string",
        },
        inputSchema = {
          description = "Input parameter schema for the action.",
          type = "string",
        },
        outputSchema = {
          description = "Output parameter schema for the action.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudIntegrationsV1alphaRuntimeEntitySchema = {
      description = "Metadata of an entity, including a schema for its properties.",
      id = "GoogleCloudIntegrationsV1alphaRuntimeEntitySchema",
      properties = {
        arrayFieldSchema = {
          description = "The above schema, but for an array of the associated entity.",
          type = "string",
        },
        entity = {
          description = "Name of the entity.",
          type = "string",
        },
        fieldSchema = {
          description = "List of fields in the entity.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudIntegrationsV1alphaScheduleIntegrationsRequest = {
      description = "The request for scheduling an integration.",
      id = "GoogleCloudIntegrationsV1alphaScheduleIntegrationsRequest",
      properties = {
        inputParameters = {
          additionalProperties = {
            ["$ref"] = "GoogleCloudIntegrationsV1alphaValueType",
          },
          description = "Optional. Input parameters used by integration execution.",
          type = "object",
        },
        parameterEntries = {
          description = "Parameters are a part of Event and can be used to communicate between different tasks that are part of the same integration execution.",
          items = {
            ["$ref"] = "EnterpriseCrmFrontendsEventbusProtoParameterEntry",
          },
          type = "array",
        },
        parameters = {
          ["$ref"] = "EnterpriseCrmEventbusProtoEventParameters",
          description = "Passed in as parameters to each integration execution.",
        },
        requestId = {
          description = "This is used to de-dup incoming request: if the duplicate request was detected, the response from the previous execution is returned.",
          type = "string",
        },
        scheduleTime = {
          description = "The time that the integration should be executed. If the time is less or equal to the current time, the integration is executed immediately.",
          format = "google-datetime",
          type = "string",
        },
        triggerId = {
          description = "Matched against all {@link TriggerConfig}s across all integrations. i.e. TriggerConfig.trigger_id.equals(trigger_id)",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudIntegrationsV1alphaScheduleIntegrationsResponse = {
      description = "The response for executing an integration.",
      id = "GoogleCloudIntegrationsV1alphaScheduleIntegrationsResponse",
      properties = {
        executionInfoIds = {
          description = "The execution info id for the executed integrations.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudIntegrationsV1alphaServiceAccountCredentials = {
      description = "Represents the service account which can be used to generate access token for authenticating the service call.",
      id = "GoogleCloudIntegrationsV1alphaServiceAccountCredentials",
      properties = {
        scope = {
          description = "A space-delimited list of requested scope permissions.",
          type = "string",
        },
        serviceAccount = {
          description = "Name of the service account that has the permission to make the request.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudIntegrationsV1alphaSfdcChannel = {
      description = "The SfdcChannel that points to a CDC or Platform Event Channel.",
      id = "GoogleCloudIntegrationsV1alphaSfdcChannel",
      properties = {
        channelTopic = {
          description = "The Channel topic defined by salesforce once an channel is opened",
          type = "string",
        },
        createTime = {
          description = "Output only. Time when the channel is created",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        deleteTime = {
          description = "Output only. Time when the channel was deleted. Empty if not deleted.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        description = {
          description = "The description for this channel",
          type = "string",
        },
        displayName = {
          description = "Client level unique name/alias to easily reference a channel.",
          type = "string",
        },
        isActive = {
          description = "Indicated if a channel has any active integrations referencing it. Set to false when the channel is created, and set to true if there is any integration published with the channel configured in it.",
          type = "boolean",
        },
        lastReplayId = {
          description = "Last sfdc messsage replay id for channel",
          type = "string",
        },
        name = {
          description = "Resource name of the SFDC channel projects/{project}/locations/{location}/sfdcInstances/{sfdc_instance}/sfdcChannels/{sfdc_channel}.",
          type = "string",
        },
        updateTime = {
          description = "Output only. Time when the channel was last updated",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudIntegrationsV1alphaSfdcInstance = {
      description = "The SfdcInstance resource use to hold channels and connection config data.",
      id = "GoogleCloudIntegrationsV1alphaSfdcInstance",
      properties = {
        authConfigId = {
          description = "A list of AuthConfigs that can be tried to open the channel to SFDC",
          items = {
            type = "string",
          },
          type = "array",
        },
        createTime = {
          description = "Output only. Time when the instance is created",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        deleteTime = {
          description = "Output only. Time when the instance was deleted. Empty if not deleted.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        description = {
          description = "A description of the sfdc instance.",
          type = "string",
        },
        displayName = {
          description = "User selected unique name/alias to easily reference an instance.",
          type = "string",
        },
        name = {
          description = "Resource name of the SFDC instance projects/{project}/locations/{location}/sfdcInstances/{sfdcInstance}.",
          type = "string",
        },
        serviceAuthority = {
          description = "URL used for API calls after authentication (the login authority is configured within the referenced AuthConfig).",
          type = "string",
        },
        sfdcOrgId = {
          description = "The SFDC Org Id. This is defined in salesforce.",
          type = "string",
        },
        updateTime = {
          description = "Output only. Time when the instance was last updated",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudIntegrationsV1alphaStringParameterArray = {
      description = "This message only contains a field of string array.",
      id = "GoogleCloudIntegrationsV1alphaStringParameterArray",
      properties = {
        stringValues = {
          description = "String array.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudIntegrationsV1alphaSuccessPolicy = {
      description = "Policy that dictates the behavior for the task after it completes successfully.",
      id = "GoogleCloudIntegrationsV1alphaSuccessPolicy",
      properties = {
        finalState = {
          description = "State to which the execution snapshot status will be set if the task succeeds.",
          enum = {
            "FINAL_STATE_UNSPECIFIED",
            "SUCCEEDED",
            "SUSPENDED",
          },
          enumDescriptions = {
            "UNSPECIFIED.",
            "The default behavior, where successful tasks will be marked as SUCCEEDED.",
            "Sets the state to SUSPENDED after executing. This is required for SuspensionTask; event execution will continue once the user calls ResolveSuspensions with the event_execution_info_id and the task number.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudIntegrationsV1alphaSuspension = {
      description = "A record representing a suspension.",
      id = "GoogleCloudIntegrationsV1alphaSuspension",
      properties = {
        approvalConfig = {
          ["$ref"] = "GoogleCloudIntegrationsV1alphaSuspensionApprovalConfig",
          description = "Controls the notifications and approval permissions for this suspension.",
        },
        audit = {
          ["$ref"] = "GoogleCloudIntegrationsV1alphaSuspensionAudit",
          description = "Metadata pertaining to the resolution of this suspension.",
        },
        createTime = {
          description = "Output only. Auto-generated.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        eventExecutionInfoId = {
          description = "Required. ID of the associated execution.",
          type = "string",
        },
        integration = {
          description = "Required. The name of the originating integration.",
          type = "string",
        },
        lastModifyTime = {
          description = "Output only. Auto-generated.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        name = {
          description = "Resource name for suspensions suspension/{suspension_id}",
          type = "string",
        },
        state = {
          description = "Required. State of this suspension, indicating what action a resolver has taken.",
          enum = {
            "RESOLUTION_STATE_UNSPECIFIED",
            "PENDING",
            "REJECTED",
            "LIFTED",
          },
          enumDescriptions = {
            "Unset state.",
            "The suspension has not yet been resolved.",
            "The resolver has rejected the suspension.",
            "The resolver has lifted the suspension.",
          },
          type = "string",
        },
        suspensionConfig = {
          ["$ref"] = "EnterpriseCrmEventbusProtoSuspensionConfig",
          description = "Controls the notifications and resolver permissions for this suspension.",
        },
        taskId = {
          description = "Required. Task id of the associated SuspensionTask.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudIntegrationsV1alphaSuspensionApprovalConfig = {
      description = "Configurations for approving the Suspension.",
      id = "GoogleCloudIntegrationsV1alphaSuspensionApprovalConfig",
      properties = {
        customMessage = {
          description = "Information to provide for recipients.",
          type = "string",
        },
        emailAddresses = {
          description = "Email addresses to send approval request to.",
          items = {
            type = "string",
          },
          type = "array",
        },
        expiration = {
          ["$ref"] = "GoogleCloudIntegrationsV1alphaSuspensionApprovalExpiration",
          description = "Indicates the next steps when no external actions happen on the suspension.",
        },
      },
      type = "object",
    },
    GoogleCloudIntegrationsV1alphaSuspensionApprovalExpiration = {
      description = "Expiration configs for the approval request.",
      id = "GoogleCloudIntegrationsV1alphaSuspensionApprovalExpiration",
      properties = {
        expireTime = {
          description = "Output only. Time after which the suspension expires, if no action taken.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        liftWhenExpired = {
          description = "Whether the suspension will be REJECTED or LIFTED upon expiration. REJECTED is the default behavior.",
          type = "boolean",
        },
        remindTime = {
          description = "Time after the previous suspension action reminder, if any, is sent using the selected notification option, for a suspension which is still PENDING_UNSPECIFIED.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudIntegrationsV1alphaSuspensionAudit = {
      description = "Contains when and by whom the suspension was resolved.",
      id = "GoogleCloudIntegrationsV1alphaSuspensionAudit",
      properties = {
        resolveTime = {
          description = "Time at which this suspension was resolved.",
          format = "google-datetime",
          type = "string",
        },
        resolver = {
          description = "Email address of the person who resolved this suspension.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudIntegrationsV1alphaTakeoverEditLockRequest = {
      description = "Request for TakeoverEditLock.",
      id = "GoogleCloudIntegrationsV1alphaTakeoverEditLockRequest",
      properties = {},
      type = "object",
    },
    GoogleCloudIntegrationsV1alphaTakeoverEditLockResponse = {
      description = "Response for TakeoverEditLock.",
      id = "GoogleCloudIntegrationsV1alphaTakeoverEditLockResponse",
      properties = {
        integrationVersion = {
          ["$ref"] = "GoogleCloudIntegrationsV1alphaIntegrationVersion",
          description = "Version after the lock is acquired by the new user.",
        },
      },
      type = "object",
    },
    GoogleCloudIntegrationsV1alphaTaskConfig = {
      description = "The task configuration details. This is not the implementation of Task. There might be multiple TaskConfigs for the same Task.",
      id = "GoogleCloudIntegrationsV1alphaTaskConfig",
      properties = {
        description = {
          description = "Optional. User-provided description intended to give additional business context about the task.",
          type = "string",
        },
        displayName = {
          description = "Optional. User-provided label that is attached to this TaskConfig in the UI.",
          type = "string",
        },
        failurePolicy = {
          ["$ref"] = "GoogleCloudIntegrationsV1alphaFailurePolicy",
          description = "Optional. Determines the number of times the task will be retried on failure and with what retry strategy. This is applicable for asynchronous calls to Eventbus alone (Post To Queue, Schedule etc.).",
        },
        jsonValidationOption = {
          description = "Optional. If set, overrides the option configured in the Task implementation class.",
          enum = {
            "JSON_VALIDATION_OPTION_UNSPECIFIED",
            "SKIP",
            "PRE_EXECUTION",
            "POST_EXECUTION",
            "PRE_POST_EXECUTION",
          },
          enumDescriptions = {
            "As per the default behavior, no validation will be run. Will not override any option set in a Task.",
            "Do not run any validation against JSON schemas.",
            "Validate all potential input JSON parameters against schemas specified in IntegrationParameter.",
            "Validate all potential output JSON parameters against schemas specified in IntegrationParameter.",
            "Perform both PRE_EXECUTION and POST_EXECUTION validations.",
          },
          type = "string",
        },
        nextTasks = {
          description = "Optional. The set of tasks that are next in line to be executed as per the execution graph defined for the parent event, specified by `event_config_id`. Each of these next tasks are executed only if the condition associated with them evaluates to true.",
          items = {
            ["$ref"] = "GoogleCloudIntegrationsV1alphaNextTask",
          },
          type = "array",
        },
        nextTasksExecutionPolicy = {
          description = "Optional. The policy dictating the execution of the next set of tasks for the current task.",
          enum = {
            "NEXT_TASKS_EXECUTION_POLICY_UNSPECIFIED",
            "RUN_ALL_MATCH",
            "RUN_FIRST_MATCH",
          },
          enumDescriptions = {
            "Default.",
            "Execute all the tasks that satisfy their associated condition.",
            "Execute the first task that satisfies the associated condition.",
          },
          type = "string",
        },
        parameters = {
          additionalProperties = {
            ["$ref"] = "GoogleCloudIntegrationsV1alphaEventParameter",
          },
          description = "Optional. The customized parameters the user can pass to this task.",
          type = "object",
        },
        successPolicy = {
          ["$ref"] = "GoogleCloudIntegrationsV1alphaSuccessPolicy",
          description = "Optional. Determines what action to take upon successful task completion.",
        },
        synchronousCallFailurePolicy = {
          ["$ref"] = "GoogleCloudIntegrationsV1alphaFailurePolicy",
          description = "Optional. Determines the number of times the task will be retried on failure and with what retry strategy. This is applicable for synchronous calls to Eventbus alone (Post).",
        },
        task = {
          description = "Optional. The name for the task.",
          type = "string",
        },
        taskExecutionStrategy = {
          description = "Optional. The policy dictating the execution strategy of this task.",
          enum = {
            "TASK_EXECUTION_STRATEGY_UNSPECIFIED",
            "WHEN_ALL_SUCCEED",
            "WHEN_ANY_SUCCEED",
            "WHEN_ALL_TASKS_AND_CONDITIONS_SUCCEED",
          },
          enumDescriptions = {
            "Default. If the strategy is not set explicitly, it will default to `WHEN_ALL_SUCCEED`.",
            "Wait until all of its previous tasks finished execution, then verify at least one of the edge conditions is met, and execute if possible. This should be considered as WHEN_ALL_TASKS_SUCCEED.",
            "Start execution as long as any of its previous tasks finished execution and the corresponding edge condition is met (since we will execute if only that succeeding edge condition is met).",
            "Wait until all of its previous tasks finished execution, then verify the all edge conditions are met and execute if possible.",
          },
          type = "string",
        },
        taskId = {
          description = "Required. The identifier of this task within its parent event config, specified by the client. This should be unique among all the tasks belong to the same event config. We use this field as the identifier to find next tasks (via field `next_tasks.task_id`).",
          type = "string",
        },
        taskTemplate = {
          description = "Optional. Used to define task-template name if task is of type task-template",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudIntegrationsV1alphaTaskExecutionDetails = {
      description = "Contains the details of the execution of this task.",
      id = "GoogleCloudIntegrationsV1alphaTaskExecutionDetails",
      properties = {
        taskAttemptStats = {
          description = "Status for the current task execution attempt.",
          items = {
            ["$ref"] = "GoogleCloudIntegrationsV1alphaAttemptStats",
          },
          type = "array",
        },
        taskExecutionState = {
          description = "The execution state of this task.",
          enum = {
            "TASK_EXECUTION_STATE_UNSPECIFIED",
            "PENDING_EXECUTION",
            "IN_PROCESS",
            "SUCCEED",
            "FAILED",
            "FATAL",
            "RETRY_ON_HOLD",
            "SKIPPED",
            "CANCELLED",
            "PENDING_ROLLBACK",
            "ROLLBACK_IN_PROCESS",
            "ROLLEDBACK",
            "SUSPENDED",
          },
          enumDescriptions = {
            "Default value.",
            "Task is waiting for its precondition tasks to finish to start the execution.",
            "Task is under processing.",
            "Task execution successfully finished. There's no more change after this state.",
            "Task execution failed. There's no more change after this state.",
            "Task execution failed and cause the whole event execution to fail immediately. There's no more change after this state.",
            "Task execution failed and waiting for retry.",
            "Task execution skipped. This happens when its precondition wasn't met, or the event execution been canceled before reach to the task. There's no more changes after this state.",
            "Task execution canceled when in progress. This happens when event execution been canceled or any other task fall in fatal state.",
            "Task is waiting for its dependency tasks' rollback to finish to start its rollback.",
            "Task is rolling back.",
            "Task is rolled back. This is the state we will set regardless of rollback succeeding or failing.",
            "Task is a SuspensionTask which has executed once, creating a pending suspension.",
          },
          type = "string",
        },
        taskNumber = {
          description = "Pointer to the task config it used for execution.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudIntegrationsV1alphaTestIntegrationsRequest = {
      description = "The request for testing an integration.",
      id = "GoogleCloudIntegrationsV1alphaTestIntegrationsRequest",
      properties = {
        clientId = {
          description = "Required. This is used to identify the client on whose behalf the event will be executed.",
          type = "string",
        },
        deadlineSecondsTime = {
          description = "Optional. custom deadline of the rpc",
          format = "google-datetime",
          type = "string",
        },
        inputParameters = {
          additionalProperties = {
            ["$ref"] = "GoogleCloudIntegrationsV1alphaValueType",
          },
          description = "Optional. Input parameters used during integration execution.",
          type = "object",
        },
        integrationVersion = {
          ["$ref"] = "GoogleCloudIntegrationsV1alphaIntegrationVersion",
          description = "Required. integration config to execute the workflow",
        },
        parameters = {
          ["$ref"] = "EnterpriseCrmFrontendsEventbusProtoEventParameters",
          description = "Optional. Passed in as parameters to each integration execution.",
        },
        testMode = {
          description = "Optional. Can be specified in the event request, otherwise false (default). If true, enables tasks with condition \"test_mode = true\". If false, disables tasks with condition \"test_mode = true\" if global test mode (set by platform) is also false {@link EventBusConfig}.",
          type = "boolean",
        },
        triggerId = {
          description = "Required. The trigger id of the integration trigger config. If both trigger_id and client_id is present, the integration is executed from the start tasks provided by the matching trigger config otherwise it is executed from the default start tasks.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudIntegrationsV1alphaTestIntegrationsResponse = {
      description = "The response for testing an integration.",
      id = "GoogleCloudIntegrationsV1alphaTestIntegrationsResponse",
      properties = {
        eventParameters = {
          ["$ref"] = "EnterpriseCrmFrontendsEventbusProtoEventParameters",
          description = "Details for the integration that were executed.",
        },
        executionFailed = {
          description = "Is true if any execution in the integration failed. False otherwise.",
          type = "boolean",
        },
        executionId = {
          description = "The id of the execution corresponding to this run of integration.",
          type = "string",
        },
        parameterEntries = {
          description = "Parameters are a part of Event and can be used to communicate between different tasks that are part of the same integration execution.",
          items = {
            ["$ref"] = "EnterpriseCrmFrontendsEventbusProtoParameterEntry",
          },
          type = "array",
        },
        parameters = {
          additionalProperties = {
            ["$ref"] = "GoogleCloudIntegrationsV1alphaValueType",
          },
          description = "Optional. Parameters are a part of Event and can be used to communicate between different tasks that are part of the same integration execution.",
          type = "object",
        },
      },
      type = "object",
    },
    GoogleCloudIntegrationsV1alphaTriggerConfig = {
      description = "Configuration detail of a trigger.",
      id = "GoogleCloudIntegrationsV1alphaTriggerConfig",
      properties = {
        alertConfig = {
          description = "Optional. An alert threshold configuration for the [trigger + client + integration] tuple. If these values are not specified in the trigger config, default values will be populated by the system. Note that there must be exactly one alert threshold configured per [client + trigger + integration] when published.",
          items = {
            ["$ref"] = "GoogleCloudIntegrationsV1alphaIntegrationAlertConfig",
          },
          type = "array",
        },
        cloudSchedulerConfig = {
          ["$ref"] = "GoogleCloudIntegrationsV1alphaCloudSchedulerConfig",
          description = "Optional. Cloud Scheduler Trigger related metadata",
        },
        description = {
          description = "Optional. User-provided description intended to give additional business context about the task.",
          type = "string",
        },
        label = {
          description = "Optional. The user created label for a particular trigger.",
          type = "string",
        },
        nextTasksExecutionPolicy = {
          description = "Optional. Dictates how next tasks will be executed.",
          enum = {
            "NEXT_TASKS_EXECUTION_POLICY_UNSPECIFIED",
            "RUN_ALL_MATCH",
            "RUN_FIRST_MATCH",
          },
          enumDescriptions = {
            "Default.",
            "Execute all the tasks that satisfy their associated condition.",
            "Execute the first task that satisfies the associated condition.",
          },
          type = "string",
        },
        properties = {
          additionalProperties = {
            type = "string",
          },
          description = "Optional. Configurable properties of the trigger, not to be confused with integration parameters. E.g. \"name\" is a property for API triggers and \"subscription\" is a property for Pub/sub triggers.",
          type = "object",
        },
        startTasks = {
          description = "Optional. Set of tasks numbers from where the integration execution is started by this trigger. If this is empty, then integration is executed with default start tasks. In the list of start tasks, none of two tasks can have direct ancestor-descendant relationships (i.e. in a same integration execution graph).",
          items = {
            ["$ref"] = "GoogleCloudIntegrationsV1alphaNextTask",
          },
          type = "array",
        },
        triggerId = {
          description = "Optional. The backend trigger ID.",
          type = "string",
        },
        triggerNumber = {
          description = "Required. A number to uniquely identify each trigger config within the integration on UI.",
          type = "string",
        },
        triggerType = {
          description = "Optional. Type of trigger",
          enum = {
            "TRIGGER_TYPE_UNSPECIFIED",
            "CRON",
            "API",
            "SFDC_CHANNEL",
            "CLOUD_PUBSUB_EXTERNAL",
            "SFDC_CDC_CHANNEL",
            "CLOUD_SCHEDULER",
          },
          enumDescriptions = {
            "Unknown.",
            "Trigger by scheduled time.",
            "Trigger by API call.",
            "Trigger by Salesforce Channel.",
            "Trigger by Pub/Sub external.",
            "SFDC Channel Trigger for CDC.",
            "Trigger by Cloud Scheduler job.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudIntegrationsV1alphaUnpublishIntegrationVersionRequest = {
      description = "Request for UnpublishIntegrationVersion.",
      id = "GoogleCloudIntegrationsV1alphaUnpublishIntegrationVersionRequest",
      properties = {},
      type = "object",
    },
    GoogleCloudIntegrationsV1alphaUpdateBundleRequest = {
      description = "THIS METHOD WILL BE MOVED TO A SEPARATE SERVICE. Request message for Bundle update",
      id = "GoogleCloudIntegrationsV1alphaUpdateBundleRequest",
      properties = {
        config = {
          ["$ref"] = "GoogleCloudIntegrationsV1alphaIntegrationBundleConfig",
          description = "It contains the updated bundle data",
        },
      },
      type = "object",
    },
    GoogleCloudIntegrationsV1alphaUpdateBundleResponse = {
      description = "Response message for Bundle update",
      id = "GoogleCloudIntegrationsV1alphaUpdateBundleResponse",
      properties = {
        config = {
          ["$ref"] = "GoogleCloudIntegrationsV1alphaIntegrationBundleConfig",
          description = "Contains updated bundle config",
        },
      },
      type = "object",
    },
    GoogleCloudIntegrationsV1alphaUploadIntegrationVersionRequest = {
      description = "Request for UploadIntegrationVersion.",
      id = "GoogleCloudIntegrationsV1alphaUploadIntegrationVersionRequest",
      properties = {
        content = {
          description = "The textproto of the integration_version.",
          type = "string",
        },
        fileFormat = {
          description = "File format for upload request.",
          enum = {
            "FILE_FORMAT_UNSPECIFIED",
            "JSON",
            "YAML",
          },
          enumDescriptions = {
            "Unspecified file format",
            "JSON File Format",
            "YAML File Format",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudIntegrationsV1alphaUploadIntegrationVersionResponse = {
      description = "Response for UploadIntegrationVersion.",
      id = "GoogleCloudIntegrationsV1alphaUploadIntegrationVersionResponse",
      properties = {
        integrationVersion = {
          ["$ref"] = "GoogleCloudIntegrationsV1alphaIntegrationVersion",
          description = "The uploaded integration.",
        },
      },
      type = "object",
    },
    GoogleCloudIntegrationsV1alphaUsernameAndPassword = {
      description = "Username and password pair.",
      id = "GoogleCloudIntegrationsV1alphaUsernameAndPassword",
      properties = {
        password = {
          description = "Password to be used",
          type = "string",
        },
        username = {
          description = "Username to be used",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudIntegrationsV1alphaValidateIntegrationVersionRequest = {
      description = "Request for ValidateIntegrationVersion.",
      id = "GoogleCloudIntegrationsV1alphaValidateIntegrationVersionRequest",
      properties = {},
      type = "object",
    },
    GoogleCloudIntegrationsV1alphaValidateIntegrationVersionResponse = {
      description = "Response for ValidateIntegrationVersion.",
      id = "GoogleCloudIntegrationsV1alphaValidateIntegrationVersionResponse",
      properties = {},
      type = "object",
    },
    GoogleCloudIntegrationsV1alphaValueType = {
      description = "The type of the parameter.",
      id = "GoogleCloudIntegrationsV1alphaValueType",
      properties = {
        booleanArray = {
          ["$ref"] = "GoogleCloudIntegrationsV1alphaBooleanParameterArray",
          description = "Boolean Array.",
        },
        booleanValue = {
          description = "Boolean.",
          type = "boolean",
        },
        doubleArray = {
          ["$ref"] = "GoogleCloudIntegrationsV1alphaDoubleParameterArray",
          description = "Double Number Array.",
        },
        doubleValue = {
          description = "Double Number.",
          format = "double",
          type = "number",
        },
        intArray = {
          ["$ref"] = "GoogleCloudIntegrationsV1alphaIntParameterArray",
          description = "Integer Array.",
        },
        intValue = {
          description = "Integer.",
          format = "int64",
          type = "string",
        },
        jsonValue = {
          description = "Json.",
          type = "string",
        },
        stringArray = {
          ["$ref"] = "GoogleCloudIntegrationsV1alphaStringParameterArray",
          description = "String Array.",
        },
        stringValue = {
          description = "String.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleInternalCloudCrmEventbusV3PostToQueueWithTriggerIdRequest = {
      description = "Use this request to post all workflows associated with a given trigger id. Next available id: 10",
      id = "GoogleInternalCloudCrmEventbusV3PostToQueueWithTriggerIdRequest",
      properties = {
        clientId = {
          description = "Optional. If the client id is provided, then the combination of trigger id and client id is matched across all the workflows. If the client id is not provided, then workflows with matching trigger id are executed for each client id in the {@link TriggerConfig}. For Api Trigger, the client id is required and will be validated against the allowed clients.",
          type = "string",
        },
        ignoreErrorIfNoActiveWorkflow = {
          description = "Optional. Flag to determine whether clients would suppress a warning when no ACTIVE workflows are not found. If this flag is set to be true, an error will not be thrown if the requested trigger_id or client_id is not found in any ACTIVE workflow. Otherwise, the error is always thrown. The flag is set to be false by default.",
          type = "boolean",
        },
        parameters = {
          ["$ref"] = "EnterpriseCrmEventbusProtoEventParameters",
          description = "Passed in as parameters to each workflow execution. Optional.",
        },
        priority = {
          description = "The request priority this request should be processed at. For internal users:",
          enum = {
            "UNSPCIFIED",
            "SHEDDABLE",
            "SHEDDABLE_PLUS",
            "CRITICAL",
            "CRITICAL_PLUS",
          },
          enumDescriptions = {
            "Unspecified",
            "Frequent partial and occasional full unavailability is expected and not pageable. * Requests to this band will be shed before all other requests. * This is the default for async calls sent from batch jobs.",
            "Partial unavailability is expected and is not necessarily pageable. * Requests to this band will be shed before any critical traffic. * This is the default for async calls sent from production jobs.",
            "Any outage is a pageable event. * During a production outage requests in this band will only be shed before CRITICAL_PLUS. * This is the default for sync calls sent from production jobs.",
            "Any outage is a pageable event. * The guideline is for < 10% of requests to a service to be in this band. * During a production outage requests in this band will be prioritized above all others. * Opt-in to CRITICAL_PLUS when your workflow triggers by human.",
          },
          type = "string",
        },
        requestId = {
          description = "Optional. This is used to de-dup incoming request: if the duplicate request was detected, the response from the previous execution is returned. Must have no more than 36 characters and contain only alphanumeric characters and hyphens.",
          type = "string",
        },
        scheduledTime = {
          description = "Optional. Time in milliseconds since epoch when the given event would be scheduled.",
          format = "int64",
          type = "string",
        },
        testMode = {
          description = "Optional. Sets test mode in {@link enterprise/crm/eventbus/event_message.proto}.",
          type = "boolean",
        },
        triggerId = {
          description = "Matched against all {@link TriggerConfig}s across all workflows. i.e. TriggerConfig.trigger_id.equals(trigger_id) Required.",
          type = "string",
        },
        workflowName = {
          description = "Optional. If provided, the workflow_name is used to filter all the matched workflows having same trigger_id+client_id. A combination of trigger_id, client_id and workflow_name identifies a unique workflow.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleProtobufEmpty = {
      description = "A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }",
      id = "GoogleProtobufEmpty",
      properties = {},
      type = "object",
    },
  },
  servicePath = "",
  title = "Application Integration API",
  version = "v1",
  version_module = true,
}