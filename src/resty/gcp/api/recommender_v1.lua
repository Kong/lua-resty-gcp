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
  baseUrl = "https://recommender.googleapis.com/",
  batchPath = "batch",
  canonicalName = "Recommender",
  description = "",
  discoveryVersion = "v1",
  documentationLink = "https://cloud.google.com/recommender/docs/",
  fullyEncodeReservedExpansion = true,
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "recommender:v1",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://recommender.mtls.googleapis.com/",
  name = "recommender",
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
    billingAccounts = {
      resources = {
        locations = {
          resources = {
            insightTypes = {
              methods = {
                getConfig = {
                  description = "Gets the requested InsightTypeConfig. There is only one instance of the config for each InsightType.",
                  flatPath = "v1/billingAccounts/{billingAccountsId}/locations/{locationsId}/insightTypes/{insightTypesId}/config",
                  httpMethod = "GET",
                  id = "recommender.billingAccounts.locations.insightTypes.getConfig",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Name of the InsightTypeConfig to get. Acceptable formats: * `projects/[PROJECT_NUMBER]/locations/[LOCATION]/insightTypes/[INSIGHT_TYPE_ID]/config` * `projects/[PROJECT_ID]/locations/[LOCATION]/insightTypes/[INSIGHT_TYPE_ID]/config` * `organizations/[ORGANIZATION_ID]/locations/[LOCATION]/insightTypes/[INSIGHT_TYPE_ID]/config` * `billingAccounts/[BILLING_ACCOUNT_ID]/locations/[LOCATION]/insightTypes/[INSIGHT_TYPE_ID]/config`",
                      location = "path",
                      pattern = "^billingAccounts/[^/]+/locations/[^/]+/insightTypes/[^/]+/config$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "GoogleCloudRecommenderV1InsightTypeConfig",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                updateConfig = {
                  description = "Updates an InsightTypeConfig change. This will create a new revision of the config.",
                  flatPath = "v1/billingAccounts/{billingAccountsId}/locations/{locationsId}/insightTypes/{insightTypesId}/config",
                  httpMethod = "PATCH",
                  id = "recommender.billingAccounts.locations.insightTypes.updateConfig",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Name of insight type config. Eg, projects/[PROJECT_NUMBER]/locations/[LOCATION]/insightTypes/[INSIGHT_TYPE_ID]/config",
                      location = "path",
                      pattern = "^billingAccounts/[^/]+/locations/[^/]+/insightTypes/[^/]+/config$",
                      required = true,
                      type = "string",
                    },
                    updateMask = {
                      description = "The list of fields to be updated.",
                      format = "google-fieldmask",
                      location = "query",
                      type = "string",
                    },
                    validateOnly = {
                      description = "If true, validate the request and preview the change, but do not actually update it.",
                      location = "query",
                      type = "boolean",
                    },
                  },
                  path = "v1/{+name}",
                  request = {
                    ["$ref"] = "GoogleCloudRecommenderV1InsightTypeConfig",
                  },
                  response = {
                    ["$ref"] = "GoogleCloudRecommenderV1InsightTypeConfig",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
              },
              resources = {
                insights = {
                  methods = {
                    get = {
                      description = "Gets the requested insight. Requires the recommender.*.get IAM permission for the specified insight type.",
                      flatPath = "v1/billingAccounts/{billingAccountsId}/locations/{locationsId}/insightTypes/{insightTypesId}/insights/{insightsId}",
                      httpMethod = "GET",
                      id = "recommender.billingAccounts.locations.insightTypes.insights.get",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. Name of the insight.",
                          location = "path",
                          pattern = "^billingAccounts/[^/]+/locations/[^/]+/insightTypes/[^/]+/insights/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}",
                      response = {
                        ["$ref"] = "GoogleCloudRecommenderV1Insight",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    list = {
                      description = "Lists insights for the specified Cloud Resource. Requires the recommender.*.list IAM permission for the specified insight type.",
                      flatPath = "v1/billingAccounts/{billingAccountsId}/locations/{locationsId}/insightTypes/{insightTypesId}/insights",
                      httpMethod = "GET",
                      id = "recommender.billingAccounts.locations.insightTypes.insights.list",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        filter = {
                          description = "Optional. Filter expression to restrict the insights returned. Supported filter fields: * `stateInfo.state` * `insightSubtype` * `severity` Examples: * `stateInfo.state = ACTIVE OR stateInfo.state = DISMISSED` * `insightSubtype = PERMISSIONS_USAGE` * `severity = CRITICAL OR severity = HIGH` * `stateInfo.state = ACTIVE AND (severity = CRITICAL OR severity = HIGH)` (These expressions are based on the filter language described at https://google.aip.dev/160)",
                          location = "query",
                          type = "string",
                        },
                        pageSize = {
                          description = "Optional. The maximum number of results to return from this request. Non-positive values are ignored. If not specified, the server will determine the number of results to return.",
                          format = "int32",
                          location = "query",
                          type = "integer",
                        },
                        pageToken = {
                          description = "Optional. If present, retrieves the next batch of results from the preceding call to this method. `page_token` must be the value of `next_page_token` from the previous response. The values of other method parameters must be identical to those in the previous call.",
                          location = "query",
                          type = "string",
                        },
                        parent = {
                          description = "Required. The container resource on which to execute the request. Acceptable formats: * `projects/[PROJECT_NUMBER]/locations/[LOCATION]/insightTypes/[INSIGHT_TYPE_ID]` * `projects/[PROJECT_ID]/locations/[LOCATION]/insightTypes/[INSIGHT_TYPE_ID]` * `billingAccounts/[BILLING_ACCOUNT_ID]/locations/[LOCATION]/insightTypes/[INSIGHT_TYPE_ID]` * `folders/[FOLDER_ID]/locations/[LOCATION]/insightTypes/[INSIGHT_TYPE_ID]` * `organizations/[ORGANIZATION_ID]/locations/[LOCATION]/insightTypes/[INSIGHT_TYPE_ID]` LOCATION here refers to GCP Locations: https://cloud.google.com/about/locations/ INSIGHT_TYPE_ID refers to supported insight types: https://cloud.google.com/recommender/docs/insights/insight-types.",
                          location = "path",
                          pattern = "^billingAccounts/[^/]+/locations/[^/]+/insightTypes/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/insights",
                      response = {
                        ["$ref"] = "GoogleCloudRecommenderV1ListInsightsResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    markAccepted = {
                      description = "Marks the Insight State as Accepted. Users can use this method to indicate to the Recommender API that they have applied some action based on the insight. This stops the insight content from being updated. MarkInsightAccepted can be applied to insights in ACTIVE state. Requires the recommender.*.update IAM permission for the specified insight.",
                      flatPath = "v1/billingAccounts/{billingAccountsId}/locations/{locationsId}/insightTypes/{insightTypesId}/insights/{insightsId}:markAccepted",
                      httpMethod = "POST",
                      id = "recommender.billingAccounts.locations.insightTypes.insights.markAccepted",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. Name of the insight.",
                          location = "path",
                          pattern = "^billingAccounts/[^/]+/locations/[^/]+/insightTypes/[^/]+/insights/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}:markAccepted",
                      request = {
                        ["$ref"] = "GoogleCloudRecommenderV1MarkInsightAcceptedRequest",
                      },
                      response = {
                        ["$ref"] = "GoogleCloudRecommenderV1Insight",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                  },
                },
              },
            },
            recommenders = {
              methods = {
                getConfig = {
                  description = "Gets the requested Recommender Config. There is only one instance of the config for each Recommender.",
                  flatPath = "v1/billingAccounts/{billingAccountsId}/locations/{locationsId}/recommenders/{recommendersId}/config",
                  httpMethod = "GET",
                  id = "recommender.billingAccounts.locations.recommenders.getConfig",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Name of the Recommendation Config to get. Acceptable formats: * `projects/[PROJECT_NUMBER]/locations/[LOCATION]/recommenders/[RECOMMENDER_ID]/config` * `projects/[PROJECT_ID]/locations/[LOCATION]/recommenders/[RECOMMENDER_ID]/config` * `organizations/[ORGANIZATION_ID]/locations/[LOCATION]/recommenders/[RECOMMENDER_ID]/config` * `billingAccounts/[BILLING_ACCOUNT_ID]/locations/[LOCATION]/recommenders/[RECOMMENDER_ID]/config`",
                      location = "path",
                      pattern = "^billingAccounts/[^/]+/locations/[^/]+/recommenders/[^/]+/config$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "GoogleCloudRecommenderV1RecommenderConfig",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                updateConfig = {
                  description = "Updates a Recommender Config. This will create a new revision of the config.",
                  flatPath = "v1/billingAccounts/{billingAccountsId}/locations/{locationsId}/recommenders/{recommendersId}/config",
                  httpMethod = "PATCH",
                  id = "recommender.billingAccounts.locations.recommenders.updateConfig",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Name of recommender config. Eg, projects/[PROJECT_NUMBER]/locations/[LOCATION]/recommenders/[RECOMMENDER_ID]/config",
                      location = "path",
                      pattern = "^billingAccounts/[^/]+/locations/[^/]+/recommenders/[^/]+/config$",
                      required = true,
                      type = "string",
                    },
                    updateMask = {
                      description = "The list of fields to be updated.",
                      format = "google-fieldmask",
                      location = "query",
                      type = "string",
                    },
                    validateOnly = {
                      description = "If true, validate the request and preview the change, but do not actually update it.",
                      location = "query",
                      type = "boolean",
                    },
                  },
                  path = "v1/{+name}",
                  request = {
                    ["$ref"] = "GoogleCloudRecommenderV1RecommenderConfig",
                  },
                  response = {
                    ["$ref"] = "GoogleCloudRecommenderV1RecommenderConfig",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
              },
              resources = {
                recommendations = {
                  methods = {
                    get = {
                      description = "Gets the requested recommendation. Requires the recommender.*.get IAM permission for the specified recommender.",
                      flatPath = "v1/billingAccounts/{billingAccountsId}/locations/{locationsId}/recommenders/{recommendersId}/recommendations/{recommendationsId}",
                      httpMethod = "GET",
                      id = "recommender.billingAccounts.locations.recommenders.recommendations.get",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. Name of the recommendation.",
                          location = "path",
                          pattern = "^billingAccounts/[^/]+/locations/[^/]+/recommenders/[^/]+/recommendations/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}",
                      response = {
                        ["$ref"] = "GoogleCloudRecommenderV1Recommendation",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    list = {
                      description = "Lists recommendations for the specified Cloud Resource. Requires the recommender.*.list IAM permission for the specified recommender.",
                      flatPath = "v1/billingAccounts/{billingAccountsId}/locations/{locationsId}/recommenders/{recommendersId}/recommendations",
                      httpMethod = "GET",
                      id = "recommender.billingAccounts.locations.recommenders.recommendations.list",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        filter = {
                          description = "Filter expression to restrict the recommendations returned. Supported filter fields: * `state_info.state` * `recommenderSubtype` * `priority` Examples: * `stateInfo.state = ACTIVE OR stateInfo.state = DISMISSED` * `recommenderSubtype = REMOVE_ROLE OR recommenderSubtype = REPLACE_ROLE` * `priority = P1 OR priority = P2` * `stateInfo.state = ACTIVE AND (priority = P1 OR priority = P2)` (These expressions are based on the filter language described at https://google.aip.dev/160)",
                          location = "query",
                          type = "string",
                        },
                        pageSize = {
                          description = "Optional. The maximum number of results to return from this request. Non-positive values are ignored. If not specified, the server will determine the number of results to return.",
                          format = "int32",
                          location = "query",
                          type = "integer",
                        },
                        pageToken = {
                          description = "Optional. If present, retrieves the next batch of results from the preceding call to this method. `page_token` must be the value of `next_page_token` from the previous response. The values of other method parameters must be identical to those in the previous call.",
                          location = "query",
                          type = "string",
                        },
                        parent = {
                          description = "Required. The container resource on which to execute the request. Acceptable formats: * `projects/[PROJECT_NUMBER]/locations/[LOCATION]/recommenders/[RECOMMENDER_ID]` * `projects/[PROJECT_ID]/locations/[LOCATION]/recommenders/[RECOMMENDER_ID]` * `billingAccounts/[BILLING_ACCOUNT_ID]/locations/[LOCATION]/recommenders/[RECOMMENDER_ID]` * `folders/[FOLDER_ID]/locations/[LOCATION]/recommenders/[RECOMMENDER_ID]` * `organizations/[ORGANIZATION_ID]/locations/[LOCATION]/recommenders/[RECOMMENDER_ID]` LOCATION here refers to GCP Locations: https://cloud.google.com/about/locations/ RECOMMENDER_ID refers to supported recommenders: https://cloud.google.com/recommender/docs/recommenders.",
                          location = "path",
                          pattern = "^billingAccounts/[^/]+/locations/[^/]+/recommenders/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/recommendations",
                      response = {
                        ["$ref"] = "GoogleCloudRecommenderV1ListRecommendationsResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    markClaimed = {
                      description = "Marks the Recommendation State as Claimed. Users can use this method to indicate to the Recommender API that they are starting to apply the recommendation themselves. This stops the recommendation content from being updated. Associated insights are frozen and placed in the ACCEPTED state. MarkRecommendationClaimed can be applied to recommendations in CLAIMED, SUCCEEDED, FAILED, or ACTIVE state. Requires the recommender.*.update IAM permission for the specified recommender.",
                      flatPath = "v1/billingAccounts/{billingAccountsId}/locations/{locationsId}/recommenders/{recommendersId}/recommendations/{recommendationsId}:markClaimed",
                      httpMethod = "POST",
                      id = "recommender.billingAccounts.locations.recommenders.recommendations.markClaimed",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. Name of the recommendation.",
                          location = "path",
                          pattern = "^billingAccounts/[^/]+/locations/[^/]+/recommenders/[^/]+/recommendations/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}:markClaimed",
                      request = {
                        ["$ref"] = "GoogleCloudRecommenderV1MarkRecommendationClaimedRequest",
                      },
                      response = {
                        ["$ref"] = "GoogleCloudRecommenderV1Recommendation",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    markDismissed = {
                      description = "Mark the Recommendation State as Dismissed. Users can use this method to indicate to the Recommender API that an ACTIVE recommendation has to be marked back as DISMISSED. MarkRecommendationDismissed can be applied to recommendations in ACTIVE state. Requires the recommender.*.update IAM permission for the specified recommender.",
                      flatPath = "v1/billingAccounts/{billingAccountsId}/locations/{locationsId}/recommenders/{recommendersId}/recommendations/{recommendationsId}:markDismissed",
                      httpMethod = "POST",
                      id = "recommender.billingAccounts.locations.recommenders.recommendations.markDismissed",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Name of the recommendation.",
                          location = "path",
                          pattern = "^billingAccounts/[^/]+/locations/[^/]+/recommenders/[^/]+/recommendations/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}:markDismissed",
                      request = {
                        ["$ref"] = "GoogleCloudRecommenderV1MarkRecommendationDismissedRequest",
                      },
                      response = {
                        ["$ref"] = "GoogleCloudRecommenderV1Recommendation",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    markFailed = {
                      description = "Marks the Recommendation State as Failed. Users can use this method to indicate to the Recommender API that they have applied the recommendation themselves, and the operation failed. This stops the recommendation content from being updated. Associated insights are frozen and placed in the ACCEPTED state. MarkRecommendationFailed can be applied to recommendations in ACTIVE, CLAIMED, SUCCEEDED, or FAILED state. Requires the recommender.*.update IAM permission for the specified recommender.",
                      flatPath = "v1/billingAccounts/{billingAccountsId}/locations/{locationsId}/recommenders/{recommendersId}/recommendations/{recommendationsId}:markFailed",
                      httpMethod = "POST",
                      id = "recommender.billingAccounts.locations.recommenders.recommendations.markFailed",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. Name of the recommendation.",
                          location = "path",
                          pattern = "^billingAccounts/[^/]+/locations/[^/]+/recommenders/[^/]+/recommendations/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}:markFailed",
                      request = {
                        ["$ref"] = "GoogleCloudRecommenderV1MarkRecommendationFailedRequest",
                      },
                      response = {
                        ["$ref"] = "GoogleCloudRecommenderV1Recommendation",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    markSucceeded = {
                      description = "Marks the Recommendation State as Succeeded. Users can use this method to indicate to the Recommender API that they have applied the recommendation themselves, and the operation was successful. This stops the recommendation content from being updated. Associated insights are frozen and placed in the ACCEPTED state. MarkRecommendationSucceeded can be applied to recommendations in ACTIVE, CLAIMED, SUCCEEDED, or FAILED state. Requires the recommender.*.update IAM permission for the specified recommender.",
                      flatPath = "v1/billingAccounts/{billingAccountsId}/locations/{locationsId}/recommenders/{recommendersId}/recommendations/{recommendationsId}:markSucceeded",
                      httpMethod = "POST",
                      id = "recommender.billingAccounts.locations.recommenders.recommendations.markSucceeded",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. Name of the recommendation.",
                          location = "path",
                          pattern = "^billingAccounts/[^/]+/locations/[^/]+/recommenders/[^/]+/recommendations/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}:markSucceeded",
                      request = {
                        ["$ref"] = "GoogleCloudRecommenderV1MarkRecommendationSucceededRequest",
                      },
                      response = {
                        ["$ref"] = "GoogleCloudRecommenderV1Recommendation",
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
    folders = {
      resources = {
        locations = {
          resources = {
            insightTypes = {
              resources = {
                insights = {
                  methods = {
                    get = {
                      description = "Gets the requested insight. Requires the recommender.*.get IAM permission for the specified insight type.",
                      flatPath = "v1/folders/{foldersId}/locations/{locationsId}/insightTypes/{insightTypesId}/insights/{insightsId}",
                      httpMethod = "GET",
                      id = "recommender.folders.locations.insightTypes.insights.get",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. Name of the insight.",
                          location = "path",
                          pattern = "^folders/[^/]+/locations/[^/]+/insightTypes/[^/]+/insights/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}",
                      response = {
                        ["$ref"] = "GoogleCloudRecommenderV1Insight",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    list = {
                      description = "Lists insights for the specified Cloud Resource. Requires the recommender.*.list IAM permission for the specified insight type.",
                      flatPath = "v1/folders/{foldersId}/locations/{locationsId}/insightTypes/{insightTypesId}/insights",
                      httpMethod = "GET",
                      id = "recommender.folders.locations.insightTypes.insights.list",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        filter = {
                          description = "Optional. Filter expression to restrict the insights returned. Supported filter fields: * `stateInfo.state` * `insightSubtype` * `severity` Examples: * `stateInfo.state = ACTIVE OR stateInfo.state = DISMISSED` * `insightSubtype = PERMISSIONS_USAGE` * `severity = CRITICAL OR severity = HIGH` * `stateInfo.state = ACTIVE AND (severity = CRITICAL OR severity = HIGH)` (These expressions are based on the filter language described at https://google.aip.dev/160)",
                          location = "query",
                          type = "string",
                        },
                        pageSize = {
                          description = "Optional. The maximum number of results to return from this request. Non-positive values are ignored. If not specified, the server will determine the number of results to return.",
                          format = "int32",
                          location = "query",
                          type = "integer",
                        },
                        pageToken = {
                          description = "Optional. If present, retrieves the next batch of results from the preceding call to this method. `page_token` must be the value of `next_page_token` from the previous response. The values of other method parameters must be identical to those in the previous call.",
                          location = "query",
                          type = "string",
                        },
                        parent = {
                          description = "Required. The container resource on which to execute the request. Acceptable formats: * `projects/[PROJECT_NUMBER]/locations/[LOCATION]/insightTypes/[INSIGHT_TYPE_ID]` * `projects/[PROJECT_ID]/locations/[LOCATION]/insightTypes/[INSIGHT_TYPE_ID]` * `billingAccounts/[BILLING_ACCOUNT_ID]/locations/[LOCATION]/insightTypes/[INSIGHT_TYPE_ID]` * `folders/[FOLDER_ID]/locations/[LOCATION]/insightTypes/[INSIGHT_TYPE_ID]` * `organizations/[ORGANIZATION_ID]/locations/[LOCATION]/insightTypes/[INSIGHT_TYPE_ID]` LOCATION here refers to GCP Locations: https://cloud.google.com/about/locations/ INSIGHT_TYPE_ID refers to supported insight types: https://cloud.google.com/recommender/docs/insights/insight-types.",
                          location = "path",
                          pattern = "^folders/[^/]+/locations/[^/]+/insightTypes/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/insights",
                      response = {
                        ["$ref"] = "GoogleCloudRecommenderV1ListInsightsResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    markAccepted = {
                      description = "Marks the Insight State as Accepted. Users can use this method to indicate to the Recommender API that they have applied some action based on the insight. This stops the insight content from being updated. MarkInsightAccepted can be applied to insights in ACTIVE state. Requires the recommender.*.update IAM permission for the specified insight.",
                      flatPath = "v1/folders/{foldersId}/locations/{locationsId}/insightTypes/{insightTypesId}/insights/{insightsId}:markAccepted",
                      httpMethod = "POST",
                      id = "recommender.folders.locations.insightTypes.insights.markAccepted",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. Name of the insight.",
                          location = "path",
                          pattern = "^folders/[^/]+/locations/[^/]+/insightTypes/[^/]+/insights/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}:markAccepted",
                      request = {
                        ["$ref"] = "GoogleCloudRecommenderV1MarkInsightAcceptedRequest",
                      },
                      response = {
                        ["$ref"] = "GoogleCloudRecommenderV1Insight",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                  },
                },
              },
            },
            recommenders = {
              resources = {
                recommendations = {
                  methods = {
                    get = {
                      description = "Gets the requested recommendation. Requires the recommender.*.get IAM permission for the specified recommender.",
                      flatPath = "v1/folders/{foldersId}/locations/{locationsId}/recommenders/{recommendersId}/recommendations/{recommendationsId}",
                      httpMethod = "GET",
                      id = "recommender.folders.locations.recommenders.recommendations.get",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. Name of the recommendation.",
                          location = "path",
                          pattern = "^folders/[^/]+/locations/[^/]+/recommenders/[^/]+/recommendations/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}",
                      response = {
                        ["$ref"] = "GoogleCloudRecommenderV1Recommendation",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    list = {
                      description = "Lists recommendations for the specified Cloud Resource. Requires the recommender.*.list IAM permission for the specified recommender.",
                      flatPath = "v1/folders/{foldersId}/locations/{locationsId}/recommenders/{recommendersId}/recommendations",
                      httpMethod = "GET",
                      id = "recommender.folders.locations.recommenders.recommendations.list",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        filter = {
                          description = "Filter expression to restrict the recommendations returned. Supported filter fields: * `state_info.state` * `recommenderSubtype` * `priority` Examples: * `stateInfo.state = ACTIVE OR stateInfo.state = DISMISSED` * `recommenderSubtype = REMOVE_ROLE OR recommenderSubtype = REPLACE_ROLE` * `priority = P1 OR priority = P2` * `stateInfo.state = ACTIVE AND (priority = P1 OR priority = P2)` (These expressions are based on the filter language described at https://google.aip.dev/160)",
                          location = "query",
                          type = "string",
                        },
                        pageSize = {
                          description = "Optional. The maximum number of results to return from this request. Non-positive values are ignored. If not specified, the server will determine the number of results to return.",
                          format = "int32",
                          location = "query",
                          type = "integer",
                        },
                        pageToken = {
                          description = "Optional. If present, retrieves the next batch of results from the preceding call to this method. `page_token` must be the value of `next_page_token` from the previous response. The values of other method parameters must be identical to those in the previous call.",
                          location = "query",
                          type = "string",
                        },
                        parent = {
                          description = "Required. The container resource on which to execute the request. Acceptable formats: * `projects/[PROJECT_NUMBER]/locations/[LOCATION]/recommenders/[RECOMMENDER_ID]` * `projects/[PROJECT_ID]/locations/[LOCATION]/recommenders/[RECOMMENDER_ID]` * `billingAccounts/[BILLING_ACCOUNT_ID]/locations/[LOCATION]/recommenders/[RECOMMENDER_ID]` * `folders/[FOLDER_ID]/locations/[LOCATION]/recommenders/[RECOMMENDER_ID]` * `organizations/[ORGANIZATION_ID]/locations/[LOCATION]/recommenders/[RECOMMENDER_ID]` LOCATION here refers to GCP Locations: https://cloud.google.com/about/locations/ RECOMMENDER_ID refers to supported recommenders: https://cloud.google.com/recommender/docs/recommenders.",
                          location = "path",
                          pattern = "^folders/[^/]+/locations/[^/]+/recommenders/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/recommendations",
                      response = {
                        ["$ref"] = "GoogleCloudRecommenderV1ListRecommendationsResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    markClaimed = {
                      description = "Marks the Recommendation State as Claimed. Users can use this method to indicate to the Recommender API that they are starting to apply the recommendation themselves. This stops the recommendation content from being updated. Associated insights are frozen and placed in the ACCEPTED state. MarkRecommendationClaimed can be applied to recommendations in CLAIMED, SUCCEEDED, FAILED, or ACTIVE state. Requires the recommender.*.update IAM permission for the specified recommender.",
                      flatPath = "v1/folders/{foldersId}/locations/{locationsId}/recommenders/{recommendersId}/recommendations/{recommendationsId}:markClaimed",
                      httpMethod = "POST",
                      id = "recommender.folders.locations.recommenders.recommendations.markClaimed",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. Name of the recommendation.",
                          location = "path",
                          pattern = "^folders/[^/]+/locations/[^/]+/recommenders/[^/]+/recommendations/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}:markClaimed",
                      request = {
                        ["$ref"] = "GoogleCloudRecommenderV1MarkRecommendationClaimedRequest",
                      },
                      response = {
                        ["$ref"] = "GoogleCloudRecommenderV1Recommendation",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    markDismissed = {
                      description = "Mark the Recommendation State as Dismissed. Users can use this method to indicate to the Recommender API that an ACTIVE recommendation has to be marked back as DISMISSED. MarkRecommendationDismissed can be applied to recommendations in ACTIVE state. Requires the recommender.*.update IAM permission for the specified recommender.",
                      flatPath = "v1/folders/{foldersId}/locations/{locationsId}/recommenders/{recommendersId}/recommendations/{recommendationsId}:markDismissed",
                      httpMethod = "POST",
                      id = "recommender.folders.locations.recommenders.recommendations.markDismissed",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Name of the recommendation.",
                          location = "path",
                          pattern = "^folders/[^/]+/locations/[^/]+/recommenders/[^/]+/recommendations/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}:markDismissed",
                      request = {
                        ["$ref"] = "GoogleCloudRecommenderV1MarkRecommendationDismissedRequest",
                      },
                      response = {
                        ["$ref"] = "GoogleCloudRecommenderV1Recommendation",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    markFailed = {
                      description = "Marks the Recommendation State as Failed. Users can use this method to indicate to the Recommender API that they have applied the recommendation themselves, and the operation failed. This stops the recommendation content from being updated. Associated insights are frozen and placed in the ACCEPTED state. MarkRecommendationFailed can be applied to recommendations in ACTIVE, CLAIMED, SUCCEEDED, or FAILED state. Requires the recommender.*.update IAM permission for the specified recommender.",
                      flatPath = "v1/folders/{foldersId}/locations/{locationsId}/recommenders/{recommendersId}/recommendations/{recommendationsId}:markFailed",
                      httpMethod = "POST",
                      id = "recommender.folders.locations.recommenders.recommendations.markFailed",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. Name of the recommendation.",
                          location = "path",
                          pattern = "^folders/[^/]+/locations/[^/]+/recommenders/[^/]+/recommendations/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}:markFailed",
                      request = {
                        ["$ref"] = "GoogleCloudRecommenderV1MarkRecommendationFailedRequest",
                      },
                      response = {
                        ["$ref"] = "GoogleCloudRecommenderV1Recommendation",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    markSucceeded = {
                      description = "Marks the Recommendation State as Succeeded. Users can use this method to indicate to the Recommender API that they have applied the recommendation themselves, and the operation was successful. This stops the recommendation content from being updated. Associated insights are frozen and placed in the ACCEPTED state. MarkRecommendationSucceeded can be applied to recommendations in ACTIVE, CLAIMED, SUCCEEDED, or FAILED state. Requires the recommender.*.update IAM permission for the specified recommender.",
                      flatPath = "v1/folders/{foldersId}/locations/{locationsId}/recommenders/{recommendersId}/recommendations/{recommendationsId}:markSucceeded",
                      httpMethod = "POST",
                      id = "recommender.folders.locations.recommenders.recommendations.markSucceeded",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. Name of the recommendation.",
                          location = "path",
                          pattern = "^folders/[^/]+/locations/[^/]+/recommenders/[^/]+/recommendations/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}:markSucceeded",
                      request = {
                        ["$ref"] = "GoogleCloudRecommenderV1MarkRecommendationSucceededRequest",
                      },
                      response = {
                        ["$ref"] = "GoogleCloudRecommenderV1Recommendation",
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
    organizations = {
      resources = {
        locations = {
          resources = {
            insightTypes = {
              methods = {
                getConfig = {
                  description = "Gets the requested InsightTypeConfig. There is only one instance of the config for each InsightType.",
                  flatPath = "v1/organizations/{organizationsId}/locations/{locationsId}/insightTypes/{insightTypesId}/config",
                  httpMethod = "GET",
                  id = "recommender.organizations.locations.insightTypes.getConfig",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Name of the InsightTypeConfig to get. Acceptable formats: * `projects/[PROJECT_NUMBER]/locations/[LOCATION]/insightTypes/[INSIGHT_TYPE_ID]/config` * `projects/[PROJECT_ID]/locations/[LOCATION]/insightTypes/[INSIGHT_TYPE_ID]/config` * `organizations/[ORGANIZATION_ID]/locations/[LOCATION]/insightTypes/[INSIGHT_TYPE_ID]/config` * `billingAccounts/[BILLING_ACCOUNT_ID]/locations/[LOCATION]/insightTypes/[INSIGHT_TYPE_ID]/config`",
                      location = "path",
                      pattern = "^organizations/[^/]+/locations/[^/]+/insightTypes/[^/]+/config$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "GoogleCloudRecommenderV1InsightTypeConfig",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                updateConfig = {
                  description = "Updates an InsightTypeConfig change. This will create a new revision of the config.",
                  flatPath = "v1/organizations/{organizationsId}/locations/{locationsId}/insightTypes/{insightTypesId}/config",
                  httpMethod = "PATCH",
                  id = "recommender.organizations.locations.insightTypes.updateConfig",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Name of insight type config. Eg, projects/[PROJECT_NUMBER]/locations/[LOCATION]/insightTypes/[INSIGHT_TYPE_ID]/config",
                      location = "path",
                      pattern = "^organizations/[^/]+/locations/[^/]+/insightTypes/[^/]+/config$",
                      required = true,
                      type = "string",
                    },
                    updateMask = {
                      description = "The list of fields to be updated.",
                      format = "google-fieldmask",
                      location = "query",
                      type = "string",
                    },
                    validateOnly = {
                      description = "If true, validate the request and preview the change, but do not actually update it.",
                      location = "query",
                      type = "boolean",
                    },
                  },
                  path = "v1/{+name}",
                  request = {
                    ["$ref"] = "GoogleCloudRecommenderV1InsightTypeConfig",
                  },
                  response = {
                    ["$ref"] = "GoogleCloudRecommenderV1InsightTypeConfig",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
              },
              resources = {
                insights = {
                  methods = {
                    get = {
                      description = "Gets the requested insight. Requires the recommender.*.get IAM permission for the specified insight type.",
                      flatPath = "v1/organizations/{organizationsId}/locations/{locationsId}/insightTypes/{insightTypesId}/insights/{insightsId}",
                      httpMethod = "GET",
                      id = "recommender.organizations.locations.insightTypes.insights.get",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. Name of the insight.",
                          location = "path",
                          pattern = "^organizations/[^/]+/locations/[^/]+/insightTypes/[^/]+/insights/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}",
                      response = {
                        ["$ref"] = "GoogleCloudRecommenderV1Insight",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    list = {
                      description = "Lists insights for the specified Cloud Resource. Requires the recommender.*.list IAM permission for the specified insight type.",
                      flatPath = "v1/organizations/{organizationsId}/locations/{locationsId}/insightTypes/{insightTypesId}/insights",
                      httpMethod = "GET",
                      id = "recommender.organizations.locations.insightTypes.insights.list",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        filter = {
                          description = "Optional. Filter expression to restrict the insights returned. Supported filter fields: * `stateInfo.state` * `insightSubtype` * `severity` Examples: * `stateInfo.state = ACTIVE OR stateInfo.state = DISMISSED` * `insightSubtype = PERMISSIONS_USAGE` * `severity = CRITICAL OR severity = HIGH` * `stateInfo.state = ACTIVE AND (severity = CRITICAL OR severity = HIGH)` (These expressions are based on the filter language described at https://google.aip.dev/160)",
                          location = "query",
                          type = "string",
                        },
                        pageSize = {
                          description = "Optional. The maximum number of results to return from this request. Non-positive values are ignored. If not specified, the server will determine the number of results to return.",
                          format = "int32",
                          location = "query",
                          type = "integer",
                        },
                        pageToken = {
                          description = "Optional. If present, retrieves the next batch of results from the preceding call to this method. `page_token` must be the value of `next_page_token` from the previous response. The values of other method parameters must be identical to those in the previous call.",
                          location = "query",
                          type = "string",
                        },
                        parent = {
                          description = "Required. The container resource on which to execute the request. Acceptable formats: * `projects/[PROJECT_NUMBER]/locations/[LOCATION]/insightTypes/[INSIGHT_TYPE_ID]` * `projects/[PROJECT_ID]/locations/[LOCATION]/insightTypes/[INSIGHT_TYPE_ID]` * `billingAccounts/[BILLING_ACCOUNT_ID]/locations/[LOCATION]/insightTypes/[INSIGHT_TYPE_ID]` * `folders/[FOLDER_ID]/locations/[LOCATION]/insightTypes/[INSIGHT_TYPE_ID]` * `organizations/[ORGANIZATION_ID]/locations/[LOCATION]/insightTypes/[INSIGHT_TYPE_ID]` LOCATION here refers to GCP Locations: https://cloud.google.com/about/locations/ INSIGHT_TYPE_ID refers to supported insight types: https://cloud.google.com/recommender/docs/insights/insight-types.",
                          location = "path",
                          pattern = "^organizations/[^/]+/locations/[^/]+/insightTypes/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/insights",
                      response = {
                        ["$ref"] = "GoogleCloudRecommenderV1ListInsightsResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    markAccepted = {
                      description = "Marks the Insight State as Accepted. Users can use this method to indicate to the Recommender API that they have applied some action based on the insight. This stops the insight content from being updated. MarkInsightAccepted can be applied to insights in ACTIVE state. Requires the recommender.*.update IAM permission for the specified insight.",
                      flatPath = "v1/organizations/{organizationsId}/locations/{locationsId}/insightTypes/{insightTypesId}/insights/{insightsId}:markAccepted",
                      httpMethod = "POST",
                      id = "recommender.organizations.locations.insightTypes.insights.markAccepted",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. Name of the insight.",
                          location = "path",
                          pattern = "^organizations/[^/]+/locations/[^/]+/insightTypes/[^/]+/insights/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}:markAccepted",
                      request = {
                        ["$ref"] = "GoogleCloudRecommenderV1MarkInsightAcceptedRequest",
                      },
                      response = {
                        ["$ref"] = "GoogleCloudRecommenderV1Insight",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                  },
                },
              },
            },
            recommenders = {
              methods = {
                getConfig = {
                  description = "Gets the requested Recommender Config. There is only one instance of the config for each Recommender.",
                  flatPath = "v1/organizations/{organizationsId}/locations/{locationsId}/recommenders/{recommendersId}/config",
                  httpMethod = "GET",
                  id = "recommender.organizations.locations.recommenders.getConfig",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Name of the Recommendation Config to get. Acceptable formats: * `projects/[PROJECT_NUMBER]/locations/[LOCATION]/recommenders/[RECOMMENDER_ID]/config` * `projects/[PROJECT_ID]/locations/[LOCATION]/recommenders/[RECOMMENDER_ID]/config` * `organizations/[ORGANIZATION_ID]/locations/[LOCATION]/recommenders/[RECOMMENDER_ID]/config` * `billingAccounts/[BILLING_ACCOUNT_ID]/locations/[LOCATION]/recommenders/[RECOMMENDER_ID]/config`",
                      location = "path",
                      pattern = "^organizations/[^/]+/locations/[^/]+/recommenders/[^/]+/config$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "GoogleCloudRecommenderV1RecommenderConfig",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                updateConfig = {
                  description = "Updates a Recommender Config. This will create a new revision of the config.",
                  flatPath = "v1/organizations/{organizationsId}/locations/{locationsId}/recommenders/{recommendersId}/config",
                  httpMethod = "PATCH",
                  id = "recommender.organizations.locations.recommenders.updateConfig",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Name of recommender config. Eg, projects/[PROJECT_NUMBER]/locations/[LOCATION]/recommenders/[RECOMMENDER_ID]/config",
                      location = "path",
                      pattern = "^organizations/[^/]+/locations/[^/]+/recommenders/[^/]+/config$",
                      required = true,
                      type = "string",
                    },
                    updateMask = {
                      description = "The list of fields to be updated.",
                      format = "google-fieldmask",
                      location = "query",
                      type = "string",
                    },
                    validateOnly = {
                      description = "If true, validate the request and preview the change, but do not actually update it.",
                      location = "query",
                      type = "boolean",
                    },
                  },
                  path = "v1/{+name}",
                  request = {
                    ["$ref"] = "GoogleCloudRecommenderV1RecommenderConfig",
                  },
                  response = {
                    ["$ref"] = "GoogleCloudRecommenderV1RecommenderConfig",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
              },
              resources = {
                recommendations = {
                  methods = {
                    get = {
                      description = "Gets the requested recommendation. Requires the recommender.*.get IAM permission for the specified recommender.",
                      flatPath = "v1/organizations/{organizationsId}/locations/{locationsId}/recommenders/{recommendersId}/recommendations/{recommendationsId}",
                      httpMethod = "GET",
                      id = "recommender.organizations.locations.recommenders.recommendations.get",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. Name of the recommendation.",
                          location = "path",
                          pattern = "^organizations/[^/]+/locations/[^/]+/recommenders/[^/]+/recommendations/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}",
                      response = {
                        ["$ref"] = "GoogleCloudRecommenderV1Recommendation",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    list = {
                      description = "Lists recommendations for the specified Cloud Resource. Requires the recommender.*.list IAM permission for the specified recommender.",
                      flatPath = "v1/organizations/{organizationsId}/locations/{locationsId}/recommenders/{recommendersId}/recommendations",
                      httpMethod = "GET",
                      id = "recommender.organizations.locations.recommenders.recommendations.list",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        filter = {
                          description = "Filter expression to restrict the recommendations returned. Supported filter fields: * `state_info.state` * `recommenderSubtype` * `priority` Examples: * `stateInfo.state = ACTIVE OR stateInfo.state = DISMISSED` * `recommenderSubtype = REMOVE_ROLE OR recommenderSubtype = REPLACE_ROLE` * `priority = P1 OR priority = P2` * `stateInfo.state = ACTIVE AND (priority = P1 OR priority = P2)` (These expressions are based on the filter language described at https://google.aip.dev/160)",
                          location = "query",
                          type = "string",
                        },
                        pageSize = {
                          description = "Optional. The maximum number of results to return from this request. Non-positive values are ignored. If not specified, the server will determine the number of results to return.",
                          format = "int32",
                          location = "query",
                          type = "integer",
                        },
                        pageToken = {
                          description = "Optional. If present, retrieves the next batch of results from the preceding call to this method. `page_token` must be the value of `next_page_token` from the previous response. The values of other method parameters must be identical to those in the previous call.",
                          location = "query",
                          type = "string",
                        },
                        parent = {
                          description = "Required. The container resource on which to execute the request. Acceptable formats: * `projects/[PROJECT_NUMBER]/locations/[LOCATION]/recommenders/[RECOMMENDER_ID]` * `projects/[PROJECT_ID]/locations/[LOCATION]/recommenders/[RECOMMENDER_ID]` * `billingAccounts/[BILLING_ACCOUNT_ID]/locations/[LOCATION]/recommenders/[RECOMMENDER_ID]` * `folders/[FOLDER_ID]/locations/[LOCATION]/recommenders/[RECOMMENDER_ID]` * `organizations/[ORGANIZATION_ID]/locations/[LOCATION]/recommenders/[RECOMMENDER_ID]` LOCATION here refers to GCP Locations: https://cloud.google.com/about/locations/ RECOMMENDER_ID refers to supported recommenders: https://cloud.google.com/recommender/docs/recommenders.",
                          location = "path",
                          pattern = "^organizations/[^/]+/locations/[^/]+/recommenders/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/recommendations",
                      response = {
                        ["$ref"] = "GoogleCloudRecommenderV1ListRecommendationsResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    markClaimed = {
                      description = "Marks the Recommendation State as Claimed. Users can use this method to indicate to the Recommender API that they are starting to apply the recommendation themselves. This stops the recommendation content from being updated. Associated insights are frozen and placed in the ACCEPTED state. MarkRecommendationClaimed can be applied to recommendations in CLAIMED, SUCCEEDED, FAILED, or ACTIVE state. Requires the recommender.*.update IAM permission for the specified recommender.",
                      flatPath = "v1/organizations/{organizationsId}/locations/{locationsId}/recommenders/{recommendersId}/recommendations/{recommendationsId}:markClaimed",
                      httpMethod = "POST",
                      id = "recommender.organizations.locations.recommenders.recommendations.markClaimed",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. Name of the recommendation.",
                          location = "path",
                          pattern = "^organizations/[^/]+/locations/[^/]+/recommenders/[^/]+/recommendations/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}:markClaimed",
                      request = {
                        ["$ref"] = "GoogleCloudRecommenderV1MarkRecommendationClaimedRequest",
                      },
                      response = {
                        ["$ref"] = "GoogleCloudRecommenderV1Recommendation",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    markDismissed = {
                      description = "Mark the Recommendation State as Dismissed. Users can use this method to indicate to the Recommender API that an ACTIVE recommendation has to be marked back as DISMISSED. MarkRecommendationDismissed can be applied to recommendations in ACTIVE state. Requires the recommender.*.update IAM permission for the specified recommender.",
                      flatPath = "v1/organizations/{organizationsId}/locations/{locationsId}/recommenders/{recommendersId}/recommendations/{recommendationsId}:markDismissed",
                      httpMethod = "POST",
                      id = "recommender.organizations.locations.recommenders.recommendations.markDismissed",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Name of the recommendation.",
                          location = "path",
                          pattern = "^organizations/[^/]+/locations/[^/]+/recommenders/[^/]+/recommendations/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}:markDismissed",
                      request = {
                        ["$ref"] = "GoogleCloudRecommenderV1MarkRecommendationDismissedRequest",
                      },
                      response = {
                        ["$ref"] = "GoogleCloudRecommenderV1Recommendation",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    markFailed = {
                      description = "Marks the Recommendation State as Failed. Users can use this method to indicate to the Recommender API that they have applied the recommendation themselves, and the operation failed. This stops the recommendation content from being updated. Associated insights are frozen and placed in the ACCEPTED state. MarkRecommendationFailed can be applied to recommendations in ACTIVE, CLAIMED, SUCCEEDED, or FAILED state. Requires the recommender.*.update IAM permission for the specified recommender.",
                      flatPath = "v1/organizations/{organizationsId}/locations/{locationsId}/recommenders/{recommendersId}/recommendations/{recommendationsId}:markFailed",
                      httpMethod = "POST",
                      id = "recommender.organizations.locations.recommenders.recommendations.markFailed",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. Name of the recommendation.",
                          location = "path",
                          pattern = "^organizations/[^/]+/locations/[^/]+/recommenders/[^/]+/recommendations/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}:markFailed",
                      request = {
                        ["$ref"] = "GoogleCloudRecommenderV1MarkRecommendationFailedRequest",
                      },
                      response = {
                        ["$ref"] = "GoogleCloudRecommenderV1Recommendation",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    markSucceeded = {
                      description = "Marks the Recommendation State as Succeeded. Users can use this method to indicate to the Recommender API that they have applied the recommendation themselves, and the operation was successful. This stops the recommendation content from being updated. Associated insights are frozen and placed in the ACCEPTED state. MarkRecommendationSucceeded can be applied to recommendations in ACTIVE, CLAIMED, SUCCEEDED, or FAILED state. Requires the recommender.*.update IAM permission for the specified recommender.",
                      flatPath = "v1/organizations/{organizationsId}/locations/{locationsId}/recommenders/{recommendersId}/recommendations/{recommendationsId}:markSucceeded",
                      httpMethod = "POST",
                      id = "recommender.organizations.locations.recommenders.recommendations.markSucceeded",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. Name of the recommendation.",
                          location = "path",
                          pattern = "^organizations/[^/]+/locations/[^/]+/recommenders/[^/]+/recommendations/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}:markSucceeded",
                      request = {
                        ["$ref"] = "GoogleCloudRecommenderV1MarkRecommendationSucceededRequest",
                      },
                      response = {
                        ["$ref"] = "GoogleCloudRecommenderV1Recommendation",
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
    projects = {
      resources = {
        locations = {
          resources = {
            insightTypes = {
              methods = {
                getConfig = {
                  description = "Gets the requested InsightTypeConfig. There is only one instance of the config for each InsightType.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/insightTypes/{insightTypesId}/config",
                  httpMethod = "GET",
                  id = "recommender.projects.locations.insightTypes.getConfig",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Name of the InsightTypeConfig to get. Acceptable formats: * `projects/[PROJECT_NUMBER]/locations/[LOCATION]/insightTypes/[INSIGHT_TYPE_ID]/config` * `projects/[PROJECT_ID]/locations/[LOCATION]/insightTypes/[INSIGHT_TYPE_ID]/config` * `organizations/[ORGANIZATION_ID]/locations/[LOCATION]/insightTypes/[INSIGHT_TYPE_ID]/config` * `billingAccounts/[BILLING_ACCOUNT_ID]/locations/[LOCATION]/insightTypes/[INSIGHT_TYPE_ID]/config`",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/insightTypes/[^/]+/config$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "GoogleCloudRecommenderV1InsightTypeConfig",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                updateConfig = {
                  description = "Updates an InsightTypeConfig change. This will create a new revision of the config.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/insightTypes/{insightTypesId}/config",
                  httpMethod = "PATCH",
                  id = "recommender.projects.locations.insightTypes.updateConfig",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Name of insight type config. Eg, projects/[PROJECT_NUMBER]/locations/[LOCATION]/insightTypes/[INSIGHT_TYPE_ID]/config",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/insightTypes/[^/]+/config$",
                      required = true,
                      type = "string",
                    },
                    updateMask = {
                      description = "The list of fields to be updated.",
                      format = "google-fieldmask",
                      location = "query",
                      type = "string",
                    },
                    validateOnly = {
                      description = "If true, validate the request and preview the change, but do not actually update it.",
                      location = "query",
                      type = "boolean",
                    },
                  },
                  path = "v1/{+name}",
                  request = {
                    ["$ref"] = "GoogleCloudRecommenderV1InsightTypeConfig",
                  },
                  response = {
                    ["$ref"] = "GoogleCloudRecommenderV1InsightTypeConfig",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
              },
              resources = {
                insights = {
                  methods = {
                    get = {
                      description = "Gets the requested insight. Requires the recommender.*.get IAM permission for the specified insight type.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/insightTypes/{insightTypesId}/insights/{insightsId}",
                      httpMethod = "GET",
                      id = "recommender.projects.locations.insightTypes.insights.get",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. Name of the insight.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/insightTypes/[^/]+/insights/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}",
                      response = {
                        ["$ref"] = "GoogleCloudRecommenderV1Insight",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    list = {
                      description = "Lists insights for the specified Cloud Resource. Requires the recommender.*.list IAM permission for the specified insight type.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/insightTypes/{insightTypesId}/insights",
                      httpMethod = "GET",
                      id = "recommender.projects.locations.insightTypes.insights.list",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        filter = {
                          description = "Optional. Filter expression to restrict the insights returned. Supported filter fields: * `stateInfo.state` * `insightSubtype` * `severity` Examples: * `stateInfo.state = ACTIVE OR stateInfo.state = DISMISSED` * `insightSubtype = PERMISSIONS_USAGE` * `severity = CRITICAL OR severity = HIGH` * `stateInfo.state = ACTIVE AND (severity = CRITICAL OR severity = HIGH)` (These expressions are based on the filter language described at https://google.aip.dev/160)",
                          location = "query",
                          type = "string",
                        },
                        pageSize = {
                          description = "Optional. The maximum number of results to return from this request. Non-positive values are ignored. If not specified, the server will determine the number of results to return.",
                          format = "int32",
                          location = "query",
                          type = "integer",
                        },
                        pageToken = {
                          description = "Optional. If present, retrieves the next batch of results from the preceding call to this method. `page_token` must be the value of `next_page_token` from the previous response. The values of other method parameters must be identical to those in the previous call.",
                          location = "query",
                          type = "string",
                        },
                        parent = {
                          description = "Required. The container resource on which to execute the request. Acceptable formats: * `projects/[PROJECT_NUMBER]/locations/[LOCATION]/insightTypes/[INSIGHT_TYPE_ID]` * `projects/[PROJECT_ID]/locations/[LOCATION]/insightTypes/[INSIGHT_TYPE_ID]` * `billingAccounts/[BILLING_ACCOUNT_ID]/locations/[LOCATION]/insightTypes/[INSIGHT_TYPE_ID]` * `folders/[FOLDER_ID]/locations/[LOCATION]/insightTypes/[INSIGHT_TYPE_ID]` * `organizations/[ORGANIZATION_ID]/locations/[LOCATION]/insightTypes/[INSIGHT_TYPE_ID]` LOCATION here refers to GCP Locations: https://cloud.google.com/about/locations/ INSIGHT_TYPE_ID refers to supported insight types: https://cloud.google.com/recommender/docs/insights/insight-types.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/insightTypes/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/insights",
                      response = {
                        ["$ref"] = "GoogleCloudRecommenderV1ListInsightsResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    markAccepted = {
                      description = "Marks the Insight State as Accepted. Users can use this method to indicate to the Recommender API that they have applied some action based on the insight. This stops the insight content from being updated. MarkInsightAccepted can be applied to insights in ACTIVE state. Requires the recommender.*.update IAM permission for the specified insight.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/insightTypes/{insightTypesId}/insights/{insightsId}:markAccepted",
                      httpMethod = "POST",
                      id = "recommender.projects.locations.insightTypes.insights.markAccepted",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. Name of the insight.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/insightTypes/[^/]+/insights/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}:markAccepted",
                      request = {
                        ["$ref"] = "GoogleCloudRecommenderV1MarkInsightAcceptedRequest",
                      },
                      response = {
                        ["$ref"] = "GoogleCloudRecommenderV1Insight",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                  },
                },
              },
            },
            recommenders = {
              methods = {
                getConfig = {
                  description = "Gets the requested Recommender Config. There is only one instance of the config for each Recommender.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/recommenders/{recommendersId}/config",
                  httpMethod = "GET",
                  id = "recommender.projects.locations.recommenders.getConfig",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Name of the Recommendation Config to get. Acceptable formats: * `projects/[PROJECT_NUMBER]/locations/[LOCATION]/recommenders/[RECOMMENDER_ID]/config` * `projects/[PROJECT_ID]/locations/[LOCATION]/recommenders/[RECOMMENDER_ID]/config` * `organizations/[ORGANIZATION_ID]/locations/[LOCATION]/recommenders/[RECOMMENDER_ID]/config` * `billingAccounts/[BILLING_ACCOUNT_ID]/locations/[LOCATION]/recommenders/[RECOMMENDER_ID]/config`",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/recommenders/[^/]+/config$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "GoogleCloudRecommenderV1RecommenderConfig",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                updateConfig = {
                  description = "Updates a Recommender Config. This will create a new revision of the config.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/recommenders/{recommendersId}/config",
                  httpMethod = "PATCH",
                  id = "recommender.projects.locations.recommenders.updateConfig",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Name of recommender config. Eg, projects/[PROJECT_NUMBER]/locations/[LOCATION]/recommenders/[RECOMMENDER_ID]/config",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/recommenders/[^/]+/config$",
                      required = true,
                      type = "string",
                    },
                    updateMask = {
                      description = "The list of fields to be updated.",
                      format = "google-fieldmask",
                      location = "query",
                      type = "string",
                    },
                    validateOnly = {
                      description = "If true, validate the request and preview the change, but do not actually update it.",
                      location = "query",
                      type = "boolean",
                    },
                  },
                  path = "v1/{+name}",
                  request = {
                    ["$ref"] = "GoogleCloudRecommenderV1RecommenderConfig",
                  },
                  response = {
                    ["$ref"] = "GoogleCloudRecommenderV1RecommenderConfig",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
              },
              resources = {
                recommendations = {
                  methods = {
                    get = {
                      description = "Gets the requested recommendation. Requires the recommender.*.get IAM permission for the specified recommender.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/recommenders/{recommendersId}/recommendations/{recommendationsId}",
                      httpMethod = "GET",
                      id = "recommender.projects.locations.recommenders.recommendations.get",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. Name of the recommendation.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/recommenders/[^/]+/recommendations/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}",
                      response = {
                        ["$ref"] = "GoogleCloudRecommenderV1Recommendation",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    list = {
                      description = "Lists recommendations for the specified Cloud Resource. Requires the recommender.*.list IAM permission for the specified recommender.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/recommenders/{recommendersId}/recommendations",
                      httpMethod = "GET",
                      id = "recommender.projects.locations.recommenders.recommendations.list",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        filter = {
                          description = "Filter expression to restrict the recommendations returned. Supported filter fields: * `state_info.state` * `recommenderSubtype` * `priority` Examples: * `stateInfo.state = ACTIVE OR stateInfo.state = DISMISSED` * `recommenderSubtype = REMOVE_ROLE OR recommenderSubtype = REPLACE_ROLE` * `priority = P1 OR priority = P2` * `stateInfo.state = ACTIVE AND (priority = P1 OR priority = P2)` (These expressions are based on the filter language described at https://google.aip.dev/160)",
                          location = "query",
                          type = "string",
                        },
                        pageSize = {
                          description = "Optional. The maximum number of results to return from this request. Non-positive values are ignored. If not specified, the server will determine the number of results to return.",
                          format = "int32",
                          location = "query",
                          type = "integer",
                        },
                        pageToken = {
                          description = "Optional. If present, retrieves the next batch of results from the preceding call to this method. `page_token` must be the value of `next_page_token` from the previous response. The values of other method parameters must be identical to those in the previous call.",
                          location = "query",
                          type = "string",
                        },
                        parent = {
                          description = "Required. The container resource on which to execute the request. Acceptable formats: * `projects/[PROJECT_NUMBER]/locations/[LOCATION]/recommenders/[RECOMMENDER_ID]` * `projects/[PROJECT_ID]/locations/[LOCATION]/recommenders/[RECOMMENDER_ID]` * `billingAccounts/[BILLING_ACCOUNT_ID]/locations/[LOCATION]/recommenders/[RECOMMENDER_ID]` * `folders/[FOLDER_ID]/locations/[LOCATION]/recommenders/[RECOMMENDER_ID]` * `organizations/[ORGANIZATION_ID]/locations/[LOCATION]/recommenders/[RECOMMENDER_ID]` LOCATION here refers to GCP Locations: https://cloud.google.com/about/locations/ RECOMMENDER_ID refers to supported recommenders: https://cloud.google.com/recommender/docs/recommenders.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/recommenders/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/recommendations",
                      response = {
                        ["$ref"] = "GoogleCloudRecommenderV1ListRecommendationsResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    markClaimed = {
                      description = "Marks the Recommendation State as Claimed. Users can use this method to indicate to the Recommender API that they are starting to apply the recommendation themselves. This stops the recommendation content from being updated. Associated insights are frozen and placed in the ACCEPTED state. MarkRecommendationClaimed can be applied to recommendations in CLAIMED, SUCCEEDED, FAILED, or ACTIVE state. Requires the recommender.*.update IAM permission for the specified recommender.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/recommenders/{recommendersId}/recommendations/{recommendationsId}:markClaimed",
                      httpMethod = "POST",
                      id = "recommender.projects.locations.recommenders.recommendations.markClaimed",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. Name of the recommendation.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/recommenders/[^/]+/recommendations/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}:markClaimed",
                      request = {
                        ["$ref"] = "GoogleCloudRecommenderV1MarkRecommendationClaimedRequest",
                      },
                      response = {
                        ["$ref"] = "GoogleCloudRecommenderV1Recommendation",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    markDismissed = {
                      description = "Mark the Recommendation State as Dismissed. Users can use this method to indicate to the Recommender API that an ACTIVE recommendation has to be marked back as DISMISSED. MarkRecommendationDismissed can be applied to recommendations in ACTIVE state. Requires the recommender.*.update IAM permission for the specified recommender.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/recommenders/{recommendersId}/recommendations/{recommendationsId}:markDismissed",
                      httpMethod = "POST",
                      id = "recommender.projects.locations.recommenders.recommendations.markDismissed",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Name of the recommendation.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/recommenders/[^/]+/recommendations/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}:markDismissed",
                      request = {
                        ["$ref"] = "GoogleCloudRecommenderV1MarkRecommendationDismissedRequest",
                      },
                      response = {
                        ["$ref"] = "GoogleCloudRecommenderV1Recommendation",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    markFailed = {
                      description = "Marks the Recommendation State as Failed. Users can use this method to indicate to the Recommender API that they have applied the recommendation themselves, and the operation failed. This stops the recommendation content from being updated. Associated insights are frozen and placed in the ACCEPTED state. MarkRecommendationFailed can be applied to recommendations in ACTIVE, CLAIMED, SUCCEEDED, or FAILED state. Requires the recommender.*.update IAM permission for the specified recommender.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/recommenders/{recommendersId}/recommendations/{recommendationsId}:markFailed",
                      httpMethod = "POST",
                      id = "recommender.projects.locations.recommenders.recommendations.markFailed",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. Name of the recommendation.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/recommenders/[^/]+/recommendations/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}:markFailed",
                      request = {
                        ["$ref"] = "GoogleCloudRecommenderV1MarkRecommendationFailedRequest",
                      },
                      response = {
                        ["$ref"] = "GoogleCloudRecommenderV1Recommendation",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    markSucceeded = {
                      description = "Marks the Recommendation State as Succeeded. Users can use this method to indicate to the Recommender API that they have applied the recommendation themselves, and the operation was successful. This stops the recommendation content from being updated. Associated insights are frozen and placed in the ACCEPTED state. MarkRecommendationSucceeded can be applied to recommendations in ACTIVE, CLAIMED, SUCCEEDED, or FAILED state. Requires the recommender.*.update IAM permission for the specified recommender.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/recommenders/{recommendersId}/recommendations/{recommendationsId}:markSucceeded",
                      httpMethod = "POST",
                      id = "recommender.projects.locations.recommenders.recommendations.markSucceeded",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. Name of the recommendation.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/recommenders/[^/]+/recommendations/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}:markSucceeded",
                      request = {
                        ["$ref"] = "GoogleCloudRecommenderV1MarkRecommendationSucceededRequest",
                      },
                      response = {
                        ["$ref"] = "GoogleCloudRecommenderV1Recommendation",
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
  revision = "20230108",
  rootUrl = "https://recommender.googleapis.com/",
  schemas = {
    GoogleCloudRecommenderV1CostProjection = {
      description = "Contains metadata about how much money a recommendation can save or incur.",
      id = "GoogleCloudRecommenderV1CostProjection",
      properties = {
        cost = {
          ["$ref"] = "GoogleTypeMoney",
          description = "An approximate projection on amount saved or amount incurred. Negative cost units indicate cost savings and positive cost units indicate increase. See google.type.Money documentation for positive/negative units. A user's permissions may affect whether the cost is computed using list prices or custom contract prices.",
        },
        duration = {
          description = "Duration for which this cost applies.",
          format = "google-duration",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudRecommenderV1Impact = {
      description = "Contains the impact a recommendation can have for a given category.",
      id = "GoogleCloudRecommenderV1Impact",
      properties = {
        category = {
          description = "Category that is being targeted.",
          enum = {
            "CATEGORY_UNSPECIFIED",
            "COST",
            "SECURITY",
            "PERFORMANCE",
            "MANAGEABILITY",
            "SUSTAINABILITY",
            "RELIABILITY",
          },
          enumDescriptions = {
            "Default unspecified category. Don't use directly.",
            "Indicates a potential increase or decrease in cost.",
            "Indicates a potential increase or decrease in security.",
            "Indicates a potential increase or decrease in performance.",
            "Indicates a potential increase or decrease in manageability.",
            "Indicates a potential increase or decrease in sustainability.",
            "Indicates a potential increase or decrease in reliability.",
          },
          type = "string",
        },
        costProjection = {
          ["$ref"] = "GoogleCloudRecommenderV1CostProjection",
          description = "Use with CategoryType.COST",
        },
        reliabilityProjection = {
          ["$ref"] = "GoogleCloudRecommenderV1ReliabilityProjection",
          description = "Use with CategoryType.RELAIBILITY",
        },
        securityProjection = {
          ["$ref"] = "GoogleCloudRecommenderV1SecurityProjection",
          description = "Use with CategoryType.SECURITY",
        },
        sustainabilityProjection = {
          ["$ref"] = "GoogleCloudRecommenderV1SustainabilityProjection",
          description = "Use with CategoryType.SUSTAINABILITY",
        },
      },
      type = "object",
    },
    GoogleCloudRecommenderV1Insight = {
      description = "An insight along with the information used to derive the insight. The insight may have associated recommendations as well.",
      id = "GoogleCloudRecommenderV1Insight",
      properties = {
        associatedRecommendations = {
          description = "Recommendations derived from this insight.",
          items = {
            ["$ref"] = "GoogleCloudRecommenderV1InsightRecommendationReference",
          },
          type = "array",
        },
        category = {
          description = "Category being targeted by the insight.",
          enum = {
            "CATEGORY_UNSPECIFIED",
            "COST",
            "SECURITY",
            "PERFORMANCE",
            "MANAGEABILITY",
            "SUSTAINABILITY",
            "RELIABILITY",
          },
          enumDescriptions = {
            "Unspecified category.",
            "The insight is related to cost.",
            "The insight is related to security.",
            "The insight is related to performance.",
            "This insight is related to manageability.",
            "The insight is related to sustainability.",
            "This insight is related to reliability.",
          },
          type = "string",
        },
        content = {
          additionalProperties = {
            description = "Properties of the object.",
            type = "any",
          },
          description = "A struct of custom fields to explain the insight. Example: \"grantedPermissionsCount\": \"1000\"",
          type = "object",
        },
        description = {
          description = "Free-form human readable summary in English. The maximum length is 500 characters.",
          type = "string",
        },
        etag = {
          description = "Fingerprint of the Insight. Provides optimistic locking when updating states.",
          type = "string",
        },
        insightSubtype = {
          description = "Insight subtype. Insight content schema will be stable for a given subtype.",
          type = "string",
        },
        lastRefreshTime = {
          description = "Timestamp of the latest data used to generate the insight.",
          format = "google-datetime",
          type = "string",
        },
        name = {
          description = "Name of the insight.",
          type = "string",
        },
        observationPeriod = {
          description = "Observation period that led to the insight. The source data used to generate the insight ends at last_refresh_time and begins at (last_refresh_time - observation_period).",
          format = "google-duration",
          type = "string",
        },
        severity = {
          description = "Insight's severity.",
          enum = {
            "SEVERITY_UNSPECIFIED",
            "LOW",
            "MEDIUM",
            "HIGH",
            "CRITICAL",
          },
          enumDescriptions = {
            "Insight has unspecified severity.",
            "Insight has low severity.",
            "Insight has medium severity.",
            "Insight has high severity.",
            "Insight has critical severity.",
          },
          type = "string",
        },
        stateInfo = {
          ["$ref"] = "GoogleCloudRecommenderV1InsightStateInfo",
          description = "Information state and metadata.",
        },
        targetResources = {
          description = "Fully qualified resource names that this insight is targeting.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudRecommenderV1InsightRecommendationReference = {
      description = "Reference to an associated recommendation.",
      id = "GoogleCloudRecommenderV1InsightRecommendationReference",
      properties = {
        recommendation = {
          description = "Recommendation resource name, e.g. projects/[PROJECT_NUMBER]/locations/[LOCATION]/recommenders/[RECOMMENDER_ID]/recommendations/[RECOMMENDATION_ID]",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudRecommenderV1InsightStateInfo = {
      description = "Information related to insight state.",
      id = "GoogleCloudRecommenderV1InsightStateInfo",
      properties = {
        state = {
          description = "Insight state.",
          enum = {
            "STATE_UNSPECIFIED",
            "ACTIVE",
            "ACCEPTED",
            "DISMISSED",
          },
          enumDescriptions = {
            "Unspecified state.",
            "Insight is active. Content for ACTIVE insights can be updated by Google. ACTIVE insights can be marked DISMISSED OR ACCEPTED.",
            "Some action has been taken based on this insight. Insights become accepted when a recommendation derived from the insight has been marked CLAIMED, SUCCEEDED, or FAILED. ACTIVE insights can also be marked ACCEPTED explicitly. Content for ACCEPTED insights is immutable. ACCEPTED insights can only be marked ACCEPTED (which may update state metadata).",
            "Insight is dismissed. Content for DISMISSED insights can be updated by Google. DISMISSED insights can be marked as ACTIVE.",
          },
          type = "string",
        },
        stateMetadata = {
          additionalProperties = {
            type = "string",
          },
          description = "A map of metadata for the state, provided by user or automations systems.",
          type = "object",
        },
      },
      type = "object",
    },
    GoogleCloudRecommenderV1InsightTypeConfig = {
      description = "Configuration for an InsightType.",
      id = "GoogleCloudRecommenderV1InsightTypeConfig",
      properties = {
        annotations = {
          additionalProperties = {
            type = "string",
          },
          description = "Allows clients to store small amounts of arbitrary data. Annotations must follow the Kubernetes syntax. The total size of all keys and values combined is limited to 256k. Key can have 2 segments: prefix (optional) and name (required), separated by a slash (/). Prefix must be a DNS subdomain. Name must be 63 characters or less, begin and end with alphanumerics, with dashes (-), underscores (_), dots (.), and alphanumerics between.",
          type = "object",
        },
        displayName = {
          description = "A user-settable field to provide a human-readable name to be used in user interfaces.",
          type = "string",
        },
        etag = {
          description = "Fingerprint of the InsightTypeConfig. Provides optimistic locking when updating.",
          type = "string",
        },
        insightTypeGenerationConfig = {
          ["$ref"] = "GoogleCloudRecommenderV1InsightTypeGenerationConfig",
          description = "InsightTypeGenerationConfig which configures the generation of insights for this insight type.",
        },
        name = {
          description = "Name of insight type config. Eg, projects/[PROJECT_NUMBER]/locations/[LOCATION]/insightTypes/[INSIGHT_TYPE_ID]/config",
          type = "string",
        },
        revisionId = {
          description = "Output only. Immutable. The revision ID of the config. A new revision is committed whenever the config is changed in any way. The format is an 8-character hexadecimal string.",
          readOnly = true,
          type = "string",
        },
        updateTime = {
          description = "Last time when the config was updated.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudRecommenderV1InsightTypeGenerationConfig = {
      description = "A configuration to customize the generation of insights. Eg, customizing the lookback period considered when generating a insight.",
      id = "GoogleCloudRecommenderV1InsightTypeGenerationConfig",
      properties = {
        params = {
          additionalProperties = {
            description = "Properties of the object.",
            type = "any",
          },
          description = "Parameters for this InsightTypeGenerationConfig. These configs can be used by or are applied to all subtypes.",
          type = "object",
        },
      },
      type = "object",
    },
    GoogleCloudRecommenderV1ListInsightsResponse = {
      description = "Response to the `ListInsights` method.",
      id = "GoogleCloudRecommenderV1ListInsightsResponse",
      properties = {
        insights = {
          description = "The set of insights for the `parent` resource.",
          items = {
            ["$ref"] = "GoogleCloudRecommenderV1Insight",
          },
          type = "array",
        },
        nextPageToken = {
          description = "A token that can be used to request the next page of results. This field is empty if there are no additional results.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudRecommenderV1ListRecommendationsResponse = {
      description = "Response to the `ListRecommendations` method.",
      id = "GoogleCloudRecommenderV1ListRecommendationsResponse",
      properties = {
        nextPageToken = {
          description = "A token that can be used to request the next page of results. This field is empty if there are no additional results.",
          type = "string",
        },
        recommendations = {
          description = "The set of recommendations for the `parent` resource.",
          items = {
            ["$ref"] = "GoogleCloudRecommenderV1Recommendation",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudRecommenderV1MarkInsightAcceptedRequest = {
      description = "Request for the `MarkInsightAccepted` method.",
      id = "GoogleCloudRecommenderV1MarkInsightAcceptedRequest",
      properties = {
        etag = {
          description = "Required. Fingerprint of the Insight. Provides optimistic locking.",
          type = "string",
        },
        stateMetadata = {
          additionalProperties = {
            type = "string",
          },
          description = "Optional. State properties user wish to include with this state. Full replace of the current state_metadata.",
          type = "object",
        },
      },
      type = "object",
    },
    GoogleCloudRecommenderV1MarkRecommendationClaimedRequest = {
      description = "Request for the `MarkRecommendationClaimed` Method.",
      id = "GoogleCloudRecommenderV1MarkRecommendationClaimedRequest",
      properties = {
        etag = {
          description = "Required. Fingerprint of the Recommendation. Provides optimistic locking.",
          type = "string",
        },
        stateMetadata = {
          additionalProperties = {
            type = "string",
          },
          description = "State properties to include with this state. Overwrites any existing `state_metadata`. Keys must match the regex `/^a-z0-9{0,62}$/`. Values must match the regex `/^[a-zA-Z0-9_./-]{0,255}$/`.",
          type = "object",
        },
      },
      type = "object",
    },
    GoogleCloudRecommenderV1MarkRecommendationDismissedRequest = {
      description = "Request for the `MarkRecommendationDismissed` Method.",
      id = "GoogleCloudRecommenderV1MarkRecommendationDismissedRequest",
      properties = {
        etag = {
          description = "Fingerprint of the Recommendation. Provides optimistic locking.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudRecommenderV1MarkRecommendationFailedRequest = {
      description = "Request for the `MarkRecommendationFailed` Method.",
      id = "GoogleCloudRecommenderV1MarkRecommendationFailedRequest",
      properties = {
        etag = {
          description = "Required. Fingerprint of the Recommendation. Provides optimistic locking.",
          type = "string",
        },
        stateMetadata = {
          additionalProperties = {
            type = "string",
          },
          description = "State properties to include with this state. Overwrites any existing `state_metadata`. Keys must match the regex `/^a-z0-9{0,62}$/`. Values must match the regex `/^[a-zA-Z0-9_./-]{0,255}$/`.",
          type = "object",
        },
      },
      type = "object",
    },
    GoogleCloudRecommenderV1MarkRecommendationSucceededRequest = {
      description = "Request for the `MarkRecommendationSucceeded` Method.",
      id = "GoogleCloudRecommenderV1MarkRecommendationSucceededRequest",
      properties = {
        etag = {
          description = "Required. Fingerprint of the Recommendation. Provides optimistic locking.",
          type = "string",
        },
        stateMetadata = {
          additionalProperties = {
            type = "string",
          },
          description = "State properties to include with this state. Overwrites any existing `state_metadata`. Keys must match the regex `/^a-z0-9{0,62}$/`. Values must match the regex `/^[a-zA-Z0-9_./-]{0,255}$/`.",
          type = "object",
        },
      },
      type = "object",
    },
    GoogleCloudRecommenderV1Operation = {
      description = "Contains an operation for a resource loosely based on the JSON-PATCH format with support for: * Custom filters for describing partial array patch. * Extended path values for describing nested arrays. * Custom fields for describing the resource for which the operation is being described. * Allows extension to custom operations not natively supported by RFC6902. See https://tools.ietf.org/html/rfc6902 for details on the original RFC.",
      id = "GoogleCloudRecommenderV1Operation",
      properties = {
        action = {
          description = "Type of this operation. Contains one of 'add', 'remove', 'replace', 'move', 'copy', 'test' and custom operations. This field is case-insensitive and always populated.",
          type = "string",
        },
        path = {
          description = "Path to the target field being operated on. If the operation is at the resource level, then path should be \"/\". This field is always populated.",
          type = "string",
        },
        pathFilters = {
          additionalProperties = {
            type = "any",
          },
          description = "Set of filters to apply if `path` refers to array elements or nested array elements in order to narrow down to a single unique element that is being tested/modified. This is intended to be an exact match per filter. To perform advanced matching, use path_value_matchers. * Example: ``` { \"/versions/*/name\" : \"it-123\" \"/versions/*/targetSize/percent\": 20 } ``` * Example: ``` { \"/bindings/*/role\": \"roles/owner\" \"/bindings/*/condition\" : null } ``` * Example: ``` { \"/bindings/*/role\": \"roles/owner\" \"/bindings/*/members/*\" : [\"x@example.com\", \"y@example.com\"] } ``` When both path_filters and path_value_matchers are set, an implicit AND must be performed.",
          type = "object",
        },
        pathValueMatchers = {
          additionalProperties = {
            ["$ref"] = "GoogleCloudRecommenderV1ValueMatcher",
          },
          description = "Similar to path_filters, this contains set of filters to apply if `path` field refers to array elements. This is meant to support value matching beyond exact match. To perform exact match, use path_filters. When both path_filters and path_value_matchers are set, an implicit AND must be performed.",
          type = "object",
        },
        resource = {
          description = "Contains the fully qualified resource name. This field is always populated. ex: //cloudresourcemanager.googleapis.com/projects/foo.",
          type = "string",
        },
        resourceType = {
          description = "Type of GCP resource being modified/tested. This field is always populated. Example: cloudresourcemanager.googleapis.com/Project, compute.googleapis.com/Instance",
          type = "string",
        },
        sourcePath = {
          description = "Can be set with action 'copy' or 'move' to indicate the source field within resource or source_resource, ignored if provided for other operation types.",
          type = "string",
        },
        sourceResource = {
          description = "Can be set with action 'copy' to copy resource configuration across different resources of the same type. Example: A resource clone can be done via action = 'copy', path = \"/\", from = \"/\", source_resource = and resource_name = . This field is empty for all other values of `action`.",
          type = "string",
        },
        value = {
          description = "Value for the `path` field. Will be set for actions:'add'/'replace'. Maybe set for action: 'test'. Either this or `value_matcher` will be set for 'test' operation. An exact match must be performed.",
          type = "any",
        },
        valueMatcher = {
          ["$ref"] = "GoogleCloudRecommenderV1ValueMatcher",
          description = "Can be set for action 'test' for advanced matching for the value of 'path' field. Either this or `value` will be set for 'test' operation.",
        },
      },
      type = "object",
    },
    GoogleCloudRecommenderV1OperationGroup = {
      description = "Group of operations that need to be performed atomically.",
      id = "GoogleCloudRecommenderV1OperationGroup",
      properties = {
        operations = {
          description = "List of operations across one or more resources that belong to this group. Loosely based on RFC6902 and should be performed in the order they appear.",
          items = {
            ["$ref"] = "GoogleCloudRecommenderV1Operation",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudRecommenderV1Recommendation = {
      description = "A recommendation along with a suggested action. E.g., a rightsizing recommendation for an underutilized VM, IAM role recommendations, etc",
      id = "GoogleCloudRecommenderV1Recommendation",
      properties = {
        additionalImpact = {
          description = "Optional set of additional impact that this recommendation may have when trying to optimize for the primary category. These may be positive or negative.",
          items = {
            ["$ref"] = "GoogleCloudRecommenderV1Impact",
          },
          type = "array",
        },
        associatedInsights = {
          description = "Insights that led to this recommendation.",
          items = {
            ["$ref"] = "GoogleCloudRecommenderV1RecommendationInsightReference",
          },
          type = "array",
        },
        content = {
          ["$ref"] = "GoogleCloudRecommenderV1RecommendationContent",
          description = "Content of the recommendation describing recommended changes to resources.",
        },
        description = {
          description = "Free-form human readable summary in English. The maximum length is 500 characters.",
          type = "string",
        },
        etag = {
          description = "Fingerprint of the Recommendation. Provides optimistic locking when updating states.",
          type = "string",
        },
        lastRefreshTime = {
          description = "Last time this recommendation was refreshed by the system that created it in the first place.",
          format = "google-datetime",
          type = "string",
        },
        name = {
          description = "Name of recommendation.",
          type = "string",
        },
        primaryImpact = {
          ["$ref"] = "GoogleCloudRecommenderV1Impact",
          description = "The primary impact that this recommendation can have while trying to optimize for one category.",
        },
        priority = {
          description = "Recommendation's priority.",
          enum = {
            "PRIORITY_UNSPECIFIED",
            "P4",
            "P3",
            "P2",
            "P1",
          },
          enumDescriptions = {
            "Recommendation has unspecified priority.",
            "Recommendation has P4 priority (lowest priority).",
            "Recommendation has P3 priority (second lowest priority).",
            "Recommendation has P2 priority (second highest priority).",
            "Recommendation has P1 priority (highest priority).",
          },
          type = "string",
        },
        recommenderSubtype = {
          description = "Contains an identifier for a subtype of recommendations produced for the same recommender. Subtype is a function of content and impact, meaning a new subtype might be added when significant changes to `content` or `primary_impact.category` are introduced. See the Recommenders section to see a list of subtypes for a given Recommender. Examples: For recommender = \"google.iam.policy.Recommender\", recommender_subtype can be one of \"REMOVE_ROLE\"/\"REPLACE_ROLE\"",
          type = "string",
        },
        stateInfo = {
          ["$ref"] = "GoogleCloudRecommenderV1RecommendationStateInfo",
          description = "Information for state. Contains state and metadata.",
        },
        xorGroupId = {
          description = "Corresponds to a mutually exclusive group ID within a recommender. A non-empty ID indicates that the recommendation belongs to a mutually exclusive group. This means that only one recommendation within the group is suggested to be applied.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudRecommenderV1RecommendationContent = {
      description = "Contains what resources are changing and how they are changing.",
      id = "GoogleCloudRecommenderV1RecommendationContent",
      properties = {
        operationGroups = {
          description = "Operations to one or more Google Cloud resources grouped in such a way that, all operations within one group are expected to be performed atomically and in an order.",
          items = {
            ["$ref"] = "GoogleCloudRecommenderV1OperationGroup",
          },
          type = "array",
        },
        overview = {
          additionalProperties = {
            description = "Properties of the object.",
            type = "any",
          },
          description = "Condensed overview information about the recommendation.",
          type = "object",
        },
      },
      type = "object",
    },
    GoogleCloudRecommenderV1RecommendationInsightReference = {
      description = "Reference to an associated insight.",
      id = "GoogleCloudRecommenderV1RecommendationInsightReference",
      properties = {
        insight = {
          description = "Insight resource name, e.g. projects/[PROJECT_NUMBER]/locations/[LOCATION]/insightTypes/[INSIGHT_TYPE_ID]/insights/[INSIGHT_ID]",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudRecommenderV1RecommendationStateInfo = {
      description = "Information for state. Contains state and metadata.",
      id = "GoogleCloudRecommenderV1RecommendationStateInfo",
      properties = {
        state = {
          description = "The state of the recommendation, Eg ACTIVE, SUCCEEDED, FAILED.",
          enum = {
            "STATE_UNSPECIFIED",
            "ACTIVE",
            "CLAIMED",
            "SUCCEEDED",
            "FAILED",
            "DISMISSED",
          },
          enumDescriptions = {
            "Default state. Don't use directly.",
            "Recommendation is active and can be applied. Recommendations content can be updated by Google. ACTIVE recommendations can be marked as CLAIMED, SUCCEEDED, or FAILED.",
            "Recommendation is in claimed state. Recommendations content is immutable and cannot be updated by Google. CLAIMED recommendations can be marked as CLAIMED, SUCCEEDED, or FAILED.",
            "Recommendation is in succeeded state. Recommendations content is immutable and cannot be updated by Google. SUCCEEDED recommendations can be marked as SUCCEEDED, or FAILED.",
            "Recommendation is in failed state. Recommendations content is immutable and cannot be updated by Google. FAILED recommendations can be marked as SUCCEEDED, or FAILED.",
            "Recommendation is in dismissed state. Recommendation content can be updated by Google. DISMISSED recommendations can be marked as ACTIVE.",
          },
          type = "string",
        },
        stateMetadata = {
          additionalProperties = {
            type = "string",
          },
          description = "A map of metadata for the state, provided by user or automations systems.",
          type = "object",
        },
      },
      type = "object",
    },
    GoogleCloudRecommenderV1RecommenderConfig = {
      description = "Configuration for a Recommender.",
      id = "GoogleCloudRecommenderV1RecommenderConfig",
      properties = {
        annotations = {
          additionalProperties = {
            type = "string",
          },
          description = "Allows clients to store small amounts of arbitrary data. Annotations must follow the Kubernetes syntax. The total size of all keys and values combined is limited to 256k. Key can have 2 segments: prefix (optional) and name (required), separated by a slash (/). Prefix must be a DNS subdomain. Name must be 63 characters or less, begin and end with alphanumerics, with dashes (-), underscores (_), dots (.), and alphanumerics between.",
          type = "object",
        },
        displayName = {
          description = "A user-settable field to provide a human-readable name to be used in user interfaces.",
          type = "string",
        },
        etag = {
          description = "Fingerprint of the RecommenderConfig. Provides optimistic locking when updating.",
          type = "string",
        },
        name = {
          description = "Name of recommender config. Eg, projects/[PROJECT_NUMBER]/locations/[LOCATION]/recommenders/[RECOMMENDER_ID]/config",
          type = "string",
        },
        recommenderGenerationConfig = {
          ["$ref"] = "GoogleCloudRecommenderV1RecommenderGenerationConfig",
          description = "RecommenderGenerationConfig which configures the Generation of recommendations for this recommender.",
        },
        revisionId = {
          description = "Output only. Immutable. The revision ID of the config. A new revision is committed whenever the config is changed in any way. The format is an 8-character hexadecimal string.",
          readOnly = true,
          type = "string",
        },
        updateTime = {
          description = "Last time when the config was updated.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudRecommenderV1RecommenderGenerationConfig = {
      description = "A Configuration to customize the generation of recommendations. Eg, customizing the lookback period considered when generating a recommendation.",
      id = "GoogleCloudRecommenderV1RecommenderGenerationConfig",
      properties = {
        params = {
          additionalProperties = {
            description = "Properties of the object.",
            type = "any",
          },
          description = "Parameters for this RecommenderGenerationConfig. These configs can be used by or are applied to all subtypes.",
          type = "object",
        },
      },
      type = "object",
    },
    GoogleCloudRecommenderV1ReliabilityProjection = {
      description = "Contains information on the impact of a reliability recommendation.",
      id = "GoogleCloudRecommenderV1ReliabilityProjection",
      properties = {
        details = {
          additionalProperties = {
            description = "Properties of the object.",
            type = "any",
          },
          description = "Per-recommender projection.",
          type = "object",
        },
        risks = {
          description = "Reliability risks mitigated by this recommendation.",
          items = {
            enum = {
              "RISK_TYPE_UNSPECIFIED",
              "SERVICE_DISRUPTION",
              "DATA_LOSS",
              "ACCESS_DENY",
            },
            enumDescriptions = {
              "Default unspecified risk. Don't use directly.",
              "Potential service downtime.",
              "Potential data loss.",
              "Potential access denial. The service is still up but some or all clients can't access it.",
            },
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudRecommenderV1SecurityProjection = {
      description = "Contains various ways of describing the impact on Security.",
      id = "GoogleCloudRecommenderV1SecurityProjection",
      properties = {
        details = {
          additionalProperties = {
            description = "Properties of the object.",
            type = "any",
          },
          description = "Additional security impact details that is provided by the recommender.",
          type = "object",
        },
      },
      type = "object",
    },
    GoogleCloudRecommenderV1SustainabilityProjection = {
      description = "Contains metadata about how much sustainability a recommendation can save or incur.",
      id = "GoogleCloudRecommenderV1SustainabilityProjection",
      properties = {
        duration = {
          description = "Duration for which this sustainability applies.",
          format = "google-duration",
          type = "string",
        },
        kgCO2e = {
          description = "Carbon Footprint generated in kg of CO2 equivalent. Chose kg_c_o2e so that the name renders correctly in camelCase (kgCO2e).",
          format = "double",
          type = "number",
        },
      },
      type = "object",
    },
    GoogleCloudRecommenderV1ValueMatcher = {
      description = "Contains various matching options for values for a GCP resource field.",
      id = "GoogleCloudRecommenderV1ValueMatcher",
      properties = {
        matchesPattern = {
          description = "To be used for full regex matching. The regular expression is using the Google RE2 syntax (https://github.com/google/re2/wiki/Syntax), so to be used with RE2::FullMatch",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleTypeMoney = {
      description = "Represents an amount of money with its currency type.",
      id = "GoogleTypeMoney",
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
  },
  servicePath = "",
  title = "Recommender API",
  version = "v1",
  version_module = true,
}
