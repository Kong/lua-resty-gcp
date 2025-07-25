return {
  auth = {
    oauth2 = {
      scopes = {
        ["https://www.googleapis.com/auth/analytics"] = {
          description = "View and manage your Google Analytics data",
        },
        ["https://www.googleapis.com/auth/analytics.readonly"] = {
          description = "See and download your Google Analytics data",
        },
      },
    },
  },
  basePath = "",
  baseUrl = "https://analyticsreporting.googleapis.com/",
  batchPath = "batch",
  canonicalName = "AnalyticsReporting",
  description = "Accesses Analytics report data.",
  discoveryVersion = "v1",
  documentationLink = "https://developers.google.com/analytics/devguides/reporting/core/v4/",
  fullyEncodeReservedExpansion = true,
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "analyticsreporting:v4",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://analyticsreporting.mtls.googleapis.com/",
  name = "analyticsreporting",
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
    reports = {
      methods = {
        batchGet = {
          description = "Returns the Analytics data.",
          flatPath = "v4/reports:batchGet",
          httpMethod = "POST",
          id = "analyticsreporting.reports.batchGet",
          parameterOrder = {},
          parameters = {},
          path = "v4/reports:batchGet",
          request = {
            ["$ref"] = "GetReportsRequest",
          },
          response = {
            ["$ref"] = "GetReportsResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/analytics",
            "https://www.googleapis.com/auth/analytics.readonly",
          },
        },
      },
    },
    userActivity = {
      methods = {
        search = {
          description = "Returns User Activity data.",
          flatPath = "v4/userActivity:search",
          httpMethod = "POST",
          id = "analyticsreporting.userActivity.search",
          parameterOrder = {},
          parameters = {},
          path = "v4/userActivity:search",
          request = {
            ["$ref"] = "SearchUserActivityRequest",
          },
          response = {
            ["$ref"] = "SearchUserActivityResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/analytics",
            "https://www.googleapis.com/auth/analytics.readonly",
          },
        },
      },
    },
  },
  revision = "20221104",
  rootUrl = "https://analyticsreporting.googleapis.com/",
  schemas = {
    Activity = {
      description = "An Activity represents data for an activity of a user. Note that an Activity is different from a hit. A hit might result in multiple Activity's. For example, if a hit includes a transaction and a goal completion, there will be two Activity protos for this hit, one for ECOMMERCE and one for GOAL. Conversely, multiple hits can also construct one Activity. In classic e-commerce, data for one transaction might be sent through multiple hits. These hits will be merged into one ECOMMERCE Activity.",
      id = "Activity",
      properties = {
        activityTime = {
          description = "Timestamp of the activity. If activities for a visit cross midnight and occur in two separate dates, then two sessions (one per date) share the session identifier. For example, say session ID 113472 has activity within 2019-08-20, and session ID 243742 has activity within 2019-08-25 and 2019-08-26. Session ID 113472 is one session, and session ID 243742 is two sessions.",
          format = "google-datetime",
          type = "string",
        },
        activityType = {
          description = "Type of this activity.",
          enum = {
            "ACTIVITY_TYPE_UNSPECIFIED",
            "PAGEVIEW",
            "SCREENVIEW",
            "GOAL",
            "ECOMMERCE",
            "EVENT",
          },
          enumDescriptions = {
            "ActivityType will never have this value in the response. Using this type in the request will result in an error.",
            "Used when the activity resulted out of a visitor viewing a page.",
            "Used when the activity resulted out of a visitor using an application on a mobile device.",
            "Used to denote that a goal type activity.",
            "An e-commerce transaction was performed by the visitor on the page.",
            "Used when the activity is an event.",
          },
          type = "string",
        },
        appview = {
          ["$ref"] = "ScreenviewData",
          description = "This will be set if `activity_type` equals `SCREEN_VIEW`.",
        },
        campaign = {
          description = "For manual campaign tracking, it is the value of the utm_campaign campaign tracking parameter. For AdWords autotagging, it is the name(s) of the online ad campaign(s) you use for the property. If you use neither, its value is (not set).",
          type = "string",
        },
        channelGrouping = {
          description = "The Channel Group associated with an end user's session for this View (defined by the View's Channel Groupings).",
          type = "string",
        },
        customDimension = {
          description = "A list of all custom dimensions associated with this activity.",
          items = {
            ["$ref"] = "CustomDimension",
          },
          type = "array",
        },
        ecommerce = {
          ["$ref"] = "EcommerceData",
          description = "This will be set if `activity_type` equals `ECOMMERCE`.",
        },
        event = {
          ["$ref"] = "EventData",
          description = "This field contains all the details pertaining to an event and will be set if `activity_type` equals `EVENT`.",
        },
        goals = {
          ["$ref"] = "GoalSetData",
          description = "This field contains a list of all the goals that were reached in this activity when `activity_type` equals `GOAL`.",
        },
        hostname = {
          description = "The hostname from which the tracking request was made.",
          type = "string",
        },
        keyword = {
          description = "For manual campaign tracking, it is the value of the utm_term campaign tracking parameter. For AdWords traffic, it contains the best matching targeting criteria. For the display network, where multiple targeting criteria could have caused the ad to show up, it returns the best matching targeting criteria as selected by Ads. This could be display_keyword, site placement, boomuserlist, user_interest, age, or gender. Otherwise its value is (not set).",
          type = "string",
        },
        landingPagePath = {
          description = "The first page in users' sessions, or the landing page.",
          type = "string",
        },
        medium = {
          description = "The type of referrals. For manual campaign tracking, it is the value of the utm_medium campaign tracking parameter. For AdWords autotagging, it is cpc. If users came from a search engine detected by Google Analytics, it is organic. If the referrer is not a search engine, it is referral. If users came directly to the property and document.referrer is empty, its value is (none).",
          type = "string",
        },
        pageview = {
          ["$ref"] = "PageviewData",
          description = "This will be set if `activity_type` equals `PAGEVIEW`. This field contains all the details about the visitor and the page that was visited.",
        },
        source = {
          description = "The source of referrals. For manual campaign tracking, it is the value of the utm_source campaign tracking parameter. For AdWords autotagging, it is google. If you use neither, it is the domain of the source (e.g., document.referrer) referring the users. It may also contain a port address. If users arrived without a referrer, its value is (direct).",
          type = "string",
        },
      },
      type = "object",
    },
    Cohort = {
      description = "Defines a cohort. A cohort is a group of users who share a common characteristic. For example, all users with the same acquisition date belong to the same cohort.",
      id = "Cohort",
      properties = {
        dateRange = {
          ["$ref"] = "DateRange",
          description = "This is used for `FIRST_VISIT_DATE` cohort, the cohort selects users whose first visit date is between start date and end date defined in the DateRange. The date ranges should be aligned for cohort requests. If the request contains `ga:cohortNthDay` it should be exactly one day long, if `ga:cohortNthWeek` it should be aligned to the week boundary (starting at Sunday and ending Saturday), and for `ga:cohortNthMonth` the date range should be aligned to the month (starting at the first and ending on the last day of the month). For LTV requests there are no such restrictions. You do not need to supply a date range for the `reportsRequest.dateRanges` field.",
        },
        name = {
          description = "A unique name for the cohort. If not defined name will be auto-generated with values cohort_[1234...].",
          type = "string",
        },
        type = {
          description = "Type of the cohort. The only supported type as of now is `FIRST_VISIT_DATE`. If this field is unspecified the cohort is treated as `FIRST_VISIT_DATE` type cohort.",
          enum = {
            "UNSPECIFIED_COHORT_TYPE",
            "FIRST_VISIT_DATE",
          },
          enumDescriptions = {
            "If unspecified it's treated as `FIRST_VISIT_DATE`.",
            "Cohorts that are selected based on first visit date.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    CohortGroup = {
      description = "Defines a cohort group. For example: \"cohortGroup\": { \"cohorts\": [{ \"name\": \"cohort 1\", \"type\": \"FIRST_VISIT_DATE\", \"dateRange\": { \"startDate\": \"2015-08-01\", \"endDate\": \"2015-08-01\" } },{ \"name\": \"cohort 2\" \"type\": \"FIRST_VISIT_DATE\" \"dateRange\": { \"startDate\": \"2015-07-01\", \"endDate\": \"2015-07-01\" } }] }",
      id = "CohortGroup",
      properties = {
        cohorts = {
          description = "The definition for the cohort.",
          items = {
            ["$ref"] = "Cohort",
          },
          type = "array",
        },
        lifetimeValue = {
          description = "Enable Life Time Value (LTV). LTV measures lifetime value for users acquired through different channels. Please see: [Cohort Analysis](https://support.google.com/analytics/answer/6074676) and [Lifetime Value](https://support.google.com/analytics/answer/6182550) If the value of lifetimeValue is false: - The metric values are similar to the values in the web interface cohort report. - The cohort definition date ranges must be aligned to the calendar week and month. i.e. while requesting `ga:cohortNthWeek` the `startDate` in the cohort definition should be a Sunday and the `endDate` should be the following Saturday, and for `ga:cohortNthMonth`, the `startDate` should be the 1st of the month and `endDate` should be the last day of the month. When the lifetimeValue is true: - The metric values will correspond to the values in the web interface LifeTime value report. - The Lifetime Value report shows you how user value (Revenue) and engagement (Appviews, Goal Completions, Sessions, and Session Duration) grow during the 90 days after a user is acquired. - The metrics are calculated as a cumulative average per user per the time increment. - The cohort definition date ranges need not be aligned to the calendar week and month boundaries. - The `viewId` must be an [app view ID](https://support.google.com/analytics/answer/2649553#WebVersusAppViews)",
          type = "boolean",
        },
      },
      type = "object",
    },
    ColumnHeader = {
      description = "Column headers.",
      id = "ColumnHeader",
      properties = {
        dimensions = {
          description = "The dimension names in the response.",
          items = {
            type = "string",
          },
          type = "array",
        },
        metricHeader = {
          ["$ref"] = "MetricHeader",
          description = "Metric headers for the metrics in the response.",
        },
      },
      type = "object",
    },
    CustomDimension = {
      description = "Custom dimension.",
      id = "CustomDimension",
      properties = {
        index = {
          description = "Slot number of custom dimension.",
          format = "int32",
          type = "integer",
        },
        value = {
          description = "Value of the custom dimension. Default value (i.e. empty string) indicates clearing sesion/visitor scope custom dimension value.",
          type = "string",
        },
      },
      type = "object",
    },
    DateRange = {
      description = "A contiguous set of days: startDate, startDate + 1 day, ..., endDate. The start and end dates are specified in [ISO8601](https://en.wikipedia.org/wiki/ISO_8601) date format `YYYY-MM-DD`.",
      id = "DateRange",
      properties = {
        endDate = {
          description = "The end date for the query in the format `YYYY-MM-DD`.",
          type = "string",
        },
        startDate = {
          description = "The start date for the query in the format `YYYY-MM-DD`.",
          type = "string",
        },
      },
      type = "object",
    },
    DateRangeValues = {
      description = "Used to return a list of metrics for a single DateRange / dimension combination",
      id = "DateRangeValues",
      properties = {
        pivotValueRegions = {
          description = "The values of each pivot region.",
          items = {
            ["$ref"] = "PivotValueRegion",
          },
          type = "array",
        },
        values = {
          description = "Each value corresponds to each Metric in the request.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    Dimension = {
      description = "[Dimensions](https://support.google.com/analytics/answer/1033861) are attributes of your data. For example, the dimension `ga:city` indicates the city, for example, \"Paris\" or \"New York\", from which a session originates.",
      id = "Dimension",
      properties = {
        histogramBuckets = {
          description = "If non-empty, we place dimension values into buckets after string to int64. Dimension values that are not the string representation of an integral value will be converted to zero. The bucket values have to be in increasing order. Each bucket is closed on the lower end, and open on the upper end. The \"first\" bucket includes all values less than the first boundary, the \"last\" bucket includes all values up to infinity. Dimension values that fall in a bucket get transformed to a new dimension value. For example, if one gives a list of \"0, 1, 3, 4, 7\", then we return the following buckets: - bucket #1: values < 0, dimension value \"<0\" - bucket #2: values in [0,1), dimension value \"0\" - bucket #3: values in [1,3), dimension value \"1-2\" - bucket #4: values in [3,4), dimension value \"3\" - bucket #5: values in [4,7), dimension value \"4-6\" - bucket #6: values >= 7, dimension value \"7+\" NOTE: If you are applying histogram mutation on any dimension, and using that dimension in sort, you will want to use the sort type `HISTOGRAM_BUCKET` for that purpose. Without that the dimension values will be sorted according to dictionary (lexicographic) order. For example the ascending dictionary order is: \"<50\", \"1001+\", \"121-1000\", \"50-120\" And the ascending `HISTOGRAM_BUCKET` order is: \"<50\", \"50-120\", \"121-1000\", \"1001+\" The client has to explicitly request `\"orderType\": \"HISTOGRAM_BUCKET\"` for a histogram-mutated dimension.",
          items = {
            format = "int64",
            type = "string",
          },
          type = "array",
        },
        name = {
          description = "Name of the dimension to fetch, for example `ga:browser`.",
          type = "string",
        },
      },
      type = "object",
    },
    DimensionFilter = {
      description = "Dimension filter specifies the filtering options on a dimension.",
      id = "DimensionFilter",
      properties = {
        caseSensitive = {
          description = "Should the match be case sensitive? Default is false.",
          type = "boolean",
        },
        dimensionName = {
          description = "The dimension to filter on. A DimensionFilter must contain a dimension.",
          type = "string",
        },
        expressions = {
          description = "Strings or regular expression to match against. Only the first value of the list is used for comparison unless the operator is `IN_LIST`. If `IN_LIST` operator, then the entire list is used to filter the dimensions as explained in the description of the `IN_LIST` operator.",
          items = {
            type = "string",
          },
          type = "array",
        },
        ["not"] = {
          description = "Logical `NOT` operator. If this boolean is set to true, then the matching dimension values will be excluded in the report. The default is false.",
          type = "boolean",
        },
        operator = {
          description = "How to match the dimension to the expression. The default is REGEXP.",
          enum = {
            "OPERATOR_UNSPECIFIED",
            "REGEXP",
            "BEGINS_WITH",
            "ENDS_WITH",
            "PARTIAL",
            "EXACT",
            "NUMERIC_EQUAL",
            "NUMERIC_GREATER_THAN",
            "NUMERIC_LESS_THAN",
            "IN_LIST",
          },
          enumDescriptions = {
            "If the match type is unspecified, it is treated as a `REGEXP`.",
            "The match expression is treated as a regular expression. All match types are not treated as regular expressions.",
            "Matches the value which begin with the match expression provided.",
            "Matches the values which end with the match expression provided.",
            "Substring match.",
            "The value should match the match expression entirely.",
            "Integer comparison filters. case sensitivity is ignored for these and the expression is assumed to be a string representing an integer. Failure conditions: - If expression is not a valid int64, the client should expect an error. - Input dimensions that are not valid int64 values will never match the filter.",
            "Checks if the dimension is numerically greater than the match expression. Read the description for `NUMERIC_EQUALS` for restrictions.",
            "Checks if the dimension is numerically less than the match expression. Read the description for `NUMERIC_EQUALS` for restrictions.",
            "This option is used to specify a dimension filter whose expression can take any value from a selected list of values. This helps avoiding evaluating multiple exact match dimension filters which are OR'ed for every single response row. For example: expressions: [\"A\", \"B\", \"C\"] Any response row whose dimension has it is value as A, B or C, matches this DimensionFilter.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    DimensionFilterClause = {
      description = "A group of dimension filters. Set the operator value to specify how the filters are logically combined.",
      id = "DimensionFilterClause",
      properties = {
        filters = {
          description = "The repeated set of filters. They are logically combined based on the operator specified.",
          items = {
            ["$ref"] = "DimensionFilter",
          },
          type = "array",
        },
        operator = {
          description = "The operator for combining multiple dimension filters. If unspecified, it is treated as an `OR`.",
          enum = {
            "OPERATOR_UNSPECIFIED",
            "OR",
            "AND",
          },
          enumDescriptions = {
            "Unspecified operator. It is treated as an `OR`.",
            "The logical `OR` operator.",
            "The logical `AND` operator.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    DynamicSegment = {
      description = "Dynamic segment definition for defining the segment within the request. A segment can select users, sessions or both.",
      id = "DynamicSegment",
      properties = {
        name = {
          description = "The name of the dynamic segment.",
          type = "string",
        },
        sessionSegment = {
          ["$ref"] = "SegmentDefinition",
          description = "Session Segment to select sessions to include in the segment.",
        },
        userSegment = {
          ["$ref"] = "SegmentDefinition",
          description = "User Segment to select users to include in the segment.",
        },
      },
      type = "object",
    },
    EcommerceData = {
      description = "E-commerce details associated with the user activity.",
      id = "EcommerceData",
      properties = {
        actionType = {
          description = "Action associated with this e-commerce action.",
          enum = {
            "UNKNOWN",
            "CLICK",
            "DETAILS_VIEW",
            "ADD_TO_CART",
            "REMOVE_FROM_CART",
            "CHECKOUT",
            "PAYMENT",
            "REFUND",
            "CHECKOUT_OPTION",
          },
          enumDescriptions = {
            "Action type is not known.",
            "Click through of product lists.",
            "Product detail views.",
            "Add product(s) to cart.",
            "Remove product(s) from cart.",
            "Check out.",
            "Completed purchase.",
            "Refund of purchase.",
            "Checkout options.",
          },
          type = "string",
        },
        ecommerceType = {
          description = "The type of this e-commerce activity.",
          enum = {
            "ECOMMERCE_TYPE_UNSPECIFIED",
            "CLASSIC",
            "ENHANCED",
          },
          enumDescriptions = {
            "Used when the e-commerce activity type is unspecified.",
            "Used when activity has classic (non-enhanced) e-commerce information.",
            "Used when activity has enhanced e-commerce information.",
          },
          type = "string",
        },
        products = {
          description = "Details of the products in this transaction.",
          items = {
            ["$ref"] = "ProductData",
          },
          type = "array",
        },
        transaction = {
          ["$ref"] = "TransactionData",
          description = "Transaction details of this e-commerce action.",
        },
      },
      type = "object",
    },
    EventData = {
      description = "Represents all the details pertaining to an event.",
      id = "EventData",
      properties = {
        eventAction = {
          description = "Type of interaction with the object. Eg: 'play'.",
          type = "string",
        },
        eventCategory = {
          description = "The object on the page that was interacted with. Eg: 'Video'.",
          type = "string",
        },
        eventCount = {
          description = "Number of such events in this activity.",
          format = "int64",
          type = "string",
        },
        eventLabel = {
          description = "Label attached with the event.",
          type = "string",
        },
        eventValue = {
          description = "Numeric value associated with the event.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    GetReportsRequest = {
      description = "The batch request containing multiple report request.",
      id = "GetReportsRequest",
      properties = {
        reportRequests = {
          description = "Requests, each request will have a separate response. There can be a maximum of 5 requests. All requests should have the same `dateRanges`, `viewId`, `segments`, `samplingLevel`, and `cohortGroup`.",
          items = {
            ["$ref"] = "ReportRequest",
          },
          type = "array",
        },
        useResourceQuotas = {
          description = "Enables [resource based quotas](/analytics/devguides/reporting/core/v4/limits-quotas#analytics_reporting_api_v4), (defaults to `False`). If this field is set to `True` the per view (profile) quotas are governed by the computational cost of the request. Note that using cost based quotas will higher enable sampling rates. (10 Million for `SMALL`, 100M for `LARGE`. See the [limits and quotas documentation](/analytics/devguides/reporting/core/v4/limits-quotas#analytics_reporting_api_v4) for details.",
          type = "boolean",
        },
      },
      type = "object",
    },
    GetReportsResponse = {
      description = "The main response class which holds the reports from the Reporting API `batchGet` call.",
      id = "GetReportsResponse",
      properties = {
        queryCost = {
          description = "The amount of resource quota tokens deducted to execute the query. Includes all responses.",
          format = "int32",
          type = "integer",
        },
        reports = {
          description = "Responses corresponding to each of the request.",
          items = {
            ["$ref"] = "Report",
          },
          type = "array",
        },
        resourceQuotasRemaining = {
          ["$ref"] = "ResourceQuotasRemaining",
          description = "The amount of resource quota remaining for the property.",
        },
      },
      type = "object",
    },
    GoalData = {
      description = "Represents all the details pertaining to a goal.",
      id = "GoalData",
      properties = {
        goalCompletionLocation = {
          description = "URL of the page where this goal was completed.",
          type = "string",
        },
        goalCompletions = {
          description = "Total number of goal completions in this activity.",
          format = "int64",
          type = "string",
        },
        goalIndex = {
          description = "This identifies the goal as configured for the profile.",
          format = "int32",
          type = "integer",
        },
        goalName = {
          description = "Name of the goal.",
          type = "string",
        },
        goalPreviousStep1 = {
          description = "URL of the page one step prior to the goal completion.",
          type = "string",
        },
        goalPreviousStep2 = {
          description = "URL of the page two steps prior to the goal completion.",
          type = "string",
        },
        goalPreviousStep3 = {
          description = "URL of the page three steps prior to the goal completion.",
          type = "string",
        },
        goalValue = {
          description = "Value in this goal.",
          format = "double",
          type = "number",
        },
      },
      type = "object",
    },
    GoalSetData = {
      description = "Represents a set of goals that were reached in an activity.",
      id = "GoalSetData",
      properties = {
        goals = {
          description = "All the goals that were reached in the current activity.",
          items = {
            ["$ref"] = "GoalData",
          },
          type = "array",
        },
      },
      type = "object",
    },
    Metric = {
      description = "[Metrics](https://support.google.com/analytics/answer/1033861) are the quantitative measurements. For example, the metric `ga:users` indicates the total number of users for the requested time period.",
      id = "Metric",
      properties = {
        alias = {
          description = "An alias for the metric expression is an alternate name for the expression. The alias can be used for filtering and sorting. This field is optional and is useful if the expression is not a single metric but a complex expression which cannot be used in filtering and sorting. The alias is also used in the response column header.",
          type = "string",
        },
        expression = {
          description = "A metric expression in the request. An expression is constructed from one or more metrics and numbers. Accepted operators include: Plus (+), Minus (-), Negation (Unary -), Divided by (/), Multiplied by (*), Parenthesis, Positive cardinal numbers (0-9), can include decimals and is limited to 1024 characters. Example `ga:totalRefunds/ga:users`, in most cases the metric expression is just a single metric name like `ga:users`. Adding mixed `MetricType` (E.g., `CURRENCY` + `PERCENTAGE`) metrics will result in unexpected results.",
          type = "string",
        },
        formattingType = {
          description = "Specifies how the metric expression should be formatted, for example `INTEGER`.",
          enum = {
            "METRIC_TYPE_UNSPECIFIED",
            "INTEGER",
            "FLOAT",
            "CURRENCY",
            "PERCENT",
            "TIME",
          },
          enumDescriptions = {
            "Metric type is unspecified.",
            "Integer metric.",
            "Float metric.",
            "Currency metric.",
            "Percentage metric.",
            "Time metric in `HH:MM:SS` format.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    MetricFilter = {
      description = "MetricFilter specifies the filter on a metric.",
      id = "MetricFilter",
      properties = {
        comparisonValue = {
          description = "The value to compare against.",
          type = "string",
        },
        metricName = {
          description = "The metric that will be filtered on. A metricFilter must contain a metric name. A metric name can be an alias earlier defined as a metric or it can also be a metric expression.",
          type = "string",
        },
        ["not"] = {
          description = "Logical `NOT` operator. If this boolean is set to true, then the matching metric values will be excluded in the report. The default is false.",
          type = "boolean",
        },
        operator = {
          description = "Is the metric `EQUAL`, `LESS_THAN` or `GREATER_THAN` the comparisonValue, the default is `EQUAL`. If the operator is `IS_MISSING`, checks if the metric is missing and would ignore the comparisonValue.",
          enum = {
            "OPERATOR_UNSPECIFIED",
            "EQUAL",
            "LESS_THAN",
            "GREATER_THAN",
            "IS_MISSING",
          },
          enumDescriptions = {
            "If the operator is not specified, it is treated as `EQUAL`.",
            "Should the value of the metric be exactly equal to the comparison value.",
            "Should the value of the metric be less than to the comparison value.",
            "Should the value of the metric be greater than to the comparison value.",
            "Validates if the metric is missing. Doesn't take comparisonValue into account.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    MetricFilterClause = {
      description = "Represents a group of metric filters. Set the operator value to specify how the filters are logically combined.",
      id = "MetricFilterClause",
      properties = {
        filters = {
          description = "The repeated set of filters. They are logically combined based on the operator specified.",
          items = {
            ["$ref"] = "MetricFilter",
          },
          type = "array",
        },
        operator = {
          description = "The operator for combining multiple metric filters. If unspecified, it is treated as an `OR`.",
          enum = {
            "OPERATOR_UNSPECIFIED",
            "OR",
            "AND",
          },
          enumDescriptions = {
            "Unspecified operator. It is treated as an `OR`.",
            "The logical `OR` operator.",
            "The logical `AND` operator.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    MetricHeader = {
      description = "The headers for the metrics.",
      id = "MetricHeader",
      properties = {
        metricHeaderEntries = {
          description = "Headers for the metrics in the response.",
          items = {
            ["$ref"] = "MetricHeaderEntry",
          },
          type = "array",
        },
        pivotHeaders = {
          description = "Headers for the pivots in the response.",
          items = {
            ["$ref"] = "PivotHeader",
          },
          type = "array",
        },
      },
      type = "object",
    },
    MetricHeaderEntry = {
      description = "Header for the metrics.",
      id = "MetricHeaderEntry",
      properties = {
        name = {
          description = "The name of the header.",
          type = "string",
        },
        type = {
          description = "The type of the metric, for example `INTEGER`.",
          enum = {
            "METRIC_TYPE_UNSPECIFIED",
            "INTEGER",
            "FLOAT",
            "CURRENCY",
            "PERCENT",
            "TIME",
          },
          enumDescriptions = {
            "Metric type is unspecified.",
            "Integer metric.",
            "Float metric.",
            "Currency metric.",
            "Percentage metric.",
            "Time metric in `HH:MM:SS` format.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    OrFiltersForSegment = {
      description = "A list of segment filters in the `OR` group are combined with the logical OR operator.",
      id = "OrFiltersForSegment",
      properties = {
        segmentFilterClauses = {
          description = "List of segment filters to be combined with a `OR` operator.",
          items = {
            ["$ref"] = "SegmentFilterClause",
          },
          type = "array",
        },
      },
      type = "object",
    },
    OrderBy = {
      description = "Specifies the sorting options.",
      id = "OrderBy",
      properties = {
        fieldName = {
          description = "The field which to sort by. The default sort order is ascending. Example: `ga:browser`. Note, that you can only specify one field for sort here. For example, `ga:browser, ga:city` is not valid.",
          type = "string",
        },
        orderType = {
          description = "The order type. The default orderType is `VALUE`.",
          enum = {
            "ORDER_TYPE_UNSPECIFIED",
            "VALUE",
            "DELTA",
            "SMART",
            "HISTOGRAM_BUCKET",
            "DIMENSION_AS_INTEGER",
          },
          enumDescriptions = {
            "Unspecified order type will be treated as sort based on value.",
            "The sort order is based on the value of the chosen column; looks only at the first date range.",
            "The sort order is based on the difference of the values of the chosen column between the first two date ranges. Usable only if there are exactly two date ranges.",
            "The sort order is based on weighted value of the chosen column. If column has n/d format, then weighted value of this ratio will be `(n + totals.n)/(d + totals.d)` Usable only for metrics that represent ratios.",
            "Histogram order type is applicable only to dimension columns with non-empty histogram-buckets.",
            "If the dimensions are fixed length numbers, ordinary sort would just work fine. `DIMENSION_AS_INTEGER` can be used if the dimensions are variable length numbers.",
          },
          type = "string",
        },
        sortOrder = {
          description = "The sorting order for the field.",
          enum = {
            "SORT_ORDER_UNSPECIFIED",
            "ASCENDING",
            "DESCENDING",
          },
          enumDescriptions = {
            "If the sort order is unspecified, the default is ascending.",
            "Ascending sort. The field will be sorted in an ascending manner.",
            "Descending sort. The field will be sorted in a descending manner.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    PageviewData = {
      description = "Represents details collected when the visitor views a page.",
      id = "PageviewData",
      properties = {
        pagePath = {
          description = "The URL of the page that the visitor viewed.",
          type = "string",
        },
        pageTitle = {
          description = "The title of the page that the visitor viewed.",
          type = "string",
        },
      },
      type = "object",
    },
    Pivot = {
      description = "The Pivot describes the pivot section in the request. The Pivot helps rearrange the information in the table for certain reports by pivoting your data on a second dimension.",
      id = "Pivot",
      properties = {
        dimensionFilterClauses = {
          description = "DimensionFilterClauses are logically combined with an `AND` operator: only data that is included by all these DimensionFilterClauses contributes to the values in this pivot region. Dimension filters can be used to restrict the columns shown in the pivot region. For example if you have `ga:browser` as the requested dimension in the pivot region, and you specify key filters to restrict `ga:browser` to only \"IE\" or \"Firefox\", then only those two browsers would show up as columns.",
          items = {
            ["$ref"] = "DimensionFilterClause",
          },
          type = "array",
        },
        dimensions = {
          description = "A list of dimensions to show as pivot columns. A Pivot can have a maximum of 4 dimensions. Pivot dimensions are part of the restriction on the total number of dimensions allowed in the request.",
          items = {
            ["$ref"] = "Dimension",
          },
          type = "array",
        },
        maxGroupCount = {
          description = "Specifies the maximum number of groups to return. The default value is 10, also the maximum value is 1,000.",
          format = "int32",
          type = "integer",
        },
        metrics = {
          description = "The pivot metrics. Pivot metrics are part of the restriction on total number of metrics allowed in the request.",
          items = {
            ["$ref"] = "Metric",
          },
          type = "array",
        },
        startGroup = {
          description = "If k metrics were requested, then the response will contain some data-dependent multiple of k columns in the report. E.g., if you pivoted on the dimension `ga:browser` then you'd get k columns for \"Firefox\", k columns for \"IE\", k columns for \"Chrome\", etc. The ordering of the groups of columns is determined by descending order of \"total\" for the first of the k values. Ties are broken by lexicographic ordering of the first pivot dimension, then lexicographic ordering of the second pivot dimension, and so on. E.g., if the totals for the first value for Firefox, IE, and Chrome were 8, 2, 8, respectively, the order of columns would be Chrome, Firefox, IE. The following let you choose which of the groups of k columns are included in the response.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    PivotHeader = {
      description = "The headers for each of the pivot sections defined in the request.",
      id = "PivotHeader",
      properties = {
        pivotHeaderEntries = {
          description = "A single pivot section header.",
          items = {
            ["$ref"] = "PivotHeaderEntry",
          },
          type = "array",
        },
        totalPivotGroupsCount = {
          description = "The total number of groups for this pivot.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    PivotHeaderEntry = {
      description = "The headers for the each of the metric column corresponding to the metrics requested in the pivots section of the response.",
      id = "PivotHeaderEntry",
      properties = {
        dimensionNames = {
          description = "The name of the dimensions in the pivot response.",
          items = {
            type = "string",
          },
          type = "array",
        },
        dimensionValues = {
          description = "The values for the dimensions in the pivot.",
          items = {
            type = "string",
          },
          type = "array",
        },
        metric = {
          ["$ref"] = "MetricHeaderEntry",
          description = "The metric header for the metric in the pivot.",
        },
      },
      type = "object",
    },
    PivotValueRegion = {
      description = "The metric values in the pivot region.",
      id = "PivotValueRegion",
      properties = {
        values = {
          description = "The values of the metrics in each of the pivot regions.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ProductData = {
      description = "Details of the products in an e-commerce transaction.",
      id = "ProductData",
      properties = {
        itemRevenue = {
          description = "The total revenue from purchased product items.",
          format = "double",
          type = "number",
        },
        productName = {
          description = "The product name, supplied by the e-commerce tracking application, for the purchased items.",
          type = "string",
        },
        productQuantity = {
          description = "Total number of this product units in the transaction.",
          format = "int64",
          type = "string",
        },
        productSku = {
          description = "Unique code that represents the product.",
          type = "string",
        },
      },
      type = "object",
    },
    Report = {
      description = "The data response corresponding to the request.",
      id = "Report",
      properties = {
        columnHeader = {
          ["$ref"] = "ColumnHeader",
          description = "The column headers.",
        },
        data = {
          ["$ref"] = "ReportData",
          description = "Response data.",
        },
        nextPageToken = {
          description = "Page token to retrieve the next page of results in the list.",
          type = "string",
        },
      },
      type = "object",
    },
    ReportData = {
      description = "The data part of the report.",
      id = "ReportData",
      properties = {
        dataLastRefreshed = {
          description = "The last time the data in the report was refreshed. All the hits received before this timestamp are included in the calculation of the report.",
          format = "google-datetime",
          type = "string",
        },
        emptyReason = {
          description = "If empty reason is specified, the report is empty for this reason.",
          type = "string",
        },
        isDataGolden = {
          description = "Indicates if response to this request is golden or not. Data is golden when the exact same request will not produce any new results if asked at a later point in time.",
          type = "boolean",
        },
        maximums = {
          description = "Minimum and maximum values seen over all matching rows. These are both empty when `hideValueRanges` in the request is false, or when rowCount is zero.",
          items = {
            ["$ref"] = "DateRangeValues",
          },
          type = "array",
        },
        minimums = {
          description = "Minimum and maximum values seen over all matching rows. These are both empty when `hideValueRanges` in the request is false, or when rowCount is zero.",
          items = {
            ["$ref"] = "DateRangeValues",
          },
          type = "array",
        },
        rowCount = {
          description = "Total number of matching rows for this query.",
          format = "int32",
          type = "integer",
        },
        rows = {
          description = "There's one ReportRow for every unique combination of dimensions.",
          items = {
            ["$ref"] = "ReportRow",
          },
          type = "array",
        },
        samplesReadCounts = {
          description = "If the results are [sampled](https://support.google.com/analytics/answer/2637192), this returns the total number of samples read, one entry per date range. If the results are not sampled this field will not be defined. See [developer guide](/analytics/devguides/reporting/core/v4/basics#sampling) for details.",
          items = {
            format = "int64",
            type = "string",
          },
          type = "array",
        },
        samplingSpaceSizes = {
          description = "If the results are [sampled](https://support.google.com/analytics/answer/2637192), this returns the total number of samples present, one entry per date range. If the results are not sampled this field will not be defined. See [developer guide](/analytics/devguides/reporting/core/v4/basics#sampling) for details.",
          items = {
            format = "int64",
            type = "string",
          },
          type = "array",
        },
        totals = {
          description = "For each requested date range, for the set of all rows that match the query, every requested value format gets a total. The total for a value format is computed by first totaling the metrics mentioned in the value format and then evaluating the value format as a scalar expression. E.g., The \"totals\" for `3 / (ga:sessions + 2)` we compute `3 / ((sum of all relevant ga:sessions) + 2)`. Totals are computed before pagination.",
          items = {
            ["$ref"] = "DateRangeValues",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ReportRequest = {
      description = "The main request class which specifies the Reporting API request.",
      id = "ReportRequest",
      properties = {
        cohortGroup = {
          ["$ref"] = "CohortGroup",
          description = "Cohort group associated with this request. If there is a cohort group in the request the `ga:cohort` dimension must be present. Every [ReportRequest](#ReportRequest) within a `batchGet` method must contain the same `cohortGroup` definition.",
        },
        dateRanges = {
          description = "Date ranges in the request. The request can have a maximum of 2 date ranges. The response will contain a set of metric values for each combination of the dimensions for each date range in the request. So, if there are two date ranges, there will be two set of metric values, one for the original date range and one for the second date range. The `reportRequest.dateRanges` field should not be specified for cohorts or Lifetime value requests. If a date range is not provided, the default date range is (startDate: current date - 7 days, endDate: current date - 1 day). Every [ReportRequest](#ReportRequest) within a `batchGet` method must contain the same `dateRanges` definition.",
          items = {
            ["$ref"] = "DateRange",
          },
          type = "array",
        },
        dimensionFilterClauses = {
          description = "The dimension filter clauses for filtering Dimension Values. They are logically combined with the `AND` operator. Note that filtering occurs before any dimensions are aggregated, so that the returned metrics represent the total for only the relevant dimensions.",
          items = {
            ["$ref"] = "DimensionFilterClause",
          },
          type = "array",
        },
        dimensions = {
          description = "The dimensions requested. Requests can have a total of 9 dimensions.",
          items = {
            ["$ref"] = "Dimension",
          },
          type = "array",
        },
        filtersExpression = {
          description = "Dimension or metric filters that restrict the data returned for your request. To use the `filtersExpression`, supply a dimension or metric on which to filter, followed by the filter expression. For example, the following expression selects `ga:browser` dimension which starts with Firefox; `ga:browser=~^Firefox`. For more information on dimensions and metric filters, see [Filters reference](https://developers.google.com/analytics/devguides/reporting/core/v3/reference#filters).",
          type = "string",
        },
        hideTotals = {
          description = "If set to true, hides the total of all metrics for all the matching rows, for every date range. The default false and will return the totals.",
          type = "boolean",
        },
        hideValueRanges = {
          description = "If set to true, hides the minimum and maximum across all matching rows. The default is false and the value ranges are returned.",
          type = "boolean",
        },
        includeEmptyRows = {
          description = "If set to false, the response does not include rows if all the retrieved metrics are equal to zero. The default is false which will exclude these rows.",
          type = "boolean",
        },
        metricFilterClauses = {
          description = "The metric filter clauses. They are logically combined with the `AND` operator. Metric filters look at only the first date range and not the comparing date range. Note that filtering on metrics occurs after the metrics are aggregated.",
          items = {
            ["$ref"] = "MetricFilterClause",
          },
          type = "array",
        },
        metrics = {
          description = "The metrics requested. Requests must specify at least one metric. Requests can have a total of 10 metrics.",
          items = {
            ["$ref"] = "Metric",
          },
          type = "array",
        },
        orderBys = {
          description = "Sort order on output rows. To compare two rows, the elements of the following are applied in order until a difference is found. All date ranges in the output get the same row order.",
          items = {
            ["$ref"] = "OrderBy",
          },
          type = "array",
        },
        pageSize = {
          description = "Page size is for paging and specifies the maximum number of returned rows. Page size should be >= 0. A query returns the default of 1,000 rows. The Analytics Core Reporting API returns a maximum of 100,000 rows per request, no matter how many you ask for. It can also return fewer rows than requested, if there aren't as many dimension segments as you expect. For instance, there are fewer than 300 possible values for `ga:country`, so when segmenting only by country, you can't get more than 300 rows, even if you set `pageSize` to a higher value.",
          format = "int32",
          type = "integer",
        },
        pageToken = {
          description = "A continuation token to get the next page of the results. Adding this to the request will return the rows after the pageToken. The pageToken should be the value returned in the nextPageToken parameter in the response to the GetReports request.",
          type = "string",
        },
        pivots = {
          description = "The pivot definitions. Requests can have a maximum of 2 pivots.",
          items = {
            ["$ref"] = "Pivot",
          },
          type = "array",
        },
        samplingLevel = {
          description = "The desired report [sample](https://support.google.com/analytics/answer/2637192) size. If the the `samplingLevel` field is unspecified the `DEFAULT` sampling level is used. Every [ReportRequest](#ReportRequest) within a `batchGet` method must contain the same `samplingLevel` definition. See [developer guide](/analytics/devguides/reporting/core/v4/basics#sampling) for details.",
          enum = {
            "SAMPLING_UNSPECIFIED",
            "DEFAULT",
            "SMALL",
            "LARGE",
          },
          enumDescriptions = {
            "If the `samplingLevel` field is unspecified the `DEFAULT` sampling level is used.",
            "Returns response with a sample size that balances speed and accuracy.",
            "It returns a fast response with a smaller sampling size.",
            "Returns a more accurate response using a large sampling size. But this may result in response being slower.",
          },
          type = "string",
        },
        segments = {
          description = "Segment the data returned for the request. A segment definition helps look at a subset of the segment request. A request can contain up to four segments. Every [ReportRequest](#ReportRequest) within a `batchGet` method must contain the same `segments` definition. Requests with segments must have the `ga:segment` dimension.",
          items = {
            ["$ref"] = "Segment",
          },
          type = "array",
        },
        viewId = {
          description = "The Analytics [view ID](https://support.google.com/analytics/answer/1009618) from which to retrieve data. Every [ReportRequest](#ReportRequest) within a `batchGet` method must contain the same `viewId`.",
          type = "string",
        },
      },
      type = "object",
    },
    ReportRow = {
      description = "A row in the report.",
      id = "ReportRow",
      properties = {
        dimensions = {
          description = "List of requested dimensions.",
          items = {
            type = "string",
          },
          type = "array",
        },
        metrics = {
          description = "List of metrics for each requested DateRange.",
          items = {
            ["$ref"] = "DateRangeValues",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ResourceQuotasRemaining = {
      description = "The resource quota tokens remaining for the property after the request is completed.",
      id = "ResourceQuotasRemaining",
      properties = {
        dailyQuotaTokensRemaining = {
          description = "Daily resource quota remaining remaining.",
          format = "int32",
          type = "integer",
        },
        hourlyQuotaTokensRemaining = {
          description = "Hourly resource quota tokens remaining.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    ScreenviewData = {
      id = "ScreenviewData",
      properties = {
        appName = {
          description = "The application name.",
          type = "string",
        },
        mobileDeviceBranding = {
          description = "Mobile manufacturer or branded name. Eg: \"Google\", \"Apple\" etc.",
          type = "string",
        },
        mobileDeviceModel = {
          description = "Mobile device model. Eg: \"Pixel\", \"iPhone\" etc.",
          type = "string",
        },
        screenName = {
          description = "The name of the screen.",
          type = "string",
        },
      },
      type = "object",
    },
    SearchUserActivityRequest = {
      description = "The request to fetch User Report from Reporting API `userActivity:get` call.",
      id = "SearchUserActivityRequest",
      properties = {
        activityTypes = {
          description = "Set of all activity types being requested. Only acvities matching these types will be returned in the response. If empty, all activies will be returned.",
          items = {
            enum = {
              "ACTIVITY_TYPE_UNSPECIFIED",
              "PAGEVIEW",
              "SCREENVIEW",
              "GOAL",
              "ECOMMERCE",
              "EVENT",
            },
            enumDescriptions = {
              "ActivityType will never have this value in the response. Using this type in the request will result in an error.",
              "Used when the activity resulted out of a visitor viewing a page.",
              "Used when the activity resulted out of a visitor using an application on a mobile device.",
              "Used to denote that a goal type activity.",
              "An e-commerce transaction was performed by the visitor on the page.",
              "Used when the activity is an event.",
            },
            type = "string",
          },
          type = "array",
        },
        dateRange = {
          ["$ref"] = "DateRange",
          description = "Date range for which to retrieve the user activity. If a date range is not provided, the default date range is (startDate: current date - 7 days, endDate: current date - 1 day).",
        },
        pageSize = {
          description = "Page size is for paging and specifies the maximum number of returned rows. Page size should be > 0. If the value is 0 or if the field isn't specified, the request returns the default of 1000 rows per page.",
          format = "int32",
          type = "integer",
        },
        pageToken = {
          description = "A continuation token to get the next page of the results. Adding this to the request will return the rows after the pageToken. The pageToken should be the value returned in the nextPageToken parameter in the response to the [SearchUserActivityRequest](#SearchUserActivityRequest) request.",
          type = "string",
        },
        user = {
          ["$ref"] = "User",
          description = "Required. Unique user Id to query for. Every [SearchUserActivityRequest](#SearchUserActivityRequest) must contain this field.",
        },
        viewId = {
          description = "Required. The Analytics [view ID](https://support.google.com/analytics/answer/1009618) from which to retrieve data. Every [SearchUserActivityRequest](#SearchUserActivityRequest) must contain the `viewId`.",
          type = "string",
        },
      },
      type = "object",
    },
    SearchUserActivityResponse = {
      description = "The response from `userActivity:get` call.",
      id = "SearchUserActivityResponse",
      properties = {
        nextPageToken = {
          description = "This token should be passed to [SearchUserActivityRequest](#SearchUserActivityRequest) to retrieve the next page.",
          type = "string",
        },
        sampleRate = {
          description = "This field represents the [sampling rate](https://support.google.com/analytics/answer/2637192) for the given request and is a number between 0.0 to 1.0. See [developer guide](/analytics/devguides/reporting/core/v4/basics#sampling) for details.",
          format = "double",
          type = "number",
        },
        sessions = {
          description = "Each record represents a session (device details, duration, etc).",
          items = {
            ["$ref"] = "UserActivitySession",
          },
          type = "array",
        },
        totalRows = {
          description = "Total rows returned by this query (across different pages).",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    Segment = {
      description = "The segment definition, if the report needs to be segmented. A Segment is a subset of the Analytics data. For example, of the entire set of users, one Segment might be users from a particular country or city.",
      id = "Segment",
      properties = {
        dynamicSegment = {
          ["$ref"] = "DynamicSegment",
          description = "A dynamic segment definition in the request.",
        },
        segmentId = {
          description = "The segment ID of a built-in or custom segment, for example `gaid::-3`.",
          type = "string",
        },
      },
      type = "object",
    },
    SegmentDefinition = {
      description = "SegmentDefinition defines the segment to be a set of SegmentFilters which are combined together with a logical `AND` operation.",
      id = "SegmentDefinition",
      properties = {
        segmentFilters = {
          description = "A segment is defined by a set of segment filters which are combined together with a logical `AND` operation.",
          items = {
            ["$ref"] = "SegmentFilter",
          },
          type = "array",
        },
      },
      type = "object",
    },
    SegmentDimensionFilter = {
      description = "Dimension filter specifies the filtering options on a dimension.",
      id = "SegmentDimensionFilter",
      properties = {
        caseSensitive = {
          description = "Should the match be case sensitive, ignored for `IN_LIST` operator.",
          type = "boolean",
        },
        dimensionName = {
          description = "Name of the dimension for which the filter is being applied.",
          type = "string",
        },
        expressions = {
          description = "The list of expressions, only the first element is used for all operators",
          items = {
            type = "string",
          },
          type = "array",
        },
        maxComparisonValue = {
          description = "Maximum comparison values for `BETWEEN` match type.",
          type = "string",
        },
        minComparisonValue = {
          description = "Minimum comparison values for `BETWEEN` match type.",
          type = "string",
        },
        operator = {
          description = "The operator to use to match the dimension with the expressions.",
          enum = {
            "OPERATOR_UNSPECIFIED",
            "REGEXP",
            "BEGINS_WITH",
            "ENDS_WITH",
            "PARTIAL",
            "EXACT",
            "IN_LIST",
            "NUMERIC_LESS_THAN",
            "NUMERIC_GREATER_THAN",
            "NUMERIC_BETWEEN",
          },
          enumDescriptions = {
            "If the match type is unspecified, it is treated as a REGEXP.",
            "The match expression is treated as a regular expression. All other match types are not treated as regular expressions.",
            "Matches the values which begin with the match expression provided.",
            "Matches the values which end with the match expression provided.",
            "Substring match.",
            "The value should match the match expression entirely.",
            "This option is used to specify a dimension filter whose expression can take any value from a selected list of values. This helps avoiding evaluating multiple exact match dimension filters which are OR'ed for every single response row. For example: expressions: [\"A\", \"B\", \"C\"] Any response row whose dimension has it is value as A, B or C, matches this DimensionFilter.",
            "Integer comparison filters. case sensitivity is ignored for these and the expression is assumed to be a string representing an integer. Failure conditions: - if expression is not a valid int64, the client should expect an error. - input dimensions that are not valid int64 values will never match the filter. Checks if the dimension is numerically less than the match expression.",
            "Checks if the dimension is numerically greater than the match expression.",
            "Checks if the dimension is numerically between the minimum and maximum of the match expression, boundaries excluded.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    SegmentFilter = {
      description = "SegmentFilter defines the segment to be either a simple or a sequence segment. A simple segment condition contains dimension and metric conditions to select the sessions or users. A sequence segment condition can be used to select users or sessions based on sequential conditions.",
      id = "SegmentFilter",
      properties = {
        ["not"] = {
          description = "If true, match the complement of simple or sequence segment. For example, to match all visits not from \"New York\", we can define the segment as follows: \"sessionSegment\": { \"segmentFilters\": [{ \"simpleSegment\" :{ \"orFiltersForSegment\": [{ \"segmentFilterClauses\":[{ \"dimensionFilter\": { \"dimensionName\": \"ga:city\", \"expressions\": [\"New York\"] } }] }] }, \"not\": \"True\" }] },",
          type = "boolean",
        },
        sequenceSegment = {
          ["$ref"] = "SequenceSegment",
          description = "Sequence conditions consist of one or more steps, where each step is defined by one or more dimension/metric conditions. Multiple steps can be combined with special sequence operators.",
        },
        simpleSegment = {
          ["$ref"] = "SimpleSegment",
          description = "A Simple segment conditions consist of one or more dimension/metric conditions that can be combined",
        },
      },
      type = "object",
    },
    SegmentFilterClause = {
      description = "Filter Clause to be used in a segment definition, can be wither a metric or a dimension filter.",
      id = "SegmentFilterClause",
      properties = {
        dimensionFilter = {
          ["$ref"] = "SegmentDimensionFilter",
          description = "Dimension Filter for the segment definition.",
        },
        metricFilter = {
          ["$ref"] = "SegmentMetricFilter",
          description = "Metric Filter for the segment definition.",
        },
        ["not"] = {
          description = "Matches the complement (`!`) of the filter.",
          type = "boolean",
        },
      },
      type = "object",
    },
    SegmentMetricFilter = {
      description = "Metric filter to be used in a segment filter clause.",
      id = "SegmentMetricFilter",
      properties = {
        comparisonValue = {
          description = "The value to compare against. If the operator is `BETWEEN`, this value is treated as minimum comparison value.",
          type = "string",
        },
        maxComparisonValue = {
          description = "Max comparison value is only used for `BETWEEN` operator.",
          type = "string",
        },
        metricName = {
          description = "The metric that will be filtered on. A `metricFilter` must contain a metric name.",
          type = "string",
        },
        operator = {
          description = "Specifies is the operation to perform to compare the metric. The default is `EQUAL`.",
          enum = {
            "UNSPECIFIED_OPERATOR",
            "LESS_THAN",
            "GREATER_THAN",
            "EQUAL",
            "BETWEEN",
          },
          enumDescriptions = {
            "Unspecified operator is treated as `LESS_THAN` operator.",
            "Checks if the metric value is less than comparison value.",
            "Checks if the metric value is greater than comparison value.",
            "Equals operator.",
            "For between operator, both the minimum and maximum are exclusive. We will use `LT` and `GT` for comparison.",
          },
          type = "string",
        },
        scope = {
          description = "Scope for a metric defines the level at which that metric is defined. The specified metric scope must be equal to or greater than its primary scope as defined in the data model. The primary scope is defined by if the segment is selecting users or sessions.",
          enum = {
            "UNSPECIFIED_SCOPE",
            "PRODUCT",
            "HIT",
            "SESSION",
            "USER",
          },
          enumDescriptions = {
            "If the scope is unspecified, it defaults to the condition scope, `USER` or `SESSION` depending on if the segment is trying to choose users or sessions.",
            "Product scope.",
            "Hit scope.",
            "Session scope.",
            "User scope.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    SegmentSequenceStep = {
      description = "A segment sequence definition.",
      id = "SegmentSequenceStep",
      properties = {
        matchType = {
          description = "Specifies if the step immediately precedes or can be any time before the next step.",
          enum = {
            "UNSPECIFIED_MATCH_TYPE",
            "PRECEDES",
            "IMMEDIATELY_PRECEDES",
          },
          enumDescriptions = {
            "Unspecified match type is treated as precedes.",
            "Operator indicates that the previous step precedes the next step.",
            "Operator indicates that the previous step immediately precedes the next step.",
          },
          type = "string",
        },
        orFiltersForSegment = {
          description = "A sequence is specified with a list of Or grouped filters which are combined with `AND` operator.",
          items = {
            ["$ref"] = "OrFiltersForSegment",
          },
          type = "array",
        },
      },
      type = "object",
    },
    SequenceSegment = {
      description = "Sequence conditions consist of one or more steps, where each step is defined by one or more dimension/metric conditions. Multiple steps can be combined with special sequence operators.",
      id = "SequenceSegment",
      properties = {
        firstStepShouldMatchFirstHit = {
          description = "If set, first step condition must match the first hit of the visitor (in the date range).",
          type = "boolean",
        },
        segmentSequenceSteps = {
          description = "The list of steps in the sequence.",
          items = {
            ["$ref"] = "SegmentSequenceStep",
          },
          type = "array",
        },
      },
      type = "object",
    },
    SimpleSegment = {
      description = "A Simple segment conditions consist of one or more dimension/metric conditions that can be combined.",
      id = "SimpleSegment",
      properties = {
        orFiltersForSegment = {
          description = "A list of segment filters groups which are combined with logical `AND` operator.",
          items = {
            ["$ref"] = "OrFiltersForSegment",
          },
          type = "array",
        },
      },
      type = "object",
    },
    TransactionData = {
      description = "Represents details collected when the visitor performs a transaction on the page.",
      id = "TransactionData",
      properties = {
        transactionId = {
          description = "The transaction ID, supplied by the e-commerce tracking method, for the purchase in the shopping cart.",
          type = "string",
        },
        transactionRevenue = {
          description = "The total sale revenue (excluding shipping and tax) of the transaction.",
          format = "double",
          type = "number",
        },
        transactionShipping = {
          description = "Total cost of shipping.",
          format = "double",
          type = "number",
        },
        transactionTax = {
          description = "Total tax for the transaction.",
          format = "double",
          type = "number",
        },
      },
      type = "object",
    },
    User = {
      description = "Contains information to identify a particular user uniquely.",
      id = "User",
      properties = {
        type = {
          description = "Type of the user in the request. The field `userId` is associated with this type.",
          enum = {
            "USER_ID_TYPE_UNSPECIFIED",
            "USER_ID",
            "CLIENT_ID",
          },
          enumDescriptions = {
            "When the User Id Type is not specified, the default type used will be CLIENT_ID.",
            "A single user, like a signed-in user account, that may interact with content across one or more devices and / or browser instances.",
            "Analytics assigned client_id.",
          },
          type = "string",
        },
        userId = {
          description = "Unique Id of the user for which the data is being requested.",
          type = "string",
        },
      },
      type = "object",
    },
    UserActivitySession = {
      description = "This represents a user session performed on a specific device at a certain time over a period of time.",
      id = "UserActivitySession",
      properties = {
        activities = {
          description = "Represents a detailed view into each of the activity in this session.",
          items = {
            ["$ref"] = "Activity",
          },
          type = "array",
        },
        dataSource = {
          description = "The data source of a hit. By default, hits sent from analytics.js are reported as \"web\" and hits sent from the mobile SDKs are reported as \"app\". These values can be overridden in the Measurement Protocol.",
          type = "string",
        },
        deviceCategory = {
          description = "The type of device used: \"mobile\", \"tablet\" etc.",
          type = "string",
        },
        platform = {
          description = "Platform on which the activity happened: \"android\", \"ios\" etc.",
          type = "string",
        },
        sessionDate = {
          description = "Date of this session in ISO-8601 format.",
          type = "string",
        },
        sessionId = {
          description = "Unique ID of the session.",
          type = "string",
        },
      },
      type = "object",
    },
  },
  servicePath = "",
  title = "Analytics Reporting API",
  version = "v4",
  version_module = true,
}
