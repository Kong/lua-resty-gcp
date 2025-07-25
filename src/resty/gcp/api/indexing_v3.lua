return {
  auth = {
    oauth2 = {
      scopes = {
        ["https://www.googleapis.com/auth/indexing"] = {
          description = "Submit data to Google for indexing",
        },
      },
    },
  },
  basePath = "",
  baseUrl = "https://indexing.googleapis.com/",
  batchPath = "batch",
  canonicalName = "Indexing",
  description = "Notifies Google when your web pages change.",
  discoveryVersion = "v1",
  documentationLink = "https://developers.google.com/search/apis/indexing-api/",
  fullyEncodeReservedExpansion = true,
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "indexing:v3",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://indexing.mtls.googleapis.com/",
  name = "indexing",
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
    urlNotifications = {
      methods = {
        getMetadata = {
          description = "Gets metadata about a Web Document. This method can _only_ be used to query URLs that were previously seen in successful Indexing API notifications. Includes the latest `UrlNotification` received via this API.",
          flatPath = "v3/urlNotifications/metadata",
          httpMethod = "GET",
          id = "indexing.urlNotifications.getMetadata",
          parameterOrder = {},
          parameters = {
            url = {
              description = "URL that is being queried.",
              location = "query",
              type = "string",
            },
          },
          path = "v3/urlNotifications/metadata",
          response = {
            ["$ref"] = "UrlNotificationMetadata",
          },
          scopes = {
            "https://www.googleapis.com/auth/indexing",
          },
        },
        publish = {
          description = "Notifies that a URL has been updated or deleted.",
          flatPath = "v3/urlNotifications:publish",
          httpMethod = "POST",
          id = "indexing.urlNotifications.publish",
          parameterOrder = {},
          parameters = {},
          path = "v3/urlNotifications:publish",
          request = {
            ["$ref"] = "UrlNotification",
          },
          response = {
            ["$ref"] = "PublishUrlNotificationResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/indexing",
          },
        },
      },
    },
  },
  revision = "20221220",
  rootUrl = "https://indexing.googleapis.com/",
  schemas = {
    PublishUrlNotificationResponse = {
      description = "Output for PublishUrlNotification",
      id = "PublishUrlNotificationResponse",
      properties = {
        urlNotificationMetadata = {
          ["$ref"] = "UrlNotificationMetadata",
          description = "Description of the notification events received for this URL.",
        },
      },
      type = "object",
    },
    UrlNotification = {
      description = "`UrlNotification` is the resource used in all Indexing API calls. It describes one event in the life cycle of a Web Document.",
      id = "UrlNotification",
      properties = {
        notifyTime = {
          description = "Creation timestamp for this notification. Users should _not_ specify it, the field is ignored at the request time.",
          format = "google-datetime",
          type = "string",
        },
        type = {
          description = "The URL life cycle event that Google is being notified about.",
          enum = {
            "URL_NOTIFICATION_TYPE_UNSPECIFIED",
            "URL_UPDATED",
            "URL_DELETED",
          },
          enumDescriptions = {
            "Unspecified.",
            "The given URL (Web document) has been updated.",
            "The given URL (Web document) has been deleted.",
          },
          type = "string",
        },
        url = {
          description = "The object of this notification. The URL must be owned by the publisher of this notification and, in case of `URL_UPDATED` notifications, it _must_ be crawlable by Google.",
          type = "string",
        },
      },
      type = "object",
    },
    UrlNotificationMetadata = {
      description = "Summary of the most recent Indexing API notifications successfully received, for a given URL.",
      id = "UrlNotificationMetadata",
      properties = {
        latestRemove = {
          ["$ref"] = "UrlNotification",
          description = "Latest notification received with type `URL_REMOVED`.",
        },
        latestUpdate = {
          ["$ref"] = "UrlNotification",
          description = "Latest notification received with type `URL_UPDATED`.",
        },
        url = {
          description = "URL to which this metadata refers.",
          type = "string",
        },
      },
      type = "object",
    },
  },
  servicePath = "",
  title = "Indexing API",
  version = "v3",
  version_module = true,
}
