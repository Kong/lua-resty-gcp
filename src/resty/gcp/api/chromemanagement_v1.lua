return {
  auth = {
    oauth2 = {
      scopes = {
        ["https://www.googleapis.com/auth/chrome.management.appdetails.readonly"] = {
          description = "See detailed information about apps installed on Chrome browsers and devices managed by your organization",
        },
        ["https://www.googleapis.com/auth/chrome.management.reports.readonly"] = {
          description = "See reports about devices and Chrome browsers managed within your organization",
        },
        ["https://www.googleapis.com/auth/chrome.management.telemetry.readonly"] = {
          description = "See basic device and telemetry information collected from Chrome OS devices or users managed within your organization",
        },
      },
    },
  },
  basePath = "",
  baseUrl = "https://chromemanagement.googleapis.com/",
  batchPath = "batch",
  canonicalName = "Chrome Management",
  description = "The Chrome Management API is a suite of services that allows Chrome administrators to view, manage and gain insights on their Chrome OS and Chrome Browser devices.",
  discoveryVersion = "v1",
  documentationLink = "http://developers.google.com/chrome/management/",
  fullyEncodeReservedExpansion = true,
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "chromemanagement:v1",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://chromemanagement.mtls.googleapis.com/",
  name = "chromemanagement",
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
    customers = {
      resources = {
        apps = {
          methods = {
            countChromeAppRequests = {
              description = "Generate summary of app installation requests.",
              flatPath = "v1/customers/{customersId}/apps:countChromeAppRequests",
              httpMethod = "GET",
              id = "chromemanagement.customers.apps.countChromeAppRequests",
              parameterOrder = {
                "customer",
              },
              parameters = {
                customer = {
                  description = "Required. Customer id or \"my_customer\" to use the customer associated to the account making the request.",
                  location = "path",
                  pattern = "^customers/[^/]+$",
                  required = true,
                  type = "string",
                },
                orderBy = {
                  description = "Field used to order results. Supported fields: * request_count * latest_request_time",
                  location = "query",
                  type = "string",
                },
                orgUnitId = {
                  description = "The ID of the organizational unit.",
                  location = "query",
                  type = "string",
                },
                pageSize = {
                  description = "Maximum number of results to return. Maximum and default are 50, anything above will be coerced to 50.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "Token to specify the page of the request to be returned.",
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/{+customer}/apps:countChromeAppRequests",
              response = {
                ["$ref"] = "GoogleChromeManagementV1CountChromeAppRequestsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/chrome.management.appdetails.readonly",
              },
            },
          },
          resources = {
            android = {
              methods = {
                get = {
                  description = "Get a specific app for a customer by its resource name.",
                  flatPath = "v1/customers/{customersId}/apps/android/{androidId}",
                  httpMethod = "GET",
                  id = "chromemanagement.customers.apps.android.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The app for which details are being queried. Examples: \"customers/my_customer/apps/chrome/gmbmikajjgmnabiglmofipeabaddhgne@2.1.2\" for the Save to Google Drive Chrome extension version 2.1.2, \"customers/my_customer/apps/android/com.google.android.apps.docs\" for the Google Drive Android app's latest version.",
                      location = "path",
                      pattern = "^customers/[^/]+/apps/android/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "GoogleChromeManagementV1AppDetails",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/chrome.management.appdetails.readonly",
                  },
                },
              },
            },
            chrome = {
              methods = {
                get = {
                  description = "Get a specific app for a customer by its resource name.",
                  flatPath = "v1/customers/{customersId}/apps/chrome/{chromeId}",
                  httpMethod = "GET",
                  id = "chromemanagement.customers.apps.chrome.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The app for which details are being queried. Examples: \"customers/my_customer/apps/chrome/gmbmikajjgmnabiglmofipeabaddhgne@2.1.2\" for the Save to Google Drive Chrome extension version 2.1.2, \"customers/my_customer/apps/android/com.google.android.apps.docs\" for the Google Drive Android app's latest version.",
                      location = "path",
                      pattern = "^customers/[^/]+/apps/chrome/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "GoogleChromeManagementV1AppDetails",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/chrome.management.appdetails.readonly",
                  },
                },
              },
            },
            web = {
              methods = {
                get = {
                  description = "Get a specific app for a customer by its resource name.",
                  flatPath = "v1/customers/{customersId}/apps/web/{webId}",
                  httpMethod = "GET",
                  id = "chromemanagement.customers.apps.web.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The app for which details are being queried. Examples: \"customers/my_customer/apps/chrome/gmbmikajjgmnabiglmofipeabaddhgne@2.1.2\" for the Save to Google Drive Chrome extension version 2.1.2, \"customers/my_customer/apps/android/com.google.android.apps.docs\" for the Google Drive Android app's latest version.",
                      location = "path",
                      pattern = "^customers/[^/]+/apps/web/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "GoogleChromeManagementV1AppDetails",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/chrome.management.appdetails.readonly",
                  },
                },
              },
            },
          },
        },
        reports = {
          methods = {
            countChromeDevicesReachingAutoExpirationDate = {
              description = "Generate report of the number of devices expiring in each month of the selected time frame. Devices are grouped by auto update expiration date and model. Further information can be found [here](https://support.google.com/chrome/a/answer/10564947).",
              flatPath = "v1/customers/{customersId}/reports:countChromeDevicesReachingAutoExpirationDate",
              httpMethod = "GET",
              id = "chromemanagement.customers.reports.countChromeDevicesReachingAutoExpirationDate",
              parameterOrder = {
                "customer",
              },
              parameters = {
                customer = {
                  description = "Required. The customer ID or \"my_customer\" prefixed with \"customers/\".",
                  location = "path",
                  pattern = "^customers/[^/]+$",
                  required = true,
                  type = "string",
                },
                maxAueDate = {
                  description = "Optional. Maximum expiration date in format yyyy-mm-dd in UTC timezone. If included returns all devices that have already expired and devices with auto expiration date equal to or earlier than the maximum date.",
                  location = "query",
                  type = "string",
                },
                minAueDate = {
                  description = "Optional. Maximum expiration date in format yyyy-mm-dd in UTC timezone. If included returns all devices that have already expired and devices with auto expiration date equal to or later than the minimum date.",
                  location = "query",
                  type = "string",
                },
                orgUnitId = {
                  description = "Optional. The organizational unit ID, if omitted, will return data for all organizational units.",
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/{+customer}/reports:countChromeDevicesReachingAutoExpirationDate",
              response = {
                ["$ref"] = "GoogleChromeManagementV1CountChromeDevicesReachingAutoExpirationDateResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/chrome.management.reports.readonly",
              },
            },
            countChromeDevicesThatNeedAttention = {
              description = "Counts of ChromeOS devices that have not synced policies or have lacked user activity in the past 28 days, are out of date, or are not complaint. Further information can be found here https://support.google.com/chrome/a/answer/10564947",
              flatPath = "v1/customers/{customersId}/reports:countChromeDevicesThatNeedAttention",
              httpMethod = "GET",
              id = "chromemanagement.customers.reports.countChromeDevicesThatNeedAttention",
              parameterOrder = {
                "customer",
              },
              parameters = {
                customer = {
                  description = "Required. The customer ID or \"my_customer\" prefixed with \"customers/\".",
                  location = "path",
                  pattern = "^customers/[^/]+$",
                  required = true,
                  type = "string",
                },
                orgUnitId = {
                  description = "Optional. The ID of the organizational unit. If omitted, all data will be returned.",
                  location = "query",
                  type = "string",
                },
                readMask = {
                  description = "Required. Mask of the fields that should be populated in the returned report.",
                  format = "google-fieldmask",
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/{+customer}/reports:countChromeDevicesThatNeedAttention",
              response = {
                ["$ref"] = "GoogleChromeManagementV1CountChromeDevicesThatNeedAttentionResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/chrome.management.reports.readonly",
              },
            },
            countChromeHardwareFleetDevices = {
              description = "Counts of devices with a specific hardware specification from the requested hardware type (for example model name, processor type). Further information can be found here https://support.google.com/chrome/a/answer/10564947",
              flatPath = "v1/customers/{customersId}/reports:countChromeHardwareFleetDevices",
              httpMethod = "GET",
              id = "chromemanagement.customers.reports.countChromeHardwareFleetDevices",
              parameterOrder = {
                "customer",
              },
              parameters = {
                customer = {
                  description = "Required. The customer ID or \"my_customer\".",
                  location = "path",
                  pattern = "^customers/[^/]+$",
                  required = true,
                  type = "string",
                },
                orgUnitId = {
                  description = "Optional. The ID of the organizational unit. If omitted, all data will be returned.",
                  location = "query",
                  type = "string",
                },
                readMask = {
                  description = "Required. Mask of the fields that should be populated in the returned report.",
                  format = "google-fieldmask",
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/{+customer}/reports:countChromeHardwareFleetDevices",
              response = {
                ["$ref"] = "GoogleChromeManagementV1CountChromeHardwareFleetDevicesResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/chrome.management.reports.readonly",
              },
            },
            countChromeVersions = {
              description = "Generate report of installed Chrome versions.",
              flatPath = "v1/customers/{customersId}/reports:countChromeVersions",
              httpMethod = "GET",
              id = "chromemanagement.customers.reports.countChromeVersions",
              parameterOrder = {
                "customer",
              },
              parameters = {
                customer = {
                  description = "Required. Customer id or \"my_customer\" to use the customer associated to the account making the request.",
                  location = "path",
                  pattern = "^customers/[^/]+$",
                  required = true,
                  type = "string",
                },
                filter = {
                  description = "Query string to filter results, AND-separated fields in EBNF syntax. Note: OR operations are not supported in this filter. Supported filter fields: * last_active_date",
                  location = "query",
                  type = "string",
                },
                orgUnitId = {
                  description = "The ID of the organizational unit.",
                  location = "query",
                  type = "string",
                },
                pageSize = {
                  description = "Maximum number of results to return. Maximum and default are 100.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "Token to specify the page of the request to be returned.",
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/{+customer}/reports:countChromeVersions",
              response = {
                ["$ref"] = "GoogleChromeManagementV1CountChromeVersionsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/chrome.management.reports.readonly",
              },
            },
            countInstalledApps = {
              description = "Generate report of app installations.",
              flatPath = "v1/customers/{customersId}/reports:countInstalledApps",
              httpMethod = "GET",
              id = "chromemanagement.customers.reports.countInstalledApps",
              parameterOrder = {
                "customer",
              },
              parameters = {
                customer = {
                  description = "Required. Customer id or \"my_customer\" to use the customer associated to the account making the request.",
                  location = "path",
                  pattern = "^customers/[^/]+$",
                  required = true,
                  type = "string",
                },
                filter = {
                  description = "Query string to filter results, AND-separated fields in EBNF syntax. Note: OR operations are not supported in this filter. Supported filter fields: * app_name * app_type * install_type * number_of_permissions * total_install_count * latest_profile_active_date * permission_name",
                  location = "query",
                  type = "string",
                },
                orderBy = {
                  description = "Field used to order results. Supported order by fields: * app_name * app_type * install_type * number_of_permissions * total_install_count",
                  location = "query",
                  type = "string",
                },
                orgUnitId = {
                  description = "The ID of the organizational unit.",
                  location = "query",
                  type = "string",
                },
                pageSize = {
                  description = "Maximum number of results to return. Maximum and default are 100.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "Token to specify the page of the request to be returned.",
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/{+customer}/reports:countInstalledApps",
              response = {
                ["$ref"] = "GoogleChromeManagementV1CountInstalledAppsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/chrome.management.reports.readonly",
              },
            },
            findInstalledAppDevices = {
              description = "Generate report of devices that have a specified app installed.",
              flatPath = "v1/customers/{customersId}/reports:findInstalledAppDevices",
              httpMethod = "GET",
              id = "chromemanagement.customers.reports.findInstalledAppDevices",
              parameterOrder = {
                "customer",
              },
              parameters = {
                appId = {
                  description = "Unique identifier of the app. For Chrome apps and extensions, the 32-character id (e.g. ehoadneljpdggcbbknedodolkkjodefl). For Android apps, the package name (e.g. com.evernote).",
                  location = "query",
                  type = "string",
                },
                appType = {
                  description = "Type of the app.",
                  enum = {
                    "APP_TYPE_UNSPECIFIED",
                    "EXTENSION",
                    "APP",
                    "THEME",
                    "HOSTED_APP",
                    "ANDROID_APP",
                  },
                  enumDescriptions = {
                    "App type not specified.",
                    "Chrome extension.",
                    "Chrome app.",
                    "Chrome theme.",
                    "Chrome hosted app.",
                    "ARC++ app.",
                  },
                  location = "query",
                  type = "string",
                },
                customer = {
                  description = "Required. Customer id or \"my_customer\" to use the customer associated to the account making the request.",
                  location = "path",
                  pattern = "^customers/[^/]+$",
                  required = true,
                  type = "string",
                },
                filter = {
                  description = "Query string to filter results, AND-separated fields in EBNF syntax. Note: OR operations are not supported in this filter. Supported filter fields: * last_active_date",
                  location = "query",
                  type = "string",
                },
                orderBy = {
                  description = "Field used to order results. Supported order by fields: * machine * device_id",
                  location = "query",
                  type = "string",
                },
                orgUnitId = {
                  description = "The ID of the organizational unit.",
                  location = "query",
                  type = "string",
                },
                pageSize = {
                  description = "Maximum number of results to return. Maximum and default are 100.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "Token to specify the page of the request to be returned.",
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/{+customer}/reports:findInstalledAppDevices",
              response = {
                ["$ref"] = "GoogleChromeManagementV1FindInstalledAppDevicesResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/chrome.management.reports.readonly",
              },
            },
          },
        },
        telemetry = {
          resources = {
            devices = {
              methods = {
                get = {
                  description = "Get telemetry device.",
                  flatPath = "v1/customers/{customersId}/telemetry/devices/{devicesId}",
                  httpMethod = "GET",
                  id = "chromemanagement.customers.telemetry.devices.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Name of the `TelemetryDevice` to return.",
                      location = "path",
                      pattern = "^customers/[^/]+/telemetry/devices/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    readMask = {
                      description = "Required. Read mask to specify which fields to return.",
                      format = "google-fieldmask",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "GoogleChromeManagementV1TelemetryDevice",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/chrome.management.telemetry.readonly",
                  },
                },
                list = {
                  description = "List all telemetry devices.",
                  flatPath = "v1/customers/{customersId}/telemetry/devices",
                  httpMethod = "GET",
                  id = "chromemanagement.customers.telemetry.devices.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    filter = {
                      description = "Optional. Only include resources that match the filter. Supported filter fields: - org_unit_id - serial_number - device_id ",
                      location = "query",
                      type = "string",
                    },
                    pageSize = {
                      description = "Maximum number of results to return. Default value is 100. Maximum value is 1000.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "Token to specify next page in the list.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. Customer id or \"my_customer\" to use the customer associated to the account making the request.",
                      location = "path",
                      pattern = "^customers/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    readMask = {
                      description = "Required. Read mask to specify which fields to return.",
                      format = "google-fieldmask",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/telemetry/devices",
                  response = {
                    ["$ref"] = "GoogleChromeManagementV1ListTelemetryDevicesResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/chrome.management.telemetry.readonly",
                  },
                },
              },
            },
            events = {
              methods = {
                list = {
                  description = "List telemetry events.",
                  flatPath = "v1/customers/{customersId}/telemetry/events",
                  httpMethod = "GET",
                  id = "chromemanagement.customers.telemetry.events.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    filter = {
                      description = "Optional. Only include resources that match the filter. Supported filter fields: * device_id * user_id * device_org_unit_id * user_org_unit_id * timestamp * event_type",
                      location = "query",
                      type = "string",
                    },
                    pageSize = {
                      description = "Optional. Maximum number of results to return. Default value is 100. Maximum value is 1000.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "Optional. Token to specify next page in the list.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. Customer id or \"my_customer\" to use the customer associated to the account making the request.",
                      location = "path",
                      pattern = "^customers/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    readMask = {
                      description = "Required. Read mask to specify which fields to return.",
                      format = "google-fieldmask",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/telemetry/events",
                  response = {
                    ["$ref"] = "GoogleChromeManagementV1ListTelemetryEventsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/chrome.management.telemetry.readonly",
                  },
                },
              },
            },
          },
        },
      },
    },
  },
  revision = "20230116",
  rootUrl = "https://chromemanagement.googleapis.com/",
  schemas = {
    GoogleChromeManagementV1AndroidAppInfo = {
      description = "Android app information.",
      id = "GoogleChromeManagementV1AndroidAppInfo",
      properties = {
        permissions = {
          description = "Output only. Permissions requested by an Android app.",
          items = {
            ["$ref"] = "GoogleChromeManagementV1AndroidAppPermission",
          },
          readOnly = true,
          type = "array",
        },
      },
      type = "object",
    },
    GoogleChromeManagementV1AndroidAppPermission = {
      description = "Permission requested by an Android app.",
      id = "GoogleChromeManagementV1AndroidAppPermission",
      properties = {
        type = {
          description = "Output only. The type of the permission.",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    GoogleChromeManagementV1AppDetails = {
      description = "Resource representing app details.",
      id = "GoogleChromeManagementV1AppDetails",
      properties = {
        androidAppInfo = {
          ["$ref"] = "GoogleChromeManagementV1AndroidAppInfo",
          description = "Output only. Android app information.",
          readOnly = true,
        },
        appId = {
          description = "Output only. Unique store identifier for the item. Examples: \"gmbmikajjgmnabiglmofipeabaddhgne\" for the Save to Google Drive Chrome extension, \"com.google.android.apps.docs\" for the Google Drive Android app.",
          readOnly = true,
          type = "string",
        },
        chromeAppInfo = {
          ["$ref"] = "GoogleChromeManagementV1ChromeAppInfo",
          description = "Output only. Chrome Web Store app information.",
          readOnly = true,
        },
        description = {
          description = "Output only. App's description.",
          readOnly = true,
          type = "string",
        },
        detailUri = {
          description = "Output only. The uri for the detail page of the item.",
          readOnly = true,
          type = "string",
        },
        displayName = {
          description = "Output only. App's display name.",
          readOnly = true,
          type = "string",
        },
        firstPublishTime = {
          description = "Output only. First published time.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        homepageUri = {
          description = "Output only. Home page or Website uri.",
          readOnly = true,
          type = "string",
        },
        iconUri = {
          description = "Output only. A link to an image that can be used as an icon for the product.",
          readOnly = true,
          type = "string",
        },
        isPaidApp = {
          description = "Output only. Indicates if the app has to be paid for OR has paid content.",
          readOnly = true,
          type = "boolean",
        },
        latestPublishTime = {
          description = "Output only. Latest published time.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        name = {
          description = "Output only. Format: name=customers/{customer_id}/apps/{chrome|android|web}/{app_id}@{version}",
          readOnly = true,
          type = "string",
        },
        privacyPolicyUri = {
          description = "Output only. The URI pointing to the privacy policy of the app, if it was provided by the developer. Version-specific field that will only be set when the requested app version is found.",
          readOnly = true,
          type = "string",
        },
        publisher = {
          description = "Output only. The publisher of the item.",
          readOnly = true,
          type = "string",
        },
        reviewNumber = {
          description = "Output only. Number of reviews received. Chrome Web Store review information will always be for the latest version of an app.",
          format = "int64",
          readOnly = true,
          type = "string",
        },
        reviewRating = {
          description = "Output only. The rating of the app (on 5 stars). Chrome Web Store review information will always be for the latest version of an app.",
          format = "float",
          readOnly = true,
          type = "number",
        },
        revisionId = {
          description = "Output only. App version. A new revision is committed whenever a new version of the app is published.",
          readOnly = true,
          type = "string",
        },
        serviceError = {
          ["$ref"] = "GoogleRpcStatus",
          description = "Output only. Information about a partial service error if applicable.",
          readOnly = true,
        },
        type = {
          description = "Output only. App type.",
          enum = {
            "APP_ITEM_TYPE_UNSPECIFIED",
            "CHROME",
            "ANDROID",
            "WEB",
          },
          enumDescriptions = {
            "App type unspecified.",
            "Chrome app.",
            "ARC++ app.",
            "Web app.",
          },
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    GoogleChromeManagementV1AudioStatusReport = {
      description = "Status data for storage. * This field is telemetry information and this will change over time as the device is utilized. * Data for this field is controlled via policy: [ReportDeviceAudioStatus](https://chromeenterprise.google/policies/#ReportDeviceAudioStatus) * Data Collection Frequency: 10 minutes * Default Data Reporting Frequency: 3 hours - Policy Controlled: Yes * Cache: If the device is offline, the collected data is stored locally, and will be reported when the device is next online: No * Reported for affiliated users only: N/A",
      id = "GoogleChromeManagementV1AudioStatusReport",
      properties = {
        inputDevice = {
          description = "Output only. Active input device's name.",
          readOnly = true,
          type = "string",
        },
        inputGain = {
          description = "Output only. Active input device's gain in [0, 100].",
          format = "int32",
          readOnly = true,
          type = "integer",
        },
        inputMute = {
          description = "Output only. Is active input device mute or not.",
          readOnly = true,
          type = "boolean",
        },
        outputDevice = {
          description = "Output only. Active output device's name.",
          readOnly = true,
          type = "string",
        },
        outputMute = {
          description = "Output only. Is active output device mute or not.",
          readOnly = true,
          type = "boolean",
        },
        outputVolume = {
          description = "Output only. Active output device's volume in [0, 100].",
          format = "int32",
          readOnly = true,
          type = "integer",
        },
        reportTime = {
          description = "Output only. Timestamp of when the sample was collected on device.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    GoogleChromeManagementV1BatteryInfo = {
      description = "Information about the battery. * This field provides device information, which is static and will not change over time. * Data for this field is controlled via policy: [ReportDevicePowerStatus](https://chromeenterprise.google/policies/#ReportDevicePowerStatus) * Data Collection Frequency: Only at Upload * Default Data Reporting Frequency: 3 hours - Policy Controlled: Yes * Cache: If the device is offline, the collected data is stored locally, and will be reported when the device is next online: No * Reported for affiliated users only: N/A",
      id = "GoogleChromeManagementV1BatteryInfo",
      properties = {
        designCapacity = {
          description = "Output only. Design capacity (mAmpere-hours).",
          format = "int64",
          readOnly = true,
          type = "string",
        },
        designMinVoltage = {
          description = "Output only. Designed minimum output voltage (mV)",
          format = "int32",
          readOnly = true,
          type = "integer",
        },
        manufactureDate = {
          ["$ref"] = "GoogleTypeDate",
          description = "Output only. The date the battery was manufactured.",
          readOnly = true,
        },
        manufacturer = {
          description = "Output only. Battery manufacturer.",
          readOnly = true,
          type = "string",
        },
        serialNumber = {
          description = "Output only. Battery serial number.",
          readOnly = true,
          type = "string",
        },
        technology = {
          description = "Output only. Technology of the battery. Example: Li-ion",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    GoogleChromeManagementV1BatterySampleReport = {
      description = "Sampling data for battery. * This field is telemetry information and this will change over time as the device is utilized. * Data for this field is controlled via policy: [ReportDevicePowerStatus](https://chromeenterprise.google/policies/#ReportDevicePowerStatus) * Data Collection Frequency: Only at Upload * Default Data Reporting Frequency: 3 hours - Policy Controlled: Yes * Cache: If the device is offline, the collected data is stored locally, and will be reported when the device is next online: No * Reported for affiliated users only: N/A",
      id = "GoogleChromeManagementV1BatterySampleReport",
      properties = {
        chargeRate = {
          description = "Output only. Battery charge percentage.",
          format = "int32",
          readOnly = true,
          type = "integer",
        },
        current = {
          description = "Output only. Battery current (mA).",
          format = "int64",
          readOnly = true,
          type = "string",
        },
        dischargeRate = {
          description = "Output only. The battery discharge rate measured in mW. Positive if the battery is being discharged, negative if it's being charged.",
          format = "int32",
          readOnly = true,
          type = "integer",
        },
        remainingCapacity = {
          description = "Output only. Battery remaining capacity (mAmpere-hours).",
          format = "int64",
          readOnly = true,
          type = "string",
        },
        reportTime = {
          description = "Output only. Timestamp of when the sample was collected on device",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        status = {
          description = "Output only. Battery status read from sysfs. Example: Discharging",
          readOnly = true,
          type = "string",
        },
        temperature = {
          description = "Output only. Temperature in Celsius degrees.",
          format = "int32",
          readOnly = true,
          type = "integer",
        },
        voltage = {
          description = "Output only. Battery voltage (millivolt).",
          format = "int64",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    GoogleChromeManagementV1BatteryStatusReport = {
      description = "Status data for battery. * This field is telemetry information and this will change over time as the device is utilized. * Data for this field is controlled via policy: [ReportDevicePowerStatus](https://chromeenterprise.google/policies/#ReportDevicePowerStatus) * Data Collection Frequency: Only at Upload * Default Data Reporting Frequency: 3 hours - Policy Controlled: Yes * Cache: If the device is offline, the collected data is stored locally, and will be reported when the device is next online: No * Reported for affiliated users only: N/A",
      id = "GoogleChromeManagementV1BatteryStatusReport",
      properties = {
        batteryHealth = {
          description = "Output only. Battery health.",
          enum = {
            "BATTERY_HEALTH_UNSPECIFIED",
            "BATTERY_HEALTH_NORMAL",
            "BATTERY_REPLACE_SOON",
            "BATTERY_REPLACE_NOW",
          },
          enumDescriptions = {
            "Health unknown.",
            "Battery is healthy.",
            "Battery is moderately unhealthy and should be replaced soon.",
            "Battery is unhealthy and should be replaced.",
          },
          readOnly = true,
          type = "string",
        },
        cycleCount = {
          description = "Output only. Cycle count.",
          format = "int32",
          readOnly = true,
          type = "integer",
        },
        fullChargeCapacity = {
          description = "Output only. Full charge capacity (mAmpere-hours).",
          format = "int64",
          readOnly = true,
          type = "string",
        },
        reportTime = {
          description = "Output only. Timestamp of when the sample was collected on device",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        sample = {
          description = "Output only. Sampling data for the battery sorted in a decreasing order of report_time.",
          items = {
            ["$ref"] = "GoogleChromeManagementV1BatterySampleReport",
          },
          readOnly = true,
          type = "array",
        },
        serialNumber = {
          description = "Output only. Battery serial number.",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    GoogleChromeManagementV1BootPerformanceReport = {
      description = "Boot performance report of a device. * This field is telemetry information and this will change over time as the device is utilized. * Data for this field is controlled via policy: [ReportDeviceBootMode](https://chromeenterprise.google/policies/#ReportDeviceBootMode) * Data Collection Frequency: On every boot up event * Default Data Reporting Frequency: 3 hours - Policy Controlled: Yes * Cache: If the device is offline, the collected data is stored locally, and will be reported when the device is next online: Yes * Reported for affiliated users only: N/A",
      id = "GoogleChromeManagementV1BootPerformanceReport",
      properties = {
        bootUpDuration = {
          description = "Total time to boot up.",
          format = "google-duration",
          type = "string",
        },
        bootUpTime = {
          description = "The timestamp when power came on.",
          format = "google-datetime",
          type = "string",
        },
        reportTime = {
          description = "Timestamp when the report was collected.",
          format = "google-datetime",
          type = "string",
        },
        shutdownDuration = {
          description = "Total time since shutdown start to power off.",
          format = "google-duration",
          type = "string",
        },
        shutdownReason = {
          description = "The shutdown reason.",
          enum = {
            "SHUTDOWN_REASON_UNSPECIFIED",
            "USER_REQUEST",
            "SYSTEM_UPDATE",
            "LOW_BATTERY",
            "OTHER",
          },
          enumDescriptions = {
            "Shutdown reason is not specified.",
            "User initiated.",
            "System update initiated.",
            "Shutdown due to low battery.",
            "Shutdown due to other reasons.",
          },
          type = "string",
        },
        shutdownTime = {
          description = "The timestamp when shutdown.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleChromeManagementV1BrowserVersion = {
      description = "Describes a browser version and its install count.",
      id = "GoogleChromeManagementV1BrowserVersion",
      properties = {
        channel = {
          description = "Output only. The release channel of the installed browser.",
          enum = {
            "RELEASE_CHANNEL_UNSPECIFIED",
            "CANARY",
            "DEV",
            "BETA",
            "STABLE",
          },
          enumDescriptions = {
            "No release channel specified.",
            "Canary release channel.",
            "Dev release channel.",
            "Beta release channel.",
            "Stable release channel.",
          },
          readOnly = true,
          type = "string",
        },
        count = {
          description = "Output only. Count grouped by device_system and major version",
          format = "int64",
          readOnly = true,
          type = "string",
        },
        deviceOsVersion = {
          description = "Output only. Version of the system-specified operating system.",
          readOnly = true,
          type = "string",
        },
        system = {
          description = "Output only. The device operating system.",
          enum = {
            "DEVICE_SYSTEM_UNSPECIFIED",
            "SYSTEM_OTHER",
            "SYSTEM_ANDROID",
            "SYSTEM_IOS",
            "SYSTEM_CROS",
            "SYSTEM_WINDOWS",
            "SYSTEM_MAC",
            "SYSTEM_LINUX",
          },
          enumDescriptions = {
            "No operating system specified.",
            "Other operating system.",
            "Android operating system.",
            "Apple iOS operating system.",
            "ChromeOS operating system.",
            "Microsoft Windows operating system.",
            "Apple macOS operating system.",
            "Linux operating system.",
          },
          readOnly = true,
          type = "string",
        },
        version = {
          description = "Output only. The full version of the installed browser.",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    GoogleChromeManagementV1ChromeAppInfo = {
      description = "Chrome Web Store app information.",
      id = "GoogleChromeManagementV1ChromeAppInfo",
      properties = {
        googleOwned = {
          description = "Output only. Whether the app or extension is built and maintained by Google. Version-specific field that will only be set when the requested app version is found.",
          readOnly = true,
          type = "boolean",
        },
        isCwsHosted = {
          description = "Output only. Whether the app or extension is in a published state in the Chrome Web Store.",
          readOnly = true,
          type = "boolean",
        },
        isExtensionPolicySupported = {
          description = "Output only. Whether an app supports policy for extensions.",
          readOnly = true,
          type = "boolean",
        },
        isKioskOnly = {
          description = "Output only. Whether the app is only for Kiosk mode on ChromeOS devices",
          readOnly = true,
          type = "boolean",
        },
        isTheme = {
          description = "Output only. Whether the app or extension is a theme.",
          readOnly = true,
          type = "boolean",
        },
        kioskEnabled = {
          description = "Output only. Whether this app is enabled for Kiosk mode on ChromeOS devices",
          readOnly = true,
          type = "boolean",
        },
        minUserCount = {
          description = "Output only. The minimum number of users using this app.",
          format = "int32",
          readOnly = true,
          type = "integer",
        },
        permissions = {
          description = "Output only. Every custom permission requested by the app. Version-specific field that will only be set when the requested app version is found.",
          items = {
            ["$ref"] = "GoogleChromeManagementV1ChromeAppPermission",
          },
          readOnly = true,
          type = "array",
        },
        siteAccess = {
          description = "Output only. Every permission giving access to domains or broad host patterns. ( e.g. www.google.com). This includes the matches from content scripts as well as hosts in the permissions node of the manifest. Version-specific field that will only be set when the requested app version is found.",
          items = {
            ["$ref"] = "GoogleChromeManagementV1ChromeAppSiteAccess",
          },
          readOnly = true,
          type = "array",
        },
        supportEnabled = {
          description = "Output only. The app developer has enabled support for their app. Version-specific field that will only be set when the requested app version is found.",
          readOnly = true,
          type = "boolean",
        },
        type = {
          description = "Output only. Types of an item in the Chrome Web Store",
          enum = {
            "ITEM_TYPE_UNSPECIFIED",
            "EXTENSION",
            "OTHERS",
          },
          enumDescriptions = {
            "Unspecified ItemType.",
            "Chrome Extensions.",
            "Any other type than extension.",
          },
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    GoogleChromeManagementV1ChromeAppPermission = {
      description = "Permission requested by a Chrome app or extension.",
      id = "GoogleChromeManagementV1ChromeAppPermission",
      properties = {
        accessUserData = {
          description = "Output only. If available, whether this permissions grants the app/extension access to user data.",
          readOnly = true,
          type = "boolean",
        },
        documentationUri = {
          description = "Output only. If available, a URI to a page that has documentation for the current permission.",
          readOnly = true,
          type = "string",
        },
        type = {
          description = "Output only. The type of the permission.",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    GoogleChromeManagementV1ChromeAppRequest = {
      description = "Details of an app installation request.",
      id = "GoogleChromeManagementV1ChromeAppRequest",
      properties = {
        appDetails = {
          description = "Output only. Format: app_details=customers/{customer_id}/apps/chrome/{app_id}",
          readOnly = true,
          type = "string",
        },
        appId = {
          description = "Output only. Unique store identifier for the app. Example: \"gmbmikajjgmnabiglmofipeabaddhgne\" for the Save to Google Drive Chrome extension.",
          readOnly = true,
          type = "string",
        },
        detailUri = {
          description = "Output only. The uri for the detail page of the item.",
          readOnly = true,
          type = "string",
        },
        displayName = {
          description = "Output only. App's display name.",
          readOnly = true,
          type = "string",
        },
        iconUri = {
          description = "Output only. A link to an image that can be used as an icon for the product.",
          readOnly = true,
          type = "string",
        },
        latestRequestTime = {
          description = "Output only. The timestamp of the most recently made request for this app.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        requestCount = {
          description = "Output only. Total count of requests for this app.",
          format = "int64",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    GoogleChromeManagementV1ChromeAppSiteAccess = {
      description = "Represent one host permission.",
      id = "GoogleChromeManagementV1ChromeAppSiteAccess",
      properties = {
        hostMatch = {
          description = "Output only. This can contain very specific hosts, or patterns like \"*.com\" for instance.",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    GoogleChromeManagementV1CountChromeAppRequestsResponse = {
      description = "Response containing summary of requested app installations.",
      id = "GoogleChromeManagementV1CountChromeAppRequestsResponse",
      properties = {
        nextPageToken = {
          description = "Token to specify the next page in the list.",
          type = "string",
        },
        requestedApps = {
          description = "Count of requested apps matching request.",
          items = {
            ["$ref"] = "GoogleChromeManagementV1ChromeAppRequest",
          },
          type = "array",
        },
        totalSize = {
          description = "Total number of matching app requests.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    GoogleChromeManagementV1CountChromeDevicesReachingAutoExpirationDateResponse = {
      description = "Response containing a list of devices expiring in each month of a selected time frame. Counts are grouped by model and Auto Update Expiration date.",
      id = "GoogleChromeManagementV1CountChromeDevicesReachingAutoExpirationDateResponse",
      properties = {
        deviceAueCountReports = {
          description = "The list of reports sorted by auto update expiration date in ascending order.",
          items = {
            ["$ref"] = "GoogleChromeManagementV1DeviceAueCountReport",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleChromeManagementV1CountChromeDevicesThatNeedAttentionResponse = {
      description = "Response containing counts for devices that need attention.",
      id = "GoogleChromeManagementV1CountChromeDevicesThatNeedAttentionResponse",
      properties = {
        noRecentPolicySyncCount = {
          description = "Number of ChromeOS devices have not synced policies in the past 28 days.",
          format = "int64",
          type = "string",
        },
        noRecentUserActivityCount = {
          description = "Number of ChromeOS devices that have not seen any user activity in the past 28 days.",
          format = "int64",
          type = "string",
        },
        osVersionNotCompliantCount = {
          description = "Number of devices whose OS version is not compliant.",
          format = "int64",
          type = "string",
        },
        pendingUpdate = {
          description = "Number of devices that are pending an OS update.",
          format = "int64",
          type = "string",
        },
        unsupportedPolicyCount = {
          description = "Number of devices that are unable to apply a policy due to an OS version mismatch.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleChromeManagementV1CountChromeHardwareFleetDevicesResponse = {
      description = "Response containing a list of devices with a specific type of hardware specification from the requested hardware type.",
      id = "GoogleChromeManagementV1CountChromeHardwareFleetDevicesResponse",
      properties = {
        cpuReports = {
          description = "The DeviceHardwareCountReport for device cpu type (for example Intel(R) Core(TM) i7-10610U CPU @ 1.80GHz).",
          items = {
            ["$ref"] = "GoogleChromeManagementV1DeviceHardwareCountReport",
          },
          type = "array",
        },
        memoryReports = {
          description = "The DeviceHardwareCountReport for device memory amount in gigabytes (for example 16).",
          items = {
            ["$ref"] = "GoogleChromeManagementV1DeviceHardwareCountReport",
          },
          type = "array",
        },
        modelReports = {
          description = "The DeviceHardwareCountReport for device model type (for example Acer C7 Chromebook).",
          items = {
            ["$ref"] = "GoogleChromeManagementV1DeviceHardwareCountReport",
          },
          type = "array",
        },
        storageReports = {
          description = "The DeviceHardwareCountReport for device storage amount in gigabytes (for example 128).",
          items = {
            ["$ref"] = "GoogleChromeManagementV1DeviceHardwareCountReport",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleChromeManagementV1CountChromeVersionsResponse = {
      description = "Response containing requested browser versions details and counts.",
      id = "GoogleChromeManagementV1CountChromeVersionsResponse",
      properties = {
        browserVersions = {
          description = "List of all browser versions and their install counts.",
          items = {
            ["$ref"] = "GoogleChromeManagementV1BrowserVersion",
          },
          type = "array",
        },
        nextPageToken = {
          description = "Token to specify the next page of the request.",
          type = "string",
        },
        totalSize = {
          description = "Total number browser versions matching request.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    GoogleChromeManagementV1CountInstalledAppsResponse = {
      description = "Response containing details of queried installed apps.",
      id = "GoogleChromeManagementV1CountInstalledAppsResponse",
      properties = {
        installedApps = {
          description = "List of installed apps matching request.",
          items = {
            ["$ref"] = "GoogleChromeManagementV1InstalledApp",
          },
          type = "array",
        },
        nextPageToken = {
          description = "Token to specify the next page of the request.",
          type = "string",
        },
        totalSize = {
          description = "Total number of installed apps matching request.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    GoogleChromeManagementV1CpuInfo = {
      description = "CPU specifications for the device * This field provides device information, which is static and will not change over time. * Data for this field is controlled via policy: [ReportDeviceCpuInfo](https://chromeenterprise.google/policies/#ReportDeviceCpuInfo) * Data Collection Frequency: Only at Upload * Default Data Reporting Frequency: 3 hours - Policy Controlled: Yes * Cache: If the device is offline, the collected data is stored locally, and will be reported when the device is next online: No * Reported for affiliated users only: N/A",
      id = "GoogleChromeManagementV1CpuInfo",
      properties = {
        architecture = {
          description = "Output only. Architecture type for the CPU. * This field provides device information, which is static and will not change over time. * Data for this field is controlled via policy: [ReportDeviceCpuInfo](https://chromeenterprise.google/policies/#ReportDeviceCpuInfo) * Data Collection Frequency: Only at Upload * Default Data Reporting Frequency: 3 hours - Policy Controlled: Yes * Cache: If the device is offline, the collected data is stored locally, and will be reported when the device is next online: No * Reported for affiliated users only: N/A",
          enum = {
            "ARCHITECTURE_UNSPECIFIED",
            "X64",
          },
          enumDescriptions = {
            "Architecture unknown.",
            "x64 architecture",
          },
          readOnly = true,
          type = "string",
        },
        keylockerConfigured = {
          description = "Output only. Whether keylocker is configured.`TRUE` = Enabled; `FALSE` = disabled. Only reported if keylockerSupported = `TRUE`.",
          readOnly = true,
          type = "boolean",
        },
        keylockerSupported = {
          description = "Output only. Whether keylocker is supported.",
          readOnly = true,
          type = "boolean",
        },
        maxClockSpeed = {
          description = "Output only. The max CPU clock speed in kHz.",
          format = "int32",
          readOnly = true,
          type = "integer",
        },
        model = {
          description = "Output only. The CPU model name. Example: Intel(R) Core(TM) i5-8250U CPU @ 1.60GHz",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    GoogleChromeManagementV1CpuStatusReport = {
      description = "Provides information about the status of the CPU. * This field is telemetry information and this will change over time as the device is utilized. * Data for this field is controlled via policy: [ReportDeviceCpuInfo](https://chromeenterprise.google/policies/#ReportDeviceCpuInfo) * Data Collection Frequency: Every 10 minutes * Default Data Reporting Frequency: 3 hours - Policy Controlled: Yes * Cache: If the device is offline, the collected data is stored locally, and will be reported when the device is next online: No * Reported for affiliated users only: N/A",
      id = "GoogleChromeManagementV1CpuStatusReport",
      properties = {
        cpuTemperatureInfo = {
          description = "Output only. CPU temperature sample info per CPU core in Celsius",
          items = {
            ["$ref"] = "GoogleChromeManagementV1CpuTemperatureInfo",
          },
          readOnly = true,
          type = "array",
        },
        cpuUtilizationPct = {
          description = "Output only. Sample of CPU utilization (0-100 percent).",
          format = "int32",
          readOnly = true,
          type = "integer",
        },
        reportTime = {
          description = "Output only. The timestamp in milliseconds representing time at which this report was sampled.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        sampleFrequency = {
          description = "Output only. Frequency the report is sampled.",
          format = "google-duration",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    GoogleChromeManagementV1CpuTemperatureInfo = {
      description = "CPU temperature of a device. Sampled per CPU core in Celsius. * This field is telemetry information and this will change over time as the device is utilized. * Data for this field is controlled via policy: [ReportDeviceCpuInfo](https://chromeenterprise.google/policies/#ReportDeviceCpuInfo) * Data Collection Frequency: Every 10 minutes * Default Data Reporting Frequency: 3 hours - Policy Controlled: Yes * Cache: If the device is offline, the collected data is stored locally, and will be reported when the device is next online: No * Reported for affiliated users only: N/A",
      id = "GoogleChromeManagementV1CpuTemperatureInfo",
      properties = {
        label = {
          description = "Output only. CPU label. Example: Core 0",
          readOnly = true,
          type = "string",
        },
        temperatureCelsius = {
          description = "Output only. CPU temperature in Celsius.",
          format = "int32",
          readOnly = true,
          type = "integer",
        },
      },
      type = "object",
    },
    GoogleChromeManagementV1Device = {
      description = "Describes a device reporting Chrome browser information.",
      id = "GoogleChromeManagementV1Device",
      properties = {
        deviceId = {
          description = "Output only. The ID of the device that reported this Chrome browser information.",
          readOnly = true,
          type = "string",
        },
        machine = {
          description = "Output only. The name of the machine within its local network.",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    GoogleChromeManagementV1DeviceAueCountReport = {
      description = "Report for CountChromeDevicesPerAueDateResponse, contains the count of devices of a specific model and auto update expiration range.",
      id = "GoogleChromeManagementV1DeviceAueCountReport",
      properties = {
        aueMonth = {
          description = "Enum value of month corresponding to the auto update expiration date in UTC time zone. If the device is already expired, this field is empty.",
          enum = {
            "MONTH_UNSPECIFIED",
            "JANUARY",
            "FEBRUARY",
            "MARCH",
            "APRIL",
            "MAY",
            "JUNE",
            "JULY",
            "AUGUST",
            "SEPTEMBER",
            "OCTOBER",
            "NOVEMBER",
            "DECEMBER",
          },
          enumDescriptions = {
            "The unspecified month.",
            "The month of January.",
            "The month of February.",
            "The month of March.",
            "The month of April.",
            "The month of May.",
            "The month of June.",
            "The month of July.",
            "The month of August.",
            "The month of September.",
            "The month of October.",
            "The month of November.",
            "The month of December.",
          },
          type = "string",
        },
        aueYear = {
          description = "Int value of year corresponding to the Auto Update Expiration date in UTC time zone. If the device is already expired, this field is empty.",
          format = "int64",
          type = "string",
        },
        count = {
          description = "Count of devices of this model.",
          format = "int64",
          type = "string",
        },
        expired = {
          description = "Boolean value for whether or not the device has already expired.",
          type = "boolean",
        },
        model = {
          description = "Public model name of the devices.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleChromeManagementV1DeviceHardwareCountReport = {
      description = "Report for CountChromeDevicesPerHardwareSpecResponse, contains the count of devices with a unique hardware specification.",
      id = "GoogleChromeManagementV1DeviceHardwareCountReport",
      properties = {
        bucket = {
          description = "Public name of the hardware specification.",
          type = "string",
        },
        count = {
          description = "Count of devices with a unique hardware specification.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleChromeManagementV1DiskInfo = {
      description = "Status of the single storage device.",
      id = "GoogleChromeManagementV1DiskInfo",
      properties = {
        bytesReadThisSession = {
          description = "Output only. Number of bytes read since last boot.",
          format = "int64",
          readOnly = true,
          type = "string",
        },
        bytesWrittenThisSession = {
          description = "Output only. Number of bytes written since last boot.",
          format = "int64",
          readOnly = true,
          type = "string",
        },
        discardTimeThisSession = {
          description = "Output only. Time spent discarding since last boot. Discarding is writing to clear blocks which are no longer in use. Supported on kernels 4.18+.",
          format = "google-duration",
          readOnly = true,
          type = "string",
        },
        health = {
          description = "Output only. Disk health.",
          readOnly = true,
          type = "string",
        },
        ioTimeThisSession = {
          description = "Output only. Counts the time the disk and queue were busy, so unlike the fields above, parallel requests are not counted multiple times.",
          format = "google-duration",
          readOnly = true,
          type = "string",
        },
        manufacturer = {
          description = "Output only. Disk manufacturer.",
          readOnly = true,
          type = "string",
        },
        model = {
          description = "Output only. Disk model.",
          readOnly = true,
          type = "string",
        },
        readTimeThisSession = {
          description = "Output only. Time spent reading from disk since last boot.",
          format = "google-duration",
          readOnly = true,
          type = "string",
        },
        serialNumber = {
          description = "Output only. Disk serial number.",
          readOnly = true,
          type = "string",
        },
        sizeBytes = {
          description = "Output only. Disk size.",
          format = "int64",
          readOnly = true,
          type = "string",
        },
        type = {
          description = "Output only. Disk type: eMMC / NVMe / ATA / SCSI.",
          readOnly = true,
          type = "string",
        },
        volumeIds = {
          description = "Output only. Disk volumes.",
          items = {
            type = "string",
          },
          readOnly = true,
          type = "array",
        },
        writeTimeThisSession = {
          description = "Output only. Time spent writing to disk since last boot.",
          format = "google-duration",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    GoogleChromeManagementV1DisplayInfo = {
      description = "Information for a display.",
      id = "GoogleChromeManagementV1DisplayInfo",
      properties = {
        deviceId = {
          description = "Output only. Represents the graphics card device id.",
          format = "int64",
          readOnly = true,
          type = "string",
        },
        isInternal = {
          description = "Output only. Indicates if display is internal or not.",
          readOnly = true,
          type = "boolean",
        },
        refreshRate = {
          description = "Output only. Refresh rate in Hz.",
          format = "int32",
          readOnly = true,
          type = "integer",
        },
        resolutionHeight = {
          description = "Output only. Resolution height in pixels.",
          format = "int32",
          readOnly = true,
          type = "integer",
        },
        resolutionWidth = {
          description = "Output only. Resolution width in pixels.",
          format = "int32",
          readOnly = true,
          type = "integer",
        },
      },
      type = "object",
    },
    GoogleChromeManagementV1FindInstalledAppDevicesResponse = {
      description = "Response containing a list of devices with queried app installed.",
      id = "GoogleChromeManagementV1FindInstalledAppDevicesResponse",
      properties = {
        devices = {
          description = "A list of devices which have the app installed. Sorted in ascending alphabetical order on the Device.machine field.",
          items = {
            ["$ref"] = "GoogleChromeManagementV1Device",
          },
          type = "array",
        },
        nextPageToken = {
          description = "Token to specify the next page of the request.",
          type = "string",
        },
        totalSize = {
          description = "Total number of devices matching request.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    GoogleChromeManagementV1GraphicsAdapterInfo = {
      description = "Information of a graphics adapter (GPU).",
      id = "GoogleChromeManagementV1GraphicsAdapterInfo",
      properties = {
        adapter = {
          description = "Output only. Adapter name. Example: Mesa DRI Intel(R) UHD Graphics 620 (Kabylake GT2).",
          readOnly = true,
          type = "string",
        },
        deviceId = {
          description = "Output only. Represents the graphics card device id.",
          format = "int64",
          readOnly = true,
          type = "string",
        },
        driverVersion = {
          description = "Output only. Version of the GPU driver.",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    GoogleChromeManagementV1GraphicsInfo = {
      description = "Information of the graphics subsystem. * This field provides device information, which is static and will not change over time. * Data for this field is controlled via policy: [ReportDeviceGraphicsStatus](https://chromeenterprise.google/policies/#ReportDeviceGraphicsStatus) * Data Collection Frequency: Only at Upload * Default Data Reporting Frequency: 3 hours - Policy Controlled: Yes * Cache: If the device is offline, the collected data is stored locally, and will be reported when the device is next online: No * Reported for affiliated users only: N/A",
      id = "GoogleChromeManagementV1GraphicsInfo",
      properties = {
        adapterInfo = {
          ["$ref"] = "GoogleChromeManagementV1GraphicsAdapterInfo",
          description = "Output only. Information about the graphics adapter (GPU).",
          readOnly = true,
        },
      },
      type = "object",
    },
    GoogleChromeManagementV1GraphicsStatusReport = {
      description = "Information of the graphics subsystem. * This field is telemetry information and this will change over time as the device is utilized. * Data for this field is controlled via policy: [ReportDeviceGraphicsInfo](https://chromeenterprise.google/policies/#ReportDeviceGraphicsInfo) * Data Collection Frequency: Only at Upload * Default Data Reporting Frequency: 3 hours - Policy Controlled: Yes * Cache: If the device is offline, the collected data is stored locally, and will be reported when the device is next online: No * Reported for affiliated users only: N/A",
      id = "GoogleChromeManagementV1GraphicsStatusReport",
      properties = {
        displays = {
          description = "Output only. Information about the displays for the device.",
          items = {
            ["$ref"] = "GoogleChromeManagementV1DisplayInfo",
          },
          readOnly = true,
          type = "array",
        },
        reportTime = {
          description = "Output only. Time at which the graphics data was reported.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    GoogleChromeManagementV1HttpsLatencyRoutineData = {
      description = "Data that describes the result of the HTTPS latency diagnostics routine, with the HTTPS requests issued to Google websites.",
      id = "GoogleChromeManagementV1HttpsLatencyRoutineData",
      properties = {
        latency = {
          description = "Output only. HTTPS latency if routine succeeded or failed because of HIGH_LATENCY or VERY_HIGH_LATENCY.",
          format = "google-duration",
          readOnly = true,
          type = "string",
        },
        problem = {
          description = "Output only. HTTPS latency routine problem if a problem occurred.",
          enum = {
            "HTTPS_LATENCY_PROBLEM_UNSPECIFIED",
            "FAILED_DNS_RESOLUTIONS",
            "FAILED_HTTPS_REQUESTS",
            "HIGH_LATENCY",
            "VERY_HIGH_LATENCY",
          },
          enumDescriptions = {
            "HTTPS latency problem not specified.",
            "One or more DNS resolutions resulted in a failure.",
            "One or more HTTPS requests resulted in a failure.",
            "Average HTTPS request latency time between 500ms and 1000ms is high.",
            "Average HTTPS request latency time greater than 1000ms is very high.",
          },
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    GoogleChromeManagementV1InstalledApp = {
      description = "Describes an installed app.",
      id = "GoogleChromeManagementV1InstalledApp",
      properties = {
        appId = {
          description = "Output only. Unique identifier of the app. For Chrome apps and extensions, the 32-character id (e.g. ehoadneljpdggcbbknedodolkkjodefl). For Android apps, the package name (e.g. com.evernote).",
          readOnly = true,
          type = "string",
        },
        appInstallType = {
          description = "Output only. How the app was installed.",
          enum = {
            "APP_INSTALL_TYPE_UNSPECIFIED",
            "MULTIPLE",
            "NORMAL",
            "ADMIN",
            "DEVELOPMENT",
            "SIDELOAD",
            "OTHER",
          },
          enumDescriptions = {
            "Application install type not specified.",
            "Multiple app install types.",
            "Normal app install type.",
            "Administrator app install type.",
            "Development app install type.",
            "Sideloaded app install type.",
            "Other app install type.",
          },
          readOnly = true,
          type = "string",
        },
        appSource = {
          description = "Output only. Source of the installed app.",
          enum = {
            "APP_SOURCE_UNSPECIFIED",
            "CHROME_WEBSTORE",
            "PLAY_STORE",
          },
          enumDescriptions = {
            "Application source not specified.",
            "Generally for extensions and Chrome apps.",
            "Play Store app.",
          },
          readOnly = true,
          type = "string",
        },
        appType = {
          description = "Output only. Type of the app.",
          enum = {
            "APP_TYPE_UNSPECIFIED",
            "EXTENSION",
            "APP",
            "THEME",
            "HOSTED_APP",
            "ANDROID_APP",
          },
          enumDescriptions = {
            "App type not specified.",
            "Chrome extension.",
            "Chrome app.",
            "Chrome theme.",
            "Chrome hosted app.",
            "ARC++ app.",
          },
          readOnly = true,
          type = "string",
        },
        browserDeviceCount = {
          description = "Output only. Count of browser devices with this app installed.",
          format = "int64",
          readOnly = true,
          type = "string",
        },
        description = {
          description = "Output only. Description of the installed app.",
          readOnly = true,
          type = "string",
        },
        disabled = {
          description = "Output only. Whether the app is disabled.",
          readOnly = true,
          type = "boolean",
        },
        displayName = {
          description = "Output only. Name of the installed app.",
          readOnly = true,
          type = "string",
        },
        homepageUri = {
          description = "Output only. Homepage uri of the installed app.",
          readOnly = true,
          type = "string",
        },
        osUserCount = {
          description = "Output only. Count of ChromeOS users with this app installed.",
          format = "int64",
          readOnly = true,
          type = "string",
        },
        permissions = {
          description = "Output only. Permissions of the installed app.",
          items = {
            type = "string",
          },
          readOnly = true,
          type = "array",
        },
      },
      type = "object",
    },
    GoogleChromeManagementV1ListTelemetryDevicesResponse = {
      id = "GoogleChromeManagementV1ListTelemetryDevicesResponse",
      properties = {
        devices = {
          description = "Telemetry devices returned in the response.",
          items = {
            ["$ref"] = "GoogleChromeManagementV1TelemetryDevice",
          },
          type = "array",
        },
        nextPageToken = {
          description = "Token to specify next page in the list.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleChromeManagementV1ListTelemetryEventsResponse = {
      description = "Response message for listing telemetry events for a customer.",
      id = "GoogleChromeManagementV1ListTelemetryEventsResponse",
      properties = {
        nextPageToken = {
          description = "Token to specify next page in the list.",
          type = "string",
        },
        telemetryEvents = {
          description = "Telemetry events returned in the response.",
          items = {
            ["$ref"] = "GoogleChromeManagementV1TelemetryEvent",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleChromeManagementV1MemoryInfo = {
      description = "Memory information of a device. * This field has both telemetry and device information: - `totalRamBytes` - Device information - `availableRamBytes` - Telemetry information - `totalMemoryEncryption` - Device information * Data for this field is controlled via policy: [ReportDeviceMemoryInfo](https://chromeenterprise.google/policies/#ReportDeviceMemoryInfo) * Data Collection Frequency: - `totalRamBytes` - Only at upload - `availableRamBytes` - Every 10 minutes - `totalMemoryEncryption` - at device startup * Default Data Reporting Frequency: - `totalRamBytes` - 3 hours - `availableRamBytes` - 3 hours - `totalMemoryEncryption` - at device startup - Policy Controlled: Yes * Cache: If the device is offline, the collected data is stored locally, and will be reported when the device is next online: only for `totalMemoryEncryption` * Reported for affiliated users only: N/A",
      id = "GoogleChromeManagementV1MemoryInfo",
      properties = {
        availableRamBytes = {
          description = "Output only. Amount of available RAM in bytes.",
          format = "int64",
          readOnly = true,
          type = "string",
        },
        totalMemoryEncryption = {
          ["$ref"] = "GoogleChromeManagementV1TotalMemoryEncryptionInfo",
          description = "Output only. Total memory encryption info for the device.",
          readOnly = true,
        },
        totalRamBytes = {
          description = "Output only. Total RAM in bytes.",
          format = "int64",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    GoogleChromeManagementV1MemoryStatusReport = {
      description = "Contains samples of memory status reports. * This field is telemetry information and this will change over time as the device is utilized. * Data for this field is controlled via policy: [ReportDeviceMemoryInfo](https://chromeenterprise.google/policies/#ReportDeviceMemoryInfo) * Data Collection Frequency: Only at upload, SystemRamFreeByes is collected every 10 minutes * Default Data Reporting Frequency: Every 3 hours - Policy Controlled: Yes * Cache: If the device is offline, the collected data is stored locally, and will be reported when the device is next online: No * Reported for affiliated users only: N/A",
      id = "GoogleChromeManagementV1MemoryStatusReport",
      properties = {
        pageFaults = {
          description = "Output only. Number of page faults during this collection",
          format = "int32",
          readOnly = true,
          type = "integer",
        },
        reportTime = {
          description = "Output only. The timestamp in milliseconds representing time at which this report was sampled.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        sampleFrequency = {
          description = "Output only. Frequency the report is sampled.",
          format = "google-duration",
          readOnly = true,
          type = "string",
        },
        systemRamFreeBytes = {
          description = "Output only. Amount of free RAM in bytes (unreliable due to Garbage Collection).",
          format = "int64",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    GoogleChromeManagementV1NetworkDevice = {
      description = "Details about the network device. * This field provides device information, which is static and will not change over time. * Data for this field is controlled via policy: [ReportNetworkDeviceConfiguration](https://chromeenterprise.google/policies/#ReportNetworkDeviceConfiguration) * Data Collection Frequency: At device startup * Default Data Reporting Frequency: At device startup - Policy Controlled: Yes * Cache: If the device is offline, the collected data is stored locally, and will be reported when the device is next online: Yes * Reported for affiliated users only: N/A",
      id = "GoogleChromeManagementV1NetworkDevice",
      properties = {
        iccid = {
          description = "Output only. The integrated circuit card ID associated with the device's sim card.",
          readOnly = true,
          type = "string",
        },
        imei = {
          description = "Output only. IMEI (if applicable) of the corresponding network device.",
          readOnly = true,
          type = "string",
        },
        macAddress = {
          description = "Output only. MAC address (if applicable) of the corresponding network device.",
          readOnly = true,
          type = "string",
        },
        mdn = {
          description = "Output only. The mobile directory number associated with the device's sim card.",
          readOnly = true,
          type = "string",
        },
        meid = {
          description = "Output only. MEID (if applicable) of the corresponding network device.",
          readOnly = true,
          type = "string",
        },
        type = {
          description = "Output only. Network device type.",
          enum = {
            "NETWORK_DEVICE_TYPE_UNSPECIFIED",
            "CELLULAR_DEVICE",
            "ETHERNET_DEVICE",
            "WIFI_DEVICE",
          },
          enumDescriptions = {
            "Network device type not specified.",
            "Cellular device.",
            "Ethernet device.",
            "Wifi device.",
          },
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    GoogleChromeManagementV1NetworkDiagnosticsReport = {
      description = "Network testing results to determine the health of the device's network connection, for example whether the HTTPS latency is high or normal.",
      id = "GoogleChromeManagementV1NetworkDiagnosticsReport",
      properties = {
        httpsLatencyData = {
          ["$ref"] = "GoogleChromeManagementV1HttpsLatencyRoutineData",
          description = "Output only. HTTPS latency test data.",
          readOnly = true,
        },
        reportTime = {
          description = "Output only. Timestamp of when the diagnostics were collected.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    GoogleChromeManagementV1NetworkInfo = {
      description = "Network device information. * This field provides device information, which is static and will not change over time. * Data for this field is controlled via policy: [ReportNetworkDeviceConfiguration](https://chromeenterprise.google/policies/#ReportNetworkDeviceConfiguration) * Data Collection Frequency: At device startup * Default Data Reporting Frequency: At device startup - Policy Controlled: Yes * Cache: If the device is offline, the collected data is stored locally, and will be reported when the device is next online: Yes * Reported for affiliated users only: N/A",
      id = "GoogleChromeManagementV1NetworkInfo",
      properties = {
        networkDevices = {
          description = "Output only. List of network devices.",
          items = {
            ["$ref"] = "GoogleChromeManagementV1NetworkDevice",
          },
          readOnly = true,
          type = "array",
        },
      },
      type = "object",
    },
    GoogleChromeManagementV1NetworkStatusReport = {
      description = "State of visible/configured networks. * This field is telemetry information and this will change over time as the device is utilized. * Data for this field is controlled via policy: [ReportNetworkStatus](https://chromeenterprise.google/policies/#ReportNetworkStatus) * Data Collection Frequency: 60 minutes * Default Data Reporting Frequency: 3 hours - Policy Controlled: Yes * Cache: If the device is offline, the collected data is stored locally, and will be reported when the device is next online: Yes * Reported for affiliated users only: Yes",
      id = "GoogleChromeManagementV1NetworkStatusReport",
      properties = {
        connectionState = {
          description = "Output only. Current connection state of the network.",
          enum = {
            "NETWORK_CONNECTION_STATE_UNSPECIFIED",
            "ONLINE",
            "CONNECTED",
            "PORTAL",
            "CONNECTING",
            "NOT_CONNECTED",
          },
          enumDescriptions = {
            "Network connection state unspecified.",
            "The network is connected and internet connectivity is available.",
            "The network is connected and not in a detected portal state, but internet connectivity may not be available.",
            "The network is connected but a portal state was detected. Internet connectivity may be limited.",
            "The network is in the process of connecting.",
            "The network is not connected.",
          },
          readOnly = true,
          type = "string",
        },
        connectionType = {
          description = "Output only. Network connection type.",
          enum = {
            "NETWORK_TYPE_UNSPECIFIED",
            "CELLULAR",
            "ETHERNET",
            "TETHER",
            "VPN",
            "WIFI",
          },
          enumDescriptions = {
            "Network connection type unspecified",
            "Cellular network connection.",
            "Ethernet network connection.",
            "Tether network connection.",
            "VPN network connection.",
            "Wifi network connection.",
          },
          readOnly = true,
          type = "string",
        },
        encryptionOn = {
          description = "Output only. Whether the wifi encryption key is turned off.",
          readOnly = true,
          type = "boolean",
        },
        gatewayIpAddress = {
          description = "Output only. Gateway IP address.",
          readOnly = true,
          type = "string",
        },
        guid = {
          description = "Output only. Network connection guid.",
          readOnly = true,
          type = "string",
        },
        lanIpAddress = {
          description = "Output only. LAN IP address.",
          readOnly = true,
          type = "string",
        },
        receivingBitRateMbps = {
          description = "Output only. Receiving bit rate measured in Megabits per second.",
          format = "int64",
          readOnly = true,
          type = "string",
        },
        reportTime = {
          description = "Output only. Time at which the network state was reported.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        sampleFrequency = {
          description = "Output only. Frequency the report is sampled.",
          format = "google-duration",
          readOnly = true,
          type = "string",
        },
        signalStrengthDbm = {
          description = "Output only. Signal strength for wireless networks measured in decibels.",
          format = "int32",
          readOnly = true,
          type = "integer",
        },
        transmissionBitRateMbps = {
          description = "Output only. Transmission bit rate measured in Megabits per second.",
          format = "int64",
          readOnly = true,
          type = "string",
        },
        transmissionPowerDbm = {
          description = "Output only. Transmission power measured in decibels.",
          format = "int32",
          readOnly = true,
          type = "integer",
        },
        wifiLinkQuality = {
          description = "Output only. Wifi link quality. Value ranges from [0, 70]. 0 indicates no signal and 70 indicates a strong signal.",
          format = "int64",
          readOnly = true,
          type = "string",
        },
        wifiPowerManagementEnabled = {
          description = "Output only. Wifi power management enabled",
          readOnly = true,
          type = "boolean",
        },
      },
      type = "object",
    },
    GoogleChromeManagementV1OsUpdateStatus = {
      description = "Contains information regarding the current OS update status. * This field is telemetry information and this will change over time as the device is utilized. * Data for this field is controlled via policy: [ReportDeviceOsUpdateStatus](https://chromeenterprise.google/policies/#ReportDeviceOsUpdateStatus) * Data Collection Frequency: Only at Upload * Default Data Reporting Frequency: 3 hours - Policy Controlled: Yes * Cache: If the device is offline, the collected data is stored locally, and will be reported when the device is next online: No * Reported for affiliated users only: N/A",
      id = "GoogleChromeManagementV1OsUpdateStatus",
      properties = {
        lastRebootTime = {
          description = "Output only. Timestamp of the last reboot.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        lastUpdateCheckTime = {
          description = "Output only. Timestamp of the last update check.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        lastUpdateTime = {
          description = "Output only. Timestamp of the last successful update.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        newPlatformVersion = {
          description = "Output only. New platform version of the os image being downloaded and applied. It is only set when update status is OS_IMAGE_DOWNLOAD_IN_PROGRESS or OS_UPDATE_NEED_REBOOT. Note this could be a dummy \"0.0.0.0\" for OS_UPDATE_NEED_REBOOT status for some edge cases, e.g. update engine is restarted without a reboot.",
          readOnly = true,
          type = "string",
        },
        newRequestedPlatformVersion = {
          description = "Output only. New requested platform version from the pending updated kiosk app.",
          readOnly = true,
          type = "string",
        },
        updateState = {
          description = "Output only. Current state of the os update.",
          enum = {
            "UPDATE_STATE_UNSPECIFIED",
            "OS_IMAGE_DOWNLOAD_NOT_STARTED",
            "OS_IMAGE_DOWNLOAD_IN_PROGRESS",
            "OS_UPDATE_NEED_REBOOT",
          },
          enumDescriptions = {
            "State unspecified.",
            "OS has not started downloading.",
            "OS has started download on device.",
            "Device needs reboot to finish upload.",
          },
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    GoogleChromeManagementV1StorageInfo = {
      description = "Status data for storage. * This field is telemetry information and this will change over time as the device is utilized. * Data for this field is controlled via policy: [ReportDeviceStorageStatus](https://chromeenterprise.google/policies/#ReportDeviceStorageStatus) * Data Collection Frequency: Only at Upload * Default Data Reporting Frequency: 3 hours - Policy Controlled: Yes * Cache: If the device is offline, the collected data is stored locally, and will be reported when the device is next online: No * Reported for affiliated users only: N/A",
      id = "GoogleChromeManagementV1StorageInfo",
      properties = {
        availableDiskBytes = {
          description = "The available space for user data storage in the device in bytes.",
          format = "int64",
          type = "string",
        },
        totalDiskBytes = {
          description = "The total space for user data storage in the device in bytes.",
          format = "int64",
          type = "string",
        },
        volume = {
          description = "Information for disk volumes",
          items = {
            ["$ref"] = "GoogleChromeManagementV1StorageInfoDiskVolume",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleChromeManagementV1StorageInfoDiskVolume = {
      description = "Information for disk volumes",
      id = "GoogleChromeManagementV1StorageInfoDiskVolume",
      properties = {
        storageFreeBytes = {
          description = "Free storage space in bytes.",
          format = "int64",
          type = "string",
        },
        storageTotalBytes = {
          description = "Total storage space in bytes.",
          format = "int64",
          type = "string",
        },
        volumeId = {
          description = "Disk volume id.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleChromeManagementV1StorageStatusReport = {
      description = "Status data for storage. * This field is telemetry information and this will change over time as the device is utilized. * Data for this field is controlled via policy: [ReportDeviceStorageStatus](https://chromeenterprise.google/policies/#ReportDeviceStorageStatus) * Data Collection Frequency: Only at Upload * Default Data Reporting Frequency: 3 hours - Policy Controlled: Yes * Cache: If the device is offline, the collected data is stored locally, and will be reported when the device is next online: No * Reported for affiliated users only: N/A",
      id = "GoogleChromeManagementV1StorageStatusReport",
      properties = {
        disk = {
          description = "Output only. Reports on disk.",
          items = {
            ["$ref"] = "GoogleChromeManagementV1DiskInfo",
          },
          readOnly = true,
          type = "array",
        },
        reportTime = {
          description = "Output only. Timestamp of when the sample was collected on device",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    GoogleChromeManagementV1TelemetryAudioSevereUnderrunEvent = {
      description = "`TelemetryAudioSevereUnderrunEvent` is triggered when a audio devices run out of buffer data for more than 5 seconds.",
      id = "GoogleChromeManagementV1TelemetryAudioSevereUnderrunEvent",
      properties = {},
      type = "object",
    },
    GoogleChromeManagementV1TelemetryDevice = {
      description = "Telemetry data collected from a managed device.",
      id = "GoogleChromeManagementV1TelemetryDevice",
      properties = {
        audioStatusReport = {
          description = "Output only. Audio reports collected periodically sorted in a decreasing order of report_time.",
          items = {
            ["$ref"] = "GoogleChromeManagementV1AudioStatusReport",
          },
          readOnly = true,
          type = "array",
        },
        batteryInfo = {
          description = "Output only. Information on battery specs for the device.",
          items = {
            ["$ref"] = "GoogleChromeManagementV1BatteryInfo",
          },
          readOnly = true,
          type = "array",
        },
        batteryStatusReport = {
          description = "Output only. Battery reports collected periodically.",
          items = {
            ["$ref"] = "GoogleChromeManagementV1BatteryStatusReport",
          },
          readOnly = true,
          type = "array",
        },
        bootPerformanceReport = {
          description = "Output only. Boot performance reports of the device.",
          items = {
            ["$ref"] = "GoogleChromeManagementV1BootPerformanceReport",
          },
          readOnly = true,
          type = "array",
        },
        cpuInfo = {
          description = "Output only. Information regarding CPU specs for the device.",
          items = {
            ["$ref"] = "GoogleChromeManagementV1CpuInfo",
          },
          readOnly = true,
          type = "array",
        },
        cpuStatusReport = {
          description = "Output only. CPU status reports collected periodically sorted in a decreasing order of report_time.",
          items = {
            ["$ref"] = "GoogleChromeManagementV1CpuStatusReport",
          },
          readOnly = true,
          type = "array",
        },
        customer = {
          description = "Output only. Google Workspace Customer whose enterprise enrolled the device.",
          readOnly = true,
          type = "string",
        },
        deviceId = {
          description = "Output only. The unique Directory API ID of the device. This value is the same as the Admin Console's Directory API ID in the ChromeOS Devices tab",
          readOnly = true,
          type = "string",
        },
        graphicsInfo = {
          ["$ref"] = "GoogleChromeManagementV1GraphicsInfo",
          description = "Output only. Contains information regarding Graphic peripherals for the device.",
          readOnly = true,
        },
        graphicsStatusReport = {
          description = "Output only. Graphics reports collected periodically.",
          items = {
            ["$ref"] = "GoogleChromeManagementV1GraphicsStatusReport",
          },
          readOnly = true,
          type = "array",
        },
        memoryInfo = {
          ["$ref"] = "GoogleChromeManagementV1MemoryInfo",
          description = "Output only. Information regarding memory specs for the device.",
          readOnly = true,
        },
        memoryStatusReport = {
          description = "Output only. Memory status reports collected periodically sorted decreasing by report_time.",
          items = {
            ["$ref"] = "GoogleChromeManagementV1MemoryStatusReport",
          },
          readOnly = true,
          type = "array",
        },
        name = {
          description = "Output only. Resource name of the device.",
          readOnly = true,
          type = "string",
        },
        networkDiagnosticsReport = {
          description = "Output only. Network diagnostics collected periodically.",
          items = {
            ["$ref"] = "GoogleChromeManagementV1NetworkDiagnosticsReport",
          },
          readOnly = true,
          type = "array",
        },
        networkInfo = {
          ["$ref"] = "GoogleChromeManagementV1NetworkInfo",
          description = "Output only. Network devices information.",
          readOnly = true,
        },
        networkStatusReport = {
          description = "Output only. Network specs collected periodically.",
          items = {
            ["$ref"] = "GoogleChromeManagementV1NetworkStatusReport",
          },
          readOnly = true,
          type = "array",
        },
        orgUnitId = {
          description = "Output only. Organization unit ID of the device.",
          readOnly = true,
          type = "string",
        },
        osUpdateStatus = {
          description = "Output only. Contains relevant information regarding ChromeOS update status.",
          items = {
            ["$ref"] = "GoogleChromeManagementV1OsUpdateStatus",
          },
          readOnly = true,
          type = "array",
        },
        serialNumber = {
          description = "Output only. Device serial number. This value is the same as the Admin Console's Serial Number in the ChromeOS Devices tab.",
          readOnly = true,
          type = "string",
        },
        storageInfo = {
          ["$ref"] = "GoogleChromeManagementV1StorageInfo",
          description = "Output only. Information of storage specs for the device.",
          readOnly = true,
        },
        storageStatusReport = {
          description = "Output only. Storage reports collected periodically.",
          items = {
            ["$ref"] = "GoogleChromeManagementV1StorageStatusReport",
          },
          readOnly = true,
          type = "array",
        },
        thunderboltInfo = {
          description = "Output only. Information on Thunderbolt bus.",
          items = {
            ["$ref"] = "GoogleChromeManagementV1ThunderboltInfo",
          },
          readOnly = true,
          type = "array",
        },
      },
      type = "object",
    },
    GoogleChromeManagementV1TelemetryDeviceInfo = {
      description = "Information about a device associated with telemetry data.",
      id = "GoogleChromeManagementV1TelemetryDeviceInfo",
      properties = {
        deviceId = {
          description = "Output only. The unique Directory API ID of the device. This value is the same as the Admin Console's Directory API ID in the ChromeOS Devices tab.",
          readOnly = true,
          type = "string",
        },
        orgUnitId = {
          description = "Output only. Organization unit ID of the device.",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    GoogleChromeManagementV1TelemetryEvent = {
      description = "Telemetry data reported by a managed device.",
      id = "GoogleChromeManagementV1TelemetryEvent",
      properties = {
        audioSevereUnderrunEvent = {
          ["$ref"] = "GoogleChromeManagementV1TelemetryAudioSevereUnderrunEvent",
          description = "Output only. Payload for audio severe underrun event. Present only when the `event_type` field is `AUDIO_SEVERE_UNDERRUN`.",
          readOnly = true,
        },
        device = {
          ["$ref"] = "GoogleChromeManagementV1TelemetryDeviceInfo",
          description = "Output only. Information about the device associated with the event.",
          readOnly = true,
        },
        eventType = {
          description = "The event type of the current event.",
          enum = {
            "EVENT_TYPE_UNSPECIFIED",
            "AUDIO_SEVERE_UNDERRUN",
            "NETWORK_CONNECTION_STATE_CHANGE",
            "USB_ADDED",
            "USB_REMOVED",
            "NETWORK_HTTPS_LATENCY_CHANGE",
          },
          enumDescriptions = {
            "Event type unknown.",
            "Triggered when a audio devices run out of buffer data for more than 5 seconds.",
            "Triggered immediately on any changes to a network connection.",
            "Triggered when USB devices are added.",
            "Triggered when USB devices are removed.",
            "Triggered when a new HTTPS latency problem was detected or the device has recovered form an existing HTTPS latency problem.",
          },
          type = "string",
        },
        httpsLatencyChangeEvent = {
          ["$ref"] = "GoogleChromeManagementV1TelemetryHttpsLatencyChangeEvent",
          description = "Output only. Payload for HTTPS latency change event. Present only when `event_type` is `NETWORK_HTTPS_LATENCY_CHANGE`.",
          readOnly = true,
        },
        name = {
          description = "Output only. Resource name of the event.",
          readOnly = true,
          type = "string",
        },
        reportTime = {
          description = "Timestamp that represents when the event was reported.",
          format = "google-datetime",
          type = "string",
        },
        usbPeripheralsEvent = {
          ["$ref"] = "GoogleChromeManagementV1TelemetryUsbPeripheralsEvent",
          description = "Output only. Payload for usb peripherals event. Present only when the `event_type` field is either `USB_ADDED` or `USB_REMOVED`.",
          readOnly = true,
        },
        user = {
          ["$ref"] = "GoogleChromeManagementV1TelemetryUserInfo",
          description = "Output only. Information about the user associated with the event.",
          readOnly = true,
        },
      },
      type = "object",
    },
    GoogleChromeManagementV1TelemetryHttpsLatencyChangeEvent = {
      description = "Https latency routine is run periodically and `TelemetryHttpsLatencyChangeEvent` is triggered if a latency problem was detected or if the device has recovered from a latency problem..",
      id = "GoogleChromeManagementV1TelemetryHttpsLatencyChangeEvent",
      properties = {
        httpsLatencyRoutineData = {
          ["$ref"] = "GoogleChromeManagementV1HttpsLatencyRoutineData",
          description = "HTTPS latency routine data that triggered the event.",
        },
        httpsLatencyState = {
          description = "Current HTTPS latency state.",
          enum = {
            "HTTPS_LATENCY_STATE_UNSPECIFIED",
            "RECOVERY",
            "PROBLEM",
          },
          enumDescriptions = {
            "HTTPS latency state is unspecified.",
            "HTTPS latency recovered from a problem.",
            "HTTPS latency problem.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleChromeManagementV1TelemetryUsbPeripheralsEvent = {
      description = "`TelemetryUsbPeripheralsEvent` is triggered USB devices are either added or removed.",
      id = "GoogleChromeManagementV1TelemetryUsbPeripheralsEvent",
      properties = {
        usbPeripheralReport = {
          description = "List of usb devices that were either added or removed.",
          items = {
            ["$ref"] = "GoogleChromeManagementV1UsbPeripheralReport",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleChromeManagementV1TelemetryUserInfo = {
      description = "Information about a user associated with telemetry data.",
      id = "GoogleChromeManagementV1TelemetryUserInfo",
      properties = {
        email = {
          description = "Output only. User's email.",
          readOnly = true,
          type = "string",
        },
        orgUnitId = {
          description = "Output only. Organization unit ID of the user.",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    GoogleChromeManagementV1ThunderboltInfo = {
      description = "Thunderbolt bus info. * This field provides device information, which is static and will not change over time. * Data for this field is controlled via policy: [ReportDeviceSecurityStatus](https://chromeenterprise.google/policies/#ReportDeviceSecurityStatus) * Data Collection Frequency: At device startup * Default Data Reporting Frequency: At device startup - Policy Controlled: No * Cache: If the device is offline, the collected data is stored locally, and will be reported when the device is next online: Yes * Reported for affiliated users only: N/A",
      id = "GoogleChromeManagementV1ThunderboltInfo",
      properties = {
        securityLevel = {
          description = "Security level of the Thunderbolt bus.",
          enum = {
            "THUNDERBOLT_SECURITY_LEVEL_UNSPECIFIED",
            "THUNDERBOLT_SECURITY_NONE_LEVEL",
            "THUNDERBOLT_SECURITY_USER_LEVEL",
            "THUNDERBOLT_SECURITY_SECURE_LEVEL",
            "THUNDERBOLT_SECURITY_DP_ONLY_LEVEL",
            "THUNDERBOLT_SECURITY_USB_ONLY_LEVEL",
            "THUNDERBOLT_SECURITY_NO_PCIE_LEVEL",
          },
          enumDescriptions = {
            "Thunderbolt security level is not set.",
            "All devices are automatically connected by the firmware. No user approval is needed.",
            "User is asked whether the device is allowed to be connected.",
            "User is asked whether the device is allowed to be connected. In addition the device is sent a challenge that should match the expected one based on a random key written to the key sysfs attribute",
            "The firmware automatically creates tunnels for Thunderbolt.",
            "The firmware automatically creates tunnels for the USB controller and Display Port in a dock. All PCIe links downstream of the dock are removed.",
            "PCIE tunneling is disabled.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleChromeManagementV1TotalMemoryEncryptionInfo = {
      description = "Memory encryption information of a device. * This field provides device information, which is static and will not change over time. * Data for this field is controlled via policy: [ReportDeviceMemoryInfo](https://chromeenterprise.google/policies/#ReportDeviceMemoryInfo) * Data Collection Frequency: At device startup * Default Data Reporting Frequency: At device startup - Policy Controlled: Yes * Cache: If the device is offline, the collected data is stored locally, and will be reported when the device is next online: Yes * Reported for affiliated users only: N/A",
      id = "GoogleChromeManagementV1TotalMemoryEncryptionInfo",
      properties = {
        encryptionAlgorithm = {
          description = "Memory encryption algorithm.",
          enum = {
            "MEMORY_ENCRYPTION_ALGORITHM_UNSPECIFIED",
            "MEMORY_ENCRYPTION_ALGORITHM_UNKNOWN",
            "MEMORY_ENCRYPTION_ALGORITHM_AES_XTS_128",
            "MEMORY_ENCRYPTION_ALGORITHM_AES_XTS_256",
          },
          enumDescriptions = {
            "Memory encryption algorithm is not set.",
            "The memory encryption algorithm being used is unknown.",
            "The memory encryption algorithm is using the AES_XTS encryption algorithm with a 128 bit block cypher.",
            "The memory encryption algorithm is using the AES_XTS encryption algorithm with a 256 bit block cypher.",
          },
          type = "string",
        },
        encryptionState = {
          description = "The state of memory encryption on the device.",
          enum = {
            "MEMORY_ENCRYPTION_STATE_UNSPECIFIED",
            "MEMORY_ENCRYPTION_STATE_UNKNOWN",
            "MEMORY_ENCRYPTION_STATE_DISABLED",
            "MEMORY_ENCRYPTION_STATE_TME",
            "MEMORY_ENCRYPTION_STATE_MKTME",
          },
          enumDescriptions = {
            "Memory encryption state is not set.",
            "The memory encryption state is unknown.",
            "Memory encrpytion on the device is disabled.",
            "Memory encryption on the device uses total memory encryption.",
            "Memory encryption on the device uses multi-key total memory encryption.",
          },
          type = "string",
        },
        keyLength = {
          description = "The length of the encryption keys.",
          format = "int64",
          type = "string",
        },
        maxKeys = {
          description = "The maximum number of keys that can be used for encryption.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleChromeManagementV1UsbPeripheralReport = {
      description = "USB connected peripheral report.",
      id = "GoogleChromeManagementV1UsbPeripheralReport",
      properties = {
        categories = {
          description = "Output only. Categories the device belongs to https://www.usb.org/defined-class-codes",
          items = {
            type = "string",
          },
          readOnly = true,
          type = "array",
        },
        classId = {
          description = "Output only. Class ID https://www.usb.org/defined-class-codes",
          format = "int32",
          readOnly = true,
          type = "integer",
        },
        firmwareVersion = {
          description = "Output only. Firmware version",
          readOnly = true,
          type = "string",
        },
        name = {
          description = "Output only. Device name, model name, or product name",
          readOnly = true,
          type = "string",
        },
        pid = {
          description = "Output only. Product ID",
          format = "int32",
          readOnly = true,
          type = "integer",
        },
        subclassId = {
          description = "Output only. Subclass ID https://www.usb.org/defined-class-codes",
          format = "int32",
          readOnly = true,
          type = "integer",
        },
        vendor = {
          description = "Output only. Vendor name",
          readOnly = true,
          type = "string",
        },
        vid = {
          description = "Output only. Vendor ID",
          format = "int32",
          readOnly = true,
          type = "integer",
        },
      },
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
    GoogleTypeDate = {
      description = "Represents a whole or partial calendar date, such as a birthday. The time of day and time zone are either specified elsewhere or are insignificant. The date is relative to the Gregorian Calendar. This can represent one of the following: * A full date, with non-zero year, month, and day values. * A month and day, with a zero year (for example, an anniversary). * A year on its own, with a zero month and a zero day. * A year and month, with a zero day (for example, a credit card expiration date). Related types: * google.type.TimeOfDay * google.type.DateTime * google.protobuf.Timestamp",
      id = "GoogleTypeDate",
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
  },
  servicePath = "",
  title = "Chrome Management API",
  version = "v1",
  version_module = true,
}
