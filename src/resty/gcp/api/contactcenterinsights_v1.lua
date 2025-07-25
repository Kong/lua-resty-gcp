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
  baseUrl = "https://contactcenterinsights.googleapis.com/",
  batchPath = "batch",
  canonicalName = "Contactcenterinsights",
  description = "",
  discoveryVersion = "v1",
  documentationLink = "https://cloud.google.com/contact-center/insights/docs",
  fullyEncodeReservedExpansion = true,
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "contactcenterinsights:v1",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://contactcenterinsights.mtls.googleapis.com/",
  name = "contactcenterinsights",
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
            getSettings = {
              description = "Gets project-level settings.",
              flatPath = "v1/projects/{projectsId}/locations/{locationsId}/settings",
              httpMethod = "GET",
              id = "contactcenterinsights.projects.locations.getSettings",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. The name of the settings resource to get.",
                  location = "path",
                  pattern = "^projects/[^/]+/locations/[^/]+/settings$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}",
              response = {
                ["$ref"] = "GoogleCloudContactcenterinsightsV1Settings",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            updateSettings = {
              description = "Updates project-level settings.",
              flatPath = "v1/projects/{projectsId}/locations/{locationsId}/settings",
              httpMethod = "PATCH",
              id = "contactcenterinsights.projects.locations.updateSettings",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Immutable. The resource name of the settings resource. Format: projects/{project}/locations/{location}/settings",
                  location = "path",
                  pattern = "^projects/[^/]+/locations/[^/]+/settings$",
                  required = true,
                  type = "string",
                },
                updateMask = {
                  description = "Required. The list of fields to be updated.",
                  format = "google-fieldmask",
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/{+name}",
              request = {
                ["$ref"] = "GoogleCloudContactcenterinsightsV1Settings",
              },
              response = {
                ["$ref"] = "GoogleCloudContactcenterinsightsV1Settings",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
          },
          resources = {
            conversations = {
              methods = {
                bulkAnalyze = {
                  description = "Analyzes multiple conversations in a single request.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/conversations:bulkAnalyze",
                  httpMethod = "POST",
                  id = "contactcenterinsights.projects.locations.conversations.bulkAnalyze",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    parent = {
                      description = "Required. The parent resource to create analyses in.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/conversations:bulkAnalyze",
                  request = {
                    ["$ref"] = "GoogleCloudContactcenterinsightsV1BulkAnalyzeConversationsRequest",
                  },
                  response = {
                    ["$ref"] = "GoogleLongrunningOperation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                calculateStats = {
                  description = "Gets conversation statistics.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/conversations:calculateStats",
                  httpMethod = "GET",
                  id = "contactcenterinsights.projects.locations.conversations.calculateStats",
                  parameterOrder = {
                    "location",
                  },
                  parameters = {
                    filter = {
                      description = "A filter to reduce results to a specific subset. This field is useful for getting statistics about conversations with specific properties.",
                      location = "query",
                      type = "string",
                    },
                    location = {
                      description = "Required. The location of the conversations.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+location}/conversations:calculateStats",
                  response = {
                    ["$ref"] = "GoogleCloudContactcenterinsightsV1CalculateStatsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                create = {
                  description = "Creates a conversation.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/conversations",
                  httpMethod = "POST",
                  id = "contactcenterinsights.projects.locations.conversations.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    conversationId = {
                      description = "A unique ID for the new conversation. This ID will become the final component of the conversation's resource name. If no ID is specified, a server-generated ID will be used. This value should be 4-64 characters and must match the regular expression `^[a-z0-9-]{4,64}$`. Valid characters are `a-z-`",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The parent resource of the conversation.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/conversations",
                  request = {
                    ["$ref"] = "GoogleCloudContactcenterinsightsV1Conversation",
                  },
                  response = {
                    ["$ref"] = "GoogleCloudContactcenterinsightsV1Conversation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                delete = {
                  description = "Deletes a conversation.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/conversations/{conversationsId}",
                  httpMethod = "DELETE",
                  id = "contactcenterinsights.projects.locations.conversations.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    force = {
                      description = "If set to true, all of this conversation's analyses will also be deleted. Otherwise, the request will only succeed if the conversation has no analyses.",
                      location = "query",
                      type = "boolean",
                    },
                    name = {
                      description = "Required. The name of the conversation to delete.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/conversations/[^/]+$",
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
                  description = "Gets a conversation.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/conversations/{conversationsId}",
                  httpMethod = "GET",
                  id = "contactcenterinsights.projects.locations.conversations.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The name of the conversation to get.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/conversations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    view = {
                      description = "The level of details of the conversation. Default is `FULL`.",
                      enum = {
                        "CONVERSATION_VIEW_UNSPECIFIED",
                        "FULL",
                        "BASIC",
                      },
                      enumDescriptions = {
                        "The conversation view is not specified. * Defaults to `FULL` in `GetConversationRequest`. * Defaults to `BASIC` in `ListConversationsRequest`.",
                        "Populates all fields in the conversation.",
                        "Populates all fields in the conversation except the transcript.",
                      },
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "GoogleCloudContactcenterinsightsV1Conversation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                ingest = {
                  description = "Imports conversations and processes them according to the user's configuration.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/conversations:ingest",
                  httpMethod = "POST",
                  id = "contactcenterinsights.projects.locations.conversations.ingest",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    parent = {
                      description = "Required. The parent resource for new conversations.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/conversations:ingest",
                  request = {
                    ["$ref"] = "GoogleCloudContactcenterinsightsV1IngestConversationsRequest",
                  },
                  response = {
                    ["$ref"] = "GoogleLongrunningOperation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                list = {
                  description = "Lists conversations.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/conversations",
                  httpMethod = "GET",
                  id = "contactcenterinsights.projects.locations.conversations.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    filter = {
                      description = "A filter to reduce results to a specific subset. Useful for querying conversations with specific properties.",
                      location = "query",
                      type = "string",
                    },
                    pageSize = {
                      description = "The maximum number of conversations to return in the response. A valid page size ranges from 0 to 1,000 inclusive. If the page size is zero or unspecified, a default page size of 100 will be chosen. Note that a call might return fewer results than the requested page size.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "The value returned by the last `ListConversationsResponse`. This value indicates that this is a continuation of a prior `ListConversations` call and that the system should return the next page of data.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The parent resource of the conversation.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    view = {
                      description = "The level of details of the conversation. Default is `BASIC`.",
                      enum = {
                        "CONVERSATION_VIEW_UNSPECIFIED",
                        "FULL",
                        "BASIC",
                      },
                      enumDescriptions = {
                        "The conversation view is not specified. * Defaults to `FULL` in `GetConversationRequest`. * Defaults to `BASIC` in `ListConversationsRequest`.",
                        "Populates all fields in the conversation.",
                        "Populates all fields in the conversation except the transcript.",
                      },
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/conversations",
                  response = {
                    ["$ref"] = "GoogleCloudContactcenterinsightsV1ListConversationsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                patch = {
                  description = "Updates a conversation.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/conversations/{conversationsId}",
                  httpMethod = "PATCH",
                  id = "contactcenterinsights.projects.locations.conversations.patch",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Immutable. The resource name of the conversation. Format: projects/{project}/locations/{location}/conversations/{conversation}",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/conversations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    updateMask = {
                      description = "The list of fields to be updated.",
                      format = "google-fieldmask",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  request = {
                    ["$ref"] = "GoogleCloudContactcenterinsightsV1Conversation",
                  },
                  response = {
                    ["$ref"] = "GoogleCloudContactcenterinsightsV1Conversation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
              },
              resources = {
                analyses = {
                  methods = {
                    create = {
                      description = "Creates an analysis. The long running operation is done when the analysis has completed.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/conversations/{conversationsId}/analyses",
                      httpMethod = "POST",
                      id = "contactcenterinsights.projects.locations.conversations.analyses.create",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        parent = {
                          description = "Required. The parent resource of the analysis.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/conversations/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/analyses",
                      request = {
                        ["$ref"] = "GoogleCloudContactcenterinsightsV1Analysis",
                      },
                      response = {
                        ["$ref"] = "GoogleLongrunningOperation",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    delete = {
                      description = "Deletes an analysis.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/conversations/{conversationsId}/analyses/{analysesId}",
                      httpMethod = "DELETE",
                      id = "contactcenterinsights.projects.locations.conversations.analyses.delete",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The name of the analysis to delete.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/conversations/[^/]+/analyses/[^/]+$",
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
                      description = "Gets an analysis.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/conversations/{conversationsId}/analyses/{analysesId}",
                      httpMethod = "GET",
                      id = "contactcenterinsights.projects.locations.conversations.analyses.get",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The name of the analysis to get.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/conversations/[^/]+/analyses/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}",
                      response = {
                        ["$ref"] = "GoogleCloudContactcenterinsightsV1Analysis",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    list = {
                      description = "Lists analyses.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/conversations/{conversationsId}/analyses",
                      httpMethod = "GET",
                      id = "contactcenterinsights.projects.locations.conversations.analyses.list",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        filter = {
                          description = "A filter to reduce results to a specific subset. Useful for querying conversations with specific properties.",
                          location = "query",
                          type = "string",
                        },
                        pageSize = {
                          description = "The maximum number of analyses to return in the response. If this value is zero, the service will select a default size. A call might return fewer objects than requested. A non-empty `next_page_token` in the response indicates that more data is available.",
                          format = "int32",
                          location = "query",
                          type = "integer",
                        },
                        pageToken = {
                          description = "The value returned by the last `ListAnalysesResponse`; indicates that this is a continuation of a prior `ListAnalyses` call and the system should return the next page of data.",
                          location = "query",
                          type = "string",
                        },
                        parent = {
                          description = "Required. The parent resource of the analyses.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/conversations/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/analyses",
                      response = {
                        ["$ref"] = "GoogleCloudContactcenterinsightsV1ListAnalysesResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                  },
                },
              },
            },
            insightsdata = {
              methods = {
                export = {
                  description = "Export insights data to a destination defined in the request body.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/insightsdata:export",
                  httpMethod = "POST",
                  id = "contactcenterinsights.projects.locations.insightsdata.export",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    parent = {
                      description = "Required. The parent resource to export data from.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/insightsdata:export",
                  request = {
                    ["$ref"] = "GoogleCloudContactcenterinsightsV1ExportInsightsDataRequest",
                  },
                  response = {
                    ["$ref"] = "GoogleLongrunningOperation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
              },
            },
            issueModels = {
              methods = {
                calculateIssueModelStats = {
                  description = "Gets an issue model's statistics.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/issueModels/{issueModelsId}:calculateIssueModelStats",
                  httpMethod = "GET",
                  id = "contactcenterinsights.projects.locations.issueModels.calculateIssueModelStats",
                  parameterOrder = {
                    "issueModel",
                  },
                  parameters = {
                    issueModel = {
                      description = "Required. The resource name of the issue model to query against.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/issueModels/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+issueModel}:calculateIssueModelStats",
                  response = {
                    ["$ref"] = "GoogleCloudContactcenterinsightsV1CalculateIssueModelStatsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                create = {
                  description = "Creates an issue model.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/issueModels",
                  httpMethod = "POST",
                  id = "contactcenterinsights.projects.locations.issueModels.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    parent = {
                      description = "Required. The parent resource of the issue model.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/issueModels",
                  request = {
                    ["$ref"] = "GoogleCloudContactcenterinsightsV1IssueModel",
                  },
                  response = {
                    ["$ref"] = "GoogleLongrunningOperation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                delete = {
                  description = "Deletes an issue model.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/issueModels/{issueModelsId}",
                  httpMethod = "DELETE",
                  id = "contactcenterinsights.projects.locations.issueModels.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The name of the issue model to delete.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/issueModels/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "GoogleLongrunningOperation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                deploy = {
                  description = "Deploys an issue model. Returns an error if a model is already deployed. An issue model can only be used in analysis after it has been deployed.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/issueModels/{issueModelsId}:deploy",
                  httpMethod = "POST",
                  id = "contactcenterinsights.projects.locations.issueModels.deploy",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The issue model to deploy.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/issueModels/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}:deploy",
                  request = {
                    ["$ref"] = "GoogleCloudContactcenterinsightsV1DeployIssueModelRequest",
                  },
                  response = {
                    ["$ref"] = "GoogleLongrunningOperation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                get = {
                  description = "Gets an issue model.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/issueModels/{issueModelsId}",
                  httpMethod = "GET",
                  id = "contactcenterinsights.projects.locations.issueModels.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The name of the issue model to get.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/issueModels/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "GoogleCloudContactcenterinsightsV1IssueModel",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                list = {
                  description = "Lists issue models.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/issueModels",
                  httpMethod = "GET",
                  id = "contactcenterinsights.projects.locations.issueModels.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    parent = {
                      description = "Required. The parent resource of the issue model.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/issueModels",
                  response = {
                    ["$ref"] = "GoogleCloudContactcenterinsightsV1ListIssueModelsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                patch = {
                  description = "Updates an issue model.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/issueModels/{issueModelsId}",
                  httpMethod = "PATCH",
                  id = "contactcenterinsights.projects.locations.issueModels.patch",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Immutable. The resource name of the issue model. Format: projects/{project}/locations/{location}/issueModels/{issue_model}",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/issueModels/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    updateMask = {
                      description = "The list of fields to be updated.",
                      format = "google-fieldmask",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  request = {
                    ["$ref"] = "GoogleCloudContactcenterinsightsV1IssueModel",
                  },
                  response = {
                    ["$ref"] = "GoogleCloudContactcenterinsightsV1IssueModel",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                undeploy = {
                  description = "Undeploys an issue model. An issue model can not be used in analysis after it has been undeployed.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/issueModels/{issueModelsId}:undeploy",
                  httpMethod = "POST",
                  id = "contactcenterinsights.projects.locations.issueModels.undeploy",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The issue model to undeploy.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/issueModels/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}:undeploy",
                  request = {
                    ["$ref"] = "GoogleCloudContactcenterinsightsV1UndeployIssueModelRequest",
                  },
                  response = {
                    ["$ref"] = "GoogleLongrunningOperation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
              },
              resources = {
                issues = {
                  methods = {
                    delete = {
                      description = "Deletes an issue.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/issueModels/{issueModelsId}/issues/{issuesId}",
                      httpMethod = "DELETE",
                      id = "contactcenterinsights.projects.locations.issueModels.issues.delete",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The name of the issue to delete.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/issueModels/[^/]+/issues/[^/]+$",
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
                      description = "Gets an issue.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/issueModels/{issueModelsId}/issues/{issuesId}",
                      httpMethod = "GET",
                      id = "contactcenterinsights.projects.locations.issueModels.issues.get",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The name of the issue to get.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/issueModels/[^/]+/issues/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}",
                      response = {
                        ["$ref"] = "GoogleCloudContactcenterinsightsV1Issue",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    list = {
                      description = "Lists issues.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/issueModels/{issueModelsId}/issues",
                      httpMethod = "GET",
                      id = "contactcenterinsights.projects.locations.issueModels.issues.list",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        parent = {
                          description = "Required. The parent resource of the issue.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/issueModels/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/issues",
                      response = {
                        ["$ref"] = "GoogleCloudContactcenterinsightsV1ListIssuesResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    patch = {
                      description = "Updates an issue.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/issueModels/{issueModelsId}/issues/{issuesId}",
                      httpMethod = "PATCH",
                      id = "contactcenterinsights.projects.locations.issueModels.issues.patch",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Immutable. The resource name of the issue. Format: projects/{project}/locations/{location}/issueModels/{issue_model}/issues/{issue}",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/issueModels/[^/]+/issues/[^/]+$",
                          required = true,
                          type = "string",
                        },
                        updateMask = {
                          description = "The list of fields to be updated.",
                          format = "google-fieldmask",
                          location = "query",
                          type = "string",
                        },
                      },
                      path = "v1/{+name}",
                      request = {
                        ["$ref"] = "GoogleCloudContactcenterinsightsV1Issue",
                      },
                      response = {
                        ["$ref"] = "GoogleCloudContactcenterinsightsV1Issue",
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
                  id = "contactcenterinsights.projects.locations.operations.cancel",
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
                  response = {
                    ["$ref"] = "GoogleProtobufEmpty",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                get = {
                  description = "Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/operations/{operationsId}",
                  httpMethod = "GET",
                  id = "contactcenterinsights.projects.locations.operations.get",
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
                    ["$ref"] = "GoogleLongrunningOperation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                list = {
                  description = "Lists operations that match the specified filter in the request. If the server doesn't support this method, it returns `UNIMPLEMENTED`. NOTE: the `name` binding allows API services to override the binding to use different resource name schemes, such as `users/*/operations`. To override the binding, API services can add a binding such as `\"/v1/{name=users/*}/operations\"` to their service configuration. For backwards compatibility, the default name includes the operations collection id, however overriding users must ensure the name binding is the parent resource, without the operations collection id.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/operations",
                  httpMethod = "GET",
                  id = "contactcenterinsights.projects.locations.operations.list",
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
                    ["$ref"] = "GoogleLongrunningListOperationsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
              },
            },
            phraseMatchers = {
              methods = {
                create = {
                  description = "Creates a phrase matcher.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/phraseMatchers",
                  httpMethod = "POST",
                  id = "contactcenterinsights.projects.locations.phraseMatchers.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    parent = {
                      description = "Required. The parent resource of the phrase matcher. Required. The location to create a phrase matcher for. Format: `projects//locations/` or `projects//locations/`",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/phraseMatchers",
                  request = {
                    ["$ref"] = "GoogleCloudContactcenterinsightsV1PhraseMatcher",
                  },
                  response = {
                    ["$ref"] = "GoogleCloudContactcenterinsightsV1PhraseMatcher",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                delete = {
                  description = "Deletes a phrase matcher.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/phraseMatchers/{phraseMatchersId}",
                  httpMethod = "DELETE",
                  id = "contactcenterinsights.projects.locations.phraseMatchers.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The name of the phrase matcher to delete.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/phraseMatchers/[^/]+$",
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
                  description = "Gets a phrase matcher.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/phraseMatchers/{phraseMatchersId}",
                  httpMethod = "GET",
                  id = "contactcenterinsights.projects.locations.phraseMatchers.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The name of the phrase matcher to get.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/phraseMatchers/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "GoogleCloudContactcenterinsightsV1PhraseMatcher",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                list = {
                  description = "Lists phrase matchers.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/phraseMatchers",
                  httpMethod = "GET",
                  id = "contactcenterinsights.projects.locations.phraseMatchers.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    filter = {
                      description = "A filter to reduce results to a specific subset. Useful for querying phrase matchers with specific properties.",
                      location = "query",
                      type = "string",
                    },
                    pageSize = {
                      description = "The maximum number of phrase matchers to return in the response. If this value is zero, the service will select a default size. A call might return fewer objects than requested. A non-empty `next_page_token` in the response indicates that more data is available.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "The value returned by the last `ListPhraseMatchersResponse`. This value indicates that this is a continuation of a prior `ListPhraseMatchers` call and that the system should return the next page of data.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The parent resource of the phrase matcher.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/phraseMatchers",
                  response = {
                    ["$ref"] = "GoogleCloudContactcenterinsightsV1ListPhraseMatchersResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                patch = {
                  description = "Updates a phrase matcher.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/phraseMatchers/{phraseMatchersId}",
                  httpMethod = "PATCH",
                  id = "contactcenterinsights.projects.locations.phraseMatchers.patch",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "The resource name of the phrase matcher. Format: projects/{project}/locations/{location}/phraseMatchers/{phrase_matcher}",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/phraseMatchers/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    updateMask = {
                      description = "The list of fields to be updated.",
                      format = "google-fieldmask",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  request = {
                    ["$ref"] = "GoogleCloudContactcenterinsightsV1PhraseMatcher",
                  },
                  response = {
                    ["$ref"] = "GoogleCloudContactcenterinsightsV1PhraseMatcher",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
              },
            },
            views = {
              methods = {
                create = {
                  description = "Creates a view.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/views",
                  httpMethod = "POST",
                  id = "contactcenterinsights.projects.locations.views.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    parent = {
                      description = "Required. The parent resource of the view. Required. The location to create a view for. Format: `projects//locations/` or `projects//locations/`",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/views",
                  request = {
                    ["$ref"] = "GoogleCloudContactcenterinsightsV1View",
                  },
                  response = {
                    ["$ref"] = "GoogleCloudContactcenterinsightsV1View",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                delete = {
                  description = "Deletes a view.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/views/{viewsId}",
                  httpMethod = "DELETE",
                  id = "contactcenterinsights.projects.locations.views.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The name of the view to delete.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/views/[^/]+$",
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
                  description = "Gets a view.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/views/{viewsId}",
                  httpMethod = "GET",
                  id = "contactcenterinsights.projects.locations.views.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The name of the view to get.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/views/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "GoogleCloudContactcenterinsightsV1View",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                list = {
                  description = "Lists views.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/views",
                  httpMethod = "GET",
                  id = "contactcenterinsights.projects.locations.views.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    pageSize = {
                      description = "The maximum number of views to return in the response. If this value is zero, the service will select a default size. A call may return fewer objects than requested. A non-empty `next_page_token` in the response indicates that more data is available.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "The value returned by the last `ListViewsResponse`; indicates that this is a continuation of a prior `ListViews` call and the system should return the next page of data.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The parent resource of the views.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/views",
                  response = {
                    ["$ref"] = "GoogleCloudContactcenterinsightsV1ListViewsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                patch = {
                  description = "Updates a view.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/views/{viewsId}",
                  httpMethod = "PATCH",
                  id = "contactcenterinsights.projects.locations.views.patch",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Immutable. The resource name of the view. Format: projects/{project}/locations/{location}/views/{view}",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/views/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    updateMask = {
                      description = "The list of fields to be updated.",
                      format = "google-fieldmask",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  request = {
                    ["$ref"] = "GoogleCloudContactcenterinsightsV1View",
                  },
                  response = {
                    ["$ref"] = "GoogleCloudContactcenterinsightsV1View",
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
  revision = "20230115",
  rootUrl = "https://contactcenterinsights.googleapis.com/",
  schemas = {
    GoogleCloudContactcenterinsightsV1Analysis = {
      description = "The analysis resource.",
      id = "GoogleCloudContactcenterinsightsV1Analysis",
      properties = {
        analysisResult = {
          ["$ref"] = "GoogleCloudContactcenterinsightsV1AnalysisResult",
          description = "Output only. The result of the analysis, which is populated when the analysis finishes.",
          readOnly = true,
        },
        annotatorSelector = {
          ["$ref"] = "GoogleCloudContactcenterinsightsV1AnnotatorSelector",
          description = "To select the annotators to run and the phrase matchers to use (if any). If not specified, all annotators will be run.",
        },
        createTime = {
          description = "Output only. The time at which the analysis was created, which occurs when the long-running operation completes.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        name = {
          description = "Immutable. The resource name of the analysis. Format: projects/{project}/locations/{location}/conversations/{conversation}/analyses/{analysis}",
          type = "string",
        },
        requestTime = {
          description = "Output only. The time at which the analysis was requested.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudContactcenterinsightsV1AnalysisResult = {
      description = "The result of an analysis.",
      id = "GoogleCloudContactcenterinsightsV1AnalysisResult",
      properties = {
        callAnalysisMetadata = {
          ["$ref"] = "GoogleCloudContactcenterinsightsV1AnalysisResultCallAnalysisMetadata",
          description = "Call-specific metadata created by the analysis.",
        },
        endTime = {
          description = "The time at which the analysis ended.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudContactcenterinsightsV1AnalysisResultCallAnalysisMetadata = {
      description = "Call-specific metadata created during analysis.",
      id = "GoogleCloudContactcenterinsightsV1AnalysisResultCallAnalysisMetadata",
      properties = {
        annotations = {
          description = "A list of call annotations that apply to this call.",
          items = {
            ["$ref"] = "GoogleCloudContactcenterinsightsV1CallAnnotation",
          },
          type = "array",
        },
        entities = {
          additionalProperties = {
            ["$ref"] = "GoogleCloudContactcenterinsightsV1Entity",
          },
          description = "All the entities in the call.",
          type = "object",
        },
        intents = {
          additionalProperties = {
            ["$ref"] = "GoogleCloudContactcenterinsightsV1Intent",
          },
          description = "All the matched intents in the call.",
          type = "object",
        },
        issueModelResult = {
          ["$ref"] = "GoogleCloudContactcenterinsightsV1IssueModelResult",
          description = "Overall conversation-level issue modeling result.",
        },
        phraseMatchers = {
          additionalProperties = {
            ["$ref"] = "GoogleCloudContactcenterinsightsV1PhraseMatchData",
          },
          description = "All the matched phrase matchers in the call.",
          type = "object",
        },
        sentiments = {
          description = "Overall conversation-level sentiment for each channel of the call.",
          items = {
            ["$ref"] = "GoogleCloudContactcenterinsightsV1ConversationLevelSentiment",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudContactcenterinsightsV1AnnotationBoundary = {
      description = "A point in a conversation that marks the start or the end of an annotation.",
      id = "GoogleCloudContactcenterinsightsV1AnnotationBoundary",
      properties = {
        transcriptIndex = {
          description = "The index in the sequence of transcribed pieces of the conversation where the boundary is located. This index starts at zero.",
          format = "int32",
          type = "integer",
        },
        wordIndex = {
          description = "The word index of this boundary with respect to the first word in the transcript piece. This index starts at zero.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    GoogleCloudContactcenterinsightsV1AnnotatorSelector = {
      description = "Selector of all available annotators and phrase matchers to run.",
      id = "GoogleCloudContactcenterinsightsV1AnnotatorSelector",
      properties = {
        issueModels = {
          description = "The issue model to run. If not provided, the most recently deployed topic model will be used. The provided issue model will only be used for inference if the issue model is deployed and if run_issue_model_annotator is set to true. If more than one issue model is provided, only the first provided issue model will be used for inference.",
          items = {
            type = "string",
          },
          type = "array",
        },
        phraseMatchers = {
          description = "The list of phrase matchers to run. If not provided, all active phrase matchers will be used. If inactive phrase matchers are provided, they will not be used. Phrase matchers will be run only if run_phrase_matcher_annotator is set to true. Format: projects/{project}/locations/{location}/phraseMatchers/{phrase_matcher}",
          items = {
            type = "string",
          },
          type = "array",
        },
        runEntityAnnotator = {
          description = "Whether to run the entity annotator.",
          type = "boolean",
        },
        runIntentAnnotator = {
          description = "Whether to run the intent annotator.",
          type = "boolean",
        },
        runInterruptionAnnotator = {
          description = "Whether to run the interruption annotator.",
          type = "boolean",
        },
        runIssueModelAnnotator = {
          description = "Whether to run the issue model annotator. A model should have already been deployed for this to take effect.",
          type = "boolean",
        },
        runPhraseMatcherAnnotator = {
          description = "Whether to run the active phrase matcher annotator(s).",
          type = "boolean",
        },
        runSentimentAnnotator = {
          description = "Whether to run the sentiment annotator.",
          type = "boolean",
        },
        runSilenceAnnotator = {
          description = "Whether to run the silence annotator.",
          type = "boolean",
        },
      },
      type = "object",
    },
    GoogleCloudContactcenterinsightsV1AnswerFeedback = {
      description = "The feedback that the customer has about a certain answer in the conversation.",
      id = "GoogleCloudContactcenterinsightsV1AnswerFeedback",
      properties = {
        clicked = {
          description = "Indicates whether an answer or item was clicked by the human agent.",
          type = "boolean",
        },
        correctnessLevel = {
          description = "The correctness level of an answer.",
          enum = {
            "CORRECTNESS_LEVEL_UNSPECIFIED",
            "NOT_CORRECT",
            "PARTIALLY_CORRECT",
            "FULLY_CORRECT",
          },
          enumDescriptions = {
            "Correctness level unspecified.",
            "Answer is totally wrong.",
            "Answer is partially correct.",
            "Answer is fully correct.",
          },
          type = "string",
        },
        displayed = {
          description = "Indicates whether an answer or item was displayed to the human agent in the agent desktop UI.",
          type = "boolean",
        },
      },
      type = "object",
    },
    GoogleCloudContactcenterinsightsV1ArticleSuggestionData = {
      description = "Agent Assist Article Suggestion data.",
      id = "GoogleCloudContactcenterinsightsV1ArticleSuggestionData",
      properties = {
        confidenceScore = {
          description = "The system's confidence score that this article is a good match for this conversation, ranging from 0.0 (completely uncertain) to 1.0 (completely certain).",
          format = "float",
          type = "number",
        },
        metadata = {
          additionalProperties = {
            type = "string",
          },
          description = "Map that contains metadata about the Article Suggestion and the document that it originates from.",
          type = "object",
        },
        queryRecord = {
          description = "The name of the answer record. Format: projects/{project}/locations/{location}/answerRecords/{answer_record}",
          type = "string",
        },
        source = {
          description = "The knowledge document that this answer was extracted from. Format: projects/{project}/knowledgeBases/{knowledge_base}/documents/{document}",
          type = "string",
        },
        title = {
          description = "Article title.",
          type = "string",
        },
        uri = {
          description = "Article URI.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudContactcenterinsightsV1BulkAnalyzeConversationsMetadata = {
      description = "The metadata for a bulk analyze conversations operation.",
      id = "GoogleCloudContactcenterinsightsV1BulkAnalyzeConversationsMetadata",
      properties = {
        completedAnalysesCount = {
          description = "The number of requested analyses that have completed successfully so far.",
          format = "int32",
          type = "integer",
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
        failedAnalysesCount = {
          description = "The number of requested analyses that have failed so far.",
          format = "int32",
          type = "integer",
        },
        request = {
          ["$ref"] = "GoogleCloudContactcenterinsightsV1BulkAnalyzeConversationsRequest",
          description = "The original request for bulk analyze.",
        },
        totalRequestedAnalysesCount = {
          description = "Total number of analyses requested. Computed by the number of conversations returned by `filter` multiplied by `analysis_percentage` in the request.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    GoogleCloudContactcenterinsightsV1BulkAnalyzeConversationsRequest = {
      description = "The request to analyze conversations in bulk.",
      id = "GoogleCloudContactcenterinsightsV1BulkAnalyzeConversationsRequest",
      properties = {
        analysisPercentage = {
          description = "Required. Percentage of selected conversation to analyze, between [0, 100].",
          format = "float",
          type = "number",
        },
        annotatorSelector = {
          ["$ref"] = "GoogleCloudContactcenterinsightsV1AnnotatorSelector",
          description = "To select the annotators to run and the phrase matchers to use (if any). If not specified, all annotators will be run.",
        },
        filter = {
          description = "Required. Filter used to select the subset of conversations to analyze.",
          type = "string",
        },
        parent = {
          description = "Required. The parent resource to create analyses in.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudContactcenterinsightsV1BulkAnalyzeConversationsResponse = {
      description = "The response for a bulk analyze conversations operation.",
      id = "GoogleCloudContactcenterinsightsV1BulkAnalyzeConversationsResponse",
      properties = {
        failedAnalysisCount = {
          description = "Count of failed analyses.",
          format = "int32",
          type = "integer",
        },
        successfulAnalysisCount = {
          description = "Count of successful analyses.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    GoogleCloudContactcenterinsightsV1CalculateIssueModelStatsResponse = {
      description = "Response of querying an issue model's statistics.",
      id = "GoogleCloudContactcenterinsightsV1CalculateIssueModelStatsResponse",
      properties = {
        currentStats = {
          ["$ref"] = "GoogleCloudContactcenterinsightsV1IssueModelLabelStats",
          description = "The latest label statistics for the queried issue model. Includes results on both training data and data labeled after deployment.",
        },
      },
      type = "object",
    },
    GoogleCloudContactcenterinsightsV1CalculateStatsResponse = {
      description = "The response for calculating conversation statistics.",
      id = "GoogleCloudContactcenterinsightsV1CalculateStatsResponse",
      properties = {
        averageDuration = {
          description = "The average duration of all conversations. The average is calculated using only conversations that have a time duration.",
          format = "google-duration",
          type = "string",
        },
        averageTurnCount = {
          description = "The average number of turns per conversation.",
          format = "int32",
          type = "integer",
        },
        conversationCount = {
          description = "The total number of conversations.",
          format = "int32",
          type = "integer",
        },
        conversationCountTimeSeries = {
          ["$ref"] = "GoogleCloudContactcenterinsightsV1CalculateStatsResponseTimeSeries",
          description = "A time series representing the count of conversations created over time that match that requested filter criteria.",
        },
        customHighlighterMatches = {
          additionalProperties = {
            format = "int32",
            type = "integer",
          },
          description = "A map associating each custom highlighter resource name with its respective number of matches in the set of conversations.",
          type = "object",
        },
        issueMatches = {
          additionalProperties = {
            format = "int32",
            type = "integer",
          },
          description = "A map associating each issue resource name with its respective number of matches in the set of conversations. Key has the format: `projects//locations//issueModels//issues/` Deprecated, use `issue_matches_stats` field instead.",
          type = "object",
        },
        issueMatchesStats = {
          additionalProperties = {
            ["$ref"] = "GoogleCloudContactcenterinsightsV1IssueModelLabelStatsIssueStats",
          },
          description = "A map associating each issue resource name with its respective number of matches in the set of conversations. Key has the format: `projects//locations//issueModels//issues/`",
          type = "object",
        },
        smartHighlighterMatches = {
          additionalProperties = {
            format = "int32",
            type = "integer",
          },
          description = "A map associating each smart highlighter display name with its respective number of matches in the set of conversations.",
          type = "object",
        },
      },
      type = "object",
    },
    GoogleCloudContactcenterinsightsV1CalculateStatsResponseTimeSeries = {
      description = "A time series representing conversations over time.",
      id = "GoogleCloudContactcenterinsightsV1CalculateStatsResponseTimeSeries",
      properties = {
        intervalDuration = {
          description = "The duration of each interval.",
          format = "google-duration",
          type = "string",
        },
        points = {
          description = "An ordered list of intervals from earliest to latest, where each interval represents the number of conversations that transpired during the time window.",
          items = {
            ["$ref"] = "GoogleCloudContactcenterinsightsV1CalculateStatsResponseTimeSeriesInterval",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudContactcenterinsightsV1CalculateStatsResponseTimeSeriesInterval = {
      description = "A single interval in a time series.",
      id = "GoogleCloudContactcenterinsightsV1CalculateStatsResponseTimeSeriesInterval",
      properties = {
        conversationCount = {
          description = "The number of conversations created in this interval.",
          format = "int32",
          type = "integer",
        },
        startTime = {
          description = "The start time of this interval.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudContactcenterinsightsV1CallAnnotation = {
      description = "A piece of metadata that applies to a window of a call.",
      id = "GoogleCloudContactcenterinsightsV1CallAnnotation",
      properties = {
        annotationEndBoundary = {
          ["$ref"] = "GoogleCloudContactcenterinsightsV1AnnotationBoundary",
          description = "The boundary in the conversation where the annotation ends, inclusive.",
        },
        annotationStartBoundary = {
          ["$ref"] = "GoogleCloudContactcenterinsightsV1AnnotationBoundary",
          description = "The boundary in the conversation where the annotation starts, inclusive.",
        },
        channelTag = {
          description = "The channel of the audio where the annotation occurs. For single-channel audio, this field is not populated.",
          format = "int32",
          type = "integer",
        },
        entityMentionData = {
          ["$ref"] = "GoogleCloudContactcenterinsightsV1EntityMentionData",
          description = "Data specifying an entity mention.",
        },
        holdData = {
          ["$ref"] = "GoogleCloudContactcenterinsightsV1HoldData",
          description = "Data specifying a hold.",
        },
        intentMatchData = {
          ["$ref"] = "GoogleCloudContactcenterinsightsV1IntentMatchData",
          description = "Data specifying an intent match.",
        },
        interruptionData = {
          ["$ref"] = "GoogleCloudContactcenterinsightsV1InterruptionData",
          description = "Data specifying an interruption.",
        },
        issueMatchData = {
          ["$ref"] = "GoogleCloudContactcenterinsightsV1IssueMatchData",
          description = "Data specifying an issue match.",
        },
        phraseMatchData = {
          ["$ref"] = "GoogleCloudContactcenterinsightsV1PhraseMatchData",
          description = "Data specifying a phrase match.",
        },
        sentimentData = {
          ["$ref"] = "GoogleCloudContactcenterinsightsV1SentimentData",
          description = "Data specifying sentiment.",
        },
        silenceData = {
          ["$ref"] = "GoogleCloudContactcenterinsightsV1SilenceData",
          description = "Data specifying silence.",
        },
      },
      type = "object",
    },
    GoogleCloudContactcenterinsightsV1Conversation = {
      description = "The conversation resource.",
      id = "GoogleCloudContactcenterinsightsV1Conversation",
      properties = {
        agentId = {
          description = "An opaque, user-specified string representing the human agent who handled the conversation.",
          type = "string",
        },
        callMetadata = {
          ["$ref"] = "GoogleCloudContactcenterinsightsV1ConversationCallMetadata",
          description = "Call-specific metadata.",
        },
        createTime = {
          description = "Output only. The time at which the conversation was created.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        dataSource = {
          ["$ref"] = "GoogleCloudContactcenterinsightsV1ConversationDataSource",
          description = "The source of the audio and transcription for the conversation.",
        },
        dialogflowIntents = {
          additionalProperties = {
            ["$ref"] = "GoogleCloudContactcenterinsightsV1DialogflowIntent",
          },
          description = "Output only. All the matched Dialogflow intents in the call. The key corresponds to a Dialogflow intent, format: projects/{project}/agent/{agent}/intents/{intent}",
          readOnly = true,
          type = "object",
        },
        duration = {
          description = "Output only. The duration of the conversation.",
          format = "google-duration",
          readOnly = true,
          type = "string",
        },
        expireTime = {
          description = "The time at which this conversation should expire. After this time, the conversation data and any associated analyses will be deleted.",
          format = "google-datetime",
          type = "string",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "A map for the user to specify any custom fields. A maximum of 20 labels per conversation is allowed, with a maximum of 256 characters per entry.",
          type = "object",
        },
        languageCode = {
          description = "A user-specified language code for the conversation.",
          type = "string",
        },
        latestAnalysis = {
          ["$ref"] = "GoogleCloudContactcenterinsightsV1Analysis",
          description = "Output only. The conversation's latest analysis, if one exists.",
          readOnly = true,
        },
        medium = {
          description = "Immutable. The conversation medium, if unspecified will default to PHONE_CALL.",
          enum = {
            "MEDIUM_UNSPECIFIED",
            "PHONE_CALL",
            "CHAT",
          },
          enumDescriptions = {
            "Default value, if unspecified will default to PHONE_CALL.",
            "The format for conversations that took place over the phone.",
            "The format for conversations that took place over chat.",
          },
          type = "string",
        },
        name = {
          description = "Immutable. The resource name of the conversation. Format: projects/{project}/locations/{location}/conversations/{conversation}",
          type = "string",
        },
        obfuscatedUserId = {
          description = "Obfuscated user ID which the customer sent to us.",
          type = "string",
        },
        runtimeAnnotations = {
          description = "Output only. The annotations that were generated during the customer and agent interaction.",
          items = {
            ["$ref"] = "GoogleCloudContactcenterinsightsV1RuntimeAnnotation",
          },
          readOnly = true,
          type = "array",
        },
        startTime = {
          description = "The time at which the conversation started.",
          format = "google-datetime",
          type = "string",
        },
        transcript = {
          ["$ref"] = "GoogleCloudContactcenterinsightsV1ConversationTranscript",
          description = "Output only. The conversation transcript.",
          readOnly = true,
        },
        ttl = {
          description = "Input only. The TTL for this resource. If specified, then this TTL will be used to calculate the expire time.",
          format = "google-duration",
          type = "string",
        },
        turnCount = {
          description = "Output only. The number of turns in the conversation.",
          format = "int32",
          readOnly = true,
          type = "integer",
        },
        updateTime = {
          description = "Output only. The most recent time at which the conversation was updated.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudContactcenterinsightsV1ConversationCallMetadata = {
      description = "Call-specific metadata.",
      id = "GoogleCloudContactcenterinsightsV1ConversationCallMetadata",
      properties = {
        agentChannel = {
          description = "The audio channel that contains the agent.",
          format = "int32",
          type = "integer",
        },
        customerChannel = {
          description = "The audio channel that contains the customer.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    GoogleCloudContactcenterinsightsV1ConversationDataSource = {
      description = "The conversation source, which is a combination of transcript and audio.",
      id = "GoogleCloudContactcenterinsightsV1ConversationDataSource",
      properties = {
        dialogflowSource = {
          ["$ref"] = "GoogleCloudContactcenterinsightsV1DialogflowSource",
          description = "The source when the conversation comes from Dialogflow.",
        },
        gcsSource = {
          ["$ref"] = "GoogleCloudContactcenterinsightsV1GcsSource",
          description = "A Cloud Storage location specification for the audio and transcript.",
        },
      },
      type = "object",
    },
    GoogleCloudContactcenterinsightsV1ConversationLevelSentiment = {
      description = "One channel of conversation-level sentiment data.",
      id = "GoogleCloudContactcenterinsightsV1ConversationLevelSentiment",
      properties = {
        channelTag = {
          description = "The channel of the audio that the data applies to.",
          format = "int32",
          type = "integer",
        },
        sentimentData = {
          ["$ref"] = "GoogleCloudContactcenterinsightsV1SentimentData",
          description = "Data specifying sentiment.",
        },
      },
      type = "object",
    },
    GoogleCloudContactcenterinsightsV1ConversationParticipant = {
      description = "The call participant speaking for a given utterance.",
      id = "GoogleCloudContactcenterinsightsV1ConversationParticipant",
      properties = {
        dialogflowParticipant = {
          description = "Deprecated. Use `dialogflow_participant_name` instead. The name of the Dialogflow participant. Format: projects/{project}/locations/{location}/conversations/{conversation}/participants/{participant}",
          type = "string",
        },
        dialogflowParticipantName = {
          description = "The name of the participant provided by Dialogflow. Format: projects/{project}/locations/{location}/conversations/{conversation}/participants/{participant}",
          type = "string",
        },
        obfuscatedExternalUserId = {
          description = "Obfuscated user ID from Dialogflow.",
          type = "string",
        },
        role = {
          description = "The role of the participant.",
          enum = {
            "ROLE_UNSPECIFIED",
            "HUMAN_AGENT",
            "AUTOMATED_AGENT",
            "END_USER",
            "ANY_AGENT",
          },
          enumDescriptions = {
            "Participant's role is not set.",
            "Participant is a human agent.",
            "Participant is an automated agent.",
            "Participant is an end user who conversed with the contact center.",
            "Participant is either a human or automated agent.",
          },
          type = "string",
        },
        userId = {
          description = "A user-specified ID representing the participant.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudContactcenterinsightsV1ConversationTranscript = {
      description = "A message representing the transcript of a conversation.",
      id = "GoogleCloudContactcenterinsightsV1ConversationTranscript",
      properties = {
        transcriptSegments = {
          description = "A list of sequential transcript segments that comprise the conversation.",
          items = {
            ["$ref"] = "GoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegment",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegment = {
      description = "A segment of a full transcript.",
      id = "GoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegment",
      properties = {
        channelTag = {
          description = "For conversations derived from multi-channel audio, this is the channel number corresponding to the audio from that channel. For audioChannelCount = N, its output values can range from '1' to 'N'. A channel tag of 0 indicates that the audio is mono.",
          format = "int32",
          type = "integer",
        },
        confidence = {
          description = "A confidence estimate between 0.0 and 1.0 of the fidelity of this segment. A default value of 0.0 indicates that the value is unset.",
          format = "float",
          type = "number",
        },
        dialogflowSegmentMetadata = {
          ["$ref"] = "GoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegmentDialogflowSegmentMetadata",
          description = "CCAI metadata relating to the current transcript segment.",
        },
        languageCode = {
          description = "The language code of this segment as a [BCP-47](https://www.rfc-editor.org/rfc/bcp/bcp47.txt) language tag. Example: \"en-US\".",
          type = "string",
        },
        messageTime = {
          description = "The time that the message occurred, if provided.",
          format = "google-datetime",
          type = "string",
        },
        segmentParticipant = {
          ["$ref"] = "GoogleCloudContactcenterinsightsV1ConversationParticipant",
          description = "The participant of this segment.",
        },
        sentiment = {
          ["$ref"] = "GoogleCloudContactcenterinsightsV1SentimentData",
          description = "The sentiment for this transcript segment.",
        },
        text = {
          description = "The text of this segment.",
          type = "string",
        },
        words = {
          description = "A list of the word-specific information for each word in the segment.",
          items = {
            ["$ref"] = "GoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegmentWordInfo",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegmentDialogflowSegmentMetadata = {
      description = "Metadata from Dialogflow relating to the current transcript segment.",
      id = "GoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegmentDialogflowSegmentMetadata",
      properties = {
        smartReplyAllowlistCovered = {
          description = "Whether the transcript segment was covered under the configured smart reply allowlist in Agent Assist.",
          type = "boolean",
        },
      },
      type = "object",
    },
    GoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegmentWordInfo = {
      description = "Word-level info for words in a transcript.",
      id = "GoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegmentWordInfo",
      properties = {
        confidence = {
          description = "A confidence estimate between 0.0 and 1.0 of the fidelity of this word. A default value of 0.0 indicates that the value is unset.",
          format = "float",
          type = "number",
        },
        endOffset = {
          description = "Time offset of the end of this word relative to the beginning of the total conversation.",
          format = "google-duration",
          type = "string",
        },
        startOffset = {
          description = "Time offset of the start of this word relative to the beginning of the total conversation.",
          format = "google-duration",
          type = "string",
        },
        word = {
          description = "The word itself. Includes punctuation marks that surround the word.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudContactcenterinsightsV1CreateAnalysisOperationMetadata = {
      description = "Metadata for a create analysis operation.",
      id = "GoogleCloudContactcenterinsightsV1CreateAnalysisOperationMetadata",
      properties = {
        annotatorSelector = {
          ["$ref"] = "GoogleCloudContactcenterinsightsV1AnnotatorSelector",
          description = "Output only. The annotator selector used for the analysis (if any).",
          readOnly = true,
        },
        conversation = {
          description = "Output only. The Conversation that this Analysis Operation belongs to.",
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
      },
      type = "object",
    },
    GoogleCloudContactcenterinsightsV1CreateIssueModelMetadata = {
      description = "Metadata for creating an issue model.",
      id = "GoogleCloudContactcenterinsightsV1CreateIssueModelMetadata",
      properties = {
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
        request = {
          ["$ref"] = "GoogleCloudContactcenterinsightsV1CreateIssueModelRequest",
          description = "The original request for creation.",
        },
      },
      type = "object",
    },
    GoogleCloudContactcenterinsightsV1CreateIssueModelRequest = {
      description = "The request to create an issue model.",
      id = "GoogleCloudContactcenterinsightsV1CreateIssueModelRequest",
      properties = {
        issueModel = {
          ["$ref"] = "GoogleCloudContactcenterinsightsV1IssueModel",
          description = "Required. The issue model to create.",
        },
        parent = {
          description = "Required. The parent resource of the issue model.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudContactcenterinsightsV1DeleteIssueModelMetadata = {
      description = "Metadata for deleting an issue model.",
      id = "GoogleCloudContactcenterinsightsV1DeleteIssueModelMetadata",
      properties = {
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
        request = {
          ["$ref"] = "GoogleCloudContactcenterinsightsV1DeleteIssueModelRequest",
          description = "The original request for deletion.",
        },
      },
      type = "object",
    },
    GoogleCloudContactcenterinsightsV1DeleteIssueModelRequest = {
      description = "The request to delete an issue model.",
      id = "GoogleCloudContactcenterinsightsV1DeleteIssueModelRequest",
      properties = {
        name = {
          description = "Required. The name of the issue model to delete.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudContactcenterinsightsV1DeployIssueModelMetadata = {
      description = "Metadata for deploying an issue model.",
      id = "GoogleCloudContactcenterinsightsV1DeployIssueModelMetadata",
      properties = {
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
        request = {
          ["$ref"] = "GoogleCloudContactcenterinsightsV1DeployIssueModelRequest",
          description = "The original request for deployment.",
        },
      },
      type = "object",
    },
    GoogleCloudContactcenterinsightsV1DeployIssueModelRequest = {
      description = "The request to deploy an issue model.",
      id = "GoogleCloudContactcenterinsightsV1DeployIssueModelRequest",
      properties = {
        name = {
          description = "Required. The issue model to deploy.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudContactcenterinsightsV1DeployIssueModelResponse = {
      description = "The response to deploy an issue model.",
      id = "GoogleCloudContactcenterinsightsV1DeployIssueModelResponse",
      properties = {},
      type = "object",
    },
    GoogleCloudContactcenterinsightsV1DialogflowIntent = {
      description = "The data for a Dialogflow intent. Represents a detected intent in the conversation, e.g. MAKES_PROMISE.",
      id = "GoogleCloudContactcenterinsightsV1DialogflowIntent",
      properties = {
        displayName = {
          description = "The human-readable name of the intent.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudContactcenterinsightsV1DialogflowInteractionData = {
      description = "Dialogflow interaction data.",
      id = "GoogleCloudContactcenterinsightsV1DialogflowInteractionData",
      properties = {
        confidence = {
          description = "The confidence of the match ranging from 0.0 (completely uncertain) to 1.0 (completely certain).",
          format = "float",
          type = "number",
        },
        dialogflowIntentId = {
          description = "The Dialogflow intent resource path. Format: projects/{project}/agent/{agent}/intents/{intent}",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudContactcenterinsightsV1DialogflowSource = {
      description = "A Dialogflow source of conversation data.",
      id = "GoogleCloudContactcenterinsightsV1DialogflowSource",
      properties = {
        audioUri = {
          description = "Cloud Storage URI that points to a file that contains the conversation audio.",
          type = "string",
        },
        dialogflowConversation = {
          description = "Output only. The name of the Dialogflow conversation that this conversation resource is derived from. Format: projects/{project}/locations/{location}/conversations/{conversation}",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudContactcenterinsightsV1Entity = {
      description = "The data for an entity annotation. Represents a phrase in the conversation that is a known entity, such as a person, an organization, or location.",
      id = "GoogleCloudContactcenterinsightsV1Entity",
      properties = {
        displayName = {
          description = "The representative name for the entity.",
          type = "string",
        },
        metadata = {
          additionalProperties = {
            type = "string",
          },
          description = "Metadata associated with the entity. For most entity types, the metadata is a Wikipedia URL (`wikipedia_url`) and Knowledge Graph MID (`mid`), if they are available. For the metadata associated with other entity types, see the Type table below.",
          type = "object",
        },
        salience = {
          description = "The salience score associated with the entity in the [0, 1.0] range. The salience score for an entity provides information about the importance or centrality of that entity to the entire document text. Scores closer to 0 are less salient, while scores closer to 1.0 are highly salient.",
          format = "float",
          type = "number",
        },
        sentiment = {
          ["$ref"] = "GoogleCloudContactcenterinsightsV1SentimentData",
          description = "The aggregate sentiment expressed for this entity in the conversation.",
        },
        type = {
          description = "The entity type.",
          enum = {
            "TYPE_UNSPECIFIED",
            "PERSON",
            "LOCATION",
            "ORGANIZATION",
            "EVENT",
            "WORK_OF_ART",
            "CONSUMER_GOOD",
            "OTHER",
            "PHONE_NUMBER",
            "ADDRESS",
            "DATE",
            "NUMBER",
            "PRICE",
          },
          enumDescriptions = {
            "Unspecified.",
            "Person.",
            "Location.",
            "Organization.",
            "Event.",
            "Artwork.",
            "Consumer product.",
            "Other types of entities.",
            "Phone number. The metadata lists the phone number (formatted according to local convention), plus whichever additional elements appear in the text: * `number` - The actual number, broken down into sections according to local convention. * `national_prefix` - Country code, if detected. * `area_code` - Region or area code, if detected. * `extension` - Phone extension (to be dialed after connection), if detected.",
            "Address. The metadata identifies the street number and locality plus whichever additional elements appear in the text: * `street_number` - Street number. * `locality` - City or town. * `street_name` - Street/route name, if detected. * `postal_code` - Postal code, if detected. * `country` - Country, if detected. * `broad_region` - Administrative area, such as the state, if detected. * `narrow_region` - Smaller administrative area, such as county, if detected. * `sublocality` - Used in Asian addresses to demark a district within a city, if detected.",
            "Date. The metadata identifies the components of the date: * `year` - Four digit year, if detected. * `month` - Two digit month number, if detected. * `day` - Two digit day number, if detected.",
            "Number. The metadata is the number itself.",
            "Price. The metadata identifies the `value` and `currency`.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudContactcenterinsightsV1EntityMentionData = {
      description = "The data for an entity mention annotation. This represents a mention of an `Entity` in the conversation.",
      id = "GoogleCloudContactcenterinsightsV1EntityMentionData",
      properties = {
        entityUniqueId = {
          description = "The key of this entity in conversation entities. Can be used to retrieve the exact `Entity` this mention is attached to.",
          type = "string",
        },
        sentiment = {
          ["$ref"] = "GoogleCloudContactcenterinsightsV1SentimentData",
          description = "Sentiment expressed for this mention of the entity.",
        },
        type = {
          description = "The type of the entity mention.",
          enum = {
            "MENTION_TYPE_UNSPECIFIED",
            "PROPER",
            "COMMON",
          },
          enumDescriptions = {
            "Unspecified.",
            "Proper noun.",
            "Common noun (or noun compound).",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudContactcenterinsightsV1ExactMatchConfig = {
      description = "Exact match configuration.",
      id = "GoogleCloudContactcenterinsightsV1ExactMatchConfig",
      properties = {
        caseSensitive = {
          description = "Whether to consider case sensitivity when performing an exact match.",
          type = "boolean",
        },
      },
      type = "object",
    },
    GoogleCloudContactcenterinsightsV1ExportInsightsDataMetadata = {
      description = "Metadata for an export insights operation.",
      id = "GoogleCloudContactcenterinsightsV1ExportInsightsDataMetadata",
      properties = {
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
        partialErrors = {
          description = "Partial errors during export operation that might cause the operation output to be incomplete.",
          items = {
            ["$ref"] = "GoogleRpcStatus",
          },
          type = "array",
        },
        request = {
          ["$ref"] = "GoogleCloudContactcenterinsightsV1ExportInsightsDataRequest",
          description = "The original request for export.",
        },
      },
      type = "object",
    },
    GoogleCloudContactcenterinsightsV1ExportInsightsDataRequest = {
      description = "The request to export insights.",
      id = "GoogleCloudContactcenterinsightsV1ExportInsightsDataRequest",
      properties = {
        bigQueryDestination = {
          ["$ref"] = "GoogleCloudContactcenterinsightsV1ExportInsightsDataRequestBigQueryDestination",
          description = "Specified if sink is a BigQuery table.",
        },
        filter = {
          description = "A filter to reduce results to a specific subset. Useful for exporting conversations with specific properties.",
          type = "string",
        },
        kmsKey = {
          description = "A fully qualified KMS key name for BigQuery tables protected by CMEK. Format: projects/{project}/locations/{location}/keyRings/{keyring}/cryptoKeys/{key}/cryptoKeyVersions/{version}",
          type = "string",
        },
        parent = {
          description = "Required. The parent resource to export data from.",
          type = "string",
        },
        writeDisposition = {
          description = "Options for what to do if the destination table already exists.",
          enum = {
            "WRITE_DISPOSITION_UNSPECIFIED",
            "WRITE_TRUNCATE",
            "WRITE_APPEND",
          },
          enumDescriptions = {
            "Write disposition is not specified. Defaults to WRITE_TRUNCATE.",
            "If the table already exists, BigQuery will overwrite the table data and use the schema from the load.",
            "If the table already exists, BigQuery will append data to the table.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudContactcenterinsightsV1ExportInsightsDataRequestBigQueryDestination = {
      description = "A BigQuery Table Reference.",
      id = "GoogleCloudContactcenterinsightsV1ExportInsightsDataRequestBigQueryDestination",
      properties = {
        dataset = {
          description = "Required. The name of the BigQuery dataset that the snapshot result should be exported to. If this dataset does not exist, the export call returns an INVALID_ARGUMENT error.",
          type = "string",
        },
        projectId = {
          description = "A project ID or number. If specified, then export will attempt to write data to this project instead of the resource project. Otherwise, the resource project will be used.",
          type = "string",
        },
        table = {
          description = "The BigQuery table name to which the insights data should be written. If this table does not exist, the export call returns an INVALID_ARGUMENT error.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudContactcenterinsightsV1ExportInsightsDataResponse = {
      description = "Response for an export insights operation.",
      id = "GoogleCloudContactcenterinsightsV1ExportInsightsDataResponse",
      properties = {},
      type = "object",
    },
    GoogleCloudContactcenterinsightsV1FaqAnswerData = {
      description = "Agent Assist frequently-asked-question answer data.",
      id = "GoogleCloudContactcenterinsightsV1FaqAnswerData",
      properties = {
        answer = {
          description = "The piece of text from the `source` knowledge base document.",
          type = "string",
        },
        confidenceScore = {
          description = "The system's confidence score that this answer is a good match for this conversation, ranging from 0.0 (completely uncertain) to 1.0 (completely certain).",
          format = "float",
          type = "number",
        },
        metadata = {
          additionalProperties = {
            type = "string",
          },
          description = "Map that contains metadata about the FAQ answer and the document that it originates from.",
          type = "object",
        },
        queryRecord = {
          description = "The name of the answer record. Format: projects/{project}/locations/{location}/answerRecords/{answer_record}",
          type = "string",
        },
        question = {
          description = "The corresponding FAQ question.",
          type = "string",
        },
        source = {
          description = "The knowledge document that this answer was extracted from. Format: projects/{project}/knowledgeBases/{knowledge_base}/documents/{document}.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudContactcenterinsightsV1GcsSource = {
      description = "A Cloud Storage source of conversation data.",
      id = "GoogleCloudContactcenterinsightsV1GcsSource",
      properties = {
        audioUri = {
          description = "Cloud Storage URI that points to a file that contains the conversation audio.",
          type = "string",
        },
        transcriptUri = {
          description = "Immutable. Cloud Storage URI that points to a file that contains the conversation transcript.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudContactcenterinsightsV1HoldData = {
      description = "The data for a hold annotation.",
      id = "GoogleCloudContactcenterinsightsV1HoldData",
      properties = {},
      type = "object",
    },
    GoogleCloudContactcenterinsightsV1IngestConversationsMetadata = {
      description = "The metadata for an IngestConversations operation.",
      id = "GoogleCloudContactcenterinsightsV1IngestConversationsMetadata",
      properties = {
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
        partialErrors = {
          description = "Output only. Partial errors during ingest operation that might cause the operation output to be incomplete.",
          items = {
            ["$ref"] = "GoogleRpcStatus",
          },
          readOnly = true,
          type = "array",
        },
        request = {
          ["$ref"] = "GoogleCloudContactcenterinsightsV1IngestConversationsRequest",
          description = "Output only. The original request for ingest.",
          readOnly = true,
        },
      },
      type = "object",
    },
    GoogleCloudContactcenterinsightsV1IngestConversationsRequest = {
      description = "The request to ingest conversations.",
      id = "GoogleCloudContactcenterinsightsV1IngestConversationsRequest",
      properties = {
        conversationConfig = {
          ["$ref"] = "GoogleCloudContactcenterinsightsV1IngestConversationsRequestConversationConfig",
          description = "Configuration that applies to all conversations.",
        },
        gcsSource = {
          ["$ref"] = "GoogleCloudContactcenterinsightsV1IngestConversationsRequestGcsSource",
          description = "A cloud storage bucket source.",
        },
        parent = {
          description = "Required. The parent resource for new conversations.",
          type = "string",
        },
        transcriptObjectConfig = {
          ["$ref"] = "GoogleCloudContactcenterinsightsV1IngestConversationsRequestTranscriptObjectConfig",
          description = "Configuration for when `source` contains conversation transcripts.",
        },
      },
      type = "object",
    },
    GoogleCloudContactcenterinsightsV1IngestConversationsRequestConversationConfig = {
      description = "Configuration that applies to all conversations.",
      id = "GoogleCloudContactcenterinsightsV1IngestConversationsRequestConversationConfig",
      properties = {
        agentId = {
          description = "An opaque, user-specified string representing the human agent who handled the conversations.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudContactcenterinsightsV1IngestConversationsRequestGcsSource = {
      description = "Configuration for Cloud Storage bucket sources.",
      id = "GoogleCloudContactcenterinsightsV1IngestConversationsRequestGcsSource",
      properties = {
        bucketUri = {
          description = "Required. The Cloud Storage bucket containing source objects.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudContactcenterinsightsV1IngestConversationsRequestTranscriptObjectConfig = {
      description = "Configuration for processing transcript objects.",
      id = "GoogleCloudContactcenterinsightsV1IngestConversationsRequestTranscriptObjectConfig",
      properties = {
        medium = {
          description = "Required. The medium transcript objects represent.",
          enum = {
            "MEDIUM_UNSPECIFIED",
            "PHONE_CALL",
            "CHAT",
          },
          enumDescriptions = {
            "Default value, if unspecified will default to PHONE_CALL.",
            "The format for conversations that took place over the phone.",
            "The format for conversations that took place over chat.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudContactcenterinsightsV1IngestConversationsResponse = {
      description = "The response to an IngestConversations operation.",
      id = "GoogleCloudContactcenterinsightsV1IngestConversationsResponse",
      properties = {},
      type = "object",
    },
    GoogleCloudContactcenterinsightsV1Intent = {
      description = "The data for an intent. Represents a detected intent in the conversation, for example MAKES_PROMISE.",
      id = "GoogleCloudContactcenterinsightsV1Intent",
      properties = {
        displayName = {
          description = "The human-readable name of the intent.",
          type = "string",
        },
        id = {
          description = "The unique identifier of the intent.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudContactcenterinsightsV1IntentMatchData = {
      description = "The data for an intent match. Represents an intent match for a text segment in the conversation. A text segment can be part of a sentence, a complete sentence, or an utterance with multiple sentences.",
      id = "GoogleCloudContactcenterinsightsV1IntentMatchData",
      properties = {
        intentUniqueId = {
          description = "The id of the matched intent. Can be used to retrieve the corresponding intent information.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudContactcenterinsightsV1InterruptionData = {
      description = "The data for an interruption annotation.",
      id = "GoogleCloudContactcenterinsightsV1InterruptionData",
      properties = {},
      type = "object",
    },
    GoogleCloudContactcenterinsightsV1Issue = {
      description = "The issue resource.",
      id = "GoogleCloudContactcenterinsightsV1Issue",
      properties = {
        createTime = {
          description = "Output only. The time at which this issue was created.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        displayName = {
          description = "The representative name for the issue.",
          type = "string",
        },
        name = {
          description = "Immutable. The resource name of the issue. Format: projects/{project}/locations/{location}/issueModels/{issue_model}/issues/{issue}",
          type = "string",
        },
        sampleUtterances = {
          description = "Output only. Resource names of the sample representative utterances that match to this issue.",
          items = {
            type = "string",
          },
          readOnly = true,
          type = "array",
        },
        updateTime = {
          description = "Output only. The most recent time that this issue was updated.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudContactcenterinsightsV1IssueAssignment = {
      description = "Information about the issue.",
      id = "GoogleCloudContactcenterinsightsV1IssueAssignment",
      properties = {
        displayName = {
          description = "Immutable. Display name of the assigned issue. This field is set at time of analyis and immutable since then.",
          type = "string",
        },
        issue = {
          description = "Resource name of the assigned issue.",
          type = "string",
        },
        score = {
          description = "Score indicating the likelihood of the issue assignment. currently bounded on [0,1].",
          format = "double",
          type = "number",
        },
      },
      type = "object",
    },
    GoogleCloudContactcenterinsightsV1IssueMatchData = {
      description = "The data for an issue match annotation.",
      id = "GoogleCloudContactcenterinsightsV1IssueMatchData",
      properties = {
        issueAssignment = {
          ["$ref"] = "GoogleCloudContactcenterinsightsV1IssueAssignment",
          description = "Information about the issue's assignment.",
        },
      },
      type = "object",
    },
    GoogleCloudContactcenterinsightsV1IssueModel = {
      description = "The issue model resource.",
      id = "GoogleCloudContactcenterinsightsV1IssueModel",
      properties = {
        createTime = {
          description = "Output only. The time at which this issue model was created.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        displayName = {
          description = "The representative name for the issue model.",
          type = "string",
        },
        inputDataConfig = {
          ["$ref"] = "GoogleCloudContactcenterinsightsV1IssueModelInputDataConfig",
          description = "Configs for the input data that used to create the issue model.",
        },
        issueCount = {
          description = "Output only. Number of issues in this issue model.",
          format = "int64",
          readOnly = true,
          type = "string",
        },
        name = {
          description = "Immutable. The resource name of the issue model. Format: projects/{project}/locations/{location}/issueModels/{issue_model}",
          type = "string",
        },
        state = {
          description = "Output only. State of the model.",
          enum = {
            "STATE_UNSPECIFIED",
            "UNDEPLOYED",
            "DEPLOYING",
            "DEPLOYED",
            "UNDEPLOYING",
            "DELETING",
          },
          enumDescriptions = {
            "Unspecified.",
            "Model is not deployed but is ready to deploy.",
            "Model is being deployed.",
            "Model is deployed and is ready to be used. A model can only be used in analysis if it's in this state.",
            "Model is being undeployed.",
            "Model is being deleted.",
          },
          readOnly = true,
          type = "string",
        },
        trainingStats = {
          ["$ref"] = "GoogleCloudContactcenterinsightsV1IssueModelLabelStats",
          description = "Output only. Immutable. The issue model's label statistics on its training data.",
          readOnly = true,
        },
        updateTime = {
          description = "Output only. The most recent time at which the issue model was updated.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudContactcenterinsightsV1IssueModelInputDataConfig = {
      description = "Configs for the input data used to create the issue model.",
      id = "GoogleCloudContactcenterinsightsV1IssueModelInputDataConfig",
      properties = {
        filter = {
          description = "A filter to reduce the conversations used for training the model to a specific subset.",
          type = "string",
        },
        medium = {
          description = "Medium of conversations used in training data. This field is being deprecated. To specify the medium to be used in training a new issue model, set the `medium` field on `filter`.",
          enum = {
            "MEDIUM_UNSPECIFIED",
            "PHONE_CALL",
            "CHAT",
          },
          enumDescriptions = {
            "Default value, if unspecified will default to PHONE_CALL.",
            "The format for conversations that took place over the phone.",
            "The format for conversations that took place over chat.",
          },
          type = "string",
        },
        trainingConversationsCount = {
          description = "Output only. Number of conversations used in training. Output only.",
          format = "int64",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudContactcenterinsightsV1IssueModelLabelStats = {
      description = "Aggregated statistics about an issue model.",
      id = "GoogleCloudContactcenterinsightsV1IssueModelLabelStats",
      properties = {
        analyzedConversationsCount = {
          description = "Number of conversations the issue model has analyzed at this point in time.",
          format = "int64",
          type = "string",
        },
        issueStats = {
          additionalProperties = {
            ["$ref"] = "GoogleCloudContactcenterinsightsV1IssueModelLabelStatsIssueStats",
          },
          description = "Statistics on each issue. Key is the issue's resource name.",
          type = "object",
        },
        unclassifiedConversationsCount = {
          description = "Number of analyzed conversations for which no issue was applicable at this point in time.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudContactcenterinsightsV1IssueModelLabelStatsIssueStats = {
      description = "Aggregated statistics about an issue.",
      id = "GoogleCloudContactcenterinsightsV1IssueModelLabelStatsIssueStats",
      properties = {
        displayName = {
          description = "Display name of the issue.",
          type = "string",
        },
        issue = {
          description = "Issue resource. Format: projects/{project}/locations/{location}/issueModels/{issue_model}/issues/{issue}",
          type = "string",
        },
        labeledConversationsCount = {
          description = "Number of conversations attached to the issue at this point in time.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudContactcenterinsightsV1IssueModelResult = {
      description = "Issue Modeling result on a conversation.",
      id = "GoogleCloudContactcenterinsightsV1IssueModelResult",
      properties = {
        issueModel = {
          description = "Issue model that generates the result. Format: projects/{project}/locations/{location}/issueModels/{issue_model}",
          type = "string",
        },
        issues = {
          description = "All the matched issues.",
          items = {
            ["$ref"] = "GoogleCloudContactcenterinsightsV1IssueAssignment",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudContactcenterinsightsV1ListAnalysesResponse = {
      description = "The response to list analyses.",
      id = "GoogleCloudContactcenterinsightsV1ListAnalysesResponse",
      properties = {
        analyses = {
          description = "The analyses that match the request.",
          items = {
            ["$ref"] = "GoogleCloudContactcenterinsightsV1Analysis",
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
    GoogleCloudContactcenterinsightsV1ListConversationsResponse = {
      description = "The response of listing conversations.",
      id = "GoogleCloudContactcenterinsightsV1ListConversationsResponse",
      properties = {
        conversations = {
          description = "The conversations that match the request.",
          items = {
            ["$ref"] = "GoogleCloudContactcenterinsightsV1Conversation",
          },
          type = "array",
        },
        nextPageToken = {
          description = "A token which can be sent as `page_token` to retrieve the next page. If this field is set, it means there is another page available. If it is not set, it means no other pages are available.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudContactcenterinsightsV1ListIssueModelsResponse = {
      description = "The response of listing issue models.",
      id = "GoogleCloudContactcenterinsightsV1ListIssueModelsResponse",
      properties = {
        issueModels = {
          description = "The issue models that match the request.",
          items = {
            ["$ref"] = "GoogleCloudContactcenterinsightsV1IssueModel",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudContactcenterinsightsV1ListIssuesResponse = {
      description = "The response of listing issues.",
      id = "GoogleCloudContactcenterinsightsV1ListIssuesResponse",
      properties = {
        issues = {
          description = "The issues that match the request.",
          items = {
            ["$ref"] = "GoogleCloudContactcenterinsightsV1Issue",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudContactcenterinsightsV1ListPhraseMatchersResponse = {
      description = "The response of listing phrase matchers.",
      id = "GoogleCloudContactcenterinsightsV1ListPhraseMatchersResponse",
      properties = {
        nextPageToken = {
          description = "A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, there are no subsequent pages.",
          type = "string",
        },
        phraseMatchers = {
          description = "The phrase matchers that match the request.",
          items = {
            ["$ref"] = "GoogleCloudContactcenterinsightsV1PhraseMatcher",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudContactcenterinsightsV1ListViewsResponse = {
      description = "The response of listing views.",
      id = "GoogleCloudContactcenterinsightsV1ListViewsResponse",
      properties = {
        nextPageToken = {
          description = "A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, there are no subsequent pages.",
          type = "string",
        },
        views = {
          description = "The views that match the request.",
          items = {
            ["$ref"] = "GoogleCloudContactcenterinsightsV1View",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudContactcenterinsightsV1PhraseMatchData = {
      description = "The data for a matched phrase matcher. Represents information identifying a phrase matcher for a given match.",
      id = "GoogleCloudContactcenterinsightsV1PhraseMatchData",
      properties = {
        displayName = {
          description = "The human-readable name of the phrase matcher.",
          type = "string",
        },
        phraseMatcher = {
          description = "The unique identifier (the resource name) of the phrase matcher.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudContactcenterinsightsV1PhraseMatchRule = {
      description = "The data for a phrase match rule.",
      id = "GoogleCloudContactcenterinsightsV1PhraseMatchRule",
      properties = {
        config = {
          ["$ref"] = "GoogleCloudContactcenterinsightsV1PhraseMatchRuleConfig",
          description = "Provides additional information about the rule that specifies how to apply the rule.",
        },
        negated = {
          description = "Specifies whether the phrase must be missing from the transcript segment or present in the transcript segment.",
          type = "boolean",
        },
        query = {
          description = "Required. The phrase to be matched.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudContactcenterinsightsV1PhraseMatchRuleConfig = {
      description = "Configuration information of a phrase match rule.",
      id = "GoogleCloudContactcenterinsightsV1PhraseMatchRuleConfig",
      properties = {
        exactMatchConfig = {
          ["$ref"] = "GoogleCloudContactcenterinsightsV1ExactMatchConfig",
          description = "The configuration for the exact match rule.",
        },
      },
      type = "object",
    },
    GoogleCloudContactcenterinsightsV1PhraseMatchRuleGroup = {
      description = "A message representing a rule in the phrase matcher.",
      id = "GoogleCloudContactcenterinsightsV1PhraseMatchRuleGroup",
      properties = {
        phraseMatchRules = {
          description = "A list of phase match rules that are included in this group.",
          items = {
            ["$ref"] = "GoogleCloudContactcenterinsightsV1PhraseMatchRule",
          },
          type = "array",
        },
        type = {
          description = "Required. The type of this phrase match rule group.",
          enum = {
            "PHRASE_MATCH_RULE_GROUP_TYPE_UNSPECIFIED",
            "ALL_OF",
            "ANY_OF",
          },
          enumDescriptions = {
            "Unspecified.",
            "Must meet all phrase match rules or there is no match.",
            "If any of the phrase match rules are met, there is a match.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudContactcenterinsightsV1PhraseMatcher = {
      description = "The phrase matcher resource.",
      id = "GoogleCloudContactcenterinsightsV1PhraseMatcher",
      properties = {
        activationUpdateTime = {
          description = "Output only. The most recent time at which the activation status was updated.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        active = {
          description = "Applies the phrase matcher only when it is active.",
          type = "boolean",
        },
        displayName = {
          description = "The human-readable name of the phrase matcher.",
          type = "string",
        },
        name = {
          description = "The resource name of the phrase matcher. Format: projects/{project}/locations/{location}/phraseMatchers/{phrase_matcher}",
          type = "string",
        },
        phraseMatchRuleGroups = {
          description = "A list of phase match rule groups that are included in this matcher.",
          items = {
            ["$ref"] = "GoogleCloudContactcenterinsightsV1PhraseMatchRuleGroup",
          },
          type = "array",
        },
        revisionCreateTime = {
          description = "Output only. The timestamp of when the revision was created. It is also the create time when a new matcher is added.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        revisionId = {
          description = "Output only. Immutable. The revision ID of the phrase matcher. A new revision is committed whenever the matcher is changed, except when it is activated or deactivated. A server generated random ID will be used. Example: locations/global/phraseMatchers/my-first-matcher@1234567",
          readOnly = true,
          type = "string",
        },
        roleMatch = {
          description = "The role whose utterances the phrase matcher should be matched against. If the role is ROLE_UNSPECIFIED it will be matched against any utterances in the transcript.",
          enum = {
            "ROLE_UNSPECIFIED",
            "HUMAN_AGENT",
            "AUTOMATED_AGENT",
            "END_USER",
            "ANY_AGENT",
          },
          enumDescriptions = {
            "Participant's role is not set.",
            "Participant is a human agent.",
            "Participant is an automated agent.",
            "Participant is an end user who conversed with the contact center.",
            "Participant is either a human or automated agent.",
          },
          type = "string",
        },
        type = {
          description = "Required. The type of this phrase matcher.",
          enum = {
            "PHRASE_MATCHER_TYPE_UNSPECIFIED",
            "ALL_OF",
            "ANY_OF",
          },
          enumDescriptions = {
            "Unspecified.",
            "Must meet all phrase match rule groups or there is no match.",
            "If any of the phrase match rule groups are met, there is a match.",
          },
          type = "string",
        },
        updateTime = {
          description = "Output only. The most recent time at which the phrase matcher was updated.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        versionTag = {
          description = "The customized version tag to use for the phrase matcher. If not specified, it will default to `revision_id`.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudContactcenterinsightsV1RuntimeAnnotation = {
      description = "An annotation that was generated during the customer and agent interaction.",
      id = "GoogleCloudContactcenterinsightsV1RuntimeAnnotation",
      properties = {
        annotationId = {
          description = "The unique identifier of the annotation. Format: projects/{project}/locations/{location}/conversationDatasets/{dataset}/conversationDataItems/{data_item}/conversationAnnotations/{annotation}",
          type = "string",
        },
        answerFeedback = {
          ["$ref"] = "GoogleCloudContactcenterinsightsV1AnswerFeedback",
          description = "The feedback that the customer has about the answer in `data`.",
        },
        articleSuggestion = {
          ["$ref"] = "GoogleCloudContactcenterinsightsV1ArticleSuggestionData",
          description = "Agent Assist Article Suggestion data.",
        },
        createTime = {
          description = "The time at which this annotation was created.",
          format = "google-datetime",
          type = "string",
        },
        dialogflowInteraction = {
          ["$ref"] = "GoogleCloudContactcenterinsightsV1DialogflowInteractionData",
          description = "Dialogflow interaction data.",
        },
        endBoundary = {
          ["$ref"] = "GoogleCloudContactcenterinsightsV1AnnotationBoundary",
          description = "The boundary in the conversation where the annotation ends, inclusive.",
        },
        faqAnswer = {
          ["$ref"] = "GoogleCloudContactcenterinsightsV1FaqAnswerData",
          description = "Agent Assist FAQ answer data.",
        },
        smartComposeSuggestion = {
          ["$ref"] = "GoogleCloudContactcenterinsightsV1SmartComposeSuggestionData",
          description = "Agent Assist Smart Compose suggestion data.",
        },
        smartReply = {
          ["$ref"] = "GoogleCloudContactcenterinsightsV1SmartReplyData",
          description = "Agent Assist Smart Reply data.",
        },
        startBoundary = {
          ["$ref"] = "GoogleCloudContactcenterinsightsV1AnnotationBoundary",
          description = "The boundary in the conversation where the annotation starts, inclusive.",
        },
      },
      type = "object",
    },
    GoogleCloudContactcenterinsightsV1SentimentData = {
      description = "The data for a sentiment annotation.",
      id = "GoogleCloudContactcenterinsightsV1SentimentData",
      properties = {
        magnitude = {
          description = "A non-negative number from 0 to infinity which represents the abolute magnitude of sentiment regardless of score.",
          format = "float",
          type = "number",
        },
        score = {
          description = "The sentiment score between -1.0 (negative) and 1.0 (positive).",
          format = "float",
          type = "number",
        },
      },
      type = "object",
    },
    GoogleCloudContactcenterinsightsV1Settings = {
      description = "The settings resource.",
      id = "GoogleCloudContactcenterinsightsV1Settings",
      properties = {
        analysisConfig = {
          ["$ref"] = "GoogleCloudContactcenterinsightsV1SettingsAnalysisConfig",
          description = "Default analysis settings.",
        },
        conversationTtl = {
          description = "The default TTL for newly-created conversations. If a conversation has a specified expiration, that value will be used instead. Changing this value will not change the expiration of existing conversations. Conversations with no expire time persist until they are deleted.",
          format = "google-duration",
          type = "string",
        },
        createTime = {
          description = "Output only. The time at which the settings was created.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        languageCode = {
          description = "A language code to be applied to each transcript segment unless the segment already specifies a language code. Language code defaults to \"en-US\" if it is neither specified on the segment nor here.",
          type = "string",
        },
        name = {
          description = "Immutable. The resource name of the settings resource. Format: projects/{project}/locations/{location}/settings",
          type = "string",
        },
        pubsubNotificationSettings = {
          additionalProperties = {
            type = "string",
          },
          description = "A map that maps a notification trigger to a Pub/Sub topic. Each time a specified trigger occurs, Insights will notify the corresponding Pub/Sub topic. Keys are notification triggers. Supported keys are: * \"all-triggers\": Notify each time any of the supported triggers occurs. * \"create-analysis\": Notify each time an analysis is created. * \"create-conversation\": Notify each time a conversation is created. * \"export-insights-data\": Notify each time an export is complete. * \"update-conversation\": Notify each time a conversation is updated via UpdateConversation. Values are Pub/Sub topics. The format of each Pub/Sub topic is: projects/{project}/topics/{topic}",
          type = "object",
        },
        updateTime = {
          description = "Output only. The time at which the settings were last updated.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudContactcenterinsightsV1SettingsAnalysisConfig = {
      description = "Default configuration when creating Analyses in Insights.",
      id = "GoogleCloudContactcenterinsightsV1SettingsAnalysisConfig",
      properties = {
        annotatorSelector = {
          ["$ref"] = "GoogleCloudContactcenterinsightsV1AnnotatorSelector",
          description = "To select the annotators to run and the phrase matchers to use (if any). If not specified, all annotators will be run.",
        },
        runtimeIntegrationAnalysisPercentage = {
          description = "Percentage of conversations created using Dialogflow runtime integration to analyze automatically, between [0, 100].",
          format = "double",
          type = "number",
        },
      },
      type = "object",
    },
    GoogleCloudContactcenterinsightsV1SilenceData = {
      description = "The data for a silence annotation.",
      id = "GoogleCloudContactcenterinsightsV1SilenceData",
      properties = {},
      type = "object",
    },
    GoogleCloudContactcenterinsightsV1SmartComposeSuggestionData = {
      description = "Agent Assist Smart Compose suggestion data.",
      id = "GoogleCloudContactcenterinsightsV1SmartComposeSuggestionData",
      properties = {
        confidenceScore = {
          description = "The system's confidence score that this suggestion is a good match for this conversation, ranging from 0.0 (completely uncertain) to 1.0 (completely certain).",
          format = "double",
          type = "number",
        },
        metadata = {
          additionalProperties = {
            type = "string",
          },
          description = "Map that contains metadata about the Smart Compose suggestion and the document from which it originates.",
          type = "object",
        },
        queryRecord = {
          description = "The name of the answer record. Format: projects/{project}/locations/{location}/answerRecords/{answer_record}",
          type = "string",
        },
        suggestion = {
          description = "The content of the suggestion.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudContactcenterinsightsV1SmartReplyData = {
      description = "Agent Assist Smart Reply data.",
      id = "GoogleCloudContactcenterinsightsV1SmartReplyData",
      properties = {
        confidenceScore = {
          description = "The system's confidence score that this reply is a good match for this conversation, ranging from 0.0 (completely uncertain) to 1.0 (completely certain).",
          format = "double",
          type = "number",
        },
        metadata = {
          additionalProperties = {
            type = "string",
          },
          description = "Map that contains metadata about the Smart Reply and the document from which it originates.",
          type = "object",
        },
        queryRecord = {
          description = "The name of the answer record. Format: projects/{project}/locations/{location}/answerRecords/{answer_record}",
          type = "string",
        },
        reply = {
          description = "The content of the reply.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudContactcenterinsightsV1UndeployIssueModelMetadata = {
      description = "Metadata for undeploying an issue model.",
      id = "GoogleCloudContactcenterinsightsV1UndeployIssueModelMetadata",
      properties = {
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
        request = {
          ["$ref"] = "GoogleCloudContactcenterinsightsV1UndeployIssueModelRequest",
          description = "The original request for undeployment.",
        },
      },
      type = "object",
    },
    GoogleCloudContactcenterinsightsV1UndeployIssueModelRequest = {
      description = "The request to undeploy an issue model.",
      id = "GoogleCloudContactcenterinsightsV1UndeployIssueModelRequest",
      properties = {
        name = {
          description = "Required. The issue model to undeploy.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudContactcenterinsightsV1UndeployIssueModelResponse = {
      description = "The response to undeploy an issue model.",
      id = "GoogleCloudContactcenterinsightsV1UndeployIssueModelResponse",
      properties = {},
      type = "object",
    },
    GoogleCloudContactcenterinsightsV1View = {
      description = "The View resource.",
      id = "GoogleCloudContactcenterinsightsV1View",
      properties = {
        createTime = {
          description = "Output only. The time at which this view was created.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        displayName = {
          description = "The human-readable display name of the view.",
          type = "string",
        },
        name = {
          description = "Immutable. The resource name of the view. Format: projects/{project}/locations/{location}/views/{view}",
          type = "string",
        },
        updateTime = {
          description = "Output only. The most recent time at which the view was updated.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        value = {
          description = "String with specific view properties, must be non-empty.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudContactcenterinsightsV1alpha1AnnotatorSelector = {
      description = "Selector of all available annotators and phrase matchers to run.",
      id = "GoogleCloudContactcenterinsightsV1alpha1AnnotatorSelector",
      properties = {
        issueModels = {
          description = "The issue model to run. If not provided, the most recently deployed topic model will be used. The provided issue model will only be used for inference if the issue model is deployed and if run_issue_model_annotator is set to true. If more than one issue model is provided, only the first provided issue model will be used for inference.",
          items = {
            type = "string",
          },
          type = "array",
        },
        phraseMatchers = {
          description = "The list of phrase matchers to run. If not provided, all active phrase matchers will be used. If inactive phrase matchers are provided, they will not be used. Phrase matchers will be run only if run_phrase_matcher_annotator is set to true. Format: projects/{project}/locations/{location}/phraseMatchers/{phrase_matcher}",
          items = {
            type = "string",
          },
          type = "array",
        },
        runEntityAnnotator = {
          description = "Whether to run the entity annotator.",
          type = "boolean",
        },
        runIntentAnnotator = {
          description = "Whether to run the intent annotator.",
          type = "boolean",
        },
        runInterruptionAnnotator = {
          description = "Whether to run the interruption annotator.",
          type = "boolean",
        },
        runIssueModelAnnotator = {
          description = "Whether to run the issue model annotator. A model should have already been deployed for this to take effect.",
          type = "boolean",
        },
        runPhraseMatcherAnnotator = {
          description = "Whether to run the active phrase matcher annotator(s).",
          type = "boolean",
        },
        runSentimentAnnotator = {
          description = "Whether to run the sentiment annotator.",
          type = "boolean",
        },
        runSilenceAnnotator = {
          description = "Whether to run the silence annotator.",
          type = "boolean",
        },
      },
      type = "object",
    },
    GoogleCloudContactcenterinsightsV1alpha1BulkAnalyzeConversationsMetadata = {
      description = "The metadata for a bulk analyze conversations operation.",
      id = "GoogleCloudContactcenterinsightsV1alpha1BulkAnalyzeConversationsMetadata",
      properties = {
        completedAnalysesCount = {
          description = "The number of requested analyses that have completed successfully so far.",
          format = "int32",
          type = "integer",
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
        failedAnalysesCount = {
          description = "The number of requested analyses that have failed so far.",
          format = "int32",
          type = "integer",
        },
        request = {
          ["$ref"] = "GoogleCloudContactcenterinsightsV1alpha1BulkAnalyzeConversationsRequest",
          description = "The original request for bulk analyze.",
        },
        totalRequestedAnalysesCount = {
          description = "Total number of analyses requested. Computed by the number of conversations returned by `filter` multiplied by `analysis_percentage` in the request.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    GoogleCloudContactcenterinsightsV1alpha1BulkAnalyzeConversationsRequest = {
      description = "The request to analyze conversations in bulk.",
      id = "GoogleCloudContactcenterinsightsV1alpha1BulkAnalyzeConversationsRequest",
      properties = {
        analysisPercentage = {
          description = "Required. Percentage of selected conversation to analyze, between [0, 100].",
          format = "float",
          type = "number",
        },
        annotatorSelector = {
          ["$ref"] = "GoogleCloudContactcenterinsightsV1alpha1AnnotatorSelector",
          description = "To select the annotators to run and the phrase matchers to use (if any). If not specified, all annotators will be run.",
        },
        filter = {
          description = "Required. Filter used to select the subset of conversations to analyze.",
          type = "string",
        },
        parent = {
          description = "Required. The parent resource to create analyses in.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudContactcenterinsightsV1alpha1BulkAnalyzeConversationsResponse = {
      description = "The response for a bulk analyze conversations operation.",
      id = "GoogleCloudContactcenterinsightsV1alpha1BulkAnalyzeConversationsResponse",
      properties = {
        failedAnalysisCount = {
          description = "Count of failed analyses.",
          format = "int32",
          type = "integer",
        },
        successfulAnalysisCount = {
          description = "Count of successful analyses.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    GoogleCloudContactcenterinsightsV1alpha1CreateAnalysisOperationMetadata = {
      description = "Metadata for a create analysis operation.",
      id = "GoogleCloudContactcenterinsightsV1alpha1CreateAnalysisOperationMetadata",
      properties = {
        annotatorSelector = {
          ["$ref"] = "GoogleCloudContactcenterinsightsV1alpha1AnnotatorSelector",
          description = "Output only. The annotator selector used for the analysis (if any).",
          readOnly = true,
        },
        conversation = {
          description = "Output only. The Conversation that this Analysis Operation belongs to.",
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
      },
      type = "object",
    },
    GoogleCloudContactcenterinsightsV1alpha1CreateIssueModelMetadata = {
      description = "Metadata for creating an issue model.",
      id = "GoogleCloudContactcenterinsightsV1alpha1CreateIssueModelMetadata",
      properties = {
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
        request = {
          ["$ref"] = "GoogleCloudContactcenterinsightsV1alpha1CreateIssueModelRequest",
          description = "The original request for creation.",
        },
      },
      type = "object",
    },
    GoogleCloudContactcenterinsightsV1alpha1CreateIssueModelRequest = {
      description = "The request to create an issue model.",
      id = "GoogleCloudContactcenterinsightsV1alpha1CreateIssueModelRequest",
      properties = {
        issueModel = {
          ["$ref"] = "GoogleCloudContactcenterinsightsV1alpha1IssueModel",
          description = "Required. The issue model to create.",
        },
        parent = {
          description = "Required. The parent resource of the issue model.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudContactcenterinsightsV1alpha1DeleteIssueModelMetadata = {
      description = "Metadata for deleting an issue model.",
      id = "GoogleCloudContactcenterinsightsV1alpha1DeleteIssueModelMetadata",
      properties = {
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
        request = {
          ["$ref"] = "GoogleCloudContactcenterinsightsV1alpha1DeleteIssueModelRequest",
          description = "The original request for deletion.",
        },
      },
      type = "object",
    },
    GoogleCloudContactcenterinsightsV1alpha1DeleteIssueModelRequest = {
      description = "The request to delete an issue model.",
      id = "GoogleCloudContactcenterinsightsV1alpha1DeleteIssueModelRequest",
      properties = {
        name = {
          description = "Required. The name of the issue model to delete.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudContactcenterinsightsV1alpha1DeployIssueModelMetadata = {
      description = "Metadata for deploying an issue model.",
      id = "GoogleCloudContactcenterinsightsV1alpha1DeployIssueModelMetadata",
      properties = {
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
        request = {
          ["$ref"] = "GoogleCloudContactcenterinsightsV1alpha1DeployIssueModelRequest",
          description = "The original request for deployment.",
        },
      },
      type = "object",
    },
    GoogleCloudContactcenterinsightsV1alpha1DeployIssueModelRequest = {
      description = "The request to deploy an issue model.",
      id = "GoogleCloudContactcenterinsightsV1alpha1DeployIssueModelRequest",
      properties = {
        name = {
          description = "Required. The issue model to deploy.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudContactcenterinsightsV1alpha1DeployIssueModelResponse = {
      description = "The response to deploy an issue model.",
      id = "GoogleCloudContactcenterinsightsV1alpha1DeployIssueModelResponse",
      properties = {},
      type = "object",
    },
    GoogleCloudContactcenterinsightsV1alpha1ExportInsightsDataMetadata = {
      description = "Metadata for an export insights operation.",
      id = "GoogleCloudContactcenterinsightsV1alpha1ExportInsightsDataMetadata",
      properties = {
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
        partialErrors = {
          description = "Partial errors during export operation that might cause the operation output to be incomplete.",
          items = {
            ["$ref"] = "GoogleRpcStatus",
          },
          type = "array",
        },
        request = {
          ["$ref"] = "GoogleCloudContactcenterinsightsV1alpha1ExportInsightsDataRequest",
          description = "The original request for export.",
        },
      },
      type = "object",
    },
    GoogleCloudContactcenterinsightsV1alpha1ExportInsightsDataRequest = {
      description = "The request to export insights.",
      id = "GoogleCloudContactcenterinsightsV1alpha1ExportInsightsDataRequest",
      properties = {
        bigQueryDestination = {
          ["$ref"] = "GoogleCloudContactcenterinsightsV1alpha1ExportInsightsDataRequestBigQueryDestination",
          description = "Specified if sink is a BigQuery table.",
        },
        filter = {
          description = "A filter to reduce results to a specific subset. Useful for exporting conversations with specific properties.",
          type = "string",
        },
        kmsKey = {
          description = "A fully qualified KMS key name for BigQuery tables protected by CMEK. Format: projects/{project}/locations/{location}/keyRings/{keyring}/cryptoKeys/{key}/cryptoKeyVersions/{version}",
          type = "string",
        },
        parent = {
          description = "Required. The parent resource to export data from.",
          type = "string",
        },
        writeDisposition = {
          description = "Options for what to do if the destination table already exists.",
          enum = {
            "WRITE_DISPOSITION_UNSPECIFIED",
            "WRITE_TRUNCATE",
            "WRITE_APPEND",
          },
          enumDescriptions = {
            "Write disposition is not specified. Defaults to WRITE_TRUNCATE.",
            "If the table already exists, BigQuery will overwrite the table data and use the schema from the load.",
            "If the table already exists, BigQuery will append data to the table.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudContactcenterinsightsV1alpha1ExportInsightsDataRequestBigQueryDestination = {
      description = "A BigQuery Table Reference.",
      id = "GoogleCloudContactcenterinsightsV1alpha1ExportInsightsDataRequestBigQueryDestination",
      properties = {
        dataset = {
          description = "Required. The name of the BigQuery dataset that the snapshot result should be exported to. If this dataset does not exist, the export call returns an INVALID_ARGUMENT error.",
          type = "string",
        },
        projectId = {
          description = "A project ID or number. If specified, then export will attempt to write data to this project instead of the resource project. Otherwise, the resource project will be used.",
          type = "string",
        },
        table = {
          description = "The BigQuery table name to which the insights data should be written. If this table does not exist, the export call returns an INVALID_ARGUMENT error.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudContactcenterinsightsV1alpha1ExportInsightsDataResponse = {
      description = "Response for an export insights operation.",
      id = "GoogleCloudContactcenterinsightsV1alpha1ExportInsightsDataResponse",
      properties = {},
      type = "object",
    },
    GoogleCloudContactcenterinsightsV1alpha1IngestConversationsMetadata = {
      description = "The metadata for an IngestConversations operation.",
      id = "GoogleCloudContactcenterinsightsV1alpha1IngestConversationsMetadata",
      properties = {
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
        partialErrors = {
          description = "Output only. Partial errors during ingest operation that might cause the operation output to be incomplete.",
          items = {
            ["$ref"] = "GoogleRpcStatus",
          },
          readOnly = true,
          type = "array",
        },
        request = {
          ["$ref"] = "GoogleCloudContactcenterinsightsV1alpha1IngestConversationsRequest",
          description = "Output only. The original request for ingest.",
          readOnly = true,
        },
      },
      type = "object",
    },
    GoogleCloudContactcenterinsightsV1alpha1IngestConversationsRequest = {
      description = "The request to ingest conversations.",
      id = "GoogleCloudContactcenterinsightsV1alpha1IngestConversationsRequest",
      properties = {
        conversationConfig = {
          ["$ref"] = "GoogleCloudContactcenterinsightsV1alpha1IngestConversationsRequestConversationConfig",
          description = "Configuration that applies to all conversations.",
        },
        gcsSource = {
          ["$ref"] = "GoogleCloudContactcenterinsightsV1alpha1IngestConversationsRequestGcsSource",
          description = "A cloud storage bucket source.",
        },
        parent = {
          description = "Required. The parent resource for new conversations.",
          type = "string",
        },
        transcriptObjectConfig = {
          ["$ref"] = "GoogleCloudContactcenterinsightsV1alpha1IngestConversationsRequestTranscriptObjectConfig",
          description = "Configuration for when `source` contains conversation transcripts.",
        },
      },
      type = "object",
    },
    GoogleCloudContactcenterinsightsV1alpha1IngestConversationsRequestConversationConfig = {
      description = "Configuration that applies to all conversations.",
      id = "GoogleCloudContactcenterinsightsV1alpha1IngestConversationsRequestConversationConfig",
      properties = {
        agentId = {
          description = "An opaque, user-specified string representing the human agent who handled the conversations.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudContactcenterinsightsV1alpha1IngestConversationsRequestGcsSource = {
      description = "Configuration for Cloud Storage bucket sources.",
      id = "GoogleCloudContactcenterinsightsV1alpha1IngestConversationsRequestGcsSource",
      properties = {
        bucketUri = {
          description = "Required. The Cloud Storage bucket containing source objects.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudContactcenterinsightsV1alpha1IngestConversationsRequestTranscriptObjectConfig = {
      description = "Configuration for processing transcript objects.",
      id = "GoogleCloudContactcenterinsightsV1alpha1IngestConversationsRequestTranscriptObjectConfig",
      properties = {
        medium = {
          description = "Required. The medium transcript objects represent.",
          enum = {
            "MEDIUM_UNSPECIFIED",
            "PHONE_CALL",
            "CHAT",
          },
          enumDescriptions = {
            "Default value, if unspecified will default to PHONE_CALL.",
            "The format for conversations that took place over the phone.",
            "The format for conversations that took place over chat.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudContactcenterinsightsV1alpha1IngestConversationsResponse = {
      description = "The response to an IngestConversations operation.",
      id = "GoogleCloudContactcenterinsightsV1alpha1IngestConversationsResponse",
      properties = {},
      type = "object",
    },
    GoogleCloudContactcenterinsightsV1alpha1IssueModel = {
      description = "The issue model resource.",
      id = "GoogleCloudContactcenterinsightsV1alpha1IssueModel",
      properties = {
        createTime = {
          description = "Output only. The time at which this issue model was created.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        displayName = {
          description = "The representative name for the issue model.",
          type = "string",
        },
        inputDataConfig = {
          ["$ref"] = "GoogleCloudContactcenterinsightsV1alpha1IssueModelInputDataConfig",
          description = "Configs for the input data that used to create the issue model.",
        },
        issueCount = {
          description = "Output only. Number of issues in this issue model.",
          format = "int64",
          readOnly = true,
          type = "string",
        },
        name = {
          description = "Immutable. The resource name of the issue model. Format: projects/{project}/locations/{location}/issueModels/{issue_model}",
          type = "string",
        },
        state = {
          description = "Output only. State of the model.",
          enum = {
            "STATE_UNSPECIFIED",
            "UNDEPLOYED",
            "DEPLOYING",
            "DEPLOYED",
            "UNDEPLOYING",
            "DELETING",
          },
          enumDescriptions = {
            "Unspecified.",
            "Model is not deployed but is ready to deploy.",
            "Model is being deployed.",
            "Model is deployed and is ready to be used. A model can only be used in analysis if it's in this state.",
            "Model is being undeployed.",
            "Model is being deleted.",
          },
          readOnly = true,
          type = "string",
        },
        trainingStats = {
          ["$ref"] = "GoogleCloudContactcenterinsightsV1alpha1IssueModelLabelStats",
          description = "Output only. Immutable. The issue model's label statistics on its training data.",
          readOnly = true,
        },
        updateTime = {
          description = "Output only. The most recent time at which the issue model was updated.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudContactcenterinsightsV1alpha1IssueModelInputDataConfig = {
      description = "Configs for the input data used to create the issue model.",
      id = "GoogleCloudContactcenterinsightsV1alpha1IssueModelInputDataConfig",
      properties = {
        filter = {
          description = "A filter to reduce the conversations used for training the model to a specific subset.",
          type = "string",
        },
        medium = {
          description = "Medium of conversations used in training data. This field is being deprecated. To specify the medium to be used in training a new issue model, set the `medium` field on `filter`.",
          enum = {
            "MEDIUM_UNSPECIFIED",
            "PHONE_CALL",
            "CHAT",
          },
          enumDescriptions = {
            "Default value, if unspecified will default to PHONE_CALL.",
            "The format for conversations that took place over the phone.",
            "The format for conversations that took place over chat.",
          },
          type = "string",
        },
        trainingConversationsCount = {
          description = "Output only. Number of conversations used in training. Output only.",
          format = "int64",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudContactcenterinsightsV1alpha1IssueModelLabelStats = {
      description = "Aggregated statistics about an issue model.",
      id = "GoogleCloudContactcenterinsightsV1alpha1IssueModelLabelStats",
      properties = {
        analyzedConversationsCount = {
          description = "Number of conversations the issue model has analyzed at this point in time.",
          format = "int64",
          type = "string",
        },
        issueStats = {
          additionalProperties = {
            ["$ref"] = "GoogleCloudContactcenterinsightsV1alpha1IssueModelLabelStatsIssueStats",
          },
          description = "Statistics on each issue. Key is the issue's resource name.",
          type = "object",
        },
        unclassifiedConversationsCount = {
          description = "Number of analyzed conversations for which no issue was applicable at this point in time.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudContactcenterinsightsV1alpha1IssueModelLabelStatsIssueStats = {
      description = "Aggregated statistics about an issue.",
      id = "GoogleCloudContactcenterinsightsV1alpha1IssueModelLabelStatsIssueStats",
      properties = {
        displayName = {
          description = "Display name of the issue.",
          type = "string",
        },
        issue = {
          description = "Issue resource. Format: projects/{project}/locations/{location}/issueModels/{issue_model}/issues/{issue}",
          type = "string",
        },
        labeledConversationsCount = {
          description = "Number of conversations attached to the issue at this point in time.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudContactcenterinsightsV1alpha1UndeployIssueModelMetadata = {
      description = "Metadata for undeploying an issue model.",
      id = "GoogleCloudContactcenterinsightsV1alpha1UndeployIssueModelMetadata",
      properties = {
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
        request = {
          ["$ref"] = "GoogleCloudContactcenterinsightsV1alpha1UndeployIssueModelRequest",
          description = "The original request for undeployment.",
        },
      },
      type = "object",
    },
    GoogleCloudContactcenterinsightsV1alpha1UndeployIssueModelRequest = {
      description = "The request to undeploy an issue model.",
      id = "GoogleCloudContactcenterinsightsV1alpha1UndeployIssueModelRequest",
      properties = {
        name = {
          description = "Required. The issue model to undeploy.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudContactcenterinsightsV1alpha1UndeployIssueModelResponse = {
      description = "The response to undeploy an issue model.",
      id = "GoogleCloudContactcenterinsightsV1alpha1UndeployIssueModelResponse",
      properties = {},
      type = "object",
    },
    GoogleLongrunningListOperationsResponse = {
      description = "The response message for Operations.ListOperations.",
      id = "GoogleLongrunningListOperationsResponse",
      properties = {
        nextPageToken = {
          description = "The standard List next-page token.",
          type = "string",
        },
        operations = {
          description = "A list of operations that matches the specified filter in the request.",
          items = {
            ["$ref"] = "GoogleLongrunningOperation",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleLongrunningOperation = {
      description = "This resource represents a long-running operation that is the result of a network API call.",
      id = "GoogleLongrunningOperation",
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
    GoogleProtobufEmpty = {
      description = "A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }",
      id = "GoogleProtobufEmpty",
      properties = {},
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
  },
  servicePath = "",
  title = "Contact Center AI Insights API",
  version = "v1",
  version_module = true,
}
