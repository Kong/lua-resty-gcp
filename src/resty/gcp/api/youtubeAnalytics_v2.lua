return {
  auth = {
    oauth2 = {
      scopes = {
        ["https://www.googleapis.com/auth/youtube"] = {
          description = "Manage your YouTube account",
        },
        ["https://www.googleapis.com/auth/youtube.readonly"] = {
          description = "View your YouTube account",
        },
        ["https://www.googleapis.com/auth/youtubepartner"] = {
          description = "View and manage your assets and associated content on YouTube",
        },
        ["https://www.googleapis.com/auth/yt-analytics-monetary.readonly"] = {
          description = "View monetary and non-monetary YouTube Analytics reports for your YouTube content",
        },
        ["https://www.googleapis.com/auth/yt-analytics.readonly"] = {
          description = "View YouTube Analytics reports for your YouTube content",
        },
      },
    },
  },
  basePath = "",
  baseUrl = "https://youtubeanalytics.googleapis.com/",
  batchPath = "batch",
  canonicalName = "YouTube Analytics",
  description = "Retrieves your YouTube Analytics data.",
  discoveryVersion = "v1",
  documentationLink = "https://developers.google.com/youtube/analytics",
  fullyEncodeReservedExpansion = true,
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "youtubeAnalytics:v2",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://youtubeanalytics.mtls.googleapis.com/",
  name = "youtubeAnalytics",
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
    groupItems = {
      methods = {
        delete = {
          description = "Removes an item from a group.",
          flatPath = "v2/groupItems",
          httpMethod = "DELETE",
          id = "youtubeAnalytics.groupItems.delete",
          parameterOrder = {},
          parameters = {
            id = {
              description = "The `id` parameter specifies the YouTube group item ID of the group item that is being deleted.",
              location = "query",
              type = "string",
            },
            onBehalfOfContentOwner = {
              description = "This parameter can only be used in a properly authorized request. **Note:** This parameter is intended exclusively for YouTube content partners that own and manage many different YouTube channels. The `onBehalfOfContentOwner` parameter indicates that the request's authorization credentials identify a YouTube user who is acting on behalf of the content owner specified in the parameter value. It allows content owners to authenticate once and get access to all their video and channel data, without having to provide authentication credentials for each individual channel. The account that the user authenticates with must be linked to the specified YouTube content owner.",
              location = "query",
              type = "string",
            },
          },
          path = "v2/groupItems",
          response = {
            ["$ref"] = "EmptyResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/youtube",
            "https://www.googleapis.com/auth/youtube.readonly",
            "https://www.googleapis.com/auth/youtubepartner",
            "https://www.googleapis.com/auth/yt-analytics-monetary.readonly",
            "https://www.googleapis.com/auth/yt-analytics.readonly",
          },
        },
        insert = {
          description = "Creates a group item.",
          flatPath = "v2/groupItems",
          httpMethod = "POST",
          id = "youtubeAnalytics.groupItems.insert",
          parameterOrder = {},
          parameters = {
            onBehalfOfContentOwner = {
              description = "This parameter can only be used in a properly authorized request. **Note:** This parameter is intended exclusively for YouTube content partners that own and manage many different YouTube channels. The `onBehalfOfContentOwner` parameter indicates that the request's authorization credentials identify a YouTube user who is acting on behalf of the content owner specified in the parameter value. It allows content owners to authenticate once and get access to all their video and channel data, without having to provide authentication credentials for each individual channel. The account that the user authenticates with must be linked to the specified YouTube content owner.",
              location = "query",
              type = "string",
            },
          },
          path = "v2/groupItems",
          request = {
            ["$ref"] = "GroupItem",
          },
          response = {
            ["$ref"] = "GroupItem",
          },
          scopes = {
            "https://www.googleapis.com/auth/youtube",
            "https://www.googleapis.com/auth/youtube.readonly",
            "https://www.googleapis.com/auth/youtubepartner",
            "https://www.googleapis.com/auth/yt-analytics-monetary.readonly",
            "https://www.googleapis.com/auth/yt-analytics.readonly",
          },
        },
        list = {
          description = "Returns a collection of group items that match the API request parameters.",
          flatPath = "v2/groupItems",
          httpMethod = "GET",
          id = "youtubeAnalytics.groupItems.list",
          parameterOrder = {},
          parameters = {
            groupId = {
              description = "The `groupId` parameter specifies the unique ID of the group for which you want to retrieve group items.",
              location = "query",
              type = "string",
            },
            onBehalfOfContentOwner = {
              description = "This parameter can only be used in a properly authorized request. **Note:** This parameter is intended exclusively for YouTube content partners that own and manage many different YouTube channels. The `onBehalfOfContentOwner` parameter indicates that the request's authorization credentials identify a YouTube user who is acting on behalf of the content owner specified in the parameter value. It allows content owners to authenticate once and get access to all their video and channel data, without having to provide authentication credentials for each individual channel. The account that the user authenticates with must be linked to the specified YouTube content owner.",
              location = "query",
              type = "string",
            },
          },
          path = "v2/groupItems",
          response = {
            ["$ref"] = "ListGroupItemsResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/youtube",
            "https://www.googleapis.com/auth/youtube.readonly",
            "https://www.googleapis.com/auth/youtubepartner",
            "https://www.googleapis.com/auth/yt-analytics-monetary.readonly",
            "https://www.googleapis.com/auth/yt-analytics.readonly",
          },
        },
      },
    },
    groups = {
      methods = {
        delete = {
          description = "Deletes a group.",
          flatPath = "v2/groups",
          httpMethod = "DELETE",
          id = "youtubeAnalytics.groups.delete",
          parameterOrder = {},
          parameters = {
            id = {
              description = "The `id` parameter specifies the YouTube group ID of the group that is being deleted.",
              location = "query",
              type = "string",
            },
            onBehalfOfContentOwner = {
              description = "This parameter can only be used in a properly authorized request. **Note:** This parameter is intended exclusively for YouTube content partners that own and manage many different YouTube channels. The `onBehalfOfContentOwner` parameter indicates that the request's authorization credentials identify a YouTube user who is acting on behalf of the content owner specified in the parameter value. It allows content owners to authenticate once and get access to all their video and channel data, without having to provide authentication credentials for each individual channel. The account that the user authenticates with must be linked to the specified YouTube content owner.",
              location = "query",
              type = "string",
            },
          },
          path = "v2/groups",
          response = {
            ["$ref"] = "EmptyResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/youtube",
            "https://www.googleapis.com/auth/youtube.readonly",
            "https://www.googleapis.com/auth/youtubepartner",
            "https://www.googleapis.com/auth/yt-analytics-monetary.readonly",
            "https://www.googleapis.com/auth/yt-analytics.readonly",
          },
        },
        insert = {
          description = "Creates a group.",
          flatPath = "v2/groups",
          httpMethod = "POST",
          id = "youtubeAnalytics.groups.insert",
          parameterOrder = {},
          parameters = {
            onBehalfOfContentOwner = {
              description = "This parameter can only be used in a properly authorized request. **Note:** This parameter is intended exclusively for YouTube content partners that own and manage many different YouTube channels. The `onBehalfOfContentOwner` parameter indicates that the request's authorization credentials identify a YouTube user who is acting on behalf of the content owner specified in the parameter value. It allows content owners to authenticate once and get access to all their video and channel data, without having to provide authentication credentials for each individual channel. The account that the user authenticates with must be linked to the specified YouTube content owner.",
              location = "query",
              type = "string",
            },
          },
          path = "v2/groups",
          request = {
            ["$ref"] = "Group",
          },
          response = {
            ["$ref"] = "Group",
          },
          scopes = {
            "https://www.googleapis.com/auth/youtube",
            "https://www.googleapis.com/auth/youtube.readonly",
            "https://www.googleapis.com/auth/youtubepartner",
            "https://www.googleapis.com/auth/yt-analytics-monetary.readonly",
            "https://www.googleapis.com/auth/yt-analytics.readonly",
          },
        },
        list = {
          description = "Returns a collection of groups that match the API request parameters. For example, you can retrieve all groups that the authenticated user owns, or you can retrieve one or more groups by their unique IDs.",
          flatPath = "v2/groups",
          httpMethod = "GET",
          id = "youtubeAnalytics.groups.list",
          parameterOrder = {},
          parameters = {
            id = {
              description = "The `id` parameter specifies a comma-separated list of the YouTube group ID(s) for the resource(s) that are being retrieved. Each group must be owned by the authenticated user. In a `group` resource, the `id` property specifies the group's YouTube group ID. Note that if you do not specify a value for the `id` parameter, then you must set the `mine` parameter to `true`.",
              location = "query",
              type = "string",
            },
            mine = {
              description = "This parameter can only be used in a properly authorized request. Set this parameter's value to true to retrieve all groups owned by the authenticated user.",
              location = "query",
              type = "boolean",
            },
            onBehalfOfContentOwner = {
              description = "This parameter can only be used in a properly authorized request. **Note:** This parameter is intended exclusively for YouTube content partners that own and manage many different YouTube channels. The `onBehalfOfContentOwner` parameter indicates that the request's authorization credentials identify a YouTube user who is acting on behalf of the content owner specified in the parameter value. It allows content owners to authenticate once and get access to all their video and channel data, without having to provide authentication credentials for each individual channel. The account that the user authenticates with must be linked to the specified YouTube content owner.",
              location = "query",
              type = "string",
            },
            pageToken = {
              description = "The `pageToken` parameter identifies a specific page in the result set that should be returned. In an API response, the `nextPageToken` property identifies the next page that can be retrieved.",
              location = "query",
              type = "string",
            },
          },
          path = "v2/groups",
          response = {
            ["$ref"] = "ListGroupsResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/youtube",
            "https://www.googleapis.com/auth/youtube.readonly",
            "https://www.googleapis.com/auth/youtubepartner",
            "https://www.googleapis.com/auth/yt-analytics-monetary.readonly",
            "https://www.googleapis.com/auth/yt-analytics.readonly",
          },
        },
        update = {
          description = "Modifies a group. For example, you could change a group's title.",
          flatPath = "v2/groups",
          httpMethod = "PUT",
          id = "youtubeAnalytics.groups.update",
          parameterOrder = {},
          parameters = {
            onBehalfOfContentOwner = {
              description = "This parameter can only be used in a properly authorized request. **Note:** This parameter is intended exclusively for YouTube content partners that own and manage many different YouTube channels. The `onBehalfOfContentOwner` parameter indicates that the request's authorization credentials identify a YouTube user who is acting on behalf of the content owner specified in the parameter value. It allows content owners to authenticate once and get access to all their video and channel data, without having to provide authentication credentials for each individual channel. The account that the user authenticates with must be linked to the specified YouTube content owner.",
              location = "query",
              type = "string",
            },
          },
          path = "v2/groups",
          request = {
            ["$ref"] = "Group",
          },
          response = {
            ["$ref"] = "Group",
          },
          scopes = {
            "https://www.googleapis.com/auth/youtube",
            "https://www.googleapis.com/auth/youtube.readonly",
            "https://www.googleapis.com/auth/youtubepartner",
            "https://www.googleapis.com/auth/yt-analytics-monetary.readonly",
            "https://www.googleapis.com/auth/yt-analytics.readonly",
          },
        },
      },
    },
    reports = {
      methods = {
        query = {
          description = "Retrieve your YouTube Analytics reports.",
          flatPath = "v2/reports",
          httpMethod = "GET",
          id = "youtubeAnalytics.reports.query",
          parameterOrder = {},
          parameters = {
            currency = {
              description = "The currency to which financial metrics should be converted. The default is US Dollar (USD). If the result contains no financial metrics, this flag will be ignored. Responds with an error if the specified currency is not recognized.\", pattern: [A-Z]{3}",
              location = "query",
              type = "string",
            },
            dimensions = {
              description = "A comma-separated list of YouTube Analytics dimensions, such as `views` or `ageGroup,gender`. See the [Available Reports](/youtube/analytics/v2/available_reports) document for a list of the reports that you can retrieve and the dimensions used for those reports. Also see the [Dimensions](/youtube/analytics/v2/dimsmets/dims) document for definitions of those dimensions.\" pattern: [0-9a-zA-Z,]+",
              location = "query",
              type = "string",
            },
            endDate = {
              description = "The end date for fetching YouTube Analytics data. The value should be in `YYYY-MM-DD` format. required: true, pattern: [0-9]{4}-[0-9]{2}-[0-9]{2}",
              location = "query",
              type = "string",
            },
            filters = {
              description = "A list of filters that should be applied when retrieving YouTube Analytics data. The [Available Reports](/youtube/analytics/v2/available_reports) document identifies the dimensions that can be used to filter each report, and the [Dimensions](/youtube/analytics/v2/dimsmets/dims) document defines those dimensions. If a request uses multiple filters, join them together with a semicolon (`;`), and the returned result table will satisfy both filters. For example, a filters parameter value of `video==dMH0bHeiRNg;country==IT` restricts the result set to include data for the given video in Italy.\",",
              location = "query",
              type = "string",
            },
            ids = {
              description = "Identifies the YouTube channel or content owner for which you are retrieving YouTube Analytics data. - To request data for a YouTube user, set the `ids` parameter value to `channel==CHANNEL_ID`, where `CHANNEL_ID` specifies the unique YouTube channel ID. - To request data for a YouTube CMS content owner, set the `ids` parameter value to `contentOwner==OWNER_NAME`, where `OWNER_NAME` is the CMS name of the content owner. required: true, pattern: [a-zA-Z]+==[a-zA-Z0-9_+-]+",
              location = "query",
              type = "string",
            },
            includeHistoricalChannelData = {
              description = "If set to true historical data (i.e. channel data from before the linking of the channel to the content owner) will be retrieved.\",",
              location = "query",
              type = "boolean",
            },
            maxResults = {
              description = "The maximum number of rows to include in the response.\", minValue: 1",
              format = "int32",
              location = "query",
              type = "integer",
            },
            metrics = {
              description = "A comma-separated list of YouTube Analytics metrics, such as `views` or `likes,dislikes`. See the [Available Reports](/youtube/analytics/v2/available_reports) document for a list of the reports that you can retrieve and the metrics available in each report, and see the [Metrics](/youtube/analytics/v2/dimsmets/mets) document for definitions of those metrics. required: true, pattern: [0-9a-zA-Z,]+",
              location = "query",
              type = "string",
            },
            sort = {
              description = "A comma-separated list of dimensions or metrics that determine the sort order for YouTube Analytics data. By default the sort order is ascending. The '`-`' prefix causes descending sort order.\", pattern: [-0-9a-zA-Z,]+",
              location = "query",
              type = "string",
            },
            startDate = {
              description = "The start date for fetching YouTube Analytics data. The value should be in `YYYY-MM-DD` format. required: true, pattern: \"[0-9]{4}-[0-9]{2}-[0-9]{2}",
              location = "query",
              type = "string",
            },
            startIndex = {
              description = "An index of the first entity to retrieve. Use this parameter as a pagination mechanism along with the max-results parameter (one-based, inclusive).\", minValue: 1",
              format = "int32",
              location = "query",
              type = "integer",
            },
          },
          path = "v2/reports",
          response = {
            ["$ref"] = "QueryResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/youtube",
            "https://www.googleapis.com/auth/youtube.readonly",
            "https://www.googleapis.com/auth/youtubepartner",
            "https://www.googleapis.com/auth/yt-analytics-monetary.readonly",
            "https://www.googleapis.com/auth/yt-analytics.readonly",
          },
        },
      },
    },
  },
  revision = "20230117",
  rootUrl = "https://youtubeanalytics.googleapis.com/",
  schemas = {
    EmptyResponse = {
      description = "Empty response.",
      id = "EmptyResponse",
      properties = {
        errors = {
          ["$ref"] = "Errors",
          description = "Apiary error details",
        },
      },
      type = "object",
    },
    ErrorProto = {
      description = "Describes one specific error.",
      id = "ErrorProto",
      properties = {
        argument = {
          description = "Error arguments, to be used when building user-friendly error messages given the error domain and code. Different error codes require different arguments.",
          items = {
            type = "string",
          },
          type = "array",
        },
        code = {
          description = "Error code in the error domain. This should correspond to a value of the enum type whose name is in domain. See the core error domain in error_domain.proto.",
          type = "string",
        },
        debugInfo = {
          description = "Debugging information, which should not be shared externally.",
          type = "string",
        },
        domain = {
          description = "Error domain. RoSy services can define their own domain and error codes. This should normally be the name of an enum type, such as: gdata.CoreErrorDomain",
          type = "string",
        },
        externalErrorMessage = {
          description = "A short explanation for the error, which can be shared outside Google. Please set domain, code and arguments whenever possible instead of this error message so that external APIs can build safe error messages themselves. External messages built in a RoSy interface will most likely refer to information and concepts that are not available externally and should not be exposed. It is safer if external APIs can understand the errors and decide what the error message should look like.",
          type = "string",
        },
        location = {
          description = "Location of the error, as specified by the location type. If location_type is PATH, this should be a path to a field that's relative to the request, using FieldPath notation (net/proto2/util/public/field_path.h). Examples: authenticated_user.gaia_id resource.address[2].country",
          type = "string",
        },
        locationType = {
          enum = {
            "PATH",
            "OTHER",
            "PARAMETER",
          },
          enumDescriptions = {
            "location is an xpath-like path pointing to the request field that caused the error.",
            "other location type which can safely be shared externally.",
            "Location is request parameter. This maps to the {@link PARAMETERS} in {@link MessageLocation}.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    Errors = {
      description = "Request Error information. The presence of an error field signals that the operation has failed.",
      id = "Errors",
      properties = {
        code = {
          description = "Global error code. Deprecated and ignored. Set custom error codes in ErrorProto.domain and ErrorProto.code instead.",
          enum = {
            "BAD_REQUEST",
            "FORBIDDEN",
            "NOT_FOUND",
            "CONFLICT",
            "GONE",
            "PRECONDITION_FAILED",
            "INTERNAL_ERROR",
            "SERVICE_UNAVAILABLE",
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
          },
          type = "string",
        },
        error = {
          description = "Specific error description and codes",
          items = {
            ["$ref"] = "ErrorProto",
          },
          type = "array",
        },
        requestId = {
          description = "Request identifier generated by the service, which can be used to identify the error in the logs",
          type = "string",
        },
      },
      type = "object",
    },
    Group = {
      description = "A group.",
      id = "Group",
      properties = {
        contentDetails = {
          ["$ref"] = "GroupContentDetails",
          description = "The `contentDetails` object contains additional information about the group, such as the number and type of items that it contains.",
        },
        errors = {
          ["$ref"] = "Errors",
          description = "Apiary error details",
        },
        etag = {
          description = "The Etag of this resource.",
          type = "string",
        },
        id = {
          description = "The ID that YouTube uses to uniquely identify the group.",
          type = "string",
        },
        kind = {
          description = "Identifies the API resource's type. The value will be `youtube#group`.",
          type = "string",
        },
        snippet = {
          ["$ref"] = "GroupSnippet",
          description = "The `snippet` object contains basic information about the group, including its creation date and name.",
        },
      },
      type = "object",
    },
    GroupContentDetails = {
      description = "A group's content details.",
      id = "GroupContentDetails",
      properties = {
        itemCount = {
          description = "The number of items in the group.",
          format = "uint64",
          type = "string",
        },
        itemType = {
          description = "The type of resources that the group contains. Valid values for this property are: * `youtube#channel` * `youtube#playlist` * `youtube#video` * `youtubePartner#asset`",
          type = "string",
        },
      },
      type = "object",
    },
    GroupItem = {
      description = "A group item.",
      id = "GroupItem",
      properties = {
        errors = {
          ["$ref"] = "Errors",
          description = "Apiary error details",
        },
        etag = {
          description = "The Etag of this resource.",
          type = "string",
        },
        groupId = {
          description = "The ID that YouTube uses to uniquely identify the group that contains the item.",
          type = "string",
        },
        id = {
          description = "The ID that YouTube uses to uniquely identify the `channel`, `video`, `playlist`, or `asset` resource that is included in the group. Note that this ID refers specifically to the inclusion of that resource in a particular group and is different than the channel ID, video ID, playlist ID, or asset ID that uniquely identifies the resource itself. The `resource.id` property's value specifies the unique channel, video, playlist, or asset ID.",
          type = "string",
        },
        kind = {
          description = "Identifies the API resource's type. The value will be `youtube#groupItem`.",
          type = "string",
        },
        resource = {
          ["$ref"] = "GroupItemResource",
          description = "The `resource` object contains information that identifies the item being added to the group.",
        },
      },
      type = "object",
    },
    GroupItemResource = {
      id = "GroupItemResource",
      properties = {
        id = {
          description = "The channel, video, playlist, or asset ID that YouTube uses to uniquely identify the item that is being added to the group.",
          type = "string",
        },
        kind = {
          description = "Identifies the type of resource being added to the group. Valid values for this property are: * `youtube#channel` * `youtube#playlist` * `youtube#video` * `youtubePartner#asset`",
          type = "string",
        },
      },
      type = "object",
    },
    GroupSnippet = {
      description = "A group snippet.",
      id = "GroupSnippet",
      properties = {
        publishedAt = {
          description = "The date and time that the group was created. The value is specified in ISO 8601 (YYYY-MM-DDThh:mm:ss.sZ) format.",
          format = "google-datetime",
          type = "string",
        },
        title = {
          description = "The group name. The value must be a non-empty string.",
          type = "string",
        },
      },
      type = "object",
    },
    ListGroupItemsResponse = {
      description = "Response message for GroupsService.ListGroupItems.",
      id = "ListGroupItemsResponse",
      properties = {
        errors = {
          ["$ref"] = "Errors",
          description = "Apiary error details",
        },
        etag = {
          description = "The Etag of this resource.",
          type = "string",
        },
        items = {
          description = "A list of groups that match the API request parameters. Each item in the list represents a `groupItem` resource.",
          items = {
            ["$ref"] = "GroupItem",
          },
          type = "array",
        },
        kind = {
          description = "Identifies the API resource's type. The value will be `youtube#groupItemListResponse`.",
          type = "string",
        },
      },
      type = "object",
    },
    ListGroupsResponse = {
      description = "Response message for GroupsService.ListGroups.",
      id = "ListGroupsResponse",
      properties = {
        errors = {
          ["$ref"] = "Errors",
          description = "Apiary error details",
        },
        etag = {
          description = "The Etag of this resource.",
          type = "string",
        },
        items = {
          description = "A list of groups that match the API request parameters. Each item in the list represents a `group` resource.",
          items = {
            ["$ref"] = "Group",
          },
          type = "array",
        },
        kind = {
          description = "Identifies the API resource's type. The value will be `youtube#groupListResponse`.",
          type = "string",
        },
        nextPageToken = {
          description = "The token that can be used as the value of the `pageToken` parameter to retrieve the next page in the result set.",
          type = "string",
        },
      },
      type = "object",
    },
    QueryResponse = {
      description = "Response message for TargetedQueriesService.Query.",
      id = "QueryResponse",
      properties = {
        columnHeaders = {
          description = "This value specifies information about the data returned in the `rows` fields. Each item in the `columnHeaders` list identifies a field returned in the `rows` value, which contains a list of comma-delimited data. The `columnHeaders` list will begin with the dimensions specified in the API request, which will be followed by the metrics specified in the API request. The order of both dimensions and metrics will match the ordering in the API request. For example, if the API request contains the parameters `dimensions=ageGroup,gender&metrics=viewerPercentage`, the API response will return columns in this order: `ageGroup`, `gender`, `viewerPercentage`.",
          items = {
            ["$ref"] = "ResultTableColumnHeader",
          },
          type = "array",
        },
        errors = {
          ["$ref"] = "Errors",
          description = "When set, indicates that the operation failed.",
        },
        kind = {
          description = "This value specifies the type of data included in the API response. For the query method, the kind property value will be `youtubeAnalytics#resultTable`.",
          type = "string",
        },
        rows = {
          description = "The list contains all rows of the result table. Each item in the list is an array that contains comma-delimited data corresponding to a single row of data. The order of the comma-delimited data fields will match the order of the columns listed in the `columnHeaders` field. If no data is available for the given query, the `rows` element will be omitted from the response. The response for a query with the `day` dimension will not contain rows for the most recent days.",
          items = {
            items = {
              type = "any",
            },
            type = "array",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ResultTableColumnHeader = {
      description = "The description of a column of the result table.",
      id = "ResultTableColumnHeader",
      properties = {
        columnType = {
          description = "The type of the column (`DIMENSION` or `METRIC`).",
          type = "string",
        },
        dataType = {
          description = "The type of the data in the column (`STRING`, `INTEGER`, `FLOAT`, etc.).",
          type = "string",
        },
        name = {
          description = "The name of the dimension or metric.",
          type = "string",
        },
      },
      type = "object",
    },
  },
  servicePath = "",
  title = "YouTube Analytics API",
  version = "v2",
  version_module = true,
}
