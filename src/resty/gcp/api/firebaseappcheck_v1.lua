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
  baseUrl = "https://firebaseappcheck.googleapis.com/",
  batchPath = "batch",
  canonicalName = "Firebaseappcheck",
  description = "Firebase App Check works alongside other Firebase services to help protect your backend resources from abuse, such as billing fraud or phishing.",
  discoveryVersion = "v1",
  documentationLink = "https://firebase.google.com/docs/app-check",
  fullyEncodeReservedExpansion = true,
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "firebaseappcheck:v1",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://firebaseappcheck.mtls.googleapis.com/",
  name = "firebaseappcheck",
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
    jwks = {
      methods = {
        get = {
          description = "Returns a public JWK set as specified by [RFC 7517](https://tools.ietf.org/html/rfc7517) that can be used to verify App Check tokens. Exactly one of the public keys in the returned set will successfully validate any App Check token that is currently valid.",
          flatPath = "v1/jwks",
          httpMethod = "GET",
          id = "firebaseappcheck.jwks.get",
          parameterOrder = {
            "name",
          },
          parameters = {
            name = {
              description = "Required. The relative resource name to the public JWK set. Must always be exactly the string `jwks`.",
              location = "path",
              pattern = "^jwks$",
              required = true,
              type = "string",
            },
          },
          path = "v1/{+name}",
          response = {
            ["$ref"] = "GoogleFirebaseAppcheckV1PublicJwkSet",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/firebase",
          },
        },
      },
    },
    projects = {
      resources = {
        apps = {
          methods = {
            exchangeAppAttestAssertion = {
              description = "Accepts an App Attest assertion and an artifact previously obtained from ExchangeAppAttestAttestation and verifies those with Apple. If valid, returns an AppCheckToken.",
              flatPath = "v1/projects/{projectsId}/apps/{appsId}:exchangeAppAttestAssertion",
              httpMethod = "POST",
              id = "firebaseappcheck.projects.apps.exchangeAppAttestAssertion",
              parameterOrder = {
                "app",
              },
              parameters = {
                app = {
                  description = "Required. The relative resource name of the iOS app, in the format: ``` projects/{project_number}/apps/{app_id} ``` If necessary, the `project_number` element can be replaced with the project ID of the Firebase project. Learn more about using project identifiers in Google's [AIP 2510](https://google.aip.dev/cloud/2510) standard.",
                  location = "path",
                  pattern = "^projects/[^/]+/apps/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+app}:exchangeAppAttestAssertion",
              request = {
                ["$ref"] = "GoogleFirebaseAppcheckV1ExchangeAppAttestAssertionRequest",
              },
              response = {
                ["$ref"] = "GoogleFirebaseAppcheckV1AppCheckToken",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/firebase",
              },
            },
            exchangeAppAttestAttestation = {
              description = "Accepts an App Attest CBOR attestation and verifies it with Apple using your preconfigured team and bundle IDs. If valid, returns an attestation artifact that can later be exchanged for an AppCheckToken using ExchangeAppAttestAssertion. For convenience and performance, this method's response object will also contain an AppCheckToken (if the verification is successful).",
              flatPath = "v1/projects/{projectsId}/apps/{appsId}:exchangeAppAttestAttestation",
              httpMethod = "POST",
              id = "firebaseappcheck.projects.apps.exchangeAppAttestAttestation",
              parameterOrder = {
                "app",
              },
              parameters = {
                app = {
                  description = "Required. The relative resource name of the iOS app, in the format: ``` projects/{project_number}/apps/{app_id} ``` If necessary, the `project_number` element can be replaced with the project ID of the Firebase project. Learn more about using project identifiers in Google's [AIP 2510](https://google.aip.dev/cloud/2510) standard.",
                  location = "path",
                  pattern = "^projects/[^/]+/apps/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+app}:exchangeAppAttestAttestation",
              request = {
                ["$ref"] = "GoogleFirebaseAppcheckV1ExchangeAppAttestAttestationRequest",
              },
              response = {
                ["$ref"] = "GoogleFirebaseAppcheckV1ExchangeAppAttestAttestationResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/firebase",
              },
            },
            exchangeCustomToken = {
              description = "Validates a custom token signed using your project's Admin SDK service account credentials. If valid, returns an AppCheckToken.",
              flatPath = "v1/projects/{projectsId}/apps/{appsId}:exchangeCustomToken",
              httpMethod = "POST",
              id = "firebaseappcheck.projects.apps.exchangeCustomToken",
              parameterOrder = {
                "app",
              },
              parameters = {
                app = {
                  description = "Required. The relative resource name of the app, in the format: ``` projects/{project_number}/apps/{app_id} ``` If necessary, the `project_number` element can be replaced with the project ID of the Firebase project. Learn more about using project identifiers in Google's [AIP 2510](https://google.aip.dev/cloud/2510) standard.",
                  location = "path",
                  pattern = "^projects/[^/]+/apps/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+app}:exchangeCustomToken",
              request = {
                ["$ref"] = "GoogleFirebaseAppcheckV1ExchangeCustomTokenRequest",
              },
              response = {
                ["$ref"] = "GoogleFirebaseAppcheckV1AppCheckToken",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/firebase",
              },
            },
            exchangeDebugToken = {
              description = "Validates a debug token secret that you have previously created using CreateDebugToken. If valid, returns an AppCheckToken. Note that a restrictive quota is enforced on this method to prevent accidental exposure of the app to abuse.",
              flatPath = "v1/projects/{projectsId}/apps/{appsId}:exchangeDebugToken",
              httpMethod = "POST",
              id = "firebaseappcheck.projects.apps.exchangeDebugToken",
              parameterOrder = {
                "app",
              },
              parameters = {
                app = {
                  description = "Required. The relative resource name of the app, in the format: ``` projects/{project_number}/apps/{app_id} ``` If necessary, the `project_number` element can be replaced with the project ID of the Firebase project. Learn more about using project identifiers in Google's [AIP 2510](https://google.aip.dev/cloud/2510) standard.",
                  location = "path",
                  pattern = "^projects/[^/]+/apps/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+app}:exchangeDebugToken",
              request = {
                ["$ref"] = "GoogleFirebaseAppcheckV1ExchangeDebugTokenRequest",
              },
              response = {
                ["$ref"] = "GoogleFirebaseAppcheckV1AppCheckToken",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/firebase",
              },
            },
            exchangeDeviceCheckToken = {
              description = "Accepts a [`device_token`](https://developer.apple.com/documentation/devicecheck/dcdevice) issued by DeviceCheck, and attempts to validate it with Apple. If valid, returns an AppCheckToken.",
              flatPath = "v1/projects/{projectsId}/apps/{appsId}:exchangeDeviceCheckToken",
              httpMethod = "POST",
              id = "firebaseappcheck.projects.apps.exchangeDeviceCheckToken",
              parameterOrder = {
                "app",
              },
              parameters = {
                app = {
                  description = "Required. The relative resource name of the iOS app, in the format: ``` projects/{project_number}/apps/{app_id} ``` If necessary, the `project_number` element can be replaced with the project ID of the Firebase project. Learn more about using project identifiers in Google's [AIP 2510](https://google.aip.dev/cloud/2510) standard.",
                  location = "path",
                  pattern = "^projects/[^/]+/apps/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+app}:exchangeDeviceCheckToken",
              request = {
                ["$ref"] = "GoogleFirebaseAppcheckV1ExchangeDeviceCheckTokenRequest",
              },
              response = {
                ["$ref"] = "GoogleFirebaseAppcheckV1AppCheckToken",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/firebase",
              },
            },
            exchangePlayIntegrityToken = {
              description = "Validates an [integrity verdict response token from Play Integrity](https://developer.android.com/google/play/integrity/verdict#decrypt-verify). If valid, returns an AppCheckToken.",
              flatPath = "v1/projects/{projectsId}/apps/{appsId}:exchangePlayIntegrityToken",
              httpMethod = "POST",
              id = "firebaseappcheck.projects.apps.exchangePlayIntegrityToken",
              parameterOrder = {
                "app",
              },
              parameters = {
                app = {
                  description = "Required. The relative resource name of the Android app, in the format: ``` projects/{project_number}/apps/{app_id} ``` If necessary, the `project_number` element can be replaced with the project ID of the Firebase project. Learn more about using project identifiers in Google's [AIP 2510](https://google.aip.dev/cloud/2510) standard.",
                  location = "path",
                  pattern = "^projects/[^/]+/apps/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+app}:exchangePlayIntegrityToken",
              request = {
                ["$ref"] = "GoogleFirebaseAppcheckV1ExchangePlayIntegrityTokenRequest",
              },
              response = {
                ["$ref"] = "GoogleFirebaseAppcheckV1AppCheckToken",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/firebase",
              },
            },
            exchangeRecaptchaEnterpriseToken = {
              description = "Validates a [reCAPTCHA Enterprise response token](https://cloud.google.com/recaptcha-enterprise/docs/create-assessment#retrieve_token). If valid, returns an AppCheckToken.",
              flatPath = "v1/projects/{projectsId}/apps/{appsId}:exchangeRecaptchaEnterpriseToken",
              httpMethod = "POST",
              id = "firebaseappcheck.projects.apps.exchangeRecaptchaEnterpriseToken",
              parameterOrder = {
                "app",
              },
              parameters = {
                app = {
                  description = "Required. The relative resource name of the web app, in the format: ``` projects/{project_number}/apps/{app_id} ``` If necessary, the `project_number` element can be replaced with the project ID of the Firebase project. Learn more about using project identifiers in Google's [AIP 2510](https://google.aip.dev/cloud/2510) standard.",
                  location = "path",
                  pattern = "^projects/[^/]+/apps/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+app}:exchangeRecaptchaEnterpriseToken",
              request = {
                ["$ref"] = "GoogleFirebaseAppcheckV1ExchangeRecaptchaEnterpriseTokenRequest",
              },
              response = {
                ["$ref"] = "GoogleFirebaseAppcheckV1AppCheckToken",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/firebase",
              },
            },
            exchangeRecaptchaV3Token = {
              description = "Validates a [reCAPTCHA v3 response token](https://developers.google.com/recaptcha/docs/v3). If valid, returns an AppCheckToken.",
              flatPath = "v1/projects/{projectsId}/apps/{appsId}:exchangeRecaptchaV3Token",
              httpMethod = "POST",
              id = "firebaseappcheck.projects.apps.exchangeRecaptchaV3Token",
              parameterOrder = {
                "app",
              },
              parameters = {
                app = {
                  description = "Required. The relative resource name of the web app, in the format: ``` projects/{project_number}/apps/{app_id} ``` If necessary, the `project_number` element can be replaced with the project ID of the Firebase project. Learn more about using project identifiers in Google's [AIP 2510](https://google.aip.dev/cloud/2510) standard.",
                  location = "path",
                  pattern = "^projects/[^/]+/apps/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+app}:exchangeRecaptchaV3Token",
              request = {
                ["$ref"] = "GoogleFirebaseAppcheckV1ExchangeRecaptchaV3TokenRequest",
              },
              response = {
                ["$ref"] = "GoogleFirebaseAppcheckV1AppCheckToken",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/firebase",
              },
            },
            exchangeSafetyNetToken = {
              description = "Validates a [SafetyNet token](https://developer.android.com/training/safetynet/attestation#request-attestation-step). If valid, returns an AppCheckToken.",
              flatPath = "v1/projects/{projectsId}/apps/{appsId}:exchangeSafetyNetToken",
              httpMethod = "POST",
              id = "firebaseappcheck.projects.apps.exchangeSafetyNetToken",
              parameterOrder = {
                "app",
              },
              parameters = {
                app = {
                  description = "Required. The relative resource name of the Android app, in the format: ``` projects/{project_number}/apps/{app_id} ``` If necessary, the `project_number` element can be replaced with the project ID of the Firebase project. Learn more about using project identifiers in Google's [AIP 2510](https://google.aip.dev/cloud/2510) standard.",
                  location = "path",
                  pattern = "^projects/[^/]+/apps/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+app}:exchangeSafetyNetToken",
              request = {
                ["$ref"] = "GoogleFirebaseAppcheckV1ExchangeSafetyNetTokenRequest",
              },
              response = {
                ["$ref"] = "GoogleFirebaseAppcheckV1AppCheckToken",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/firebase",
              },
            },
            generateAppAttestChallenge = {
              description = "Generates a challenge that protects the integrity of an immediately following call to ExchangeAppAttestAttestation or ExchangeAppAttestAssertion. A challenge should not be reused for multiple calls.",
              flatPath = "v1/projects/{projectsId}/apps/{appsId}:generateAppAttestChallenge",
              httpMethod = "POST",
              id = "firebaseappcheck.projects.apps.generateAppAttestChallenge",
              parameterOrder = {
                "app",
              },
              parameters = {
                app = {
                  description = "Required. The relative resource name of the iOS app, in the format: ``` projects/{project_number}/apps/{app_id} ``` If necessary, the `project_number` element can be replaced with the project ID of the Firebase project. Learn more about using project identifiers in Google's [AIP 2510](https://google.aip.dev/cloud/2510) standard.",
                  location = "path",
                  pattern = "^projects/[^/]+/apps/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+app}:generateAppAttestChallenge",
              request = {
                ["$ref"] = "GoogleFirebaseAppcheckV1GenerateAppAttestChallengeRequest",
              },
              response = {
                ["$ref"] = "GoogleFirebaseAppcheckV1GenerateAppAttestChallengeResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/firebase",
              },
            },
            generatePlayIntegrityChallenge = {
              description = "Generates a challenge that protects the integrity of an immediately following integrity verdict request to the Play Integrity API. The next call to ExchangePlayIntegrityToken using the resulting integrity token will verify the presence and validity of the challenge. A challenge should not be reused for multiple calls.",
              flatPath = "v1/projects/{projectsId}/apps/{appsId}:generatePlayIntegrityChallenge",
              httpMethod = "POST",
              id = "firebaseappcheck.projects.apps.generatePlayIntegrityChallenge",
              parameterOrder = {
                "app",
              },
              parameters = {
                app = {
                  description = "Required. The relative resource name of the app, in the format: ``` projects/{project_number}/apps/{app_id} ``` If necessary, the `project_number` element can be replaced with the project ID of the Firebase project. Learn more about using project identifiers in Google's [AIP 2510](https://google.aip.dev/cloud/2510) standard.",
                  location = "path",
                  pattern = "^projects/[^/]+/apps/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+app}:generatePlayIntegrityChallenge",
              request = {
                ["$ref"] = "GoogleFirebaseAppcheckV1GeneratePlayIntegrityChallengeRequest",
              },
              response = {
                ["$ref"] = "GoogleFirebaseAppcheckV1GeneratePlayIntegrityChallengeResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/firebase",
              },
            },
          },
          resources = {
            appAttestConfig = {
              methods = {
                batchGet = {
                  description = "Atomically gets the AppAttestConfigs for the specified list of apps.",
                  flatPath = "v1/projects/{projectsId}/apps/-/appAttestConfig:batchGet",
                  httpMethod = "GET",
                  id = "firebaseappcheck.projects.apps.appAttestConfig.batchGet",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    names = {
                      description = "Required. The relative resource names of the AppAttestConfigs to retrieve, in the format ``` projects/{project_number}/apps/{app_id}/appAttestConfig ``` A maximum of 100 objects can be retrieved in a batch.",
                      location = "query",
                      repeated = true,
                      type = "string",
                    },
                    parent = {
                      description = "Required. The parent project name shared by all AppAttestConfigs being retrieved, in the format ``` projects/{project_number} ``` The parent collection in the `name` field of any resource being retrieved must match this field, or the entire batch fails.",
                      location = "path",
                      pattern = "^projects/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/apps/-/appAttestConfig:batchGet",
                  response = {
                    ["$ref"] = "GoogleFirebaseAppcheckV1BatchGetAppAttestConfigsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/firebase",
                  },
                },
                get = {
                  description = "Gets the AppAttestConfig for the specified app.",
                  flatPath = "v1/projects/{projectsId}/apps/{appsId}/appAttestConfig",
                  httpMethod = "GET",
                  id = "firebaseappcheck.projects.apps.appAttestConfig.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The relative resource name of the AppAttestConfig, in the format: ``` projects/{project_number}/apps/{app_id}/appAttestConfig ```",
                      location = "path",
                      pattern = "^projects/[^/]+/apps/[^/]+/appAttestConfig$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "GoogleFirebaseAppcheckV1AppAttestConfig",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/firebase",
                  },
                },
                patch = {
                  description = "Updates the AppAttestConfig for the specified app. While this configuration is incomplete or invalid, the app will be unable to exchange AppAttest tokens for App Check tokens.",
                  flatPath = "v1/projects/{projectsId}/apps/{appsId}/appAttestConfig",
                  httpMethod = "PATCH",
                  id = "firebaseappcheck.projects.apps.appAttestConfig.patch",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The relative resource name of the App Attest configuration object, in the format: ``` projects/{project_number}/apps/{app_id}/appAttestConfig ```",
                      location = "path",
                      pattern = "^projects/[^/]+/apps/[^/]+/appAttestConfig$",
                      required = true,
                      type = "string",
                    },
                    updateMask = {
                      description = "Required. A comma-separated list of names of fields in the AppAttestConfig Gets to update. Example: `token_ttl`.",
                      format = "google-fieldmask",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  request = {
                    ["$ref"] = "GoogleFirebaseAppcheckV1AppAttestConfig",
                  },
                  response = {
                    ["$ref"] = "GoogleFirebaseAppcheckV1AppAttestConfig",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/firebase",
                  },
                },
              },
            },
            debugTokens = {
              methods = {
                create = {
                  description = "Creates a new DebugToken for the specified app. For security reasons, after the creation operation completes, the `token` field cannot be updated or retrieved, but you can revoke the debug token using DeleteDebugToken. Each app can have a maximum of 20 debug tokens.",
                  flatPath = "v1/projects/{projectsId}/apps/{appsId}/debugTokens",
                  httpMethod = "POST",
                  id = "firebaseappcheck.projects.apps.debugTokens.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    parent = {
                      description = "Required. The relative resource name of the parent app in which the specified DebugToken will be created, in the format: ``` projects/{project_number}/apps/{app_id} ```",
                      location = "path",
                      pattern = "^projects/[^/]+/apps/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/debugTokens",
                  request = {
                    ["$ref"] = "GoogleFirebaseAppcheckV1DebugToken",
                  },
                  response = {
                    ["$ref"] = "GoogleFirebaseAppcheckV1DebugToken",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/firebase",
                  },
                },
                delete = {
                  description = "Deletes the specified DebugToken. A deleted debug token cannot be used to exchange for an App Check token. Use this method when you suspect the secret `token` has been compromised or when you no longer need the debug token.",
                  flatPath = "v1/projects/{projectsId}/apps/{appsId}/debugTokens/{debugTokensId}",
                  httpMethod = "DELETE",
                  id = "firebaseappcheck.projects.apps.debugTokens.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The relative resource name of the DebugToken to delete, in the format: ``` projects/{project_number}/apps/{app_id}/debugTokens/{debug_token_id} ```",
                      location = "path",
                      pattern = "^projects/[^/]+/apps/[^/]+/debugTokens/[^/]+$",
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
                    "https://www.googleapis.com/auth/firebase",
                  },
                },
                get = {
                  description = "Gets the specified DebugToken. For security reasons, the `token` field is never populated in the response.",
                  flatPath = "v1/projects/{projectsId}/apps/{appsId}/debugTokens/{debugTokensId}",
                  httpMethod = "GET",
                  id = "firebaseappcheck.projects.apps.debugTokens.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The relative resource name of the debug token, in the format: ``` projects/{project_number}/apps/{app_id}/debugTokens/{debug_token_id} ```",
                      location = "path",
                      pattern = "^projects/[^/]+/apps/[^/]+/debugTokens/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "GoogleFirebaseAppcheckV1DebugToken",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/firebase",
                  },
                },
                list = {
                  description = "Lists all DebugTokens for the specified app. For security reasons, the `token` field is never populated in the response.",
                  flatPath = "v1/projects/{projectsId}/apps/{appsId}/debugTokens",
                  httpMethod = "GET",
                  id = "firebaseappcheck.projects.apps.debugTokens.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    pageSize = {
                      description = "The maximum number of DebugTokens to return in the response. Note that an app can have at most 20 debug tokens. The server may return fewer than this at its own discretion. If no value is specified (or too large a value is specified), the server will impose its own limit.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "Token returned from a previous call to ListDebugTokens indicating where in the set of DebugTokens to resume listing. Provide this to retrieve the subsequent page. When paginating, all other parameters provided to ListDebugTokens must match the call that provided the page token; if they do not match, the result is undefined.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The relative resource name of the parent app for which to list each associated DebugToken, in the format: ``` projects/{project_number}/apps/{app_id} ```",
                      location = "path",
                      pattern = "^projects/[^/]+/apps/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/debugTokens",
                  response = {
                    ["$ref"] = "GoogleFirebaseAppcheckV1ListDebugTokensResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/firebase",
                  },
                },
                patch = {
                  description = "Updates the specified DebugToken. For security reasons, the `token` field cannot be updated, nor will it be populated in the response, but you can revoke the debug token using DeleteDebugToken.",
                  flatPath = "v1/projects/{projectsId}/apps/{appsId}/debugTokens/{debugTokensId}",
                  httpMethod = "PATCH",
                  id = "firebaseappcheck.projects.apps.debugTokens.patch",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The relative resource name of the debug token, in the format: ``` projects/{project_number}/apps/{app_id}/debugTokens/{debug_token_id} ```",
                      location = "path",
                      pattern = "^projects/[^/]+/apps/[^/]+/debugTokens/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    updateMask = {
                      description = "Required. A comma-separated list of names of fields in the DebugToken to update. Example: `display_name`.",
                      format = "google-fieldmask",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  request = {
                    ["$ref"] = "GoogleFirebaseAppcheckV1DebugToken",
                  },
                  response = {
                    ["$ref"] = "GoogleFirebaseAppcheckV1DebugToken",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/firebase",
                  },
                },
              },
            },
            deviceCheckConfig = {
              methods = {
                batchGet = {
                  description = "Atomically gets the DeviceCheckConfigs for the specified list of apps. For security reasons, the `private_key` field is never populated in the response.",
                  flatPath = "v1/projects/{projectsId}/apps/-/deviceCheckConfig:batchGet",
                  httpMethod = "GET",
                  id = "firebaseappcheck.projects.apps.deviceCheckConfig.batchGet",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    names = {
                      description = "Required. The relative resource names of the DeviceCheckConfigs to retrieve, in the format ``` projects/{project_number}/apps/{app_id}/deviceCheckConfig ``` A maximum of 100 objects can be retrieved in a batch.",
                      location = "query",
                      repeated = true,
                      type = "string",
                    },
                    parent = {
                      description = "Required. The parent project name shared by all DeviceCheckConfigs being retrieved, in the format ``` projects/{project_number} ``` The parent collection in the `name` field of any resource being retrieved must match this field, or the entire batch fails.",
                      location = "path",
                      pattern = "^projects/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/apps/-/deviceCheckConfig:batchGet",
                  response = {
                    ["$ref"] = "GoogleFirebaseAppcheckV1BatchGetDeviceCheckConfigsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/firebase",
                  },
                },
                get = {
                  description = "Gets the DeviceCheckConfig for the specified app. For security reasons, the `private_key` field is never populated in the response.",
                  flatPath = "v1/projects/{projectsId}/apps/{appsId}/deviceCheckConfig",
                  httpMethod = "GET",
                  id = "firebaseappcheck.projects.apps.deviceCheckConfig.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The relative resource name of the DeviceCheckConfig, in the format: ``` projects/{project_number}/apps/{app_id}/deviceCheckConfig ```",
                      location = "path",
                      pattern = "^projects/[^/]+/apps/[^/]+/deviceCheckConfig$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "GoogleFirebaseAppcheckV1DeviceCheckConfig",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/firebase",
                  },
                },
                patch = {
                  description = "Updates the DeviceCheckConfig for the specified app. While this configuration is incomplete or invalid, the app will be unable to exchange DeviceCheck tokens for App Check tokens. For security reasons, the `private_key` field is never populated in the response.",
                  flatPath = "v1/projects/{projectsId}/apps/{appsId}/deviceCheckConfig",
                  httpMethod = "PATCH",
                  id = "firebaseappcheck.projects.apps.deviceCheckConfig.patch",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The relative resource name of the DeviceCheck configuration object, in the format: ``` projects/{project_number}/apps/{app_id}/deviceCheckConfig ```",
                      location = "path",
                      pattern = "^projects/[^/]+/apps/[^/]+/deviceCheckConfig$",
                      required = true,
                      type = "string",
                    },
                    updateMask = {
                      description = "Required. A comma-separated list of names of fields in the DeviceCheckConfig Gets to update. Example: `key_id,private_key`.",
                      format = "google-fieldmask",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  request = {
                    ["$ref"] = "GoogleFirebaseAppcheckV1DeviceCheckConfig",
                  },
                  response = {
                    ["$ref"] = "GoogleFirebaseAppcheckV1DeviceCheckConfig",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/firebase",
                  },
                },
              },
            },
            playIntegrityConfig = {
              methods = {
                batchGet = {
                  description = "Atomically gets the PlayIntegrityConfigs for the specified list of apps.",
                  flatPath = "v1/projects/{projectsId}/apps/-/playIntegrityConfig:batchGet",
                  httpMethod = "GET",
                  id = "firebaseappcheck.projects.apps.playIntegrityConfig.batchGet",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    names = {
                      description = "Required. The relative resource names of the PlayIntegrityConfigs to retrieve, in the format ``` projects/{project_number}/apps/{app_id}/playIntegrityConfig ``` A maximum of 100 objects can be retrieved in a batch.",
                      location = "query",
                      repeated = true,
                      type = "string",
                    },
                    parent = {
                      description = "Required. The parent project name shared by all PlayIntegrityConfigs being retrieved, in the format ``` projects/{project_number} ``` The parent collection in the `name` field of any resource being retrieved must match this field, or the entire batch fails.",
                      location = "path",
                      pattern = "^projects/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/apps/-/playIntegrityConfig:batchGet",
                  response = {
                    ["$ref"] = "GoogleFirebaseAppcheckV1BatchGetPlayIntegrityConfigsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/firebase",
                  },
                },
                get = {
                  description = "Gets the PlayIntegrityConfig for the specified app.",
                  flatPath = "v1/projects/{projectsId}/apps/{appsId}/playIntegrityConfig",
                  httpMethod = "GET",
                  id = "firebaseappcheck.projects.apps.playIntegrityConfig.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The relative resource name of the PlayIntegrityConfig, in the format: ``` projects/{project_number}/apps/{app_id}/playIntegrityConfig ```",
                      location = "path",
                      pattern = "^projects/[^/]+/apps/[^/]+/playIntegrityConfig$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "GoogleFirebaseAppcheckV1PlayIntegrityConfig",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/firebase",
                  },
                },
                patch = {
                  description = "Updates the PlayIntegrityConfig for the specified app. While this configuration is incomplete or invalid, the app will be unable to exchange Play Integrity tokens for App Check tokens.",
                  flatPath = "v1/projects/{projectsId}/apps/{appsId}/playIntegrityConfig",
                  httpMethod = "PATCH",
                  id = "firebaseappcheck.projects.apps.playIntegrityConfig.patch",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The relative resource name of the Play Integrity configuration object, in the format: ``` projects/{project_number}/apps/{app_id}/playIntegrityConfig ```",
                      location = "path",
                      pattern = "^projects/[^/]+/apps/[^/]+/playIntegrityConfig$",
                      required = true,
                      type = "string",
                    },
                    updateMask = {
                      description = "Required. A comma-separated list of names of fields in the PlayIntegrityConfig Gets to update. Example: `token_ttl`.",
                      format = "google-fieldmask",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  request = {
                    ["$ref"] = "GoogleFirebaseAppcheckV1PlayIntegrityConfig",
                  },
                  response = {
                    ["$ref"] = "GoogleFirebaseAppcheckV1PlayIntegrityConfig",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/firebase",
                  },
                },
              },
            },
            recaptchaEnterpriseConfig = {
              methods = {
                batchGet = {
                  description = "Atomically gets the RecaptchaEnterpriseConfigs for the specified list of apps.",
                  flatPath = "v1/projects/{projectsId}/apps/-/recaptchaEnterpriseConfig:batchGet",
                  httpMethod = "GET",
                  id = "firebaseappcheck.projects.apps.recaptchaEnterpriseConfig.batchGet",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    names = {
                      description = "Required. The relative resource names of the RecaptchaEnterpriseConfigs to retrieve, in the format: ``` projects/{project_number}/apps/{app_id}/recaptchaEnterpriseConfig ``` A maximum of 100 objects can be retrieved in a batch.",
                      location = "query",
                      repeated = true,
                      type = "string",
                    },
                    parent = {
                      description = "Required. The parent project name shared by all RecaptchaEnterpriseConfigs being retrieved, in the format ``` projects/{project_number} ``` The parent collection in the `name` field of any resource being retrieved must match this field, or the entire batch fails.",
                      location = "path",
                      pattern = "^projects/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/apps/-/recaptchaEnterpriseConfig:batchGet",
                  response = {
                    ["$ref"] = "GoogleFirebaseAppcheckV1BatchGetRecaptchaEnterpriseConfigsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/firebase",
                  },
                },
                get = {
                  description = "Gets the RecaptchaEnterpriseConfig for the specified app.",
                  flatPath = "v1/projects/{projectsId}/apps/{appsId}/recaptchaEnterpriseConfig",
                  httpMethod = "GET",
                  id = "firebaseappcheck.projects.apps.recaptchaEnterpriseConfig.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The relative resource name of the RecaptchaEnterpriseConfig, in the format: ``` projects/{project_number}/apps/{app_id}/recaptchaEnterpriseConfig ```",
                      location = "path",
                      pattern = "^projects/[^/]+/apps/[^/]+/recaptchaEnterpriseConfig$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "GoogleFirebaseAppcheckV1RecaptchaEnterpriseConfig",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/firebase",
                  },
                },
                patch = {
                  description = "Updates the RecaptchaEnterpriseConfig for the specified app. While this configuration is incomplete or invalid, the app will be unable to exchange reCAPTCHA Enterprise tokens for App Check tokens.",
                  flatPath = "v1/projects/{projectsId}/apps/{appsId}/recaptchaEnterpriseConfig",
                  httpMethod = "PATCH",
                  id = "firebaseappcheck.projects.apps.recaptchaEnterpriseConfig.patch",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The relative resource name of the reCAPTCHA Enterprise configuration object, in the format: ``` projects/{project_number}/apps/{app_id}/recaptchaEnterpriseConfig ```",
                      location = "path",
                      pattern = "^projects/[^/]+/apps/[^/]+/recaptchaEnterpriseConfig$",
                      required = true,
                      type = "string",
                    },
                    updateMask = {
                      description = "Required. A comma-separated list of names of fields in the RecaptchaEnterpriseConfig to update. Example: `site_key`.",
                      format = "google-fieldmask",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  request = {
                    ["$ref"] = "GoogleFirebaseAppcheckV1RecaptchaEnterpriseConfig",
                  },
                  response = {
                    ["$ref"] = "GoogleFirebaseAppcheckV1RecaptchaEnterpriseConfig",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/firebase",
                  },
                },
              },
            },
            recaptchaV3Config = {
              methods = {
                batchGet = {
                  description = "Atomically gets the RecaptchaV3Configs for the specified list of apps. For security reasons, the `site_secret` field is never populated in the response.",
                  flatPath = "v1/projects/{projectsId}/apps/-/recaptchaV3Config:batchGet",
                  httpMethod = "GET",
                  id = "firebaseappcheck.projects.apps.recaptchaV3Config.batchGet",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    names = {
                      description = "Required. The relative resource names of the RecaptchaV3Configs to retrieve, in the format: ``` projects/{project_number}/apps/{app_id}/recaptchaV3Config ``` A maximum of 100 objects can be retrieved in a batch.",
                      location = "query",
                      repeated = true,
                      type = "string",
                    },
                    parent = {
                      description = "Required. The parent project name shared by all RecaptchaV3Configs being retrieved, in the format ``` projects/{project_number} ``` The parent collection in the `name` field of any resource being retrieved must match this field, or the entire batch fails.",
                      location = "path",
                      pattern = "^projects/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/apps/-/recaptchaV3Config:batchGet",
                  response = {
                    ["$ref"] = "GoogleFirebaseAppcheckV1BatchGetRecaptchaV3ConfigsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/firebase",
                  },
                },
                get = {
                  description = "Gets the RecaptchaV3Config for the specified app. For security reasons, the `site_secret` field is never populated in the response.",
                  flatPath = "v1/projects/{projectsId}/apps/{appsId}/recaptchaV3Config",
                  httpMethod = "GET",
                  id = "firebaseappcheck.projects.apps.recaptchaV3Config.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The relative resource name of the RecaptchaV3Config, in the format: ``` projects/{project_number}/apps/{app_id}/recaptchaV3Config ```",
                      location = "path",
                      pattern = "^projects/[^/]+/apps/[^/]+/recaptchaV3Config$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "GoogleFirebaseAppcheckV1RecaptchaV3Config",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/firebase",
                  },
                },
                patch = {
                  description = "Updates the RecaptchaV3Config for the specified app. While this configuration is incomplete or invalid, the app will be unable to exchange reCAPTCHA tokens for App Check tokens. For security reasons, the `site_secret` field is never populated in the response.",
                  flatPath = "v1/projects/{projectsId}/apps/{appsId}/recaptchaV3Config",
                  httpMethod = "PATCH",
                  id = "firebaseappcheck.projects.apps.recaptchaV3Config.patch",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The relative resource name of the reCAPTCHA v3 configuration object, in the format: ``` projects/{project_number}/apps/{app_id}/recaptchaV3Config ```",
                      location = "path",
                      pattern = "^projects/[^/]+/apps/[^/]+/recaptchaV3Config$",
                      required = true,
                      type = "string",
                    },
                    updateMask = {
                      description = "Required. A comma-separated list of names of fields in the RecaptchaV3Config to update. Example: `site_secret`.",
                      format = "google-fieldmask",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  request = {
                    ["$ref"] = "GoogleFirebaseAppcheckV1RecaptchaV3Config",
                  },
                  response = {
                    ["$ref"] = "GoogleFirebaseAppcheckV1RecaptchaV3Config",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/firebase",
                  },
                },
              },
            },
            safetyNetConfig = {
              methods = {
                batchGet = {
                  description = "Atomically gets the SafetyNetConfigs for the specified list of apps.",
                  flatPath = "v1/projects/{projectsId}/apps/-/safetyNetConfig:batchGet",
                  httpMethod = "GET",
                  id = "firebaseappcheck.projects.apps.safetyNetConfig.batchGet",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    names = {
                      description = "Required. The relative resource names of the SafetyNetConfigs to retrieve, in the format ``` projects/{project_number}/apps/{app_id}/safetyNetConfig ``` A maximum of 100 objects can be retrieved in a batch.",
                      location = "query",
                      repeated = true,
                      type = "string",
                    },
                    parent = {
                      description = "Required. The parent project name shared by all SafetyNetConfigs being retrieved, in the format ``` projects/{project_number} ``` The parent collection in the `name` field of any resource being retrieved must match this field, or the entire batch fails.",
                      location = "path",
                      pattern = "^projects/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/apps/-/safetyNetConfig:batchGet",
                  response = {
                    ["$ref"] = "GoogleFirebaseAppcheckV1BatchGetSafetyNetConfigsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/firebase",
                  },
                },
                get = {
                  description = "Gets the SafetyNetConfig for the specified app.",
                  flatPath = "v1/projects/{projectsId}/apps/{appsId}/safetyNetConfig",
                  httpMethod = "GET",
                  id = "firebaseappcheck.projects.apps.safetyNetConfig.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The relative resource name of the SafetyNetConfig, in the format: ``` projects/{project_number}/apps/{app_id}/safetyNetConfig ```",
                      location = "path",
                      pattern = "^projects/[^/]+/apps/[^/]+/safetyNetConfig$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "GoogleFirebaseAppcheckV1SafetyNetConfig",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/firebase",
                  },
                },
                patch = {
                  description = "Updates the SafetyNetConfig for the specified app. While this configuration is incomplete or invalid, the app will be unable to exchange SafetyNet tokens for App Check tokens.",
                  flatPath = "v1/projects/{projectsId}/apps/{appsId}/safetyNetConfig",
                  httpMethod = "PATCH",
                  id = "firebaseappcheck.projects.apps.safetyNetConfig.patch",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The relative resource name of the SafetyNet configuration object, in the format: ``` projects/{project_number}/apps/{app_id}/safetyNetConfig ```",
                      location = "path",
                      pattern = "^projects/[^/]+/apps/[^/]+/safetyNetConfig$",
                      required = true,
                      type = "string",
                    },
                    updateMask = {
                      description = "Required. A comma-separated list of names of fields in the SafetyNetConfig Gets to update. Example: `token_ttl`.",
                      format = "google-fieldmask",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  request = {
                    ["$ref"] = "GoogleFirebaseAppcheckV1SafetyNetConfig",
                  },
                  response = {
                    ["$ref"] = "GoogleFirebaseAppcheckV1SafetyNetConfig",
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
        services = {
          methods = {
            batchUpdate = {
              description = "Atomically updates the specified Service configurations.",
              flatPath = "v1/projects/{projectsId}/services:batchUpdate",
              httpMethod = "POST",
              id = "firebaseappcheck.projects.services.batchUpdate",
              parameterOrder = {
                "parent",
              },
              parameters = {
                parent = {
                  description = "Required. The parent project name shared by all Service configurations being updated, in the format ``` projects/{project_number} ``` The parent collection in the `name` field of any resource being updated must match this field, or the entire batch fails.",
                  location = "path",
                  pattern = "^projects/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/services:batchUpdate",
              request = {
                ["$ref"] = "GoogleFirebaseAppcheckV1BatchUpdateServicesRequest",
              },
              response = {
                ["$ref"] = "GoogleFirebaseAppcheckV1BatchUpdateServicesResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/firebase",
              },
            },
            get = {
              description = "Gets the Service configuration for the specified service name.",
              flatPath = "v1/projects/{projectsId}/services/{servicesId}",
              httpMethod = "GET",
              id = "firebaseappcheck.projects.services.get",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. The relative resource name of the Service to retrieve, in the format: ``` projects/{project_number}/services/{service_id} ``` Note that the `service_id` element must be a supported service ID. Currently, the following service IDs are supported: * `firebasestorage.googleapis.com` (Cloud Storage for Firebase) * `firebasedatabase.googleapis.com` (Firebase Realtime Database) * `firestore.googleapis.com` (Cloud Firestore)",
                  location = "path",
                  pattern = "^projects/[^/]+/services/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}",
              response = {
                ["$ref"] = "GoogleFirebaseAppcheckV1Service",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/firebase",
              },
            },
            list = {
              description = "Lists all Service configurations for the specified project. Only Services which were explicitly configured using UpdateService or BatchUpdateServices will be returned.",
              flatPath = "v1/projects/{projectsId}/services",
              httpMethod = "GET",
              id = "firebaseappcheck.projects.services.list",
              parameterOrder = {
                "parent",
              },
              parameters = {
                pageSize = {
                  description = "The maximum number of Services to return in the response. Only explicitly configured services are returned. The server may return fewer than this at its own discretion. If no value is specified (or too large a value is specified), the server will impose its own limit.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "Token returned from a previous call to ListServices indicating where in the set of Services to resume listing. Provide this to retrieve the subsequent page. When paginating, all other parameters provided to ListServices must match the call that provided the page token; if they do not match, the result is undefined.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "Required. The relative resource name of the parent project for which to list each associated Service, in the format: ``` projects/{project_number} ```",
                  location = "path",
                  pattern = "^projects/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/services",
              response = {
                ["$ref"] = "GoogleFirebaseAppcheckV1ListServicesResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/firebase",
              },
            },
            patch = {
              description = "Updates the specified Service configuration.",
              flatPath = "v1/projects/{projectsId}/services/{servicesId}",
              httpMethod = "PATCH",
              id = "firebaseappcheck.projects.services.patch",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. The relative resource name of the service configuration object, in the format: ``` projects/{project_number}/services/{service_id} ``` Note that the `service_id` element must be a supported service ID. Currently, the following service IDs are supported: * `firebasestorage.googleapis.com` (Cloud Storage for Firebase) * `firebasedatabase.googleapis.com` (Firebase Realtime Database) * `firestore.googleapis.com` (Cloud Firestore)",
                  location = "path",
                  pattern = "^projects/[^/]+/services/[^/]+$",
                  required = true,
                  type = "string",
                },
                updateMask = {
                  description = "Required. A comma-separated list of names of fields in the Service to update. Example: `enforcement_mode`.",
                  format = "google-fieldmask",
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/{+name}",
              request = {
                ["$ref"] = "GoogleFirebaseAppcheckV1Service",
              },
              response = {
                ["$ref"] = "GoogleFirebaseAppcheckV1Service",
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
  revision = "20230109",
  rootUrl = "https://firebaseappcheck.googleapis.com/",
  schemas = {
    GoogleFirebaseAppcheckV1AppAttestConfig = {
      description = "An app's App Attest configuration object. This configuration controls certain properties of the `AppCheckToken` returned by ExchangeAppAttestAttestation and ExchangeAppAttestAssertion, such as its ttl. Note that the Team ID registered with your app is used as part of the validation process. Please register it via the Firebase Console or programmatically via the [Firebase Management Service](https://firebase.google.com/docs/projects/api/reference/rest/v11/projects.iosApps/patch).",
      id = "GoogleFirebaseAppcheckV1AppAttestConfig",
      properties = {
        name = {
          description = "Required. The relative resource name of the App Attest configuration object, in the format: ``` projects/{project_number}/apps/{app_id}/appAttestConfig ```",
          type = "string",
        },
        tokenTtl = {
          description = "Specifies the duration for which App Check tokens exchanged from App Attest artifacts will be valid. If unset, a default value of 1 hour is assumed. Must be between 30 minutes and 7 days, inclusive.",
          format = "google-duration",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleFirebaseAppcheckV1AppCheckToken = {
      description = "Encapsulates an *App Check token*, which are used to access Firebase services protected by App Check.",
      id = "GoogleFirebaseAppcheckV1AppCheckToken",
      properties = {
        token = {
          description = "The App Check token. App Check tokens are signed [JWTs](https://tools.ietf.org/html/rfc7519) containing claims that identify the attested app and Firebase project. This token is used to access Firebase services protected by App Check. These tokens can also be [verified by your own custom backends](https://firebase.google.com/docs/app-check/custom-resource-backend) using the Firebase Admin SDK.",
          type = "string",
        },
        ttl = {
          description = "The duration from the time this token is minted until its expiration. This field is intended to ease client-side token management, since the client may have clock skew, but is still able to accurately measure a duration.",
          format = "google-duration",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleFirebaseAppcheckV1BatchGetAppAttestConfigsResponse = {
      description = "Response message for the BatchGetAppAttestConfigs method.",
      id = "GoogleFirebaseAppcheckV1BatchGetAppAttestConfigsResponse",
      properties = {
        configs = {
          description = "AppAttestConfigs retrieved.",
          items = {
            ["$ref"] = "GoogleFirebaseAppcheckV1AppAttestConfig",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleFirebaseAppcheckV1BatchGetDeviceCheckConfigsResponse = {
      description = "Response message for the BatchGetDeviceCheckConfigs method.",
      id = "GoogleFirebaseAppcheckV1BatchGetDeviceCheckConfigsResponse",
      properties = {
        configs = {
          description = "DeviceCheckConfigs retrieved.",
          items = {
            ["$ref"] = "GoogleFirebaseAppcheckV1DeviceCheckConfig",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleFirebaseAppcheckV1BatchGetPlayIntegrityConfigsResponse = {
      description = "Response message for the BatchGetPlayIntegrityConfigs method.",
      id = "GoogleFirebaseAppcheckV1BatchGetPlayIntegrityConfigsResponse",
      properties = {
        configs = {
          description = "PlayIntegrityConfigs retrieved.",
          items = {
            ["$ref"] = "GoogleFirebaseAppcheckV1PlayIntegrityConfig",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleFirebaseAppcheckV1BatchGetRecaptchaEnterpriseConfigsResponse = {
      description = "Response message for the BatchGetRecaptchaEnterpriseConfigs method.",
      id = "GoogleFirebaseAppcheckV1BatchGetRecaptchaEnterpriseConfigsResponse",
      properties = {
        configs = {
          description = "RecaptchaEnterpriseConfigs retrieved.",
          items = {
            ["$ref"] = "GoogleFirebaseAppcheckV1RecaptchaEnterpriseConfig",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleFirebaseAppcheckV1BatchGetRecaptchaV3ConfigsResponse = {
      description = "Response message for the BatchGetRecaptchaV3Configs method.",
      id = "GoogleFirebaseAppcheckV1BatchGetRecaptchaV3ConfigsResponse",
      properties = {
        configs = {
          description = "RecaptchaV3Configs retrieved.",
          items = {
            ["$ref"] = "GoogleFirebaseAppcheckV1RecaptchaV3Config",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleFirebaseAppcheckV1BatchGetSafetyNetConfigsResponse = {
      description = "Response message for the BatchGetSafetyNetConfigs method.",
      id = "GoogleFirebaseAppcheckV1BatchGetSafetyNetConfigsResponse",
      properties = {
        configs = {
          description = "SafetyNetConfigs retrieved.",
          items = {
            ["$ref"] = "GoogleFirebaseAppcheckV1SafetyNetConfig",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleFirebaseAppcheckV1BatchUpdateServicesRequest = {
      description = "Request message for the BatchUpdateServices method.",
      id = "GoogleFirebaseAppcheckV1BatchUpdateServicesRequest",
      properties = {
        requests = {
          description = "Required. The request messages specifying the Services to update. A maximum of 100 objects can be updated in a batch.",
          items = {
            ["$ref"] = "GoogleFirebaseAppcheckV1UpdateServiceRequest",
          },
          type = "array",
        },
        updateMask = {
          description = "Optional. A comma-separated list of names of fields in the Services to update. Example: `display_name`. If the `update_mask` field is set in both this request and any of the UpdateServiceRequest messages, they must match or the entire batch fails and no updates will be committed.",
          format = "google-fieldmask",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleFirebaseAppcheckV1BatchUpdateServicesResponse = {
      description = "Response message for the BatchUpdateServices method.",
      id = "GoogleFirebaseAppcheckV1BatchUpdateServicesResponse",
      properties = {
        services = {
          description = "Service objects after the updates have been applied.",
          items = {
            ["$ref"] = "GoogleFirebaseAppcheckV1Service",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleFirebaseAppcheckV1DebugToken = {
      description = "A *debug token* is a secret used during the development or integration testing of an app. It essentially allows the development or integration testing to bypass app attestation while still allowing App Check to enforce protection on supported production Firebase services.",
      id = "GoogleFirebaseAppcheckV1DebugToken",
      properties = {
        displayName = {
          description = "Required. A human readable display name used to identify this debug token.",
          type = "string",
        },
        name = {
          description = "Required. The relative resource name of the debug token, in the format: ``` projects/{project_number}/apps/{app_id}/debugTokens/{debug_token_id} ```",
          type = "string",
        },
        token = {
          description = "Required. Input only. Immutable. The secret token itself. Must be provided during creation, and must be a UUID4, case insensitive. This field is immutable once set, and cannot be provided during an UpdateDebugToken request. You can, however, delete this debug token using DeleteDebugToken to revoke it. For security reasons, this field will never be populated in any response.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleFirebaseAppcheckV1DeviceCheckConfig = {
      description = "An app's DeviceCheck configuration object. This configuration is used by ExchangeDeviceCheckToken to validate device tokens issued to apps by DeviceCheck. It also controls certain properties of the returned `AppCheckToken`, such as its ttl. Note that the Team ID registered with your app is used as part of the validation process. Please register it via the Firebase Console or programmatically via the [Firebase Management Service](https://firebase.google.com/docs/projects/api/reference/rest/v11/projects.iosApps/patch).",
      id = "GoogleFirebaseAppcheckV1DeviceCheckConfig",
      properties = {
        keyId = {
          description = "Required. The key identifier of a private key enabled with DeviceCheck, created in your Apple Developer account.",
          type = "string",
        },
        name = {
          description = "Required. The relative resource name of the DeviceCheck configuration object, in the format: ``` projects/{project_number}/apps/{app_id}/deviceCheckConfig ```",
          type = "string",
        },
        privateKey = {
          description = "Required. Input only. The contents of the private key (`.p8`) file associated with the key specified by `key_id`. For security reasons, this field will never be populated in any response.",
          type = "string",
        },
        privateKeySet = {
          description = "Output only. Whether the `private_key` field was previously set. Since we will never return the `private_key` field, this field is the only way to find out whether it was previously set.",
          readOnly = true,
          type = "boolean",
        },
        tokenTtl = {
          description = "Specifies the duration for which App Check tokens exchanged from DeviceCheck tokens will be valid. If unset, a default value of 1 hour is assumed. Must be between 30 minutes and 7 days, inclusive.",
          format = "google-duration",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleFirebaseAppcheckV1ExchangeAppAttestAssertionRequest = {
      description = "Request message for the ExchangeAppAttestAssertion method.",
      id = "GoogleFirebaseAppcheckV1ExchangeAppAttestAssertionRequest",
      properties = {
        artifact = {
          description = "Required. The artifact returned by a previous call to ExchangeAppAttestAttestation.",
          format = "byte",
          type = "string",
        },
        assertion = {
          description = "Required. The CBOR-encoded assertion returned by the client-side App Attest API.",
          format = "byte",
          type = "string",
        },
        challenge = {
          description = "Required. A one-time challenge returned by an immediately prior call to GenerateAppAttestChallenge.",
          format = "byte",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleFirebaseAppcheckV1ExchangeAppAttestAttestationRequest = {
      description = "Request message for the ExchangeAppAttestAttestation method.",
      id = "GoogleFirebaseAppcheckV1ExchangeAppAttestAttestationRequest",
      properties = {
        attestationStatement = {
          description = "Required. The App Attest statement returned by the client-side App Attest API. This is a base64url encoded CBOR object in the JSON response.",
          format = "byte",
          type = "string",
        },
        challenge = {
          description = "Required. A one-time challenge returned by an immediately prior call to GenerateAppAttestChallenge.",
          format = "byte",
          type = "string",
        },
        keyId = {
          description = "Required. The key ID generated by App Attest for the client app.",
          format = "byte",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleFirebaseAppcheckV1ExchangeAppAttestAttestationResponse = {
      description = "Response message for the ExchangeAppAttestAttestation method.",
      id = "GoogleFirebaseAppcheckV1ExchangeAppAttestAttestationResponse",
      properties = {
        appCheckToken = {
          ["$ref"] = "GoogleFirebaseAppcheckV1AppCheckToken",
          description = "Encapsulates an App Check token.",
        },
        artifact = {
          description = "An artifact that can be used in future calls to ExchangeAppAttestAssertion.",
          format = "byte",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleFirebaseAppcheckV1ExchangeCustomTokenRequest = {
      description = "Request message for the ExchangeCustomToken method.",
      id = "GoogleFirebaseAppcheckV1ExchangeCustomTokenRequest",
      properties = {
        customToken = {
          description = "Required. A custom token signed using your project's Admin SDK service account credentials.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleFirebaseAppcheckV1ExchangeDebugTokenRequest = {
      description = "Request message for the ExchangeDebugToken method.",
      id = "GoogleFirebaseAppcheckV1ExchangeDebugTokenRequest",
      properties = {
        debugToken = {
          description = "Required. A debug token secret. This string must match a debug token secret previously created using CreateDebugToken.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleFirebaseAppcheckV1ExchangeDeviceCheckTokenRequest = {
      description = "Request message for the ExchangeDeviceCheckToken method.",
      id = "GoogleFirebaseAppcheckV1ExchangeDeviceCheckTokenRequest",
      properties = {
        deviceToken = {
          description = "Required. The `device_token` as returned by Apple's client-side [DeviceCheck API](https://developer.apple.com/documentation/devicecheck/dcdevice). This is the base64 encoded `Data` (Swift) or `NSData` (ObjC) object.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleFirebaseAppcheckV1ExchangePlayIntegrityTokenRequest = {
      description = "Request message for the ExchangePlayIntegrityToken method.",
      id = "GoogleFirebaseAppcheckV1ExchangePlayIntegrityTokenRequest",
      properties = {
        playIntegrityToken = {
          description = "Required. The [integrity verdict response token from Play Integrity](https://developer.android.com/google/play/integrity/verdict#decrypt-verify) issued to your app.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleFirebaseAppcheckV1ExchangeRecaptchaEnterpriseTokenRequest = {
      description = "Request message for the ExchangeRecaptchaEnterpriseToken method.",
      id = "GoogleFirebaseAppcheckV1ExchangeRecaptchaEnterpriseTokenRequest",
      properties = {
        recaptchaEnterpriseToken = {
          description = "Required. The reCAPTCHA token as returned by the [reCAPTCHA Enterprise JavaScript API](https://cloud.google.com/recaptcha-enterprise/docs/instrument-web-pages).",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleFirebaseAppcheckV1ExchangeRecaptchaV3TokenRequest = {
      description = "Request message for the ExchangeRecaptchaV3Token method.",
      id = "GoogleFirebaseAppcheckV1ExchangeRecaptchaV3TokenRequest",
      properties = {
        recaptchaV3Token = {
          description = "Required. The reCAPTCHA token as returned by the [reCAPTCHA v3 JavaScript API](https://developers.google.com/recaptcha/docs/v3).",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleFirebaseAppcheckV1ExchangeSafetyNetTokenRequest = {
      description = "Request message for the ExchangeSafetyNetToken method.",
      id = "GoogleFirebaseAppcheckV1ExchangeSafetyNetTokenRequest",
      properties = {
        safetyNetToken = {
          description = "Required. The [SafetyNet attestation response](https://developer.android.com/training/safetynet/attestation#request-attestation-step) issued to your app.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleFirebaseAppcheckV1GenerateAppAttestChallengeRequest = {
      description = "Request message for the GenerateAppAttestChallenge method.",
      id = "GoogleFirebaseAppcheckV1GenerateAppAttestChallengeRequest",
      properties = {},
      type = "object",
    },
    GoogleFirebaseAppcheckV1GenerateAppAttestChallengeResponse = {
      description = "Response message for the GenerateAppAttestChallenge method.",
      id = "GoogleFirebaseAppcheckV1GenerateAppAttestChallengeResponse",
      properties = {
        challenge = {
          description = "A one-time use challenge for the client to pass to the App Attest API.",
          format = "byte",
          type = "string",
        },
        ttl = {
          description = "The duration from the time this challenge is minted until its expiration. This field is intended to ease client-side token management, since the client may have clock skew, but is still able to accurately measure a duration.",
          format = "google-duration",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleFirebaseAppcheckV1GeneratePlayIntegrityChallengeRequest = {
      description = "Request message for the GeneratePlayIntegrityChallenge method.",
      id = "GoogleFirebaseAppcheckV1GeneratePlayIntegrityChallengeRequest",
      properties = {},
      type = "object",
    },
    GoogleFirebaseAppcheckV1GeneratePlayIntegrityChallengeResponse = {
      description = "Response message for the GeneratePlayIntegrityChallenge method.",
      id = "GoogleFirebaseAppcheckV1GeneratePlayIntegrityChallengeResponse",
      properties = {
        challenge = {
          description = "A one-time use [challenge](https://developer.android.com/google/play/integrity/verdict#protect-against-replay-attacks) for the client to pass to the Play Integrity API.",
          type = "string",
        },
        ttl = {
          description = "The duration from the time this challenge is minted until its expiration. This field is intended to ease client-side token management, since the client may have clock skew, but is still able to accurately measure a duration.",
          format = "google-duration",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleFirebaseAppcheckV1ListDebugTokensResponse = {
      description = "Response message for the ListDebugTokens method.",
      id = "GoogleFirebaseAppcheckV1ListDebugTokensResponse",
      properties = {
        debugTokens = {
          description = "The DebugTokens retrieved.",
          items = {
            ["$ref"] = "GoogleFirebaseAppcheckV1DebugToken",
          },
          type = "array",
        },
        nextPageToken = {
          description = "If the result list is too large to fit in a single response, then a token is returned. If the string is empty or omitted, then this response is the last page of results. This token can be used in a subsequent call to ListDebugTokens to find the next group of DebugTokens. Page tokens are short-lived and should not be persisted.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleFirebaseAppcheckV1ListServicesResponse = {
      description = "Response message for the ListServices method.",
      id = "GoogleFirebaseAppcheckV1ListServicesResponse",
      properties = {
        nextPageToken = {
          description = "If the result list is too large to fit in a single response, then a token is returned. If the string is empty or omitted, then this response is the last page of results. This token can be used in a subsequent call to ListServices to find the next group of Services. Page tokens are short-lived and should not be persisted.",
          type = "string",
        },
        services = {
          description = "The Services retrieved.",
          items = {
            ["$ref"] = "GoogleFirebaseAppcheckV1Service",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleFirebaseAppcheckV1PlayIntegrityConfig = {
      description = "An app's Play Integrity configuration object. This configuration controls certain properties of the `AppCheckToken` returned by ExchangePlayIntegrityToken, such as its ttl. Note that your registered SHA-256 certificate fingerprints are used to validate tokens issued by the Play Integrity API; please register them via the Firebase Console or programmatically via the [Firebase Management Service](https://firebase.google.com/docs/projects/api/reference/rest/v1beta1/projects.androidApps.sha/create).",
      id = "GoogleFirebaseAppcheckV1PlayIntegrityConfig",
      properties = {
        name = {
          description = "Required. The relative resource name of the Play Integrity configuration object, in the format: ``` projects/{project_number}/apps/{app_id}/playIntegrityConfig ```",
          type = "string",
        },
        tokenTtl = {
          description = "Specifies the duration for which App Check tokens exchanged from Play Integrity tokens will be valid. If unset, a default value of 1 hour is assumed. Must be between 30 minutes and 7 days, inclusive.",
          format = "google-duration",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleFirebaseAppcheckV1PublicJwk = {
      description = "A JWK as specified by [section 4 of RFC 7517](https://tools.ietf.org/html/rfc7517#section-4) and [section 6.3.1 of RFC 7518](https://tools.ietf.org/html/rfc7518#section-6.3.1).",
      id = "GoogleFirebaseAppcheckV1PublicJwk",
      properties = {
        alg = {
          description = "See [section 4.4 of RFC 7517](https://tools.ietf.org/html/rfc7517#section-4.4).",
          type = "string",
        },
        e = {
          description = "See [section 6.3.1.2 of RFC 7518](https://tools.ietf.org/html/rfc7518#section-6.3.1.2).",
          type = "string",
        },
        kid = {
          description = "See [section 4.5 of RFC 7517](https://tools.ietf.org/html/rfc7517#section-4.5).",
          type = "string",
        },
        kty = {
          description = "See [section 4.1 of RFC 7517](https://tools.ietf.org/html/rfc7517#section-4.1).",
          type = "string",
        },
        n = {
          description = "See [section 6.3.1.1 of RFC 7518](https://tools.ietf.org/html/rfc7518#section-6.3.1.1).",
          type = "string",
        },
        use = {
          description = "See [section 4.2 of RFC 7517](https://tools.ietf.org/html/rfc7517#section-4.2).",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleFirebaseAppcheckV1PublicJwkSet = {
      description = "The currently active set of public keys that can be used to verify App Check tokens. This object is a JWK set as specified by [section 5 of RFC 7517](https://tools.ietf.org/html/rfc7517#section-5). For security, the response **must not** be cached for longer than six hours.",
      id = "GoogleFirebaseAppcheckV1PublicJwkSet",
      properties = {
        keys = {
          description = "The set of public keys. See [section 5.1 of RFC 7517](https://tools.ietf.org/html/rfc7517#section-5).",
          items = {
            ["$ref"] = "GoogleFirebaseAppcheckV1PublicJwk",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleFirebaseAppcheckV1RecaptchaEnterpriseConfig = {
      description = "An app's reCAPTCHA Enterprise configuration object. This configuration is used by ExchangeRecaptchaEnterpriseToken to validate reCAPTCHA tokens issued to apps by reCAPTCHA Enterprise. It also controls certain properties of the returned `AppCheckToken`, such as its ttl.",
      id = "GoogleFirebaseAppcheckV1RecaptchaEnterpriseConfig",
      properties = {
        name = {
          description = "Required. The relative resource name of the reCAPTCHA Enterprise configuration object, in the format: ``` projects/{project_number}/apps/{app_id}/recaptchaEnterpriseConfig ```",
          type = "string",
        },
        siteKey = {
          description = "The score-based site key [created in reCAPTCHA Enterprise](https://cloud.google.com/recaptcha-enterprise/docs/create-key#creating_a_site_key) used to [invoke reCAPTCHA and generate the reCAPTCHA tokens](https://cloud.google.com/recaptcha-enterprise/docs/instrument-web-pages) for your application. Important: This is *not* the `site_secret` (as it is in reCAPTCHA v3), but rather your score-based reCAPTCHA Enterprise site key.",
          type = "string",
        },
        tokenTtl = {
          description = "Specifies the duration for which App Check tokens exchanged from reCAPTCHA Enterprise tokens will be valid. If unset, a default value of 1 hour is assumed. Must be between 30 minutes and 7 days, inclusive.",
          format = "google-duration",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleFirebaseAppcheckV1RecaptchaV3Config = {
      description = "An app's reCAPTCHA v3 configuration object. This configuration is used by ExchangeRecaptchaV3Token to validate reCAPTCHA tokens issued to apps by reCAPTCHA v3. It also controls certain properties of the returned `AppCheckToken`, such as its ttl.",
      id = "GoogleFirebaseAppcheckV1RecaptchaV3Config",
      properties = {
        name = {
          description = "Required. The relative resource name of the reCAPTCHA v3 configuration object, in the format: ``` projects/{project_number}/apps/{app_id}/recaptchaV3Config ```",
          type = "string",
        },
        siteSecret = {
          description = "Required. Input only. The site secret used to identify your service for reCAPTCHA v3 verification. For security reasons, this field will never be populated in any response.",
          type = "string",
        },
        siteSecretSet = {
          description = "Output only. Whether the `site_secret` field was previously set. Since we will never return the `site_secret` field, this field is the only way to find out whether it was previously set.",
          readOnly = true,
          type = "boolean",
        },
        tokenTtl = {
          description = "Specifies the duration for which App Check tokens exchanged from reCAPTCHA tokens will be valid. If unset, a default value of 1 day is assumed. Must be between 30 minutes and 7 days, inclusive.",
          format = "google-duration",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleFirebaseAppcheckV1SafetyNetConfig = {
      description = "An app's SafetyNet configuration object. This configuration controls certain properties of the `AppCheckToken` returned by ExchangeSafetyNetToken, such as its ttl. Note that your registered SHA-256 certificate fingerprints are used to validate tokens issued by SafetyNet; please register them via the Firebase Console or programmatically via the [Firebase Management Service](https://firebase.google.com/docs/projects/api/reference/rest/v11/projects.androidApps.sha/create).",
      id = "GoogleFirebaseAppcheckV1SafetyNetConfig",
      properties = {
        name = {
          description = "Required. The relative resource name of the SafetyNet configuration object, in the format: ``` projects/{project_number}/apps/{app_id}/safetyNetConfig ```",
          type = "string",
        },
        tokenTtl = {
          description = "Specifies the duration for which App Check tokens exchanged from SafetyNet tokens will be valid. If unset, a default value of 1 hour is assumed. Must be between 30 minutes and 7 days, inclusive.",
          format = "google-duration",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleFirebaseAppcheckV1Service = {
      description = "The enforcement configuration for a Firebase service supported by App Check.",
      id = "GoogleFirebaseAppcheckV1Service",
      properties = {
        enforcementMode = {
          description = "Required. The App Check enforcement mode for this service.",
          enum = {
            "OFF",
            "UNENFORCED",
            "ENFORCED",
          },
          enumDescriptions = {
            "Firebase App Check is not enforced for the service, nor are App Check metrics collected. Though the service is not protected by App Check in this mode, other applicable protections, such as user authorization, are still enforced. An unconfigured service is in this mode by default.",
            "Firebase App Check is not enforced for the service. App Check metrics are collected to help you decide when to turn on enforcement for the service. Though the service is not protected by App Check in this mode, other applicable protections, such as user authorization, are still enforced.",
            "Firebase App Check is enforced for the service. The service will reject any request that attempts to access your project's resources if it does not have valid App Check token attached, with some exceptions depending on the service; for example, some services will still allow requests bearing the developer's privileged service account credentials without an App Check token. App Check metrics continue to be collected to help you detect issues with your App Check integration and monitor the composition of your callers. While the service is protected by App Check, other applicable protections, such as user authorization, continue to be enforced at the same time. Use caution when choosing to enforce App Check on a Firebase service. If your users have not updated to an App Check capable version of your app, their apps will no longer be able to use your Firebase services that are enforcing App Check. App Check metrics can help you decide whether to enforce App Check on your Firebase services. If your app has not launched yet, you should enable enforcement immediately, since there are no outdated clients in use.",
          },
          type = "string",
        },
        name = {
          description = "Required. The relative resource name of the service configuration object, in the format: ``` projects/{project_number}/services/{service_id} ``` Note that the `service_id` element must be a supported service ID. Currently, the following service IDs are supported: * `firebasestorage.googleapis.com` (Cloud Storage for Firebase) * `firebasedatabase.googleapis.com` (Firebase Realtime Database) * `firestore.googleapis.com` (Cloud Firestore)",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleFirebaseAppcheckV1UpdateServiceRequest = {
      description = "Request message for the UpdateService method as well as an individual update message for the BatchUpdateServices method.",
      id = "GoogleFirebaseAppcheckV1UpdateServiceRequest",
      properties = {
        service = {
          ["$ref"] = "GoogleFirebaseAppcheckV1Service",
          description = "Required. The Service to update. The Service's `name` field is used to identify the Service to be updated, in the format: ``` projects/{project_number}/services/{service_id} ``` Note that the `service_id` element must be a supported service ID. Currently, the following service IDs are supported: * `firebasestorage.googleapis.com` (Cloud Storage for Firebase) * `firebasedatabase.googleapis.com` (Firebase Realtime Database) * `firestore.googleapis.com` (Cloud Firestore)",
        },
        updateMask = {
          description = "Required. A comma-separated list of names of fields in the Service to update. Example: `enforcement_mode`.",
          format = "google-fieldmask",
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
  title = "Firebase App Check API",
  version = "v1",
  version_module = true,
}
