return {
  auth = {
    oauth2 = {
      scopes = {
        ["https://www.googleapis.com/auth/cloud-platform"] = {
          description = "See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account.",
        },
        ["https://www.googleapis.com/auth/cloud-platform.read-only"] = {
          description = "View your data across Google Cloud services and see the email address of your Google Account",
        },
        ["https://www.googleapis.com/auth/logging.admin"] = {
          description = "Administrate log data for your projects",
        },
        ["https://www.googleapis.com/auth/logging.read"] = {
          description = "View log data for your projects",
        },
        ["https://www.googleapis.com/auth/logging.write"] = {
          description = "Submit log data for your projects",
        },
      },
    },
  },
  basePath = "",
  baseUrl = "https://logging.googleapis.com/",
  batchPath = "batch",
  canonicalName = "Logging",
  description = "Writes log entries and manages your Cloud Logging configuration.",
  discoveryVersion = "v1",
  documentationLink = "https://cloud.google.com/logging/docs/",
  fullyEncodeReservedExpansion = true,
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "logging:v2",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://logging.mtls.googleapis.com/",
  name = "logging",
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
      methods = {
        getCmekSettings = {
          description = "Gets the Logging CMEK settings for the given resource.Note: CMEK for the Log Router can be configured for Google Cloud projects, folders, organizations and billing accounts. Once configured for an organization, it applies to all projects and folders in the Google Cloud organization.See Enabling CMEK for Log Router (https://cloud.google.com/logging/docs/routing/managed-encryption) for more information.",
          flatPath = "v2/billingAccounts/{billingAccountsId}/cmekSettings",
          httpMethod = "GET",
          id = "logging.billingAccounts.getCmekSettings",
          parameterOrder = {
            "name",
          },
          parameters = {
            name = {
              description = "Required. The resource for which to retrieve CMEK settings. \"projects/[PROJECT_ID]/cmekSettings\" \"organizations/[ORGANIZATION_ID]/cmekSettings\" \"billingAccounts/[BILLING_ACCOUNT_ID]/cmekSettings\" \"folders/[FOLDER_ID]/cmekSettings\" For example:\"organizations/12345/cmekSettings\"Note: CMEK for the Log Router can be configured for Google Cloud projects, folders, organizations and billing accounts. Once configured for an organization, it applies to all projects and folders in the Google Cloud organization.",
              location = "path",
              pattern = "^billingAccounts/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "v2/{+name}/cmekSettings",
          response = {
            ["$ref"] = "CmekSettings",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/cloud-platform.read-only",
            "https://www.googleapis.com/auth/logging.admin",
            "https://www.googleapis.com/auth/logging.read",
          },
        },
        getSettings = {
          description = "Gets the Log Router settings for the given resource.Note: Settings for the Log Router can be get for Google Cloud projects, folders, organizations and billing accounts. Currently it can only be configured for organizations. Once configured for an organization, it applies to all projects and folders in the Google Cloud organization.See Enabling CMEK for Log Router (https://cloud.google.com/logging/docs/routing/managed-encryption) for more information.",
          flatPath = "v2/billingAccounts/{billingAccountsId}/settings",
          httpMethod = "GET",
          id = "logging.billingAccounts.getSettings",
          parameterOrder = {
            "name",
          },
          parameters = {
            name = {
              description = "Required. The resource for which to retrieve settings. \"projects/[PROJECT_ID]/settings\" \"organizations/[ORGANIZATION_ID]/settings\" \"billingAccounts/[BILLING_ACCOUNT_ID]/settings\" \"folders/[FOLDER_ID]/settings\" For example:\"organizations/12345/settings\"Note: Settings for the Log Router can be get for Google Cloud projects, folders, organizations and billing accounts. Currently it can only be configured for organizations. Once configured for an organization, it applies to all projects and folders in the Google Cloud organization.",
              location = "path",
              pattern = "^billingAccounts/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "v2/{+name}/settings",
          response = {
            ["$ref"] = "Settings",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/cloud-platform.read-only",
            "https://www.googleapis.com/auth/logging.admin",
            "https://www.googleapis.com/auth/logging.read",
          },
        },
      },
      resources = {
        exclusions = {
          methods = {
            create = {
              description = "Creates a new exclusion in the _Default sink in a specified parent resource. Only log entries belonging to that resource can be excluded. You can have up to 10 exclusions in a resource.",
              flatPath = "v2/billingAccounts/{billingAccountsId}/exclusions",
              httpMethod = "POST",
              id = "logging.billingAccounts.exclusions.create",
              parameterOrder = {
                "parent",
              },
              parameters = {
                parent = {
                  description = "Required. The parent resource in which to create the exclusion: \"projects/[PROJECT_ID]\" \"organizations/[ORGANIZATION_ID]\" \"billingAccounts/[BILLING_ACCOUNT_ID]\" \"folders/[FOLDER_ID]\" For examples:\"projects/my-logging-project\" \"organizations/123456789\"",
                  location = "path",
                  pattern = "^billingAccounts/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v2/{+parent}/exclusions",
              request = {
                ["$ref"] = "LogExclusion",
              },
              response = {
                ["$ref"] = "LogExclusion",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/logging.admin",
              },
            },
            delete = {
              description = "Deletes an exclusion in the _Default sink.",
              flatPath = "v2/billingAccounts/{billingAccountsId}/exclusions/{exclusionsId}",
              httpMethod = "DELETE",
              id = "logging.billingAccounts.exclusions.delete",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. The resource name of an existing exclusion to delete: \"projects/[PROJECT_ID]/exclusions/[EXCLUSION_ID]\" \"organizations/[ORGANIZATION_ID]/exclusions/[EXCLUSION_ID]\" \"billingAccounts/[BILLING_ACCOUNT_ID]/exclusions/[EXCLUSION_ID]\" \"folders/[FOLDER_ID]/exclusions/[EXCLUSION_ID]\" For example:\"projects/my-project/exclusions/my-exclusion\"",
                  location = "path",
                  pattern = "^billingAccounts/[^/]+/exclusions/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v2/{+name}",
              response = {
                ["$ref"] = "Empty",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/logging.admin",
              },
            },
            get = {
              description = "Gets the description of an exclusion in the _Default sink.",
              flatPath = "v2/billingAccounts/{billingAccountsId}/exclusions/{exclusionsId}",
              httpMethod = "GET",
              id = "logging.billingAccounts.exclusions.get",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. The resource name of an existing exclusion: \"projects/[PROJECT_ID]/exclusions/[EXCLUSION_ID]\" \"organizations/[ORGANIZATION_ID]/exclusions/[EXCLUSION_ID]\" \"billingAccounts/[BILLING_ACCOUNT_ID]/exclusions/[EXCLUSION_ID]\" \"folders/[FOLDER_ID]/exclusions/[EXCLUSION_ID]\" For example:\"projects/my-project/exclusions/my-exclusion\"",
                  location = "path",
                  pattern = "^billingAccounts/[^/]+/exclusions/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v2/{+name}",
              response = {
                ["$ref"] = "LogExclusion",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/cloud-platform.read-only",
                "https://www.googleapis.com/auth/logging.admin",
                "https://www.googleapis.com/auth/logging.read",
              },
            },
            list = {
              description = "Lists all the exclusions on the _Default sink in a parent resource.",
              flatPath = "v2/billingAccounts/{billingAccountsId}/exclusions",
              httpMethod = "GET",
              id = "logging.billingAccounts.exclusions.list",
              parameterOrder = {
                "parent",
              },
              parameters = {
                pageSize = {
                  description = "Optional. The maximum number of results to return from this request. Non-positive values are ignored. The presence of nextPageToken in the response indicates that more results might be available.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "Optional. If present, then retrieve the next batch of results from the preceding call to this method. pageToken must be the value of nextPageToken from the previous response. The values of other method parameters should be identical to those in the previous call.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "Required. The parent resource whose exclusions are to be listed. \"projects/[PROJECT_ID]\" \"organizations/[ORGANIZATION_ID]\" \"billingAccounts/[BILLING_ACCOUNT_ID]\" \"folders/[FOLDER_ID]\" ",
                  location = "path",
                  pattern = "^billingAccounts/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v2/{+parent}/exclusions",
              response = {
                ["$ref"] = "ListExclusionsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/cloud-platform.read-only",
                "https://www.googleapis.com/auth/logging.admin",
                "https://www.googleapis.com/auth/logging.read",
              },
            },
            patch = {
              description = "Changes one or more properties of an existing exclusion in the _Default sink.",
              flatPath = "v2/billingAccounts/{billingAccountsId}/exclusions/{exclusionsId}",
              httpMethod = "PATCH",
              id = "logging.billingAccounts.exclusions.patch",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. The resource name of the exclusion to update: \"projects/[PROJECT_ID]/exclusions/[EXCLUSION_ID]\" \"organizations/[ORGANIZATION_ID]/exclusions/[EXCLUSION_ID]\" \"billingAccounts/[BILLING_ACCOUNT_ID]/exclusions/[EXCLUSION_ID]\" \"folders/[FOLDER_ID]/exclusions/[EXCLUSION_ID]\" For example:\"projects/my-project/exclusions/my-exclusion\"",
                  location = "path",
                  pattern = "^billingAccounts/[^/]+/exclusions/[^/]+$",
                  required = true,
                  type = "string",
                },
                updateMask = {
                  description = "Required. A non-empty list of fields to change in the existing exclusion. New values for the fields are taken from the corresponding fields in the LogExclusion included in this request. Fields not mentioned in update_mask are not changed and are ignored in the request.For example, to change the filter and description of an exclusion, specify an update_mask of \"filter,description\".",
                  format = "google-fieldmask",
                  location = "query",
                  type = "string",
                },
              },
              path = "v2/{+name}",
              request = {
                ["$ref"] = "LogExclusion",
              },
              response = {
                ["$ref"] = "LogExclusion",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/logging.admin",
              },
            },
          },
        },
        locations = {
          methods = {
            get = {
              description = "Gets information about a location.",
              flatPath = "v2/billingAccounts/{billingAccountsId}/locations/{locationsId}",
              httpMethod = "GET",
              id = "logging.billingAccounts.locations.get",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Resource name for the location.",
                  location = "path",
                  pattern = "^billingAccounts/[^/]+/locations/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v2/{+name}",
              response = {
                ["$ref"] = "Location",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/cloud-platform.read-only",
                "https://www.googleapis.com/auth/logging.admin",
                "https://www.googleapis.com/auth/logging.read",
              },
            },
            list = {
              description = "Lists information about the supported locations for this service.",
              flatPath = "v2/billingAccounts/{billingAccountsId}/locations",
              httpMethod = "GET",
              id = "logging.billingAccounts.locations.list",
              parameterOrder = {
                "name",
              },
              parameters = {
                filter = {
                  description = "A filter to narrow down results to a preferred subset. The filtering language accepts strings like \"displayName=tokyo\", and is documented in more detail in AIP-160 (https://google.aip.dev/160).",
                  location = "query",
                  type = "string",
                },
                name = {
                  description = "The resource that owns the locations collection, if applicable.",
                  location = "path",
                  pattern = "^billingAccounts/[^/]+$",
                  required = true,
                  type = "string",
                },
                pageSize = {
                  description = "The maximum number of results to return. If not set, the service selects a default.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "A page token received from the next_page_token field in the response. Send that page token to receive the subsequent page.",
                  location = "query",
                  type = "string",
                },
              },
              path = "v2/{+name}/locations",
              response = {
                ["$ref"] = "ListLocationsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/cloud-platform.read-only",
                "https://www.googleapis.com/auth/logging.admin",
                "https://www.googleapis.com/auth/logging.read",
              },
            },
          },
          resources = {
            buckets = {
              methods = {
                create = {
                  description = "Creates a log bucket that can be used to store log entries. After a bucket has been created, the bucket's location cannot be changed.",
                  flatPath = "v2/billingAccounts/{billingAccountsId}/locations/{locationsId}/buckets",
                  httpMethod = "POST",
                  id = "logging.billingAccounts.locations.buckets.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    bucketId = {
                      description = "Required. A client-assigned identifier such as \"my-bucket\". Identifiers are limited to 100 characters and can include only letters, digits, underscores, hyphens, and periods.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The resource in which to create the log bucket: \"projects/[PROJECT_ID]/locations/[LOCATION_ID]\" For example:\"projects/my-project/locations/global\"",
                      location = "path",
                      pattern = "^billingAccounts/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v2/{+parent}/buckets",
                  request = {
                    ["$ref"] = "LogBucket",
                  },
                  response = {
                    ["$ref"] = "LogBucket",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/logging.admin",
                  },
                },
                delete = {
                  description = "Deletes a log bucket.Changes the bucket's lifecycle_state to the DELETE_REQUESTED state. After 7 days, the bucket will be purged and all log entries in the bucket will be permanently deleted.",
                  flatPath = "v2/billingAccounts/{billingAccountsId}/locations/{locationsId}/buckets/{bucketsId}",
                  httpMethod = "DELETE",
                  id = "logging.billingAccounts.locations.buckets.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The full resource name of the bucket to delete. \"projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]\" \"organizations/[ORGANIZATION_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]\" \"billingAccounts/[BILLING_ACCOUNT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]\" \"folders/[FOLDER_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]\" For example:\"projects/my-project/locations/global/buckets/my-bucket\"",
                      location = "path",
                      pattern = "^billingAccounts/[^/]+/locations/[^/]+/buckets/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v2/{+name}",
                  response = {
                    ["$ref"] = "Empty",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/logging.admin",
                  },
                },
                get = {
                  description = "Gets a log bucket.",
                  flatPath = "v2/billingAccounts/{billingAccountsId}/locations/{locationsId}/buckets/{bucketsId}",
                  httpMethod = "GET",
                  id = "logging.billingAccounts.locations.buckets.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The resource name of the bucket: \"projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]\" \"organizations/[ORGANIZATION_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]\" \"billingAccounts/[BILLING_ACCOUNT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]\" \"folders/[FOLDER_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]\" For example:\"projects/my-project/locations/global/buckets/my-bucket\"",
                      location = "path",
                      pattern = "^billingAccounts/[^/]+/locations/[^/]+/buckets/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v2/{+name}",
                  response = {
                    ["$ref"] = "LogBucket",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/cloud-platform.read-only",
                    "https://www.googleapis.com/auth/logging.admin",
                    "https://www.googleapis.com/auth/logging.read",
                  },
                },
                list = {
                  description = "Lists log buckets.",
                  flatPath = "v2/billingAccounts/{billingAccountsId}/locations/{locationsId}/buckets",
                  httpMethod = "GET",
                  id = "logging.billingAccounts.locations.buckets.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    pageSize = {
                      description = "Optional. The maximum number of results to return from this request. Non-positive values are ignored. The presence of nextPageToken in the response indicates that more results might be available.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "Optional. If present, then retrieve the next batch of results from the preceding call to this method. pageToken must be the value of nextPageToken from the previous response. The values of other method parameters should be identical to those in the previous call.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The parent resource whose buckets are to be listed: \"projects/[PROJECT_ID]/locations/[LOCATION_ID]\" \"organizations/[ORGANIZATION_ID]/locations/[LOCATION_ID]\" \"billingAccounts/[BILLING_ACCOUNT_ID]/locations/[LOCATION_ID]\" \"folders/[FOLDER_ID]/locations/[LOCATION_ID]\" Note: The locations portion of the resource must be specified, but supplying the character - in place of LOCATION_ID will return all buckets.",
                      location = "path",
                      pattern = "^billingAccounts/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v2/{+parent}/buckets",
                  response = {
                    ["$ref"] = "ListBucketsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/cloud-platform.read-only",
                    "https://www.googleapis.com/auth/logging.admin",
                    "https://www.googleapis.com/auth/logging.read",
                  },
                },
                patch = {
                  description = "Updates a log bucket. This method replaces the following fields in the existing bucket with values from the new bucket: retention_periodIf the retention period is decreased and the bucket is locked, FAILED_PRECONDITION will be returned.If the bucket has a lifecycle_state of DELETE_REQUESTED, then FAILED_PRECONDITION will be returned.After a bucket has been created, the bucket's location cannot be changed.",
                  flatPath = "v2/billingAccounts/{billingAccountsId}/locations/{locationsId}/buckets/{bucketsId}",
                  httpMethod = "PATCH",
                  id = "logging.billingAccounts.locations.buckets.patch",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The full resource name of the bucket to update. \"projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]\" \"organizations/[ORGANIZATION_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]\" \"billingAccounts/[BILLING_ACCOUNT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]\" \"folders/[FOLDER_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]\" For example:\"projects/my-project/locations/global/buckets/my-bucket\"",
                      location = "path",
                      pattern = "^billingAccounts/[^/]+/locations/[^/]+/buckets/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    updateMask = {
                      description = "Required. Field mask that specifies the fields in bucket that need an update. A bucket field will be overwritten if, and only if, it is in the update mask. name and output only fields cannot be updated.For a detailed FieldMask definition, see: https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#google.protobuf.FieldMaskFor example: updateMask=retention_days",
                      format = "google-fieldmask",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v2/{+name}",
                  request = {
                    ["$ref"] = "LogBucket",
                  },
                  response = {
                    ["$ref"] = "LogBucket",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/logging.admin",
                  },
                },
                undelete = {
                  description = "Undeletes a log bucket. A bucket that has been deleted can be undeleted within the grace period of 7 days.",
                  flatPath = "v2/billingAccounts/{billingAccountsId}/locations/{locationsId}/buckets/{bucketsId}:undelete",
                  httpMethod = "POST",
                  id = "logging.billingAccounts.locations.buckets.undelete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The full resource name of the bucket to undelete. \"projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]\" \"organizations/[ORGANIZATION_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]\" \"billingAccounts/[BILLING_ACCOUNT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]\" \"folders/[FOLDER_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]\" For example:\"projects/my-project/locations/global/buckets/my-bucket\"",
                      location = "path",
                      pattern = "^billingAccounts/[^/]+/locations/[^/]+/buckets/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v2/{+name}:undelete",
                  request = {
                    ["$ref"] = "UndeleteBucketRequest",
                  },
                  response = {
                    ["$ref"] = "Empty",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/logging.admin",
                  },
                },
              },
              resources = {
                views = {
                  methods = {
                    create = {
                      description = "Creates a view over log entries in a log bucket. A bucket may contain a maximum of 30 views.",
                      flatPath = "v2/billingAccounts/{billingAccountsId}/locations/{locationsId}/buckets/{bucketsId}/views",
                      httpMethod = "POST",
                      id = "logging.billingAccounts.locations.buckets.views.create",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        parent = {
                          description = "Required. The bucket in which to create the view `\"projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]\"` For example:\"projects/my-project/locations/global/buckets/my-bucket\"",
                          location = "path",
                          pattern = "^billingAccounts/[^/]+/locations/[^/]+/buckets/[^/]+$",
                          required = true,
                          type = "string",
                        },
                        viewId = {
                          description = "Required. A client-assigned identifier such as \"my-view\". Identifiers are limited to 100 characters and can include only letters, digits, underscores, hyphens, and periods.",
                          location = "query",
                          type = "string",
                        },
                      },
                      path = "v2/{+parent}/views",
                      request = {
                        ["$ref"] = "LogView",
                      },
                      response = {
                        ["$ref"] = "LogView",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                        "https://www.googleapis.com/auth/logging.admin",
                      },
                    },
                    delete = {
                      description = "Deletes a view on a log bucket. If an UNAVAILABLE error is returned, this indicates that system is not in a state where it can delete the view. If this occurs, please try again in a few minutes.",
                      flatPath = "v2/billingAccounts/{billingAccountsId}/locations/{locationsId}/buckets/{bucketsId}/views/{viewsId}",
                      httpMethod = "DELETE",
                      id = "logging.billingAccounts.locations.buckets.views.delete",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The full resource name of the view to delete: \"projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]/views/[VIEW_ID]\" For example:\"projects/my-project/locations/global/buckets/my-bucket/views/my-view\"",
                          location = "path",
                          pattern = "^billingAccounts/[^/]+/locations/[^/]+/buckets/[^/]+/views/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v2/{+name}",
                      response = {
                        ["$ref"] = "Empty",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                        "https://www.googleapis.com/auth/logging.admin",
                      },
                    },
                    get = {
                      description = "Gets a view on a log bucket..",
                      flatPath = "v2/billingAccounts/{billingAccountsId}/locations/{locationsId}/buckets/{bucketsId}/views/{viewsId}",
                      httpMethod = "GET",
                      id = "logging.billingAccounts.locations.buckets.views.get",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The resource name of the policy: \"projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]/views/[VIEW_ID]\" For example:\"projects/my-project/locations/global/buckets/my-bucket/views/my-view\"",
                          location = "path",
                          pattern = "^billingAccounts/[^/]+/locations/[^/]+/buckets/[^/]+/views/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v2/{+name}",
                      response = {
                        ["$ref"] = "LogView",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                        "https://www.googleapis.com/auth/cloud-platform.read-only",
                        "https://www.googleapis.com/auth/logging.admin",
                        "https://www.googleapis.com/auth/logging.read",
                      },
                    },
                    list = {
                      description = "Lists views on a log bucket.",
                      flatPath = "v2/billingAccounts/{billingAccountsId}/locations/{locationsId}/buckets/{bucketsId}/views",
                      httpMethod = "GET",
                      id = "logging.billingAccounts.locations.buckets.views.list",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        pageSize = {
                          description = "Optional. The maximum number of results to return from this request.Non-positive values are ignored. The presence of nextPageToken in the response indicates that more results might be available.",
                          format = "int32",
                          location = "query",
                          type = "integer",
                        },
                        pageToken = {
                          description = "Optional. If present, then retrieve the next batch of results from the preceding call to this method. pageToken must be the value of nextPageToken from the previous response. The values of other method parameters should be identical to those in the previous call.",
                          location = "query",
                          type = "string",
                        },
                        parent = {
                          description = "Required. The bucket whose views are to be listed: \"projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]\" ",
                          location = "path",
                          pattern = "^billingAccounts/[^/]+/locations/[^/]+/buckets/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v2/{+parent}/views",
                      response = {
                        ["$ref"] = "ListViewsResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                        "https://www.googleapis.com/auth/cloud-platform.read-only",
                        "https://www.googleapis.com/auth/logging.admin",
                        "https://www.googleapis.com/auth/logging.read",
                      },
                    },
                    patch = {
                      description = "Updates a view on a log bucket. This method replaces the following fields in the existing view with values from the new view: filter. If an UNAVAILABLE error is returned, this indicates that system is not in a state where it can update the view. If this occurs, please try again in a few minutes.",
                      flatPath = "v2/billingAccounts/{billingAccountsId}/locations/{locationsId}/buckets/{bucketsId}/views/{viewsId}",
                      httpMethod = "PATCH",
                      id = "logging.billingAccounts.locations.buckets.views.patch",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The full resource name of the view to update \"projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]/views/[VIEW_ID]\" For example:\"projects/my-project/locations/global/buckets/my-bucket/views/my-view\"",
                          location = "path",
                          pattern = "^billingAccounts/[^/]+/locations/[^/]+/buckets/[^/]+/views/[^/]+$",
                          required = true,
                          type = "string",
                        },
                        updateMask = {
                          description = "Optional. Field mask that specifies the fields in view that need an update. A field will be overwritten if, and only if, it is in the update mask. name and output only fields cannot be updated.For a detailed FieldMask definition, see https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#google.protobuf.FieldMaskFor example: updateMask=filter",
                          format = "google-fieldmask",
                          location = "query",
                          type = "string",
                        },
                      },
                      path = "v2/{+name}",
                      request = {
                        ["$ref"] = "LogView",
                      },
                      response = {
                        ["$ref"] = "LogView",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                        "https://www.googleapis.com/auth/logging.admin",
                      },
                    },
                  },
                  resources = {
                    logs = {
                      methods = {
                        list = {
                          description = "Lists the logs in projects, organizations, folders, or billing accounts. Only logs that have entries are listed.",
                          flatPath = "v2/billingAccounts/{billingAccountsId}/locations/{locationsId}/buckets/{bucketsId}/views/{viewsId}/logs",
                          httpMethod = "GET",
                          id = "logging.billingAccounts.locations.buckets.views.logs.list",
                          parameterOrder = {
                            "parent",
                          },
                          parameters = {
                            pageSize = {
                              description = "Optional. The maximum number of results to return from this request. Non-positive values are ignored. The presence of nextPageToken in the response indicates that more results might be available.",
                              format = "int32",
                              location = "query",
                              type = "integer",
                            },
                            pageToken = {
                              description = "Optional. If present, then retrieve the next batch of results from the preceding call to this method. pageToken must be the value of nextPageToken from the previous response. The values of other method parameters should be identical to those in the previous call.",
                              location = "query",
                              type = "string",
                            },
                            parent = {
                              description = "Required. The resource name that owns the logs: projects/[PROJECT_ID] organizations/[ORGANIZATION_ID] billingAccounts/[BILLING_ACCOUNT_ID] folders/[FOLDER_ID]",
                              location = "path",
                              pattern = "^billingAccounts/[^/]+/locations/[^/]+/buckets/[^/]+/views/[^/]+$",
                              required = true,
                              type = "string",
                            },
                            resourceNames = {
                              description = "Optional. The resource name that owns the logs: projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]/views/[VIEW_ID] organizations/[ORGANIZATION_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]/views/[VIEW_ID] billingAccounts/[BILLING_ACCOUNT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]/views/[VIEW_ID] folders/[FOLDER_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]/views/[VIEW_ID]To support legacy queries, it could also be: projects/[PROJECT_ID] organizations/[ORGANIZATION_ID] billingAccounts/[BILLING_ACCOUNT_ID] folders/[FOLDER_ID]",
                              location = "query",
                              repeated = true,
                              type = "string",
                            },
                          },
                          path = "v2/{+parent}/logs",
                          response = {
                            ["$ref"] = "ListLogsResponse",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                            "https://www.googleapis.com/auth/cloud-platform.read-only",
                            "https://www.googleapis.com/auth/logging.admin",
                            "https://www.googleapis.com/auth/logging.read",
                          },
                        },
                      },
                    },
                  },
                },
              },
            },
            operations = {
              methods = {
                cancel = {
                  description = "Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn't support this method, it returns google.rpc.Code.UNIMPLEMENTED. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of 1, corresponding to Code.CANCELLED.",
                  flatPath = "v2/billingAccounts/{billingAccountsId}/locations/{locationsId}/operations/{operationsId}:cancel",
                  httpMethod = "POST",
                  id = "logging.billingAccounts.locations.operations.cancel",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "The name of the operation resource to be cancelled.",
                      location = "path",
                      pattern = "^billingAccounts/[^/]+/locations/[^/]+/operations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v2/{+name}:cancel",
                  request = {
                    ["$ref"] = "CancelOperationRequest",
                  },
                  response = {
                    ["$ref"] = "Empty",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/logging.admin",
                  },
                },
                get = {
                  description = "Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.",
                  flatPath = "v2/billingAccounts/{billingAccountsId}/locations/{locationsId}/operations/{operationsId}",
                  httpMethod = "GET",
                  id = "logging.billingAccounts.locations.operations.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "The name of the operation resource.",
                      location = "path",
                      pattern = "^billingAccounts/[^/]+/locations/[^/]+/operations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v2/{+name}",
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/cloud-platform.read-only",
                    "https://www.googleapis.com/auth/logging.admin",
                    "https://www.googleapis.com/auth/logging.read",
                  },
                },
                list = {
                  description = "Lists operations that match the specified filter in the request. If the server doesn't support this method, it returns UNIMPLEMENTED.NOTE: the name binding allows API services to override the binding to use different resource name schemes, such as users/*/operations. To override the binding, API services can add a binding such as \"/v1/{name=users/*}/operations\" to their service configuration. For backwards compatibility, the default name includes the operations collection id, however overriding users must ensure the name binding is the parent resource, without the operations collection id.",
                  flatPath = "v2/billingAccounts/{billingAccountsId}/locations/{locationsId}/operations",
                  httpMethod = "GET",
                  id = "logging.billingAccounts.locations.operations.list",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    filter = {
                      description = "The standard list filter.",
                      location = "query",
                      type = "string",
                    },
                    name = {
                      description = "The name of the operation's parent resource.",
                      location = "path",
                      pattern = "^billingAccounts/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    pageSize = {
                      description = "The standard list page size.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "The standard list page token.",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v2/{+name}/operations",
                  response = {
                    ["$ref"] = "ListOperationsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/cloud-platform.read-only",
                    "https://www.googleapis.com/auth/logging.admin",
                    "https://www.googleapis.com/auth/logging.read",
                  },
                },
              },
            },
          },
        },
        logs = {
          methods = {
            delete = {
              description = "Deletes all the log entries in a log for the _Default Log Bucket. The log reappears if it receives new entries. Log entries written shortly before the delete operation might not be deleted. Entries received after the delete operation with a timestamp before the operation will be deleted.",
              flatPath = "v2/billingAccounts/{billingAccountsId}/logs/{logsId}",
              httpMethod = "DELETE",
              id = "logging.billingAccounts.logs.delete",
              parameterOrder = {
                "logName",
              },
              parameters = {
                logName = {
                  description = "Required. The resource name of the log to delete: projects/[PROJECT_ID]/logs/[LOG_ID] organizations/[ORGANIZATION_ID]/logs/[LOG_ID] billingAccounts/[BILLING_ACCOUNT_ID]/logs/[LOG_ID] folders/[FOLDER_ID]/logs/[LOG_ID][LOG_ID] must be URL-encoded. For example, \"projects/my-project-id/logs/syslog\", \"organizations/123/logs/cloudaudit.googleapis.com%2Factivity\".For more information about log names, see LogEntry.",
                  location = "path",
                  pattern = "^billingAccounts/[^/]+/logs/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v2/{+logName}",
              response = {
                ["$ref"] = "Empty",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/logging.admin",
              },
            },
            list = {
              description = "Lists the logs in projects, organizations, folders, or billing accounts. Only logs that have entries are listed.",
              flatPath = "v2/billingAccounts/{billingAccountsId}/logs",
              httpMethod = "GET",
              id = "logging.billingAccounts.logs.list",
              parameterOrder = {
                "parent",
              },
              parameters = {
                pageSize = {
                  description = "Optional. The maximum number of results to return from this request. Non-positive values are ignored. The presence of nextPageToken in the response indicates that more results might be available.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "Optional. If present, then retrieve the next batch of results from the preceding call to this method. pageToken must be the value of nextPageToken from the previous response. The values of other method parameters should be identical to those in the previous call.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "Required. The resource name that owns the logs: projects/[PROJECT_ID] organizations/[ORGANIZATION_ID] billingAccounts/[BILLING_ACCOUNT_ID] folders/[FOLDER_ID]",
                  location = "path",
                  pattern = "^billingAccounts/[^/]+$",
                  required = true,
                  type = "string",
                },
                resourceNames = {
                  description = "Optional. The resource name that owns the logs: projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]/views/[VIEW_ID] organizations/[ORGANIZATION_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]/views/[VIEW_ID] billingAccounts/[BILLING_ACCOUNT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]/views/[VIEW_ID] folders/[FOLDER_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]/views/[VIEW_ID]To support legacy queries, it could also be: projects/[PROJECT_ID] organizations/[ORGANIZATION_ID] billingAccounts/[BILLING_ACCOUNT_ID] folders/[FOLDER_ID]",
                  location = "query",
                  repeated = true,
                  type = "string",
                },
              },
              path = "v2/{+parent}/logs",
              response = {
                ["$ref"] = "ListLogsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/cloud-platform.read-only",
                "https://www.googleapis.com/auth/logging.admin",
                "https://www.googleapis.com/auth/logging.read",
              },
            },
          },
        },
        sinks = {
          methods = {
            create = {
              description = "Creates a sink that exports specified log entries to a destination. The export of newly-ingested log entries begins immediately, unless the sink's writer_identity is not permitted to write to the destination. A sink can export log entries only from the resource owning the sink.",
              flatPath = "v2/billingAccounts/{billingAccountsId}/sinks",
              httpMethod = "POST",
              id = "logging.billingAccounts.sinks.create",
              parameterOrder = {
                "parent",
              },
              parameters = {
                parent = {
                  description = "Required. The resource in which to create the sink: \"projects/[PROJECT_ID]\" \"organizations/[ORGANIZATION_ID]\" \"billingAccounts/[BILLING_ACCOUNT_ID]\" \"folders/[FOLDER_ID]\" For examples:\"projects/my-project\" \"organizations/123456789\"",
                  location = "path",
                  pattern = "^billingAccounts/[^/]+$",
                  required = true,
                  type = "string",
                },
                uniqueWriterIdentity = {
                  description = "Optional. Determines the kind of IAM identity returned as writer_identity in the new sink. If this value is omitted or set to false, and if the sink's parent is a project, then the value returned as writer_identity is the same group or service account used by Cloud Logging before the addition of writer identities to this API. The sink's destination must be in the same project as the sink itself.If this field is set to true, or if the sink is owned by a non-project resource such as an organization, then the value of writer_identity will be a unique service account used only for exports from the new sink. For more information, see writer_identity in LogSink.",
                  location = "query",
                  type = "boolean",
                },
              },
              path = "v2/{+parent}/sinks",
              request = {
                ["$ref"] = "LogSink",
              },
              response = {
                ["$ref"] = "LogSink",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/logging.admin",
              },
            },
            delete = {
              description = "Deletes a sink. If the sink has a unique writer_identity, then that service account is also deleted.",
              flatPath = "v2/billingAccounts/{billingAccountsId}/sinks/{sinksId}",
              httpMethod = "DELETE",
              id = "logging.billingAccounts.sinks.delete",
              parameterOrder = {
                "sinkName",
              },
              parameters = {
                sinkName = {
                  description = "Required. The full resource name of the sink to delete, including the parent resource and the sink identifier: \"projects/[PROJECT_ID]/sinks/[SINK_ID]\" \"organizations/[ORGANIZATION_ID]/sinks/[SINK_ID]\" \"billingAccounts/[BILLING_ACCOUNT_ID]/sinks/[SINK_ID]\" \"folders/[FOLDER_ID]/sinks/[SINK_ID]\" For example:\"projects/my-project/sinks/my-sink\"",
                  location = "path",
                  pattern = "^billingAccounts/[^/]+/sinks/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v2/{+sinkName}",
              response = {
                ["$ref"] = "Empty",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/logging.admin",
              },
            },
            get = {
              description = "Gets a sink.",
              flatPath = "v2/billingAccounts/{billingAccountsId}/sinks/{sinksId}",
              httpMethod = "GET",
              id = "logging.billingAccounts.sinks.get",
              parameterOrder = {
                "sinkName",
              },
              parameters = {
                sinkName = {
                  description = "Required. The resource name of the sink: \"projects/[PROJECT_ID]/sinks/[SINK_ID]\" \"organizations/[ORGANIZATION_ID]/sinks/[SINK_ID]\" \"billingAccounts/[BILLING_ACCOUNT_ID]/sinks/[SINK_ID]\" \"folders/[FOLDER_ID]/sinks/[SINK_ID]\" For example:\"projects/my-project/sinks/my-sink\"",
                  location = "path",
                  pattern = "^billingAccounts/[^/]+/sinks/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v2/{+sinkName}",
              response = {
                ["$ref"] = "LogSink",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/cloud-platform.read-only",
                "https://www.googleapis.com/auth/logging.admin",
                "https://www.googleapis.com/auth/logging.read",
              },
            },
            list = {
              description = "Lists sinks.",
              flatPath = "v2/billingAccounts/{billingAccountsId}/sinks",
              httpMethod = "GET",
              id = "logging.billingAccounts.sinks.list",
              parameterOrder = {
                "parent",
              },
              parameters = {
                pageSize = {
                  description = "Optional. The maximum number of results to return from this request. Non-positive values are ignored. The presence of nextPageToken in the response indicates that more results might be available.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "Optional. If present, then retrieve the next batch of results from the preceding call to this method. pageToken must be the value of nextPageToken from the previous response. The values of other method parameters should be identical to those in the previous call.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "Required. The parent resource whose sinks are to be listed: \"projects/[PROJECT_ID]\" \"organizations/[ORGANIZATION_ID]\" \"billingAccounts/[BILLING_ACCOUNT_ID]\" \"folders/[FOLDER_ID]\" ",
                  location = "path",
                  pattern = "^billingAccounts/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v2/{+parent}/sinks",
              response = {
                ["$ref"] = "ListSinksResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/cloud-platform.read-only",
                "https://www.googleapis.com/auth/logging.admin",
                "https://www.googleapis.com/auth/logging.read",
              },
            },
            patch = {
              description = "Updates a sink. This method replaces the following fields in the existing sink with values from the new sink: destination, and filter.The updated sink might also have a new writer_identity; see the unique_writer_identity field.",
              flatPath = "v2/billingAccounts/{billingAccountsId}/sinks/{sinksId}",
              httpMethod = "PATCH",
              id = "logging.billingAccounts.sinks.patch",
              parameterOrder = {
                "sinkName",
              },
              parameters = {
                sinkName = {
                  description = "Required. The full resource name of the sink to update, including the parent resource and the sink identifier: \"projects/[PROJECT_ID]/sinks/[SINK_ID]\" \"organizations/[ORGANIZATION_ID]/sinks/[SINK_ID]\" \"billingAccounts/[BILLING_ACCOUNT_ID]/sinks/[SINK_ID]\" \"folders/[FOLDER_ID]/sinks/[SINK_ID]\" For example:\"projects/my-project/sinks/my-sink\"",
                  location = "path",
                  pattern = "^billingAccounts/[^/]+/sinks/[^/]+$",
                  required = true,
                  type = "string",
                },
                uniqueWriterIdentity = {
                  description = "Optional. See sinks.create for a description of this field. When updating a sink, the effect of this field on the value of writer_identity in the updated sink depends on both the old and new values of this field: If the old and new values of this field are both false or both true, then there is no change to the sink's writer_identity. If the old value is false and the new value is true, then writer_identity is changed to a unique service account. It is an error if the old value is true and the new value is set to false or defaulted to false.",
                  location = "query",
                  type = "boolean",
                },
                updateMask = {
                  description = "Optional. Field mask that specifies the fields in sink that need an update. A sink field will be overwritten if, and only if, it is in the update mask. name and output only fields cannot be updated.An empty updateMask is temporarily treated as using the following mask for backwards compatibility purposes:destination,filter,includeChildrenAt some point in the future, behavior will be removed and specifying an empty updateMask will be an error.For a detailed FieldMask definition, see https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#google.protobuf.FieldMaskFor example: updateMask=filter",
                  format = "google-fieldmask",
                  location = "query",
                  type = "string",
                },
              },
              path = "v2/{+sinkName}",
              request = {
                ["$ref"] = "LogSink",
              },
              response = {
                ["$ref"] = "LogSink",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/logging.admin",
              },
            },
            update = {
              description = "Updates a sink. This method replaces the following fields in the existing sink with values from the new sink: destination, and filter.The updated sink might also have a new writer_identity; see the unique_writer_identity field.",
              flatPath = "v2/billingAccounts/{billingAccountsId}/sinks/{sinksId}",
              httpMethod = "PUT",
              id = "logging.billingAccounts.sinks.update",
              parameterOrder = {
                "sinkName",
              },
              parameters = {
                sinkName = {
                  description = "Required. The full resource name of the sink to update, including the parent resource and the sink identifier: \"projects/[PROJECT_ID]/sinks/[SINK_ID]\" \"organizations/[ORGANIZATION_ID]/sinks/[SINK_ID]\" \"billingAccounts/[BILLING_ACCOUNT_ID]/sinks/[SINK_ID]\" \"folders/[FOLDER_ID]/sinks/[SINK_ID]\" For example:\"projects/my-project/sinks/my-sink\"",
                  location = "path",
                  pattern = "^billingAccounts/[^/]+/sinks/[^/]+$",
                  required = true,
                  type = "string",
                },
                uniqueWriterIdentity = {
                  description = "Optional. See sinks.create for a description of this field. When updating a sink, the effect of this field on the value of writer_identity in the updated sink depends on both the old and new values of this field: If the old and new values of this field are both false or both true, then there is no change to the sink's writer_identity. If the old value is false and the new value is true, then writer_identity is changed to a unique service account. It is an error if the old value is true and the new value is set to false or defaulted to false.",
                  location = "query",
                  type = "boolean",
                },
                updateMask = {
                  description = "Optional. Field mask that specifies the fields in sink that need an update. A sink field will be overwritten if, and only if, it is in the update mask. name and output only fields cannot be updated.An empty updateMask is temporarily treated as using the following mask for backwards compatibility purposes:destination,filter,includeChildrenAt some point in the future, behavior will be removed and specifying an empty updateMask will be an error.For a detailed FieldMask definition, see https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#google.protobuf.FieldMaskFor example: updateMask=filter",
                  format = "google-fieldmask",
                  location = "query",
                  type = "string",
                },
              },
              path = "v2/{+sinkName}",
              request = {
                ["$ref"] = "LogSink",
              },
              response = {
                ["$ref"] = "LogSink",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/logging.admin",
              },
            },
          },
        },
      },
    },
    entries = {
      methods = {
        copy = {
          description = "Copies a set of log entries from a log bucket to a Cloud Storage bucket.",
          flatPath = "v2/entries:copy",
          httpMethod = "POST",
          id = "logging.entries.copy",
          parameterOrder = {},
          parameters = {},
          path = "v2/entries:copy",
          request = {
            ["$ref"] = "CopyLogEntriesRequest",
          },
          response = {
            ["$ref"] = "Operation",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/logging.admin",
          },
        },
        list = {
          description = "Lists log entries. Use this method to retrieve log entries that originated from a project/folder/organization/billing account. For ways to export log entries, see Exporting Logs (https://cloud.google.com/logging/docs/export).",
          flatPath = "v2/entries:list",
          httpMethod = "POST",
          id = "logging.entries.list",
          parameterOrder = {},
          parameters = {},
          path = "v2/entries:list",
          request = {
            ["$ref"] = "ListLogEntriesRequest",
          },
          response = {
            ["$ref"] = "ListLogEntriesResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/cloud-platform.read-only",
            "https://www.googleapis.com/auth/logging.admin",
            "https://www.googleapis.com/auth/logging.read",
          },
        },
        tail = {
          description = "Streaming read of log entries as they are ingested. Until the stream is terminated, it will continue reading logs.",
          flatPath = "v2/entries:tail",
          httpMethod = "POST",
          id = "logging.entries.tail",
          parameterOrder = {},
          parameters = {},
          path = "v2/entries:tail",
          request = {
            ["$ref"] = "TailLogEntriesRequest",
          },
          response = {
            ["$ref"] = "TailLogEntriesResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/cloud-platform.read-only",
            "https://www.googleapis.com/auth/logging.admin",
            "https://www.googleapis.com/auth/logging.read",
          },
        },
        write = {
          description = "Writes log entries to Logging. This API method is the only way to send log entries to Logging. This method is used, directly or indirectly, by the Logging agent (fluentd) and all logging libraries configured to use Logging. A single request may contain log entries for a maximum of 1000 different resources (projects, organizations, billing accounts or folders)",
          flatPath = "v2/entries:write",
          httpMethod = "POST",
          id = "logging.entries.write",
          parameterOrder = {},
          parameters = {},
          path = "v2/entries:write",
          request = {
            ["$ref"] = "WriteLogEntriesRequest",
          },
          response = {
            ["$ref"] = "WriteLogEntriesResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/logging.admin",
            "https://www.googleapis.com/auth/logging.write",
          },
        },
      },
    },
    exclusions = {
      methods = {
        create = {
          description = "Creates a new exclusion in the _Default sink in a specified parent resource. Only log entries belonging to that resource can be excluded. You can have up to 10 exclusions in a resource.",
          flatPath = "v2/{v2Id}/{v2Id1}/exclusions",
          httpMethod = "POST",
          id = "logging.exclusions.create",
          parameterOrder = {
            "parent",
          },
          parameters = {
            parent = {
              description = "Required. The parent resource in which to create the exclusion: \"projects/[PROJECT_ID]\" \"organizations/[ORGANIZATION_ID]\" \"billingAccounts/[BILLING_ACCOUNT_ID]\" \"folders/[FOLDER_ID]\" For examples:\"projects/my-logging-project\" \"organizations/123456789\"",
              location = "path",
              pattern = "^[^/]+/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "v2/{+parent}/exclusions",
          request = {
            ["$ref"] = "LogExclusion",
          },
          response = {
            ["$ref"] = "LogExclusion",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/logging.admin",
          },
        },
        delete = {
          description = "Deletes an exclusion in the _Default sink.",
          flatPath = "v2/{v2Id}/{v2Id1}/exclusions/{exclusionsId}",
          httpMethod = "DELETE",
          id = "logging.exclusions.delete",
          parameterOrder = {
            "name",
          },
          parameters = {
            name = {
              description = "Required. The resource name of an existing exclusion to delete: \"projects/[PROJECT_ID]/exclusions/[EXCLUSION_ID]\" \"organizations/[ORGANIZATION_ID]/exclusions/[EXCLUSION_ID]\" \"billingAccounts/[BILLING_ACCOUNT_ID]/exclusions/[EXCLUSION_ID]\" \"folders/[FOLDER_ID]/exclusions/[EXCLUSION_ID]\" For example:\"projects/my-project/exclusions/my-exclusion\"",
              location = "path",
              pattern = "^[^/]+/[^/]+/exclusions/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "v2/{+name}",
          response = {
            ["$ref"] = "Empty",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/logging.admin",
          },
        },
        get = {
          description = "Gets the description of an exclusion in the _Default sink.",
          flatPath = "v2/{v2Id}/{v2Id1}/exclusions/{exclusionsId}",
          httpMethod = "GET",
          id = "logging.exclusions.get",
          parameterOrder = {
            "name",
          },
          parameters = {
            name = {
              description = "Required. The resource name of an existing exclusion: \"projects/[PROJECT_ID]/exclusions/[EXCLUSION_ID]\" \"organizations/[ORGANIZATION_ID]/exclusions/[EXCLUSION_ID]\" \"billingAccounts/[BILLING_ACCOUNT_ID]/exclusions/[EXCLUSION_ID]\" \"folders/[FOLDER_ID]/exclusions/[EXCLUSION_ID]\" For example:\"projects/my-project/exclusions/my-exclusion\"",
              location = "path",
              pattern = "^[^/]+/[^/]+/exclusions/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "v2/{+name}",
          response = {
            ["$ref"] = "LogExclusion",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/cloud-platform.read-only",
            "https://www.googleapis.com/auth/logging.admin",
            "https://www.googleapis.com/auth/logging.read",
          },
        },
        list = {
          description = "Lists all the exclusions on the _Default sink in a parent resource.",
          flatPath = "v2/{v2Id}/{v2Id1}/exclusions",
          httpMethod = "GET",
          id = "logging.exclusions.list",
          parameterOrder = {
            "parent",
          },
          parameters = {
            pageSize = {
              description = "Optional. The maximum number of results to return from this request. Non-positive values are ignored. The presence of nextPageToken in the response indicates that more results might be available.",
              format = "int32",
              location = "query",
              type = "integer",
            },
            pageToken = {
              description = "Optional. If present, then retrieve the next batch of results from the preceding call to this method. pageToken must be the value of nextPageToken from the previous response. The values of other method parameters should be identical to those in the previous call.",
              location = "query",
              type = "string",
            },
            parent = {
              description = "Required. The parent resource whose exclusions are to be listed. \"projects/[PROJECT_ID]\" \"organizations/[ORGANIZATION_ID]\" \"billingAccounts/[BILLING_ACCOUNT_ID]\" \"folders/[FOLDER_ID]\" ",
              location = "path",
              pattern = "^[^/]+/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "v2/{+parent}/exclusions",
          response = {
            ["$ref"] = "ListExclusionsResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/cloud-platform.read-only",
            "https://www.googleapis.com/auth/logging.admin",
            "https://www.googleapis.com/auth/logging.read",
          },
        },
        patch = {
          description = "Changes one or more properties of an existing exclusion in the _Default sink.",
          flatPath = "v2/{v2Id}/{v2Id1}/exclusions/{exclusionsId}",
          httpMethod = "PATCH",
          id = "logging.exclusions.patch",
          parameterOrder = {
            "name",
          },
          parameters = {
            name = {
              description = "Required. The resource name of the exclusion to update: \"projects/[PROJECT_ID]/exclusions/[EXCLUSION_ID]\" \"organizations/[ORGANIZATION_ID]/exclusions/[EXCLUSION_ID]\" \"billingAccounts/[BILLING_ACCOUNT_ID]/exclusions/[EXCLUSION_ID]\" \"folders/[FOLDER_ID]/exclusions/[EXCLUSION_ID]\" For example:\"projects/my-project/exclusions/my-exclusion\"",
              location = "path",
              pattern = "^[^/]+/[^/]+/exclusions/[^/]+$",
              required = true,
              type = "string",
            },
            updateMask = {
              description = "Required. A non-empty list of fields to change in the existing exclusion. New values for the fields are taken from the corresponding fields in the LogExclusion included in this request. Fields not mentioned in update_mask are not changed and are ignored in the request.For example, to change the filter and description of an exclusion, specify an update_mask of \"filter,description\".",
              format = "google-fieldmask",
              location = "query",
              type = "string",
            },
          },
          path = "v2/{+name}",
          request = {
            ["$ref"] = "LogExclusion",
          },
          response = {
            ["$ref"] = "LogExclusion",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/logging.admin",
          },
        },
      },
    },
    folders = {
      methods = {
        getCmekSettings = {
          description = "Gets the Logging CMEK settings for the given resource.Note: CMEK for the Log Router can be configured for Google Cloud projects, folders, organizations and billing accounts. Once configured for an organization, it applies to all projects and folders in the Google Cloud organization.See Enabling CMEK for Log Router (https://cloud.google.com/logging/docs/routing/managed-encryption) for more information.",
          flatPath = "v2/folders/{foldersId}/cmekSettings",
          httpMethod = "GET",
          id = "logging.folders.getCmekSettings",
          parameterOrder = {
            "name",
          },
          parameters = {
            name = {
              description = "Required. The resource for which to retrieve CMEK settings. \"projects/[PROJECT_ID]/cmekSettings\" \"organizations/[ORGANIZATION_ID]/cmekSettings\" \"billingAccounts/[BILLING_ACCOUNT_ID]/cmekSettings\" \"folders/[FOLDER_ID]/cmekSettings\" For example:\"organizations/12345/cmekSettings\"Note: CMEK for the Log Router can be configured for Google Cloud projects, folders, organizations and billing accounts. Once configured for an organization, it applies to all projects and folders in the Google Cloud organization.",
              location = "path",
              pattern = "^folders/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "v2/{+name}/cmekSettings",
          response = {
            ["$ref"] = "CmekSettings",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/cloud-platform.read-only",
            "https://www.googleapis.com/auth/logging.admin",
            "https://www.googleapis.com/auth/logging.read",
          },
        },
        getSettings = {
          description = "Gets the Log Router settings for the given resource.Note: Settings for the Log Router can be get for Google Cloud projects, folders, organizations and billing accounts. Currently it can only be configured for organizations. Once configured for an organization, it applies to all projects and folders in the Google Cloud organization.See Enabling CMEK for Log Router (https://cloud.google.com/logging/docs/routing/managed-encryption) for more information.",
          flatPath = "v2/folders/{foldersId}/settings",
          httpMethod = "GET",
          id = "logging.folders.getSettings",
          parameterOrder = {
            "name",
          },
          parameters = {
            name = {
              description = "Required. The resource for which to retrieve settings. \"projects/[PROJECT_ID]/settings\" \"organizations/[ORGANIZATION_ID]/settings\" \"billingAccounts/[BILLING_ACCOUNT_ID]/settings\" \"folders/[FOLDER_ID]/settings\" For example:\"organizations/12345/settings\"Note: Settings for the Log Router can be get for Google Cloud projects, folders, organizations and billing accounts. Currently it can only be configured for organizations. Once configured for an organization, it applies to all projects and folders in the Google Cloud organization.",
              location = "path",
              pattern = "^folders/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "v2/{+name}/settings",
          response = {
            ["$ref"] = "Settings",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/cloud-platform.read-only",
            "https://www.googleapis.com/auth/logging.admin",
            "https://www.googleapis.com/auth/logging.read",
          },
        },
        updateSettings = {
          description = "Updates the Log Router settings for the given resource.Note: Settings for the Log Router can currently only be configured for Google Cloud organizations. Once configured, it applies to all projects and folders in the Google Cloud organization.UpdateSettings will fail if 1) kms_key_name is invalid, or 2) the associated service account does not have the required roles/cloudkms.cryptoKeyEncrypterDecrypter role assigned for the key, or 3) access to the key is disabled. 4) location_id is not supported by Logging. 5) location_id violate OrgPolicy.See Enabling CMEK for Log Router (https://cloud.google.com/logging/docs/routing/managed-encryption) for more information.",
          flatPath = "v2/folders/{foldersId}/settings",
          httpMethod = "PATCH",
          id = "logging.folders.updateSettings",
          parameterOrder = {
            "name",
          },
          parameters = {
            name = {
              description = "Required. The resource name for the settings to update. \"organizations/[ORGANIZATION_ID]/settings\" For example:\"organizations/12345/settings\"Note: Settings for the Log Router can currently only be configured for Google Cloud organizations. Once configured, it applies to all projects and folders in the Google Cloud organization.",
              location = "path",
              pattern = "^folders/[^/]+$",
              required = true,
              type = "string",
            },
            updateMask = {
              description = "Optional. Field mask identifying which fields from settings should be updated. A field will be overwritten if and only if it is in the update mask. Output only fields cannot be updated.See FieldMask for more information.For example: \"updateMask=kmsKeyName\"",
              format = "google-fieldmask",
              location = "query",
              type = "string",
            },
          },
          path = "v2/{+name}/settings",
          request = {
            ["$ref"] = "Settings",
          },
          response = {
            ["$ref"] = "Settings",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/logging.admin",
          },
        },
      },
      resources = {
        exclusions = {
          methods = {
            create = {
              description = "Creates a new exclusion in the _Default sink in a specified parent resource. Only log entries belonging to that resource can be excluded. You can have up to 10 exclusions in a resource.",
              flatPath = "v2/folders/{foldersId}/exclusions",
              httpMethod = "POST",
              id = "logging.folders.exclusions.create",
              parameterOrder = {
                "parent",
              },
              parameters = {
                parent = {
                  description = "Required. The parent resource in which to create the exclusion: \"projects/[PROJECT_ID]\" \"organizations/[ORGANIZATION_ID]\" \"billingAccounts/[BILLING_ACCOUNT_ID]\" \"folders/[FOLDER_ID]\" For examples:\"projects/my-logging-project\" \"organizations/123456789\"",
                  location = "path",
                  pattern = "^folders/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v2/{+parent}/exclusions",
              request = {
                ["$ref"] = "LogExclusion",
              },
              response = {
                ["$ref"] = "LogExclusion",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/logging.admin",
              },
            },
            delete = {
              description = "Deletes an exclusion in the _Default sink.",
              flatPath = "v2/folders/{foldersId}/exclusions/{exclusionsId}",
              httpMethod = "DELETE",
              id = "logging.folders.exclusions.delete",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. The resource name of an existing exclusion to delete: \"projects/[PROJECT_ID]/exclusions/[EXCLUSION_ID]\" \"organizations/[ORGANIZATION_ID]/exclusions/[EXCLUSION_ID]\" \"billingAccounts/[BILLING_ACCOUNT_ID]/exclusions/[EXCLUSION_ID]\" \"folders/[FOLDER_ID]/exclusions/[EXCLUSION_ID]\" For example:\"projects/my-project/exclusions/my-exclusion\"",
                  location = "path",
                  pattern = "^folders/[^/]+/exclusions/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v2/{+name}",
              response = {
                ["$ref"] = "Empty",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/logging.admin",
              },
            },
            get = {
              description = "Gets the description of an exclusion in the _Default sink.",
              flatPath = "v2/folders/{foldersId}/exclusions/{exclusionsId}",
              httpMethod = "GET",
              id = "logging.folders.exclusions.get",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. The resource name of an existing exclusion: \"projects/[PROJECT_ID]/exclusions/[EXCLUSION_ID]\" \"organizations/[ORGANIZATION_ID]/exclusions/[EXCLUSION_ID]\" \"billingAccounts/[BILLING_ACCOUNT_ID]/exclusions/[EXCLUSION_ID]\" \"folders/[FOLDER_ID]/exclusions/[EXCLUSION_ID]\" For example:\"projects/my-project/exclusions/my-exclusion\"",
                  location = "path",
                  pattern = "^folders/[^/]+/exclusions/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v2/{+name}",
              response = {
                ["$ref"] = "LogExclusion",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/cloud-platform.read-only",
                "https://www.googleapis.com/auth/logging.admin",
                "https://www.googleapis.com/auth/logging.read",
              },
            },
            list = {
              description = "Lists all the exclusions on the _Default sink in a parent resource.",
              flatPath = "v2/folders/{foldersId}/exclusions",
              httpMethod = "GET",
              id = "logging.folders.exclusions.list",
              parameterOrder = {
                "parent",
              },
              parameters = {
                pageSize = {
                  description = "Optional. The maximum number of results to return from this request. Non-positive values are ignored. The presence of nextPageToken in the response indicates that more results might be available.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "Optional. If present, then retrieve the next batch of results from the preceding call to this method. pageToken must be the value of nextPageToken from the previous response. The values of other method parameters should be identical to those in the previous call.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "Required. The parent resource whose exclusions are to be listed. \"projects/[PROJECT_ID]\" \"organizations/[ORGANIZATION_ID]\" \"billingAccounts/[BILLING_ACCOUNT_ID]\" \"folders/[FOLDER_ID]\" ",
                  location = "path",
                  pattern = "^folders/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v2/{+parent}/exclusions",
              response = {
                ["$ref"] = "ListExclusionsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/cloud-platform.read-only",
                "https://www.googleapis.com/auth/logging.admin",
                "https://www.googleapis.com/auth/logging.read",
              },
            },
            patch = {
              description = "Changes one or more properties of an existing exclusion in the _Default sink.",
              flatPath = "v2/folders/{foldersId}/exclusions/{exclusionsId}",
              httpMethod = "PATCH",
              id = "logging.folders.exclusions.patch",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. The resource name of the exclusion to update: \"projects/[PROJECT_ID]/exclusions/[EXCLUSION_ID]\" \"organizations/[ORGANIZATION_ID]/exclusions/[EXCLUSION_ID]\" \"billingAccounts/[BILLING_ACCOUNT_ID]/exclusions/[EXCLUSION_ID]\" \"folders/[FOLDER_ID]/exclusions/[EXCLUSION_ID]\" For example:\"projects/my-project/exclusions/my-exclusion\"",
                  location = "path",
                  pattern = "^folders/[^/]+/exclusions/[^/]+$",
                  required = true,
                  type = "string",
                },
                updateMask = {
                  description = "Required. A non-empty list of fields to change in the existing exclusion. New values for the fields are taken from the corresponding fields in the LogExclusion included in this request. Fields not mentioned in update_mask are not changed and are ignored in the request.For example, to change the filter and description of an exclusion, specify an update_mask of \"filter,description\".",
                  format = "google-fieldmask",
                  location = "query",
                  type = "string",
                },
              },
              path = "v2/{+name}",
              request = {
                ["$ref"] = "LogExclusion",
              },
              response = {
                ["$ref"] = "LogExclusion",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/logging.admin",
              },
            },
          },
        },
        locations = {
          methods = {
            get = {
              description = "Gets information about a location.",
              flatPath = "v2/folders/{foldersId}/locations/{locationsId}",
              httpMethod = "GET",
              id = "logging.folders.locations.get",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Resource name for the location.",
                  location = "path",
                  pattern = "^folders/[^/]+/locations/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v2/{+name}",
              response = {
                ["$ref"] = "Location",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/cloud-platform.read-only",
                "https://www.googleapis.com/auth/logging.admin",
                "https://www.googleapis.com/auth/logging.read",
              },
            },
            list = {
              description = "Lists information about the supported locations for this service.",
              flatPath = "v2/folders/{foldersId}/locations",
              httpMethod = "GET",
              id = "logging.folders.locations.list",
              parameterOrder = {
                "name",
              },
              parameters = {
                filter = {
                  description = "A filter to narrow down results to a preferred subset. The filtering language accepts strings like \"displayName=tokyo\", and is documented in more detail in AIP-160 (https://google.aip.dev/160).",
                  location = "query",
                  type = "string",
                },
                name = {
                  description = "The resource that owns the locations collection, if applicable.",
                  location = "path",
                  pattern = "^folders/[^/]+$",
                  required = true,
                  type = "string",
                },
                pageSize = {
                  description = "The maximum number of results to return. If not set, the service selects a default.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "A page token received from the next_page_token field in the response. Send that page token to receive the subsequent page.",
                  location = "query",
                  type = "string",
                },
              },
              path = "v2/{+name}/locations",
              response = {
                ["$ref"] = "ListLocationsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/cloud-platform.read-only",
                "https://www.googleapis.com/auth/logging.admin",
                "https://www.googleapis.com/auth/logging.read",
              },
            },
          },
          resources = {
            buckets = {
              methods = {
                create = {
                  description = "Creates a log bucket that can be used to store log entries. After a bucket has been created, the bucket's location cannot be changed.",
                  flatPath = "v2/folders/{foldersId}/locations/{locationsId}/buckets",
                  httpMethod = "POST",
                  id = "logging.folders.locations.buckets.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    bucketId = {
                      description = "Required. A client-assigned identifier such as \"my-bucket\". Identifiers are limited to 100 characters and can include only letters, digits, underscores, hyphens, and periods.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The resource in which to create the log bucket: \"projects/[PROJECT_ID]/locations/[LOCATION_ID]\" For example:\"projects/my-project/locations/global\"",
                      location = "path",
                      pattern = "^folders/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v2/{+parent}/buckets",
                  request = {
                    ["$ref"] = "LogBucket",
                  },
                  response = {
                    ["$ref"] = "LogBucket",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/logging.admin",
                  },
                },
                delete = {
                  description = "Deletes a log bucket.Changes the bucket's lifecycle_state to the DELETE_REQUESTED state. After 7 days, the bucket will be purged and all log entries in the bucket will be permanently deleted.",
                  flatPath = "v2/folders/{foldersId}/locations/{locationsId}/buckets/{bucketsId}",
                  httpMethod = "DELETE",
                  id = "logging.folders.locations.buckets.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The full resource name of the bucket to delete. \"projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]\" \"organizations/[ORGANIZATION_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]\" \"billingAccounts/[BILLING_ACCOUNT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]\" \"folders/[FOLDER_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]\" For example:\"projects/my-project/locations/global/buckets/my-bucket\"",
                      location = "path",
                      pattern = "^folders/[^/]+/locations/[^/]+/buckets/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v2/{+name}",
                  response = {
                    ["$ref"] = "Empty",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/logging.admin",
                  },
                },
                get = {
                  description = "Gets a log bucket.",
                  flatPath = "v2/folders/{foldersId}/locations/{locationsId}/buckets/{bucketsId}",
                  httpMethod = "GET",
                  id = "logging.folders.locations.buckets.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The resource name of the bucket: \"projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]\" \"organizations/[ORGANIZATION_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]\" \"billingAccounts/[BILLING_ACCOUNT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]\" \"folders/[FOLDER_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]\" For example:\"projects/my-project/locations/global/buckets/my-bucket\"",
                      location = "path",
                      pattern = "^folders/[^/]+/locations/[^/]+/buckets/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v2/{+name}",
                  response = {
                    ["$ref"] = "LogBucket",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/cloud-platform.read-only",
                    "https://www.googleapis.com/auth/logging.admin",
                    "https://www.googleapis.com/auth/logging.read",
                  },
                },
                list = {
                  description = "Lists log buckets.",
                  flatPath = "v2/folders/{foldersId}/locations/{locationsId}/buckets",
                  httpMethod = "GET",
                  id = "logging.folders.locations.buckets.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    pageSize = {
                      description = "Optional. The maximum number of results to return from this request. Non-positive values are ignored. The presence of nextPageToken in the response indicates that more results might be available.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "Optional. If present, then retrieve the next batch of results from the preceding call to this method. pageToken must be the value of nextPageToken from the previous response. The values of other method parameters should be identical to those in the previous call.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The parent resource whose buckets are to be listed: \"projects/[PROJECT_ID]/locations/[LOCATION_ID]\" \"organizations/[ORGANIZATION_ID]/locations/[LOCATION_ID]\" \"billingAccounts/[BILLING_ACCOUNT_ID]/locations/[LOCATION_ID]\" \"folders/[FOLDER_ID]/locations/[LOCATION_ID]\" Note: The locations portion of the resource must be specified, but supplying the character - in place of LOCATION_ID will return all buckets.",
                      location = "path",
                      pattern = "^folders/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v2/{+parent}/buckets",
                  response = {
                    ["$ref"] = "ListBucketsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/cloud-platform.read-only",
                    "https://www.googleapis.com/auth/logging.admin",
                    "https://www.googleapis.com/auth/logging.read",
                  },
                },
                patch = {
                  description = "Updates a log bucket. This method replaces the following fields in the existing bucket with values from the new bucket: retention_periodIf the retention period is decreased and the bucket is locked, FAILED_PRECONDITION will be returned.If the bucket has a lifecycle_state of DELETE_REQUESTED, then FAILED_PRECONDITION will be returned.After a bucket has been created, the bucket's location cannot be changed.",
                  flatPath = "v2/folders/{foldersId}/locations/{locationsId}/buckets/{bucketsId}",
                  httpMethod = "PATCH",
                  id = "logging.folders.locations.buckets.patch",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The full resource name of the bucket to update. \"projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]\" \"organizations/[ORGANIZATION_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]\" \"billingAccounts/[BILLING_ACCOUNT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]\" \"folders/[FOLDER_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]\" For example:\"projects/my-project/locations/global/buckets/my-bucket\"",
                      location = "path",
                      pattern = "^folders/[^/]+/locations/[^/]+/buckets/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    updateMask = {
                      description = "Required. Field mask that specifies the fields in bucket that need an update. A bucket field will be overwritten if, and only if, it is in the update mask. name and output only fields cannot be updated.For a detailed FieldMask definition, see: https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#google.protobuf.FieldMaskFor example: updateMask=retention_days",
                      format = "google-fieldmask",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v2/{+name}",
                  request = {
                    ["$ref"] = "LogBucket",
                  },
                  response = {
                    ["$ref"] = "LogBucket",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/logging.admin",
                  },
                },
                undelete = {
                  description = "Undeletes a log bucket. A bucket that has been deleted can be undeleted within the grace period of 7 days.",
                  flatPath = "v2/folders/{foldersId}/locations/{locationsId}/buckets/{bucketsId}:undelete",
                  httpMethod = "POST",
                  id = "logging.folders.locations.buckets.undelete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The full resource name of the bucket to undelete. \"projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]\" \"organizations/[ORGANIZATION_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]\" \"billingAccounts/[BILLING_ACCOUNT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]\" \"folders/[FOLDER_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]\" For example:\"projects/my-project/locations/global/buckets/my-bucket\"",
                      location = "path",
                      pattern = "^folders/[^/]+/locations/[^/]+/buckets/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v2/{+name}:undelete",
                  request = {
                    ["$ref"] = "UndeleteBucketRequest",
                  },
                  response = {
                    ["$ref"] = "Empty",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/logging.admin",
                  },
                },
              },
              resources = {
                views = {
                  methods = {
                    create = {
                      description = "Creates a view over log entries in a log bucket. A bucket may contain a maximum of 30 views.",
                      flatPath = "v2/folders/{foldersId}/locations/{locationsId}/buckets/{bucketsId}/views",
                      httpMethod = "POST",
                      id = "logging.folders.locations.buckets.views.create",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        parent = {
                          description = "Required. The bucket in which to create the view `\"projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]\"` For example:\"projects/my-project/locations/global/buckets/my-bucket\"",
                          location = "path",
                          pattern = "^folders/[^/]+/locations/[^/]+/buckets/[^/]+$",
                          required = true,
                          type = "string",
                        },
                        viewId = {
                          description = "Required. A client-assigned identifier such as \"my-view\". Identifiers are limited to 100 characters and can include only letters, digits, underscores, hyphens, and periods.",
                          location = "query",
                          type = "string",
                        },
                      },
                      path = "v2/{+parent}/views",
                      request = {
                        ["$ref"] = "LogView",
                      },
                      response = {
                        ["$ref"] = "LogView",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                        "https://www.googleapis.com/auth/logging.admin",
                      },
                    },
                    delete = {
                      description = "Deletes a view on a log bucket. If an UNAVAILABLE error is returned, this indicates that system is not in a state where it can delete the view. If this occurs, please try again in a few minutes.",
                      flatPath = "v2/folders/{foldersId}/locations/{locationsId}/buckets/{bucketsId}/views/{viewsId}",
                      httpMethod = "DELETE",
                      id = "logging.folders.locations.buckets.views.delete",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The full resource name of the view to delete: \"projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]/views/[VIEW_ID]\" For example:\"projects/my-project/locations/global/buckets/my-bucket/views/my-view\"",
                          location = "path",
                          pattern = "^folders/[^/]+/locations/[^/]+/buckets/[^/]+/views/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v2/{+name}",
                      response = {
                        ["$ref"] = "Empty",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                        "https://www.googleapis.com/auth/logging.admin",
                      },
                    },
                    get = {
                      description = "Gets a view on a log bucket..",
                      flatPath = "v2/folders/{foldersId}/locations/{locationsId}/buckets/{bucketsId}/views/{viewsId}",
                      httpMethod = "GET",
                      id = "logging.folders.locations.buckets.views.get",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The resource name of the policy: \"projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]/views/[VIEW_ID]\" For example:\"projects/my-project/locations/global/buckets/my-bucket/views/my-view\"",
                          location = "path",
                          pattern = "^folders/[^/]+/locations/[^/]+/buckets/[^/]+/views/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v2/{+name}",
                      response = {
                        ["$ref"] = "LogView",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                        "https://www.googleapis.com/auth/cloud-platform.read-only",
                        "https://www.googleapis.com/auth/logging.admin",
                        "https://www.googleapis.com/auth/logging.read",
                      },
                    },
                    list = {
                      description = "Lists views on a log bucket.",
                      flatPath = "v2/folders/{foldersId}/locations/{locationsId}/buckets/{bucketsId}/views",
                      httpMethod = "GET",
                      id = "logging.folders.locations.buckets.views.list",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        pageSize = {
                          description = "Optional. The maximum number of results to return from this request.Non-positive values are ignored. The presence of nextPageToken in the response indicates that more results might be available.",
                          format = "int32",
                          location = "query",
                          type = "integer",
                        },
                        pageToken = {
                          description = "Optional. If present, then retrieve the next batch of results from the preceding call to this method. pageToken must be the value of nextPageToken from the previous response. The values of other method parameters should be identical to those in the previous call.",
                          location = "query",
                          type = "string",
                        },
                        parent = {
                          description = "Required. The bucket whose views are to be listed: \"projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]\" ",
                          location = "path",
                          pattern = "^folders/[^/]+/locations/[^/]+/buckets/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v2/{+parent}/views",
                      response = {
                        ["$ref"] = "ListViewsResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                        "https://www.googleapis.com/auth/cloud-platform.read-only",
                        "https://www.googleapis.com/auth/logging.admin",
                        "https://www.googleapis.com/auth/logging.read",
                      },
                    },
                    patch = {
                      description = "Updates a view on a log bucket. This method replaces the following fields in the existing view with values from the new view: filter. If an UNAVAILABLE error is returned, this indicates that system is not in a state where it can update the view. If this occurs, please try again in a few minutes.",
                      flatPath = "v2/folders/{foldersId}/locations/{locationsId}/buckets/{bucketsId}/views/{viewsId}",
                      httpMethod = "PATCH",
                      id = "logging.folders.locations.buckets.views.patch",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The full resource name of the view to update \"projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]/views/[VIEW_ID]\" For example:\"projects/my-project/locations/global/buckets/my-bucket/views/my-view\"",
                          location = "path",
                          pattern = "^folders/[^/]+/locations/[^/]+/buckets/[^/]+/views/[^/]+$",
                          required = true,
                          type = "string",
                        },
                        updateMask = {
                          description = "Optional. Field mask that specifies the fields in view that need an update. A field will be overwritten if, and only if, it is in the update mask. name and output only fields cannot be updated.For a detailed FieldMask definition, see https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#google.protobuf.FieldMaskFor example: updateMask=filter",
                          format = "google-fieldmask",
                          location = "query",
                          type = "string",
                        },
                      },
                      path = "v2/{+name}",
                      request = {
                        ["$ref"] = "LogView",
                      },
                      response = {
                        ["$ref"] = "LogView",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                        "https://www.googleapis.com/auth/logging.admin",
                      },
                    },
                  },
                  resources = {
                    logs = {
                      methods = {
                        list = {
                          description = "Lists the logs in projects, organizations, folders, or billing accounts. Only logs that have entries are listed.",
                          flatPath = "v2/folders/{foldersId}/locations/{locationsId}/buckets/{bucketsId}/views/{viewsId}/logs",
                          httpMethod = "GET",
                          id = "logging.folders.locations.buckets.views.logs.list",
                          parameterOrder = {
                            "parent",
                          },
                          parameters = {
                            pageSize = {
                              description = "Optional. The maximum number of results to return from this request. Non-positive values are ignored. The presence of nextPageToken in the response indicates that more results might be available.",
                              format = "int32",
                              location = "query",
                              type = "integer",
                            },
                            pageToken = {
                              description = "Optional. If present, then retrieve the next batch of results from the preceding call to this method. pageToken must be the value of nextPageToken from the previous response. The values of other method parameters should be identical to those in the previous call.",
                              location = "query",
                              type = "string",
                            },
                            parent = {
                              description = "Required. The resource name that owns the logs: projects/[PROJECT_ID] organizations/[ORGANIZATION_ID] billingAccounts/[BILLING_ACCOUNT_ID] folders/[FOLDER_ID]",
                              location = "path",
                              pattern = "^folders/[^/]+/locations/[^/]+/buckets/[^/]+/views/[^/]+$",
                              required = true,
                              type = "string",
                            },
                            resourceNames = {
                              description = "Optional. The resource name that owns the logs: projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]/views/[VIEW_ID] organizations/[ORGANIZATION_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]/views/[VIEW_ID] billingAccounts/[BILLING_ACCOUNT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]/views/[VIEW_ID] folders/[FOLDER_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]/views/[VIEW_ID]To support legacy queries, it could also be: projects/[PROJECT_ID] organizations/[ORGANIZATION_ID] billingAccounts/[BILLING_ACCOUNT_ID] folders/[FOLDER_ID]",
                              location = "query",
                              repeated = true,
                              type = "string",
                            },
                          },
                          path = "v2/{+parent}/logs",
                          response = {
                            ["$ref"] = "ListLogsResponse",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                            "https://www.googleapis.com/auth/cloud-platform.read-only",
                            "https://www.googleapis.com/auth/logging.admin",
                            "https://www.googleapis.com/auth/logging.read",
                          },
                        },
                      },
                    },
                  },
                },
              },
            },
            operations = {
              methods = {
                cancel = {
                  description = "Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn't support this method, it returns google.rpc.Code.UNIMPLEMENTED. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of 1, corresponding to Code.CANCELLED.",
                  flatPath = "v2/folders/{foldersId}/locations/{locationsId}/operations/{operationsId}:cancel",
                  httpMethod = "POST",
                  id = "logging.folders.locations.operations.cancel",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "The name of the operation resource to be cancelled.",
                      location = "path",
                      pattern = "^folders/[^/]+/locations/[^/]+/operations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v2/{+name}:cancel",
                  request = {
                    ["$ref"] = "CancelOperationRequest",
                  },
                  response = {
                    ["$ref"] = "Empty",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/logging.admin",
                  },
                },
                get = {
                  description = "Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.",
                  flatPath = "v2/folders/{foldersId}/locations/{locationsId}/operations/{operationsId}",
                  httpMethod = "GET",
                  id = "logging.folders.locations.operations.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "The name of the operation resource.",
                      location = "path",
                      pattern = "^folders/[^/]+/locations/[^/]+/operations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v2/{+name}",
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/cloud-platform.read-only",
                    "https://www.googleapis.com/auth/logging.admin",
                    "https://www.googleapis.com/auth/logging.read",
                  },
                },
                list = {
                  description = "Lists operations that match the specified filter in the request. If the server doesn't support this method, it returns UNIMPLEMENTED.NOTE: the name binding allows API services to override the binding to use different resource name schemes, such as users/*/operations. To override the binding, API services can add a binding such as \"/v1/{name=users/*}/operations\" to their service configuration. For backwards compatibility, the default name includes the operations collection id, however overriding users must ensure the name binding is the parent resource, without the operations collection id.",
                  flatPath = "v2/folders/{foldersId}/locations/{locationsId}/operations",
                  httpMethod = "GET",
                  id = "logging.folders.locations.operations.list",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    filter = {
                      description = "The standard list filter.",
                      location = "query",
                      type = "string",
                    },
                    name = {
                      description = "The name of the operation's parent resource.",
                      location = "path",
                      pattern = "^folders/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    pageSize = {
                      description = "The standard list page size.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "The standard list page token.",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v2/{+name}/operations",
                  response = {
                    ["$ref"] = "ListOperationsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/cloud-platform.read-only",
                    "https://www.googleapis.com/auth/logging.admin",
                    "https://www.googleapis.com/auth/logging.read",
                  },
                },
              },
            },
          },
        },
        logs = {
          methods = {
            delete = {
              description = "Deletes all the log entries in a log for the _Default Log Bucket. The log reappears if it receives new entries. Log entries written shortly before the delete operation might not be deleted. Entries received after the delete operation with a timestamp before the operation will be deleted.",
              flatPath = "v2/folders/{foldersId}/logs/{logsId}",
              httpMethod = "DELETE",
              id = "logging.folders.logs.delete",
              parameterOrder = {
                "logName",
              },
              parameters = {
                logName = {
                  description = "Required. The resource name of the log to delete: projects/[PROJECT_ID]/logs/[LOG_ID] organizations/[ORGANIZATION_ID]/logs/[LOG_ID] billingAccounts/[BILLING_ACCOUNT_ID]/logs/[LOG_ID] folders/[FOLDER_ID]/logs/[LOG_ID][LOG_ID] must be URL-encoded. For example, \"projects/my-project-id/logs/syslog\", \"organizations/123/logs/cloudaudit.googleapis.com%2Factivity\".For more information about log names, see LogEntry.",
                  location = "path",
                  pattern = "^folders/[^/]+/logs/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v2/{+logName}",
              response = {
                ["$ref"] = "Empty",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/logging.admin",
              },
            },
            list = {
              description = "Lists the logs in projects, organizations, folders, or billing accounts. Only logs that have entries are listed.",
              flatPath = "v2/folders/{foldersId}/logs",
              httpMethod = "GET",
              id = "logging.folders.logs.list",
              parameterOrder = {
                "parent",
              },
              parameters = {
                pageSize = {
                  description = "Optional. The maximum number of results to return from this request. Non-positive values are ignored. The presence of nextPageToken in the response indicates that more results might be available.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "Optional. If present, then retrieve the next batch of results from the preceding call to this method. pageToken must be the value of nextPageToken from the previous response. The values of other method parameters should be identical to those in the previous call.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "Required. The resource name that owns the logs: projects/[PROJECT_ID] organizations/[ORGANIZATION_ID] billingAccounts/[BILLING_ACCOUNT_ID] folders/[FOLDER_ID]",
                  location = "path",
                  pattern = "^folders/[^/]+$",
                  required = true,
                  type = "string",
                },
                resourceNames = {
                  description = "Optional. The resource name that owns the logs: projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]/views/[VIEW_ID] organizations/[ORGANIZATION_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]/views/[VIEW_ID] billingAccounts/[BILLING_ACCOUNT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]/views/[VIEW_ID] folders/[FOLDER_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]/views/[VIEW_ID]To support legacy queries, it could also be: projects/[PROJECT_ID] organizations/[ORGANIZATION_ID] billingAccounts/[BILLING_ACCOUNT_ID] folders/[FOLDER_ID]",
                  location = "query",
                  repeated = true,
                  type = "string",
                },
              },
              path = "v2/{+parent}/logs",
              response = {
                ["$ref"] = "ListLogsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/cloud-platform.read-only",
                "https://www.googleapis.com/auth/logging.admin",
                "https://www.googleapis.com/auth/logging.read",
              },
            },
          },
        },
        sinks = {
          methods = {
            create = {
              description = "Creates a sink that exports specified log entries to a destination. The export of newly-ingested log entries begins immediately, unless the sink's writer_identity is not permitted to write to the destination. A sink can export log entries only from the resource owning the sink.",
              flatPath = "v2/folders/{foldersId}/sinks",
              httpMethod = "POST",
              id = "logging.folders.sinks.create",
              parameterOrder = {
                "parent",
              },
              parameters = {
                parent = {
                  description = "Required. The resource in which to create the sink: \"projects/[PROJECT_ID]\" \"organizations/[ORGANIZATION_ID]\" \"billingAccounts/[BILLING_ACCOUNT_ID]\" \"folders/[FOLDER_ID]\" For examples:\"projects/my-project\" \"organizations/123456789\"",
                  location = "path",
                  pattern = "^folders/[^/]+$",
                  required = true,
                  type = "string",
                },
                uniqueWriterIdentity = {
                  description = "Optional. Determines the kind of IAM identity returned as writer_identity in the new sink. If this value is omitted or set to false, and if the sink's parent is a project, then the value returned as writer_identity is the same group or service account used by Cloud Logging before the addition of writer identities to this API. The sink's destination must be in the same project as the sink itself.If this field is set to true, or if the sink is owned by a non-project resource such as an organization, then the value of writer_identity will be a unique service account used only for exports from the new sink. For more information, see writer_identity in LogSink.",
                  location = "query",
                  type = "boolean",
                },
              },
              path = "v2/{+parent}/sinks",
              request = {
                ["$ref"] = "LogSink",
              },
              response = {
                ["$ref"] = "LogSink",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/logging.admin",
              },
            },
            delete = {
              description = "Deletes a sink. If the sink has a unique writer_identity, then that service account is also deleted.",
              flatPath = "v2/folders/{foldersId}/sinks/{sinksId}",
              httpMethod = "DELETE",
              id = "logging.folders.sinks.delete",
              parameterOrder = {
                "sinkName",
              },
              parameters = {
                sinkName = {
                  description = "Required. The full resource name of the sink to delete, including the parent resource and the sink identifier: \"projects/[PROJECT_ID]/sinks/[SINK_ID]\" \"organizations/[ORGANIZATION_ID]/sinks/[SINK_ID]\" \"billingAccounts/[BILLING_ACCOUNT_ID]/sinks/[SINK_ID]\" \"folders/[FOLDER_ID]/sinks/[SINK_ID]\" For example:\"projects/my-project/sinks/my-sink\"",
                  location = "path",
                  pattern = "^folders/[^/]+/sinks/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v2/{+sinkName}",
              response = {
                ["$ref"] = "Empty",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/logging.admin",
              },
            },
            get = {
              description = "Gets a sink.",
              flatPath = "v2/folders/{foldersId}/sinks/{sinksId}",
              httpMethod = "GET",
              id = "logging.folders.sinks.get",
              parameterOrder = {
                "sinkName",
              },
              parameters = {
                sinkName = {
                  description = "Required. The resource name of the sink: \"projects/[PROJECT_ID]/sinks/[SINK_ID]\" \"organizations/[ORGANIZATION_ID]/sinks/[SINK_ID]\" \"billingAccounts/[BILLING_ACCOUNT_ID]/sinks/[SINK_ID]\" \"folders/[FOLDER_ID]/sinks/[SINK_ID]\" For example:\"projects/my-project/sinks/my-sink\"",
                  location = "path",
                  pattern = "^folders/[^/]+/sinks/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v2/{+sinkName}",
              response = {
                ["$ref"] = "LogSink",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/cloud-platform.read-only",
                "https://www.googleapis.com/auth/logging.admin",
                "https://www.googleapis.com/auth/logging.read",
              },
            },
            list = {
              description = "Lists sinks.",
              flatPath = "v2/folders/{foldersId}/sinks",
              httpMethod = "GET",
              id = "logging.folders.sinks.list",
              parameterOrder = {
                "parent",
              },
              parameters = {
                pageSize = {
                  description = "Optional. The maximum number of results to return from this request. Non-positive values are ignored. The presence of nextPageToken in the response indicates that more results might be available.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "Optional. If present, then retrieve the next batch of results from the preceding call to this method. pageToken must be the value of nextPageToken from the previous response. The values of other method parameters should be identical to those in the previous call.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "Required. The parent resource whose sinks are to be listed: \"projects/[PROJECT_ID]\" \"organizations/[ORGANIZATION_ID]\" \"billingAccounts/[BILLING_ACCOUNT_ID]\" \"folders/[FOLDER_ID]\" ",
                  location = "path",
                  pattern = "^folders/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v2/{+parent}/sinks",
              response = {
                ["$ref"] = "ListSinksResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/cloud-platform.read-only",
                "https://www.googleapis.com/auth/logging.admin",
                "https://www.googleapis.com/auth/logging.read",
              },
            },
            patch = {
              description = "Updates a sink. This method replaces the following fields in the existing sink with values from the new sink: destination, and filter.The updated sink might also have a new writer_identity; see the unique_writer_identity field.",
              flatPath = "v2/folders/{foldersId}/sinks/{sinksId}",
              httpMethod = "PATCH",
              id = "logging.folders.sinks.patch",
              parameterOrder = {
                "sinkName",
              },
              parameters = {
                sinkName = {
                  description = "Required. The full resource name of the sink to update, including the parent resource and the sink identifier: \"projects/[PROJECT_ID]/sinks/[SINK_ID]\" \"organizations/[ORGANIZATION_ID]/sinks/[SINK_ID]\" \"billingAccounts/[BILLING_ACCOUNT_ID]/sinks/[SINK_ID]\" \"folders/[FOLDER_ID]/sinks/[SINK_ID]\" For example:\"projects/my-project/sinks/my-sink\"",
                  location = "path",
                  pattern = "^folders/[^/]+/sinks/[^/]+$",
                  required = true,
                  type = "string",
                },
                uniqueWriterIdentity = {
                  description = "Optional. See sinks.create for a description of this field. When updating a sink, the effect of this field on the value of writer_identity in the updated sink depends on both the old and new values of this field: If the old and new values of this field are both false or both true, then there is no change to the sink's writer_identity. If the old value is false and the new value is true, then writer_identity is changed to a unique service account. It is an error if the old value is true and the new value is set to false or defaulted to false.",
                  location = "query",
                  type = "boolean",
                },
                updateMask = {
                  description = "Optional. Field mask that specifies the fields in sink that need an update. A sink field will be overwritten if, and only if, it is in the update mask. name and output only fields cannot be updated.An empty updateMask is temporarily treated as using the following mask for backwards compatibility purposes:destination,filter,includeChildrenAt some point in the future, behavior will be removed and specifying an empty updateMask will be an error.For a detailed FieldMask definition, see https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#google.protobuf.FieldMaskFor example: updateMask=filter",
                  format = "google-fieldmask",
                  location = "query",
                  type = "string",
                },
              },
              path = "v2/{+sinkName}",
              request = {
                ["$ref"] = "LogSink",
              },
              response = {
                ["$ref"] = "LogSink",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/logging.admin",
              },
            },
            update = {
              description = "Updates a sink. This method replaces the following fields in the existing sink with values from the new sink: destination, and filter.The updated sink might also have a new writer_identity; see the unique_writer_identity field.",
              flatPath = "v2/folders/{foldersId}/sinks/{sinksId}",
              httpMethod = "PUT",
              id = "logging.folders.sinks.update",
              parameterOrder = {
                "sinkName",
              },
              parameters = {
                sinkName = {
                  description = "Required. The full resource name of the sink to update, including the parent resource and the sink identifier: \"projects/[PROJECT_ID]/sinks/[SINK_ID]\" \"organizations/[ORGANIZATION_ID]/sinks/[SINK_ID]\" \"billingAccounts/[BILLING_ACCOUNT_ID]/sinks/[SINK_ID]\" \"folders/[FOLDER_ID]/sinks/[SINK_ID]\" For example:\"projects/my-project/sinks/my-sink\"",
                  location = "path",
                  pattern = "^folders/[^/]+/sinks/[^/]+$",
                  required = true,
                  type = "string",
                },
                uniqueWriterIdentity = {
                  description = "Optional. See sinks.create for a description of this field. When updating a sink, the effect of this field on the value of writer_identity in the updated sink depends on both the old and new values of this field: If the old and new values of this field are both false or both true, then there is no change to the sink's writer_identity. If the old value is false and the new value is true, then writer_identity is changed to a unique service account. It is an error if the old value is true and the new value is set to false or defaulted to false.",
                  location = "query",
                  type = "boolean",
                },
                updateMask = {
                  description = "Optional. Field mask that specifies the fields in sink that need an update. A sink field will be overwritten if, and only if, it is in the update mask. name and output only fields cannot be updated.An empty updateMask is temporarily treated as using the following mask for backwards compatibility purposes:destination,filter,includeChildrenAt some point in the future, behavior will be removed and specifying an empty updateMask will be an error.For a detailed FieldMask definition, see https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#google.protobuf.FieldMaskFor example: updateMask=filter",
                  format = "google-fieldmask",
                  location = "query",
                  type = "string",
                },
              },
              path = "v2/{+sinkName}",
              request = {
                ["$ref"] = "LogSink",
              },
              response = {
                ["$ref"] = "LogSink",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/logging.admin",
              },
            },
          },
        },
      },
    },
    locations = {
      methods = {
        get = {
          description = "Gets information about a location.",
          flatPath = "v2/{v2Id}/{v2Id1}/locations/{locationsId}",
          httpMethod = "GET",
          id = "logging.locations.get",
          parameterOrder = {
            "name",
          },
          parameters = {
            name = {
              description = "Resource name for the location.",
              location = "path",
              pattern = "^[^/]+/[^/]+/locations/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "v2/{+name}",
          response = {
            ["$ref"] = "Location",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/cloud-platform.read-only",
            "https://www.googleapis.com/auth/logging.admin",
            "https://www.googleapis.com/auth/logging.read",
          },
        },
        list = {
          description = "Lists information about the supported locations for this service.",
          flatPath = "v2/{v2Id}/{v2Id1}/locations",
          httpMethod = "GET",
          id = "logging.locations.list",
          parameterOrder = {
            "name",
          },
          parameters = {
            filter = {
              description = "A filter to narrow down results to a preferred subset. The filtering language accepts strings like \"displayName=tokyo\", and is documented in more detail in AIP-160 (https://google.aip.dev/160).",
              location = "query",
              type = "string",
            },
            name = {
              description = "The resource that owns the locations collection, if applicable.",
              location = "path",
              pattern = "^[^/]+/[^/]+$",
              required = true,
              type = "string",
            },
            pageSize = {
              description = "The maximum number of results to return. If not set, the service selects a default.",
              format = "int32",
              location = "query",
              type = "integer",
            },
            pageToken = {
              description = "A page token received from the next_page_token field in the response. Send that page token to receive the subsequent page.",
              location = "query",
              type = "string",
            },
          },
          path = "v2/{+name}/locations",
          response = {
            ["$ref"] = "ListLocationsResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/cloud-platform.read-only",
            "https://www.googleapis.com/auth/logging.admin",
            "https://www.googleapis.com/auth/logging.read",
          },
        },
      },
      resources = {
        buckets = {
          methods = {
            create = {
              description = "Creates a log bucket that can be used to store log entries. After a bucket has been created, the bucket's location cannot be changed.",
              flatPath = "v2/{v2Id}/{v2Id1}/locations/{locationsId}/buckets",
              httpMethod = "POST",
              id = "logging.locations.buckets.create",
              parameterOrder = {
                "parent",
              },
              parameters = {
                bucketId = {
                  description = "Required. A client-assigned identifier such as \"my-bucket\". Identifiers are limited to 100 characters and can include only letters, digits, underscores, hyphens, and periods.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "Required. The resource in which to create the log bucket: \"projects/[PROJECT_ID]/locations/[LOCATION_ID]\" For example:\"projects/my-project/locations/global\"",
                  location = "path",
                  pattern = "^[^/]+/[^/]+/locations/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v2/{+parent}/buckets",
              request = {
                ["$ref"] = "LogBucket",
              },
              response = {
                ["$ref"] = "LogBucket",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/logging.admin",
              },
            },
            delete = {
              description = "Deletes a log bucket.Changes the bucket's lifecycle_state to the DELETE_REQUESTED state. After 7 days, the bucket will be purged and all log entries in the bucket will be permanently deleted.",
              flatPath = "v2/{v2Id}/{v2Id1}/locations/{locationsId}/buckets/{bucketsId}",
              httpMethod = "DELETE",
              id = "logging.locations.buckets.delete",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. The full resource name of the bucket to delete. \"projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]\" \"organizations/[ORGANIZATION_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]\" \"billingAccounts/[BILLING_ACCOUNT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]\" \"folders/[FOLDER_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]\" For example:\"projects/my-project/locations/global/buckets/my-bucket\"",
                  location = "path",
                  pattern = "^[^/]+/[^/]+/locations/[^/]+/buckets/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v2/{+name}",
              response = {
                ["$ref"] = "Empty",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/logging.admin",
              },
            },
            get = {
              description = "Gets a log bucket.",
              flatPath = "v2/{v2Id}/{v2Id1}/locations/{locationsId}/buckets/{bucketsId}",
              httpMethod = "GET",
              id = "logging.locations.buckets.get",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. The resource name of the bucket: \"projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]\" \"organizations/[ORGANIZATION_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]\" \"billingAccounts/[BILLING_ACCOUNT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]\" \"folders/[FOLDER_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]\" For example:\"projects/my-project/locations/global/buckets/my-bucket\"",
                  location = "path",
                  pattern = "^[^/]+/[^/]+/locations/[^/]+/buckets/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v2/{+name}",
              response = {
                ["$ref"] = "LogBucket",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/cloud-platform.read-only",
                "https://www.googleapis.com/auth/logging.admin",
                "https://www.googleapis.com/auth/logging.read",
              },
            },
            list = {
              description = "Lists log buckets.",
              flatPath = "v2/{v2Id}/{v2Id1}/locations/{locationsId}/buckets",
              httpMethod = "GET",
              id = "logging.locations.buckets.list",
              parameterOrder = {
                "parent",
              },
              parameters = {
                pageSize = {
                  description = "Optional. The maximum number of results to return from this request. Non-positive values are ignored. The presence of nextPageToken in the response indicates that more results might be available.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "Optional. If present, then retrieve the next batch of results from the preceding call to this method. pageToken must be the value of nextPageToken from the previous response. The values of other method parameters should be identical to those in the previous call.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "Required. The parent resource whose buckets are to be listed: \"projects/[PROJECT_ID]/locations/[LOCATION_ID]\" \"organizations/[ORGANIZATION_ID]/locations/[LOCATION_ID]\" \"billingAccounts/[BILLING_ACCOUNT_ID]/locations/[LOCATION_ID]\" \"folders/[FOLDER_ID]/locations/[LOCATION_ID]\" Note: The locations portion of the resource must be specified, but supplying the character - in place of LOCATION_ID will return all buckets.",
                  location = "path",
                  pattern = "^[^/]+/[^/]+/locations/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v2/{+parent}/buckets",
              response = {
                ["$ref"] = "ListBucketsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/cloud-platform.read-only",
                "https://www.googleapis.com/auth/logging.admin",
                "https://www.googleapis.com/auth/logging.read",
              },
            },
            patch = {
              description = "Updates a log bucket. This method replaces the following fields in the existing bucket with values from the new bucket: retention_periodIf the retention period is decreased and the bucket is locked, FAILED_PRECONDITION will be returned.If the bucket has a lifecycle_state of DELETE_REQUESTED, then FAILED_PRECONDITION will be returned.After a bucket has been created, the bucket's location cannot be changed.",
              flatPath = "v2/{v2Id}/{v2Id1}/locations/{locationsId}/buckets/{bucketsId}",
              httpMethod = "PATCH",
              id = "logging.locations.buckets.patch",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. The full resource name of the bucket to update. \"projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]\" \"organizations/[ORGANIZATION_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]\" \"billingAccounts/[BILLING_ACCOUNT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]\" \"folders/[FOLDER_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]\" For example:\"projects/my-project/locations/global/buckets/my-bucket\"",
                  location = "path",
                  pattern = "^[^/]+/[^/]+/locations/[^/]+/buckets/[^/]+$",
                  required = true,
                  type = "string",
                },
                updateMask = {
                  description = "Required. Field mask that specifies the fields in bucket that need an update. A bucket field will be overwritten if, and only if, it is in the update mask. name and output only fields cannot be updated.For a detailed FieldMask definition, see: https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#google.protobuf.FieldMaskFor example: updateMask=retention_days",
                  format = "google-fieldmask",
                  location = "query",
                  type = "string",
                },
              },
              path = "v2/{+name}",
              request = {
                ["$ref"] = "LogBucket",
              },
              response = {
                ["$ref"] = "LogBucket",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/logging.admin",
              },
            },
            undelete = {
              description = "Undeletes a log bucket. A bucket that has been deleted can be undeleted within the grace period of 7 days.",
              flatPath = "v2/{v2Id}/{v2Id1}/locations/{locationsId}/buckets/{bucketsId}:undelete",
              httpMethod = "POST",
              id = "logging.locations.buckets.undelete",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. The full resource name of the bucket to undelete. \"projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]\" \"organizations/[ORGANIZATION_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]\" \"billingAccounts/[BILLING_ACCOUNT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]\" \"folders/[FOLDER_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]\" For example:\"projects/my-project/locations/global/buckets/my-bucket\"",
                  location = "path",
                  pattern = "^[^/]+/[^/]+/locations/[^/]+/buckets/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v2/{+name}:undelete",
              request = {
                ["$ref"] = "UndeleteBucketRequest",
              },
              response = {
                ["$ref"] = "Empty",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/logging.admin",
              },
            },
          },
          resources = {
            views = {
              methods = {
                create = {
                  description = "Creates a view over log entries in a log bucket. A bucket may contain a maximum of 30 views.",
                  flatPath = "v2/{v2Id}/{v2Id1}/locations/{locationsId}/buckets/{bucketsId}/views",
                  httpMethod = "POST",
                  id = "logging.locations.buckets.views.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    parent = {
                      description = "Required. The bucket in which to create the view `\"projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]\"` For example:\"projects/my-project/locations/global/buckets/my-bucket\"",
                      location = "path",
                      pattern = "^[^/]+/[^/]+/locations/[^/]+/buckets/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    viewId = {
                      description = "Required. A client-assigned identifier such as \"my-view\". Identifiers are limited to 100 characters and can include only letters, digits, underscores, hyphens, and periods.",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v2/{+parent}/views",
                  request = {
                    ["$ref"] = "LogView",
                  },
                  response = {
                    ["$ref"] = "LogView",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/logging.admin",
                  },
                },
                delete = {
                  description = "Deletes a view on a log bucket. If an UNAVAILABLE error is returned, this indicates that system is not in a state where it can delete the view. If this occurs, please try again in a few minutes.",
                  flatPath = "v2/{v2Id}/{v2Id1}/locations/{locationsId}/buckets/{bucketsId}/views/{viewsId}",
                  httpMethod = "DELETE",
                  id = "logging.locations.buckets.views.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The full resource name of the view to delete: \"projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]/views/[VIEW_ID]\" For example:\"projects/my-project/locations/global/buckets/my-bucket/views/my-view\"",
                      location = "path",
                      pattern = "^[^/]+/[^/]+/locations/[^/]+/buckets/[^/]+/views/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v2/{+name}",
                  response = {
                    ["$ref"] = "Empty",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/logging.admin",
                  },
                },
                get = {
                  description = "Gets a view on a log bucket..",
                  flatPath = "v2/{v2Id}/{v2Id1}/locations/{locationsId}/buckets/{bucketsId}/views/{viewsId}",
                  httpMethod = "GET",
                  id = "logging.locations.buckets.views.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The resource name of the policy: \"projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]/views/[VIEW_ID]\" For example:\"projects/my-project/locations/global/buckets/my-bucket/views/my-view\"",
                      location = "path",
                      pattern = "^[^/]+/[^/]+/locations/[^/]+/buckets/[^/]+/views/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v2/{+name}",
                  response = {
                    ["$ref"] = "LogView",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/cloud-platform.read-only",
                    "https://www.googleapis.com/auth/logging.admin",
                    "https://www.googleapis.com/auth/logging.read",
                  },
                },
                list = {
                  description = "Lists views on a log bucket.",
                  flatPath = "v2/{v2Id}/{v2Id1}/locations/{locationsId}/buckets/{bucketsId}/views",
                  httpMethod = "GET",
                  id = "logging.locations.buckets.views.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    pageSize = {
                      description = "Optional. The maximum number of results to return from this request.Non-positive values are ignored. The presence of nextPageToken in the response indicates that more results might be available.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "Optional. If present, then retrieve the next batch of results from the preceding call to this method. pageToken must be the value of nextPageToken from the previous response. The values of other method parameters should be identical to those in the previous call.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The bucket whose views are to be listed: \"projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]\" ",
                      location = "path",
                      pattern = "^[^/]+/[^/]+/locations/[^/]+/buckets/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v2/{+parent}/views",
                  response = {
                    ["$ref"] = "ListViewsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/cloud-platform.read-only",
                    "https://www.googleapis.com/auth/logging.admin",
                    "https://www.googleapis.com/auth/logging.read",
                  },
                },
                patch = {
                  description = "Updates a view on a log bucket. This method replaces the following fields in the existing view with values from the new view: filter. If an UNAVAILABLE error is returned, this indicates that system is not in a state where it can update the view. If this occurs, please try again in a few minutes.",
                  flatPath = "v2/{v2Id}/{v2Id1}/locations/{locationsId}/buckets/{bucketsId}/views/{viewsId}",
                  httpMethod = "PATCH",
                  id = "logging.locations.buckets.views.patch",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The full resource name of the view to update \"projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]/views/[VIEW_ID]\" For example:\"projects/my-project/locations/global/buckets/my-bucket/views/my-view\"",
                      location = "path",
                      pattern = "^[^/]+/[^/]+/locations/[^/]+/buckets/[^/]+/views/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    updateMask = {
                      description = "Optional. Field mask that specifies the fields in view that need an update. A field will be overwritten if, and only if, it is in the update mask. name and output only fields cannot be updated.For a detailed FieldMask definition, see https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#google.protobuf.FieldMaskFor example: updateMask=filter",
                      format = "google-fieldmask",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v2/{+name}",
                  request = {
                    ["$ref"] = "LogView",
                  },
                  response = {
                    ["$ref"] = "LogView",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/logging.admin",
                  },
                },
              },
            },
          },
        },
        operations = {
          methods = {
            cancel = {
              description = "Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn't support this method, it returns google.rpc.Code.UNIMPLEMENTED. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of 1, corresponding to Code.CANCELLED.",
              flatPath = "v2/{v2Id}/{v2Id1}/locations/{locationsId}/operations/{operationsId}:cancel",
              httpMethod = "POST",
              id = "logging.locations.operations.cancel",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "The name of the operation resource to be cancelled.",
                  location = "path",
                  pattern = "^[^/]+/[^/]+/locations/[^/]+/operations/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v2/{+name}:cancel",
              request = {
                ["$ref"] = "CancelOperationRequest",
              },
              response = {
                ["$ref"] = "Empty",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/logging.admin",
              },
            },
            get = {
              description = "Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.",
              flatPath = "v2/{v2Id}/{v2Id1}/locations/{locationsId}/operations/{operationsId}",
              httpMethod = "GET",
              id = "logging.locations.operations.get",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "The name of the operation resource.",
                  location = "path",
                  pattern = "^[^/]+/[^/]+/locations/[^/]+/operations/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v2/{+name}",
              response = {
                ["$ref"] = "Operation",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/cloud-platform.read-only",
                "https://www.googleapis.com/auth/logging.admin",
                "https://www.googleapis.com/auth/logging.read",
              },
            },
            list = {
              description = "Lists operations that match the specified filter in the request. If the server doesn't support this method, it returns UNIMPLEMENTED.NOTE: the name binding allows API services to override the binding to use different resource name schemes, such as users/*/operations. To override the binding, API services can add a binding such as \"/v1/{name=users/*}/operations\" to their service configuration. For backwards compatibility, the default name includes the operations collection id, however overriding users must ensure the name binding is the parent resource, without the operations collection id.",
              flatPath = "v2/{v2Id}/{v2Id1}/locations/{locationsId}/operations",
              httpMethod = "GET",
              id = "logging.locations.operations.list",
              parameterOrder = {
                "name",
              },
              parameters = {
                filter = {
                  description = "The standard list filter.",
                  location = "query",
                  type = "string",
                },
                name = {
                  description = "The name of the operation's parent resource.",
                  location = "path",
                  pattern = "^[^/]+/[^/]+/locations/[^/]+$",
                  required = true,
                  type = "string",
                },
                pageSize = {
                  description = "The standard list page size.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "The standard list page token.",
                  location = "query",
                  type = "string",
                },
              },
              path = "v2/{+name}/operations",
              response = {
                ["$ref"] = "ListOperationsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/cloud-platform.read-only",
                "https://www.googleapis.com/auth/logging.admin",
                "https://www.googleapis.com/auth/logging.read",
              },
            },
          },
        },
      },
    },
    logs = {
      methods = {
        delete = {
          description = "Deletes all the log entries in a log for the _Default Log Bucket. The log reappears if it receives new entries. Log entries written shortly before the delete operation might not be deleted. Entries received after the delete operation with a timestamp before the operation will be deleted.",
          flatPath = "v2/{v2Id}/{v2Id1}/logs/{logsId}",
          httpMethod = "DELETE",
          id = "logging.logs.delete",
          parameterOrder = {
            "logName",
          },
          parameters = {
            logName = {
              description = "Required. The resource name of the log to delete: projects/[PROJECT_ID]/logs/[LOG_ID] organizations/[ORGANIZATION_ID]/logs/[LOG_ID] billingAccounts/[BILLING_ACCOUNT_ID]/logs/[LOG_ID] folders/[FOLDER_ID]/logs/[LOG_ID][LOG_ID] must be URL-encoded. For example, \"projects/my-project-id/logs/syslog\", \"organizations/123/logs/cloudaudit.googleapis.com%2Factivity\".For more information about log names, see LogEntry.",
              location = "path",
              pattern = "^[^/]+/[^/]+/logs/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "v2/{+logName}",
          response = {
            ["$ref"] = "Empty",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/logging.admin",
          },
        },
        list = {
          description = "Lists the logs in projects, organizations, folders, or billing accounts. Only logs that have entries are listed.",
          flatPath = "v2/{v2Id}/{v2Id1}/logs",
          httpMethod = "GET",
          id = "logging.logs.list",
          parameterOrder = {
            "parent",
          },
          parameters = {
            pageSize = {
              description = "Optional. The maximum number of results to return from this request. Non-positive values are ignored. The presence of nextPageToken in the response indicates that more results might be available.",
              format = "int32",
              location = "query",
              type = "integer",
            },
            pageToken = {
              description = "Optional. If present, then retrieve the next batch of results from the preceding call to this method. pageToken must be the value of nextPageToken from the previous response. The values of other method parameters should be identical to those in the previous call.",
              location = "query",
              type = "string",
            },
            parent = {
              description = "Required. The resource name that owns the logs: projects/[PROJECT_ID] organizations/[ORGANIZATION_ID] billingAccounts/[BILLING_ACCOUNT_ID] folders/[FOLDER_ID]",
              location = "path",
              pattern = "^[^/]+/[^/]+$",
              required = true,
              type = "string",
            },
            resourceNames = {
              description = "Optional. The resource name that owns the logs: projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]/views/[VIEW_ID] organizations/[ORGANIZATION_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]/views/[VIEW_ID] billingAccounts/[BILLING_ACCOUNT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]/views/[VIEW_ID] folders/[FOLDER_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]/views/[VIEW_ID]To support legacy queries, it could also be: projects/[PROJECT_ID] organizations/[ORGANIZATION_ID] billingAccounts/[BILLING_ACCOUNT_ID] folders/[FOLDER_ID]",
              location = "query",
              repeated = true,
              type = "string",
            },
          },
          path = "v2/{+parent}/logs",
          response = {
            ["$ref"] = "ListLogsResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/cloud-platform.read-only",
            "https://www.googleapis.com/auth/logging.admin",
            "https://www.googleapis.com/auth/logging.read",
          },
        },
      },
    },
    monitoredResourceDescriptors = {
      methods = {
        list = {
          description = "Lists the descriptors for monitored resource types used by Logging.",
          flatPath = "v2/monitoredResourceDescriptors",
          httpMethod = "GET",
          id = "logging.monitoredResourceDescriptors.list",
          parameterOrder = {},
          parameters = {
            pageSize = {
              description = "Optional. The maximum number of results to return from this request. Non-positive values are ignored. The presence of nextPageToken in the response indicates that more results might be available.",
              format = "int32",
              location = "query",
              type = "integer",
            },
            pageToken = {
              description = "Optional. If present, then retrieve the next batch of results from the preceding call to this method. pageToken must be the value of nextPageToken from the previous response. The values of other method parameters should be identical to those in the previous call.",
              location = "query",
              type = "string",
            },
          },
          path = "v2/monitoredResourceDescriptors",
          response = {
            ["$ref"] = "ListMonitoredResourceDescriptorsResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/cloud-platform.read-only",
            "https://www.googleapis.com/auth/logging.admin",
            "https://www.googleapis.com/auth/logging.read",
          },
        },
      },
    },
    organizations = {
      methods = {
        getCmekSettings = {
          description = "Gets the Logging CMEK settings for the given resource.Note: CMEK for the Log Router can be configured for Google Cloud projects, folders, organizations and billing accounts. Once configured for an organization, it applies to all projects and folders in the Google Cloud organization.See Enabling CMEK for Log Router (https://cloud.google.com/logging/docs/routing/managed-encryption) for more information.",
          flatPath = "v2/organizations/{organizationsId}/cmekSettings",
          httpMethod = "GET",
          id = "logging.organizations.getCmekSettings",
          parameterOrder = {
            "name",
          },
          parameters = {
            name = {
              description = "Required. The resource for which to retrieve CMEK settings. \"projects/[PROJECT_ID]/cmekSettings\" \"organizations/[ORGANIZATION_ID]/cmekSettings\" \"billingAccounts/[BILLING_ACCOUNT_ID]/cmekSettings\" \"folders/[FOLDER_ID]/cmekSettings\" For example:\"organizations/12345/cmekSettings\"Note: CMEK for the Log Router can be configured for Google Cloud projects, folders, organizations and billing accounts. Once configured for an organization, it applies to all projects and folders in the Google Cloud organization.",
              location = "path",
              pattern = "^organizations/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "v2/{+name}/cmekSettings",
          response = {
            ["$ref"] = "CmekSettings",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/cloud-platform.read-only",
            "https://www.googleapis.com/auth/logging.admin",
            "https://www.googleapis.com/auth/logging.read",
          },
        },
        getSettings = {
          description = "Gets the Log Router settings for the given resource.Note: Settings for the Log Router can be get for Google Cloud projects, folders, organizations and billing accounts. Currently it can only be configured for organizations. Once configured for an organization, it applies to all projects and folders in the Google Cloud organization.See Enabling CMEK for Log Router (https://cloud.google.com/logging/docs/routing/managed-encryption) for more information.",
          flatPath = "v2/organizations/{organizationsId}/settings",
          httpMethod = "GET",
          id = "logging.organizations.getSettings",
          parameterOrder = {
            "name",
          },
          parameters = {
            name = {
              description = "Required. The resource for which to retrieve settings. \"projects/[PROJECT_ID]/settings\" \"organizations/[ORGANIZATION_ID]/settings\" \"billingAccounts/[BILLING_ACCOUNT_ID]/settings\" \"folders/[FOLDER_ID]/settings\" For example:\"organizations/12345/settings\"Note: Settings for the Log Router can be get for Google Cloud projects, folders, organizations and billing accounts. Currently it can only be configured for organizations. Once configured for an organization, it applies to all projects and folders in the Google Cloud organization.",
              location = "path",
              pattern = "^organizations/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "v2/{+name}/settings",
          response = {
            ["$ref"] = "Settings",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/cloud-platform.read-only",
            "https://www.googleapis.com/auth/logging.admin",
            "https://www.googleapis.com/auth/logging.read",
          },
        },
        updateCmekSettings = {
          description = "Updates the Log Router CMEK settings for the given resource.Note: CMEK for the Log Router can currently only be configured for Google Cloud organizations. Once configured, it applies to all projects and folders in the Google Cloud organization.UpdateCmekSettings will fail if 1) kms_key_name is invalid, or 2) the associated service account does not have the required roles/cloudkms.cryptoKeyEncrypterDecrypter role assigned for the key, or 3) access to the key is disabled.See Enabling CMEK for Log Router (https://cloud.google.com/logging/docs/routing/managed-encryption) for more information.",
          flatPath = "v2/organizations/{organizationsId}/cmekSettings",
          httpMethod = "PATCH",
          id = "logging.organizations.updateCmekSettings",
          parameterOrder = {
            "name",
          },
          parameters = {
            name = {
              description = "Required. The resource name for the CMEK settings to update. \"projects/[PROJECT_ID]/cmekSettings\" \"organizations/[ORGANIZATION_ID]/cmekSettings\" \"billingAccounts/[BILLING_ACCOUNT_ID]/cmekSettings\" \"folders/[FOLDER_ID]/cmekSettings\" For example:\"organizations/12345/cmekSettings\"Note: CMEK for the Log Router can currently only be configured for Google Cloud organizations. Once configured, it applies to all projects and folders in the Google Cloud organization.",
              location = "path",
              pattern = "^organizations/[^/]+$",
              required = true,
              type = "string",
            },
            updateMask = {
              description = "Optional. Field mask identifying which fields from cmek_settings should be updated. A field will be overwritten if and only if it is in the update mask. Output only fields cannot be updated.See FieldMask for more information.For example: \"updateMask=kmsKeyName\"",
              format = "google-fieldmask",
              location = "query",
              type = "string",
            },
          },
          path = "v2/{+name}/cmekSettings",
          request = {
            ["$ref"] = "CmekSettings",
          },
          response = {
            ["$ref"] = "CmekSettings",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/logging.admin",
          },
        },
        updateSettings = {
          description = "Updates the Log Router settings for the given resource.Note: Settings for the Log Router can currently only be configured for Google Cloud organizations. Once configured, it applies to all projects and folders in the Google Cloud organization.UpdateSettings will fail if 1) kms_key_name is invalid, or 2) the associated service account does not have the required roles/cloudkms.cryptoKeyEncrypterDecrypter role assigned for the key, or 3) access to the key is disabled. 4) location_id is not supported by Logging. 5) location_id violate OrgPolicy.See Enabling CMEK for Log Router (https://cloud.google.com/logging/docs/routing/managed-encryption) for more information.",
          flatPath = "v2/organizations/{organizationsId}/settings",
          httpMethod = "PATCH",
          id = "logging.organizations.updateSettings",
          parameterOrder = {
            "name",
          },
          parameters = {
            name = {
              description = "Required. The resource name for the settings to update. \"organizations/[ORGANIZATION_ID]/settings\" For example:\"organizations/12345/settings\"Note: Settings for the Log Router can currently only be configured for Google Cloud organizations. Once configured, it applies to all projects and folders in the Google Cloud organization.",
              location = "path",
              pattern = "^organizations/[^/]+$",
              required = true,
              type = "string",
            },
            updateMask = {
              description = "Optional. Field mask identifying which fields from settings should be updated. A field will be overwritten if and only if it is in the update mask. Output only fields cannot be updated.See FieldMask for more information.For example: \"updateMask=kmsKeyName\"",
              format = "google-fieldmask",
              location = "query",
              type = "string",
            },
          },
          path = "v2/{+name}/settings",
          request = {
            ["$ref"] = "Settings",
          },
          response = {
            ["$ref"] = "Settings",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/logging.admin",
          },
        },
      },
      resources = {
        exclusions = {
          methods = {
            create = {
              description = "Creates a new exclusion in the _Default sink in a specified parent resource. Only log entries belonging to that resource can be excluded. You can have up to 10 exclusions in a resource.",
              flatPath = "v2/organizations/{organizationsId}/exclusions",
              httpMethod = "POST",
              id = "logging.organizations.exclusions.create",
              parameterOrder = {
                "parent",
              },
              parameters = {
                parent = {
                  description = "Required. The parent resource in which to create the exclusion: \"projects/[PROJECT_ID]\" \"organizations/[ORGANIZATION_ID]\" \"billingAccounts/[BILLING_ACCOUNT_ID]\" \"folders/[FOLDER_ID]\" For examples:\"projects/my-logging-project\" \"organizations/123456789\"",
                  location = "path",
                  pattern = "^organizations/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v2/{+parent}/exclusions",
              request = {
                ["$ref"] = "LogExclusion",
              },
              response = {
                ["$ref"] = "LogExclusion",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/logging.admin",
              },
            },
            delete = {
              description = "Deletes an exclusion in the _Default sink.",
              flatPath = "v2/organizations/{organizationsId}/exclusions/{exclusionsId}",
              httpMethod = "DELETE",
              id = "logging.organizations.exclusions.delete",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. The resource name of an existing exclusion to delete: \"projects/[PROJECT_ID]/exclusions/[EXCLUSION_ID]\" \"organizations/[ORGANIZATION_ID]/exclusions/[EXCLUSION_ID]\" \"billingAccounts/[BILLING_ACCOUNT_ID]/exclusions/[EXCLUSION_ID]\" \"folders/[FOLDER_ID]/exclusions/[EXCLUSION_ID]\" For example:\"projects/my-project/exclusions/my-exclusion\"",
                  location = "path",
                  pattern = "^organizations/[^/]+/exclusions/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v2/{+name}",
              response = {
                ["$ref"] = "Empty",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/logging.admin",
              },
            },
            get = {
              description = "Gets the description of an exclusion in the _Default sink.",
              flatPath = "v2/organizations/{organizationsId}/exclusions/{exclusionsId}",
              httpMethod = "GET",
              id = "logging.organizations.exclusions.get",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. The resource name of an existing exclusion: \"projects/[PROJECT_ID]/exclusions/[EXCLUSION_ID]\" \"organizations/[ORGANIZATION_ID]/exclusions/[EXCLUSION_ID]\" \"billingAccounts/[BILLING_ACCOUNT_ID]/exclusions/[EXCLUSION_ID]\" \"folders/[FOLDER_ID]/exclusions/[EXCLUSION_ID]\" For example:\"projects/my-project/exclusions/my-exclusion\"",
                  location = "path",
                  pattern = "^organizations/[^/]+/exclusions/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v2/{+name}",
              response = {
                ["$ref"] = "LogExclusion",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/cloud-platform.read-only",
                "https://www.googleapis.com/auth/logging.admin",
                "https://www.googleapis.com/auth/logging.read",
              },
            },
            list = {
              description = "Lists all the exclusions on the _Default sink in a parent resource.",
              flatPath = "v2/organizations/{organizationsId}/exclusions",
              httpMethod = "GET",
              id = "logging.organizations.exclusions.list",
              parameterOrder = {
                "parent",
              },
              parameters = {
                pageSize = {
                  description = "Optional. The maximum number of results to return from this request. Non-positive values are ignored. The presence of nextPageToken in the response indicates that more results might be available.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "Optional. If present, then retrieve the next batch of results from the preceding call to this method. pageToken must be the value of nextPageToken from the previous response. The values of other method parameters should be identical to those in the previous call.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "Required. The parent resource whose exclusions are to be listed. \"projects/[PROJECT_ID]\" \"organizations/[ORGANIZATION_ID]\" \"billingAccounts/[BILLING_ACCOUNT_ID]\" \"folders/[FOLDER_ID]\" ",
                  location = "path",
                  pattern = "^organizations/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v2/{+parent}/exclusions",
              response = {
                ["$ref"] = "ListExclusionsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/cloud-platform.read-only",
                "https://www.googleapis.com/auth/logging.admin",
                "https://www.googleapis.com/auth/logging.read",
              },
            },
            patch = {
              description = "Changes one or more properties of an existing exclusion in the _Default sink.",
              flatPath = "v2/organizations/{organizationsId}/exclusions/{exclusionsId}",
              httpMethod = "PATCH",
              id = "logging.organizations.exclusions.patch",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. The resource name of the exclusion to update: \"projects/[PROJECT_ID]/exclusions/[EXCLUSION_ID]\" \"organizations/[ORGANIZATION_ID]/exclusions/[EXCLUSION_ID]\" \"billingAccounts/[BILLING_ACCOUNT_ID]/exclusions/[EXCLUSION_ID]\" \"folders/[FOLDER_ID]/exclusions/[EXCLUSION_ID]\" For example:\"projects/my-project/exclusions/my-exclusion\"",
                  location = "path",
                  pattern = "^organizations/[^/]+/exclusions/[^/]+$",
                  required = true,
                  type = "string",
                },
                updateMask = {
                  description = "Required. A non-empty list of fields to change in the existing exclusion. New values for the fields are taken from the corresponding fields in the LogExclusion included in this request. Fields not mentioned in update_mask are not changed and are ignored in the request.For example, to change the filter and description of an exclusion, specify an update_mask of \"filter,description\".",
                  format = "google-fieldmask",
                  location = "query",
                  type = "string",
                },
              },
              path = "v2/{+name}",
              request = {
                ["$ref"] = "LogExclusion",
              },
              response = {
                ["$ref"] = "LogExclusion",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/logging.admin",
              },
            },
          },
        },
        locations = {
          methods = {
            get = {
              description = "Gets information about a location.",
              flatPath = "v2/organizations/{organizationsId}/locations/{locationsId}",
              httpMethod = "GET",
              id = "logging.organizations.locations.get",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Resource name for the location.",
                  location = "path",
                  pattern = "^organizations/[^/]+/locations/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v2/{+name}",
              response = {
                ["$ref"] = "Location",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/cloud-platform.read-only",
                "https://www.googleapis.com/auth/logging.admin",
                "https://www.googleapis.com/auth/logging.read",
              },
            },
            list = {
              description = "Lists information about the supported locations for this service.",
              flatPath = "v2/organizations/{organizationsId}/locations",
              httpMethod = "GET",
              id = "logging.organizations.locations.list",
              parameterOrder = {
                "name",
              },
              parameters = {
                filter = {
                  description = "A filter to narrow down results to a preferred subset. The filtering language accepts strings like \"displayName=tokyo\", and is documented in more detail in AIP-160 (https://google.aip.dev/160).",
                  location = "query",
                  type = "string",
                },
                name = {
                  description = "The resource that owns the locations collection, if applicable.",
                  location = "path",
                  pattern = "^organizations/[^/]+$",
                  required = true,
                  type = "string",
                },
                pageSize = {
                  description = "The maximum number of results to return. If not set, the service selects a default.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "A page token received from the next_page_token field in the response. Send that page token to receive the subsequent page.",
                  location = "query",
                  type = "string",
                },
              },
              path = "v2/{+name}/locations",
              response = {
                ["$ref"] = "ListLocationsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/cloud-platform.read-only",
                "https://www.googleapis.com/auth/logging.admin",
                "https://www.googleapis.com/auth/logging.read",
              },
            },
          },
          resources = {
            buckets = {
              methods = {
                create = {
                  description = "Creates a log bucket that can be used to store log entries. After a bucket has been created, the bucket's location cannot be changed.",
                  flatPath = "v2/organizations/{organizationsId}/locations/{locationsId}/buckets",
                  httpMethod = "POST",
                  id = "logging.organizations.locations.buckets.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    bucketId = {
                      description = "Required. A client-assigned identifier such as \"my-bucket\". Identifiers are limited to 100 characters and can include only letters, digits, underscores, hyphens, and periods.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The resource in which to create the log bucket: \"projects/[PROJECT_ID]/locations/[LOCATION_ID]\" For example:\"projects/my-project/locations/global\"",
                      location = "path",
                      pattern = "^organizations/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v2/{+parent}/buckets",
                  request = {
                    ["$ref"] = "LogBucket",
                  },
                  response = {
                    ["$ref"] = "LogBucket",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/logging.admin",
                  },
                },
                delete = {
                  description = "Deletes a log bucket.Changes the bucket's lifecycle_state to the DELETE_REQUESTED state. After 7 days, the bucket will be purged and all log entries in the bucket will be permanently deleted.",
                  flatPath = "v2/organizations/{organizationsId}/locations/{locationsId}/buckets/{bucketsId}",
                  httpMethod = "DELETE",
                  id = "logging.organizations.locations.buckets.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The full resource name of the bucket to delete. \"projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]\" \"organizations/[ORGANIZATION_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]\" \"billingAccounts/[BILLING_ACCOUNT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]\" \"folders/[FOLDER_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]\" For example:\"projects/my-project/locations/global/buckets/my-bucket\"",
                      location = "path",
                      pattern = "^organizations/[^/]+/locations/[^/]+/buckets/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v2/{+name}",
                  response = {
                    ["$ref"] = "Empty",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/logging.admin",
                  },
                },
                get = {
                  description = "Gets a log bucket.",
                  flatPath = "v2/organizations/{organizationsId}/locations/{locationsId}/buckets/{bucketsId}",
                  httpMethod = "GET",
                  id = "logging.organizations.locations.buckets.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The resource name of the bucket: \"projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]\" \"organizations/[ORGANIZATION_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]\" \"billingAccounts/[BILLING_ACCOUNT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]\" \"folders/[FOLDER_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]\" For example:\"projects/my-project/locations/global/buckets/my-bucket\"",
                      location = "path",
                      pattern = "^organizations/[^/]+/locations/[^/]+/buckets/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v2/{+name}",
                  response = {
                    ["$ref"] = "LogBucket",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/cloud-platform.read-only",
                    "https://www.googleapis.com/auth/logging.admin",
                    "https://www.googleapis.com/auth/logging.read",
                  },
                },
                list = {
                  description = "Lists log buckets.",
                  flatPath = "v2/organizations/{organizationsId}/locations/{locationsId}/buckets",
                  httpMethod = "GET",
                  id = "logging.organizations.locations.buckets.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    pageSize = {
                      description = "Optional. The maximum number of results to return from this request. Non-positive values are ignored. The presence of nextPageToken in the response indicates that more results might be available.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "Optional. If present, then retrieve the next batch of results from the preceding call to this method. pageToken must be the value of nextPageToken from the previous response. The values of other method parameters should be identical to those in the previous call.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The parent resource whose buckets are to be listed: \"projects/[PROJECT_ID]/locations/[LOCATION_ID]\" \"organizations/[ORGANIZATION_ID]/locations/[LOCATION_ID]\" \"billingAccounts/[BILLING_ACCOUNT_ID]/locations/[LOCATION_ID]\" \"folders/[FOLDER_ID]/locations/[LOCATION_ID]\" Note: The locations portion of the resource must be specified, but supplying the character - in place of LOCATION_ID will return all buckets.",
                      location = "path",
                      pattern = "^organizations/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v2/{+parent}/buckets",
                  response = {
                    ["$ref"] = "ListBucketsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/cloud-platform.read-only",
                    "https://www.googleapis.com/auth/logging.admin",
                    "https://www.googleapis.com/auth/logging.read",
                  },
                },
                patch = {
                  description = "Updates a log bucket. This method replaces the following fields in the existing bucket with values from the new bucket: retention_periodIf the retention period is decreased and the bucket is locked, FAILED_PRECONDITION will be returned.If the bucket has a lifecycle_state of DELETE_REQUESTED, then FAILED_PRECONDITION will be returned.After a bucket has been created, the bucket's location cannot be changed.",
                  flatPath = "v2/organizations/{organizationsId}/locations/{locationsId}/buckets/{bucketsId}",
                  httpMethod = "PATCH",
                  id = "logging.organizations.locations.buckets.patch",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The full resource name of the bucket to update. \"projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]\" \"organizations/[ORGANIZATION_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]\" \"billingAccounts/[BILLING_ACCOUNT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]\" \"folders/[FOLDER_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]\" For example:\"projects/my-project/locations/global/buckets/my-bucket\"",
                      location = "path",
                      pattern = "^organizations/[^/]+/locations/[^/]+/buckets/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    updateMask = {
                      description = "Required. Field mask that specifies the fields in bucket that need an update. A bucket field will be overwritten if, and only if, it is in the update mask. name and output only fields cannot be updated.For a detailed FieldMask definition, see: https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#google.protobuf.FieldMaskFor example: updateMask=retention_days",
                      format = "google-fieldmask",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v2/{+name}",
                  request = {
                    ["$ref"] = "LogBucket",
                  },
                  response = {
                    ["$ref"] = "LogBucket",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/logging.admin",
                  },
                },
                undelete = {
                  description = "Undeletes a log bucket. A bucket that has been deleted can be undeleted within the grace period of 7 days.",
                  flatPath = "v2/organizations/{organizationsId}/locations/{locationsId}/buckets/{bucketsId}:undelete",
                  httpMethod = "POST",
                  id = "logging.organizations.locations.buckets.undelete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The full resource name of the bucket to undelete. \"projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]\" \"organizations/[ORGANIZATION_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]\" \"billingAccounts/[BILLING_ACCOUNT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]\" \"folders/[FOLDER_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]\" For example:\"projects/my-project/locations/global/buckets/my-bucket\"",
                      location = "path",
                      pattern = "^organizations/[^/]+/locations/[^/]+/buckets/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v2/{+name}:undelete",
                  request = {
                    ["$ref"] = "UndeleteBucketRequest",
                  },
                  response = {
                    ["$ref"] = "Empty",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/logging.admin",
                  },
                },
              },
              resources = {
                views = {
                  methods = {
                    create = {
                      description = "Creates a view over log entries in a log bucket. A bucket may contain a maximum of 30 views.",
                      flatPath = "v2/organizations/{organizationsId}/locations/{locationsId}/buckets/{bucketsId}/views",
                      httpMethod = "POST",
                      id = "logging.organizations.locations.buckets.views.create",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        parent = {
                          description = "Required. The bucket in which to create the view `\"projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]\"` For example:\"projects/my-project/locations/global/buckets/my-bucket\"",
                          location = "path",
                          pattern = "^organizations/[^/]+/locations/[^/]+/buckets/[^/]+$",
                          required = true,
                          type = "string",
                        },
                        viewId = {
                          description = "Required. A client-assigned identifier such as \"my-view\". Identifiers are limited to 100 characters and can include only letters, digits, underscores, hyphens, and periods.",
                          location = "query",
                          type = "string",
                        },
                      },
                      path = "v2/{+parent}/views",
                      request = {
                        ["$ref"] = "LogView",
                      },
                      response = {
                        ["$ref"] = "LogView",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                        "https://www.googleapis.com/auth/logging.admin",
                      },
                    },
                    delete = {
                      description = "Deletes a view on a log bucket. If an UNAVAILABLE error is returned, this indicates that system is not in a state where it can delete the view. If this occurs, please try again in a few minutes.",
                      flatPath = "v2/organizations/{organizationsId}/locations/{locationsId}/buckets/{bucketsId}/views/{viewsId}",
                      httpMethod = "DELETE",
                      id = "logging.organizations.locations.buckets.views.delete",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The full resource name of the view to delete: \"projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]/views/[VIEW_ID]\" For example:\"projects/my-project/locations/global/buckets/my-bucket/views/my-view\"",
                          location = "path",
                          pattern = "^organizations/[^/]+/locations/[^/]+/buckets/[^/]+/views/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v2/{+name}",
                      response = {
                        ["$ref"] = "Empty",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                        "https://www.googleapis.com/auth/logging.admin",
                      },
                    },
                    get = {
                      description = "Gets a view on a log bucket..",
                      flatPath = "v2/organizations/{organizationsId}/locations/{locationsId}/buckets/{bucketsId}/views/{viewsId}",
                      httpMethod = "GET",
                      id = "logging.organizations.locations.buckets.views.get",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The resource name of the policy: \"projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]/views/[VIEW_ID]\" For example:\"projects/my-project/locations/global/buckets/my-bucket/views/my-view\"",
                          location = "path",
                          pattern = "^organizations/[^/]+/locations/[^/]+/buckets/[^/]+/views/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v2/{+name}",
                      response = {
                        ["$ref"] = "LogView",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                        "https://www.googleapis.com/auth/cloud-platform.read-only",
                        "https://www.googleapis.com/auth/logging.admin",
                        "https://www.googleapis.com/auth/logging.read",
                      },
                    },
                    list = {
                      description = "Lists views on a log bucket.",
                      flatPath = "v2/organizations/{organizationsId}/locations/{locationsId}/buckets/{bucketsId}/views",
                      httpMethod = "GET",
                      id = "logging.organizations.locations.buckets.views.list",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        pageSize = {
                          description = "Optional. The maximum number of results to return from this request.Non-positive values are ignored. The presence of nextPageToken in the response indicates that more results might be available.",
                          format = "int32",
                          location = "query",
                          type = "integer",
                        },
                        pageToken = {
                          description = "Optional. If present, then retrieve the next batch of results from the preceding call to this method. pageToken must be the value of nextPageToken from the previous response. The values of other method parameters should be identical to those in the previous call.",
                          location = "query",
                          type = "string",
                        },
                        parent = {
                          description = "Required. The bucket whose views are to be listed: \"projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]\" ",
                          location = "path",
                          pattern = "^organizations/[^/]+/locations/[^/]+/buckets/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v2/{+parent}/views",
                      response = {
                        ["$ref"] = "ListViewsResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                        "https://www.googleapis.com/auth/cloud-platform.read-only",
                        "https://www.googleapis.com/auth/logging.admin",
                        "https://www.googleapis.com/auth/logging.read",
                      },
                    },
                    patch = {
                      description = "Updates a view on a log bucket. This method replaces the following fields in the existing view with values from the new view: filter. If an UNAVAILABLE error is returned, this indicates that system is not in a state where it can update the view. If this occurs, please try again in a few minutes.",
                      flatPath = "v2/organizations/{organizationsId}/locations/{locationsId}/buckets/{bucketsId}/views/{viewsId}",
                      httpMethod = "PATCH",
                      id = "logging.organizations.locations.buckets.views.patch",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The full resource name of the view to update \"projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]/views/[VIEW_ID]\" For example:\"projects/my-project/locations/global/buckets/my-bucket/views/my-view\"",
                          location = "path",
                          pattern = "^organizations/[^/]+/locations/[^/]+/buckets/[^/]+/views/[^/]+$",
                          required = true,
                          type = "string",
                        },
                        updateMask = {
                          description = "Optional. Field mask that specifies the fields in view that need an update. A field will be overwritten if, and only if, it is in the update mask. name and output only fields cannot be updated.For a detailed FieldMask definition, see https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#google.protobuf.FieldMaskFor example: updateMask=filter",
                          format = "google-fieldmask",
                          location = "query",
                          type = "string",
                        },
                      },
                      path = "v2/{+name}",
                      request = {
                        ["$ref"] = "LogView",
                      },
                      response = {
                        ["$ref"] = "LogView",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                        "https://www.googleapis.com/auth/logging.admin",
                      },
                    },
                  },
                  resources = {
                    logs = {
                      methods = {
                        list = {
                          description = "Lists the logs in projects, organizations, folders, or billing accounts. Only logs that have entries are listed.",
                          flatPath = "v2/organizations/{organizationsId}/locations/{locationsId}/buckets/{bucketsId}/views/{viewsId}/logs",
                          httpMethod = "GET",
                          id = "logging.organizations.locations.buckets.views.logs.list",
                          parameterOrder = {
                            "parent",
                          },
                          parameters = {
                            pageSize = {
                              description = "Optional. The maximum number of results to return from this request. Non-positive values are ignored. The presence of nextPageToken in the response indicates that more results might be available.",
                              format = "int32",
                              location = "query",
                              type = "integer",
                            },
                            pageToken = {
                              description = "Optional. If present, then retrieve the next batch of results from the preceding call to this method. pageToken must be the value of nextPageToken from the previous response. The values of other method parameters should be identical to those in the previous call.",
                              location = "query",
                              type = "string",
                            },
                            parent = {
                              description = "Required. The resource name that owns the logs: projects/[PROJECT_ID] organizations/[ORGANIZATION_ID] billingAccounts/[BILLING_ACCOUNT_ID] folders/[FOLDER_ID]",
                              location = "path",
                              pattern = "^organizations/[^/]+/locations/[^/]+/buckets/[^/]+/views/[^/]+$",
                              required = true,
                              type = "string",
                            },
                            resourceNames = {
                              description = "Optional. The resource name that owns the logs: projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]/views/[VIEW_ID] organizations/[ORGANIZATION_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]/views/[VIEW_ID] billingAccounts/[BILLING_ACCOUNT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]/views/[VIEW_ID] folders/[FOLDER_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]/views/[VIEW_ID]To support legacy queries, it could also be: projects/[PROJECT_ID] organizations/[ORGANIZATION_ID] billingAccounts/[BILLING_ACCOUNT_ID] folders/[FOLDER_ID]",
                              location = "query",
                              repeated = true,
                              type = "string",
                            },
                          },
                          path = "v2/{+parent}/logs",
                          response = {
                            ["$ref"] = "ListLogsResponse",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                            "https://www.googleapis.com/auth/cloud-platform.read-only",
                            "https://www.googleapis.com/auth/logging.admin",
                            "https://www.googleapis.com/auth/logging.read",
                          },
                        },
                      },
                    },
                  },
                },
              },
            },
            operations = {
              methods = {
                cancel = {
                  description = "Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn't support this method, it returns google.rpc.Code.UNIMPLEMENTED. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of 1, corresponding to Code.CANCELLED.",
                  flatPath = "v2/organizations/{organizationsId}/locations/{locationsId}/operations/{operationsId}:cancel",
                  httpMethod = "POST",
                  id = "logging.organizations.locations.operations.cancel",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "The name of the operation resource to be cancelled.",
                      location = "path",
                      pattern = "^organizations/[^/]+/locations/[^/]+/operations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v2/{+name}:cancel",
                  request = {
                    ["$ref"] = "CancelOperationRequest",
                  },
                  response = {
                    ["$ref"] = "Empty",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/logging.admin",
                  },
                },
                get = {
                  description = "Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.",
                  flatPath = "v2/organizations/{organizationsId}/locations/{locationsId}/operations/{operationsId}",
                  httpMethod = "GET",
                  id = "logging.organizations.locations.operations.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "The name of the operation resource.",
                      location = "path",
                      pattern = "^organizations/[^/]+/locations/[^/]+/operations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v2/{+name}",
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/cloud-platform.read-only",
                    "https://www.googleapis.com/auth/logging.admin",
                    "https://www.googleapis.com/auth/logging.read",
                  },
                },
                list = {
                  description = "Lists operations that match the specified filter in the request. If the server doesn't support this method, it returns UNIMPLEMENTED.NOTE: the name binding allows API services to override the binding to use different resource name schemes, such as users/*/operations. To override the binding, API services can add a binding such as \"/v1/{name=users/*}/operations\" to their service configuration. For backwards compatibility, the default name includes the operations collection id, however overriding users must ensure the name binding is the parent resource, without the operations collection id.",
                  flatPath = "v2/organizations/{organizationsId}/locations/{locationsId}/operations",
                  httpMethod = "GET",
                  id = "logging.organizations.locations.operations.list",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    filter = {
                      description = "The standard list filter.",
                      location = "query",
                      type = "string",
                    },
                    name = {
                      description = "The name of the operation's parent resource.",
                      location = "path",
                      pattern = "^organizations/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    pageSize = {
                      description = "The standard list page size.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "The standard list page token.",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v2/{+name}/operations",
                  response = {
                    ["$ref"] = "ListOperationsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/cloud-platform.read-only",
                    "https://www.googleapis.com/auth/logging.admin",
                    "https://www.googleapis.com/auth/logging.read",
                  },
                },
              },
            },
          },
        },
        logs = {
          methods = {
            delete = {
              description = "Deletes all the log entries in a log for the _Default Log Bucket. The log reappears if it receives new entries. Log entries written shortly before the delete operation might not be deleted. Entries received after the delete operation with a timestamp before the operation will be deleted.",
              flatPath = "v2/organizations/{organizationsId}/logs/{logsId}",
              httpMethod = "DELETE",
              id = "logging.organizations.logs.delete",
              parameterOrder = {
                "logName",
              },
              parameters = {
                logName = {
                  description = "Required. The resource name of the log to delete: projects/[PROJECT_ID]/logs/[LOG_ID] organizations/[ORGANIZATION_ID]/logs/[LOG_ID] billingAccounts/[BILLING_ACCOUNT_ID]/logs/[LOG_ID] folders/[FOLDER_ID]/logs/[LOG_ID][LOG_ID] must be URL-encoded. For example, \"projects/my-project-id/logs/syslog\", \"organizations/123/logs/cloudaudit.googleapis.com%2Factivity\".For more information about log names, see LogEntry.",
                  location = "path",
                  pattern = "^organizations/[^/]+/logs/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v2/{+logName}",
              response = {
                ["$ref"] = "Empty",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/logging.admin",
              },
            },
            list = {
              description = "Lists the logs in projects, organizations, folders, or billing accounts. Only logs that have entries are listed.",
              flatPath = "v2/organizations/{organizationsId}/logs",
              httpMethod = "GET",
              id = "logging.organizations.logs.list",
              parameterOrder = {
                "parent",
              },
              parameters = {
                pageSize = {
                  description = "Optional. The maximum number of results to return from this request. Non-positive values are ignored. The presence of nextPageToken in the response indicates that more results might be available.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "Optional. If present, then retrieve the next batch of results from the preceding call to this method. pageToken must be the value of nextPageToken from the previous response. The values of other method parameters should be identical to those in the previous call.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "Required. The resource name that owns the logs: projects/[PROJECT_ID] organizations/[ORGANIZATION_ID] billingAccounts/[BILLING_ACCOUNT_ID] folders/[FOLDER_ID]",
                  location = "path",
                  pattern = "^organizations/[^/]+$",
                  required = true,
                  type = "string",
                },
                resourceNames = {
                  description = "Optional. The resource name that owns the logs: projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]/views/[VIEW_ID] organizations/[ORGANIZATION_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]/views/[VIEW_ID] billingAccounts/[BILLING_ACCOUNT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]/views/[VIEW_ID] folders/[FOLDER_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]/views/[VIEW_ID]To support legacy queries, it could also be: projects/[PROJECT_ID] organizations/[ORGANIZATION_ID] billingAccounts/[BILLING_ACCOUNT_ID] folders/[FOLDER_ID]",
                  location = "query",
                  repeated = true,
                  type = "string",
                },
              },
              path = "v2/{+parent}/logs",
              response = {
                ["$ref"] = "ListLogsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/cloud-platform.read-only",
                "https://www.googleapis.com/auth/logging.admin",
                "https://www.googleapis.com/auth/logging.read",
              },
            },
          },
        },
        sinks = {
          methods = {
            create = {
              description = "Creates a sink that exports specified log entries to a destination. The export of newly-ingested log entries begins immediately, unless the sink's writer_identity is not permitted to write to the destination. A sink can export log entries only from the resource owning the sink.",
              flatPath = "v2/organizations/{organizationsId}/sinks",
              httpMethod = "POST",
              id = "logging.organizations.sinks.create",
              parameterOrder = {
                "parent",
              },
              parameters = {
                parent = {
                  description = "Required. The resource in which to create the sink: \"projects/[PROJECT_ID]\" \"organizations/[ORGANIZATION_ID]\" \"billingAccounts/[BILLING_ACCOUNT_ID]\" \"folders/[FOLDER_ID]\" For examples:\"projects/my-project\" \"organizations/123456789\"",
                  location = "path",
                  pattern = "^organizations/[^/]+$",
                  required = true,
                  type = "string",
                },
                uniqueWriterIdentity = {
                  description = "Optional. Determines the kind of IAM identity returned as writer_identity in the new sink. If this value is omitted or set to false, and if the sink's parent is a project, then the value returned as writer_identity is the same group or service account used by Cloud Logging before the addition of writer identities to this API. The sink's destination must be in the same project as the sink itself.If this field is set to true, or if the sink is owned by a non-project resource such as an organization, then the value of writer_identity will be a unique service account used only for exports from the new sink. For more information, see writer_identity in LogSink.",
                  location = "query",
                  type = "boolean",
                },
              },
              path = "v2/{+parent}/sinks",
              request = {
                ["$ref"] = "LogSink",
              },
              response = {
                ["$ref"] = "LogSink",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/logging.admin",
              },
            },
            delete = {
              description = "Deletes a sink. If the sink has a unique writer_identity, then that service account is also deleted.",
              flatPath = "v2/organizations/{organizationsId}/sinks/{sinksId}",
              httpMethod = "DELETE",
              id = "logging.organizations.sinks.delete",
              parameterOrder = {
                "sinkName",
              },
              parameters = {
                sinkName = {
                  description = "Required. The full resource name of the sink to delete, including the parent resource and the sink identifier: \"projects/[PROJECT_ID]/sinks/[SINK_ID]\" \"organizations/[ORGANIZATION_ID]/sinks/[SINK_ID]\" \"billingAccounts/[BILLING_ACCOUNT_ID]/sinks/[SINK_ID]\" \"folders/[FOLDER_ID]/sinks/[SINK_ID]\" For example:\"projects/my-project/sinks/my-sink\"",
                  location = "path",
                  pattern = "^organizations/[^/]+/sinks/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v2/{+sinkName}",
              response = {
                ["$ref"] = "Empty",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/logging.admin",
              },
            },
            get = {
              description = "Gets a sink.",
              flatPath = "v2/organizations/{organizationsId}/sinks/{sinksId}",
              httpMethod = "GET",
              id = "logging.organizations.sinks.get",
              parameterOrder = {
                "sinkName",
              },
              parameters = {
                sinkName = {
                  description = "Required. The resource name of the sink: \"projects/[PROJECT_ID]/sinks/[SINK_ID]\" \"organizations/[ORGANIZATION_ID]/sinks/[SINK_ID]\" \"billingAccounts/[BILLING_ACCOUNT_ID]/sinks/[SINK_ID]\" \"folders/[FOLDER_ID]/sinks/[SINK_ID]\" For example:\"projects/my-project/sinks/my-sink\"",
                  location = "path",
                  pattern = "^organizations/[^/]+/sinks/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v2/{+sinkName}",
              response = {
                ["$ref"] = "LogSink",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/cloud-platform.read-only",
                "https://www.googleapis.com/auth/logging.admin",
                "https://www.googleapis.com/auth/logging.read",
              },
            },
            list = {
              description = "Lists sinks.",
              flatPath = "v2/organizations/{organizationsId}/sinks",
              httpMethod = "GET",
              id = "logging.organizations.sinks.list",
              parameterOrder = {
                "parent",
              },
              parameters = {
                pageSize = {
                  description = "Optional. The maximum number of results to return from this request. Non-positive values are ignored. The presence of nextPageToken in the response indicates that more results might be available.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "Optional. If present, then retrieve the next batch of results from the preceding call to this method. pageToken must be the value of nextPageToken from the previous response. The values of other method parameters should be identical to those in the previous call.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "Required. The parent resource whose sinks are to be listed: \"projects/[PROJECT_ID]\" \"organizations/[ORGANIZATION_ID]\" \"billingAccounts/[BILLING_ACCOUNT_ID]\" \"folders/[FOLDER_ID]\" ",
                  location = "path",
                  pattern = "^organizations/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v2/{+parent}/sinks",
              response = {
                ["$ref"] = "ListSinksResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/cloud-platform.read-only",
                "https://www.googleapis.com/auth/logging.admin",
                "https://www.googleapis.com/auth/logging.read",
              },
            },
            patch = {
              description = "Updates a sink. This method replaces the following fields in the existing sink with values from the new sink: destination, and filter.The updated sink might also have a new writer_identity; see the unique_writer_identity field.",
              flatPath = "v2/organizations/{organizationsId}/sinks/{sinksId}",
              httpMethod = "PATCH",
              id = "logging.organizations.sinks.patch",
              parameterOrder = {
                "sinkName",
              },
              parameters = {
                sinkName = {
                  description = "Required. The full resource name of the sink to update, including the parent resource and the sink identifier: \"projects/[PROJECT_ID]/sinks/[SINK_ID]\" \"organizations/[ORGANIZATION_ID]/sinks/[SINK_ID]\" \"billingAccounts/[BILLING_ACCOUNT_ID]/sinks/[SINK_ID]\" \"folders/[FOLDER_ID]/sinks/[SINK_ID]\" For example:\"projects/my-project/sinks/my-sink\"",
                  location = "path",
                  pattern = "^organizations/[^/]+/sinks/[^/]+$",
                  required = true,
                  type = "string",
                },
                uniqueWriterIdentity = {
                  description = "Optional. See sinks.create for a description of this field. When updating a sink, the effect of this field on the value of writer_identity in the updated sink depends on both the old and new values of this field: If the old and new values of this field are both false or both true, then there is no change to the sink's writer_identity. If the old value is false and the new value is true, then writer_identity is changed to a unique service account. It is an error if the old value is true and the new value is set to false or defaulted to false.",
                  location = "query",
                  type = "boolean",
                },
                updateMask = {
                  description = "Optional. Field mask that specifies the fields in sink that need an update. A sink field will be overwritten if, and only if, it is in the update mask. name and output only fields cannot be updated.An empty updateMask is temporarily treated as using the following mask for backwards compatibility purposes:destination,filter,includeChildrenAt some point in the future, behavior will be removed and specifying an empty updateMask will be an error.For a detailed FieldMask definition, see https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#google.protobuf.FieldMaskFor example: updateMask=filter",
                  format = "google-fieldmask",
                  location = "query",
                  type = "string",
                },
              },
              path = "v2/{+sinkName}",
              request = {
                ["$ref"] = "LogSink",
              },
              response = {
                ["$ref"] = "LogSink",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/logging.admin",
              },
            },
            update = {
              description = "Updates a sink. This method replaces the following fields in the existing sink with values from the new sink: destination, and filter.The updated sink might also have a new writer_identity; see the unique_writer_identity field.",
              flatPath = "v2/organizations/{organizationsId}/sinks/{sinksId}",
              httpMethod = "PUT",
              id = "logging.organizations.sinks.update",
              parameterOrder = {
                "sinkName",
              },
              parameters = {
                sinkName = {
                  description = "Required. The full resource name of the sink to update, including the parent resource and the sink identifier: \"projects/[PROJECT_ID]/sinks/[SINK_ID]\" \"organizations/[ORGANIZATION_ID]/sinks/[SINK_ID]\" \"billingAccounts/[BILLING_ACCOUNT_ID]/sinks/[SINK_ID]\" \"folders/[FOLDER_ID]/sinks/[SINK_ID]\" For example:\"projects/my-project/sinks/my-sink\"",
                  location = "path",
                  pattern = "^organizations/[^/]+/sinks/[^/]+$",
                  required = true,
                  type = "string",
                },
                uniqueWriterIdentity = {
                  description = "Optional. See sinks.create for a description of this field. When updating a sink, the effect of this field on the value of writer_identity in the updated sink depends on both the old and new values of this field: If the old and new values of this field are both false or both true, then there is no change to the sink's writer_identity. If the old value is false and the new value is true, then writer_identity is changed to a unique service account. It is an error if the old value is true and the new value is set to false or defaulted to false.",
                  location = "query",
                  type = "boolean",
                },
                updateMask = {
                  description = "Optional. Field mask that specifies the fields in sink that need an update. A sink field will be overwritten if, and only if, it is in the update mask. name and output only fields cannot be updated.An empty updateMask is temporarily treated as using the following mask for backwards compatibility purposes:destination,filter,includeChildrenAt some point in the future, behavior will be removed and specifying an empty updateMask will be an error.For a detailed FieldMask definition, see https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#google.protobuf.FieldMaskFor example: updateMask=filter",
                  format = "google-fieldmask",
                  location = "query",
                  type = "string",
                },
              },
              path = "v2/{+sinkName}",
              request = {
                ["$ref"] = "LogSink",
              },
              response = {
                ["$ref"] = "LogSink",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/logging.admin",
              },
            },
          },
        },
      },
    },
    projects = {
      methods = {
        getCmekSettings = {
          description = "Gets the Logging CMEK settings for the given resource.Note: CMEK for the Log Router can be configured for Google Cloud projects, folders, organizations and billing accounts. Once configured for an organization, it applies to all projects and folders in the Google Cloud organization.See Enabling CMEK for Log Router (https://cloud.google.com/logging/docs/routing/managed-encryption) for more information.",
          flatPath = "v2/projects/{projectsId}/cmekSettings",
          httpMethod = "GET",
          id = "logging.projects.getCmekSettings",
          parameterOrder = {
            "name",
          },
          parameters = {
            name = {
              description = "Required. The resource for which to retrieve CMEK settings. \"projects/[PROJECT_ID]/cmekSettings\" \"organizations/[ORGANIZATION_ID]/cmekSettings\" \"billingAccounts/[BILLING_ACCOUNT_ID]/cmekSettings\" \"folders/[FOLDER_ID]/cmekSettings\" For example:\"organizations/12345/cmekSettings\"Note: CMEK for the Log Router can be configured for Google Cloud projects, folders, organizations and billing accounts. Once configured for an organization, it applies to all projects and folders in the Google Cloud organization.",
              location = "path",
              pattern = "^projects/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "v2/{+name}/cmekSettings",
          response = {
            ["$ref"] = "CmekSettings",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/cloud-platform.read-only",
            "https://www.googleapis.com/auth/logging.admin",
            "https://www.googleapis.com/auth/logging.read",
          },
        },
        getSettings = {
          description = "Gets the Log Router settings for the given resource.Note: Settings for the Log Router can be get for Google Cloud projects, folders, organizations and billing accounts. Currently it can only be configured for organizations. Once configured for an organization, it applies to all projects and folders in the Google Cloud organization.See Enabling CMEK for Log Router (https://cloud.google.com/logging/docs/routing/managed-encryption) for more information.",
          flatPath = "v2/projects/{projectsId}/settings",
          httpMethod = "GET",
          id = "logging.projects.getSettings",
          parameterOrder = {
            "name",
          },
          parameters = {
            name = {
              description = "Required. The resource for which to retrieve settings. \"projects/[PROJECT_ID]/settings\" \"organizations/[ORGANIZATION_ID]/settings\" \"billingAccounts/[BILLING_ACCOUNT_ID]/settings\" \"folders/[FOLDER_ID]/settings\" For example:\"organizations/12345/settings\"Note: Settings for the Log Router can be get for Google Cloud projects, folders, organizations and billing accounts. Currently it can only be configured for organizations. Once configured for an organization, it applies to all projects and folders in the Google Cloud organization.",
              location = "path",
              pattern = "^projects/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "v2/{+name}/settings",
          response = {
            ["$ref"] = "Settings",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/cloud-platform.read-only",
            "https://www.googleapis.com/auth/logging.admin",
            "https://www.googleapis.com/auth/logging.read",
          },
        },
      },
      resources = {
        exclusions = {
          methods = {
            create = {
              description = "Creates a new exclusion in the _Default sink in a specified parent resource. Only log entries belonging to that resource can be excluded. You can have up to 10 exclusions in a resource.",
              flatPath = "v2/projects/{projectsId}/exclusions",
              httpMethod = "POST",
              id = "logging.projects.exclusions.create",
              parameterOrder = {
                "parent",
              },
              parameters = {
                parent = {
                  description = "Required. The parent resource in which to create the exclusion: \"projects/[PROJECT_ID]\" \"organizations/[ORGANIZATION_ID]\" \"billingAccounts/[BILLING_ACCOUNT_ID]\" \"folders/[FOLDER_ID]\" For examples:\"projects/my-logging-project\" \"organizations/123456789\"",
                  location = "path",
                  pattern = "^projects/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v2/{+parent}/exclusions",
              request = {
                ["$ref"] = "LogExclusion",
              },
              response = {
                ["$ref"] = "LogExclusion",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/logging.admin",
              },
            },
            delete = {
              description = "Deletes an exclusion in the _Default sink.",
              flatPath = "v2/projects/{projectsId}/exclusions/{exclusionsId}",
              httpMethod = "DELETE",
              id = "logging.projects.exclusions.delete",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. The resource name of an existing exclusion to delete: \"projects/[PROJECT_ID]/exclusions/[EXCLUSION_ID]\" \"organizations/[ORGANIZATION_ID]/exclusions/[EXCLUSION_ID]\" \"billingAccounts/[BILLING_ACCOUNT_ID]/exclusions/[EXCLUSION_ID]\" \"folders/[FOLDER_ID]/exclusions/[EXCLUSION_ID]\" For example:\"projects/my-project/exclusions/my-exclusion\"",
                  location = "path",
                  pattern = "^projects/[^/]+/exclusions/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v2/{+name}",
              response = {
                ["$ref"] = "Empty",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/logging.admin",
              },
            },
            get = {
              description = "Gets the description of an exclusion in the _Default sink.",
              flatPath = "v2/projects/{projectsId}/exclusions/{exclusionsId}",
              httpMethod = "GET",
              id = "logging.projects.exclusions.get",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. The resource name of an existing exclusion: \"projects/[PROJECT_ID]/exclusions/[EXCLUSION_ID]\" \"organizations/[ORGANIZATION_ID]/exclusions/[EXCLUSION_ID]\" \"billingAccounts/[BILLING_ACCOUNT_ID]/exclusions/[EXCLUSION_ID]\" \"folders/[FOLDER_ID]/exclusions/[EXCLUSION_ID]\" For example:\"projects/my-project/exclusions/my-exclusion\"",
                  location = "path",
                  pattern = "^projects/[^/]+/exclusions/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v2/{+name}",
              response = {
                ["$ref"] = "LogExclusion",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/cloud-platform.read-only",
                "https://www.googleapis.com/auth/logging.admin",
                "https://www.googleapis.com/auth/logging.read",
              },
            },
            list = {
              description = "Lists all the exclusions on the _Default sink in a parent resource.",
              flatPath = "v2/projects/{projectsId}/exclusions",
              httpMethod = "GET",
              id = "logging.projects.exclusions.list",
              parameterOrder = {
                "parent",
              },
              parameters = {
                pageSize = {
                  description = "Optional. The maximum number of results to return from this request. Non-positive values are ignored. The presence of nextPageToken in the response indicates that more results might be available.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "Optional. If present, then retrieve the next batch of results from the preceding call to this method. pageToken must be the value of nextPageToken from the previous response. The values of other method parameters should be identical to those in the previous call.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "Required. The parent resource whose exclusions are to be listed. \"projects/[PROJECT_ID]\" \"organizations/[ORGANIZATION_ID]\" \"billingAccounts/[BILLING_ACCOUNT_ID]\" \"folders/[FOLDER_ID]\" ",
                  location = "path",
                  pattern = "^projects/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v2/{+parent}/exclusions",
              response = {
                ["$ref"] = "ListExclusionsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/cloud-platform.read-only",
                "https://www.googleapis.com/auth/logging.admin",
                "https://www.googleapis.com/auth/logging.read",
              },
            },
            patch = {
              description = "Changes one or more properties of an existing exclusion in the _Default sink.",
              flatPath = "v2/projects/{projectsId}/exclusions/{exclusionsId}",
              httpMethod = "PATCH",
              id = "logging.projects.exclusions.patch",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. The resource name of the exclusion to update: \"projects/[PROJECT_ID]/exclusions/[EXCLUSION_ID]\" \"organizations/[ORGANIZATION_ID]/exclusions/[EXCLUSION_ID]\" \"billingAccounts/[BILLING_ACCOUNT_ID]/exclusions/[EXCLUSION_ID]\" \"folders/[FOLDER_ID]/exclusions/[EXCLUSION_ID]\" For example:\"projects/my-project/exclusions/my-exclusion\"",
                  location = "path",
                  pattern = "^projects/[^/]+/exclusions/[^/]+$",
                  required = true,
                  type = "string",
                },
                updateMask = {
                  description = "Required. A non-empty list of fields to change in the existing exclusion. New values for the fields are taken from the corresponding fields in the LogExclusion included in this request. Fields not mentioned in update_mask are not changed and are ignored in the request.For example, to change the filter and description of an exclusion, specify an update_mask of \"filter,description\".",
                  format = "google-fieldmask",
                  location = "query",
                  type = "string",
                },
              },
              path = "v2/{+name}",
              request = {
                ["$ref"] = "LogExclusion",
              },
              response = {
                ["$ref"] = "LogExclusion",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/logging.admin",
              },
            },
          },
        },
        locations = {
          methods = {
            get = {
              description = "Gets information about a location.",
              flatPath = "v2/projects/{projectsId}/locations/{locationsId}",
              httpMethod = "GET",
              id = "logging.projects.locations.get",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Resource name for the location.",
                  location = "path",
                  pattern = "^projects/[^/]+/locations/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v2/{+name}",
              response = {
                ["$ref"] = "Location",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/cloud-platform.read-only",
                "https://www.googleapis.com/auth/logging.admin",
                "https://www.googleapis.com/auth/logging.read",
              },
            },
            list = {
              description = "Lists information about the supported locations for this service.",
              flatPath = "v2/projects/{projectsId}/locations",
              httpMethod = "GET",
              id = "logging.projects.locations.list",
              parameterOrder = {
                "name",
              },
              parameters = {
                filter = {
                  description = "A filter to narrow down results to a preferred subset. The filtering language accepts strings like \"displayName=tokyo\", and is documented in more detail in AIP-160 (https://google.aip.dev/160).",
                  location = "query",
                  type = "string",
                },
                name = {
                  description = "The resource that owns the locations collection, if applicable.",
                  location = "path",
                  pattern = "^projects/[^/]+$",
                  required = true,
                  type = "string",
                },
                pageSize = {
                  description = "The maximum number of results to return. If not set, the service selects a default.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "A page token received from the next_page_token field in the response. Send that page token to receive the subsequent page.",
                  location = "query",
                  type = "string",
                },
              },
              path = "v2/{+name}/locations",
              response = {
                ["$ref"] = "ListLocationsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/cloud-platform.read-only",
                "https://www.googleapis.com/auth/logging.admin",
                "https://www.googleapis.com/auth/logging.read",
              },
            },
          },
          resources = {
            buckets = {
              methods = {
                create = {
                  description = "Creates a log bucket that can be used to store log entries. After a bucket has been created, the bucket's location cannot be changed.",
                  flatPath = "v2/projects/{projectsId}/locations/{locationsId}/buckets",
                  httpMethod = "POST",
                  id = "logging.projects.locations.buckets.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    bucketId = {
                      description = "Required. A client-assigned identifier such as \"my-bucket\". Identifiers are limited to 100 characters and can include only letters, digits, underscores, hyphens, and periods.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The resource in which to create the log bucket: \"projects/[PROJECT_ID]/locations/[LOCATION_ID]\" For example:\"projects/my-project/locations/global\"",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v2/{+parent}/buckets",
                  request = {
                    ["$ref"] = "LogBucket",
                  },
                  response = {
                    ["$ref"] = "LogBucket",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/logging.admin",
                  },
                },
                delete = {
                  description = "Deletes a log bucket.Changes the bucket's lifecycle_state to the DELETE_REQUESTED state. After 7 days, the bucket will be purged and all log entries in the bucket will be permanently deleted.",
                  flatPath = "v2/projects/{projectsId}/locations/{locationsId}/buckets/{bucketsId}",
                  httpMethod = "DELETE",
                  id = "logging.projects.locations.buckets.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The full resource name of the bucket to delete. \"projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]\" \"organizations/[ORGANIZATION_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]\" \"billingAccounts/[BILLING_ACCOUNT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]\" \"folders/[FOLDER_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]\" For example:\"projects/my-project/locations/global/buckets/my-bucket\"",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/buckets/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v2/{+name}",
                  response = {
                    ["$ref"] = "Empty",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/logging.admin",
                  },
                },
                get = {
                  description = "Gets a log bucket.",
                  flatPath = "v2/projects/{projectsId}/locations/{locationsId}/buckets/{bucketsId}",
                  httpMethod = "GET",
                  id = "logging.projects.locations.buckets.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The resource name of the bucket: \"projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]\" \"organizations/[ORGANIZATION_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]\" \"billingAccounts/[BILLING_ACCOUNT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]\" \"folders/[FOLDER_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]\" For example:\"projects/my-project/locations/global/buckets/my-bucket\"",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/buckets/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v2/{+name}",
                  response = {
                    ["$ref"] = "LogBucket",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/cloud-platform.read-only",
                    "https://www.googleapis.com/auth/logging.admin",
                    "https://www.googleapis.com/auth/logging.read",
                  },
                },
                list = {
                  description = "Lists log buckets.",
                  flatPath = "v2/projects/{projectsId}/locations/{locationsId}/buckets",
                  httpMethod = "GET",
                  id = "logging.projects.locations.buckets.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    pageSize = {
                      description = "Optional. The maximum number of results to return from this request. Non-positive values are ignored. The presence of nextPageToken in the response indicates that more results might be available.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "Optional. If present, then retrieve the next batch of results from the preceding call to this method. pageToken must be the value of nextPageToken from the previous response. The values of other method parameters should be identical to those in the previous call.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The parent resource whose buckets are to be listed: \"projects/[PROJECT_ID]/locations/[LOCATION_ID]\" \"organizations/[ORGANIZATION_ID]/locations/[LOCATION_ID]\" \"billingAccounts/[BILLING_ACCOUNT_ID]/locations/[LOCATION_ID]\" \"folders/[FOLDER_ID]/locations/[LOCATION_ID]\" Note: The locations portion of the resource must be specified, but supplying the character - in place of LOCATION_ID will return all buckets.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v2/{+parent}/buckets",
                  response = {
                    ["$ref"] = "ListBucketsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/cloud-platform.read-only",
                    "https://www.googleapis.com/auth/logging.admin",
                    "https://www.googleapis.com/auth/logging.read",
                  },
                },
                patch = {
                  description = "Updates a log bucket. This method replaces the following fields in the existing bucket with values from the new bucket: retention_periodIf the retention period is decreased and the bucket is locked, FAILED_PRECONDITION will be returned.If the bucket has a lifecycle_state of DELETE_REQUESTED, then FAILED_PRECONDITION will be returned.After a bucket has been created, the bucket's location cannot be changed.",
                  flatPath = "v2/projects/{projectsId}/locations/{locationsId}/buckets/{bucketsId}",
                  httpMethod = "PATCH",
                  id = "logging.projects.locations.buckets.patch",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The full resource name of the bucket to update. \"projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]\" \"organizations/[ORGANIZATION_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]\" \"billingAccounts/[BILLING_ACCOUNT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]\" \"folders/[FOLDER_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]\" For example:\"projects/my-project/locations/global/buckets/my-bucket\"",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/buckets/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    updateMask = {
                      description = "Required. Field mask that specifies the fields in bucket that need an update. A bucket field will be overwritten if, and only if, it is in the update mask. name and output only fields cannot be updated.For a detailed FieldMask definition, see: https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#google.protobuf.FieldMaskFor example: updateMask=retention_days",
                      format = "google-fieldmask",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v2/{+name}",
                  request = {
                    ["$ref"] = "LogBucket",
                  },
                  response = {
                    ["$ref"] = "LogBucket",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/logging.admin",
                  },
                },
                undelete = {
                  description = "Undeletes a log bucket. A bucket that has been deleted can be undeleted within the grace period of 7 days.",
                  flatPath = "v2/projects/{projectsId}/locations/{locationsId}/buckets/{bucketsId}:undelete",
                  httpMethod = "POST",
                  id = "logging.projects.locations.buckets.undelete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The full resource name of the bucket to undelete. \"projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]\" \"organizations/[ORGANIZATION_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]\" \"billingAccounts/[BILLING_ACCOUNT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]\" \"folders/[FOLDER_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]\" For example:\"projects/my-project/locations/global/buckets/my-bucket\"",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/buckets/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v2/{+name}:undelete",
                  request = {
                    ["$ref"] = "UndeleteBucketRequest",
                  },
                  response = {
                    ["$ref"] = "Empty",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/logging.admin",
                  },
                },
              },
              resources = {
                views = {
                  methods = {
                    create = {
                      description = "Creates a view over log entries in a log bucket. A bucket may contain a maximum of 30 views.",
                      flatPath = "v2/projects/{projectsId}/locations/{locationsId}/buckets/{bucketsId}/views",
                      httpMethod = "POST",
                      id = "logging.projects.locations.buckets.views.create",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        parent = {
                          description = "Required. The bucket in which to create the view `\"projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]\"` For example:\"projects/my-project/locations/global/buckets/my-bucket\"",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/buckets/[^/]+$",
                          required = true,
                          type = "string",
                        },
                        viewId = {
                          description = "Required. A client-assigned identifier such as \"my-view\". Identifiers are limited to 100 characters and can include only letters, digits, underscores, hyphens, and periods.",
                          location = "query",
                          type = "string",
                        },
                      },
                      path = "v2/{+parent}/views",
                      request = {
                        ["$ref"] = "LogView",
                      },
                      response = {
                        ["$ref"] = "LogView",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                        "https://www.googleapis.com/auth/logging.admin",
                      },
                    },
                    delete = {
                      description = "Deletes a view on a log bucket. If an UNAVAILABLE error is returned, this indicates that system is not in a state where it can delete the view. If this occurs, please try again in a few minutes.",
                      flatPath = "v2/projects/{projectsId}/locations/{locationsId}/buckets/{bucketsId}/views/{viewsId}",
                      httpMethod = "DELETE",
                      id = "logging.projects.locations.buckets.views.delete",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The full resource name of the view to delete: \"projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]/views/[VIEW_ID]\" For example:\"projects/my-project/locations/global/buckets/my-bucket/views/my-view\"",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/buckets/[^/]+/views/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v2/{+name}",
                      response = {
                        ["$ref"] = "Empty",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                        "https://www.googleapis.com/auth/logging.admin",
                      },
                    },
                    get = {
                      description = "Gets a view on a log bucket..",
                      flatPath = "v2/projects/{projectsId}/locations/{locationsId}/buckets/{bucketsId}/views/{viewsId}",
                      httpMethod = "GET",
                      id = "logging.projects.locations.buckets.views.get",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The resource name of the policy: \"projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]/views/[VIEW_ID]\" For example:\"projects/my-project/locations/global/buckets/my-bucket/views/my-view\"",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/buckets/[^/]+/views/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v2/{+name}",
                      response = {
                        ["$ref"] = "LogView",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                        "https://www.googleapis.com/auth/cloud-platform.read-only",
                        "https://www.googleapis.com/auth/logging.admin",
                        "https://www.googleapis.com/auth/logging.read",
                      },
                    },
                    list = {
                      description = "Lists views on a log bucket.",
                      flatPath = "v2/projects/{projectsId}/locations/{locationsId}/buckets/{bucketsId}/views",
                      httpMethod = "GET",
                      id = "logging.projects.locations.buckets.views.list",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        pageSize = {
                          description = "Optional. The maximum number of results to return from this request.Non-positive values are ignored. The presence of nextPageToken in the response indicates that more results might be available.",
                          format = "int32",
                          location = "query",
                          type = "integer",
                        },
                        pageToken = {
                          description = "Optional. If present, then retrieve the next batch of results from the preceding call to this method. pageToken must be the value of nextPageToken from the previous response. The values of other method parameters should be identical to those in the previous call.",
                          location = "query",
                          type = "string",
                        },
                        parent = {
                          description = "Required. The bucket whose views are to be listed: \"projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]\" ",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/buckets/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v2/{+parent}/views",
                      response = {
                        ["$ref"] = "ListViewsResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                        "https://www.googleapis.com/auth/cloud-platform.read-only",
                        "https://www.googleapis.com/auth/logging.admin",
                        "https://www.googleapis.com/auth/logging.read",
                      },
                    },
                    patch = {
                      description = "Updates a view on a log bucket. This method replaces the following fields in the existing view with values from the new view: filter. If an UNAVAILABLE error is returned, this indicates that system is not in a state where it can update the view. If this occurs, please try again in a few minutes.",
                      flatPath = "v2/projects/{projectsId}/locations/{locationsId}/buckets/{bucketsId}/views/{viewsId}",
                      httpMethod = "PATCH",
                      id = "logging.projects.locations.buckets.views.patch",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The full resource name of the view to update \"projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]/views/[VIEW_ID]\" For example:\"projects/my-project/locations/global/buckets/my-bucket/views/my-view\"",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/buckets/[^/]+/views/[^/]+$",
                          required = true,
                          type = "string",
                        },
                        updateMask = {
                          description = "Optional. Field mask that specifies the fields in view that need an update. A field will be overwritten if, and only if, it is in the update mask. name and output only fields cannot be updated.For a detailed FieldMask definition, see https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#google.protobuf.FieldMaskFor example: updateMask=filter",
                          format = "google-fieldmask",
                          location = "query",
                          type = "string",
                        },
                      },
                      path = "v2/{+name}",
                      request = {
                        ["$ref"] = "LogView",
                      },
                      response = {
                        ["$ref"] = "LogView",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                        "https://www.googleapis.com/auth/logging.admin",
                      },
                    },
                  },
                  resources = {
                    logs = {
                      methods = {
                        list = {
                          description = "Lists the logs in projects, organizations, folders, or billing accounts. Only logs that have entries are listed.",
                          flatPath = "v2/projects/{projectsId}/locations/{locationsId}/buckets/{bucketsId}/views/{viewsId}/logs",
                          httpMethod = "GET",
                          id = "logging.projects.locations.buckets.views.logs.list",
                          parameterOrder = {
                            "parent",
                          },
                          parameters = {
                            pageSize = {
                              description = "Optional. The maximum number of results to return from this request. Non-positive values are ignored. The presence of nextPageToken in the response indicates that more results might be available.",
                              format = "int32",
                              location = "query",
                              type = "integer",
                            },
                            pageToken = {
                              description = "Optional. If present, then retrieve the next batch of results from the preceding call to this method. pageToken must be the value of nextPageToken from the previous response. The values of other method parameters should be identical to those in the previous call.",
                              location = "query",
                              type = "string",
                            },
                            parent = {
                              description = "Required. The resource name that owns the logs: projects/[PROJECT_ID] organizations/[ORGANIZATION_ID] billingAccounts/[BILLING_ACCOUNT_ID] folders/[FOLDER_ID]",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/buckets/[^/]+/views/[^/]+$",
                              required = true,
                              type = "string",
                            },
                            resourceNames = {
                              description = "Optional. The resource name that owns the logs: projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]/views/[VIEW_ID] organizations/[ORGANIZATION_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]/views/[VIEW_ID] billingAccounts/[BILLING_ACCOUNT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]/views/[VIEW_ID] folders/[FOLDER_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]/views/[VIEW_ID]To support legacy queries, it could also be: projects/[PROJECT_ID] organizations/[ORGANIZATION_ID] billingAccounts/[BILLING_ACCOUNT_ID] folders/[FOLDER_ID]",
                              location = "query",
                              repeated = true,
                              type = "string",
                            },
                          },
                          path = "v2/{+parent}/logs",
                          response = {
                            ["$ref"] = "ListLogsResponse",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                            "https://www.googleapis.com/auth/cloud-platform.read-only",
                            "https://www.googleapis.com/auth/logging.admin",
                            "https://www.googleapis.com/auth/logging.read",
                          },
                        },
                      },
                    },
                  },
                },
              },
            },
            operations = {
              methods = {
                cancel = {
                  description = "Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn't support this method, it returns google.rpc.Code.UNIMPLEMENTED. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of 1, corresponding to Code.CANCELLED.",
                  flatPath = "v2/projects/{projectsId}/locations/{locationsId}/operations/{operationsId}:cancel",
                  httpMethod = "POST",
                  id = "logging.projects.locations.operations.cancel",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "The name of the operation resource to be cancelled.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/operations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v2/{+name}:cancel",
                  request = {
                    ["$ref"] = "CancelOperationRequest",
                  },
                  response = {
                    ["$ref"] = "Empty",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/logging.admin",
                  },
                },
                get = {
                  description = "Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.",
                  flatPath = "v2/projects/{projectsId}/locations/{locationsId}/operations/{operationsId}",
                  httpMethod = "GET",
                  id = "logging.projects.locations.operations.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "The name of the operation resource.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/operations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v2/{+name}",
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/cloud-platform.read-only",
                    "https://www.googleapis.com/auth/logging.admin",
                    "https://www.googleapis.com/auth/logging.read",
                  },
                },
                list = {
                  description = "Lists operations that match the specified filter in the request. If the server doesn't support this method, it returns UNIMPLEMENTED.NOTE: the name binding allows API services to override the binding to use different resource name schemes, such as users/*/operations. To override the binding, API services can add a binding such as \"/v1/{name=users/*}/operations\" to their service configuration. For backwards compatibility, the default name includes the operations collection id, however overriding users must ensure the name binding is the parent resource, without the operations collection id.",
                  flatPath = "v2/projects/{projectsId}/locations/{locationsId}/operations",
                  httpMethod = "GET",
                  id = "logging.projects.locations.operations.list",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    filter = {
                      description = "The standard list filter.",
                      location = "query",
                      type = "string",
                    },
                    name = {
                      description = "The name of the operation's parent resource.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    pageSize = {
                      description = "The standard list page size.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "The standard list page token.",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v2/{+name}/operations",
                  response = {
                    ["$ref"] = "ListOperationsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/cloud-platform.read-only",
                    "https://www.googleapis.com/auth/logging.admin",
                    "https://www.googleapis.com/auth/logging.read",
                  },
                },
              },
            },
          },
        },
        logs = {
          methods = {
            delete = {
              description = "Deletes all the log entries in a log for the _Default Log Bucket. The log reappears if it receives new entries. Log entries written shortly before the delete operation might not be deleted. Entries received after the delete operation with a timestamp before the operation will be deleted.",
              flatPath = "v2/projects/{projectsId}/logs/{logsId}",
              httpMethod = "DELETE",
              id = "logging.projects.logs.delete",
              parameterOrder = {
                "logName",
              },
              parameters = {
                logName = {
                  description = "Required. The resource name of the log to delete: projects/[PROJECT_ID]/logs/[LOG_ID] organizations/[ORGANIZATION_ID]/logs/[LOG_ID] billingAccounts/[BILLING_ACCOUNT_ID]/logs/[LOG_ID] folders/[FOLDER_ID]/logs/[LOG_ID][LOG_ID] must be URL-encoded. For example, \"projects/my-project-id/logs/syslog\", \"organizations/123/logs/cloudaudit.googleapis.com%2Factivity\".For more information about log names, see LogEntry.",
                  location = "path",
                  pattern = "^projects/[^/]+/logs/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v2/{+logName}",
              response = {
                ["$ref"] = "Empty",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/logging.admin",
              },
            },
            list = {
              description = "Lists the logs in projects, organizations, folders, or billing accounts. Only logs that have entries are listed.",
              flatPath = "v2/projects/{projectsId}/logs",
              httpMethod = "GET",
              id = "logging.projects.logs.list",
              parameterOrder = {
                "parent",
              },
              parameters = {
                pageSize = {
                  description = "Optional. The maximum number of results to return from this request. Non-positive values are ignored. The presence of nextPageToken in the response indicates that more results might be available.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "Optional. If present, then retrieve the next batch of results from the preceding call to this method. pageToken must be the value of nextPageToken from the previous response. The values of other method parameters should be identical to those in the previous call.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "Required. The resource name that owns the logs: projects/[PROJECT_ID] organizations/[ORGANIZATION_ID] billingAccounts/[BILLING_ACCOUNT_ID] folders/[FOLDER_ID]",
                  location = "path",
                  pattern = "^projects/[^/]+$",
                  required = true,
                  type = "string",
                },
                resourceNames = {
                  description = "Optional. The resource name that owns the logs: projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]/views/[VIEW_ID] organizations/[ORGANIZATION_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]/views/[VIEW_ID] billingAccounts/[BILLING_ACCOUNT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]/views/[VIEW_ID] folders/[FOLDER_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]/views/[VIEW_ID]To support legacy queries, it could also be: projects/[PROJECT_ID] organizations/[ORGANIZATION_ID] billingAccounts/[BILLING_ACCOUNT_ID] folders/[FOLDER_ID]",
                  location = "query",
                  repeated = true,
                  type = "string",
                },
              },
              path = "v2/{+parent}/logs",
              response = {
                ["$ref"] = "ListLogsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/cloud-platform.read-only",
                "https://www.googleapis.com/auth/logging.admin",
                "https://www.googleapis.com/auth/logging.read",
              },
            },
          },
        },
        metrics = {
          methods = {
            create = {
              description = "Creates a logs-based metric.",
              flatPath = "v2/projects/{projectsId}/metrics",
              httpMethod = "POST",
              id = "logging.projects.metrics.create",
              parameterOrder = {
                "parent",
              },
              parameters = {
                parent = {
                  description = "Required. The resource name of the project in which to create the metric: \"projects/[PROJECT_ID]\" The new metric must be provided in the request.",
                  location = "path",
                  pattern = "^projects/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v2/{+parent}/metrics",
              request = {
                ["$ref"] = "LogMetric",
              },
              response = {
                ["$ref"] = "LogMetric",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/logging.admin",
                "https://www.googleapis.com/auth/logging.write",
              },
            },
            delete = {
              description = "Deletes a logs-based metric.",
              flatPath = "v2/projects/{projectsId}/metrics/{metricsId}",
              httpMethod = "DELETE",
              id = "logging.projects.metrics.delete",
              parameterOrder = {
                "metricName",
              },
              parameters = {
                metricName = {
                  description = "Required. The resource name of the metric to delete: \"projects/[PROJECT_ID]/metrics/[METRIC_ID]\" ",
                  location = "path",
                  pattern = "^projects/[^/]+/metrics/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v2/{+metricName}",
              response = {
                ["$ref"] = "Empty",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/logging.admin",
                "https://www.googleapis.com/auth/logging.write",
              },
            },
            get = {
              description = "Gets a logs-based metric.",
              flatPath = "v2/projects/{projectsId}/metrics/{metricsId}",
              httpMethod = "GET",
              id = "logging.projects.metrics.get",
              parameterOrder = {
                "metricName",
              },
              parameters = {
                metricName = {
                  description = "Required. The resource name of the desired metric: \"projects/[PROJECT_ID]/metrics/[METRIC_ID]\" ",
                  location = "path",
                  pattern = "^projects/[^/]+/metrics/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v2/{+metricName}",
              response = {
                ["$ref"] = "LogMetric",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/cloud-platform.read-only",
                "https://www.googleapis.com/auth/logging.admin",
                "https://www.googleapis.com/auth/logging.read",
              },
            },
            list = {
              description = "Lists logs-based metrics.",
              flatPath = "v2/projects/{projectsId}/metrics",
              httpMethod = "GET",
              id = "logging.projects.metrics.list",
              parameterOrder = {
                "parent",
              },
              parameters = {
                pageSize = {
                  description = "Optional. The maximum number of results to return from this request. Non-positive values are ignored. The presence of nextPageToken in the response indicates that more results might be available.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "Optional. If present, then retrieve the next batch of results from the preceding call to this method. pageToken must be the value of nextPageToken from the previous response. The values of other method parameters should be identical to those in the previous call.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "Required. The name of the project containing the metrics: \"projects/[PROJECT_ID]\" ",
                  location = "path",
                  pattern = "^projects/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v2/{+parent}/metrics",
              response = {
                ["$ref"] = "ListLogMetricsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/cloud-platform.read-only",
                "https://www.googleapis.com/auth/logging.admin",
                "https://www.googleapis.com/auth/logging.read",
              },
            },
            update = {
              description = "Creates or updates a logs-based metric.",
              flatPath = "v2/projects/{projectsId}/metrics/{metricsId}",
              httpMethod = "PUT",
              id = "logging.projects.metrics.update",
              parameterOrder = {
                "metricName",
              },
              parameters = {
                metricName = {
                  description = "Required. The resource name of the metric to update: \"projects/[PROJECT_ID]/metrics/[METRIC_ID]\" The updated metric must be provided in the request and it's name field must be the same as [METRIC_ID] If the metric does not exist in [PROJECT_ID], then a new metric is created.",
                  location = "path",
                  pattern = "^projects/[^/]+/metrics/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v2/{+metricName}",
              request = {
                ["$ref"] = "LogMetric",
              },
              response = {
                ["$ref"] = "LogMetric",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/logging.admin",
                "https://www.googleapis.com/auth/logging.write",
              },
            },
          },
        },
        sinks = {
          methods = {
            create = {
              description = "Creates a sink that exports specified log entries to a destination. The export of newly-ingested log entries begins immediately, unless the sink's writer_identity is not permitted to write to the destination. A sink can export log entries only from the resource owning the sink.",
              flatPath = "v2/projects/{projectsId}/sinks",
              httpMethod = "POST",
              id = "logging.projects.sinks.create",
              parameterOrder = {
                "parent",
              },
              parameters = {
                parent = {
                  description = "Required. The resource in which to create the sink: \"projects/[PROJECT_ID]\" \"organizations/[ORGANIZATION_ID]\" \"billingAccounts/[BILLING_ACCOUNT_ID]\" \"folders/[FOLDER_ID]\" For examples:\"projects/my-project\" \"organizations/123456789\"",
                  location = "path",
                  pattern = "^projects/[^/]+$",
                  required = true,
                  type = "string",
                },
                uniqueWriterIdentity = {
                  description = "Optional. Determines the kind of IAM identity returned as writer_identity in the new sink. If this value is omitted or set to false, and if the sink's parent is a project, then the value returned as writer_identity is the same group or service account used by Cloud Logging before the addition of writer identities to this API. The sink's destination must be in the same project as the sink itself.If this field is set to true, or if the sink is owned by a non-project resource such as an organization, then the value of writer_identity will be a unique service account used only for exports from the new sink. For more information, see writer_identity in LogSink.",
                  location = "query",
                  type = "boolean",
                },
              },
              path = "v2/{+parent}/sinks",
              request = {
                ["$ref"] = "LogSink",
              },
              response = {
                ["$ref"] = "LogSink",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/logging.admin",
              },
            },
            delete = {
              description = "Deletes a sink. If the sink has a unique writer_identity, then that service account is also deleted.",
              flatPath = "v2/projects/{projectsId}/sinks/{sinksId}",
              httpMethod = "DELETE",
              id = "logging.projects.sinks.delete",
              parameterOrder = {
                "sinkName",
              },
              parameters = {
                sinkName = {
                  description = "Required. The full resource name of the sink to delete, including the parent resource and the sink identifier: \"projects/[PROJECT_ID]/sinks/[SINK_ID]\" \"organizations/[ORGANIZATION_ID]/sinks/[SINK_ID]\" \"billingAccounts/[BILLING_ACCOUNT_ID]/sinks/[SINK_ID]\" \"folders/[FOLDER_ID]/sinks/[SINK_ID]\" For example:\"projects/my-project/sinks/my-sink\"",
                  location = "path",
                  pattern = "^projects/[^/]+/sinks/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v2/{+sinkName}",
              response = {
                ["$ref"] = "Empty",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/logging.admin",
              },
            },
            get = {
              description = "Gets a sink.",
              flatPath = "v2/projects/{projectsId}/sinks/{sinksId}",
              httpMethod = "GET",
              id = "logging.projects.sinks.get",
              parameterOrder = {
                "sinkName",
              },
              parameters = {
                sinkName = {
                  description = "Required. The resource name of the sink: \"projects/[PROJECT_ID]/sinks/[SINK_ID]\" \"organizations/[ORGANIZATION_ID]/sinks/[SINK_ID]\" \"billingAccounts/[BILLING_ACCOUNT_ID]/sinks/[SINK_ID]\" \"folders/[FOLDER_ID]/sinks/[SINK_ID]\" For example:\"projects/my-project/sinks/my-sink\"",
                  location = "path",
                  pattern = "^projects/[^/]+/sinks/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v2/{+sinkName}",
              response = {
                ["$ref"] = "LogSink",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/cloud-platform.read-only",
                "https://www.googleapis.com/auth/logging.admin",
                "https://www.googleapis.com/auth/logging.read",
              },
            },
            list = {
              description = "Lists sinks.",
              flatPath = "v2/projects/{projectsId}/sinks",
              httpMethod = "GET",
              id = "logging.projects.sinks.list",
              parameterOrder = {
                "parent",
              },
              parameters = {
                pageSize = {
                  description = "Optional. The maximum number of results to return from this request. Non-positive values are ignored. The presence of nextPageToken in the response indicates that more results might be available.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "Optional. If present, then retrieve the next batch of results from the preceding call to this method. pageToken must be the value of nextPageToken from the previous response. The values of other method parameters should be identical to those in the previous call.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "Required. The parent resource whose sinks are to be listed: \"projects/[PROJECT_ID]\" \"organizations/[ORGANIZATION_ID]\" \"billingAccounts/[BILLING_ACCOUNT_ID]\" \"folders/[FOLDER_ID]\" ",
                  location = "path",
                  pattern = "^projects/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v2/{+parent}/sinks",
              response = {
                ["$ref"] = "ListSinksResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/cloud-platform.read-only",
                "https://www.googleapis.com/auth/logging.admin",
                "https://www.googleapis.com/auth/logging.read",
              },
            },
            patch = {
              description = "Updates a sink. This method replaces the following fields in the existing sink with values from the new sink: destination, and filter.The updated sink might also have a new writer_identity; see the unique_writer_identity field.",
              flatPath = "v2/projects/{projectsId}/sinks/{sinksId}",
              httpMethod = "PATCH",
              id = "logging.projects.sinks.patch",
              parameterOrder = {
                "sinkName",
              },
              parameters = {
                sinkName = {
                  description = "Required. The full resource name of the sink to update, including the parent resource and the sink identifier: \"projects/[PROJECT_ID]/sinks/[SINK_ID]\" \"organizations/[ORGANIZATION_ID]/sinks/[SINK_ID]\" \"billingAccounts/[BILLING_ACCOUNT_ID]/sinks/[SINK_ID]\" \"folders/[FOLDER_ID]/sinks/[SINK_ID]\" For example:\"projects/my-project/sinks/my-sink\"",
                  location = "path",
                  pattern = "^projects/[^/]+/sinks/[^/]+$",
                  required = true,
                  type = "string",
                },
                uniqueWriterIdentity = {
                  description = "Optional. See sinks.create for a description of this field. When updating a sink, the effect of this field on the value of writer_identity in the updated sink depends on both the old and new values of this field: If the old and new values of this field are both false or both true, then there is no change to the sink's writer_identity. If the old value is false and the new value is true, then writer_identity is changed to a unique service account. It is an error if the old value is true and the new value is set to false or defaulted to false.",
                  location = "query",
                  type = "boolean",
                },
                updateMask = {
                  description = "Optional. Field mask that specifies the fields in sink that need an update. A sink field will be overwritten if, and only if, it is in the update mask. name and output only fields cannot be updated.An empty updateMask is temporarily treated as using the following mask for backwards compatibility purposes:destination,filter,includeChildrenAt some point in the future, behavior will be removed and specifying an empty updateMask will be an error.For a detailed FieldMask definition, see https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#google.protobuf.FieldMaskFor example: updateMask=filter",
                  format = "google-fieldmask",
                  location = "query",
                  type = "string",
                },
              },
              path = "v2/{+sinkName}",
              request = {
                ["$ref"] = "LogSink",
              },
              response = {
                ["$ref"] = "LogSink",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/logging.admin",
              },
            },
            update = {
              description = "Updates a sink. This method replaces the following fields in the existing sink with values from the new sink: destination, and filter.The updated sink might also have a new writer_identity; see the unique_writer_identity field.",
              flatPath = "v2/projects/{projectsId}/sinks/{sinksId}",
              httpMethod = "PUT",
              id = "logging.projects.sinks.update",
              parameterOrder = {
                "sinkName",
              },
              parameters = {
                sinkName = {
                  description = "Required. The full resource name of the sink to update, including the parent resource and the sink identifier: \"projects/[PROJECT_ID]/sinks/[SINK_ID]\" \"organizations/[ORGANIZATION_ID]/sinks/[SINK_ID]\" \"billingAccounts/[BILLING_ACCOUNT_ID]/sinks/[SINK_ID]\" \"folders/[FOLDER_ID]/sinks/[SINK_ID]\" For example:\"projects/my-project/sinks/my-sink\"",
                  location = "path",
                  pattern = "^projects/[^/]+/sinks/[^/]+$",
                  required = true,
                  type = "string",
                },
                uniqueWriterIdentity = {
                  description = "Optional. See sinks.create for a description of this field. When updating a sink, the effect of this field on the value of writer_identity in the updated sink depends on both the old and new values of this field: If the old and new values of this field are both false or both true, then there is no change to the sink's writer_identity. If the old value is false and the new value is true, then writer_identity is changed to a unique service account. It is an error if the old value is true and the new value is set to false or defaulted to false.",
                  location = "query",
                  type = "boolean",
                },
                updateMask = {
                  description = "Optional. Field mask that specifies the fields in sink that need an update. A sink field will be overwritten if, and only if, it is in the update mask. name and output only fields cannot be updated.An empty updateMask is temporarily treated as using the following mask for backwards compatibility purposes:destination,filter,includeChildrenAt some point in the future, behavior will be removed and specifying an empty updateMask will be an error.For a detailed FieldMask definition, see https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#google.protobuf.FieldMaskFor example: updateMask=filter",
                  format = "google-fieldmask",
                  location = "query",
                  type = "string",
                },
              },
              path = "v2/{+sinkName}",
              request = {
                ["$ref"] = "LogSink",
              },
              response = {
                ["$ref"] = "LogSink",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/logging.admin",
              },
            },
          },
        },
      },
    },
    sinks = {
      methods = {
        create = {
          description = "Creates a sink that exports specified log entries to a destination. The export of newly-ingested log entries begins immediately, unless the sink's writer_identity is not permitted to write to the destination. A sink can export log entries only from the resource owning the sink.",
          flatPath = "v2/{v2Id}/{v2Id1}/sinks",
          httpMethod = "POST",
          id = "logging.sinks.create",
          parameterOrder = {
            "parent",
          },
          parameters = {
            parent = {
              description = "Required. The resource in which to create the sink: \"projects/[PROJECT_ID]\" \"organizations/[ORGANIZATION_ID]\" \"billingAccounts/[BILLING_ACCOUNT_ID]\" \"folders/[FOLDER_ID]\" For examples:\"projects/my-project\" \"organizations/123456789\"",
              location = "path",
              pattern = "^[^/]+/[^/]+$",
              required = true,
              type = "string",
            },
            uniqueWriterIdentity = {
              description = "Optional. Determines the kind of IAM identity returned as writer_identity in the new sink. If this value is omitted or set to false, and if the sink's parent is a project, then the value returned as writer_identity is the same group or service account used by Cloud Logging before the addition of writer identities to this API. The sink's destination must be in the same project as the sink itself.If this field is set to true, or if the sink is owned by a non-project resource such as an organization, then the value of writer_identity will be a unique service account used only for exports from the new sink. For more information, see writer_identity in LogSink.",
              location = "query",
              type = "boolean",
            },
          },
          path = "v2/{+parent}/sinks",
          request = {
            ["$ref"] = "LogSink",
          },
          response = {
            ["$ref"] = "LogSink",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/logging.admin",
          },
        },
        delete = {
          description = "Deletes a sink. If the sink has a unique writer_identity, then that service account is also deleted.",
          flatPath = "v2/{v2Id}/{v2Id1}/sinks/{sinksId}",
          httpMethod = "DELETE",
          id = "logging.sinks.delete",
          parameterOrder = {
            "sinkName",
          },
          parameters = {
            sinkName = {
              description = "Required. The full resource name of the sink to delete, including the parent resource and the sink identifier: \"projects/[PROJECT_ID]/sinks/[SINK_ID]\" \"organizations/[ORGANIZATION_ID]/sinks/[SINK_ID]\" \"billingAccounts/[BILLING_ACCOUNT_ID]/sinks/[SINK_ID]\" \"folders/[FOLDER_ID]/sinks/[SINK_ID]\" For example:\"projects/my-project/sinks/my-sink\"",
              location = "path",
              pattern = "^[^/]+/[^/]+/sinks/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "v2/{+sinkName}",
          response = {
            ["$ref"] = "Empty",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/logging.admin",
          },
        },
        get = {
          description = "Gets a sink.",
          flatPath = "v2/{v2Id}/{v2Id1}/sinks/{sinksId}",
          httpMethod = "GET",
          id = "logging.sinks.get",
          parameterOrder = {
            "sinkName",
          },
          parameters = {
            sinkName = {
              description = "Required. The resource name of the sink: \"projects/[PROJECT_ID]/sinks/[SINK_ID]\" \"organizations/[ORGANIZATION_ID]/sinks/[SINK_ID]\" \"billingAccounts/[BILLING_ACCOUNT_ID]/sinks/[SINK_ID]\" \"folders/[FOLDER_ID]/sinks/[SINK_ID]\" For example:\"projects/my-project/sinks/my-sink\"",
              location = "path",
              pattern = "^[^/]+/[^/]+/sinks/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "v2/{+sinkName}",
          response = {
            ["$ref"] = "LogSink",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/cloud-platform.read-only",
            "https://www.googleapis.com/auth/logging.admin",
            "https://www.googleapis.com/auth/logging.read",
          },
        },
        list = {
          description = "Lists sinks.",
          flatPath = "v2/{v2Id}/{v2Id1}/sinks",
          httpMethod = "GET",
          id = "logging.sinks.list",
          parameterOrder = {
            "parent",
          },
          parameters = {
            pageSize = {
              description = "Optional. The maximum number of results to return from this request. Non-positive values are ignored. The presence of nextPageToken in the response indicates that more results might be available.",
              format = "int32",
              location = "query",
              type = "integer",
            },
            pageToken = {
              description = "Optional. If present, then retrieve the next batch of results from the preceding call to this method. pageToken must be the value of nextPageToken from the previous response. The values of other method parameters should be identical to those in the previous call.",
              location = "query",
              type = "string",
            },
            parent = {
              description = "Required. The parent resource whose sinks are to be listed: \"projects/[PROJECT_ID]\" \"organizations/[ORGANIZATION_ID]\" \"billingAccounts/[BILLING_ACCOUNT_ID]\" \"folders/[FOLDER_ID]\" ",
              location = "path",
              pattern = "^[^/]+/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "v2/{+parent}/sinks",
          response = {
            ["$ref"] = "ListSinksResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/cloud-platform.read-only",
            "https://www.googleapis.com/auth/logging.admin",
            "https://www.googleapis.com/auth/logging.read",
          },
        },
        update = {
          description = "Updates a sink. This method replaces the following fields in the existing sink with values from the new sink: destination, and filter.The updated sink might also have a new writer_identity; see the unique_writer_identity field.",
          flatPath = "v2/{v2Id}/{v2Id1}/sinks/{sinksId}",
          httpMethod = "PUT",
          id = "logging.sinks.update",
          parameterOrder = {
            "sinkName",
          },
          parameters = {
            sinkName = {
              description = "Required. The full resource name of the sink to update, including the parent resource and the sink identifier: \"projects/[PROJECT_ID]/sinks/[SINK_ID]\" \"organizations/[ORGANIZATION_ID]/sinks/[SINK_ID]\" \"billingAccounts/[BILLING_ACCOUNT_ID]/sinks/[SINK_ID]\" \"folders/[FOLDER_ID]/sinks/[SINK_ID]\" For example:\"projects/my-project/sinks/my-sink\"",
              location = "path",
              pattern = "^[^/]+/[^/]+/sinks/[^/]+$",
              required = true,
              type = "string",
            },
            uniqueWriterIdentity = {
              description = "Optional. See sinks.create for a description of this field. When updating a sink, the effect of this field on the value of writer_identity in the updated sink depends on both the old and new values of this field: If the old and new values of this field are both false or both true, then there is no change to the sink's writer_identity. If the old value is false and the new value is true, then writer_identity is changed to a unique service account. It is an error if the old value is true and the new value is set to false or defaulted to false.",
              location = "query",
              type = "boolean",
            },
            updateMask = {
              description = "Optional. Field mask that specifies the fields in sink that need an update. A sink field will be overwritten if, and only if, it is in the update mask. name and output only fields cannot be updated.An empty updateMask is temporarily treated as using the following mask for backwards compatibility purposes:destination,filter,includeChildrenAt some point in the future, behavior will be removed and specifying an empty updateMask will be an error.For a detailed FieldMask definition, see https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#google.protobuf.FieldMaskFor example: updateMask=filter",
              format = "google-fieldmask",
              location = "query",
              type = "string",
            },
          },
          path = "v2/{+sinkName}",
          request = {
            ["$ref"] = "LogSink",
          },
          response = {
            ["$ref"] = "LogSink",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/logging.admin",
          },
        },
      },
    },
    v2 = {
      methods = {
        getCmekSettings = {
          description = "Gets the Logging CMEK settings for the given resource.Note: CMEK for the Log Router can be configured for Google Cloud projects, folders, organizations and billing accounts. Once configured for an organization, it applies to all projects and folders in the Google Cloud organization.See Enabling CMEK for Log Router (https://cloud.google.com/logging/docs/routing/managed-encryption) for more information.",
          flatPath = "v2/{v2Id}/{v2Id1}/cmekSettings",
          httpMethod = "GET",
          id = "logging.getCmekSettings",
          parameterOrder = {
            "name",
          },
          parameters = {
            name = {
              description = "Required. The resource for which to retrieve CMEK settings. \"projects/[PROJECT_ID]/cmekSettings\" \"organizations/[ORGANIZATION_ID]/cmekSettings\" \"billingAccounts/[BILLING_ACCOUNT_ID]/cmekSettings\" \"folders/[FOLDER_ID]/cmekSettings\" For example:\"organizations/12345/cmekSettings\"Note: CMEK for the Log Router can be configured for Google Cloud projects, folders, organizations and billing accounts. Once configured for an organization, it applies to all projects and folders in the Google Cloud organization.",
              location = "path",
              pattern = "^[^/]+/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "v2/{+name}/cmekSettings",
          response = {
            ["$ref"] = "CmekSettings",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/cloud-platform.read-only",
            "https://www.googleapis.com/auth/logging.admin",
            "https://www.googleapis.com/auth/logging.read",
          },
        },
        getSettings = {
          description = "Gets the Log Router settings for the given resource.Note: Settings for the Log Router can be get for Google Cloud projects, folders, organizations and billing accounts. Currently it can only be configured for organizations. Once configured for an organization, it applies to all projects and folders in the Google Cloud organization.See Enabling CMEK for Log Router (https://cloud.google.com/logging/docs/routing/managed-encryption) for more information.",
          flatPath = "v2/{v2Id}/{v2Id1}/settings",
          httpMethod = "GET",
          id = "logging.getSettings",
          parameterOrder = {
            "name",
          },
          parameters = {
            name = {
              description = "Required. The resource for which to retrieve settings. \"projects/[PROJECT_ID]/settings\" \"organizations/[ORGANIZATION_ID]/settings\" \"billingAccounts/[BILLING_ACCOUNT_ID]/settings\" \"folders/[FOLDER_ID]/settings\" For example:\"organizations/12345/settings\"Note: Settings for the Log Router can be get for Google Cloud projects, folders, organizations and billing accounts. Currently it can only be configured for organizations. Once configured for an organization, it applies to all projects and folders in the Google Cloud organization.",
              location = "path",
              pattern = "^[^/]+/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "v2/{+name}/settings",
          response = {
            ["$ref"] = "Settings",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/cloud-platform.read-only",
            "https://www.googleapis.com/auth/logging.admin",
            "https://www.googleapis.com/auth/logging.read",
          },
        },
        updateCmekSettings = {
          description = "Updates the Log Router CMEK settings for the given resource.Note: CMEK for the Log Router can currently only be configured for Google Cloud organizations. Once configured, it applies to all projects and folders in the Google Cloud organization.UpdateCmekSettings will fail if 1) kms_key_name is invalid, or 2) the associated service account does not have the required roles/cloudkms.cryptoKeyEncrypterDecrypter role assigned for the key, or 3) access to the key is disabled.See Enabling CMEK for Log Router (https://cloud.google.com/logging/docs/routing/managed-encryption) for more information.",
          flatPath = "v2/{v2Id}/{v2Id1}/cmekSettings",
          httpMethod = "PATCH",
          id = "logging.updateCmekSettings",
          parameterOrder = {
            "name",
          },
          parameters = {
            name = {
              description = "Required. The resource name for the CMEK settings to update. \"projects/[PROJECT_ID]/cmekSettings\" \"organizations/[ORGANIZATION_ID]/cmekSettings\" \"billingAccounts/[BILLING_ACCOUNT_ID]/cmekSettings\" \"folders/[FOLDER_ID]/cmekSettings\" For example:\"organizations/12345/cmekSettings\"Note: CMEK for the Log Router can currently only be configured for Google Cloud organizations. Once configured, it applies to all projects and folders in the Google Cloud organization.",
              location = "path",
              pattern = "^[^/]+/[^/]+$",
              required = true,
              type = "string",
            },
            updateMask = {
              description = "Optional. Field mask identifying which fields from cmek_settings should be updated. A field will be overwritten if and only if it is in the update mask. Output only fields cannot be updated.See FieldMask for more information.For example: \"updateMask=kmsKeyName\"",
              format = "google-fieldmask",
              location = "query",
              type = "string",
            },
          },
          path = "v2/{+name}/cmekSettings",
          request = {
            ["$ref"] = "CmekSettings",
          },
          response = {
            ["$ref"] = "CmekSettings",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/logging.admin",
          },
        },
        updateSettings = {
          description = "Updates the Log Router settings for the given resource.Note: Settings for the Log Router can currently only be configured for Google Cloud organizations. Once configured, it applies to all projects and folders in the Google Cloud organization.UpdateSettings will fail if 1) kms_key_name is invalid, or 2) the associated service account does not have the required roles/cloudkms.cryptoKeyEncrypterDecrypter role assigned for the key, or 3) access to the key is disabled. 4) location_id is not supported by Logging. 5) location_id violate OrgPolicy.See Enabling CMEK for Log Router (https://cloud.google.com/logging/docs/routing/managed-encryption) for more information.",
          flatPath = "v2/{v2Id}/{v2Id1}/settings",
          httpMethod = "PATCH",
          id = "logging.updateSettings",
          parameterOrder = {
            "name",
          },
          parameters = {
            name = {
              description = "Required. The resource name for the settings to update. \"organizations/[ORGANIZATION_ID]/settings\" For example:\"organizations/12345/settings\"Note: Settings for the Log Router can currently only be configured for Google Cloud organizations. Once configured, it applies to all projects and folders in the Google Cloud organization.",
              location = "path",
              pattern = "^[^/]+/[^/]+$",
              required = true,
              type = "string",
            },
            updateMask = {
              description = "Optional. Field mask identifying which fields from settings should be updated. A field will be overwritten if and only if it is in the update mask. Output only fields cannot be updated.See FieldMask for more information.For example: \"updateMask=kmsKeyName\"",
              format = "google-fieldmask",
              location = "query",
              type = "string",
            },
          },
          path = "v2/{+name}/settings",
          request = {
            ["$ref"] = "Settings",
          },
          response = {
            ["$ref"] = "Settings",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/logging.admin",
          },
        },
      },
    },
  },
  revision = "20230104",
  rootUrl = "https://logging.googleapis.com/",
  schemas = {
    BigQueryOptions = {
      description = "Options that change functionality of a sink exporting data to BigQuery.",
      id = "BigQueryOptions",
      properties = {
        usePartitionedTables = {
          description = "Optional. Whether to use BigQuery's partition tables (https://cloud.google.com/bigquery/docs/partitioned-tables). By default, Cloud Logging creates dated tables based on the log entries' timestamps, e.g. syslog_20170523. With partitioned tables the date suffix is no longer present and special query syntax (https://cloud.google.com/bigquery/docs/querying-partitioned-tables) has to be used instead. In both cases, tables are sharded based on UTC timezone.",
          type = "boolean",
        },
        usesTimestampColumnPartitioning = {
          description = "Output only. True if new timestamp column based partitioning is in use, false if legacy ingestion-time partitioning is in use.All new sinks will have this field set true and will use timestamp column based partitioning. If use_partitioned_tables is false, this value has no meaning and will be false. Legacy sinks using partitioned tables will have this field set to false.",
          readOnly = true,
          type = "boolean",
        },
      },
      type = "object",
    },
    BucketOptions = {
      description = "BucketOptions describes the bucket boundaries used to create a histogram for the distribution. The buckets can be in a linear sequence, an exponential sequence, or each bucket can be specified explicitly. BucketOptions does not include the number of values in each bucket.A bucket has an inclusive lower bound and exclusive upper bound for the values that are counted for that bucket. The upper bound of a bucket must be strictly greater than the lower bound. The sequence of N buckets for a distribution consists of an underflow bucket (number 0), zero or more finite buckets (number 1 through N - 2) and an overflow bucket (number N - 1). The buckets are contiguous: the lower bound of bucket i (i > 0) is the same as the upper bound of bucket i - 1. The buckets span the whole range of finite values: lower bound of the underflow bucket is -infinity and the upper bound of the overflow bucket is +infinity. The finite buckets are so-called because both bounds are finite.",
      id = "BucketOptions",
      properties = {
        explicitBuckets = {
          ["$ref"] = "Explicit",
          description = "The explicit buckets.",
        },
        exponentialBuckets = {
          ["$ref"] = "Exponential",
          description = "The exponential buckets.",
        },
        linearBuckets = {
          ["$ref"] = "Linear",
          description = "The linear bucket.",
        },
      },
      type = "object",
    },
    CancelOperationRequest = {
      description = "The request message for Operations.CancelOperation.",
      id = "CancelOperationRequest",
      properties = {},
      type = "object",
    },
    CmekSettings = {
      description = "Describes the customer-managed encryption key (CMEK) settings associated with a project, folder, organization, billing account, or flexible resource.Note: CMEK for the Log Router can currently only be configured for Google Cloud organizations. Once configured, it applies to all projects and folders in the Google Cloud organization.See Enabling CMEK for Log Router (https://cloud.google.com/logging/docs/routing/managed-encryption) for more information.",
      id = "CmekSettings",
      properties = {
        kmsKeyName = {
          description = "The resource name for the configured Cloud KMS key.KMS key name format: \"projects/[PROJECT_ID]/locations/[LOCATION]/keyRings/[KEYRING]/cryptoKeys/[KEY]\" For example:\"projects/my-project/locations/us-central1/keyRings/my-ring/cryptoKeys/my-key\"To enable CMEK for the Log Router, set this field to a valid kms_key_name for which the associated service account has the required cloudkms.cryptoKeyEncrypterDecrypter roles assigned for the key.The Cloud KMS key used by the Log Router can be updated by changing the kms_key_name to a new valid key name or disabled by setting the key name to an empty string. Encryption operations that are in progress will be completed with the key that was in use when they started. Decryption operations will be completed using the key that was used at the time of encryption unless access to that key has been revoked.To disable CMEK for the Log Router, set this field to an empty string.See Enabling CMEK for Log Router (https://cloud.google.com/logging/docs/routing/managed-encryption) for more information.",
          type = "string",
        },
        kmsKeyVersionName = {
          description = "The CryptoKeyVersion resource name for the configured Cloud KMS key.KMS key name format: \"projects/[PROJECT_ID]/locations/[LOCATION]/keyRings/[KEYRING]/cryptoKeys/[KEY]/cryptoKeyVersions/[VERSION]\" For example:\"projects/my-project/locations/us-central1/keyRings/my-ring/cryptoKeys/my-key/cryptoKeyVersions/1\"This is a read-only field used to convey the specific configured CryptoKeyVersion of kms_key that has been configured. It will be populated in cases where the CMEK settings are bound to a single key version.",
          type = "string",
        },
        name = {
          description = "Output only. The resource name of the CMEK settings.",
          readOnly = true,
          type = "string",
        },
        serviceAccountId = {
          description = "Output only. The service account that will be used by the Log Router to access your Cloud KMS key.Before enabling CMEK for Log Router, you must first assign the cloudkms.cryptoKeyEncrypterDecrypter role to the service account that the Log Router will use to access your Cloud KMS key. Use GetCmekSettings to obtain the service account ID.See Enabling CMEK for Log Router (https://cloud.google.com/logging/docs/routing/managed-encryption) for more information.",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    CopyLogEntriesMetadata = {
      description = "Metadata for CopyLogEntries long running operations.",
      id = "CopyLogEntriesMetadata",
      properties = {
        cancellationRequested = {
          description = "Identifies whether the user has requested cancellation of the operation.",
          type = "boolean",
        },
        endTime = {
          description = "The end time of an operation.",
          format = "google-datetime",
          type = "string",
        },
        progress = {
          description = "Estimated progress of the operation (0 - 100%).",
          format = "int32",
          type = "integer",
        },
        request = {
          ["$ref"] = "CopyLogEntriesRequest",
          description = "CopyLogEntries RPC request.",
        },
        startTime = {
          description = "The create time of an operation.",
          format = "google-datetime",
          type = "string",
        },
        state = {
          description = "State of an operation.",
          enum = {
            "OPERATION_STATE_UNSPECIFIED",
            "OPERATION_STATE_SCHEDULED",
            "OPERATION_STATE_WAITING_FOR_PERMISSIONS",
            "OPERATION_STATE_RUNNING",
            "OPERATION_STATE_SUCCEEDED",
            "OPERATION_STATE_FAILED",
            "OPERATION_STATE_CANCELLED",
          },
          enumDescriptions = {
            "Should not be used.",
            "The operation is scheduled.",
            "Waiting for necessary permissions.",
            "The operation is running.",
            "The operation was completed successfully.",
            "The operation failed.",
            "The operation was cancelled by the user.",
          },
          type = "string",
        },
        writerIdentity = {
          description = "The IAM identity of a service account that must be granted access to the destination.If the service account is not granted permission to the destination within an hour, the operation will be cancelled.For example: \"serviceAccount:foo@bar.com\"",
          type = "string",
        },
      },
      type = "object",
    },
    CopyLogEntriesRequest = {
      description = "The parameters to CopyLogEntries.",
      id = "CopyLogEntriesRequest",
      properties = {
        destination = {
          description = "Required. Destination to which to copy log entries.",
          type = "string",
        },
        filter = {
          description = "Optional. A filter specifying which log entries to copy. The filter must be no more than 20k characters. An empty filter matches all log entries.",
          type = "string",
        },
        name = {
          description = "Required. Log bucket from which to copy log entries.For example:\"projects/my-project/locations/global/buckets/my-source-bucket\"",
          type = "string",
        },
      },
      type = "object",
    },
    CopyLogEntriesResponse = {
      description = "Response type for CopyLogEntries long running operations.",
      id = "CopyLogEntriesResponse",
      properties = {
        logEntriesCopiedCount = {
          description = "Number of log entries copied.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    Empty = {
      description = "A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); } ",
      id = "Empty",
      properties = {},
      type = "object",
    },
    Explicit = {
      description = "Specifies a set of buckets with arbitrary widths.There are size(bounds) + 1 (= N) buckets. Bucket i has the following boundaries:Upper bound (0 <= i < N-1): boundsi Lower bound (1 <= i < N); boundsi - 1The bounds field must contain at least one element. If bounds has only one element, then there are no finite buckets, and that single element is the common boundary of the overflow and underflow buckets.",
      id = "Explicit",
      properties = {
        bounds = {
          description = "The values must be monotonically increasing.",
          items = {
            format = "double",
            type = "number",
          },
          type = "array",
        },
      },
      type = "object",
    },
    Exponential = {
      description = "Specifies an exponential sequence of buckets that have a width that is proportional to the value of the lower bound. Each bucket represents a constant relative uncertainty on a specific value in the bucket.There are num_finite_buckets + 2 (= N) buckets. Bucket i has the following boundaries:Upper bound (0 <= i < N-1): scale * (growth_factor ^ i). Lower bound (1 <= i < N): scale * (growth_factor ^ (i - 1)).",
      id = "Exponential",
      properties = {
        growthFactor = {
          description = "Must be greater than 1.",
          format = "double",
          type = "number",
        },
        numFiniteBuckets = {
          description = "Must be greater than 0.",
          format = "int32",
          type = "integer",
        },
        scale = {
          description = "Must be greater than 0.",
          format = "double",
          type = "number",
        },
      },
      type = "object",
    },
    HttpRequest = {
      description = "A common proto for logging HTTP requests. Only contains semantics defined by the HTTP specification. Product-specific logging information MUST be defined in a separate message.",
      id = "HttpRequest",
      properties = {
        cacheFillBytes = {
          description = "The number of HTTP response bytes inserted into cache. Set only when a cache fill was attempted.",
          format = "int64",
          type = "string",
        },
        cacheHit = {
          description = "Whether or not an entity was served from cache (with or without validation).",
          type = "boolean",
        },
        cacheLookup = {
          description = "Whether or not a cache lookup was attempted.",
          type = "boolean",
        },
        cacheValidatedWithOriginServer = {
          description = "Whether or not the response was validated with the origin server before being served from cache. This field is only meaningful if cache_hit is True.",
          type = "boolean",
        },
        latency = {
          description = "The request processing latency on the server, from the time the request was received until the response was sent.",
          format = "google-duration",
          type = "string",
        },
        protocol = {
          description = "Protocol used for the request. Examples: \"HTTP/1.1\", \"HTTP/2\", \"websocket\"",
          type = "string",
        },
        referer = {
          description = "The referer URL of the request, as defined in HTTP/1.1 Header Field Definitions (http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html).",
          type = "string",
        },
        remoteIp = {
          description = "The IP address (IPv4 or IPv6) of the client that issued the HTTP request. This field can include port information. Examples: \"192.168.1.1\", \"10.0.0.1:80\", \"FE80::0202:B3FF:FE1E:8329\".",
          type = "string",
        },
        requestMethod = {
          description = "The request method. Examples: \"GET\", \"HEAD\", \"PUT\", \"POST\".",
          type = "string",
        },
        requestSize = {
          description = "The size of the HTTP request message in bytes, including the request headers and the request body.",
          format = "int64",
          type = "string",
        },
        requestUrl = {
          description = "The scheme (http, https), the host name, the path and the query portion of the URL that was requested. Example: \"http://example.com/some/info?color=red\".",
          type = "string",
        },
        responseSize = {
          description = "The size of the HTTP response message sent back to the client, in bytes, including the response headers and the response body.",
          format = "int64",
          type = "string",
        },
        serverIp = {
          description = "The IP address (IPv4 or IPv6) of the origin server that the request was sent to. This field can include port information. Examples: \"192.168.1.1\", \"10.0.0.1:80\", \"FE80::0202:B3FF:FE1E:8329\".",
          type = "string",
        },
        status = {
          description = "The response code indicating the status of response. Examples: 200, 404.",
          format = "int32",
          type = "integer",
        },
        userAgent = {
          description = "The user agent sent by the client. Example: \"Mozilla/4.0 (compatible; MSIE 6.0; Windows 98; Q312461; .NET CLR 1.0.3705)\".",
          type = "string",
        },
      },
      type = "object",
    },
    IndexConfig = {
      description = "Configuration for an indexed field.",
      id = "IndexConfig",
      properties = {
        createTime = {
          description = "Output only. The timestamp when the index was last modified.This is used to return the timestamp, and will be ignored if supplied during update.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        fieldPath = {
          description = "Required. The LogEntry field path to index.Note that some paths are automatically indexed, and other paths are not eligible for indexing. See indexing documentation( https://cloud.google.com/logging/docs/view/advanced-queries#indexed-fields) for details.For example: jsonPayload.request.status",
          type = "string",
        },
        type = {
          description = "Required. The type of data in this index.",
          enum = {
            "INDEX_TYPE_UNSPECIFIED",
            "INDEX_TYPE_STRING",
            "INDEX_TYPE_INTEGER",
          },
          enumDescriptions = {
            "The index's type is unspecified.",
            "The index is a string-type index.",
            "The index is a integer-type index.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    LabelDescriptor = {
      description = "A description of a label.",
      id = "LabelDescriptor",
      properties = {
        description = {
          description = "A human-readable description for the label.",
          type = "string",
        },
        key = {
          description = "The label key.",
          type = "string",
        },
        valueType = {
          description = "The type of data that can be assigned to the label.",
          enum = {
            "STRING",
            "BOOL",
            "INT64",
          },
          enumDescriptions = {
            "A variable-length string. This is the default.",
            "Boolean; true or false.",
            "A 64-bit signed integer.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    Linear = {
      description = "Specifies a linear sequence of buckets that all have the same width (except overflow and underflow). Each bucket represents a constant absolute uncertainty on the specific value in the bucket.There are num_finite_buckets + 2 (= N) buckets. Bucket i has the following boundaries:Upper bound (0 <= i < N-1): offset + (width * i). Lower bound (1 <= i < N): offset + (width * (i - 1)).",
      id = "Linear",
      properties = {
        numFiniteBuckets = {
          description = "Must be greater than 0.",
          format = "int32",
          type = "integer",
        },
        offset = {
          description = "Lower bound of the first bucket.",
          format = "double",
          type = "number",
        },
        width = {
          description = "Must be greater than 0.",
          format = "double",
          type = "number",
        },
      },
      type = "object",
    },
    ListBucketsResponse = {
      description = "The response from ListBuckets.",
      id = "ListBucketsResponse",
      properties = {
        buckets = {
          description = "A list of buckets.",
          items = {
            ["$ref"] = "LogBucket",
          },
          type = "array",
        },
        nextPageToken = {
          description = "If there might be more results than appear in this response, then nextPageToken is included. To get the next set of results, call the same method again using the value of nextPageToken as pageToken.",
          type = "string",
        },
      },
      type = "object",
    },
    ListExclusionsResponse = {
      description = "Result returned from ListExclusions.",
      id = "ListExclusionsResponse",
      properties = {
        exclusions = {
          description = "A list of exclusions.",
          items = {
            ["$ref"] = "LogExclusion",
          },
          type = "array",
        },
        nextPageToken = {
          description = "If there might be more results than appear in this response, then nextPageToken is included. To get the next set of results, call the same method again using the value of nextPageToken as pageToken.",
          type = "string",
        },
      },
      type = "object",
    },
    ListLocationsResponse = {
      description = "The response message for Locations.ListLocations.",
      id = "ListLocationsResponse",
      properties = {
        locations = {
          description = "A list of locations that matches the specified filter in the request.",
          items = {
            ["$ref"] = "Location",
          },
          type = "array",
        },
        nextPageToken = {
          description = "The standard List next-page token.",
          type = "string",
        },
      },
      type = "object",
    },
    ListLogEntriesRequest = {
      description = "The parameters to ListLogEntries.",
      id = "ListLogEntriesRequest",
      properties = {
        filter = {
          description = "Optional. Only log entries that match the filter are returned. An empty filter matches all log entries in the resources listed in resource_names. Referencing a parent resource that is not listed in resource_names will cause the filter to return no results. The maximum length of a filter is 20,000 characters.",
          type = "string",
        },
        orderBy = {
          description = "Optional. How the results should be sorted. Presently, the only permitted values are \"timestamp asc\" (default) and \"timestamp desc\". The first option returns entries in order of increasing values of LogEntry.timestamp (oldest first), and the second option returns entries in order of decreasing timestamps (newest first). Entries with equal timestamps are returned in order of their insert_id values.",
          type = "string",
        },
        pageSize = {
          description = "Optional. The maximum number of results to return from this request. Default is 50. If the value is negative or exceeds 1000, the request is rejected. The presence of next_page_token in the response indicates that more results might be available.",
          format = "int32",
          type = "integer",
        },
        pageToken = {
          description = "Optional. If present, then retrieve the next batch of results from the preceding call to this method. page_token must be the value of next_page_token from the previous response. The values of other method parameters should be identical to those in the previous call.",
          type = "string",
        },
        projectIds = {
          description = "Optional. Deprecated. Use resource_names instead. One or more project identifiers or project numbers from which to retrieve log entries. Example: \"my-project-1A\".",
          items = {
            type = "string",
          },
          type = "array",
        },
        resourceNames = {
          description = "Required. Names of one or more parent resources from which to retrieve log entries: projects/[PROJECT_ID] organizations/[ORGANIZATION_ID] billingAccounts/[BILLING_ACCOUNT_ID] folders/[FOLDER_ID]May alternatively be one or more views: projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]/views/[VIEW_ID] organizations/[ORGANIZATION_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]/views/[VIEW_ID] billingAccounts/[BILLING_ACCOUNT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]/views/[VIEW_ID] folders/[FOLDER_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]/views/[VIEW_ID]Projects listed in the project_ids field are added to this list.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ListLogEntriesResponse = {
      description = "Result returned from ListLogEntries.",
      id = "ListLogEntriesResponse",
      properties = {
        entries = {
          description = "A list of log entries. If entries is empty, nextPageToken may still be returned, indicating that more entries may exist. See nextPageToken for more information.",
          items = {
            ["$ref"] = "LogEntry",
          },
          type = "array",
        },
        nextPageToken = {
          description = "If there might be more results than those appearing in this response, then nextPageToken is included. To get the next set of results, call this method again using the value of nextPageToken as pageToken.If a value for next_page_token appears and the entries field is empty, it means that the search found no log entries so far but it did not have time to search all the possible log entries. Retry the method with this value for page_token to continue the search. Alternatively, consider speeding up the search by changing your filter to specify a single log name or resource type, or to narrow the time range of the search.",
          type = "string",
        },
      },
      type = "object",
    },
    ListLogMetricsResponse = {
      description = "Result returned from ListLogMetrics.",
      id = "ListLogMetricsResponse",
      properties = {
        metrics = {
          description = "A list of logs-based metrics.",
          items = {
            ["$ref"] = "LogMetric",
          },
          type = "array",
        },
        nextPageToken = {
          description = "If there might be more results than appear in this response, then nextPageToken is included. To get the next set of results, call this method again using the value of nextPageToken as pageToken.",
          type = "string",
        },
      },
      type = "object",
    },
    ListLogsResponse = {
      description = "Result returned from ListLogs.",
      id = "ListLogsResponse",
      properties = {
        logNames = {
          description = "A list of log names. For example, \"projects/my-project/logs/syslog\" or \"organizations/123/logs/cloudresourcemanager.googleapis.com%2Factivity\".",
          items = {
            type = "string",
          },
          type = "array",
        },
        nextPageToken = {
          description = "If there might be more results than those appearing in this response, then nextPageToken is included. To get the next set of results, call this method again using the value of nextPageToken as pageToken.",
          type = "string",
        },
      },
      type = "object",
    },
    ListMonitoredResourceDescriptorsResponse = {
      description = "Result returned from ListMonitoredResourceDescriptors.",
      id = "ListMonitoredResourceDescriptorsResponse",
      properties = {
        nextPageToken = {
          description = "If there might be more results than those appearing in this response, then nextPageToken is included. To get the next set of results, call this method again using the value of nextPageToken as pageToken.",
          type = "string",
        },
        resourceDescriptors = {
          description = "A list of resource descriptors.",
          items = {
            ["$ref"] = "MonitoredResourceDescriptor",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ListOperationsResponse = {
      description = "The response message for Operations.ListOperations.",
      id = "ListOperationsResponse",
      properties = {
        nextPageToken = {
          description = "The standard List next-page token.",
          type = "string",
        },
        operations = {
          description = "A list of operations that matches the specified filter in the request.",
          items = {
            ["$ref"] = "Operation",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ListSinksResponse = {
      description = "Result returned from ListSinks.",
      id = "ListSinksResponse",
      properties = {
        nextPageToken = {
          description = "If there might be more results than appear in this response, then nextPageToken is included. To get the next set of results, call the same method again using the value of nextPageToken as pageToken.",
          type = "string",
        },
        sinks = {
          description = "A list of sinks.",
          items = {
            ["$ref"] = "LogSink",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ListViewsResponse = {
      description = "The response from ListViews.",
      id = "ListViewsResponse",
      properties = {
        nextPageToken = {
          description = "If there might be more results than appear in this response, then nextPageToken is included. To get the next set of results, call the same method again using the value of nextPageToken as pageToken.",
          type = "string",
        },
        views = {
          description = "A list of views.",
          items = {
            ["$ref"] = "LogView",
          },
          type = "array",
        },
      },
      type = "object",
    },
    Location = {
      description = "A resource that represents Google Cloud Platform location.",
      id = "Location",
      properties = {
        displayName = {
          description = "The friendly name for this location, typically a nearby city name. For example, \"Tokyo\".",
          type = "string",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "Cross-service attributes for the location. For example {\"cloud.googleapis.com/region\": \"us-east1\"} ",
          type = "object",
        },
        locationId = {
          description = "The canonical id for this location. For example: \"us-east1\".",
          type = "string",
        },
        metadata = {
          additionalProperties = {
            description = "Properties of the object. Contains field @type with type URL.",
            type = "any",
          },
          description = "Service-specific metadata. For example the available capacity at the given location.",
          type = "object",
        },
        name = {
          description = "Resource name for the location, which may vary between implementations. For example: \"projects/example-project/locations/us-east1\"",
          type = "string",
        },
      },
      type = "object",
    },
    LogBucket = {
      description = "Describes a repository in which log entries are stored.",
      id = "LogBucket",
      properties = {
        cmekSettings = {
          ["$ref"] = "CmekSettings",
          description = "The CMEK settings of the log bucket. If present, new log entries written to this log bucket are encrypted using the CMEK key provided in this configuration. If a log bucket has CMEK settings, the CMEK settings cannot be disabled later by updating the log bucket. Changing the KMS key is allowed.",
        },
        createTime = {
          description = "Output only. The creation timestamp of the bucket. This is not set for any of the default buckets.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        description = {
          description = "Describes this bucket.",
          type = "string",
        },
        indexConfigs = {
          description = "A list of indexed fields and related configuration data.",
          items = {
            ["$ref"] = "IndexConfig",
          },
          type = "array",
        },
        lifecycleState = {
          description = "Output only. The bucket lifecycle state.",
          enum = {
            "LIFECYCLE_STATE_UNSPECIFIED",
            "ACTIVE",
            "DELETE_REQUESTED",
          },
          enumDescriptions = {
            "Unspecified state. This is only used/useful for distinguishing unset values.",
            "The normal and active state.",
            "The resource has been marked for deletion by the user. For some resources (e.g. buckets), this can be reversed by an un-delete operation.",
          },
          readOnly = true,
          type = "string",
        },
        locked = {
          description = "Whether the bucket is locked.The retention period on a locked bucket cannot be changed. Locked buckets may only be deleted if they are empty.",
          type = "boolean",
        },
        name = {
          description = "Output only. The resource name of the bucket.For example:projects/my-project/locations/global/buckets/my-bucketFor a list of supported locations, see Supported Regions (https://cloud.google.com/logging/docs/region-support)For the location of global it is unspecified where log entries are actually stored.After a bucket has been created, the location cannot be changed.",
          readOnly = true,
          type = "string",
        },
        restrictedFields = {
          description = "Log entry field paths that are denied access in this bucket.The following fields and their children are eligible: textPayload, jsonPayload, protoPayload, httpRequest, labels, sourceLocation.Restricting a repeated field will restrict all values. Adding a parent will block all child fields. (e.g. foo.bar will block foo.bar.baz)",
          items = {
            type = "string",
          },
          type = "array",
        },
        retentionDays = {
          description = "Logs will be retained by default for this amount of time, after which they will automatically be deleted. The minimum retention period is 1 day. If this value is set to zero at bucket creation time, the default time of 30 days will be used.",
          format = "int32",
          type = "integer",
        },
        updateTime = {
          description = "Output only. The last update timestamp of the bucket.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    LogEntry = {
      description = "An individual entry in a log.",
      id = "LogEntry",
      properties = {
        httpRequest = {
          ["$ref"] = "HttpRequest",
          description = "Optional. Information about the HTTP request associated with this log entry, if applicable.",
        },
        insertId = {
          description = "Optional. A unique identifier for the log entry. If you provide a value, then Logging considers other log entries in the same project, with the same timestamp, and with the same insert_id to be duplicates which are removed in a single query result. However, there are no guarantees of de-duplication in the export of logs.If the insert_id is omitted when writing a log entry, the Logging API assigns its own unique identifier in this field.In queries, the insert_id is also used to order log entries that have the same log_name and timestamp values.",
          type = "string",
        },
        jsonPayload = {
          additionalProperties = {
            description = "Properties of the object.",
            type = "any",
          },
          description = "The log entry payload, represented as a structure that is expressed as a JSON object.",
          type = "object",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "Optional. A map of key, value pairs that provides additional information about the log entry. The labels can be user-defined or system-defined.User-defined labels are arbitrary key, value pairs that you can use to classify logs.System-defined labels are defined by GCP services for platform logs. They have two components - a service namespace component and the attribute name. For example: compute.googleapis.com/resource_name.Cloud Logging truncates label keys that exceed 512 B and label values that exceed 64 KB upon their associated log entry being written. The truncation is indicated by an ellipsis at the end of the character string.",
          type = "object",
        },
        logName = {
          description = "Required. The resource name of the log to which this log entry belongs: \"projects/[PROJECT_ID]/logs/[LOG_ID]\" \"organizations/[ORGANIZATION_ID]/logs/[LOG_ID]\" \"billingAccounts/[BILLING_ACCOUNT_ID]/logs/[LOG_ID]\" \"folders/[FOLDER_ID]/logs/[LOG_ID]\" A project number may be used in place of PROJECT_ID. The project number is translated to its corresponding PROJECT_ID internally and the log_name field will contain PROJECT_ID in queries and exports.[LOG_ID] must be URL-encoded within log_name. Example: \"organizations/1234567890/logs/cloudresourcemanager.googleapis.com%2Factivity\".[LOG_ID] must be less than 512 characters long and can only include the following characters: upper and lower case alphanumeric characters, forward-slash, underscore, hyphen, and period.For backward compatibility, if log_name begins with a forward-slash, such as /projects/..., then the log entry is ingested as usual, but the forward-slash is removed. Listing the log entry will not show the leading slash and filtering for a log name with a leading slash will never return any results.",
          type = "string",
        },
        metadata = {
          ["$ref"] = "MonitoredResourceMetadata",
          description = "Output only. Deprecated. This field is not used by Logging. Any value written to it is cleared.",
          readOnly = true,
        },
        operation = {
          ["$ref"] = "LogEntryOperation",
          description = "Optional. Information about an operation associated with the log entry, if applicable.",
        },
        protoPayload = {
          additionalProperties = {
            description = "Properties of the object. Contains field @type with type URL.",
            type = "any",
          },
          description = "The log entry payload, represented as a protocol buffer. Some Google Cloud Platform services use this field for their log entry payloads.The following protocol buffer types are supported; user-defined types are not supported:\"type.googleapis.com/google.cloud.audit.AuditLog\" \"type.googleapis.com/google.appengine.logging.v1.RequestLog\"",
          type = "object",
        },
        receiveTimestamp = {
          description = "Output only. The time the log entry was received by Logging.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        resource = {
          ["$ref"] = "MonitoredResource",
          description = "Required. The monitored resource that produced this log entry.Example: a log entry that reports a database error would be associated with the monitored resource designating the particular database that reported the error.",
        },
        severity = {
          description = "Optional. The severity of the log entry. The default value is LogSeverity.DEFAULT.",
          enum = {
            "DEFAULT",
            "DEBUG",
            "INFO",
            "NOTICE",
            "WARNING",
            "ERROR",
            "CRITICAL",
            "ALERT",
            "EMERGENCY",
          },
          enumDescriptions = {
            "(0) The log entry has no assigned severity level.",
            "(100) Debug or trace information.",
            "(200) Routine information, such as ongoing status or performance.",
            "(300) Normal but significant events, such as start up, shut down, or a configuration change.",
            "(400) Warning events might cause problems.",
            "(500) Error events are likely to cause problems.",
            "(600) Critical events cause more severe problems or outages.",
            "(700) A person must take an action immediately.",
            "(800) One or more systems are unusable.",
          },
          type = "string",
        },
        sourceLocation = {
          ["$ref"] = "LogEntrySourceLocation",
          description = "Optional. Source code location information associated with the log entry, if any.",
        },
        spanId = {
          description = "Optional. The ID of the Cloud Trace (https://cloud.google.com/trace) span associated with the current operation in which the log is being written. For example, if a span has the REST resource name of \"projects/some-project/traces/some-trace/spans/some-span-id\", then the span_id field is \"some-span-id\".A Span (https://cloud.google.com/trace/docs/reference/v2/rest/v2/projects.traces/batchWrite#Span) represents a single operation within a trace. Whereas a trace may involve multiple different microservices running on multiple different machines, a span generally corresponds to a single logical operation being performed in a single instance of a microservice on one specific machine. Spans are the nodes within the tree that is a trace.Applications that are instrumented for tracing (https://cloud.google.com/trace/docs/setup) will generally assign a new, unique span ID on each incoming request. It is also common to create and record additional spans corresponding to internal processing elements as well as issuing requests to dependencies.The span ID is expected to be a 16-character, hexadecimal encoding of an 8-byte array and should not be zero. It should be unique within the trace and should, ideally, be generated in a manner that is uniformly random.Example values: 000000000000004a 7a2190356c3fc94b 0000f00300090021 d39223e101960076",
          type = "string",
        },
        split = {
          ["$ref"] = "LogSplit",
          description = "Optional. Information indicating this LogEntry is part of a sequence of multiple log entries split from a single LogEntry.",
        },
        textPayload = {
          description = "The log entry payload, represented as a Unicode string (UTF-8).",
          type = "string",
        },
        timestamp = {
          description = "Optional. The time the event described by the log entry occurred. This time is used to compute the log entry's age and to enforce the logs retention period. If this field is omitted in a new log entry, then Logging assigns it the current time. Timestamps have nanosecond accuracy, but trailing zeros in the fractional seconds might be omitted when the timestamp is displayed.Incoming log entries must have timestamps that don't exceed the logs retention period (https://cloud.google.com/logging/quotas#logs_retention_periods) in the past, and that don't exceed 24 hours in the future. Log entries outside those time boundaries aren't ingested by Logging.",
          format = "google-datetime",
          type = "string",
        },
        trace = {
          description = "Optional. The REST resource name of the trace being written to Cloud Trace (https://cloud.google.com/trace) in association with this log entry. For example, if your trace data is stored in the Cloud project \"my-trace-project\" and if the service that is creating the log entry receives a trace header that includes the trace ID \"12345\", then the service should use \"projects/my-tracing-project/traces/12345\".The trace field provides the link between logs and traces. By using this field, you can navigate from a log entry to a trace.",
          type = "string",
        },
        traceSampled = {
          description = "Optional. The sampling decision of the trace associated with the log entry.True means that the trace resource name in the trace field was sampled for storage in a trace backend. False means that the trace was not sampled for storage when this log entry was written, or the sampling decision was unknown at the time. A non-sampled trace value is still useful as a request correlation identifier. The default is False.",
          type = "boolean",
        },
      },
      type = "object",
    },
    LogEntryOperation = {
      description = "Additional information about a potentially long-running operation with which a log entry is associated.",
      id = "LogEntryOperation",
      properties = {
        first = {
          description = "Optional. Set this to True if this is the first log entry in the operation.",
          type = "boolean",
        },
        id = {
          description = "Optional. An arbitrary operation identifier. Log entries with the same identifier are assumed to be part of the same operation.",
          type = "string",
        },
        last = {
          description = "Optional. Set this to True if this is the last log entry in the operation.",
          type = "boolean",
        },
        producer = {
          description = "Optional. An arbitrary producer identifier. The combination of id and producer must be globally unique. Examples for producer: \"MyDivision.MyBigCompany.com\", \"github.com/MyProject/MyApplication\".",
          type = "string",
        },
      },
      type = "object",
    },
    LogEntrySourceLocation = {
      description = "Additional information about the source code location that produced the log entry.",
      id = "LogEntrySourceLocation",
      properties = {
        file = {
          description = "Optional. Source file name. Depending on the runtime environment, this might be a simple name or a fully-qualified name.",
          type = "string",
        },
        ["function"] = {
          description = "Optional. Human-readable name of the function or method being invoked, with optional context such as the class or package name. This information may be used in contexts such as the logs viewer, where a file and line number are less meaningful. The format can vary by language. For example: qual.if.ied.Class.method (Java), dir/package.func (Go), function (Python).",
          type = "string",
        },
        line = {
          description = "Optional. Line within the source file. 1-based; 0 indicates no line number available.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    LogExclusion = {
      description = "Specifies a set of log entries that are filtered out by a sink. If your Google Cloud resource receives a large volume of log entries, you can use exclusions to reduce your chargeable logs. Note that exclusions on organization-level and folder-level sinks don't apply to child resources. Note also that you cannot modify the _Required sink or exclude logs from it.",
      id = "LogExclusion",
      properties = {
        createTime = {
          description = "Output only. The creation timestamp of the exclusion.This field may not be present for older exclusions.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        description = {
          description = "Optional. A description of this exclusion.",
          type = "string",
        },
        disabled = {
          description = "Optional. If set to True, then this exclusion is disabled and it does not exclude any log entries. You can update an exclusion to change the value of this field.",
          type = "boolean",
        },
        filter = {
          description = "Required. An advanced logs filter (https://cloud.google.com/logging/docs/view/advanced-queries) that matches the log entries to be excluded. By using the sample function (https://cloud.google.com/logging/docs/view/advanced-queries#sample), you can exclude less than 100% of the matching log entries.For example, the following query matches 99% of low-severity log entries from Google Cloud Storage buckets:resource.type=gcs_bucket severity<ERROR sample(insertId, 0.99)",
          type = "string",
        },
        name = {
          description = "Required. A client-assigned identifier, such as \"load-balancer-exclusion\". Identifiers are limited to 100 characters and can include only letters, digits, underscores, hyphens, and periods. First character has to be alphanumeric.",
          type = "string",
        },
        updateTime = {
          description = "Output only. The last update timestamp of the exclusion.This field may not be present for older exclusions.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    LogLine = {
      description = "Application log line emitted while processing a request.",
      id = "LogLine",
      properties = {
        logMessage = {
          description = "App-provided log message.",
          type = "string",
        },
        severity = {
          description = "Severity of this log entry.",
          enum = {
            "DEFAULT",
            "DEBUG",
            "INFO",
            "NOTICE",
            "WARNING",
            "ERROR",
            "CRITICAL",
            "ALERT",
            "EMERGENCY",
          },
          enumDescriptions = {
            "(0) The log entry has no assigned severity level.",
            "(100) Debug or trace information.",
            "(200) Routine information, such as ongoing status or performance.",
            "(300) Normal but significant events, such as start up, shut down, or a configuration change.",
            "(400) Warning events might cause problems.",
            "(500) Error events are likely to cause problems.",
            "(600) Critical events cause more severe problems or outages.",
            "(700) A person must take an action immediately.",
            "(800) One or more systems are unusable.",
          },
          type = "string",
        },
        sourceLocation = {
          ["$ref"] = "SourceLocation",
          description = "Where in the source code this log message was written.",
        },
        time = {
          description = "Approximate time when this log entry was made.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    LogMetric = {
      description = "Describes a logs-based metric. The value of the metric is the number of log entries that match a logs filter in a given time interval.Logs-based metrics can also be used to extract values from logs and create a distribution of the values. The distribution records the statistics of the extracted values along with an optional histogram of the values as specified by the bucket options.",
      id = "LogMetric",
      properties = {
        bucketName = {
          description = "Optional. The resource name of the Log Bucket that owns the Log Metric. Only Log Buckets in projects are supported. The bucket has to be in the same project as the metric.For example:projects/my-project/locations/global/buckets/my-bucketIf empty, then the Log Metric is considered a non-Bucket Log Metric.",
          type = "string",
        },
        bucketOptions = {
          ["$ref"] = "BucketOptions",
          description = "Optional. The bucket_options are required when the logs-based metric is using a DISTRIBUTION value type and it describes the bucket boundaries used to create a histogram of the extracted values.",
        },
        createTime = {
          description = "Output only. The creation timestamp of the metric.This field may not be present for older metrics.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        description = {
          description = "Optional. A description of this metric, which is used in documentation. The maximum length of the description is 8000 characters.",
          type = "string",
        },
        disabled = {
          description = "Optional. If set to True, then this metric is disabled and it does not generate any points.",
          type = "boolean",
        },
        filter = {
          description = "Required. An advanced logs filter (https://cloud.google.com/logging/docs/view/advanced_filters) which is used to match log entries. Example: \"resource.type=gae_app AND severity>=ERROR\" The maximum length of the filter is 20000 characters.",
          type = "string",
        },
        labelExtractors = {
          additionalProperties = {
            type = "string",
          },
          description = "Optional. A map from a label key string to an extractor expression which is used to extract data from a log entry field and assign as the label value. Each label key specified in the LabelDescriptor must have an associated extractor expression in this map. The syntax of the extractor expression is the same as for the value_extractor field.The extracted value is converted to the type defined in the label descriptor. If either the extraction or the type conversion fails, the label will have a default value. The default value for a string label is an empty string, for an integer label its 0, and for a boolean label its false.Note that there are upper bounds on the maximum number of labels and the number of active time series that are allowed in a project.",
          type = "object",
        },
        metricDescriptor = {
          ["$ref"] = "MetricDescriptor",
          description = "Optional. The metric descriptor associated with the logs-based metric. If unspecified, it uses a default metric descriptor with a DELTA metric kind, INT64 value type, with no labels and a unit of \"1\". Such a metric counts the number of log entries matching the filter expression.The name, type, and description fields in the metric_descriptor are output only, and is constructed using the name and description field in the LogMetric.To create a logs-based metric that records a distribution of log values, a DELTA metric kind with a DISTRIBUTION value type must be used along with a value_extractor expression in the LogMetric.Each label in the metric descriptor must have a matching label name as the key and an extractor expression as the value in the label_extractors map.The metric_kind and value_type fields in the metric_descriptor cannot be updated once initially configured. New labels can be added in the metric_descriptor, but existing labels cannot be modified except for their description.",
        },
        name = {
          description = "Required. The client-assigned metric identifier. Examples: \"error_count\", \"nginx/requests\".Metric identifiers are limited to 100 characters and can include only the following characters: A-Z, a-z, 0-9, and the special characters _-.,+!*',()%/. The forward-slash character (/) denotes a hierarchy of name pieces, and it cannot be the first character of the name.This field is the [METRIC_ID] part of a metric resource name in the format \"projects/PROJECT_ID/metrics/METRIC_ID\". Example: If the resource name of a metric is \"projects/my-project/metrics/nginx%2Frequests\", this field's value is \"nginx/requests\".",
          type = "string",
        },
        updateTime = {
          description = "Output only. The last update timestamp of the metric.This field may not be present for older metrics.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        valueExtractor = {
          description = "Optional. A value_extractor is required when using a distribution logs-based metric to extract the values to record from a log entry. Two functions are supported for value extraction: EXTRACT(field) or REGEXP_EXTRACT(field, regex). The arguments are: field: The name of the log entry field from which the value is to be extracted. regex: A regular expression using the Google RE2 syntax (https://github.com/google/re2/wiki/Syntax) with a single capture group to extract data from the specified log entry field. The value of the field is converted to a string before applying the regex. It is an error to specify a regex that does not include exactly one capture group.The result of the extraction must be convertible to a double type, as the distribution always records double values. If either the extraction or the conversion to double fails, then those values are not recorded in the distribution.Example: REGEXP_EXTRACT(jsonPayload.request, \".*quantity=(\\d+).*\")",
          type = "string",
        },
        version = {
          description = "Deprecated. The API version that created or updated this metric. The v2 format is used by default and cannot be changed.",
          enum = {
            "V2",
            "V1",
          },
          enumDescriptions = {
            "Logging API v2.",
            "Logging API v1.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    LogSink = {
      description = "Describes a sink used to export log entries to one of the following destinations in any project: a Cloud Storage bucket, a BigQuery dataset, a Pub/Sub topic or a Cloud Logging log bucket. A logs filter controls which log entries are exported. The sink must be created within a project, organization, billing account, or folder.",
      id = "LogSink",
      properties = {
        bigqueryOptions = {
          ["$ref"] = "BigQueryOptions",
          description = "Optional. Options that affect sinks exporting data to BigQuery.",
        },
        createTime = {
          description = "Output only. The creation timestamp of the sink.This field may not be present for older sinks.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        description = {
          description = "Optional. A description of this sink.The maximum length of the description is 8000 characters.",
          type = "string",
        },
        destination = {
          description = "Required. The export destination: \"storage.googleapis.com/[GCS_BUCKET]\" \"bigquery.googleapis.com/projects/[PROJECT_ID]/datasets/[DATASET]\" \"pubsub.googleapis.com/projects/[PROJECT_ID]/topics/[TOPIC_ID]\" The sink's writer_identity, set when the sink is created, must have permission to write to the destination or else the log entries are not exported. For more information, see Exporting Logs with Sinks (https://cloud.google.com/logging/docs/api/tasks/exporting-logs).",
          type = "string",
        },
        disabled = {
          description = "Optional. If set to true, then this sink is disabled and it does not export any log entries.",
          type = "boolean",
        },
        exclusions = {
          description = "Optional. Log entries that match any of these exclusion filters will not be exported.If a log entry is matched by both filter and one of exclusion_filters it will not be exported.",
          items = {
            ["$ref"] = "LogExclusion",
          },
          type = "array",
        },
        filter = {
          description = "Optional. An advanced logs filter (https://cloud.google.com/logging/docs/view/advanced-queries). The only exported log entries are those that are in the resource owning the sink and that match the filter.For example:logName=\"projects/[PROJECT_ID]/logs/[LOG_ID]\" AND severity>=ERROR",
          type = "string",
        },
        includeChildren = {
          description = "Optional. This field applies only to sinks owned by organizations and folders. If the field is false, the default, only the logs owned by the sink's parent resource are available for export. If the field is true, then log entries from all the projects, folders, and billing accounts contained in the sink's parent resource are also available for export. Whether a particular log entry from the children is exported depends on the sink's filter expression.For example, if this field is true, then the filter resource.type=gce_instance would export all Compute Engine VM instance log entries from all projects in the sink's parent.To only export entries from certain child projects, filter on the project part of the log name:logName:(\"projects/test-project1/\" OR \"projects/test-project2/\") AND resource.type=gce_instance",
          type = "boolean",
        },
        name = {
          description = "Required. The client-assigned sink identifier, unique within the project.For example: \"my-syslog-errors-to-pubsub\". Sink identifiers are limited to 100 characters and can include only the following characters: upper and lower-case alphanumeric characters, underscores, hyphens, and periods. First character has to be alphanumeric.",
          type = "string",
        },
        outputVersionFormat = {
          description = "Deprecated. This field is unused.",
          enum = {
            "VERSION_FORMAT_UNSPECIFIED",
            "V2",
            "V1",
          },
          enumDescriptions = {
            "An unspecified format version that will default to V2.",
            "LogEntry version 2 format.",
            "LogEntry version 1 format.",
          },
          type = "string",
        },
        updateTime = {
          description = "Output only. The last update timestamp of the sink.This field may not be present for older sinks.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        writerIdentity = {
          description = "Output only. An IAM identity—a service account or group—under which Cloud Logging writes the exported log entries to the sink's destination. This field is either set by specifying custom_writer_identity or set automatically by sinks.create and sinks.update based on the value of unique_writer_identity in those methods.Until you grant this identity write-access to the destination, log entry exports from this sink will fail. For more information, see Granting Access for a Resource (https://cloud.google.com/iam/docs/granting-roles-to-service-accounts#granting_access_to_a_service_account_for_a_resource). Consult the destination service's documentation to determine the appropriate IAM roles to assign to the identity.Sinks that have a destination that is a log bucket in the same project as the sink cannot have a writer_identity and no additional permissions are required.",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    LogSplit = {
      description = "Additional information used to correlate multiple log entries. Used when a single LogEntry would exceed the Google Cloud Logging size limit and is split across multiple log entries.",
      id = "LogSplit",
      properties = {
        index = {
          description = "The index of this LogEntry in the sequence of split log entries. Log entries are given |index| values 0, 1, ..., n-1 for a sequence of n log entries.",
          format = "int32",
          type = "integer",
        },
        totalSplits = {
          description = "The total number of log entries that the original LogEntry was split into.",
          format = "int32",
          type = "integer",
        },
        uid = {
          description = "A globally unique identifier for all log entries in a sequence of split log entries. All log entries with the same |LogSplit.uid| are assumed to be part of the same sequence of split log entries.",
          type = "string",
        },
      },
      type = "object",
    },
    LogView = {
      description = "Describes a view over log entries in a bucket.",
      id = "LogView",
      properties = {
        createTime = {
          description = "Output only. The creation timestamp of the view.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        description = {
          description = "Describes this view.",
          type = "string",
        },
        filter = {
          description = "Filter that restricts which log entries in a bucket are visible in this view.Filters are restricted to be a logical AND of ==/!= of any of the following: originating project/folder/organization/billing account. resource type log idFor example:SOURCE(\"projects/myproject\") AND resource.type = \"gce_instance\" AND LOG_ID(\"stdout\")",
          type = "string",
        },
        name = {
          description = "The resource name of the view.For example:projects/my-project/locations/global/buckets/my-bucket/views/my-view",
          type = "string",
        },
        updateTime = {
          description = "Output only. The last update timestamp of the view.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    MetricDescriptor = {
      description = "Defines a metric type and its schema. Once a metric descriptor is created, deleting or altering it stops data collection and makes the metric type's existing data unusable.",
      id = "MetricDescriptor",
      properties = {
        description = {
          description = "A detailed description of the metric, which can be used in documentation.",
          type = "string",
        },
        displayName = {
          description = "A concise name for the metric, which can be displayed in user interfaces. Use sentence case without an ending period, for example \"Request count\". This field is optional but it is recommended to be set for any metrics associated with user-visible concepts, such as Quota.",
          type = "string",
        },
        labels = {
          description = "The set of labels that can be used to describe a specific instance of this metric type. For example, the appengine.googleapis.com/http/server/response_latencies metric type has a label for the HTTP response code, response_code, so you can look at latencies for successful responses or just for responses that failed.",
          items = {
            ["$ref"] = "LabelDescriptor",
          },
          type = "array",
        },
        launchStage = {
          description = "Optional. The launch stage of the metric definition.",
          enum = {
            "LAUNCH_STAGE_UNSPECIFIED",
            "UNIMPLEMENTED",
            "PRELAUNCH",
            "EARLY_ACCESS",
            "ALPHA",
            "BETA",
            "GA",
            "DEPRECATED",
          },
          enumDescriptions = {
            "Do not use this default value.",
            "The feature is not yet implemented. Users can not use it.",
            "Prelaunch features are hidden from users and are only visible internally.",
            "Early Access features are limited to a closed group of testers. To use these features, you must sign up in advance and sign a Trusted Tester agreement (which includes confidentiality provisions). These features may be unstable, changed in backward-incompatible ways, and are not guaranteed to be released.",
            "Alpha is a limited availability test for releases before they are cleared for widespread use. By Alpha, all significant design issues are resolved and we are in the process of verifying functionality. Alpha customers need to apply for access, agree to applicable terms, and have their projects allowlisted. Alpha releases don't have to be feature complete, no SLAs are provided, and there are no technical support obligations, but they will be far enough along that customers can actually use them in test environments or for limited-use tests -- just like they would in normal production cases.",
            "Beta is the point at which we are ready to open a release for any customer to use. There are no SLA or technical support obligations in a Beta release. Products will be complete from a feature perspective, but may have some open outstanding issues. Beta releases are suitable for limited production use cases.",
            "GA features are open to all developers and are considered stable and fully qualified for production use.",
            "Deprecated features are scheduled to be shut down and removed. For more information, see the \"Deprecation Policy\" section of our Terms of Service (https://cloud.google.com/terms/) and the Google Cloud Platform Subject to the Deprecation Policy (https://cloud.google.com/terms/deprecation) documentation.",
          },
          type = "string",
        },
        metadata = {
          ["$ref"] = "MetricDescriptorMetadata",
          description = "Optional. Metadata which can be used to guide usage of the metric.",
        },
        metricKind = {
          description = "Whether the metric records instantaneous values, changes to a value, etc. Some combinations of metric_kind and value_type might not be supported.",
          enum = {
            "METRIC_KIND_UNSPECIFIED",
            "GAUGE",
            "DELTA",
            "CUMULATIVE",
          },
          enumDescriptions = {
            "Do not use this default value.",
            "An instantaneous measurement of a value.",
            "The change in a value during a time interval.",
            "A value accumulated over a time interval. Cumulative measurements in a time series should have the same start time and increasing end times, until an event resets the cumulative value to zero and sets a new start time for the following points.",
          },
          type = "string",
        },
        monitoredResourceTypes = {
          description = "Read-only. If present, then a time series, which is identified partially by a metric type and a MonitoredResourceDescriptor, that is associated with this metric type can only be associated with one of the monitored resource types listed here.",
          items = {
            type = "string",
          },
          type = "array",
        },
        name = {
          description = "The resource name of the metric descriptor.",
          type = "string",
        },
        type = {
          description = "The metric type, including its DNS name prefix. The type is not URL-encoded. All user-defined metric types have the DNS name custom.googleapis.com or external.googleapis.com. Metric types should use a natural hierarchical grouping. For example: \"custom.googleapis.com/invoice/paid/amount\" \"external.googleapis.com/prometheus/up\" \"appengine.googleapis.com/http/server/response_latencies\" ",
          type = "string",
        },
        unit = {
          description = "The units in which the metric value is reported. It is only applicable if the value_type is INT64, DOUBLE, or DISTRIBUTION. The unit defines the representation of the stored metric values.Different systems might scale the values to be more easily displayed (so a value of 0.02kBy might be displayed as 20By, and a value of 3523kBy might be displayed as 3.5MBy). However, if the unit is kBy, then the value of the metric is always in thousands of bytes, no matter how it might be displayed.If you want a custom metric to record the exact number of CPU-seconds used by a job, you can create an INT64 CUMULATIVE metric whose unit is s{CPU} (or equivalently 1s{CPU} or just s). If the job uses 12,005 CPU-seconds, then the value is written as 12005.Alternatively, if you want a custom metric to record data in a more granular way, you can create a DOUBLE CUMULATIVE metric whose unit is ks{CPU}, and then write the value 12.005 (which is 12005/1000), or use Kis{CPU} and write 11.723 (which is 12005/1024).The supported units are a subset of The Unified Code for Units of Measure (https://unitsofmeasure.org/ucum.html) standard:Basic units (UNIT) bit bit By byte s second min minute h hour d day 1 dimensionlessPrefixes (PREFIX) k kilo (10^3) M mega (10^6) G giga (10^9) T tera (10^12) P peta (10^15) E exa (10^18) Z zetta (10^21) Y yotta (10^24) m milli (10^-3) u micro (10^-6) n nano (10^-9) p pico (10^-12) f femto (10^-15) a atto (10^-18) z zepto (10^-21) y yocto (10^-24) Ki kibi (2^10) Mi mebi (2^20) Gi gibi (2^30) Ti tebi (2^40) Pi pebi (2^50)GrammarThe grammar also includes these connectors: / division or ratio (as an infix operator). For examples, kBy/{email} or MiBy/10ms (although you should almost never have /s in a metric unit; rates should always be computed at query time from the underlying cumulative or delta value). . multiplication or composition (as an infix operator). For examples, GBy.d or k{watt}.h.The grammar for a unit is as follows: Expression = Component { \".\" Component } { \"/\" Component } ; Component = ( [ PREFIX ] UNIT | \"%\" ) [ Annotation ] | Annotation | \"1\" ; Annotation = \"{\" NAME \"}\" ; Notes: Annotation is just a comment if it follows a UNIT. If the annotation is used alone, then the unit is equivalent to 1. For examples, {request}/s == 1/s, By{transmitted}/s == By/s. NAME is a sequence of non-blank printable ASCII characters not containing { or }. 1 represents a unitary dimensionless unit (https://en.wikipedia.org/wiki/Dimensionless_quantity) of 1, such as in 1/s. It is typically used when none of the basic units are appropriate. For example, \"new users per day\" can be represented as 1/d or {new-users}/d (and a metric value 5 would mean \"5 new users). Alternatively, \"thousands of page views per day\" would be represented as 1000/d or k1/d or k{page_views}/d (and a metric value of 5.3 would mean \"5300 page views per day\"). % represents dimensionless value of 1/100, and annotates values giving a percentage (so the metric values are typically in the range of 0..100, and a metric value 3 means \"3 percent\"). 10^2.% indicates a metric contains a ratio, typically in the range 0..1, that will be multiplied by 100 and displayed as a percentage (so a metric value 0.03 means \"3 percent\").",
          type = "string",
        },
        valueType = {
          description = "Whether the measurement is an integer, a floating-point number, etc. Some combinations of metric_kind and value_type might not be supported.",
          enum = {
            "VALUE_TYPE_UNSPECIFIED",
            "BOOL",
            "INT64",
            "DOUBLE",
            "STRING",
            "DISTRIBUTION",
            "MONEY",
          },
          enumDescriptions = {
            "Do not use this default value.",
            "The value is a boolean. This value type can be used only if the metric kind is GAUGE.",
            "The value is a signed 64-bit integer.",
            "The value is a double precision floating point number.",
            "The value is a text string. This value type can be used only if the metric kind is GAUGE.",
            "The value is a Distribution.",
            "The value is money.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    MetricDescriptorMetadata = {
      description = "Additional annotations that can be used to guide the usage of a metric.",
      id = "MetricDescriptorMetadata",
      properties = {
        ingestDelay = {
          description = "The delay of data points caused by ingestion. Data points older than this age are guaranteed to be ingested and available to be read, excluding data loss due to errors.",
          format = "google-duration",
          type = "string",
        },
        launchStage = {
          description = "Deprecated. Must use the MetricDescriptor.launch_stage instead.",
          enum = {
            "LAUNCH_STAGE_UNSPECIFIED",
            "UNIMPLEMENTED",
            "PRELAUNCH",
            "EARLY_ACCESS",
            "ALPHA",
            "BETA",
            "GA",
            "DEPRECATED",
          },
          enumDescriptions = {
            "Do not use this default value.",
            "The feature is not yet implemented. Users can not use it.",
            "Prelaunch features are hidden from users and are only visible internally.",
            "Early Access features are limited to a closed group of testers. To use these features, you must sign up in advance and sign a Trusted Tester agreement (which includes confidentiality provisions). These features may be unstable, changed in backward-incompatible ways, and are not guaranteed to be released.",
            "Alpha is a limited availability test for releases before they are cleared for widespread use. By Alpha, all significant design issues are resolved and we are in the process of verifying functionality. Alpha customers need to apply for access, agree to applicable terms, and have their projects allowlisted. Alpha releases don't have to be feature complete, no SLAs are provided, and there are no technical support obligations, but they will be far enough along that customers can actually use them in test environments or for limited-use tests -- just like they would in normal production cases.",
            "Beta is the point at which we are ready to open a release for any customer to use. There are no SLA or technical support obligations in a Beta release. Products will be complete from a feature perspective, but may have some open outstanding issues. Beta releases are suitable for limited production use cases.",
            "GA features are open to all developers and are considered stable and fully qualified for production use.",
            "Deprecated features are scheduled to be shut down and removed. For more information, see the \"Deprecation Policy\" section of our Terms of Service (https://cloud.google.com/terms/) and the Google Cloud Platform Subject to the Deprecation Policy (https://cloud.google.com/terms/deprecation) documentation.",
          },
          type = "string",
        },
        samplePeriod = {
          description = "The sampling period of metric data points. For metrics which are written periodically, consecutive data points are stored at this time interval, excluding data loss due to errors. Metrics with a higher granularity have a smaller sampling period.",
          format = "google-duration",
          type = "string",
        },
      },
      type = "object",
    },
    MonitoredResource = {
      description = "An object representing a resource that can be used for monitoring, logging, billing, or other purposes. Examples include virtual machine instances, databases, and storage devices such as disks. The type field identifies a MonitoredResourceDescriptor object that describes the resource's schema. Information in the labels field identifies the actual resource and its attributes according to the schema. For example, a particular Compute Engine VM instance could be represented by the following object, because the MonitoredResourceDescriptor for \"gce_instance\" has labels \"project_id\", \"instance_id\" and \"zone\": { \"type\": \"gce_instance\", \"labels\": { \"project_id\": \"my-project\", \"instance_id\": \"12345678901234\", \"zone\": \"us-central1-a\" }} ",
      id = "MonitoredResource",
      properties = {
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "Required. Values for all of the labels listed in the associated monitored resource descriptor. For example, Compute Engine VM instances use the labels \"project_id\", \"instance_id\", and \"zone\".",
          type = "object",
        },
        type = {
          description = "Required. The monitored resource type. This field must match the type field of a MonitoredResourceDescriptor object. For example, the type of a Compute Engine VM instance is gce_instance. Some descriptors include the service name in the type; for example, the type of a Datastream stream is datastream.googleapis.com/Stream.",
          type = "string",
        },
      },
      type = "object",
    },
    MonitoredResourceDescriptor = {
      description = "An object that describes the schema of a MonitoredResource object using a type name and a set of labels. For example, the monitored resource descriptor for Google Compute Engine VM instances has a type of \"gce_instance\" and specifies the use of the labels \"instance_id\" and \"zone\" to identify particular VM instances.Different APIs can support different monitored resource types. APIs generally provide a list method that returns the monitored resource descriptors used by the API.",
      id = "MonitoredResourceDescriptor",
      properties = {
        description = {
          description = "Optional. A detailed description of the monitored resource type that might be used in documentation.",
          type = "string",
        },
        displayName = {
          description = "Optional. A concise name for the monitored resource type that might be displayed in user interfaces. It should be a Title Cased Noun Phrase, without any article or other determiners. For example, \"Google Cloud SQL Database\".",
          type = "string",
        },
        labels = {
          description = "Required. A set of labels used to describe instances of this monitored resource type. For example, an individual Google Cloud SQL database is identified by values for the labels \"database_id\" and \"zone\".",
          items = {
            ["$ref"] = "LabelDescriptor",
          },
          type = "array",
        },
        launchStage = {
          description = "Optional. The launch stage of the monitored resource definition.",
          enum = {
            "LAUNCH_STAGE_UNSPECIFIED",
            "UNIMPLEMENTED",
            "PRELAUNCH",
            "EARLY_ACCESS",
            "ALPHA",
            "BETA",
            "GA",
            "DEPRECATED",
          },
          enumDescriptions = {
            "Do not use this default value.",
            "The feature is not yet implemented. Users can not use it.",
            "Prelaunch features are hidden from users and are only visible internally.",
            "Early Access features are limited to a closed group of testers. To use these features, you must sign up in advance and sign a Trusted Tester agreement (which includes confidentiality provisions). These features may be unstable, changed in backward-incompatible ways, and are not guaranteed to be released.",
            "Alpha is a limited availability test for releases before they are cleared for widespread use. By Alpha, all significant design issues are resolved and we are in the process of verifying functionality. Alpha customers need to apply for access, agree to applicable terms, and have their projects allowlisted. Alpha releases don't have to be feature complete, no SLAs are provided, and there are no technical support obligations, but they will be far enough along that customers can actually use them in test environments or for limited-use tests -- just like they would in normal production cases.",
            "Beta is the point at which we are ready to open a release for any customer to use. There are no SLA or technical support obligations in a Beta release. Products will be complete from a feature perspective, but may have some open outstanding issues. Beta releases are suitable for limited production use cases.",
            "GA features are open to all developers and are considered stable and fully qualified for production use.",
            "Deprecated features are scheduled to be shut down and removed. For more information, see the \"Deprecation Policy\" section of our Terms of Service (https://cloud.google.com/terms/) and the Google Cloud Platform Subject to the Deprecation Policy (https://cloud.google.com/terms/deprecation) documentation.",
          },
          type = "string",
        },
        name = {
          description = "Optional. The resource name of the monitored resource descriptor: \"projects/{project_id}/monitoredResourceDescriptors/{type}\" where {type} is the value of the type field in this object and {project_id} is a project ID that provides API-specific context for accessing the type. APIs that do not use project information can use the resource name format \"monitoredResourceDescriptors/{type}\".",
          type = "string",
        },
        type = {
          description = "Required. The monitored resource type. For example, the type \"cloudsql_database\" represents databases in Google Cloud SQL. For a list of types, see Monitoring resource types (https://cloud.google.com/monitoring/api/resources) and Logging resource types (https://cloud.google.com/logging/docs/api/v2/resource-list).",
          type = "string",
        },
      },
      type = "object",
    },
    MonitoredResourceMetadata = {
      description = "Auxiliary metadata for a MonitoredResource object. MonitoredResource objects contain the minimum set of information to uniquely identify a monitored resource instance. There is some other useful auxiliary metadata. Monitoring and Logging use an ingestion pipeline to extract metadata for cloud resources of all types, and store the metadata in this message.",
      id = "MonitoredResourceMetadata",
      properties = {
        systemLabels = {
          additionalProperties = {
            description = "Properties of the object.",
            type = "any",
          },
          description = "Output only. Values for predefined system metadata labels. System labels are a kind of metadata extracted by Google, including \"machine_image\", \"vpc\", \"subnet_id\", \"security_group\", \"name\", etc. System label values can be only strings, Boolean values, or a list of strings. For example: { \"name\": \"my-test-instance\", \"security_group\": [\"a\", \"b\", \"c\"], \"spot_instance\": false } ",
          type = "object",
        },
        userLabels = {
          additionalProperties = {
            type = "string",
          },
          description = "Output only. A map of user-defined metadata labels.",
          type = "object",
        },
      },
      type = "object",
    },
    Operation = {
      description = "This resource represents a long-running operation that is the result of a network API call.",
      id = "Operation",
      properties = {
        done = {
          description = "If the value is false, it means the operation is still in progress. If true, the operation is completed, and either error or response is available.",
          type = "boolean",
        },
        error = {
          ["$ref"] = "Status",
          description = "The error result of the operation in case of failure or cancellation.",
        },
        metadata = {
          additionalProperties = {
            description = "Properties of the object. Contains field @type with type URL.",
            type = "any",
          },
          description = "Service-specific metadata associated with the operation. It typically contains progress information and common metadata such as create time. Some services might not provide such metadata. Any method that returns a long-running operation should document the metadata type, if any.",
          type = "object",
        },
        name = {
          description = "The server-assigned name, which is only unique within the same service that originally returns it. If you use the default HTTP mapping, the name should be a resource name ending with operations/{unique_id}.",
          type = "string",
        },
        response = {
          additionalProperties = {
            description = "Properties of the object. Contains field @type with type URL.",
            type = "any",
          },
          description = "The normal response of the operation in case of success. If the original method returns no data on success, such as Delete, the response is google.protobuf.Empty. If the original method is standard Get/Create/Update, the response should be the resource. For other methods, the response should have the type XxxResponse, where Xxx is the original method name. For example, if the original method name is TakeSnapshot(), the inferred response type is TakeSnapshotResponse.",
          type = "object",
        },
      },
      type = "object",
    },
    RequestLog = {
      description = "Complete log information about a single HTTP request to an App Engine application.",
      id = "RequestLog",
      properties = {
        appEngineRelease = {
          description = "App Engine release version.",
          type = "string",
        },
        appId = {
          description = "Application that handled this request.",
          type = "string",
        },
        cost = {
          description = "An indication of the relative cost of serving this request.",
          format = "double",
          type = "number",
        },
        endTime = {
          description = "Time when the request finished.",
          format = "google-datetime",
          type = "string",
        },
        finished = {
          description = "Whether this request is finished or active.",
          type = "boolean",
        },
        first = {
          description = "Whether this is the first RequestLog entry for this request. If an active request has several RequestLog entries written to Stackdriver Logging, then this field will be set for one of them.",
          type = "boolean",
        },
        host = {
          description = "Internet host and port number of the resource being requested.",
          type = "string",
        },
        httpVersion = {
          description = "HTTP version of request. Example: \"HTTP/1.1\".",
          type = "string",
        },
        instanceId = {
          description = "An identifier for the instance that handled the request.",
          type = "string",
        },
        instanceIndex = {
          description = "If the instance processing this request belongs to a manually scaled module, then this is the 0-based index of the instance. Otherwise, this value is -1.",
          format = "int32",
          type = "integer",
        },
        ip = {
          description = "Origin IP address.",
          type = "string",
        },
        latency = {
          description = "Latency of the request.",
          format = "google-duration",
          type = "string",
        },
        line = {
          description = "A list of log lines emitted by the application while serving this request.",
          items = {
            ["$ref"] = "LogLine",
          },
          type = "array",
        },
        megaCycles = {
          description = "Number of CPU megacycles used to process request.",
          format = "int64",
          type = "string",
        },
        method = {
          description = "Request method. Example: \"GET\", \"HEAD\", \"PUT\", \"POST\", \"DELETE\".",
          type = "string",
        },
        moduleId = {
          description = "Module of the application that handled this request.",
          type = "string",
        },
        nickname = {
          description = "The logged-in user who made the request.Most likely, this is the part of the user's email before the @ sign. The field value is the same for different requests from the same user, but different users can have similar names. This information is also available to the application via the App Engine Users API.This field will be populated starting with App Engine 1.9.21.",
          type = "string",
        },
        pendingTime = {
          description = "Time this request spent in the pending request queue.",
          format = "google-duration",
          type = "string",
        },
        referrer = {
          description = "Referrer URL of request.",
          type = "string",
        },
        requestId = {
          description = "Globally unique identifier for a request, which is based on the request start time. Request IDs for requests which started later will compare greater as strings than those for requests which started earlier.",
          type = "string",
        },
        resource = {
          description = "Contains the path and query portion of the URL that was requested. For example, if the URL was \"http://example.com/app?name=val\", the resource would be \"/app?name=val\". The fragment identifier, which is identified by the # character, is not included.",
          type = "string",
        },
        responseSize = {
          description = "Size in bytes sent back to client by request.",
          format = "int64",
          type = "string",
        },
        sourceReference = {
          description = "Source code for the application that handled this request. There can be more than one source reference per deployed application if source code is distributed among multiple repositories.",
          items = {
            ["$ref"] = "SourceReference",
          },
          type = "array",
        },
        spanId = {
          description = "Stackdriver Trace span identifier for this request.",
          type = "string",
        },
        startTime = {
          description = "Time when the request started.",
          format = "google-datetime",
          type = "string",
        },
        status = {
          description = "HTTP response status code. Example: 200, 404.",
          format = "int32",
          type = "integer",
        },
        taskName = {
          description = "Task name of the request, in the case of an offline request.",
          type = "string",
        },
        taskQueueName = {
          description = "Queue name of the request, in the case of an offline request.",
          type = "string",
        },
        traceId = {
          description = "Stackdriver Trace identifier for this request.",
          type = "string",
        },
        traceSampled = {
          description = "If true, the value in the 'trace_id' field was sampled for storage in a trace backend.",
          type = "boolean",
        },
        urlMapEntry = {
          description = "File or class that handled the request.",
          type = "string",
        },
        userAgent = {
          description = "User agent that made the request.",
          type = "string",
        },
        versionId = {
          description = "Version of the application that handled this request.",
          type = "string",
        },
        wasLoadingRequest = {
          description = "Whether this was a loading request for the instance.",
          type = "boolean",
        },
      },
      type = "object",
    },
    Settings = {
      description = "Describes the settings associated with a project, folder, organization, billing account, or flexible resource.",
      id = "Settings",
      properties = {
        disableDefaultSink = {
          description = "Optional. If set to true, the _Default sink in newly created projects and folders will created in a disabled state. This can be used to automatically disable log ingestion if there is already an aggregated sink configured in the hierarchy. The _Default sink can be re-enabled manually if needed.",
          type = "boolean",
        },
        kmsKeyName = {
          description = "Optional. The resource name for the configured Cloud KMS key.KMS key name format: \"projects/[PROJECT_ID]/locations/[LOCATION]/keyRings/[KEYRING]/cryptoKeys/[KEY]\" For example:\"projects/my-project/locations/us-central1/keyRings/my-ring/cryptoKeys/my-key\"To enable CMEK for the Log Router, set this field to a valid kms_key_name for which the associated service account has the required roles/cloudkms.cryptoKeyEncrypterDecrypter role assigned for the key.The Cloud KMS key used by the Log Router can be updated by changing the kms_key_name to a new valid key name. Encryption operations that are in progress will be completed with the key that was in use when they started. Decryption operations will be completed using the key that was used at the time of encryption unless access to that key has been revoked.To disable CMEK for the Log Router, set this field to an empty string.See Enabling CMEK for Log Router (https://cloud.google.com/logging/docs/routing/managed-encryption) for more information.",
          type = "string",
        },
        kmsServiceAccountId = {
          description = "Output only. The service account that will be used by the Log Router to access your Cloud KMS key.Before enabling CMEK for Log Router, you must first assign the role roles/cloudkms.cryptoKeyEncrypterDecrypter to the service account that the Log Router will use to access your Cloud KMS key. Use GetSettings to obtain the service account ID.See Enabling CMEK for Log Router (https://cloud.google.com/logging/docs/routing/managed-encryption) for more information.",
          readOnly = true,
          type = "string",
        },
        name = {
          description = "Output only. The resource name of the settings.",
          readOnly = true,
          type = "string",
        },
        storageLocation = {
          description = "Optional. The Cloud region that will be used for _Default and _Required log buckets for newly created projects and folders. For example europe-west1. This setting does not affect the location of custom log buckets.",
          type = "string",
        },
      },
      type = "object",
    },
    SourceLocation = {
      description = "Specifies a location in a source code file.",
      id = "SourceLocation",
      properties = {
        file = {
          description = "Source file name. Depending on the runtime environment, this might be a simple name or a fully-qualified name.",
          type = "string",
        },
        functionName = {
          description = "Human-readable name of the function or method being invoked, with optional context such as the class or package name. This information is used in contexts such as the logs viewer, where a file and line number are less meaningful. The format can vary by language. For example: qual.if.ied.Class.method (Java), dir/package.func (Go), function (Python).",
          type = "string",
        },
        line = {
          description = "Line within the source file.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    SourceReference = {
      description = "A reference to a particular snapshot of the source tree used to build and deploy an application.",
      id = "SourceReference",
      properties = {
        repository = {
          description = "Optional. A URI string identifying the repository. Example: \"https://github.com/GoogleCloudPlatform/kubernetes.git\"",
          type = "string",
        },
        revisionId = {
          description = "The canonical and persistent identifier of the deployed revision. Example (git): \"0035781c50ec7aa23385dc841529ce8a4b70db1b\"",
          type = "string",
        },
      },
      type = "object",
    },
    Status = {
      description = "The Status type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by gRPC (https://github.com/grpc). Each Status message contains three pieces of data: error code, error message, and error details.You can find out more about this error model and how to work with it in the API Design Guide (https://cloud.google.com/apis/design/errors).",
      id = "Status",
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
    SuppressionInfo = {
      description = "Information about entries that were omitted from the session.",
      id = "SuppressionInfo",
      properties = {
        reason = {
          description = "The reason that entries were omitted from the session.",
          enum = {
            "REASON_UNSPECIFIED",
            "RATE_LIMIT",
            "NOT_CONSUMED",
          },
          enumDescriptions = {
            "Unexpected default.",
            "Indicates suppression occurred due to relevant entries being received in excess of rate limits. For quotas and limits, see Logging API quotas and limits (https://cloud.google.com/logging/quotas#api-limits).",
            "Indicates suppression occurred due to the client not consuming responses quickly enough.",
          },
          type = "string",
        },
        suppressedCount = {
          description = "A lower bound on the count of entries omitted due to reason.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    TailLogEntriesRequest = {
      description = "The parameters to TailLogEntries.",
      id = "TailLogEntriesRequest",
      properties = {
        bufferWindow = {
          description = "Optional. The amount of time to buffer log entries at the server before being returned to prevent out of order results due to late arriving log entries. Valid values are between 0-60000 milliseconds. Defaults to 2000 milliseconds.",
          format = "google-duration",
          type = "string",
        },
        filter = {
          description = "Optional. Only log entries that match the filter are returned. An empty filter matches all log entries in the resources listed in resource_names. Referencing a parent resource that is not listed in resource_names will cause the filter to return no results. The maximum length of a filter is 20,000 characters.",
          type = "string",
        },
        resourceNames = {
          description = "Required. Name of a parent resource from which to retrieve log entries: projects/[PROJECT_ID] organizations/[ORGANIZATION_ID] billingAccounts/[BILLING_ACCOUNT_ID] folders/[FOLDER_ID]May alternatively be one or more views: projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]/views/[VIEW_ID] organizations/[ORGANIZATION_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]/views/[VIEW_ID] billingAccounts/[BILLING_ACCOUNT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]/views/[VIEW_ID] folders/[FOLDER_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]/views/[VIEW_ID]",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    TailLogEntriesResponse = {
      description = "Result returned from TailLogEntries.",
      id = "TailLogEntriesResponse",
      properties = {
        entries = {
          description = "A list of log entries. Each response in the stream will order entries with increasing values of LogEntry.timestamp. Ordering is not guaranteed between separate responses.",
          items = {
            ["$ref"] = "LogEntry",
          },
          type = "array",
        },
        suppressionInfo = {
          description = "If entries that otherwise would have been included in the session were not sent back to the client, counts of relevant entries omitted from the session with the reason that they were not included. There will be at most one of each reason per response. The counts represent the number of suppressed entries since the last streamed response.",
          items = {
            ["$ref"] = "SuppressionInfo",
          },
          type = "array",
        },
      },
      type = "object",
    },
    UndeleteBucketRequest = {
      description = "The parameters to UndeleteBucket.",
      id = "UndeleteBucketRequest",
      properties = {},
      type = "object",
    },
    WriteLogEntriesRequest = {
      description = "The parameters to WriteLogEntries.",
      id = "WriteLogEntriesRequest",
      properties = {
        dryRun = {
          description = "Optional. If true, the request should expect normal response, but the entries won't be persisted nor exported. Useful for checking whether the logging API endpoints are working properly before sending valuable data.",
          type = "boolean",
        },
        entries = {
          description = "Required. The log entries to send to Logging. The order of log entries in this list does not matter. Values supplied in this method's log_name, resource, and labels fields are copied into those log entries in this list that do not include values for their corresponding fields. For more information, see the LogEntry type.If the timestamp or insert_id fields are missing in log entries, then this method supplies the current time or a unique identifier, respectively. The supplied values are chosen so that, among the log entries that did not supply their own values, the entries earlier in the list will sort before the entries later in the list. See the entries.list method.Log entries with timestamps that are more than the logs retention period (https://cloud.google.com/logging/quotas) in the past or more than 24 hours in the future will not be available when calling entries.list. However, those log entries can still be exported with LogSinks (https://cloud.google.com/logging/docs/api/tasks/exporting-logs).To improve throughput and to avoid exceeding the quota limit (https://cloud.google.com/logging/quotas) for calls to entries.write, you should try to include several log entries in this list, rather than calling this method for each individual log entry.",
          items = {
            ["$ref"] = "LogEntry",
          },
          type = "array",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "Optional. Default labels that are added to the labels field of all log entries in entries. If a log entry already has a label with the same key as a label in this parameter, then the log entry's label is not changed. See LogEntry.",
          type = "object",
        },
        logName = {
          description = "Optional. A default log resource name that is assigned to all log entries in entries that do not specify a value for log_name: projects/[PROJECT_ID]/logs/[LOG_ID] organizations/[ORGANIZATION_ID]/logs/[LOG_ID] billingAccounts/[BILLING_ACCOUNT_ID]/logs/[LOG_ID] folders/[FOLDER_ID]/logs/[LOG_ID][LOG_ID] must be URL-encoded. For example: \"projects/my-project-id/logs/syslog\" \"organizations/123/logs/cloudaudit.googleapis.com%2Factivity\" The permission logging.logEntries.create is needed on each project, organization, billing account, or folder that is receiving new log entries, whether the resource is specified in logName or in an individual log entry.",
          type = "string",
        },
        partialSuccess = {
          description = "Optional. Whether a batch's valid entries should be written even if some other entry failed due to a permanent error such as INVALID_ARGUMENT or PERMISSION_DENIED. If any entry failed, then the response status is the response status of one of the failed entries. The response will include error details in WriteLogEntriesPartialErrors.log_entry_errors keyed by the entries' zero-based index in the entries. Failed requests for which no entries are written will not include per-entry errors.",
          type = "boolean",
        },
        resource = {
          ["$ref"] = "MonitoredResource",
          description = "Optional. A default monitored resource object that is assigned to all log entries in entries that do not specify a value for resource. Example: { \"type\": \"gce_instance\", \"labels\": { \"zone\": \"us-central1-a\", \"instance_id\": \"00000000000000000000\" }} See LogEntry.",
        },
      },
      type = "object",
    },
    WriteLogEntriesResponse = {
      description = "Result returned from WriteLogEntries.",
      id = "WriteLogEntriesResponse",
      properties = {},
      type = "object",
    },
  },
  servicePath = "",
  title = "Cloud Logging API",
  version = "v2",
  version_module = true,
}
