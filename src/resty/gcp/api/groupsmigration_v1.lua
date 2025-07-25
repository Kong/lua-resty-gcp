return {
  auth = {
    oauth2 = {
      scopes = {
        ["https://www.googleapis.com/auth/apps.groups.migration"] = {
          description = "Upload messages to any Google group in your domain",
        },
      },
    },
  },
  basePath = "",
  baseUrl = "https://groupsmigration.googleapis.com/",
  batchPath = "batch",
  canonicalName = "Groups Migration",
  description = "The Groups Migration API allows domain administrators to archive emails into Google groups.",
  discoveryVersion = "v1",
  documentationLink = "https://developers.google.com/google-apps/groups-migration/",
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "groupsmigration:v1",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://groupsmigration.mtls.googleapis.com/",
  name = "groupsmigration",
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
    archive = {
      methods = {
        insert = {
          description = "Inserts a new mail into the archive of the Google group.",
          flatPath = "groups/v1/groups/{groupId}/archive",
          httpMethod = "POST",
          id = "groupsmigration.archive.insert",
          mediaUpload = {
            accept = {
              "message/rfc822",
            },
            maxSize = "26214400",
            protocols = {
              simple = {
                multipart = true,
                path = "/upload/groups/v1/groups/{groupId}/archive",
              },
            },
          },
          parameterOrder = {
            "groupId",
          },
          parameters = {
            groupId = {
              description = "The group ID",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "groups/v1/groups/{groupId}/archive",
          response = {
            ["$ref"] = "Groups",
          },
          scopes = {
            "https://www.googleapis.com/auth/apps.groups.migration",
          },
          supportsMediaUpload = true,
        },
      },
    },
  },
  revision = "20230117",
  rootUrl = "https://groupsmigration.googleapis.com/",
  schemas = {
    Groups = {
      description = "JSON response template for groups migration API.",
      id = "Groups",
      properties = {
        kind = {
          description = "The kind of insert resource this is.",
          type = "string",
        },
        responseCode = {
          description = "The status of the insert request.",
          type = "string",
        },
      },
      type = "object",
    },
  },
  servicePath = "",
  title = "Groups Migration API",
  version = "v1",
}
