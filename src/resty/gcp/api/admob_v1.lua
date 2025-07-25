return {
  auth = {
    oauth2 = {
      scopes = {
        ["https://www.googleapis.com/auth/admob.readonly"] = {
          description = "See your AdMob data",
        },
        ["https://www.googleapis.com/auth/admob.report"] = {
          description = "See your AdMob data",
        },
      },
    },
  },
  basePath = "",
  baseUrl = "https://admob.googleapis.com/",
  batchPath = "batch",
  canonicalName = "AdMob",
  description = "The AdMob API allows publishers to programmatically get information about their AdMob account. ",
  discoveryVersion = "v1",
  documentationLink = "https://developers.google.com/admob/api/",
  fullyEncodeReservedExpansion = true,
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "admob:v1",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://admob.mtls.googleapis.com/",
  name = "admob",
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
      methods = {
        get = {
          description = "Gets information about the specified AdMob publisher account.",
          flatPath = "v1/accounts/{accountsId}",
          httpMethod = "GET",
          id = "admob.accounts.get",
          parameterOrder = {
            "name",
          },
          parameters = {
            name = {
              description = "Resource name of the publisher account to retrieve. Example: accounts/pub-9876543210987654",
              location = "path",
              pattern = "^accounts/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "v1/{+name}",
          response = {
            ["$ref"] = "PublisherAccount",
          },
          scopes = {
            "https://www.googleapis.com/auth/admob.readonly",
            "https://www.googleapis.com/auth/admob.report",
          },
          streamingType = "NONE",
        },
        list = {
          description = "Lists the AdMob publisher account that was most recently signed in to from the AdMob UI. For more information, see https://support.google.com/admob/answer/10243672.",
          flatPath = "v1/accounts",
          httpMethod = "GET",
          id = "admob.accounts.list",
          parameterOrder = {},
          parameters = {
            pageSize = {
              description = "Maximum number of accounts to return.",
              format = "int32",
              location = "query",
              type = "integer",
            },
            pageToken = {
              description = "The value returned by the last `ListPublisherAccountsResponse`; indicates that this is a continuation of a prior `ListPublisherAccounts` call, and that the system should return the next page of data.",
              location = "query",
              type = "string",
            },
          },
          path = "v1/accounts",
          response = {
            ["$ref"] = "ListPublisherAccountsResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/admob.readonly",
            "https://www.googleapis.com/auth/admob.report",
          },
          streamingType = "NONE",
        },
      },
      resources = {
        adUnits = {
          methods = {
            list = {
              description = "List the ad units under the specified AdMob account.",
              flatPath = "v1/accounts/{accountsId}/adUnits",
              httpMethod = "GET",
              id = "admob.accounts.adUnits.list",
              parameterOrder = {
                "parent",
              },
              parameters = {
                pageSize = {
                  description = "The maximum number of ad units to return. If unspecified or 0, at most 10,000 ad units will be returned. The maximum value is 20,000; values above 20,000 will be coerced to 20,000.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "The value returned by the last `ListAdUnitsResponse`; indicates that this is a continuation of a prior `ListAdUnits` call, and that the system should return the next page of data.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "Required. Resource name of the account to list ad units for. Example: accounts/pub-9876543210987654",
                  location = "path",
                  pattern = "^accounts/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/adUnits",
              response = {
                ["$ref"] = "ListAdUnitsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/admob.readonly",
              },
              streamingType = "NONE",
            },
          },
        },
        apps = {
          methods = {
            list = {
              description = "List the apps under the specified AdMob account.",
              flatPath = "v1/accounts/{accountsId}/apps",
              httpMethod = "GET",
              id = "admob.accounts.apps.list",
              parameterOrder = {
                "parent",
              },
              parameters = {
                pageSize = {
                  description = "The maximum number of apps to return. If unspecified or 0, at most 10,000 apps will be returned. The maximum value is 20,000; values above 20,000 will be coerced to 20,000.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "The value returned by the last `ListAppsResponse`; indicates that this is a continuation of a prior `ListApps` call, and that the system should return the next page of data.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "Required. Resource name of the account to list apps for. Example: accounts/pub-9876543210987654",
                  location = "path",
                  pattern = "^accounts/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/apps",
              response = {
                ["$ref"] = "ListAppsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/admob.readonly",
              },
              streamingType = "NONE",
            },
          },
        },
        mediationReport = {
          methods = {
            generate = {
              description = "Generates an AdMob mediation report based on the provided report specification. Returns result of a server-side streaming RPC. The result is returned in a sequence of responses.",
              flatPath = "v1/accounts/{accountsId}/mediationReport:generate",
              httpMethod = "POST",
              id = "admob.accounts.mediationReport.generate",
              parameterOrder = {
                "parent",
              },
              parameters = {
                parent = {
                  description = "Resource name of the account to generate the report for. Example: accounts/pub-9876543210987654",
                  location = "path",
                  pattern = "^accounts/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/mediationReport:generate",
              request = {
                ["$ref"] = "GenerateMediationReportRequest",
              },
              response = {
                ["$ref"] = "GenerateMediationReportResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/admob.readonly",
                "https://www.googleapis.com/auth/admob.report",
              },
              streamingType = "SERVER_SIDE",
            },
          },
        },
        networkReport = {
          methods = {
            generate = {
              description = "Generates an AdMob Network report based on the provided report specification. Returns result of a server-side streaming RPC. The result is returned in a sequence of responses.",
              flatPath = "v1/accounts/{accountsId}/networkReport:generate",
              httpMethod = "POST",
              id = "admob.accounts.networkReport.generate",
              parameterOrder = {
                "parent",
              },
              parameters = {
                parent = {
                  description = "Resource name of the account to generate the report for. Example: accounts/pub-9876543210987654",
                  location = "path",
                  pattern = "^accounts/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/networkReport:generate",
              request = {
                ["$ref"] = "GenerateNetworkReportRequest",
              },
              response = {
                ["$ref"] = "GenerateNetworkReportResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/admob.readonly",
                "https://www.googleapis.com/auth/admob.report",
              },
              streamingType = "SERVER_SIDE",
            },
          },
        },
      },
    },
  },
  revision = "20230117",
  rootUrl = "https://admob.googleapis.com/",
  schemas = {
    AdUnit = {
      description = "Describes an AdMob ad unit.",
      id = "AdUnit",
      properties = {
        adFormat = {
          description = "AdFormat of the ad unit. Possible values are as follows: \"APP_OPEN\" - App Open ad format. \"BANNER\" - Banner ad format. \"BANNER_INTERSTITIAL\" - Legacy format that can be used as either banner or interstitial. This format can no longer be created but can be targeted by mediation groups. \"INTERSTITIAL\" - A full screen ad. Supported ad types are \"RICH_MEDIA\" and \"VIDEO\". \"NATIVE\" - Native ad format. \"REWARDED\" - An ad that, once viewed, gets a callback verifying the view so that a reward can be given to the user. Supported ad types are \"RICH_MEDIA\" (interactive) and video where video can not be excluded. \"REWARDED_INTERSTITIAL\" - Rewarded Interstitial ad format. Only supports video ad type. See https://support.google.com/admob/answer/9884467.",
          type = "string",
        },
        adTypes = {
          description = "Ad media type supported by this ad unit. Possible values as follows: \"RICH_MEDIA\" - Text, image, and other non-video media. \"VIDEO\" - Video media.",
          items = {
            type = "string",
          },
          type = "array",
        },
        adUnitId = {
          description = "The externally visible ID of the ad unit which can be used to integrate with the AdMob SDK. This is a read only property. Example: ca-app-pub-9876543210987654/0123456789",
          type = "string",
        },
        appId = {
          description = "The externally visible ID of the app this ad unit is associated with. Example: ca-app-pub-9876543210987654~0123456789",
          type = "string",
        },
        displayName = {
          description = "The display name of the ad unit as shown in the AdMob UI, which is provided by the user. The maximum length allowed is 80 characters.",
          type = "string",
        },
        name = {
          description = "Resource name for this ad unit. Format is accounts/{publisher_id}/adUnits/{ad_unit_id_fragment} Example: accounts/pub-9876543210987654/adUnits/0123456789",
          type = "string",
        },
      },
      type = "object",
    },
    App = {
      description = "Describes an AdMob app for a specific platform (For example: Android or iOS).",
      id = "App",
      properties = {
        appApprovalState = {
          description = "Output only. The approval state for the app.",
          enum = {
            "APP_APPROVAL_STATE_UNSPECIFIED",
            "ACTION_REQUIRED",
            "IN_REVIEW",
            "APPROVED",
          },
          enumDescriptions = {
            "Default value for an unset field. Do not use.",
            "The app requires additional user action to be approved. Please refer to https://support.google.com/admob/answer/10564477 for details and next steps.",
            "The app is pending review.",
            "The app is approved and can serve ads.",
          },
          readOnly = true,
          type = "string",
        },
        appId = {
          description = "The externally visible ID of the app which can be used to integrate with the AdMob SDK. This is a read only property. Example: ca-app-pub-9876543210987654~0123456789",
          type = "string",
        },
        linkedAppInfo = {
          ["$ref"] = "AppLinkedAppInfo",
          description = "Immutable. The information for an app that is linked to an app store. This field is present if and only if the app is linked to an app store.",
        },
        manualAppInfo = {
          ["$ref"] = "AppManualAppInfo",
          description = "The information for an app that is not linked to any app store. After an app is linked, this information is still retrivable. If no name is provided for the app upon creation, a placeholder name will be used.",
        },
        name = {
          description = "Resource name for this app. Format is accounts/{publisher_id}/apps/{app_id_fragment} Example: accounts/pub-9876543210987654/apps/0123456789",
          type = "string",
        },
        platform = {
          description = "Describes the platform of the app. Limited to \"IOS\" and \"ANDROID\".",
          type = "string",
        },
      },
      type = "object",
    },
    AppLinkedAppInfo = {
      description = "Information from the app store if the app is linked to an app store.",
      id = "AppLinkedAppInfo",
      properties = {
        appStoreId = {
          description = "The app store ID of the app; present if and only if the app is linked to an app store. If the app is added to the Google Play store, it will be the application ID of the app. For example: \"com.example.myapp\". See https://developer.android.com/studio/build/application-id. If the app is added to the Apple App Store, it will be app store ID. For example \"105169111\". Note that setting the app store id is considered an irreversible action. Once an app is linked, it cannot be unlinked.",
          type = "string",
        },
        displayName = {
          description = "Output only. Display name of the app as it appears in the app store. This is an output-only field, and may be empty if the app cannot be found in the store.",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    AppManualAppInfo = {
      description = "Information provided for manual apps which are not linked to an application store (Example: Google Play, App Store).",
      id = "AppManualAppInfo",
      properties = {
        displayName = {
          description = "The display name of the app as shown in the AdMob UI, which is provided by the user. The maximum length allowed is 80 characters.",
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
    DateRange = {
      description = "Specification of a single date range. Both dates are inclusive.",
      id = "DateRange",
      properties = {
        endDate = {
          ["$ref"] = "Date",
          description = "End date of the date range, inclusive. Must be greater than or equal to the start date.",
        },
        startDate = {
          ["$ref"] = "Date",
          description = "Start date of the date range, inclusive. Must be less than or equal to the end date.",
        },
      },
      type = "object",
    },
    GenerateMediationReportRequest = {
      description = "Request to generate an AdMob mediation report.",
      id = "GenerateMediationReportRequest",
      properties = {
        reportSpec = {
          ["$ref"] = "MediationReportSpec",
          description = "Network report specification.",
        },
      },
      type = "object",
    },
    GenerateMediationReportResponse = {
      description = "The streaming response for the AdMob mediation report where the first response contains the report header, then a stream of row responses, and finally a footer as the last response message. For example: [{ \"header\": { \"date_range\": { \"start_date\": {\"year\": 2018, \"month\": 9, \"day\": 1}, \"end_date\": {\"year\": 2018, \"month\": 9, \"day\": 1} }, \"localization_settings\": { \"currency_code\": \"USD\", \"language_code\": \"en-US\" } } }, { \"row\": { \"dimension_values\": { \"DATE\": {\"value\": \"20180918\"}, \"APP\": { \"value\": \"ca-app-pub-8123415297019784~1001342552\", \"display_label\": \"My app name!\" } }, \"metric_values\": { \"ESTIMATED_EARNINGS\": {\"decimal_value\": \"1324746\"} } } }, { \"footer\": {\"matching_row_count\": 1} }]",
      id = "GenerateMediationReportResponse",
      properties = {
        footer = {
          ["$ref"] = "ReportFooter",
          description = "Additional information about the generated report, such as warnings about the data.",
        },
        header = {
          ["$ref"] = "ReportHeader",
          description = "Report generation settings that describes the report contents, such as the report date range and localization settings.",
        },
        row = {
          ["$ref"] = "ReportRow",
          description = "Actual report data.",
        },
      },
      type = "object",
    },
    GenerateNetworkReportRequest = {
      description = "Request to generate an AdMob Network report.",
      id = "GenerateNetworkReportRequest",
      properties = {
        reportSpec = {
          ["$ref"] = "NetworkReportSpec",
          description = "Network report specification.",
        },
      },
      type = "object",
    },
    GenerateNetworkReportResponse = {
      description = "The streaming response for the AdMob Network report where the first response contains the report header, then a stream of row responses, and finally a footer as the last response message. For example: [{ \"header\": { \"dateRange\": { \"startDate\": {\"year\": 2018, \"month\": 9, \"day\": 1}, \"endDate\": {\"year\": 2018, \"month\": 9, \"day\": 1} }, \"localizationSettings\": { \"currencyCode\": \"USD\", \"languageCode\": \"en-US\" } } }, { \"row\": { \"dimensionValues\": { \"DATE\": {\"value\": \"20180918\"}, \"APP\": { \"value\": \"ca-app-pub-8123415297019784~1001342552\", displayLabel: \"My app name!\" } }, \"metricValues\": { \"ESTIMATED_EARNINGS\": {\"microsValue\": 6500000} } } }, { \"footer\": {\"matchingRowCount\": 1} }]",
      id = "GenerateNetworkReportResponse",
      properties = {
        footer = {
          ["$ref"] = "ReportFooter",
          description = "Additional information about the generated report, such as warnings about the data.",
        },
        header = {
          ["$ref"] = "ReportHeader",
          description = "Report generation settings that describes the report contents, such as the report date range and localization settings.",
        },
        row = {
          ["$ref"] = "ReportRow",
          description = "Actual report data.",
        },
      },
      type = "object",
    },
    ListAdUnitsResponse = {
      description = "Response for the ad units list request.",
      id = "ListAdUnitsResponse",
      properties = {
        adUnits = {
          description = "The resulting ad units for the requested account.",
          items = {
            ["$ref"] = "AdUnit",
          },
          type = "array",
        },
        nextPageToken = {
          description = "If not empty, indicates that there may be more ad units for the request; this value should be passed in a new `ListAdUnitsRequest`.",
          type = "string",
        },
      },
      type = "object",
    },
    ListAppsResponse = {
      description = "Response for the apps list request.",
      id = "ListAppsResponse",
      properties = {
        apps = {
          description = "The resulting apps for the requested account.",
          items = {
            ["$ref"] = "App",
          },
          type = "array",
        },
        nextPageToken = {
          description = "If not empty, indicates that there may be more apps for the request; this value should be passed in a new `ListAppsRequest`.",
          type = "string",
        },
      },
      type = "object",
    },
    ListPublisherAccountsResponse = {
      description = "Response for the publisher account list request.",
      id = "ListPublisherAccountsResponse",
      properties = {
        account = {
          description = "Publisher that the client credentials can access.",
          items = {
            ["$ref"] = "PublisherAccount",
          },
          type = "array",
        },
        nextPageToken = {
          description = "If not empty, indicates that there might be more accounts for the request; you must pass this value in a new `ListPublisherAccountsRequest`.",
          type = "string",
        },
      },
      type = "object",
    },
    LocalizationSettings = {
      description = "Localization settings for reports, such as currency and language. It affects how metrics are calculated.",
      id = "LocalizationSettings",
      properties = {
        currencyCode = {
          description = "Currency code of the earning related metrics, which is the 3-letter code defined in ISO 4217. The daily average rate is used for the currency conversion. Defaults to the account currency code if unspecified.",
          type = "string",
        },
        languageCode = {
          description = "Language used for any localized text, such as some dimension value display labels. The language tag defined in the IETF BCP47. Defaults to 'en-US' if unspecified.",
          type = "string",
        },
      },
      type = "object",
    },
    MediationReportSpec = {
      description = "The specification for generating an AdMob Mediation report. For example, the specification to get observed ECPM sliced by ad source and app for the 'US' and 'CN' countries can look like the following example: { \"date_range\": { \"start_date\": {\"year\": 2021, \"month\": 9, \"day\": 1}, \"end_date\": {\"year\": 2021, \"month\": 9, \"day\": 30} }, \"dimensions\": [\"AD_SOURCE\", \"APP\", \"COUNTRY\"], \"metrics\": [\"OBSERVED_ECPM\"], \"dimension_filters\": [ { \"dimension\": \"COUNTRY\", \"matches_any\": {\"values\": [{\"value\": \"US\", \"value\": \"CN\"}]} } ], \"sort_conditions\": [ {\"dimension\":\"APP\", order: \"ASCENDING\"} ], \"localization_settings\": { \"currency_code\": \"USD\", \"language_code\": \"en-US\" } } For a better understanding, you can treat the preceding specification like the following pseudo SQL: SELECT AD_SOURCE, APP, COUNTRY, OBSERVED_ECPM FROM MEDIATION_REPORT WHERE DATE >= '2021-09-01' AND DATE <= '2021-09-30' AND COUNTRY IN ('US', 'CN') GROUP BY AD_SOURCE, APP, COUNTRY ORDER BY APP ASC;",
      id = "MediationReportSpec",
      properties = {
        dateRange = {
          ["$ref"] = "DateRange",
          description = "The date range for which the report is generated.",
        },
        dimensionFilters = {
          description = "Describes which report rows to match based on their dimension values.",
          items = {
            ["$ref"] = "MediationReportSpecDimensionFilter",
          },
          type = "array",
        },
        dimensions = {
          description = "List of dimensions of the report. The value combination of these dimensions determines the row of the report. If no dimensions are specified, the report returns a single row of requested metrics for the entire account.",
          items = {
            enum = {
              "DIMENSION_UNSPECIFIED",
              "DATE",
              "MONTH",
              "WEEK",
              "AD_SOURCE",
              "AD_SOURCE_INSTANCE",
              "AD_UNIT",
              "APP",
              "MEDIATION_GROUP",
              "COUNTRY",
              "FORMAT",
              "PLATFORM",
              "MOBILE_OS_VERSION",
              "GMA_SDK_VERSION",
              "APP_VERSION_NAME",
              "SERVING_RESTRICTION",
            },
            enumDescriptions = {
              "Default value for an unset field. Do not use.",
              "A date in the YYYYMMDD format (for example, \"20210701\"). Requests can specify at most one time dimension.",
              "A month in the YYYYMM format (for example, \"202107\"). Requests can specify at most one time dimension.",
              "The date of the first day of a week in the YYYYMMDD format (for example, \"20210701\"). Requests can specify at most one time dimension.",
              "The [unique ID of the ad source](/admob/api/v1/ad_sources) (for example, \"5450213213286189855\" and \"AdMob Network\" as label value).",
              "The unique ID of the ad source instance (for example, \"ca-app-pub-1234:asi:5678\" and \"AdMob (default)\" as label value).",
              "The unique ID of the ad unit (for example, \"ca-app-pub-1234/8790\"). If AD_UNIT dimension is specified, then APP is included automatically.",
              "The unique ID of the mobile application (for example, \"ca-app-pub-1234~1234\").",
              "The unique ID of the mediation group (for example, \"ca-app-pub-1234:mg:1234\" and \"AdMob (default)\" as label value).",
              "CLDR country code of the place where the ad views/clicks occur (for example, \"US\" or \"FR\"). This is a geography dimension.",
              "Format of the ad unit (for example, \"banner\", \"native\"), an ad delivery dimension.",
              "Mobile OS platform of the app (for example, \"Android\" or \"iOS\").",
              "Mobile operating system version, e.g. \"iOS 13.5.1\". **Warning:** The dimension is incompatible with [ESTIMATED_EARNINGS](#Metric.ENUM_VALUES.ESTIMATED_EARNINGS), [OBSERVED_ECPM](#Metric.ENUM_VALUES.OBSERVED_ECPM) metrics.",
              "GMA SDK version, e.g. \"iOS 7.62.0\". **Warning:** The dimension is incompatible with [ESTIMATED_EARNINGS](#Metric.ENUM_VALUES.ESTIMATED_EARNINGS), [OBSERVED_ECPM](#Metric.ENUM_VALUES.OBSERVED_ECPM) metrics.",
              "For Android, the app version name can be found in versionName in PackageInfo. For iOS, the app version name can be found in CFBundleShortVersionString. **Warning:** The dimension is incompatible with [ESTIMATED_EARNINGS](#Metric.ENUM_VALUES.ESTIMATED_EARNINGS), [OBSERVED_ECPM](#Metric.ENUM_VALUES.OBSERVED_ECPM) metrics.",
              "Restriction mode for ads serving (e.g. \"Non-personalized ads\"). **Warning:** The dimension is incompatible with [ESTIMATED_EARNINGS](#Metric.ENUM_VALUES.ESTIMATED_EARNINGS) metric.",
            },
            type = "string",
          },
          type = "array",
        },
        localizationSettings = {
          ["$ref"] = "LocalizationSettings",
          description = "Localization settings of the report.",
        },
        maxReportRows = {
          description = "Maximum number of report data rows to return. If the value is not set, the API returns as many rows as possible, up to 100000. Acceptable values are 1-100000, inclusive. Values larger than 100000 return an error.",
          format = "int32",
          type = "integer",
        },
        metrics = {
          description = "List of metrics of the report. A report must specify at least one metric.",
          items = {
            enum = {
              "METRIC_UNSPECIFIED",
              "AD_REQUESTS",
              "CLICKS",
              "ESTIMATED_EARNINGS",
              "IMPRESSIONS",
              "IMPRESSION_CTR",
              "MATCHED_REQUESTS",
              "MATCH_RATE",
              "OBSERVED_ECPM",
            },
            enumDescriptions = {
              "Default value for an unset field. Do not use.",
              "The number of requests. The value is an integer.",
              "The number of times a user clicks an ad. The value is an integer.",
              "The estimated earnings of the AdMob publisher. The currency unit (USD, EUR, or other) of the earning metrics are determined by the localization setting for currency. The amount is in micros. For example, $6.50 would be represented as 6500000. Estimated earnings per mediation group and per ad source instance level is supported dating back to October 20, 2019. Third-party estimated earnings will show 0 for dates prior to October 20, 2019.",
              "The total number of ads shown to users. The value is an integer.",
              "The ratio of clicks over impressions. The value is a double precision (approximate) decimal value.",
              "The number of times ads are returned in response to a request. The value is an integer.",
              "The ratio of matched ad requests over the total ad requests. The value is a double precision (approximate) decimal value.",
              "The third-party ad network's estimated average eCPM. The currency unit (USD, EUR, or other) of the earning metrics are determined by the localization setting for currency. The amount is in micros. For example, $2.30 would be represented as 2300000. The estimated average eCPM per mediation group and per ad source instance level is supported dating back to October 20, 2019. Third-party estimated average eCPM will show 0 for dates prior to October 20, 2019.",
            },
            type = "string",
          },
          type = "array",
        },
        sortConditions = {
          description = "Describes the sorting of report rows. The order of the condition in the list defines its precedence; the earlier the condition, the higher its precedence. If no sort conditions are specified, the row ordering is undefined.",
          items = {
            ["$ref"] = "MediationReportSpecSortCondition",
          },
          type = "array",
        },
        timeZone = {
          description = "A report time zone. Accepts an IANA TZ name values, such as \"America/Los_Angeles.\" If no time zone is defined, the account default takes effect. Check default value by the get account action. **Warning:** The \"America/Los_Angeles\" is the only supported value at the moment.",
          type = "string",
        },
      },
      type = "object",
    },
    MediationReportSpecDimensionFilter = {
      description = "Describes which report rows to match based on their dimension values.",
      id = "MediationReportSpecDimensionFilter",
      properties = {
        dimension = {
          description = "Applies the filter criterion to the specified dimension.",
          enum = {
            "DIMENSION_UNSPECIFIED",
            "DATE",
            "MONTH",
            "WEEK",
            "AD_SOURCE",
            "AD_SOURCE_INSTANCE",
            "AD_UNIT",
            "APP",
            "MEDIATION_GROUP",
            "COUNTRY",
            "FORMAT",
            "PLATFORM",
            "MOBILE_OS_VERSION",
            "GMA_SDK_VERSION",
            "APP_VERSION_NAME",
            "SERVING_RESTRICTION",
          },
          enumDescriptions = {
            "Default value for an unset field. Do not use.",
            "A date in the YYYYMMDD format (for example, \"20210701\"). Requests can specify at most one time dimension.",
            "A month in the YYYYMM format (for example, \"202107\"). Requests can specify at most one time dimension.",
            "The date of the first day of a week in the YYYYMMDD format (for example, \"20210701\"). Requests can specify at most one time dimension.",
            "The [unique ID of the ad source](/admob/api/v1/ad_sources) (for example, \"5450213213286189855\" and \"AdMob Network\" as label value).",
            "The unique ID of the ad source instance (for example, \"ca-app-pub-1234:asi:5678\" and \"AdMob (default)\" as label value).",
            "The unique ID of the ad unit (for example, \"ca-app-pub-1234/8790\"). If AD_UNIT dimension is specified, then APP is included automatically.",
            "The unique ID of the mobile application (for example, \"ca-app-pub-1234~1234\").",
            "The unique ID of the mediation group (for example, \"ca-app-pub-1234:mg:1234\" and \"AdMob (default)\" as label value).",
            "CLDR country code of the place where the ad views/clicks occur (for example, \"US\" or \"FR\"). This is a geography dimension.",
            "Format of the ad unit (for example, \"banner\", \"native\"), an ad delivery dimension.",
            "Mobile OS platform of the app (for example, \"Android\" or \"iOS\").",
            "Mobile operating system version, e.g. \"iOS 13.5.1\". **Warning:** The dimension is incompatible with [ESTIMATED_EARNINGS](#Metric.ENUM_VALUES.ESTIMATED_EARNINGS), [OBSERVED_ECPM](#Metric.ENUM_VALUES.OBSERVED_ECPM) metrics.",
            "GMA SDK version, e.g. \"iOS 7.62.0\". **Warning:** The dimension is incompatible with [ESTIMATED_EARNINGS](#Metric.ENUM_VALUES.ESTIMATED_EARNINGS), [OBSERVED_ECPM](#Metric.ENUM_VALUES.OBSERVED_ECPM) metrics.",
            "For Android, the app version name can be found in versionName in PackageInfo. For iOS, the app version name can be found in CFBundleShortVersionString. **Warning:** The dimension is incompatible with [ESTIMATED_EARNINGS](#Metric.ENUM_VALUES.ESTIMATED_EARNINGS), [OBSERVED_ECPM](#Metric.ENUM_VALUES.OBSERVED_ECPM) metrics.",
            "Restriction mode for ads serving (e.g. \"Non-personalized ads\"). **Warning:** The dimension is incompatible with [ESTIMATED_EARNINGS](#Metric.ENUM_VALUES.ESTIMATED_EARNINGS) metric.",
          },
          type = "string",
        },
        matchesAny = {
          ["$ref"] = "StringList",
          description = "Matches a row if its value for the specified dimension is in one of the values specified in this condition.",
        },
      },
      type = "object",
    },
    MediationReportSpecSortCondition = {
      description = "Sorting direction to be applied on a dimension or a metric.",
      id = "MediationReportSpecSortCondition",
      properties = {
        dimension = {
          description = "Sort by the specified dimension.",
          enum = {
            "DIMENSION_UNSPECIFIED",
            "DATE",
            "MONTH",
            "WEEK",
            "AD_SOURCE",
            "AD_SOURCE_INSTANCE",
            "AD_UNIT",
            "APP",
            "MEDIATION_GROUP",
            "COUNTRY",
            "FORMAT",
            "PLATFORM",
            "MOBILE_OS_VERSION",
            "GMA_SDK_VERSION",
            "APP_VERSION_NAME",
            "SERVING_RESTRICTION",
          },
          enumDescriptions = {
            "Default value for an unset field. Do not use.",
            "A date in the YYYYMMDD format (for example, \"20210701\"). Requests can specify at most one time dimension.",
            "A month in the YYYYMM format (for example, \"202107\"). Requests can specify at most one time dimension.",
            "The date of the first day of a week in the YYYYMMDD format (for example, \"20210701\"). Requests can specify at most one time dimension.",
            "The [unique ID of the ad source](/admob/api/v1/ad_sources) (for example, \"5450213213286189855\" and \"AdMob Network\" as label value).",
            "The unique ID of the ad source instance (for example, \"ca-app-pub-1234:asi:5678\" and \"AdMob (default)\" as label value).",
            "The unique ID of the ad unit (for example, \"ca-app-pub-1234/8790\"). If AD_UNIT dimension is specified, then APP is included automatically.",
            "The unique ID of the mobile application (for example, \"ca-app-pub-1234~1234\").",
            "The unique ID of the mediation group (for example, \"ca-app-pub-1234:mg:1234\" and \"AdMob (default)\" as label value).",
            "CLDR country code of the place where the ad views/clicks occur (for example, \"US\" or \"FR\"). This is a geography dimension.",
            "Format of the ad unit (for example, \"banner\", \"native\"), an ad delivery dimension.",
            "Mobile OS platform of the app (for example, \"Android\" or \"iOS\").",
            "Mobile operating system version, e.g. \"iOS 13.5.1\". **Warning:** The dimension is incompatible with [ESTIMATED_EARNINGS](#Metric.ENUM_VALUES.ESTIMATED_EARNINGS), [OBSERVED_ECPM](#Metric.ENUM_VALUES.OBSERVED_ECPM) metrics.",
            "GMA SDK version, e.g. \"iOS 7.62.0\". **Warning:** The dimension is incompatible with [ESTIMATED_EARNINGS](#Metric.ENUM_VALUES.ESTIMATED_EARNINGS), [OBSERVED_ECPM](#Metric.ENUM_VALUES.OBSERVED_ECPM) metrics.",
            "For Android, the app version name can be found in versionName in PackageInfo. For iOS, the app version name can be found in CFBundleShortVersionString. **Warning:** The dimension is incompatible with [ESTIMATED_EARNINGS](#Metric.ENUM_VALUES.ESTIMATED_EARNINGS), [OBSERVED_ECPM](#Metric.ENUM_VALUES.OBSERVED_ECPM) metrics.",
            "Restriction mode for ads serving (e.g. \"Non-personalized ads\"). **Warning:** The dimension is incompatible with [ESTIMATED_EARNINGS](#Metric.ENUM_VALUES.ESTIMATED_EARNINGS) metric.",
          },
          type = "string",
        },
        metric = {
          description = "Sort by the specified metric.",
          enum = {
            "METRIC_UNSPECIFIED",
            "AD_REQUESTS",
            "CLICKS",
            "ESTIMATED_EARNINGS",
            "IMPRESSIONS",
            "IMPRESSION_CTR",
            "MATCHED_REQUESTS",
            "MATCH_RATE",
            "OBSERVED_ECPM",
          },
          enumDescriptions = {
            "Default value for an unset field. Do not use.",
            "The number of requests. The value is an integer.",
            "The number of times a user clicks an ad. The value is an integer.",
            "The estimated earnings of the AdMob publisher. The currency unit (USD, EUR, or other) of the earning metrics are determined by the localization setting for currency. The amount is in micros. For example, $6.50 would be represented as 6500000. Estimated earnings per mediation group and per ad source instance level is supported dating back to October 20, 2019. Third-party estimated earnings will show 0 for dates prior to October 20, 2019.",
            "The total number of ads shown to users. The value is an integer.",
            "The ratio of clicks over impressions. The value is a double precision (approximate) decimal value.",
            "The number of times ads are returned in response to a request. The value is an integer.",
            "The ratio of matched ad requests over the total ad requests. The value is a double precision (approximate) decimal value.",
            "The third-party ad network's estimated average eCPM. The currency unit (USD, EUR, or other) of the earning metrics are determined by the localization setting for currency. The amount is in micros. For example, $2.30 would be represented as 2300000. The estimated average eCPM per mediation group and per ad source instance level is supported dating back to October 20, 2019. Third-party estimated average eCPM will show 0 for dates prior to October 20, 2019.",
          },
          type = "string",
        },
        order = {
          description = "Sorting order of the dimension or metric.",
          enum = {
            "SORT_ORDER_UNSPECIFIED",
            "ASCENDING",
            "DESCENDING",
          },
          enumDescriptions = {
            "Default value for an unset field. Do not use.",
            "Sort dimension value or metric value in ascending order.",
            "Sort dimension value or metric value in descending order.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    NetworkReportSpec = {
      description = "The specification for generating an AdMob Network report. For example, the specification to get clicks and estimated earnings for only the 'US' and 'CN' countries can look like the following example: { 'date_range': { 'start_date': {'year': 2021, 'month': 9, 'day': 1}, 'end_date': {'year': 2021, 'month': 9, 'day': 30} }, 'dimensions': ['DATE', 'APP', 'COUNTRY'], 'metrics': ['CLICKS', 'ESTIMATED_EARNINGS'], 'dimension_filters': [ { 'dimension': 'COUNTRY', 'matches_any': {'values': [{'value': 'US', 'value': 'CN'}]} } ], 'sort_conditions': [ {'dimension':'APP', order: 'ASCENDING'}, {'metric':'CLICKS', order: 'DESCENDING'} ], 'localization_settings': { 'currency_code': 'USD', 'language_code': 'en-US' } } For a better understanding, you can treat the preceding specification like the following pseudo SQL: SELECT DATE, APP, COUNTRY, CLICKS, ESTIMATED_EARNINGS FROM NETWORK_REPORT WHERE DATE >= '2021-09-01' AND DATE <= '2021-09-30' AND COUNTRY IN ('US', 'CN') GROUP BY DATE, APP, COUNTRY ORDER BY APP ASC, CLICKS DESC;",
      id = "NetworkReportSpec",
      properties = {
        dateRange = {
          ["$ref"] = "DateRange",
          description = "The date range for which the report is generated.",
        },
        dimensionFilters = {
          description = "Describes which report rows to match based on their dimension values.",
          items = {
            ["$ref"] = "NetworkReportSpecDimensionFilter",
          },
          type = "array",
        },
        dimensions = {
          description = "List of dimensions of the report. The value combination of these dimensions determines the row of the report. If no dimensions are specified, the report returns a single row of requested metrics for the entire account.",
          items = {
            enum = {
              "DIMENSION_UNSPECIFIED",
              "DATE",
              "MONTH",
              "WEEK",
              "AD_UNIT",
              "APP",
              "AD_TYPE",
              "COUNTRY",
              "FORMAT",
              "PLATFORM",
              "MOBILE_OS_VERSION",
              "GMA_SDK_VERSION",
              "APP_VERSION_NAME",
              "SERVING_RESTRICTION",
            },
            enumDescriptions = {
              "Default value for an unset field. Do not use.",
              "A date in the YYYYMMDD format (for example, \"20210701\"). Requests can specify at most one time dimension.",
              "A month in the YYYYMM format (for example, \"202107\"). Requests can specify at most one time dimension.",
              "The date of the first day of a week in the YYYYMMDD format (for example, \"20210701\"). Requests can specify at most one time dimension.",
              "The unique ID of the ad unit (for example, \"ca-app-pub-1234/1234\"). If AD_UNIT dimension is specified, then APP is included automatically.",
              "The unique ID of the mobile application (for example, \"ca-app-pub-1234~1234\").",
              "Type of the ad (for example, \"text\" or \"image\"), an ad delivery dimension. **Warning:** The dimension is incompatible with [AD_REQUESTS](#Metric.ENUM_VALUES.AD_REQUESTS), [MATCH_RATE](#Metric.ENUM_VALUES.MATCH_RATE) and [IMPRESSION_RPM](#Metric.ENUM_VALUES.IMPRESSION_RPM) metrics.",
              "CLDR country code of the place where the ad views/clicks occur (for example, \"US\" or \"FR\"). This is a geography dimension.",
              "Format of the ad unit (for example, \"banner\", \"native\"), an ad delivery dimension.",
              "Mobile OS platform of the app (for example, \"Android\" or \"iOS\").",
              "Mobile operating system version, e.g. \"iOS 13.5.1\".",
              "GMA SDK version, e.g. \"iOS 7.62.0\".",
              "For Android, the app version name can be found in versionName in PackageInfo. For iOS, the app version name can be found in CFBundleShortVersionString.",
              "Restriction mode for ads serving (e.g. \"Non-personalized ads\").",
            },
            type = "string",
          },
          type = "array",
        },
        localizationSettings = {
          ["$ref"] = "LocalizationSettings",
          description = "Localization settings of the report.",
        },
        maxReportRows = {
          description = "Maximum number of report data rows to return. If the value is not set, the API returns as many rows as possible, up to 100000. Acceptable values are 1-100000, inclusive. Values larger than 100000 return an error.",
          format = "int32",
          type = "integer",
        },
        metrics = {
          description = "List of metrics of the report. A report must specify at least one metric.",
          items = {
            enum = {
              "METRIC_UNSPECIFIED",
              "AD_REQUESTS",
              "CLICKS",
              "ESTIMATED_EARNINGS",
              "IMPRESSIONS",
              "IMPRESSION_CTR",
              "IMPRESSION_RPM",
              "MATCHED_REQUESTS",
              "MATCH_RATE",
              "SHOW_RATE",
            },
            enumDescriptions = {
              "Default value for an unset field. Do not use.",
              "The number of ad requests. The value is an integer. **Warning:** The metric is incompatible with [AD_TYPE](#Dimension.ENUM_VALUES.AD_TYPE) dimension.",
              "The number of times a user clicks an ad. The value is an integer.",
              "The estimated earnings of the AdMob publisher. The currency unit (USD, EUR, or other) of the earning metrics are determined by the localization setting for currency. The amount is in micros. For example, $6.50 would be represented as 6500000.",
              "The total number of ads shown to users. The value is an integer.",
              "The ratio of clicks over impressions. The value is a double precision (approximate) decimal value.",
              "The estimated earnings per thousand ad impressions. The value is in micros. For example, $1.03 would be represented as 1030000. Equivalent to eCPM in the AdMob UI. **Warning:** The metric is incompatible with [AD_TYPE](#Dimension.ENUM_VALUES.AD_TYPE) dimension.",
              "The number of times ads are returned in response to a request. The value is an integer.",
              "The ratio of matched ad requests over the total ad requests. The value is a double precision (approximate) decimal value. **Warning:** The metric is incompatible with [AD_TYPE](#Dimension.ENUM_VALUES.AD_TYPE) dimension.",
              "The ratio of ads that are displayed over ads that are returned, defined as impressions / matched requests. The value is a double precision (approximate) decimal value.",
            },
            type = "string",
          },
          type = "array",
        },
        sortConditions = {
          description = "Describes the sorting of report rows. The order of the condition in the list defines its precedence; the earlier the condition, the higher its precedence. If no sort conditions are specified, the row ordering is undefined.",
          items = {
            ["$ref"] = "NetworkReportSpecSortCondition",
          },
          type = "array",
        },
        timeZone = {
          description = "A report time zone. Accepts an IANA TZ name values, such as \"America/Los_Angeles.\" If no time zone is defined, the account default takes effect. Check default value by the get account action. **Warning:** The \"America/Los_Angeles\" is the only supported value at the moment.",
          type = "string",
        },
      },
      type = "object",
    },
    NetworkReportSpecDimensionFilter = {
      description = "Describes which report rows to match based on their dimension values.",
      id = "NetworkReportSpecDimensionFilter",
      properties = {
        dimension = {
          description = "Applies the filter criterion to the specified dimension.",
          enum = {
            "DIMENSION_UNSPECIFIED",
            "DATE",
            "MONTH",
            "WEEK",
            "AD_UNIT",
            "APP",
            "AD_TYPE",
            "COUNTRY",
            "FORMAT",
            "PLATFORM",
            "MOBILE_OS_VERSION",
            "GMA_SDK_VERSION",
            "APP_VERSION_NAME",
            "SERVING_RESTRICTION",
          },
          enumDescriptions = {
            "Default value for an unset field. Do not use.",
            "A date in the YYYYMMDD format (for example, \"20210701\"). Requests can specify at most one time dimension.",
            "A month in the YYYYMM format (for example, \"202107\"). Requests can specify at most one time dimension.",
            "The date of the first day of a week in the YYYYMMDD format (for example, \"20210701\"). Requests can specify at most one time dimension.",
            "The unique ID of the ad unit (for example, \"ca-app-pub-1234/1234\"). If AD_UNIT dimension is specified, then APP is included automatically.",
            "The unique ID of the mobile application (for example, \"ca-app-pub-1234~1234\").",
            "Type of the ad (for example, \"text\" or \"image\"), an ad delivery dimension. **Warning:** The dimension is incompatible with [AD_REQUESTS](#Metric.ENUM_VALUES.AD_REQUESTS), [MATCH_RATE](#Metric.ENUM_VALUES.MATCH_RATE) and [IMPRESSION_RPM](#Metric.ENUM_VALUES.IMPRESSION_RPM) metrics.",
            "CLDR country code of the place where the ad views/clicks occur (for example, \"US\" or \"FR\"). This is a geography dimension.",
            "Format of the ad unit (for example, \"banner\", \"native\"), an ad delivery dimension.",
            "Mobile OS platform of the app (for example, \"Android\" or \"iOS\").",
            "Mobile operating system version, e.g. \"iOS 13.5.1\".",
            "GMA SDK version, e.g. \"iOS 7.62.0\".",
            "For Android, the app version name can be found in versionName in PackageInfo. For iOS, the app version name can be found in CFBundleShortVersionString.",
            "Restriction mode for ads serving (e.g. \"Non-personalized ads\").",
          },
          type = "string",
        },
        matchesAny = {
          ["$ref"] = "StringList",
          description = "Matches a row if its value for the specified dimension is in one of the values specified in this condition.",
        },
      },
      type = "object",
    },
    NetworkReportSpecSortCondition = {
      description = "Sorting direction to be applied on a dimension or a metric.",
      id = "NetworkReportSpecSortCondition",
      properties = {
        dimension = {
          description = "Sort by the specified dimension.",
          enum = {
            "DIMENSION_UNSPECIFIED",
            "DATE",
            "MONTH",
            "WEEK",
            "AD_UNIT",
            "APP",
            "AD_TYPE",
            "COUNTRY",
            "FORMAT",
            "PLATFORM",
            "MOBILE_OS_VERSION",
            "GMA_SDK_VERSION",
            "APP_VERSION_NAME",
            "SERVING_RESTRICTION",
          },
          enumDescriptions = {
            "Default value for an unset field. Do not use.",
            "A date in the YYYYMMDD format (for example, \"20210701\"). Requests can specify at most one time dimension.",
            "A month in the YYYYMM format (for example, \"202107\"). Requests can specify at most one time dimension.",
            "The date of the first day of a week in the YYYYMMDD format (for example, \"20210701\"). Requests can specify at most one time dimension.",
            "The unique ID of the ad unit (for example, \"ca-app-pub-1234/1234\"). If AD_UNIT dimension is specified, then APP is included automatically.",
            "The unique ID of the mobile application (for example, \"ca-app-pub-1234~1234\").",
            "Type of the ad (for example, \"text\" or \"image\"), an ad delivery dimension. **Warning:** The dimension is incompatible with [AD_REQUESTS](#Metric.ENUM_VALUES.AD_REQUESTS), [MATCH_RATE](#Metric.ENUM_VALUES.MATCH_RATE) and [IMPRESSION_RPM](#Metric.ENUM_VALUES.IMPRESSION_RPM) metrics.",
            "CLDR country code of the place where the ad views/clicks occur (for example, \"US\" or \"FR\"). This is a geography dimension.",
            "Format of the ad unit (for example, \"banner\", \"native\"), an ad delivery dimension.",
            "Mobile OS platform of the app (for example, \"Android\" or \"iOS\").",
            "Mobile operating system version, e.g. \"iOS 13.5.1\".",
            "GMA SDK version, e.g. \"iOS 7.62.0\".",
            "For Android, the app version name can be found in versionName in PackageInfo. For iOS, the app version name can be found in CFBundleShortVersionString.",
            "Restriction mode for ads serving (e.g. \"Non-personalized ads\").",
          },
          type = "string",
        },
        metric = {
          description = "Sort by the specified metric.",
          enum = {
            "METRIC_UNSPECIFIED",
            "AD_REQUESTS",
            "CLICKS",
            "ESTIMATED_EARNINGS",
            "IMPRESSIONS",
            "IMPRESSION_CTR",
            "IMPRESSION_RPM",
            "MATCHED_REQUESTS",
            "MATCH_RATE",
            "SHOW_RATE",
          },
          enumDescriptions = {
            "Default value for an unset field. Do not use.",
            "The number of ad requests. The value is an integer. **Warning:** The metric is incompatible with [AD_TYPE](#Dimension.ENUM_VALUES.AD_TYPE) dimension.",
            "The number of times a user clicks an ad. The value is an integer.",
            "The estimated earnings of the AdMob publisher. The currency unit (USD, EUR, or other) of the earning metrics are determined by the localization setting for currency. The amount is in micros. For example, $6.50 would be represented as 6500000.",
            "The total number of ads shown to users. The value is an integer.",
            "The ratio of clicks over impressions. The value is a double precision (approximate) decimal value.",
            "The estimated earnings per thousand ad impressions. The value is in micros. For example, $1.03 would be represented as 1030000. Equivalent to eCPM in the AdMob UI. **Warning:** The metric is incompatible with [AD_TYPE](#Dimension.ENUM_VALUES.AD_TYPE) dimension.",
            "The number of times ads are returned in response to a request. The value is an integer.",
            "The ratio of matched ad requests over the total ad requests. The value is a double precision (approximate) decimal value. **Warning:** The metric is incompatible with [AD_TYPE](#Dimension.ENUM_VALUES.AD_TYPE) dimension.",
            "The ratio of ads that are displayed over ads that are returned, defined as impressions / matched requests. The value is a double precision (approximate) decimal value.",
          },
          type = "string",
        },
        order = {
          description = "Sorting order of the dimension or metric.",
          enum = {
            "SORT_ORDER_UNSPECIFIED",
            "ASCENDING",
            "DESCENDING",
          },
          enumDescriptions = {
            "Default value for an unset field. Do not use.",
            "Sort dimension value or metric value in ascending order.",
            "Sort dimension value or metric value in descending order.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    PublisherAccount = {
      description = "A publisher account contains information relevant to the use of this API, such as the time zone used for the reports.",
      id = "PublisherAccount",
      properties = {
        currencyCode = {
          description = "Currency code of the earning-related metrics, which is the 3-letter code defined in ISO 4217. The daily average rate is used for the currency conversion.",
          type = "string",
        },
        name = {
          description = "Resource name of this account. Format is accounts/{publisher_id}.",
          type = "string",
        },
        publisherId = {
          description = "The unique ID by which this publisher account can be identified in the API requests (for example, pub-1234567890).",
          type = "string",
        },
        reportingTimeZone = {
          description = "The time zone that is used in reports that are generated for this account. The value is a time-zone ID as specified by the CLDR project, for example, \"America/Los_Angeles\".",
          type = "string",
        },
      },
      type = "object",
    },
    ReportFooter = {
      description = "Groups data available after report generation, for example, warnings and row counts. Always sent as the last message in the stream response.",
      id = "ReportFooter",
      properties = {
        matchingRowCount = {
          description = "Total number of rows that matched the request. Warning: This count does NOT always match the number of rows in the response. Do not make that assumption when processing the response.",
          format = "int64",
          type = "string",
        },
        warnings = {
          description = "Warnings associated with generation of the report.",
          items = {
            ["$ref"] = "ReportWarning",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ReportHeader = {
      description = "Groups data helps to treat the generated report. Always sent as a first message in the stream response.",
      id = "ReportHeader",
      properties = {
        dateRange = {
          ["$ref"] = "DateRange",
          description = "The date range for which the report is generated. This is identical to the range specified in the report request.",
        },
        localizationSettings = {
          ["$ref"] = "LocalizationSettings",
          description = "Localization settings of the report. This is identical to the settings in the report request.",
        },
        reportingTimeZone = {
          description = "The report time zone. The value is a time-zone ID as specified by the CLDR project, for example, \"America/Los_Angeles\".",
          type = "string",
        },
      },
      type = "object",
    },
    ReportRow = {
      description = "A row of the returning report.",
      id = "ReportRow",
      properties = {
        dimensionValues = {
          additionalProperties = {
            ["$ref"] = "ReportRowDimensionValue",
          },
          description = "Map of dimension values in a row, with keys as enum name of the dimensions.",
          type = "object",
        },
        metricValues = {
          additionalProperties = {
            ["$ref"] = "ReportRowMetricValue",
          },
          description = "Map of metric values in a row, with keys as enum name of the metrics. If a metric being requested has no value returned, the map will not include it.",
          type = "object",
        },
      },
      type = "object",
    },
    ReportRowDimensionValue = {
      description = "Representation of a dimension value.",
      id = "ReportRowDimensionValue",
      properties = {
        displayLabel = {
          description = "The localized string representation of the value. If unspecified, the display label should be derived from the value.",
          type = "string",
        },
        value = {
          description = "Dimension value in the format specified in the report's spec Dimension enum.",
          type = "string",
        },
      },
      type = "object",
    },
    ReportRowMetricValue = {
      description = "Representation of a metric value.",
      id = "ReportRowMetricValue",
      properties = {
        doubleValue = {
          description = "Double precision (approximate) decimal values. Rates are from 0 to 1.",
          format = "double",
          type = "number",
        },
        integerValue = {
          description = "Metric integer value.",
          format = "int64",
          type = "string",
        },
        microsValue = {
          description = "Amount in micros. One million is equivalent to one unit. Currency value is in the unit (USD, EUR or other) specified by the request. For example, $6.50 whould be represented as 6500000 micros.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    ReportWarning = {
      description = "Warnings associated with generation of the report.",
      id = "ReportWarning",
      properties = {
        description = {
          description = "Describes the details of the warning message, in English.",
          type = "string",
        },
        type = {
          description = "Type of the warning.",
          enum = {
            "TYPE_UNSPECIFIED",
            "DATA_BEFORE_ACCOUNT_TIMEZONE_CHANGE",
            "DATA_DELAYED",
            "OTHER",
            "REPORT_CURRENCY_NOT_ACCOUNT_CURRENCY",
          },
          enumDescriptions = {
            "Default value for an unset field. Do not use.",
            "Some data in this report is aggregated based on a time zone different from the requested time zone. This could happen if a local time-zone report has the start time before the last time this time zone changed. The description field will contain the date of the last time zone change.",
            "There is an unusual delay in processing the source data for the requested date range. The report results might be less up to date than usual. AdMob is aware of the issue and is actively working to resolve it.",
            "Warnings that are exposed without a specific type. Useful when new warning types are added but the API is not changed yet.",
            "The currency being requested is not the account currency. The earning metrics will be based on the requested currency, and thus not a good estimation of the final payment anymore, due to the currency rate fluctuation.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    StringList = {
      description = "List of string values.",
      id = "StringList",
      properties = {
        values = {
          description = "The string values.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
  },
  servicePath = "",
  title = "AdMob API",
  version = "v1",
  version_module = true,
}
