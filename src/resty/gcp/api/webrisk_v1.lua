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
  baseUrl = "https://webrisk.googleapis.com/",
  batchPath = "batch",
  canonicalName = "Web Risk",
  description = "",
  discoveryVersion = "v1",
  documentationLink = "https://cloud.google.com/web-risk/",
  fullyEncodeReservedExpansion = true,
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "webrisk:v1",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://webrisk.mtls.googleapis.com/",
  name = "webrisk",
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
    hashes = {
      methods = {
        search = {
          description = "Gets the full hashes that match the requested hash prefix. This is used after a hash prefix is looked up in a threatList and there is a match. The client side threatList only holds partial hashes so the client must query this method to determine if there is a full hash match of a threat.",
          flatPath = "v1/hashes:search",
          httpMethod = "GET",
          id = "webrisk.hashes.search",
          parameterOrder = {},
          parameters = {
            hashPrefix = {
              description = "A hash prefix, consisting of the most significant 4-32 bytes of a SHA256 hash. For JSON requests, this field is base64-encoded. Note that if this parameter is provided by a URI, it must be encoded using the web safe base64 variant (RFC 4648).",
              format = "byte",
              location = "query",
              type = "string",
            },
            threatTypes = {
              description = "Required. The ThreatLists to search in. Multiple ThreatLists may be specified.",
              enum = {
                "THREAT_TYPE_UNSPECIFIED",
                "MALWARE",
                "SOCIAL_ENGINEERING",
                "UNWANTED_SOFTWARE",
                "SOCIAL_ENGINEERING_EXTENDED_COVERAGE",
              },
              enumDescriptions = {
                "No entries should match this threat type. This threat type is unused.",
                "Malware targeting any platform.",
                "Social engineering targeting any platform.",
                "Unwanted software targeting any platform.",
                "A list of extended coverage social engineering URIs targeting any platform.",
              },
              location = "query",
              repeated = true,
              type = "string",
            },
          },
          path = "v1/hashes:search",
          response = {
            ["$ref"] = "GoogleCloudWebriskV1SearchHashesResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
      },
    },
    projects = {
      resources = {
        operations = {
          methods = {
            cancel = {
              description = "Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of 1, corresponding to `Code.CANCELLED`.",
              flatPath = "v1/projects/{projectsId}/operations/{operationsId}:cancel",
              httpMethod = "POST",
              id = "webrisk.projects.operations.cancel",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "The name of the operation resource to be cancelled.",
                  location = "path",
                  pattern = "^projects/[^/]+/operations/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}:cancel",
              request = {
                ["$ref"] = "GoogleLongrunningCancelOperationRequest",
              },
              response = {
                ["$ref"] = "GoogleProtobufEmpty",
              },
            },
            delete = {
              description = "Deletes a long-running operation. This method indicates that the client is no longer interested in the operation result. It does not cancel the operation. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.",
              flatPath = "v1/projects/{projectsId}/operations/{operationsId}",
              httpMethod = "DELETE",
              id = "webrisk.projects.operations.delete",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "The name of the operation resource to be deleted.",
                  location = "path",
                  pattern = "^projects/[^/]+/operations/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}",
              response = {
                ["$ref"] = "GoogleProtobufEmpty",
              },
            },
            get = {
              description = "Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.",
              flatPath = "v1/projects/{projectsId}/operations/{operationsId}",
              httpMethod = "GET",
              id = "webrisk.projects.operations.get",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "The name of the operation resource.",
                  location = "path",
                  pattern = "^projects/[^/]+/operations/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}",
              response = {
                ["$ref"] = "GoogleLongrunningOperation",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            list = {
              description = "Lists operations that match the specified filter in the request. If the server doesn't support this method, it returns `UNIMPLEMENTED`. NOTE: the `name` binding allows API services to override the binding to use different resource name schemes, such as `users/*/operations`. To override the binding, API services can add a binding such as `\"/v1/{name=users/*}/operations\"` to their service configuration. For backwards compatibility, the default name includes the operations collection id, however overriding users must ensure the name binding is the parent resource, without the operations collection id.",
              flatPath = "v1/projects/{projectsId}/operations",
              httpMethod = "GET",
              id = "webrisk.projects.operations.list",
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
                  pattern = "^projects/[^/]+$",
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
              path = "v1/{+name}/operations",
              response = {
                ["$ref"] = "GoogleLongrunningListOperationsResponse",
              },
            },
          },
        },
        submissions = {
          methods = {
            create = {
              description = "Creates a Submission of a URI suspected of containing phishing content to be reviewed. If the result verifies the existence of malicious phishing content, the site will be added to the [Google's Social Engineering lists](https://support.google.com/webmasters/answer/6350487/) in order to protect users that could get exposed to this threat in the future. Only allowlisted projects can use this method during Early Access. Please reach out to Sales or your customer engineer to obtain access.",
              flatPath = "v1/projects/{projectsId}/submissions",
              httpMethod = "POST",
              id = "webrisk.projects.submissions.create",
              parameterOrder = {
                "parent",
              },
              parameters = {
                parent = {
                  description = "Required. The name of the project that is making the submission. This string is in the format \"projects/{project_number}\".",
                  location = "path",
                  pattern = "^projects/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/submissions",
              request = {
                ["$ref"] = "GoogleCloudWebriskV1Submission",
              },
              response = {
                ["$ref"] = "GoogleCloudWebriskV1Submission",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
          },
        },
        uris = {
          methods = {
            submit = {
              description = "Submits a URI suspected of containing malicious content to be reviewed. Returns a google.longrunning.Operation which, once the review is complete, is updated with its result. You can use the [Pub/Sub API] (https://cloud.google.com/pubsub) to receive notifications for the returned Operation. If the result verifies the existence of malicious content, the site will be added to the [Google's Social Engineering lists] (https://support.google.com/webmasters/answer/6350487/) in order to protect users that could get exposed to this threat in the future. Only allowlisted projects can use this method during Early Access. Please reach out to Sales or your customer engineer to obtain access.",
              flatPath = "v1/projects/{projectsId}/uris:submit",
              httpMethod = "POST",
              id = "webrisk.projects.uris.submit",
              parameterOrder = {
                "parent",
              },
              parameters = {
                parent = {
                  description = "Required. The name of the project that is making the submission. This string is in the format \"projects/{project_number}\".",
                  location = "path",
                  pattern = "^projects/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/uris:submit",
              request = {
                ["$ref"] = "GoogleCloudWebriskV1SubmitUriRequest",
              },
              response = {
                ["$ref"] = "GoogleLongrunningOperation",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
          },
        },
      },
    },
    threatLists = {
      methods = {
        computeDiff = {
          description = "Gets the most recent threat list diffs. These diffs should be applied to a local database of hashes to keep it up-to-date. If the local database is empty or excessively out-of-date, a complete snapshot of the database will be returned. This Method only updates a single ThreatList at a time. To update multiple ThreatList databases, this method needs to be called once for each list.",
          flatPath = "v1/threatLists:computeDiff",
          httpMethod = "GET",
          id = "webrisk.threatLists.computeDiff",
          parameterOrder = {},
          parameters = {
            ["constraints.maxDatabaseEntries"] = {
              description = "Sets the maximum number of entries that the client is willing to have in the local database. This should be a power of 2 between 2**10 and 2**20. If zero, no database size limit is set.",
              format = "int32",
              location = "query",
              type = "integer",
            },
            ["constraints.maxDiffEntries"] = {
              description = "The maximum size in number of entries. The diff will not contain more entries than this value. This should be a power of 2 between 2**10 and 2**20. If zero, no diff size limit is set.",
              format = "int32",
              location = "query",
              type = "integer",
            },
            ["constraints.supportedCompressions"] = {
              description = "The compression types supported by the client.",
              enum = {
                "COMPRESSION_TYPE_UNSPECIFIED",
                "RAW",
                "RICE",
              },
              enumDescriptions = {
                "Unknown.",
                "Raw, uncompressed data.",
                "Rice-Golomb encoded data.",
              },
              location = "query",
              repeated = true,
              type = "string",
            },
            threatType = {
              description = "Required. The threat list to update. Only a single ThreatType should be specified per request. If you want to handle multiple ThreatTypes, you must make one request per ThreatType.",
              enum = {
                "THREAT_TYPE_UNSPECIFIED",
                "MALWARE",
                "SOCIAL_ENGINEERING",
                "UNWANTED_SOFTWARE",
                "SOCIAL_ENGINEERING_EXTENDED_COVERAGE",
              },
              enumDescriptions = {
                "No entries should match this threat type. This threat type is unused.",
                "Malware targeting any platform.",
                "Social engineering targeting any platform.",
                "Unwanted software targeting any platform.",
                "A list of extended coverage social engineering URIs targeting any platform.",
              },
              location = "query",
              type = "string",
            },
            versionToken = {
              description = "The current version token of the client for the requested list (the client version that was received from the last successful diff). If the client does not have a version token (this is the first time calling ComputeThreatListDiff), this may be left empty and a full database snapshot will be returned.",
              format = "byte",
              location = "query",
              type = "string",
            },
          },
          path = "v1/threatLists:computeDiff",
          response = {
            ["$ref"] = "GoogleCloudWebriskV1ComputeThreatListDiffResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
      },
    },
    uris = {
      methods = {
        search = {
          description = "This method is used to check whether a URI is on a given threatList. Multiple threatLists may be searched in a single query. The response will list all requested threatLists the URI was found to match. If the URI is not found on any of the requested ThreatList an empty response will be returned.",
          flatPath = "v1/uris:search",
          httpMethod = "GET",
          id = "webrisk.uris.search",
          parameterOrder = {},
          parameters = {
            threatTypes = {
              description = "Required. The ThreatLists to search in. Multiple ThreatLists may be specified.",
              enum = {
                "THREAT_TYPE_UNSPECIFIED",
                "MALWARE",
                "SOCIAL_ENGINEERING",
                "UNWANTED_SOFTWARE",
                "SOCIAL_ENGINEERING_EXTENDED_COVERAGE",
              },
              enumDescriptions = {
                "No entries should match this threat type. This threat type is unused.",
                "Malware targeting any platform.",
                "Social engineering targeting any platform.",
                "Unwanted software targeting any platform.",
                "A list of extended coverage social engineering URIs targeting any platform.",
              },
              location = "query",
              repeated = true,
              type = "string",
            },
            uri = {
              description = "Required. The URI to be checked for matches.",
              location = "query",
              type = "string",
            },
          },
          path = "v1/uris:search",
          response = {
            ["$ref"] = "GoogleCloudWebriskV1SearchUrisResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
      },
    },
  },
  revision = "20230107",
  rootUrl = "https://webrisk.googleapis.com/",
  schemas = {
    GoogleCloudWebriskV1ComputeThreatListDiffResponse = {
      id = "GoogleCloudWebriskV1ComputeThreatListDiffResponse",
      properties = {
        additions = {
          ["$ref"] = "GoogleCloudWebriskV1ThreatEntryAdditions",
          description = "A set of entries to add to a local threat type's list.",
        },
        checksum = {
          ["$ref"] = "GoogleCloudWebriskV1ComputeThreatListDiffResponseChecksum",
          description = "The expected SHA256 hash of the client state; that is, of the sorted list of all hashes present in the database after applying the provided diff. If the client state doesn't match the expected state, the client must discard this diff and retry later.",
        },
        newVersionToken = {
          description = "The new opaque client version token. This should be retained by the client and passed into the next call of ComputeThreatListDiff as 'version_token'. A separate version token should be stored and used for each threatList.",
          format = "byte",
          type = "string",
        },
        recommendedNextDiff = {
          description = "The soonest the client should wait before issuing any diff request. Querying sooner is unlikely to produce a meaningful diff. Waiting longer is acceptable considering the use case. If this field is not set clients may update as soon as they want.",
          format = "google-datetime",
          type = "string",
        },
        removals = {
          ["$ref"] = "GoogleCloudWebriskV1ThreatEntryRemovals",
          description = "A set of entries to remove from a local threat type's list. This field may be empty.",
        },
        responseType = {
          description = "The type of response. This may indicate that an action must be taken by the client when the response is received.",
          enum = {
            "RESPONSE_TYPE_UNSPECIFIED",
            "DIFF",
            "RESET",
          },
          enumDescriptions = {
            "Unknown.",
            "Partial updates are applied to the client's existing local database.",
            "Full updates resets the client's entire local database. This means that either the client had no state, was seriously out-of-date, or the client is believed to be corrupt.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudWebriskV1ComputeThreatListDiffResponseChecksum = {
      description = "The expected state of a client's local database.",
      id = "GoogleCloudWebriskV1ComputeThreatListDiffResponseChecksum",
      properties = {
        sha256 = {
          description = "The SHA256 hash of the client state; that is, of the sorted list of all hashes present in the database.",
          format = "byte",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudWebriskV1RawHashes = {
      description = "The uncompressed threat entries in hash format. Hashes can be anywhere from 4 to 32 bytes in size. A large majority are 4 bytes, but some hashes are lengthened if they collide with the hash of a popular URI. Used for sending ThreatEntryAdditons to clients that do not support compression, or when sending non-4-byte hashes to clients that do support compression.",
      id = "GoogleCloudWebriskV1RawHashes",
      properties = {
        prefixSize = {
          description = "The number of bytes for each prefix encoded below. This field can be anywhere from 4 (shortest prefix) to 32 (full SHA256 hash). In practice this is almost always 4, except in exceptional circumstances.",
          format = "int32",
          type = "integer",
        },
        rawHashes = {
          description = "The hashes, in binary format, concatenated into one long string. Hashes are sorted in lexicographic order. For JSON API users, hashes are base64-encoded.",
          format = "byte",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudWebriskV1RawIndices = {
      description = "A set of raw indices to remove from a local list.",
      id = "GoogleCloudWebriskV1RawIndices",
      properties = {
        indices = {
          description = "The indices to remove from a lexicographically-sorted local list.",
          items = {
            format = "int32",
            type = "integer",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudWebriskV1RiceDeltaEncoding = {
      description = "The Rice-Golomb encoded data. Used for sending compressed 4-byte hashes or compressed removal indices.",
      id = "GoogleCloudWebriskV1RiceDeltaEncoding",
      properties = {
        encodedData = {
          description = "The encoded deltas that are encoded using the Golomb-Rice coder.",
          format = "byte",
          type = "string",
        },
        entryCount = {
          description = "The number of entries that are delta encoded in the encoded data. If only a single integer was encoded, this will be zero and the single value will be stored in `first_value`.",
          format = "int32",
          type = "integer",
        },
        firstValue = {
          description = "The offset of the first entry in the encoded data, or, if only a single integer was encoded, that single integer's value. If the field is empty or missing, assume zero.",
          format = "int64",
          type = "string",
        },
        riceParameter = {
          description = "The Golomb-Rice parameter, which is a number between 2 and 28. This field is missing (that is, zero) if `num_entries` is zero.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    GoogleCloudWebriskV1SearchHashesResponse = {
      id = "GoogleCloudWebriskV1SearchHashesResponse",
      properties = {
        negativeExpireTime = {
          description = "For requested entities that did not match the threat list, how long to cache the response until.",
          format = "google-datetime",
          type = "string",
        },
        threats = {
          description = "The full hashes that matched the requested prefixes. The hash will be populated in the key.",
          items = {
            ["$ref"] = "GoogleCloudWebriskV1SearchHashesResponseThreatHash",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudWebriskV1SearchHashesResponseThreatHash = {
      description = "Contains threat information on a matching hash.",
      id = "GoogleCloudWebriskV1SearchHashesResponseThreatHash",
      properties = {
        expireTime = {
          description = "The cache lifetime for the returned match. Clients must not cache this response past this timestamp to avoid false positives.",
          format = "google-datetime",
          type = "string",
        },
        hash = {
          description = "A 32 byte SHA256 hash. This field is in binary format. For JSON requests, hashes are base64-encoded.",
          format = "byte",
          type = "string",
        },
        threatTypes = {
          description = "The ThreatList this threat belongs to. This must contain at least one entry.",
          items = {
            enum = {
              "THREAT_TYPE_UNSPECIFIED",
              "MALWARE",
              "SOCIAL_ENGINEERING",
              "UNWANTED_SOFTWARE",
              "SOCIAL_ENGINEERING_EXTENDED_COVERAGE",
            },
            enumDescriptions = {
              "No entries should match this threat type. This threat type is unused.",
              "Malware targeting any platform.",
              "Social engineering targeting any platform.",
              "Unwanted software targeting any platform.",
              "A list of extended coverage social engineering URIs targeting any platform.",
            },
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudWebriskV1SearchUrisResponse = {
      id = "GoogleCloudWebriskV1SearchUrisResponse",
      properties = {
        threat = {
          ["$ref"] = "GoogleCloudWebriskV1SearchUrisResponseThreatUri",
          description = "The threat list matches. This might be empty if the URI is on no list.",
        },
      },
      type = "object",
    },
    GoogleCloudWebriskV1SearchUrisResponseThreatUri = {
      description = "Contains threat information on a matching uri.",
      id = "GoogleCloudWebriskV1SearchUrisResponseThreatUri",
      properties = {
        expireTime = {
          description = "The cache lifetime for the returned match. Clients must not cache this response past this timestamp to avoid false positives.",
          format = "google-datetime",
          type = "string",
        },
        threatTypes = {
          description = "The ThreatList this threat belongs to.",
          items = {
            enum = {
              "THREAT_TYPE_UNSPECIFIED",
              "MALWARE",
              "SOCIAL_ENGINEERING",
              "UNWANTED_SOFTWARE",
              "SOCIAL_ENGINEERING_EXTENDED_COVERAGE",
            },
            enumDescriptions = {
              "No entries should match this threat type. This threat type is unused.",
              "Malware targeting any platform.",
              "Social engineering targeting any platform.",
              "Unwanted software targeting any platform.",
              "A list of extended coverage social engineering URIs targeting any platform.",
            },
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudWebriskV1Submission = {
      description = "Wraps a URI that might be displaying malicious content.",
      id = "GoogleCloudWebriskV1Submission",
      properties = {
        threatTypes = {
          description = "ThreatTypes found to be associated with the submitted URI after reviewing it. This might be empty if the URI was not added to any list.",
          items = {
            enum = {
              "THREAT_TYPE_UNSPECIFIED",
              "MALWARE",
              "SOCIAL_ENGINEERING",
              "UNWANTED_SOFTWARE",
              "SOCIAL_ENGINEERING_EXTENDED_COVERAGE",
            },
            enumDescriptions = {
              "No entries should match this threat type. This threat type is unused.",
              "Malware targeting any platform.",
              "Social engineering targeting any platform.",
              "Unwanted software targeting any platform.",
              "A list of extended coverage social engineering URIs targeting any platform.",
            },
            type = "string",
          },
          type = "array",
        },
        uri = {
          description = "Required. The URI that is being reported for malicious content to be analyzed.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudWebriskV1SubmitUriMetadata = {
      description = "Metadata for the Submit URI long-running operation.",
      id = "GoogleCloudWebriskV1SubmitUriMetadata",
      properties = {
        createTime = {
          description = "Creation time of the operation.",
          format = "google-datetime",
          type = "string",
        },
        state = {
          description = "The state of the operation.",
          enum = {
            "STATE_UNSPECIFIED",
            "RUNNING",
            "SUCCEEDED",
            "CANCELLED",
            "FAILED",
            "CLOSED",
          },
          enumDescriptions = {
            "Default unspecified state.",
            "The operation is currently running.",
            "The operation finished with a success status.",
            "The operation was cancelled.",
            "The operation finished with a failure status.",
            "The operation was closed with no action taken.",
          },
          type = "string",
        },
        updateTime = {
          description = "Latest update time of the operation.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudWebriskV1SubmitUriRequest = {
      description = "Request to send a potentially malicious URI to WebRisk.",
      id = "GoogleCloudWebriskV1SubmitUriRequest",
      properties = {
        submission = {
          ["$ref"] = "GoogleCloudWebriskV1Submission",
          description = "Required. The submission that contains the URI to be scanned.",
        },
      },
      type = "object",
    },
    GoogleCloudWebriskV1ThreatEntryAdditions = {
      description = "Contains the set of entries to add to a local database. May contain a combination of compressed and raw data in a single response.",
      id = "GoogleCloudWebriskV1ThreatEntryAdditions",
      properties = {
        rawHashes = {
          description = "The raw SHA256-formatted entries. Repeated to allow returning sets of hashes with different prefix sizes.",
          items = {
            ["$ref"] = "GoogleCloudWebriskV1RawHashes",
          },
          type = "array",
        },
        riceHashes = {
          ["$ref"] = "GoogleCloudWebriskV1RiceDeltaEncoding",
          description = "The encoded 4-byte prefixes of SHA256-formatted entries, using a Golomb-Rice encoding. The hashes are converted to uint32, sorted in ascending order, then delta encoded and stored as encoded_data.",
        },
      },
      type = "object",
    },
    GoogleCloudWebriskV1ThreatEntryRemovals = {
      description = "Contains the set of entries to remove from a local database.",
      id = "GoogleCloudWebriskV1ThreatEntryRemovals",
      properties = {
        rawIndices = {
          ["$ref"] = "GoogleCloudWebriskV1RawIndices",
          description = "The raw removal indices for a local list.",
        },
        riceIndices = {
          ["$ref"] = "GoogleCloudWebriskV1RiceDeltaEncoding",
          description = "The encoded local, lexicographically-sorted list indices, using a Golomb-Rice encoding. Used for sending compressed removal indices. The removal indices (uint32) are sorted in ascending order, then delta encoded and stored as encoded_data.",
        },
      },
      type = "object",
    },
    GoogleLongrunningCancelOperationRequest = {
      description = "The request message for Operations.CancelOperation.",
      id = "GoogleLongrunningCancelOperationRequest",
      properties = {},
      type = "object",
    },
    GoogleLongrunningListOperationsResponse = {
      description = "The response message for Operations.ListOperations.",
      id = "GoogleLongrunningListOperationsResponse",
      properties = {
        nextPageToken = {
          description = "The standard List next-page token.",
          type = "string",
        },
        operations = {
          description = "A list of operations that matches the specified filter in the request.",
          items = {
            ["$ref"] = "GoogleLongrunningOperation",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleLongrunningOperation = {
      description = "This resource represents a long-running operation that is the result of a network API call.",
      id = "GoogleLongrunningOperation",
      properties = {
        done = {
          description = "If the value is `false`, it means the operation is still in progress. If `true`, the operation is completed, and either `error` or `response` is available.",
          type = "boolean",
        },
        error = {
          ["$ref"] = "GoogleRpcStatus",
          description = "The error result of the operation in case of failure or cancellation.",
        },
        metadata = {
          additionalProperties = {
            description = "Properties of the object. Contains field @type with type URL.",
            type = "any",
          },
          description = "Contains a `SubmitUriMetadata` object.",
          type = "object",
        },
        name = {
          description = "Matches the `/v1/{project-name}/operations/{operation-id}` pattern.",
          type = "string",
        },
        response = {
          additionalProperties = {
            description = "Properties of the object. Contains field @type with type URL.",
            type = "any",
          },
          description = "The normal response of the operation in case of success. If the original method returns no data on success, such as `Delete`, the response is `google.protobuf.Empty`. If the original method is standard `Get`/`Create`/`Update`, the response should be the resource. For other methods, the response should have the type `XxxResponse`, where `Xxx` is the original method name. For example, if the original method name is `TakeSnapshot()`, the inferred response type is `TakeSnapshotResponse`.",
          type = "object",
        },
      },
      type = "object",
    },
    GoogleProtobufEmpty = {
      description = "A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }",
      id = "GoogleProtobufEmpty",
      properties = {},
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
  },
  servicePath = "",
  title = "Web Risk API",
  version = "v1",
  version_module = true,
}
