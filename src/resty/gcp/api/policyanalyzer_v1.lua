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
  baseUrl = "https://policyanalyzer.googleapis.com/",
  batchPath = "batch",
  canonicalName = "Policy Analyzer",
  description = "",
  discoveryVersion = "v1",
  documentationLink = "https://www.google.com",
  fullyEncodeReservedExpansion = true,
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "policyanalyzer:v1",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://policyanalyzer.mtls.googleapis.com/",
  name = "policyanalyzer",
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
          resources = {
            activityTypes = {
              resources = {
                activities = {
                  methods = {
                    query = {
                      description = "Queries policy activities on Google Cloud resources.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/activityTypes/{activityTypesId}/activities:query",
                      httpMethod = "GET",
                      id = "policyanalyzer.projects.locations.activityTypes.activities.query",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        filter = {
                          description = "Optional. Filter expression to restrict the activities returned. For serviceAccountLastAuthentication activities, supported filters are: - `activities.full_resource_name {=} [STRING]` - `activities.fullResourceName {=} [STRING]` where `[STRING]` is the full resource name of the service account. For serviceAccountKeyLastAuthentication activities, supported filters are: - `activities.full_resource_name {=} [STRING]` - `activities.fullResourceName {=} [STRING]` where `[STRING]` is the full resource name of the service account key.",
                          location = "query",
                          type = "string",
                        },
                        pageSize = {
                          description = "Optional. The maximum number of results to return from this request. Max limit is 1000. Non-positive values are ignored. The presence of `nextPageToken` in the response indicates that more results might be available.",
                          format = "int32",
                          location = "query",
                          type = "integer",
                        },
                        pageToken = {
                          description = "Optional. If present, then retrieve the next batch of results from the preceding call to this method. `pageToken` must be the value of `nextPageToken` from the previous response. The values of other method parameters should be identical to those in the previous call.",
                          location = "query",
                          type = "string",
                        },
                        parent = {
                          description = "Required. The container resource on which to execute the request. Acceptable formats: `projects/[PROJECT_ID|PROJECT_NUMBER]/locations/[LOCATION]/activityTypes/[ACTIVITY_TYPE]` LOCATION here refers to Google Cloud Locations: https://cloud.google.com/about/locations/",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/activityTypes/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/activities:query",
                      response = {
                        ["$ref"] = "GoogleCloudPolicyanalyzerV1QueryActivityResponse",
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
  revision = "20230115",
  rootUrl = "https://policyanalyzer.googleapis.com/",
  schemas = {
    GoogleCloudPolicyanalyzerV1Activity = {
      id = "GoogleCloudPolicyanalyzerV1Activity",
      properties = {
        activity = {
          additionalProperties = {
            description = "Properties of the object.",
            type = "any",
          },
          description = "A struct of custom fields to explain the activity.",
          type = "object",
        },
        activityType = {
          description = "The type of the activity.",
          type = "string",
        },
        fullResourceName = {
          description = "The full resource name that identifies the resource. For examples of full resource names for Google Cloud services, see https://cloud.google.com/iam/help/troubleshooter/full-resource-names.",
          type = "string",
        },
        observationPeriod = {
          ["$ref"] = "GoogleCloudPolicyanalyzerV1ObservationPeriod",
          description = "The data observation period to build the activity.",
        },
      },
      type = "object",
    },
    GoogleCloudPolicyanalyzerV1ObservationPeriod = {
      description = "Represents data observation period.",
      id = "GoogleCloudPolicyanalyzerV1ObservationPeriod",
      properties = {
        endTime = {
          description = "The observation end time. The time in this timestamp is always `07:00:00Z`.",
          format = "google-datetime",
          type = "string",
        },
        startTime = {
          description = "The observation start time. The time in this timestamp is always `07:00:00Z`.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudPolicyanalyzerV1QueryActivityResponse = {
      description = "Response to the `QueryActivity` method.",
      id = "GoogleCloudPolicyanalyzerV1QueryActivityResponse",
      properties = {
        activities = {
          description = "The set of activities that match the filter included in the request.",
          items = {
            ["$ref"] = "GoogleCloudPolicyanalyzerV1Activity",
          },
          type = "array",
        },
        nextPageToken = {
          description = "If there might be more results than those appearing in this response, then `nextPageToken` is included. To get the next set of results, call this method again using the value of `nextPageToken` as `pageToken`.",
          type = "string",
        },
      },
      type = "object",
    },
  },
  servicePath = "",
  title = "Policy Analyzer API",
  version = "v1",
  version_module = true,
}
