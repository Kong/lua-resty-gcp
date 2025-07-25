return {
  auth = {
    oauth2 = {
      scopes = {
        ["https://www.googleapis.com/auth/doubleclickbidmanager"] = {
          description = "View and manage your reports in DoubleClick Bid Manager",
        },
      },
    },
  },
  basePath = "/v2/",
  baseUrl = "https://doubleclickbidmanager.googleapis.com/v2/",
  batchPath = "batch",
  canonicalName = "DoubleClick Bid Manager",
  description = "DoubleClick Bid Manager API allows users to manage and create campaigns and reports.",
  discoveryVersion = "v1",
  documentationLink = "https://developers.google.com/bid-manager/",
  fullyEncodeReservedExpansion = true,
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "doubleclickbidmanager:v2",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://doubleclickbidmanager.mtls.googleapis.com/",
  name = "doubleclickbidmanager",
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
    queries = {
      methods = {
        create = {
          description = "Creates a query.",
          flatPath = "queries",
          httpMethod = "POST",
          id = "doubleclickbidmanager.queries.create",
          parameterOrder = {},
          parameters = {},
          path = "queries",
          request = {
            ["$ref"] = "Query",
          },
          response = {
            ["$ref"] = "Query",
          },
          scopes = {
            "https://www.googleapis.com/auth/doubleclickbidmanager",
          },
        },
        delete = {
          description = "Deletes a query as well as the associated reports.",
          flatPath = "queries/{queryId}",
          httpMethod = "DELETE",
          id = "doubleclickbidmanager.queries.delete",
          parameterOrder = {
            "queryId",
          },
          parameters = {
            queryId = {
              description = "Required. ID of query to delete.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "queries/{queryId}",
          scopes = {
            "https://www.googleapis.com/auth/doubleclickbidmanager",
          },
        },
        get = {
          description = "Retrieves a query.",
          flatPath = "queries/{queryId}",
          httpMethod = "GET",
          id = "doubleclickbidmanager.queries.get",
          parameterOrder = {
            "queryId",
          },
          parameters = {
            queryId = {
              description = "Required. ID of query to retrieve.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "queries/{queryId}",
          response = {
            ["$ref"] = "Query",
          },
          scopes = {
            "https://www.googleapis.com/auth/doubleclickbidmanager",
          },
        },
        list = {
          description = "Lists queries created by the current user.",
          flatPath = "queries",
          httpMethod = "GET",
          id = "doubleclickbidmanager.queries.list",
          parameterOrder = {},
          parameters = {
            orderBy = {
              description = "Name of a field used to order results. The default sorting order is ascending. To specify descending order for a field, append a \" desc\" suffix. For example \"metadata.title desc\". Sorting is only supported for the following fields: * `queryId` * `metadata.title`",
              location = "query",
              type = "string",
            },
            pageSize = {
              description = "Maximum number of results per page. Must be between `1` and `100`. Defaults to `100` if unspecified.",
              format = "int32",
              location = "query",
              type = "integer",
            },
            pageToken = {
              description = "A page token, received from a previous list call. Provide this to retrieve the subsequent page of queries.",
              location = "query",
              type = "string",
            },
          },
          path = "queries",
          response = {
            ["$ref"] = "ListQueriesResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/doubleclickbidmanager",
          },
        },
        run = {
          description = "Runs a stored query to generate a report.",
          flatPath = "queries/{queryId}:run",
          httpMethod = "POST",
          id = "doubleclickbidmanager.queries.run",
          parameterOrder = {
            "queryId",
          },
          parameters = {
            queryId = {
              description = "Required. ID of query to run.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
            synchronous = {
              description = "Whether the query should be run synchronously. When true, this method will not return until the query has finished running. When false or not specified, this method will return immediately.",
              location = "query",
              type = "boolean",
            },
          },
          path = "queries/{queryId}:run",
          request = {
            ["$ref"] = "RunQueryRequest",
          },
          response = {
            ["$ref"] = "Report",
          },
          scopes = {
            "https://www.googleapis.com/auth/doubleclickbidmanager",
          },
        },
      },
      resources = {
        reports = {
          methods = {
            get = {
              description = "Retrieves a report.",
              flatPath = "queries/{queryId}/reports/{reportId}",
              httpMethod = "GET",
              id = "doubleclickbidmanager.queries.reports.get",
              parameterOrder = {
                "queryId",
                "reportId",
              },
              parameters = {
                queryId = {
                  description = "Required. ID of the query the report is associated with.",
                  format = "int64",
                  location = "path",
                  required = true,
                  type = "string",
                },
                reportId = {
                  description = "Required. ID of the report to retrieve.",
                  format = "int64",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "queries/{queryId}/reports/{reportId}",
              response = {
                ["$ref"] = "Report",
              },
              scopes = {
                "https://www.googleapis.com/auth/doubleclickbidmanager",
              },
            },
            list = {
              description = "Lists reports associated with a query.",
              flatPath = "queries/{queryId}/reports",
              httpMethod = "GET",
              id = "doubleclickbidmanager.queries.reports.list",
              parameterOrder = {
                "queryId",
              },
              parameters = {
                orderBy = {
                  description = "Name of a field used to order results. The default sorting order is ascending. To specify descending order for a field, append a \" desc\" suffix. For example \"key.reportId desc\". Sorting is only supported for the following fields: * `key.reportId`",
                  location = "query",
                  type = "string",
                },
                pageSize = {
                  description = "Maximum number of results per page. Must be between `1` and `100`. Defaults to `100` if unspecified.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "A page token, received from a previous list call. Provide this to retrieve the subsequent page of reports.",
                  location = "query",
                  type = "string",
                },
                queryId = {
                  description = "Required. ID of the query with which the reports are associated.",
                  format = "int64",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "queries/{queryId}/reports",
              response = {
                ["$ref"] = "ListReportsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/doubleclickbidmanager",
              },
            },
          },
        },
      },
    },
  },
  revision = "20230104",
  rootUrl = "https://doubleclickbidmanager.googleapis.com/",
  schemas = {
    ChannelGrouping = {
      description = "A channel grouping defines a set of rules that can be used to categorize events in a path report.",
      id = "ChannelGrouping",
      properties = {
        fallbackName = {
          description = "The name to apply to an event that does not match any of the rules in the channel grouping.",
          type = "string",
        },
        name = {
          description = "Channel Grouping name.",
          type = "string",
        },
        rules = {
          description = "Rules within Channel Grouping. There is a limit of 100 rules that can be set per channel grouping.",
          items = {
            ["$ref"] = "Rule",
          },
          type = "array",
        },
      },
      type = "object",
    },
    DataRange = {
      description = "Report data range.",
      id = "DataRange",
      properties = {
        customEndDate = {
          ["$ref"] = "Date",
          description = "The ending date for the data that is shown in the report. Note, `customEndDate` is required if `range` is `CUSTOM_DATES` and ignored otherwise.",
        },
        customStartDate = {
          ["$ref"] = "Date",
          description = "The starting data for the data that is shown in the report. Note, `customStartDate` is required if `range` is `CUSTOM_DATES` and ignored otherwise.",
        },
        range = {
          description = "Report data range used to generate the report.",
          enum = {
            "RANGE_UNSPECIFIED",
            "CUSTOM_DATES",
            "CURRENT_DAY",
            "PREVIOUS_DAY",
            "WEEK_TO_DATE",
            "MONTH_TO_DATE",
            "QUARTER_TO_DATE",
            "YEAR_TO_DATE",
            "PREVIOUS_WEEK",
            "PREVIOUS_MONTH",
            "PREVIOUS_QUARTER",
            "PREVIOUS_YEAR",
            "LAST_7_DAYS",
            "LAST_30_DAYS",
            "LAST_90_DAYS",
            "LAST_365_DAYS",
            "ALL_TIME",
            "LAST_14_DAYS",
            "LAST_60_DAYS",
          },
          enumDescriptions = {
            "Default value when range is not specified or is unknown in this version.",
            "Custom range specified by custom_start_date and custom_end_date fields.",
            "Current day.",
            "Previous day.",
            "All days, including the current day, since the most recent Sunday.",
            "All days, including the current day, since the start of the current month.",
            "All days, including the current day, since the start of the current quarter.",
            "All days, including the current day, since the start of the current calendar year.",
            "The previous completed week, beginning from Sunday.",
            "The previous completed calendar month.",
            "The previous completed quarter.",
            "The previous completed calendar year.",
            "The previous 7 days, excluding the current day.",
            "The previous 30 days, excluding the current day.",
            "The previous 90 days, excluding the current day.",
            "The previous 365 days, excluding the current day.",
            "All time for which data is available, excluding the current day.",
            "The previous 14 days, excluding the current day.",
            "The previous 60 days, excluding the current day.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    Date = {
      description = "Represents a whole or partial calendar date, such as a birthday. The time of day and time zone are either specified elsewhere or are insignificant. The date is relative to the Gregorian Calendar. This can represent one of the following: * A full date, with non-zero year, month, and day values. * A month and day, with a zero year (for example, an anniversary). * A year on its own, with a zero month and a zero day. * A year and month, with a zero day (for example, a credit card expiration date). Related types: * google.type.TimeOfDay * google.type.DateTime * google.protobuf.Timestamp",
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
    DisjunctiveMatchStatement = {
      description = "DisjunctiveMatchStatement that OR's all contained filters.",
      id = "DisjunctiveMatchStatement",
      properties = {
        eventFilters = {
          description = "Filters. There is a limit of 100 filters that can be set per disjunctive match statement.",
          items = {
            ["$ref"] = "EventFilter",
          },
          type = "array",
        },
      },
      type = "object",
    },
    EventFilter = {
      description = "Defines the type of filter to be applied to the path, a DV360 event dimension filter.",
      id = "EventFilter",
      properties = {
        dimensionFilter = {
          ["$ref"] = "PathQueryOptionsFilter",
          description = "Filter on a dimension.",
        },
      },
      type = "object",
    },
    FilterPair = {
      description = "Filter used to match traffic data in your report.",
      id = "FilterPair",
      properties = {
        type = {
          description = "Filter type.",
          type = "string",
        },
        value = {
          description = "Filter value.",
          type = "string",
        },
      },
      type = "object",
    },
    ListQueriesResponse = {
      id = "ListQueriesResponse",
      properties = {
        nextPageToken = {
          description = "A token, which can be sent as page_token to retrieve the next page of queries. If this field is omitted, there are no subsequent pages.",
          type = "string",
        },
        queries = {
          description = "The list of queries.",
          items = {
            ["$ref"] = "Query",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ListReportsResponse = {
      id = "ListReportsResponse",
      properties = {
        nextPageToken = {
          description = "A token, which can be sent as page_token to retrieve the next page of reports. If this field is omitted, there are no subsequent pages.",
          type = "string",
        },
        reports = {
          description = "Retrieved reports.",
          items = {
            ["$ref"] = "Report",
          },
          type = "array",
        },
      },
      type = "object",
    },
    Options = {
      description = "Additional query options.",
      id = "Options",
      properties = {
        includeOnlyTargetedUserLists = {
          description = "Set to true and filter your report by `FILTER_INSERTION_ORDER` or `FILTER_LINE_ITEM` to include data for audience lists specifically targeted by those items.",
          type = "boolean",
        },
        pathQueryOptions = {
          ["$ref"] = "PathQueryOptions",
          description = "Options that contain Path Filters and Custom Channel Groupings.",
        },
      },
      type = "object",
    },
    Parameters = {
      description = "Parameters of a query or report.",
      id = "Parameters",
      properties = {
        filters = {
          description = "Filters used to match traffic data in your report.",
          items = {
            ["$ref"] = "FilterPair",
          },
          type = "array",
        },
        groupBys = {
          description = "Data is grouped by the filters listed in this field.",
          items = {
            type = "string",
          },
          type = "array",
        },
        metrics = {
          description = "Metrics to include as columns in your report.",
          items = {
            type = "string",
          },
          type = "array",
        },
        options = {
          ["$ref"] = "Options",
          description = "Additional query options.",
        },
        type = {
          description = "The type of the report. The type of the report will dictate what dimesions, filters, and metrics can be used.",
          enum = {
            "REPORT_TYPE_UNSPECIFIED",
            "STANDARD",
            "INVENTORY_AVAILABILITY",
            "AUDIENCE_COMPOSITION",
            "FLOODLIGHT",
            "YOUTUBE",
            "GRP",
            "YOUTUBE_PROGRAMMATIC_GUARANTEED",
            "REACH",
            "UNIQUE_REACH_AUDIENCE",
            "FULL_PATH",
            "PATH_ATTRIBUTION",
          },
          enumDescriptions = {
            "Default value when report type is not specified or is unknown in this version.",
            "Standard report.",
            "Inventory Availability report.",
            "Audience Composition report.",
            "Floodlight report.",
            "YouTube report.",
            "GRP report.",
            "YouTube Programmatic Guaranteed report.",
            "Reach report.",
            "Unique Reach Audience report.",
            "Full Path report.",
            "Path Attribution report.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    PathFilter = {
      description = "Path filters specify which paths to include in a report. A path is the result of combining DV360 events based on User ID to create a workflow of users' actions. When a path filter is set, the resulting report will only include paths that match the specified event at the specified position. All other paths will be excluded.",
      id = "PathFilter",
      properties = {
        eventFilters = {
          description = "Filter on an event to be applied to some part of the path.",
          items = {
            ["$ref"] = "EventFilter",
          },
          type = "array",
        },
        pathMatchPosition = {
          description = "The position of the path the filter should match to (first, last, or any event in path).",
          enum = {
            "PATH_MATCH_POSITION_UNSPECIFIED",
            "ANY",
            "FIRST",
            "LAST",
          },
          enumDescriptions = {
            "Default value when path match position is not specified or is unknown in this version.",
            "Any position in the path.",
            "The first position in the path.",
            "The last position in the path.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    PathQueryOptions = {
      description = "Path Query Options for Report Options.",
      id = "PathQueryOptions",
      properties = {
        channelGrouping = {
          ["$ref"] = "ChannelGrouping",
          description = "Custom Channel Groupings.",
        },
        pathFilters = {
          description = "Path Filters. There is a limit of 100 path filters that can be set per report.",
          items = {
            ["$ref"] = "PathFilter",
          },
          type = "array",
        },
      },
      type = "object",
    },
    PathQueryOptionsFilter = {
      description = "Dimension filter on path events.",
      id = "PathQueryOptionsFilter",
      properties = {
        filter = {
          description = "Dimension the filter is applied to.",
          type = "string",
        },
        match = {
          description = "Match logic of the filter.",
          enum = {
            "UNKNOWN",
            "EXACT",
            "PARTIAL",
            "BEGINS_WITH",
            "WILDCARD_EXPRESSION",
          },
          enumDescriptions = {
            "Default value when match is not specified or is unknown in this version.",
            "Matches a value exactly.",
            "Matches a value partially.",
            "Begins with a value.",
            "Matches a value, utilizing wildcard character logic in the value.",
          },
          type = "string",
        },
        values = {
          description = "Values to filter on.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    Query = {
      description = "Represents a query.",
      id = "Query",
      properties = {
        metadata = {
          ["$ref"] = "QueryMetadata",
          description = "Query metadata.",
        },
        params = {
          ["$ref"] = "Parameters",
          description = "Query parameters.",
        },
        queryId = {
          description = "Output only. Query ID.",
          format = "int64",
          readOnly = true,
          type = "string",
        },
        schedule = {
          ["$ref"] = "QuerySchedule",
          description = "Information on how often and when to run a query. If `ONE_TIME` is set to the frequency field, the query will only be run at the time of creation.",
        },
      },
      type = "object",
    },
    QueryMetadata = {
      description = "Query metadata.",
      id = "QueryMetadata",
      properties = {
        dataRange = {
          ["$ref"] = "DataRange",
          description = "Range of report data. All reports will be based on the same time zone as used by the advertiser.",
        },
        format = {
          description = "Format of the generated report.",
          enum = {
            "FORMAT_UNSPECIFIED",
            "CSV",
            "XLSX",
          },
          enumDescriptions = {
            "Default value when format is not specified or is unknown in this version.",
            "CSV.",
            "Excel.",
          },
          type = "string",
        },
        sendNotification = {
          description = "Whether to send an email notification when a report is ready. Defaults to false.",
          type = "boolean",
        },
        shareEmailAddress = {
          description = "List of email addresses which are sent email notifications when the report is finished. Separate from send_notification.",
          items = {
            type = "string",
          },
          type = "array",
        },
        title = {
          description = "Query title. It is used to name the reports generated from this query.",
          type = "string",
        },
      },
      type = "object",
    },
    QuerySchedule = {
      description = "Information on when and how frequently to run a query.",
      id = "QuerySchedule",
      properties = {
        endDate = {
          ["$ref"] = "Date",
          description = "Date to periodically run the query until. Not applicable to `ONE_TIME` frequency.",
        },
        frequency = {
          description = "How often the query is run.",
          enum = {
            "FREQUENCY_UNSPECIFIED",
            "ONE_TIME",
            "DAILY",
            "WEEKLY",
            "SEMI_MONTHLY",
            "MONTHLY",
            "QUARTERLY",
            "YEARLY",
          },
          enumDescriptions = {
            "Default value when frequency is not specified or is unknown in this version.",
            "Only once.",
            "Once a day.",
            "Once a week.",
            "Twice a month.",
            "Once a month.",
            "Once a quarter",
            "Once a year.",
          },
          type = "string",
        },
        nextRunTimezoneCode = {
          description = "Canonical timezone code for report generation time. Defaults to `America/New_York`.",
          type = "string",
        },
        startDate = {
          ["$ref"] = "Date",
          description = "When to start running the query. Not applicable to `ONE_TIME` frequency.",
        },
      },
      type = "object",
    },
    Report = {
      description = "Represents a report.",
      id = "Report",
      properties = {
        key = {
          ["$ref"] = "ReportKey",
          description = "Key used to identify a report.",
        },
        metadata = {
          ["$ref"] = "ReportMetadata",
          description = "Report metadata.",
        },
        params = {
          ["$ref"] = "Parameters",
          description = "Report parameters.",
        },
      },
      type = "object",
    },
    ReportKey = {
      description = "Key used to identify a report.",
      id = "ReportKey",
      properties = {
        queryId = {
          description = "Output only. Query ID.",
          format = "int64",
          readOnly = true,
          type = "string",
        },
        reportId = {
          description = "Output only. Report ID.",
          format = "int64",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    ReportMetadata = {
      description = "Report metadata.",
      id = "ReportMetadata",
      properties = {
        googleCloudStoragePath = {
          description = "Output only. The path to the location in Google Cloud Storage where the report is stored.",
          readOnly = true,
          type = "string",
        },
        reportDataEndDate = {
          ["$ref"] = "Date",
          description = "The ending time for the data that is shown in the report.",
        },
        reportDataStartDate = {
          ["$ref"] = "Date",
          description = "The starting time for the data that is shown in the report.",
        },
        status = {
          ["$ref"] = "ReportStatus",
          description = "Report status.",
        },
      },
      type = "object",
    },
    ReportStatus = {
      description = "Report status.",
      id = "ReportStatus",
      properties = {
        finishTime = {
          description = "Output only. The time when this report either completed successfully or failed.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        format = {
          description = "The file type of the report.",
          enum = {
            "FORMAT_UNSPECIFIED",
            "CSV",
            "XLSX",
          },
          enumDescriptions = {
            "Default value when format is not specified or is unknown in this version.",
            "CSV.",
            "Excel.",
          },
          type = "string",
        },
        state = {
          description = "Output only. The state of the report.",
          enum = {
            "STATE_UNSPECIFIED",
            "QUEUED",
            "RUNNING",
            "DONE",
            "FAILED",
          },
          enumDescriptions = {
            "Default value when state is not specified or is unknown in this version.",
            "The report is queued to run.",
            "The report is currently running.",
            "The report has finished running successfully.",
            "The report has finished running in failure.",
          },
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    Rule = {
      description = "A Rule defines a name, and a boolean expression in [conjunctive normal form] (http://mathworld.wolfram.com/ConjunctiveNormalForm.html){.external} that can be applied to a path event to determine if that name should be applied.",
      id = "Rule",
      properties = {
        disjunctiveMatchStatements = {
          description = "DisjunctiveMatchStatements within a Rule. DisjunctiveMatchStatement OR's all contained filters.",
          items = {
            ["$ref"] = "DisjunctiveMatchStatement",
          },
          type = "array",
        },
        name = {
          description = "Rule name.",
          type = "string",
        },
      },
      type = "object",
    },
    RunQueryRequest = {
      description = "Request to run a stored query to generate a report.",
      id = "RunQueryRequest",
      properties = {
        dataRange = {
          ["$ref"] = "DataRange",
          description = "Report data range used to generate the report. If unspecified, the original parent query's data range is used.",
        },
      },
      type = "object",
    },
  },
  servicePath = "v2/",
  title = "DoubleClick Bid Manager API",
  version = "v2",
}
