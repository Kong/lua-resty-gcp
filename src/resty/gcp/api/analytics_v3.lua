return {
  auth = {
    oauth2 = {
      scopes = {
        ["https://www.googleapis.com/auth/analytics"] = {
          description = "View and manage your Google Analytics data",
        },
        ["https://www.googleapis.com/auth/analytics.edit"] = {
          description = "Edit Google Analytics management entities",
        },
        ["https://www.googleapis.com/auth/analytics.manage.users"] = {
          description = "Manage Google Analytics Account users by email address",
        },
        ["https://www.googleapis.com/auth/analytics.manage.users.readonly"] = {
          description = "View Google Analytics user permissions",
        },
        ["https://www.googleapis.com/auth/analytics.provision"] = {
          description = "Create a new Google Analytics account along with its default property and view",
        },
        ["https://www.googleapis.com/auth/analytics.readonly"] = {
          description = "View your Google Analytics data",
        },
        ["https://www.googleapis.com/auth/analytics.user.deletion"] = {
          description = "Manage Google Analytics user deletion requests",
        },
      },
    },
  },
  basePath = "/analytics/v3/",
  baseUrl = "https://www.googleapis.com/analytics/v3/",
  batchPath = "batch/analytics/v3",
  description = "Views and manages your Google Analytics data.",
  discoveryVersion = "v1",
  documentationLink = "https://developers.google.com/analytics/",
  etag = "\"9eZ1uxVRThTDhLJCZHhqs3eQWz4/o_TVyaWurnALX6ZIQ952-U5m22Y\"",
  icons = {
    x16 = "https://www.google.com/images/icons/product/analytics-16.png",
    x32 = "https://www.google.com/images/icons/product/analytics-32.png",
  },
  id = "analytics:v3",
  kind = "discovery#restDescription",
  name = "analytics",
  ownerDomain = "google.com",
  ownerName = "Google",
  parameters = {
    alt = {
      default = "json",
      description = "Data format for the response.",
      enum = {
        "json",
      },
      enumDescriptions = {
        "Responses with Content-Type of application/json",
      },
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
      default = "false",
      description = "Returns response with indentations and line breaks.",
      location = "query",
      type = "boolean",
    },
    quotaUser = {
      description = "An opaque string that represents a user for quota purposes. Must not exceed 40 characters.",
      location = "query",
      type = "string",
    },
    userIp = {
      description = "Deprecated. Please use quotaUser instead.",
      location = "query",
      type = "string",
    },
  },
  protocol = "rest",
  resources = {
    data = {
      resources = {
        ga = {
          methods = {
            get = {
              description = "Returns Analytics data for a view (profile).",
              httpMethod = "GET",
              id = "analytics.data.ga.get",
              parameterOrder = {
                "ids",
                "start-date",
                "end-date",
                "metrics",
              },
              parameters = {
                dimensions = {
                  description = "A comma-separated list of Analytics dimensions. E.g., 'ga:browser,ga:city'.",
                  location = "query",
                  pattern = "(ga:.+)?",
                  type = "string",
                },
                ["end-date"] = {
                  description = "End date for fetching Analytics data. Request can should specify an end date formatted as YYYY-MM-DD, or as a relative date (e.g., today, yesterday, or 7daysAgo). The default value is yesterday.",
                  location = "query",
                  pattern = "[0-9]{4}-[0-9]{2}-[0-9]{2}|today|yesterday|[0-9]+(daysAgo)",
                  required = true,
                  type = "string",
                },
                filters = {
                  description = "A comma-separated list of dimension or metric filters to be applied to Analytics data.",
                  location = "query",
                  pattern = "ga:.+",
                  type = "string",
                },
                ids = {
                  description = "Unique table ID for retrieving Analytics data. Table ID is of the form ga:XXXX, where XXXX is the Analytics view (profile) ID.",
                  location = "query",
                  pattern = "ga:[0-9]+",
                  required = true,
                  type = "string",
                },
                ["include-empty-rows"] = {
                  description = "The response will include empty rows if this parameter is set to true, the default is true",
                  location = "query",
                  type = "boolean",
                },
                ["max-results"] = {
                  description = "The maximum number of entries to include in this feed.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                metrics = {
                  description = "A comma-separated list of Analytics metrics. E.g., 'ga:sessions,ga:pageviews'. At least one metric must be specified.",
                  location = "query",
                  pattern = "ga:.+",
                  required = true,
                  type = "string",
                },
                output = {
                  description = "The selected format for the response. Default format is JSON.",
                  enum = {
                    "dataTable",
                    "json",
                  },
                  enumDescriptions = {
                    "Returns the response in Google Charts Data Table format. This is useful in creating visualization using Google Charts.",
                    "Returns the response in standard JSON format.",
                  },
                  location = "query",
                  type = "string",
                },
                samplingLevel = {
                  description = "The desired sampling level.",
                  enum = {
                    "DEFAULT",
                    "FASTER",
                    "HIGHER_PRECISION",
                  },
                  enumDescriptions = {
                    "Returns response with a sample size that balances speed and accuracy.",
                    "Returns a fast response with a smaller sample size.",
                    "Returns a more accurate response using a large sample size, but this may result in the response being slower.",
                  },
                  location = "query",
                  type = "string",
                },
                segment = {
                  description = "An Analytics segment to be applied to data.",
                  location = "query",
                  type = "string",
                },
                sort = {
                  description = "A comma-separated list of dimensions or metrics that determine the sort order for Analytics data.",
                  location = "query",
                  pattern = "(-)?ga:.+",
                  type = "string",
                },
                ["start-date"] = {
                  description = "Start date for fetching Analytics data. Requests can specify a start date formatted as YYYY-MM-DD, or as a relative date (e.g., today, yesterday, or 7daysAgo). The default value is 7daysAgo.",
                  location = "query",
                  pattern = "[0-9]{4}-[0-9]{2}-[0-9]{2}|today|yesterday|[0-9]+(daysAgo)",
                  required = true,
                  type = "string",
                },
                ["start-index"] = {
                  description = "An index of the first entity to retrieve. Use this parameter as a pagination mechanism along with the max-results parameter.",
                  format = "int32",
                  location = "query",
                  minimum = "1",
                  type = "integer",
                },
              },
              path = "data/ga",
              response = {
                ["$ref"] = "GaData",
              },
              scopes = {
                "https://www.googleapis.com/auth/analytics",
                "https://www.googleapis.com/auth/analytics.readonly",
              },
            },
          },
        },
        mcf = {
          methods = {
            get = {
              description = "Returns Analytics Multi-Channel Funnels data for a view (profile).",
              httpMethod = "GET",
              id = "analytics.data.mcf.get",
              parameterOrder = {
                "ids",
                "start-date",
                "end-date",
                "metrics",
              },
              parameters = {
                dimensions = {
                  description = "A comma-separated list of Multi-Channel Funnels dimensions. E.g., 'mcf:source,mcf:medium'.",
                  location = "query",
                  pattern = "(mcf:.+)?",
                  type = "string",
                },
                ["end-date"] = {
                  description = "End date for fetching Analytics data. Requests can specify a start date formatted as YYYY-MM-DD, or as a relative date (e.g., today, yesterday, or 7daysAgo). The default value is 7daysAgo.",
                  location = "query",
                  pattern = "[0-9]{4}-[0-9]{2}-[0-9]{2}|today|yesterday|[0-9]+(daysAgo)",
                  required = true,
                  type = "string",
                },
                filters = {
                  description = "A comma-separated list of dimension or metric filters to be applied to the Analytics data.",
                  location = "query",
                  pattern = "mcf:.+",
                  type = "string",
                },
                ids = {
                  description = "Unique table ID for retrieving Analytics data. Table ID is of the form ga:XXXX, where XXXX is the Analytics view (profile) ID.",
                  location = "query",
                  pattern = "ga:[0-9]+",
                  required = true,
                  type = "string",
                },
                ["max-results"] = {
                  description = "The maximum number of entries to include in this feed.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                metrics = {
                  description = "A comma-separated list of Multi-Channel Funnels metrics. E.g., 'mcf:totalConversions,mcf:totalConversionValue'. At least one metric must be specified.",
                  location = "query",
                  pattern = "mcf:.+",
                  required = true,
                  type = "string",
                },
                samplingLevel = {
                  description = "The desired sampling level.",
                  enum = {
                    "DEFAULT",
                    "FASTER",
                    "HIGHER_PRECISION",
                  },
                  enumDescriptions = {
                    "Returns response with a sample size that balances speed and accuracy.",
                    "Returns a fast response with a smaller sample size.",
                    "Returns a more accurate response using a large sample size, but this may result in the response being slower.",
                  },
                  location = "query",
                  type = "string",
                },
                sort = {
                  description = "A comma-separated list of dimensions or metrics that determine the sort order for the Analytics data.",
                  location = "query",
                  pattern = "(-)?mcf:.+",
                  type = "string",
                },
                ["start-date"] = {
                  description = "Start date for fetching Analytics data. Requests can specify a start date formatted as YYYY-MM-DD, or as a relative date (e.g., today, yesterday, or 7daysAgo). The default value is 7daysAgo.",
                  location = "query",
                  pattern = "[0-9]{4}-[0-9]{2}-[0-9]{2}|today|yesterday|[0-9]+(daysAgo)",
                  required = true,
                  type = "string",
                },
                ["start-index"] = {
                  description = "An index of the first entity to retrieve. Use this parameter as a pagination mechanism along with the max-results parameter.",
                  format = "int32",
                  location = "query",
                  minimum = "1",
                  type = "integer",
                },
              },
              path = "data/mcf",
              response = {
                ["$ref"] = "McfData",
              },
              scopes = {
                "https://www.googleapis.com/auth/analytics",
                "https://www.googleapis.com/auth/analytics.readonly",
              },
            },
          },
        },
        realtime = {
          methods = {
            get = {
              description = "Returns real time data for a view (profile).",
              httpMethod = "GET",
              id = "analytics.data.realtime.get",
              parameterOrder = {
                "ids",
                "metrics",
              },
              parameters = {
                dimensions = {
                  description = "A comma-separated list of real time dimensions. E.g., 'rt:medium,rt:city'.",
                  location = "query",
                  pattern = "(ga:.+)|(rt:.+)",
                  type = "string",
                },
                filters = {
                  description = "A comma-separated list of dimension or metric filters to be applied to real time data.",
                  location = "query",
                  pattern = "(ga:.+)|(rt:.+)",
                  type = "string",
                },
                ids = {
                  description = "Unique table ID for retrieving real time data. Table ID is of the form ga:XXXX, where XXXX is the Analytics view (profile) ID.",
                  location = "query",
                  pattern = "ga:[0-9]+",
                  required = true,
                  type = "string",
                },
                ["max-results"] = {
                  description = "The maximum number of entries to include in this feed.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                metrics = {
                  description = "A comma-separated list of real time metrics. E.g., 'rt:activeUsers'. At least one metric must be specified.",
                  location = "query",
                  pattern = "(ga:.+)|(rt:.+)",
                  required = true,
                  type = "string",
                },
                sort = {
                  description = "A comma-separated list of dimensions or metrics that determine the sort order for real time data.",
                  location = "query",
                  pattern = "(-)?((ga:.+)|(rt:.+))",
                  type = "string",
                },
              },
              path = "data/realtime",
              response = {
                ["$ref"] = "RealtimeData",
              },
              scopes = {
                "https://www.googleapis.com/auth/analytics",
                "https://www.googleapis.com/auth/analytics.readonly",
              },
            },
          },
        },
      },
    },
    management = {
      resources = {
        accountSummaries = {
          methods = {
            list = {
              description = "Lists account summaries (lightweight tree comprised of accounts/properties/profiles) to which the user has access.",
              httpMethod = "GET",
              id = "analytics.management.accountSummaries.list",
              parameters = {
                ["max-results"] = {
                  description = "The maximum number of account summaries to include in this response, where the largest acceptable value is 1000.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                ["start-index"] = {
                  description = "An index of the first entity to retrieve. Use this parameter as a pagination mechanism along with the max-results parameter.",
                  format = "int32",
                  location = "query",
                  minimum = "1",
                  type = "integer",
                },
              },
              path = "management/accountSummaries",
              response = {
                ["$ref"] = "AccountSummaries",
              },
              scopes = {
                "https://www.googleapis.com/auth/analytics.edit",
                "https://www.googleapis.com/auth/analytics.readonly",
              },
            },
          },
        },
        accountUserLinks = {
          methods = {
            delete = {
              description = "Removes a user from the given account.",
              httpMethod = "DELETE",
              id = "analytics.management.accountUserLinks.delete",
              parameterOrder = {
                "accountId",
                "linkId",
              },
              parameters = {
                accountId = {
                  description = "Account ID to delete the user link for.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                linkId = {
                  description = "Link ID to delete the user link for.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "management/accounts/{accountId}/entityUserLinks/{linkId}",
              scopes = {
                "https://www.googleapis.com/auth/analytics.manage.users",
              },
            },
            insert = {
              description = "Adds a new user to the given account.",
              httpMethod = "POST",
              id = "analytics.management.accountUserLinks.insert",
              parameterOrder = {
                "accountId",
              },
              parameters = {
                accountId = {
                  description = "Account ID to create the user link for.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "management/accounts/{accountId}/entityUserLinks",
              request = {
                ["$ref"] = "EntityUserLink",
              },
              response = {
                ["$ref"] = "EntityUserLink",
              },
              scopes = {
                "https://www.googleapis.com/auth/analytics.manage.users",
              },
            },
            list = {
              description = "Lists account-user links for a given account.",
              httpMethod = "GET",
              id = "analytics.management.accountUserLinks.list",
              parameterOrder = {
                "accountId",
              },
              parameters = {
                accountId = {
                  description = "Account ID to retrieve the user links for.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                ["max-results"] = {
                  description = "The maximum number of account-user links to include in this response.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                ["start-index"] = {
                  description = "An index of the first account-user link to retrieve. Use this parameter as a pagination mechanism along with the max-results parameter.",
                  format = "int32",
                  location = "query",
                  minimum = "1",
                  type = "integer",
                },
              },
              path = "management/accounts/{accountId}/entityUserLinks",
              response = {
                ["$ref"] = "EntityUserLinks",
              },
              scopes = {
                "https://www.googleapis.com/auth/analytics.manage.users",
                "https://www.googleapis.com/auth/analytics.manage.users.readonly",
              },
            },
            update = {
              description = "Updates permissions for an existing user on the given account.",
              httpMethod = "PUT",
              id = "analytics.management.accountUserLinks.update",
              parameterOrder = {
                "accountId",
                "linkId",
              },
              parameters = {
                accountId = {
                  description = "Account ID to update the account-user link for.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                linkId = {
                  description = "Link ID to update the account-user link for.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "management/accounts/{accountId}/entityUserLinks/{linkId}",
              request = {
                ["$ref"] = "EntityUserLink",
              },
              response = {
                ["$ref"] = "EntityUserLink",
              },
              scopes = {
                "https://www.googleapis.com/auth/analytics.manage.users",
              },
            },
          },
        },
        accounts = {
          methods = {
            list = {
              description = "Lists all accounts to which the user has access.",
              httpMethod = "GET",
              id = "analytics.management.accounts.list",
              parameters = {
                ["max-results"] = {
                  description = "The maximum number of accounts to include in this response.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                ["start-index"] = {
                  description = "An index of the first account to retrieve. Use this parameter as a pagination mechanism along with the max-results parameter.",
                  format = "int32",
                  location = "query",
                  minimum = "1",
                  type = "integer",
                },
              },
              path = "management/accounts",
              response = {
                ["$ref"] = "Accounts",
              },
              scopes = {
                "https://www.googleapis.com/auth/analytics",
                "https://www.googleapis.com/auth/analytics.edit",
                "https://www.googleapis.com/auth/analytics.readonly",
              },
            },
          },
        },
        clientId = {
          methods = {
            hashClientId = {
              description = "Hashes the given Client ID.",
              httpMethod = "POST",
              id = "analytics.management.clientId.hashClientId",
              path = "management/clientId:hashClientId",
              request = {
                ["$ref"] = "HashClientIdRequest",
              },
              response = {
                ["$ref"] = "HashClientIdResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/analytics.edit",
                "https://www.googleapis.com/auth/analytics.readonly",
              },
            },
          },
        },
        customDataSources = {
          methods = {
            list = {
              description = "List custom data sources to which the user has access.",
              httpMethod = "GET",
              id = "analytics.management.customDataSources.list",
              parameterOrder = {
                "accountId",
                "webPropertyId",
              },
              parameters = {
                accountId = {
                  description = "Account Id for the custom data sources to retrieve.",
                  location = "path",
                  pattern = "\\d+",
                  required = true,
                  type = "string",
                },
                ["max-results"] = {
                  description = "The maximum number of custom data sources to include in this response.",
                  format = "int32",
                  location = "query",
                  minimum = "1",
                  type = "integer",
                },
                ["start-index"] = {
                  description = "A 1-based index of the first custom data source to retrieve. Use this parameter as a pagination mechanism along with the max-results parameter.",
                  format = "int32",
                  location = "query",
                  minimum = "1",
                  type = "integer",
                },
                webPropertyId = {
                  description = "Web property Id for the custom data sources to retrieve.",
                  location = "path",
                  pattern = "UA-(\\d+)-(\\d+)",
                  required = true,
                  type = "string",
                },
              },
              path = "management/accounts/{accountId}/webproperties/{webPropertyId}/customDataSources",
              response = {
                ["$ref"] = "CustomDataSources",
              },
              scopes = {
                "https://www.googleapis.com/auth/analytics",
                "https://www.googleapis.com/auth/analytics.edit",
                "https://www.googleapis.com/auth/analytics.readonly",
              },
            },
          },
        },
        customDimensions = {
          methods = {
            get = {
              description = "Get a custom dimension to which the user has access.",
              httpMethod = "GET",
              id = "analytics.management.customDimensions.get",
              parameterOrder = {
                "accountId",
                "webPropertyId",
                "customDimensionId",
              },
              parameters = {
                accountId = {
                  description = "Account ID for the custom dimension to retrieve.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                customDimensionId = {
                  description = "The ID of the custom dimension to retrieve.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                webPropertyId = {
                  description = "Web property ID for the custom dimension to retrieve.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "management/accounts/{accountId}/webproperties/{webPropertyId}/customDimensions/{customDimensionId}",
              response = {
                ["$ref"] = "CustomDimension",
              },
              scopes = {
                "https://www.googleapis.com/auth/analytics.edit",
                "https://www.googleapis.com/auth/analytics.readonly",
              },
            },
            insert = {
              description = "Create a new custom dimension.",
              httpMethod = "POST",
              id = "analytics.management.customDimensions.insert",
              parameterOrder = {
                "accountId",
                "webPropertyId",
              },
              parameters = {
                accountId = {
                  description = "Account ID for the custom dimension to create.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                webPropertyId = {
                  description = "Web property ID for the custom dimension to create.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "management/accounts/{accountId}/webproperties/{webPropertyId}/customDimensions",
              request = {
                ["$ref"] = "CustomDimension",
              },
              response = {
                ["$ref"] = "CustomDimension",
              },
              scopes = {
                "https://www.googleapis.com/auth/analytics.edit",
              },
            },
            list = {
              description = "Lists custom dimensions to which the user has access.",
              httpMethod = "GET",
              id = "analytics.management.customDimensions.list",
              parameterOrder = {
                "accountId",
                "webPropertyId",
              },
              parameters = {
                accountId = {
                  description = "Account ID for the custom dimensions to retrieve.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                ["max-results"] = {
                  description = "The maximum number of custom dimensions to include in this response.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                ["start-index"] = {
                  description = "An index of the first entity to retrieve. Use this parameter as a pagination mechanism along with the max-results parameter.",
                  format = "int32",
                  location = "query",
                  minimum = "1",
                  type = "integer",
                },
                webPropertyId = {
                  description = "Web property ID for the custom dimensions to retrieve.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "management/accounts/{accountId}/webproperties/{webPropertyId}/customDimensions",
              response = {
                ["$ref"] = "CustomDimensions",
              },
              scopes = {
                "https://www.googleapis.com/auth/analytics",
                "https://www.googleapis.com/auth/analytics.readonly",
              },
            },
            patch = {
              description = "Updates an existing custom dimension. This method supports patch semantics.",
              httpMethod = "PATCH",
              id = "analytics.management.customDimensions.patch",
              parameterOrder = {
                "accountId",
                "webPropertyId",
                "customDimensionId",
              },
              parameters = {
                accountId = {
                  description = "Account ID for the custom dimension to update.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                customDimensionId = {
                  description = "Custom dimension ID for the custom dimension to update.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                ignoreCustomDataSourceLinks = {
                  default = "false",
                  description = "Force the update and ignore any warnings related to the custom dimension being linked to a custom data source / data set.",
                  location = "query",
                  type = "boolean",
                },
                webPropertyId = {
                  description = "Web property ID for the custom dimension to update.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "management/accounts/{accountId}/webproperties/{webPropertyId}/customDimensions/{customDimensionId}",
              request = {
                ["$ref"] = "CustomDimension",
              },
              response = {
                ["$ref"] = "CustomDimension",
              },
              scopes = {
                "https://www.googleapis.com/auth/analytics.edit",
              },
            },
            update = {
              description = "Updates an existing custom dimension.",
              httpMethod = "PUT",
              id = "analytics.management.customDimensions.update",
              parameterOrder = {
                "accountId",
                "webPropertyId",
                "customDimensionId",
              },
              parameters = {
                accountId = {
                  description = "Account ID for the custom dimension to update.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                customDimensionId = {
                  description = "Custom dimension ID for the custom dimension to update.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                ignoreCustomDataSourceLinks = {
                  default = "false",
                  description = "Force the update and ignore any warnings related to the custom dimension being linked to a custom data source / data set.",
                  location = "query",
                  type = "boolean",
                },
                webPropertyId = {
                  description = "Web property ID for the custom dimension to update.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "management/accounts/{accountId}/webproperties/{webPropertyId}/customDimensions/{customDimensionId}",
              request = {
                ["$ref"] = "CustomDimension",
              },
              response = {
                ["$ref"] = "CustomDimension",
              },
              scopes = {
                "https://www.googleapis.com/auth/analytics.edit",
              },
            },
          },
        },
        customMetrics = {
          methods = {
            get = {
              description = "Get a custom metric to which the user has access.",
              httpMethod = "GET",
              id = "analytics.management.customMetrics.get",
              parameterOrder = {
                "accountId",
                "webPropertyId",
                "customMetricId",
              },
              parameters = {
                accountId = {
                  description = "Account ID for the custom metric to retrieve.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                customMetricId = {
                  description = "The ID of the custom metric to retrieve.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                webPropertyId = {
                  description = "Web property ID for the custom metric to retrieve.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "management/accounts/{accountId}/webproperties/{webPropertyId}/customMetrics/{customMetricId}",
              response = {
                ["$ref"] = "CustomMetric",
              },
              scopes = {
                "https://www.googleapis.com/auth/analytics.edit",
                "https://www.googleapis.com/auth/analytics.readonly",
              },
            },
            insert = {
              description = "Create a new custom metric.",
              httpMethod = "POST",
              id = "analytics.management.customMetrics.insert",
              parameterOrder = {
                "accountId",
                "webPropertyId",
              },
              parameters = {
                accountId = {
                  description = "Account ID for the custom metric to create.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                webPropertyId = {
                  description = "Web property ID for the custom dimension to create.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "management/accounts/{accountId}/webproperties/{webPropertyId}/customMetrics",
              request = {
                ["$ref"] = "CustomMetric",
              },
              response = {
                ["$ref"] = "CustomMetric",
              },
              scopes = {
                "https://www.googleapis.com/auth/analytics.edit",
              },
            },
            list = {
              description = "Lists custom metrics to which the user has access.",
              httpMethod = "GET",
              id = "analytics.management.customMetrics.list",
              parameterOrder = {
                "accountId",
                "webPropertyId",
              },
              parameters = {
                accountId = {
                  description = "Account ID for the custom metrics to retrieve.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                ["max-results"] = {
                  description = "The maximum number of custom metrics to include in this response.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                ["start-index"] = {
                  description = "An index of the first entity to retrieve. Use this parameter as a pagination mechanism along with the max-results parameter.",
                  format = "int32",
                  location = "query",
                  minimum = "1",
                  type = "integer",
                },
                webPropertyId = {
                  description = "Web property ID for the custom metrics to retrieve.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "management/accounts/{accountId}/webproperties/{webPropertyId}/customMetrics",
              response = {
                ["$ref"] = "CustomMetrics",
              },
              scopes = {
                "https://www.googleapis.com/auth/analytics",
                "https://www.googleapis.com/auth/analytics.readonly",
              },
            },
            patch = {
              description = "Updates an existing custom metric. This method supports patch semantics.",
              httpMethod = "PATCH",
              id = "analytics.management.customMetrics.patch",
              parameterOrder = {
                "accountId",
                "webPropertyId",
                "customMetricId",
              },
              parameters = {
                accountId = {
                  description = "Account ID for the custom metric to update.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                customMetricId = {
                  description = "Custom metric ID for the custom metric to update.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                ignoreCustomDataSourceLinks = {
                  default = "false",
                  description = "Force the update and ignore any warnings related to the custom metric being linked to a custom data source / data set.",
                  location = "query",
                  type = "boolean",
                },
                webPropertyId = {
                  description = "Web property ID for the custom metric to update.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "management/accounts/{accountId}/webproperties/{webPropertyId}/customMetrics/{customMetricId}",
              request = {
                ["$ref"] = "CustomMetric",
              },
              response = {
                ["$ref"] = "CustomMetric",
              },
              scopes = {
                "https://www.googleapis.com/auth/analytics.edit",
              },
            },
            update = {
              description = "Updates an existing custom metric.",
              httpMethod = "PUT",
              id = "analytics.management.customMetrics.update",
              parameterOrder = {
                "accountId",
                "webPropertyId",
                "customMetricId",
              },
              parameters = {
                accountId = {
                  description = "Account ID for the custom metric to update.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                customMetricId = {
                  description = "Custom metric ID for the custom metric to update.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                ignoreCustomDataSourceLinks = {
                  default = "false",
                  description = "Force the update and ignore any warnings related to the custom metric being linked to a custom data source / data set.",
                  location = "query",
                  type = "boolean",
                },
                webPropertyId = {
                  description = "Web property ID for the custom metric to update.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "management/accounts/{accountId}/webproperties/{webPropertyId}/customMetrics/{customMetricId}",
              request = {
                ["$ref"] = "CustomMetric",
              },
              response = {
                ["$ref"] = "CustomMetric",
              },
              scopes = {
                "https://www.googleapis.com/auth/analytics.edit",
              },
            },
          },
        },
        experiments = {
          methods = {
            delete = {
              description = "Delete an experiment.",
              httpMethod = "DELETE",
              id = "analytics.management.experiments.delete",
              parameterOrder = {
                "accountId",
                "webPropertyId",
                "profileId",
                "experimentId",
              },
              parameters = {
                accountId = {
                  description = "Account ID to which the experiment belongs",
                  location = "path",
                  required = true,
                  type = "string",
                },
                experimentId = {
                  description = "ID of the experiment to delete",
                  location = "path",
                  required = true,
                  type = "string",
                },
                profileId = {
                  description = "View (Profile) ID to which the experiment belongs",
                  location = "path",
                  required = true,
                  type = "string",
                },
                webPropertyId = {
                  description = "Web property ID to which the experiment belongs",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "management/accounts/{accountId}/webproperties/{webPropertyId}/profiles/{profileId}/experiments/{experimentId}",
              scopes = {
                "https://www.googleapis.com/auth/analytics",
                "https://www.googleapis.com/auth/analytics.edit",
              },
            },
            get = {
              description = "Returns an experiment to which the user has access.",
              httpMethod = "GET",
              id = "analytics.management.experiments.get",
              parameterOrder = {
                "accountId",
                "webPropertyId",
                "profileId",
                "experimentId",
              },
              parameters = {
                accountId = {
                  description = "Account ID to retrieve the experiment for.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                experimentId = {
                  description = "Experiment ID to retrieve the experiment for.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                profileId = {
                  description = "View (Profile) ID to retrieve the experiment for.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                webPropertyId = {
                  description = "Web property ID to retrieve the experiment for.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "management/accounts/{accountId}/webproperties/{webPropertyId}/profiles/{profileId}/experiments/{experimentId}",
              response = {
                ["$ref"] = "Experiment",
              },
              scopes = {
                "https://www.googleapis.com/auth/analytics",
                "https://www.googleapis.com/auth/analytics.edit",
                "https://www.googleapis.com/auth/analytics.readonly",
              },
            },
            insert = {
              description = "Create a new experiment.",
              httpMethod = "POST",
              id = "analytics.management.experiments.insert",
              parameterOrder = {
                "accountId",
                "webPropertyId",
                "profileId",
              },
              parameters = {
                accountId = {
                  description = "Account ID to create the experiment for.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                profileId = {
                  description = "View (Profile) ID to create the experiment for.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                webPropertyId = {
                  description = "Web property ID to create the experiment for.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "management/accounts/{accountId}/webproperties/{webPropertyId}/profiles/{profileId}/experiments",
              request = {
                ["$ref"] = "Experiment",
              },
              response = {
                ["$ref"] = "Experiment",
              },
              scopes = {
                "https://www.googleapis.com/auth/analytics",
                "https://www.googleapis.com/auth/analytics.edit",
              },
            },
            list = {
              description = "Lists experiments to which the user has access.",
              httpMethod = "GET",
              id = "analytics.management.experiments.list",
              parameterOrder = {
                "accountId",
                "webPropertyId",
                "profileId",
              },
              parameters = {
                accountId = {
                  description = "Account ID to retrieve experiments for.",
                  location = "path",
                  pattern = "\\d+",
                  required = true,
                  type = "string",
                },
                ["max-results"] = {
                  description = "The maximum number of experiments to include in this response.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                profileId = {
                  description = "View (Profile) ID to retrieve experiments for.",
                  location = "path",
                  pattern = "\\d+",
                  required = true,
                  type = "string",
                },
                ["start-index"] = {
                  description = "An index of the first experiment to retrieve. Use this parameter as a pagination mechanism along with the max-results parameter.",
                  format = "int32",
                  location = "query",
                  minimum = "1",
                  type = "integer",
                },
                webPropertyId = {
                  description = "Web property ID to retrieve experiments for.",
                  location = "path",
                  pattern = "UA-(\\d+)-(\\d+)",
                  required = true,
                  type = "string",
                },
              },
              path = "management/accounts/{accountId}/webproperties/{webPropertyId}/profiles/{profileId}/experiments",
              response = {
                ["$ref"] = "Experiments",
              },
              scopes = {
                "https://www.googleapis.com/auth/analytics",
                "https://www.googleapis.com/auth/analytics.edit",
                "https://www.googleapis.com/auth/analytics.readonly",
              },
            },
            patch = {
              description = "Update an existing experiment. This method supports patch semantics.",
              httpMethod = "PATCH",
              id = "analytics.management.experiments.patch",
              parameterOrder = {
                "accountId",
                "webPropertyId",
                "profileId",
                "experimentId",
              },
              parameters = {
                accountId = {
                  description = "Account ID of the experiment to update.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                experimentId = {
                  description = "Experiment ID of the experiment to update.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                profileId = {
                  description = "View (Profile) ID of the experiment to update.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                webPropertyId = {
                  description = "Web property ID of the experiment to update.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "management/accounts/{accountId}/webproperties/{webPropertyId}/profiles/{profileId}/experiments/{experimentId}",
              request = {
                ["$ref"] = "Experiment",
              },
              response = {
                ["$ref"] = "Experiment",
              },
              scopes = {
                "https://www.googleapis.com/auth/analytics",
                "https://www.googleapis.com/auth/analytics.edit",
              },
            },
            update = {
              description = "Update an existing experiment.",
              httpMethod = "PUT",
              id = "analytics.management.experiments.update",
              parameterOrder = {
                "accountId",
                "webPropertyId",
                "profileId",
                "experimentId",
              },
              parameters = {
                accountId = {
                  description = "Account ID of the experiment to update.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                experimentId = {
                  description = "Experiment ID of the experiment to update.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                profileId = {
                  description = "View (Profile) ID of the experiment to update.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                webPropertyId = {
                  description = "Web property ID of the experiment to update.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "management/accounts/{accountId}/webproperties/{webPropertyId}/profiles/{profileId}/experiments/{experimentId}",
              request = {
                ["$ref"] = "Experiment",
              },
              response = {
                ["$ref"] = "Experiment",
              },
              scopes = {
                "https://www.googleapis.com/auth/analytics",
                "https://www.googleapis.com/auth/analytics.edit",
              },
            },
          },
        },
        filters = {
          methods = {
            delete = {
              description = "Delete a filter.",
              httpMethod = "DELETE",
              id = "analytics.management.filters.delete",
              parameterOrder = {
                "accountId",
                "filterId",
              },
              parameters = {
                accountId = {
                  description = "Account ID to delete the filter for.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                filterId = {
                  description = "ID of the filter to be deleted.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "management/accounts/{accountId}/filters/{filterId}",
              response = {
                ["$ref"] = "Filter",
              },
              scopes = {
                "https://www.googleapis.com/auth/analytics.edit",
              },
            },
            get = {
              description = "Returns filters to which the user has access.",
              httpMethod = "GET",
              id = "analytics.management.filters.get",
              parameterOrder = {
                "accountId",
                "filterId",
              },
              parameters = {
                accountId = {
                  description = "Account ID to retrieve filters for.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                filterId = {
                  description = "Filter ID to retrieve filters for.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "management/accounts/{accountId}/filters/{filterId}",
              response = {
                ["$ref"] = "Filter",
              },
              scopes = {
                "https://www.googleapis.com/auth/analytics.edit",
                "https://www.googleapis.com/auth/analytics.readonly",
              },
            },
            insert = {
              description = "Create a new filter.",
              httpMethod = "POST",
              id = "analytics.management.filters.insert",
              parameterOrder = {
                "accountId",
              },
              parameters = {
                accountId = {
                  description = "Account ID to create filter for.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "management/accounts/{accountId}/filters",
              request = {
                ["$ref"] = "Filter",
              },
              response = {
                ["$ref"] = "Filter",
              },
              scopes = {
                "https://www.googleapis.com/auth/analytics.edit",
              },
            },
            list = {
              description = "Lists all filters for an account",
              httpMethod = "GET",
              id = "analytics.management.filters.list",
              parameterOrder = {
                "accountId",
              },
              parameters = {
                accountId = {
                  description = "Account ID to retrieve filters for.",
                  location = "path",
                  pattern = "\\d+",
                  required = true,
                  type = "string",
                },
                ["max-results"] = {
                  description = "The maximum number of filters to include in this response.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                ["start-index"] = {
                  description = "An index of the first entity to retrieve. Use this parameter as a pagination mechanism along with the max-results parameter.",
                  format = "int32",
                  location = "query",
                  minimum = "1",
                  type = "integer",
                },
              },
              path = "management/accounts/{accountId}/filters",
              response = {
                ["$ref"] = "Filters",
              },
              scopes = {
                "https://www.googleapis.com/auth/analytics.edit",
                "https://www.googleapis.com/auth/analytics.readonly",
              },
            },
            patch = {
              description = "Updates an existing filter. This method supports patch semantics.",
              httpMethod = "PATCH",
              id = "analytics.management.filters.patch",
              parameterOrder = {
                "accountId",
                "filterId",
              },
              parameters = {
                accountId = {
                  description = "Account ID to which the filter belongs.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                filterId = {
                  description = "ID of the filter to be updated.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "management/accounts/{accountId}/filters/{filterId}",
              request = {
                ["$ref"] = "Filter",
              },
              response = {
                ["$ref"] = "Filter",
              },
              scopes = {
                "https://www.googleapis.com/auth/analytics.edit",
              },
            },
            update = {
              description = "Updates an existing filter.",
              httpMethod = "PUT",
              id = "analytics.management.filters.update",
              parameterOrder = {
                "accountId",
                "filterId",
              },
              parameters = {
                accountId = {
                  description = "Account ID to which the filter belongs.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                filterId = {
                  description = "ID of the filter to be updated.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "management/accounts/{accountId}/filters/{filterId}",
              request = {
                ["$ref"] = "Filter",
              },
              response = {
                ["$ref"] = "Filter",
              },
              scopes = {
                "https://www.googleapis.com/auth/analytics.edit",
              },
            },
          },
        },
        goals = {
          methods = {
            get = {
              description = "Gets a goal to which the user has access.",
              httpMethod = "GET",
              id = "analytics.management.goals.get",
              parameterOrder = {
                "accountId",
                "webPropertyId",
                "profileId",
                "goalId",
              },
              parameters = {
                accountId = {
                  description = "Account ID to retrieve the goal for.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                goalId = {
                  description = "Goal ID to retrieve the goal for.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                profileId = {
                  description = "View (Profile) ID to retrieve the goal for.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                webPropertyId = {
                  description = "Web property ID to retrieve the goal for.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "management/accounts/{accountId}/webproperties/{webPropertyId}/profiles/{profileId}/goals/{goalId}",
              response = {
                ["$ref"] = "Goal",
              },
              scopes = {
                "https://www.googleapis.com/auth/analytics.edit",
                "https://www.googleapis.com/auth/analytics.readonly",
              },
            },
            insert = {
              description = "Create a new goal.",
              httpMethod = "POST",
              id = "analytics.management.goals.insert",
              parameterOrder = {
                "accountId",
                "webPropertyId",
                "profileId",
              },
              parameters = {
                accountId = {
                  description = "Account ID to create the goal for.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                profileId = {
                  description = "View (Profile) ID to create the goal for.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                webPropertyId = {
                  description = "Web property ID to create the goal for.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "management/accounts/{accountId}/webproperties/{webPropertyId}/profiles/{profileId}/goals",
              request = {
                ["$ref"] = "Goal",
              },
              response = {
                ["$ref"] = "Goal",
              },
              scopes = {
                "https://www.googleapis.com/auth/analytics.edit",
              },
            },
            list = {
              description = "Lists goals to which the user has access.",
              httpMethod = "GET",
              id = "analytics.management.goals.list",
              parameterOrder = {
                "accountId",
                "webPropertyId",
                "profileId",
              },
              parameters = {
                accountId = {
                  description = "Account ID to retrieve goals for. Can either be a specific account ID or '~all', which refers to all the accounts that user has access to.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                ["max-results"] = {
                  description = "The maximum number of goals to include in this response.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                profileId = {
                  description = "View (Profile) ID to retrieve goals for. Can either be a specific view (profile) ID or '~all', which refers to all the views (profiles) that user has access to.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                ["start-index"] = {
                  description = "An index of the first goal to retrieve. Use this parameter as a pagination mechanism along with the max-results parameter.",
                  format = "int32",
                  location = "query",
                  minimum = "1",
                  type = "integer",
                },
                webPropertyId = {
                  description = "Web property ID to retrieve goals for. Can either be a specific web property ID or '~all', which refers to all the web properties that user has access to.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "management/accounts/{accountId}/webproperties/{webPropertyId}/profiles/{profileId}/goals",
              response = {
                ["$ref"] = "Goals",
              },
              scopes = {
                "https://www.googleapis.com/auth/analytics",
                "https://www.googleapis.com/auth/analytics.edit",
                "https://www.googleapis.com/auth/analytics.readonly",
              },
            },
            patch = {
              description = "Updates an existing goal. This method supports patch semantics.",
              httpMethod = "PATCH",
              id = "analytics.management.goals.patch",
              parameterOrder = {
                "accountId",
                "webPropertyId",
                "profileId",
                "goalId",
              },
              parameters = {
                accountId = {
                  description = "Account ID to update the goal.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                goalId = {
                  description = "Index of the goal to be updated.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                profileId = {
                  description = "View (Profile) ID to update the goal.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                webPropertyId = {
                  description = "Web property ID to update the goal.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "management/accounts/{accountId}/webproperties/{webPropertyId}/profiles/{profileId}/goals/{goalId}",
              request = {
                ["$ref"] = "Goal",
              },
              response = {
                ["$ref"] = "Goal",
              },
              scopes = {
                "https://www.googleapis.com/auth/analytics.edit",
              },
            },
            update = {
              description = "Updates an existing goal.",
              httpMethod = "PUT",
              id = "analytics.management.goals.update",
              parameterOrder = {
                "accountId",
                "webPropertyId",
                "profileId",
                "goalId",
              },
              parameters = {
                accountId = {
                  description = "Account ID to update the goal.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                goalId = {
                  description = "Index of the goal to be updated.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                profileId = {
                  description = "View (Profile) ID to update the goal.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                webPropertyId = {
                  description = "Web property ID to update the goal.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "management/accounts/{accountId}/webproperties/{webPropertyId}/profiles/{profileId}/goals/{goalId}",
              request = {
                ["$ref"] = "Goal",
              },
              response = {
                ["$ref"] = "Goal",
              },
              scopes = {
                "https://www.googleapis.com/auth/analytics.edit",
              },
            },
          },
        },
        profileFilterLinks = {
          methods = {
            delete = {
              description = "Delete a profile filter link.",
              httpMethod = "DELETE",
              id = "analytics.management.profileFilterLinks.delete",
              parameterOrder = {
                "accountId",
                "webPropertyId",
                "profileId",
                "linkId",
              },
              parameters = {
                accountId = {
                  description = "Account ID to which the profile filter link belongs.",
                  location = "path",
                  pattern = "\\d+",
                  required = true,
                  type = "string",
                },
                linkId = {
                  description = "ID of the profile filter link to delete.",
                  location = "path",
                  pattern = "\\d+:\\d+",
                  required = true,
                  type = "string",
                },
                profileId = {
                  description = "Profile ID to which the filter link belongs.",
                  location = "path",
                  pattern = "\\d+",
                  required = true,
                  type = "string",
                },
                webPropertyId = {
                  description = "Web property Id to which the profile filter link belongs.",
                  location = "path",
                  pattern = "UA-(\\d+)-(\\d+)",
                  required = true,
                  type = "string",
                },
              },
              path = "management/accounts/{accountId}/webproperties/{webPropertyId}/profiles/{profileId}/profileFilterLinks/{linkId}",
              scopes = {
                "https://www.googleapis.com/auth/analytics.edit",
              },
            },
            get = {
              description = "Returns a single profile filter link.",
              httpMethod = "GET",
              id = "analytics.management.profileFilterLinks.get",
              parameterOrder = {
                "accountId",
                "webPropertyId",
                "profileId",
                "linkId",
              },
              parameters = {
                accountId = {
                  description = "Account ID to retrieve profile filter link for.",
                  location = "path",
                  pattern = "\\d+",
                  required = true,
                  type = "string",
                },
                linkId = {
                  description = "ID of the profile filter link.",
                  location = "path",
                  pattern = "\\d+:\\d+",
                  required = true,
                  type = "string",
                },
                profileId = {
                  description = "Profile ID to retrieve filter link for.",
                  location = "path",
                  pattern = "\\d+",
                  required = true,
                  type = "string",
                },
                webPropertyId = {
                  description = "Web property Id to retrieve profile filter link for.",
                  location = "path",
                  pattern = "UA-(\\d+)-(\\d+)",
                  required = true,
                  type = "string",
                },
              },
              path = "management/accounts/{accountId}/webproperties/{webPropertyId}/profiles/{profileId}/profileFilterLinks/{linkId}",
              response = {
                ["$ref"] = "ProfileFilterLink",
              },
              scopes = {
                "https://www.googleapis.com/auth/analytics.edit",
                "https://www.googleapis.com/auth/analytics.readonly",
              },
            },
            insert = {
              description = "Create a new profile filter link.",
              httpMethod = "POST",
              id = "analytics.management.profileFilterLinks.insert",
              parameterOrder = {
                "accountId",
                "webPropertyId",
                "profileId",
              },
              parameters = {
                accountId = {
                  description = "Account ID to create profile filter link for.",
                  location = "path",
                  pattern = "\\d+",
                  required = true,
                  type = "string",
                },
                profileId = {
                  description = "Profile ID to create filter link for.",
                  location = "path",
                  pattern = "\\d+",
                  required = true,
                  type = "string",
                },
                webPropertyId = {
                  description = "Web property Id to create profile filter link for.",
                  location = "path",
                  pattern = "UA-(\\d+)-(\\d+)",
                  required = true,
                  type = "string",
                },
              },
              path = "management/accounts/{accountId}/webproperties/{webPropertyId}/profiles/{profileId}/profileFilterLinks",
              request = {
                ["$ref"] = "ProfileFilterLink",
              },
              response = {
                ["$ref"] = "ProfileFilterLink",
              },
              scopes = {
                "https://www.googleapis.com/auth/analytics.edit",
              },
            },
            list = {
              description = "Lists all profile filter links for a profile.",
              httpMethod = "GET",
              id = "analytics.management.profileFilterLinks.list",
              parameterOrder = {
                "accountId",
                "webPropertyId",
                "profileId",
              },
              parameters = {
                accountId = {
                  description = "Account ID to retrieve profile filter links for.",
                  location = "path",
                  pattern = "\\d+",
                  required = true,
                  type = "string",
                },
                ["max-results"] = {
                  description = "The maximum number of profile filter links to include in this response.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                profileId = {
                  description = "Profile ID to retrieve filter links for. Can either be a specific profile ID or '~all', which refers to all the profiles that user has access to.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                ["start-index"] = {
                  description = "An index of the first entity to retrieve. Use this parameter as a pagination mechanism along with the max-results parameter.",
                  format = "int32",
                  location = "query",
                  minimum = "1",
                  type = "integer",
                },
                webPropertyId = {
                  description = "Web property Id for profile filter links for. Can either be a specific web property ID or '~all', which refers to all the web properties that user has access to.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "management/accounts/{accountId}/webproperties/{webPropertyId}/profiles/{profileId}/profileFilterLinks",
              response = {
                ["$ref"] = "ProfileFilterLinks",
              },
              scopes = {
                "https://www.googleapis.com/auth/analytics.edit",
                "https://www.googleapis.com/auth/analytics.readonly",
              },
            },
            patch = {
              description = "Update an existing profile filter link. This method supports patch semantics.",
              httpMethod = "PATCH",
              id = "analytics.management.profileFilterLinks.patch",
              parameterOrder = {
                "accountId",
                "webPropertyId",
                "profileId",
                "linkId",
              },
              parameters = {
                accountId = {
                  description = "Account ID to which profile filter link belongs.",
                  location = "path",
                  pattern = "\\d+",
                  required = true,
                  type = "string",
                },
                linkId = {
                  description = "ID of the profile filter link to be updated.",
                  location = "path",
                  pattern = "\\d+:\\d+",
                  required = true,
                  type = "string",
                },
                profileId = {
                  description = "Profile ID to which filter link belongs",
                  location = "path",
                  pattern = "\\d+",
                  required = true,
                  type = "string",
                },
                webPropertyId = {
                  description = "Web property Id to which profile filter link belongs",
                  location = "path",
                  pattern = "UA-(\\d+)-(\\d+)",
                  required = true,
                  type = "string",
                },
              },
              path = "management/accounts/{accountId}/webproperties/{webPropertyId}/profiles/{profileId}/profileFilterLinks/{linkId}",
              request = {
                ["$ref"] = "ProfileFilterLink",
              },
              response = {
                ["$ref"] = "ProfileFilterLink",
              },
              scopes = {
                "https://www.googleapis.com/auth/analytics.edit",
              },
            },
            update = {
              description = "Update an existing profile filter link.",
              httpMethod = "PUT",
              id = "analytics.management.profileFilterLinks.update",
              parameterOrder = {
                "accountId",
                "webPropertyId",
                "profileId",
                "linkId",
              },
              parameters = {
                accountId = {
                  description = "Account ID to which profile filter link belongs.",
                  location = "path",
                  pattern = "\\d+",
                  required = true,
                  type = "string",
                },
                linkId = {
                  description = "ID of the profile filter link to be updated.",
                  location = "path",
                  pattern = "\\d+:\\d+",
                  required = true,
                  type = "string",
                },
                profileId = {
                  description = "Profile ID to which filter link belongs",
                  location = "path",
                  pattern = "\\d+",
                  required = true,
                  type = "string",
                },
                webPropertyId = {
                  description = "Web property Id to which profile filter link belongs",
                  location = "path",
                  pattern = "UA-(\\d+)-(\\d+)",
                  required = true,
                  type = "string",
                },
              },
              path = "management/accounts/{accountId}/webproperties/{webPropertyId}/profiles/{profileId}/profileFilterLinks/{linkId}",
              request = {
                ["$ref"] = "ProfileFilterLink",
              },
              response = {
                ["$ref"] = "ProfileFilterLink",
              },
              scopes = {
                "https://www.googleapis.com/auth/analytics.edit",
              },
            },
          },
        },
        profileUserLinks = {
          methods = {
            delete = {
              description = "Removes a user from the given view (profile).",
              httpMethod = "DELETE",
              id = "analytics.management.profileUserLinks.delete",
              parameterOrder = {
                "accountId",
                "webPropertyId",
                "profileId",
                "linkId",
              },
              parameters = {
                accountId = {
                  description = "Account ID to delete the user link for.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                linkId = {
                  description = "Link ID to delete the user link for.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                profileId = {
                  description = "View (Profile) ID to delete the user link for.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                webPropertyId = {
                  description = "Web Property ID to delete the user link for.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "management/accounts/{accountId}/webproperties/{webPropertyId}/profiles/{profileId}/entityUserLinks/{linkId}",
              scopes = {
                "https://www.googleapis.com/auth/analytics.manage.users",
              },
            },
            insert = {
              description = "Adds a new user to the given view (profile).",
              httpMethod = "POST",
              id = "analytics.management.profileUserLinks.insert",
              parameterOrder = {
                "accountId",
                "webPropertyId",
                "profileId",
              },
              parameters = {
                accountId = {
                  description = "Account ID to create the user link for.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                profileId = {
                  description = "View (Profile) ID to create the user link for.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                webPropertyId = {
                  description = "Web Property ID to create the user link for.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "management/accounts/{accountId}/webproperties/{webPropertyId}/profiles/{profileId}/entityUserLinks",
              request = {
                ["$ref"] = "EntityUserLink",
              },
              response = {
                ["$ref"] = "EntityUserLink",
              },
              scopes = {
                "https://www.googleapis.com/auth/analytics.manage.users",
              },
            },
            list = {
              description = "Lists profile-user links for a given view (profile).",
              httpMethod = "GET",
              id = "analytics.management.profileUserLinks.list",
              parameterOrder = {
                "accountId",
                "webPropertyId",
                "profileId",
              },
              parameters = {
                accountId = {
                  description = "Account ID which the given view (profile) belongs to.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                ["max-results"] = {
                  description = "The maximum number of profile-user links to include in this response.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                profileId = {
                  description = "View (Profile) ID to retrieve the profile-user links for. Can either be a specific profile ID or '~all', which refers to all the profiles that user has access to.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                ["start-index"] = {
                  description = "An index of the first profile-user link to retrieve. Use this parameter as a pagination mechanism along with the max-results parameter.",
                  format = "int32",
                  location = "query",
                  minimum = "1",
                  type = "integer",
                },
                webPropertyId = {
                  description = "Web Property ID which the given view (profile) belongs to. Can either be a specific web property ID or '~all', which refers to all the web properties that user has access to.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "management/accounts/{accountId}/webproperties/{webPropertyId}/profiles/{profileId}/entityUserLinks",
              response = {
                ["$ref"] = "EntityUserLinks",
              },
              scopes = {
                "https://www.googleapis.com/auth/analytics.manage.users",
                "https://www.googleapis.com/auth/analytics.manage.users.readonly",
              },
            },
            update = {
              description = "Updates permissions for an existing user on the given view (profile).",
              httpMethod = "PUT",
              id = "analytics.management.profileUserLinks.update",
              parameterOrder = {
                "accountId",
                "webPropertyId",
                "profileId",
                "linkId",
              },
              parameters = {
                accountId = {
                  description = "Account ID to update the user link for.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                linkId = {
                  description = "Link ID to update the user link for.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                profileId = {
                  description = "View (Profile ID) to update the user link for.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                webPropertyId = {
                  description = "Web Property ID to update the user link for.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "management/accounts/{accountId}/webproperties/{webPropertyId}/profiles/{profileId}/entityUserLinks/{linkId}",
              request = {
                ["$ref"] = "EntityUserLink",
              },
              response = {
                ["$ref"] = "EntityUserLink",
              },
              scopes = {
                "https://www.googleapis.com/auth/analytics.manage.users",
              },
            },
          },
        },
        profiles = {
          methods = {
            delete = {
              description = "Deletes a view (profile).",
              httpMethod = "DELETE",
              id = "analytics.management.profiles.delete",
              parameterOrder = {
                "accountId",
                "webPropertyId",
                "profileId",
              },
              parameters = {
                accountId = {
                  description = "Account ID to delete the view (profile) for.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                profileId = {
                  description = "ID of the view (profile) to be deleted.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                webPropertyId = {
                  description = "Web property ID to delete the view (profile) for.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "management/accounts/{accountId}/webproperties/{webPropertyId}/profiles/{profileId}",
              scopes = {
                "https://www.googleapis.com/auth/analytics.edit",
              },
            },
            get = {
              description = "Gets a view (profile) to which the user has access.",
              httpMethod = "GET",
              id = "analytics.management.profiles.get",
              parameterOrder = {
                "accountId",
                "webPropertyId",
                "profileId",
              },
              parameters = {
                accountId = {
                  description = "Account ID to retrieve the view (profile) for.",
                  location = "path",
                  pattern = "[0-9]+",
                  required = true,
                  type = "string",
                },
                profileId = {
                  description = "View (Profile) ID to retrieve the view (profile) for.",
                  location = "path",
                  pattern = "[0-9]+",
                  required = true,
                  type = "string",
                },
                webPropertyId = {
                  description = "Web property ID to retrieve the view (profile) for.",
                  location = "path",
                  pattern = "UA-[0-9]+-[0-9]+",
                  required = true,
                  type = "string",
                },
              },
              path = "management/accounts/{accountId}/webproperties/{webPropertyId}/profiles/{profileId}",
              response = {
                ["$ref"] = "Profile",
              },
              scopes = {
                "https://www.googleapis.com/auth/analytics.edit",
                "https://www.googleapis.com/auth/analytics.readonly",
              },
            },
            insert = {
              description = "Create a new view (profile).",
              httpMethod = "POST",
              id = "analytics.management.profiles.insert",
              parameterOrder = {
                "accountId",
                "webPropertyId",
              },
              parameters = {
                accountId = {
                  description = "Account ID to create the view (profile) for.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                webPropertyId = {
                  description = "Web property ID to create the view (profile) for.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "management/accounts/{accountId}/webproperties/{webPropertyId}/profiles",
              request = {
                ["$ref"] = "Profile",
              },
              response = {
                ["$ref"] = "Profile",
              },
              scopes = {
                "https://www.googleapis.com/auth/analytics.edit",
              },
            },
            list = {
              description = "Lists views (profiles) to which the user has access.",
              httpMethod = "GET",
              id = "analytics.management.profiles.list",
              parameterOrder = {
                "accountId",
                "webPropertyId",
              },
              parameters = {
                accountId = {
                  description = "Account ID for the view (profiles) to retrieve. Can either be a specific account ID or '~all', which refers to all the accounts to which the user has access.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                ["max-results"] = {
                  description = "The maximum number of views (profiles) to include in this response.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                ["start-index"] = {
                  description = "An index of the first entity to retrieve. Use this parameter as a pagination mechanism along with the max-results parameter.",
                  format = "int32",
                  location = "query",
                  minimum = "1",
                  type = "integer",
                },
                webPropertyId = {
                  description = "Web property ID for the views (profiles) to retrieve. Can either be a specific web property ID or '~all', which refers to all the web properties to which the user has access.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "management/accounts/{accountId}/webproperties/{webPropertyId}/profiles",
              response = {
                ["$ref"] = "Profiles",
              },
              scopes = {
                "https://www.googleapis.com/auth/analytics",
                "https://www.googleapis.com/auth/analytics.edit",
                "https://www.googleapis.com/auth/analytics.readonly",
              },
            },
            patch = {
              description = "Updates an existing view (profile). This method supports patch semantics.",
              httpMethod = "PATCH",
              id = "analytics.management.profiles.patch",
              parameterOrder = {
                "accountId",
                "webPropertyId",
                "profileId",
              },
              parameters = {
                accountId = {
                  description = "Account ID to which the view (profile) belongs",
                  location = "path",
                  required = true,
                  type = "string",
                },
                profileId = {
                  description = "ID of the view (profile) to be updated.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                webPropertyId = {
                  description = "Web property ID to which the view (profile) belongs",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "management/accounts/{accountId}/webproperties/{webPropertyId}/profiles/{profileId}",
              request = {
                ["$ref"] = "Profile",
              },
              response = {
                ["$ref"] = "Profile",
              },
              scopes = {
                "https://www.googleapis.com/auth/analytics.edit",
              },
            },
            update = {
              description = "Updates an existing view (profile).",
              httpMethod = "PUT",
              id = "analytics.management.profiles.update",
              parameterOrder = {
                "accountId",
                "webPropertyId",
                "profileId",
              },
              parameters = {
                accountId = {
                  description = "Account ID to which the view (profile) belongs",
                  location = "path",
                  required = true,
                  type = "string",
                },
                profileId = {
                  description = "ID of the view (profile) to be updated.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                webPropertyId = {
                  description = "Web property ID to which the view (profile) belongs",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "management/accounts/{accountId}/webproperties/{webPropertyId}/profiles/{profileId}",
              request = {
                ["$ref"] = "Profile",
              },
              response = {
                ["$ref"] = "Profile",
              },
              scopes = {
                "https://www.googleapis.com/auth/analytics.edit",
              },
            },
          },
        },
        remarketingAudience = {
          methods = {
            delete = {
              description = "Delete a remarketing audience.",
              httpMethod = "DELETE",
              id = "analytics.management.remarketingAudience.delete",
              parameterOrder = {
                "accountId",
                "webPropertyId",
                "remarketingAudienceId",
              },
              parameters = {
                accountId = {
                  description = "Account ID to which the remarketing audience belongs.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                remarketingAudienceId = {
                  description = "The ID of the remarketing audience to delete.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                webPropertyId = {
                  description = "Web property ID to which the remarketing audience belongs.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "management/accounts/{accountId}/webproperties/{webPropertyId}/remarketingAudiences/{remarketingAudienceId}",
              scopes = {
                "https://www.googleapis.com/auth/analytics.edit",
              },
            },
            get = {
              description = "Gets a remarketing audience to which the user has access.",
              httpMethod = "GET",
              id = "analytics.management.remarketingAudience.get",
              parameterOrder = {
                "accountId",
                "webPropertyId",
                "remarketingAudienceId",
              },
              parameters = {
                accountId = {
                  description = "The account ID of the remarketing audience to retrieve.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                remarketingAudienceId = {
                  description = "The ID of the remarketing audience to retrieve.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                webPropertyId = {
                  description = "The web property ID of the remarketing audience to retrieve.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "management/accounts/{accountId}/webproperties/{webPropertyId}/remarketingAudiences/{remarketingAudienceId}",
              response = {
                ["$ref"] = "RemarketingAudience",
              },
              scopes = {
                "https://www.googleapis.com/auth/analytics.edit",
                "https://www.googleapis.com/auth/analytics.readonly",
              },
            },
            insert = {
              description = "Creates a new remarketing audience.",
              httpMethod = "POST",
              id = "analytics.management.remarketingAudience.insert",
              parameterOrder = {
                "accountId",
                "webPropertyId",
              },
              parameters = {
                accountId = {
                  description = "The account ID for which to create the remarketing audience.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                webPropertyId = {
                  description = "Web property ID for which to create the remarketing audience.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "management/accounts/{accountId}/webproperties/{webPropertyId}/remarketingAudiences",
              request = {
                ["$ref"] = "RemarketingAudience",
              },
              response = {
                ["$ref"] = "RemarketingAudience",
              },
              scopes = {
                "https://www.googleapis.com/auth/analytics.edit",
              },
            },
            list = {
              description = "Lists remarketing audiences to which the user has access.",
              httpMethod = "GET",
              id = "analytics.management.remarketingAudience.list",
              parameterOrder = {
                "accountId",
                "webPropertyId",
              },
              parameters = {
                accountId = {
                  description = "The account ID of the remarketing audiences to retrieve.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                ["max-results"] = {
                  description = "The maximum number of remarketing audiences to include in this response.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                ["start-index"] = {
                  description = "An index of the first entity to retrieve. Use this parameter as a pagination mechanism along with the max-results parameter.",
                  format = "int32",
                  location = "query",
                  minimum = "1",
                  type = "integer",
                },
                type = {
                  default = "all",
                  location = "query",
                  type = "string",
                },
                webPropertyId = {
                  description = "The web property ID of the remarketing audiences to retrieve.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "management/accounts/{accountId}/webproperties/{webPropertyId}/remarketingAudiences",
              response = {
                ["$ref"] = "RemarketingAudiences",
              },
              scopes = {
                "https://www.googleapis.com/auth/analytics.edit",
                "https://www.googleapis.com/auth/analytics.readonly",
              },
            },
            patch = {
              description = "Updates an existing remarketing audience. This method supports patch semantics.",
              httpMethod = "PATCH",
              id = "analytics.management.remarketingAudience.patch",
              parameterOrder = {
                "accountId",
                "webPropertyId",
                "remarketingAudienceId",
              },
              parameters = {
                accountId = {
                  description = "The account ID of the remarketing audience to update.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                remarketingAudienceId = {
                  description = "The ID of the remarketing audience to update.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                webPropertyId = {
                  description = "The web property ID of the remarketing audience to update.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "management/accounts/{accountId}/webproperties/{webPropertyId}/remarketingAudiences/{remarketingAudienceId}",
              request = {
                ["$ref"] = "RemarketingAudience",
              },
              response = {
                ["$ref"] = "RemarketingAudience",
              },
              scopes = {
                "https://www.googleapis.com/auth/analytics.edit",
              },
            },
            update = {
              description = "Updates an existing remarketing audience.",
              httpMethod = "PUT",
              id = "analytics.management.remarketingAudience.update",
              parameterOrder = {
                "accountId",
                "webPropertyId",
                "remarketingAudienceId",
              },
              parameters = {
                accountId = {
                  description = "The account ID of the remarketing audience to update.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                remarketingAudienceId = {
                  description = "The ID of the remarketing audience to update.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                webPropertyId = {
                  description = "The web property ID of the remarketing audience to update.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "management/accounts/{accountId}/webproperties/{webPropertyId}/remarketingAudiences/{remarketingAudienceId}",
              request = {
                ["$ref"] = "RemarketingAudience",
              },
              response = {
                ["$ref"] = "RemarketingAudience",
              },
              scopes = {
                "https://www.googleapis.com/auth/analytics.edit",
              },
            },
          },
        },
        segments = {
          methods = {
            list = {
              description = "Lists segments to which the user has access.",
              httpMethod = "GET",
              id = "analytics.management.segments.list",
              parameters = {
                ["max-results"] = {
                  description = "The maximum number of segments to include in this response.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                ["start-index"] = {
                  description = "An index of the first segment to retrieve. Use this parameter as a pagination mechanism along with the max-results parameter.",
                  format = "int32",
                  location = "query",
                  minimum = "1",
                  type = "integer",
                },
              },
              path = "management/segments",
              response = {
                ["$ref"] = "Segments",
              },
              scopes = {
                "https://www.googleapis.com/auth/analytics",
                "https://www.googleapis.com/auth/analytics.edit",
                "https://www.googleapis.com/auth/analytics.readonly",
              },
            },
          },
        },
        unsampledReports = {
          methods = {
            delete = {
              description = "Deletes an unsampled report.",
              httpMethod = "DELETE",
              id = "analytics.management.unsampledReports.delete",
              parameterOrder = {
                "accountId",
                "webPropertyId",
                "profileId",
                "unsampledReportId",
              },
              parameters = {
                accountId = {
                  description = "Account ID to delete the unsampled report for.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                profileId = {
                  description = "View (Profile) ID to delete the unsampled report for.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                unsampledReportId = {
                  description = "ID of the unsampled report to be deleted.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                webPropertyId = {
                  description = "Web property ID to delete the unsampled reports for.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "management/accounts/{accountId}/webproperties/{webPropertyId}/profiles/{profileId}/unsampledReports/{unsampledReportId}",
              scopes = {
                "https://www.googleapis.com/auth/analytics.edit",
              },
            },
            get = {
              description = "Returns a single unsampled report.",
              httpMethod = "GET",
              id = "analytics.management.unsampledReports.get",
              parameterOrder = {
                "accountId",
                "webPropertyId",
                "profileId",
                "unsampledReportId",
              },
              parameters = {
                accountId = {
                  description = "Account ID to retrieve unsampled report for.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                profileId = {
                  description = "View (Profile) ID to retrieve unsampled report for.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                unsampledReportId = {
                  description = "ID of the unsampled report to retrieve.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                webPropertyId = {
                  description = "Web property ID to retrieve unsampled reports for.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "management/accounts/{accountId}/webproperties/{webPropertyId}/profiles/{profileId}/unsampledReports/{unsampledReportId}",
              response = {
                ["$ref"] = "UnsampledReport",
              },
              scopes = {
                "https://www.googleapis.com/auth/analytics",
                "https://www.googleapis.com/auth/analytics.edit",
                "https://www.googleapis.com/auth/analytics.readonly",
              },
            },
            insert = {
              description = "Create a new unsampled report.",
              httpMethod = "POST",
              id = "analytics.management.unsampledReports.insert",
              parameterOrder = {
                "accountId",
                "webPropertyId",
                "profileId",
              },
              parameters = {
                accountId = {
                  description = "Account ID to create the unsampled report for.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                profileId = {
                  description = "View (Profile) ID to create the unsampled report for.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                webPropertyId = {
                  description = "Web property ID to create the unsampled report for.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "management/accounts/{accountId}/webproperties/{webPropertyId}/profiles/{profileId}/unsampledReports",
              request = {
                ["$ref"] = "UnsampledReport",
              },
              response = {
                ["$ref"] = "UnsampledReport",
              },
              scopes = {
                "https://www.googleapis.com/auth/analytics",
                "https://www.googleapis.com/auth/analytics.edit",
              },
            },
            list = {
              description = "Lists unsampled reports to which the user has access.",
              httpMethod = "GET",
              id = "analytics.management.unsampledReports.list",
              parameterOrder = {
                "accountId",
                "webPropertyId",
                "profileId",
              },
              parameters = {
                accountId = {
                  description = "Account ID to retrieve unsampled reports for. Must be a specific account ID, ~all is not supported.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                ["max-results"] = {
                  description = "The maximum number of unsampled reports to include in this response.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                profileId = {
                  description = "View (Profile) ID to retrieve unsampled reports for. Must be a specific view (profile) ID, ~all is not supported.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                ["start-index"] = {
                  description = "An index of the first unsampled report to retrieve. Use this parameter as a pagination mechanism along with the max-results parameter.",
                  format = "int32",
                  location = "query",
                  minimum = "1",
                  type = "integer",
                },
                webPropertyId = {
                  description = "Web property ID to retrieve unsampled reports for. Must be a specific web property ID, ~all is not supported.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "management/accounts/{accountId}/webproperties/{webPropertyId}/profiles/{profileId}/unsampledReports",
              response = {
                ["$ref"] = "UnsampledReports",
              },
              scopes = {
                "https://www.googleapis.com/auth/analytics",
                "https://www.googleapis.com/auth/analytics.edit",
                "https://www.googleapis.com/auth/analytics.readonly",
              },
            },
          },
        },
        uploads = {
          methods = {
            deleteUploadData = {
              description = "Delete data associated with a previous upload.",
              httpMethod = "POST",
              id = "analytics.management.uploads.deleteUploadData",
              parameterOrder = {
                "accountId",
                "webPropertyId",
                "customDataSourceId",
              },
              parameters = {
                accountId = {
                  description = "Account Id for the uploads to be deleted.",
                  location = "path",
                  pattern = "\\d+",
                  required = true,
                  type = "string",
                },
                customDataSourceId = {
                  description = "Custom data source Id for the uploads to be deleted.",
                  location = "path",
                  pattern = ".{22}",
                  required = true,
                  type = "string",
                },
                webPropertyId = {
                  description = "Web property Id for the uploads to be deleted.",
                  location = "path",
                  pattern = "UA-(\\d+)-(\\d+)",
                  required = true,
                  type = "string",
                },
              },
              path = "management/accounts/{accountId}/webproperties/{webPropertyId}/customDataSources/{customDataSourceId}/deleteUploadData",
              request = {
                ["$ref"] = "AnalyticsDataimportDeleteUploadDataRequest",
              },
              scopes = {
                "https://www.googleapis.com/auth/analytics",
                "https://www.googleapis.com/auth/analytics.edit",
              },
            },
            get = {
              description = "List uploads to which the user has access.",
              httpMethod = "GET",
              id = "analytics.management.uploads.get",
              parameterOrder = {
                "accountId",
                "webPropertyId",
                "customDataSourceId",
                "uploadId",
              },
              parameters = {
                accountId = {
                  description = "Account Id for the upload to retrieve.",
                  location = "path",
                  pattern = "\\d+",
                  required = true,
                  type = "string",
                },
                customDataSourceId = {
                  description = "Custom data source Id for upload to retrieve.",
                  location = "path",
                  pattern = ".{22}",
                  required = true,
                  type = "string",
                },
                uploadId = {
                  description = "Upload Id to retrieve.",
                  location = "path",
                  pattern = ".{22}",
                  required = true,
                  type = "string",
                },
                webPropertyId = {
                  description = "Web property Id for the upload to retrieve.",
                  location = "path",
                  pattern = "UA-(\\d+)-(\\d+)",
                  required = true,
                  type = "string",
                },
              },
              path = "management/accounts/{accountId}/webproperties/{webPropertyId}/customDataSources/{customDataSourceId}/uploads/{uploadId}",
              response = {
                ["$ref"] = "Upload",
              },
              scopes = {
                "https://www.googleapis.com/auth/analytics",
                "https://www.googleapis.com/auth/analytics.edit",
                "https://www.googleapis.com/auth/analytics.readonly",
              },
            },
            list = {
              description = "List uploads to which the user has access.",
              httpMethod = "GET",
              id = "analytics.management.uploads.list",
              parameterOrder = {
                "accountId",
                "webPropertyId",
                "customDataSourceId",
              },
              parameters = {
                accountId = {
                  description = "Account Id for the uploads to retrieve.",
                  location = "path",
                  pattern = "\\d+",
                  required = true,
                  type = "string",
                },
                customDataSourceId = {
                  description = "Custom data source Id for uploads to retrieve.",
                  location = "path",
                  pattern = ".{22}",
                  required = true,
                  type = "string",
                },
                ["max-results"] = {
                  description = "The maximum number of uploads to include in this response.",
                  format = "int32",
                  location = "query",
                  minimum = "1",
                  type = "integer",
                },
                ["start-index"] = {
                  description = "A 1-based index of the first upload to retrieve. Use this parameter as a pagination mechanism along with the max-results parameter.",
                  format = "int32",
                  location = "query",
                  minimum = "1",
                  type = "integer",
                },
                webPropertyId = {
                  description = "Web property Id for the uploads to retrieve.",
                  location = "path",
                  pattern = "UA-(\\d+)-(\\d+)",
                  required = true,
                  type = "string",
                },
              },
              path = "management/accounts/{accountId}/webproperties/{webPropertyId}/customDataSources/{customDataSourceId}/uploads",
              response = {
                ["$ref"] = "Uploads",
              },
              scopes = {
                "https://www.googleapis.com/auth/analytics",
                "https://www.googleapis.com/auth/analytics.edit",
                "https://www.googleapis.com/auth/analytics.readonly",
              },
            },
            uploadData = {
              description = "Upload data for a custom data source.",
              httpMethod = "POST",
              id = "analytics.management.uploads.uploadData",
              mediaUpload = {
                accept = {
                  "application/octet-stream",
                },
                maxSize = "1GB",
                protocols = {
                  resumable = {
                    multipart = true,
                    path = "/resumable/upload/analytics/v3/management/accounts/{accountId}/webproperties/{webPropertyId}/customDataSources/{customDataSourceId}/uploads",
                  },
                  simple = {
                    multipart = true,
                    path = "/upload/analytics/v3/management/accounts/{accountId}/webproperties/{webPropertyId}/customDataSources/{customDataSourceId}/uploads",
                  },
                },
              },
              parameterOrder = {
                "accountId",
                "webPropertyId",
                "customDataSourceId",
              },
              parameters = {
                accountId = {
                  description = "Account Id associated with the upload.",
                  location = "path",
                  pattern = "\\d+",
                  required = true,
                  type = "string",
                },
                customDataSourceId = {
                  description = "Custom data source Id to which the data being uploaded belongs.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                webPropertyId = {
                  description = "Web property UA-string associated with the upload.",
                  location = "path",
                  pattern = "UA-\\d+-\\d+",
                  required = true,
                  type = "string",
                },
              },
              path = "management/accounts/{accountId}/webproperties/{webPropertyId}/customDataSources/{customDataSourceId}/uploads",
              response = {
                ["$ref"] = "Upload",
              },
              scopes = {
                "https://www.googleapis.com/auth/analytics",
                "https://www.googleapis.com/auth/analytics.edit",
              },
              supportsMediaUpload = true,
            },
          },
        },
        webPropertyAdWordsLinks = {
          methods = {
            delete = {
              description = "Deletes a web property-Google Ads link.",
              httpMethod = "DELETE",
              id = "analytics.management.webPropertyAdWordsLinks.delete",
              parameterOrder = {
                "accountId",
                "webPropertyId",
                "webPropertyAdWordsLinkId",
              },
              parameters = {
                accountId = {
                  description = "ID of the account which the given web property belongs to.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                webPropertyAdWordsLinkId = {
                  description = "Web property Google Ads link ID.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                webPropertyId = {
                  description = "Web property ID to delete the Google Ads link for.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "management/accounts/{accountId}/webproperties/{webPropertyId}/entityAdWordsLinks/{webPropertyAdWordsLinkId}",
              scopes = {
                "https://www.googleapis.com/auth/analytics.edit",
              },
            },
            get = {
              description = "Returns a web property-Google Ads link to which the user has access.",
              httpMethod = "GET",
              id = "analytics.management.webPropertyAdWordsLinks.get",
              parameterOrder = {
                "accountId",
                "webPropertyId",
                "webPropertyAdWordsLinkId",
              },
              parameters = {
                accountId = {
                  description = "ID of the account which the given web property belongs to.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                webPropertyAdWordsLinkId = {
                  description = "Web property-Google Ads link ID.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                webPropertyId = {
                  description = "Web property ID to retrieve the Google Ads link for.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "management/accounts/{accountId}/webproperties/{webPropertyId}/entityAdWordsLinks/{webPropertyAdWordsLinkId}",
              response = {
                ["$ref"] = "EntityAdWordsLink",
              },
              scopes = {
                "https://www.googleapis.com/auth/analytics.edit",
                "https://www.googleapis.com/auth/analytics.readonly",
              },
            },
            insert = {
              description = "Creates a webProperty-Google Ads link.",
              httpMethod = "POST",
              id = "analytics.management.webPropertyAdWordsLinks.insert",
              parameterOrder = {
                "accountId",
                "webPropertyId",
              },
              parameters = {
                accountId = {
                  description = "ID of the Google Analytics account to create the link for.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                webPropertyId = {
                  description = "Web property ID to create the link for.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "management/accounts/{accountId}/webproperties/{webPropertyId}/entityAdWordsLinks",
              request = {
                ["$ref"] = "EntityAdWordsLink",
              },
              response = {
                ["$ref"] = "EntityAdWordsLink",
              },
              scopes = {
                "https://www.googleapis.com/auth/analytics.edit",
              },
            },
            list = {
              description = "Lists webProperty-Google Ads links for a given web property.",
              httpMethod = "GET",
              id = "analytics.management.webPropertyAdWordsLinks.list",
              parameterOrder = {
                "accountId",
                "webPropertyId",
              },
              parameters = {
                accountId = {
                  description = "ID of the account which the given web property belongs to.",
                  location = "path",
                  pattern = "\\d+",
                  required = true,
                  type = "string",
                },
                ["max-results"] = {
                  description = "The maximum number of webProperty-Google Ads links to include in this response.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                ["start-index"] = {
                  description = "An index of the first webProperty-Google Ads link to retrieve. Use this parameter as a pagination mechanism along with the max-results parameter.",
                  format = "int32",
                  location = "query",
                  minimum = "1",
                  type = "integer",
                },
                webPropertyId = {
                  description = "Web property ID to retrieve the Google Ads links for.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "management/accounts/{accountId}/webproperties/{webPropertyId}/entityAdWordsLinks",
              response = {
                ["$ref"] = "EntityAdWordsLinks",
              },
              scopes = {
                "https://www.googleapis.com/auth/analytics.edit",
                "https://www.googleapis.com/auth/analytics.readonly",
              },
            },
            patch = {
              description = "Updates an existing webProperty-Google Ads link. This method supports patch semantics.",
              httpMethod = "PATCH",
              id = "analytics.management.webPropertyAdWordsLinks.patch",
              parameterOrder = {
                "accountId",
                "webPropertyId",
                "webPropertyAdWordsLinkId",
              },
              parameters = {
                accountId = {
                  description = "ID of the account which the given web property belongs to.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                webPropertyAdWordsLinkId = {
                  description = "Web property-Google Ads link ID.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                webPropertyId = {
                  description = "Web property ID to retrieve the Google Ads link for.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "management/accounts/{accountId}/webproperties/{webPropertyId}/entityAdWordsLinks/{webPropertyAdWordsLinkId}",
              request = {
                ["$ref"] = "EntityAdWordsLink",
              },
              response = {
                ["$ref"] = "EntityAdWordsLink",
              },
              scopes = {
                "https://www.googleapis.com/auth/analytics.edit",
              },
            },
            update = {
              description = "Updates an existing webProperty-Google Ads link.",
              httpMethod = "PUT",
              id = "analytics.management.webPropertyAdWordsLinks.update",
              parameterOrder = {
                "accountId",
                "webPropertyId",
                "webPropertyAdWordsLinkId",
              },
              parameters = {
                accountId = {
                  description = "ID of the account which the given web property belongs to.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                webPropertyAdWordsLinkId = {
                  description = "Web property-Google Ads link ID.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                webPropertyId = {
                  description = "Web property ID to retrieve the Google Ads link for.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "management/accounts/{accountId}/webproperties/{webPropertyId}/entityAdWordsLinks/{webPropertyAdWordsLinkId}",
              request = {
                ["$ref"] = "EntityAdWordsLink",
              },
              response = {
                ["$ref"] = "EntityAdWordsLink",
              },
              scopes = {
                "https://www.googleapis.com/auth/analytics.edit",
              },
            },
          },
        },
        webproperties = {
          methods = {
            get = {
              description = "Gets a web property to which the user has access.",
              httpMethod = "GET",
              id = "analytics.management.webproperties.get",
              parameterOrder = {
                "accountId",
                "webPropertyId",
              },
              parameters = {
                accountId = {
                  description = "Account ID to retrieve the web property for.",
                  location = "path",
                  pattern = "[0-9]+",
                  required = true,
                  type = "string",
                },
                webPropertyId = {
                  description = "ID to retrieve the web property for.",
                  location = "path",
                  pattern = "UA-[0-9]+-[0-9]+",
                  required = true,
                  type = "string",
                },
              },
              path = "management/accounts/{accountId}/webproperties/{webPropertyId}",
              response = {
                ["$ref"] = "Webproperty",
              },
              scopes = {
                "https://www.googleapis.com/auth/analytics.edit",
                "https://www.googleapis.com/auth/analytics.readonly",
              },
            },
            insert = {
              description = "Create a new property if the account has fewer than 20 properties. Web properties are visible in the Google Analytics interface only if they have at least one profile.",
              httpMethod = "POST",
              id = "analytics.management.webproperties.insert",
              parameterOrder = {
                "accountId",
              },
              parameters = {
                accountId = {
                  description = "Account ID to create the web property for.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "management/accounts/{accountId}/webproperties",
              request = {
                ["$ref"] = "Webproperty",
              },
              response = {
                ["$ref"] = "Webproperty",
              },
              scopes = {
                "https://www.googleapis.com/auth/analytics.edit",
              },
            },
            list = {
              description = "Lists web properties to which the user has access.",
              httpMethod = "GET",
              id = "analytics.management.webproperties.list",
              parameterOrder = {
                "accountId",
              },
              parameters = {
                accountId = {
                  description = "Account ID to retrieve web properties for. Can either be a specific account ID or '~all', which refers to all the accounts that user has access to.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                ["max-results"] = {
                  description = "The maximum number of web properties to include in this response.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                ["start-index"] = {
                  description = "An index of the first entity to retrieve. Use this parameter as a pagination mechanism along with the max-results parameter.",
                  format = "int32",
                  location = "query",
                  minimum = "1",
                  type = "integer",
                },
              },
              path = "management/accounts/{accountId}/webproperties",
              response = {
                ["$ref"] = "Webproperties",
              },
              scopes = {
                "https://www.googleapis.com/auth/analytics",
                "https://www.googleapis.com/auth/analytics.edit",
                "https://www.googleapis.com/auth/analytics.readonly",
              },
            },
            patch = {
              description = "Updates an existing web property. This method supports patch semantics.",
              httpMethod = "PATCH",
              id = "analytics.management.webproperties.patch",
              parameterOrder = {
                "accountId",
                "webPropertyId",
              },
              parameters = {
                accountId = {
                  description = "Account ID to which the web property belongs",
                  location = "path",
                  required = true,
                  type = "string",
                },
                webPropertyId = {
                  description = "Web property ID",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "management/accounts/{accountId}/webproperties/{webPropertyId}",
              request = {
                ["$ref"] = "Webproperty",
              },
              response = {
                ["$ref"] = "Webproperty",
              },
              scopes = {
                "https://www.googleapis.com/auth/analytics.edit",
              },
            },
            update = {
              description = "Updates an existing web property.",
              httpMethod = "PUT",
              id = "analytics.management.webproperties.update",
              parameterOrder = {
                "accountId",
                "webPropertyId",
              },
              parameters = {
                accountId = {
                  description = "Account ID to which the web property belongs",
                  location = "path",
                  required = true,
                  type = "string",
                },
                webPropertyId = {
                  description = "Web property ID",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "management/accounts/{accountId}/webproperties/{webPropertyId}",
              request = {
                ["$ref"] = "Webproperty",
              },
              response = {
                ["$ref"] = "Webproperty",
              },
              scopes = {
                "https://www.googleapis.com/auth/analytics.edit",
              },
            },
          },
        },
        webpropertyUserLinks = {
          methods = {
            delete = {
              description = "Removes a user from the given web property.",
              httpMethod = "DELETE",
              id = "analytics.management.webpropertyUserLinks.delete",
              parameterOrder = {
                "accountId",
                "webPropertyId",
                "linkId",
              },
              parameters = {
                accountId = {
                  description = "Account ID to delete the user link for.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                linkId = {
                  description = "Link ID to delete the user link for.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                webPropertyId = {
                  description = "Web Property ID to delete the user link for.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "management/accounts/{accountId}/webproperties/{webPropertyId}/entityUserLinks/{linkId}",
              scopes = {
                "https://www.googleapis.com/auth/analytics.manage.users",
              },
            },
            insert = {
              description = "Adds a new user to the given web property.",
              httpMethod = "POST",
              id = "analytics.management.webpropertyUserLinks.insert",
              parameterOrder = {
                "accountId",
                "webPropertyId",
              },
              parameters = {
                accountId = {
                  description = "Account ID to create the user link for.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                webPropertyId = {
                  description = "Web Property ID to create the user link for.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "management/accounts/{accountId}/webproperties/{webPropertyId}/entityUserLinks",
              request = {
                ["$ref"] = "EntityUserLink",
              },
              response = {
                ["$ref"] = "EntityUserLink",
              },
              scopes = {
                "https://www.googleapis.com/auth/analytics.manage.users",
              },
            },
            list = {
              description = "Lists webProperty-user links for a given web property.",
              httpMethod = "GET",
              id = "analytics.management.webpropertyUserLinks.list",
              parameterOrder = {
                "accountId",
                "webPropertyId",
              },
              parameters = {
                accountId = {
                  description = "Account ID which the given web property belongs to.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                ["max-results"] = {
                  description = "The maximum number of webProperty-user Links to include in this response.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                ["start-index"] = {
                  description = "An index of the first webProperty-user link to retrieve. Use this parameter as a pagination mechanism along with the max-results parameter.",
                  format = "int32",
                  location = "query",
                  minimum = "1",
                  type = "integer",
                },
                webPropertyId = {
                  description = "Web Property ID for the webProperty-user links to retrieve. Can either be a specific web property ID or '~all', which refers to all the web properties that user has access to.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "management/accounts/{accountId}/webproperties/{webPropertyId}/entityUserLinks",
              response = {
                ["$ref"] = "EntityUserLinks",
              },
              scopes = {
                "https://www.googleapis.com/auth/analytics.manage.users",
                "https://www.googleapis.com/auth/analytics.manage.users.readonly",
              },
            },
            update = {
              description = "Updates permissions for an existing user on the given web property.",
              httpMethod = "PUT",
              id = "analytics.management.webpropertyUserLinks.update",
              parameterOrder = {
                "accountId",
                "webPropertyId",
                "linkId",
              },
              parameters = {
                accountId = {
                  description = "Account ID to update the account-user link for.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                linkId = {
                  description = "Link ID to update the account-user link for.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                webPropertyId = {
                  description = "Web property ID to update the account-user link for.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "management/accounts/{accountId}/webproperties/{webPropertyId}/entityUserLinks/{linkId}",
              request = {
                ["$ref"] = "EntityUserLink",
              },
              response = {
                ["$ref"] = "EntityUserLink",
              },
              scopes = {
                "https://www.googleapis.com/auth/analytics.manage.users",
              },
            },
          },
        },
      },
    },
    metadata = {
      resources = {
        columns = {
          methods = {
            list = {
              description = "Lists all columns for a report type",
              httpMethod = "GET",
              id = "analytics.metadata.columns.list",
              parameterOrder = {
                "reportType",
              },
              parameters = {
                reportType = {
                  description = "Report type. Allowed Values: 'ga'. Where 'ga' corresponds to the Core Reporting API",
                  location = "path",
                  pattern = "ga",
                  required = true,
                  type = "string",
                },
              },
              path = "metadata/{reportType}/columns",
              response = {
                ["$ref"] = "Columns",
              },
              scopes = {
                "https://www.googleapis.com/auth/analytics",
                "https://www.googleapis.com/auth/analytics.edit",
                "https://www.googleapis.com/auth/analytics.readonly",
              },
            },
          },
        },
      },
    },
    provisioning = {
      methods = {
        createAccountTicket = {
          description = "Creates an account ticket.",
          httpMethod = "POST",
          id = "analytics.provisioning.createAccountTicket",
          path = "provisioning/createAccountTicket",
          request = {
            ["$ref"] = "AccountTicket",
          },
          response = {
            ["$ref"] = "AccountTicket",
          },
          scopes = {
            "https://www.googleapis.com/auth/analytics.provision",
          },
        },
        createAccountTree = {
          description = "Provision account.",
          httpMethod = "POST",
          id = "analytics.provisioning.createAccountTree",
          path = "provisioning/createAccountTree",
          request = {
            ["$ref"] = "AccountTreeRequest",
          },
          response = {
            ["$ref"] = "AccountTreeResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/analytics.provision",
          },
        },
      },
    },
    userDeletion = {
      resources = {
        userDeletionRequest = {
          methods = {
            upsert = {
              description = "Insert or update a user deletion requests.",
              httpMethod = "POST",
              id = "analytics.userDeletion.userDeletionRequest.upsert",
              path = "userDeletion/userDeletionRequests:upsert",
              request = {
                ["$ref"] = "UserDeletionRequest",
              },
              response = {
                ["$ref"] = "UserDeletionRequest",
              },
              scopes = {
                "https://www.googleapis.com/auth/analytics.user.deletion",
              },
            },
          },
        },
      },
    },
  },
  revision = "20190807",
  rootUrl = "https://analytics.googleapis.com/",
  schemas = {
    Account = {
      description = "JSON template for Analytics account entry.",
      id = "Account",
      properties = {
        childLink = {
          description = "Child link for an account entry. Points to the list of web properties for this account.",
          properties = {
            href = {
              description = "Link to the list of web properties for this account.",
              type = "string",
            },
            type = {
              default = "analytics#webproperties",
              description = "Type of the child link. Its value is \"analytics#webproperties\".",
              type = "string",
            },
          },
          type = "object",
        },
        created = {
          description = "Time the account was created.",
          format = "date-time",
          type = "string",
        },
        id = {
          description = "Account ID.",
          type = "string",
        },
        kind = {
          default = "analytics#account",
          description = "Resource type for Analytics account.",
          type = "string",
        },
        name = {
          description = "Account name.",
          type = "string",
        },
        permissions = {
          description = "Permissions the user has for this account.",
          properties = {
            effective = {
              description = "All the permissions that the user has for this account. These include any implied permissions (e.g., EDIT implies VIEW).",
              items = {
                type = "string",
              },
              readOnly = true,
              type = "array",
            },
          },
          type = "object",
        },
        selfLink = {
          description = "Link for this account.",
          type = "string",
        },
        starred = {
          description = "Indicates whether this account is starred or not.",
          type = "boolean",
        },
        updated = {
          description = "Time the account was last modified.",
          format = "date-time",
          type = "string",
        },
      },
      type = "object",
    },
    AccountRef = {
      description = "JSON template for a linked account.",
      id = "AccountRef",
      properties = {
        href = {
          description = "Link for this account.",
          type = "string",
        },
        id = {
          description = "Account ID.",
          type = "string",
        },
        kind = {
          default = "analytics#accountRef",
          description = "Analytics account reference.",
          type = "string",
        },
        name = {
          description = "Account name.",
          type = "string",
        },
      },
      type = "object",
    },
    AccountSummaries = {
      description = "An AccountSummary collection lists a summary of accounts, properties and views (profiles) to which the user has access. Each resource in the collection corresponds to a single AccountSummary.",
      id = "AccountSummaries",
      properties = {
        items = {
          description = "A list of AccountSummaries.",
          items = {
            ["$ref"] = "AccountSummary",
          },
          type = "array",
        },
        itemsPerPage = {
          description = "The maximum number of resources the response can contain, regardless of the actual number of resources returned. Its value ranges from 1 to 1000 with a value of 1000 by default, or otherwise specified by the max-results query parameter.",
          format = "int32",
          type = "integer",
        },
        kind = {
          default = "analytics#accountSummaries",
          description = "Collection type.",
          type = "string",
        },
        nextLink = {
          description = "Link to next page for this AccountSummary collection.",
          type = "string",
        },
        previousLink = {
          description = "Link to previous page for this AccountSummary collection.",
          type = "string",
        },
        startIndex = {
          description = "The starting index of the resources, which is 1 by default or otherwise specified by the start-index query parameter.",
          format = "int32",
          type = "integer",
        },
        totalResults = {
          description = "The total number of results for the query, regardless of the number of results in the response.",
          format = "int32",
          type = "integer",
        },
        username = {
          description = "Email ID of the authenticated user",
          type = "string",
        },
      },
      type = "object",
    },
    AccountSummary = {
      description = "JSON template for an Analytics AccountSummary. An AccountSummary is a lightweight tree comprised of properties/profiles.",
      id = "AccountSummary",
      properties = {
        id = {
          description = "Account ID.",
          type = "string",
        },
        kind = {
          default = "analytics#accountSummary",
          description = "Resource type for Analytics AccountSummary.",
          type = "string",
        },
        name = {
          description = "Account name.",
          type = "string",
        },
        starred = {
          description = "Indicates whether this account is starred or not.",
          type = "boolean",
        },
        webProperties = {
          description = "List of web properties under this account.",
          items = {
            ["$ref"] = "WebPropertySummary",
          },
          type = "array",
        },
      },
      type = "object",
    },
    AccountTicket = {
      description = "JSON template for an Analytics account ticket. The account ticket consists of the ticket ID and the basic information for the account, property and profile.",
      id = "AccountTicket",
      properties = {
        account = {
          ["$ref"] = "Account",
          description = "Account for this ticket.",
        },
        id = {
          description = "Account ticket ID used to access the account ticket.",
          type = "string",
        },
        kind = {
          default = "analytics#accountTicket",
          description = "Resource type for account ticket.",
          type = "string",
        },
        profile = {
          ["$ref"] = "Profile",
          description = "View (Profile) for the account.",
        },
        redirectUri = {
          description = "Redirect URI where the user will be sent after accepting Terms of Service. Must be configured in APIs console as a callback URL.",
          type = "string",
        },
        webproperty = {
          ["$ref"] = "Webproperty",
          description = "Web property for the account.",
        },
      },
      type = "object",
    },
    AccountTreeRequest = {
      description = "JSON template for an Analytics account tree requests. The account tree request is used in the provisioning api to create an account, property, and view (profile). It contains the basic information required to make these fields.",
      id = "AccountTreeRequest",
      properties = {
        accountName = {
          annotations = {
            required = {
              "analytics.provisioning.createAccountTree",
            },
          },
          type = "string",
        },
        kind = {
          default = "analytics#accountTreeRequest",
          description = "Resource type for account ticket.",
          type = "string",
        },
        profileName = {
          annotations = {
            required = {
              "analytics.provisioning.createAccountTree",
            },
          },
          type = "string",
        },
        timezone = {
          annotations = {
            required = {
              "analytics.provisioning.createAccountTree",
            },
          },
          type = "string",
        },
        webpropertyName = {
          annotations = {
            required = {
              "analytics.provisioning.createAccountTree",
            },
          },
          type = "string",
        },
        websiteUrl = {
          annotations = {
            required = {
              "analytics.provisioning.createAccountTree",
            },
          },
          type = "string",
        },
      },
      type = "object",
    },
    AccountTreeResponse = {
      description = "JSON template for an Analytics account tree response. The account tree response is used in the provisioning api to return the result of creating an account, property, and view (profile).",
      id = "AccountTreeResponse",
      properties = {
        account = {
          ["$ref"] = "Account",
          description = "The account created.",
        },
        kind = {
          default = "analytics#accountTreeResponse",
          description = "Resource type for account ticket.",
          type = "string",
        },
        profile = {
          ["$ref"] = "Profile",
          description = "View (Profile) for the account.",
        },
        webproperty = {
          ["$ref"] = "Webproperty",
          description = "Web property for the account.",
        },
      },
      type = "object",
    },
    Accounts = {
      description = "An account collection provides a list of Analytics accounts to which a user has access. The account collection is the entry point to all management information. Each resource in the collection corresponds to a single Analytics account.",
      id = "Accounts",
      properties = {
        items = {
          description = "A list of accounts.",
          items = {
            ["$ref"] = "Account",
          },
          type = "array",
        },
        itemsPerPage = {
          description = "The maximum number of entries the response can contain, regardless of the actual number of entries returned. Its value ranges from 1 to 1000 with a value of 1000 by default, or otherwise specified by the max-results query parameter.",
          format = "int32",
          type = "integer",
        },
        kind = {
          default = "analytics#accounts",
          description = "Collection type.",
          type = "string",
        },
        nextLink = {
          description = "Next link for this account collection.",
          type = "string",
        },
        previousLink = {
          description = "Previous link for this account collection.",
          type = "string",
        },
        startIndex = {
          description = "The starting index of the entries, which is 1 by default or otherwise specified by the start-index query parameter.",
          format = "int32",
          type = "integer",
        },
        totalResults = {
          description = "The total number of results for the query, regardless of the number of results in the response.",
          format = "int32",
          type = "integer",
        },
        username = {
          description = "Email ID of the authenticated user",
          type = "string",
        },
      },
      type = "object",
    },
    AdWordsAccount = {
      description = "JSON template for an Google Ads account.",
      id = "AdWordsAccount",
      properties = {
        autoTaggingEnabled = {
          description = "True if auto-tagging is enabled on the Google Ads account. Read-only after the insert operation.",
          type = "boolean",
        },
        customerId = {
          annotations = {
            required = {
              "analytics.management.webPropertyAdWordsLinks.insert",
              "analytics.management.webPropertyAdWordsLinks.update",
            },
          },
          description = "Customer ID. This field is required when creating a Google Ads link.",
          type = "string",
        },
        kind = {
          default = "analytics#adWordsAccount",
          description = "Resource type for Google Ads account.",
          type = "string",
        },
      },
      type = "object",
    },
    AnalyticsDataimportDeleteUploadDataRequest = {
      description = "Request template for the delete upload data request.",
      id = "AnalyticsDataimportDeleteUploadDataRequest",
      properties = {
        customDataImportUids = {
          description = "A list of upload UIDs.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    Column = {
      description = "JSON template for a metadata column.",
      id = "Column",
      properties = {
        attributes = {
          additionalProperties = {
            description = "The name of the attribute.",
            type = "string",
          },
          description = "Map of attribute name and value for this column.",
          type = "object",
        },
        id = {
          description = "Column id.",
          type = "string",
        },
        kind = {
          default = "analytics#column",
          description = "Resource type for Analytics column.",
          type = "string",
        },
      },
      type = "object",
    },
    Columns = {
      description = "Lists columns (dimensions and metrics) for a particular report type.",
      id = "Columns",
      properties = {
        attributeNames = {
          description = "List of attributes names returned by columns.",
          items = {
            type = "string",
          },
          type = "array",
        },
        etag = {
          description = "Etag of collection. This etag can be compared with the last response etag to check if response has changed.",
          type = "string",
        },
        items = {
          description = "List of columns for a report type.",
          items = {
            ["$ref"] = "Column",
          },
          type = "array",
        },
        kind = {
          default = "analytics#columns",
          description = "Collection type.",
          type = "string",
        },
        totalResults = {
          description = "Total number of columns returned in the response.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    CustomDataSource = {
      description = "JSON template for an Analytics custom data source.",
      id = "CustomDataSource",
      properties = {
        accountId = {
          description = "Account ID to which this custom data source belongs.",
          type = "string",
        },
        childLink = {
          properties = {
            href = {
              description = "Link to the list of daily uploads for this custom data source. Link to the list of uploads for this custom data source.",
              type = "string",
            },
            type = {
              description = "Value is \"analytics#dailyUploads\". Value is \"analytics#uploads\".",
              type = "string",
            },
          },
          type = "object",
        },
        created = {
          description = "Time this custom data source was created.",
          format = "date-time",
          type = "string",
        },
        description = {
          description = "Description of custom data source.",
          type = "string",
        },
        id = {
          description = "Custom data source ID.",
          type = "string",
        },
        importBehavior = {
          type = "string",
        },
        kind = {
          default = "analytics#customDataSource",
          description = "Resource type for Analytics custom data source.",
          type = "string",
        },
        name = {
          description = "Name of this custom data source.",
          type = "string",
        },
        parentLink = {
          description = "Parent link for this custom data source. Points to the web property to which this custom data source belongs.",
          properties = {
            href = {
              description = "Link to the web property to which this custom data source belongs.",
              type = "string",
            },
            type = {
              default = "analytics#webproperty",
              description = "Value is \"analytics#webproperty\".",
              type = "string",
            },
          },
          type = "object",
        },
        profilesLinked = {
          description = "IDs of views (profiles) linked to the custom data source.",
          items = {
            type = "string",
          },
          type = "array",
        },
        schema = {
          description = "Collection of schema headers of the custom data source.",
          items = {
            type = "string",
          },
          type = "array",
        },
        selfLink = {
          description = "Link for this Analytics custom data source.",
          type = "string",
        },
        type = {
          description = "Type of the custom data source.",
          type = "string",
        },
        updated = {
          description = "Time this custom data source was last modified.",
          format = "date-time",
          type = "string",
        },
        uploadType = {
          description = "Upload type of the custom data source.",
          type = "string",
        },
        webPropertyId = {
          description = "Web property ID of the form UA-XXXXX-YY to which this custom data source belongs.",
          type = "string",
        },
      },
      type = "object",
    },
    CustomDataSources = {
      description = "Lists Analytics custom data sources to which the user has access. Each resource in the collection corresponds to a single Analytics custom data source.",
      id = "CustomDataSources",
      properties = {
        items = {
          description = "Collection of custom data sources.",
          items = {
            ["$ref"] = "CustomDataSource",
          },
          type = "array",
        },
        itemsPerPage = {
          description = "The maximum number of resources the response can contain, regardless of the actual number of resources returned. Its value ranges from 1 to 1000 with a value of 1000 by default, or otherwise specified by the max-results query parameter.",
          format = "int32",
          type = "integer",
        },
        kind = {
          default = "analytics#customDataSources",
          description = "Collection type.",
          type = "string",
        },
        nextLink = {
          description = "Link to next page for this custom data source collection.",
          type = "string",
        },
        previousLink = {
          description = "Link to previous page for this custom data source collection.",
          type = "string",
        },
        startIndex = {
          description = "The starting index of the resources, which is 1 by default or otherwise specified by the start-index query parameter.",
          format = "int32",
          type = "integer",
        },
        totalResults = {
          description = "The total number of results for the query, regardless of the number of results in the response.",
          format = "int32",
          type = "integer",
        },
        username = {
          description = "Email ID of the authenticated user",
          type = "string",
        },
      },
      type = "object",
    },
    CustomDimension = {
      description = "JSON template for Analytics Custom Dimension.",
      id = "CustomDimension",
      properties = {
        accountId = {
          description = "Account ID.",
          type = "string",
        },
        active = {
          description = "Boolean indicating whether the custom dimension is active.",
          type = "boolean",
        },
        created = {
          description = "Time the custom dimension was created.",
          format = "date-time",
          readOnly = true,
          type = "string",
        },
        id = {
          description = "Custom dimension ID.",
          type = "string",
        },
        index = {
          description = "Index of the custom dimension.",
          format = "int32",
          readOnly = true,
          type = "integer",
        },
        kind = {
          default = "analytics#customDimension",
          description = "Kind value for a custom dimension. Set to \"analytics#customDimension\". It is a read-only field.",
          readOnly = true,
          type = "string",
        },
        name = {
          description = "Name of the custom dimension.",
          type = "string",
        },
        parentLink = {
          description = "Parent link for the custom dimension. Points to the property to which the custom dimension belongs.",
          properties = {
            href = {
              description = "Link to the property to which the custom dimension belongs.",
              type = "string",
            },
            type = {
              default = "analytics#webproperty",
              description = "Type of the parent link. Set to \"analytics#webproperty\".",
              type = "string",
            },
          },
          type = "object",
        },
        scope = {
          description = "Scope of the custom dimension: HIT, SESSION, USER or PRODUCT.",
          type = "string",
        },
        selfLink = {
          description = "Link for the custom dimension",
          readOnly = true,
          type = "string",
        },
        updated = {
          description = "Time the custom dimension was last modified.",
          format = "date-time",
          readOnly = true,
          type = "string",
        },
        webPropertyId = {
          description = "Property ID.",
          type = "string",
        },
      },
      type = "object",
    },
    CustomDimensions = {
      description = "A custom dimension collection lists Analytics custom dimensions to which the user has access. Each resource in the collection corresponds to a single Analytics custom dimension.",
      id = "CustomDimensions",
      properties = {
        items = {
          description = "Collection of custom dimensions.",
          items = {
            ["$ref"] = "CustomDimension",
          },
          type = "array",
        },
        itemsPerPage = {
          description = "The maximum number of resources the response can contain, regardless of the actual number of resources returned. Its value ranges from 1 to 1000 with a value of 1000 by default, or otherwise specified by the max-results query parameter.",
          format = "int32",
          type = "integer",
        },
        kind = {
          default = "analytics#customDimensions",
          description = "Collection type.",
          type = "string",
        },
        nextLink = {
          description = "Link to next page for this custom dimension collection.",
          type = "string",
        },
        previousLink = {
          description = "Link to previous page for this custom dimension collection.",
          type = "string",
        },
        startIndex = {
          description = "The starting index of the resources, which is 1 by default or otherwise specified by the start-index query parameter.",
          format = "int32",
          type = "integer",
        },
        totalResults = {
          description = "The total number of results for the query, regardless of the number of results in the response.",
          format = "int32",
          type = "integer",
        },
        username = {
          description = "Email ID of the authenticated user",
          type = "string",
        },
      },
      type = "object",
    },
    CustomMetric = {
      description = "JSON template for Analytics Custom Metric.",
      id = "CustomMetric",
      properties = {
        accountId = {
          description = "Account ID.",
          type = "string",
        },
        active = {
          description = "Boolean indicating whether the custom metric is active.",
          type = "boolean",
        },
        created = {
          description = "Time the custom metric was created.",
          format = "date-time",
          readOnly = true,
          type = "string",
        },
        id = {
          description = "Custom metric ID.",
          type = "string",
        },
        index = {
          description = "Index of the custom metric.",
          format = "int32",
          readOnly = true,
          type = "integer",
        },
        kind = {
          default = "analytics#customMetric",
          description = "Kind value for a custom metric. Set to \"analytics#customMetric\". It is a read-only field.",
          readOnly = true,
          type = "string",
        },
        max_value = {
          description = "Max value of custom metric.",
          type = "string",
        },
        min_value = {
          description = "Min value of custom metric.",
          type = "string",
        },
        name = {
          description = "Name of the custom metric.",
          type = "string",
        },
        parentLink = {
          description = "Parent link for the custom metric. Points to the property to which the custom metric belongs.",
          properties = {
            href = {
              description = "Link to the property to which the custom metric belongs.",
              type = "string",
            },
            type = {
              default = "analytics#webproperty",
              description = "Type of the parent link. Set to \"analytics#webproperty\".",
              type = "string",
            },
          },
          type = "object",
        },
        scope = {
          description = "Scope of the custom metric: HIT or PRODUCT.",
          type = "string",
        },
        selfLink = {
          description = "Link for the custom metric",
          readOnly = true,
          type = "string",
        },
        type = {
          description = "Data type of custom metric.",
          type = "string",
        },
        updated = {
          description = "Time the custom metric was last modified.",
          format = "date-time",
          readOnly = true,
          type = "string",
        },
        webPropertyId = {
          description = "Property ID.",
          type = "string",
        },
      },
      type = "object",
    },
    CustomMetrics = {
      description = "A custom metric collection lists Analytics custom metrics to which the user has access. Each resource in the collection corresponds to a single Analytics custom metric.",
      id = "CustomMetrics",
      properties = {
        items = {
          description = "Collection of custom metrics.",
          items = {
            ["$ref"] = "CustomMetric",
          },
          type = "array",
        },
        itemsPerPage = {
          description = "The maximum number of resources the response can contain, regardless of the actual number of resources returned. Its value ranges from 1 to 1000 with a value of 1000 by default, or otherwise specified by the max-results query parameter.",
          format = "int32",
          type = "integer",
        },
        kind = {
          default = "analytics#customMetrics",
          description = "Collection type.",
          type = "string",
        },
        nextLink = {
          description = "Link to next page for this custom metric collection.",
          type = "string",
        },
        previousLink = {
          description = "Link to previous page for this custom metric collection.",
          type = "string",
        },
        startIndex = {
          description = "The starting index of the resources, which is 1 by default or otherwise specified by the start-index query parameter.",
          format = "int32",
          type = "integer",
        },
        totalResults = {
          description = "The total number of results for the query, regardless of the number of results in the response.",
          format = "int32",
          type = "integer",
        },
        username = {
          description = "Email ID of the authenticated user",
          type = "string",
        },
      },
      type = "object",
    },
    EntityAdWordsLink = {
      description = "JSON template for Analytics Entity Google Ads Link.",
      id = "EntityAdWordsLink",
      properties = {
        adWordsAccounts = {
          annotations = {
            required = {
              "analytics.management.webPropertyAdWordsLinks.insert",
              "analytics.management.webPropertyAdWordsLinks.update",
            },
          },
          description = "A list of Google Ads client accounts. These cannot be MCC accounts. This field is required when creating a Google Ads link. It cannot be empty.",
          items = {
            ["$ref"] = "AdWordsAccount",
          },
          type = "array",
        },
        entity = {
          description = "Web property being linked.",
          properties = {
            webPropertyRef = {
              ["$ref"] = "WebPropertyRef",
            },
          },
          type = "object",
        },
        id = {
          description = "Entity Google Ads link ID",
          type = "string",
        },
        kind = {
          default = "analytics#entityAdWordsLink",
          description = "Resource type for entity Google Ads link.",
          type = "string",
        },
        name = {
          annotations = {
            required = {
              "analytics.management.webPropertyAdWordsLinks.insert",
              "analytics.management.webPropertyAdWordsLinks.update",
            },
          },
          description = "Name of the link. This field is required when creating a Google Ads link.",
          type = "string",
        },
        profileIds = {
          description = "IDs of linked Views (Profiles) represented as strings.",
          items = {
            type = "string",
          },
          type = "array",
        },
        selfLink = {
          description = "URL link for this Google Analytics - Google Ads link.",
          type = "string",
        },
      },
      type = "object",
    },
    EntityAdWordsLinks = {
      description = "An entity Google Ads link collection provides a list of GA-Google Ads links Each resource in this collection corresponds to a single link.",
      id = "EntityAdWordsLinks",
      properties = {
        items = {
          description = "A list of entity Google Ads links.",
          items = {
            ["$ref"] = "EntityAdWordsLink",
          },
          type = "array",
        },
        itemsPerPage = {
          description = "The maximum number of entries the response can contain, regardless of the actual number of entries returned. Its value ranges from 1 to 1000 with a value of 1000 by default, or otherwise specified by the max-results query parameter.",
          format = "int32",
          type = "integer",
        },
        kind = {
          default = "analytics#entityAdWordsLinks",
          description = "Collection type.",
          type = "string",
        },
        nextLink = {
          description = "Next link for this Google Ads link collection.",
          type = "string",
        },
        previousLink = {
          description = "Previous link for this Google Ads link collection.",
          type = "string",
        },
        startIndex = {
          description = "The starting index of the entries, which is 1 by default or otherwise specified by the start-index query parameter.",
          format = "int32",
          type = "integer",
        },
        totalResults = {
          description = "The total number of results for the query, regardless of the number of results in the response.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    EntityUserLink = {
      description = "JSON template for an Analytics Entity-User Link. Returns permissions that a user has for an entity.",
      id = "EntityUserLink",
      properties = {
        entity = {
          description = "Entity for this link. It can be an account, a web property, or a view (profile).",
          properties = {
            accountRef = {
              ["$ref"] = "AccountRef",
              description = "Account for this link.",
            },
            profileRef = {
              ["$ref"] = "ProfileRef",
              description = "View (Profile) for this link.",
            },
            webPropertyRef = {
              ["$ref"] = "WebPropertyRef",
              description = "Web property for this link.",
            },
          },
          type = "object",
        },
        id = {
          description = "Entity user link ID",
          type = "string",
        },
        kind = {
          default = "analytics#entityUserLink",
          description = "Resource type for entity user link.",
          type = "string",
        },
        permissions = {
          description = "Permissions the user has for this entity.",
          properties = {
            effective = {
              description = "Effective permissions represent all the permissions that a user has for this entity. These include any implied permissions (e.g., EDIT implies VIEW) or inherited permissions from the parent entity. Effective permissions are read-only.",
              items = {
                type = "string",
              },
              readOnly = true,
              type = "array",
            },
            ["local"] = {
              description = "Permissions that a user has been assigned at this very level. Does not include any implied or inherited permissions. Local permissions are modifiable.",
              items = {
                type = "string",
              },
              type = "array",
            },
          },
          type = "object",
        },
        selfLink = {
          description = "Self link for this resource.",
          type = "string",
        },
        userRef = {
          ["$ref"] = "UserRef",
          description = "User reference.",
        },
      },
      type = "object",
    },
    EntityUserLinks = {
      description = "An entity user link collection provides a list of Analytics ACL links Each resource in this collection corresponds to a single link.",
      id = "EntityUserLinks",
      properties = {
        items = {
          description = "A list of entity user links.",
          items = {
            ["$ref"] = "EntityUserLink",
          },
          type = "array",
        },
        itemsPerPage = {
          description = "The maximum number of entries the response can contain, regardless of the actual number of entries returned. Its value ranges from 1 to 1000 with a value of 1000 by default, or otherwise specified by the max-results query parameter.",
          format = "int32",
          type = "integer",
        },
        kind = {
          default = "analytics#entityUserLinks",
          description = "Collection type.",
          type = "string",
        },
        nextLink = {
          description = "Next link for this account collection.",
          type = "string",
        },
        previousLink = {
          description = "Previous link for this account collection.",
          type = "string",
        },
        startIndex = {
          description = "The starting index of the entries, which is 1 by default or otherwise specified by the start-index query parameter.",
          format = "int32",
          type = "integer",
        },
        totalResults = {
          description = "The total number of results for the query, regardless of the number of results in the response.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    Experiment = {
      description = "JSON template for Analytics experiment resource.",
      id = "Experiment",
      properties = {
        accountId = {
          description = "Account ID to which this experiment belongs. This field is read-only.",
          type = "string",
        },
        created = {
          description = "Time the experiment was created. This field is read-only.",
          format = "date-time",
          type = "string",
        },
        description = {
          description = "Notes about this experiment.",
          type = "string",
        },
        editableInGaUi = {
          description = "If true, the end user will be able to edit the experiment via the Google Analytics user interface.",
          type = "boolean",
        },
        endTime = {
          description = "The ending time of the experiment (the time the status changed from RUNNING to ENDED). This field is present only if the experiment has ended. This field is read-only.",
          format = "date-time",
          type = "string",
        },
        equalWeighting = {
          description = "Boolean specifying whether to distribute traffic evenly across all variations. If the value is False, content experiments follows the default behavior of adjusting traffic dynamically based on variation performance. Optional -- defaults to False. This field may not be changed for an experiment whose status is ENDED.",
          type = "boolean",
        },
        id = {
          annotations = {
            required = {
              "analytics.management.experiments.patch",
              "analytics.management.experiments.update",
            },
          },
          description = "Experiment ID. Required for patch and update. Disallowed for create.",
          type = "string",
        },
        internalWebPropertyId = {
          description = "Internal ID for the web property to which this experiment belongs. This field is read-only.",
          type = "string",
        },
        kind = {
          default = "analytics#experiment",
          description = "Resource type for an Analytics experiment. This field is read-only.",
          type = "string",
        },
        minimumExperimentLengthInDays = {
          description = "An integer number in [3, 90]. Specifies the minimum length of the experiment. Can be changed for a running experiment. This field may not be changed for an experiments whose status is ENDED.",
          format = "int32",
          type = "integer",
        },
        name = {
          annotations = {
            required = {
              "analytics.management.experiments.insert",
              "analytics.management.experiments.update",
            },
          },
          description = "Experiment name. This field may not be changed for an experiment whose status is ENDED. This field is required when creating an experiment.",
          type = "string",
        },
        objectiveMetric = {
          description = "The metric that the experiment is optimizing. Valid values: \"ga:goal(n)Completions\", \"ga:adsenseAdsClicks\", \"ga:adsenseAdsViewed\", \"ga:adsenseRevenue\", \"ga:bounces\", \"ga:pageviews\", \"ga:sessionDuration\", \"ga:transactions\", \"ga:transactionRevenue\". This field is required if status is \"RUNNING\" and servingFramework is one of \"REDIRECT\" or \"API\".",
          type = "string",
        },
        optimizationType = {
          description = "Whether the objectiveMetric should be minimized or maximized. Possible values: \"MAXIMUM\", \"MINIMUM\". Optional--defaults to \"MAXIMUM\". Cannot be specified without objectiveMetric. Cannot be modified when status is \"RUNNING\" or \"ENDED\".",
          type = "string",
        },
        parentLink = {
          description = "Parent link for an experiment. Points to the view (profile) to which this experiment belongs.",
          properties = {
            href = {
              description = "Link to the view (profile) to which this experiment belongs. This field is read-only.",
              type = "string",
            },
            type = {
              default = "analytics#profile",
              description = "Value is \"analytics#profile\". This field is read-only.",
              type = "string",
            },
          },
          type = "object",
        },
        profileId = {
          description = "View (Profile) ID to which this experiment belongs. This field is read-only.",
          type = "string",
        },
        reasonExperimentEnded = {
          description = "Why the experiment ended. Possible values: \"STOPPED_BY_USER\", \"WINNER_FOUND\", \"EXPERIMENT_EXPIRED\", \"ENDED_WITH_NO_WINNER\", \"GOAL_OBJECTIVE_CHANGED\". \"ENDED_WITH_NO_WINNER\" means that the experiment didn't expire but no winner was projected to be found. If the experiment status is changed via the API to ENDED this field is set to STOPPED_BY_USER. This field is read-only.",
          type = "string",
        },
        rewriteVariationUrlsAsOriginal = {
          description = "Boolean specifying whether variations URLS are rewritten to match those of the original. This field may not be changed for an experiments whose status is ENDED.",
          type = "boolean",
        },
        selfLink = {
          description = "Link for this experiment. This field is read-only.",
          type = "string",
        },
        servingFramework = {
          description = "The framework used to serve the experiment variations and evaluate the results. One of:  \
- REDIRECT: Google Analytics redirects traffic to different variation pages, reports the chosen variation and evaluates the results.\
- API: Google Analytics chooses and reports the variation to serve and evaluates the results; the caller is responsible for serving the selected variation.\
- EXTERNAL: The variations will be served externally and the chosen variation reported to Google Analytics. The caller is responsible for serving the selected variation and evaluating the results.",
          type = "string",
        },
        snippet = {
          description = "The snippet of code to include on the control page(s). This field is read-only.",
          type = "string",
        },
        startTime = {
          description = "The starting time of the experiment (the time the status changed from READY_TO_RUN to RUNNING). This field is present only if the experiment has started. This field is read-only.",
          format = "date-time",
          type = "string",
        },
        status = {
          annotations = {
            required = {
              "analytics.management.experiments.insert",
              "analytics.management.experiments.update",
            },
          },
          description = "Experiment status. Possible values: \"DRAFT\", \"READY_TO_RUN\", \"RUNNING\", \"ENDED\". Experiments can be created in the \"DRAFT\", \"READY_TO_RUN\" or \"RUNNING\" state. This field is required when creating an experiment.",
          type = "string",
        },
        trafficCoverage = {
          description = "A floating-point number in (0, 1]. Specifies the fraction of the traffic that participates in the experiment. Can be changed for a running experiment. This field may not be changed for an experiments whose status is ENDED.",
          format = "double",
          type = "number",
        },
        updated = {
          description = "Time the experiment was last modified. This field is read-only.",
          format = "date-time",
          type = "string",
        },
        variations = {
          description = "Array of variations. The first variation in the array is the original. The number of variations may not change once an experiment is in the RUNNING state. At least two variations are required before status can be set to RUNNING.",
          items = {
            properties = {
              name = {
                annotations = {
                  required = {
                    "analytics.management.experiments.insert",
                    "analytics.management.experiments.update",
                  },
                },
                description = "The name of the variation. This field is required when creating an experiment. This field may not be changed for an experiment whose status is ENDED.",
                type = "string",
              },
              status = {
                description = "Status of the variation. Possible values: \"ACTIVE\", \"INACTIVE\". INACTIVE variations are not served. This field may not be changed for an experiment whose status is ENDED.",
                type = "string",
              },
              url = {
                description = "The URL of the variation. This field may not be changed for an experiment whose status is RUNNING or ENDED.",
                type = "string",
              },
              weight = {
                description = "Weight that this variation should receive. Only present if the experiment is running. This field is read-only.",
                format = "double",
                type = "number",
              },
              won = {
                description = "True if the experiment has ended and this variation performed (statistically) significantly better than the original. This field is read-only.",
                type = "boolean",
              },
            },
            type = "object",
          },
          type = "array",
        },
        webPropertyId = {
          description = "Web property ID to which this experiment belongs. The web property ID is of the form UA-XXXXX-YY. This field is read-only.",
          type = "string",
        },
        winnerConfidenceLevel = {
          description = "A floating-point number in (0, 1). Specifies the necessary confidence level to choose a winner. This field may not be changed for an experiments whose status is ENDED.",
          format = "double",
          type = "number",
        },
        winnerFound = {
          description = "Boolean specifying whether a winner has been found for this experiment. This field is read-only.",
          type = "boolean",
        },
      },
      type = "object",
    },
    Experiments = {
      description = "An experiment collection lists Analytics experiments to which the user has access. Each view (profile) can have a set of experiments. Each resource in the Experiment collection corresponds to a single Analytics experiment.",
      id = "Experiments",
      properties = {
        items = {
          description = "A list of experiments.",
          items = {
            ["$ref"] = "Experiment",
          },
          type = "array",
        },
        itemsPerPage = {
          description = "The maximum number of resources the response can contain, regardless of the actual number of resources returned. Its value ranges from 1 to 1000 with a value of 1000 by default, or otherwise specified by the max-results query parameter.",
          format = "int32",
          type = "integer",
        },
        kind = {
          default = "analytics#experiments",
          description = "Collection type.",
          type = "string",
        },
        nextLink = {
          description = "Link to next page for this experiment collection.",
          type = "string",
        },
        previousLink = {
          description = "Link to previous page for this experiment collection.",
          type = "string",
        },
        startIndex = {
          description = "The starting index of the resources, which is 1 by default or otherwise specified by the start-index query parameter.",
          format = "int32",
          type = "integer",
        },
        totalResults = {
          description = "The total number of results for the query, regardless of the number of resources in the result.",
          format = "int32",
          type = "integer",
        },
        username = {
          description = "Email ID of the authenticated user",
          type = "string",
        },
      },
      type = "object",
    },
    Filter = {
      description = "JSON template for an Analytics account filter.",
      id = "Filter",
      properties = {
        accountId = {
          description = "Account ID to which this filter belongs.",
          type = "string",
        },
        advancedDetails = {
          description = "Details for the filter of the type ADVANCED.",
          properties = {
            caseSensitive = {
              description = "Indicates if the filter expressions are case sensitive.",
              type = "boolean",
            },
            extractA = {
              description = "Expression to extract from field A.",
              type = "string",
            },
            extractB = {
              description = "Expression to extract from field B.",
              type = "string",
            },
            fieldA = {
              description = "Field A.",
              type = "string",
            },
            fieldAIndex = {
              description = "The Index of the custom dimension. Required if field is a CUSTOM_DIMENSION.",
              format = "int32",
              type = "integer",
            },
            fieldARequired = {
              description = "Indicates if field A is required to match.",
              type = "boolean",
            },
            fieldB = {
              description = "Field B.",
              type = "string",
            },
            fieldBIndex = {
              description = "The Index of the custom dimension. Required if field is a CUSTOM_DIMENSION.",
              format = "int32",
              type = "integer",
            },
            fieldBRequired = {
              description = "Indicates if field B is required to match.",
              type = "boolean",
            },
            outputConstructor = {
              description = "Expression used to construct the output value.",
              type = "string",
            },
            outputToField = {
              description = "Output field.",
              type = "string",
            },
            outputToFieldIndex = {
              description = "The Index of the custom dimension. Required if field is a CUSTOM_DIMENSION.",
              format = "int32",
              type = "integer",
            },
            overrideOutputField = {
              description = "Indicates if the existing value of the output field, if any, should be overridden by the output expression.",
              type = "boolean",
            },
          },
          type = "object",
        },
        created = {
          description = "Time this filter was created.",
          format = "date-time",
          readOnly = true,
          type = "string",
        },
        excludeDetails = {
          ["$ref"] = "FilterExpression",
          description = "Details for the filter of the type EXCLUDE.",
        },
        id = {
          description = "Filter ID.",
          type = "string",
        },
        includeDetails = {
          ["$ref"] = "FilterExpression",
          description = "Details for the filter of the type INCLUDE.",
        },
        kind = {
          default = "analytics#filter",
          description = "Resource type for Analytics filter.",
          readOnly = true,
          type = "string",
        },
        lowercaseDetails = {
          description = "Details for the filter of the type LOWER.",
          properties = {
            field = {
              description = "Field to use in the filter.",
              type = "string",
            },
            fieldIndex = {
              description = "The Index of the custom dimension. Required if field is a CUSTOM_DIMENSION.",
              format = "int32",
              type = "integer",
            },
          },
          type = "object",
        },
        name = {
          annotations = {
            required = {
              "analytics.management.filters.insert",
              "analytics.management.filters.update",
            },
          },
          description = "Name of this filter.",
          type = "string",
        },
        parentLink = {
          description = "Parent link for this filter. Points to the account to which this filter belongs.",
          properties = {
            href = {
              description = "Link to the account to which this filter belongs.",
              type = "string",
            },
            type = {
              default = "analytics#account",
              description = "Value is \"analytics#account\".",
              type = "string",
            },
          },
          type = "object",
        },
        searchAndReplaceDetails = {
          description = "Details for the filter of the type SEARCH_AND_REPLACE.",
          properties = {
            caseSensitive = {
              description = "Determines if the filter is case sensitive.",
              type = "boolean",
            },
            field = {
              description = "Field to use in the filter.",
              type = "string",
            },
            fieldIndex = {
              description = "The Index of the custom dimension. Required if field is a CUSTOM_DIMENSION.",
              format = "int32",
              type = "integer",
            },
            replaceString = {
              description = "Term to replace the search term with.",
              type = "string",
            },
            searchString = {
              description = "Term to search.",
              type = "string",
            },
          },
          type = "object",
        },
        selfLink = {
          description = "Link for this filter.",
          readOnly = true,
          type = "string",
        },
        type = {
          annotations = {
            required = {
              "analytics.management.filters.insert",
              "analytics.management.filters.update",
            },
          },
          description = "Type of this filter. Possible values are INCLUDE, EXCLUDE, LOWERCASE, UPPERCASE, SEARCH_AND_REPLACE and ADVANCED.",
          type = "string",
        },
        updated = {
          description = "Time this filter was last modified.",
          format = "date-time",
          readOnly = true,
          type = "string",
        },
        uppercaseDetails = {
          description = "Details for the filter of the type UPPER.",
          properties = {
            field = {
              description = "Field to use in the filter.",
              type = "string",
            },
            fieldIndex = {
              description = "The Index of the custom dimension. Required if field is a CUSTOM_DIMENSION.",
              format = "int32",
              type = "integer",
            },
          },
          type = "object",
        },
      },
      type = "object",
    },
    FilterExpression = {
      description = "JSON template for an Analytics filter expression.",
      id = "FilterExpression",
      properties = {
        caseSensitive = {
          description = "Determines if the filter is case sensitive.",
          type = "boolean",
        },
        expressionValue = {
          description = "Filter expression value",
          type = "string",
        },
        field = {
          description = "Field to filter. Possible values:  \
- Content and Traffic  \
- PAGE_REQUEST_URI, \
- PAGE_HOSTNAME, \
- PAGE_TITLE, \
- REFERRAL, \
- COST_DATA_URI (Campaign target URL), \
- HIT_TYPE, \
- INTERNAL_SEARCH_TERM, \
- INTERNAL_SEARCH_TYPE, \
- SOURCE_PROPERTY_TRACKING_ID,   \
- Campaign or AdGroup  \
- CAMPAIGN_SOURCE, \
- CAMPAIGN_MEDIUM, \
- CAMPAIGN_NAME, \
- CAMPAIGN_AD_GROUP, \
- CAMPAIGN_TERM, \
- CAMPAIGN_CONTENT, \
- CAMPAIGN_CODE, \
- CAMPAIGN_REFERRAL_PATH,   \
- E-Commerce  \
- TRANSACTION_COUNTRY, \
- TRANSACTION_REGION, \
- TRANSACTION_CITY, \
- TRANSACTION_AFFILIATION (Store or order location), \
- ITEM_NAME, \
- ITEM_CODE, \
- ITEM_VARIATION, \
- TRANSACTION_ID, \
- TRANSACTION_CURRENCY_CODE, \
- PRODUCT_ACTION_TYPE,   \
- Audience/Users  \
- BROWSER, \
- BROWSER_VERSION, \
- BROWSER_SIZE, \
- PLATFORM, \
- PLATFORM_VERSION, \
- LANGUAGE, \
- SCREEN_RESOLUTION, \
- SCREEN_COLORS, \
- JAVA_ENABLED (Boolean Field), \
- FLASH_VERSION, \
- GEO_SPEED (Connection speed), \
- VISITOR_TYPE, \
- GEO_ORGANIZATION (ISP organization), \
- GEO_DOMAIN, \
- GEO_IP_ADDRESS, \
- GEO_IP_VERSION,   \
- Location  \
- GEO_COUNTRY, \
- GEO_REGION, \
- GEO_CITY,   \
- Event  \
- EVENT_CATEGORY, \
- EVENT_ACTION, \
- EVENT_LABEL,   \
- Other  \
- CUSTOM_FIELD_1, \
- CUSTOM_FIELD_2, \
- USER_DEFINED_VALUE,   \
- Application  \
- APP_ID, \
- APP_INSTALLER_ID, \
- APP_NAME, \
- APP_VERSION, \
- SCREEN, \
- IS_APP (Boolean Field), \
- IS_FATAL_EXCEPTION (Boolean Field), \
- EXCEPTION_DESCRIPTION,   \
- Mobile device  \
- IS_MOBILE (Boolean Field, Deprecated. Use DEVICE_CATEGORY=mobile), \
- IS_TABLET (Boolean Field, Deprecated. Use DEVICE_CATEGORY=tablet), \
- DEVICE_CATEGORY, \
- MOBILE_HAS_QWERTY_KEYBOARD (Boolean Field), \
- MOBILE_HAS_NFC_SUPPORT (Boolean Field), \
- MOBILE_HAS_CELLULAR_RADIO (Boolean Field), \
- MOBILE_HAS_WIFI_SUPPORT (Boolean Field), \
- MOBILE_BRAND_NAME, \
- MOBILE_MODEL_NAME, \
- MOBILE_MARKETING_NAME, \
- MOBILE_POINTING_METHOD,   \
- Social  \
- SOCIAL_NETWORK, \
- SOCIAL_ACTION, \
- SOCIAL_ACTION_TARGET,   \
- Custom dimension  \
- CUSTOM_DIMENSION (See accompanying field index),",
          type = "string",
        },
        fieldIndex = {
          description = "The Index of the custom dimension. Set only if the field is a is CUSTOM_DIMENSION.",
          format = "int32",
          type = "integer",
        },
        kind = {
          default = "analytics#filterExpression",
          description = "Kind value for filter expression",
          type = "string",
        },
        matchType = {
          description = "Match type for this filter. Possible values are BEGINS_WITH, EQUAL, ENDS_WITH, CONTAINS, or MATCHES. GEO_DOMAIN, GEO_IP_ADDRESS, PAGE_REQUEST_URI, or PAGE_HOSTNAME filters can use any match type; all other filters must use MATCHES.",
          type = "string",
        },
      },
      type = "object",
    },
    FilterRef = {
      description = "JSON template for a profile filter link.",
      id = "FilterRef",
      properties = {
        accountId = {
          description = "Account ID to which this filter belongs.",
          readOnly = true,
          type = "string",
        },
        href = {
          description = "Link for this filter.",
          type = "string",
        },
        id = {
          annotations = {
            required = {
              "analytics.management.profileFilterLinks.insert",
            },
          },
          description = "Filter ID.",
          type = "string",
        },
        kind = {
          default = "analytics#filterRef",
          description = "Kind value for filter reference.",
          type = "string",
        },
        name = {
          description = "Name of this filter.",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    Filters = {
      description = "A filter collection lists filters created by users in an Analytics account. Each resource in the collection corresponds to a filter.",
      id = "Filters",
      properties = {
        items = {
          description = "A list of filters.",
          items = {
            ["$ref"] = "Filter",
          },
          type = "array",
        },
        itemsPerPage = {
          description = "The maximum number of resources the response can contain, regardless of the actual number of resources returned. Its value ranges from 1 to 1,000 with a value of 1000 by default, or otherwise specified by the max-results query parameter.",
          format = "int32",
          type = "integer",
        },
        kind = {
          default = "analytics#filters",
          description = "Collection type.",
          type = "string",
        },
        nextLink = {
          description = "Link to next page for this filter collection.",
          type = "string",
        },
        previousLink = {
          description = "Link to previous page for this filter collection.",
          type = "string",
        },
        startIndex = {
          description = "The starting index of the resources, which is 1 by default or otherwise specified by the start-index query parameter.",
          format = "int32",
          type = "integer",
        },
        totalResults = {
          description = "The total number of results for the query, regardless of the number of results in the response.",
          format = "int32",
          type = "integer",
        },
        username = {
          description = "Email ID of the authenticated user",
          type = "string",
        },
      },
      type = "object",
    },
    GaData = {
      description = "Analytics data for a given view (profile).",
      id = "GaData",
      properties = {
        columnHeaders = {
          description = "Column headers that list dimension names followed by the metric names. The order of dimensions and metrics is same as specified in the request.",
          items = {
            properties = {
              columnType = {
                description = "Column Type. Either DIMENSION or METRIC.",
                type = "string",
              },
              dataType = {
                description = "Data type. Dimension column headers have only STRING as the data type. Metric column headers have data types for metric values such as INTEGER, DOUBLE, CURRENCY etc.",
                type = "string",
              },
              name = {
                description = "Column name.",
                type = "string",
              },
            },
            type = "object",
          },
          type = "array",
        },
        containsSampledData = {
          description = "Determines if Analytics data contains samples.",
          type = "boolean",
        },
        dataLastRefreshed = {
          description = "The last refreshed time in seconds for Analytics data.",
          format = "int64",
          type = "string",
        },
        dataTable = {
          properties = {
            cols = {
              items = {
                properties = {
                  id = {
                    type = "string",
                  },
                  label = {
                    type = "string",
                  },
                  type = {
                    type = "string",
                  },
                },
                type = "object",
              },
              type = "array",
            },
            rows = {
              items = {
                properties = {
                  c = {
                    items = {
                      properties = {
                        v = {
                          type = "string",
                        },
                      },
                      type = "object",
                    },
                    type = "array",
                  },
                },
                type = "object",
              },
              type = "array",
            },
          },
          type = "object",
        },
        id = {
          description = "Unique ID for this data response.",
          type = "string",
        },
        itemsPerPage = {
          description = "The maximum number of rows the response can contain, regardless of the actual number of rows returned. Its value ranges from 1 to 10,000 with a value of 1000 by default, or otherwise specified by the max-results query parameter.",
          format = "int32",
          type = "integer",
        },
        kind = {
          default = "analytics#gaData",
          description = "Resource type.",
          type = "string",
        },
        nextLink = {
          description = "Link to next page for this Analytics data query.",
          type = "string",
        },
        previousLink = {
          description = "Link to previous page for this Analytics data query.",
          type = "string",
        },
        profileInfo = {
          description = "Information for the view (profile), for which the Analytics data was requested.",
          properties = {
            accountId = {
              description = "Account ID to which this view (profile) belongs.",
              type = "string",
            },
            internalWebPropertyId = {
              description = "Internal ID for the web property to which this view (profile) belongs.",
              type = "string",
            },
            profileId = {
              description = "View (Profile) ID.",
              type = "string",
            },
            profileName = {
              description = "View (Profile) name.",
              type = "string",
            },
            tableId = {
              description = "Table ID for view (profile).",
              type = "string",
            },
            webPropertyId = {
              description = "Web Property ID to which this view (profile) belongs.",
              type = "string",
            },
          },
          type = "object",
        },
        query = {
          description = "Analytics data request query parameters.",
          properties = {
            dimensions = {
              description = "List of analytics dimensions.",
              type = "string",
            },
            ["end-date"] = {
              description = "End date.",
              type = "string",
            },
            filters = {
              description = "Comma-separated list of dimension or metric filters.",
              type = "string",
            },
            ids = {
              description = "Unique table ID.",
              type = "string",
            },
            ["max-results"] = {
              description = "Maximum results per page.",
              format = "int32",
              type = "integer",
            },
            metrics = {
              description = "List of analytics metrics.",
              items = {
                type = "string",
              },
              type = "array",
            },
            samplingLevel = {
              description = "Desired sampling level",
              type = "string",
            },
            segment = {
              description = "Analytics advanced segment.",
              type = "string",
            },
            sort = {
              description = "List of dimensions or metrics based on which Analytics data is sorted.",
              items = {
                type = "string",
              },
              type = "array",
            },
            ["start-date"] = {
              description = "Start date.",
              type = "string",
            },
            ["start-index"] = {
              description = "Start index.",
              format = "int32",
              type = "integer",
            },
          },
          type = "object",
        },
        rows = {
          description = "Analytics data rows, where each row contains a list of dimension values followed by the metric values. The order of dimensions and metrics is same as specified in the request.",
          items = {
            items = {
              type = "string",
            },
            type = "array",
          },
          type = "array",
        },
        sampleSize = {
          description = "The number of samples used to calculate the result.",
          format = "int64",
          type = "string",
        },
        sampleSpace = {
          description = "Total size of the sample space from which the samples were selected.",
          format = "int64",
          type = "string",
        },
        selfLink = {
          description = "Link to this page.",
          type = "string",
        },
        totalResults = {
          description = "The total number of rows for the query, regardless of the number of rows in the response.",
          format = "int32",
          type = "integer",
        },
        totalsForAllResults = {
          additionalProperties = {
            description = "Key-value pair for the total value of a metric. Key is the metric name and the value is the total value for that metric.",
            type = "string",
          },
          description = "Total values for the requested metrics over all the results, not just the results returned in this response. The order of the metric totals is same as the metric order specified in the request.",
          type = "object",
        },
      },
      type = "object",
    },
    Goal = {
      description = "JSON template for Analytics goal resource.",
      id = "Goal",
      properties = {
        accountId = {
          description = "Account ID to which this goal belongs.",
          type = "string",
        },
        active = {
          description = "Determines whether this goal is active.",
          type = "boolean",
        },
        created = {
          description = "Time this goal was created.",
          format = "date-time",
          type = "string",
        },
        eventDetails = {
          description = "Details for the goal of the type EVENT.",
          properties = {
            eventConditions = {
              description = "List of event conditions.",
              items = {
                properties = {
                  comparisonType = {
                    description = "Type of comparison. Possible values are LESS_THAN, GREATER_THAN or EQUAL.",
                    type = "string",
                  },
                  comparisonValue = {
                    description = "Value used for this comparison.",
                    format = "int64",
                    type = "string",
                  },
                  expression = {
                    description = "Expression used for this match.",
                    type = "string",
                  },
                  matchType = {
                    description = "Type of the match to be performed. Possible values are REGEXP, BEGINS_WITH, or EXACT.",
                    type = "string",
                  },
                  type = {
                    description = "Type of this event condition. Possible values are CATEGORY, ACTION, LABEL, or VALUE.",
                    type = "string",
                  },
                },
                type = "object",
              },
              type = "array",
            },
            useEventValue = {
              description = "Determines if the event value should be used as the value for this goal.",
              type = "boolean",
            },
          },
          type = "object",
        },
        id = {
          description = "Goal ID.",
          type = "string",
        },
        internalWebPropertyId = {
          description = "Internal ID for the web property to which this goal belongs.",
          type = "string",
        },
        kind = {
          default = "analytics#goal",
          description = "Resource type for an Analytics goal.",
          type = "string",
        },
        name = {
          description = "Goal name.",
          type = "string",
        },
        parentLink = {
          description = "Parent link for a goal. Points to the view (profile) to which this goal belongs.",
          properties = {
            href = {
              description = "Link to the view (profile) to which this goal belongs.",
              type = "string",
            },
            type = {
              default = "analytics#profile",
              description = "Value is \"analytics#profile\".",
              type = "string",
            },
          },
          type = "object",
        },
        profileId = {
          description = "View (Profile) ID to which this goal belongs.",
          type = "string",
        },
        selfLink = {
          description = "Link for this goal.",
          type = "string",
        },
        type = {
          description = "Goal type. Possible values are URL_DESTINATION, VISIT_TIME_ON_SITE, VISIT_NUM_PAGES, AND EVENT.",
          type = "string",
        },
        updated = {
          description = "Time this goal was last modified.",
          format = "date-time",
          type = "string",
        },
        urlDestinationDetails = {
          description = "Details for the goal of the type URL_DESTINATION.",
          properties = {
            caseSensitive = {
              description = "Determines if the goal URL must exactly match the capitalization of visited URLs.",
              type = "boolean",
            },
            firstStepRequired = {
              description = "Determines if the first step in this goal is required.",
              type = "boolean",
            },
            matchType = {
              description = "Match type for the goal URL. Possible values are HEAD, EXACT, or REGEX.",
              type = "string",
            },
            steps = {
              description = "List of steps configured for this goal funnel.",
              items = {
                properties = {
                  name = {
                    description = "Step name.",
                    type = "string",
                  },
                  number = {
                    description = "Step number.",
                    format = "int32",
                    type = "integer",
                  },
                  url = {
                    description = "URL for this step.",
                    type = "string",
                  },
                },
                type = "object",
              },
              type = "array",
            },
            url = {
              description = "URL for this goal.",
              type = "string",
            },
          },
          type = "object",
        },
        value = {
          description = "Goal value.",
          format = "float",
          type = "number",
        },
        visitNumPagesDetails = {
          description = "Details for the goal of the type VISIT_NUM_PAGES.",
          properties = {
            comparisonType = {
              description = "Type of comparison. Possible values are LESS_THAN, GREATER_THAN, or EQUAL.",
              type = "string",
            },
            comparisonValue = {
              description = "Value used for this comparison.",
              format = "int64",
              type = "string",
            },
          },
          type = "object",
        },
        visitTimeOnSiteDetails = {
          description = "Details for the goal of the type VISIT_TIME_ON_SITE.",
          properties = {
            comparisonType = {
              description = "Type of comparison. Possible values are LESS_THAN or GREATER_THAN.",
              type = "string",
            },
            comparisonValue = {
              description = "Value used for this comparison.",
              format = "int64",
              type = "string",
            },
          },
          type = "object",
        },
        webPropertyId = {
          description = "Web property ID to which this goal belongs. The web property ID is of the form UA-XXXXX-YY.",
          type = "string",
        },
      },
      type = "object",
    },
    Goals = {
      description = "A goal collection lists Analytics goals to which the user has access. Each view (profile) can have a set of goals. Each resource in the Goal collection corresponds to a single Analytics goal.",
      id = "Goals",
      properties = {
        items = {
          description = "A list of goals.",
          items = {
            ["$ref"] = "Goal",
          },
          type = "array",
        },
        itemsPerPage = {
          description = "The maximum number of resources the response can contain, regardless of the actual number of resources returned. Its value ranges from 1 to 1000 with a value of 1000 by default, or otherwise specified by the max-results query parameter.",
          format = "int32",
          type = "integer",
        },
        kind = {
          default = "analytics#goals",
          description = "Collection type.",
          type = "string",
        },
        nextLink = {
          description = "Link to next page for this goal collection.",
          type = "string",
        },
        previousLink = {
          description = "Link to previous page for this goal collection.",
          type = "string",
        },
        startIndex = {
          description = "The starting index of the resources, which is 1 by default or otherwise specified by the start-index query parameter.",
          format = "int32",
          type = "integer",
        },
        totalResults = {
          description = "The total number of results for the query, regardless of the number of resources in the result.",
          format = "int32",
          type = "integer",
        },
        username = {
          description = "Email ID of the authenticated user",
          type = "string",
        },
      },
      type = "object",
    },
    HashClientIdRequest = {
      description = "JSON template for a hash Client Id request resource.",
      id = "HashClientIdRequest",
      properties = {
        clientId = {
          type = "string",
        },
        kind = {
          default = "analytics#hashClientIdRequest",
          type = "string",
        },
        webPropertyId = {
          type = "string",
        },
      },
      type = "object",
    },
    HashClientIdResponse = {
      description = "JSON template for a hash Client Id response resource.",
      id = "HashClientIdResponse",
      properties = {
        clientId = {
          type = "string",
        },
        hashedClientId = {
          type = "string",
        },
        kind = {
          default = "analytics#hashClientIdResponse",
          type = "string",
        },
        webPropertyId = {
          type = "string",
        },
      },
      type = "object",
    },
    IncludeConditions = {
      description = "JSON template for an Analytics Remarketing Include Conditions.",
      id = "IncludeConditions",
      properties = {
        daysToLookBack = {
          description = "The look-back window lets you specify a time frame for evaluating the behavior that qualifies users for your audience. For example, if your filters include users from Central Asia, and Transactions Greater than 2, and you set the look-back window to 14 days, then any user from Central Asia whose cumulative transactions exceed 2 during the last 14 days is added to the audience.",
          format = "int32",
          type = "integer",
        },
        isSmartList = {
          description = "Boolean indicating whether this segment is a smart list. https://support.google.com/analytics/answer/4628577",
          type = "boolean",
        },
        kind = {
          default = "analytics#includeConditions",
          description = "Resource type for include conditions.",
          type = "string",
        },
        membershipDurationDays = {
          description = "Number of days (in the range 1 to 540) a user remains in the audience.",
          format = "int32",
          type = "integer",
        },
        segment = {
          description = "The segment condition that will cause a user to be added to an audience.",
          type = "string",
        },
      },
      type = "object",
    },
    LinkedForeignAccount = {
      description = "JSON template for an Analytics Remarketing Audience Foreign Link.",
      id = "LinkedForeignAccount",
      properties = {
        accountId = {
          description = "Account ID to which this linked foreign account belongs.",
          type = "string",
        },
        eligibleForSearch = {
          description = "Boolean indicating whether this is eligible for search.",
          readOnly = true,
          type = "boolean",
        },
        id = {
          description = "Entity ad account link ID.",
          type = "string",
        },
        internalWebPropertyId = {
          description = "Internal ID for the web property to which this linked foreign account belongs.",
          readOnly = true,
          type = "string",
        },
        kind = {
          default = "analytics#linkedForeignAccount",
          description = "Resource type for linked foreign account.",
          type = "string",
        },
        linkedAccountId = {
          description = "The foreign account ID. For example the an Google Ads `linkedAccountId` has the following format XXX-XXX-XXXX.",
          type = "string",
        },
        remarketingAudienceId = {
          description = "Remarketing audience ID to which this linked foreign account belongs.",
          type = "string",
        },
        status = {
          description = "The status of this foreign account link.",
          type = "string",
        },
        type = {
          description = "The type of the foreign account. For example, `ADWORDS_LINKS`, `DBM_LINKS`, `MCC_LINKS` or `OPTIMIZE`.",
          type = "string",
        },
        webPropertyId = {
          description = "Web property ID of the form UA-XXXXX-YY to which this linked foreign account belongs.",
          type = "string",
        },
      },
      type = "object",
    },
    McfData = {
      description = "Multi-Channel Funnels data for a given view (profile).",
      id = "McfData",
      properties = {
        columnHeaders = {
          description = "Column headers that list dimension names followed by the metric names. The order of dimensions and metrics is same as specified in the request.",
          items = {
            properties = {
              columnType = {
                description = "Column Type. Either DIMENSION or METRIC.",
                type = "string",
              },
              dataType = {
                description = "Data type. Dimension and metric values data types such as INTEGER, DOUBLE, CURRENCY, MCF_SEQUENCE etc.",
                type = "string",
              },
              name = {
                description = "Column name.",
                type = "string",
              },
            },
            type = "object",
          },
          type = "array",
        },
        containsSampledData = {
          description = "Determines if the Analytics data contains sampled data.",
          type = "boolean",
        },
        id = {
          description = "Unique ID for this data response.",
          type = "string",
        },
        itemsPerPage = {
          description = "The maximum number of rows the response can contain, regardless of the actual number of rows returned. Its value ranges from 1 to 10,000 with a value of 1000 by default, or otherwise specified by the max-results query parameter.",
          format = "int32",
          type = "integer",
        },
        kind = {
          default = "analytics#mcfData",
          description = "Resource type.",
          type = "string",
        },
        nextLink = {
          description = "Link to next page for this Analytics data query.",
          type = "string",
        },
        previousLink = {
          description = "Link to previous page for this Analytics data query.",
          type = "string",
        },
        profileInfo = {
          description = "Information for the view (profile), for which the Analytics data was requested.",
          properties = {
            accountId = {
              description = "Account ID to which this view (profile) belongs.",
              type = "string",
            },
            internalWebPropertyId = {
              description = "Internal ID for the web property to which this view (profile) belongs.",
              type = "string",
            },
            profileId = {
              description = "View (Profile) ID.",
              type = "string",
            },
            profileName = {
              description = "View (Profile) name.",
              type = "string",
            },
            tableId = {
              description = "Table ID for view (profile).",
              type = "string",
            },
            webPropertyId = {
              description = "Web Property ID to which this view (profile) belongs.",
              type = "string",
            },
          },
          type = "object",
        },
        query = {
          description = "Analytics data request query parameters.",
          properties = {
            dimensions = {
              description = "List of analytics dimensions.",
              type = "string",
            },
            ["end-date"] = {
              description = "End date.",
              type = "string",
            },
            filters = {
              description = "Comma-separated list of dimension or metric filters.",
              type = "string",
            },
            ids = {
              description = "Unique table ID.",
              type = "string",
            },
            ["max-results"] = {
              description = "Maximum results per page.",
              format = "int32",
              type = "integer",
            },
            metrics = {
              description = "List of analytics metrics.",
              items = {
                type = "string",
              },
              type = "array",
            },
            samplingLevel = {
              description = "Desired sampling level",
              type = "string",
            },
            segment = {
              description = "Analytics advanced segment.",
              type = "string",
            },
            sort = {
              description = "List of dimensions or metrics based on which Analytics data is sorted.",
              items = {
                type = "string",
              },
              type = "array",
            },
            ["start-date"] = {
              description = "Start date.",
              type = "string",
            },
            ["start-index"] = {
              description = "Start index.",
              format = "int32",
              type = "integer",
            },
          },
          type = "object",
        },
        rows = {
          description = "Analytics data rows, where each row contains a list of dimension values followed by the metric values. The order of dimensions and metrics is same as specified in the request.",
          items = {
            items = {
              description = "A union object representing a dimension or metric value. Only one of \"primitiveValue\" or \"conversionPathValue\" attribute will be populated.",
              properties = {
                conversionPathValue = {
                  description = "A conversion path dimension value, containing a list of interactions with their attributes.",
                  items = {
                    properties = {
                      interactionType = {
                        description = "Type of an interaction on conversion path. Such as CLICK, IMPRESSION etc.",
                        type = "string",
                      },
                      nodeValue = {
                        description = "Node value of an interaction on conversion path. Such as source, medium etc.",
                        type = "string",
                      },
                    },
                    type = "object",
                  },
                  type = "array",
                },
                primitiveValue = {
                  description = "A primitive dimension value. A primitive metric value.",
                  type = "string",
                },
              },
              type = "object",
            },
            type = "array",
          },
          type = "array",
        },
        sampleSize = {
          description = "The number of samples used to calculate the result.",
          format = "int64",
          type = "string",
        },
        sampleSpace = {
          description = "Total size of the sample space from which the samples were selected.",
          format = "int64",
          type = "string",
        },
        selfLink = {
          description = "Link to this page.",
          type = "string",
        },
        totalResults = {
          description = "The total number of rows for the query, regardless of the number of rows in the response.",
          format = "int32",
          type = "integer",
        },
        totalsForAllResults = {
          additionalProperties = {
            description = "Key-value pair for the total value of a metric. Key is the metric name and the value is the total value for that metric.",
            type = "string",
          },
          description = "Total values for the requested metrics over all the results, not just the results returned in this response. The order of the metric totals is same as the metric order specified in the request.",
          type = "object",
        },
      },
      type = "object",
    },
    Profile = {
      description = "JSON template for an Analytics view (profile).",
      id = "Profile",
      properties = {
        accountId = {
          description = "Account ID to which this view (profile) belongs.",
          type = "string",
        },
        botFilteringEnabled = {
          description = "Indicates whether bot filtering is enabled for this view (profile).",
          type = "boolean",
        },
        childLink = {
          description = "Child link for this view (profile). Points to the list of goals for this view (profile).",
          properties = {
            href = {
              description = "Link to the list of goals for this view (profile).",
              type = "string",
            },
            type = {
              default = "analytics#goals",
              description = "Value is \"analytics#goals\".",
              type = "string",
            },
          },
          type = "object",
        },
        created = {
          description = "Time this view (profile) was created.",
          format = "date-time",
          readOnly = true,
          type = "string",
        },
        currency = {
          description = "The currency type associated with this view (profile), defaults to USD. The supported values are:\
USD, JPY, EUR, GBP, AUD, KRW, BRL, CNY, DKK, RUB, SEK, NOK, PLN, TRY, TWD, HKD, THB, IDR, ARS, MXN, VND, PHP, INR, CHF, CAD, CZK, NZD, HUF, BGN, LTL, ZAR, UAH, AED, BOB, CLP, COP, EGP, HRK, ILS, MAD, MYR, PEN, PKR, RON, RSD, SAR, SGD, VEF, LVL",
          type = "string",
        },
        defaultPage = {
          description = "Default page for this view (profile).",
          type = "string",
        },
        eCommerceTracking = {
          description = "Indicates whether ecommerce tracking is enabled for this view (profile).",
          type = "boolean",
        },
        enhancedECommerceTracking = {
          description = "Indicates whether enhanced ecommerce tracking is enabled for this view (profile). This property can only be enabled if ecommerce tracking is enabled.",
          type = "boolean",
        },
        excludeQueryParameters = {
          description = "The query parameters that are excluded from this view (profile).",
          type = "string",
        },
        id = {
          description = "View (Profile) ID.",
          type = "string",
        },
        internalWebPropertyId = {
          description = "Internal ID for the web property to which this view (profile) belongs.",
          readOnly = true,
          type = "string",
        },
        kind = {
          default = "analytics#profile",
          description = "Resource type for Analytics view (profile).",
          readOnly = true,
          type = "string",
        },
        name = {
          description = "Name of this view (profile).",
          type = "string",
        },
        parentLink = {
          description = "Parent link for this view (profile). Points to the web property to which this view (profile) belongs.",
          properties = {
            href = {
              description = "Link to the web property to which this view (profile) belongs.",
              type = "string",
            },
            type = {
              default = "analytics#webproperty",
              description = "Value is \"analytics#webproperty\".",
              type = "string",
            },
          },
          type = "object",
        },
        permissions = {
          description = "Permissions the user has for this view (profile).",
          properties = {
            effective = {
              description = "All the permissions that the user has for this view (profile). These include any implied permissions (e.g., EDIT implies VIEW) or inherited permissions from the parent web property.",
              items = {
                type = "string",
              },
              readOnly = true,
              type = "array",
            },
          },
          type = "object",
        },
        selfLink = {
          description = "Link for this view (profile).",
          readOnly = true,
          type = "string",
        },
        siteSearchCategoryParameters = {
          description = "Site search category parameters for this view (profile).",
          type = "string",
        },
        siteSearchQueryParameters = {
          description = "The site search query parameters for this view (profile).",
          type = "string",
        },
        starred = {
          description = "Indicates whether this view (profile) is starred or not.",
          type = "boolean",
        },
        stripSiteSearchCategoryParameters = {
          description = "Whether or not Analytics will strip search category parameters from the URLs in your reports.",
          type = "boolean",
        },
        stripSiteSearchQueryParameters = {
          description = "Whether or not Analytics will strip search query parameters from the URLs in your reports.",
          type = "boolean",
        },
        timezone = {
          description = "Time zone for which this view (profile) has been configured. Time zones are identified by strings from the TZ database.",
          type = "string",
        },
        type = {
          description = "View (Profile) type. Supported types: WEB or APP.",
          type = "string",
        },
        updated = {
          description = "Time this view (profile) was last modified.",
          format = "date-time",
          readOnly = true,
          type = "string",
        },
        webPropertyId = {
          description = "Web property ID of the form UA-XXXXX-YY to which this view (profile) belongs.",
          readOnly = true,
          type = "string",
        },
        websiteUrl = {
          description = "Website URL for this view (profile).",
          type = "string",
        },
      },
      type = "object",
    },
    ProfileFilterLink = {
      description = "JSON template for an Analytics profile filter link.",
      id = "ProfileFilterLink",
      properties = {
        filterRef = {
          ["$ref"] = "FilterRef",
          description = "Filter for this link.",
        },
        id = {
          description = "Profile filter link ID.",
          type = "string",
        },
        kind = {
          default = "analytics#profileFilterLink",
          description = "Resource type for Analytics filter.",
          readOnly = true,
          type = "string",
        },
        profileRef = {
          ["$ref"] = "ProfileRef",
          description = "View (Profile) for this link.",
        },
        rank = {
          description = "The rank of this profile filter link relative to the other filters linked to the same profile.\
For readonly (i.e., list and get) operations, the rank always starts at 1.\
For write (i.e., create, update, or delete) operations, you may specify a value between 0 and 255 inclusively, [0, 255]. In order to insert a link at the end of the list, either don't specify a rank or set a rank to a number greater than the largest rank in the list. In order to insert a link to the beginning of the list specify a rank that is less than or equal to 1. The new link will move all existing filters with the same or lower rank down the list. After the link is inserted/updated/deleted all profile filter links will be renumbered starting at 1.",
          format = "int32",
          type = "integer",
        },
        selfLink = {
          description = "Link for this profile filter link.",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    ProfileFilterLinks = {
      description = "A profile filter link collection lists profile filter links between profiles and filters. Each resource in the collection corresponds to a profile filter link.",
      id = "ProfileFilterLinks",
      properties = {
        items = {
          description = "A list of profile filter links.",
          items = {
            ["$ref"] = "ProfileFilterLink",
          },
          type = "array",
        },
        itemsPerPage = {
          description = "The maximum number of resources the response can contain, regardless of the actual number of resources returned. Its value ranges from 1 to 1,000 with a value of 1000 by default, or otherwise specified by the max-results query parameter.",
          format = "int32",
          type = "integer",
        },
        kind = {
          default = "analytics#profileFilterLinks",
          description = "Collection type.",
          type = "string",
        },
        nextLink = {
          description = "Link to next page for this profile filter link collection.",
          type = "string",
        },
        previousLink = {
          description = "Link to previous page for this profile filter link collection.",
          type = "string",
        },
        startIndex = {
          description = "The starting index of the resources, which is 1 by default or otherwise specified by the start-index query parameter.",
          format = "int32",
          type = "integer",
        },
        totalResults = {
          description = "The total number of results for the query, regardless of the number of results in the response.",
          format = "int32",
          type = "integer",
        },
        username = {
          description = "Email ID of the authenticated user",
          type = "string",
        },
      },
      type = "object",
    },
    ProfileRef = {
      description = "JSON template for a linked view (profile).",
      id = "ProfileRef",
      properties = {
        accountId = {
          description = "Account ID to which this view (profile) belongs.",
          type = "string",
        },
        href = {
          description = "Link for this view (profile).",
          type = "string",
        },
        id = {
          description = "View (Profile) ID.",
          type = "string",
        },
        internalWebPropertyId = {
          description = "Internal ID for the web property to which this view (profile) belongs.",
          type = "string",
        },
        kind = {
          default = "analytics#profileRef",
          description = "Analytics view (profile) reference.",
          type = "string",
        },
        name = {
          description = "Name of this view (profile).",
          type = "string",
        },
        webPropertyId = {
          description = "Web property ID of the form UA-XXXXX-YY to which this view (profile) belongs.",
          type = "string",
        },
      },
      type = "object",
    },
    ProfileSummary = {
      description = "JSON template for an Analytics ProfileSummary. ProfileSummary returns basic information (i.e., summary) for a profile.",
      id = "ProfileSummary",
      properties = {
        id = {
          description = "View (profile) ID.",
          type = "string",
        },
        kind = {
          default = "analytics#profileSummary",
          description = "Resource type for Analytics ProfileSummary.",
          type = "string",
        },
        name = {
          description = "View (profile) name.",
          type = "string",
        },
        starred = {
          description = "Indicates whether this view (profile) is starred or not.",
          type = "boolean",
        },
        type = {
          description = "View (Profile) type. Supported types: WEB or APP.",
          type = "string",
        },
      },
      type = "object",
    },
    Profiles = {
      description = "A view (profile) collection lists Analytics views (profiles) to which the user has access. Each resource in the collection corresponds to a single Analytics view (profile).",
      id = "Profiles",
      properties = {
        items = {
          description = "A list of views (profiles).",
          items = {
            ["$ref"] = "Profile",
          },
          type = "array",
        },
        itemsPerPage = {
          description = "The maximum number of resources the response can contain, regardless of the actual number of resources returned. Its value ranges from 1 to 1000 with a value of 1000 by default, or otherwise specified by the max-results query parameter.",
          format = "int32",
          type = "integer",
        },
        kind = {
          default = "analytics#profiles",
          description = "Collection type.",
          type = "string",
        },
        nextLink = {
          description = "Link to next page for this view (profile) collection.",
          type = "string",
        },
        previousLink = {
          description = "Link to previous page for this view (profile) collection.",
          type = "string",
        },
        startIndex = {
          description = "The starting index of the resources, which is 1 by default or otherwise specified by the start-index query parameter.",
          format = "int32",
          type = "integer",
        },
        totalResults = {
          description = "The total number of results for the query, regardless of the number of results in the response.",
          format = "int32",
          type = "integer",
        },
        username = {
          description = "Email ID of the authenticated user",
          type = "string",
        },
      },
      type = "object",
    },
    RealtimeData = {
      description = "Real time data for a given view (profile).",
      id = "RealtimeData",
      properties = {
        columnHeaders = {
          description = "Column headers that list dimension names followed by the metric names. The order of dimensions and metrics is same as specified in the request.",
          items = {
            properties = {
              columnType = {
                description = "Column Type. Either DIMENSION or METRIC.",
                type = "string",
              },
              dataType = {
                description = "Data type. Dimension column headers have only STRING as the data type. Metric column headers have data types for metric values such as INTEGER, DOUBLE, CURRENCY etc.",
                type = "string",
              },
              name = {
                description = "Column name.",
                type = "string",
              },
            },
            type = "object",
          },
          type = "array",
        },
        id = {
          description = "Unique ID for this data response.",
          type = "string",
        },
        kind = {
          default = "analytics#realtimeData",
          description = "Resource type.",
          type = "string",
        },
        profileInfo = {
          description = "Information for the view (profile), for which the real time data was requested.",
          properties = {
            accountId = {
              description = "Account ID to which this view (profile) belongs.",
              type = "string",
            },
            internalWebPropertyId = {
              description = "Internal ID for the web property to which this view (profile) belongs.",
              type = "string",
            },
            profileId = {
              description = "View (Profile) ID.",
              type = "string",
            },
            profileName = {
              description = "View (Profile) name.",
              type = "string",
            },
            tableId = {
              description = "Table ID for view (profile).",
              type = "string",
            },
            webPropertyId = {
              description = "Web Property ID to which this view (profile) belongs.",
              type = "string",
            },
          },
          type = "object",
        },
        query = {
          description = "Real time data request query parameters.",
          properties = {
            dimensions = {
              description = "List of real time dimensions.",
              type = "string",
            },
            filters = {
              description = "Comma-separated list of dimension or metric filters.",
              type = "string",
            },
            ids = {
              description = "Unique table ID.",
              type = "string",
            },
            ["max-results"] = {
              description = "Maximum results per page.",
              format = "int32",
              type = "integer",
            },
            metrics = {
              description = "List of real time metrics.",
              items = {
                type = "string",
              },
              type = "array",
            },
            sort = {
              description = "List of dimensions or metrics based on which real time data is sorted.",
              items = {
                type = "string",
              },
              type = "array",
            },
          },
          type = "object",
        },
        rows = {
          description = "Real time data rows, where each row contains a list of dimension values followed by the metric values. The order of dimensions and metrics is same as specified in the request.",
          items = {
            items = {
              type = "string",
            },
            type = "array",
          },
          type = "array",
        },
        selfLink = {
          description = "Link to this page.",
          type = "string",
        },
        totalResults = {
          description = "The total number of rows for the query, regardless of the number of rows in the response.",
          format = "int32",
          type = "integer",
        },
        totalsForAllResults = {
          additionalProperties = {
            description = "Key-value pair for the total value of a metric. Key is the metric name and the value is the total value for that metric.",
            type = "string",
          },
          description = "Total values for the requested metrics over all the results, not just the results returned in this response. The order of the metric totals is same as the metric order specified in the request.",
          type = "object",
        },
      },
      type = "object",
    },
    RemarketingAudience = {
      description = "JSON template for an Analytics remarketing audience.",
      id = "RemarketingAudience",
      properties = {
        accountId = {
          description = "Account ID to which this remarketing audience belongs.",
          type = "string",
        },
        audienceDefinition = {
          description = "The simple audience definition that will cause a user to be added to an audience.",
          properties = {
            includeConditions = {
              ["$ref"] = "IncludeConditions",
              description = "Defines the conditions to include users to the audience.",
            },
          },
          type = "object",
        },
        audienceType = {
          description = "The type of audience, either SIMPLE or STATE_BASED.",
          type = "string",
        },
        created = {
          description = "Time this remarketing audience was created.",
          format = "date-time",
          readOnly = true,
          type = "string",
        },
        description = {
          description = "The description of this remarketing audience.",
          readOnly = true,
          type = "string",
        },
        id = {
          description = "Remarketing Audience ID.",
          type = "string",
        },
        internalWebPropertyId = {
          description = "Internal ID for the web property to which this remarketing audience belongs.",
          readOnly = true,
          type = "string",
        },
        kind = {
          default = "analytics#remarketingAudience",
          description = "Collection type.",
          type = "string",
        },
        linkedAdAccounts = {
          description = "The linked ad accounts associated with this remarketing audience. A remarketing audience can have only one linkedAdAccount currently.",
          items = {
            ["$ref"] = "LinkedForeignAccount",
          },
          type = "array",
        },
        linkedViews = {
          description = "The views (profiles) that this remarketing audience is linked to.",
          items = {
            type = "string",
          },
          type = "array",
        },
        name = {
          description = "The name of this remarketing audience.",
          type = "string",
        },
        stateBasedAudienceDefinition = {
          description = "A state based audience definition that will cause a user to be added or removed from an audience.",
          properties = {
            excludeConditions = {
              description = "Defines the conditions to exclude users from the audience.",
              properties = {
                exclusionDuration = {
                  description = "Whether to make the exclusion TEMPORARY or PERMANENT.",
                  type = "string",
                },
                segment = {
                  description = "The segment condition that will cause a user to be removed from an audience.",
                  type = "string",
                },
              },
              type = "object",
            },
            includeConditions = {
              ["$ref"] = "IncludeConditions",
              description = "Defines the conditions to include users to the audience.",
            },
          },
          type = "object",
        },
        updated = {
          description = "Time this remarketing audience was last modified.",
          format = "date-time",
          readOnly = true,
          type = "string",
        },
        webPropertyId = {
          description = "Web property ID of the form UA-XXXXX-YY to which this remarketing audience belongs.",
          type = "string",
        },
      },
      type = "object",
    },
    RemarketingAudiences = {
      description = "A remarketing audience collection lists Analytics remarketing audiences to which the user has access. Each resource in the collection corresponds to a single Analytics remarketing audience.",
      id = "RemarketingAudiences",
      properties = {
        items = {
          description = "A list of remarketing audiences.",
          items = {
            ["$ref"] = "RemarketingAudience",
          },
          type = "array",
        },
        itemsPerPage = {
          description = "The maximum number of resources the response can contain, regardless of the actual number of resources returned. Its value ranges from 1 to 1000 with a value of 1000 by default, or otherwise specified by the max-results query parameter.",
          format = "int32",
          type = "integer",
        },
        kind = {
          default = "analytics#remarketingAudiences",
          description = "Collection type.",
          type = "string",
        },
        nextLink = {
          description = "Link to next page for this remarketing audience collection.",
          type = "string",
        },
        previousLink = {
          description = "Link to previous page for this view (profile) collection.",
          type = "string",
        },
        startIndex = {
          description = "The starting index of the resources, which is 1 by default or otherwise specified by the start-index query parameter.",
          format = "int32",
          type = "integer",
        },
        totalResults = {
          description = "The total number of results for the query, regardless of the number of results in the response.",
          format = "int32",
          type = "integer",
        },
        username = {
          description = "Email ID of the authenticated user",
          type = "string",
        },
      },
      type = "object",
    },
    Segment = {
      description = "JSON template for an Analytics segment.",
      id = "Segment",
      properties = {
        created = {
          description = "Time the segment was created.",
          format = "date-time",
          type = "string",
        },
        definition = {
          description = "Segment definition.",
          type = "string",
        },
        id = {
          description = "Segment ID.",
          type = "string",
        },
        kind = {
          default = "analytics#segment",
          description = "Resource type for Analytics segment.",
          type = "string",
        },
        name = {
          description = "Segment name.",
          type = "string",
        },
        segmentId = {
          description = "Segment ID. Can be used with the 'segment' parameter in Core Reporting API.",
          type = "string",
        },
        selfLink = {
          description = "Link for this segment.",
          type = "string",
        },
        type = {
          description = "Type for a segment. Possible values are \"BUILT_IN\" or \"CUSTOM\".",
          type = "string",
        },
        updated = {
          description = "Time the segment was last modified.",
          format = "date-time",
          type = "string",
        },
      },
      type = "object",
    },
    Segments = {
      description = "An segment collection lists Analytics segments that the user has access to. Each resource in the collection corresponds to a single Analytics segment.",
      id = "Segments",
      properties = {
        items = {
          description = "A list of segments.",
          items = {
            ["$ref"] = "Segment",
          },
          type = "array",
        },
        itemsPerPage = {
          description = "The maximum number of resources the response can contain, regardless of the actual number of resources returned. Its value ranges from 1 to 1000 with a value of 1000 by default, or otherwise specified by the max-results query parameter.",
          format = "int32",
          type = "integer",
        },
        kind = {
          default = "analytics#segments",
          description = "Collection type for segments.",
          type = "string",
        },
        nextLink = {
          description = "Link to next page for this segment collection.",
          type = "string",
        },
        previousLink = {
          description = "Link to previous page for this segment collection.",
          type = "string",
        },
        startIndex = {
          description = "The starting index of the resources, which is 1 by default or otherwise specified by the start-index query parameter.",
          format = "int32",
          type = "integer",
        },
        totalResults = {
          description = "The total number of results for the query, regardless of the number of results in the response.",
          format = "int32",
          type = "integer",
        },
        username = {
          description = "Email ID of the authenticated user",
          type = "string",
        },
      },
      type = "object",
    },
    UnsampledReport = {
      description = "JSON template for Analytics unsampled report resource.",
      id = "UnsampledReport",
      properties = {
        accountId = {
          description = "Account ID to which this unsampled report belongs.",
          type = "string",
        },
        cloudStorageDownloadDetails = {
          description = "Download details for a file stored in Google Cloud Storage.",
          properties = {
            bucketId = {
              description = "Id of the bucket the file object is stored in.",
              type = "string",
            },
            objectId = {
              description = "Id of the file object containing the report data.",
              type = "string",
            },
          },
          readOnly = true,
          type = "object",
        },
        created = {
          description = "Time this unsampled report was created.",
          format = "date-time",
          readOnly = true,
          type = "string",
        },
        dimensions = {
          description = "The dimensions for the unsampled report.",
          type = "string",
        },
        downloadType = {
          description = "The type of download you need to use for the report data file. Possible values include `GOOGLE_DRIVE` and `GOOGLE_CLOUD_STORAGE`. If the value is `GOOGLE_DRIVE`, see the `driveDownloadDetails` field. If the value is `GOOGLE_CLOUD_STORAGE`, see the `cloudStorageDownloadDetails` field.",
          readOnly = true,
          type = "string",
        },
        driveDownloadDetails = {
          description = "Download details for a file stored in Google Drive.",
          properties = {
            documentId = {
              description = "Id of the document/file containing the report data.",
              type = "string",
            },
          },
          readOnly = true,
          type = "object",
        },
        ["end-date"] = {
          annotations = {
            required = {
              "analytics.management.filters.insert",
              "analytics.management.unsampledReports.insert",
            },
          },
          description = "The end date for the unsampled report.",
          type = "string",
        },
        filters = {
          description = "The filters for the unsampled report.",
          type = "string",
        },
        id = {
          description = "Unsampled report ID.",
          type = "string",
        },
        kind = {
          default = "analytics#unsampledReport",
          description = "Resource type for an Analytics unsampled report.",
          readOnly = true,
          type = "string",
        },
        metrics = {
          annotations = {
            required = {
              "analytics.management.filters.insert",
              "analytics.management.unsampledReports.insert",
            },
          },
          description = "The metrics for the unsampled report.",
          type = "string",
        },
        profileId = {
          description = "View (Profile) ID to which this unsampled report belongs.",
          type = "string",
        },
        segment = {
          description = "The segment for the unsampled report.",
          type = "string",
        },
        selfLink = {
          description = "Link for this unsampled report.",
          readOnly = true,
          type = "string",
        },
        ["start-date"] = {
          annotations = {
            required = {
              "analytics.management.filters.insert",
              "analytics.management.unsampledReports.insert",
            },
          },
          description = "The start date for the unsampled report.",
          type = "string",
        },
        status = {
          description = "Status of this unsampled report. Possible values are PENDING, COMPLETED, or FAILED.",
          readOnly = true,
          type = "string",
        },
        title = {
          annotations = {
            required = {
              "analytics.management.filters.insert",
              "analytics.management.unsampledReports.insert",
            },
          },
          description = "Title of the unsampled report.",
          type = "string",
        },
        updated = {
          description = "Time this unsampled report was last modified.",
          format = "date-time",
          readOnly = true,
          type = "string",
        },
        webPropertyId = {
          description = "Web property ID to which this unsampled report belongs. The web property ID is of the form UA-XXXXX-YY.",
          type = "string",
        },
      },
      type = "object",
    },
    UnsampledReports = {
      description = "An unsampled report collection lists Analytics unsampled reports to which the user has access. Each view (profile) can have a set of unsampled reports. Each resource in the unsampled report collection corresponds to a single Analytics unsampled report.",
      id = "UnsampledReports",
      properties = {
        items = {
          description = "A list of unsampled reports.",
          items = {
            ["$ref"] = "UnsampledReport",
          },
          type = "array",
        },
        itemsPerPage = {
          description = "The maximum number of resources the response can contain, regardless of the actual number of resources returned. Its value ranges from 1 to 1000 with a value of 1000 by default, or otherwise specified by the max-results query parameter.",
          format = "int32",
          type = "integer",
        },
        kind = {
          default = "analytics#unsampledReports",
          description = "Collection type.",
          type = "string",
        },
        nextLink = {
          description = "Link to next page for this unsampled report collection.",
          type = "string",
        },
        previousLink = {
          description = "Link to previous page for this unsampled report collection.",
          type = "string",
        },
        startIndex = {
          description = "The starting index of the resources, which is 1 by default or otherwise specified by the start-index query parameter.",
          format = "int32",
          type = "integer",
        },
        totalResults = {
          description = "The total number of results for the query, regardless of the number of resources in the result.",
          format = "int32",
          type = "integer",
        },
        username = {
          description = "Email ID of the authenticated user",
          type = "string",
        },
      },
      type = "object",
    },
    Upload = {
      description = "Metadata returned for an upload operation.",
      id = "Upload",
      properties = {
        accountId = {
          description = "Account Id to which this upload belongs.",
          format = "int64",
          type = "string",
        },
        customDataSourceId = {
          description = "Custom data source Id to which this data import belongs.",
          type = "string",
        },
        errors = {
          description = "Data import errors collection.",
          items = {
            type = "string",
          },
          type = "array",
        },
        id = {
          description = "A unique ID for this upload.",
          type = "string",
        },
        kind = {
          default = "analytics#upload",
          description = "Resource type for Analytics upload.",
          type = "string",
        },
        status = {
          description = "Upload status. Possible values: PENDING, COMPLETED, FAILED, DELETING, DELETED.",
          type = "string",
        },
        uploadTime = {
          description = "Time this file is uploaded.",
          format = "date-time",
          type = "string",
        },
      },
      type = "object",
    },
    Uploads = {
      description = "Upload collection lists Analytics uploads to which the user has access. Each custom data source can have a set of uploads. Each resource in the upload collection corresponds to a single Analytics data upload.",
      id = "Uploads",
      properties = {
        items = {
          description = "A list of uploads.",
          items = {
            ["$ref"] = "Upload",
          },
          type = "array",
        },
        itemsPerPage = {
          description = "The maximum number of resources the response can contain, regardless of the actual number of resources returned. Its value ranges from 1 to 1000 with a value of 1000 by default, or otherwise specified by the max-results query parameter.",
          format = "int32",
          type = "integer",
        },
        kind = {
          default = "analytics#uploads",
          description = "Collection type.",
          type = "string",
        },
        nextLink = {
          description = "Link to next page for this upload collection.",
          type = "string",
        },
        previousLink = {
          description = "Link to previous page for this upload collection.",
          type = "string",
        },
        startIndex = {
          description = "The starting index of the resources, which is 1 by default or otherwise specified by the start-index query parameter.",
          format = "int32",
          type = "integer",
        },
        totalResults = {
          description = "The total number of results for the query, regardless of the number of resources in the result.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    UserDeletionRequest = {
      description = "JSON template for a user deletion request resource.",
      id = "UserDeletionRequest",
      properties = {
        deletionRequestTime = {
          description = "This marks the point in time for which all user data before should be deleted",
          format = "date-time",
          readOnly = true,
          type = "string",
        },
        firebaseProjectId = {
          description = "Firebase Project Id",
          type = "string",
        },
        id = {
          description = "User ID.",
          properties = {
            type = {
              description = "Type of user",
              type = "string",
            },
            userId = {
              description = "The User's id",
              type = "string",
            },
          },
          type = "object",
        },
        kind = {
          default = "analytics#userDeletionRequest",
          description = "Value is \"analytics#userDeletionRequest\".",
          type = "string",
        },
        propertyId = {
          description = "Property ID",
          type = "string",
        },
        webPropertyId = {
          description = "Web property ID of the form UA-XXXXX-YY.",
          type = "string",
        },
      },
      type = "object",
    },
    UserRef = {
      description = "JSON template for a user reference.",
      id = "UserRef",
      properties = {
        email = {
          description = "Email ID of this user.",
          type = "string",
        },
        id = {
          description = "User ID.",
          type = "string",
        },
        kind = {
          default = "analytics#userRef",
          type = "string",
        },
      },
      type = "object",
    },
    WebPropertyRef = {
      description = "JSON template for a web property reference.",
      id = "WebPropertyRef",
      properties = {
        accountId = {
          description = "Account ID to which this web property belongs.",
          type = "string",
        },
        href = {
          description = "Link for this web property.",
          type = "string",
        },
        id = {
          description = "Web property ID of the form UA-XXXXX-YY.",
          type = "string",
        },
        internalWebPropertyId = {
          description = "Internal ID for this web property.",
          type = "string",
        },
        kind = {
          default = "analytics#webPropertyRef",
          description = "Analytics web property reference.",
          type = "string",
        },
        name = {
          description = "Name of this web property.",
          type = "string",
        },
      },
      type = "object",
    },
    WebPropertySummary = {
      description = "JSON template for an Analytics WebPropertySummary. WebPropertySummary returns basic information (i.e., summary) for a web property.",
      id = "WebPropertySummary",
      properties = {
        id = {
          description = "Web property ID of the form UA-XXXXX-YY.",
          type = "string",
        },
        internalWebPropertyId = {
          description = "Internal ID for this web property.",
          type = "string",
        },
        kind = {
          default = "analytics#webPropertySummary",
          description = "Resource type for Analytics WebPropertySummary.",
          type = "string",
        },
        level = {
          description = "Level for this web property. Possible values are STANDARD or PREMIUM.",
          type = "string",
        },
        name = {
          description = "Web property name.",
          type = "string",
        },
        profiles = {
          description = "List of profiles under this web property.",
          items = {
            ["$ref"] = "ProfileSummary",
          },
          type = "array",
        },
        starred = {
          description = "Indicates whether this web property is starred or not.",
          type = "boolean",
        },
        websiteUrl = {
          description = "Website url for this web property.",
          type = "string",
        },
      },
      type = "object",
    },
    Webproperties = {
      description = "A web property collection lists Analytics web properties to which the user has access. Each resource in the collection corresponds to a single Analytics web property.",
      id = "Webproperties",
      properties = {
        items = {
          description = "A list of web properties.",
          items = {
            ["$ref"] = "Webproperty",
          },
          type = "array",
        },
        itemsPerPage = {
          description = "The maximum number of resources the response can contain, regardless of the actual number of resources returned. Its value ranges from 1 to 1000 with a value of 1000 by default, or otherwise specified by the max-results query parameter.",
          format = "int32",
          type = "integer",
        },
        kind = {
          default = "analytics#webproperties",
          description = "Collection type.",
          type = "string",
        },
        nextLink = {
          description = "Link to next page for this web property collection.",
          type = "string",
        },
        previousLink = {
          description = "Link to previous page for this web property collection.",
          type = "string",
        },
        startIndex = {
          description = "The starting index of the resources, which is 1 by default or otherwise specified by the start-index query parameter.",
          format = "int32",
          type = "integer",
        },
        totalResults = {
          description = "The total number of results for the query, regardless of the number of results in the response.",
          format = "int32",
          type = "integer",
        },
        username = {
          description = "Email ID of the authenticated user",
          type = "string",
        },
      },
      type = "object",
    },
    Webproperty = {
      description = "JSON template for an Analytics web property.",
      id = "Webproperty",
      properties = {
        accountId = {
          description = "Account ID to which this web property belongs.",
          type = "string",
        },
        childLink = {
          description = "Child link for this web property. Points to the list of views (profiles) for this web property.",
          properties = {
            href = {
              description = "Link to the list of views (profiles) for this web property.",
              type = "string",
            },
            type = {
              default = "analytics#profiles",
              description = "Type of the parent link. Its value is \"analytics#profiles\".",
              type = "string",
            },
          },
          type = "object",
        },
        created = {
          description = "Time this web property was created.",
          format = "date-time",
          readOnly = true,
          type = "string",
        },
        dataRetentionResetOnNewActivity = {
          description = "Set to true to reset the retention period of the user identifier with each new event from that user (thus setting the expiration date to current time plus retention period).\
Set to false to delete data associated with the user identifier automatically after the rentention period.\
This property cannot be set on insert.",
          type = "boolean",
        },
        dataRetentionTtl = {
          description = "The length of time for which user and event data is retained.\
This property cannot be set on insert.",
          type = "string",
        },
        defaultProfileId = {
          description = "Default view (profile) ID.",
          format = "int64",
          type = "string",
        },
        id = {
          description = "Web property ID of the form UA-XXXXX-YY.",
          type = "string",
        },
        industryVertical = {
          description = "The industry vertical/category selected for this web property.",
          type = "string",
        },
        internalWebPropertyId = {
          description = "Internal ID for this web property.",
          readOnly = true,
          type = "string",
        },
        kind = {
          default = "analytics#webproperty",
          description = "Resource type for Analytics WebProperty.",
          readOnly = true,
          type = "string",
        },
        level = {
          description = "Level for this web property. Possible values are STANDARD or PREMIUM.",
          readOnly = true,
          type = "string",
        },
        name = {
          description = "Name of this web property.",
          type = "string",
        },
        parentLink = {
          description = "Parent link for this web property. Points to the account to which this web property belongs.",
          properties = {
            href = {
              description = "Link to the account for this web property.",
              type = "string",
            },
            type = {
              default = "analytics#account",
              description = "Type of the parent link. Its value is \"analytics#account\".",
              type = "string",
            },
          },
          type = "object",
        },
        permissions = {
          description = "Permissions the user has for this web property.",
          properties = {
            effective = {
              description = "All the permissions that the user has for this web property. These include any implied permissions (e.g., EDIT implies VIEW) or inherited permissions from the parent account.",
              items = {
                type = "string",
              },
              readOnly = true,
              type = "array",
            },
          },
          type = "object",
        },
        profileCount = {
          description = "View (Profile) count for this web property.",
          format = "int32",
          readOnly = true,
          type = "integer",
        },
        selfLink = {
          description = "Link for this web property.",
          readOnly = true,
          type = "string",
        },
        starred = {
          description = "Indicates whether this web property is starred or not.",
          type = "boolean",
        },
        updated = {
          description = "Time this web property was last modified.",
          format = "date-time",
          readOnly = true,
          type = "string",
        },
        websiteUrl = {
          description = "Website url for this web property.",
          type = "string",
        },
      },
      type = "object",
    },
  },
  servicePath = "analytics/v3/",
  title = "Google Analytics API",
  version = "v3",
}
