return {
  auth = {
    oauth2 = {
      scopes = {
        ["https://www.googleapis.com/auth/cloud-platform"] = {
          description = "See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account.",
        },
        ["https://www.googleapis.com/auth/firebase"] = {
          description = "View and administer all your Firebase data and settings",
        },
      },
    },
  },
  basePath = "",
  baseUrl = "https://identitytoolkit.googleapis.com/",
  batchPath = "batch",
  canonicalName = "Identity Toolkit",
  description = "The Google Identity Toolkit API lets you use open standards to verify a user's identity.",
  discoveryVersion = "v1",
  documentationLink = "https://cloud.google.com/identity-platform",
  fullyEncodeReservedExpansion = true,
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "identitytoolkit:v2",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://identitytoolkit.mtls.googleapis.com/",
  name = "identitytoolkit",
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
    accounts = {
      resources = {
        mfaEnrollment = {
          methods = {
            finalize = {
              description = "Finishes enrolling a second factor for the user.",
              flatPath = "v2/accounts/mfaEnrollment:finalize",
              httpMethod = "POST",
              id = "identitytoolkit.accounts.mfaEnrollment.finalize",
              parameterOrder = {},
              parameters = {},
              path = "v2/accounts/mfaEnrollment:finalize",
              request = {
                ["$ref"] = "GoogleCloudIdentitytoolkitV2FinalizeMfaEnrollmentRequest",
              },
              response = {
                ["$ref"] = "GoogleCloudIdentitytoolkitV2FinalizeMfaEnrollmentResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            start = {
              description = "Step one of the MFA enrollment process. In SMS case, this sends an SMS verification code to the user.",
              flatPath = "v2/accounts/mfaEnrollment:start",
              httpMethod = "POST",
              id = "identitytoolkit.accounts.mfaEnrollment.start",
              parameterOrder = {},
              parameters = {},
              path = "v2/accounts/mfaEnrollment:start",
              request = {
                ["$ref"] = "GoogleCloudIdentitytoolkitV2StartMfaEnrollmentRequest",
              },
              response = {
                ["$ref"] = "GoogleCloudIdentitytoolkitV2StartMfaEnrollmentResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            withdraw = {
              description = "Revokes one second factor from the enrolled second factors for an account.",
              flatPath = "v2/accounts/mfaEnrollment:withdraw",
              httpMethod = "POST",
              id = "identitytoolkit.accounts.mfaEnrollment.withdraw",
              parameterOrder = {},
              parameters = {},
              path = "v2/accounts/mfaEnrollment:withdraw",
              request = {
                ["$ref"] = "GoogleCloudIdentitytoolkitV2WithdrawMfaRequest",
              },
              response = {
                ["$ref"] = "GoogleCloudIdentitytoolkitV2WithdrawMfaResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
          },
        },
        mfaSignIn = {
          methods = {
            finalize = {
              description = "Verifies the MFA challenge and performs sign-in",
              flatPath = "v2/accounts/mfaSignIn:finalize",
              httpMethod = "POST",
              id = "identitytoolkit.accounts.mfaSignIn.finalize",
              parameterOrder = {},
              parameters = {},
              path = "v2/accounts/mfaSignIn:finalize",
              request = {
                ["$ref"] = "GoogleCloudIdentitytoolkitV2FinalizeMfaSignInRequest",
              },
              response = {
                ["$ref"] = "GoogleCloudIdentitytoolkitV2FinalizeMfaSignInResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            start = {
              description = "Sends the MFA challenge",
              flatPath = "v2/accounts/mfaSignIn:start",
              httpMethod = "POST",
              id = "identitytoolkit.accounts.mfaSignIn.start",
              parameterOrder = {},
              parameters = {},
              path = "v2/accounts/mfaSignIn:start",
              request = {
                ["$ref"] = "GoogleCloudIdentitytoolkitV2StartMfaSignInRequest",
              },
              response = {
                ["$ref"] = "GoogleCloudIdentitytoolkitV2StartMfaSignInResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
          },
        },
      },
    },
    defaultSupportedIdps = {
      methods = {
        list = {
          description = "List all default supported Idps.",
          flatPath = "v2/defaultSupportedIdps",
          httpMethod = "GET",
          id = "identitytoolkit.defaultSupportedIdps.list",
          parameterOrder = {},
          parameters = {
            pageSize = {
              description = "The maximum number of items to return.",
              format = "int32",
              location = "query",
              type = "integer",
            },
            pageToken = {
              description = "The next_page_token value returned from a previous List request, if any.",
              location = "query",
              type = "string",
            },
          },
          path = "v2/defaultSupportedIdps",
          response = {
            ["$ref"] = "GoogleCloudIdentitytoolkitAdminV2ListDefaultSupportedIdpsResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/firebase",
          },
        },
      },
    },
    projects = {
      methods = {
        getConfig = {
          description = "Retrieve an Identity Toolkit project configuration.",
          flatPath = "v2/projects/{projectsId}/config",
          httpMethod = "GET",
          id = "identitytoolkit.projects.getConfig",
          parameterOrder = {
            "name",
          },
          parameters = {
            name = {
              description = "The resource name of the config, for example: \"projects/my-awesome-project/config\"",
              location = "path",
              pattern = "^projects/[^/]+/config$",
              required = true,
              type = "string",
            },
          },
          path = "v2/{+name}",
          response = {
            ["$ref"] = "GoogleCloudIdentitytoolkitAdminV2Config",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
        updateConfig = {
          description = "Update an Identity Toolkit project configuration.",
          flatPath = "v2/projects/{projectsId}/config",
          httpMethod = "PATCH",
          id = "identitytoolkit.projects.updateConfig",
          parameterOrder = {
            "name",
          },
          parameters = {
            name = {
              description = "Output only. The name of the Config resource. Example: \"projects/my-awesome-project/config\"",
              location = "path",
              pattern = "^projects/[^/]+/config$",
              required = true,
              type = "string",
            },
            updateMask = {
              description = "The update mask applies to the resource. Fields set in the config but not included in this update mask will be ignored. For the `FieldMask` definition, see https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#fieldmask",
              format = "google-fieldmask",
              location = "query",
              type = "string",
            },
          },
          path = "v2/{+name}",
          request = {
            ["$ref"] = "GoogleCloudIdentitytoolkitAdminV2Config",
          },
          response = {
            ["$ref"] = "GoogleCloudIdentitytoolkitAdminV2Config",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/firebase",
          },
        },
      },
      resources = {
        defaultSupportedIdpConfigs = {
          methods = {
            create = {
              description = "Create a default supported Idp configuration for an Identity Toolkit project.",
              flatPath = "v2/projects/{projectsId}/defaultSupportedIdpConfigs",
              httpMethod = "POST",
              id = "identitytoolkit.projects.defaultSupportedIdpConfigs.create",
              parameterOrder = {
                "parent",
              },
              parameters = {
                idpId = {
                  description = "The id of the Idp to create a config for. Call ListDefaultSupportedIdps for list of all default supported Idps.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "The parent resource name where the config to be created, for example: \"projects/my-awesome-project\"",
                  location = "path",
                  pattern = "^projects/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v2/{+parent}/defaultSupportedIdpConfigs",
              request = {
                ["$ref"] = "GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig",
              },
              response = {
                ["$ref"] = "GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/firebase",
              },
            },
            delete = {
              description = "Delete a default supported Idp configuration for an Identity Toolkit project.",
              flatPath = "v2/projects/{projectsId}/defaultSupportedIdpConfigs/{defaultSupportedIdpConfigsId}",
              httpMethod = "DELETE",
              id = "identitytoolkit.projects.defaultSupportedIdpConfigs.delete",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "The resource name of the config, for example: \"projects/my-awesome-project/defaultSupportedIdpConfigs/google.com\"",
                  location = "path",
                  pattern = "^projects/[^/]+/defaultSupportedIdpConfigs/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v2/{+name}",
              response = {
                ["$ref"] = "GoogleProtobufEmpty",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/firebase",
              },
            },
            get = {
              description = "Retrieve a default supported Idp configuration for an Identity Toolkit project.",
              flatPath = "v2/projects/{projectsId}/defaultSupportedIdpConfigs/{defaultSupportedIdpConfigsId}",
              httpMethod = "GET",
              id = "identitytoolkit.projects.defaultSupportedIdpConfigs.get",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "The resource name of the config, for example: \"projects/my-awesome-project/defaultSupportedIdpConfigs/google.com\"",
                  location = "path",
                  pattern = "^projects/[^/]+/defaultSupportedIdpConfigs/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v2/{+name}",
              response = {
                ["$ref"] = "GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/firebase",
              },
            },
            list = {
              description = "List all default supported Idp configurations for an Identity Toolkit project.",
              flatPath = "v2/projects/{projectsId}/defaultSupportedIdpConfigs",
              httpMethod = "GET",
              id = "identitytoolkit.projects.defaultSupportedIdpConfigs.list",
              parameterOrder = {
                "parent",
              },
              parameters = {
                pageSize = {
                  description = "The maximum number of items to return.",
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
                  description = "The parent resource name, for example, \"projects/my-awesome-project\".",
                  location = "path",
                  pattern = "^projects/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v2/{+parent}/defaultSupportedIdpConfigs",
              response = {
                ["$ref"] = "GoogleCloudIdentitytoolkitAdminV2ListDefaultSupportedIdpConfigsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/firebase",
              },
            },
            patch = {
              description = "Update a default supported Idp configuration for an Identity Toolkit project.",
              flatPath = "v2/projects/{projectsId}/defaultSupportedIdpConfigs/{defaultSupportedIdpConfigsId}",
              httpMethod = "PATCH",
              id = "identitytoolkit.projects.defaultSupportedIdpConfigs.patch",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "The name of the DefaultSupportedIdpConfig resource, for example: \"projects/my-awesome-project/defaultSupportedIdpConfigs/google.com\"",
                  location = "path",
                  pattern = "^projects/[^/]+/defaultSupportedIdpConfigs/[^/]+$",
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
              path = "v2/{+name}",
              request = {
                ["$ref"] = "GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig",
              },
              response = {
                ["$ref"] = "GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/firebase",
              },
            },
          },
        },
        identityPlatform = {
          methods = {
            initializeAuth = {
              description = "Initialize Identity Platform for a Cloud project. Identity Platform is an end-to-end authentication system for third-party users to access your apps and services. These could include mobile/web apps, games, APIs and beyond. This is the publicly available variant of EnableIdentityPlatform that is only available to billing-enabled projects.",
              flatPath = "v2/projects/{projectsId}/identityPlatform:initializeAuth",
              httpMethod = "POST",
              id = "identitytoolkit.projects.identityPlatform.initializeAuth",
              parameterOrder = {
                "project",
              },
              parameters = {
                project = {
                  description = "The resource name of the target project the developer wants to enable Identity Platform for.",
                  location = "path",
                  pattern = "^projects/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v2/{+project}/identityPlatform:initializeAuth",
              request = {
                ["$ref"] = "GoogleCloudIdentitytoolkitAdminV2InitializeIdentityPlatformRequest",
              },
              response = {
                ["$ref"] = "GoogleCloudIdentitytoolkitAdminV2InitializeIdentityPlatformResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
          },
        },
        inboundSamlConfigs = {
          methods = {
            create = {
              description = "Create an inbound SAML configuration for an Identity Toolkit project.",
              flatPath = "v2/projects/{projectsId}/inboundSamlConfigs",
              httpMethod = "POST",
              id = "identitytoolkit.projects.inboundSamlConfigs.create",
              parameterOrder = {
                "parent",
              },
              parameters = {
                inboundSamlConfigId = {
                  description = "The id to use for this config.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "The parent resource name where the config to be created, for example: \"projects/my-awesome-project\"",
                  location = "path",
                  pattern = "^projects/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v2/{+parent}/inboundSamlConfigs",
              request = {
                ["$ref"] = "GoogleCloudIdentitytoolkitAdminV2InboundSamlConfig",
              },
              response = {
                ["$ref"] = "GoogleCloudIdentitytoolkitAdminV2InboundSamlConfig",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/firebase",
              },
            },
            delete = {
              description = "Delete an inbound SAML configuration for an Identity Toolkit project.",
              flatPath = "v2/projects/{projectsId}/inboundSamlConfigs/{inboundSamlConfigsId}",
              httpMethod = "DELETE",
              id = "identitytoolkit.projects.inboundSamlConfigs.delete",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "The resource name of the config to be deleted, for example: 'projects/my-awesome-project/inboundSamlConfigs/my-config-id'.",
                  location = "path",
                  pattern = "^projects/[^/]+/inboundSamlConfigs/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v2/{+name}",
              response = {
                ["$ref"] = "GoogleProtobufEmpty",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/firebase",
              },
            },
            get = {
              description = "Retrieve an inbound SAML configuration for an Identity Toolkit project.",
              flatPath = "v2/projects/{projectsId}/inboundSamlConfigs/{inboundSamlConfigsId}",
              httpMethod = "GET",
              id = "identitytoolkit.projects.inboundSamlConfigs.get",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "The resource name of the config, for example: 'projects/my-awesome-project/inboundSamlConfigs/my-config-id'.",
                  location = "path",
                  pattern = "^projects/[^/]+/inboundSamlConfigs/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v2/{+name}",
              response = {
                ["$ref"] = "GoogleCloudIdentitytoolkitAdminV2InboundSamlConfig",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/firebase",
              },
            },
            list = {
              description = "List all inbound SAML configurations for an Identity Toolkit project.",
              flatPath = "v2/projects/{projectsId}/inboundSamlConfigs",
              httpMethod = "GET",
              id = "identitytoolkit.projects.inboundSamlConfigs.list",
              parameterOrder = {
                "parent",
              },
              parameters = {
                pageSize = {
                  description = "The maximum number of items to return.",
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
                  description = "The parent resource name, for example, \"projects/my-awesome-project\".",
                  location = "path",
                  pattern = "^projects/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v2/{+parent}/inboundSamlConfigs",
              response = {
                ["$ref"] = "GoogleCloudIdentitytoolkitAdminV2ListInboundSamlConfigsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/firebase",
              },
            },
            patch = {
              description = "Update an inbound SAML configuration for an Identity Toolkit project.",
              flatPath = "v2/projects/{projectsId}/inboundSamlConfigs/{inboundSamlConfigsId}",
              httpMethod = "PATCH",
              id = "identitytoolkit.projects.inboundSamlConfigs.patch",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "The name of the InboundSamlConfig resource, for example: 'projects/my-awesome-project/inboundSamlConfigs/my-config-id'. Ignored during create requests.",
                  location = "path",
                  pattern = "^projects/[^/]+/inboundSamlConfigs/[^/]+$",
                  required = true,
                  type = "string",
                },
                updateMask = {
                  description = "The update mask applies to the resource. Empty update mask will result in updating nothing. For the `FieldMask` definition, see https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#fieldmask",
                  format = "google-fieldmask",
                  location = "query",
                  type = "string",
                },
              },
              path = "v2/{+name}",
              request = {
                ["$ref"] = "GoogleCloudIdentitytoolkitAdminV2InboundSamlConfig",
              },
              response = {
                ["$ref"] = "GoogleCloudIdentitytoolkitAdminV2InboundSamlConfig",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/firebase",
              },
            },
          },
        },
        oauthIdpConfigs = {
          methods = {
            create = {
              description = "Create an Oidc Idp configuration for an Identity Toolkit project.",
              flatPath = "v2/projects/{projectsId}/oauthIdpConfigs",
              httpMethod = "POST",
              id = "identitytoolkit.projects.oauthIdpConfigs.create",
              parameterOrder = {
                "parent",
              },
              parameters = {
                oauthIdpConfigId = {
                  description = "The id to use for this config.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "The parent resource name where the config to be created, for example: \"projects/my-awesome-project\"",
                  location = "path",
                  pattern = "^projects/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v2/{+parent}/oauthIdpConfigs",
              request = {
                ["$ref"] = "GoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig",
              },
              response = {
                ["$ref"] = "GoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/firebase",
              },
            },
            delete = {
              description = "Delete an Oidc Idp configuration for an Identity Toolkit project.",
              flatPath = "v2/projects/{projectsId}/oauthIdpConfigs/{oauthIdpConfigsId}",
              httpMethod = "DELETE",
              id = "identitytoolkit.projects.oauthIdpConfigs.delete",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "The resource name of the config to be deleted, for example: 'projects/my-awesome-project/oauthIdpConfigs/oauth-config-id'.",
                  location = "path",
                  pattern = "^projects/[^/]+/oauthIdpConfigs/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v2/{+name}",
              response = {
                ["$ref"] = "GoogleProtobufEmpty",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/firebase",
              },
            },
            get = {
              description = "Retrieve an Oidc Idp configuration for an Identity Toolkit project.",
              flatPath = "v2/projects/{projectsId}/oauthIdpConfigs/{oauthIdpConfigsId}",
              httpMethod = "GET",
              id = "identitytoolkit.projects.oauthIdpConfigs.get",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "The resource name of the config, for example: 'projects/my-awesome-project/oauthIdpConfigs/oauth-config-id'.",
                  location = "path",
                  pattern = "^projects/[^/]+/oauthIdpConfigs/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v2/{+name}",
              response = {
                ["$ref"] = "GoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/firebase",
              },
            },
            list = {
              description = "List all Oidc Idp configurations for an Identity Toolkit project.",
              flatPath = "v2/projects/{projectsId}/oauthIdpConfigs",
              httpMethod = "GET",
              id = "identitytoolkit.projects.oauthIdpConfigs.list",
              parameterOrder = {
                "parent",
              },
              parameters = {
                pageSize = {
                  description = "The maximum number of items to return.",
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
                  description = "The parent resource name, for example, \"projects/my-awesome-project\".",
                  location = "path",
                  pattern = "^projects/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v2/{+parent}/oauthIdpConfigs",
              response = {
                ["$ref"] = "GoogleCloudIdentitytoolkitAdminV2ListOAuthIdpConfigsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/firebase",
              },
            },
            patch = {
              description = "Update an Oidc Idp configuration for an Identity Toolkit project.",
              flatPath = "v2/projects/{projectsId}/oauthIdpConfigs/{oauthIdpConfigsId}",
              httpMethod = "PATCH",
              id = "identitytoolkit.projects.oauthIdpConfigs.patch",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "The name of the OAuthIdpConfig resource, for example: 'projects/my-awesome-project/oauthIdpConfigs/oauth-config-id'. Ignored during create requests.",
                  location = "path",
                  pattern = "^projects/[^/]+/oauthIdpConfigs/[^/]+$",
                  required = true,
                  type = "string",
                },
                updateMask = {
                  description = "The update mask applies to the resource. Empty update mask will result in updating nothing. For the `FieldMask` definition, see https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#fieldmask",
                  format = "google-fieldmask",
                  location = "query",
                  type = "string",
                },
              },
              path = "v2/{+name}",
              request = {
                ["$ref"] = "GoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig",
              },
              response = {
                ["$ref"] = "GoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/firebase",
              },
            },
          },
        },
        tenants = {
          methods = {
            create = {
              description = "Create a tenant. Requires write permission on the Agent project.",
              flatPath = "v2/projects/{projectsId}/tenants",
              httpMethod = "POST",
              id = "identitytoolkit.projects.tenants.create",
              parameterOrder = {
                "parent",
              },
              parameters = {
                parent = {
                  description = "The parent resource name where the tenant will be created. For example, \"projects/project1\".",
                  location = "path",
                  pattern = "^projects/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v2/{+parent}/tenants",
              request = {
                ["$ref"] = "GoogleCloudIdentitytoolkitAdminV2Tenant",
              },
              response = {
                ["$ref"] = "GoogleCloudIdentitytoolkitAdminV2Tenant",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/firebase",
              },
            },
            delete = {
              description = "Delete a tenant. Requires write permission on the Agent project.",
              flatPath = "v2/projects/{projectsId}/tenants/{tenantsId}",
              httpMethod = "DELETE",
              id = "identitytoolkit.projects.tenants.delete",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Resource name of the tenant to delete.",
                  location = "path",
                  pattern = "^projects/[^/]+/tenants/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v2/{+name}",
              response = {
                ["$ref"] = "GoogleProtobufEmpty",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/firebase",
              },
            },
            get = {
              description = "Get a tenant. Requires read permission on the Tenant resource.",
              flatPath = "v2/projects/{projectsId}/tenants/{tenantsId}",
              httpMethod = "GET",
              id = "identitytoolkit.projects.tenants.get",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Resource name of the tenant to retrieve.",
                  location = "path",
                  pattern = "^projects/[^/]+/tenants/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v2/{+name}",
              response = {
                ["$ref"] = "GoogleCloudIdentitytoolkitAdminV2Tenant",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/firebase",
              },
            },
            getIamPolicy = {
              description = "Gets the access control policy for a resource. An error is returned if the resource does not exist. An empty policy is returned if the resource exists but does not have a policy set on it. Caller must have the right Google IAM permission on the resource.",
              flatPath = "v2/projects/{projectsId}/tenants/{tenantsId}:getIamPolicy",
              httpMethod = "POST",
              id = "identitytoolkit.projects.tenants.getIamPolicy",
              parameterOrder = {
                "resource",
              },
              parameters = {
                resource = {
                  description = "REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                  location = "path",
                  pattern = "^projects/[^/]+/tenants/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v2/{+resource}:getIamPolicy",
              request = {
                ["$ref"] = "GoogleIamV1GetIamPolicyRequest",
              },
              response = {
                ["$ref"] = "GoogleIamV1Policy",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/firebase",
              },
            },
            list = {
              description = "List tenants under the given agent project. Requires read permission on the Agent project.",
              flatPath = "v2/projects/{projectsId}/tenants",
              httpMethod = "GET",
              id = "identitytoolkit.projects.tenants.list",
              parameterOrder = {
                "parent",
              },
              parameters = {
                pageSize = {
                  description = "The maximum number of results to return, capped at 1000. If not specified, the default value is 20.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "The pagination token from the response of a previous request.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "Required. The parent resource name to list tenants for.",
                  location = "path",
                  pattern = "^projects/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v2/{+parent}/tenants",
              response = {
                ["$ref"] = "GoogleCloudIdentitytoolkitAdminV2ListTenantsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/firebase",
              },
            },
            patch = {
              description = "Update a tenant. Requires write permission on the Tenant resource.",
              flatPath = "v2/projects/{projectsId}/tenants/{tenantsId}",
              httpMethod = "PATCH",
              id = "identitytoolkit.projects.tenants.patch",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Output only. Resource name of a tenant. For example: \"projects/{project-id}/tenants/{tenant-id}\"",
                  location = "path",
                  pattern = "^projects/[^/]+/tenants/[^/]+$",
                  required = true,
                  type = "string",
                },
                updateMask = {
                  description = "If provided, only update fields set in the update mask. Otherwise, all settable fields will be updated. For the `FieldMask` definition, see https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#fieldmask",
                  format = "google-fieldmask",
                  location = "query",
                  type = "string",
                },
              },
              path = "v2/{+name}",
              request = {
                ["$ref"] = "GoogleCloudIdentitytoolkitAdminV2Tenant",
              },
              response = {
                ["$ref"] = "GoogleCloudIdentitytoolkitAdminV2Tenant",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/firebase",
              },
            },
            setIamPolicy = {
              description = "Sets the access control policy for a resource. If the policy exists, it is replaced. Caller must have the right Google IAM permission on the resource.",
              flatPath = "v2/projects/{projectsId}/tenants/{tenantsId}:setIamPolicy",
              httpMethod = "POST",
              id = "identitytoolkit.projects.tenants.setIamPolicy",
              parameterOrder = {
                "resource",
              },
              parameters = {
                resource = {
                  description = "REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                  location = "path",
                  pattern = "^projects/[^/]+/tenants/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v2/{+resource}:setIamPolicy",
              request = {
                ["$ref"] = "GoogleIamV1SetIamPolicyRequest",
              },
              response = {
                ["$ref"] = "GoogleIamV1Policy",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/firebase",
              },
            },
            testIamPermissions = {
              description = "Returns the caller's permissions on a resource. An error is returned if the resource does not exist. A caller is not required to have Google IAM permission to make this request.",
              flatPath = "v2/projects/{projectsId}/tenants/{tenantsId}:testIamPermissions",
              httpMethod = "POST",
              id = "identitytoolkit.projects.tenants.testIamPermissions",
              parameterOrder = {
                "resource",
              },
              parameters = {
                resource = {
                  description = "REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                  location = "path",
                  pattern = "^projects/[^/]+/tenants/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v2/{+resource}:testIamPermissions",
              request = {
                ["$ref"] = "GoogleIamV1TestIamPermissionsRequest",
              },
              response = {
                ["$ref"] = "GoogleIamV1TestIamPermissionsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/firebase",
              },
            },
          },
          resources = {
            defaultSupportedIdpConfigs = {
              methods = {
                create = {
                  description = "Create a default supported Idp configuration for an Identity Toolkit project.",
                  flatPath = "v2/projects/{projectsId}/tenants/{tenantsId}/defaultSupportedIdpConfigs",
                  httpMethod = "POST",
                  id = "identitytoolkit.projects.tenants.defaultSupportedIdpConfigs.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    idpId = {
                      description = "The id of the Idp to create a config for. Call ListDefaultSupportedIdps for list of all default supported Idps.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "The parent resource name where the config to be created, for example: \"projects/my-awesome-project\"",
                      location = "path",
                      pattern = "^projects/[^/]+/tenants/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v2/{+parent}/defaultSupportedIdpConfigs",
                  request = {
                    ["$ref"] = "GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig",
                  },
                  response = {
                    ["$ref"] = "GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/firebase",
                  },
                },
                delete = {
                  description = "Delete a default supported Idp configuration for an Identity Toolkit project.",
                  flatPath = "v2/projects/{projectsId}/tenants/{tenantsId}/defaultSupportedIdpConfigs/{defaultSupportedIdpConfigsId}",
                  httpMethod = "DELETE",
                  id = "identitytoolkit.projects.tenants.defaultSupportedIdpConfigs.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "The resource name of the config, for example: \"projects/my-awesome-project/defaultSupportedIdpConfigs/google.com\"",
                      location = "path",
                      pattern = "^projects/[^/]+/tenants/[^/]+/defaultSupportedIdpConfigs/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v2/{+name}",
                  response = {
                    ["$ref"] = "GoogleProtobufEmpty",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/firebase",
                  },
                },
                get = {
                  description = "Retrieve a default supported Idp configuration for an Identity Toolkit project.",
                  flatPath = "v2/projects/{projectsId}/tenants/{tenantsId}/defaultSupportedIdpConfigs/{defaultSupportedIdpConfigsId}",
                  httpMethod = "GET",
                  id = "identitytoolkit.projects.tenants.defaultSupportedIdpConfigs.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "The resource name of the config, for example: \"projects/my-awesome-project/defaultSupportedIdpConfigs/google.com\"",
                      location = "path",
                      pattern = "^projects/[^/]+/tenants/[^/]+/defaultSupportedIdpConfigs/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v2/{+name}",
                  response = {
                    ["$ref"] = "GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/firebase",
                  },
                },
                list = {
                  description = "List all default supported Idp configurations for an Identity Toolkit project.",
                  flatPath = "v2/projects/{projectsId}/tenants/{tenantsId}/defaultSupportedIdpConfigs",
                  httpMethod = "GET",
                  id = "identitytoolkit.projects.tenants.defaultSupportedIdpConfigs.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    pageSize = {
                      description = "The maximum number of items to return.",
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
                      description = "The parent resource name, for example, \"projects/my-awesome-project\".",
                      location = "path",
                      pattern = "^projects/[^/]+/tenants/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v2/{+parent}/defaultSupportedIdpConfigs",
                  response = {
                    ["$ref"] = "GoogleCloudIdentitytoolkitAdminV2ListDefaultSupportedIdpConfigsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/firebase",
                  },
                },
                patch = {
                  description = "Update a default supported Idp configuration for an Identity Toolkit project.",
                  flatPath = "v2/projects/{projectsId}/tenants/{tenantsId}/defaultSupportedIdpConfigs/{defaultSupportedIdpConfigsId}",
                  httpMethod = "PATCH",
                  id = "identitytoolkit.projects.tenants.defaultSupportedIdpConfigs.patch",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "The name of the DefaultSupportedIdpConfig resource, for example: \"projects/my-awesome-project/defaultSupportedIdpConfigs/google.com\"",
                      location = "path",
                      pattern = "^projects/[^/]+/tenants/[^/]+/defaultSupportedIdpConfigs/[^/]+$",
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
                  path = "v2/{+name}",
                  request = {
                    ["$ref"] = "GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig",
                  },
                  response = {
                    ["$ref"] = "GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/firebase",
                  },
                },
              },
            },
            inboundSamlConfigs = {
              methods = {
                create = {
                  description = "Create an inbound SAML configuration for an Identity Toolkit project.",
                  flatPath = "v2/projects/{projectsId}/tenants/{tenantsId}/inboundSamlConfigs",
                  httpMethod = "POST",
                  id = "identitytoolkit.projects.tenants.inboundSamlConfigs.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    inboundSamlConfigId = {
                      description = "The id to use for this config.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "The parent resource name where the config to be created, for example: \"projects/my-awesome-project\"",
                      location = "path",
                      pattern = "^projects/[^/]+/tenants/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v2/{+parent}/inboundSamlConfigs",
                  request = {
                    ["$ref"] = "GoogleCloudIdentitytoolkitAdminV2InboundSamlConfig",
                  },
                  response = {
                    ["$ref"] = "GoogleCloudIdentitytoolkitAdminV2InboundSamlConfig",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/firebase",
                  },
                },
                delete = {
                  description = "Delete an inbound SAML configuration for an Identity Toolkit project.",
                  flatPath = "v2/projects/{projectsId}/tenants/{tenantsId}/inboundSamlConfigs/{inboundSamlConfigsId}",
                  httpMethod = "DELETE",
                  id = "identitytoolkit.projects.tenants.inboundSamlConfigs.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "The resource name of the config to be deleted, for example: 'projects/my-awesome-project/inboundSamlConfigs/my-config-id'.",
                      location = "path",
                      pattern = "^projects/[^/]+/tenants/[^/]+/inboundSamlConfigs/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v2/{+name}",
                  response = {
                    ["$ref"] = "GoogleProtobufEmpty",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/firebase",
                  },
                },
                get = {
                  description = "Retrieve an inbound SAML configuration for an Identity Toolkit project.",
                  flatPath = "v2/projects/{projectsId}/tenants/{tenantsId}/inboundSamlConfigs/{inboundSamlConfigsId}",
                  httpMethod = "GET",
                  id = "identitytoolkit.projects.tenants.inboundSamlConfigs.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "The resource name of the config, for example: 'projects/my-awesome-project/inboundSamlConfigs/my-config-id'.",
                      location = "path",
                      pattern = "^projects/[^/]+/tenants/[^/]+/inboundSamlConfigs/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v2/{+name}",
                  response = {
                    ["$ref"] = "GoogleCloudIdentitytoolkitAdminV2InboundSamlConfig",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/firebase",
                  },
                },
                list = {
                  description = "List all inbound SAML configurations for an Identity Toolkit project.",
                  flatPath = "v2/projects/{projectsId}/tenants/{tenantsId}/inboundSamlConfigs",
                  httpMethod = "GET",
                  id = "identitytoolkit.projects.tenants.inboundSamlConfigs.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    pageSize = {
                      description = "The maximum number of items to return.",
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
                      description = "The parent resource name, for example, \"projects/my-awesome-project\".",
                      location = "path",
                      pattern = "^projects/[^/]+/tenants/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v2/{+parent}/inboundSamlConfigs",
                  response = {
                    ["$ref"] = "GoogleCloudIdentitytoolkitAdminV2ListInboundSamlConfigsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/firebase",
                  },
                },
                patch = {
                  description = "Update an inbound SAML configuration for an Identity Toolkit project.",
                  flatPath = "v2/projects/{projectsId}/tenants/{tenantsId}/inboundSamlConfigs/{inboundSamlConfigsId}",
                  httpMethod = "PATCH",
                  id = "identitytoolkit.projects.tenants.inboundSamlConfigs.patch",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "The name of the InboundSamlConfig resource, for example: 'projects/my-awesome-project/inboundSamlConfigs/my-config-id'. Ignored during create requests.",
                      location = "path",
                      pattern = "^projects/[^/]+/tenants/[^/]+/inboundSamlConfigs/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    updateMask = {
                      description = "The update mask applies to the resource. Empty update mask will result in updating nothing. For the `FieldMask` definition, see https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#fieldmask",
                      format = "google-fieldmask",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v2/{+name}",
                  request = {
                    ["$ref"] = "GoogleCloudIdentitytoolkitAdminV2InboundSamlConfig",
                  },
                  response = {
                    ["$ref"] = "GoogleCloudIdentitytoolkitAdminV2InboundSamlConfig",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/firebase",
                  },
                },
              },
            },
            oauthIdpConfigs = {
              methods = {
                create = {
                  description = "Create an Oidc Idp configuration for an Identity Toolkit project.",
                  flatPath = "v2/projects/{projectsId}/tenants/{tenantsId}/oauthIdpConfigs",
                  httpMethod = "POST",
                  id = "identitytoolkit.projects.tenants.oauthIdpConfigs.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    oauthIdpConfigId = {
                      description = "The id to use for this config.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "The parent resource name where the config to be created, for example: \"projects/my-awesome-project\"",
                      location = "path",
                      pattern = "^projects/[^/]+/tenants/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v2/{+parent}/oauthIdpConfigs",
                  request = {
                    ["$ref"] = "GoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig",
                  },
                  response = {
                    ["$ref"] = "GoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/firebase",
                  },
                },
                delete = {
                  description = "Delete an Oidc Idp configuration for an Identity Toolkit project.",
                  flatPath = "v2/projects/{projectsId}/tenants/{tenantsId}/oauthIdpConfigs/{oauthIdpConfigsId}",
                  httpMethod = "DELETE",
                  id = "identitytoolkit.projects.tenants.oauthIdpConfigs.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "The resource name of the config to be deleted, for example: 'projects/my-awesome-project/oauthIdpConfigs/oauth-config-id'.",
                      location = "path",
                      pattern = "^projects/[^/]+/tenants/[^/]+/oauthIdpConfigs/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v2/{+name}",
                  response = {
                    ["$ref"] = "GoogleProtobufEmpty",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/firebase",
                  },
                },
                get = {
                  description = "Retrieve an Oidc Idp configuration for an Identity Toolkit project.",
                  flatPath = "v2/projects/{projectsId}/tenants/{tenantsId}/oauthIdpConfigs/{oauthIdpConfigsId}",
                  httpMethod = "GET",
                  id = "identitytoolkit.projects.tenants.oauthIdpConfigs.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "The resource name of the config, for example: 'projects/my-awesome-project/oauthIdpConfigs/oauth-config-id'.",
                      location = "path",
                      pattern = "^projects/[^/]+/tenants/[^/]+/oauthIdpConfigs/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v2/{+name}",
                  response = {
                    ["$ref"] = "GoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/firebase",
                  },
                },
                list = {
                  description = "List all Oidc Idp configurations for an Identity Toolkit project.",
                  flatPath = "v2/projects/{projectsId}/tenants/{tenantsId}/oauthIdpConfigs",
                  httpMethod = "GET",
                  id = "identitytoolkit.projects.tenants.oauthIdpConfigs.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    pageSize = {
                      description = "The maximum number of items to return.",
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
                      description = "The parent resource name, for example, \"projects/my-awesome-project\".",
                      location = "path",
                      pattern = "^projects/[^/]+/tenants/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v2/{+parent}/oauthIdpConfigs",
                  response = {
                    ["$ref"] = "GoogleCloudIdentitytoolkitAdminV2ListOAuthIdpConfigsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/firebase",
                  },
                },
                patch = {
                  description = "Update an Oidc Idp configuration for an Identity Toolkit project.",
                  flatPath = "v2/projects/{projectsId}/tenants/{tenantsId}/oauthIdpConfigs/{oauthIdpConfigsId}",
                  httpMethod = "PATCH",
                  id = "identitytoolkit.projects.tenants.oauthIdpConfigs.patch",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "The name of the OAuthIdpConfig resource, for example: 'projects/my-awesome-project/oauthIdpConfigs/oauth-config-id'. Ignored during create requests.",
                      location = "path",
                      pattern = "^projects/[^/]+/tenants/[^/]+/oauthIdpConfigs/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    updateMask = {
                      description = "The update mask applies to the resource. Empty update mask will result in updating nothing. For the `FieldMask` definition, see https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#fieldmask",
                      format = "google-fieldmask",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v2/{+name}",
                  request = {
                    ["$ref"] = "GoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig",
                  },
                  response = {
                    ["$ref"] = "GoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/firebase",
                  },
                },
              },
            },
          },
        },
      },
    },
  },
  revision = "20221206",
  rootUrl = "https://identitytoolkit.googleapis.com/",
  schemas = {
    GoogleCloudIdentitytoolkitAdminV2AllowByDefault = {
      description = "Defines a policy of allowing every region by default and adding disallowed regions to a disallow list.",
      id = "GoogleCloudIdentitytoolkitAdminV2AllowByDefault",
      properties = {
        disallowedRegions = {
          description = "Two letter unicode region codes to disallow as defined by https://cldr.unicode.org/ The full list of these region codes is here: https://github.com/unicode-cldr/cldr-localenames-full/blob/master/main/en/territories.json",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudIdentitytoolkitAdminV2AllowlistOnly = {
      description = "Defines a policy of only allowing regions by explicitly adding them to an allowlist.",
      id = "GoogleCloudIdentitytoolkitAdminV2AllowlistOnly",
      properties = {
        allowedRegions = {
          description = "Two letter unicode region codes to allow as defined by https://cldr.unicode.org/ The full list of these region codes is here: https://github.com/unicode-cldr/cldr-localenames-full/blob/master/main/en/territories.json",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudIdentitytoolkitAdminV2Anonymous = {
      description = "Configuration options related to authenticating an anonymous user.",
      id = "GoogleCloudIdentitytoolkitAdminV2Anonymous",
      properties = {
        enabled = {
          description = "Whether anonymous user auth is enabled for the project or not.",
          type = "boolean",
        },
      },
      type = "object",
    },
    GoogleCloudIdentitytoolkitAdminV2AppleSignInConfig = {
      description = "Additional config for SignInWithApple.",
      id = "GoogleCloudIdentitytoolkitAdminV2AppleSignInConfig",
      properties = {
        bundleIds = {
          description = "A list of Bundle ID's usable by this project",
          items = {
            type = "string",
          },
          type = "array",
        },
        codeFlowConfig = {
          ["$ref"] = "GoogleCloudIdentitytoolkitAdminV2CodeFlowConfig",
        },
      },
      type = "object",
    },
    GoogleCloudIdentitytoolkitAdminV2BlockingFunctionsConfig = {
      description = "Configuration related to Blocking Functions.",
      id = "GoogleCloudIdentitytoolkitAdminV2BlockingFunctionsConfig",
      properties = {
        forwardInboundCredentials = {
          ["$ref"] = "GoogleCloudIdentitytoolkitAdminV2ForwardInboundCredentials",
          description = "The user credentials to include in the JWT payload that is sent to the registered Blocking Functions.",
        },
        triggers = {
          additionalProperties = {
            ["$ref"] = "GoogleCloudIdentitytoolkitAdminV2Trigger",
          },
          description = "Map of Trigger to event type. Key should be one of the supported event types: \"beforeCreate\", \"beforeSignIn\"",
          type = "object",
        },
      },
      type = "object",
    },
    GoogleCloudIdentitytoolkitAdminV2ClientConfig = {
      description = "Options related to how clients making requests on behalf of a project should be configured.",
      id = "GoogleCloudIdentitytoolkitAdminV2ClientConfig",
      properties = {
        apiKey = {
          description = "Output only. API key that can be used when making requests for this project.",
          readOnly = true,
          type = "string",
        },
        firebaseSubdomain = {
          description = "Output only. Firebase subdomain.",
          readOnly = true,
          type = "string",
        },
        permissions = {
          ["$ref"] = "GoogleCloudIdentitytoolkitAdminV2Permissions",
          description = "Configuration related to restricting a user's ability to affect their account.",
        },
      },
      type = "object",
    },
    GoogleCloudIdentitytoolkitAdminV2ClientPermissionConfig = {
      description = "Options related to how clients making requests on behalf of a tenant should be configured.",
      id = "GoogleCloudIdentitytoolkitAdminV2ClientPermissionConfig",
      properties = {
        permissions = {
          ["$ref"] = "GoogleCloudIdentitytoolkitAdminV2ClientPermissions",
          description = "Configuration related to restricting a user's ability to affect their account.",
        },
      },
      type = "object",
    },
    GoogleCloudIdentitytoolkitAdminV2ClientPermissions = {
      description = "Configuration related to restricting a user's ability to affect their account.",
      id = "GoogleCloudIdentitytoolkitAdminV2ClientPermissions",
      properties = {
        disabledUserDeletion = {
          description = "When true, end users cannot delete their account on the associated project through any of our API methods",
          type = "boolean",
        },
        disabledUserSignup = {
          description = "When true, end users cannot sign up for a new account on the associated project through any of our API methods",
          type = "boolean",
        },
      },
      type = "object",
    },
    GoogleCloudIdentitytoolkitAdminV2CodeFlowConfig = {
      description = "Additional config for Apple for code flow.",
      id = "GoogleCloudIdentitytoolkitAdminV2CodeFlowConfig",
      properties = {
        keyId = {
          description = "Key ID for the private key.",
          type = "string",
        },
        privateKey = {
          description = "Private key used for signing the client secret JWT.",
          type = "string",
        },
        teamId = {
          description = "Apple Developer Team ID.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudIdentitytoolkitAdminV2Config = {
      description = "Represents an Identity Toolkit project.",
      id = "GoogleCloudIdentitytoolkitAdminV2Config",
      properties = {
        authorizedDomains = {
          description = "List of domains authorized for OAuth redirects",
          items = {
            type = "string",
          },
          type = "array",
        },
        autodeleteAnonymousUsers = {
          description = "Whether anonymous users will be auto-deleted after a period of 30 days.",
          type = "boolean",
        },
        blockingFunctions = {
          ["$ref"] = "GoogleCloudIdentitytoolkitAdminV2BlockingFunctionsConfig",
          description = "Configuration related to blocking functions.",
        },
        client = {
          ["$ref"] = "GoogleCloudIdentitytoolkitAdminV2ClientConfig",
          description = "Options related to how clients making requests on behalf of a project should be configured.",
        },
        emailPrivacyConfig = {
          ["$ref"] = "GoogleCloudIdentitytoolkitAdminV2EmailPrivacyConfig",
          description = "Configuration for settings related to email privacy and public visibility.",
        },
        mfa = {
          ["$ref"] = "GoogleCloudIdentitytoolkitAdminV2MultiFactorAuthConfig",
          description = "Configuration for this project's multi-factor authentication, including whether it is active and what factors can be used for the second factor",
        },
        monitoring = {
          ["$ref"] = "GoogleCloudIdentitytoolkitAdminV2MonitoringConfig",
          description = "Configuration related to monitoring project activity.",
        },
        multiTenant = {
          ["$ref"] = "GoogleCloudIdentitytoolkitAdminV2MultiTenantConfig",
          description = "Configuration related to multi-tenant functionality.",
        },
        name = {
          description = "Output only. The name of the Config resource. Example: \"projects/my-awesome-project/config\"",
          readOnly = true,
          type = "string",
        },
        notification = {
          ["$ref"] = "GoogleCloudIdentitytoolkitAdminV2NotificationConfig",
          description = "Configuration related to sending notifications to users.",
        },
        quota = {
          ["$ref"] = "GoogleCloudIdentitytoolkitAdminV2QuotaConfig",
          description = "Configuration related to quotas.",
        },
        signIn = {
          ["$ref"] = "GoogleCloudIdentitytoolkitAdminV2SignInConfig",
          description = "Configuration related to local sign in methods.",
        },
        smsRegionConfig = {
          ["$ref"] = "GoogleCloudIdentitytoolkitAdminV2SmsRegionConfig",
          description = "Configures which regions are enabled for SMS verification code sending.",
        },
        subtype = {
          description = "Output only. The subtype of this config.",
          enum = {
            "SUBTYPE_UNSPECIFIED",
            "IDENTITY_PLATFORM",
            "FIREBASE_AUTH",
          },
          enumDescriptions = {
            "Default value. Do not use.",
            "An Identity Platform project.",
            "A Firebase Authentication project.",
          },
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdp = {
      description = "Standard Identity Toolkit-trusted IDPs.",
      id = "GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdp",
      properties = {
        description = {
          description = "Description of the Idp",
          type = "string",
        },
        idpId = {
          description = "Id the of Idp",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig = {
      description = "Configurations options for authenticating with a the standard set of Identity Toolkit-trusted IDPs.",
      id = "GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig",
      properties = {
        appleSignInConfig = {
          ["$ref"] = "GoogleCloudIdentitytoolkitAdminV2AppleSignInConfig",
          description = "Additional config for Apple-based projects.",
        },
        clientId = {
          description = "OAuth client ID.",
          type = "string",
        },
        clientSecret = {
          description = "OAuth client secret.",
          type = "string",
        },
        enabled = {
          description = "True if allows the user to sign in with the provider.",
          type = "boolean",
        },
        name = {
          description = "The name of the DefaultSupportedIdpConfig resource, for example: \"projects/my-awesome-project/defaultSupportedIdpConfigs/google.com\"",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudIdentitytoolkitAdminV2DnsInfo = {
      description = "Information of custom domain DNS verification. By default, default_domain will be used. A custom domain can be configured using VerifyCustomDomain.",
      id = "GoogleCloudIdentitytoolkitAdminV2DnsInfo",
      properties = {
        customDomain = {
          description = "Output only. The applied verified custom domain.",
          readOnly = true,
          type = "string",
        },
        customDomainState = {
          description = "Output only. The current verification state of the custom domain. The custom domain will only be used once the domain verification is successful.",
          enum = {
            "VERIFICATION_STATE_UNSPECIFIED",
            "NOT_STARTED",
            "IN_PROGRESS",
            "FAILED",
            "SUCCEEDED",
          },
          enumDescriptions = {
            "Default value. Do not use.",
            "The verification has not started.",
            "The verification is in progress.",
            "The verification failed.",
            "The verification succeeded and is ready to be applied.",
          },
          readOnly = true,
          type = "string",
        },
        domainVerificationRequestTime = {
          description = "Output only. The timestamp of initial request for the current domain verification.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        pendingCustomDomain = {
          description = "Output only. The custom domain that's to be verified.",
          readOnly = true,
          type = "string",
        },
        useCustomDomain = {
          description = "Whether to use custom domain.",
          type = "boolean",
        },
      },
      type = "object",
    },
    GoogleCloudIdentitytoolkitAdminV2Email = {
      description = "Configuration options related to authenticating a user by their email address.",
      id = "GoogleCloudIdentitytoolkitAdminV2Email",
      properties = {
        enabled = {
          description = "Whether email auth is enabled for the project or not.",
          type = "boolean",
        },
        passwordRequired = {
          description = "Whether a password is required for email auth or not. If true, both an email and password must be provided to sign in. If false, a user may sign in via either email/password or email link.",
          type = "boolean",
        },
      },
      type = "object",
    },
    GoogleCloudIdentitytoolkitAdminV2EmailPrivacyConfig = {
      description = "Configuration for settings related to email privacy and public visibility. Settings in this config protect against email enumeration, but may make some trade-offs in user-friendliness.",
      id = "GoogleCloudIdentitytoolkitAdminV2EmailPrivacyConfig",
      properties = {
        enableImprovedEmailPrivacy = {
          description = "Migrates the project to a state of improved email privacy. For example certain error codes are more generic to avoid giving away information on whether the account exists. In addition, this disables certain features that as a side-effect allow user enumeration. Enabling this toggle disables the fetchSignInMethodsForEmail functionality and changing the user's email to an unverified email. It is recommended to remove dependence on this functionality and enable this toggle to improve user privacy.",
          type = "boolean",
        },
      },
      type = "object",
    },
    GoogleCloudIdentitytoolkitAdminV2EmailTemplate = {
      description = "Email template. The subject and body fields can contain the following placeholders which will be replaced with the appropriate values: %LINK% - The link to use to redeem the send OOB code. %EMAIL% - The email where the email is being sent. %NEW_EMAIL% - The new email being set for the account (when applicable). %APP_NAME% - The GCP project's display name. %DISPLAY_NAME% - The user's display name.",
      id = "GoogleCloudIdentitytoolkitAdminV2EmailTemplate",
      properties = {
        body = {
          description = "Email body",
          type = "string",
        },
        bodyFormat = {
          description = "Email body format",
          enum = {
            "BODY_FORMAT_UNSPECIFIED",
            "PLAIN_TEXT",
            "HTML",
          },
          enumDescriptions = {
            "Default value. Do not use.",
            "Plain text",
            "HTML",
          },
          type = "string",
        },
        customized = {
          description = "Output only. Whether the body or subject of the email is customized.",
          readOnly = true,
          type = "boolean",
        },
        replyTo = {
          description = "Reply-to address",
          type = "string",
        },
        senderDisplayName = {
          description = "Sender display name",
          type = "string",
        },
        senderLocalPart = {
          description = "Local part of From address",
          type = "string",
        },
        subject = {
          description = "Subject of the email",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudIdentitytoolkitAdminV2ForwardInboundCredentials = {
      description = "Indicates which credentials to pass to the registered Blocking Functions.",
      id = "GoogleCloudIdentitytoolkitAdminV2ForwardInboundCredentials",
      properties = {
        accessToken = {
          description = "Whether to pass the user's OAuth identity provider's access token.",
          type = "boolean",
        },
        idToken = {
          description = "Whether to pass the user's OIDC identity provider's ID token.",
          type = "boolean",
        },
        refreshToken = {
          description = "Whether to pass the user's OAuth identity provider's refresh token.",
          type = "boolean",
        },
      },
      type = "object",
    },
    GoogleCloudIdentitytoolkitAdminV2HashConfig = {
      description = "History information of the hash algorithm and key. Different accounts' passwords may be generated by different version.",
      id = "GoogleCloudIdentitytoolkitAdminV2HashConfig",
      properties = {
        algorithm = {
          description = "Output only. Different password hash algorithms used in Identity Toolkit.",
          enum = {
            "HASH_ALGORITHM_UNSPECIFIED",
            "HMAC_SHA256",
            "HMAC_SHA1",
            "HMAC_MD5",
            "SCRYPT",
            "PBKDF_SHA1",
            "MD5",
            "HMAC_SHA512",
            "SHA1",
            "BCRYPT",
            "PBKDF2_SHA256",
            "SHA256",
            "SHA512",
            "STANDARD_SCRYPT",
          },
          enumDescriptions = {
            "Default value. Do not use.",
            "HMAC_SHA256",
            "HMAC_SHA1",
            "HMAC_MD5",
            "SCRYPT",
            "PBKDF_SHA1",
            "MD5",
            "HMAC_SHA512",
            "SHA1",
            "BCRYPT",
            "PBKDF2_SHA256",
            "SHA256",
            "SHA512",
            "STANDARD_SCRYPT",
          },
          readOnly = true,
          type = "string",
        },
        memoryCost = {
          description = "Output only. Memory cost for hash calculation. Used by scrypt and other similar password derivation algorithms. See https://tools.ietf.org/html/rfc7914 for explanation of field.",
          format = "int32",
          readOnly = true,
          type = "integer",
        },
        rounds = {
          description = "Output only. How many rounds for hash calculation. Used by scrypt and other similar password derivation algorithms.",
          format = "int32",
          readOnly = true,
          type = "integer",
        },
        saltSeparator = {
          description = "Output only. Non-printable character to be inserted between the salt and plain text password in base64.",
          readOnly = true,
          type = "string",
        },
        signerKey = {
          description = "Output only. Signer key in base64.",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudIdentitytoolkitAdminV2IdpCertificate = {
      description = "The IDP's certificate data to verify the signature in the SAMLResponse issued by the IDP.",
      id = "GoogleCloudIdentitytoolkitAdminV2IdpCertificate",
      properties = {
        x509Certificate = {
          description = "The x509 certificate",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudIdentitytoolkitAdminV2IdpConfig = {
      description = "The SAML IdP (Identity Provider) configuration when the project acts as the relying party.",
      id = "GoogleCloudIdentitytoolkitAdminV2IdpConfig",
      properties = {
        idpCertificates = {
          description = "IDP's public keys for verifying signature in the assertions.",
          items = {
            ["$ref"] = "GoogleCloudIdentitytoolkitAdminV2IdpCertificate",
          },
          type = "array",
        },
        idpEntityId = {
          description = "Unique identifier for all SAML entities.",
          type = "string",
        },
        signRequest = {
          description = "Indicates if outbounding SAMLRequest should be signed.",
          type = "boolean",
        },
        ssoUrl = {
          description = "URL to send Authentication request to.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudIdentitytoolkitAdminV2InboundSamlConfig = {
      description = "A pair of SAML RP-IDP configurations when the project acts as the relying party.",
      id = "GoogleCloudIdentitytoolkitAdminV2InboundSamlConfig",
      properties = {
        displayName = {
          description = "The config's display name set by developers.",
          type = "string",
        },
        enabled = {
          description = "True if allows the user to sign in with the provider.",
          type = "boolean",
        },
        idpConfig = {
          ["$ref"] = "GoogleCloudIdentitytoolkitAdminV2IdpConfig",
          description = "The SAML IdP (Identity Provider) configuration when the project acts as the relying party.",
        },
        name = {
          description = "The name of the InboundSamlConfig resource, for example: 'projects/my-awesome-project/inboundSamlConfigs/my-config-id'. Ignored during create requests.",
          type = "string",
        },
        spConfig = {
          ["$ref"] = "GoogleCloudIdentitytoolkitAdminV2SpConfig",
          description = "The SAML SP (Service Provider) configuration when the project acts as the relying party to receive and accept an authentication assertion issued by a SAML identity provider.",
        },
      },
      type = "object",
    },
    GoogleCloudIdentitytoolkitAdminV2Inheritance = {
      description = "Settings that the tenants will inherit from project level.",
      id = "GoogleCloudIdentitytoolkitAdminV2Inheritance",
      properties = {
        emailSendingConfig = {
          description = "Whether to allow the tenant to inherit custom domains, email templates, and custom SMTP settings. If true, email sent from tenant will follow the project level email sending configurations. If false (by default), emails will go with the default settings with no customizations.",
          type = "boolean",
        },
      },
      type = "object",
    },
    GoogleCloudIdentitytoolkitAdminV2InitializeIdentityPlatformRequest = {
      description = "Request for InitializeIdentityPlatform.",
      id = "GoogleCloudIdentitytoolkitAdminV2InitializeIdentityPlatformRequest",
      properties = {},
      type = "object",
    },
    GoogleCloudIdentitytoolkitAdminV2InitializeIdentityPlatformResponse = {
      description = "Response for InitializeIdentityPlatform. Empty for now.",
      id = "GoogleCloudIdentitytoolkitAdminV2InitializeIdentityPlatformResponse",
      properties = {},
      type = "object",
    },
    GoogleCloudIdentitytoolkitAdminV2ListDefaultSupportedIdpConfigsResponse = {
      description = "Response for DefaultSupportedIdpConfigs",
      id = "GoogleCloudIdentitytoolkitAdminV2ListDefaultSupportedIdpConfigsResponse",
      properties = {
        defaultSupportedIdpConfigs = {
          description = "The set of configs.",
          items = {
            ["$ref"] = "GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig",
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
    GoogleCloudIdentitytoolkitAdminV2ListDefaultSupportedIdpsResponse = {
      description = "Response for ListDefaultSupportedIdps",
      id = "GoogleCloudIdentitytoolkitAdminV2ListDefaultSupportedIdpsResponse",
      properties = {
        defaultSupportedIdps = {
          description = "The set of configs.",
          items = {
            ["$ref"] = "GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdp",
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
    GoogleCloudIdentitytoolkitAdminV2ListInboundSamlConfigsResponse = {
      description = "Response for ListInboundSamlConfigs",
      id = "GoogleCloudIdentitytoolkitAdminV2ListInboundSamlConfigsResponse",
      properties = {
        inboundSamlConfigs = {
          description = "The set of configs.",
          items = {
            ["$ref"] = "GoogleCloudIdentitytoolkitAdminV2InboundSamlConfig",
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
    GoogleCloudIdentitytoolkitAdminV2ListOAuthIdpConfigsResponse = {
      description = "Response for ListOAuthIdpConfigs",
      id = "GoogleCloudIdentitytoolkitAdminV2ListOAuthIdpConfigsResponse",
      properties = {
        nextPageToken = {
          description = "Token to retrieve the next page of results, or empty if there are no more results in the list.",
          type = "string",
        },
        oauthIdpConfigs = {
          description = "The set of configs.",
          items = {
            ["$ref"] = "GoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudIdentitytoolkitAdminV2ListTenantsResponse = {
      description = "Response message for ListTenants.",
      id = "GoogleCloudIdentitytoolkitAdminV2ListTenantsResponse",
      properties = {
        nextPageToken = {
          description = "The token to get the next page of results.",
          type = "string",
        },
        tenants = {
          description = "A list of tenants under the given agent project.",
          items = {
            ["$ref"] = "GoogleCloudIdentitytoolkitAdminV2Tenant",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudIdentitytoolkitAdminV2MonitoringConfig = {
      description = "Configuration related to monitoring project activity.",
      id = "GoogleCloudIdentitytoolkitAdminV2MonitoringConfig",
      properties = {
        requestLogging = {
          ["$ref"] = "GoogleCloudIdentitytoolkitAdminV2RequestLogging",
          description = "Configuration for logging requests made to this project to Stackdriver Logging",
        },
      },
      type = "object",
    },
    GoogleCloudIdentitytoolkitAdminV2MultiFactorAuthConfig = {
      description = "Options related to MultiFactor Authentication for the project.",
      id = "GoogleCloudIdentitytoolkitAdminV2MultiFactorAuthConfig",
      properties = {
        enabledProviders = {
          description = "A list of usable second factors for this project.",
          items = {
            enum = {
              "PROVIDER_UNSPECIFIED",
              "PHONE_SMS",
            },
            enumDescriptions = {
              "Illegal Provider, should not be used",
              "SMS is enabled as a second factor for this project.",
            },
            type = "string",
          },
          type = "array",
        },
        state = {
          description = "Whether MultiFactor Authentication has been enabled for this project.",
          enum = {
            "STATE_UNSPECIFIED",
            "DISABLED",
            "ENABLED",
            "MANDATORY",
          },
          enumDescriptions = {
            "Illegal State, should not be used.",
            "Multi-factor authentication cannot be used for this project",
            "Multi-factor authentication can be used for this project",
            "Multi-factor authentication is required for this project. Users from this project must authenticate with the second factor.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudIdentitytoolkitAdminV2MultiTenantConfig = {
      description = "Configuration related to multi-tenant functionality.",
      id = "GoogleCloudIdentitytoolkitAdminV2MultiTenantConfig",
      properties = {
        allowTenants = {
          description = "Whether this project can have tenants or not.",
          type = "boolean",
        },
        defaultTenantLocation = {
          description = "The default cloud parent org or folder that the tenant project should be created under. The parent resource name should be in the format of \"/\", such as \"folders/123\" or \"organizations/456\". If the value is not set, the tenant will be created under the same organization or folder as the agent project.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudIdentitytoolkitAdminV2NotificationConfig = {
      description = "Configuration related to sending notifications to users.",
      id = "GoogleCloudIdentitytoolkitAdminV2NotificationConfig",
      properties = {
        defaultLocale = {
          description = "Default locale used for email and SMS in IETF BCP 47 format.",
          type = "string",
        },
        sendEmail = {
          ["$ref"] = "GoogleCloudIdentitytoolkitAdminV2SendEmail",
          description = "Options for email sending.",
        },
        sendSms = {
          ["$ref"] = "GoogleCloudIdentitytoolkitAdminV2SendSms",
          description = "Options for SMS sending.",
        },
      },
      type = "object",
    },
    GoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig = {
      description = "Configuration options for authenticating with an OAuth IDP.",
      id = "GoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig",
      properties = {
        clientId = {
          description = "The client id of an OAuth client.",
          type = "string",
        },
        clientSecret = {
          description = "The client secret of the OAuth client, to enable OIDC code flow.",
          type = "string",
        },
        displayName = {
          description = "The config's display name set by developers.",
          type = "string",
        },
        enabled = {
          description = "True if allows the user to sign in with the provider.",
          type = "boolean",
        },
        issuer = {
          description = "For OIDC Idps, the issuer identifier.",
          type = "string",
        },
        name = {
          description = "The name of the OAuthIdpConfig resource, for example: 'projects/my-awesome-project/oauthIdpConfigs/oauth-config-id'. Ignored during create requests.",
          type = "string",
        },
        responseType = {
          ["$ref"] = "GoogleCloudIdentitytoolkitAdminV2OAuthResponseType",
          description = "The response type to request for in the OAuth authorization flow. You can set either `id_token` or `code` to true, but not both. Setting both types to be simultaneously true (`{code: true, id_token: true}`) is not yet supported.",
        },
      },
      type = "object",
    },
    GoogleCloudIdentitytoolkitAdminV2OAuthResponseType = {
      description = "The response type to request for in the OAuth authorization flow. You can set either `id_token` or `code` to true, but not both. Setting both types to be simultaneously true (`{code: true, id_token: true}`) is not yet supported. See https://openid.net/specs/openid-connect-core-1_0.html#Authentication for a mapping of response type to OAuth 2.0 flow.",
      id = "GoogleCloudIdentitytoolkitAdminV2OAuthResponseType",
      properties = {
        code = {
          description = "If true, authorization code is returned from IdP's authorization endpoint.",
          type = "boolean",
        },
        idToken = {
          description = "If true, ID token is returned from IdP's authorization endpoint.",
          type = "boolean",
        },
        token = {
          description = "Do not use. The `token` response type is not supported at the moment.",
          type = "boolean",
        },
      },
      type = "object",
    },
    GoogleCloudIdentitytoolkitAdminV2Permissions = {
      description = "Configuration related to restricting a user's ability to affect their account.",
      id = "GoogleCloudIdentitytoolkitAdminV2Permissions",
      properties = {
        disabledUserDeletion = {
          description = "When true, end users cannot delete their account on the associated project through any of our API methods",
          type = "boolean",
        },
        disabledUserSignup = {
          description = "When true, end users cannot sign up for a new account on the associated project through any of our API methods",
          type = "boolean",
        },
      },
      type = "object",
    },
    GoogleCloudIdentitytoolkitAdminV2PhoneNumber = {
      description = "Configuration options related to authenticated a user by their phone number.",
      id = "GoogleCloudIdentitytoolkitAdminV2PhoneNumber",
      properties = {
        enabled = {
          description = "Whether phone number auth is enabled for the project or not.",
          type = "boolean",
        },
        testPhoneNumbers = {
          additionalProperties = {
            type = "string",
          },
          description = "A map of that can be used for phone auth testing.",
          type = "object",
        },
      },
      type = "object",
    },
    GoogleCloudIdentitytoolkitAdminV2QuotaConfig = {
      description = "Configuration related to quotas.",
      id = "GoogleCloudIdentitytoolkitAdminV2QuotaConfig",
      properties = {
        signUpQuotaConfig = {
          ["$ref"] = "GoogleCloudIdentitytoolkitAdminV2TemporaryQuota",
          description = "Quota for the Signup endpoint, if overwritten. Signup quota is measured in sign ups per project per hour per IP.",
        },
      },
      type = "object",
    },
    GoogleCloudIdentitytoolkitAdminV2RequestLogging = {
      description = "Configuration for logging requests made to this project to Stackdriver Logging",
      id = "GoogleCloudIdentitytoolkitAdminV2RequestLogging",
      properties = {
        enabled = {
          description = "Whether logging is enabled for this project or not.",
          type = "boolean",
        },
      },
      type = "object",
    },
    GoogleCloudIdentitytoolkitAdminV2SendEmail = {
      description = "Options for email sending.",
      id = "GoogleCloudIdentitytoolkitAdminV2SendEmail",
      properties = {
        callbackUri = {
          description = "action url in email template.",
          type = "string",
        },
        changeEmailTemplate = {
          ["$ref"] = "GoogleCloudIdentitytoolkitAdminV2EmailTemplate",
          description = "Email template for change email",
        },
        dnsInfo = {
          ["$ref"] = "GoogleCloudIdentitytoolkitAdminV2DnsInfo",
          description = "Information of custom domain DNS verification.",
        },
        legacyResetPasswordTemplate = {
          ["$ref"] = "GoogleCloudIdentitytoolkitAdminV2EmailTemplate",
          description = "Reset password email template for legacy Firebase V1 app.",
        },
        method = {
          description = "The method used for sending an email.",
          enum = {
            "METHOD_UNSPECIFIED",
            "DEFAULT",
            "CUSTOM_SMTP",
          },
          enumDescriptions = {
            "Email method unspecified.",
            "Sending email on behalf of developer.",
            "Sending email using SMTP configuration provided by developers.",
          },
          type = "string",
        },
        resetPasswordTemplate = {
          ["$ref"] = "GoogleCloudIdentitytoolkitAdminV2EmailTemplate",
          description = "Email template for reset password",
        },
        revertSecondFactorAdditionTemplate = {
          ["$ref"] = "GoogleCloudIdentitytoolkitAdminV2EmailTemplate",
          description = "Email template for reverting second factor addition emails",
        },
        smtp = {
          ["$ref"] = "GoogleCloudIdentitytoolkitAdminV2Smtp",
          description = "Use a custom SMTP relay",
        },
        verifyEmailTemplate = {
          ["$ref"] = "GoogleCloudIdentitytoolkitAdminV2EmailTemplate",
          description = "Email template for verify email",
        },
      },
      type = "object",
    },
    GoogleCloudIdentitytoolkitAdminV2SendSms = {
      description = "Options for SMS sending.",
      id = "GoogleCloudIdentitytoolkitAdminV2SendSms",
      properties = {
        smsTemplate = {
          ["$ref"] = "GoogleCloudIdentitytoolkitAdminV2SmsTemplate",
          description = "Output only. The template to use when sending an SMS.",
          readOnly = true,
        },
        useDeviceLocale = {
          description = "Whether to use the accept_language header for SMS.",
          type = "boolean",
        },
      },
      type = "object",
    },
    GoogleCloudIdentitytoolkitAdminV2SignInConfig = {
      description = "Configuration related to local sign in methods.",
      id = "GoogleCloudIdentitytoolkitAdminV2SignInConfig",
      properties = {
        allowDuplicateEmails = {
          description = "Whether to allow more than one account to have the same email.",
          type = "boolean",
        },
        anonymous = {
          ["$ref"] = "GoogleCloudIdentitytoolkitAdminV2Anonymous",
          description = "Configuration options related to authenticating an anonymous user.",
        },
        email = {
          ["$ref"] = "GoogleCloudIdentitytoolkitAdminV2Email",
          description = "Configuration options related to authenticating a user by their email address.",
        },
        hashConfig = {
          ["$ref"] = "GoogleCloudIdentitytoolkitAdminV2HashConfig",
          description = "Output only. Hash config information.",
          readOnly = true,
        },
        phoneNumber = {
          ["$ref"] = "GoogleCloudIdentitytoolkitAdminV2PhoneNumber",
          description = "Configuration options related to authenticated a user by their phone number.",
        },
      },
      type = "object",
    },
    GoogleCloudIdentitytoolkitAdminV2SmsRegionConfig = {
      description = "Configures the regions where users are allowed to send verification SMS for the project or tenant. This is based on the calling code of the destination phone number.",
      id = "GoogleCloudIdentitytoolkitAdminV2SmsRegionConfig",
      properties = {
        allowByDefault = {
          ["$ref"] = "GoogleCloudIdentitytoolkitAdminV2AllowByDefault",
          description = "A policy of allowing SMS to every region by default and adding disallowed regions to a disallow list.",
        },
        allowlistOnly = {
          ["$ref"] = "GoogleCloudIdentitytoolkitAdminV2AllowlistOnly",
          description = "A policy of only allowing regions by explicitly adding them to an allowlist.",
        },
      },
      type = "object",
    },
    GoogleCloudIdentitytoolkitAdminV2SmsTemplate = {
      description = "The template to use when sending an SMS.",
      id = "GoogleCloudIdentitytoolkitAdminV2SmsTemplate",
      properties = {
        content = {
          description = "Output only. The SMS's content. Can contain the following placeholders which will be replaced with the appropriate values: %APP_NAME% - For Android or iOS apps, the app's display name. For web apps, the domain hosting the application. %LOGIN_CODE% - The OOB code being sent in the SMS.",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudIdentitytoolkitAdminV2Smtp = {
      description = "Configuration for SMTP relay",
      id = "GoogleCloudIdentitytoolkitAdminV2Smtp",
      properties = {
        host = {
          description = "SMTP relay host",
          type = "string",
        },
        password = {
          description = "SMTP relay password",
          type = "string",
        },
        port = {
          description = "SMTP relay port",
          format = "int32",
          type = "integer",
        },
        securityMode = {
          description = "SMTP security mode.",
          enum = {
            "SECURITY_MODE_UNSPECIFIED",
            "SSL",
            "START_TLS",
          },
          enumDescriptions = {
            "Default value. Do not use.",
            "SSL mode",
            "START_TLS mode",
          },
          type = "string",
        },
        senderEmail = {
          description = "Sender email for the SMTP relay",
          type = "string",
        },
        username = {
          description = "SMTP relay username",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudIdentitytoolkitAdminV2SpCertificate = {
      description = "The SP's certificate data for IDP to verify the SAMLRequest generated by the SP.",
      id = "GoogleCloudIdentitytoolkitAdminV2SpCertificate",
      properties = {
        expiresAt = {
          description = "Timestamp of the cert expiration instance.",
          format = "google-datetime",
          type = "string",
        },
        x509Certificate = {
          description = "Self-signed public certificate.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudIdentitytoolkitAdminV2SpConfig = {
      description = "The SAML SP (Service Provider) configuration when the project acts as the relying party to receive and accept an authentication assertion issued by a SAML identity provider.",
      id = "GoogleCloudIdentitytoolkitAdminV2SpConfig",
      properties = {
        callbackUri = {
          description = "Callback URI where responses from IDP are handled.",
          type = "string",
        },
        spCertificates = {
          description = "Output only. Public certificates generated by the server to verify the signature in SAMLRequest in the SP-initiated flow.",
          items = {
            ["$ref"] = "GoogleCloudIdentitytoolkitAdminV2SpCertificate",
          },
          readOnly = true,
          type = "array",
        },
        spEntityId = {
          description = "Unique identifier for all SAML entities.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudIdentitytoolkitAdminV2TemporaryQuota = {
      description = "Temporary quota increase / decrease",
      id = "GoogleCloudIdentitytoolkitAdminV2TemporaryQuota",
      properties = {
        quota = {
          description = "Corresponds to the 'refill_token_count' field in QuotaServer config",
          format = "int64",
          type = "string",
        },
        quotaDuration = {
          description = "How long this quota will be active for",
          format = "google-duration",
          type = "string",
        },
        startTime = {
          description = "When this quota will take affect",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudIdentitytoolkitAdminV2Tenant = {
      description = "A Tenant contains configuration for the tenant in a multi-tenant project.",
      id = "GoogleCloudIdentitytoolkitAdminV2Tenant",
      properties = {
        allowPasswordSignup = {
          description = "Whether to allow email/password user authentication.",
          type = "boolean",
        },
        autodeleteAnonymousUsers = {
          description = "Whether anonymous users will be auto-deleted after a period of 30 days.",
          type = "boolean",
        },
        client = {
          ["$ref"] = "GoogleCloudIdentitytoolkitAdminV2ClientPermissionConfig",
          description = "Options related to how clients making requests on behalf of a project should be configured.",
        },
        disableAuth = {
          description = "Whether authentication is disabled for the tenant. If true, the users under the disabled tenant are not allowed to sign-in. Admins of the disabled tenant are not able to manage its users.",
          type = "boolean",
        },
        displayName = {
          description = "Display name of the tenant.",
          type = "string",
        },
        emailPrivacyConfig = {
          ["$ref"] = "GoogleCloudIdentitytoolkitAdminV2EmailPrivacyConfig",
          description = "Configuration for settings related to email privacy and public visibility.",
        },
        enableAnonymousUser = {
          description = "Whether to enable anonymous user authentication.",
          type = "boolean",
        },
        enableEmailLinkSignin = {
          description = "Whether to enable email link user authentication.",
          type = "boolean",
        },
        hashConfig = {
          ["$ref"] = "GoogleCloudIdentitytoolkitAdminV2HashConfig",
          description = "Output only. Hash config information of a tenant for display on Pantheon. This can only be displayed on Pantheon to avoid the sensitive information to get accidentally leaked. Only returned in GetTenant response to restrict reading of this information. Requires firebaseauth.configs.getHashConfig permission on the agent project for returning this field.",
          readOnly = true,
        },
        inheritance = {
          ["$ref"] = "GoogleCloudIdentitytoolkitAdminV2Inheritance",
          description = "Specify the settings that the tenant could inherit.",
        },
        mfaConfig = {
          ["$ref"] = "GoogleCloudIdentitytoolkitAdminV2MultiFactorAuthConfig",
          description = "The tenant-level configuration of MFA options.",
        },
        monitoring = {
          ["$ref"] = "GoogleCloudIdentitytoolkitAdminV2MonitoringConfig",
          description = "Configuration related to monitoring project activity.",
        },
        name = {
          description = "Output only. Resource name of a tenant. For example: \"projects/{project-id}/tenants/{tenant-id}\"",
          readOnly = true,
          type = "string",
        },
        smsRegionConfig = {
          ["$ref"] = "GoogleCloudIdentitytoolkitAdminV2SmsRegionConfig",
          description = "Configures which regions are enabled for SMS verification code sending.",
        },
        testPhoneNumbers = {
          additionalProperties = {
            type = "string",
          },
          description = "A map of pairs that can be used for MFA. The phone number should be in E.164 format (https://www.itu.int/rec/T-REC-E.164/) and a maximum of 10 pairs can be added (error will be thrown once exceeded).",
          type = "object",
        },
      },
      type = "object",
    },
    GoogleCloudIdentitytoolkitAdminV2Trigger = {
      description = "Synchronous Cloud Function with HTTP Trigger",
      id = "GoogleCloudIdentitytoolkitAdminV2Trigger",
      properties = {
        functionUri = {
          description = "HTTP URI trigger for the Cloud Function.",
          type = "string",
        },
        updateTime = {
          description = "When the trigger was changed.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudIdentitytoolkitV2AutoRetrievalInfo = {
      description = "The information required to auto-retrieve an SMS.",
      id = "GoogleCloudIdentitytoolkitV2AutoRetrievalInfo",
      properties = {
        appSignatureHash = {
          description = "The Android app's signature hash for Google Play Service's SMS Retriever API.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudIdentitytoolkitV2FinalizeMfaEnrollmentRequest = {
      description = "Finishes enrolling a second factor for the user.",
      id = "GoogleCloudIdentitytoolkitV2FinalizeMfaEnrollmentRequest",
      properties = {
        displayName = {
          description = "Display name which is entered by users to distinguish between different second factors with same type or different type.",
          type = "string",
        },
        idToken = {
          description = "Required. ID token.",
          type = "string",
        },
        phoneVerificationInfo = {
          ["$ref"] = "GoogleCloudIdentitytoolkitV2FinalizeMfaPhoneRequestInfo",
          description = "Verification info to authorize sending an SMS for phone verification.",
        },
        tenantId = {
          description = "The ID of the Identity Platform tenant that the user enrolling MFA belongs to. If not set, the user belongs to the default Identity Platform project.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudIdentitytoolkitV2FinalizeMfaEnrollmentResponse = {
      description = "FinalizeMfaEnrollment response.",
      id = "GoogleCloudIdentitytoolkitV2FinalizeMfaEnrollmentResponse",
      properties = {
        idToken = {
          description = "ID token updated to reflect MFA enrollment.",
          type = "string",
        },
        phoneAuthInfo = {
          ["$ref"] = "GoogleCloudIdentitytoolkitV2FinalizeMfaPhoneResponseInfo",
          description = "Auxiliary auth info specific to phone auth.",
        },
        refreshToken = {
          description = "Refresh token updated to reflect MFA enrollment.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudIdentitytoolkitV2FinalizeMfaPhoneRequestInfo = {
      description = "Phone Verification info for a FinalizeMfa request.",
      id = "GoogleCloudIdentitytoolkitV2FinalizeMfaPhoneRequestInfo",
      properties = {
        androidVerificationProof = {
          description = "Android only. Uses for \"instant\" phone number verification though GmsCore.",
          type = "string",
        },
        code = {
          description = "User-entered verification code.",
          type = "string",
        },
        phoneNumber = {
          description = "Required if Android verification proof is presented.",
          type = "string",
        },
        sessionInfo = {
          description = "An opaque string that represents the enrollment session.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudIdentitytoolkitV2FinalizeMfaPhoneResponseInfo = {
      description = "Phone Verification info for a FinalizeMfa response.",
      id = "GoogleCloudIdentitytoolkitV2FinalizeMfaPhoneResponseInfo",
      properties = {
        androidVerificationProof = {
          description = "Android only. Long-lived replacement for valid code tied to android device.",
          type = "string",
        },
        androidVerificationProofExpireTime = {
          description = "Android only. Expiration time of verification proof in seconds.",
          format = "google-datetime",
          type = "string",
        },
        phoneNumber = {
          description = "For Android verification proof.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudIdentitytoolkitV2FinalizeMfaSignInRequest = {
      description = "Finalizes sign-in by verifying MFA challenge.",
      id = "GoogleCloudIdentitytoolkitV2FinalizeMfaSignInRequest",
      properties = {
        mfaPendingCredential = {
          description = "Required. Pending credential from first factor sign-in.",
          type = "string",
        },
        phoneVerificationInfo = {
          ["$ref"] = "GoogleCloudIdentitytoolkitV2FinalizeMfaPhoneRequestInfo",
          description = "Proof of completion of the SMS based MFA challenge.",
        },
        tenantId = {
          description = "The ID of the Identity Platform tenant the user is signing in to. If not set, the user will sign in to the default Identity Platform project.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudIdentitytoolkitV2FinalizeMfaSignInResponse = {
      description = "FinalizeMfaSignIn response.",
      id = "GoogleCloudIdentitytoolkitV2FinalizeMfaSignInResponse",
      properties = {
        idToken = {
          description = "ID token for the authenticated user.",
          type = "string",
        },
        phoneAuthInfo = {
          ["$ref"] = "GoogleCloudIdentitytoolkitV2FinalizeMfaPhoneResponseInfo",
          description = "Extra phone auth info, including android verification proof.",
        },
        refreshToken = {
          description = "Refresh token for the authenticated user.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudIdentitytoolkitV2StartMfaEnrollmentRequest = {
      description = "Sends MFA enrollment verification SMS for a user.",
      id = "GoogleCloudIdentitytoolkitV2StartMfaEnrollmentRequest",
      properties = {
        idToken = {
          description = "Required. User's ID token.",
          type = "string",
        },
        phoneEnrollmentInfo = {
          ["$ref"] = "GoogleCloudIdentitytoolkitV2StartMfaPhoneRequestInfo",
          description = "Verification info to authorize sending an SMS for phone verification.",
        },
        tenantId = {
          description = "The ID of the Identity Platform tenant that the user enrolling MFA belongs to. If not set, the user belongs to the default Identity Platform project.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudIdentitytoolkitV2StartMfaEnrollmentResponse = {
      description = "StartMfaEnrollment response.",
      id = "GoogleCloudIdentitytoolkitV2StartMfaEnrollmentResponse",
      properties = {
        phoneSessionInfo = {
          ["$ref"] = "GoogleCloudIdentitytoolkitV2StartMfaPhoneResponseInfo",
          description = "Verification info to authorize sending an SMS for phone verification.",
        },
      },
      type = "object",
    },
    GoogleCloudIdentitytoolkitV2StartMfaPhoneRequestInfo = {
      description = "App Verification info for a StartMfa request.",
      id = "GoogleCloudIdentitytoolkitV2StartMfaPhoneRequestInfo",
      properties = {
        autoRetrievalInfo = {
          ["$ref"] = "GoogleCloudIdentitytoolkitV2AutoRetrievalInfo",
          description = "Android only. Used by Google Play Services to identify the app for auto-retrieval.",
        },
        iosReceipt = {
          description = "iOS only. Receipt of successful app token validation with APNS.",
          type = "string",
        },
        iosSecret = {
          description = "iOS only. Secret delivered to iOS app via APNS.",
          type = "string",
        },
        phoneNumber = {
          description = "Required for enrollment. Phone number to be enrolled as MFA.",
          type = "string",
        },
        recaptchaToken = {
          description = "Web only. Recaptcha solution.",
          type = "string",
        },
        safetyNetToken = {
          description = "Android only. Used to assert application identity in place of a recaptcha token. A SafetyNet Token can be generated via the [SafetyNet Android Attestation API](https://developer.android.com/training/safetynet/attestation.html), with the Base64 encoding of the `phone_number` field as the nonce.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudIdentitytoolkitV2StartMfaPhoneResponseInfo = {
      description = "Phone Verification info for a StartMfa response.",
      id = "GoogleCloudIdentitytoolkitV2StartMfaPhoneResponseInfo",
      properties = {
        sessionInfo = {
          description = "An opaque string that represents the enrollment session.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudIdentitytoolkitV2StartMfaSignInRequest = {
      description = "Starts multi-factor sign-in by sending the multi-factor auth challenge.",
      id = "GoogleCloudIdentitytoolkitV2StartMfaSignInRequest",
      properties = {
        mfaEnrollmentId = {
          description = "Required. MFA enrollment id from the user's list of current MFA enrollments.",
          type = "string",
        },
        mfaPendingCredential = {
          description = "Required. Pending credential from first factor sign-in.",
          type = "string",
        },
        phoneSignInInfo = {
          ["$ref"] = "GoogleCloudIdentitytoolkitV2StartMfaPhoneRequestInfo",
          description = "Verification info to authorize sending an SMS for phone verification.",
        },
        tenantId = {
          description = "The ID of the Identity Platform tenant the user is signing in to. If not set, the user will sign in to the default Identity Platform project.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudIdentitytoolkitV2StartMfaSignInResponse = {
      description = "StartMfaSignIn response.",
      id = "GoogleCloudIdentitytoolkitV2StartMfaSignInResponse",
      properties = {
        phoneResponseInfo = {
          ["$ref"] = "GoogleCloudIdentitytoolkitV2StartMfaPhoneResponseInfo",
          description = "MultiFactor sign-in session information specific to SMS-type second factors. Along with the one-time code retrieved from the sent SMS, the contents of this session information should be passed to FinalizeMfaSignIn to complete the sign in.",
        },
      },
      type = "object",
    },
    GoogleCloudIdentitytoolkitV2WithdrawMfaRequest = {
      description = "Withdraws MFA.",
      id = "GoogleCloudIdentitytoolkitV2WithdrawMfaRequest",
      properties = {
        idToken = {
          description = "Required. User's ID token.",
          type = "string",
        },
        mfaEnrollmentId = {
          description = "Required. MFA enrollment id from a current MFA enrollment.",
          type = "string",
        },
        tenantId = {
          description = "The ID of the Identity Platform tenant that the user unenrolling MFA belongs to. If not set, the user belongs to the default Identity Platform project.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudIdentitytoolkitV2WithdrawMfaResponse = {
      description = "Withdraws MultiFactorAuth response.",
      id = "GoogleCloudIdentitytoolkitV2WithdrawMfaResponse",
      properties = {
        idToken = {
          description = "ID token updated to reflect removal of the second factor.",
          type = "string",
        },
        refreshToken = {
          description = "Refresh token updated to reflect removal of the second factor.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleIamV1AuditConfig = {
      description = "Specifies the audit configuration for a service. The configuration determines which permission types are logged, and what identities, if any, are exempted from logging. An AuditConfig must have one or more AuditLogConfigs. If there are AuditConfigs for both `allServices` and a specific service, the union of the two AuditConfigs is used for that service: the log_types specified in each AuditConfig are enabled, and the exempted_members in each AuditLogConfig are exempted. Example Policy with multiple AuditConfigs: { \"audit_configs\": [ { \"service\": \"allServices\", \"audit_log_configs\": [ { \"log_type\": \"DATA_READ\", \"exempted_members\": [ \"user:jose@example.com\" ] }, { \"log_type\": \"DATA_WRITE\" }, { \"log_type\": \"ADMIN_READ\" } ] }, { \"service\": \"sampleservice.googleapis.com\", \"audit_log_configs\": [ { \"log_type\": \"DATA_READ\" }, { \"log_type\": \"DATA_WRITE\", \"exempted_members\": [ \"user:aliya@example.com\" ] } ] } ] } For sampleservice, this policy enables DATA_READ, DATA_WRITE and ADMIN_READ logging. It also exempts `jose@example.com` from DATA_READ logging, and `aliya@example.com` from DATA_WRITE logging.",
      id = "GoogleIamV1AuditConfig",
      properties = {
        auditLogConfigs = {
          description = "The configuration for logging of each type of permission.",
          items = {
            ["$ref"] = "GoogleIamV1AuditLogConfig",
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
    GoogleIamV1AuditLogConfig = {
      description = "Provides the configuration for logging a type of permissions. Example: { \"audit_log_configs\": [ { \"log_type\": \"DATA_READ\", \"exempted_members\": [ \"user:jose@example.com\" ] }, { \"log_type\": \"DATA_WRITE\" } ] } This enables 'DATA_READ' and 'DATA_WRITE' logging, while exempting jose@example.com from DATA_READ logging.",
      id = "GoogleIamV1AuditLogConfig",
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
    GoogleIamV1Binding = {
      description = "Associates `members`, or principals, with a `role`.",
      id = "GoogleIamV1Binding",
      properties = {
        condition = {
          ["$ref"] = "GoogleTypeExpr",
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
    GoogleIamV1GetIamPolicyRequest = {
      description = "Request message for `GetIamPolicy` method.",
      id = "GoogleIamV1GetIamPolicyRequest",
      properties = {
        options = {
          ["$ref"] = "GoogleIamV1GetPolicyOptions",
          description = "OPTIONAL: A `GetPolicyOptions` object for specifying options to `GetIamPolicy`.",
        },
      },
      type = "object",
    },
    GoogleIamV1GetPolicyOptions = {
      description = "Encapsulates settings provided to GetIamPolicy.",
      id = "GoogleIamV1GetPolicyOptions",
      properties = {
        requestedPolicyVersion = {
          description = "Optional. The maximum policy version that will be used to format the policy. Valid values are 0, 1, and 3. Requests specifying an invalid value will be rejected. Requests for policies with any conditional role bindings must specify version 3. Policies with no conditional role bindings may specify any valid value or leave the field unset. The policy in the response might use the policy version that you specified, or it might use a lower policy version. For example, if you specify version 3, but the policy has no conditional role bindings, the response uses version 1. To learn which resources support conditions in their IAM policies, see the [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    GoogleIamV1Policy = {
      description = "An Identity and Access Management (IAM) policy, which specifies access controls for Google Cloud resources. A `Policy` is a collection of `bindings`. A `binding` binds one or more `members`, or principals, to a single `role`. Principals can be user accounts, service accounts, Google groups, and domains (such as G Suite). A `role` is a named list of permissions; each `role` can be an IAM predefined role or a user-created custom role. For some types of Google Cloud resources, a `binding` can also specify a `condition`, which is a logical expression that allows access to a resource only if the expression evaluates to `true`. A condition can add constraints based on attributes of the request, the resource, or both. To learn which resources support conditions in their IAM policies, see the [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies). **JSON example:** { \"bindings\": [ { \"role\": \"roles/resourcemanager.organizationAdmin\", \"members\": [ \"user:mike@example.com\", \"group:admins@example.com\", \"domain:google.com\", \"serviceAccount:my-project-id@appspot.gserviceaccount.com\" ] }, { \"role\": \"roles/resourcemanager.organizationViewer\", \"members\": [ \"user:eve@example.com\" ], \"condition\": { \"title\": \"expirable access\", \"description\": \"Does not grant access after Sep 2020\", \"expression\": \"request.time < timestamp('2020-10-01T00:00:00.000Z')\", } } ], \"etag\": \"BwWWja0YfJA=\", \"version\": 3 } **YAML example:** bindings: - members: - user:mike@example.com - group:admins@example.com - domain:google.com - serviceAccount:my-project-id@appspot.gserviceaccount.com role: roles/resourcemanager.organizationAdmin - members: - user:eve@example.com role: roles/resourcemanager.organizationViewer condition: title: expirable access description: Does not grant access after Sep 2020 expression: request.time < timestamp('2020-10-01T00:00:00.000Z') etag: BwWWja0YfJA= version: 3 For a description of IAM and its features, see the [IAM documentation](https://cloud.google.com/iam/docs/).",
      id = "GoogleIamV1Policy",
      properties = {
        auditConfigs = {
          description = "Specifies cloud audit logging configuration for this policy.",
          items = {
            ["$ref"] = "GoogleIamV1AuditConfig",
          },
          type = "array",
        },
        bindings = {
          description = "Associates a list of `members`, or principals, with a `role`. Optionally, may specify a `condition` that determines how and when the `bindings` are applied. Each of the `bindings` must contain at least one principal. The `bindings` in a `Policy` can refer to up to 1,500 principals; up to 250 of these principals can be Google groups. Each occurrence of a principal counts towards these limits. For example, if the `bindings` grant 50 different roles to `user:alice@example.com`, and not to any other principal, then you can add another 1,450 principals to the `bindings` in the `Policy`.",
          items = {
            ["$ref"] = "GoogleIamV1Binding",
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
    GoogleIamV1SetIamPolicyRequest = {
      description = "Request message for `SetIamPolicy` method.",
      id = "GoogleIamV1SetIamPolicyRequest",
      properties = {
        policy = {
          ["$ref"] = "GoogleIamV1Policy",
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
    GoogleIamV1TestIamPermissionsRequest = {
      description = "Request message for `TestIamPermissions` method.",
      id = "GoogleIamV1TestIamPermissionsRequest",
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
    GoogleIamV1TestIamPermissionsResponse = {
      description = "Response message for `TestIamPermissions` method.",
      id = "GoogleIamV1TestIamPermissionsResponse",
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
    GoogleProtobufEmpty = {
      description = "A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }",
      id = "GoogleProtobufEmpty",
      properties = {},
      type = "object",
    },
    GoogleTypeExpr = {
      description = "Represents a textual expression in the Common Expression Language (CEL) syntax. CEL is a C-like expression language. The syntax and semantics of CEL are documented at https://github.com/google/cel-spec. Example (Comparison): title: \"Summary size limit\" description: \"Determines if a summary is less than 100 chars\" expression: \"document.summary.size() < 100\" Example (Equality): title: \"Requestor is owner\" description: \"Determines if requestor is the document owner\" expression: \"document.owner == request.auth.claims.email\" Example (Logic): title: \"Public documents\" description: \"Determine whether the document should be publicly visible\" expression: \"document.type != 'private' && document.type != 'internal'\" Example (Data Manipulation): title: \"Notification string\" description: \"Create a notification string with a timestamp.\" expression: \"'New message received at ' + string(document.create_time)\" The exact variables and functions that may be referenced within an expression are determined by the service that evaluates it. See the service documentation for additional information.",
      id = "GoogleTypeExpr",
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
  },
  servicePath = "",
  title = "Identity Toolkit API",
  version = "v2",
  version_module = true,
}