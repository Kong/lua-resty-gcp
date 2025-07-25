return {
  auth = {
    oauth2 = {
      scopes = {
        ["https://www.googleapis.com/auth/cloud_search"] = {
          description = "Index and serve your organization's data with Cloud Search",
        },
        ["https://www.googleapis.com/auth/cloud_search.debug"] = {
          description = "Index and serve your organization's data with Cloud Search",
        },
        ["https://www.googleapis.com/auth/cloud_search.indexing"] = {
          description = "Index and serve your organization's data with Cloud Search",
        },
        ["https://www.googleapis.com/auth/cloud_search.query"] = {
          description = "Search your organization's data in the Cloud Search index",
        },
        ["https://www.googleapis.com/auth/cloud_search.settings"] = {
          description = "Index and serve your organization's data with Cloud Search",
        },
        ["https://www.googleapis.com/auth/cloud_search.settings.indexing"] = {
          description = "Index and serve your organization's data with Cloud Search",
        },
        ["https://www.googleapis.com/auth/cloud_search.settings.query"] = {
          description = "Index and serve your organization's data with Cloud Search",
        },
        ["https://www.googleapis.com/auth/cloud_search.stats"] = {
          description = "Index and serve your organization's data with Cloud Search",
        },
        ["https://www.googleapis.com/auth/cloud_search.stats.indexing"] = {
          description = "Index and serve your organization's data with Cloud Search",
        },
      },
    },
  },
  basePath = "",
  baseUrl = "https://cloudsearch.googleapis.com/",
  batchPath = "batch",
  canonicalName = "Cloud Search",
  description = "Cloud Search provides cloud-based search capabilities over Google Workspace data. The Cloud Search API allows indexing of non-Google Workspace data into Cloud Search.",
  discoveryVersion = "v1",
  documentationLink = "https://developers.google.com/cloud-search/docs/guides/",
  fullyEncodeReservedExpansion = true,
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "cloudsearch:v1",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://cloudsearch.mtls.googleapis.com/",
  name = "cloudsearch",
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
    debug = {
      resources = {
        datasources = {
          resources = {
            items = {
              methods = {
                checkAccess = {
                  description = "Checks whether an item is accessible by specified principal. Principal must be a user; groups and domain values aren't supported. **Note:** This API requires an admin account to execute.",
                  flatPath = "v1/debug/datasources/{datasourcesId}/items/{itemsId}:checkAccess",
                  httpMethod = "POST",
                  id = "cloudsearch.debug.datasources.items.checkAccess",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    ["debugOptions.enableDebugging"] = {
                      description = "If you are asked by Google to help with debugging, set this field. Otherwise, ignore this field.",
                      location = "query",
                      type = "boolean",
                    },
                    name = {
                      description = "Item name, format: datasources/{source_id}/items/{item_id}",
                      location = "path",
                      pattern = "^datasources/[^/]+/items/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/debug/{+name}:checkAccess",
                  request = {
                    ["$ref"] = "Principal",
                  },
                  response = {
                    ["$ref"] = "CheckAccessResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud_search",
                    "https://www.googleapis.com/auth/cloud_search.debug",
                  },
                },
                searchByViewUrl = {
                  description = "Fetches the item whose viewUrl exactly matches that of the URL provided in the request. **Note:** This API requires an admin account to execute.",
                  flatPath = "v1/debug/datasources/{datasourcesId}/items:searchByViewUrl",
                  httpMethod = "POST",
                  id = "cloudsearch.debug.datasources.items.searchByViewUrl",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Source name, format: datasources/{source_id}",
                      location = "path",
                      pattern = "^datasources/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/debug/{+name}/items:searchByViewUrl",
                  request = {
                    ["$ref"] = "SearchItemsByViewUrlRequest",
                  },
                  response = {
                    ["$ref"] = "SearchItemsByViewUrlResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud_search",
                    "https://www.googleapis.com/auth/cloud_search.debug",
                  },
                },
              },
              resources = {
                unmappedids = {
                  methods = {
                    list = {
                      description = "List all unmapped identities for a specific item. **Note:** This API requires an admin account to execute.",
                      flatPath = "v1/debug/datasources/{datasourcesId}/items/{itemsId}/unmappedids",
                      httpMethod = "GET",
                      id = "cloudsearch.debug.datasources.items.unmappedids.list",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        ["debugOptions.enableDebugging"] = {
                          description = "If you are asked by Google to help with debugging, set this field. Otherwise, ignore this field.",
                          location = "query",
                          type = "boolean",
                        },
                        pageSize = {
                          description = "Maximum number of items to fetch in a request. Defaults to 100.",
                          format = "int32",
                          location = "query",
                          type = "integer",
                        },
                        pageToken = {
                          description = "The next_page_token value returned from a previous List request, if any.",
                          location = "query",
                          type = "string",
                        },
                        parent = {
                          description = "The name of the item, in the following format: datasources/{source_id}/items/{ID}",
                          location = "path",
                          pattern = "^datasources/[^/]+/items/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/debug/{+parent}/unmappedids",
                      response = {
                        ["$ref"] = "ListUnmappedIdentitiesResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud_search",
                        "https://www.googleapis.com/auth/cloud_search.debug",
                      },
                    },
                  },
                },
              },
            },
          },
        },
        identitysources = {
          resources = {
            items = {
              methods = {
                listForunmappedidentity = {
                  description = "Lists names of items associated with an unmapped identity. **Note:** This API requires an admin account to execute.",
                  flatPath = "v1/debug/identitysources/{identitysourcesId}/items:forunmappedidentity",
                  httpMethod = "GET",
                  id = "cloudsearch.debug.identitysources.items.listForunmappedidentity",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    ["debugOptions.enableDebugging"] = {
                      description = "If you are asked by Google to help with debugging, set this field. Otherwise, ignore this field.",
                      location = "query",
                      type = "boolean",
                    },
                    groupResourceName = {
                      location = "query",
                      type = "string",
                    },
                    pageSize = {
                      description = "Maximum number of items to fetch in a request. Defaults to 100.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "The next_page_token value returned from a previous List request, if any.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "The name of the identity source, in the following format: identitysources/{source_id}}",
                      location = "path",
                      pattern = "^identitysources/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    userResourceName = {
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/debug/{+parent}/items:forunmappedidentity",
                  response = {
                    ["$ref"] = "ListItemNamesForUnmappedIdentityResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud_search",
                    "https://www.googleapis.com/auth/cloud_search.debug",
                  },
                },
              },
            },
            unmappedids = {
              methods = {
                list = {
                  description = "Lists unmapped user identities for an identity source. **Note:** This API requires an admin account to execute.",
                  flatPath = "v1/debug/identitysources/{identitysourcesId}/unmappedids",
                  httpMethod = "GET",
                  id = "cloudsearch.debug.identitysources.unmappedids.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    ["debugOptions.enableDebugging"] = {
                      description = "If you are asked by Google to help with debugging, set this field. Otherwise, ignore this field.",
                      location = "query",
                      type = "boolean",
                    },
                    pageSize = {
                      description = "Maximum number of items to fetch in a request. Defaults to 100.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "The next_page_token value returned from a previous List request, if any.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "The name of the identity source, in the following format: identitysources/{source_id}",
                      location = "path",
                      pattern = "^identitysources/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    resolutionStatusCode = {
                      description = "Limit users selection to this status.",
                      enum = {
                        "CODE_UNSPECIFIED",
                        "NOT_FOUND",
                        "IDENTITY_SOURCE_NOT_FOUND",
                        "IDENTITY_SOURCE_MISCONFIGURED",
                        "TOO_MANY_MAPPINGS_FOUND",
                        "INTERNAL_ERROR",
                      },
                      enumDescriptions = {
                        "Input-only value. Used to list all unmapped identities regardless of status.",
                        "The unmapped identity was not found in IDaaS, and needs to be provided by the user.",
                        "The identity source associated with the identity was either not found or deleted.",
                        "IDaaS does not understand the identity source, probably because the schema was modified in a non compatible way.",
                        "The number of users associated with the external identity is too large.",
                        "Internal error.",
                      },
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/debug/{+parent}/unmappedids",
                  response = {
                    ["$ref"] = "ListUnmappedIdentitiesResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud_search",
                    "https://www.googleapis.com/auth/cloud_search.debug",
                  },
                },
              },
            },
          },
        },
      },
    },
    indexing = {
      resources = {
        datasources = {
          methods = {
            deleteSchema = {
              description = "Deletes the schema of a data source. **Note:** This API requires an admin or service account to execute.",
              flatPath = "v1/indexing/datasources/{datasourcesId}/schema",
              httpMethod = "DELETE",
              id = "cloudsearch.indexing.datasources.deleteSchema",
              parameterOrder = {
                "name",
              },
              parameters = {
                ["debugOptions.enableDebugging"] = {
                  description = "If you are asked by Google to help with debugging, set this field. Otherwise, ignore this field.",
                  location = "query",
                  type = "boolean",
                },
                name = {
                  description = "The name of the data source to delete Schema. Format: datasources/{source_id}",
                  location = "path",
                  pattern = "^datasources/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/indexing/{+name}/schema",
              response = {
                ["$ref"] = "Operation",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud_search",
                "https://www.googleapis.com/auth/cloud_search.settings",
                "https://www.googleapis.com/auth/cloud_search.settings.indexing",
              },
            },
            getSchema = {
              description = "Gets the schema of a data source. **Note:** This API requires an admin or service account to execute.",
              flatPath = "v1/indexing/datasources/{datasourcesId}/schema",
              httpMethod = "GET",
              id = "cloudsearch.indexing.datasources.getSchema",
              parameterOrder = {
                "name",
              },
              parameters = {
                ["debugOptions.enableDebugging"] = {
                  description = "If you are asked by Google to help with debugging, set this field. Otherwise, ignore this field.",
                  location = "query",
                  type = "boolean",
                },
                name = {
                  description = "The name of the data source to get Schema. Format: datasources/{source_id}",
                  location = "path",
                  pattern = "^datasources/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/indexing/{+name}/schema",
              response = {
                ["$ref"] = "Schema",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud_search",
                "https://www.googleapis.com/auth/cloud_search.settings",
                "https://www.googleapis.com/auth/cloud_search.settings.indexing",
              },
            },
            updateSchema = {
              description = "Updates the schema of a data source. This method does not perform incremental updates to the schema. Instead, this method updates the schema by overwriting the entire schema. **Note:** This API requires an admin or service account to execute.",
              flatPath = "v1/indexing/datasources/{datasourcesId}/schema",
              httpMethod = "PUT",
              id = "cloudsearch.indexing.datasources.updateSchema",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "The name of the data source to update Schema. Format: datasources/{source_id}",
                  location = "path",
                  pattern = "^datasources/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/indexing/{+name}/schema",
              request = {
                ["$ref"] = "UpdateSchemaRequest",
              },
              response = {
                ["$ref"] = "Operation",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud_search",
                "https://www.googleapis.com/auth/cloud_search.settings",
                "https://www.googleapis.com/auth/cloud_search.settings.indexing",
              },
            },
          },
          resources = {
            items = {
              methods = {
                delete = {
                  description = "Deletes Item resource for the specified resource name. This API requires an admin or service account to execute. The service account used is the one whitelisted in the corresponding data source.",
                  flatPath = "v1/indexing/datasources/{datasourcesId}/items/{itemsId}",
                  httpMethod = "DELETE",
                  id = "cloudsearch.indexing.datasources.items.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    connectorName = {
                      description = "The name of connector making this call. Format: datasources/{source_id}/connectors/{ID}",
                      location = "query",
                      type = "string",
                    },
                    ["debugOptions.enableDebugging"] = {
                      description = "If you are asked by Google to help with debugging, set this field. Otherwise, ignore this field.",
                      location = "query",
                      type = "boolean",
                    },
                    mode = {
                      description = "Required. The RequestMode for this request.",
                      enum = {
                        "UNSPECIFIED",
                        "SYNCHRONOUS",
                        "ASYNCHRONOUS",
                      },
                      enumDescriptions = {
                        "The priority is not specified in the update request. Leaving priority unspecified results in an update failure.",
                        "For real-time updates.",
                        "For changes that are executed after the response is sent back to the caller.",
                      },
                      location = "query",
                      type = "string",
                    },
                    name = {
                      description = "Required. The name of the item to delete. Format: datasources/{source_id}/items/{item_id}",
                      location = "path",
                      pattern = "^datasources/[^/]+/items/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    version = {
                      description = "Required. The incremented version of the item to delete from the index. The indexing system stores the version from the datasource as a byte string and compares the Item version in the index to the version of the queued Item using lexical ordering. Cloud Search Indexing won't delete any queued item with a version value that is less than or equal to the version of the currently indexed item. The maximum length for this field is 1024 bytes. For information on how item version affects the deletion process, refer to [Handle revisions after manual deletes](https://developers.google.com/cloud-search/docs/guides/operations).",
                      format = "byte",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/indexing/{+name}",
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud_search",
                    "https://www.googleapis.com/auth/cloud_search.indexing",
                  },
                },
                deleteQueueItems = {
                  description = "Deletes all items in a queue. This method is useful for deleting stale items. This API requires an admin or service account to execute. The service account used is the one whitelisted in the corresponding data source.",
                  flatPath = "v1/indexing/datasources/{datasourcesId}/items:deleteQueueItems",
                  httpMethod = "POST",
                  id = "cloudsearch.indexing.datasources.items.deleteQueueItems",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "The name of the Data Source to delete items in a queue. Format: datasources/{source_id}",
                      location = "path",
                      pattern = "^datasources/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/indexing/{+name}/items:deleteQueueItems",
                  request = {
                    ["$ref"] = "DeleteQueueItemsRequest",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud_search",
                    "https://www.googleapis.com/auth/cloud_search.indexing",
                  },
                },
                get = {
                  description = "Gets Item resource by item name. This API requires an admin or service account to execute. The service account used is the one whitelisted in the corresponding data source.",
                  flatPath = "v1/indexing/datasources/{datasourcesId}/items/{itemsId}",
                  httpMethod = "GET",
                  id = "cloudsearch.indexing.datasources.items.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    connectorName = {
                      description = "The name of connector making this call. Format: datasources/{source_id}/connectors/{ID}",
                      location = "query",
                      type = "string",
                    },
                    ["debugOptions.enableDebugging"] = {
                      description = "If you are asked by Google to help with debugging, set this field. Otherwise, ignore this field.",
                      location = "query",
                      type = "boolean",
                    },
                    name = {
                      description = "The name of the item to get info. Format: datasources/{source_id}/items/{item_id}",
                      location = "path",
                      pattern = "^datasources/[^/]+/items/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/indexing/{+name}",
                  response = {
                    ["$ref"] = "Item",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud_search",
                    "https://www.googleapis.com/auth/cloud_search.indexing",
                  },
                },
                index = {
                  description = "Updates Item ACL, metadata, and content. It will insert the Item if it does not exist. This method does not support partial updates. Fields with no provided values are cleared out in the Cloud Search index. This API requires an admin or service account to execute. The service account used is the one whitelisted in the corresponding data source.",
                  flatPath = "v1/indexing/datasources/{datasourcesId}/items/{itemsId}:index",
                  httpMethod = "POST",
                  id = "cloudsearch.indexing.datasources.items.index",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "The name of the Item. Format: datasources/{source_id}/items/{item_id} This is a required field. The maximum length is 1536 characters.",
                      location = "path",
                      pattern = "^datasources/[^/]+/items/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/indexing/{+name}:index",
                  request = {
                    ["$ref"] = "IndexItemRequest",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud_search",
                    "https://www.googleapis.com/auth/cloud_search.indexing",
                  },
                },
                list = {
                  description = "Lists all or a subset of Item resources. This API requires an admin or service account to execute. The service account used is the one whitelisted in the corresponding data source.",
                  flatPath = "v1/indexing/datasources/{datasourcesId}/items",
                  httpMethod = "GET",
                  id = "cloudsearch.indexing.datasources.items.list",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    brief = {
                      description = "When set to true, the indexing system only populates the following fields: name, version, queue. metadata.hash, metadata.title, metadata.sourceRepositoryURL, metadata.objectType, metadata.createTime, metadata.updateTime, metadata.contentLanguage, metadata.mimeType, structured_data.hash, content.hash, itemType, itemStatus.code, itemStatus.processingError.code, itemStatus.repositoryError.type, If this value is false, then all the fields are populated in Item.",
                      location = "query",
                      type = "boolean",
                    },
                    connectorName = {
                      description = "The name of connector making this call. Format: datasources/{source_id}/connectors/{ID}",
                      location = "query",
                      type = "string",
                    },
                    ["debugOptions.enableDebugging"] = {
                      description = "If you are asked by Google to help with debugging, set this field. Otherwise, ignore this field.",
                      location = "query",
                      type = "boolean",
                    },
                    name = {
                      description = "The name of the Data Source to list Items. Format: datasources/{source_id}",
                      location = "path",
                      pattern = "^datasources/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    pageSize = {
                      description = "Maximum number of items to fetch in a request. The max value is 1000 when brief is true. The max value is 10 if brief is false. The default value is 10",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "The next_page_token value returned from a previous List request, if any.",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/indexing/{+name}/items",
                  response = {
                    ["$ref"] = "ListItemsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud_search",
                    "https://www.googleapis.com/auth/cloud_search.indexing",
                  },
                },
                poll = {
                  description = "Polls for unreserved items from the indexing queue and marks a set as reserved, starting with items that have the oldest timestamp from the highest priority ItemStatus. The priority order is as follows: ERROR MODIFIED NEW_ITEM ACCEPTED Reserving items ensures that polling from other threads cannot create overlapping sets. After handling the reserved items, the client should put items back into the unreserved state, either by calling index, or by calling push with the type REQUEUE. Items automatically become available (unreserved) after 4 hours even if no update or push method is called. This API requires an admin or service account to execute. The service account used is the one whitelisted in the corresponding data source.",
                  flatPath = "v1/indexing/datasources/{datasourcesId}/items:poll",
                  httpMethod = "POST",
                  id = "cloudsearch.indexing.datasources.items.poll",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "The name of the Data Source to poll items. Format: datasources/{source_id}",
                      location = "path",
                      pattern = "^datasources/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/indexing/{+name}/items:poll",
                  request = {
                    ["$ref"] = "PollItemsRequest",
                  },
                  response = {
                    ["$ref"] = "PollItemsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud_search",
                    "https://www.googleapis.com/auth/cloud_search.indexing",
                  },
                },
                push = {
                  description = "Pushes an item onto a queue for later polling and updating. This API requires an admin or service account to execute. The service account used is the one whitelisted in the corresponding data source.",
                  flatPath = "v1/indexing/datasources/{datasourcesId}/items/{itemsId}:push",
                  httpMethod = "POST",
                  id = "cloudsearch.indexing.datasources.items.push",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "The name of the item to push into the indexing queue. Format: datasources/{source_id}/items/{ID} This is a required field. The maximum length is 1536 characters.",
                      location = "path",
                      pattern = "^datasources/[^/]+/items/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/indexing/{+name}:push",
                  request = {
                    ["$ref"] = "PushItemRequest",
                  },
                  response = {
                    ["$ref"] = "Item",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud_search",
                    "https://www.googleapis.com/auth/cloud_search.indexing",
                  },
                },
                unreserve = {
                  description = "Unreserves all items from a queue, making them all eligible to be polled. This method is useful for resetting the indexing queue after a connector has been restarted. This API requires an admin or service account to execute. The service account used is the one whitelisted in the corresponding data source.",
                  flatPath = "v1/indexing/datasources/{datasourcesId}/items:unreserve",
                  httpMethod = "POST",
                  id = "cloudsearch.indexing.datasources.items.unreserve",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "The name of the Data Source to unreserve all items. Format: datasources/{source_id}",
                      location = "path",
                      pattern = "^datasources/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/indexing/{+name}/items:unreserve",
                  request = {
                    ["$ref"] = "UnreserveItemsRequest",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud_search",
                    "https://www.googleapis.com/auth/cloud_search.indexing",
                  },
                },
                upload = {
                  description = "Creates an upload session for uploading item content. For items smaller than 100 KB, it's easier to embed the content inline within an index request. This API requires an admin or service account to execute. The service account used is the one whitelisted in the corresponding data source.",
                  flatPath = "v1/indexing/datasources/{datasourcesId}/items/{itemsId}:upload",
                  httpMethod = "POST",
                  id = "cloudsearch.indexing.datasources.items.upload",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "The name of the Item to start a resumable upload. Format: datasources/{source_id}/items/{item_id}. The maximum length is 1536 bytes.",
                      location = "path",
                      pattern = "^datasources/[^/]+/items/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/indexing/{+name}:upload",
                  request = {
                    ["$ref"] = "StartUploadItemRequest",
                  },
                  response = {
                    ["$ref"] = "UploadItemRef",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud_search",
                    "https://www.googleapis.com/auth/cloud_search.indexing",
                  },
                },
              },
            },
          },
        },
      },
    },
    media = {
      methods = {
        upload = {
          description = "Uploads media for indexing. The upload endpoint supports direct and resumable upload protocols and is intended for large items that can not be [inlined during index requests](https://developers.google.com/cloud-search/docs/reference/rest/v1/indexing.datasources.items#itemcontent). To index large content: 1. Call indexing.datasources.items.upload with the item name to begin an upload session and retrieve the UploadItemRef. 1. Call media.upload to upload the content, as a streaming request, using the same resource name from the UploadItemRef from step 1. 1. Call indexing.datasources.items.index to index the item. Populate the [ItemContent](/cloud-search/docs/reference/rest/v1/indexing.datasources.items#ItemContent) with the UploadItemRef from step 1. For additional information, see [Create a content connector using the REST API](https://developers.google.com/cloud-search/docs/guides/content-connector#rest). **Note:** This API requires a service account to execute.",
          flatPath = "v1/media/{mediaId}",
          httpMethod = "POST",
          id = "cloudsearch.media.upload",
          mediaUpload = {
            accept = {
              "*/*",
            },
            protocols = {
              simple = {
                multipart = true,
                path = "/upload/v1/media/{+resourceName}",
              },
            },
          },
          parameterOrder = {
            "resourceName",
          },
          parameters = {
            resourceName = {
              description = "Name of the media that is being downloaded. See ReadRequest.resource_name.",
              location = "path",
              pattern = "^.*$",
              required = true,
              type = "string",
            },
          },
          path = "v1/media/{+resourceName}",
          request = {
            ["$ref"] = "Media",
          },
          response = {
            ["$ref"] = "Media",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud_search",
            "https://www.googleapis.com/auth/cloud_search.indexing",
          },
          supportsMediaUpload = true,
        },
      },
    },
    operations = {
      methods = {
        get = {
          description = "Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.",
          flatPath = "v1/operations/{operationsId}",
          httpMethod = "GET",
          id = "cloudsearch.operations.get",
          parameterOrder = {
            "name",
          },
          parameters = {
            name = {
              description = "The name of the operation resource.",
              location = "path",
              pattern = "^operations/.*$",
              required = true,
              type = "string",
            },
          },
          path = "v1/{+name}",
          response = {
            ["$ref"] = "Operation",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud_search",
            "https://www.googleapis.com/auth/cloud_search.debug",
            "https://www.googleapis.com/auth/cloud_search.indexing",
            "https://www.googleapis.com/auth/cloud_search.settings",
            "https://www.googleapis.com/auth/cloud_search.settings.indexing",
            "https://www.googleapis.com/auth/cloud_search.settings.query",
          },
        },
      },
      resources = {
        lro = {
          methods = {
            list = {
              description = "Lists operations that match the specified filter in the request. If the server doesn't support this method, it returns `UNIMPLEMENTED`. NOTE: the `name` binding allows API services to override the binding to use different resource name schemes, such as `users/*/operations`. To override the binding, API services can add a binding such as `\"/v1/{name=users/*}/operations\"` to their service configuration. For backwards compatibility, the default name includes the operations collection id, however overriding users must ensure the name binding is the parent resource, without the operations collection id.",
              flatPath = "v1/operations/{operationsId}/lro",
              httpMethod = "GET",
              id = "cloudsearch.operations.lro.list",
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
                  pattern = "^operations/.*$",
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
              path = "v1/{+name}/lro",
              response = {
                ["$ref"] = "ListOperationsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud_search",
                "https://www.googleapis.com/auth/cloud_search.debug",
                "https://www.googleapis.com/auth/cloud_search.indexing",
                "https://www.googleapis.com/auth/cloud_search.settings",
                "https://www.googleapis.com/auth/cloud_search.settings.indexing",
                "https://www.googleapis.com/auth/cloud_search.settings.query",
              },
            },
          },
        },
      },
    },
    query = {
      methods = {
        search = {
          description = "The Cloud Search Query API provides the search method, which returns the most relevant results from a user query. The results can come from Google Workspace apps, such as Gmail or Google Drive, or they can come from data that you have indexed from a third party. **Note:** This API requires a standard end user account to execute. A service account can't perform Query API requests directly; to use a service account to perform queries, set up [Google Workspace domain-wide delegation of authority](https://developers.google.com/cloud-search/docs/guides/delegation/).",
          flatPath = "v1/query/search",
          httpMethod = "POST",
          id = "cloudsearch.query.search",
          parameterOrder = {},
          parameters = {},
          path = "v1/query/search",
          request = {
            ["$ref"] = "SearchRequest",
          },
          response = {
            ["$ref"] = "SearchResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud_search",
            "https://www.googleapis.com/auth/cloud_search.query",
          },
        },
        suggest = {
          description = "Provides suggestions for autocompleting the query. **Note:** This API requires a standard end user account to execute. A service account can't perform Query API requests directly; to use a service account to perform queries, set up [Google Workspace domain-wide delegation of authority](https://developers.google.com/cloud-search/docs/guides/delegation/).",
          flatPath = "v1/query/suggest",
          httpMethod = "POST",
          id = "cloudsearch.query.suggest",
          parameterOrder = {},
          parameters = {},
          path = "v1/query/suggest",
          request = {
            ["$ref"] = "SuggestRequest",
          },
          response = {
            ["$ref"] = "SuggestResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud_search",
            "https://www.googleapis.com/auth/cloud_search.query",
          },
        },
      },
      resources = {
        sources = {
          methods = {
            list = {
              description = "Returns list of sources that user can use for Search and Suggest APIs. **Note:** This API requires a standard end user account to execute. A service account can't perform Query API requests directly; to use a service account to perform queries, set up [Google Workspace domain-wide delegation of authority](https://developers.google.com/cloud-search/docs/guides/delegation/).",
              flatPath = "v1/query/sources",
              httpMethod = "GET",
              id = "cloudsearch.query.sources.list",
              parameterOrder = {},
              parameters = {
                pageToken = {
                  description = "Number of sources to return in the response.",
                  location = "query",
                  type = "string",
                },
                ["requestOptions.debugOptions.enableDebugging"] = {
                  description = "If you are asked by Google to help with debugging, set this field. Otherwise, ignore this field.",
                  location = "query",
                  type = "boolean",
                },
                ["requestOptions.languageCode"] = {
                  description = "The BCP-47 language code, such as \"en-US\" or \"sr-Latn\". For more information, see http://www.unicode.org/reports/tr35/#Unicode_locale_identifier. For translations. Set this field using the language set in browser or for the page. In the event that the user's language preference is known, set this field to the known user language. When specified, the documents in search results are biased towards the specified language. From Suggest API perspective, for 3p suggest this is used as a hint while making predictions to add language boosting.",
                  location = "query",
                  type = "string",
                },
                ["requestOptions.searchApplicationId"] = {
                  description = "The ID generated when you create a search application using the [admin console](https://support.google.com/a/answer/9043922).",
                  location = "query",
                  type = "string",
                },
                ["requestOptions.timeZone"] = {
                  description = "Current user's time zone id, such as \"America/Los_Angeles\" or \"Australia/Sydney\". These IDs are defined by [Unicode Common Locale Data Repository (CLDR)](http://cldr.unicode.org/) project, and currently available in the file [timezone.xml](http://unicode.org/repos/cldr/trunk/common/bcp47/timezone.xml). This field is used to correctly interpret date and time queries. If this field is not specified, the default time zone (UTC) is used.",
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/query/sources",
              response = {
                ["$ref"] = "ListQuerySourcesResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud_search",
                "https://www.googleapis.com/auth/cloud_search.query",
              },
            },
          },
        },
      },
    },
    settings = {
      methods = {
        getCustomer = {
          description = "Get customer settings. **Note:** This API requires an admin account to execute.",
          flatPath = "v1/settings/customer",
          httpMethod = "GET",
          id = "cloudsearch.settings.getCustomer",
          parameterOrder = {},
          parameters = {},
          path = "v1/settings/customer",
          response = {
            ["$ref"] = "CustomerSettings",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud_search",
            "https://www.googleapis.com/auth/cloud_search.settings",
            "https://www.googleapis.com/auth/cloud_search.settings.indexing",
          },
        },
        updateCustomer = {
          description = "Update customer settings. **Note:** This API requires an admin account to execute.",
          flatPath = "v1/settings/customer",
          httpMethod = "PATCH",
          id = "cloudsearch.settings.updateCustomer",
          parameterOrder = {},
          parameters = {
            updateMask = {
              description = "Update mask to control which fields get updated. If you specify a field in the update_mask but don't specify its value here, that field will be cleared. If the mask is not present or empty, all fields will be updated. Currently supported field paths: vpc_settings and audit_logging_settings",
              format = "google-fieldmask",
              location = "query",
              type = "string",
            },
          },
          path = "v1/settings/customer",
          request = {
            ["$ref"] = "CustomerSettings",
          },
          response = {
            ["$ref"] = "Operation",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud_search",
            "https://www.googleapis.com/auth/cloud_search.settings",
            "https://www.googleapis.com/auth/cloud_search.settings.indexing",
          },
        },
      },
      resources = {
        datasources = {
          methods = {
            create = {
              description = "Creates a datasource. **Note:** This API requires an admin account to execute.",
              flatPath = "v1/settings/datasources",
              httpMethod = "POST",
              id = "cloudsearch.settings.datasources.create",
              parameterOrder = {},
              parameters = {},
              path = "v1/settings/datasources",
              request = {
                ["$ref"] = "DataSource",
              },
              response = {
                ["$ref"] = "Operation",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud_search",
                "https://www.googleapis.com/auth/cloud_search.settings",
                "https://www.googleapis.com/auth/cloud_search.settings.indexing",
              },
            },
            delete = {
              description = "Deletes a datasource. **Note:** This API requires an admin account to execute.",
              flatPath = "v1/settings/datasources/{datasourcesId}",
              httpMethod = "DELETE",
              id = "cloudsearch.settings.datasources.delete",
              parameterOrder = {
                "name",
              },
              parameters = {
                ["debugOptions.enableDebugging"] = {
                  description = "If you are asked by Google to help with debugging, set this field. Otherwise, ignore this field.",
                  location = "query",
                  type = "boolean",
                },
                name = {
                  description = "The name of the datasource. Format: datasources/{source_id}.",
                  location = "path",
                  pattern = "^datasources/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/settings/{+name}",
              response = {
                ["$ref"] = "Operation",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud_search",
                "https://www.googleapis.com/auth/cloud_search.settings",
                "https://www.googleapis.com/auth/cloud_search.settings.indexing",
              },
            },
            get = {
              description = "Gets a datasource. **Note:** This API requires an admin account to execute.",
              flatPath = "v1/settings/datasources/{datasourcesId}",
              httpMethod = "GET",
              id = "cloudsearch.settings.datasources.get",
              parameterOrder = {
                "name",
              },
              parameters = {
                ["debugOptions.enableDebugging"] = {
                  description = "If you are asked by Google to help with debugging, set this field. Otherwise, ignore this field.",
                  location = "query",
                  type = "boolean",
                },
                name = {
                  description = "The name of the datasource resource. Format: datasources/{source_id}.",
                  location = "path",
                  pattern = "^datasources/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/settings/{+name}",
              response = {
                ["$ref"] = "DataSource",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud_search",
                "https://www.googleapis.com/auth/cloud_search.settings",
                "https://www.googleapis.com/auth/cloud_search.settings.indexing",
              },
            },
            list = {
              description = "Lists datasources. **Note:** This API requires an admin account to execute.",
              flatPath = "v1/settings/datasources",
              httpMethod = "GET",
              id = "cloudsearch.settings.datasources.list",
              parameterOrder = {},
              parameters = {
                ["debugOptions.enableDebugging"] = {
                  description = "If you are asked by Google to help with debugging, set this field. Otherwise, ignore this field.",
                  location = "query",
                  type = "boolean",
                },
                pageSize = {
                  description = "Maximum number of datasources to fetch in a request. The max value is 1000. The default value is 1000.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "Starting index of the results.",
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/settings/datasources",
              response = {
                ["$ref"] = "ListDataSourceResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud_search",
                "https://www.googleapis.com/auth/cloud_search.settings",
                "https://www.googleapis.com/auth/cloud_search.settings.indexing",
              },
            },
            patch = {
              description = "Updates a datasource. **Note:** This API requires an admin account to execute.",
              flatPath = "v1/settings/datasources/{datasourcesId}",
              httpMethod = "PATCH",
              id = "cloudsearch.settings.datasources.patch",
              parameterOrder = {
                "name",
              },
              parameters = {
                ["debugOptions.enableDebugging"] = {
                  description = "If you are asked by Google to help with debugging, set this field. Otherwise, ignore this field.",
                  location = "query",
                  type = "boolean",
                },
                name = {
                  description = "The name of the datasource resource. Format: datasources/{source_id}. The name is ignored when creating a datasource.",
                  location = "path",
                  pattern = "^datasources/[^/]+$",
                  required = true,
                  type = "string",
                },
                updateMask = {
                  description = "Only applies to [`settings.datasources.patch`](https://developers.google.com/cloud-search/docs/reference/rest/v1/settings.datasources/patch). Update mask to control which fields to update. Example field paths: `name`, `displayName`. * If `update_mask` is non-empty, then only the fields specified in the `update_mask` are updated. * If you specify a field in the `update_mask`, but don't specify its value in the source, that field is cleared. * If the `update_mask` is not present or empty or has the value `*`, then all fields are updated.",
                  format = "google-fieldmask",
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/settings/{+name}",
              request = {
                ["$ref"] = "DataSource",
              },
              response = {
                ["$ref"] = "Operation",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud_search",
                "https://www.googleapis.com/auth/cloud_search.settings",
                "https://www.googleapis.com/auth/cloud_search.settings.indexing",
              },
            },
            update = {
              description = "Updates a datasource. **Note:** This API requires an admin account to execute.",
              flatPath = "v1/settings/datasources/{datasourcesId}",
              httpMethod = "PUT",
              id = "cloudsearch.settings.datasources.update",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "The name of the datasource resource. Format: datasources/{source_id}. The name is ignored when creating a datasource.",
                  location = "path",
                  pattern = "^datasources/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/settings/{+name}",
              request = {
                ["$ref"] = "UpdateDataSourceRequest",
              },
              response = {
                ["$ref"] = "Operation",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud_search",
                "https://www.googleapis.com/auth/cloud_search.settings",
                "https://www.googleapis.com/auth/cloud_search.settings.indexing",
              },
            },
          },
        },
        searchapplications = {
          methods = {
            create = {
              description = "Creates a search application. **Note:** This API requires an admin account to execute.",
              flatPath = "v1/settings/searchapplications",
              httpMethod = "POST",
              id = "cloudsearch.settings.searchapplications.create",
              parameterOrder = {},
              parameters = {},
              path = "v1/settings/searchapplications",
              request = {
                ["$ref"] = "SearchApplication",
              },
              response = {
                ["$ref"] = "Operation",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud_search",
                "https://www.googleapis.com/auth/cloud_search.settings",
                "https://www.googleapis.com/auth/cloud_search.settings.query",
              },
            },
            delete = {
              description = "Deletes a search application. **Note:** This API requires an admin account to execute.",
              flatPath = "v1/settings/searchapplications/{searchapplicationsId}",
              httpMethod = "DELETE",
              id = "cloudsearch.settings.searchapplications.delete",
              parameterOrder = {
                "name",
              },
              parameters = {
                ["debugOptions.enableDebugging"] = {
                  description = "If you are asked by Google to help with debugging, set this field. Otherwise, ignore this field.",
                  location = "query",
                  type = "boolean",
                },
                name = {
                  description = "The name of the search application to be deleted. Format: applications/{application_id}.",
                  location = "path",
                  pattern = "^searchapplications/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/settings/{+name}",
              response = {
                ["$ref"] = "Operation",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud_search",
                "https://www.googleapis.com/auth/cloud_search.settings",
                "https://www.googleapis.com/auth/cloud_search.settings.query",
              },
            },
            get = {
              description = "Gets the specified search application. **Note:** This API requires an admin account to execute.",
              flatPath = "v1/settings/searchapplications/{searchapplicationsId}",
              httpMethod = "GET",
              id = "cloudsearch.settings.searchapplications.get",
              parameterOrder = {
                "name",
              },
              parameters = {
                ["debugOptions.enableDebugging"] = {
                  description = "If you are asked by Google to help with debugging, set this field. Otherwise, ignore this field.",
                  location = "query",
                  type = "boolean",
                },
                name = {
                  description = "The name of the search application. Format: searchapplications/{application_id}.",
                  location = "path",
                  pattern = "^searchapplications/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/settings/{+name}",
              response = {
                ["$ref"] = "SearchApplication",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud_search",
                "https://www.googleapis.com/auth/cloud_search.settings",
                "https://www.googleapis.com/auth/cloud_search.settings.query",
              },
            },
            list = {
              description = "Lists all search applications. **Note:** This API requires an admin account to execute.",
              flatPath = "v1/settings/searchapplications",
              httpMethod = "GET",
              id = "cloudsearch.settings.searchapplications.list",
              parameterOrder = {},
              parameters = {
                ["debugOptions.enableDebugging"] = {
                  description = "If you are asked by Google to help with debugging, set this field. Otherwise, ignore this field.",
                  location = "query",
                  type = "boolean",
                },
                pageSize = {
                  description = "The maximum number of items to return.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "The next_page_token value returned from a previous List request, if any. The default value is 10",
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/settings/searchapplications",
              response = {
                ["$ref"] = "ListSearchApplicationsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud_search",
                "https://www.googleapis.com/auth/cloud_search.settings",
                "https://www.googleapis.com/auth/cloud_search.settings.query",
              },
            },
            patch = {
              description = "Updates a search application. **Note:** This API requires an admin account to execute.",
              flatPath = "v1/settings/searchapplications/{searchapplicationsId}",
              httpMethod = "PATCH",
              id = "cloudsearch.settings.searchapplications.patch",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "The name of the Search Application. Format: searchapplications/{application_id}.",
                  location = "path",
                  pattern = "^searchapplications/[^/]+$",
                  required = true,
                  type = "string",
                },
                updateMask = {
                  description = "Only applies to [`settings.searchapplications.patch`](https://developers.google.com/cloud-search/docs/reference/rest/v1/settings.searchapplications/patch). Update mask to control which fields to update. Example field paths: `search_application.name`, `search_application.displayName`. * If `update_mask` is non-empty, then only the fields specified in the `update_mask` are updated. * If you specify a field in the `update_mask`, but don't specify its value in the `search_application`, then that field is cleared. * If the `update_mask` is not present or empty or has the value `*`, then all fields are updated.",
                  format = "google-fieldmask",
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/settings/{+name}",
              request = {
                ["$ref"] = "SearchApplication",
              },
              response = {
                ["$ref"] = "Operation",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud_search",
                "https://www.googleapis.com/auth/cloud_search.settings",
                "https://www.googleapis.com/auth/cloud_search.settings.query",
              },
            },
            reset = {
              description = "Resets a search application to default settings. This will return an empty response. **Note:** This API requires an admin account to execute.",
              flatPath = "v1/settings/searchapplications/{searchapplicationsId}:reset",
              httpMethod = "POST",
              id = "cloudsearch.settings.searchapplications.reset",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "The name of the search application to be reset. Format: applications/{application_id}.",
                  location = "path",
                  pattern = "^searchapplications/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/settings/{+name}:reset",
              request = {
                ["$ref"] = "ResetSearchApplicationRequest",
              },
              response = {
                ["$ref"] = "Operation",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud_search",
                "https://www.googleapis.com/auth/cloud_search.settings",
                "https://www.googleapis.com/auth/cloud_search.settings.query",
              },
            },
            update = {
              description = "Updates a search application. **Note:** This API requires an admin account to execute.",
              flatPath = "v1/settings/searchapplications/{searchapplicationsId}",
              httpMethod = "PUT",
              id = "cloudsearch.settings.searchapplications.update",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "The name of the Search Application. Format: searchapplications/{application_id}.",
                  location = "path",
                  pattern = "^searchapplications/[^/]+$",
                  required = true,
                  type = "string",
                },
                updateMask = {
                  description = "Only applies to [`settings.searchapplications.patch`](https://developers.google.com/cloud-search/docs/reference/rest/v1/settings.searchapplications/patch). Update mask to control which fields to update. Example field paths: `search_application.name`, `search_application.displayName`. * If `update_mask` is non-empty, then only the fields specified in the `update_mask` are updated. * If you specify a field in the `update_mask`, but don't specify its value in the `search_application`, then that field is cleared. * If the `update_mask` is not present or empty or has the value `*`, then all fields are updated.",
                  format = "google-fieldmask",
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/settings/{+name}",
              request = {
                ["$ref"] = "SearchApplication",
              },
              response = {
                ["$ref"] = "Operation",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud_search",
                "https://www.googleapis.com/auth/cloud_search.settings",
                "https://www.googleapis.com/auth/cloud_search.settings.query",
              },
            },
          },
        },
      },
    },
    stats = {
      methods = {
        getIndex = {
          description = "Gets indexed item statistics aggreggated across all data sources. This API only returns statistics for previous dates; it doesn't return statistics for the current day. **Note:** This API requires a standard end user account to execute.",
          flatPath = "v1/stats/index",
          httpMethod = "GET",
          id = "cloudsearch.stats.getIndex",
          parameterOrder = {},
          parameters = {
            ["fromDate.day"] = {
              description = "Day of month. Must be from 1 to 31 and valid for the year and month.",
              format = "int32",
              location = "query",
              type = "integer",
            },
            ["fromDate.month"] = {
              description = "Month of date. Must be from 1 to 12.",
              format = "int32",
              location = "query",
              type = "integer",
            },
            ["fromDate.year"] = {
              description = "Year of date. Must be from 1 to 9999.",
              format = "int32",
              location = "query",
              type = "integer",
            },
            ["toDate.day"] = {
              description = "Day of month. Must be from 1 to 31 and valid for the year and month.",
              format = "int32",
              location = "query",
              type = "integer",
            },
            ["toDate.month"] = {
              description = "Month of date. Must be from 1 to 12.",
              format = "int32",
              location = "query",
              type = "integer",
            },
            ["toDate.year"] = {
              description = "Year of date. Must be from 1 to 9999.",
              format = "int32",
              location = "query",
              type = "integer",
            },
          },
          path = "v1/stats/index",
          response = {
            ["$ref"] = "GetCustomerIndexStatsResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud_search",
            "https://www.googleapis.com/auth/cloud_search.stats",
            "https://www.googleapis.com/auth/cloud_search.stats.indexing",
          },
        },
        getQuery = {
          description = "Get the query statistics for customer. **Note:** This API requires a standard end user account to execute.",
          flatPath = "v1/stats/query",
          httpMethod = "GET",
          id = "cloudsearch.stats.getQuery",
          parameterOrder = {},
          parameters = {
            ["fromDate.day"] = {
              description = "Day of month. Must be from 1 to 31 and valid for the year and month.",
              format = "int32",
              location = "query",
              type = "integer",
            },
            ["fromDate.month"] = {
              description = "Month of date. Must be from 1 to 12.",
              format = "int32",
              location = "query",
              type = "integer",
            },
            ["fromDate.year"] = {
              description = "Year of date. Must be from 1 to 9999.",
              format = "int32",
              location = "query",
              type = "integer",
            },
            ["toDate.day"] = {
              description = "Day of month. Must be from 1 to 31 and valid for the year and month.",
              format = "int32",
              location = "query",
              type = "integer",
            },
            ["toDate.month"] = {
              description = "Month of date. Must be from 1 to 12.",
              format = "int32",
              location = "query",
              type = "integer",
            },
            ["toDate.year"] = {
              description = "Year of date. Must be from 1 to 9999.",
              format = "int32",
              location = "query",
              type = "integer",
            },
          },
          path = "v1/stats/query",
          response = {
            ["$ref"] = "GetCustomerQueryStatsResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud_search",
            "https://www.googleapis.com/auth/cloud_search.stats",
            "https://www.googleapis.com/auth/cloud_search.stats.indexing",
          },
        },
        getSearchapplication = {
          description = "Get search application stats for customer. **Note:** This API requires a standard end user account to execute.",
          flatPath = "v1/stats/searchapplication",
          httpMethod = "GET",
          id = "cloudsearch.stats.getSearchapplication",
          parameterOrder = {},
          parameters = {
            ["endDate.day"] = {
              description = "Day of month. Must be from 1 to 31 and valid for the year and month.",
              format = "int32",
              location = "query",
              type = "integer",
            },
            ["endDate.month"] = {
              description = "Month of date. Must be from 1 to 12.",
              format = "int32",
              location = "query",
              type = "integer",
            },
            ["endDate.year"] = {
              description = "Year of date. Must be from 1 to 9999.",
              format = "int32",
              location = "query",
              type = "integer",
            },
            ["startDate.day"] = {
              description = "Day of month. Must be from 1 to 31 and valid for the year and month.",
              format = "int32",
              location = "query",
              type = "integer",
            },
            ["startDate.month"] = {
              description = "Month of date. Must be from 1 to 12.",
              format = "int32",
              location = "query",
              type = "integer",
            },
            ["startDate.year"] = {
              description = "Year of date. Must be from 1 to 9999.",
              format = "int32",
              location = "query",
              type = "integer",
            },
          },
          path = "v1/stats/searchapplication",
          response = {
            ["$ref"] = "GetCustomerSearchApplicationStatsResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud_search",
            "https://www.googleapis.com/auth/cloud_search.stats",
            "https://www.googleapis.com/auth/cloud_search.stats.indexing",
          },
        },
        getSession = {
          description = "Get the # of search sessions, % of successful sessions with a click query statistics for customer. **Note:** This API requires a standard end user account to execute.",
          flatPath = "v1/stats/session",
          httpMethod = "GET",
          id = "cloudsearch.stats.getSession",
          parameterOrder = {},
          parameters = {
            ["fromDate.day"] = {
              description = "Day of month. Must be from 1 to 31 and valid for the year and month.",
              format = "int32",
              location = "query",
              type = "integer",
            },
            ["fromDate.month"] = {
              description = "Month of date. Must be from 1 to 12.",
              format = "int32",
              location = "query",
              type = "integer",
            },
            ["fromDate.year"] = {
              description = "Year of date. Must be from 1 to 9999.",
              format = "int32",
              location = "query",
              type = "integer",
            },
            ["toDate.day"] = {
              description = "Day of month. Must be from 1 to 31 and valid for the year and month.",
              format = "int32",
              location = "query",
              type = "integer",
            },
            ["toDate.month"] = {
              description = "Month of date. Must be from 1 to 12.",
              format = "int32",
              location = "query",
              type = "integer",
            },
            ["toDate.year"] = {
              description = "Year of date. Must be from 1 to 9999.",
              format = "int32",
              location = "query",
              type = "integer",
            },
          },
          path = "v1/stats/session",
          response = {
            ["$ref"] = "GetCustomerSessionStatsResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud_search",
            "https://www.googleapis.com/auth/cloud_search.stats",
            "https://www.googleapis.com/auth/cloud_search.stats.indexing",
          },
        },
        getUser = {
          description = "Get the users statistics for customer. **Note:** This API requires a standard end user account to execute.",
          flatPath = "v1/stats/user",
          httpMethod = "GET",
          id = "cloudsearch.stats.getUser",
          parameterOrder = {},
          parameters = {
            ["fromDate.day"] = {
              description = "Day of month. Must be from 1 to 31 and valid for the year and month.",
              format = "int32",
              location = "query",
              type = "integer",
            },
            ["fromDate.month"] = {
              description = "Month of date. Must be from 1 to 12.",
              format = "int32",
              location = "query",
              type = "integer",
            },
            ["fromDate.year"] = {
              description = "Year of date. Must be from 1 to 9999.",
              format = "int32",
              location = "query",
              type = "integer",
            },
            ["toDate.day"] = {
              description = "Day of month. Must be from 1 to 31 and valid for the year and month.",
              format = "int32",
              location = "query",
              type = "integer",
            },
            ["toDate.month"] = {
              description = "Month of date. Must be from 1 to 12.",
              format = "int32",
              location = "query",
              type = "integer",
            },
            ["toDate.year"] = {
              description = "Year of date. Must be from 1 to 9999.",
              format = "int32",
              location = "query",
              type = "integer",
            },
          },
          path = "v1/stats/user",
          response = {
            ["$ref"] = "GetCustomerUserStatsResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud_search",
            "https://www.googleapis.com/auth/cloud_search.stats",
            "https://www.googleapis.com/auth/cloud_search.stats.indexing",
          },
        },
      },
      resources = {
        index = {
          resources = {
            datasources = {
              methods = {
                get = {
                  description = "Gets indexed item statistics for a single data source. **Note:** This API requires a standard end user account to execute.",
                  flatPath = "v1/stats/index/datasources/{datasourcesId}",
                  httpMethod = "GET",
                  id = "cloudsearch.stats.index.datasources.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    ["fromDate.day"] = {
                      description = "Day of month. Must be from 1 to 31 and valid for the year and month.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    ["fromDate.month"] = {
                      description = "Month of date. Must be from 1 to 12.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    ["fromDate.year"] = {
                      description = "Year of date. Must be from 1 to 9999.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    name = {
                      description = "The resource id of the data source to retrieve statistics for, in the following format: \"datasources/{source_id}\"",
                      location = "path",
                      pattern = "^datasources/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    ["toDate.day"] = {
                      description = "Day of month. Must be from 1 to 31 and valid for the year and month.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    ["toDate.month"] = {
                      description = "Month of date. Must be from 1 to 12.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    ["toDate.year"] = {
                      description = "Year of date. Must be from 1 to 9999.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                  },
                  path = "v1/stats/index/{+name}",
                  response = {
                    ["$ref"] = "GetDataSourceIndexStatsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud_search",
                    "https://www.googleapis.com/auth/cloud_search.stats",
                    "https://www.googleapis.com/auth/cloud_search.stats.indexing",
                  },
                },
              },
            },
          },
        },
        query = {
          resources = {
            searchapplications = {
              methods = {
                get = {
                  description = "Get the query statistics for search application. **Note:** This API requires a standard end user account to execute.",
                  flatPath = "v1/stats/query/searchapplications/{searchapplicationsId}",
                  httpMethod = "GET",
                  id = "cloudsearch.stats.query.searchapplications.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    ["fromDate.day"] = {
                      description = "Day of month. Must be from 1 to 31 and valid for the year and month.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    ["fromDate.month"] = {
                      description = "Month of date. Must be from 1 to 12.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    ["fromDate.year"] = {
                      description = "Year of date. Must be from 1 to 9999.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    name = {
                      description = "The resource id of the search application query stats, in the following format: searchapplications/{application_id}",
                      location = "path",
                      pattern = "^searchapplications/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    ["toDate.day"] = {
                      description = "Day of month. Must be from 1 to 31 and valid for the year and month.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    ["toDate.month"] = {
                      description = "Month of date. Must be from 1 to 12.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    ["toDate.year"] = {
                      description = "Year of date. Must be from 1 to 9999.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                  },
                  path = "v1/stats/query/{+name}",
                  response = {
                    ["$ref"] = "GetSearchApplicationQueryStatsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud_search",
                    "https://www.googleapis.com/auth/cloud_search.stats",
                    "https://www.googleapis.com/auth/cloud_search.stats.indexing",
                  },
                },
              },
            },
          },
        },
        session = {
          resources = {
            searchapplications = {
              methods = {
                get = {
                  description = "Get the # of search sessions, % of successful sessions with a click query statistics for search application. **Note:** This API requires a standard end user account to execute.",
                  flatPath = "v1/stats/session/searchapplications/{searchapplicationsId}",
                  httpMethod = "GET",
                  id = "cloudsearch.stats.session.searchapplications.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    ["fromDate.day"] = {
                      description = "Day of month. Must be from 1 to 31 and valid for the year and month.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    ["fromDate.month"] = {
                      description = "Month of date. Must be from 1 to 12.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    ["fromDate.year"] = {
                      description = "Year of date. Must be from 1 to 9999.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    name = {
                      description = "The resource id of the search application session stats, in the following format: searchapplications/{application_id}",
                      location = "path",
                      pattern = "^searchapplications/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    ["toDate.day"] = {
                      description = "Day of month. Must be from 1 to 31 and valid for the year and month.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    ["toDate.month"] = {
                      description = "Month of date. Must be from 1 to 12.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    ["toDate.year"] = {
                      description = "Year of date. Must be from 1 to 9999.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                  },
                  path = "v1/stats/session/{+name}",
                  response = {
                    ["$ref"] = "GetSearchApplicationSessionStatsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud_search",
                    "https://www.googleapis.com/auth/cloud_search.stats",
                    "https://www.googleapis.com/auth/cloud_search.stats.indexing",
                  },
                },
              },
            },
          },
        },
        user = {
          resources = {
            searchapplications = {
              methods = {
                get = {
                  description = "Get the users statistics for search application. **Note:** This API requires a standard end user account to execute.",
                  flatPath = "v1/stats/user/searchapplications/{searchapplicationsId}",
                  httpMethod = "GET",
                  id = "cloudsearch.stats.user.searchapplications.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    ["fromDate.day"] = {
                      description = "Day of month. Must be from 1 to 31 and valid for the year and month.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    ["fromDate.month"] = {
                      description = "Month of date. Must be from 1 to 12.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    ["fromDate.year"] = {
                      description = "Year of date. Must be from 1 to 9999.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    name = {
                      description = "The resource id of the search application session stats, in the following format: searchapplications/{application_id}",
                      location = "path",
                      pattern = "^searchapplications/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    ["toDate.day"] = {
                      description = "Day of month. Must be from 1 to 31 and valid for the year and month.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    ["toDate.month"] = {
                      description = "Month of date. Must be from 1 to 12.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    ["toDate.year"] = {
                      description = "Year of date. Must be from 1 to 9999.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                  },
                  path = "v1/stats/user/{+name}",
                  response = {
                    ["$ref"] = "GetSearchApplicationUserStatsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud_search",
                    "https://www.googleapis.com/auth/cloud_search.stats",
                    "https://www.googleapis.com/auth/cloud_search.stats.indexing",
                  },
                },
              },
            },
          },
        },
      },
    },
    v1 = {
      methods = {
        initializeCustomer = {
          description = "Enables `third party` support in Google Cloud Search. **Note:** This API requires an admin account to execute.",
          flatPath = "v1:initializeCustomer",
          httpMethod = "POST",
          id = "cloudsearch.initializeCustomer",
          parameterOrder = {},
          parameters = {},
          path = "v1:initializeCustomer",
          request = {
            ["$ref"] = "InitializeCustomerRequest",
          },
          response = {
            ["$ref"] = "Operation",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud_search",
            "https://www.googleapis.com/auth/cloud_search.settings",
            "https://www.googleapis.com/auth/cloud_search.settings.indexing",
          },
        },
      },
    },
  },
  revision = "20221129",
  rootUrl = "https://cloudsearch.googleapis.com/",
  schemas = {
    AbuseReportingConfig = {
      description = "Abuse reporting configuration outlining what is supported in this conference.",
      id = "AbuseReportingConfig",
      properties = {
        recordingAllowed = {
          description = "Whether the current call may include video recordings in its abuse reports.",
          type = "boolean",
        },
        writtenUgcAllowed = {
          description = "Whether the current call may include user generated content (chat, polls, Q&A...) in its abuse reports.",
          type = "boolean",
        },
      },
      type = "object",
    },
    AckInfo = {
      description = "Information about how devices in a meeting have acked for a session/operation.",
      id = "AckInfo",
      properties = {
        unackedDeviceCount = {
          description = "Output only. Number of meeting devices that have not acked yet.",
          format = "int32",
          readOnly = true,
          type = "integer",
        },
        unackedDeviceIds = {
          description = "Output only. IDs of meeting devices (at most ten are provided) that have not acked yet.",
          items = {
            type = "string",
          },
          readOnly = true,
          type = "array",
        },
      },
      type = "object",
    },
    AclFixRequest = {
      description = "The request set by clients to instruct Backend how the user intend to fix the ACL. Technically it's not a request to ACL Fixer, because Backend uses /DriveService.Share to modify Drive ACLs.",
      id = "AclFixRequest",
      properties = {
        recipientEmails = {
          description = "For Spaces messages: This field is ignored. For DMs messages: The list of email addresses that should be added to the Drive item's ACL. In general, the list should not be empty when the boolean \"should_fix\" field is set; otherwise, the list should be empty. During transition - when clients do not specify this field but the \"should_fix\" is true, we follow the legacy behavior: share to all users in the DM regardless of emails. This behavior is being phased out.",
          items = {
            type = "string",
          },
          type = "array",
        },
        role = {
          enum = {
            "UNKNOWN",
            "READER",
            "COMMENTER",
            "WRITER",
          },
          enumDescriptions = {
            "",
            "",
            "",
            "",
          },
          type = "string",
        },
        shouldFix = {
          description = "Whether to attempt to fix the ACL by adding the room or DM members to the Drive file's ACL.",
          type = "boolean",
        },
      },
      type = "object",
    },
    AclFixStatus = {
      description = "The message reconstructed based on information in the response of /PermissionFixOptionsService.Query (or the Apiary API that wraps it). Indicates the ability of the requester to change the access to the Drive file for the room roster or the DM members. Used in GetMessagePreviewMetadataResponse only.",
      id = "AclFixStatus",
      properties = {
        fixability = {
          enum = {
            "UNKNOWN",
            "ALREADY_ACCESSIBLE",
            "CAN_FIX",
            "CANNOT_FIX",
            "ACL_FIXER_ERROR",
          },
          enumDescriptions = {
            "",
            "",
            "",
            "",
            "",
          },
          type = "string",
        },
        fixableEmailAddress = {
          description = "List of recipient email addresses for which access can be granted. This field contains the same email addresses from the GetMessagePreviewMetadata request if all recipients can be successfully added to the ACL as determined by Drive ACL Fixer. For now, the field is non-empty if and only if the \"fixability\" value is \"CAN_FIX\".",
          items = {
            type = "string",
          },
          type = "array",
        },
        outOfDomainWarningEmailAddress = {
          description = "List of recipient email addresses for which an out-of-domain-sharing warning must be shown, stating that these email addresses are not in the Google Apps organization that the requested item belong to. Empty if all recipients are in the same Google Apps organization.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    AclInfo = {
      description = "Next tag: 4",
      id = "AclInfo",
      properties = {
        groupsCount = {
          description = "Number of groups which have at least read access to the document.",
          format = "int32",
          type = "integer",
        },
        scope = {
          description = "The scope to which the content was shared.",
          enum = {
            "LIMITED",
            "DASHER_DOMAIN_WITH_LINK",
            "DASHER_DOMAIN",
            "PUBLIC_WITH_LINK",
            "PUBLIC",
            "TEAM_DRIVE",
          },
          enumDescriptions = {
            "Explicit set of people and groups.",
            "Anybody at the same domain with the link.",
            "Now it works only for google.com. Anybody at the same domain. Now it works only",
            "for google.com. Anybody with the link.",
            "Anybody.",
            "Special tag to indicate TeamDrive scope.",
          },
          type = "string",
        },
        usersCount = {
          description = "Number of users which have at least read access to the document.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    ActionParameter = {
      description = "List of string parameters that developers can specify when the above action method (in apps script) is invoked. An example use case is for 3 snooze buttons: snooze now, snooze 1 day, snooze next week. Developers can have action method = snooze() and pass the snooze type and snooze time in list of string parameters.",
      id = "ActionParameter",
      properties = {
        key = {
          type = "string",
        },
        value = {
          type = "string",
        },
      },
      type = "object",
    },
    AddonComposeUiActionMarkup = {
      id = "AddonComposeUiActionMarkup",
      properties = {
        type = {
          enum = {
            "UNSPECIFIED",
            "DISMISS",
          },
          enumDescriptions = {
            "Default. When unspecified, no action is taken.",
            "Dismisses the add-on compose UI.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    AffectedMembership = {
      description = "Earlier we used to populate just the affected_members list and inferred the new membership state (roles didn't exist back then) from the Type. go/dynamite-finra required backend to know the previous membership state to reconstruct membership history. The proper solution involved cleaning up up Type enum, but it was used in many, many places. This was added as a stop-gap solution to unblock FINRA without breaking everything. Later role update and target audience update started relying on this to communicate information to clients about what transition happened. So this is now required to be populated and should be in sync with affected_members for new messages.",
      id = "AffectedMembership",
      properties = {
        affectedMember = {
          ["$ref"] = "MemberId",
        },
        priorMembershipRole = {
          enum = {
            "ROLE_UNKNOWN",
            "ROLE_NONE",
            "ROLE_INVITEE",
            "ROLE_MEMBER",
            "ROLE_OWNER",
          },
          enumDescriptions = {
            "",
            "This role is used when a user is forcibly removed from a room by another user. They will no longer be able to search for the room, but their history will be retained.",
            "This role is used for two purposes. 1. A group is invited to a room, making it discoverable for its members. 2. A user was part of a room, but willingly left the room.",
            "--- Following roles are for joined members of a roster. --- Default role for any joined user. Has basic capabilities within a room.",
            "Role assigned to room creators and explicitly promoted members. Has broad powers to manage the room.",
          },
          type = "string",
        },
        priorMembershipState = {
          enum = {
            "MEMBER_UNKNOWN",
            "MEMBER_INVITED",
            "MEMBER_JOINED",
            "MEMBER_NOT_A_MEMBER",
            "MEMBER_FAILED",
          },
          enumDescriptions = {
            "Default state, do not use",
            "An invitation to the space has been sent",
            "User has joined the space",
            "User is not a member",
            "This state should never be stored in Spanner. It is a state for responses to the clients to indicate that membership mutations have failed and the member is in its previous state.",
          },
          type = "string",
        },
        targetMembershipRole = {
          enum = {
            "ROLE_UNKNOWN",
            "ROLE_NONE",
            "ROLE_INVITEE",
            "ROLE_MEMBER",
            "ROLE_OWNER",
          },
          enumDescriptions = {
            "",
            "This role is used when a user is forcibly removed from a room by another user. They will no longer be able to search for the room, but their history will be retained.",
            "This role is used for two purposes. 1. A group is invited to a room, making it discoverable for its members. 2. A user was part of a room, but willingly left the room.",
            "--- Following roles are for joined members of a roster. --- Default role for any joined user. Has basic capabilities within a room.",
            "Role assigned to room creators and explicitly promoted members. Has broad powers to manage the room.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    AllAuthenticatedUsersProto = {
      description = "Represents a principal who has authenticated as any kind of user which the application understands. This is typically used for \"wiki-like\" security, where anyone is allowed access so long as they can be held accountable for that access. Since the purpose is knowing whom to blame, it is up to the application to decide what kinds of users it knows how to blame. For example, an application might choose to include GAIA users in \"all authenticated users\", but not include MDB users. Nothing here.",
      id = "AllAuthenticatedUsersProto",
      properties = {},
      type = "object",
    },
    Annotation = {
      description = "NOTE WHEN ADDING NEW PROTO FIELDS: Be sure to add datapol annotations to new fields with potential PII, so they get scrubbed when logging protos for errors. NEXT TAG: 29",
      id = "Annotation",
      properties = {
        babelPlaceholderMetadata = {
          ["$ref"] = "BabelPlaceholderMetadata",
        },
        cardCapabilityMetadata = {
          ["$ref"] = "CardCapabilityMetadata",
          description = "LINT.ThenChange(//depot/google3/java/com/google/apps/dynamite/v1/backend/action/common/SystemMessageHelper.java)",
        },
        chipRenderType = {
          description = "Whether the annotation should be rendered as a chip. If this is missing or unspecified, fallback to should_not_render on the metadata.",
          enum = {
            "CHIP_RENDER_TYPE_UNSPECIFIED",
            "RENDER",
            "RENDER_IF_POSSIBLE",
            "DO_NOT_RENDER",
          },
          enumDescriptions = {
            "",
            "Clients must render the annotation as a chip, and if they cannot render this many Annotations, show a fallback card.",
            "Client can render the annotation if it has room to render it.",
            "Client should not render the annotation as a chip.",
          },
          type = "string",
        },
        consentedAppUnfurlMetadata = {
          ["$ref"] = "ConsentedAppUnfurlMetadata",
        },
        customEmojiMetadata = {
          ["$ref"] = "CustomEmojiMetadata",
        },
        dataLossPreventionMetadata = {
          ["$ref"] = "DataLossPreventionMetadata",
        },
        driveMetadata = {
          ["$ref"] = "DriveMetadata",
          description = "Chip annotations",
        },
        formatMetadata = {
          ["$ref"] = "FormatMetadata",
        },
        groupRetentionSettingsUpdated = {
          ["$ref"] = "GroupRetentionSettingsUpdatedMetaData",
        },
        gsuiteIntegrationMetadata = {
          ["$ref"] = "GsuiteIntegrationMetadata",
          description = "Metadata for 1P integrations like tasks, calendar. These are supported only through integration server as 1P integrations use the integration API (which in turn uses backend API with special permissions) to post messages. Clients should never set this. LINT.IfChange",
        },
        incomingWebhookChangedMetadata = {
          ["$ref"] = "IncomingWebhookChangedMetadata",
        },
        integrationConfigUpdated = {
          ["$ref"] = "IntegrationConfigUpdatedMetadata",
          description = "LINT.ThenChange(//depot/google3/java/com/google/apps/dynamite/v1/backend/action/common/SystemMessageHelper.java)",
        },
        length = {
          description = "Length of the text_body substring beginning from start_index the Annotation corresponds to.",
          format = "int32",
          type = "integer",
        },
        localId = {
          description = "A unique client-assigned ID for this annotation. This is helpful in matching the back-filled annotations to the original annotations on client side, without having to re-parse the message.",
          type = "string",
        },
        membershipChanged = {
          ["$ref"] = "MembershipChangedMetadata",
          description = "Metadata for system messages. Clients should never set this. LINT.IfChange",
        },
        readReceiptsSettingsMetadata = {
          ["$ref"] = "ReadReceiptsSettingsUpdatedMetadata",
        },
        requiredMessageFeaturesMetadata = {
          ["$ref"] = "RequiredMessageFeaturesMetadata",
          description = "Metadata that defines all of the required features that must be rendered in the message. Clients can use this to see whether they support the entire message, or show a fallback chip otherwise. See go/message-quoting-client-to-server for details. LINT.ThenChange( //depot/google3/java/com/google/apps/dynamite/v1/allshared/parser/AnnotationSanitizer.java, //depot/google3/java/com/google/apps/dynamite/v1/backend/action/common/SystemMessageHelper.java, //depot/google3/java/com/google/caribou/eli/mediation/chat/AnnotationTranslator.java )",
        },
        roomUpdated = {
          ["$ref"] = "RoomUpdatedMetadata",
        },
        serverInvalidated = {
          description = "Whether or not the annotation is invalidated by the server. Example of situations for invalidation include: when the URL is malformed, or when Drive item ID is rejected by Drive Service.",
          type = "boolean",
        },
        slashCommandMetadata = {
          ["$ref"] = "SlashCommandMetadata",
        },
        startIndex = {
          description = "Start index (0-indexed) of the Message text the Annotation corresponds to, inclusive.",
          format = "int32",
          type = "integer",
        },
        type = {
          description = "Type of the Annotation.",
          enum = {
            "TYPE_UNSPECIFIED",
            "URL",
            "DRIVE_FILE",
            "DRIVE_DOC",
            "DRIVE_SHEET",
            "DRIVE_SLIDE",
            "DRIVE_FORM",
            "USER_MENTION",
            "SLASH_COMMAND",
            "CONSENTED_APP_UNFURL",
            "VIDEO",
            "FORMAT_DATA",
            "IMAGE",
            "PDF",
            "VIDEO_CALL",
            "UPLOAD_METADATA",
            "GSUITE_INTEGRATION",
            "CUSTOM_EMOJI",
            "CARD_CAPABILITY",
            "DATA_LOSS_PREVENTION",
            "REQUIRED_MESSAGE_FEATURES_METADATA",
            "MEMBERSHIP_CHANGED",
            "ROOM_UPDATED",
            "GROUP_RETENTION_SETTINGS_UPDATED",
            "BABEL_PLACEHOLDER",
            "READ_RECEIPTS_SETTINGS_UPDATED",
            "INCOMING_WEBHOOK_CHANGED",
            "INTEGRATION_CONFIG_UPDATED",
            "INVITATION",
          },
          enumDescriptions = {
            "Default value for the enum. DO NOT USE.",
            "These can have overlaps, i.e. same message can have multiple of these. For example a Drive link to a PDF can have URL, DRIVE_FILE and PDF all set Links",
            "Any drive file",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "Any video, not just youtube, the url decides how to play",
            "UI should not be concerned with FORMAT_DATA",
            "",
            "",
            "For Thor integration",
            "Blobstore uploads",
            "Generic annotation for gsuite integrations",
            "",
            "Card capability for in-stream widgets.",
            "",
            "Clients can use this to see whether they support the entire message, or show a fallback chip otherwise.",
            "Annotation types for system messages. Clients should never set this.",
            "",
            "",
            "",
            "",
            "",
            "",
            "Message-level annotations. First message of an invite. Should not be set by clients.",
          },
          type = "string",
        },
        uniqueId = {
          description = "A unique server-assigned ID for this annotation. This is helpful in matching annotation objects when fetched from service.",
          type = "string",
        },
        uploadMetadata = {
          ["$ref"] = "UploadMetadata",
        },
        urlMetadata = {
          ["$ref"] = "UrlMetadata",
        },
        userMentionMetadata = {
          ["$ref"] = "UserMentionMetadata",
          description = "Metadata that clients can set for annotations. LINT.IfChange In-text annotations",
        },
        videoCallMetadata = {
          ["$ref"] = "VideoCallMetadata",
        },
        youtubeMetadata = {
          ["$ref"] = "YoutubeMetadata",
        },
      },
      type = "object",
    },
    AppId = {
      description = "Identifier of an App.",
      id = "AppId",
      properties = {
        appType = {
          description = "Enum indicating the type of App this is.",
          enum = {
            "APP_TYPE_UNSPECIFIED",
            "APP",
            "GSUITE_APP",
            "INCOMING_WEBHOOK",
          },
          enumDescriptions = {
            "",
            "3P APP eg. external Bots(Asana Bot), 1P Bots(Drive Bot).",
            "1P APP eg. Tasks, Meet, Docs, Calendar..",
            "Asynchronous messages via an incoming webhook.",
          },
          type = "string",
        },
        gsuiteAppType = {
          description = "Enum indicating which 1P App this is when app_type is GSUITE_APP. Determined & set by the 1P API as a convenience for all users of this identifier(Eg. clients, chime, backend etc.) to map to 1P properties.",
          enum = {
            "GSUITE_APP_TYPE_UNSPECIFIED",
            "TASKS_APP",
            "CALENDAR_APP",
            "DOCS_APP",
            "SHEETS_APP",
            "SLIDES_APP",
            "MEET_APP",
            "ASSISTIVE_SUGGESTION_APP",
            "CONTACTS_APP",
            "ACTIVITY_FEED_APP",
            "DRIVE_APP",
            "CHAT_IN_MEET_APP",
          },
          enumDescriptions = {
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "Powered by Bullseye",
            "",
            "",
            "",
            "",
          },
          type = "string",
        },
        id = {
          description = "Numeric identifier of the App. Set to Project number for 1/3P Apps. For Webhook, this is WebhookId. Determined & set by the 1P API from App credentials on the side channel.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    AppsDynamiteSharedAction = {
      description = "An action that describes the behavior when the form is submitted. For example, an Apps Script can be invoked to handle the form.",
      id = "AppsDynamiteSharedAction",
      properties = {
        ["function"] = {
          description = "Apps Script function to invoke when the containing element is clicked/activated.",
          type = "string",
        },
        interaction = {
          enum = {
            "INTERACTION_UNSPECIFIED",
            "OPEN_DIALOG",
          },
          enumDescriptions = {
            "Default value if interaction is not specified.",
            "A dialog opens by clicking the button.",
          },
          type = "string",
        },
        loadIndicator = {
          enum = {
            "SPINNER",
            "NONE",
          },
          enumDescriptions = {
            "Displays a spinner to indicate that content is loading.",
            "Nothing is displayed.",
          },
          type = "string",
        },
        parameters = {
          description = "List of action parameters.",
          items = {
            ["$ref"] = "AppsDynamiteSharedActionActionParameter",
          },
          type = "array",
        },
      },
      type = "object",
    },
    AppsDynamiteSharedActionActionParameter = {
      description = "List of string parameters to supply when the action method is invoked. For example, consider three snooze buttons: snooze now, snooze 1 day, snooze next week. You might use action method = snooze(), passing the snooze type and snooze time in the list of string parameters.",
      id = "AppsDynamiteSharedActionActionParameter",
      properties = {
        key = {
          description = "The name of the parameter for the action script.",
          type = "string",
        },
        value = {
          description = "The value of the parameter.",
          type = "string",
        },
      },
      type = "object",
    },
    AppsDynamiteSharedActivityFeedAnnotationData = {
      description = "Next Id: 7",
      id = "AppsDynamiteSharedActivityFeedAnnotationData",
      properties = {
        activityFeedMessageCreateTime = {
          description = "Timestamp of when the Activity Feed message that contains this annotation was created. This is roughly when the activity happened, such as when a reaction happened, but will have at least some small delay, since the Activity Feed message is created asynchronously after. This timestamp should only be used for display when the activity create time is not available in the Chat UI, like the time of a reaction.",
          format = "google-datetime",
          type = "string",
        },
        activityFeedMessageId = {
          ["$ref"] = "MessageId",
          description = "Unique id of the Activity Feed message used by clients to implement click-to-source. This is the same messageId as the top-level id field for the Activity Feed item.",
        },
        chatItem = {
          ["$ref"] = "AppsDynamiteSharedChatItem",
        },
        sharedUserInfo = {
          ["$ref"] = "UserInfo",
          description = "Only populated on read path and should not be persisted in storage.",
        },
        userInfo = {
          ["$ref"] = "AppsDynamiteSharedActivityFeedAnnotationDataUserInfo",
          description = "Use shared_user_info instead.",
        },
      },
      type = "object",
    },
    AppsDynamiteSharedActivityFeedAnnotationDataUserInfo = {
      description = "UserId of the AF item updater to show and the updater count to show.",
      id = "AppsDynamiteSharedActivityFeedAnnotationDataUserInfo",
      properties = {
        updaterCountDisplayType = {
          description = "Describes how updater_count_to_show should be used.",
          enum = {
            "UPDATER_COUNT_DISPLAY_TYPE_UNSPECIFIED",
            "EXACT_COUNT",
            "NONZERO_COUNT",
          },
          enumDescriptions = {
            "",
            "A precise updater count is known and the value set in updater_count_to_show should be used.",
            "A precise updater count could not be calculated, but there is at least one. Any value set in updater_count_to_show should NOT be used.",
          },
          type = "string",
        },
        updaterCountToShow = {
          description = "The number of updaters for clients to show, currently set to the total number of updaters minus the one set in updater_to_show.",
          format = "int32",
          type = "integer",
        },
        updaterToShow = {
          ["$ref"] = "UserId",
          description = "The updater for clients to show.",
        },
      },
      type = "object",
    },
    AppsDynamiteSharedAppProfile = {
      description = "Optional field for apps overriding display info",
      id = "AppsDynamiteSharedAppProfile",
      properties = {
        avatarEmoji = {
          description = "Displayed user avatar emoji.",
          type = "string",
        },
        avatarUrl = {
          description = "Displayed user avatar url.",
          type = "string",
        },
        name = {
          description = "Displayed user name.",
          type = "string",
        },
      },
      type = "object",
    },
    AppsDynamiteSharedAssistantAnnotationData = {
      description = "This is the internal version of the API proto at google3/google/chat/v1/gsuite_message_integration.proto Data used to render Assistant suggestions. See go/bullseye-rendering.",
      id = "AppsDynamiteSharedAssistantAnnotationData",
      properties = {
        suggestion = {
          ["$ref"] = "AppsDynamiteSharedAssistantSuggestion",
          description = "The suggestion to render in the card.",
        },
        unfulfillable = {
          ["$ref"] = "AppsDynamiteSharedAssistantUnfulfillableRequest",
          description = "Set when the initial query was unfulfillable. Only an on-demand unfulfillable query will result in a response (not a proactive query). 1. On-demand: user explicitly invokes the bot 2. Proactive: bot makes proactive suggestion (when available) by listening to all user messages.",
        },
      },
      type = "object",
    },
    AppsDynamiteSharedAssistantDebugContext = {
      description = "Represents info regarding suggestion debug information.",
      id = "AppsDynamiteSharedAssistantDebugContext",
      properties = {
        query = {
          description = "The query that triggered the resulting suggestion.",
          type = "string",
        },
      },
      type = "object",
    },
    AppsDynamiteSharedAssistantFeedbackContext = {
      description = "Data needed to render feedback on the Assistant card",
      id = "AppsDynamiteSharedAssistantFeedbackContext",
      properties = {
        feedbackChips = {
          description = "Specifies a list of feedback chips to show",
          items = {
            ["$ref"] = "AppsDynamiteSharedAssistantFeedbackContextFeedbackChip",
          },
          type = "array",
        },
        thumbsFeedback = {
          description = "Whether the thumbs feedback is provided",
          enum = {
            "THUMBS_FEEDBACK_UNSPECIFIED",
            "NONE_SELECTED",
            "UP",
            "DOWN",
          },
          enumDescriptions = {
            "Unspecified thumbs state",
            "Thumbs are not selected",
            "Thumbs up selected",
            "Thumbs down selected",
          },
          type = "string",
        },
      },
      type = "object",
    },
    AppsDynamiteSharedAssistantFeedbackContextFeedbackChip = {
      description = "Suggestion chips for users to indicate positive or negative feedback",
      id = "AppsDynamiteSharedAssistantFeedbackContextFeedbackChip",
      properties = {
        feedbackChipType = {
          description = "What type of chip to display",
          enum = {
            "FEEDBACK_CHIP_TYPE_UNSPECIFIED",
            "WRONG_TRIGGER",
            "WRONG_FILE",
            "CORRECT_TRIGGER",
            "CORRECT_FILE",
            "DISRUPTIVE",
            "OTHER",
          },
          enumDescriptions = {
            "Unspecified type of feedback chip",
            "Bad/noisy triggering",
            "Incorrect files were presented",
            "The Assistant card triggered appropriately",
            "The correct files were presented",
            "The feature is disruptive",
            "Other reason",
          },
          type = "string",
        },
        state = {
          description = "Whether the chip has been selected",
          enum = {
            "FEEDBACK_CHIP_STATE_UNSPECIFIED",
            "SELECTED",
            "UNSELECTED",
          },
          enumDescriptions = {
            "Unspecified selection state",
            "Chip is selected",
            "Chip is not selected",
          },
          type = "string",
        },
      },
      type = "object",
    },
    AppsDynamiteSharedAssistantSessionContext = {
      description = "Session context specific for Assistant suggestions.",
      id = "AppsDynamiteSharedAssistantSessionContext",
      properties = {
        contextualSessionId = {
          description = "Unique identifier populated by the contextual request handler for each vertical (Ex: File Suggestions, Smart Scheduling, etc.) that can be used to track sessions end-to-end. May span multiple users (sender-specific).",
          type = "string",
        },
      },
      type = "object",
    },
    AppsDynamiteSharedAssistantSuggestion = {
      description = "Data for an Assistant suggestion.",
      id = "AppsDynamiteSharedAssistantSuggestion",
      properties = {
        debugContext = {
          ["$ref"] = "AppsDynamiteSharedAssistantDebugContext",
          description = "Info regarding suggestion debug information.",
        },
        feedbackContext = {
          ["$ref"] = "AppsDynamiteSharedAssistantFeedbackContext",
          description = "Data for rendering feedback.",
        },
        findDocumentSuggestion = {
          ["$ref"] = "AppsDynamiteSharedFindDocumentSuggestion",
          description = "Suggestion type that suggests documents (docs, slides, sheets).",
        },
        serializedSuggestions = {
          description = "String representation of the suggestions provided.",
          type = "string",
        },
        sessionContext = {
          ["$ref"] = "AppsDynamiteSharedAssistantSessionContext",
          description = "Session context specific to the Assistant suggestion.",
        },
      },
      type = "object",
    },
    AppsDynamiteSharedAssistantUnfulfillableRequest = {
      description = "Data for a response to an unfulfillable request.",
      id = "AppsDynamiteSharedAssistantUnfulfillableRequest",
      properties = {},
      type = "object",
    },
    AppsDynamiteSharedAvatarInfo = {
      id = "AppsDynamiteSharedAvatarInfo",
      properties = {
        emoji = {
          ["$ref"] = "AppsDynamiteSharedEmoji",
        },
      },
      type = "object",
    },
    AppsDynamiteSharedBackendUploadMetadata = {
      description = "Metadata used only in Dynamite backend for uploaded attachments.",
      id = "AppsDynamiteSharedBackendUploadMetadata",
      properties = {
        blobPath = {
          description = "Blobstore path for the uploaded attachment",
          type = "string",
        },
        contentName = {
          description = "The original file name for the content, not the full path.",
          type = "string",
        },
        contentSize = {
          description = "Scotty reported content size by default. http://google3/uploader/agent/scotty_agent.proto?l=101&rcl=140889785",
          format = "int64",
          type = "string",
        },
        contentType = {
          description = "Type is from Scotty's best_guess by default: http://google3/uploader/agent/scotty_agent.proto?l=51&rcl=140889785",
          type = "string",
        },
        dlpScanOutcome = {
          description = "The results of the Data Loss Prevention (DLP) scan of the attachment. DEPRECATED: use dlp_scan_summary instead.",
          enum = {
            "SCAN_UNKNOWN_OUTCOME",
            "SCAN_SUCCEEDED_NO_VIOLATION",
            "SCAN_SUCCEEDED_BLOCK",
            "SCAN_SUCCEEDED_WARN",
            "SCAN_SUCCEEDED_AUDIT_ONLY",
            "SCAN_FAILURE_EXCEPTION",
            "SCAN_FAILURE_RULE_FETCH_FAILED",
            "SCAN_FAILURE_TIMEOUT",
            "SCAN_FAILURE_ALL_RULES_FAILED",
            "SCAN_FAILURE_ILLEGAL_STATE_FOR_ATTACHMENTS",
            "SCAN_SKIPPED_EXPERIMENT_DISABLED",
            "SCAN_SKIPPED_CONSUMER",
            "SCAN_SKIPPED_NON_HUMAN_USER",
            "SCAN_SKIPPED_NO_MESSAGE",
            "SCAN_SKIPPED_USER_ACKNOWLEDGED_WARNING",
            "SCAN_SKIPPED_MESSAGE_FROM_UNSUPPORTED_ORIGIN",
            "SCAN_RULE_EVALUATION_SKIPPED_NO_RULES_FOUND",
            "SCAN_RULE_EVALUATION_SKIPPED_NO_APPLICABLE_RULES_FOR_ACTION_PARAMS",
            "SCAN_RULE_EVALUATION_SKIPPED_NO_APPLICABLE_RULES_FOR_TRIGGER",
            "SCAN_RULE_EVALUATION_SKIPPED_CHANGELING_PERMANENT_ERROR",
            "SCAN_RULE_EVALUATION_SKIPPED_CHANGELING_EMPTY_RESPONSE",
            "SCAN_RULE_EVALUATION_SKIPPED_UNSUPPORTED_FILE_TYPE",
            "SCAN_SUCCEEDED_WITH_FAILURES_NO_VIOLATION",
            "SCAN_SUCCEEDED_WITH_FAILURES_BLOCK",
            "SCAN_SUCCEEDED_WITH_FAILURES_WARN",
            "SCAN_SUCCEEDED_WITH_FAILURES_AUDIT_ONLY",
          },
          enumDescriptions = {
            "",
            "This means no violation is detected on the given message/attachment.",
            "Violation is detected. The message/attachment will be blocked (or deleted if this happens in failure recovery), the user will be warned, and the violation will be logged to BIP.",
            "Violation is detected. The user will be warned, and the violation will be logged to BIP.",
            "Violation is detected and will be logged to BIP (no user-facing action performed).",
            "Rule fetch and evaluation were attempted but an exception occurred.",
            "Rule fetch was attempted but failed, so rule evaluation could not be performed.",
            "Rule fetch and evaluation were attempted but the scanning timed out.",
            "Rule fetch completed and evaluation were attempted, but all of the rules failed to be evaluated.",
            "An IllegalStateException is thrown when executing DLP on attachments. This could happen if the space row is missing.",
            "Rule fetch and evaluation is skipped because DLP is not enabled for the user.",
            "Rule fetch and evaluation are skipped because the user sending message is consumer.",
            "Rule fetch and evaluation are skipped because the user sending message is a non-human user (i.e. a bot).",
            "Rule fetch and evaluation are skipped because there is no message to scan. Deprecated: this should not happen since there must be message or attachment for DLP scan.",
            "Rule fetch and evaluation are skipped because the user has acknowledged the warning on the message that triggered the Warn violation and sent the message anyway.",
            "Scanning was skipped because the message originated from Interop or Babel.",
            "Rule fetch happened, but rule evaluation is skipped because no rules were found.",
            "Rule fetch happened, but rule evaluation is skipped because none of the rules are applicable to the given action params.",
            "Rule fetch happened, but rule evaluation is skipped because none of the rules are applicable to the given trigger.",
            "Rule fetch happened, but rule evaluation is skipped because Changeling returned permanent failure while converting the attachment to text.",
            "Rule fetch happened, but rule evaluation is skipped because Changeling returned an empty response while converting the attachment to text.",
            "Rule fetch happened, but rule evaluation is skipped because file type is unsupported.",
            "Rules were fetched but some evaluations failed. No violation was found in the rules that were successfully evaluated.",
            "Rules were fetched but some evaluations failed. A blocking violation was found in the rules that were successfully evaluated. The message/attachment will be blocked, the user will be notified, and the violation will be logged to BIP. A blocking violation takes precedence over all other violation types.",
            "Rules were fetched but some evaluations failed. A warn violation was found in the rules that were successfully evaluated. The user will be warned, and the violation will be logged to BIP.",
            "Rules were fetched but some evaluations failed. An audit-only violation was found in the rules that were successfully evaluated. The violation will be logged to BIP (no user-facing action performed).",
          },
          type = "string",
        },
        dlpScanSummary = {
          ["$ref"] = "DlpScanSummary",
          description = "Summary of a Data Loss Prevention (DLP) scan of the attachment. Attachments are evaluated in the backend when they are uploaded.",
        },
        groupId = {
          ["$ref"] = "GroupId",
          description = "GroupId to which this attachment is uploaded.",
        },
        originalDimension = {
          ["$ref"] = "AppsDynamiteSharedDimension",
          description = "Original dimension of the content. Only set for image attachments.",
        },
        quoteReplyMessageId = {
          ["$ref"] = "MessageId",
          description = "The message id of a quote reply referencing this attachment. When present, this attachment has been quoted in a reply message. Normally, the attachment is fetched through the message id in the blob_path, but in the case of a quote reply, the blob_path would contain the quoted message id. Thus this message id field is needed to fetch the quote reply message instead. This field is conditionally populated at read time for quotes and never persisted in storage. See go/message-quoting-attachments for more context.",
        },
        sha256 = {
          description = "The SHA256 hash of the attachment bytes.",
          format = "byte",
          type = "string",
        },
        uploadIp = {
          description = "User IP address at upload time. Ex. \"123.1.2.3\". Used by Ares abuse scanning.",
          type = "string",
        },
        uploadTimestampUsec = {
          description = "Timestamp of when user finished uploading the content.",
          format = "int64",
          type = "string",
        },
        videoId = {
          description = "VideoID of the video attachments. This ID shall meets the Youtube ID format of 16 hex characters. For example, '4c14b8825af6059b' is a valid ID.",
          type = "string",
        },
        videoThumbnailBlobId = {
          description = "Full Blobstore ID for the video thumbnail.",
          type = "string",
        },
        virusScanResult = {
          description = "Result for a virus scan.",
          enum = {
            "UNKNOWN_VIRUS_SCAN_RESULT",
            "CLEAN",
            "INFECTED",
            "ERROR",
            "POLICY_VIOLATION",
          },
          enumDescriptions = {
            "",
            "",
            "",
            "",
            "The document violates Google's policy for executables and archives.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    AppsDynamiteSharedBorderStyle = {
      description = "Represents the complete border style applied to widgets.",
      id = "AppsDynamiteSharedBorderStyle",
      properties = {
        cornerRadius = {
          description = "The corner radius for the border.",
          format = "int32",
          type = "integer",
        },
        strokeColor = {
          ["$ref"] = "Color",
          description = "The colors to use when the type is `BORDER_TYPE_STROKE`.",
        },
        type = {
          description = "The border type.",
          enum = {
            "BORDER_TYPE_UNSPECIFIED",
            "NO_BORDER",
            "STROKE",
          },
          enumDescriptions = {
            "No value specified.",
            "No border.",
            "Outline.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    AppsDynamiteSharedButton = {
      description = "A button. Can be a text button or an image button.",
      id = "AppsDynamiteSharedButton",
      properties = {
        altText = {
          description = "The alternative text used for accessibility. Has no effect when an icon is set; use `icon.alt_text` instead.",
          type = "string",
        },
        color = {
          ["$ref"] = "Color",
          description = "If set, the button is filled with a solid background.",
        },
        disabled = {
          description = "If true, the button is displayed in a disabled state and doesn't respond to user actions.",
          type = "boolean",
        },
        icon = {
          ["$ref"] = "AppsDynamiteSharedIcon",
          description = "The icon image.",
        },
        onClick = {
          ["$ref"] = "AppsDynamiteSharedOnClick",
          description = "The action to perform when the button is clicked.",
        },
        text = {
          description = "The text of the button.",
          type = "string",
        },
      },
      type = "object",
    },
    AppsDynamiteSharedButtonList = {
      description = "A list of buttons layed out horizontally.",
      id = "AppsDynamiteSharedButtonList",
      properties = {
        buttons = {
          items = {
            ["$ref"] = "AppsDynamiteSharedButton",
          },
          type = "array",
        },
      },
      type = "object",
    },
    AppsDynamiteSharedCalendarEventAnnotationData = {
      id = "AppsDynamiteSharedCalendarEventAnnotationData",
      properties = {
        calendarEvent = {
          ["$ref"] = "AppsDynamiteSharedCalendarEventAnnotationDataCalendarEvent",
        },
        eventCreation = {
          ["$ref"] = "AppsDynamiteSharedCalendarEventAnnotationDataEventCreation",
          description = "Notification about the creation of an event.",
        },
      },
      type = "object",
    },
    AppsDynamiteSharedCalendarEventAnnotationDataCalendarEvent = {
      id = "AppsDynamiteSharedCalendarEventAnnotationDataCalendarEvent",
      properties = {
        endTime = {
          ["$ref"] = "AppsDynamiteSharedCalendarEventAnnotationDataCalendarEventTime",
          description = "The end time of the event.",
        },
        eventId = {
          description = "ID of the event.",
          type = "string",
        },
        startTime = {
          ["$ref"] = "AppsDynamiteSharedCalendarEventAnnotationDataCalendarEventTime",
          description = "The start time of the event.",
        },
        title = {
          description = "Title of the event (at the time the message was generated).",
          type = "string",
        },
      },
      type = "object",
    },
    AppsDynamiteSharedCalendarEventAnnotationDataCalendarEventTime = {
      id = "AppsDynamiteSharedCalendarEventAnnotationDataCalendarEventTime",
      properties = {
        allDay = {
          ["$ref"] = "Date",
          description = "All day event.",
        },
        timed = {
          description = "Non all day event.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    AppsDynamiteSharedCalendarEventAnnotationDataEventCreation = {
      description = "Creation of an event (no extra data for now).",
      id = "AppsDynamiteSharedCalendarEventAnnotationDataEventCreation",
      properties = {},
      type = "object",
    },
    AppsDynamiteSharedCallAnnotationData = {
      description = "Data used to render Meet or Google Voice chips in Chat. See go/dynamite-calling-artifacts-in-chat.",
      id = "AppsDynamiteSharedCallAnnotationData",
      properties = {
        callEndedTimestamp = {
          description = "Timestamp when the call ended. Used to render the call ended system message.",
          format = "google-datetime",
          type = "string",
        },
        callMetadata = {
          ["$ref"] = "AppsDynamiteSharedCallMetadata",
          description = "Required. Call metadata required to create the call artifacts. For now, the metadata contains only the call id to identify the call. This field allows additional data (e.g. voice call type) to be added if needed in the future.",
        },
        callStatus = {
          description = "Required. Indicates the call status for the space. Used to determine the chip's state.",
          enum = {
            "CALL_STATUS_UNSPECIFIED",
            "CALL_STARTED",
            "CALL_MISSED",
            "CALL_ENDED",
          },
          enumDescriptions = {
            "Default value for the enum. DO NOT USE.",
            "Indicates that the call has started.",
            "Indicates that the call is missed.",
            "Indicates that the call has ended.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    AppsDynamiteSharedCallMetadata = {
      description = "Metadata required to generate call artifacts. This can either be the metadata for a Meet or, in the future, Google Voice call.",
      id = "AppsDynamiteSharedCallMetadata",
      properties = {
        meetMetadata = {
          ["$ref"] = "AppsDynamiteSharedMeetMetadata",
          description = "Metadata specific for the Meet call.",
        },
      },
      type = "object",
    },
    AppsDynamiteSharedCard = {
      description = "A card is a UI element that can contain UI widgets such as text and images. For more information, see Cards . For example, the following JSON creates a card that has a header with the name, position, icons, and link for a contact, followed by a section with contact information like email and phone number. ``` { \"header\": { \"title\": \"Heba Salam\", \"subtitle\": \"Software Engineer\", \"imageStyle\": \"ImageStyle.AVATAR\", \"imageUrl\": \"https://example.com/heba_salam.png\", \"imageAltText\": \"Avatar for Heba Salam\" }, \"sections\" : [ { \"header\": \"Contact Info\", \"widgets\": [ { \"decorated_text\": { \"icon\": { \"knownIcon\": \"EMAIL\" }, \"content\": \"heba.salam@example.com\" } }, { \"decoratedText\": { \"icon\": { \"knownIcon\": \"PERSON\" }, \"content\": \"Online\" } }, { \"decoratedText\": { \"icon\": { \"knownIcon\": \"PHONE\" }, \"content\": \"+1 (555) 555-1234\" } }, { \"buttons\": [ { \"textButton\": { \"text\": \"Share\", }, \"onClick\": { \"openLink\": { \"url\": \"https://example.com/share\" } } }, { \"textButton\": { \"text\": \"Edit\", }, \"onClick\": { \"action\": { \"function\": \"goToView\", \"parameters\": [ { \"key\": \"viewType\", \"value\": \"EDIT\" } ], \"loadIndicator\": \"LoadIndicator.SPINNER\" } } } ] } ], \"collapsible\": true, \"uncollapsibleWidgetsCount\": 3 } ], \"cardActions\": [ { \"actionLabel\": \"Send Feedback\", \"onClick\": { \"openLink\": { \"url\": \"https://example.com/feedback\" } } } ], \"name\": \"contact-card-K3wB6arF2H9L\" } ```",
      id = "AppsDynamiteSharedCard",
      properties = {
        cardActions = {
          description = "The actions of this card. They are added to a card's generated toolbar menu. For example, the following JSON constructs a card action menu with Settings and Send Feedback options: ``` \"card_actions\": [ { \"actionLabel\": \"Setting\", \"onClick\": { \"action\": { \"functionName\": \"goToView\", \"parameters\": [ { \"key\": \"viewType\", \"value\": \"SETTING\" } ], \"loadIndicator\": \"LoadIndicator.SPINNER\" } } }, { \"actionLabel\": \"Send Feedback\", \"onClick\": { \"openLink\": { \"url\": \"https://example.com/feedback\" } } } ] ```",
          items = {
            ["$ref"] = "AppsDynamiteSharedCardCardAction",
          },
          type = "array",
        },
        header = {
          ["$ref"] = "AppsDynamiteSharedCardCardHeader",
          description = "The header of the card. A header usually contains a title and an image.",
        },
        name = {
          description = "Name of the card, which is used as a identifier for the card in card navigation.",
          type = "string",
        },
        sections = {
          description = "Sections are separated by a line divider.",
          items = {
            ["$ref"] = "AppsDynamiteSharedCardSection",
          },
          type = "array",
        },
      },
      type = "object",
    },
    AppsDynamiteSharedCardCardAction = {
      description = "A card action is the action associated with the card. For example, an invoice card might include actions such as delete invoice, email invoice, or open the invoice in a browser.",
      id = "AppsDynamiteSharedCardCardAction",
      properties = {
        actionLabel = {
          description = "The label that displays as the action menu item.",
          type = "string",
        },
        onClick = {
          ["$ref"] = "AppsDynamiteSharedOnClick",
          description = "The onclick action for this action item.",
        },
      },
      type = "object",
    },
    AppsDynamiteSharedCardCardHeader = {
      id = "AppsDynamiteSharedCardCardHeader",
      properties = {
        imageAltText = {
          description = "The alternative text of this image which is used for accessibility.",
          type = "string",
        },
        imageType = {
          description = "The image's type.",
          enum = {
            "SQUARE",
            "CIRCLE",
          },
          enumDescriptions = {
            "Applies no cropping to the image.",
            "Applies a circular mask to the image.",
          },
          type = "string",
        },
        imageUrl = {
          description = "The URL of the image in the card header.",
          type = "string",
        },
        subtitle = {
          description = "The subtitle of the card header.",
          type = "string",
        },
        title = {
          description = "The title of the card header. The title must be specified. The header has a fixed height: if both a title and subtitle are specified, each takes up one line. If only the title is specified, it takes up both lines.",
          type = "string",
        },
      },
      type = "object",
    },
    AppsDynamiteSharedCardClickSuggestion = {
      description = "Card click which identifies one suggestion provided by the app/bot.",
      id = "AppsDynamiteSharedCardClickSuggestion",
      properties = {
        actionId = {
          description = "Identify the button/action that created the suggestion. A simple example would be a card button within the stream, or the id which can identify a specific suggestion.",
          type = "string",
        },
        suggestionMessageId = {
          ["$ref"] = "MessageId",
          description = "The message_id for the message that was posted by the app/bot.",
        },
      },
      type = "object",
    },
    AppsDynamiteSharedCardSection = {
      description = "A section contains a collection of widgets that are rendered vertically in the order that they are specified. Across all platforms, cards have a narrow fixed width, so there is currently no need for layout properties, for example, float.",
      id = "AppsDynamiteSharedCardSection",
      properties = {
        collapsible = {
          description = "Indicates whether this section is collapsible. If a section is collapsible, the description must be given.",
          type = "boolean",
        },
        header = {
          description = "The header of the section. Formatted text is supported.",
          type = "string",
        },
        uncollapsibleWidgetsCount = {
          description = "The number of uncollapsible widgets. For example, when a section contains five widgets and the `numUncollapsibleWidget` is set to `2`, the first two widgets are always shown and the last three are collapsed as default. The `numUncollapsibleWidget` is taken into account only when collapsible is set to `true`.",
          format = "int32",
          type = "integer",
        },
        widgets = {
          description = "A section must contain at least 1 widget.",
          items = {
            ["$ref"] = "AppsDynamiteSharedWidget",
          },
          type = "array",
        },
      },
      type = "object",
    },
    AppsDynamiteSharedChatItem = {
      description = "Next Id: 5",
      id = "AppsDynamiteSharedChatItem",
      properties = {
        activityInfo = {
          description = "Information needed to render the specific type of feed item.",
          items = {
            ["$ref"] = "AppsDynamiteSharedChatItemActivityInfo",
          },
          type = "array",
        },
        groupInfo = {
          ["$ref"] = "AppsDynamiteSharedChatItemGroupInfo",
          description = "Only populated on read path and should not be persisted in storage.",
        },
        messageInfo = {
          ["$ref"] = "AppsDynamiteSharedMessageInfo",
          description = "Additional information about the original chat message that isn't captured in the top-level message proto.",
        },
      },
      type = "object",
    },
    AppsDynamiteSharedChatItemActivityInfo = {
      id = "AppsDynamiteSharedChatItemActivityInfo",
      properties = {
        feedItemNudge = {
          ["$ref"] = "AppsDynamiteSharedChatItemActivityInfoFeedItemNudge",
        },
        feedItemReactions = {
          ["$ref"] = "AppsDynamiteSharedChatItemActivityInfoFeedItemReactions",
        },
        feedItemThreadReply = {
          ["$ref"] = "AppsDynamiteSharedChatItemActivityInfoFeedItemThreadReply",
        },
        feedItemUserMention = {
          ["$ref"] = "AppsDynamiteSharedChatItemActivityInfoFeedItemUserMention",
        },
      },
      type = "object",
    },
    AppsDynamiteSharedChatItemActivityInfoFeedItemNudge = {
      description = "Existence of this attribute indicates that the AF item is for a message nudge item.",
      id = "AppsDynamiteSharedChatItemActivityInfoFeedItemNudge",
      properties = {
        nudgeType = {
          description = "Nudge type of the nudge feed item.",
          enum = {
            "UNDEFINED",
            "REPLY",
            "FOLLOW_UP",
          },
          enumDescriptions = {
            "",
            "The message receiver is nudged since the message may require a reply.",
            "The message creator is nudged since the message may require a follow-up.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    AppsDynamiteSharedChatItemActivityInfoFeedItemReactions = {
      description = "Existence of this attribute indicates that the AF item is for message reactions, but it is intentionally left empty since the list of reactions can be found in the top-level Message.Reactions.",
      id = "AppsDynamiteSharedChatItemActivityInfoFeedItemReactions",
      properties = {},
      type = "object",
    },
    AppsDynamiteSharedChatItemActivityInfoFeedItemThreadReply = {
      description = "Existence of this attribute indicates that the AF item is for thread reply.",
      id = "AppsDynamiteSharedChatItemActivityInfoFeedItemThreadReply",
      properties = {
        replyType = {
          description = "Reply type of the thread reply feed item. The field is not persisted in storage. It's populated when constructing Activity Feed payload.",
          enum = {
            "UNSPECIFIED",
            "ROOT",
            "FOLLOWER",
          },
          enumDescriptions = {
            "",
            "The thread reply feed item is for the root message poster.",
            "The thread reply feed item is for a thread follower who's not the root message poster.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    AppsDynamiteSharedChatItemActivityInfoFeedItemUserMention = {
      description = "Existence of this attribute indicates that the AF item is for a user mention item.",
      id = "AppsDynamiteSharedChatItemActivityInfoFeedItemUserMention",
      properties = {
        type = {
          description = "User mention type",
          enum = {
            "TYPE_UNSPECIFIED",
            "DIRECT",
            "ALL",
          },
          enumDescriptions = {
            "Mention type not specified.",
            "Mentioned directly by name.",
            "Mentioned by @all.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    AppsDynamiteSharedChatItemGroupInfo = {
      description = "Information about the space that the item originated from. This will be used to display Activity Feed items from rooms, and only contain the necessary information, such as the space name and group attributes. NEXT TAG: 6",
      id = "AppsDynamiteSharedChatItemGroupInfo",
      properties = {
        attributeCheckerGroupType = {
          description = "This is needed to determine what type of group the source message came from to support click-to-source.",
          enum = {
            "ATTRIBUTE_CHECKER_GROUP_TYPE_UNSPECIFIED",
            "ONE_TO_ONE_HUMAN_DM",
            "ONE_TO_ONE_BOT_DM",
            "IMMUTABLE_MEMBERSHIP_GROUP_DM",
            "FLAT_ROOM",
            "THREADED_ROOM",
            "IMMUTABLE_MEMBERSHIP_HUMAN_DM",
            "POST_ROOM",
            "ACTIVITY_FEED",
          },
          enumDescriptions = {
            "LINT.IfChange",
            "A 1:1 DM that has two human users. Deprecated. Use IMMUTABLE_MEMBERSHIP_HUMAN_DM instead.",
            "A 1:1 DM between a human user and a bot.",
            "A group DM that has multiple human users with immutable group membership. Deprecated. Use IMMUTABLE_MEMBERSHIP_HUMAN_DM instead.",
            "A flat room that contains a single thread.",
            "A threaded room. Topics in this room are threaded, and users can reply to any topic.",
            "A DM with immutable group membership. It can be a 1:1 DM or a group DM with multiple human users.",
            "A post room. Topics in this room are organized in a post/reply style. See the design doc for more details: go/PostRoomsInDynamite. Deprecated. Post rooms are no longer supported.",
            "Represents an Activity Feed space. These groups are modeled like flat rooms and contain items for users to catch up on important things. Each user should only have one group of this type. See go/activity-feed. LINT.ThenChange(//depot/google3/logs/proto/apps_dynamite/dynamite_visual_element_entry.proto:LoggingGroupType,//depot/google3/java/com/google/apps/dynamite/v1/web/ui/group/groups.js:LoggingGroupType)",
          },
          type = "string",
        },
        groupName = {
          type = "string",
        },
        groupReadTimeUsec = {
          description = "Timestamp of when the group containing the message has been read by the user.",
          format = "int64",
          type = "string",
        },
        inlineThreadingEnabled = {
          description = "Indicates whether the group has inline replies enabled. If enabled, clients will render the space with inline replies.",
          type = "boolean",
        },
      },
      type = "object",
    },
    AppsDynamiteSharedColumns = {
      description = "Represents a Columns widget that displays a single row of columns.",
      id = "AppsDynamiteSharedColumns",
      properties = {
        columnItems = {
          description = "Each card supports up to 2 columns.",
          items = {
            ["$ref"] = "AppsDynamiteSharedColumnsColumn",
          },
          type = "array",
        },
        wrapStyle = {
          description = "Controls how the column resizes based on screen width.",
          enum = {
            "WRAP_STYLE_UNSPECIFIED",
            "NOWRAP",
            "WRAP",
          },
          enumDescriptions = {
            "Unspecified.",
            "Column widgets don't wrap.",
            "Column Widgets wrap.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    AppsDynamiteSharedColumnsColumn = {
      description = "Represents a Column that consists of widgets stacked vertically.",
      id = "AppsDynamiteSharedColumnsColumn",
      properties = {
        horizontalAlignment = {
          description = "The horizontal alignment of the column.",
          enum = {
            "HORIZONTAL_ALIGNMENT_UNSPECIFIED",
            "START",
            "CENTER",
            "END",
          },
          enumDescriptions = {
            "Unspecified alignment.",
            "Alignment to the start position.",
            "Alignment to the center position.",
            "Alignment to the end position.",
          },
          type = "string",
        },
        horizontalSizeStyle = {
          description = "Specifies how the column content is sized horizontally.",
          enum = {
            "HORIZONTAL_SIZE_STYLE_UNSPECIFIED",
            "FILL_AVAILABLE_SPACE",
            "FILL_MINIMUM_SPACE",
          },
          enumDescriptions = {
            "Unspecified.",
            "Fills up the available horizontal width. Default value if unspecified.",
            "Fills up the minimum horizontal width.",
          },
          type = "string",
        },
        verticalAlignment = {
          description = "The vertical alignment of the column.",
          enum = {
            "VERTICAL_ALIGNMENT_UNSPECIFIED",
            "CENTER",
            "TOP",
            "BOTTOM",
          },
          enumDescriptions = {
            "Unspecified.",
            "Aligns the widget in the center of the column. Default value if unspecified.",
            "Aligns the widget at the top of the column.",
            "Aligns the widget at the bottom of the column.",
          },
          type = "string",
        },
        widgets = {
          description = "LINT.ThenChange(//google/apps/card/v1/card.proto) Array of widgets included in the column.",
          items = {
            ["$ref"] = "AppsDynamiteSharedColumnsColumnWidgets",
          },
          type = "array",
        },
      },
      type = "object",
    },
    AppsDynamiteSharedColumnsColumnWidgets = {
      description = "LINT.IfChange The `column` widget can contain these widgets.",
      id = "AppsDynamiteSharedColumnsColumnWidgets",
      properties = {
        buttonList = {
          ["$ref"] = "AppsDynamiteSharedButtonList",
          description = "ButtonList widget.",
        },
        dateTimePicker = {
          ["$ref"] = "AppsDynamiteSharedDateTimePicker",
          description = "DateTimePicker widget.",
        },
        decoratedText = {
          ["$ref"] = "AppsDynamiteSharedDecoratedText",
          description = "DecoratedText widget.",
        },
        image = {
          ["$ref"] = "AppsDynamiteSharedImage",
          description = "Image widget.",
        },
        selectionInput = {
          ["$ref"] = "AppsDynamiteSharedSelectionInput",
          description = "SelectionInput widget.",
        },
        textInput = {
          ["$ref"] = "AppsDynamiteSharedTextInput",
          description = "TextInput widget.",
        },
        textParagraph = {
          ["$ref"] = "AppsDynamiteSharedTextParagraph",
          description = "Text paragraph widget.",
        },
      },
      type = "object",
    },
    AppsDynamiteSharedContentReportType = {
      description = "Denotes a type of content report a user can send.",
      id = "AppsDynamiteSharedContentReportType",
      properties = {
        systemViolation = {
          description = "Required. Google-defined system violation, covering the most common violations.",
          enum = {
            "VIOLATION_UNSPECIFIED",
            "HARASSMENT",
            "DISCRIMINATION",
            "EXPLICIT_CONTENT",
            "SPAM",
            "CONFIDENTIAL_INFORMATION",
            "SENSITIVE_INFORMATION",
            "FRAUD",
            "MALWARE",
            "ILLEGAL_ACTIVITIES",
            "OTHER",
          },
          enumDescriptions = {
            "Default value if unset. Do not use directly. This value should not appear as a selectable violation during content reporting.",
            "\"Harassment, offensive, or rude behavior\"",
            "\"Discrimination or harmful stereotypes against anyone, including protected groups\"",
            "\"Explicit content that's graphic, violent, or otherwise inappropriate\"",
            "\"Spam\"",
            "\"Confidential information\"",
            "\"Sensitive information\"",
            "Phishing, impersonation/misrepresentation, or deceiving other users into sharing information under false pretenses.",
            "Malware, viruses, Trojan horses, corrupted files, destructive code, etc.",
            "Promoting, organizing, or engaging in illegal activities.",
            "\"Something else\"",
          },
          type = "string",
        },
      },
      type = "object",
    },
    AppsDynamiteSharedCustomEmoji = {
      description = "Proto representation of a custom emoji. May be used in both APIs and in Spanner, but certain fields should be restricted to one or the other. See the per-field documentation for details. NEXT_TAG: 14",
      id = "AppsDynamiteSharedCustomEmoji",
      properties = {
        blobId = {
          description = "ID for the underlying image data in Blobstore. This field should *only* be present in Spanner or within the server, but should not be exposed in public APIs.",
          type = "string",
        },
        contentType = {
          description = "Content type of the file used to upload the emoji. Used for takeout. Written to Spanner when the emoji is created.",
          type = "string",
        },
        createTimeMicros = {
          description = "Time when the Emoji was created, in microseconds. This field may be present in Spanner, within the server, or in public APIs.",
          format = "int64",
          type = "string",
        },
        creatorUserId = {
          ["$ref"] = "UserId",
          description = "This field should *never* be persisted to Spanner.",
        },
        deleteTimeMicros = {
          description = "Time when the emoji was deleted, in microseconds. This field may be present in Spanner, within the server, or in public APIs. Only present if the emoji has been deleted.",
          format = "int64",
          type = "string",
        },
        ephemeralUrl = {
          description = "Output only. A short-lived URL clients can use for directly accessing a custom emoji image. This field is intended for API consumption, and should *never* be persisted to Spanner.",
          readOnly = true,
          type = "string",
        },
        ownerCustomerId = {
          ["$ref"] = "CustomerId",
          description = "This field should *never* be persisted to Spanner.",
        },
        readToken = {
          description = "Opaque token that clients use to construct the URL for accessing the custom emoji’s image data. This field is intended for API consumption, and should *never* be persisted to Spanner.",
          type = "string",
        },
        shortcode = {
          description = "User-provided, human-readable ID for the custom emoji. Users are expected to observe this field in the UI instead of the UUID. This shortcode should be unique within an organization, but has no global uniqueness guarantees, unlike the UUID. This field should *never* be persisted to Spanner.",
          type = "string",
        },
        state = {
          description = "Snapshot of the current state of the emoji, which may differ from the source-of-truth in the CustomEmojis table. This field should *never* be persisted to Spanner.",
          enum = {
            "EMOJI_STATE_UNSPECIFIED",
            "EMOJI_ENABLED",
            "EMOJI_SYSTEM_DISABLED",
            "EMOJI_HIDDEN",
            "EMOJI_DELETED",
          },
          enumDescriptions = {
            "",
            "Emoji is visible and available to be used, subject to access control requirements.",
            "Emoji can no longer be used (e.g. due to a shortcode conflict), but is not removed from existing embeddings.",
            "Emoji is hidden from pickers, so new usages are not allowed, but is not removed from existing embeddings.",
            "Emoji is removed everywhere and is not available to end-users.",
          },
          type = "string",
        },
        updateTimeMicros = {
          format = "int64",
          type = "string",
        },
        uuid = {
          description = "Unique key for a custom emoji resource. Required. This field is *always* populated.",
          type = "string",
        },
      },
      type = "object",
    },
    AppsDynamiteSharedDateTimePicker = {
      description = "The widget that lets users to specify a date and time.",
      id = "AppsDynamiteSharedDateTimePicker",
      properties = {
        label = {
          description = "The label for the field that displays to the user.",
          type = "string",
        },
        name = {
          description = "The name of the text input that's used in formInput, and uniquely identifies this input.",
          type = "string",
        },
        onChangeAction = {
          ["$ref"] = "AppsDynamiteSharedAction",
          description = "Triggered when the user clicks Save or Clear from the date/time picker dialog. This is only triggered if the value changed as a result of the Save/Clear operation.",
        },
        timezoneOffsetDate = {
          description = "The number representing the time zone offset from UTC, in minutes. If set, the `value_ms_epoch` is displayed in the specified time zone. If not set, it uses the user's time zone setting on the client side.",
          format = "int32",
          type = "integer",
        },
        type = {
          description = "The type of the date/time picker.",
          enum = {
            "DATE_AND_TIME",
            "DATE_ONLY",
            "TIME_ONLY",
          },
          enumDescriptions = {
            "The user can select a date and time.",
            "The user can only select a date.",
            "The user can only select a time.",
          },
          type = "string",
        },
        valueMsEpoch = {
          description = "The value to display as the default value before user input or previous user input. It is represented in milliseconds (Epoch time). For `DATE_AND_TIME` type, the full epoch value is used. For `DATE_ONLY` type, only date of the epoch time is used. For `TIME_ONLY` type, only time of the epoch time is used. For example, you can set epoch time to `3 * 60 * 60 * 1000` to represent 3am.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    AppsDynamiteSharedDecoratedText = {
      description = "A widget that displays text with optional decorations such as a label above or below the text, an icon in front of the text, a selection widget or a button after the text.",
      id = "AppsDynamiteSharedDecoratedText",
      properties = {
        bottomLabel = {
          description = "The formatted text label that shows below the main text.",
          type = "string",
        },
        button = {
          ["$ref"] = "AppsDynamiteSharedButton",
          description = "A button that can be clicked to trigger an action.",
        },
        endIcon = {
          ["$ref"] = "AppsDynamiteSharedIcon",
          description = "An icon displayed after the text.",
        },
        icon = {
          ["$ref"] = "AppsDynamiteSharedIcon",
          description = "Deprecated in favor of start_icon.",
        },
        onClick = {
          ["$ref"] = "AppsDynamiteSharedOnClick",
          description = "Only the top and bottom label and content region are clickable.",
        },
        startIcon = {
          ["$ref"] = "AppsDynamiteSharedIcon",
          description = "The icon displayed in front of the text.",
        },
        switchControl = {
          ["$ref"] = "AppsDynamiteSharedDecoratedTextSwitchControl",
          description = "A switch widget can be clicked to change its state or trigger an action.",
        },
        text = {
          description = "Required. The main widget formatted text. See Text formatting for details.",
          type = "string",
        },
        topLabel = {
          description = "The formatted text label that shows above the main text.",
          type = "string",
        },
        wrapText = {
          description = "The wrap text setting. If `true`, the text is wrapped and displayed in multiline. Otherwise, the text is truncated.",
          type = "boolean",
        },
      },
      type = "object",
    },
    AppsDynamiteSharedDecoratedTextSwitchControl = {
      id = "AppsDynamiteSharedDecoratedTextSwitchControl",
      properties = {
        controlType = {
          description = "The control type, either switch or checkbox.",
          enum = {
            "SWITCH",
            "CHECKBOX",
            "CHECK_BOX",
          },
          enumDescriptions = {
            "",
            "Deprecated in favor of `CHECK_BOX`.",
            "",
          },
          type = "string",
        },
        name = {
          description = "The name of the switch widget that's used in formInput.",
          type = "string",
        },
        onChangeAction = {
          ["$ref"] = "AppsDynamiteSharedAction",
          description = "The action when the switch state is changed.",
        },
        selected = {
          description = "If the switch is selected.",
          type = "boolean",
        },
        value = {
          description = "The value is what is passed back in the callback.",
          type = "string",
        },
      },
      type = "object",
    },
    AppsDynamiteSharedDimension = {
      description = "Dimension for the uploaded attachments.",
      id = "AppsDynamiteSharedDimension",
      properties = {
        height = {
          format = "int32",
          type = "integer",
        },
        width = {
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    AppsDynamiteSharedDivider = {
      description = "A divider that appears in between widgets.",
      id = "AppsDynamiteSharedDivider",
      properties = {},
      type = "object",
    },
    AppsDynamiteSharedDlpMetricsMetadata = {
      description = "LINT.IfChange",
      id = "AppsDynamiteSharedDlpMetricsMetadata",
      properties = {
        dlpStatus = {
          description = "[required] Describes the DLP status of message send and attachment upload events.",
          enum = {
            "DLP_STATUS_UNKNOWN",
            "DLP_DISABLED",
            "DLP_ENABLED_NO_RULE_FETCH",
            "DLP_ENABLED_RULES_FETCHED_NO_RULES",
            "DLP_ENABLED_RULES_FETCHED_NO_APPLICABLE_RULES",
            "DLP_ENABLED_RULES_FETCHED_AND_EVALUATED",
            "DLP_ENABLED_SCAN_TIMEOUT",
            "DLP_ENABLED_SCAN_FAILED",
          },
          enumDescriptions = {
            "",
            "Rule fetch and evaluation are skipped because DLP experiment is not enabled.",
            "Rule fetch and evaluation are skipped because there is no rule to be fetched (e.g. message is sent from a consumer, or there is no message.)",
            "Rule fetch happened, but rule evalution is skipped because the fetch returned no rules.",
            "Rule fetch happened, but rule evaluation is skipped because none of the rules are applicable.",
            "Rule fetch and evaluation were performed and completed successfully.",
            "DLP scan was attempted but timed out.",
            "Generic DLP failure. This case covers any other errors/exceptions in the Chat backend that caused the DLP scan to fail.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    AppsDynamiteSharedDocument = {
      description = "Data for rendering a document.",
      id = "AppsDynamiteSharedDocument",
      properties = {
        fileId = {
          description = "Unique file ID.",
          type = "string",
        },
        justification = {
          ["$ref"] = "AppsDynamiteSharedJustification",
          description = "Justification to explain why this document is being suggested.",
        },
        lastModifiedTime = {
          description = "Time the document was last modified.",
          format = "google-datetime",
          type = "string",
        },
        mimeType = {
          description = "Used to determine which icon to render (e.g. docs, slides, sheets)",
          type = "string",
        },
        title = {
          description = "Title of the document.",
          type = "string",
        },
        url = {
          description = "URL of the document.",
          type = "string",
        },
      },
      type = "object",
    },
    AppsDynamiteSharedEmoji = {
      id = "AppsDynamiteSharedEmoji",
      properties = {
        customEmoji = {
          ["$ref"] = "AppsDynamiteSharedCustomEmoji",
          description = "A custom emoji.",
        },
        unicode = {
          description = "A basic emoji represented by a unicode string.",
          type = "string",
        },
      },
      type = "object",
    },
    AppsDynamiteSharedFindDocumentSuggestion = {
      description = "Data for a FindDocument suggestion type.",
      id = "AppsDynamiteSharedFindDocumentSuggestion",
      properties = {
        documentSuggestions = {
          description = "List of documents to render as suggestions.",
          items = {
            ["$ref"] = "AppsDynamiteSharedDocument",
          },
          type = "array",
        },
        showActionButtons = {
          description = "Whether to show the action buttons in the card for the suggestions.",
          type = "boolean",
        },
      },
      type = "object",
    },
    AppsDynamiteSharedGrid = {
      description = "Represents a Grid widget that displays items in a configurable grid layout.",
      id = "AppsDynamiteSharedGrid",
      properties = {
        borderStyle = {
          ["$ref"] = "AppsDynamiteSharedBorderStyle",
          description = "The border style to apply to each grid item.",
        },
        columnCount = {
          description = "The number of columns to display in the grid. A default value is used if this field isn't specified, and that default value is different depending on where the grid is shown (dialog versus companion).",
          format = "int32",
          type = "integer",
        },
        items = {
          description = "The items to display in the grid.",
          items = {
            ["$ref"] = "AppsDynamiteSharedGridGridItem",
          },
          type = "array",
        },
        onClick = {
          ["$ref"] = "AppsDynamiteSharedOnClick",
          description = "This callback is reused by each individual grid item, but with the item's identifier and index in the items list added to the callback's parameters.",
        },
        title = {
          description = "The text that displays in the grid header.",
          type = "string",
        },
      },
      type = "object",
    },
    AppsDynamiteSharedGridGridItem = {
      description = "Represents a single item in the grid layout.",
      id = "AppsDynamiteSharedGridGridItem",
      properties = {
        id = {
          description = "A user-specified identifier for this grid item. This identifier is returned in the parent Grid's onClick callback parameters.",
          type = "string",
        },
        image = {
          ["$ref"] = "AppsDynamiteSharedImageComponent",
          description = "The image that displays in the grid item.",
        },
        layout = {
          description = "The layout to use for the grid item.",
          enum = {
            "GRID_ITEM_LAYOUT_UNSPECIFIED",
            "TEXT_BELOW",
            "TEXT_ABOVE",
          },
          enumDescriptions = {
            "No layout specified.",
            "The title and subtitle are shown below the grid item's image.",
            "The title and subtitle are shown above the grid item's image.",
          },
          type = "string",
        },
        subtitle = {
          description = "The grid item's subtitle.",
          type = "string",
        },
        textAlignment = {
          description = "The horizontal alignment of the grid item's text.",
          enum = {
            "HORIZONTAL_ALIGNMENT_UNSPECIFIED",
            "START",
            "CENTER",
            "END",
          },
          enumDescriptions = {
            "Unspecified alignment.",
            "Alignment to the start position.",
            "Alignment to the center position.",
            "Alignment to the end position.",
          },
          type = "string",
        },
        title = {
          description = "The grid item's title.",
          type = "string",
        },
      },
      type = "object",
    },
    AppsDynamiteSharedGroupDetails = {
      description = "NEXT TAG: 3 A GroupDetails proto will store the information pertaining to single Group.",
      id = "AppsDynamiteSharedGroupDetails",
      properties = {
        description = {
          description = "A simple text that describes the purpose of a single Group, the general theme of the topics to be posted and/or the denominator of the Group participants.",
          type = "string",
        },
        guidelines = {
          description = "A simple text describing the rules and expectations from members when participating in conversation.",
          type = "string",
        },
      },
      type = "object",
    },
    AppsDynamiteSharedGroupVisibility = {
      id = "AppsDynamiteSharedGroupVisibility",
      properties = {
        state = {
          enum = {
            "UNKNOWN",
            "PRIVATE",
            "PUBLIC",
          },
          enumDescriptions = {
            "Do not use.",
            "Explicitly invited users may join the room.",
            "Anyone in the domain may join the room.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    AppsDynamiteSharedIcon = {
      id = "AppsDynamiteSharedIcon",
      properties = {
        altText = {
          description = "The description of the icon, used for accessibility. The default value is provided if you don't specify one.",
          type = "string",
        },
        iconUrl = {
          description = "The icon specified by a URL.",
          type = "string",
        },
        imageType = {
          description = "The crop style applied to the image. In some cases, applying a `CIRCLE` crop causes the image to be drawn larger than a standard icon.",
          enum = {
            "SQUARE",
            "CIRCLE",
          },
          enumDescriptions = {
            "Applies no cropping to the image.",
            "Applies a circular mask to the image.",
          },
          type = "string",
        },
        knownIcon = {
          description = "The icon specified by the string name of a list of known icons",
          type = "string",
        },
      },
      type = "object",
    },
    AppsDynamiteSharedImage = {
      description = "An image that is specified by a URL and can have an onClick action.",
      id = "AppsDynamiteSharedImage",
      properties = {
        altText = {
          description = "The alternative text of this image, used for accessibility.",
          type = "string",
        },
        imageUrl = {
          description = "An image URL.",
          type = "string",
        },
        onClick = {
          ["$ref"] = "AppsDynamiteSharedOnClick",
        },
      },
      type = "object",
    },
    AppsDynamiteSharedImageComponent = {
      id = "AppsDynamiteSharedImageComponent",
      properties = {
        altText = {
          description = "The accessibility label for the image.",
          type = "string",
        },
        borderStyle = {
          ["$ref"] = "AppsDynamiteSharedBorderStyle",
          description = "The border style to apply to the image.",
        },
        cropStyle = {
          ["$ref"] = "AppsDynamiteSharedImageCropStyle",
          description = "The crop style to apply to the image.",
        },
        imageUri = {
          description = "The image URL.",
          type = "string",
        },
      },
      type = "object",
    },
    AppsDynamiteSharedImageCropStyle = {
      description = "Represents the crop style applied to an image.",
      id = "AppsDynamiteSharedImageCropStyle",
      properties = {
        aspectRatio = {
          description = "The aspect ratio to use if the crop type is `RECTANGLE_CUSTOM`.",
          format = "double",
          type = "number",
        },
        type = {
          description = "The crop type.",
          enum = {
            "IMAGE_CROP_TYPE_UNSPECIFIED",
            "SQUARE",
            "CIRCLE",
            "RECTANGLE_CUSTOM",
            "RECTANGLE_4_3",
          },
          enumDescriptions = {
            "No value specified.",
            "Applies a square crop.",
            "Applies a circular crop.",
            "Applies a rectangular crop with a custom aspect ratio.",
            "Applies a rectangular crop with a 4:3 aspect ratio.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    AppsDynamiteSharedJustification = {
      description = "Data for rendering a justification for a document.",
      id = "AppsDynamiteSharedJustification",
      properties = {
        actionTime = {
          description = "Time the action took place.",
          format = "google-datetime",
          type = "string",
        },
        actionType = {
          description = "Type of action performed on the document.",
          enum = {
            "ACTION_TYPE_UNSPECIFIED",
            "COMMENTED",
            "CREATED",
            "EDITED",
            "PRESENTED",
            "SHARED",
            "VIEWED",
            "COMMENT_RESOLVED",
            "SENT",
          },
          enumDescriptions = {
            "Unspecified action.",
            "Commented on document.",
            "Created document.",
            "Edited document.",
            "Presented document.",
            "Shared document.",
            "Viewed document.",
            "Resolved comment on document.",
            "Sent document over chat/email.",
          },
          type = "string",
        },
        documentOwner = {
          ["$ref"] = "AppsDynamiteSharedJustificationPerson",
          description = "Owner of the document.",
        },
        topics = {
          description = "Words or phrases from the user's query that describes the document content. (Ex: Users query is \"Can you share the document about Bullseye?\" the extracted topic would be \"Bullseye\").",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    AppsDynamiteSharedJustificationPerson = {
      description = "Data for rendering a person associated with a document.",
      id = "AppsDynamiteSharedJustificationPerson",
      properties = {
        isRecipient = {
          description = "Whether the person is the recipient of the suggestions.",
          type = "boolean",
        },
        user = {
          ["$ref"] = "UserId",
          description = "Obfuscated user ID.",
        },
      },
      type = "object",
    },
    AppsDynamiteSharedMeetMetadata = {
      description = "Metadata specific for a Meet call that are required to generate call artifacts.",
      id = "AppsDynamiteSharedMeetMetadata",
      properties = {
        meetingCode = {
          description = "Required. A globally unique code (e.g. \"cxv-zbgj-wzw\") that points to a meeting space. Note: Meeting codes may be regenerated, which will cause old meeting codes to become invalid.",
          type = "string",
        },
        meetingUrl = {
          description = "Required. A URL, in the format \"https://meet.google.com/*\" (e.g. https://meet.google.com/cxv-zbgj-wzw), to identify and access the meeting space.",
          type = "string",
        },
      },
      type = "object",
    },
    AppsDynamiteSharedMessageInfo = {
      description = "Information that references a Dynamite chat message. This is only used for Activity Feed messages.",
      id = "AppsDynamiteSharedMessageInfo",
      properties = {
        messageId = {
          ["$ref"] = "MessageId",
          description = "Id of the source chat message. This is kept here because the top-level message ID to refers the AF message ID.",
        },
        messageType = {
          description = "The type of the source chat message.",
          enum = {
            "MESSAGE_TYPE_UNSPECIFIED",
            "INLINE_REPLY",
          },
          enumDescriptions = {
            "Default value where type is not specified.",
            "The source chat message is a threaded reply to another message.",
          },
          type = "string",
        },
        topicReadTimeUsec = {
          description = "Timestamp of when the topic containing the message has been read by the user. This is populated if the message references an inline reply, in which case the space may be marked as read but the topic still has unread messages.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    AppsDynamiteSharedMessageIntegrationPayload = {
      description = "The payload(restricted to 1P applications) to be stored with a specific message.",
      id = "AppsDynamiteSharedMessageIntegrationPayload",
      properties = {
        projectNumber = {
          description = "Pantheon project number used to identify the calling app.",
          format = "int64",
          type = "string",
        },
        tasksMessageIntegrationPayload = {
          ["$ref"] = "AppsDynamiteSharedTasksMessageIntegrationPayload",
        },
        type = {
          description = "An enum indicating which 1P application's payload this is. This field is required to add 1P payload.",
          enum = {
            "PAYLOAD_TYPE_UNSPECIFIED",
            "TASKS",
          },
          enumDescriptions = {
            "",
            "",
          },
          type = "string",
        },
      },
      type = "object",
    },
    AppsDynamiteSharedOnClick = {
      id = "AppsDynamiteSharedOnClick",
      properties = {
        action = {
          ["$ref"] = "AppsDynamiteSharedAction",
          description = "If specified, an action is triggered by this onClick.",
        },
        hostAppAction = {
          ["$ref"] = "HostAppActionMarkup",
          description = "Triggers host app action on click directly without invoking form actions. This is currently not available to end-users and is used internal only.",
        },
        openDynamicLinkAction = {
          ["$ref"] = "AppsDynamiteSharedAction",
          description = "An add-on triggers this action when the action needs to open a link. This differs from the open_link above in that this needs to talk to server to get the link. Thus some preparation work is required for web client to do before the open link action response comes back.",
        },
        openLink = {
          ["$ref"] = "AppsDynamiteSharedOpenLink",
          description = "If specified, this onClick triggers an open link action.",
        },
      },
      type = "object",
    },
    AppsDynamiteSharedOpenLink = {
      id = "AppsDynamiteSharedOpenLink",
      properties = {
        appUri = {
          ["$ref"] = "AppsDynamiteSharedOpenLinkAppUri",
          description = "Represents the platform specific uri/intent to open on each client. For example: A companion_url will open in a companion window on the web. An iOS URL and android intent will open in the corresponding hosting apps. If these platform specific URLs can't be handled correctly, i.e. if the companion isn't supported on web and the hosting apps aren't available on the mobile platforms then the `uri` will open in a new browser window on all the platforms.",
        },
        onClose = {
          enum = {
            "NOTHING",
            "RELOAD",
          },
          enumDescriptions = {
            "Doesn’t reload the card after the child window closes. Reloads the card after the child window closes. If used in conjunction with [OpenAs.OVERLAY](/workspace/add-ons/reference/rpc/google.apps.card.v1#openas), the child window acts as a modal dialog and the main card is blocked until the child window closes.",
            "",
          },
          type = "string",
        },
        openAs = {
          enum = {
            "FULL_SIZE",
            "OVERLAY",
          },
          enumDescriptions = {
            "The link opens as a full size window (if that's the frame used by the client.",
            "The link opens as an overlay, such as a pop-up.",
          },
          type = "string",
        },
        url = {
          description = "The URL to open.",
          type = "string",
        },
      },
      type = "object",
    },
    AppsDynamiteSharedOpenLinkAppUri = {
      description = "Represents the platform specific uri/intent to open for each client.",
      id = "AppsDynamiteSharedOpenLinkAppUri",
      properties = {
        androidIntent = {
          ["$ref"] = "AppsDynamiteSharedOpenLinkAppUriIntent",
          description = "An intent object to be opened in the corresponding android hosting app.",
        },
        companionUri = {
          description = "A companion uri string to be opened in the chat companion window. on the web.",
          type = "string",
        },
        iosUri = {
          description = "A uri string to be opened in the corresponding iOS hosting app.",
          type = "string",
        },
      },
      type = "object",
    },
    AppsDynamiteSharedOpenLinkAppUriIntent = {
      description = "Android intent.",
      id = "AppsDynamiteSharedOpenLinkAppUriIntent",
      properties = {
        extraData = {
          description = "A list of extra data for the android intent. For example, for a calendar event edit intent, the event title information can be passed as extra data.",
          items = {
            ["$ref"] = "AppsDynamiteSharedOpenLinkAppUriIntentExtraData",
          },
          type = "array",
        },
        intentAction = {
          description = "An android intent action string for the {@link android.content.Intent} object. For example: for the view intent action type, a valid value will be android.content.Intent.ACTION_VIEW.",
          type = "string",
        },
      },
      type = "object",
    },
    AppsDynamiteSharedOpenLinkAppUriIntentExtraData = {
      description = "Extra data for an android intent. Valid keys are defined in the hosting app contract.",
      id = "AppsDynamiteSharedOpenLinkAppUriIntentExtraData",
      properties = {
        key = {
          description = "A key for the intent extra data.",
          type = "string",
        },
        value = {
          description = "Value for the given extra data key.",
          type = "string",
        },
      },
      type = "object",
    },
    AppsDynamiteSharedOrganizationInfo = {
      description = "Contains info about the entity that something is, or is owned by.",
      id = "AppsDynamiteSharedOrganizationInfo",
      properties = {
        consumerInfo = {
          ["$ref"] = "AppsDynamiteSharedOrganizationInfoConsumerInfo",
        },
        customerInfo = {
          ["$ref"] = "AppsDynamiteSharedOrganizationInfoCustomerInfo",
        },
      },
      type = "object",
    },
    AppsDynamiteSharedOrganizationInfoConsumerInfo = {
      description = "Intentionally empty. Used to disambiguate consumer and customer use cases in oneof below.",
      id = "AppsDynamiteSharedOrganizationInfoConsumerInfo",
      properties = {},
      type = "object",
    },
    AppsDynamiteSharedOrganizationInfoCustomerInfo = {
      id = "AppsDynamiteSharedOrganizationInfoCustomerInfo",
      properties = {
        customerId = {
          ["$ref"] = "CustomerId",
        },
      },
      type = "object",
    },
    AppsDynamiteSharedOriginAppSuggestion = {
      description = "Stores the suggestion provided by apps/bots.",
      id = "AppsDynamiteSharedOriginAppSuggestion",
      properties = {
        appId = {
          ["$ref"] = "AppId",
        },
        cardClickSuggestion = {
          ["$ref"] = "AppsDynamiteSharedCardClickSuggestion",
        },
      },
      type = "object",
    },
    AppsDynamiteSharedPhoneNumber = {
      id = "AppsDynamiteSharedPhoneNumber",
      properties = {
        type = {
          description = "The phone number type, e.g., work, mobile, etc.",
          type = "string",
        },
        value = {
          description = "The actual phone number.",
          type = "string",
        },
      },
      type = "object",
    },
    AppsDynamiteSharedReaction = {
      id = "AppsDynamiteSharedReaction",
      properties = {
        count = {
          description = "The total number of users who have reacted.",
          format = "int32",
          type = "integer",
        },
        createTimestamp = {
          description = "When the first emoji of this type was added.",
          format = "int64",
          type = "string",
        },
        currentUserParticipated = {
          description = "Whether the current user reacted using this emoji. Note: Unlike most properties of messages, this is different per-user.",
          type = "boolean",
        },
        emoji = {
          ["$ref"] = "AppsDynamiteSharedEmoji",
        },
      },
      type = "object",
    },
    AppsDynamiteSharedRetentionSettings = {
      description = "The settings of retention period of a message or topic.",
      id = "AppsDynamiteSharedRetentionSettings",
      properties = {
        expiryTimestamp = {
          description = "The timestamp after which the message/topic should be removed, in microseconds since the epoch, when state == EPHEMERAL_ONE_DAY. The value should not be set in other cases.",
          format = "int64",
          type = "string",
        },
        state = {
          description = "The retention state.",
          enum = {
            "UNKNOWN_RETENTION_STATE",
            "PERMANENT",
            "EPHEMERAL_ONE_DAY",
          },
          enumDescriptions = {
            "",
            "The message/topic should be kept permanently.",
            "The message/topic should be kept with a 24-hour TTL.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    AppsDynamiteSharedSegmentedMembershipCount = {
      description = "Contains info on membership count for member types: HUMAN_USER, APP_USER & ROSTER_MEMBER different states: INVITED, JOINED",
      id = "AppsDynamiteSharedSegmentedMembershipCount",
      properties = {
        memberType = {
          enum = {
            "MEMBER_TYPE_UNSPECIFIED",
            "HUMAN_USER",
            "ROSTER_MEMBER",
          },
          enumDescriptions = {
            "default value",
            "member is a human user",
            "member is a roster",
          },
          type = "string",
        },
        membershipCount = {
          description = "count of members with given type and state",
          format = "int32",
          type = "integer",
        },
        membershipState = {
          enum = {
            "MEMBER_UNKNOWN",
            "MEMBER_INVITED",
            "MEMBER_JOINED",
            "MEMBER_NOT_A_MEMBER",
            "MEMBER_FAILED",
          },
          enumDescriptions = {
            "Default state, do not use",
            "An invitation to the space has been sent",
            "User has joined the space",
            "User is not a member",
            "This state should never be stored in Spanner. It is a state for responses to the clients to indicate that membership mutations have failed and the member is in its previous state.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    AppsDynamiteSharedSegmentedMembershipCounts = {
      id = "AppsDynamiteSharedSegmentedMembershipCounts",
      properties = {
        value = {
          items = {
            ["$ref"] = "AppsDynamiteSharedSegmentedMembershipCount",
          },
          type = "array",
        },
      },
      type = "object",
    },
    AppsDynamiteSharedSelectionInput = {
      description = "A widget that creates a UI item (for example, a drop-down list) with options for users to select.",
      id = "AppsDynamiteSharedSelectionInput",
      properties = {
        items = {
          items = {
            ["$ref"] = "AppsDynamiteSharedSelectionInputSelectionItem",
          },
          type = "array",
        },
        label = {
          description = "The label displayed ahead of the switch control.",
          type = "string",
        },
        name = {
          description = "The name of the text input which is used in formInput.",
          type = "string",
        },
        onChangeAction = {
          ["$ref"] = "AppsDynamiteSharedAction",
          description = "If specified, the form is submitted when the selection changes. If not specified, you must specify a separate button.",
        },
        type = {
          enum = {
            "CHECK_BOX",
            "RADIO_BUTTON",
            "SWITCH",
            "DROPDOWN",
          },
          enumDescriptions = {
            "The selection type is a checkbox.",
            "The selection type is a radio button.",
            "The selection type is a switch.",
            "The selection type is a dropdown.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    AppsDynamiteSharedSelectionInputSelectionItem = {
      description = "The item in the switch control. A radio button, at most one of the items is selected.",
      id = "AppsDynamiteSharedSelectionInputSelectionItem",
      properties = {
        selected = {
          description = "If more than one item is selected for `RADIO_BUTTON` and `DROPDOWN`, the first selected item is treated as selected and the ones after are ignored.",
          type = "boolean",
        },
        text = {
          description = "The text to be displayed.",
          type = "string",
        },
        value = {
          description = "The value associated with this item. The client should use this as a form input value.",
          type = "string",
        },
      },
      type = "object",
    },
    AppsDynamiteSharedSpaceInfo = {
      description = "Defines the representation of a single matching space.",
      id = "AppsDynamiteSharedSpaceInfo",
      properties = {
        avatarInfo = {
          ["$ref"] = "AppsDynamiteSharedAvatarInfo",
        },
        avatarUrl = {
          type = "string",
        },
        description = {
          type = "string",
        },
        groupId = {
          ["$ref"] = "GroupId",
        },
        inviterEmail = {
          description = "The email address of the user that invited the calling user to the room, if available. This field will only be populated for direct invites, it will be empty if the user was indirectly invited to the group.",
          type = "string",
        },
        isExternal = {
          description = "Whether this is a space that enables guest access",
          type = "boolean",
        },
        name = {
          type = "string",
        },
        numMembers = {
          format = "int32",
          type = "integer",
        },
        userMembershipState = {
          description = "searching user's membership state in this space",
          enum = {
            "MEMBER_UNKNOWN",
            "MEMBER_INVITED",
            "MEMBER_JOINED",
            "MEMBER_NOT_A_MEMBER",
            "MEMBER_FAILED",
          },
          enumDescriptions = {
            "Default state, do not use",
            "An invitation to the space has been sent",
            "User has joined the space",
            "User is not a member",
            "This state should never be stored in Spanner. It is a state for responses to the clients to indicate that membership mutations have failed and the member is in its previous state.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    AppsDynamiteSharedSuggestions = {
      description = "A container wrapping elements necessary for showing suggestion items used in text input autocomplete.",
      id = "AppsDynamiteSharedSuggestions",
      properties = {
        items = {
          description = "A list of suggestions items which will be used in are used in autocomplete.",
          items = {
            ["$ref"] = "AppsDynamiteSharedSuggestionsSuggestionItem",
          },
          type = "array",
        },
      },
      type = "object",
    },
    AppsDynamiteSharedSuggestionsSuggestionItem = {
      description = "A suggestion item. Only supports text for now.",
      id = "AppsDynamiteSharedSuggestionsSuggestionItem",
      properties = {
        text = {
          type = "string",
        },
      },
      type = "object",
    },
    AppsDynamiteSharedTasksAnnotationData = {
      description = "This is the internal version of the API proto at google3/google/chat/v1/gsuite_message_integration.proto",
      id = "AppsDynamiteSharedTasksAnnotationData",
      properties = {
        assigneeChange = {
          ["$ref"] = "AppsDynamiteSharedTasksAnnotationDataAssigneeChange",
        },
        completionChange = {
          ["$ref"] = "AppsDynamiteSharedTasksAnnotationDataCompletionChange",
        },
        creation = {
          ["$ref"] = "AppsDynamiteSharedTasksAnnotationDataCreation",
        },
        deletionChange = {
          ["$ref"] = "AppsDynamiteSharedTasksAnnotationDataDeletionChange",
        },
        taskId = {
          description = "ID of task. Will be used to create deep links to Tasks.",
          type = "string",
        },
        taskProperties = {
          ["$ref"] = "AppsDynamiteSharedTasksAnnotationDataTaskProperties",
          description = "Task properties after the update has been applied.",
        },
        userDefinedMessage = {
          ["$ref"] = "AppsDynamiteSharedTasksAnnotationDataUserDefinedMessage",
        },
      },
      type = "object",
    },
    AppsDynamiteSharedTasksAnnotationDataAssigneeChange = {
      id = "AppsDynamiteSharedTasksAnnotationDataAssigneeChange",
      properties = {
        oldAssignee = {
          ["$ref"] = "UserId",
          description = "Obfuscated user ID of previous assignee. Not set if the task was originally not assigned.",
        },
      },
      type = "object",
    },
    AppsDynamiteSharedTasksAnnotationDataCompletionChange = {
      id = "AppsDynamiteSharedTasksAnnotationDataCompletionChange",
      properties = {},
      type = "object",
    },
    AppsDynamiteSharedTasksAnnotationDataCreation = {
      id = "AppsDynamiteSharedTasksAnnotationDataCreation",
      properties = {},
      type = "object",
    },
    AppsDynamiteSharedTasksAnnotationDataDeletionChange = {
      id = "AppsDynamiteSharedTasksAnnotationDataDeletionChange",
      properties = {},
      type = "object",
    },
    AppsDynamiteSharedTasksAnnotationDataTaskProperties = {
      description = "All relevant task properties for a Chat message.",
      id = "AppsDynamiteSharedTasksAnnotationDataTaskProperties",
      properties = {
        assignee = {
          ["$ref"] = "UserId",
          description = "Obfuscated user ID of new assignee. Not set if the task doesn't have an assignee.",
        },
        completed = {
          description = "Whether the task is marked as completed.",
          type = "boolean",
        },
        deleted = {
          description = "Whether the task is marked as deleted.",
          type = "boolean",
        },
        description = {
          description = "The description of the task. If Task original description's length is greater than 1024, then Task BE sends the truncated description to Dynamite Integration Server.",
          type = "string",
        },
        startDate = {
          ["$ref"] = "Date",
          description = "Set if the task has a date but no time. Source of truth in Tasks BE: http://shortn/_wyT7eB4Ixv",
        },
        startTime = {
          description = "Set if the task has both a date and a time. Source of truth in Tasks BE: http://shortn/_u6cr0F5ttE",
          format = "google-datetime",
          type = "string",
        },
        title = {
          description = "The title of the task.",
          type = "string",
        },
      },
      type = "object",
    },
    AppsDynamiteSharedTasksAnnotationDataUserDefinedMessage = {
      description = "Used for task card attachments on custom user messages that should be kept as is without generating an i18n event message, e.g. the user starts a conversation from an existing task. IMPORTANT: please don't populate this field yet as it could break existing flows until it's implemented. See code at http://shortn/_CM74CdENMx used by http://shortn/_5o85POJY8Q.",
      id = "AppsDynamiteSharedTasksAnnotationDataUserDefinedMessage",
      properties = {},
      type = "object",
    },
    AppsDynamiteSharedTasksMessageIntegrationPayload = {
      description = "A payload containing Tasks metadata for rendering a live card. Currently not used by the Tasks integration.",
      id = "AppsDynamiteSharedTasksMessageIntegrationPayload",
      properties = {},
      type = "object",
    },
    AppsDynamiteSharedTextInput = {
      description = "A text input is a UI item where users can input text. A text input can also have an onChange action and suggestions.",
      id = "AppsDynamiteSharedTextInput",
      properties = {
        autoCompleteAction = {
          ["$ref"] = "AppsDynamiteSharedAction",
          description = "The refresh function that returns suggestions based on the user's input text. If the callback is not specified, autocomplete is done in client side based on the initial suggestion items.",
        },
        hintText = {
          description = "The hint text.",
          type = "string",
        },
        initialSuggestions = {
          ["$ref"] = "AppsDynamiteSharedSuggestions",
          description = "The initial suggestions made before any user input.",
        },
        label = {
          description = "At least one of label and hintText must be specified.",
          type = "string",
        },
        name = {
          description = "The name of the text input which is used in formInput.",
          type = "string",
        },
        onChangeAction = {
          ["$ref"] = "AppsDynamiteSharedAction",
          description = "The onChange action, for example, invoke a function.",
        },
        type = {
          description = "The style of the text, for example, a single line or multiple lines.",
          enum = {
            "SINGLE_LINE",
            "MULTIPLE_LINE",
          },
          enumDescriptions = {
            "The text is put into a single line.",
            "The text is put into multiple lines.",
          },
          type = "string",
        },
        value = {
          description = "The default value when there is no input from the user.",
          type = "string",
        },
      },
      type = "object",
    },
    AppsDynamiteSharedTextParagraph = {
      description = "A paragraph of text that supports formatting. See [Text formatting](workspace/add-ons/concepts/widgets#text_formatting\") for details.",
      id = "AppsDynamiteSharedTextParagraph",
      properties = {
        text = {
          description = "The text that's shown in the widget.",
          type = "string",
        },
      },
      type = "object",
    },
    AppsDynamiteSharedUserBlockRelationship = {
      description = "User-block relationship",
      id = "AppsDynamiteSharedUserBlockRelationship",
      properties = {
        hasBlockedRequester = {
          type = "boolean",
        },
        isBlockedByRequester = {
          type = "boolean",
        },
      },
      type = "object",
    },
    AppsDynamiteSharedVideoReference = {
      description = "Reference to a transcoded video attachment.",
      id = "AppsDynamiteSharedVideoReference",
      properties = {
        format = {
          description = "Available transcode format. Value is defined in video/storage/proto/content_header.proto",
          items = {
            format = "int32",
            type = "integer",
          },
          type = "array",
        },
        status = {
          description = "Transcode status",
          enum = {
            "UNKNOWN_STATUS",
            "SUCCESS",
            "ERROR",
            "NOT_APPLICABLE",
            "THUMBNAIL_SUCCESS",
            "GO_LIVE_SUCCESS",
          },
          enumDescriptions = {
            "",
            "",
            "",
            "",
            "",
            "",
          },
          type = "string",
        },
      },
      type = "object",
    },
    AppsDynamiteSharedWidget = {
      description = "A widget is a UI element that presents texts, images, etc.",
      id = "AppsDynamiteSharedWidget",
      properties = {
        buttonList = {
          ["$ref"] = "AppsDynamiteSharedButtonList",
          description = "A list of buttons. For example, the following JSON creates two buttons. The first is a filled text button and the second is an image button that opens a link: ``` \"buttonList\": { \"buttons\": [ \"button\": { \"text\": \"Edit\", \"Color\": { \"Red\": 255 \"Green\": 255 \"Blue\": 255 } \"disabled\": true }, \"button\": { \"icon\": { \"knownIcon\": \"INVITE\" \"altText\": \"check calendar\" }, \"onClick\": { \"openLink\": { \"url\": \"https://example.com/calendar\" } } }, ] } ```",
        },
        columns = {
          ["$ref"] = "AppsDynamiteSharedColumns",
          description = "Displays a single row of columns with widgets stacked vertically in each column. For example, the following JSON creates a 2 column widget each containing a single item. ``` \"columns\": { \"wrapStyle\": \"WRAP\", \"columnItems\": [ { \"horizontalSizeStyle\": \"FILL_AVAILABLE_SPACE\", \"horizontalAlignment\": \"CENTER\", \"verticalAlignment\" : \"CENTER\", \"widgets\": [ { \"textParagraph\": { \"text\": \"First column text paragraph\", } } ] }, { \"horizontalSizeStyle\": \"FILL_AVAILABLE_SPACE\", \"horizontalAlignment\": \"CENTER\", \"verticalAlignment\" : \"CENTER\", \"widgets\": [ { \"textParagraph\": { \"text\": \"Second column text paragraph\", } } ] }, ] } } ```",
        },
        dateTimePicker = {
          ["$ref"] = "AppsDynamiteSharedDateTimePicker",
          description = "Displays a selection/input widget for date/time. For example, the following JSON creates a date/time picker for an appointment time: ``` \"date_time_picker\": { \"name\": \"appointment_time\", \"label\": \"Book your appointment at:\", \"type\": \"DateTimePickerType.DATE_AND_TIME\", \"valueMsEpoch\": \"796435200000\" } ```",
        },
        decoratedText = {
          ["$ref"] = "AppsDynamiteSharedDecoratedText",
          description = "Displays a decorated text item in this widget. For example, the following JSON creates a decorated text widget showing email address: ``` \"decoratedText\": { \"icon\": { \"knownIcon\": \"EMAIL\" }, \"topLabel\": \"Email Address\", \"content\": \"heba.salam@example.com\", \"bottomLabel\": \"This is a new Email address!\", \"switchWidget\": { \"name\": \"has_send_welcome_email_to_heba_salam\", \"selected\": false, \"controlType\": \"ControlType.CHECKBOX\" } } ```",
        },
        divider = {
          ["$ref"] = "AppsDynamiteSharedDivider",
          description = "Displays a divider. For example, the following JSON creates a divider: ``` \"divider\": { } ```",
        },
        grid = {
          ["$ref"] = "AppsDynamiteSharedGrid",
          description = "Displays a grid with a collection of items. For example, the following JSON creates a 2 column grid with a single item: ``` \"grid\": { \"title\": \"A fine collection of items\", \"numColumns\": 2, \"borderStyle\": { \"type\": \"STROKE\", \"cornerRadius\": 4.0 }, \"items\": [ \"image\": { \"imageUri\": \"https://www.example.com/image.png\", \"cropStyle\": { \"type\": \"SQUARE\" }, \"borderStyle\": { \"type\": \"STROKE\" } }, \"title\": \"An item\", \"textAlignment\": \"CENTER\" ], \"onClick\": { \"openLink\": { \"url\":\"https://www.example.com\" } } } ```",
        },
        horizontalAlignment = {
          description = "The horizontal alignment of this widget.",
          enum = {
            "HORIZONTAL_ALIGNMENT_UNSPECIFIED",
            "START",
            "CENTER",
            "END",
          },
          enumDescriptions = {
            "Unspecified alignment.",
            "Alignment to the start position.",
            "Alignment to the center position.",
            "Alignment to the end position.",
          },
          type = "string",
        },
        image = {
          ["$ref"] = "AppsDynamiteSharedImage",
          description = "Displays an image in this widget. For example, the following JSON creates an image with alternative text: ``` \"image\": { \"imageUrl\": \"https://example.com/heba_salam.png\" \"altText\": \"Avatar for Heba Salam\" } ```",
        },
        selectionInput = {
          ["$ref"] = "AppsDynamiteSharedSelectionInput",
          description = "Displays a switch control in this widget. For example, the following JSON creates a dropdown selection for size: ``` \"switchControl\": { \"name\": \"size\", \"label\": \"Size\" \"type\": \"SelectionType.DROPDOWN\", \"items\": [ { \"text\": \"S\", \"value\": \"small\", \"selected\": false }, { \"text\": \"M\", \"value\": \"medium\", \"selected\": true }, { \"text\": \"L\", \"value\": \"large\", \"selected\": false }, { \"text\": \"XL\", \"value\": \"extra_large\", \"selected\": false } ] } ```",
        },
        textInput = {
          ["$ref"] = "AppsDynamiteSharedTextInput",
          description = "Displays a text input in this widget. For example, the following JSON creates a text input for mail address: ``` \"textInput\": { \"name\": \"mailing_address\", \"label\": \"Mailing Address\" } ``` As another example, the following JSON creates a text input for programming language with static suggestions: ``` \"textInput\": { \"name\": \"preferred_programing_language\", \"label\": \"Preferred Language\", \"initialSuggestions\": { \"items\": [ { \"text\": \"C++\" }, { \"text\": \"Java\" }, { \"text\": \"JavaScript\" }, { \"text\": \"Python\" } ] } } ```",
        },
        textParagraph = {
          ["$ref"] = "AppsDynamiteSharedTextParagraph",
          description = "Displays a text paragraph in this widget. For example, the following JSON creates a bolded text: ``` \"textParagraph\": { \"text\": \" *bold text*\" } ```",
        },
      },
      type = "object",
    },
    AppsDynamiteV1ApiCompatV1Action = {
      description = "Interactive objects inside a message. Documentation: - https://api.slack.com/docs/message-buttons",
      id = "AppsDynamiteV1ApiCompatV1Action",
      properties = {
        confirm = {
          ["$ref"] = "AppsDynamiteV1ApiCompatV1ActionConfirm",
          description = "Confirmation dialog config.",
        },
        name = {
          description = "Unique identifier for this action.",
          type = "string",
        },
        style = {
          description = "Button style (\"default\", \"primary\", or \"danger\").",
          type = "string",
        },
        text = {
          description = "User-facing label for the action.",
          type = "string",
        },
        type = {
          description = "Action type - currently only \"button\".",
          type = "string",
        },
        value = {
          description = "Payload for this action. Will be sent to the action handler along with name.",
          type = "string",
        },
      },
      type = "object",
    },
    AppsDynamiteV1ApiCompatV1ActionConfirm = {
      description = "Confirmation dialog config.",
      id = "AppsDynamiteV1ApiCompatV1ActionConfirm",
      properties = {
        dismiss_text = {
          description = "\"Cancel\" button label.",
          type = "string",
        },
        ok_text = {
          description = "\"OK\" button label.",
          type = "string",
        },
        text = {
          description = "Confirmation dialog body text.",
          type = "string",
        },
        title = {
          description = "Confirmation dialog title.",
          type = "string",
        },
      },
      type = "object",
    },
    AppsDynamiteV1ApiCompatV1Attachment = {
      description = "Richly formatted attachments. Documentation: - https://api.slack.com/docs/message-attachments",
      id = "AppsDynamiteV1ApiCompatV1Attachment",
      properties = {
        actions = {
          description = "Array of actions (currently only buttons).",
          items = {
            ["$ref"] = "AppsDynamiteV1ApiCompatV1Action",
          },
          type = "array",
        },
        attachment_type = {
          description = "Undocumented - used in interactive button examples. The only valid value appears to be \"default\".",
          type = "string",
        },
        author_icon = {
          description = "Avatar URL for the user.",
          type = "string",
        },
        author_link = {
          description = "URL that the user name should link to.",
          type = "string",
        },
        author_name = {
          description = "User name to display as the author of the message.",
          type = "string",
        },
        callback_id = {
          description = "Unique identifier for the collection of buttons within this attachment. Will be sent back to the action handler URL when a button is clicked.",
          type = "string",
        },
        color = {
          description = "A color \"bar\" to display to the left of the attachment.",
          type = "string",
        },
        fallback = {
          description = "Fallback plain-text string for clients that don't support attachments.",
          type = "string",
        },
        fields = {
          description = "Columns of text inside the attachment body.",
          items = {
            ["$ref"] = "AppsDynamiteV1ApiCompatV1Field",
          },
          type = "array",
        },
        footer = {
          description = "A string displayed at the bottom of the attachment.",
          type = "string",
        },
        footer_icon = {
          description = "Avatar URL displayed to the left of the footer.",
          type = "string",
        },
        image_url = {
          description = "URL of an image to display in an image chip.",
          type = "string",
        },
        mrkdwn_in = {
          description = "List of fields to apply formatting to.",
          items = {
            type = "string",
          },
          type = "array",
        },
        pretext = {
          description = "A string to show above the attachment.",
          type = "string",
        },
        text = {
          description = "Main text.",
          type = "string",
        },
        thumb_url = {
          description = "URL of a thumbnail image to display to the right of the attachment body.",
          type = "string",
        },
        title = {
          description = "Title string of this attachment.",
          type = "string",
        },
        title_link = {
          description = "URL that the title string should link to.",
          type = "string",
        },
        ts = {
          description = "UNIX timestamp of the attachment.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    AppsDynamiteV1ApiCompatV1Field = {
      description = "A column of text in an attachment. Documentation: - https://api.slack.com/docs/message-attachments",
      id = "AppsDynamiteV1ApiCompatV1Field",
      properties = {
        short = {
          description = "Whether the field can be shown side-by-side with another field.",
          type = "boolean",
        },
        title = {
          description = "The heading text, shown in bold.",
          type = "string",
        },
        value = {
          description = "The text value of the field.",
          type = "string",
        },
      },
      type = "object",
    },
    AppsExtensionsMarkupCalendarClientActionMarkupAddAttachmentsActionMarkup = {
      id = "AppsExtensionsMarkupCalendarClientActionMarkupAddAttachmentsActionMarkup",
      properties = {
        addonAttachments = {
          items = {
            ["$ref"] = "AppsExtensionsMarkupCalendarClientActionMarkupAddAttachmentsActionMarkupAddonAttachment",
          },
          type = "array",
        },
      },
      type = "object",
    },
    AppsExtensionsMarkupCalendarClientActionMarkupAddAttachmentsActionMarkupAddonAttachment = {
      id = "AppsExtensionsMarkupCalendarClientActionMarkupAddAttachmentsActionMarkupAddonAttachment",
      properties = {
        iconUrl = {
          description = "Link to the resource's icon.",
          type = "string",
        },
        mimeType = {
          description = "MIME type of the content in resource_url.",
          type = "string",
        },
        resourceUrl = {
          type = "string",
        },
        title = {
          description = "Title of the attachment.",
          type = "string",
        },
      },
      type = "object",
    },
    AppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkup = {
      description = "Markup that defines conference data associated to a Google Calendar event.",
      id = "AppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkup",
      properties = {
        conferenceId = {
          description = "Unique identifier for this conference data. Maximum 512 characters long.",
          type = "string",
        },
        conferenceSolutionId = {
          description = "An identifier of the conferencing solution. Must match a value from the deployment's `calendar.conferenceSolution.id` field.",
          type = "string",
        },
        entryPoints = {
          description = "Entry points to the conference. Maximum 300 entry points are allowed.",
          items = {
            ["$ref"] = "AppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkupEntryPointMarkup",
          },
          type = "array",
        },
        error = {
          ["$ref"] = "AppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkupError",
          description = "If set, it means an error occurred during conference creation.",
        },
        note = {
          description = "Additional notes (such as instructions from the administrator, legal notices) to display to the user. Can contain HTML. Max length 2048 characters.",
          type = "string",
        },
        parameters = {
          description = "Additional add-on parameters. Maximum 300 parameters are allowed.",
          items = {
            ["$ref"] = "AppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkupParameter",
          },
          type = "array",
        },
      },
      type = "object",
    },
    AppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkupEntryPointMarkup = {
      description = "A way to join the conference.",
      id = "AppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkupEntryPointMarkup",
      properties = {
        accessCode = {
          description = "An access code for accessing the conference. Maximum 128 characters long.",
          type = "string",
        },
        features = {
          description = "Features of the entry point, such as being toll or toll-free. One entry point can have multiple features.",
          items = {
            enum = {
              "UNKNOWN_FEATURE",
              "TOLL",
              "TOLL_FREE",
            },
            enumDescriptions = {
              "Unknown feature.",
              "Applies to `PHONE` entry point. A call to a toll number is charged to the calling party. A number can't be toll and toll-free at the same time.",
              "Applies to `PHONE` entry point. For the calling party, a call to a toll-free number is free of charge. A number can't be toll and toll-free at the same time.",
            },
            type = "string",
          },
          type = "array",
        },
        label = {
          description = "The label of the entry point to display to the user. Maximum 512 characters long.",
          type = "string",
        },
        meetingCode = {
          description = "A meeting code for accessing the conference. Maximum 128 characters long.",
          type = "string",
        },
        passcode = {
          description = "A passcode for accessing the conference. Maximum 128 characters long.",
          type = "string",
        },
        password = {
          description = "A password for accessing the conference. Maximum 128 characters long.",
          type = "string",
        },
        pin = {
          description = "A PIN for accessing the conference. Maximum 128 characters long.",
          type = "string",
        },
        regionCode = {
          description = "The CLDR/ISO 3166 region code for the country associated with this entry point. Applicable only to `Type.PHONE`.",
          type = "string",
        },
        type = {
          description = "The type of the entry point. Required.",
          enum = {
            "UNKNOWN",
            "VIDEO",
            "PHONE",
            "MORE",
            "SIP",
          },
          enumDescriptions = {
            "Unknown conference type.",
            "A video conference.",
            "A phone conference.",
            "Used to provide a link to further conference joining information.",
            "A conference using [Session Initiation Protocol](https://en.wikipedia.org/wiki/Session_Initiation_Protocol)",
          },
          type = "string",
        },
        uri = {
          description = "A URI for joining the conference. Supports tel: and http(s): and should be at most 1300 characters long. Required.",
          type = "string",
        },
      },
      type = "object",
    },
    AppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkupError = {
      description = "Represents an error that occurred during conference creation.",
      id = "AppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkupError",
      properties = {
        authenticationUrl = {
          description = "If the error type is `AUTHENTICATION`, the add-on can provide a URL allowing users to log in. Maximum 1300 characters long.",
          type = "string",
        },
        type = {
          description = "The type of error. Required.",
          enum = {
            "UNKNOWN",
            "AUTHENTICATION",
            "TEMPORARY",
            "PERMANENT",
            "PERMISSION_DENIED",
            "CONFERENCE_SOLUTION_FORBIDDEN",
          },
          enumDescriptions = {
            "Unknown error.",
            "An authentication error.",
            "A temporary error.",
            "A permanent error.",
            "The user isn't allowed to perform some action in the third-party conferencing system.",
            "The user isn't allowed to use the selected conference solution (but might be allowed to use other solutions offered by the add-on).",
          },
          type = "string",
        },
      },
      type = "object",
    },
    AppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkupParameter = {
      description = "Solution-specific parameters that are persisted with the event data and, if an update or delete is needed, are passed to the add-on. For example: `[{key: 'sessionKey', value: '123'}, {key: 'meetingId', value: '456'}]`",
      id = "AppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkupParameter",
      properties = {
        key = {
          description = "The key of the parameter. Maximum 50 characters long. Required.",
          type = "string",
        },
        value = {
          description = "The value of the parameter. Maximum 1024 characters long. Required.",
          type = "string",
        },
      },
      type = "object",
    },
    AppsExtensionsMarkupCalendarClientActionMarkupEditAttendeesActionMarkup = {
      id = "AppsExtensionsMarkupCalendarClientActionMarkupEditAttendeesActionMarkup",
      properties = {
        addAttendeeEmails = {
          description = "A list of attendees to add to the Google Calendar event.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    AppsExtensionsMarkupCalendarClientActionMarkupEditConferenceDataActionMarkup = {
      id = "AppsExtensionsMarkupCalendarClientActionMarkupEditConferenceDataActionMarkup",
      properties = {
        conferenceData = {
          ["$ref"] = "AppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkup",
          description = "The conference data to add to the Google Calendar event.",
        },
      },
      type = "object",
    },
    Attachment = {
      description = "Attachments that follow the message text.",
      id = "Attachment",
      properties = {
        addOnData = {
          ["$ref"] = "GoogleChatV1ContextualAddOnMarkup",
          description = "Revised version of Gmail AddOn attachment approved by API design review.",
        },
        appId = {
          ["$ref"] = "UserId",
          description = "The userId for the bot/app that created this data, to be used for attribution of attachments when the attachment was not created by the message sender.",
        },
        attachmentId = {
          description = "To identify an attachment within repeated in a message",
          type = "string",
        },
        cardAddOnData = {
          ["$ref"] = "AppsDynamiteSharedCard",
          description = "Card AddOn attachment with the possibility for specifying editable widgets.",
        },
        deprecatedAddOnData = {
          ["$ref"] = "ContextualAddOnMarkup",
          description = "Deprecated version of Gmail AddOn attachment.",
        },
        slackData = {
          ["$ref"] = "AppsDynamiteV1ApiCompatV1Attachment",
          description = "Slack attachment.",
        },
        slackDataImageUrlHeight = {
          description = "The height of image url as fetched by fife. This field is asynchronously filled.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    Attribute = {
      description = "An Attribute is a piece of data attached an Item. Attributes are opaque to the Starbox and have no effect on, nor are they effected by, message storage, indexing, or search. ",
      id = "Attribute",
      properties = {
        name = {
          description = "The name of the attribute. Required - If a write is attempted with an empty string, the server will return an error.",
          type = "string",
        },
        value = {
          ["$ref"] = "CaribouAttributeValue",
        },
      },
      type = "object",
    },
    AttributeRemoved = {
      description = "An attribute was deleted from some (subset of the) messages in this thread.",
      id = "AttributeRemoved",
      properties = {
        attributeId = {
          type = "string",
        },
        messageKeys = {
          items = {
            ["$ref"] = "MultiKey",
          },
          type = "array",
        },
      },
      type = "object",
    },
    AttributeSet = {
      description = "An attribute was added to some (subset of the) messages in this thread.",
      id = "AttributeSet",
      properties = {
        attributeId = {
          type = "string",
        },
        attributeValue = {
          description = "The serialized attribute_value as persisted in the storage layer. The application is responsible for deserializing it to an Attribute.Value if appropriate.",
          format = "byte",
          type = "string",
        },
        messageKeys = {
          items = {
            ["$ref"] = "MultiKey",
          },
          type = "array",
        },
      },
      type = "object",
    },
    Attributes = {
      id = "Attributes",
      properties = {
        attribute = {
          items = {
            ["$ref"] = "Attribute",
          },
          type = "array",
        },
      },
      type = "object",
    },
    AuditLoggingSettings = {
      description = "Represents the settings for Cloud audit logging",
      id = "AuditLoggingSettings",
      properties = {
        logAdminReadActions = {
          description = "Indicates whether audit logging is on/off for admin activity read APIs i.e. Get/List DataSources, Get/List SearchApplications etc.",
          type = "boolean",
        },
        logDataReadActions = {
          description = "Indicates whether audit logging is on/off for data access read APIs i.e. ListItems, GetItem etc.",
          type = "boolean",
        },
        logDataWriteActions = {
          description = "Indicates whether audit logging is on/off for data access write APIs i.e. IndexItem etc.",
          type = "boolean",
        },
        project = {
          description = "The resource name of the GCP Project to store audit logs. Cloud audit logging will be enabled after project_name has been updated through CustomerService. Format: projects/{project_id}",
          type = "string",
        },
      },
      type = "object",
    },
    AuthorizedItemId = {
      description = "A combination of an identifier for a Drive resource (e.g. file, folder, or drive) and any secrets needed to access it. The secrets should never be logged, and this proto annotates those secret fields to ensure that they are not. Clients are encouraged to use this proto rather than defining their own, to ensure that secrets are correctly annotated.",
      id = "AuthorizedItemId",
      properties = {
        id = {
          description = "Serialized ID of the Drive resource",
          type = "string",
        },
        resourceKey = {
          description = "Resource key of the Drive item. This field should be unset if, depending on the context, the item does not have a resource key, or if none was specified. This must never be logged.",
          type = "string",
        },
      },
      type = "object",
    },
    AutoComplete = {
      id = "AutoComplete",
      properties = {
        items = {
          items = {
            ["$ref"] = "AutoCompleteItem",
          },
          type = "array",
        },
      },
      type = "object",
    },
    AutoCompleteItem = {
      id = "AutoCompleteItem",
      properties = {
        text = {
          type = "string",
        },
      },
      type = "object",
    },
    BabelMessageProps = {
      description = "Container for Babel (Hangouts Classic) only message properties. The properties here will not be consumed by Dynamite clients. They are relevant only for Hangouts Classic.",
      id = "BabelMessageProps",
      properties = {
        clientGeneratedId = {
          description = "Babel clients locally generate this ID to dedupe against the async fanout.",
          format = "int64",
          type = "string",
        },
        contentExtension = {
          ["$ref"] = "ChatContentExtension",
          description = "Stores additional Babel-specific properties (such as event metadata).",
        },
        deliveryMedium = {
          ["$ref"] = "DeliveryMedium",
          description = "Stores the delivery source of messages (such as phone number for SMS).",
        },
        eventId = {
          description = "Primary identifier used by Hangouts Classic for its events (messages).",
          type = "string",
        },
        messageContent = {
          ["$ref"] = "ChatConserverMessageContent",
          description = "Stores message segments (text content) and attachments (media URLs).",
        },
        wasUpdatedByBackfill = {
          description = "Whether or not these message properties were backfilled by go/dinnertrain.",
          type = "boolean",
        },
      },
      type = "object",
    },
    BabelPlaceholderMetadata = {
      description = "Annotation metadata for Babel-only items that signals which type of placeholder message should be displayed in Babel clients.",
      id = "BabelPlaceholderMetadata",
      properties = {
        deleteMetadata = {
          ["$ref"] = "DeleteMetadata",
        },
        editMetadata = {
          ["$ref"] = "EditMetadata",
        },
        hangoutVideoMetadata = {
          ["$ref"] = "HangoutVideoEventMetadata",
        },
      },
      type = "object",
    },
    BooleanOperatorOptions = {
      description = "Used to provide a search operator for boolean properties. This is optional. Search operators let users restrict the query to specific fields relevant to the type of item being searched.",
      id = "BooleanOperatorOptions",
      properties = {
        operatorName = {
          description = "Indicates the operator name required in the query in order to isolate the boolean property. For example, if operatorName is *closed* and the property's name is *isClosed*, then queries like *closed:<value>* show results only where the value of the property named *isClosed* matches *<value>*. By contrast, a search that uses the same *<value>* without an operator returns all items where *<value>* matches the value of any String properties or text within the content field for the item. The operator name can only contain lowercase letters (a-z). The maximum length is 32 characters.",
          type = "string",
        },
      },
      type = "object",
    },
    BooleanPropertyOptions = {
      description = "The options for boolean properties.",
      id = "BooleanPropertyOptions",
      properties = {
        operatorOptions = {
          ["$ref"] = "BooleanOperatorOptions",
          description = "If set, describes how the boolean should be used as a search operator.",
        },
      },
      type = "object",
    },
    BorderStyle = {
      description = "Represents a complete border style that can be applied to widgets.",
      id = "BorderStyle",
      properties = {
        cornerRadius = {
          description = "The corner radius for the border.",
          format = "int32",
          type = "integer",
        },
        strokeColor = {
          description = "The colors to use when the type is STROKE.",
          type = "string",
        },
        type = {
          description = "The border type.",
          enum = {
            "BORDER_TYPE_NOT_SET",
            "NO_BORDER",
            "STROKE",
          },
          enumDescriptions = {
            "No value specified.",
            "No border.",
            "Outline.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    BotInfo = {
      description = "Bot-specific profile information.",
      id = "BotInfo",
      properties = {
        appAllowlistStatus = {
          enum = {
            "UNSPECIFIED_STATUS",
            "ALLOWED",
            "ALL_APPS_DISABLED_BY_ADMIN",
            "APP_NOT_ALLOWLISTED_BY_ADMIN",
          },
          enumDescriptions = {
            "",
            "",
            "For both ALL_APPS_DISABLED_BY_ADMIN and APP_NOT_ALLOWLISTED_BY_ADMIN, the app should still be visible in the catalog, but usage of the app will be disabled. Indicates that all apps have been disabled by the dasher admin.",
            "Indicates that the customer is using allowlisting, but that the bot is not allowlisted.",
          },
          type = "string",
        },
        appId = {
          ["$ref"] = "AppId",
          description = "Identifier of the application associated with the bot.",
        },
        botAvatarUrl = {
          description = "URL for the avatar picture of the User in dynamite. This field should be populated if the request is FetchBotCategories/ListBotCatalogEntries",
          type = "string",
        },
        botName = {
          description = "Non-unique, user-defined display name of the Bot. This field should be populated if the request is FetchBotCategories/ListBotCatalogEntries.",
          type = "string",
        },
        description = {
          description = "Short description for the bot.",
          type = "string",
        },
        developerName = {
          description = "Name of bot developer.",
          type = "string",
        },
        marketPlaceBannerUrl = {
          description = "URL for the banner image in GSuite Market Place. The banner will be 220x140.",
          type = "string",
        },
        status = {
          description = "Indicates whether bot is enabled/disabled.",
          enum = {
            "UNKNOWN_STATUS",
            "ENABLED",
            "DISABLED_BY_DEVELOPER",
          },
          enumDescriptions = {
            "",
            "",
            "Bot has been disabled by the bot developer. No one can @mention or interact with the bot.",
          },
          type = "string",
        },
        supportHomeScreen = {
          description = "If the app supports a home screen.",
          type = "boolean",
        },
        supportUrls = {
          ["$ref"] = "SupportUrls",
          description = "Urls with additional information related to the bot. This field should always be set even if all the fields within it are empty, so that it is convenient for clients to work with this field in javascript.",
        },
        supportedUses = {
          description = "The supported uses are limited according to the user that made the request. If the user does not have permission to use the bot, the list will be empty. This could occur for non whitelisted bots in the catalog.",
          items = {
            enum = {
              "UNKNOWN",
              "CAN_ADD_TO_DM",
              "CAN_ADD_TO_ROOM",
              "CAN_ADD_TO_HUMAN_DM",
            },
            enumDescriptions = {
              "",
              "",
              "",
              "",
            },
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    BotResponse = {
      description = "Information about a bot response, branched from shared/bot_response.proto without frontend User proto as we never store it.",
      id = "BotResponse",
      properties = {
        botId = {
          ["$ref"] = "UserId",
        },
        requiredAction = {
          enum = {
            "UNKNOWN_SETUP_TYPE",
            "CONFIGURATION",
            "AUTHENTICATION",
          },
          enumDescriptions = {
            "",
            "Bot requires configuration.",
            "Bot requires authentication.",
          },
          type = "string",
        },
        responseType = {
          enum = {
            "UNKNOWN_RESPONSE_TYPE",
            "ERROR",
            "SETUP_REQUIRED",
            "DISABLED_BY_ADMIN",
            "DISABLED_BY_DEVELOPER",
            "PRIVATE",
            "APP_SUGGESTION",
          },
          enumDescriptions = {
            "",
            "Bot fails to respond because of deadline_exceeded or failing to parse bot message.",
            "Bot requires auth or config",
            "Bot fails to respond because it is disabled by domain admin",
            "Bot fails to respond because it is disabled by the bot's developer",
            "Message to bot should be permanently private.",
            "A suggestion to promote an app.",
          },
          type = "string",
        },
        setupUrl = {
          description = "URL for setting up bot.",
          type = "string",
        },
      },
      type = "object",
    },
    BroadcastAccess = {
      description = "Broadcast access information of a meeting space.",
      id = "BroadcastAccess",
      properties = {
        accessPolicy = {
          description = "The policy that controls the broadcast's viewer access.",
          enum = {
            "BROADCASTING_ACCESS_POLICY_UNSPECIFIED",
            "ORGANIZATION",
            "PUBLIC",
          },
          enumDescriptions = {
            "Used only when broadcast is not enabled, or an unknown enum value is used.",
            "Only authenticated Google accounts belonging to the same organization as the meeting organizer can access the broadcast.",
            "Anyone with the broadcast view URL can access the broadcast.",
          },
          type = "string",
        },
        viewUrl = {
          description = "A URL that can be used to access the broadcast of the meeting. This field will be empty if broadcast is not enabled. It will be populated by the backend. Clients cannot modify the value.",
          type = "string",
        },
      },
      type = "object",
    },
    BroadcastSessionInfo = {
      description = "Information about a broadcast session.",
      id = "BroadcastSessionInfo",
      properties = {
        broadcastSessionId = {
          description = "A unique server-generated ID for the broadcast session.",
          type = "string",
        },
        broadcastStats = {
          ["$ref"] = "BroadcastStats",
          description = "Output only. Current broadcast session's statistics.",
          readOnly = true,
        },
        ingestionId = {
          description = "Input only. Deprecated field, should not be used.",
          type = "string",
        },
        sessionStateInfo = {
          ["$ref"] = "SessionStateInfo",
          description = "Broadcast session's state information.",
        },
      },
      type = "object",
    },
    BroadcastStats = {
      description = "Statistics of the broadcast session.",
      id = "BroadcastStats",
      properties = {
        estimatedViewerCount = {
          description = "Estimated concurrent viewer count.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    Button = {
      id = "Button",
      properties = {
        imageButton = {
          ["$ref"] = "ImageButton",
        },
        textButton = {
          ["$ref"] = "TextButton",
        },
      },
      type = "object",
    },
    CalendarClientActionMarkup = {
      id = "CalendarClientActionMarkup",
      properties = {
        addAttachmentsActionMarkup = {
          ["$ref"] = "AppsExtensionsMarkupCalendarClientActionMarkupAddAttachmentsActionMarkup",
          description = "An action that adds attachments to the Google Calendar event.",
        },
        editAttendeesActionMarkup = {
          ["$ref"] = "AppsExtensionsMarkupCalendarClientActionMarkupEditAttendeesActionMarkup",
          description = "An action that adds attendees to the Google Calendar event.",
        },
        editConferenceDataActionMarkup = {
          ["$ref"] = "AppsExtensionsMarkupCalendarClientActionMarkupEditConferenceDataActionMarkup",
          description = "An action that adds conference data to the Google Calendar event.",
        },
      },
      type = "object",
    },
    CallInfo = {
      description = "Contains information regarding an ongoing conference (aka call) for a meeting space.",
      id = "CallInfo",
      properties = {
        abuseReportingConfig = {
          ["$ref"] = "AbuseReportingConfig",
          description = "Abuse reporting configuration for the ongoing conference.",
        },
        artifactOwner = {
          ["$ref"] = "UserDisplayInfo",
          description = "Output only. Display name of the owner of artifacts generated in this conference. The expected use of this in clients is to present info like \"This recording will be sent to John Doe's Drive\". This field can be empty if preferred display name determination fails for any reason.",
          readOnly = true,
        },
        attachedDocuments = {
          description = "Output only. Documents attached to an ongoing conference.",
          items = {
            ["$ref"] = "DocumentInfo",
          },
          readOnly = true,
          type = "array",
        },
        availableReactions = {
          description = "Output only. The set of reactions that clients are allowed to send and can expect to receive. Note that a device in the conference should have the MAY_SEND_REACTIONS privilege to be able to send reactions.",
          items = {
            ["$ref"] = "ReactionInfo",
          },
          readOnly = true,
          type = "array",
        },
        broadcastSessionInfo = {
          ["$ref"] = "BroadcastSessionInfo",
          description = "Information about active broadcast session in the ongoing conference.",
        },
        calendarEventId = {
          description = "Output only. The calendar event ID of a Google Calendar event that the meeting space is associated with. If the meeting space is not associated with an event in Google Calendar, this field is empty. For recurring events, it refers to the recurring instance associated with the current call, as determined by the server.",
          readOnly = true,
          type = "string",
        },
        coActivity = {
          ["$ref"] = "CoActivity",
          description = "The current co-activity session, or unset if there is none in progress. A co-activity session can be initiated by devices in JOINED state . Initiator of the co-activity is expected to populate this field to start the session. Once clients detect that the co-activity has finished, any JOINED device can clear this field to end the co-activity session. In the case of switching activities, the initiator of the new activity merely needs to override this with the new co-activity data, and all connected clients are expected to handle the transition gracefully.",
        },
        collaboration = {
          ["$ref"] = "Collaboration",
          description = "The current collaboration session, or unset if no collaboration is in progress.",
        },
        cseInfo = {
          ["$ref"] = "CseInfo",
          description = "CSE information for the ongoing conference.",
        },
        maxJoinedDevices = {
          description = "Output only. The maximum number of devices that may be in the joined state simultaneously in this conference. This can be used by clients to guess whether it will be possible to join, but the only way to know is to try to join. It can also be used to inform users about the limit that is in effect. This limit is normally set when the conference is created and not changed during the lifetime of the conference. But there are some cases where it may change, so clients should be aware that the information may be stale.",
          format = "int32",
          readOnly = true,
          type = "integer",
        },
        organizationName = {
          description = "Output only. The name or description of the organization or domain that the organizer belongs to. The expected use of this in clients is to present messages like \"John Doe (outside of Google.com) is trying to join this call\", where \"Google.com\" is the organization name. The field will be empty if the organization name could not be determined, possibly because of a backend error.",
          readOnly = true,
          type = "string",
        },
        paygateInfo = {
          ["$ref"] = "PaygateInfo",
          description = "Paygate information to clients.",
        },
        presenter = {
          ["$ref"] = "Presenter",
          description = "The current presenter in the call, or unset if there is no current presenter. Clients can set this to change the presenter.",
        },
        recordingInfo = {
          ["$ref"] = "RecordingInfo",
          description = "Deprecated, use RecordingSessionInfo instead. Info about recording for this conference. This will always be set in server responses, with a valid recording status. This is superseded by streaming_sessions field, which contains the same information about this recording as well as additional information about other application type at the same time. This will be deprecated and removed at some point.",
        },
        recordingSessionInfo = {
          ["$ref"] = "RecordingSessionInfo",
          description = "Information about active recording session in the ongoing conference.",
        },
        settings = {
          ["$ref"] = "CallSettings",
          description = "Settings of the ongoing conference.",
        },
        streamingSessions = {
          description = "Output only. Info about streaming sessions (recording or broadcast) for this conference. This should contain all active sessions. Currently, it's guaranteed to have at most one recording and at most one broadcast (at most two sessions in total). For each application type (recording or broadcast), latest inactive session is included if there's no active one.",
          items = {
            ["$ref"] = "StreamingSessionInfo",
          },
          readOnly = true,
          type = "array",
        },
        transcriptionSessionInfo = {
          ["$ref"] = "TranscriptionSessionInfo",
          description = "Information about active transcription session in the ongoing conference.",
        },
        viewerCount = {
          description = "The number of devices viewing the conference - MeetingDevices that are in VIEWER role and JOINED state in the conference.",
          format = "int32",
          type = "integer",
        },
        youTubeBroadcastSessionInfos = {
          description = "Information about active YouTube broadcast sessions in the ongoing conference.",
          items = {
            ["$ref"] = "YouTubeBroadcastSessionInfo",
          },
          type = "array",
        },
      },
      type = "object",
    },
    CallSettings = {
      description = "Effective settings of the ongoing conference.",
      id = "CallSettings",
      properties = {
        accessLock = {
          description = "Indicates whether the access lock is currently on or off.",
          type = "boolean",
        },
        accessType = {
          description = "The current access type of the conference.",
          enum = {
            "ACCESS_TYPE_UNSPECIFIED",
            "ACCESS_TYPE_OPEN",
            "ACCESS_TYPE_TRUSTED",
            "ACCESS_TYPE_RESTRICTED",
          },
          enumDescriptions = {
            "Default value. This value is unused.",
            "Anyone with meeting join information (url, phone access...) can join, no knocking required. (Subject to organization policies)",
            "Members of the Host's organization, invited external users, and dial-in users can join without knocking, everyone else must knock. (Subject to organization policies)",
            "Only participants invited by a host can automatically join, everyone else must knock and be admitted. (Subject to organization policies) Participants cannot dial out from the meeting. And only hosts can accept knocks.",
          },
          type = "string",
        },
        allowJoiningBeforeHost = {
          description = "Whether users can join this conference before a host (Host or Cohost).",
          type = "boolean",
        },
        attendanceReportEnabled = {
          description = "Indicates whether the attendance report is currently enabled or disabled.",
          type = "boolean",
        },
        audioLock = {
          description = "Indicates whether the audio lock is currently on or off.",
          type = "boolean",
        },
        chatLock = {
          description = "Indicates whether the chat lock is currently on or off.",
          type = "boolean",
        },
        cseEnabled = {
          description = "Whether Client-side Encryption is enabled for this conference.",
          type = "boolean",
        },
        moderationEnabled = {
          description = "Indicates whether moderation is currently on or off.",
          type = "boolean",
        },
        presentLock = {
          description = "Indicates whether the present lock is currently on or off.",
          type = "boolean",
        },
        reactionsLock = {
          description = "Indicates whether the reactions lock is currently on or off.",
          type = "boolean",
        },
        videoLock = {
          description = "Indicates whether the video lock is currently on or off.",
          type = "boolean",
        },
      },
      type = "object",
    },
    CapTokenHolderProto = {
      description = "Represents a principal which possesses a particular secret string whose cryptographic hash is specified here. CapTokens (\"Capability Tokens\") are used in ACLProto. It's expected that ACLs with CapTokenHolders will strongly enforce them by Keystore-wrapping crypto keys for the corresponding CapTokens.",
      id = "CapTokenHolderProto",
      properties = {
        tokenHmacSha1Prefix = {
          description = "The hash of the corresponding capability token. The value is defined to be identical to the one in acl.proto's CapTokenMetadata: 10-byte prefix of HMAC-SHA1 of the token. The HMAC key is the following fixed (non-secret) 512-bit value: 79b1c8f4 82baf523 b8a9ab4a e960f438 c45be041 11f1f222 e8a3f64d aeb05e3d c3576acc ec649194 aede422c 4e48e0d1 ff21234a a6ed6b49 a7fa592e efd7bba3",
          format = "byte",
          type = "string",
        },
      },
      type = "object",
    },
    Card = {
      id = "Card",
      properties = {
        cardActions = {
          items = {
            ["$ref"] = "CardAction",
          },
          type = "array",
        },
        displayStyle = {
          enum = {
            "DISPLAY_STYLE_UNSPECIFIED",
            "PEEK",
            "REPLACE",
          },
          enumDescriptions = {
            "",
            "",
            "",
          },
          type = "string",
        },
        fixedFooter = {
          ["$ref"] = "FixedFooter",
        },
        header = {
          ["$ref"] = "CardHeader",
        },
        name = {
          description = "Name of the card used in CardNavigation.pop_to_card_name.",
          type = "string",
        },
        peekCardHeader = {
          ["$ref"] = "CardHeader",
          description = "When displaying contextual content, the peek card header acts as a placeholder so that the user can navigate forward between the homepage cards and the contextual cards.",
        },
        sections = {
          items = {
            ["$ref"] = "Section",
          },
          type = "array",
        },
      },
      type = "object",
    },
    CardAction = {
      description = "When an AddOn Card is shown in detailed view, a card action is the action associated with the card. For an invoice card, a typical action would be: delete invoice, email invoice or open the invoice in browser.",
      id = "CardAction",
      properties = {
        actionLabel = {
          description = "The label used to be displayed in the action menu item.",
          type = "string",
        },
        onClick = {
          ["$ref"] = "OnClick",
        },
      },
      type = "object",
    },
    CardCapabilityMetadata = {
      id = "CardCapabilityMetadata",
      properties = {
        requiredCapabilities = {
          description = "NEXT TAG : 2",
          items = {
            enum = {
              "UNKNOWN",
              "SUPPORTS_BASE_CARDS",
            },
            enumDescriptions = {
              "",
              "NEXT TAG : 2",
            },
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    CardHeader = {
      id = "CardHeader",
      properties = {
        imageAltText = {
          description = "The alternative text of this image which will be used for accessibility.",
          type = "string",
        },
        imageStyle = {
          enum = {
            "CROP_TYPE_NOT_SET",
            "SQUARE",
            "CIRCLE",
            "RECTANGLE_CUSTOM",
            "RECTANGLE_4_3",
          },
          enumDescriptions = {
            "No value specified.",
            "Applies a square crop.",
            "Applies a circular crop.",
            "Applies a rectangular crop with a custom aspect ratio.",
            "Applies a rectangular crop with a 4:3 aspect ratio.",
          },
          type = "string",
        },
        imageUrl = {
          type = "string",
        },
        subtitle = {
          type = "string",
        },
        title = {
          description = "The title must be specified. The header has a fixed height: if both a title and subtitle is specified, each will take up 1 line. If only the title is specified, it will take up both lines. The header is rendered in collapsed and detailed view.",
          type = "string",
        },
      },
      type = "object",
    },
    CaribouAttributeValue = {
      id = "CaribouAttributeValue",
      properties = {
        booleanValue = {
          description = "Tags 1 through 15 are reserved for the most commonly used fields.",
          type = "boolean",
        },
        intValue = {
          format = "int32",
          type = "integer",
        },
        longValue = {
          format = "int64",
          type = "string",
        },
        rawByteValue = {
          description = "Generally, applications should avoid storing raw bytes and instead store structured data as protocol buffer extensions. This both reduces the amount of ad-hoc attribute parsing code as well as eliminates an intermediate copy of the data when deserializing the value. The rawByteValue field is mainly provided for compatibility with attributes stored before the introduction of the Attribute.Value.",
          format = "byte",
          type = "string",
        },
        stringValue = {
          type = "string",
        },
      },
      type = "object",
    },
    ChatClientActionMarkup = {
      description = "Actions handled by Chat Clients.",
      id = "ChatClientActionMarkup",
      properties = {},
      type = "object",
    },
    ChatConserverDynamitePlaceholderMetadata = {
      description = "Metadata used as inputs to the localization that is performed on Dynamite-originated messages that are incompatible with Hangouts clients. See go/localization-of-system-messages for more details.",
      id = "ChatConserverDynamitePlaceholderMetadata",
      properties = {
        attachmentMetadata = {
          ["$ref"] = "ChatConserverDynamitePlaceholderMetadataAttachmentMetadata",
        },
        botMessageMetadata = {
          ["$ref"] = "ChatConserverDynamitePlaceholderMetadataBotMessageMetadata",
        },
        calendarEventMetadata = {
          ["$ref"] = "ChatConserverDynamitePlaceholderMetadataCalendarEventMetadata",
        },
        deleteMetadata = {
          ["$ref"] = "ChatConserverDynamitePlaceholderMetadataDeleteMetadata",
        },
        editMetadata = {
          ["$ref"] = "ChatConserverDynamitePlaceholderMetadataEditMetadata",
        },
        spaceUrl = {
          description = "The space URL embedded in the localized string.",
          type = "string",
        },
        tasksMetadata = {
          ["$ref"] = "ChatConserverDynamitePlaceholderMetadataTasksMetadata",
        },
        videoCallMetadata = {
          ["$ref"] = "ChatConserverDynamitePlaceholderMetadataVideoCallMetadata",
        },
      },
      type = "object",
    },
    ChatConserverDynamitePlaceholderMetadataAttachmentMetadata = {
      description = "An attachment uploaded in Dynamite and its filename.",
      id = "ChatConserverDynamitePlaceholderMetadataAttachmentMetadata",
      properties = {
        filename = {
          type = "string",
        },
      },
      type = "object",
    },
    ChatConserverDynamitePlaceholderMetadataBotMessageMetadata = {
      description = "A bot sent a message in Dynamite.",
      id = "ChatConserverDynamitePlaceholderMetadataBotMessageMetadata",
      properties = {},
      type = "object",
    },
    ChatConserverDynamitePlaceholderMetadataCalendarEventMetadata = {
      description = "A Calendar event message in Dynamite.",
      id = "ChatConserverDynamitePlaceholderMetadataCalendarEventMetadata",
      properties = {},
      type = "object",
    },
    ChatConserverDynamitePlaceholderMetadataDeleteMetadata = {
      description = "A message was deleted in Dynamite.",
      id = "ChatConserverDynamitePlaceholderMetadataDeleteMetadata",
      properties = {},
      type = "object",
    },
    ChatConserverDynamitePlaceholderMetadataEditMetadata = {
      description = "An edit was made in Dynamite.",
      id = "ChatConserverDynamitePlaceholderMetadataEditMetadata",
      properties = {},
      type = "object",
    },
    ChatConserverDynamitePlaceholderMetadataTasksMetadata = {
      description = "A Tasks message in Dynamite.",
      id = "ChatConserverDynamitePlaceholderMetadataTasksMetadata",
      properties = {},
      type = "object",
    },
    ChatConserverDynamitePlaceholderMetadataVideoCallMetadata = {
      description = "A Meet initiated in Dynamite and its URL.",
      id = "ChatConserverDynamitePlaceholderMetadataVideoCallMetadata",
      properties = {
        meetingUrl = {
          type = "string",
        },
      },
      type = "object",
    },
    ChatConserverMessageContent = {
      description = "The content of a chat message, which includes 0 or more segments along with 0 or more embeds, which represent various attachment types (like photos).",
      id = "ChatConserverMessageContent",
      properties = {
        attachment = {
          description = "Items attached to this message, such as photos. This should *NOT* be set by clients. It will be automatically set from media uploaded along with this request and using the information provided in existing_media.",
          items = {
            ["$ref"] = "SocialCommonAttachmentAttachment",
          },
          type = "array",
        },
        segment = {
          description = "The text part of the message content. Segments are concatenated together to yield the full message. A message can have zero or more segments.",
          items = {
            ["$ref"] = "Segment",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ChatContentExtension = {
      description = "NEXT ID: 12",
      id = "ChatContentExtension",
      properties = {
        annotation = {
          description = "Annotations to decorate this event.",
          items = {
            ["$ref"] = "EventAnnotation",
          },
          type = "array",
        },
        dynamitePlaceholderMetadata = {
          ["$ref"] = "ChatConserverDynamitePlaceholderMetadata",
          description = "This metadata informs how the placeholder string will be localized dynamically in Hangouts. See go/localization-of-system-messages. This is only used as part of REGULAR_CHAT_MESSAGE events.",
        },
        eventOtrStatus = {
          description = "Is this event OnTR or OffTR? Since some events can be ON_THE_RECORD and have an expiration_timestamp (for example enterprise retention users) we need to store the otr status.",
          enum = {
            "OFF_THE_RECORD",
            "ON_THE_RECORD",
          },
          enumDescriptions = {
            "The conversation is completely off the record.",
            "The conversation is completely on the record.",
          },
          type = "string",
        },
        groupLinkSharingModificationEvent = {
          ["$ref"] = "GroupLinkSharingModificationEvent",
          description = "Group-link sharing toggle event.",
        },
        hangoutEvent = {
          ["$ref"] = "HangoutEvent",
          description = "Audio/video Hangout event.",
        },
        inviteAcceptedEvent = {
          ["$ref"] = "InviteAcceptedEvent",
          description = "Invite accepted events. Note: this is only used ephemerally to sync to Gmail. No actual cent is stored in Papyrus.",
        },
        membershipChangeEvent = {
          ["$ref"] = "MembershipChangeEvent",
          description = "Join/leave events.",
        },
        otrChatMessageEvent = {
          ["$ref"] = "OtrChatMessageEvent",
          description = "Metadata for off-the-record message.",
        },
        otrModificationEvent = {
          ["$ref"] = "OtrModificationEvent",
        },
        renameEvent = {
          ["$ref"] = "RenameEvent",
        },
      },
      type = "object",
    },
    ChatProto = {
      description = "Represents the invitees or other users associated with a Babel Chat (see http://goto/babel). Corresponds to GroupType CHAT in //social/graph/storage/proto/data.proto.",
      id = "ChatProto",
      properties = {
        chatId = {
          description = "Chat IDs consist of alphanumeric characters and colons. Currently required.",
          type = "string",
        },
        memberType = {
          description = "The type of Chat members to consider, e.g. \"all members\" vs. \"invitee\" These are defined by legacy_relation_id values in social.graph.storage.EdgeTypeEnum.EdgeType enum options in social/graph/storage/proto/id.proto. See chat.pb (defined in production/config/cdd/socialgraph/mixer_config/prod/node_type_config) for all valid edge types associated with chat. Currently required.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    CheckAccessResponse = {
      id = "CheckAccessResponse",
      properties = {
        hasAccess = {
          description = "Returns true if principal has access. Returns false otherwise.",
          type = "boolean",
        },
      },
      type = "object",
    },
    CircleProto = {
      description = "Represents a Google+ Circle. Currently (12/2011), a Circle is identical to the ContactGroup with matching parameters, but Circle must only be used for true Circles and not other Focus groups, and should be preferred over ContactGroup where applicable. Soon it may become more efficient to check membership in a Circle than in a ContactGroup (see http://go/superglue). Support for this principal type is currently (12/2011) incomplete -- e.g., Keystore does not support it yet (see b/5703421).",
      id = "CircleProto",
      properties = {
        circleId = {
          description = "Circle ID is unique only relative to the owner's Gaia ID. Currently required.",
          format = "int64",
          type = "string",
        },
        ownerGaiaId = {
          description = "The owner of the circle. Currently required.",
          format = "int64",
          type = "string",
        },
        requiredConsistencyTimestampUsec = {
          description = "If present, then tests for membership in this circle must use data known to be at least as fresh as the given (FBS-assigned) timestamp. See http://go/fbs-consistent-read-after-important-write Before using this, be sure that any service checking authorization against this circle supports checking consistency timestamps. For example, as of 12/2011, Keystore only supports this for the Moonshine configuration, and in others authorization checks will fail if the timestamp is present.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    ClientContext = {
      description = "Represents the context of the client on behalf of which a HistoryRecord is produced. The ClientContext message can be used to hold context about the service client (e.g. the internal server making fusebox requests) or the user client (e.g. the IP address of the end user).",
      id = "ClientContext",
      properties = {
        clientOperationId = {
          description = "The client operation to which this history record belongs. The notion of a client operation is provided to keep track of client operations which might span multiple transactions in the lower level.",
          type = "string",
        },
        clientType = {
          description = "E.g. \"pinto\", \"imap\", \"bigtop\", \"upload\"",
          type = "string",
        },
        sessionContext = {
          ["$ref"] = "SessionContext",
          description = "Contains information about the session which created this history record. This will be empty if the history record was generated by an internal request.",
        },
        userIp = {
          description = "Textual representation of the user's IP address, if available.",
          type = "string",
        },
      },
      type = "object",
    },
    CloudPrincipalProto = {
      description = "Principal associated with a Cloud Principal representing third party user.",
      id = "CloudPrincipalProto",
      properties = {
        id = {
          description = "Format: \"{identity-pool}:{subject}#\" Details: go/cloud-principal-identifiers",
          type = "string",
        },
      },
      type = "object",
    },
    ClusterInfo = {
      description = "ClusterInfo contains clustering related information for a particular thread that would be sent as part of the conversation view. Today, this information would be used by iOS notification server to identify whether the thread belongs to a cluster. If the thread belongs to a grouped cluster, it would identify whether the cluster is throttled.",
      id = "ClusterInfo",
      properties = {
        clusterId = {
          description = "IDs of the highest priority clusters to which the thread belongs to. If this field is not present, the thread does not belong to any cluster and would be shown in the inbox, unclustered.",
          items = {
            type = "string",
          },
          type = "array",
        },
        throttled = {
          description = "If the thread belongs to a grouped cluster and all of those clusters are throttled, then this field is set to true.",
          type = "boolean",
        },
      },
      type = "object",
    },
    CoActivity = {
      description = "Metadata about a co-activity session.",
      id = "CoActivity",
      properties = {
        activityTitle = {
          description = "The title of the activity in this co-activity session. For example, this might be the title of the video being co-watched, or the name of the round of a game being co-played.",
          type = "string",
        },
        coActivityApp = {
          description = "Identifies the app handling this co-activity.",
          enum = {
            "CO_ACTIVITY_APP_UNSPECIFIED",
            "CO_ACTIVITY_APP_YOU_TUBE_MAIN",
            "CO_ACTIVITY_APP_SPOTIFY",
            "CO_ACTIVITY_APP_UNO",
            "CO_ACTIVITY_APP_HEADSUP",
            "CO_ACTIVITY_APP_KAHOOT",
            "CO_ACTIVITY_APP_GQUEUES",
            "CO_ACTIVITY_APP_YOU_TUBE_MUSIC",
            "CO_ACTIVITY_APP_SAMSUNG_NOTES",
          },
          enumDescriptions = {
            "Should never be used.",
            "Main YouTube app, for watching videos.",
            "Spotify music.",
            "Uno game.",
            "HeadsUp game.",
            "Kahoot! educational software.",
            "GQueues task manager.",
            "YouTube Music",
            "Samsung Notes",
          },
          type = "string",
        },
      },
      type = "object",
    },
    Collaboration = {
      description = "Information about a collaboration session.",
      id = "Collaboration",
      properties = {
        attachmentId = {
          description = "The attachment being collaborated on.",
          type = "string",
        },
        initiator = {
          ["$ref"] = "UserDisplayInfo",
          description = "Display info of the user who initiated the collaboration session.",
        },
        uri = {
          description = "The uri of the artifact being collaborated on.",
          type = "string",
        },
      },
      type = "object",
    },
    Color = {
      description = "Represents a color in the RGBA color space. This representation is designed for simplicity of conversion to/from color representations in various languages over compactness. For example, the fields of this representation can be trivially provided to the constructor of `java.awt.Color` in Java; it can also be trivially provided to UIColor's `+colorWithRed:green:blue:alpha` method in iOS; and, with just a little work, it can be easily formatted into a CSS `rgba()` string in JavaScript. This reference page doesn't carry information about the absolute color space that should be used to interpret the RGB value (e.g. sRGB, Adobe RGB, DCI-P3, BT.2020, etc.). By default, applications should assume the sRGB color space. When color equality needs to be decided, implementations, unless documented otherwise, treat two colors as equal if all their red, green, blue, and alpha values each differ by at most 1e-5. Example (Java): import com.google.type.Color; // ... public static java.awt.Color fromProto(Color protocolor) { float alpha = protocolor.hasAlpha() ? protocolor.getAlpha().getValue() : 1.0; return new java.awt.Color( protocolor.getRed(), protocolor.getGreen(), protocolor.getBlue(), alpha); } public static Color toProto(java.awt.Color color) { float red = (float) color.getRed(); float green = (float) color.getGreen(); float blue = (float) color.getBlue(); float denominator = 255.0; Color.Builder resultBuilder = Color .newBuilder() .setRed(red / denominator) .setGreen(green / denominator) .setBlue(blue / denominator); int alpha = color.getAlpha(); if (alpha != 255) { result.setAlpha( FloatValue .newBuilder() .setValue(((float) alpha) / denominator) .build()); } return resultBuilder.build(); } // ... Example (iOS / Obj-C): // ... static UIColor* fromProto(Color* protocolor) { float red = [protocolor red]; float green = [protocolor green]; float blue = [protocolor blue]; FloatValue* alpha_wrapper = [protocolor alpha]; float alpha = 1.0; if (alpha_wrapper != nil) { alpha = [alpha_wrapper value]; } return [UIColor colorWithRed:red green:green blue:blue alpha:alpha]; } static Color* toProto(UIColor* color) { CGFloat red, green, blue, alpha; if (![color getRed:&red green:&green blue:&blue alpha:&alpha]) { return nil; } Color* result = [[Color alloc] init]; [result setRed:red]; [result setGreen:green]; [result setBlue:blue]; if (alpha <= 0.9999) { [result setAlpha:floatWrapperWithValue(alpha)]; } [result autorelease]; return result; } // ... Example (JavaScript): // ... var protoToCssColor = function(rgb_color) { var redFrac = rgb_color.red || 0.0; var greenFrac = rgb_color.green || 0.0; var blueFrac = rgb_color.blue || 0.0; var red = Math.floor(redFrac * 255); var green = Math.floor(greenFrac * 255); var blue = Math.floor(blueFrac * 255); if (!('alpha' in rgb_color)) { return rgbToCssColor(red, green, blue); } var alphaFrac = rgb_color.alpha.value || 0.0; var rgbParams = [red, green, blue].join(','); return ['rgba(', rgbParams, ',', alphaFrac, ')'].join(''); }; var rgbToCssColor = function(red, green, blue) { var rgbNumber = new Number((red << 16) | (green << 8) | blue); var hexString = rgbNumber.toString(16); var missingZeros = 6 - hexString.length; var resultBuilder = ['#']; for (var i = 0; i < missingZeros; i++) { resultBuilder.push('0'); } resultBuilder.push(hexString); return resultBuilder.join(''); }; // ...",
      id = "Color",
      properties = {
        alpha = {
          description = "The fraction of this color that should be applied to the pixel. That is, the final pixel color is defined by the equation: `pixel color = alpha * (this color) + (1.0 - alpha) * (background color)` This means that a value of 1.0 corresponds to a solid color, whereas a value of 0.0 corresponds to a completely transparent color. This uses a wrapper message rather than a simple float scalar so that it is possible to distinguish between a default value and the value being unset. If omitted, this color object is rendered as a solid color (as if the alpha value had been explicitly given a value of 1.0).",
          format = "float",
          type = "number",
        },
        blue = {
          description = "The amount of blue in the color as a value in the interval [0, 1].",
          format = "float",
          type = "number",
        },
        green = {
          description = "The amount of green in the color as a value in the interval [0, 1].",
          format = "float",
          type = "number",
        },
        red = {
          description = "The amount of red in the color as a value in the interval [0, 1].",
          format = "float",
          type = "number",
        },
      },
      type = "object",
    },
    CommunalLabelTag = {
      description = "An individual instance (or \"tag\") of a label configured as a communal type that's associated with a message.",
      id = "CommunalLabelTag",
      properties = {
        creatorUserId = {
          description = "Gaia ID of the user who added the tag, if any. Not present for any tags automatically created by server-side processing.",
          format = "int64",
          type = "string",
        },
        labelId = {
          description = "A string ID representing the label. Possible ID values are documented at go/chat-labels-howto:ids. Example: \"^*t_p\" for \"Pinned\".",
          type = "string",
        },
      },
      type = "object",
    },
    CompositeFilter = {
      id = "CompositeFilter",
      properties = {
        logicOperator = {
          description = "The logic operator of the sub filter.",
          enum = {
            "AND",
            "OR",
            "NOT",
          },
          enumDescriptions = {
            "Logical operators, which can only be applied to sub filters.",
            "",
            "NOT can only be applied on a single sub filter.",
          },
          type = "string",
        },
        subFilters = {
          description = "Sub filters.",
          items = {
            ["$ref"] = "Filter",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ConsentedAppUnfurlMetadata = {
      description = "Annotation metadata app unfurl consent.",
      id = "ConsentedAppUnfurlMetadata",
      properties = {
        clientSpecifiedAppId = {
          ["$ref"] = "UserId",
          description = "Client specified AppId, which will not be sanitized and is untrusted.",
        },
      },
      type = "object",
    },
    ContactGroupProto = {
      description = "A group of contacts for a given user, as described in http://cs/p#google3/focus/backend/proto/backend.proto Historically (and in still-existing ACLs), this was used to represent Google+ circles as well as contact groups, but this use is now deprecated. New code should use the CIRCLE principal type to represent Google+ circles.",
      id = "ContactGroupProto",
      properties = {
        groupId = {
          description = "Group ID is unique only relative to the owner's Gaia ID.",
          format = "int64",
          type = "string",
        },
        ownerGaiaId = {
          format = "int64",
          type = "string",
        },
        requiredConsistencyTimestampUsec = {
          description = "If present, then tests for membership in this ContactGroup must use data known to be at least as fresh as the given (FBS-assigned) timestamp. See http://go/fbs-consistent-read-after-important-write Before using this, be sure that any service checking authorization against this group supports checking consistency timestamps. For example, as of 12/2011, Keystore only supports this for the Moonshine configuration, and in others authorization checks will fail if the timestamp is present.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    ContentReport = {
      id = "ContentReport",
      properties = {
        reportCreateTimestamp = {
          description = "The time at which the report is generated. Always populated when it is in a response.",
          format = "google-datetime",
          type = "string",
        },
        reportJustification = {
          ["$ref"] = "ContentReportJustification",
          description = "Additional user-provided justification on the report. Optional.",
        },
        reportType = {
          ["$ref"] = "AppsDynamiteSharedContentReportType",
          description = "Type of the report. Always populated when it is in a response.",
        },
        reporterUserId = {
          ["$ref"] = "UserId",
          description = "User ID of the reporter. Always populated when it is in a response.",
        },
        revisionCreateTimestamp = {
          description = "Create timestamp of the revisions of the message when it's reported. Always populated when it is in a response.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    ContentReportJustification = {
      id = "ContentReportJustification",
      properties = {
        userJustification = {
          description = "Optional. User-generated free-text justification for the content report.",
          type = "string",
        },
      },
      type = "object",
    },
    ContentReportSummary = {
      description = "Summarized info of content reports. Usually less expensive to fetch than to fetch all detailed reports. Set only when the request asks for it.",
      id = "ContentReportSummary",
      properties = {
        numberReports = {
          description = "Total number of reports attached to this (revision of) message.",
          format = "int32",
          type = "integer",
        },
        numberReportsAllRevisions = {
          description = "Totoal number of reports attached to all revisions of this message (i.e. since creation). Set only when the request asks for it.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    ContextAttribute = {
      description = "A named attribute associated with an item which can be used for influencing the ranking of the item based on the context in the request.",
      id = "ContextAttribute",
      properties = {
        name = {
          description = "The name of the attribute. It should not be empty. The maximum length is 32 characters. The name must start with a letter and can only contain letters (A-Z, a-z) or numbers (0-9). The name will be normalized (lower-cased) before being matched.",
          type = "string",
        },
        values = {
          description = "Text values of the attribute. The maximum number of elements is 10. The maximum length of an element in the array is 32 characters. The value will be normalized (lower-cased) before being matched.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ContextualAddOnMarkup = {
      description = "The markup for developers to specify the contents of a contextual AddOn. A contextual AddOn is triggered in context of an email. For that email, there can be N items that are associated with the email (e.g. contacts, sales lead, meeting information). Each item is represented as a \"card\". A card has two views, collapsed and detailed. If there are more than 1 card, the cards are show as a list of collapsed views. The end user can expand into the detailed view for each of those cards. In the detailed view, developers have the freedom to use a variety of \"widgets\" to construct it. The model here is to restrict (make consistent for end users) the navigation of the N cards but providing developers the freedom to build the detailed view that can best represent their use case/content. Go http://go/aoig-widgets1 to see the mocks. Post v1, we plan to support new AddOn use cases that will require different and separate 'templates'. For example, a compose triggered AddOn which will support a new set of use cases with different user interaction patterns. As a result, we will likely need a very different template than this one.",
      id = "ContextualAddOnMarkup",
      properties = {
        cards = {
          description = "A card must contain a header and at least 1 section.",
          items = {
            ["$ref"] = "Card",
          },
          type = "array",
        },
        toolbar = {
          ["$ref"] = "Toolbar",
          description = "Deprecated.",
        },
      },
      type = "object",
    },
    CseInfo = {
      description = "Information needed for Client-side Encryption.",
      id = "CseInfo",
      properties = {
        cseDomain = {
          description = "CSE domain name claimed by the meeting owner's company. This field is expected to be used for display purposes only, i.e., \"Extra encryption added by $cse_domain\". It can differ from the `cse_domain` as defined elsewhere on the User, in the case of cross-domain meetings.",
          type = "string",
        },
        wrappedKey = {
          description = "The wrapped CSE key used by this conference.",
          format = "byte",
          type = "string",
        },
      },
      type = "object",
    },
    CustomEmojiMetadata = {
      id = "CustomEmojiMetadata",
      properties = {
        customEmoji = {
          ["$ref"] = "AppsDynamiteSharedCustomEmoji",
        },
      },
      type = "object",
    },
    CustomFunctionReturnValueMarkup = {
      description = "The result of a user running a custom function.",
      id = "CustomFunctionReturnValueMarkup",
      properties = {
        errorMessage = {
          description = "The error message to show to the user if something went wrong.",
          type = "string",
        },
        value = {
          description = "The value that resulted from running the custom function.",
          type = "any",
        },
      },
      type = "object",
    },
    CustomerId = {
      description = "Represents a GSuite customer ID. Obfuscated with CustomerIdObfuscator.",
      id = "CustomerId",
      properties = {
        customerId = {
          type = "string",
        },
      },
      type = "object",
    },
    CustomerIndexStats = {
      description = "Aggregation of items by status code as of the specified date.",
      id = "CustomerIndexStats",
      properties = {
        date = {
          ["$ref"] = "Date",
          description = "The date for which statistics were calculated.",
        },
        itemCountByStatus = {
          description = "Number of items aggregrated by status code.",
          items = {
            ["$ref"] = "ItemCountByStatus",
          },
          type = "array",
        },
      },
      type = "object",
    },
    CustomerQueryStats = {
      id = "CustomerQueryStats",
      properties = {
        date = {
          ["$ref"] = "Date",
          description = "The date for which query stats were calculated. Stats calculated on the next day close to midnight are returned.",
        },
        queryCountByStatus = {
          items = {
            ["$ref"] = "QueryCountByStatus",
          },
          type = "array",
        },
      },
      type = "object",
    },
    CustomerSearchApplicationStats = {
      description = "Search application stats for a customer for the given date.",
      id = "CustomerSearchApplicationStats",
      properties = {
        count = {
          description = "The count of search applications for the date.",
          format = "int64",
          type = "string",
        },
        date = {
          ["$ref"] = "Date",
          description = "The date for which search application stats were calculated.",
        },
      },
      type = "object",
    },
    CustomerSessionStats = {
      id = "CustomerSessionStats",
      properties = {
        date = {
          ["$ref"] = "Date",
          description = "The date for which session stats were calculated. Stats are calculated on the following day, close to midnight PST, and then returned.",
        },
        searchSessionsCount = {
          description = "The count of search sessions on the day",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    CustomerSettings = {
      description = "Represents settings at a customer level.",
      id = "CustomerSettings",
      properties = {
        auditLoggingSettings = {
          ["$ref"] = "AuditLoggingSettings",
          description = "Audit Logging settings for the customer. If update_mask is empty then this field will be updated based on UpdateCustomerSettings request.",
        },
        vpcSettings = {
          ["$ref"] = "VPCSettings",
          description = "VPC SC settings for the customer. If update_mask is empty then this field will be updated based on UpdateCustomerSettings request.",
        },
      },
      type = "object",
    },
    CustomerUserStats = {
      id = "CustomerUserStats",
      properties = {
        date = {
          ["$ref"] = "Date",
          description = "The date for which session stats were calculated. Stats calculated on the next day close to midnight are returned.",
        },
        oneDayActiveUsersCount = {
          description = "The count of unique active users in the past one day",
          format = "int64",
          type = "string",
        },
        sevenDaysActiveUsersCount = {
          description = "The count of unique active users in the past seven days",
          format = "int64",
          type = "string",
        },
        thirtyDaysActiveUsersCount = {
          description = "The count of unique active users in the past thirty days",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    DataLossPreventionMetadata = {
      description = "Annotation metadata for Data Loss Prevention that pertains to DLP violation on message send or edit events. It is used for client -> BE communication and other downstream process in BE (e.g. storage and audit logging), and it should never be returned to the client.",
      id = "DataLossPreventionMetadata",
      properties = {
        dlpScanSummary = {
          ["$ref"] = "DlpScanSummary",
          description = "The DLP scan summary that should only be set after the message is scanned in the Chat backend.",
        },
        warnAcknowledged = {
          description = "Flag set by client on message resend to bypass WARN violation.",
          type = "boolean",
        },
      },
      type = "object",
    },
    DataSource = {
      description = "Datasource is a logical namespace for items to be indexed. All items must belong to a datasource. This is the prerequisite before items can be indexed into Cloud Search.",
      id = "DataSource",
      properties = {
        disableModifications = {
          description = "If true, sets the datasource to read-only mode. In read-only mode, the Indexing API rejects any requests to index or delete items in this source. Enabling read-only mode does not stop the processing of previously accepted data.",
          type = "boolean",
        },
        disableServing = {
          description = "Disable serving any search or assist results.",
          type = "boolean",
        },
        displayName = {
          description = "Required. Display name of the datasource The maximum length is 300 characters.",
          type = "string",
        },
        indexingServiceAccounts = {
          description = "List of service accounts that have indexing access.",
          items = {
            type = "string",
          },
          type = "array",
        },
        itemsVisibility = {
          description = "This field restricts visibility to items at the datasource level. Items within the datasource are restricted to the union of users and groups included in this field. Note that, this does not ensure access to a specific item, as users need to have ACL permissions on the contained items. This ensures a high level access on the entire datasource, and that the individual items are not shared outside this visibility.",
          items = {
            ["$ref"] = "GSuitePrincipal",
          },
          type = "array",
        },
        name = {
          description = "The name of the datasource resource. Format: datasources/{source_id}. The name is ignored when creating a datasource.",
          type = "string",
        },
        operationIds = {
          description = "IDs of the Long Running Operations (LROs) currently running for this schema.",
          items = {
            type = "string",
          },
          type = "array",
        },
        returnThumbnailUrls = {
          description = "Can a user request to get thumbnail URI for Items indexed in this data source.",
          type = "boolean",
        },
        shortName = {
          description = "A short name or alias for the source. This value will be used to match the 'source' operator. For example, if the short name is *<value>* then queries like *source:<value>* will only return results for this source. The value must be unique across all datasources. The value must only contain alphanumeric characters (a-zA-Z0-9). The value cannot start with 'google' and cannot be one of the following: mail, gmail, docs, drive, groups, sites, calendar, hangouts, gplus, keep, people, teams. Its maximum length is 32 characters.",
          type = "string",
        },
      },
      type = "object",
    },
    DataSourceIndexStats = {
      description = "Aggregation of items by status code as of the specified date.",
      id = "DataSourceIndexStats",
      properties = {
        date = {
          ["$ref"] = "Date",
          description = "The date for which index stats were calculated. If the date of request is not the current date then stats calculated on the next day are returned. Stats are calculated close to mid night in this case. If date of request is current date, then real time stats are returned.",
        },
        itemCountByStatus = {
          description = "Number of items aggregrated by status code.",
          items = {
            ["$ref"] = "ItemCountByStatus",
          },
          type = "array",
        },
      },
      type = "object",
    },
    DataSourceRestriction = {
      description = "Restriction on Datasource.",
      id = "DataSourceRestriction",
      properties = {
        filterOptions = {
          description = "Filter options restricting the results. If multiple filters are present, they are grouped by object type before joining. Filters with the same object type are joined conjunctively, then the resulting expressions are joined disjunctively. The maximum number of elements is 20. NOTE: Suggest API supports only few filters at the moment: \"objecttype\", \"type\" and \"mimetype\". For now, schema specific filters cannot be used to filter suggestions.",
          items = {
            ["$ref"] = "FilterOptions",
          },
          type = "array",
        },
        source = {
          ["$ref"] = "Source",
          description = "The source of restriction.",
        },
      },
      type = "object",
    },
    Date = {
      description = "Represents a whole calendar date, for example a date of birth. The time of day and time zone are either specified elsewhere or are not significant. The date is relative to the [Proleptic Gregorian Calendar](https://en.wikipedia.org/wiki/Proleptic_Gregorian_calendar). The date must be a valid calendar date between the year 1 and 9999.",
      id = "Date",
      properties = {
        day = {
          description = "Day of month. Must be from 1 to 31 and valid for the year and month.",
          format = "int32",
          type = "integer",
        },
        month = {
          description = "Month of date. Must be from 1 to 12.",
          format = "int32",
          type = "integer",
        },
        year = {
          description = "Year of date. Must be from 1 to 9999.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    DateOperatorOptions = {
      description = "Optional. Provides a search operator for date properties. Search operators let users restrict the query to specific fields relevant to the type of item being searched.",
      id = "DateOperatorOptions",
      properties = {
        greaterThanOperatorName = {
          description = "Indicates the operator name required in the query in order to isolate the date property using the greater-than operator. For example, if greaterThanOperatorName is *closedafter* and the property's name is *closeDate*, then queries like *closedafter:<value>* show results only where the value of the property named *closeDate* is later than *<value>*. The operator name can only contain lowercase letters (a-z). The maximum length is 32 characters.",
          type = "string",
        },
        lessThanOperatorName = {
          description = "Indicates the operator name required in the query in order to isolate the date property using the less-than operator. For example, if lessThanOperatorName is *closedbefore* and the property's name is *closeDate*, then queries like *closedbefore:<value>* show results only where the value of the property named *closeDate* is earlier than *<value>*. The operator name can only contain lowercase letters (a-z). The maximum length is 32 characters.",
          type = "string",
        },
        operatorName = {
          description = "Indicates the actual string required in the query in order to isolate the date property. For example, suppose an issue tracking schema object has a property named *closeDate* that specifies an operator with an operatorName of *closedon*. For searches on that data, queries like *closedon:<value>* show results only where the value of the *closeDate* property matches *<value>*. By contrast, a search that uses the same *<value>* without an operator returns all items where *<value>* matches the value of any String properties or text within the content field for the indexed datasource. The operator name can only contain lowercase letters (a-z). The maximum length is 32 characters.",
          type = "string",
        },
      },
      type = "object",
    },
    DatePropertyOptions = {
      description = "The options for date properties.",
      id = "DatePropertyOptions",
      properties = {
        operatorOptions = {
          ["$ref"] = "DateOperatorOptions",
          description = "If set, describes how the date should be used as a search operator.",
        },
      },
      type = "object",
    },
    DateTimePicker = {
      id = "DateTimePicker",
      properties = {
        label = {
          description = "The label for the field, which is displayed to the user.",
          type = "string",
        },
        name = {
          description = "The name of the text field which is used in FormInput, and uniquely identifies this input.",
          type = "string",
        },
        onChange = {
          ["$ref"] = "FormAction",
          description = "Triggered when the user clicks on the Save, or Clear button from the date / time picker dialog. Will only be triggered if the value changed as a result of the Save / Clear operation.",
        },
        timezoneOffsetDate = {
          description = "The number representing the time-zone offset from UTC, in minutes. If set, the value_ms_epoch will be displayed in the specified time zone. If not set, it will use the user's timezone setting in client side.",
          format = "int32",
          type = "integer",
        },
        type = {
          description = "The type of the DateTimePicker.",
          enum = {
            "UNSPECIFIED_TYPE",
            "DATE_AND_TIME",
            "DATE_ONLY",
            "TIME_ONLY",
          },
          enumDescriptions = {
            "",
            "",
            "",
            "",
          },
          type = "string",
        },
        valueMsEpoch = {
          description = "The value to display which can be the default value before user input or previous user input. It is represented in milliseconds (Epoch time). - For DATE_AND_TIME type, the full epoch value is used. - For DATE_ONLY type, only date of the epoch time is used. - For TIME_ONLY type, only time of the epoch time is used. For example, you can set epoch time to 3 * 60 * 60 * 1000 to represent 3am.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    DateValues = {
      description = "List of date values.",
      id = "DateValues",
      properties = {
        values = {
          items = {
            ["$ref"] = "Date",
          },
          type = "array",
        },
      },
      type = "object",
    },
    DebugOptions = {
      description = "Shared request debug options for all cloudsearch RPC methods.",
      id = "DebugOptions",
      properties = {
        enableDebugging = {
          description = "If you are asked by Google to help with debugging, set this field. Otherwise, ignore this field.",
          type = "boolean",
        },
      },
      type = "object",
    },
    DeepLinkData = {
      description = "Deep-linking data is used to construct a deep-link URI for an activity or frame's embed, such that on click, the user is taken to the right place in a mobile app. If the app is not installed, the user is taken to the app store. If not on mobile, an analogous web uri is used.",
      id = "DeepLinkData",
      properties = {
        appId = {
          description = "Application ID (or project ID) from Google API Console.",
          format = "int64",
          type = "string",
        },
        client = {
          description = "The data for a Google API Console client is entered by a developer during client registration and is stored in PackagingService.",
          items = {
            ["$ref"] = "PackagingServiceClient",
          },
          type = "array",
        },
        deepLinkId = {
          description = "The ID for non-URL content. Embeds may either have no analogous web presence or prefer a native mobile experience if supported. In the case of no web presence, instead of setting the \"url\" field of an embed, such developers will set this field and other content fields, e.g. thumbnail, title, description. If set, this field is used to construct the deep-link URI. Note that the native experience is preferred over the web link and the web link is used as a fallback.",
          type = "string",
        },
        url = {
          description = "Analogous web presence. Used as desktop fallback or when no native link data is present.",
          type = "string",
        },
      },
      type = "object",
    },
    DeleteMetadata = {
      description = "A message delete in Dynamite inserts a Babel-only item containing this field. This is only inserted for messages before the source-of-truth flip. See go/hsc-message-deletions for more details.",
      id = "DeleteMetadata",
      properties = {},
      type = "object",
    },
    DeleteQueueItemsRequest = {
      id = "DeleteQueueItemsRequest",
      properties = {
        connectorName = {
          description = "The name of connector making this call. Format: datasources/{source_id}/connectors/{ID}",
          type = "string",
        },
        debugOptions = {
          ["$ref"] = "DebugOptions",
          description = "Common debug options.",
        },
        queue = {
          description = "The name of a queue to delete items from.",
          type = "string",
        },
      },
      type = "object",
    },
    DeliveryMedium = {
      id = "DeliveryMedium",
      properties = {
        mediumType = {
          description = "Describes the medium the cent was sent/received. For example, if I receive an SMS via GV, the medium_type will be GV.",
          enum = {
            "UNKNOWN_MEDIUM",
            "BABEL_MEDIUM",
            "GOOGLE_VOICE_MEDIUM",
            "LOCAL_SMS_MEDIUM",
          },
          enumDescriptions = {
            "",
            "",
            "",
            "",
          },
          type = "string",
        },
        selfPhone = {
          ["$ref"] = "VoicePhoneNumber",
          description = "In the case of multiple GV/native numbers, this defines the exact number to send from. It is used to differentiate mediums that have the same type, but different addresses (e.g. two android phones).",
        },
      },
      type = "object",
    },
    DisplayedProperty = {
      description = "A reference to a top-level property within the object that should be displayed in search results. The values of the chosen properties is displayed in the search results along with the display label for that property if one is specified. If a display label is not specified, only the values is shown.",
      id = "DisplayedProperty",
      properties = {
        propertyName = {
          description = "The name of the top-level property as defined in a property definition for the object. If the name is not a defined property in the schema, an error is given when attempting to update the schema.",
          type = "string",
        },
      },
      type = "object",
    },
    Divider = {
      id = "Divider",
      properties = {},
      type = "object",
    },
    DlpScanSummary = {
      description = "A summary of a DLP scan event. This is a summary and should contain the minimum amount of data required to identify and process DLP scans. It is written to Starcast and encoded & returned to the client on attachment upload.",
      id = "DlpScanSummary",
      properties = {
        scanId = {
          description = "The scan ID of the corresponding {@link DlpViolationScanRecord} in the {@link EphemeralDlpScans} Spanner table. This can be used to fetch additional details about the scan, e.g. for audit logging.",
          type = "string",
        },
        scanNotApplicableForContext = {
          description = "Indicates that was no attempt to scan a message or attachment because it was not applicable in the given context (e.g. atomic mutuate). If this is true, scan_outcome should not be set. This flag is used to identify messages that DLP did not attempt to scan for monitoring scan coverage. Contents that DLP attempted to scan but skipped can be identified by DlpScanOutcome.SCAN_SKIPPED_* reasons.",
          type = "boolean",
        },
        scanOutcome = {
          description = "The outcome of a DLP Scan. If this is set, scan_not_applicable_for_context should not be true.",
          enum = {
            "SCAN_UNKNOWN_OUTCOME",
            "SCAN_SUCCEEDED_NO_VIOLATION",
            "SCAN_SUCCEEDED_BLOCK",
            "SCAN_SUCCEEDED_WARN",
            "SCAN_SUCCEEDED_AUDIT_ONLY",
            "SCAN_FAILURE_EXCEPTION",
            "SCAN_FAILURE_RULE_FETCH_FAILED",
            "SCAN_FAILURE_TIMEOUT",
            "SCAN_FAILURE_ALL_RULES_FAILED",
            "SCAN_FAILURE_ILLEGAL_STATE_FOR_ATTACHMENTS",
            "SCAN_SKIPPED_EXPERIMENT_DISABLED",
            "SCAN_SKIPPED_CONSUMER",
            "SCAN_SKIPPED_NON_HUMAN_USER",
            "SCAN_SKIPPED_NO_MESSAGE",
            "SCAN_SKIPPED_USER_ACKNOWLEDGED_WARNING",
            "SCAN_SKIPPED_MESSAGE_FROM_UNSUPPORTED_ORIGIN",
            "SCAN_RULE_EVALUATION_SKIPPED_NO_RULES_FOUND",
            "SCAN_RULE_EVALUATION_SKIPPED_NO_APPLICABLE_RULES_FOR_ACTION_PARAMS",
            "SCAN_RULE_EVALUATION_SKIPPED_NO_APPLICABLE_RULES_FOR_TRIGGER",
            "SCAN_RULE_EVALUATION_SKIPPED_CHANGELING_PERMANENT_ERROR",
            "SCAN_RULE_EVALUATION_SKIPPED_CHANGELING_EMPTY_RESPONSE",
            "SCAN_RULE_EVALUATION_SKIPPED_UNSUPPORTED_FILE_TYPE",
            "SCAN_SUCCEEDED_WITH_FAILURES_NO_VIOLATION",
            "SCAN_SUCCEEDED_WITH_FAILURES_BLOCK",
            "SCAN_SUCCEEDED_WITH_FAILURES_WARN",
            "SCAN_SUCCEEDED_WITH_FAILURES_AUDIT_ONLY",
          },
          enumDescriptions = {
            "",
            "This means no violation is detected on the given message/attachment.",
            "Violation is detected. The message/attachment will be blocked (or deleted if this happens in failure recovery), the user will be warned, and the violation will be logged to BIP.",
            "Violation is detected. The user will be warned, and the violation will be logged to BIP.",
            "Violation is detected and will be logged to BIP (no user-facing action performed).",
            "Rule fetch and evaluation were attempted but an exception occurred.",
            "Rule fetch was attempted but failed, so rule evaluation could not be performed.",
            "Rule fetch and evaluation were attempted but the scanning timed out.",
            "Rule fetch completed and evaluation were attempted, but all of the rules failed to be evaluated.",
            "An IllegalStateException is thrown when executing DLP on attachments. This could happen if the space row is missing.",
            "Rule fetch and evaluation is skipped because DLP is not enabled for the user.",
            "Rule fetch and evaluation are skipped because the user sending message is consumer.",
            "Rule fetch and evaluation are skipped because the user sending message is a non-human user (i.e. a bot).",
            "Rule fetch and evaluation are skipped because there is no message to scan. Deprecated: this should not happen since there must be message or attachment for DLP scan.",
            "Rule fetch and evaluation are skipped because the user has acknowledged the warning on the message that triggered the Warn violation and sent the message anyway.",
            "Scanning was skipped because the message originated from Interop or Babel.",
            "Rule fetch happened, but rule evaluation is skipped because no rules were found.",
            "Rule fetch happened, but rule evaluation is skipped because none of the rules are applicable to the given action params.",
            "Rule fetch happened, but rule evaluation is skipped because none of the rules are applicable to the given trigger.",
            "Rule fetch happened, but rule evaluation is skipped because Changeling returned permanent failure while converting the attachment to text.",
            "Rule fetch happened, but rule evaluation is skipped because Changeling returned an empty response while converting the attachment to text.",
            "Rule fetch happened, but rule evaluation is skipped because file type is unsupported.",
            "Rules were fetched but some evaluations failed. No violation was found in the rules that were successfully evaluated.",
            "Rules were fetched but some evaluations failed. A blocking violation was found in the rules that were successfully evaluated. The message/attachment will be blocked, the user will be notified, and the violation will be logged to BIP. A blocking violation takes precedence over all other violation types.",
            "Rules were fetched but some evaluations failed. A warn violation was found in the rules that were successfully evaluated. The user will be warned, and the violation will be logged to BIP.",
            "Rules were fetched but some evaluations failed. An audit-only violation was found in the rules that were successfully evaluated. The violation will be logged to BIP (no user-facing action performed).",
          },
          type = "string",
        },
      },
      type = "object",
    },
    DmId = {
      id = "DmId",
      properties = {
        dmId = {
          description = "Unique server assigned Id, per Direct Message Space.",
          type = "string",
        },
      },
      type = "object",
    },
    DocumentInfo = {
      description = "Information on a document attached to an active conference.",
      id = "DocumentInfo",
      properties = {
        whiteboardInfo = {
          ["$ref"] = "WhiteboardInfo",
          description = "A whiteboard document.",
        },
      },
      type = "object",
    },
    DoubleOperatorOptions = {
      description = "Used to provide a search operator for double properties. This is optional. Search operators let users restrict the query to specific fields relevant to the type of item being searched.",
      id = "DoubleOperatorOptions",
      properties = {
        operatorName = {
          description = "Indicates the operator name required in the query in order to use the double property in sorting or as a facet. The operator name can only contain lowercase letters (a-z). The maximum length is 32 characters.",
          type = "string",
        },
      },
      type = "object",
    },
    DoublePropertyOptions = {
      description = "The options for double properties.",
      id = "DoublePropertyOptions",
      properties = {
        operatorOptions = {
          ["$ref"] = "DoubleOperatorOptions",
          description = "If set, describes how the double should be used as a search operator.",
        },
      },
      type = "object",
    },
    DoubleValues = {
      description = "List of double values.",
      id = "DoubleValues",
      properties = {
        values = {
          items = {
            format = "double",
            type = "number",
          },
          type = "array",
        },
      },
      type = "object",
    },
    DriveClientActionMarkup = {
      id = "DriveClientActionMarkup",
      properties = {
        requestFileScope = {
          ["$ref"] = "RequestFileScope",
        },
      },
      type = "object",
    },
    DriveFollowUpRestrict = {
      description = "Drive follow-up search restricts (e.g. \"followup:suggestions\").",
      id = "DriveFollowUpRestrict",
      properties = {
        type = {
          enum = {
            "UNSPECIFIED",
            "FOLLOWUP_SUGGESTIONS",
            "FOLLOWUP_ACTION_ITEMS",
          },
          enumDescriptions = {
            "",
            "",
            "",
          },
          type = "string",
        },
      },
      type = "object",
    },
    DriveLocationRestrict = {
      description = "Drive location search restricts (e.g. \"is:starred\").",
      id = "DriveLocationRestrict",
      properties = {
        type = {
          enum = {
            "UNSPECIFIED",
            "TRASHED",
            "STARRED",
          },
          enumDescriptions = {
            "",
            "",
            "",
          },
          type = "string",
        },
      },
      type = "object",
    },
    DriveMetadata = {
      description = "Annotation metadata for Drive artifacts.",
      id = "DriveMetadata",
      properties = {
        aclFixRequest = {
          ["$ref"] = "AclFixRequest",
        },
        aclFixStatus = {
          ["$ref"] = "AclFixStatus",
        },
        canEdit = {
          description = "Can the current user edit this resource",
          type = "boolean",
        },
        canShare = {
          description = "Can the current user share this resource",
          type = "boolean",
        },
        canView = {
          description = "Can the current user view this resource",
          type = "boolean",
        },
        driveAction = {
          description = "DriveAction for organizing this file in Drive. If the user does not have access to the Drive file, the value will be DriveAction.DRIVE_ACTION_UNSPECIFIED. This field is only set when part of a FileResult in a ListFilesResponse.",
          enum = {
            "DRIVE_ACTION_UNSPECIFIED",
            "ADD_TO_DRIVE",
            "ORGANIZE",
            "ADD_SHORTCUT",
            "ADD_ANOTHER_SHORTCUT",
          },
          enumDescriptions = {
            "No organize action should be shown.",
            "Show \"Add to Drive\" button, for adding file that doesn't exist in Drive to Drive. Note that deleted Drive files that still exist (i.e. in your Trash) will still be ORGANIZE (this is consistent with Gmail Drive attachments).",
            "Show \"Move\" button, for organizing a Drive file the user has permission to move.",
            "Show \"Add shortcut\" button, for adding a shortcut to a Drive file the user does not have permission to move.",
            "Show \"Add another shortcut\" button, for Drive files the user has already created a shortcut to.",
          },
          type = "string",
        },
        driveState = {
          enum = {
            "DRIVE_STATE_UNSPECIFIED",
            "IN_MY_DRIVE",
            "IN_TEAM_DRIVE",
            "SHARED_IN_DRIVE",
            "NOT_IN_DRIVE",
          },
          enumDescriptions = {
            "Default value",
            "File in My Drive",
            "File in Team Drive",
            "File in someone else's Drive, but is shared with the current user",
            "File not in drive",
          },
          type = "string",
        },
        embedUrl = {
          ["$ref"] = "TrustedResourceUrlProto",
          description = "Output only. Trusted Resource URL for drive file embedding.",
          readOnly = true,
        },
        encryptedDocId = {
          description = "Indicates whether the Drive link contains an encrypted doc ID. If true, Dynamite should not attempt to query the doc ID in Drive Service. See go/docid-encryption for details.",
          type = "boolean",
        },
        encryptedResourceKey = {
          description = "This is deprecated and unneeded. TODO (b/182479059): Remove this.",
          type = "string",
        },
        externalMimetype = {
          description = "External mimetype of the Drive Resource (Useful for creating Drive URL) See: http://b/35219462",
          type = "string",
        },
        id = {
          description = "Drive resource ID of the artifact.",
          type = "string",
        },
        isDownloadRestricted = {
          description = "Deprecated. Whether the setting to restrict downloads is enabled for this file. This was previously used to determine whether to hide the download and print buttons in the UI, but is no longer used by clients, because Projector now independently queries Drive to ensure that we have the most up-to-date value.",
          type = "boolean",
        },
        isOwner = {
          description = "If the current user is the Drive file's owner. The field is currently only set for Annotations for the ListFiles action (as opposed to fetching Topics/Messages with Drive annotations).",
          type = "boolean",
        },
        legacyUploadMetadata = {
          ["$ref"] = "LegacyUploadMetadata",
          description = "Only present if this DriveMetadata is converted from an UploadMetadata.",
        },
        mimetype = {
          description = "Mimetype of the Drive Resource",
          type = "string",
        },
        organizationDisplayName = {
          description = "The display name of the organization owning the Drive item.",
          type = "string",
        },
        shortcutAuthorizedItemId = {
          ["$ref"] = "AuthorizedItemId",
          description = "Shortcut ID of this drive file in the shared drive, which is associated with a named room this file was shared in. Shortcuts will not be created for DMs or unnamed rooms. This is populated after the DriveMetadata is migrated to shared drive. go/chat-shared-drive-uploads.",
        },
        shouldNotRender = {
          description = "If this field is set to true, server should still contact external backends to get metadata for search but clients should not render this chip.",
          type = "boolean",
        },
        thumbnailHeight = {
          description = "Thumbnail image of the Drive Resource",
          format = "int32",
          type = "integer",
        },
        thumbnailUrl = {
          description = "Thumbnail image of the Drive Resource",
          type = "string",
        },
        thumbnailWidth = {
          description = "Thumbnail image of the Drive Resource",
          format = "int32",
          type = "integer",
        },
        title = {
          description = "Title of the Drive Resource",
          type = "string",
        },
        urlFragment = {
          description = "Url string fragment that generally indicates the specific location in the linked file. Example: #header=h.123abc456. If the fragment is not present this will not be present and therefore default to an empty string. The \"#\" will not be included.",
          type = "string",
        },
        wrappedResourceKey = {
          ["$ref"] = "WrappedResourceKey",
          description = "This is considered SPII and should not be logged.",
        },
      },
      type = "object",
    },
    DriveMimeTypeRestrict = {
      description = "Drive mime-type search restricts (e.g. \"type:pdf\").",
      id = "DriveMimeTypeRestrict",
      properties = {
        type = {
          enum = {
            "UNSPECIFIED",
            "PDF",
            "DOCUMENT",
            "PRESENTATION",
            "SPREADSHEET",
            "FORM",
            "DRAWING",
            "SCRIPT",
            "MAP",
            "IMAGE",
            "AUDIO",
            "VIDEO",
            "FOLDER",
            "ARCHIVE",
            "SITE",
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
      },
      type = "object",
    },
    DriveTimeSpanRestrict = {
      description = "The time span search restrict (e.g. \"after:2017-09-11 before:2017-09-12\").",
      id = "DriveTimeSpanRestrict",
      properties = {
        type = {
          enum = {
            "UNSPECIFIED",
            "TODAY",
            "YESTERDAY",
            "LAST_7_DAYS",
            "LAST_30_DAYS",
            "LAST_90_DAYS",
          },
          enumDescriptions = {
            "",
            "",
            "",
            "",
            "Not Enabled",
            "Not Enabled",
          },
          type = "string",
        },
      },
      type = "object",
    },
    DynamiteMessagesScoringInfo = {
      description = "This is the proto for holding message level scoring information. This data is used for logging in query-api server and for testing purposes.",
      id = "DynamiteMessagesScoringInfo",
      properties = {
        finalScore = {
          format = "double",
          type = "number",
        },
        freshnessScore = {
          format = "double",
          type = "number",
        },
        joinedSpaceAffinityScore = {
          format = "double",
          type = "number",
        },
        messageAgeInDays = {
          format = "double",
          type = "number",
        },
        topicalityScore = {
          format = "double",
          type = "number",
        },
      },
      type = "object",
    },
    DynamiteSpacesScoringInfo = {
      description = "This is the proto for holding space level scoring information. This data is used for logging in query-api server and for testing purposes.",
      id = "DynamiteSpacesScoringInfo",
      properties = {
        affinityScore = {
          format = "double",
          type = "number",
        },
        commonContactCountAffinityScore = {
          format = "double",
          type = "number",
        },
        contactsIntersectionCount = {
          format = "double",
          type = "number",
        },
        finalScore = {
          format = "double",
          type = "number",
        },
        freshnessScore = {
          format = "double",
          type = "number",
        },
        joinedSpacesAffinityScore = {
          format = "double",
          type = "number",
        },
        lastMessagePostedTimestampSecs = {
          format = "int64",
          type = "string",
        },
        lastReadTimestampSecs = {
          format = "int64",
          type = "string",
        },
        memberMetadataCount = {
          format = "double",
          type = "number",
        },
        messageScore = {
          format = "double",
          type = "number",
        },
        numAucContacts = {
          format = "int64",
          type = "string",
        },
        smallContactListAffinityScore = {
          format = "double",
          type = "number",
        },
        smallUnjoinedSpacesAffinityScore = {
          format = "double",
          type = "number",
        },
        spaceAgeInDays = {
          format = "double",
          type = "number",
        },
        spaceCreationTimestampSecs = {
          format = "int64",
          type = "string",
        },
        topicalityScore = {
          format = "double",
          type = "number",
        },
      },
      type = "object",
    },
    EditMetadata = {
      description = "A message edit in Dynamite inserts a Babel-only item containing this field.",
      id = "EditMetadata",
      properties = {},
      type = "object",
    },
    EditorClientActionMarkup = {
      id = "EditorClientActionMarkup",
      properties = {
        requestFileScopeForActiveDocument = {
          ["$ref"] = "RequestFileScopeForActiveDocument",
        },
      },
      type = "object",
    },
    EmailAddress = {
      description = "A person's email address.",
      id = "EmailAddress",
      properties = {
        customType = {
          description = "If the value of type is custom, this property contains the custom type string.",
          type = "string",
        },
        emailAddress = {
          description = "The email address.",
          type = "string",
        },
        emailUrl = {
          description = "The URL to send email.",
          type = "string",
        },
        primary = {
          description = "Indicates if this is the user's primary email. Only one entry can be marked as primary.",
          type = "boolean",
        },
        type = {
          description = "The type of the email account. Acceptable values are: \"custom\", \"home\", \"other\", \"work\".",
          type = "string",
        },
      },
      type = "object",
    },
    EmailOwnerProto = {
      description = "Represents a verified owner of the given email address. Note that a single address may have many owners, and a single user may own many addresses. (All lower-case, in display form -- see com.google.gaia.client.GaiaEmail)",
      id = "EmailOwnerProto",
      properties = {
        email = {
          type = "string",
        },
      },
      type = "object",
    },
    EmbedClientItem = {
      description = "Represents an embedded object in an update. This is a wrapper class that can contain a single specific item proto in an extension field. Think of it as a base class like `Message` in Java. Each item proto must declare that it extends this proto: message ExampleObject { option (item_type) = EXAMPLE_OBJECT; extend EmbedClientItem { optional ExampleObject example_object = ; } } See go/es-embeds for details.",
      id = "EmbedClientItem",
      properties = {
        canonicalId = {
          description = "The canonical ID of the embed. If absent, the canonical ID is equal to the ID; if present, then the canonical ID represents an \"equivalence class\" of embeds which really refer to the same object. (For example, the URLs http://www.foo.com/ and http://foo.com/ refer to the same object) This field may be updated periodically by background processes.",
          type = "string",
        },
        deepLinkData = {
          ["$ref"] = "DeepLinkData",
          description = "Deep-linking data to take the user to the right place in a mobile app. This is only used for preview and attribution. Links that are specific to a given embed type should live on that specific embed's proto by using Link. See http://goto.google.com/mariana-design.",
        },
        id = {
          description = "The ID of the embed. This corresponds to the schema.org ID, as represented in the ItemScope.id field.",
          type = "string",
        },
        provenance = {
          ["$ref"] = "Provenance",
          description = "The provenance of the embed, populated when the embed originated from a web fetch. The provenance captures information about the web page the embed had originated, like the URL that was retrieved and the retrieved URL's canonical form. This is useful in the case where the URL shared by the URL redirects (e.g., in the case of a shortened URL).",
        },
        renderId = {
          description = "The ID used to identify the embed during rendering. This field will match ID, if set, otherwise it will be the ID of the parent activity. This field is only populated on the server for client use and is not persisted to storage.",
          type = "string",
        },
        signature = {
          description = "Signature of the embed, used for verification.",
          type = "string",
        },
        transientData = {
          ["$ref"] = "TransientData",
          description = "Transient generic data that will not be saved on the server.",
        },
        type = {
          description = "The first value in `type` determines which extension field will be set. When creating an EmbedClientItem, you only need to set the first (primary) type in this field. When the server receives the item, it will populate the full type list using the parent annotations in the ItemType enum.",
          items = {
            enum = {
              "UNKNOWN",
              "ACTION_V2",
              "ADD_ACTION_V2",
              "AGGREGATE_RATING_V2",
              "ARTICLE_V2",
              "ASSESS_ACTION_V2",
              "AUDIO_OBJECT_V2",
              "BASIC_INTERACTION_V2",
              "BLOG_POSTING_V2",
              "BLOG_V2",
              "BOOK_V2",
              "BUY_ACTION_V2",
              "CHECK_IN_ACTION_V2",
              "CHECKIN_V2",
              "COLLEXION_V2",
              "COMMENT_ACTION_V2",
              "COMMENT_V2",
              "COMMUNICATE_ACTION_V2",
              "CONSUME_ACTION_V2",
              "CREATE_ACTION_V2",
              "CREATIVE_WORK_V2",
              "DISCOVER_ACTION_V2",
              "DOCUMENT_OBJECT_V2",
              "DRAWING_OBJECT_V2",
              "DRIVE_OBJECT_V2",
              "EMOTISHARE_V2",
              "ENTRY_POINT_V2",
              "EVENT_TIME_V2",
              "EVENT_V2",
              "FILE_OBJECT_V2",
              "FIND_ACTION_V2",
              "FINANCIAL_QUOTE_V2",
              "FORM_OBJECT_V2",
              "GEO_COORDINATES_V2",
              "GOOGLE_OFFER_V2",
              "HANGOUT_CHAT_MESSAGE",
              "HANGOUT_QUOTE",
              "HANGOUT_V2",
              "HOA_PLUS_EVENT_V2",
              "IMAGE_OBJECT_V2",
              "INTERACT_ACTION_V2",
              "INTERACTION_V2",
              "LISTEN_ACTION_V2",
              "LOCAL_BUSINESS_V2",
              "LOCAL_PLUS_PHOTO_ALBUM_V2",
              "MAGAZINE_V2",
              "MEDIA_OBJECT_V2",
              "MOBILE_APPLICATION_V2",
              "MOVIE_V2",
              "MUSIC_ALBUM_V2",
              "MUSIC_GROUP_V2",
              "MUSIC_PLAYLIST_V2",
              "MUSIC_RECORDING_V2",
              "NEWS_ARTICLE_V2",
              "OFFER_V2",
              "ORGANIZATION_V2",
              "ORGANIZE_ACTION_V2",
              "PERSON_V2",
              "PLACE_REVIEW_V2",
              "PLACE_V2",
              "PLAN_ACTION_V2",
              "PLAY_MUSIC_ALBUM_V2",
              "PLAY_MUSIC_TRACK_V2",
              "PLAY_OBJECT_V2",
              "PLUS_AUDIO_V2",
              "PLUS_EVENT_V2",
              "PLUS_MEDIA_COLLECTION_V2",
              "PLUS_MEDIA_OBJECT_V2",
              "PLUS_PAGE_V2",
              "PLUS_PHOTOS_ADDED_TO_COLLECTION_V2",
              "PLUS_PHOTO_ALBUM_V2",
              "PLUS_PHOTO_COLLECTION_V2",
              "PLUS_PHOTO_V2",
              "PLUS_POST_V2",
              "PLUS_RESHARE_V2",
              "PLUS_SOFTWARE_APPLICATION_V2",
              "POLL_OPTION_V2",
              "POLL_V2",
              "POSTAL_ADDRESS_V2",
              "PRESENTATION_OBJECT_V2",
              "PRODUCT_REVIEW_V2",
              "RATING_V2",
              "REACT_ACTION_V2",
              "RESERVATION_V2",
              "RESERVE_ACTION_V2",
              "REVIEW_V2",
              "REVIEW_ACTION_V2",
              "SOFTWARE_APPLICATION_V2",
              "SPREADSHEET_OBJECT_V2",
              "SQUARE_INVITE_V2",
              "SQUARE_V2",
              "STICKER_V2",
              "STORY_V2",
              "THING_V2",
              "TRADE_ACTION_V2",
              "DEPRECATED_TOUR_OBJECT_V2",
              "TV_EPISODE_V2",
              "TV_SERIES_V2",
              "UPDATE_ACTION_V2",
              "VIEW_ACTION_V2",
              "VIDEO_OBJECT_V2",
              "VIDEO_GALLERY_V2",
              "WANT_ACTION_V2",
              "WEB_PAGE_V2",
              "WRITE_ACTION_V2",
              "YOUTUBE_CHANNEL_V2",
              "GOOGLE_USER_PHOTO_V2",
              "GOOGLE_USER_PHOTO_ALBUM",
              "GOOGLE_PHOTO_RECIPE",
              "THING",
              "CREATIVE_WORK",
              "EVENT",
              "INTANGIBLE",
              "ORGANIZATION",
              "PERSON",
              "PLACE",
              "PRODUCT",
              "ARTICLE",
              "BLOG_POSTING",
              "NEWS_ARTICLE",
              "SCHOLARLY_ARTICLE",
              "BLOG",
              "BOOK",
              "COMMENT",
              "ITEM_LIST",
              "MAP",
              "MEDIA_OBJECT",
              "AUDIO_OBJECT",
              "IMAGE_OBJECT",
              "MUSIC_VIDEO_OBJECT",
              "VIDEO_OBJECT",
              "MOVIE",
              "MUSIC_PLAYLIST",
              "MUSIC_ALBUM",
              "MUSIC_RECORDING",
              "PAINTING",
              "PHOTOGRAPH",
              "RECIPE",
              "REVIEW",
              "SCULPTURE",
              "SOFTWARE_APPLICATION",
              "MOBILE_APPLICATION",
              "WEB_APPLICATION",
              "TV_EPISODE",
              "TV_SEASON",
              "TV_SERIES",
              "WEB_PAGE",
              "ABOUT_PAGE",
              "CHECKOUT_PAGE",
              "COLLECTION_PAGE",
              "IMAGE_GALLERY",
              "VIDEO_GALLERY",
              "CONTACT_PAGE",
              "ITEM_PAGE",
              "PROFILE_PAGE",
              "SEARCH_RESULTS_PAGE",
              "WEB_PAGE_ELEMENT",
              "SITE_NAVIGATION_ELEMENT",
              "TABLE",
              "WP_AD_BLOCK",
              "WP_FOOTER",
              "WP_HEADER",
              "WP_SIDEBAR",
              "APP_INVITE",
              "EMOTISHARE",
              "BUSINESS_EVENT",
              "CHILDRENS_EVENT",
              "COMEDY_EVENT",
              "DANCE_EVENT",
              "EDUCATION_EVENT",
              "FESTIVAL",
              "FOOD_EVENT",
              "LITERARY_EVENT",
              "MUSIC_EVENT",
              "SALE_EVENT",
              "SOCIAL_EVENT",
              "SPORTS_EVENT",
              "THEATER_EVENT",
              "VISUAL_ARTS_EVENT",
              "RESERVATION",
              "TRAVEL_EVENT",
              "CORPORATION",
              "EDUCATIONAL_ORGANIZATION",
              "COLLEGE_OR_UNIVERSITY",
              "ELEMENTARY_SCHOOL",
              "HIGH_SCHOOL",
              "MIDDLE_SCHOOL",
              "PRESCHOOL",
              "SCHOOL",
              "GOVERNMENT_ORGANIZATION",
              "LOCAL_BUSINESS",
              "ANIMAL_SHELTER",
              "AUTOMOTIVE_BUSINESS",
              "AUTO_BODY_SHOP",
              "AUTO_DEALER",
              "AUTO_PARTS_STORE",
              "AUTO_RENTAL",
              "AUTO_REPAIR",
              "AUTO_WASH",
              "GAS_STATION",
              "MOTORCYCLE_DEALER",
              "MOTORCYCLE_REPAIR",
              "CHILD_CARE",
              "DRY_CLEANING_OR_LAUNDRY",
              "EMERGENCY_SERVICE",
              "FIRE_STATION",
              "HOSPITAL",
              "POLICE_STATION",
              "EMPLOYMENT_AGENGY",
              "ENTERTAINMENT_BUSINESS",
              "ADULT_ENTERTAINMENT",
              "AMUSEMENT_PARK",
              "ART_GALLERY",
              "CASINO",
              "COMEDY_CLUB",
              "MOVIE_THEATER",
              "NIGHT_CLUB",
              "FINANCIAL_SERVICE",
              "ACCOUNTING_SERVICE",
              "AUTOMATED_TELLER",
              "BANK_OR_CREDIT_UNION",
              "INSURANCE_AGENCY",
              "FOOD_ESTABLISHMENT",
              "BAKERY",
              "BAR_OR_PUB",
              "BREWERY",
              "CAFE_OR_COFFEE_SHOP",
              "FAST_FOOD_RESTAURANT",
              "ICE_CREAM_SHOP",
              "RESTAURANT",
              "WINERY",
              "GOVERNMENT_OFFICE",
              "POST_OFFICE",
              "HEALTH_AND_BEAUTY_BUSINESS",
              "BEAUTY_SALON",
              "DAY_SPA",
              "HAIR_SALON",
              "HEALTH_CLUB",
              "NAIL_SALON",
              "TATTOO_PARLOR",
              "HOME_AND_CONSTRUCTION_BUSINESS",
              "ELECTRICIAN",
              "GENERAL_CONTRACTOR",
              "HVAC_BUSINESS",
              "HOUSE_PAINTER",
              "LOCKSMITH",
              "MOVING_COMPANY",
              "PLUMBER",
              "ROOFING_CONTRACTOR",
              "INTERNET_CAFE",
              "LIBRARY",
              "LODGING_BUSINESS",
              "BED_AND_BREAKFAST",
              "HOSTEL",
              "HOTEL",
              "MOTEL",
              "MEDICAL_ORGANIZATION",
              "DENTIST",
              "MEDICAL_CLINIC",
              "OPTICIAN",
              "PHARMACY",
              "PHYSICIAN",
              "VETERINARY_CARE",
              "PROFESSIONAL_SERVICE",
              "ATTORNEY",
              "NOTARY",
              "RADIO_STATION",
              "REAL_ESTATE_AGENT",
              "RECYCLING_CENTER",
              "SELF_STORAGE",
              "SHOPPING_CENTER",
              "SPORTS_ACTIVITY_LOCATION",
              "BOWLING_ALLEY",
              "EXERCISE_GYM",
              "GOLF_COURSE",
              "PUBLIC_SWIMMING_POOL",
              "SKI_RESORT",
              "SPORTS_CLUB",
              "STADIUM_OR_ARENA",
              "TENNIS_COMPLEX",
              "STORE",
              "BIKE_STORE",
              "BOOK_STORE",
              "CLOTHING_STORE",
              "COMPUTER_STORE",
              "CONVENIENCE_STORE",
              "DEPARTMENT_STORE",
              "ELECTRONICS_STORE",
              "FLORIST",
              "FURNITURE_STORE",
              "GARDEN_STORE",
              "GROCERY_STORE",
              "HARDWARE_STORE",
              "HOBBY_SHOP",
              "HOME_GOODS_STORE",
              "JEWELRY_STORE",
              "LIQUOR_STORE",
              "MENS_CLOTHING_STORE",
              "MOBILE_PHONE_STORE",
              "MOVIE_RENTAL_STORE",
              "MUSIC_STORE",
              "OFFICE_EQUIPMENT_STORE",
              "OUTLET_STORE",
              "PAWN_SHOP",
              "PET_STORE",
              "SHOE_STORE",
              "SPORTING_GOODS_STORE",
              "TIRE_SHOP",
              "TOY_STORE",
              "WHOLESALE_STORE",
              "TELEVISION_STATION",
              "TOURIST_INFORMATION_CENTER",
              "TRAVEL_AGENCY",
              "PERFORMING_GROUP",
              "MUSIC_GROUP",
              "ADMINISTRATIVE_AREA",
              "CITY",
              "COUNTRY",
              "STATE",
              "CIVIC_STRUCTURE",
              "AIRPORT",
              "AQUARIUM",
              "BEACH",
              "BUS_STATION",
              "BUS_STOP",
              "CAMPGROUND",
              "CEMETERY",
              "CREMATORIUM",
              "EVENT_VENUE",
              "GOVERNMENT_BUILDING",
              "CITY_HALL",
              "COURTHOUSE",
              "DEFENCE_ESTABLISHMENT",
              "EMBASSY",
              "LEGISLATIVE_BUILDING",
              "MUSEUM",
              "MUSIC_VENUE",
              "PARK",
              "PARKING_FACILITY",
              "PERFORMING_ARTS_THEATER",
              "PLACE_OF_WORSHIP",
              "BUDDHIST_TEMPLE",
              "CATHOLIC_CHURCH",
              "CHURCH",
              "HINDU_TEMPLE",
              "MOSQUE",
              "SYNAGOGUE",
              "PLAYGROUND",
              "R_V_PARK",
              "RESIDENCE",
              "APARTMENT_COMPLEX",
              "GATED_RESIDENCE_COMMUNITY",
              "SINGLE_FAMILY_RESIDENCE",
              "TOURIST_ATTRACTION",
              "SUBWAY_STATION",
              "TAXI_STAND",
              "TRAIN_STATION",
              "ZOO",
              "LANDFORM",
              "BODY_OF_WATER",
              "CANAL",
              "LAKE_BODY_OF_WATER",
              "OCEAN_BODY_OF_WATER",
              "POND",
              "RESERVOIR",
              "RIVER_BODY_OF_WATER",
              "SEA_BODY_OF_WATER",
              "WATERFALL",
              "CONTINENT",
              "MOUNTAIN",
              "VOLCANO",
              "LANDMARKS_OR_HISTORICAL_BUILDINGS",
              "USER_INTERACTION",
              "USER_PLUS_ONES",
              "ENUMERATION",
              "BOOK_FORMAT_TYPE",
              "ITEM_AVAILABILITY",
              "OFFER_ITEM_CONDITION",
              "JOB_POSTING",
              "LANGUAGE",
              "OFFER",
              "QUANTITY",
              "DISTANCE",
              "DURATION",
              "ENERGY",
              "MASS",
              "RATING",
              "AGGREGATE_RATING",
              "STRUCTURED_VALUE",
              "CONTACT_POINT",
              "POSTAL_ADDRESS",
              "GEO_COORDINATES",
              "GEO_SHAPE",
              "NUTRITION_INFORMATION",
              "PRESENTATION_OBJECT",
              "DOCUMENT_OBJECT",
              "SPREADSHEET_OBJECT",
              "FORM_OBJECT",
              "DRAWING_OBJECT",
              "PLACE_REVIEW",
              "FILE_OBJECT",
              "PLAY_MUSIC_TRACK",
              "PLAY_MUSIC_ALBUM",
              "MAGAZINE",
              "CAROUSEL_FRAME",
              "PLUS_EVENT",
              "HANGOUT",
              "HANGOUT_BROADCAST",
              "HANGOUT_CONSUMER",
              "CHECKIN",
              "EXAMPLE_OBJECT",
              "SQUARE",
              "SQUARE_INVITE",
              "PLUS_PHOTO",
              "PLUS_PHOTO_ALBUM",
              "LOCAL_PLUS_PHOTO_ALBUM",
              "PRODUCT_REVIEW",
              "FINANCIAL_QUOTE",
              "DEPRECATED_TOUR_OBJECT",
              "PLUS_PAGE",
              "GOOGLE_CHART",
              "PLUS_PHOTOS_ADDED_TO_COLLECTION",
              "RECOMMENDED_PEOPLE",
              "PLUS_POST",
              "DATE",
              "DRIVE_OBJECT_COLLECTION",
              "NEWS_MEDIA_ORGANIZATION",
              "DYNAMITE_ATTACHMENT_METADATA",
              "DYNAMITE_MESSAGE_METADATA",
            },
            enumDescriptions = {
              "Largely deprecated, effectively an error condition and should not be in storage.",
              "Embeds V2 types",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "The action of checking in, as opposed to a \"check-in\".",
              "",
              "",
              "The act of commenting, which might result in a comment.",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "Boswell story (see goto/boswell)",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "A photo stored in photo service owned by a Google account user. This is distinct from PlusPhoto as it isn't tied to GPlus, but is instead intended to be a more general photo tied to a google user.",
              "A photo album in photo service owned by a Google account user. This is distinct from PlusPhotoAlbum as it isn't tied to GPlus, but is instead intended to be a general photo album tied to a google user.",
              "An embed used to create a single photo in photo service. This type is never stored but is used to create a GOOGLE_USER_PHOTO_V2 or PLUS_PHOTO_V2 embed.",
              "Embeds V1 types",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "CREATIVE_WORK subtypes",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "EVENT subtypes",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "ORGANIZATION subtypes",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "PLACE subtypes",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "NOTE(jpanzer): This is a badly designed hierarchy and we should avoid depending on Event properties inside UserInteractions as much as possible IMHO.",
              "",
              "Intangibles, primarily used as sub-objects of other types",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "CREATIVE_WORK extensions",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "Single frame for http://goto/carousel.",
              "EVENT extensions",
              "No declared proto. Used only as a base type for now.",
              "",
              "",
              "",
              "",
              "NOTE(melchang): These correspond to http://schema.org/WebPage/Community and http://schema.org/WebPage/CommunityInvite. See b/7653610 for why these are \"SQUARE\" and not \"COMMUNITY\".",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "Data visualizations. See http://code.google.com/apis/chart/index.html",
              "",
              "A collection of people that have been recommended to a user.",
              "A Google+ post.",
              "An http://schema.org/Date unstructured ISO-8859 timestamp string.",
              "Embed representing a collection of multiple Drive objects.",
              "https://schema.org/NewsMediaOrganization",
              "Deprecated in favor of DYNAMITE_MESSAGE_METADATA",
              "Used for Dynamite message metadata in Hangouts",
            },
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    EnumOperatorOptions = {
      description = "Used to provide a search operator for enum properties. This is optional. Search operators let users restrict the query to specific fields relevant to the type of item being searched. For example, if you provide no operator for a *priority* enum property with possible values *p0* and *p1*, a query that contains the term *p0* returns items that have *p0* as the value of the *priority* property, as well as any items that contain the string *p0* in other fields. If you provide an operator name for the enum, such as *priority*, then search users can use that operator to refine results to only items that have *p0* as this property's value, with the query *priority:p0*.",
      id = "EnumOperatorOptions",
      properties = {
        operatorName = {
          description = "Indicates the operator name required in the query in order to isolate the enum property. For example, if operatorName is *priority* and the property's name is *priorityVal*, then queries like *priority:<value>* show results only where the value of the property named *priorityVal* matches *<value>*. By contrast, a search that uses the same *<value>* without an operator returns all items where *<value>* matches the value of any String properties or text within the content field for the item. The operator name can only contain lowercase letters (a-z). The maximum length is 32 characters.",
          type = "string",
        },
      },
      type = "object",
    },
    EnumPropertyOptions = {
      description = "The options for enum properties, which allow you to define a restricted set of strings to match user queries, set rankings for those string values, and define an operator name to be paired with those strings so that users can narrow results to only items with a specific value. For example, for items in a request tracking system with priority information, you could define *p0* as an allowable enum value and tie this enum to the operator name *priority* so that search users could add *priority:p0* to their query to restrict the set of results to only those items indexed with the value *p0*.",
      id = "EnumPropertyOptions",
      properties = {
        operatorOptions = {
          ["$ref"] = "EnumOperatorOptions",
          description = "If set, describes how the enum should be used as a search operator.",
        },
        orderedRanking = {
          description = "Used to specify the ordered ranking for the enumeration that determines how the integer values provided in the possible EnumValuePairs are used to rank results. If specified, integer values must be provided for all possible EnumValuePair values given for this property. Can only be used if isRepeatable is false.",
          enum = {
            "NO_ORDER",
            "ASCENDING",
            "DESCENDING",
          },
          enumDescriptions = {
            "There is no ranking order for the property. Results aren't adjusted by this property's value.",
            "This property is ranked in ascending order. Lower values indicate lower ranking.",
            "This property is ranked in descending order. Lower values indicate higher ranking.",
          },
          type = "string",
        },
        possibleValues = {
          description = "The list of possible values for the enumeration property. All EnumValuePairs must provide a string value. If you specify an integer value for one EnumValuePair, then all possible EnumValuePairs must provide an integer value. Both the string value and integer value must be unique over all possible values. Once set, possible values cannot be removed or modified. If you supply an ordered ranking and think you might insert additional enum values in the future, leave gaps in the initial integer values to allow adding a value in between previously registered values. The maximum number of elements is 100.",
          items = {
            ["$ref"] = "EnumValuePair",
          },
          type = "array",
        },
      },
      type = "object",
    },
    EnumValuePair = {
      description = "The enumeration value pair defines two things: a required string value and an optional integer value. The string value defines the necessary query term required to retrieve that item, such as *p0* for a priority item. The integer value determines the ranking of that string value relative to other enumerated values for the same property. For example, you might associate *p0* with *0* and define another enum pair such as *p1* and *1*. You must use the integer value in combination with ordered ranking to set the ranking of a given value relative to other enumerated values for the same property name. Here, a ranking order of DESCENDING for *priority* properties results in a ranking boost for items indexed with a value of *p0* compared to items indexed with a value of *p1*. Without a specified ranking order, the integer value has no effect on item ranking.",
      id = "EnumValuePair",
      properties = {
        integerValue = {
          description = "The integer value of the EnumValuePair which must be non-negative. Optional.",
          format = "int32",
          type = "integer",
        },
        stringValue = {
          description = "The string value of the EnumValuePair. The maximum length is 32 characters.",
          type = "string",
        },
      },
      type = "object",
    },
    EnumValues = {
      description = "List of enum values.",
      id = "EnumValues",
      properties = {
        values = {
          description = "The maximum allowable length for string values is 32 characters.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ErrorInfo = {
      description = "Error information about the response.",
      id = "ErrorInfo",
      properties = {
        errorMessages = {
          items = {
            ["$ref"] = "ErrorMessage",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ErrorMessage = {
      description = "Error message per source response.",
      id = "ErrorMessage",
      properties = {
        errorMessage = {
          type = "string",
        },
        source = {
          ["$ref"] = "Source",
        },
      },
      type = "object",
    },
    EventAnnotation = {
      id = "EventAnnotation",
      properties = {
        type = {
          format = "int32",
          type = "integer",
        },
        value = {
          type = "string",
        },
      },
      type = "object",
    },
    EventProto = {
      description = "Represents the invitees or other users associated with a Google+ Event (see http://goto/events-backend-design).",
      id = "EventProto",
      properties = {
        eventId = {
          description = "Event IDs consist of alphanumeric characters and colons. Currently required.",
          type = "string",
        },
        memberType = {
          description = "The type of Event members to consider, e.g. \"all members\" vs. \"owners\" vs. \"admins\". These are defined by legacy_relation_id values in social.graph.storage.EdgeTypeEnum.EdgeType enum options in social/graph/storage/proto/id.proto. See event.pb (defined in production/config/cdd/socialgraph/mixer_config/prod/node_type_config) for all valid edge types associated with event. Currently required.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    FacetBucket = {
      description = "A bucket in a facet is the basic unit of operation. A bucket can comprise either a single value OR a contiguous range of values, depending on the type of the field bucketed. FacetBucket is currently used only for returning the response object.",
      id = "FacetBucket",
      properties = {
        count = {
          description = "Number of results that match the bucket value. Counts are only returned for searches when count accuracy is ensured. Cloud Search does not guarantee facet counts for any query and facet counts might be present only intermittently, even for identical queries. Do not build dependencies on facet count existence; instead use facet ount percentages which are always returned.",
          format = "int32",
          type = "integer",
        },
        filter = {
          ["$ref"] = "Filter",
          description = "Filter to be passed in the search request if the corresponding bucket is selected.",
        },
        percentage = {
          description = "Percent of results that match the bucket value. The returned value is between (0-100], and is rounded down to an integer if fractional. If the value is not explicitly returned, it represents a percentage value that rounds to 0. Percentages are returned for all searches, but are an estimate. Because percentages are always returned, you should render percentages instead of counts.",
          format = "int32",
          type = "integer",
        },
        value = {
          ["$ref"] = "Value",
        },
      },
      type = "object",
    },
    FacetOptions = {
      description = "Specifies operators to return facet results for. There will be one FacetResult for every source_name/object_type/operator_name combination.",
      id = "FacetOptions",
      properties = {
        integerFacetingOptions = {
          ["$ref"] = "IntegerFacetingOptions",
          description = "If set, describes integer faceting options for the given integer property. The corresponding integer property in the schema should be marked isFacetable. The number of buckets returned would be minimum of this and num_facet_buckets.",
        },
        numFacetBuckets = {
          description = "Maximum number of facet buckets that should be returned for this facet. Defaults to 10. Maximum value is 100.",
          format = "int32",
          type = "integer",
        },
        objectType = {
          description = "If object_type is set, only those objects of that type will be used to compute facets. If empty, then all objects will be used to compute facets.",
          type = "string",
        },
        operatorName = {
          description = "The name of the operator chosen for faceting. @see cloudsearch.SchemaPropertyOptions",
          type = "string",
        },
        sourceName = {
          description = "Source name to facet on. Format: datasources/{source_id} If empty, all data sources will be used.",
          type = "string",
        },
      },
      type = "object",
    },
    FacetResult = {
      description = "Source specific facet response",
      id = "FacetResult",
      properties = {
        buckets = {
          description = "FacetBuckets for values in response containing at least a single result with the corresponding filter.",
          items = {
            ["$ref"] = "FacetBucket",
          },
          type = "array",
        },
        objectType = {
          description = "Object type for which facet results are returned. Can be empty.",
          type = "string",
        },
        operatorName = {
          description = "The name of the operator chosen for faceting. @see cloudsearch.SchemaPropertyOptions",
          type = "string",
        },
        sourceName = {
          description = "Source name for which facet results are returned. Will not be empty.",
          type = "string",
        },
      },
      type = "object",
    },
    FieldViolation = {
      id = "FieldViolation",
      properties = {
        description = {
          description = "The description of the error.",
          type = "string",
        },
        field = {
          description = "Path of field with violation.",
          type = "string",
        },
      },
      type = "object",
    },
    Filter = {
      description = "A generic way of expressing filters in a query, which supports two approaches: **1. Setting a ValueFilter.** The name must match an operator_name defined in the schema for your data source. **2. Setting a CompositeFilter.** The filters are evaluated using the logical operator. The top-level operators can only be either an AND or a NOT. AND can appear only at the top-most level. OR can appear only under a top-level AND.",
      id = "Filter",
      properties = {
        compositeFilter = {
          ["$ref"] = "CompositeFilter",
        },
        valueFilter = {
          ["$ref"] = "ValueFilter",
        },
      },
      type = "object",
    },
    FilterCreated = {
      description = "A filter was created.",
      id = "FilterCreated",
      properties = {},
      type = "object",
    },
    FilterDeleted = {
      description = "A filter was deleted.",
      id = "FilterDeleted",
      properties = {},
      type = "object",
    },
    FilterOptions = {
      description = "Filter options to be applied on query.",
      id = "FilterOptions",
      properties = {
        filter = {
          ["$ref"] = "Filter",
          description = "Generic filter to restrict the search, such as `lang:en`, `site:xyz`.",
        },
        objectType = {
          description = "If object_type is set, only objects of that type are returned. This should correspond to the name of the object that was registered within the definition of schema. The maximum length is 256 characters.",
          type = "string",
        },
      },
      type = "object",
    },
    FilterUpdate = {
      description = "HistoryRecord for changes associated with a filter, namely: FILTER_CREATED FILTER_DELETED",
      id = "FilterUpdate",
      properties = {
        filterCreated = {
          ["$ref"] = "FilterCreated",
        },
        filterDeleted = {
          ["$ref"] = "FilterDeleted",
        },
        filterId = {
          type = "string",
        },
      },
      type = "object",
    },
    FixedFooter = {
      description = "A persistent (sticky) footer that is added to the bottom of the card.",
      id = "FixedFooter",
      properties = {
        buttons = {
          items = {
            ["$ref"] = "Button",
          },
          type = "array",
        },
        primaryButton = {
          ["$ref"] = "TextButton",
        },
        secondaryButton = {
          ["$ref"] = "TextButton",
        },
      },
      type = "object",
    },
    Folder = {
      id = "Folder",
      properties = {
        id = {
          description = "Folder mapping id.",
          format = "uint64",
          type = "string",
        },
        message = {
          description = "One for each copy of the message in the IMAP folder.",
          items = {
            ["$ref"] = "ImapsyncFolderAttributeFolderMessage",
          },
          type = "array",
        },
      },
      type = "object",
    },
    FolderAttribute = {
      description = "This is the content of //imapsync/folder attribute.",
      id = "FolderAttribute",
      properties = {
        folder = {
          description = "List of all IMAP folders where the message presents.",
          items = {
            ["$ref"] = "Folder",
          },
          type = "array",
        },
      },
      type = "object",
    },
    FormAction = {
      id = "FormAction",
      properties = {
        actionMethodName = {
          description = "Apps script function that should be invoked in the developer's apps script when the containing element is clicked/activated.",
          type = "string",
        },
        loadIndicator = {
          enum = {
            "SPINNER",
            "NONE",
          },
          enumDescriptions = {
            "",
            "",
          },
          type = "string",
        },
        parameters = {
          items = {
            ["$ref"] = "ActionParameter",
          },
          type = "array",
        },
        persistValues = {
          description = "Indicates whether form values persist after the action. When false, the Apps Script is responsible for persisting values, by setting any form field values using the formInputs in the event. Disabling this behavior can be used if the add-on needs the ability to clear form fields, for example, as with persistent values, there is no means for clearing existing values. When disabling persistent values, it is strongly recommended that the add-on use LoadIndicator.SPINNER for all events, as this locks the UI to ensure no changes are made by the user while the action is being processed. When using LoadIndicator.NONE for any of the actions, persistent values are recommended, as it ensures that any changes made by the user after form / on change actions are sent to the server are not overwritten by the response. Persistent values disabled by default. While we recommend persistent values be used in the typical use case, we do not enable by default, as doing so would change the current behavior of existing add-ons in prod.",
          type = "boolean",
        },
      },
      type = "object",
    },
    FormatMetadata = {
      description = "Annotation metadata for markup formatting",
      id = "FormatMetadata",
      properties = {
        fontColor = {
          description = "Font color is set if and only if format_type is FONT_COLOR. The components are stored as (alpha << 24) | (red << 16) | (green << 8) | blue. Clients should always set the alpha component to 0xFF. NEXT TAG: 3",
          format = "uint32",
          type = "integer",
        },
        formatType = {
          description = "LINT.ThenChange(//depot/google3/apps/dynamite/v1/web/datakeys/annotated_span.proto)",
          enum = {
            "TYPE_UNSPECIFIED",
            "BOLD",
            "ITALIC",
            "STRIKE",
            "SOURCE_CODE",
            "MONOSPACE",
            "HIDDEN",
            "MONOSPACE_BLOCK",
            "UNDERLINE",
            "FONT_COLOR",
            "BULLETED_LIST",
            "BULLETED_LIST_ITEM",
            "CLIENT_HIDDEN",
          },
          enumDescriptions = {
            "Default value for the enum.",
            "",
            "",
            "",
            "",
            "Inline monospace.",
            "",
            "Multi-line monospace block.",
            "",
            "",
            "Encloses BULLETED_LIST_ITEM annotations.",
            "Must cover the whole line including the newline",
            "character at the end. Not used anymore.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    Formatting = {
      description = "Formatting information for a segment.",
      id = "Formatting",
      properties = {
        bold = {
          type = "boolean",
        },
        highlight = {
          description = "This indicates that the segment should be rendered as highlighted or visually emphasized.",
          type = "boolean",
        },
        italics = {
          type = "boolean",
        },
        strikethrough = {
          type = "boolean",
        },
        style = {
          description = "If set, this indicates that the segment should be rendered with the specified style. The absence of an explicit style represents \"no style\", i.e. the segment can be rendered with the default style chosen by the application.",
          enum = {
            "UNKNOWN_STYLE",
            "HEADING_1",
            "HEADING_2",
            "HEADING_3",
            "HEADING_4",
          },
          enumDescriptions = {
            "This represents a style that is unknown (e.g. a new style was introduced but not supported by older mobile app versions) and should generally not be used as a value in a proto. If the segment does not need to be rendered with a special style, the 'style' field should simply be left unset. A reasonable fallback for an unknown style is to render the segment in the default style.",
            "The most important heading to the least important heading.",
            "",
            "",
            "",
          },
          type = "string",
        },
        underline = {
          type = "boolean",
        },
      },
      type = "object",
    },
    FreshnessOptions = {
      description = "Indicates which freshness property to use when adjusting search ranking for an item. Fresher, more recent dates indicate higher quality. Use the freshness option property that best works with your data. For fileshare documents, last modified time is most relevant. For calendar event data, the time when the event occurs is a more relevant freshness indicator. In this way, calendar events that occur closer to the time of the search query are considered higher quality and ranked accordingly.",
      id = "FreshnessOptions",
      properties = {
        freshnessDuration = {
          description = "The duration after which an object should be considered stale. The default value is 180 days (in seconds).",
          format = "google-duration",
          type = "string",
        },
        freshnessProperty = {
          description = "This property indicates the freshness level of the object in the index. If set, this property must be a top-level property within the property definitions and it must be a timestamp type or date type. Otherwise, the Indexing API uses updateTime as the freshness indicator. The maximum length is 256 characters. When a property is used to calculate freshness, the value defaults to 2 years from the current time.",
          type = "string",
        },
      },
      type = "object",
    },
    FuseboxItem = {
      description = "The Item message is the read interface for user data (traditionally referred to as a \"message\", such as a mail message or a chat message, but generalized to encompass other types such as tasks) and stored in Tingle. Each Item is associated with a single Thread. An Item contains three classes of data. (1): Item \"fields\" are common to items of all message types (e.g. mail, chat, task, etc.) and are identified by the ItemFieldSpec.FetchType enum when fetching Items. (2): Item \"attributes\" represent data associated with an Item that is stored on behalf of the client but to which the fusebox and storage layers are otherwise agnostic. (3): Item \"parts\" are application-defined protocol buffers that affect how the Item is indexed. Item parts are referenced as extensions to the ItemParts message. By default the application specifies the index terms associated with an Item part. For performance sensitive applications, the storage layer can be modified to understand and index data types natively.",
      id = "FuseboxItem",
      properties = {
        attributes = {
          ["$ref"] = "Attributes",
        },
        creationTimeMicroseconds = {
          description = "The creation time of the Item in micro seconds.",
          format = "uint64",
          type = "string",
        },
        history = {
          ["$ref"] = "History",
        },
        itemKey = {
          ["$ref"] = "MultiKey",
          description = "The key is used to refer to an item. Note that every field of the MultiKey is unique to the Item, and thus the Item can be looked up by any of the fields.",
        },
        labels = {
          ["$ref"] = "Labels",
        },
        lastModificationTimeUs = {
          description = "The modification time of the Item in micro seconds. Modifications to the message include label addition, deletion, etc.",
          format = "uint64",
          type = "string",
        },
        lockerReferences = {
          ["$ref"] = "References",
          description = "go/lockpicker Locker counterpart of references.",
        },
        matchInfo = {
          ["$ref"] = "MatchInfo",
        },
        parts = {
          ["$ref"] = "ItemParts",
          description = "Type-specific data are represented as extensions to the ItemParts message.",
        },
        readTs = {
          description = "The read timestamp at which this item was read. This is a temporary field used to check if two items streamed during dual reading were read at the same timestamp. This will be populated by Fusebox RPCs. \"DO NOT USE UNLESS YOU TALK TO FUSEBOX TEAM (gmail-fusebox@)\".",
          format = "int64",
          type = "string",
        },
        references = {
          ["$ref"] = "References",
          description = "References to attachments, video attachments in Youtube and Hangout messages.",
        },
        snippet = {
          description = "The snippet is a brief bit of text describing this item.",
          type = "string",
        },
        threadKey = {
          ["$ref"] = "MultiKey",
          description = "The key of the Thread with which this Item is associated.",
        },
        threadLocator = {
          description = "A base64 encoded and encrypted string generated from the Gaia Id and the thread id. Used to generate the permalink for this thread, exposed from Gmail API.",
          type = "string",
        },
        triggers = {
          ["$ref"] = "Triggers",
        },
        version = {
          description = "The latest history operation id that resulted in a mutation of the item.",
          format = "uint64",
          type = "string",
        },
      },
      type = "object",
    },
    FuseboxItemThreadMatchInfo = {
      description = "In the context of a search, the MatchInfo contains information about which Items matched the query.",
      id = "FuseboxItemThreadMatchInfo",
      properties = {
        clusterId = {
          description = "If SearchQuery.Options.Clustering is present, the query will be treated as a cluster query, and this field may be populated with the cluster ID of the cluster to which this thread belongs, if any. The cluster ID will be a label on the message.",
          type = "string",
        },
        lastMatchingItemId = {
          description = "The server id of the last item that matched the query. This is always set, regardless of the compute_matching_items_per_thread option. This is the value by which search results are sorted, in descending (i.e. newest first) order.",
          format = "uint64",
          type = "string",
        },
        lastMatchingItemKey = {
          ["$ref"] = "MultiKey",
          description = "The MultiKey of the last item that matched the query. This is always set, regardless of the compute_matching_items_per_thread option. This is the value by which search results are sorted, in descending (i.e. newest first) order.",
        },
        matchingItemKey = {
          description = "If SearchQuery.Options.compute_matching_items_per_thread, this field will contain the keys of all items that matched the query, in ascending order. Note that this option requires extra computation.",
          items = {
            ["$ref"] = "MultiKey",
          },
          type = "array",
        },
        rank = {
          ["$ref"] = "Rank",
          description = "The rank of this ItemThread in the result set of the query. This rank may be used to sort ItemThreads in proper order. Ranks are specific to a query, and stable for a given query at a specific time.",
        },
      },
      type = "object",
    },
    FuseboxPrefUpdatePreState = {
      description = "If the Value field is not set this means the pref did not exist.",
      id = "FuseboxPrefUpdatePreState",
      properties = {
        value = {
          format = "byte",
          type = "string",
        },
      },
      type = "object",
    },
    GSuitePrincipal = {
      id = "GSuitePrincipal",
      properties = {
        gsuiteDomain = {
          description = "This principal represents all users of the Google Workspace domain of the customer.",
          type = "boolean",
        },
        gsuiteGroupEmail = {
          description = "This principal references a Google Workspace group name.",
          type = "string",
        },
        gsuiteUserEmail = {
          description = "This principal references a Google Workspace user account.",
          type = "string",
        },
      },
      type = "object",
    },
    GaiaGroupProto = {
      id = "GaiaGroupProto",
      properties = {
        groupId = {
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    GaiaUserProto = {
      description = "A Gaia account, which may represent a user, device, service account, etc. For prod (@prod.google.com) accounts, use MdbUserProto instead.",
      id = "GaiaUserProto",
      properties = {
        userId = {
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    GatewayAccess = {
      description = "Details on the third-party interoperability settings for the meeting space.",
      id = "GatewayAccess",
      properties = {
        enabled = {
          description = "Whether third-party gateway accesses are enabled for this meeting space. If enabled, the actual access code can be retrieved by calling the GetGatewayAccess RPC method.",
          type = "boolean",
        },
      },
      type = "object",
    },
    GatewaySipAccess = {
      description = "Details how to join the conference via a SIP gateway.",
      id = "GatewaySipAccess",
      properties = {
        sipAccessCode = {
          description = "Permanent numeric code for manual entry on specially configured devices, currently the same as the PSTN \"Universal pin\".",
          type = "string",
        },
        uri = {
          description = "The SIP URI the conference can be reached through. The string is on one of the formats: \"sip:@\" \"sips:@\" where currently is the 13-digit universal pin (with the future option to support using a Meet meeting code as well), and is a valid address to be resolved using a DNS SRV lookup, or a dotted quad.",
          type = "string",
        },
      },
      type = "object",
    },
    GetCustomerIndexStatsResponse = {
      id = "GetCustomerIndexStatsResponse",
      properties = {
        averageIndexedItemCount = {
          description = "Average item count for the given date range for which billing is done.",
          format = "int64",
          type = "string",
        },
        stats = {
          description = "Summary of indexed item counts, one for each day in the requested range.",
          items = {
            ["$ref"] = "CustomerIndexStats",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GetCustomerQueryStatsResponse = {
      id = "GetCustomerQueryStatsResponse",
      properties = {
        stats = {
          items = {
            ["$ref"] = "CustomerQueryStats",
          },
          type = "array",
        },
        totalQueryCount = {
          description = "Total successful query count (status code 200) for the given date range.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    GetCustomerSearchApplicationStatsResponse = {
      description = "Response format for search application stats for a customer.",
      id = "GetCustomerSearchApplicationStatsResponse",
      properties = {
        averageSearchApplicationCount = {
          description = "Average search application count for the given date range.",
          format = "int64",
          type = "string",
        },
        stats = {
          description = "Search application stats by date.",
          items = {
            ["$ref"] = "CustomerSearchApplicationStats",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GetCustomerSessionStatsResponse = {
      id = "GetCustomerSessionStatsResponse",
      properties = {
        stats = {
          items = {
            ["$ref"] = "CustomerSessionStats",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GetCustomerUserStatsResponse = {
      id = "GetCustomerUserStatsResponse",
      properties = {
        stats = {
          items = {
            ["$ref"] = "CustomerUserStats",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GetDataSourceIndexStatsResponse = {
      id = "GetDataSourceIndexStatsResponse",
      properties = {
        averageIndexedItemCount = {
          description = "Average item count for the given date range for which billing is done.",
          format = "int64",
          type = "string",
        },
        stats = {
          description = "Summary of indexed item counts, one for each day in the requested range.",
          items = {
            ["$ref"] = "DataSourceIndexStats",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GetSearchApplicationQueryStatsResponse = {
      description = "Response format for getting query stats for a search application between given dates.",
      id = "GetSearchApplicationQueryStatsResponse",
      properties = {
        stats = {
          description = "Query stats per date for a search application.",
          items = {
            ["$ref"] = "SearchApplicationQueryStats",
          },
          type = "array",
        },
        totalQueryCount = {
          description = "Total successful query count (status code 200) for the given date range.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    GetSearchApplicationSessionStatsResponse = {
      id = "GetSearchApplicationSessionStatsResponse",
      properties = {
        stats = {
          items = {
            ["$ref"] = "SearchApplicationSessionStats",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GetSearchApplicationUserStatsResponse = {
      id = "GetSearchApplicationUserStatsResponse",
      properties = {
        stats = {
          items = {
            ["$ref"] = "SearchApplicationUserStats",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GmailClientActionMarkup = {
      id = "GmailClientActionMarkup",
      properties = {
        addonComposeUiActionMarkup = {
          ["$ref"] = "AddonComposeUiActionMarkup",
        },
        openCreatedDraftActionMarkup = {
          ["$ref"] = "OpenCreatedDraftActionMarkup",
        },
        taskAction = {
          ["$ref"] = "TaskActionMarkup",
        },
        updateDraftActionMarkup = {
          ["$ref"] = "UpdateDraftActionMarkup",
        },
      },
      type = "object",
    },
    GoogleChatV1ContextualAddOnMarkup = {
      description = "The markup for developers to specify the contents of a contextual AddOn.",
      id = "GoogleChatV1ContextualAddOnMarkup",
      properties = {
        cards = {
          description = "A list of cards. A card must contain a header and at least 1 section.",
          items = {
            ["$ref"] = "GoogleChatV1ContextualAddOnMarkupCard",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleChatV1ContextualAddOnMarkupCard = {
      description = "A card is a UI element that can contain UI widgets such as texts, images.",
      id = "GoogleChatV1ContextualAddOnMarkupCard",
      properties = {
        cardActions = {
          description = "The actions of this card.",
          items = {
            ["$ref"] = "GoogleChatV1ContextualAddOnMarkupCardCardAction",
          },
          type = "array",
        },
        header = {
          ["$ref"] = "GoogleChatV1ContextualAddOnMarkupCardCardHeader",
          description = "The header of the card. A header usually contains a title and an image.",
        },
        name = {
          description = "Name of the card.",
          type = "string",
        },
        sections = {
          description = "Sections are separated by a line divider.",
          items = {
            ["$ref"] = "GoogleChatV1ContextualAddOnMarkupCardSection",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleChatV1ContextualAddOnMarkupCardCardAction = {
      description = "A card action is the action associated with the card. For an invoice card, a typical action would be: delete invoice, email invoice or open the invoice in browser. Not supported by Google Chat apps.",
      id = "GoogleChatV1ContextualAddOnMarkupCardCardAction",
      properties = {
        actionLabel = {
          description = "The label used to be displayed in the action menu item.",
          type = "string",
        },
        onClick = {
          ["$ref"] = "GoogleChatV1WidgetMarkupOnClick",
          description = "The onclick action for this action item.",
        },
      },
      type = "object",
    },
    GoogleChatV1ContextualAddOnMarkupCardCardHeader = {
      id = "GoogleChatV1ContextualAddOnMarkupCardCardHeader",
      properties = {
        imageStyle = {
          description = "The image's type (e.g. square border or circular border).",
          enum = {
            "IMAGE_STYLE_UNSPECIFIED",
            "IMAGE",
            "AVATAR",
          },
          enumDescriptions = {
            "",
            "Square border.",
            "Circular border.",
          },
          type = "string",
        },
        imageUrl = {
          description = "The URL of the image in the card header.",
          type = "string",
        },
        subtitle = {
          description = "The subtitle of the card header.",
          type = "string",
        },
        title = {
          description = "The title must be specified. The header has a fixed height: if both a title and subtitle is specified, each will take up 1 line. If only the title is specified, it will take up both lines.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleChatV1ContextualAddOnMarkupCardSection = {
      description = "A section contains a collection of widgets that are rendered (vertically) in the order that they are specified. Across all platforms, cards have a narrow fixed width, so there is currently no need for layout properties (e.g. float).",
      id = "GoogleChatV1ContextualAddOnMarkupCardSection",
      properties = {
        header = {
          description = "The header of the section, text formatted supported.",
          type = "string",
        },
        widgets = {
          description = "A section must contain at least 1 widget.",
          items = {
            ["$ref"] = "GoogleChatV1WidgetMarkup",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleChatV1WidgetMarkup = {
      description = "A widget is a UI element that presents texts, images, etc.",
      id = "GoogleChatV1WidgetMarkup",
      properties = {
        buttons = {
          description = "A list of buttons. Buttons is also oneof data and only one of these fields should be set.",
          items = {
            ["$ref"] = "GoogleChatV1WidgetMarkupButton",
          },
          type = "array",
        },
        image = {
          ["$ref"] = "GoogleChatV1WidgetMarkupImage",
          description = "Display an image in this widget.",
        },
        keyValue = {
          ["$ref"] = "GoogleChatV1WidgetMarkupKeyValue",
          description = "Display a key value item in this widget.",
        },
        textParagraph = {
          ["$ref"] = "GoogleChatV1WidgetMarkupTextParagraph",
          description = "Display a text paragraph in this widget.",
        },
      },
      type = "object",
    },
    GoogleChatV1WidgetMarkupButton = {
      description = "A button. Can be a text button or an image button.",
      id = "GoogleChatV1WidgetMarkupButton",
      properties = {
        imageButton = {
          ["$ref"] = "GoogleChatV1WidgetMarkupImageButton",
          description = "A button with image and onclick action.",
        },
        textButton = {
          ["$ref"] = "GoogleChatV1WidgetMarkupTextButton",
          description = "A button with text and onclick action.",
        },
      },
      type = "object",
    },
    GoogleChatV1WidgetMarkupFormAction = {
      description = "A form action describes the behavior when the form is submitted. For example, an Apps Script can be invoked to handle the form.",
      id = "GoogleChatV1WidgetMarkupFormAction",
      properties = {
        actionMethodName = {
          description = "The method name is used to identify which part of the form triggered the form submission. This information is echoed back to the Chat app as part of the card click event. The same method name can be used for several elements that trigger a common behavior if desired.",
          type = "string",
        },
        parameters = {
          description = "List of action parameters.",
          items = {
            ["$ref"] = "GoogleChatV1WidgetMarkupFormActionActionParameter",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleChatV1WidgetMarkupFormActionActionParameter = {
      description = "List of string parameters to supply when the action method is invoked. For example, consider three snooze buttons: snooze now, snooze 1 day, snooze next week. You might use action method = snooze(), passing the snooze type and snooze time in the list of string parameters.",
      id = "GoogleChatV1WidgetMarkupFormActionActionParameter",
      properties = {
        key = {
          description = "The name of the parameter for the action script.",
          type = "string",
        },
        value = {
          description = "The value of the parameter.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleChatV1WidgetMarkupImage = {
      description = "An image that is specified by a URL and can have an onclick action.",
      id = "GoogleChatV1WidgetMarkupImage",
      properties = {
        aspectRatio = {
          description = "The aspect ratio of this image (width/height). This field allows clients to reserve the right height for the image while waiting for it to load. It's not meant to override the native aspect ratio of the image. If unset, the server fills it by prefetching the image.",
          format = "double",
          type = "number",
        },
        imageUrl = {
          description = "The URL of the image.",
          type = "string",
        },
        onClick = {
          ["$ref"] = "GoogleChatV1WidgetMarkupOnClick",
          description = "The onclick action.",
        },
      },
      type = "object",
    },
    GoogleChatV1WidgetMarkupImageButton = {
      description = "An image button with an onclick action.",
      id = "GoogleChatV1WidgetMarkupImageButton",
      properties = {
        icon = {
          description = "The icon specified by an enum that indices to an icon provided by Chat API.",
          enum = {
            "ICON_UNSPECIFIED",
            "AIRPLANE",
            "BOOKMARK",
            "BUS",
            "CAR",
            "CLOCK",
            "CONFIRMATION_NUMBER_ICON",
            "DOLLAR",
            "DESCRIPTION",
            "EMAIL",
            "EVENT_PERFORMER",
            "EVENT_SEAT",
            "FLIGHT_ARRIVAL",
            "FLIGHT_DEPARTURE",
            "HOTEL",
            "HOTEL_ROOM_TYPE",
            "INVITE",
            "MAP_PIN",
            "MEMBERSHIP",
            "MULTIPLE_PEOPLE",
            "OFFER",
            "PERSON",
            "PHONE",
            "RESTAURANT_ICON",
            "SHOPPING_CART",
            "STAR",
            "STORE",
            "TICKET",
            "TRAIN",
            "VIDEO_CAMERA",
            "VIDEO_PLAY",
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
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
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
        iconUrl = {
          description = "The icon specified by a URL.",
          type = "string",
        },
        name = {
          description = "The name of this image_button which will be used for accessibility. Default value will be provided if developers don't specify.",
          type = "string",
        },
        onClick = {
          ["$ref"] = "GoogleChatV1WidgetMarkupOnClick",
          description = "The onclick action.",
        },
      },
      type = "object",
    },
    GoogleChatV1WidgetMarkupKeyValue = {
      description = "A UI element contains a key (label) and a value (content). And this element may also contain some actions such as onclick button.",
      id = "GoogleChatV1WidgetMarkupKeyValue",
      properties = {
        bottomLabel = {
          description = "The text of the bottom label. Formatted text supported.",
          type = "string",
        },
        button = {
          ["$ref"] = "GoogleChatV1WidgetMarkupButton",
          description = "A button that can be clicked to trigger an action.",
        },
        content = {
          description = "The text of the content. Formatted text supported and always required.",
          type = "string",
        },
        contentMultiline = {
          description = "If the content should be multiline.",
          type = "boolean",
        },
        icon = {
          description = "An enum value that will be replaced by the Chat API with the corresponding icon image.",
          enum = {
            "ICON_UNSPECIFIED",
            "AIRPLANE",
            "BOOKMARK",
            "BUS",
            "CAR",
            "CLOCK",
            "CONFIRMATION_NUMBER_ICON",
            "DOLLAR",
            "DESCRIPTION",
            "EMAIL",
            "EVENT_PERFORMER",
            "EVENT_SEAT",
            "FLIGHT_ARRIVAL",
            "FLIGHT_DEPARTURE",
            "HOTEL",
            "HOTEL_ROOM_TYPE",
            "INVITE",
            "MAP_PIN",
            "MEMBERSHIP",
            "MULTIPLE_PEOPLE",
            "OFFER",
            "PERSON",
            "PHONE",
            "RESTAURANT_ICON",
            "SHOPPING_CART",
            "STAR",
            "STORE",
            "TICKET",
            "TRAIN",
            "VIDEO_CAMERA",
            "VIDEO_PLAY",
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
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
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
        iconUrl = {
          description = "The icon specified by a URL.",
          type = "string",
        },
        onClick = {
          ["$ref"] = "GoogleChatV1WidgetMarkupOnClick",
          description = "The onclick action. Only the top label, bottom label and content region are clickable.",
        },
        topLabel = {
          description = "The text of the top label. Formatted text supported.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleChatV1WidgetMarkupOnClick = {
      description = "An onclick action (e.g. open a link).",
      id = "GoogleChatV1WidgetMarkupOnClick",
      properties = {
        action = {
          ["$ref"] = "GoogleChatV1WidgetMarkupFormAction",
          description = "A form action will be triggered by this onclick if specified.",
        },
        openLink = {
          ["$ref"] = "GoogleChatV1WidgetMarkupOpenLink",
          description = "This onclick triggers an open link action if specified.",
        },
      },
      type = "object",
    },
    GoogleChatV1WidgetMarkupOpenLink = {
      description = "A link that opens a new window.",
      id = "GoogleChatV1WidgetMarkupOpenLink",
      properties = {
        url = {
          description = "The URL to open.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleChatV1WidgetMarkupTextButton = {
      description = "A button with text and onclick action.",
      id = "GoogleChatV1WidgetMarkupTextButton",
      properties = {
        onClick = {
          ["$ref"] = "GoogleChatV1WidgetMarkupOnClick",
          description = "The onclick action of the button.",
        },
        text = {
          description = "The text of the button.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleChatV1WidgetMarkupTextParagraph = {
      description = "A paragraph of text. Formatted text supported.",
      id = "GoogleChatV1WidgetMarkupTextParagraph",
      properties = {
        text = {
          type = "string",
        },
      },
      type = "object",
    },
    GoogleDocsMetadata = {
      description = "The corpus specific metadata for office-type documents, from Google Docs and other sources. This message is passed to the scorer and beyond. Next tag: 9",
      id = "GoogleDocsMetadata",
      properties = {
        aclInfo = {
          ["$ref"] = "AclInfo",
          description = "Contains number of users and groups which can access the document.",
        },
        documentType = {
          description = "The conceptual type (presentation, document, etc.) of this document.",
          enum = {
            "UNKNOWN",
            "DOCUMENT",
            "PRESENTATION",
            "SPREADSHEET",
            "PDF",
            "IMAGE",
            "BINARY_BLOB",
            "FUSION_TABLE",
            "FOLDER",
            "DRAWING",
            "VIDEO",
            "FORM",
            "DRAFT_SITE",
            "DRAFT_SITE_PAGE",
            "JAM",
            "SHORTCUT",
            "SCRIPT",
          },
          enumDescriptions = {
            "If the type is unknown or not represented in this enum.",
            "Writely, Word, etc.",
            "Presently, PowerPoint, etc.",
            "Trix, Excel, etc.",
            "File types for Gdrive objects are below.",
            "",
            "Fall-back for unknown Gdrive types.",
            "",
            "",
            "",
            "",
            "",
            "For Atari page and site drafts",
            "",
            "Jamboard Jams (go/jam)",
            "Drive Shortcuts (go/shortcuts)",
            "",
          },
          type = "string",
        },
        fileExtension = {
          description = "The file extension of the document. NOTE: As of October 2018 this field is not backfilled for old documents.",
          type = "string",
        },
        lastContentModifiedTimestamp = {
          description = "The last time this document was modified, in seconds since epoch. Only counts content modifications.",
          format = "int64",
          type = "string",
        },
        numSubscribers = {
          description = "Contains number of subscribers for the document.",
          format = "int32",
          type = "integer",
        },
        numViewers = {
          description = "Size of untruncated viewers list.",
          format = "int32",
          type = "integer",
        },
        resultInfo = {
          ["$ref"] = "GoogleDocsResultInfo",
          description = "Additional per-result information, akin to Gmail's SingleThreadResponse. Note: GWS no longer seems to use this field, but there's still one reference to it for Scribe, so we can't remove it.",
        },
        typeInfo = {
          ["$ref"] = "TypeInfo",
          description = "Contains additional information about the document depending on its type.",
        },
      },
      type = "object",
    },
    GoogleDocsResultInfo = {
      description = "A message containing information about a specific result. This information is passed to the scorer and beyond; in particular, GWS relies on it to format the result in the UI. Split from GoogleDocsMetadata in case we later want to reuse the message.",
      id = "GoogleDocsResultInfo",
      properties = {
        attachmentSha1 = {
          description = "The SHA1 hash of the object in Drive, if any.",
          type = "string",
        },
        cosmoId = {
          ["$ref"] = "Id",
          description = "The storage identifier for the object in Cosmo. This field is intended to used by Stratus/Moonshine integration only. It should not be exposed externally (please refer to encrypted_id for that purpose).",
        },
        cosmoNameSpace = {
          description = "For Cosmo objects, the Cosmo namespace the object was in. This allows downstream clients to identify whether a document was created in Writely or Kix, Presently or Punch, or whether it was uploaded from GDrive. See storage_cosmo.Id.NAME_SPACE for a list of all Cosmo name spaces.",
          format = "int32",
          type = "integer",
        },
        encryptedId = {
          description = "The encrypted (user-visible) id of this object. Knowing the id is sufficient to create a canonical URL for this document.",
          type = "string",
        },
        mimeType = {
          description = "The mimetype of the document.",
          type = "string",
        },
        shareScope = {
          ["$ref"] = "ShareScope",
          description = "The visibility indicator in the UI will be based upon this.",
        },
      },
      type = "object",
    },
    Grid = {
      id = "Grid",
      properties = {
        borderStyle = {
          ["$ref"] = "BorderStyle",
          description = "The border style to apply to each grid item.",
        },
        items = {
          description = "The items to display in the grid.",
          items = {
            ["$ref"] = "GridItem",
          },
          type = "array",
        },
        numColumns = {
          description = "The number of columns to display in the grid. Note that a default value will be used if this field is not specified, and that default value will be different depending on where the grid is shown (dialog vs companion).",
          format = "int32",
          type = "integer",
        },
        onClick = {
          ["$ref"] = "OnClick",
          description = "This callback will be reused by each individual GridItem, but with the item's identifier and index in the items list added to the callback's parameters.",
        },
        title = {
          description = "The text to display in the grid header.",
          type = "string",
        },
      },
      type = "object",
    },
    GridItem = {
      id = "GridItem",
      properties = {
        identifier = {
          description = "A user-specified identifier for this grid item. This identifier will be returned in the parent Grid's on_click callback's parameters.",
          type = "string",
        },
        image = {
          ["$ref"] = "ImageComponent",
        },
        layout = {
          enum = {
            "NOT_SET",
            "TEXT_BELOW",
            "TEXT_ABOVE",
          },
          enumDescriptions = {
            "",
            "The title and subtitle are shown below the grid item's image.",
            "The title and subtitle are shown above the grid item's image.",
          },
          type = "string",
        },
        subtitle = {
          type = "string",
        },
        textAlignment = {
          enum = {
            "HORIZONTAL_ALIGNMENT_UNSPECIFIED",
            "START",
            "CENTER",
            "END",
          },
          enumDescriptions = {
            "",
            "",
            "",
            "",
          },
          type = "string",
        },
        title = {
          description = "Text properties.",
          type = "string",
        },
      },
      type = "object",
    },
    GroupDetailsUpdatedMetadata = {
      id = "GroupDetailsUpdatedMetadata",
      properties = {
        newGroupDetails = {
          ["$ref"] = "AppsDynamiteSharedGroupDetails",
        },
        prevGroupDetails = {
          ["$ref"] = "AppsDynamiteSharedGroupDetails",
        },
      },
      type = "object",
    },
    GroupId = {
      description = "Id representing a group that could be a space, a chat, or a direct message space. Which ID is set here will determine which group",
      id = "GroupId",
      properties = {
        dmId = {
          ["$ref"] = "DmId",
          description = "Unique, immutable ID of the Direct Message Space",
        },
        spaceId = {
          ["$ref"] = "SpaceId",
          description = "Unique, immutable ID of the Space",
        },
      },
      type = "object",
    },
    GroupLinkSharingModificationEvent = {
      id = "GroupLinkSharingModificationEvent",
      properties = {
        newStatus = {
          enum = {
            "UNKNOWN_LINK_SHARING_STATUS",
            "LINK_SHARING_ON",
            "LINK_SHARING_OFF",
            "NOT_AVAILABLE",
          },
          enumDescriptions = {
            "",
            "Link sharing is turned on.",
            "Link sharing is turned off.",
            "Link sharing is not available for the conversation.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GroupRetentionSettingsUpdatedMetaData = {
      id = "GroupRetentionSettingsUpdatedMetaData",
      properties = {
        initiator = {
          ["$ref"] = "UserId",
          description = "The user who triggered the retention settings update",
        },
        retentionSettings = {
          ["$ref"] = "AppsDynamiteSharedRetentionSettings",
          description = "The updated space retention settings",
        },
      },
      type = "object",
    },
    GsuiteIntegrationMetadata = {
      description = "Annotation metadata for an GsuiteIntegration artifact.",
      id = "GsuiteIntegrationMetadata",
      properties = {
        activityFeedData = {
          ["$ref"] = "AppsDynamiteSharedActivityFeedAnnotationData",
        },
        assistantData = {
          ["$ref"] = "AppsDynamiteSharedAssistantAnnotationData",
        },
        calendarEventData = {
          ["$ref"] = "AppsDynamiteSharedCalendarEventAnnotationData",
        },
        callData = {
          ["$ref"] = "AppsDynamiteSharedCallAnnotationData",
          description = "Data used to render call artifacts.",
        },
        clientType = {
          enum = {
            "UNKNOWN_CLIENT_TYPE",
            "MEET",
            "TASKS",
            "CALENDAR_EVENT",
            "ASSISTANT",
            "ACTIVITY_FEED_SERVICE",
          },
          enumDescriptions = {
            "",
            "",
            "",
            "",
            "",
            "",
          },
          type = "string",
        },
        indexableTexts = {
          description = "A list of all strings that are to be indexed for this 1P chip. Each string in this list would be the contents of a single string field in the 1P chip. Eg. For Tasks[title = “hello world”, description = “good bye”]. If we want to index only the title, this would be set to [“hello world”]. If both title and description, then this would be [“hello world”, “good bye”]. Please make sure that the contents of this field is a subset of strings that are rendered as part of the 1P Chip.",
          items = {
            type = "string",
          },
          type = "array",
        },
        tasksData = {
          ["$ref"] = "AppsDynamiteSharedTasksAnnotationData",
        },
      },
      type = "object",
    },
    HangoutEvent = {
      id = "HangoutEvent",
      properties = {
        hangoutDurationSecs = {
          format = "int64",
          type = "string",
        },
        mediaType = {
          enum = {
            "AUDIO_VIDEO",
            "AUDIO_ONLY",
            "PUSH_TO_TALK",
          },
          enumDescriptions = {
            "",
            "",
            "A user has started a PTT broadcast. When receiving a notification with this HangoutMediaType, other users in the conversation will take different actions depending on their active clients: a) If there is a recent \"reasonable\" active client, the user will join hangout and play audio. b) If there is no \"reasonable\" active client an invite will be displayed on all clients.",
          },
          type = "string",
        },
        participantId = {
          items = {
            ["$ref"] = "StoredParticipantId",
          },
          type = "array",
        },
        type = {
          enum = {
            "START_HANGOUT",
            "JOIN_HANGOUT",
            "LEAVE_HANGOUT",
            "END_HANGOUT",
            "HANGOUT_COMING_SOON",
            "ONGOING_HANGOUT",
          },
          enumDescriptions = {
            "",
            "",
            "",
            "",
            "",
            "",
          },
          type = "string",
        },
      },
      type = "object",
    },
    HangoutVideoEventMetadata = {
      description = "A message representing the Hangout video start/end events in Babel",
      id = "HangoutVideoEventMetadata",
      properties = {
        hangoutVideoType = {
          enum = {
            "UNKNOWN_HANGOUT_VIDEO_EVENT_TYPE",
            "VIDEO_START",
            "VIDEO_END",
          },
          enumDescriptions = {
            "",
            "",
            "",
          },
          type = "string",
        },
      },
      type = "object",
    },
    HashtagData = {
      description = "Hashtag metadata, for HASHTAG segments. For a hashtag, the \"text\" field should contain the display text, and the search_text field should represent the topic being referenced, without the hash symbol; for example, we might have: text = \"#Google\" hashtag_data.search_text = \"Google\" Another example: text = \"#pikachu\" hashtag_data.search_text = \"Pokemon\" Both strings should be considered part of the searchable text. In go/sbe, both are indexed and searchable.",
      id = "HashtagData",
      properties = {
        searchText = {
          type = "string",
        },
      },
      type = "object",
    },
    History = {
      description = "The most recent history records associated with the item.",
      id = "History",
      properties = {
        record = {
          items = {
            ["$ref"] = "HistoryRecord",
          },
          type = "array",
        },
      },
      type = "object",
    },
    HistoryRecord = {
      id = "HistoryRecord",
      properties = {
        clientContext = {
          ["$ref"] = "ClientContext",
          description = "This will almost always be set, but there are corner cases in which the information is not available, and thus applications must handle its absence appropriately.",
        },
        filterUpdate = {
          ["$ref"] = "FilterUpdate",
        },
        imapUpdate = {
          ["$ref"] = "ImapUpdate",
        },
        labelUpdate = {
          ["$ref"] = "LabelUpdate",
        },
        prefUpdate = {
          ["$ref"] = "PrefUpdate",
        },
        recordId = {
          description = "Each HistoryRecord has a unique id. Ids are monotonically increasing, and not necessarily contiguous.",
          format = "uint64",
          type = "string",
        },
        threadUpdate = {
          ["$ref"] = "ThreadUpdate",
        },
        transactionContext = {
          ["$ref"] = "TransactionContext",
          description = "This will almost always be set, but there are corner cases in which the information is not available, and thus applications must handle its absence appropriately.",
        },
        txnDebugInfo = {
          ["$ref"] = "TransactionDebugInfo",
        },
        type = {
          enum = {
            "UNKNOWN",
            "INTERNAL",
            "MESSAGE_ADDED",
            "MESSAGE_DELETED",
            "LABEL_ADDED",
            "LABEL_REMOVED",
            "ATTRIBUTE_SET",
            "ATTRIBUTE_REMOVED",
            "THREAD_KEY_SET",
            "LABEL_CREATED",
            "LABEL_DELETED",
            "LABEL_RENAMED",
            "LABEL_UPDATED",
            "PREF_WRITTEN",
            "PREF_DELETED",
            "FILTER_CREATED",
            "FILTER_DELETED",
            "IMAP_UIDS_REASSIGN",
            "TOPIC_STATE_UPDATED",
            "TXN_DEBUG_INFO",
          },
          enumDescriptions = {
            "Represents a type that is deprecated or not known by the executing code. Even if Fusebox sends a HistoryRecord with Type not UNKNOWN, it may send Type values that are not yet defined on the client-side, in which case they will be appear as Type.UNKNOWN on the client.",
            "Represents a change internal to the Fusebox. HistoryRecords for Fusebox internal changes contribute to the user's version, which is defined as the latest HistoryRecord's record_id. INTERNAL HistoryRecords exist to allow a client to update its notion of the latest record_id it has processed, but do not necessarily contain any other information.",
            "ThreadUpdate:",
            "",
            "",
            "",
            "",
            "",
            "",
            "LabelUpdate:",
            "",
            "",
            "",
            "PrefUpdate:",
            "",
            "FilterUpdate:",
            "",
            "IMAP",
            "EAI",
            "TXN_DEBUG_INFO",
          },
          type = "string",
        },
      },
      type = "object",
    },
    HostAppActionMarkup = {
      description = "Actions handled by individual host apps.",
      id = "HostAppActionMarkup",
      properties = {
        calendarAction = {
          ["$ref"] = "CalendarClientActionMarkup",
          description = "Actions handled by Calendar.",
        },
        chatAction = {
          ["$ref"] = "ChatClientActionMarkup",
          description = "Actions handled by Chat.",
        },
        driveAction = {
          ["$ref"] = "DriveClientActionMarkup",
          description = "Actions handled by Drive.",
        },
        editorAction = {
          ["$ref"] = "EditorClientActionMarkup",
          description = "Actions handled by Docs, Sheets, or Slides.",
        },
        gmailAction = {
          ["$ref"] = "GmailClientActionMarkup",
          description = "Actions handled by Gmail.",
        },
        sheetsAction = {
          ["$ref"] = "SheetsClientActionMarkup",
          description = "Actions handled by Sheets.",
        },
      },
      type = "object",
    },
    HostProto = {
      description = "Represents a single host. Optionally, the MDB owner of the host can be specified.",
      id = "HostProto",
      properties = {
        hostName = {
          description = "Lower-case, fully qualified hostname.",
          type = "string",
        },
        hostOwner = {
          description = "If present, then any checks that compare this Principal to LOAS peer info must confirm the peer's machine owner is equal to 'host_owner'. If absent, then any peer machine owner is acceptable.",
          type = "string",
        },
      },
      type = "object",
    },
    HtmlOperatorOptions = {
      description = "Used to provide a search operator for html properties. This is optional. Search operators let users restrict the query to specific fields relevant to the type of item being searched.",
      id = "HtmlOperatorOptions",
      properties = {
        operatorName = {
          description = "Indicates the operator name required in the query in order to isolate the html property. For example, if operatorName is *subject* and the property's name is *subjectLine*, then queries like *subject:<value>* show results only where the value of the property named *subjectLine* matches *<value>*. By contrast, a search that uses the same *<value>* without an operator return all items where *<value>* matches the value of any html properties or text within the content field for the item. The operator name can only contain lowercase letters (a-z). The maximum length is 32 characters.",
          type = "string",
        },
      },
      type = "object",
    },
    HtmlPropertyOptions = {
      description = "The options for html properties.",
      id = "HtmlPropertyOptions",
      properties = {
        operatorOptions = {
          ["$ref"] = "HtmlOperatorOptions",
          description = "If set, describes how the property should be used as a search operator.",
        },
        retrievalImportance = {
          ["$ref"] = "RetrievalImportance",
          description = "Indicates the search quality importance of the tokens within the field when used for retrieval. Can only be set to DEFAULT or NONE.",
        },
      },
      type = "object",
    },
    HtmlValues = {
      description = "List of html values.",
      id = "HtmlValues",
      properties = {
        values = {
          description = "The maximum allowable length for html values is 2048 characters.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    IconImage = {
      id = "IconImage",
      properties = {
        altText = {
          description = "The alternative text of this icon_url which will be used for accessibility.",
          type = "string",
        },
        icon = {
          enum = {
            "NONE",
            "AIRPLANE",
            "BOOKMARK",
            "BUS",
            "CAR",
            "CLOCK",
            "CONFIRMATION_NUMBER_ICON",
            "DOLLAR",
            "DESCRIPTION",
            "EDIT",
            "EDIT_NOTE",
            "EMAIL",
            "EVENT_PERFORMER",
            "EVENT_SEAT",
            "FLIGHT_ARRIVAL",
            "FLIGHT_DEPARTURE",
            "HOTEL",
            "HOTEL_ROOM_TYPE",
            "INVITE",
            "MAP_PIN",
            "MEMBERSHIP",
            "MULTIPLE_PEOPLE",
            "OFFER",
            "OPEN_IN_NEW",
            "PERSON",
            "PHONE",
            "RESTAURANT_ICON",
            "SHOPPING_CART",
            "STAR",
            "STORE",
            "TICKET",
            "TRAIN",
            "VIDEO_CAMERA",
            "VIDEO_PLAY",
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
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "Add new items in alphabetical order. Next Available ID: 34",
          },
          type = "string",
        },
        iconUrl = {
          type = "string",
        },
        imageStyle = {
          description = "The image cropping style. Note that icons with a CIRCLE style are rendered larger than the default icon size.",
          enum = {
            "CROP_TYPE_NOT_SET",
            "SQUARE",
            "CIRCLE",
            "RECTANGLE_CUSTOM",
            "RECTANGLE_4_3",
          },
          enumDescriptions = {
            "No value specified.",
            "Applies a square crop.",
            "Applies a circular crop.",
            "Applies a rectangular crop with a custom aspect ratio.",
            "Applies a rectangular crop with a 4:3 aspect ratio.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    Id = {
      description = "Identifies a particular object, including both Users and DirEntries. This Id is unique across the entire server instance, such as the production or qa instance.",
      id = "Id",
      properties = {
        creatorUserId = {
          description = "The User account in which the DirEntry was originally created. If name_space==GAIA, then it's the gaia_id of the user this id is referring to.",
          format = "uint64",
          type = "string",
        },
        localId = {
          description = "The local identifier for the DirEntry (local to the creator's account). local_id + app_name is guaranteed to be unique within the creator account, but not across all User accounts. The string is case sensitive. Ignore if name_space==GAIA. NB For name_space==COSMO, all local_id's should be defined in google3/java/com/google/storage/cosmo/server/api/SpecialObjectIds.java as they have a special predefined meaning. See cosmo.client.CosmoIdFactory.createObjectId(long,String) for IMPORTANT recommendations when generating IDs.",
          type = "string",
        },
        nameSpace = {
          description = "The name space in which this id is unique (typically the application that created it). Values should be drawn from the above enum, but for experimentation, use values greater than 1000.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    Image = {
      id = "Image",
      properties = {
        altText = {
          description = "The alternative text of this image which will be used for accessibility.",
          type = "string",
        },
        aspectRatio = {
          description = "The aspect ratio of this image (width/height).",
          format = "double",
          type = "number",
        },
        imageUrl = {
          description = "Image url specified by developers. Server side, we will wrap with FIFE so client apps can configure size/cropping/etc.",
          type = "string",
        },
        onClick = {
          ["$ref"] = "OnClick",
        },
      },
      type = "object",
    },
    ImageButton = {
      id = "ImageButton",
      properties = {
        icon = {
          enum = {
            "NONE",
            "AIRPLANE",
            "BOOKMARK",
            "BUS",
            "CAR",
            "CLOCK",
            "CONFIRMATION_NUMBER_ICON",
            "DOLLAR",
            "DESCRIPTION",
            "EDIT",
            "EDIT_NOTE",
            "EMAIL",
            "EVENT_PERFORMER",
            "EVENT_SEAT",
            "FLIGHT_ARRIVAL",
            "FLIGHT_DEPARTURE",
            "HOTEL",
            "HOTEL_ROOM_TYPE",
            "INVITE",
            "MAP_PIN",
            "MEMBERSHIP",
            "MULTIPLE_PEOPLE",
            "OFFER",
            "OPEN_IN_NEW",
            "PERSON",
            "PHONE",
            "RESTAURANT_ICON",
            "SHOPPING_CART",
            "STAR",
            "STORE",
            "TICKET",
            "TRAIN",
            "VIDEO_CAMERA",
            "VIDEO_PLAY",
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
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "Add new items in alphabetical order. Next Available ID: 34",
          },
          type = "string",
        },
        iconUrl = {
          type = "string",
        },
        name = {
          type = "string",
        },
        onClick = {
          ["$ref"] = "OnClick",
        },
      },
      type = "object",
    },
    ImageComponent = {
      description = "NOTE: Through future refactoring work, this image component will eventually be used in the Image widget, and will likely replace the Icon proto as well.",
      id = "ImageComponent",
      properties = {
        altText = {
          type = "string",
        },
        borderStyle = {
          ["$ref"] = "BorderStyle",
        },
        cropStyle = {
          ["$ref"] = "ImageCropStyle",
        },
        imageUrl = {
          type = "string",
        },
      },
      type = "object",
    },
    ImageCropStyle = {
      description = "Represents a crop style that can be applied to an image.",
      id = "ImageCropStyle",
      properties = {
        aspectRatio = {
          description = "The aspect ratio to use if the crop type is RECTANGLE_CUSTOM.",
          format = "double",
          type = "number",
        },
        type = {
          description = "The crop type.",
          enum = {
            "CROP_TYPE_NOT_SET",
            "SQUARE",
            "CIRCLE",
            "RECTANGLE_CUSTOM",
            "RECTANGLE_4_3",
          },
          enumDescriptions = {
            "No value specified.",
            "Applies a square crop.",
            "Applies a circular crop.",
            "Applies a rectangular crop with a custom aspect ratio.",
            "Applies a rectangular crop with a 4:3 aspect ratio.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    ImageKeyValue = {
      description = "This is deprecated and please use KeyValue.",
      id = "ImageKeyValue",
      properties = {
        icon = {
          enum = {
            "NONE",
            "AIRPLANE",
            "BOOKMARK",
            "BUS",
            "CAR",
            "CLOCK",
            "CONFIRMATION_NUMBER_ICON",
            "DOLLAR",
            "DESCRIPTION",
            "EDIT",
            "EDIT_NOTE",
            "EMAIL",
            "EVENT_PERFORMER",
            "EVENT_SEAT",
            "FLIGHT_ARRIVAL",
            "FLIGHT_DEPARTURE",
            "HOTEL",
            "HOTEL_ROOM_TYPE",
            "INVITE",
            "MAP_PIN",
            "MEMBERSHIP",
            "MULTIPLE_PEOPLE",
            "OFFER",
            "OPEN_IN_NEW",
            "PERSON",
            "PHONE",
            "RESTAURANT_ICON",
            "SHOPPING_CART",
            "STAR",
            "STORE",
            "TICKET",
            "TRAIN",
            "VIDEO_CAMERA",
            "VIDEO_PLAY",
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
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "Add new items in alphabetical order. Next Available ID: 34",
          },
          type = "string",
        },
        iconUrl = {
          type = "string",
        },
        onClick = {
          ["$ref"] = "OnClick",
        },
        text = {
          type = "string",
        },
      },
      type = "object",
    },
    ImapSessionContext = {
      id = "ImapSessionContext",
      properties = {
        app = {
          enum = {
            "OTHER_APP",
            "CHROME",
            "FIREFOX",
            "MSIE",
            "SAFARI",
            "OPERA",
            "EDGE",
            "MSIE_COMPATIBILITY",
            "OTHER_BROWSER",
            "SAMSUNG_BROWSER",
            "UC_BROWSER",
            "ANDROID_BROWSER",
            "YANDEX_BROWSER",
            "SILK_BROWSER",
            "COC_COC_BROWSER",
            "MAX_BROWSER_APP_VALUE",
            "GMAIL_APP",
            "GMAIL_INBOX_APP",
            "ANDROID_EMAIL_APP",
            "SAMSUNG_MAIL_APP",
            "MOTO_EMAIL_APP",
            "BOXER_APP",
            "LIMILABS_MAIL_DLL",
            "BIS_APP",
            "OUTLOOK_MAIL_APP",
            "APPLE_NATIVE_APP",
            "CHROME_WEBVIEW_APP",
            "SAFARI_WEBVIEW_APP",
            "CHROME_SYNC_APP",
            "GSA_APP",
            "GMM_APP",
            "CALENDAR_APP",
            "PLUS_APP",
            "HANGOUTS_APP",
            "HANGOUTS_MEET_APP",
            "JAMBOARD_APP",
            "VOICE_APP",
            "PHOTOS_APP",
            "DRIVE_SYNC_APP",
            "DRIVE_APP",
            "DOCS_APP",
            "SHEETS_APP",
            "SLIDES_APP",
            "KEEP_APP",
            "WHATS_APP_IN_DRIVE_APP",
            "TRANSLATE_APP",
            "YOUTUBE_APP",
            "YOUTUBE_MUSIC_APP",
            "YOUTUBE_GAMING_APP",
            "YOUTUBE_KIDS_APP",
            "YOUTUBE_CAPTURE_APP",
            "YOUTUBE_CREATOR_APP",
            "YOUTUBE_GO_APP",
            "YOUTUBE_TV_APP",
            "YOUTUBE_VR_APP",
            "PLAY_APP",
            "PLAY_MUSIC_APP",
            "PLAY_BOOKS_APP",
            "PLAY_MOVIES_APP",
            "PLAY_NEWSSTAND_APP",
            "PLAY_GAMES_APP",
            "POKEMON_GO_APP",
            "ALLO_APP",
            "DUO_APP",
            "CLASSROOM_APP",
            "TRIPS_APP",
            "GOOGLE_PAY_APP",
            "WAZE_APP",
            "ASSISTANT_APP",
            "GBOARD_APP",
            "NEWS_APP",
            "HOME_APP",
            "EARTH_APP",
            "STREET_VIEW_APP",
            "TEZ_APP",
            "GOOGLE_ANALYTICS_APP",
            "ADSENSE_APP",
            "ADWORDS_APP",
            "EXPRESS_APP",
            "WEAR_APP",
            "GOOGLE_MY_BUSINESS_APP",
            "FAMILY_LINK_APP",
            "OPINION_REWARDS_APP",
            "WALLET_APP",
            "ARTS_AND_CULTURE_APP",
            "ANDROID_DEVICE_MANAGER_APP",
            "GOOGLE_GO_APP",
            "FILES_GO_APP",
            "DATALLY_APP",
            "WIFI_APP",
            "STADIA_APP",
            "BATTLESTAR_APP",
            "SMART_LOCK_APP",
            "LOGDOG_APP",
            "DEPRECATED_MAC_OSX_MAIL_APP",
            "DEPRECATED_IOS_MAIL_APP",
          },
          enumDescriptions = {
            "Unknown",
            "Browsers Google Chrome",
            "Mozilla Firefox",
            "Microsoft Internet Explorer",
            "Apple Safari",
            "Opera",
            "Tag #7 used to be CHROME_WEBVIEW, which was deprecated and replaced by CHROME_WEBVIEW_APP. When adding a new browser, skip #7 for safety. Microsoft Edge",
            "MSIE in Compatibility View. See b/22467241.",
            "Browser not otherwise specified",
            "Samsung browser on Android",
            "UC Browser",
            "Android's legacy default AOSP browser (distinct",
            "from customized OEM flavours). Yandex Browser",
            "Amazon Silk browser",
            "Popoular browser in Vietnam",
            "Tag for the maximum enum value that represents a browser. Enum values (strictly) between OTHER_APP and this value represent browsers. This should never appear in real data.",
            "Email apps Gmail",
            "Inbox by Gmail",
            "Native Android email app",
            "(replaced by Gmail in Lollipop) Samsung mail",
            "Motorola email app",
            "Boxer",
            "Mail.dll by Limilabs",
            "BlackBerry Internet Service",
            "Microsoft Outlook",
            "Apple apps (mail, contacts & calendar)",
            "Chrome Webview",
            "Safari Webview",
            "Chrome Sync",
            "Includes both Now and Search on GSA.",
            "Maps",
            "Calendar",
            "Google+",
            "Hangouts Classic",
            "Hangouts Meet",
            "Jamboard app (go/jamboard)",
            "Google Voice",
            "Photos",
            "Drive Sync",
            "Drive",
            "Docs",
            "Sheets",
            "Slides",
            "Keep",
            "WhatsApp in Drive",
            "Translate",
            "YouTube",
            "YouTube Music",
            "YouTube Gaming",
            "YouTube Kids",
            "YouTube Capture",
            "YouTube Creator Studio",
            "YouTube Go",
            "YouTube TV",
            "YouTube VR",
            "Google Play",
            "Google Play Music",
            "Google Play Books",
            "Google Play Movies & TV",
            "Google Play Newsstand",
            "Google Play Games",
            "Pokemon GO (uses Google to sign in)",
            "Allo",
            "Duo",
            "Google Classroom",
            "Google Trips",
            "Google Pay (formerly Android Pay)",
            "Waze",
            "Google Assistant standalone app. iOS only,",
            "since on Android OPA is integrated in GSA. Gboard - the Google Keyboard",
            "Google News & Weather",
            "Google Home app (rebranded from Chromecast app)",
            "Google Earth",
            "Google Street View",
            "Tez payment app for India (go/paisa)",
            "Google Analytics",
            "AdSense",
            "AdWords",
            "Google Express (formerly Shopping Express)",
            "Android Wear companion app",
            "Google My Business",
            "Google Family Link",
            "Google Opinion Rewards",
            "Google Wallet",
            "Google Arts & Culture",
            "Android Device Manager",
            "Google Go",
            "Files Go",
            "Datally",
            "Google Wifi (incl. OnHub)",
            "Stadia (go/stadia)",
            "Battlestar (go/battlestar)",
            "SmartLock",
            "Non-browser, non-mail, non-first-party apps LogDog (https://getlogdog.com/)",
            "Do not remove this fields - remvoing them caused issues in the past (see cl/180425348 for reference).",
            "",
          },
          type = "string",
        },
        deviceType = {
          description = "User agent information",
          enum = {
            "UNKNOWN",
            "PC",
            "MOBILE",
            "TABLET",
            "PORTABLE_MEDIA_PLAYER",
            "TV",
            "GAME_CONSOLE",
            "MEDIA_PLAYER",
            "SMART_SPEAKER",
            "SMART_DISPLAY",
            "CONNECTED_HOME_OTHER",
            "WEARABLE",
            "GLASS",
            "CAR",
            "VR_HEADSET",
          },
          enumDescriptions = {
            "Unknown device type.",
            "PCs (incl. Macs). Desktops, laptops and various niche form factors that typically run desktop-class OSes (all-in-ones, HTPCs etc.).",
            "Primarily used for phones, but also set as default for OSes that are predominantly for phones (Android, iOS etc.) when we can't determine otherwise.",
            "Tablets.",
            "Mobile devices which are not phones, but are capable of storing and playing digital media such as audio, images, and video files. Example: iPod.",
            "Smart TVs which interact with Google products without an external additional device. Includes TV sets which run Android TV directly. Refers to actual TV screens, rather than connected boxes or dongles.",
            "Devices whose primary purpose is playing games. Examples: Xbox, Playstation.",
            "Add-on devices (i.e. devices which require connecting to another device, such as screens/TVs/speakers) whose primary purpose is media consumption (excludes physical TV screens). Examples: Chromecast, Roku, Apple TV, Nexus Player.",
            "Examples: Google Home, Amazon Echo.",
            "Examples: Google Home Display (Quartz/Manhattan/Jasper/Dragonglass), Amazon Echo Spot, Amazon Echo Show.",
            "Other connected home devices which do not fit in any of the above categories; that is, neither media- or gaming-focused, nor primarily a voice-enabled speaker.",
            "Wearable devices such as smartwatches.",
            "Google Glass.",
            "Examples: Android Auto (Embedded mode, not mirrored from phone).",
            "Standalone VR headsets, such as the Lenovo Mirage Solo. Does not include phone-based VR (such as Daydream View or Gear VR) or PC/Console-based such as Oculus Rift, HTC Vive and PSVR; in such cases, the form factor may be PHONE, PC or GAME_CONSOLE as applicable.",
          },
          type = "string",
        },
        guidFingerprint = {
          description = "As agreed with Bond team, this holds the fingerprint of any \"aguid\" or \"guid\" provided by the ID command. The fingerprint should be calculated by fingerprint2011. Note that not all clients will provide aguid or guid through ID command.",
          format = "uint64",
          type = "string",
        },
        os = {
          enum = {
            "UNKNOWN_OS",
            "ANDROID_OS",
            "IOS_OS",
            "BLACKBERRY_OS",
            "WIN_PHONE_OS",
            "FIRE_OS",
            "MAX_MOBILE_OS_VALUE",
            "WINDOWS_OS",
            "LINUX_OS",
            "MAC_OS",
            "CHROME_OS",
            "PLAYSTATION_OS",
            "XBOX_OS",
            "TIZEN_OS",
            "APPLE_TV_OS",
            "KAI_OS",
            "ANDROID_THINGS_OS",
            "CAST_OS",
            "STADIA_OS",
          },
          enumDescriptions = {
            "",
            "Mobile operating systems (1-99).",
            "",
            "",
            "",
            "Amazon Fire OS (for Kindle Fire devices or Fire TV).",
            "Tag for the maximum enum value that represents a mobile OS. Enum values (strictly) between UNKNOWN_OS and this value represent mobile OSes. This should never appear in real data.",
            "PC operating systems.",
            "",
            "",
            "",
            "The OS powering Playstation consoles. Ignores OS changes across console generations.",
            "The Windows-derived OS used on Xbox consoles.",
            "Tizen OS, popular in Samsung TVs, watches and more.",
            "Apple tvOS (powering the Apple TV).",
            "KaiOS, a fork from Firefox OS that is between a full smartphone and a feature phone. Notably, it supports the Google Assistant. go/kaiosama",
            "Android optimized for IoT devices. go/things",
            "Cast family devices, including Chromecast, Google Home, and third-party speaker with integrated Assistant.",
            "Stadia on Cast devices. This is not truly an OS, but it's a temporary setting since Stadia uses a different sign-in flow (and is revoked differently) from Cast. See http://go/stadia-in-google-account. Do not use without discussing with id-devices-eng@.",
          },
          type = "string",
        },
        osVersion = {
          ["$ref"] = "OsVersion",
        },
        possiblyTrimmedModel = {
          ["$ref"] = "PossiblyTrimmedModel",
        },
      },
      type = "object",
    },
    ImapSyncDelete = {
      description = "Message delete history record extension that exports //imapsync/folder attribute of deleted messages which have ^is label.",
      id = "ImapSyncDelete",
      properties = {
        mappings = {
          ["$ref"] = "FolderAttribute",
          description = "Contains the value of //imapsync/folder attribute of deleted message.",
        },
        msgId = {
          format = "uint64",
          type = "string",
        },
      },
      type = "object",
    },
    ImapUidsReassign = {
      id = "ImapUidsReassign",
      properties = {
        labelId = {
          description = "Label",
          type = "string",
        },
        messageId = {
          description = "The message Ids",
          items = {
            format = "uint64",
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ImapUpdate = {
      description = "HistoryRecord for changes associated with IMAP, namely: IMAP_UIDS_REASSIGN",
      id = "ImapUpdate",
      properties = {
        imapUidsReassign = {
          ["$ref"] = "ImapUidsReassign",
        },
      },
      type = "object",
    },
    ImapsyncFolderAttributeFolderMessage = {
      id = "ImapsyncFolderAttributeFolderMessage",
      properties = {
        flags = {
          ["$ref"] = "ImapsyncFolderAttributeFolderMessageFlags",
          description = "Flags of the message. Represents unseen and flagged state.",
        },
        uid = {
          description = "UID of the message.",
          format = "uint64",
          type = "string",
        },
      },
      type = "object",
    },
    ImapsyncFolderAttributeFolderMessageFlags = {
      id = "ImapsyncFolderAttributeFolderMessageFlags",
      properties = {
        flagged = {
          description = "Flagged state of the message.",
          type = "boolean",
        },
        seen = {
          description = "Seen state of the message.",
          type = "boolean",
        },
      },
      type = "object",
    },
    IncomingWebhookChangedMetadata = {
      description = "Annotation metadata to display system messages for incoming webhook events. Next Tag: 7",
      id = "IncomingWebhookChangedMetadata",
      properties = {
        incomingWebhookName = {
          description = "The webhook name at the time of the change. Used in Spanner storage, BE API responses and FE API responses.",
          type = "string",
        },
        initiatorId = {
          ["$ref"] = "UserId",
          description = "The user id of the user whose action triggered this system message. Used in Spanner storage, BE API responses and FE API responses.",
        },
        initiatorProfile = {
          ["$ref"] = "User",
          description = "Complete profile when ListTopicsRequest FetchOptions.USER is set. Otherwise, only the id will be filled in. Used in FE API responses.",
        },
        obfuscatedIncomingWebhookId = {
          description = "The webhook id of the incoming webhook in question. This field should not be used to load webhook information dynamically and is only present for debugging purposes. Used in Spanner storage, BE API responses and FE API responses.",
          type = "string",
        },
        oldIncomingWebhookName = {
          description = "Only populated for UPDATED_NAME and UPDATED_NAME_AND_AVATAR events, where the webhook name was changed. Used in Spanner storage, BE API responses and FE API responses.",
          type = "string",
        },
        type = {
          description = "Used in Spanner storage, BE API responses and FE API responses.",
          enum = {
            "UNSPECIFIED",
            "ADDED",
            "UPDATED",
            "REMOVED",
            "UPDATED_NAME",
            "UPDATED_AVATAR",
            "UPDATED_NAME_AND_AVATAR",
          },
          enumDescriptions = {
            "",
            "",
            "TODO (b/154857280): remove UPDATED field.",
            "",
            "",
            "",
            "",
          },
          type = "string",
        },
      },
      type = "object",
    },
    IndexItemOptions = {
      id = "IndexItemOptions",
      properties = {
        allowUnknownGsuitePrincipals = {
          description = "Specifies if the index request should allow Google Workspace principals that do not exist or are deleted.",
          type = "boolean",
        },
      },
      type = "object",
    },
    IndexItemRequest = {
      id = "IndexItemRequest",
      properties = {
        connectorName = {
          description = "The name of connector making this call. Format: datasources/{source_id}/connectors/{ID}",
          type = "string",
        },
        debugOptions = {
          ["$ref"] = "DebugOptions",
          description = "Common debug options.",
        },
        indexItemOptions = {
          ["$ref"] = "IndexItemOptions",
        },
        item = {
          ["$ref"] = "Item",
          description = "The name of the item. Format: datasources/{source_id}/items/{item_id}",
        },
        mode = {
          description = "Required. The RequestMode for this request.",
          enum = {
            "UNSPECIFIED",
            "SYNCHRONOUS",
            "ASYNCHRONOUS",
          },
          enumDescriptions = {
            "The priority is not specified in the update request. Leaving priority unspecified results in an update failure.",
            "For real-time updates.",
            "For changes that are executed after the response is sent back to the caller.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    InitializeCustomerRequest = {
      description = "Request message for `InitializeCustomer` method.",
      id = "InitializeCustomerRequest",
      properties = {},
      type = "object",
    },
    InsertContent = {
      id = "InsertContent",
      properties = {
        content = {
          description = "The content to be inserted.",
          type = "string",
        },
        contentType = {
          description = "The type of inserted content.",
          enum = {
            "UNSPECIFIED_CONTENT_TYPE",
            "TEXT",
            "MUTABLE_HTML",
            "IMMUTABLE_HTML",
          },
          enumDescriptions = {
            "Default value when nothing is set for ContentType.",
            "Specifies that the content is in plain text.",
            "Specifies that the content is in HTML and is mutable (can be edited).",
            "Specifies that the content is in HTML and is immutable (cannot be edited).",
          },
          type = "string",
        },
        mimeType = {
          enum = {
            "UNSPECIFIED_EMAIL_MIME_TYPE",
            "PLAIN_TEXT",
            "HTML",
          },
          enumDescriptions = {
            "Default value when nothing is set for EmailMimeType.",
            "Specifies that the inserted content is in plain text.",
            "Specifies that the inserted content is in HTML.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    IntegerFacetingOptions = {
      description = "Used to specify integer faceting options.",
      id = "IntegerFacetingOptions",
      properties = {
        integerBuckets = {
          description = "Buckets for given integer values should be in strictly ascending order. For example, if values supplied are (1,5,10,100), the following facet buckets will be formed {<1, [1,5), [5-10), [10-100), >=100}.",
          items = {
            format = "int64",
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    IntegerOperatorOptions = {
      description = "Used to provide a search operator for integer properties. This is optional. Search operators let users restrict the query to specific fields relevant to the type of item being searched.",
      id = "IntegerOperatorOptions",
      properties = {
        greaterThanOperatorName = {
          description = "Indicates the operator name required in the query in order to isolate the integer property using the greater-than operator. For example, if greaterThanOperatorName is *priorityabove* and the property's name is *priorityVal*, then queries like *priorityabove:<value>* show results only where the value of the property named *priorityVal* is greater than *<value>*. The operator name can only contain lowercase letters (a-z). The maximum length is 32 characters.",
          type = "string",
        },
        lessThanOperatorName = {
          description = "Indicates the operator name required in the query in order to isolate the integer property using the less-than operator. For example, if lessThanOperatorName is *prioritybelow* and the property's name is *priorityVal*, then queries like *prioritybelow:<value>* show results only where the value of the property named *priorityVal* is less than *<value>*. The operator name can only contain lowercase letters (a-z). The maximum length is 32 characters.",
          type = "string",
        },
        operatorName = {
          description = "Indicates the operator name required in the query in order to isolate the integer property. For example, if operatorName is *priority* and the property's name is *priorityVal*, then queries like *priority:<value>* show results only where the value of the property named *priorityVal* matches *<value>*. By contrast, a search that uses the same *<value>* without an operator returns all items where *<value>* matches the value of any String properties or text within the content field for the item. The operator name can only contain lowercase letters (a-z). The maximum length is 32 characters.",
          type = "string",
        },
      },
      type = "object",
    },
    IntegerPropertyOptions = {
      description = "The options for integer properties.",
      id = "IntegerPropertyOptions",
      properties = {
        integerFacetingOptions = {
          ["$ref"] = "IntegerFacetingOptions",
          description = "If set, describes integer faceting options for the given integer property. The corresponding integer property should be marked isFacetable.",
        },
        maximumValue = {
          description = "The maximum value of the property. The minimum and maximum values for the property are used to rank results according to the ordered ranking. Indexing requests with values greater than the maximum are accepted and ranked with the same weight as items indexed with the maximum value.",
          format = "int64",
          type = "string",
        },
        minimumValue = {
          description = "The minimum value of the property. The minimum and maximum values for the property are used to rank results according to the ordered ranking. Indexing requests with values less than the minimum are accepted and ranked with the same weight as items indexed with the minimum value.",
          format = "int64",
          type = "string",
        },
        operatorOptions = {
          ["$ref"] = "IntegerOperatorOptions",
          description = "If set, describes how the integer should be used as a search operator.",
        },
        orderedRanking = {
          description = "Used to specify the ordered ranking for the integer. Can only be used if isRepeatable is false.",
          enum = {
            "NO_ORDER",
            "ASCENDING",
            "DESCENDING",
          },
          enumDescriptions = {
            "There is no ranking order for the property. Results are not adjusted by this property's value.",
            "This property is ranked in ascending order. Lower values indicate lower ranking.",
            "This property is ranked in descending order. Lower values indicate higher ranking.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    IntegerValues = {
      description = "List of integer values.",
      id = "IntegerValues",
      properties = {
        values = {
          items = {
            format = "int64",
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    IntegrationConfigMutation = {
      id = "IntegrationConfigMutation",
      properties = {
        addApp = {
          ["$ref"] = "AppId",
          description = "Add an app using its identifier.",
        },
        addPinnedItem = {
          ["$ref"] = "PinnedItemId",
          description = "Add a pinned tab using its identifier.",
        },
        removeApp = {
          ["$ref"] = "AppId",
          description = "Remove an active app using its identifier.",
        },
        removePinnedItem = {
          ["$ref"] = "PinnedItemId",
          description = "Remove an active pinned tab using its identifier.",
        },
      },
      type = "object",
    },
    IntegrationConfigUpdatedMetadata = {
      description = "Annotation metadata to display system message for integration config updated event. This metadata is stored in spanner, and can be dispatched to clients without any field modification or transformation.",
      id = "IntegrationConfigUpdatedMetadata",
      properties = {
        initiatorId = {
          ["$ref"] = "UserId",
          description = "The user whose action triggered this system message.",
        },
        mutations = {
          description = "A list of updates applied on the integration config.",
          items = {
            ["$ref"] = "IntegrationConfigMutation",
          },
          type = "array",
        },
      },
      type = "object",
    },
    Interaction = {
      description = "Represents an interaction between a user and an item.",
      id = "Interaction",
      properties = {
        interactionTime = {
          description = "The time when the user acted on the item. If multiple actions of the same type exist for a single user, only the most recent action is recorded.",
          format = "google-datetime",
          type = "string",
        },
        principal = {
          ["$ref"] = "Principal",
          description = "The user that acted on the item.",
        },
        type = {
          enum = {
            "UNSPECIFIED",
            "VIEW",
            "EDIT",
          },
          enumDescriptions = {
            "Invalid value.",
            "This interaction indicates the user viewed the item.",
            "This interaction indicates the user edited the item.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    InviteAcceptedEvent = {
      id = "InviteAcceptedEvent",
      properties = {
        participantId = {
          items = {
            ["$ref"] = "StoredParticipantId",
          },
          type = "array",
        },
      },
      type = "object",
    },
    InviteeInfo = {
      description = "Invitee information from a Dynamite invitation. See go/dynamite-invitee-mgmt.",
      id = "InviteeInfo",
      properties = {
        email = {
          description = "Email as typed by the user when invited to Room or DM. This value will be canonicalized and hashed before retained in storage.",
          type = "string",
        },
        userId = {
          ["$ref"] = "UserId",
          description = "Unique, immutable ID of the User.",
        },
      },
      type = "object",
    },
    Item = {
      description = "Represents a single object that is an item in the search index, such as a file, folder, or a database record.",
      id = "Item",
      properties = {
        acl = {
          ["$ref"] = "ItemAcl",
          description = "Access control list for this item.",
        },
        content = {
          ["$ref"] = "ItemContent",
          description = "Item content to be indexed and made text searchable.",
        },
        itemType = {
          description = "The type for this item.",
          enum = {
            "UNSPECIFIED",
            "CONTENT_ITEM",
            "CONTAINER_ITEM",
            "VIRTUAL_CONTAINER_ITEM",
          },
          enumDescriptions = {
            "",
            "An item that is indexed for the only purpose of serving information. These items cannot be referred in containerName or inheritAclFrom fields.",
            "An item that gets indexed and whose purpose is to supply other items with ACLs and/or contain other items.",
            "An item that does not get indexed, but otherwise has the same purpose as CONTAINER_ITEM.",
          },
          type = "string",
        },
        metadata = {
          ["$ref"] = "ItemMetadata",
          description = "The metadata information.",
        },
        name = {
          description = "The name of the Item. Format: datasources/{source_id}/items/{item_id} This is a required field. The maximum length is 1536 characters.",
          type = "string",
        },
        payload = {
          description = "Additional state connector can store for this item. The maximum length is 10000 bytes.",
          format = "byte",
          type = "string",
        },
        queue = {
          description = "Queue this item belongs to. The maximum length is 100 characters.",
          type = "string",
        },
        status = {
          ["$ref"] = "ItemStatus",
          description = "Status of the item. Output only field.",
        },
        structuredData = {
          ["$ref"] = "ItemStructuredData",
          description = "The structured data for the item that should conform to a registered object definition in the schema for the data source.",
        },
        version = {
          description = "Required. The indexing system stores the version from the datasource as a byte string and compares the Item version in the index to the version of the queued Item using lexical ordering. Cloud Search Indexing won't index or delete any queued item with a version value that is less than or equal to the version of the currently indexed item. The maximum length for this field is 1024 bytes. For information on how item version affects the deletion process, refer to [Handle revisions after manual deletes](https://developers.google.com/cloud-search/docs/guides/operations).",
          format = "byte",
          type = "string",
        },
      },
      type = "object",
    },
    ItemAcl = {
      description = "Access control list information for the item. For more information see [Map ACLs](https://developers.google.com/cloud-search/docs/guides/acls).",
      id = "ItemAcl",
      properties = {
        aclInheritanceType = {
          description = "Sets the type of access rules to apply when an item inherits its ACL from a parent. This should always be set in tandem with the inheritAclFrom field. Also, when the inheritAclFrom field is set, this field should be set to a valid AclInheritanceType.",
          enum = {
            "NOT_APPLICABLE",
            "CHILD_OVERRIDE",
            "PARENT_OVERRIDE",
            "BOTH_PERMIT",
          },
          enumDescriptions = {
            "The default value when this item does not inherit an ACL. Use NOT_APPLICABLE when inheritAclFrom is empty. An item without ACL inheritance can still have ACLs supplied by its own readers and deniedReaders fields.",
            "During an authorization conflict, the ACL of the child item determines its read access.",
            "During an authorization conflict, the ACL of the parent item specified in the inheritAclFrom field determines read access.",
            "Access is granted only if this item and the parent item specified in the inheritAclFrom field both permit read access.",
          },
          type = "string",
        },
        deniedReaders = {
          description = "List of principals who are explicitly denied access to the item in search results. While principals are denied access by default, use denied readers to handle exceptions and override the list allowed readers. The maximum number of elements is 100.",
          items = {
            ["$ref"] = "Principal",
          },
          type = "array",
        },
        inheritAclFrom = {
          description = "The name of the item to inherit the Access Permission List (ACL) from. Note: ACL inheritance *only* provides access permissions to child items and does not define structural relationships, nor does it provide convenient ways to delete large groups of items. Deleting an ACL parent from the index only alters the access permissions of child items that reference the parent in the inheritAclFrom field. The item is still in the index, but may not visible in search results. By contrast, deletion of a container item also deletes all items that reference the container via the containerName field. The maximum length for this field is 1536 characters.",
          type = "string",
        },
        owners = {
          description = "Optional. List of owners for the item. This field has no bearing on document access permissions. It does, however, offer a slight ranking boosts items where the querying user is an owner. The maximum number of elements is 5.",
          items = {
            ["$ref"] = "Principal",
          },
          type = "array",
        },
        readers = {
          description = "List of principals who are allowed to see the item in search results. Optional if inheriting permissions from another item or if the item is not intended to be visible, such as virtual containers. The maximum number of elements is 1000.",
          items = {
            ["$ref"] = "Principal",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ItemContent = {
      description = "Content of an item to be indexed and surfaced by Cloud Search. Only UTF-8 encoded strings are allowed as inlineContent. If the content is uploaded and not binary, it must be UTF-8 encoded.",
      id = "ItemContent",
      properties = {
        contentDataRef = {
          ["$ref"] = "UploadItemRef",
          description = "Upload reference ID of a previously uploaded content via write method.",
        },
        contentFormat = {
          enum = {
            "UNSPECIFIED",
            "HTML",
            "TEXT",
            "RAW",
          },
          enumDescriptions = {
            "Invalid value.",
            "contentFormat is HTML.",
            "contentFormat is free text.",
            "contentFormat is raw bytes.",
          },
          type = "string",
        },
        hash = {
          description = "Hashing info calculated and provided by the API client for content. Can be used with the items.push method to calculate modified state. The maximum length is 2048 characters.",
          type = "string",
        },
        inlineContent = {
          description = "Content that is supplied inlined within the update method. The maximum length is 102400 bytes (100 KiB).",
          format = "byte",
          type = "string",
        },
      },
      type = "object",
    },
    ItemCountByStatus = {
      id = "ItemCountByStatus",
      properties = {
        count = {
          description = "Number of items matching the status code.",
          format = "int64",
          type = "string",
        },
        indexedItemsCount = {
          description = "Number of items matching the status code for which billing is done. This excludes virtual container items from the total count. This count would not be applicable for items with ERROR or NEW_ITEM status code.",
          format = "int64",
          type = "string",
        },
        statusCode = {
          description = "Status of the items.",
          enum = {
            "CODE_UNSPECIFIED",
            "ERROR",
            "MODIFIED",
            "NEW_ITEM",
            "ACCEPTED",
          },
          enumDescriptions = {
            "Input-only value. Used with Items.list to list all items in the queue, regardless of status.",
            "Error encountered by Cloud Search while processing this item. Details of the error are in repositoryError.",
            "Item has been modified in the repository, and is out of date with the version previously accepted into Cloud Search.",
            "Item is known to exist in the repository, but is not yet accepted by Cloud Search. An item can be in this state when Items.push has been called for an item of this name that did not exist previously.",
            "API has accepted the up-to-date data of this item.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    ItemMetadata = {
      description = "Available metadata fields for the item.",
      id = "ItemMetadata",
      properties = {
        containerName = {
          description = "The name of the container for this item. Deletion of the container item leads to automatic deletion of this item. Note: ACLs are not inherited from a container item. To provide ACL inheritance for an item, use the inheritAclFrom field. The maximum length is 1536 characters.",
          type = "string",
        },
        contentLanguage = {
          description = "The BCP-47 language code for the item, such as \"en-US\" or \"sr-Latn\". For more information, see http://www.unicode.org/reports/tr35/#Unicode_locale_identifier. The maximum length is 32 characters.",
          type = "string",
        },
        contextAttributes = {
          description = "A set of named attributes associated with the item. This can be used for influencing the ranking of the item based on the context in the request. The maximum number of elements is 10.",
          items = {
            ["$ref"] = "ContextAttribute",
          },
          type = "array",
        },
        createTime = {
          description = "The time when the item was created in the source repository.",
          format = "google-datetime",
          type = "string",
        },
        hash = {
          description = "Hashing value provided by the API caller. This can be used with the items.push method to calculate modified state. The maximum length is 2048 characters.",
          type = "string",
        },
        interactions = {
          description = "A list of interactions for the item. Interactions are used to improve Search quality, but are not exposed to end users. The maximum number of elements is 1000.",
          items = {
            ["$ref"] = "Interaction",
          },
          type = "array",
        },
        keywords = {
          description = "Additional keywords or phrases that should match the item. Used internally for user generated content. The maximum number of elements is 100. The maximum length is 8192 characters.",
          items = {
            type = "string",
          },
          type = "array",
        },
        mimeType = {
          description = "The original mime-type of ItemContent.content in the source repository. The maximum length is 256 characters.",
          type = "string",
        },
        objectType = {
          description = "The type of the item. This should correspond to the name of an object definition in the schema registered for the data source. For example, if the schema for the data source contains an object definition with name 'document', then item indexing requests for objects of that type should set objectType to 'document'. The maximum length is 256 characters.",
          type = "string",
        },
        searchQualityMetadata = {
          ["$ref"] = "SearchQualityMetadata",
          description = "Additional search quality metadata of the item",
        },
        sourceRepositoryUrl = {
          description = "Link to the source repository serving the data. Seach results apply this link to the title. Whitespace or special characters may cause Cloud Seach result links to trigger a redirect notice; to avoid this, encode the URL. The maximum length is 2048 characters.",
          type = "string",
        },
        title = {
          description = "The title of the item. If given, this will be the displayed title of the Search result. The maximum length is 2048 characters.",
          type = "string",
        },
        updateTime = {
          description = "The time when the item was last modified in the source repository.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    ItemParts = {
      description = "Container for type-specific extensions of an Item. This protobuf is defined in a separate file to allow types to reference/extend the message without depending on other fusebox protobufs. See items.proto.",
      id = "ItemParts",
      properties = {},
      type = "object",
    },
    ItemStatus = {
      description = "This contains item's status and any errors.",
      id = "ItemStatus",
      properties = {
        code = {
          description = "Status code.",
          enum = {
            "CODE_UNSPECIFIED",
            "ERROR",
            "MODIFIED",
            "NEW_ITEM",
            "ACCEPTED",
          },
          enumDescriptions = {
            "Input-only value. Used with Items.list to list all items in the queue, regardless of status.",
            "Error encountered by Cloud Search while processing this item. Details of the error are in repositoryError.",
            "Item has been modified in the repository, and is out of date with the version previously accepted into Cloud Search.",
            "Item is known to exist in the repository, but is not yet accepted by Cloud Search. An item can be in this state when Items.push has been called for an item of this name that did not exist previously.",
            "API has accepted the up-to-date data of this item.",
          },
          type = "string",
        },
        processingErrors = {
          description = "Error details in case the item is in ERROR state.",
          items = {
            ["$ref"] = "ProcessingError",
          },
          type = "array",
        },
        repositoryErrors = {
          description = "Repository error reported by connector.",
          items = {
            ["$ref"] = "RepositoryError",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ItemStructuredData = {
      description = "Available structured data fields for the item.",
      id = "ItemStructuredData",
      properties = {
        hash = {
          description = "Hashing value provided by the API caller. This can be used with the items.push method to calculate modified state. The maximum length is 2048 characters.",
          type = "string",
        },
        object = {
          ["$ref"] = "StructuredDataObject",
          description = "The structured data object that should conform to a registered object definition in the schema for the data source.",
        },
      },
      type = "object",
    },
    ItemThread = {
      description = "An ItemThread is an ordered list of Items. An ItemThread corresponds to a \"conversation\" in the context of mail. An Item belongs to exactly one ItemThread.",
      id = "ItemThread",
      properties = {
        clusterInfo = {
          ["$ref"] = "ClusterInfo",
        },
        item = {
          description = "The Items in the ItemThread. In the context of a search, the list of Items may be a subset of those that logically belong to the ItemThread. The details of which items are included are available in the ItemThreadView returned in the overall rpc response.",
          items = {
            ["$ref"] = "FuseboxItem",
          },
          type = "array",
        },
        lastItemId = {
          description = "The server id of the last item returned in the ItemThread. This can be deduced from the [item] list but is provided for convenience. When manually constructing an ItemThreadViewSpec to perform operations on the ItemThread, this value can be used as the [high_item_id_watermark].",
          format = "uint64",
          type = "string",
        },
        matchInfo = {
          ["$ref"] = "FuseboxItemThreadMatchInfo",
        },
        snippet = {
          description = "A snippet summarizing the thread. This field is only populated for searches.",
          type = "string",
        },
        threadKey = {
          ["$ref"] = "MultiKey",
          description = "The MultiKey that identifies this thread. This value never changes, i.e. remains constant across modifications to the thread, including addition, relabeling, or deletion of contained Items. As such, the thread key may not necessarily correspond to the key of an contained Item. Legacy note: The \"server_id\" of the thread key is equivalent to the notion of the \"original thread id\" in the CSS API.",
        },
        threadLocator = {
          description = "A base64 encoded and encrypted string generated from the Gaia Id and the thread id. Used to generate the permalink for this thread, exposed from Gmail API.",
          type = "string",
        },
        topicState = {
          ["$ref"] = "TopicState",
          description = "Next available id : 10",
        },
        version = {
          description = "The latest history operation id that resulted in a mutation of any item in the thread.",
          format = "uint64",
          type = "string",
        },
      },
      type = "object",
    },
    JobsettedServerSpec = {
      description = "Identifies a jobsetted server as a target for Trigger dispatch.",
      id = "JobsettedServerSpec",
      properties = {
        portName = {
          description = "E.g. \"gateway\", \"stubby\" etc. Leave unset to use the default unnamed port.",
          type = "string",
        },
        serverName = {
          description = "E.g. \"satellite-server\", \"bigtop-sync\", etc.",
          type = "string",
        },
      },
      type = "object",
    },
    KeyValue = {
      id = "KeyValue",
      properties = {
        bottomLabel = {
          description = "Formatted text supported.",
          type = "string",
        },
        button = {
          ["$ref"] = "Button",
        },
        content = {
          description = "Formatted text supported and always required.",
          type = "string",
        },
        contentMultiline = {
          type = "boolean",
        },
        endIcon = {
          ["$ref"] = "IconImage",
        },
        icon = {
          enum = {
            "NONE",
            "AIRPLANE",
            "BOOKMARK",
            "BUS",
            "CAR",
            "CLOCK",
            "CONFIRMATION_NUMBER_ICON",
            "DOLLAR",
            "DESCRIPTION",
            "EDIT",
            "EDIT_NOTE",
            "EMAIL",
            "EVENT_PERFORMER",
            "EVENT_SEAT",
            "FLIGHT_ARRIVAL",
            "FLIGHT_DEPARTURE",
            "HOTEL",
            "HOTEL_ROOM_TYPE",
            "INVITE",
            "MAP_PIN",
            "MEMBERSHIP",
            "MULTIPLE_PEOPLE",
            "OFFER",
            "OPEN_IN_NEW",
            "PERSON",
            "PHONE",
            "RESTAURANT_ICON",
            "SHOPPING_CART",
            "STAR",
            "STORE",
            "TICKET",
            "TRAIN",
            "VIDEO_CAMERA",
            "VIDEO_PLAY",
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
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "Add new items in alphabetical order. Next Available ID: 34",
          },
          type = "string",
        },
        iconAltText = {
          description = "The alternative text of this icon_url which will be used for accessibility.",
          type = "string",
        },
        iconUrl = {
          type = "string",
        },
        imageStyle = {
          enum = {
            "CROP_TYPE_NOT_SET",
            "SQUARE",
            "CIRCLE",
            "RECTANGLE_CUSTOM",
            "RECTANGLE_4_3",
          },
          enumDescriptions = {
            "No value specified.",
            "Applies a square crop.",
            "Applies a circular crop.",
            "Applies a rectangular crop with a custom aspect ratio.",
            "Applies a rectangular crop with a 4:3 aspect ratio.",
          },
          type = "string",
        },
        onClick = {
          ["$ref"] = "OnClick",
          description = "Only the top/bottom label + content region is clickable.",
        },
        startIcon = {
          ["$ref"] = "IconImage",
          description = "The optional icon to display before the text content.",
        },
        switchWidget = {
          ["$ref"] = "SwitchWidget",
        },
        topLabel = {
          description = "Formatted text supported.",
          type = "string",
        },
      },
      type = "object",
    },
    LabelAdded = {
      description = "A label was added to some (subset of the) messages in this thread.",
      id = "LabelAdded",
      properties = {
        labelId = {
          type = "string",
        },
        labelName = {
          type = "string",
        },
        messageKeys = {
          items = {
            ["$ref"] = "MultiKey",
          },
          type = "array",
        },
        syncId = {
          format = "uint32",
          type = "integer",
        },
      },
      type = "object",
    },
    LabelCreated = {
      description = "A label was created.",
      id = "LabelCreated",
      properties = {},
      type = "object",
    },
    LabelDeleted = {
      description = "A label was deleted.",
      id = "LabelDeleted",
      properties = {},
      type = "object",
    },
    LabelRemoved = {
      description = "A label was removed from some (subset of the) messages in this thread.",
      id = "LabelRemoved",
      properties = {
        labelId = {
          type = "string",
        },
        labelName = {
          type = "string",
        },
        messageKeys = {
          items = {
            ["$ref"] = "MultiKey",
          },
          type = "array",
        },
        syncId = {
          format = "uint32",
          type = "integer",
        },
      },
      type = "object",
    },
    LabelRenamed = {
      description = "A label was renamed.",
      id = "LabelRenamed",
      properties = {
        oldCanonicalName = {
          type = "string",
        },
      },
      type = "object",
    },
    LabelUpdate = {
      description = "HistoryRecord for changes associated with a label, namely: LABEL_CREATED LABEL_DELETED LABEL_RENAMED LABEL_UPDATED",
      id = "LabelUpdate",
      properties = {
        canonicalName = {
          type = "string",
        },
        labelCreated = {
          ["$ref"] = "LabelCreated",
        },
        labelDeleted = {
          ["$ref"] = "LabelDeleted",
        },
        labelId = {
          type = "string",
        },
        labelRenamed = {
          ["$ref"] = "LabelRenamed",
        },
        labelUpdated = {
          ["$ref"] = "LabelUpdated",
        },
        syncId = {
          format = "uint32",
          type = "integer",
        },
      },
      type = "object",
    },
    LabelUpdated = {
      description = "A label pref was updated outside of a rename, create, or delete.",
      id = "LabelUpdated",
      properties = {},
      type = "object",
    },
    Labels = {
      id = "Labels",
      properties = {
        displayName = {
          description = "The display name of the labels. This is populated (instead of the id) when the request fetch_spec has LABEL_DISPLAY_NAMES.",
          items = {
            type = "string",
          },
          type = "array",
        },
        id = {
          description = "The ids of the labels attached to the Item, e.g. \"^i\", \"^x_1\"",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    LanguageConfig = {
      description = "The language configuration for the session.",
      id = "LanguageConfig",
      properties = {
        spokenLanguages = {
          description = "The spoken language(s) in BCP47 language code.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    LdapGroupProto = {
      id = "LdapGroupProto",
      properties = {
        groupName = {
          type = "string",
        },
      },
      type = "object",
    },
    LdapUserProto = {
      id = "LdapUserProto",
      properties = {
        userName = {
          type = "string",
        },
      },
      type = "object",
    },
    LegacyUploadMetadata = {
      description = "The original UploadMetadata that this DriveMetadata was converted from.",
      id = "LegacyUploadMetadata",
      properties = {
        legacyUniqueId = {
          description = "A unique ID generated from legacy UploadMetadata. This is used for interopping URLs after uploading blob to shared drive. Links in Classic might break without this. go/drive-file-attachment-interop-from-dynamite.",
          type = "string",
        },
        uploadMetadata = {
          ["$ref"] = "UploadMetadata",
          description = "The blob in this UploadMetadata has been uploaded to shared drive. This UploadMetadata is no longer attached to a message. go/shared-drive-data-migration.",
        },
      },
      type = "object",
    },
    LinkData = {
      description = "Link metadata, for LINK segments. Anchor text should be stored in the \"text\" field of the Segment, which can also serve as a fallback.",
      id = "LinkData",
      properties = {
        attachment = {
          ["$ref"] = "SocialCommonAttachmentAttachment",
          description = "An Attachment represents the structured entity to which we are linking. It contains an Embed (apps/tacotown/proto/embeds/embed_client.proto) with fields specific to the appropriate type of linked entity. For example, if we are linking to a photo album, the Embed may include the album ID and gaia ID of the creator. Clients that understand the Embed type within the Attachment may construct and/or decorate their link appropriately e.g. to make use of type-specific functionality or first-party integrations. The link_target and (if appropriate) display_url fields must still be set even when an Attachment is present, so that clients who do not know how to interpret the Attachment can fall back to those fields, and render the Segment as an ordinary web link. N.B. Even when an Attachment is present, the intention of a \"LINK\" Segment is for the Segment to be presented inline with the rest of the text of a post or comment, with a clickable link or other UI suitable for inlining (though the client may modify the UI based on Attachment data, e.g. to add appropriate hovers, icons, etc.). When an entity is intended to be rendered separately from the main body of the post/comment, a separate Attachment proto can be added outside the set of Segments. N.B. Within the Attachment, fields of EmbedClientItem have their own visibility annotations, which should be enforced separately from Segment visibility annotations. See: apps/tacotown/proto/embeds/embed_annotations.proto",
        },
        attachmentRenderHint = {
          description = "The hint to use when rendering the associated attachment. Ignored if there is no associated attachment.",
          enum = {
            "ATTACHMENT_RENDER_HINT_UNKNOWN",
            "ATTACHMENT_RENDER_HINT_AFTER",
            "ATTACHMENT_RENDER_HINT_INTERLEAVED",
          },
          enumDescriptions = {
            "No rendering hint; should not be used (equivalent to having no hint)",
            "Render any associated attachment at the end of the block, after all sibling Segments. Leave the link in place in the text and render it normally as well.",
            "Render any associated attachment inline in the text in place of the link text, forcing a line break before and after the attachment so the text and the attachment are \"interleaved\". If this is not possible, render as if AFTER.",
          },
          type = "string",
        },
        displayUrl = {
          description = "If we wish to show the user a different (e.g. shortened) version of the URL for display purposes, then that version should be set here. If this field isn't set, link_target will be used for both purposes.",
          type = "string",
        },
        linkTarget = {
          description = "link_target is the URL to navigate to when clicked. This could be the original URL, or a URL signed by the GWS URL signing service.",
          type = "string",
        },
        linkType = {
          description = "LinkType is an optional field that provides additional information regarding link target. For example, link type can be identified as the SELF_LINK when the request was executed from the same link as the link target.",
          enum = {
            "UNKNOWN_LINK_TYPE",
            "SELF_LINK",
          },
          enumDescriptions = {
            "No link type specified.",
            "This indicates that the link target points to the same object related to this segment. Example: A YouTube link with text=\"0.07\" and link_target: \"https://www.youtube.com/watch?v=leHVmSqd4_w&t=0m07s\" points to the same YouTube video where this segment appears. See http://go/ignore-badwords-filtering-for-selflink for adding link_type design document.",
          },
          type = "string",
        },
        title = {
          description = "Title is an optional field that provides a short string that describes the link or its destination. User interfaces often use title as a tooltip or for accessibility purposes. However, they are of course free to present this data in any form. This field is plain text.",
          type = "string",
        },
      },
      type = "object",
    },
    ListDataSourceResponse = {
      id = "ListDataSourceResponse",
      properties = {
        nextPageToken = {
          description = "Token to retrieve the next page of results, or empty if there are no more results in the list.",
          type = "string",
        },
        sources = {
          items = {
            ["$ref"] = "DataSource",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ListItemNamesForUnmappedIdentityResponse = {
      id = "ListItemNamesForUnmappedIdentityResponse",
      properties = {
        itemNames = {
          items = {
            type = "string",
          },
          type = "array",
        },
        nextPageToken = {
          description = "Token to retrieve the next page of results, or empty if there are no more results in the list.",
          type = "string",
        },
      },
      type = "object",
    },
    ListItemsResponse = {
      id = "ListItemsResponse",
      properties = {
        items = {
          items = {
            ["$ref"] = "Item",
          },
          type = "array",
        },
        nextPageToken = {
          description = "Token to retrieve the next page of results, or empty if there are no more results in the list.",
          type = "string",
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
    ListQuerySourcesResponse = {
      description = "List sources response.",
      id = "ListQuerySourcesResponse",
      properties = {
        nextPageToken = {
          type = "string",
        },
        sources = {
          items = {
            ["$ref"] = "QuerySource",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ListSearchApplicationsResponse = {
      id = "ListSearchApplicationsResponse",
      properties = {
        nextPageToken = {
          description = "Token to retrieve the next page of results, or empty if there are no more results in the list.",
          type = "string",
        },
        searchApplications = {
          items = {
            ["$ref"] = "SearchApplication",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ListUnmappedIdentitiesResponse = {
      id = "ListUnmappedIdentitiesResponse",
      properties = {
        nextPageToken = {
          description = "Token to retrieve the next page of results, or empty if there are no more results in the list.",
          type = "string",
        },
        unmappedIdentities = {
          items = {
            ["$ref"] = "UnmappedIdentity",
          },
          type = "array",
        },
      },
      type = "object",
    },
    MatchInfo = {
      id = "MatchInfo",
      properties = {
        matchingImageReferenceKey = {
          description = "Reference keys for image attachments that matches search query.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    MatchRange = {
      description = "Matched range of a snippet [start, end).",
      id = "MatchRange",
      properties = {
        ["end"] = {
          description = "End of the match in the snippet.",
          format = "int32",
          type = "integer",
        },
        start = {
          description = "Starting position of the match in the snippet.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    MdbGroupProto = {
      description = "An entity from the MDB namespace that is to be interpreted as a group. If using this for authorization, you should do an exact match of the peer role against group_name or any of the names in the Chubby expansion of the MDB group named group_name.",
      id = "MdbGroupProto",
      properties = {
        groupName = {
          type = "string",
        },
      },
      type = "object",
    },
    MdbUserProto = {
      description = "An entity from the MDB namespace that is to be interpreted as a user. If using this for authorization, you should only do an exact match on the peer role against user_name.",
      id = "MdbUserProto",
      properties = {
        gaiaId = {
          description = "Do not set this field. Contact credentials-eng@ if you believe you absolutely need to use it. This is the @prod.google.com Gaia ID that corresponds to the MDB user, see go/authn-merge for details. This field may always be safely ignored when performing an authorization check.",
          format = "int64",
          type = "string",
        },
        userName = {
          type = "string",
        },
      },
      type = "object",
    },
    Media = {
      description = "Media resource.",
      id = "Media",
      properties = {
        resourceName = {
          description = "Name of the media resource.",
          type = "string",
        },
      },
      type = "object",
    },
    MeetingSpace = {
      description = " A meeting space is a persistent object that is the context for one or more calls. The meeting space is what makes users find each other when they want to meet and to find shared resources. With two exceptions, all the fields in the meeting space resource are visible publicly to any client, even anonymous users. The exceptions are that * The call_info field is only visible to clients that have a device (as indicated by the meeting token) in the JOINED or HIDDEN state. * The meeting_alias field will only be set for users who are in the same domain as the meeting space. The meeting space resource (outside call_info) should only contain information necessary to join a call in the meeting space, and not any other metadata about the meeting space, such as what organization it belongs to or things related to ongoing calls.",
      id = "MeetingSpace",
      properties = {
        acceptedNumberClass = {
          description = "Which number classes are accepted by this meeting at the moment? When there is no ongoing conference, this field may change independent of the version number of the MeetingSpace. When a conference starts, this field will be locked to the value at that time, and then will be unlocked again at the end of the conference.",
          items = {
            enum = {
              "NUMBER_CLASS_UNSPECIFIED",
              "LOW_COST",
              "HIGH_COST",
              "LEGACY",
            },
            enumDescriptions = {
              "No number class has been specified.",
              "The number has a low cost to receive calls on.",
              "The number has a high cost to receive calls on.",
              "Class for legacy numbers.",
            },
            type = "string",
          },
          type = "array",
        },
        broadcastAccess = {
          ["$ref"] = "BroadcastAccess",
          description = "Broadcast access information for this meeting space.",
        },
        callInfo = {
          ["$ref"] = "CallInfo",
          description = "Information relevant to an ongoing conference. This field will be set in responses if the client requesting the meeting space has a device in one of the JOINED, HIDDEN, or MISSING_PREREQUISITES states. The field will also be set without a created device if the client requesting the meeting space is eligible to directly create a device in the JOINED state without knocking, eg a same-domain joiner. Can also only be updated by clients with a device in the JOINED state.",
        },
        gatewayAccess = {
          ["$ref"] = "GatewayAccess",
          description = "The interop gateway access information for the meeting space. A gateway access can be used when joining conferences from non-Google equipment through an interop gateway.",
        },
        gatewaySipAccess = {
          description = "The SIP based access methods that can be used to join the conference.",
          items = {
            ["$ref"] = "GatewaySipAccess",
          },
          type = "array",
        },
        meetingAlias = {
          description = "An optional alias for the meeting space. The alias can in some cases be resolved to the meeting space, similar to the meeting code. The limitation is that the user needs to be in the same meeting domain as the meeting space.",
          type = "string",
        },
        meetingCode = {
          description = "A meeting code is a globally unique code which points to a meeting space. Note: Meeting codes may be regenerated, which will cause old meeting codes to become invalid.",
          type = "string",
        },
        meetingSpaceId = {
          description = "A unique server-generated ID for the meeting space. This is the resource name of the meeting space resource and has the form `spaces/`, where is a sequence of characters in the [base64url set](https://tools.ietf.org/html/rfc4648#section-5), without any `=` characters.",
          type = "string",
        },
        meetingUrl = {
          description = "A URL to identify and access the meeting space. Output only.",
          type = "string",
        },
        moreJoinUrl = {
          description = "Output only. A URL that clients (e.g. Calendar) can use to show the web page with all join methods available for this meeting space. This link is also used in iOS universal links and Android intents, used for opening the \"More ways to join\" view in the Meet mobile apps. Example: https://tel.meet/mee-ting-cod?pin=1234567891011 Here, \"pin\" is the universal phone PIN. We include it explicitly to better support the offline case on the mobile. This is set when the meeting space has either a universal PIN or an interop PIN and clients who can show a \"more ways to join\" button should show it whenever this field is set.",
          readOnly = true,
          type = "string",
        },
        phoneAccess = {
          description = "All regional phone access methods for this meeting space. Can be empty.",
          items = {
            ["$ref"] = "PhoneAccess",
          },
          type = "array",
        },
        settings = {
          ["$ref"] = "Settings",
          description = "Settings of the meeting space.",
        },
        universalPhoneAccess = {
          ["$ref"] = "UniversalPhoneAccess",
          description = "A universal phone access method for this meeting space. Can be unset.",
        },
      },
      type = "object",
    },
    Member = {
      id = "Member",
      properties = {
        roster = {
          ["$ref"] = "Roster",
        },
        user = {
          ["$ref"] = "User",
        },
      },
      type = "object",
    },
    MemberId = {
      description = "Eventually this can be updated to a oneOf User, Space (for nested spaces), Bots or Service, as and when these use cases come up.",
      id = "MemberId",
      properties = {
        rosterId = {
          ["$ref"] = "RosterId",
          description = "Unique, immutable ID of the Roster.",
        },
        userId = {
          ["$ref"] = "UserId",
          description = "Unique, immutable ID of the User.",
        },
      },
      type = "object",
    },
    MembershipChangeEvent = {
      id = "MembershipChangeEvent",
      properties = {
        leaveReason = {
          description = "This should only be set when MembershipChange type is LEAVE.",
          enum = {
            "LEAVE_REASON_UNKNOWN",
            "FORCE_HISTORY_POLICY_CHANGE",
            "USER_INITIATED",
          },
          enumDescriptions = {
            "",
            "",
            "",
          },
          type = "string",
        },
        participantId = {
          items = {
            ["$ref"] = "StoredParticipantId",
          },
          type = "array",
        },
        type = {
          enum = {
            "JOIN",
            "LEAVE",
          },
          enumDescriptions = {
            "",
            "",
          },
          type = "string",
        },
      },
      type = "object",
    },
    MembershipChangedMetadata = {
      description = "Annotation metadata to display system messages for membership changes. Next Tag: 8",
      id = "MembershipChangedMetadata",
      properties = {
        affectedMemberProfiles = {
          items = {
            ["$ref"] = "Member",
          },
          type = "array",
        },
        affectedMembers = {
          description = "List of users and rosters whose membership status changed.",
          items = {
            ["$ref"] = "MemberId",
          },
          type = "array",
        },
        affectedMemberships = {
          items = {
            ["$ref"] = "AffectedMembership",
          },
          type = "array",
        },
        initiator = {
          ["$ref"] = "UserId",
          description = "The user whose action triggered this system message.",
        },
        initiatorProfile = {
          ["$ref"] = "User",
          description = "Complete member profiles, when ListTopicsRequest FetchOptions.USER is set. Otherwise, only the id will be filled in.",
        },
        initiatorType = {
          description = "The type of the user who initiated this membership change.",
          enum = {
            "INITIATOR_TYPE_UNSPECIFIED",
            "INITIATOR_TYPE_END_USER",
            "INITIATOR_TYPE_ADMIN",
          },
          enumDescriptions = {
            "",
            "",
            "",
          },
          type = "string",
        },
        type = {
          enum = {
            "TYPE_UNSPECIFIED",
            "INVITED",
            "JOINED",
            "ADDED",
            "REMOVED",
            "LEFT",
            "BOT_ADDED",
            "BOT_REMOVED",
            "KICKED_DUE_TO_OTR_CONFLICT",
            "ROLE_UPDATED",
            "ROLE_TARGET_AUDIENCE_UPDATED",
          },
          enumDescriptions = {
            "Default value for the enum. DO NOT USE.",
            "Non-member -> Can join. Multiple groups and users.",
            "Can join -> Member. One user.",
            "Non-member -> Member. Multiple users.",
            "Can join -> Non-member. One group or user.",
            "Member -> Can join. One user.",
            "Bot added to the room.",
            "Bot removed from the room.",
            "This signifies the user is kicked because the user's OTR policy is conflicted with the room history settings. Joined -> Non-member. One user.",
            "MembershipRole changed. Multiple users.",
            "The room is now joinable by an",
          },
          type = "string",
        },
      },
      type = "object",
    },
    Menu = {
      description = "This is deprecated and please use SelectionControl by setting type to DROPDOWN.",
      id = "Menu",
      properties = {
        items = {
          items = {
            ["$ref"] = "MenuItem",
          },
          type = "array",
        },
        label = {
          description = "Label used to be displayed ahead of the menu. It is optional.",
          type = "string",
        },
        name = {
          description = "The name of the text field which is will be used in FormInput.",
          type = "string",
        },
        onChange = {
          ["$ref"] = "FormAction",
          description = "If specified, form is submitted when selection changed. If not specified, developer will need to specify a separate button.",
        },
      },
      type = "object",
    },
    MenuItem = {
      id = "MenuItem",
      properties = {
        selected = {
          type = "boolean",
        },
        text = {
          description = "The text to be displayed.",
          type = "string",
        },
        value = {
          description = "The value associated with this item which will be sent back to app scripts. Client should use as a form input value.",
          type = "string",
        },
      },
      type = "object",
    },
    Message = {
      description = "Message posted to a Space.",
      id = "Message",
      properties = {
        annotations = {
          description = "Annotations parsed and extracted from the text body.",
          items = {
            ["$ref"] = "Annotation",
          },
          type = "array",
        },
        appProfile = {
          ["$ref"] = "AppsDynamiteSharedAppProfile",
          description = "Custom display profile info for apps. Leave the field empty for real users.",
        },
        attachments = {
          description = "Attachments parsed from incoming webhooks",
          items = {
            ["$ref"] = "Attachment",
          },
          type = "array",
        },
        attributes = {
          ["$ref"] = "MessageAttributes",
          description = "Lightweight message attributes which values are calculated and set in the servers.",
        },
        botResponses = {
          description = "Responses from bots indicating if extra auth/config is needed.",
          items = {
            ["$ref"] = "BotResponse",
          },
          type = "array",
        },
        communalLabels = {
          description = "Communal labels associated with a message. These exist on the message itself regardless of which user fetches them. Order of entries is arbitrary and will not list duplicates of the same label_id. See go/chat-labels-design for details.",
          items = {
            ["$ref"] = "CommunalLabelTag",
          },
          type = "array",
        },
        contentReportSummary = {
          ["$ref"] = "ContentReportSummary",
          readOnly = true,
        },
        createTime = {
          description = "Time when the Message was posted in microseconds.",
          format = "int64",
          type = "string",
        },
        creatorId = {
          ["$ref"] = "UserId",
          description = "ID of the User who posted the Message. This includes information to identify if this was posted by an App on behalf of a user.",
        },
        deletableBy = {
          description = "Indicates who can delete the message. This field is set on the read path (e.g. ListTopics) but doesn’t have any effect on the write path (e.g. CreateMessageRequest).",
          enum = {
            "PERMISSION_UNSPECIFIED",
            "PERMISSION_NO_ONE",
            "PERMISSION_CREATOR",
            "PERMISSION_MEMBER",
          },
          enumDescriptions = {
            "Default case, should never be used. If this data is encountered in the DB any request should throw an exception.",
            "No one except for the message creator/origin pair can mutate. This permission checks both gaia id and the request origin. Request origin can be Chat API or Chat UI. Mutation is allowed iff both attributes of the request match the original message creation. Use case: this allows historical 1P apps lock down message edit permission i.e. In Chat UI, humans cannot edit their messages created via these 1P apps. Do not use this for additional use cases.",
            "The message creator can mutate regardless of request origin. Use case: for messages created by human via Chat UI or Chat API. These messages can be mutated by the same human user via Chat UI or via any app on Chat API.",
            "Every human member of a space or the creator can mutate the entity. This excludes app acting on behalf of human via Chat API. Use case: This is to enable humans to delete messages created by apps.",
          },
          type = "string",
        },
        deleteTime = {
          description = "Time when the Message was deleted in microseconds. This field is set to nonzero value only for Messages deleted globally.",
          format = "int64",
          type = "string",
        },
        deleteTimeForRequester = {
          description = "Time when the Message was per-user deleted by the message requester in microseconds. This field is set to nonzero value only for Message per-user deleted by the requester.",
          format = "int64",
          type = "string",
        },
        deletedByVault = {
          description = "Was this message deleted by Vault (Only used for Vault support) This is false if message is live or message was deleted by user.",
          type = "boolean",
        },
        dlpScanOutcome = {
          description = "Data Loss Prevention scan information for this message. Messages are evaluated in the backend on create message/topic and edit message actions. DEPRECATED: use dlp_scan_summary instead.",
          enum = {
            "SCAN_UNKNOWN_OUTCOME",
            "SCAN_SUCCEEDED_NO_VIOLATION",
            "SCAN_SUCCEEDED_BLOCK",
            "SCAN_SUCCEEDED_WARN",
            "SCAN_SUCCEEDED_AUDIT_ONLY",
            "SCAN_FAILURE_EXCEPTION",
            "SCAN_FAILURE_RULE_FETCH_FAILED",
            "SCAN_FAILURE_TIMEOUT",
            "SCAN_FAILURE_ALL_RULES_FAILED",
            "SCAN_FAILURE_ILLEGAL_STATE_FOR_ATTACHMENTS",
            "SCAN_SKIPPED_EXPERIMENT_DISABLED",
            "SCAN_SKIPPED_CONSUMER",
            "SCAN_SKIPPED_NON_HUMAN_USER",
            "SCAN_SKIPPED_NO_MESSAGE",
            "SCAN_SKIPPED_USER_ACKNOWLEDGED_WARNING",
            "SCAN_SKIPPED_MESSAGE_FROM_UNSUPPORTED_ORIGIN",
            "SCAN_RULE_EVALUATION_SKIPPED_NO_RULES_FOUND",
            "SCAN_RULE_EVALUATION_SKIPPED_NO_APPLICABLE_RULES_FOR_ACTION_PARAMS",
            "SCAN_RULE_EVALUATION_SKIPPED_NO_APPLICABLE_RULES_FOR_TRIGGER",
            "SCAN_RULE_EVALUATION_SKIPPED_CHANGELING_PERMANENT_ERROR",
            "SCAN_RULE_EVALUATION_SKIPPED_CHANGELING_EMPTY_RESPONSE",
            "SCAN_RULE_EVALUATION_SKIPPED_UNSUPPORTED_FILE_TYPE",
            "SCAN_SUCCEEDED_WITH_FAILURES_NO_VIOLATION",
            "SCAN_SUCCEEDED_WITH_FAILURES_BLOCK",
            "SCAN_SUCCEEDED_WITH_FAILURES_WARN",
            "SCAN_SUCCEEDED_WITH_FAILURES_AUDIT_ONLY",
          },
          enumDescriptions = {
            "",
            "This means no violation is detected on the given message/attachment.",
            "Violation is detected. The message/attachment will be blocked (or deleted if this happens in failure recovery), the user will be warned, and the violation will be logged to BIP.",
            "Violation is detected. The user will be warned, and the violation will be logged to BIP.",
            "Violation is detected and will be logged to BIP (no user-facing action performed).",
            "Rule fetch and evaluation were attempted but an exception occurred.",
            "Rule fetch was attempted but failed, so rule evaluation could not be performed.",
            "Rule fetch and evaluation were attempted but the scanning timed out.",
            "Rule fetch completed and evaluation were attempted, but all of the rules failed to be evaluated.",
            "An IllegalStateException is thrown when executing DLP on attachments. This could happen if the space row is missing.",
            "Rule fetch and evaluation is skipped because DLP is not enabled for the user.",
            "Rule fetch and evaluation are skipped because the user sending message is consumer.",
            "Rule fetch and evaluation are skipped because the user sending message is a non-human user (i.e. a bot).",
            "Rule fetch and evaluation are skipped because there is no message to scan. Deprecated: this should not happen since there must be message or attachment for DLP scan.",
            "Rule fetch and evaluation are skipped because the user has acknowledged the warning on the message that triggered the Warn violation and sent the message anyway.",
            "Scanning was skipped because the message originated from Interop or Babel.",
            "Rule fetch happened, but rule evaluation is skipped because no rules were found.",
            "Rule fetch happened, but rule evaluation is skipped because none of the rules are applicable to the given action params.",
            "Rule fetch happened, but rule evaluation is skipped because none of the rules are applicable to the given trigger.",
            "Rule fetch happened, but rule evaluation is skipped because Changeling returned permanent failure while converting the attachment to text.",
            "Rule fetch happened, but rule evaluation is skipped because Changeling returned an empty response while converting the attachment to text.",
            "Rule fetch happened, but rule evaluation is skipped because file type is unsupported.",
            "Rules were fetched but some evaluations failed. No violation was found in the rules that were successfully evaluated.",
            "Rules were fetched but some evaluations failed. A blocking violation was found in the rules that were successfully evaluated. The message/attachment will be blocked, the user will be notified, and the violation will be logged to BIP. A blocking violation takes precedence over all other violation types.",
            "Rules were fetched but some evaluations failed. A warn violation was found in the rules that were successfully evaluated. The user will be warned, and the violation will be logged to BIP.",
            "Rules were fetched but some evaluations failed. An audit-only violation was found in the rules that were successfully evaluated. The violation will be logged to BIP (no user-facing action performed).",
          },
          type = "string",
        },
        dlpScanSummary = {
          ["$ref"] = "DlpScanSummary",
          description = "Data Loss Prevention scan information for this message. Messages are evaluated in the backend on create message/topic and edit message actions.",
        },
        editableBy = {
          description = "Indicates who can edit the message. This field is set on the read path (e.g. ListTopics) but doesn’t have any effect on the write path (e.g. CreateMessageRequest).",
          enum = {
            "PERMISSION_UNSPECIFIED",
            "PERMISSION_NO_ONE",
            "PERMISSION_CREATOR",
            "PERMISSION_MEMBER",
          },
          enumDescriptions = {
            "Default case, should never be used. If this data is encountered in the DB any request should throw an exception.",
            "No one except for the message creator/origin pair can mutate. This permission checks both gaia id and the request origin. Request origin can be Chat API or Chat UI. Mutation is allowed iff both attributes of the request match the original message creation. Use case: this allows historical 1P apps lock down message edit permission i.e. In Chat UI, humans cannot edit their messages created via these 1P apps. Do not use this for additional use cases.",
            "The message creator can mutate regardless of request origin. Use case: for messages created by human via Chat UI or Chat API. These messages can be mutated by the same human user via Chat UI or via any app on Chat API.",
            "Every human member of a space or the creator can mutate the entity. This excludes app acting on behalf of human via Chat API. Use case: This is to enable humans to delete messages created by apps.",
          },
          type = "string",
        },
        fallbackText = {
          description = "A plain-text description of the attachment, used when clients cannot display formatted attachment (e.g. mobile push notifications).",
          type = "string",
        },
        id = {
          ["$ref"] = "MessageId",
          description = "ID of the resource.",
        },
        isContentPurged = {
          description = "Whether the message is content purged. Content purged messages contain only data required for tombstone (see go/chat-infinite-tombstone). This field is only used by Vault to display tombstone and should only be set to true if the message is a tombstone.",
          type = "boolean",
        },
        isInlineReply = {
          description = "Output only. Indicates if the message is an inline reply. Set to true only if the message's ParentPath is non-NULL. Currently, only inline replies have non-NULL ParentPath. See go/chat-be-inline-reply-indicator.",
          readOnly = true,
          type = "boolean",
        },
        lastEditTime = {
          description = "If the message was edited by a user, timestamp of the last edit, in microseconds.",
          format = "int64",
          type = "string",
        },
        lastUpdateTime = {
          description = "Time when the Message text was last updated in microseconds.",
          format = "int64",
          type = "string",
        },
        localId = {
          description = "A unique id specified on the client side.",
          type = "string",
        },
        messageIntegrationPayload = {
          ["$ref"] = "AppsDynamiteSharedMessageIntegrationPayload",
          description = "An optional payload (restricted to 1P applications) that will be stored with this message. This can only be set by the 1P API and should be used to deliver additional data such a 1P sync version, 1P entity ID to the client for more advanced functionality [Eg. inform Group Tasks tab of new version while linking, fetch & render a live Task/Meet call tile].",
        },
        messageOrigin = {
          description = "Where the message was posted from",
          enum = {
            "ORIGIN_NOT_SET",
            "ORIGIN_DYNAMITE",
            "ORIGIN_BABEL_INTEROP_LIVE",
            "ORIGIN_BABEL_INTEROP_RETRY",
            "ORIGIN_BABEL",
            "ORIGIN_BABEL_DUAL_WRITE",
            "ORIGIN_BABEL_DUAL_WRITE_RETRY",
            "ORIGIN_BACKFILL_FROM_PAPYRUS",
            "ORIGIN_BACKFILL_FROM_GMAIL_ARCHIVE",
          },
          enumDescriptions = {
            "",
            "",
            "The message is from Babel (Hangouts Classic) interop.",
            "The message is from Babel interop retries from Manifold queue.",
            "The message came directly from Babel as source-of-truth",
            "The message came directly from Babel during dual-write",
            "The message came directly from Babel Manifold queue during dual write",
            "The message was backfilled by go/dinnertrain as part of go/storage-consolidation. The backfill origin corresponds to the BackfillState in which the message was created.",
            "",
          },
          type = "string",
        },
        messageState = {
          description = "State of the message, indicating whether the message is visible to all members in the group or is only visible to the sender only, or the private_message_viewer if it is set.",
          enum = {
            "PUBLIC",
            "PRIVATE",
          },
          enumDescriptions = {
            "Default - visible to the room / DM.",
            "Private state - only visible to the message creator, and the private_message_viewer if set.",
          },
          type = "string",
        },
        originAppSuggestions = {
          description = "Indicates if this message contains any suggestions that were provided by any Apps.",
          items = {
            ["$ref"] = "AppsDynamiteSharedOriginAppSuggestion",
          },
          type = "array",
        },
        personalLabels = {
          description = "Personal labels associated with a message for the viewing user. Order of entries is arbitrary and will not list duplicates of the same label_id. See go/chat-labels-design for details. NOTE: This will be unpopulated in the case of SpaceChangelog events.",
          items = {
            ["$ref"] = "PersonalLabelTag",
          },
          type = "array",
        },
        privateMessageInfos = {
          description = "A list of per-user private information. This is deprecated, because we no longer plan to support partially private messages or private messages for multiple users. The message_state and private_message_viewer fields should be sufficient for this infrastructure.",
          items = {
            ["$ref"] = "PrivateMessageInfo",
          },
          type = "array",
        },
        privateMessageViewer = {
          ["$ref"] = "UserId",
          description = "Should only be set if the Message State is PRIVATE. If set, the message content is only visible to this user (and any apps associated with the message), as well as the message creator. If unset, a private message is visible to the message creator only.",
        },
        props = {
          ["$ref"] = "MessageProps",
          description = "Contains additional (currently Hangouts Classic only) properties applicable to this message.",
        },
        quotedByState = {
          description = "Output only. Whether this message has been quoted by another message or not. Used by clients to handle message edit flows for messages that have been quoted.",
          enum = {
            "QUOTED_BY_STATE_UNSPECIFIED",
            "QUOTED_BY_STATE_HAS_BEEN_QUOTED",
            "QUOTED_BY_STATE_HAS_NOT_BEEN_QUOTED",
          },
          enumDescriptions = {
            "Unspecified state for QuotedByState.",
            "State to indicate that this message is quoted by another message (excluding purged message).",
            "State to indicate that this message are not quoted by another message.",
          },
          readOnly = true,
          type = "string",
        },
        quotedMessageMetadata = {
          ["$ref"] = "QuotedMessageMetadata",
          description = "Output only. Metadata for a message that is quoted by this message.",
          readOnly = true,
        },
        reactions = {
          description = "A list of user reactions to this message. Ordered by the timestamp of the first reaction, ascending (oldest to newest).",
          items = {
            ["$ref"] = "AppsDynamiteSharedReaction",
          },
          type = "array",
        },
        reports = {
          description = "Output only. Details of content reports. Set only when the request asks for it.",
          items = {
            ["$ref"] = "ContentReport",
          },
          readOnly = true,
          type = "array",
        },
        retentionSettings = {
          ["$ref"] = "AppsDynamiteSharedRetentionSettings",
          description = "The retention settings of the message.",
        },
        richTextFormattingType = {
          description = "Used by clients to correctly log format type for message creation due to complexity with client side optimistic update (see go/content-metric-post-send-logging for details). Currently, only set by server in the message or topic creation path.",
          enum = {
            "NONE",
            "MARKDOWN",
            "FORMAT_ANNOTATIONS",
            "FORMAT_ANNOTATIONS_IGNORED",
            "FORMAT_ANNOTATIONS_IGNORED_WITH_MARKDOWN",
          },
          enumDescriptions = {
            "",
            "The formatting was specified as *markdown characters* in message text.",
            "The formatting was specified as {@link com.google.apps.dynamite.v1.shared.FormatMetadata} annotations.",
            "The client sent the format annotations, but didn't set the accept_format_annotations field to true. This shouldn't happen, but there might be some old clients that end up here.",
            "A combination of MARKDOWN and FORMAT_ANNOTATIONS_IGNORED.",
          },
          type = "string",
        },
        secondaryMessageKey = {
          description = "A client-specified string that can be used to uniquely identify a message in a space, in lieu of `id.message_id`.",
          type = "string",
        },
        textBody = {
          description = "Plaintext body of the Message.",
          type = "string",
        },
        tombstoneMetadata = {
          ["$ref"] = "TombstoneMetadata",
          description = "Information for the stoning of a Message.",
        },
        updaterId = {
          ["$ref"] = "UserId",
          description = "ID of the User who last updated (created/edited/deleted) the Message. This includes information to identify if this was updated by an App on behalf of a user.",
        },
        uploadMetadata = {
          description = "UploadMetadata b/36864213 is an ongoing effort to move UploadMetadata out of annotations field and save it to upload_metadata field only. After the migration, UploadMetadata will only be saved in this field.",
          items = {
            ["$ref"] = "UploadMetadata",
          },
          type = "array",
        },
      },
      type = "object",
    },
    MessageAdded = {
      description = "A message was added. Specifying id and initial labels.",
      id = "MessageAdded",
      properties = {
        attributeIds = {
          items = {
            type = "string",
          },
          type = "array",
        },
        labelIds = {
          items = {
            type = "string",
          },
          type = "array",
        },
        messageKey = {
          ["$ref"] = "MultiKey",
        },
        syncIds = {
          description = "Note that there can be fewer sync ids than label ids.",
          items = {
            format = "uint32",
            type = "integer",
          },
          type = "array",
        },
      },
      type = "object",
    },
    MessageAttributes = {
      description = "Stores tombstone message attributes: go/tombstone-message-attributes-overview",
      id = "MessageAttributes",
      properties = {
        isTombstone = {
          description = "If true: message is a tombstone in the client. Default false.",
          type = "boolean",
        },
      },
      type = "object",
    },
    MessageDeleted = {
      description = "Some (subset of the) messages in this thread were deleted.",
      id = "MessageDeleted",
      properties = {
        imapSyncMappings = {
          description = "Value of coproc's message delete history record extension that exports /imapsync/folder attribute of deleted messages which have ^is label.",
          items = {
            ["$ref"] = "ImapSyncDelete",
          },
          type = "array",
        },
        messageKeys = {
          items = {
            ["$ref"] = "MultiKey",
          },
          type = "array",
        },
      },
      type = "object",
    },
    MessageId = {
      description = "Primary key for Message resource.",
      id = "MessageId",
      properties = {
        messageId = {
          description = "Opaque, server-assigned ID of the Message. While this ID is guaranteed to be unique within the Space, it's not guaranteed to be globally unique.",
          type = "string",
        },
        parentId = {
          ["$ref"] = "MessageParentId",
          description = "ID of the Message's immediate parent.",
        },
      },
      type = "object",
    },
    MessageInfo = {
      id = "MessageInfo",
      properties = {
        message = {
          ["$ref"] = "Message",
          description = "The content of a matching message.",
        },
        searcherMembershipState = {
          description = "Searcher's membership state in the space where the message is posted.",
          enum = {
            "MEMBER_UNKNOWN",
            "MEMBER_INVITED",
            "MEMBER_JOINED",
            "MEMBER_NOT_A_MEMBER",
            "MEMBER_FAILED",
          },
          enumDescriptions = {
            "Default state, do not use",
            "An invitation to the space has been sent",
            "User has joined the space",
            "User is not a member",
            "This state should never be stored in Spanner. It is a state for responses to the clients to indicate that membership mutations have failed and the member is in its previous state.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    MessageParentId = {
      description = "Primary key identifying Message resource's immediate parent. For top-level Messages, either topic_id or chat_id is populated. For replies, message_id is populated with the topic Message's ID.",
      id = "MessageParentId",
      properties = {
        topicId = {
          ["$ref"] = "TopicId",
          description = "ID of the Topic this Message is posted to. NEXT TAG : 5",
        },
      },
      type = "object",
    },
    MessageProps = {
      description = "Container for storing properties applicable to messages. For now (until storage consolidation is complete), it will only be used for babel props. In the future it could be used to house Dynamite properties for experimenting/rapid prototyping.",
      id = "MessageProps",
      properties = {
        babelProps = {
          ["$ref"] = "BabelMessageProps",
        },
      },
      type = "object",
    },
    MessageSet = {
      description = "This is proto2's version of MessageSet.",
      id = "MessageSet",
      properties = {},
      type = "object",
    },
    Metadata = {
      description = "Metadata of a matched search result.",
      id = "Metadata",
      properties = {
        createTime = {
          description = "The creation time for this document or object in the search result.",
          format = "google-datetime",
          type = "string",
        },
        displayOptions = {
          ["$ref"] = "ResultDisplayMetadata",
          description = "Options that specify how to display a structured data search result.",
        },
        fields = {
          description = "Indexed fields in structured data, returned as a generic named property.",
          items = {
            ["$ref"] = "NamedProperty",
          },
          type = "array",
        },
        mimeType = {
          description = "Mime type of the search result.",
          type = "string",
        },
        objectType = {
          description = "Object type of the search result.",
          type = "string",
        },
        owner = {
          ["$ref"] = "Person",
          description = "Owner (usually creator) of the document or object of the search result.",
        },
        source = {
          ["$ref"] = "Source",
          description = "The named source for the result, such as Gmail.",
        },
        thumbnailUrl = {
          description = "The thumbnail URL of the result.",
          type = "string",
        },
        updateTime = {
          description = "The last modified date for the object in the search result. If not set in the item, the value returned here is empty. When `updateTime` is used for calculating freshness and is not set, this value defaults to 2 years from the current time.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    Metaline = {
      description = "A metaline is a list of properties that are displayed along with the search result to provide context.",
      id = "Metaline",
      properties = {
        properties = {
          description = "The list of displayed properties for the metaline. The maximum number of properties is 5.",
          items = {
            ["$ref"] = "DisplayedProperty",
          },
          type = "array",
        },
      },
      type = "object",
    },
    MultiKey = {
      description = "A union-like type for identifiying an object in storage. MultiKeys contain multiple key fields, each in a separate key space. At least one key field must be set. More than one key field may be set as long as all key values refer to the same object. All objects in storage have unique server_id keys. All MultiKeys returned from storage to storage clients will always have the server_id field set. When creating an object, if a MultiKey without a server_id is supplied to storage, the storage system will auto-assign a server ID to the new object. For all other storage requests (i.e. those not creating new objects), clients may omit server_id (as long as they supply another key). Instead of server ids, clients can specify string based client_assigned_perm_id keys. Mail message drafts are a prime example of these kinds of objects. Each time a user saves a new version of a draft, the storage system needs to create a new object with the updated draft content and needs to delete the object containing the old content. The new object gets a new SERVER_ID but should get the same CLIENT_ASSIGNED_PERM_ID as the now-deleted object containing the old content. Carrying forward the perm ID allows it to be used to consistently refer to the same logical object across revisions. These perm IDs save sync clients from having to deal with changing object IDs. For example, assume there's a mail message in storage with SERVER_ID = 123 and CLIENT_ASSIGNED_PERM_ID = \"foo\". The following are all valid ways of addressing the object using MultiKeys: 1) MultiKey { server_id = 123 } 2) MultiKey { server_id = 123, client_assigned_perm_id = \"foo\" } 3) MultiKey { client_assigned_perm_id = \"foo\" } Multikeys are never serialized in the storage. The individual keys are extracted and processed separately. Both the integer ids as well as string ids are indexed for efficient retrieval using the same fields in the backend. See go/tingle-multikeys for more information on background and motivation.",
      id = "MultiKey",
      properties = {
        clientAssignedPermId = {
          description = "A client-assigned string based key.",
          type = "string",
        },
        serverId = {
          description = "A server-assigned ID. This ID must be used only by Gmail and is constructed using millesecond ts << 20 + randomness. The ID affects the sort order of the index.",
          format = "uint64",
          type = "string",
        },
      },
      type = "object",
    },
    Name = {
      description = "A person's name.",
      id = "Name",
      properties = {
        displayName = {
          description = "The read-only display name formatted according to the locale specified by the viewer's account or the `Accept-Language` HTTP header.",
          type = "string",
        },
      },
      type = "object",
    },
    NamedProperty = {
      description = "A typed name-value pair for structured data. The type of the value should be the same as the registered type for the `name` property in the object definition of `objectType`.",
      id = "NamedProperty",
      properties = {
        booleanValue = {
          type = "boolean",
        },
        dateValues = {
          ["$ref"] = "DateValues",
        },
        doubleValues = {
          ["$ref"] = "DoubleValues",
        },
        enumValues = {
          ["$ref"] = "EnumValues",
        },
        htmlValues = {
          ["$ref"] = "HtmlValues",
        },
        integerValues = {
          ["$ref"] = "IntegerValues",
        },
        name = {
          description = "The name of the property. This name should correspond to the name of the property that was registered for object definition in the schema. The maximum allowable length for this property is 256 characters.",
          type = "string",
        },
        objectValues = {
          ["$ref"] = "ObjectValues",
        },
        textValues = {
          ["$ref"] = "TextValues",
        },
        timestampValues = {
          ["$ref"] = "TimestampValues",
        },
      },
      type = "object",
    },
    OAuthConsumerProto = {
      description = "Represents an OAuth consumer, a/k/a AuthSub target. These principals are identified by domain name (e.g., example.com). Historically, Dasher domain GAIA group IDs have been used instead, but that doesn't work: http://go/tricky-gaia-ids",
      id = "OAuthConsumerProto",
      properties = {
        domain = {
          type = "string",
        },
      },
      type = "object",
    },
    ObjectDefinition = {
      description = "The definition for an object within a data source.",
      id = "ObjectDefinition",
      properties = {
        name = {
          description = "The name for the object, which then defines its type. Item indexing requests should set the objectType field equal to this value. For example, if *name* is *Document*, then indexing requests for items of type Document should set objectType equal to *Document*. Each object definition must be uniquely named within a schema. The name must start with a letter and can only contain letters (A-Z, a-z) or numbers (0-9). The maximum length is 256 characters.",
          type = "string",
        },
        options = {
          ["$ref"] = "ObjectOptions",
          description = "The optional object-specific options.",
        },
        propertyDefinitions = {
          description = "The property definitions for the object. The maximum number of elements is 1000.",
          items = {
            ["$ref"] = "PropertyDefinition",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ObjectDisplayOptions = {
      description = "The display options for an object.",
      id = "ObjectDisplayOptions",
      properties = {
        metalines = {
          description = "Defines the properties that are displayed in the metalines of the search results. The property values are displayed in the order given here. If a property holds multiple values, all of the values are displayed before the next properties. For this reason, it is a good practice to specify singular properties before repeated properties in this list. All of the properties must set is_returnable to true. The maximum number of metalines is 3.",
          items = {
            ["$ref"] = "Metaline",
          },
          type = "array",
        },
        objectDisplayLabel = {
          description = "The user friendly label to display in the search result to indicate the type of the item. This is OPTIONAL; if not provided, an object label isn't displayed on the context line of the search results. The maximum length is 64 characters.",
          type = "string",
        },
      },
      type = "object",
    },
    ObjectOptions = {
      description = "The options for an object.",
      id = "ObjectOptions",
      properties = {
        displayOptions = {
          ["$ref"] = "ObjectDisplayOptions",
          description = "The options that determine how the object is displayed in the Cloud Search results page.",
        },
        freshnessOptions = {
          ["$ref"] = "FreshnessOptions",
          description = "The freshness options for an object.",
        },
        suggestionFilteringOperators = {
          description = "Operators that can be used to filter suggestions. For Suggest API, only operators mentioned here will be honored in the FilterOptions. Only TEXT and ENUM operators are supported. NOTE: \"objecttype\", \"type\" and \"mimetype\" are already supported. This property is to configure schema specific operators. Even though this is an array, only one operator can be specified. This is an array for future extensibility. Operators mapping to multiple properties within the same object are not supported. If the operator spans across different object types, this option has to be set once for each object definition.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ObjectPropertyOptions = {
      description = "The options for object properties.",
      id = "ObjectPropertyOptions",
      properties = {
        subobjectProperties = {
          description = "The properties of the sub-object. These properties represent a nested object. For example, if this property represents a postal address, the subobjectProperties might be named *street*, *city*, and *state*. The maximum number of elements is 1000.",
          items = {
            ["$ref"] = "PropertyDefinition",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ObjectValues = {
      description = "List of object values.",
      id = "ObjectValues",
      properties = {
        values = {
          items = {
            ["$ref"] = "StructuredDataObject",
          },
          type = "array",
        },
      },
      type = "object",
    },
    OnClick = {
      id = "OnClick",
      properties = {
        action = {
          ["$ref"] = "FormAction",
        },
        link = {
          description = "This can be used as a short form for OpenLink with the default OpenAs and OnClose. It may be undeprecated if this proves to be handy for developers.",
          type = "string",
        },
        openLink = {
          ["$ref"] = "OpenLink",
        },
        openLinkAction = {
          ["$ref"] = "FormAction",
          description = "An add-on triggers this action when the form action needs to open a link. This differs from the open_link above in that this needs to talk to server to get the link. Thus some preparation work is required for web client to do before the open link action response comes back.",
        },
      },
      type = "object",
    },
    OpenCreatedDraftActionMarkup = {
      id = "OpenCreatedDraftActionMarkup",
      properties = {
        draftId = {
          description = "The ID of the newly created draft in the form \"r123\".",
          type = "string",
        },
        draftStorageId = {
          description = "The server storage ID in hex format, for example,\"15e9fa622ce1029d\".",
          type = "string",
        },
        draftThreadId = {
          description = "The ID of the thread containing the newly created draft, for example, \"15e9fa622ce1029d\".",
          type = "string",
        },
        draftThreadServerPermId = {
          description = "The server permanent ID for the draft's thread. This field isn't set anywhere, and it's ignored when processing OpenCreatedDraftActionMarkup. Supply and use draftThreadStorageId instead.",
          type = "string",
        },
      },
      type = "object",
    },
    OpenLink = {
      id = "OpenLink",
      properties = {
        loadIndicator = {
          description = "Next available ID: 5",
          enum = {
            "NONE",
            "SPINNER",
          },
          enumDescriptions = {
            "",
            "",
          },
          type = "string",
        },
        onClose = {
          enum = {
            "NOTHING",
            "RELOAD_ADD_ON",
          },
          enumDescriptions = {
            "",
            "",
          },
          type = "string",
        },
        openAs = {
          enum = {
            "FULL_SIZE",
            "OVERLAY",
          },
          enumDescriptions = {
            "",
            "",
          },
          type = "string",
        },
        url = {
          type = "string",
        },
      },
      type = "object",
    },
    Operation = {
      description = "This resource represents a long-running operation that is the result of a network API call.",
      id = "Operation",
      properties = {
        done = {
          description = "If the value is `false`, it means the operation is still in progress. If `true`, the operation is completed, and either `error` or `response` is available.",
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
          description = "The server-assigned name, which is only unique within the same service that originally returns it. If you use the default HTTP mapping, the `name` should be a resource name ending with `operations/{unique_id}`.",
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
    OsVersion = {
      id = "OsVersion",
      properties = {
        majorVersion = {
          format = "int32",
          type = "integer",
        },
        minorVersion = {
          format = "int32",
          type = "integer",
        },
        tertiaryVersion = {
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    OtrChatMessageEvent = {
      id = "OtrChatMessageEvent",
      properties = {
        expirationTimestampUsec = {
          format = "int64",
          type = "string",
        },
        kansasRowId = {
          type = "string",
        },
        kansasVersionInfo = {
          type = "string",
        },
        messageOtrStatus = {
          enum = {
            "OFF_THE_RECORD",
            "ON_THE_RECORD",
          },
          enumDescriptions = {
            "The conversation is completely off the record.",
            "The conversation is completely on the record.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    OtrModificationEvent = {
      id = "OtrModificationEvent",
      properties = {
        newOtrStatus = {
          enum = {
            "OFF_THE_RECORD",
            "ON_THE_RECORD",
          },
          enumDescriptions = {
            "The conversation is completely off the record.",
            "The conversation is completely on the record.",
          },
          type = "string",
        },
        newOtrToggle = {
          enum = {
            "ENABLED",
            "DISABLED",
          },
          enumDescriptions = {
            "The conversation can be toggled",
            "The conversation cannot be toggled",
          },
          type = "string",
        },
        oldOtrStatus = {
          enum = {
            "OFF_THE_RECORD",
            "ON_THE_RECORD",
          },
          enumDescriptions = {
            "The conversation is completely off the record.",
            "The conversation is completely on the record.",
          },
          type = "string",
        },
        oldOtrToggle = {
          enum = {
            "ENABLED",
            "DISABLED",
          },
          enumDescriptions = {
            "The conversation can be toggled",
            "The conversation cannot be toggled",
          },
          type = "string",
        },
      },
      type = "object",
    },
    PackagingServiceClient = {
      description = "Developers register a client in Google API Console to get the deep-linking feature on Google+ posts or frames about their apps. The client data is stored in this proto.",
      id = "PackagingServiceClient",
      properties = {
        androidPackageName = {
          description = "Android app's package name to generate the deep-link URI.",
          type = "string",
        },
        iosAppStoreId = {
          description = "iOS app's App Store ID to generate the App Store URL when app is not installed on device.",
          type = "string",
        },
        iosBundleId = {
          description = "iOS app's bundle ID to generate the deep-link URI.",
          type = "string",
        },
        type = {
          description = "Type of Google API Console client.",
          enum = {
            "ANDROID",
            "IOS",
          },
          enumDescriptions = {
            "Client for Android app.",
            "Client for iOS app.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    PaygateInfo = {
      description = "Information provided to clients so that they can show upgrade promos and warnings on call ending early (for non-paying users).",
      id = "PaygateInfo",
      properties = {
        callEndingSoonWarningTime = {
          description = "Time when client should show message that the call is ending soon.",
          format = "google-datetime",
          type = "string",
        },
        callEndingTime = {
          description = "Time when the call will end if the user does not upgrade (after in-call upgrade support check has been implemented).",
          format = "google-datetime",
          type = "string",
        },
        showUpgradePromos = {
          description = "This boolean is used by clients to decide whether the user should be shown promos to upgrade.",
          type = "boolean",
        },
      },
      type = "object",
    },
    PeopleSuggestion = {
      description = "This field contains information about the person being suggested.",
      id = "PeopleSuggestion",
      properties = {
        person = {
          ["$ref"] = "Person",
          description = "Suggested person. All fields of the person object might not be populated.",
        },
      },
      type = "object",
    },
    Person = {
      description = "Object to represent a person.",
      id = "Person",
      properties = {
        emailAddresses = {
          description = "The person's email addresses",
          items = {
            ["$ref"] = "EmailAddress",
          },
          type = "array",
        },
        name = {
          description = "The resource name of the person to provide information about. See [`People.get`](https://developers.google.com/people/api/rest/v1/people/get) from the Google People API.",
          type = "string",
        },
        obfuscatedId = {
          description = "Obfuscated ID of a person.",
          type = "string",
        },
        personNames = {
          description = "The person's name",
          items = {
            ["$ref"] = "Name",
          },
          type = "array",
        },
        phoneNumbers = {
          description = "The person's phone numbers",
          items = {
            ["$ref"] = "PhoneNumber",
          },
          type = "array",
        },
        photos = {
          description = "A person's read-only photo. A picture shown next to the person's name to help others recognize the person in search results.",
          items = {
            ["$ref"] = "Photo",
          },
          type = "array",
        },
      },
      type = "object",
    },
    PersonalLabelTag = {
      description = "An individual instance (or \"tag\") of a label configured as a personal type that's associated with a message.",
      id = "PersonalLabelTag",
      properties = {
        labelId = {
          description = "A string ID representing the label. Possible ID values are documented at go/chat-labels-howto:ids. Examples: \"^t\" for \"Starred\", \"^nu\" for \"Nudged\".",
          type = "string",
        },
      },
      type = "object",
    },
    PhoneAccess = {
      description = "Phone access contains information required to dial into a conference using a regional phone number and a PIN that is specific to that phone number.",
      id = "PhoneAccess",
      properties = {
        formattedPhoneNumber = {
          description = "The phone number to dial for this meeting space in INTERNATIONAL format. Full phone number with a leading '+' character and whitespace separations.",
          type = "string",
        },
        languageCode = {
          description = "The BCP 47/LDML language code for the language associated with this phone access. To be parsed by the i18n LanguageCode utility. Examples: \"es-419\" for Latin American Spanish, \"fr-CA\" for Canadian French.",
          type = "string",
        },
        phoneNumber = {
          description = "The phone number to dial for this meeting space in E.164 format. Full phone number with a leading '+' character.",
          type = "string",
        },
        pin = {
          description = "The PIN that users must enter after dialing the given number. The PIN consists of only decimal digits and the length may vary.",
          type = "string",
        },
        regionCode = {
          description = "The CLDR/ISO 3166 region code for the country associated with this phone access. To be parsed by the i18n RegionCode utility. Example: \"SE\" for Sweden.",
          type = "string",
        },
      },
      type = "object",
    },
    PhoneNumber = {
      description = "A person's Phone Number",
      id = "PhoneNumber",
      properties = {
        phoneNumber = {
          description = "The phone number of the person.",
          type = "string",
        },
        type = {
          enum = {
            "OTHER",
            "MOBILE",
            "OFFICE",
          },
          enumDescriptions = {
            "",
            "",
            "",
          },
          type = "string",
        },
      },
      type = "object",
    },
    Photo = {
      description = "A person's photo.",
      id = "Photo",
      properties = {
        url = {
          description = "The URL of the photo.",
          type = "string",
        },
      },
      type = "object",
    },
    PinnedItemId = {
      id = "PinnedItemId",
      properties = {
        driveId = {
          description = "Identifier for a Drive file (e.g. Docs, Sheets, Slides).",
          type = "string",
        },
      },
      type = "object",
    },
    PollItemsRequest = {
      id = "PollItemsRequest",
      properties = {
        connectorName = {
          description = "The name of connector making this call. Format: datasources/{source_id}/connectors/{ID}",
          type = "string",
        },
        debugOptions = {
          ["$ref"] = "DebugOptions",
          description = "Common debug options.",
        },
        limit = {
          description = "Maximum number of items to return. The maximum value is 100 and the default value is 20.",
          format = "int32",
          type = "integer",
        },
        queue = {
          description = "Queue name to fetch items from. If unspecified, PollItems will fetch from 'default' queue. The maximum length is 100 characters.",
          type = "string",
        },
        statusCodes = {
          description = "Limit the items polled to the ones with these statuses.",
          items = {
            enum = {
              "CODE_UNSPECIFIED",
              "ERROR",
              "MODIFIED",
              "NEW_ITEM",
              "ACCEPTED",
            },
            enumDescriptions = {
              "Input-only value. Used with Items.list to list all items in the queue, regardless of status.",
              "Error encountered by Cloud Search while processing this item. Details of the error are in repositoryError.",
              "Item has been modified in the repository, and is out of date with the version previously accepted into Cloud Search.",
              "Item is known to exist in the repository, but is not yet accepted by Cloud Search. An item can be in this state when Items.push has been called for an item of this name that did not exist previously.",
              "API has accepted the up-to-date data of this item.",
            },
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    PollItemsResponse = {
      id = "PollItemsResponse",
      properties = {
        items = {
          description = "Set of items from the queue available for connector to process. These items have the following subset of fields populated: version metadata.hash structured_data.hash content.hash payload status queue",
          items = {
            ["$ref"] = "Item",
          },
          type = "array",
        },
      },
      type = "object",
    },
    PossiblyTrimmedModel = {
      description = "This message contains either the device model, or a prefix of the device model (AKA a trimmed device model). The \"is_trimmed\" field indicates which one it is.",
      id = "PossiblyTrimmedModel",
      properties = {
        isTrimmed = {
          type = "boolean",
        },
        model = {
          type = "string",
        },
      },
      type = "object",
    },
    PostiniUserProto = {
      description = "See http://s/?fileprint=//depot/google3/security/authentication/postini/auth_token.proto",
      id = "PostiniUserProto",
      properties = {
        postiniUserId = {
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    PreState = {
      description = "State of the thread previous to the update. This really just describes the label state of all messages before the update.",
      id = "PreState",
      properties = {
        labelIds = {
          items = {
            type = "string",
          },
          type = "array",
        },
        messageKey = {
          ["$ref"] = "MultiKey",
        },
        syncIds = {
          description = "Note that there can be fewer sync ids than label ids.",
          items = {
            format = "uint32",
            type = "integer",
          },
          type = "array",
        },
        threadKey = {
          ["$ref"] = "MultiKey",
        },
      },
      type = "object",
    },
    PrefDeleted = {
      description = "PREF_DELETED",
      id = "PrefDeleted",
      properties = {},
      type = "object",
    },
    PrefUpdate = {
      description = "HistoryRecord for changes associated with prefs, namely: PREF_WRITTEN PREF_DELETED",
      id = "PrefUpdate",
      properties = {
        name = {
          description = "Name of the affected preference.",
          type = "string",
        },
        preState = {
          ["$ref"] = "FuseboxPrefUpdatePreState",
        },
        prefDeleted = {
          ["$ref"] = "PrefDeleted",
        },
        prefWritten = {
          ["$ref"] = "PrefWritten",
        },
      },
      type = "object",
    },
    PrefWritten = {
      description = "PREF_WRITTEN",
      id = "PrefWritten",
      properties = {
        value = {
          format = "byte",
          type = "string",
        },
      },
      type = "object",
    },
    Presenter = {
      description = "Presenter contains information about which device is currently presenting as well as which device requested the presenter to be set.",
      id = "Presenter",
      properties = {
        byDeviceId = {
          description = "The device resource name of the device which requested the current presenter to be set. This field can not be modified by clients.",
          type = "string",
        },
        copresenterDeviceIds = {
          description = "The device resource names of other devices which can control the current presentation.",
          items = {
            type = "string",
          },
          type = "array",
        },
        presenterDeviceId = {
          description = "The device resource name of the currently presenting device.",
          type = "string",
        },
      },
      type = "object",
    },
    Principal = {
      description = "Reference to a user, group, or domain.",
      id = "Principal",
      properties = {
        groupResourceName = {
          description = "This principal is a group identified using an external identity. The name field must specify the group resource name with this format: identitysources/{source_id}/groups/{ID}",
          type = "string",
        },
        gsuitePrincipal = {
          ["$ref"] = "GSuitePrincipal",
          description = "This principal is a Google Workspace user, group or domain.",
        },
        userResourceName = {
          description = "This principal is a user identified using an external identity. The name field must specify the user resource name with this format: identitysources/{source_id}/users/{ID}",
          type = "string",
        },
      },
      type = "object",
    },
    PrincipalProto = {
      description = "A Principal represents something to which permissions are assigned, often but not always a user or group of some kind. It is most appropriate for use in ACLs and authorization checks. Callers should prefer to use the wrapper classes in google3/security/credentials/public/principal.h google3/java/com/google/security/credentials/Principal.java google3/security/credentials/go/principal.go unless direct proto access is essential. If you update this protocol buffer, please update the wrapper classes as well.",
      id = "PrincipalProto",
      properties = {
        allAuthenticatedUsers = {
          ["$ref"] = "AllAuthenticatedUsersProto",
          description = "scope = ALL_AUTHENTICATED_USERS",
        },
        capTokenHolder = {
          ["$ref"] = "CapTokenHolderProto",
          description = "scope = CAP_TOKEN_HOLDER",
        },
        chat = {
          ["$ref"] = "ChatProto",
          description = "scope = CHAT",
        },
        circle = {
          ["$ref"] = "CircleProto",
          description = "scope = CIRCLE",
        },
        cloudPrincipal = {
          ["$ref"] = "CloudPrincipalProto",
          description = "scope = CLOUD_PRINCIPAL",
        },
        contactGroup = {
          ["$ref"] = "ContactGroupProto",
          description = "scope = CONTACT_GROUP",
        },
        emailOwner = {
          ["$ref"] = "EmailOwnerProto",
          description = "scope = EMAIL_OWNER",
        },
        event = {
          ["$ref"] = "EventProto",
          description = "scope = EVENT",
        },
        gaiaGroup = {
          ["$ref"] = "GaiaGroupProto",
          description = "scope = GAIA_GROUP",
        },
        gaiaUser = {
          ["$ref"] = "GaiaUserProto",
          description = "scope = GAIA_USER",
        },
        host = {
          ["$ref"] = "HostProto",
          description = "scope = HOST",
        },
        ldapGroup = {
          ["$ref"] = "LdapGroupProto",
          description = "scope = LDAP_GROUP",
        },
        ldapUser = {
          ["$ref"] = "LdapUserProto",
          description = "scope = LDAP_USER",
        },
        mdbGroup = {
          ["$ref"] = "MdbGroupProto",
          description = "scope = MDB_GROUP",
        },
        mdbUser = {
          ["$ref"] = "MdbUserProto",
          description = "scope = MDB_USER",
        },
        oauthConsumer = {
          ["$ref"] = "OAuthConsumerProto",
          description = "scope = OAUTH_CONSUMER;",
        },
        postiniUser = {
          ["$ref"] = "PostiniUserProto",
          description = "scope = POSTINI_USER",
        },
        rbacRole = {
          ["$ref"] = "RbacRoleProto",
          description = "scope = RBAC_ROLE",
        },
        rbacSubject = {
          ["$ref"] = "RbacSubjectProto",
          description = "scope = RBAC_SUBJECT",
        },
        resourceRole = {
          ["$ref"] = "ResourceRoleProto",
          description = "scope = RESOURCE_ROLE",
        },
        scope = {
          description = "This is only optional because required enums cannot be extended. Currently required.",
          enum = {
            "INVALID",
            "GAIA_USER",
            "GAIA_GROUP",
            "LDAP_USER",
            "LDAP_GROUP",
            "MDB_USER",
            "MDB_GROUP",
            "POSTINI_USER",
            "CONTACT_GROUP",
            "SIMPLE_SECRET_HOLDER",
            "SIGNING_KEY_POSSESSOR",
            "ALL_AUTHENTICATED_USERS",
            "OAUTH_CONSUMER",
            "HOST",
            "SOCIAL_GRAPH_NODE",
            "EMAIL_OWNER",
            "CAP_TOKEN_HOLDER",
            "CIRCLE",
            "SQUARE",
            "EVENT",
            "RESOURCE_ROLE",
            "CHAT",
            "YOUTUBE_USER",
            "UNUSED_ZWIEBACK_SESSION",
            "ZWIEBACK_SESSION",
            "RBAC_ROLE",
            "RBAC_SUBJECT",
            "CLOUD_PRINCIPAL",
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
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "next tag: 29",
          },
          type = "string",
        },
        signingKeyPossessor = {
          ["$ref"] = "SigningKeyPossessorProto",
          description = "scope = SIGNING_KEY_POSSESSOR",
        },
        simpleSecretHolder = {
          ["$ref"] = "SimpleSecretHolderProto",
          description = "scope = SIMPLE_SECRET_HOLDER",
        },
        socialGraphNode = {
          ["$ref"] = "SocialGraphNodeProto",
          description = "scope = SOCIAL_GRAPH_NODE",
        },
        square = {
          ["$ref"] = "SquareProto",
          description = "scope = SQUARE",
        },
        youtubeUser = {
          ["$ref"] = "YoutubeUserProto",
          description = "scope = YOUTUBE_USER",
        },
        zwiebackSession = {
          ["$ref"] = "ZwiebackSessionProto",
          description = "scope = ZWIEBACK_SESSION",
        },
      },
      type = "object",
    },
    PrivateMessageInfo = {
      description = "Private message information specific to a given user. DEPRECATED: Use the privateMessageViewer field in CreateMessageInfo instead.",
      id = "PrivateMessageInfo",
      properties = {
        annotations = {
          description = "Annotations private to {@code userId}.",
          items = {
            ["$ref"] = "Annotation",
          },
          type = "array",
        },
        attachments = {
          description = "Attachments private to {@code userId}.",
          items = {
            ["$ref"] = "Attachment",
          },
          type = "array",
        },
        contextualAddOnMarkup = {
          items = {
            ["$ref"] = "GoogleChatV1ContextualAddOnMarkup",
          },
          type = "array",
        },
        gsuiteIntegrationMetadata = {
          items = {
            ["$ref"] = "GsuiteIntegrationMetadata",
          },
          type = "array",
        },
        text = {
          description = "Text private to {@code user_id}. Initial restriction: Only one of public text or private text is rendered on the client. So if public text is set, private text is ignored.",
          type = "string",
        },
        userId = {
          ["$ref"] = "UserId",
          description = "Required. The elements in this struct are visible to this user.",
        },
      },
      type = "object",
    },
    ProcessingError = {
      id = "ProcessingError",
      properties = {
        code = {
          description = "Error code indicating the nature of the error.",
          enum = {
            "PROCESSING_ERROR_CODE_UNSPECIFIED",
            "MALFORMED_REQUEST",
            "UNSUPPORTED_CONTENT_FORMAT",
            "INDIRECT_BROKEN_ACL",
            "ACL_CYCLE",
          },
          enumDescriptions = {
            "Input only value. Use this value in Items.",
            "Item's ACL, metadata, or content is malformed or in invalid state. FieldViolations contains more details on where the problem is.",
            "Countent format is unsupported.",
            "Items with incomplete ACL information due to inheriting other items with broken ACL or having groups with unmapped descendants.",
            "ACL inheritance graph formed a cycle.",
          },
          type = "string",
        },
        errorMessage = {
          description = "The description of the error.",
          type = "string",
        },
        fieldViolations = {
          description = "In case the item fields are invalid, this field contains the details about the validation errors.",
          items = {
            ["$ref"] = "FieldViolation",
          },
          type = "array",
        },
      },
      type = "object",
    },
    PropertyDefinition = {
      description = "The definition of a property within an object.",
      id = "PropertyDefinition",
      properties = {
        booleanPropertyOptions = {
          ["$ref"] = "BooleanPropertyOptions",
        },
        datePropertyOptions = {
          ["$ref"] = "DatePropertyOptions",
        },
        displayOptions = {
          ["$ref"] = "PropertyDisplayOptions",
          description = "The options that determine how the property is displayed in the Cloud Search results page if it's specified to be displayed in the object's display options.",
        },
        doublePropertyOptions = {
          ["$ref"] = "DoublePropertyOptions",
        },
        enumPropertyOptions = {
          ["$ref"] = "EnumPropertyOptions",
        },
        htmlPropertyOptions = {
          ["$ref"] = "HtmlPropertyOptions",
        },
        integerPropertyOptions = {
          ["$ref"] = "IntegerPropertyOptions",
        },
        isFacetable = {
          description = "Indicates that the property can be used for generating facets. Cannot be true for properties whose type is object. IsReturnable must be true to set this option. Only supported for boolean, enum, and text properties.",
          type = "boolean",
        },
        isRepeatable = {
          description = "Indicates that multiple values are allowed for the property. For example, a document only has one description but can have multiple comments. Cannot be true for properties whose type is a boolean. If set to false, properties that contain more than one value cause the indexing request for that item to be rejected.",
          type = "boolean",
        },
        isReturnable = {
          description = "Indicates that the property identifies data that should be returned in search results via the Query API. If set to *true*, indicates that Query API users can use matching property fields in results. However, storing fields requires more space allocation and uses more bandwidth for search queries, which impacts performance over large datasets. Set to *true* here only if the field is needed for search results. Cannot be true for properties whose type is an object.",
          type = "boolean",
        },
        isSortable = {
          description = "Indicates that the property can be used for sorting. Cannot be true for properties that are repeatable. Cannot be true for properties whose type is object. IsReturnable must be true to set this option. Only supported for boolean, date, double, integer, and timestamp properties.",
          type = "boolean",
        },
        isSuggestable = {
          description = "Indicates that the property can be used for generating query suggestions.",
          type = "boolean",
        },
        isWildcardSearchable = {
          description = "Indicates that users can perform wildcard search for this property. Only supported for Text properties. IsReturnable must be true to set this option. In a given datasource maximum of 5 properties can be marked as is_wildcard_searchable. For more details, see [Define object properties](https://developers.google.com/cloud-search/docs/guides/schema-guide#properties)",
          type = "boolean",
        },
        name = {
          description = "The name of the property. Item indexing requests sent to the Indexing API should set the property name equal to this value. For example, if name is *subject_line*, then indexing requests for document items with subject fields should set the name for that field equal to *subject_line*. Use the name as the identifier for the object property. Once registered as a property for an object, you cannot re-use this name for another property within that object. The name must start with a letter and can only contain letters (A-Z, a-z) or numbers (0-9). The maximum length is 256 characters.",
          type = "string",
        },
        objectPropertyOptions = {
          ["$ref"] = "ObjectPropertyOptions",
        },
        textPropertyOptions = {
          ["$ref"] = "TextPropertyOptions",
        },
        timestampPropertyOptions = {
          ["$ref"] = "TimestampPropertyOptions",
        },
      },
      type = "object",
    },
    PropertyDisplayOptions = {
      description = "The display options for a property.",
      id = "PropertyDisplayOptions",
      properties = {
        displayLabel = {
          description = "The user friendly label for the property that is used if the property is specified to be displayed in ObjectDisplayOptions. If provided, the display label is shown in front of the property values when the property is part of the object display options. For example, if the property value is '1', the value by itself may not be useful context for the user. If the display name given was 'priority', then the user sees 'priority : 1' in the search results which provides clear context to search users. This is OPTIONAL; if not given, only the property values are displayed. The maximum length is 64 characters.",
          type = "string",
        },
      },
      type = "object",
    },
    Provenance = {
      description = "This field records where the ItemScope was retrieved, if it was created via a web fetch.",
      id = "Provenance",
      properties = {
        annotationBlob = {
          description = "Annotation blob from Annotation Service.",
          format = "byte",
          type = "string",
        },
        canonicalUrl = {
          description = "Canonical url of the retrieved_url, if one was resolved during retrieval, for example, if a rel=\"canonical\" link tag was provided in the retrieved web page.",
          type = "string",
        },
        inputUrl = {
          description = "The url originally passed in the PRS request, which should be used to re-discover the content. Note that this URL may be a forwarding service or link shortener (bit.ly), so it should not be assumed to be canonical, but should be used for navigation back to the original source of the itemscope.",
          type = "string",
        },
        itemtype = {
          description = "Contains exact types as parsed, whether or not we recognized that type at parse time. If an itemscope is created by merging SchemaOrg markup and open graph markup then the first itemtype would be schemaorg type, the second would be open graph and so on. example: http://schema.org/VideoObject, og:video.movie Plain text; usually a URL",
          items = {
            type = "string",
          },
          type = "array",
        },
        retrievedTimestampMsec = {
          description = "The server retrieved timestamp (in msec).",
          format = "uint64",
          type = "string",
        },
        retrievedUrl = {
          description = "The final URL that was the actual source of the itemscope, after any redirects.",
          type = "string",
        },
      },
      type = "object",
    },
    PushItem = {
      description = "Represents an item to be pushed to the indexing queue.",
      id = "PushItem",
      properties = {
        contentHash = {
          description = "Content hash of the item according to the repository. If specified, this is used to determine how to modify this item's status. Setting this field and the type field results in argument error. The maximum length is 2048 characters.",
          type = "string",
        },
        metadataHash = {
          description = "The metadata hash of the item according to the repository. If specified, this is used to determine how to modify this item's status. Setting this field and the type field results in argument error. The maximum length is 2048 characters.",
          type = "string",
        },
        payload = {
          description = "Provides additional document state information for the connector, such as an alternate repository ID and other metadata. The maximum length is 8192 bytes.",
          format = "byte",
          type = "string",
        },
        queue = {
          description = "Queue to which this item belongs. The `default` queue is chosen if this field is not specified. The maximum length is 512 characters.",
          type = "string",
        },
        repositoryError = {
          ["$ref"] = "RepositoryError",
          description = "Populate this field to store Connector or repository error details. This information is displayed in the Admin Console. This field may only be populated when the Type is REPOSITORY_ERROR.",
        },
        structuredDataHash = {
          description = "Structured data hash of the item according to the repository. If specified, this is used to determine how to modify this item's status. Setting this field and the type field results in argument error. The maximum length is 2048 characters.",
          type = "string",
        },
        type = {
          description = "The type of the push operation that defines the push behavior.",
          enum = {
            "UNSPECIFIED",
            "MODIFIED",
            "NOT_MODIFIED",
            "REPOSITORY_ERROR",
            "REQUEUE",
          },
          enumDescriptions = {
            "Default UNSPECIFIED. Specifies that the push operation should not modify ItemStatus",
            "Indicates that the repository document has been modified or updated since the previous update call. This changes status to MODIFIED state for an existing item. If this is called on a non existing item, the status is changed to NEW_ITEM.",
            "Item in the repository has not been modified since the last update call. This push operation will set status to ACCEPTED state.",
            "Connector is facing a repository error regarding this item. Change status to REPOSITORY_ERROR state. Item is unreserved and rescheduled at a future time determined by exponential backoff.",
            "Call push with REQUEUE only for items that have been reserved. This action unreserves the item and resets its available time to the wall clock time.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    PushItemRequest = {
      id = "PushItemRequest",
      properties = {
        connectorName = {
          description = "The name of connector making this call. Format: datasources/{source_id}/connectors/{ID}",
          type = "string",
        },
        debugOptions = {
          ["$ref"] = "DebugOptions",
          description = "Common debug options.",
        },
        item = {
          ["$ref"] = "PushItem",
          description = "Item to push onto the queue.",
        },
      },
      type = "object",
    },
    QueryCountByStatus = {
      id = "QueryCountByStatus",
      properties = {
        count = {
          format = "int64",
          type = "string",
        },
        statusCode = {
          description = "This represents the http status code.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    QueryInterpretation = {
      id = "QueryInterpretation",
      properties = {
        interpretationType = {
          enum = {
            "NONE",
            "BLEND",
            "REPLACE",
          },
          enumDescriptions = {
            "Neither the natural language interpretation, nor a broader version of the query is used to fetch the search results.",
            "The results from original query are blended with other results. The reason for blending these other results with the results from original query is populated in the 'Reason' field below.",
            "The results from original query are replaced. The reason for replacing the results from original query is populated in the 'Reason' field below.",
          },
          type = "string",
        },
        interpretedQuery = {
          description = "The interpretation of the query used in search. For example, queries with natural language intent like \"email from john\" will be interpreted as \"from:john source:mail\". This field will not be filled when the reason is NOT_ENOUGH_RESULTS_FOUND_FOR_USER_QUERY.",
          type = "string",
        },
        reason = {
          description = "The reason for interpretation of the query. This field will not be UNSPECIFIED if the interpretation type is not NONE.",
          enum = {
            "UNSPECIFIED",
            "QUERY_HAS_NATURAL_LANGUAGE_INTENT",
            "NOT_ENOUGH_RESULTS_FOUND_FOR_USER_QUERY",
          },
          enumDescriptions = {
            "",
            "Natural language interpretation of the query is used to fetch the search results.",
            "Query and document terms similarity is used to selectively broaden the query to retrieve additional search results since enough results were not found for the user query. Interpreted query will be empty for this case.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    QueryInterpretationConfig = {
      description = "Default options to interpret user query.",
      id = "QueryInterpretationConfig",
      properties = {
        forceDisableSupplementalResults = {
          description = "Set this flag to disable supplemental results retrieval, setting a flag here will not retrieve supplemental results for queries associated with a given search application. If this flag is set to True, it will take precedence over the option set at Query level. For the default value of False, query level flag will set the correct interpretation for supplemental results.",
          type = "boolean",
        },
        forceVerbatimMode = {
          description = "Enable this flag to turn off all internal optimizations like natural language (NL) interpretation of queries, supplemental results retrieval, and usage of synonyms including custom ones. If this flag is set to True, it will take precedence over the option set at Query level. For the default value of False, query level flag will set the correct interpretation for verbatim mode.",
          type = "boolean",
        },
      },
      type = "object",
    },
    QueryInterpretationOptions = {
      description = "Options to interpret user query.",
      id = "QueryInterpretationOptions",
      properties = {
        disableNlInterpretation = {
          description = "Flag to disable natural language (NL) interpretation of queries. Default is false, Set to true to disable natural language interpretation. NL interpretation only applies to predefined datasources.",
          type = "boolean",
        },
        disableSupplementalResults = {
          description = "Use this flag to disable supplemental results for a query. Supplemental results setting chosen at SearchApplication level will take precedence if set to True.",
          type = "boolean",
        },
        enableVerbatimMode = {
          description = "Enable this flag to turn off all internal optimizations like natural language (NL) interpretation of queries, supplemental result retrieval, and usage of synonyms including custom ones. Nl interpretation will be disabled if either one of the two flags is true.",
          type = "boolean",
        },
      },
      type = "object",
    },
    QueryItem = {
      description = "Information relevant only to a query entry.",
      id = "QueryItem",
      properties = {
        isSynthetic = {
          description = "True if the text was generated by means other than a previous user search.",
          type = "boolean",
        },
      },
      type = "object",
    },
    QueryOperator = {
      description = "The definition of a operator that can be used in a Search/Suggest request.",
      id = "QueryOperator",
      properties = {
        displayName = {
          description = "Display name of the operator",
          type = "string",
        },
        enumValues = {
          description = "Potential list of values for the opeatror field. This field is only filled when we can safely enumerate all the possible values of this operator.",
          items = {
            type = "string",
          },
          type = "array",
        },
        greaterThanOperatorName = {
          description = "Indicates the operator name that can be used to isolate the property using the greater-than operator.",
          type = "string",
        },
        isFacetable = {
          description = "Can this operator be used to get facets.",
          type = "boolean",
        },
        isRepeatable = {
          description = "Indicates if multiple values can be set for this property.",
          type = "boolean",
        },
        isReturnable = {
          description = "Will the property associated with this facet be returned as part of search results.",
          type = "boolean",
        },
        isSortable = {
          description = "Can this operator be used to sort results.",
          type = "boolean",
        },
        isSuggestable = {
          description = "Can get suggestions for this field.",
          type = "boolean",
        },
        lessThanOperatorName = {
          description = "Indicates the operator name that can be used to isolate the property using the less-than operator.",
          type = "string",
        },
        objectType = {
          description = "The name of the object corresponding to the operator. This field is only filled for schema-specific operators, and is unset for common operators.",
          type = "string",
        },
        operatorName = {
          description = "The name of the operator.",
          type = "string",
        },
        type = {
          description = "The type of the operator.",
          enum = {
            "UNKNOWN",
            "INTEGER",
            "DOUBLE",
            "TIMESTAMP",
            "BOOLEAN",
            "ENUM",
            "DATE",
            "TEXT",
            "HTML",
          },
          enumDescriptions = {
            "Invalid value.",
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
      },
      type = "object",
    },
    QuerySource = {
      description = "List of sources that the user can search using the query API.",
      id = "QuerySource",
      properties = {
        displayName = {
          description = "Display name of the data source.",
          type = "string",
        },
        operators = {
          description = "List of all operators applicable for this source.",
          items = {
            ["$ref"] = "QueryOperator",
          },
          type = "array",
        },
        shortName = {
          description = "A short name or alias for the source. This value can be used with the 'source' operator.",
          type = "string",
        },
        source = {
          ["$ref"] = "Source",
          description = "The name of the source",
        },
      },
      type = "object",
    },
    QuerySuggestion = {
      description = "This field does not contain anything as of now and is just used as an indicator that the suggest result was a phrase completion.",
      id = "QuerySuggestion",
      properties = {},
      type = "object",
    },
    QuotedMessageMetadata = {
      description = "Quote metadata: go/message-quoting-be-dd-v2. This proto is only used on the read path. For the request proto, refer to `QuotedMessagePayload`. Fields are either derived from storage directly from the Item this metadata belongs to, or is hydrated at read time from another Item read. Note: QuotedMessageMetadata proto is similar to Message proto with less field. Reasons to differtiate QuotedMessageMetadata from Message are: 1. Not all fields for original message is applicable for quoted message. (E.g. reactions, is_inline_reply, etc.), thus separting out for confusion. 2. We don't support nested message quoting. For more detailed discussion, please see http://shortn/_VsSXQb2C7P. For future reference: if your new feature/field will be supported in message quoting feature (go/chat-quoting-prd), you will need to add that field within QuotedMessageMetadata",
      id = "QuotedMessageMetadata",
      properties = {
        annotations = {
          description = "Output only. Snapshot of the annotations of the quoted message.",
          items = {
            ["$ref"] = "Annotation",
          },
          readOnly = true,
          type = "array",
        },
        appProfile = {
          ["$ref"] = "AppsDynamiteSharedAppProfile",
          description = "Output only. Custom display profile info for apps. Will be empty for real users.",
          readOnly = true,
        },
        botAttachmentState = {
          description = "Output only. The bot attachment state of the quoted message. Used by clients to display a bot attachment indicator in the UI.",
          enum = {
            "BOT_ATTACHMENT_STATE_UNSPECIFIED",
            "BOT_ATTACHMENT_STATE_HAS_BOT_ATTACHMENT",
            "BOT_ATTACHMENT_STATE_NO_BOT_ATTACHMENT",
          },
          enumDescriptions = {
            "",
            "",
            "",
          },
          readOnly = true,
          type = "string",
        },
        createTimeMicros = {
          description = "Output only. Time when the quoted message was posted in microseconds.",
          format = "int64",
          readOnly = true,
          type = "string",
        },
        creatorId = {
          ["$ref"] = "UserId",
          description = "Output only. ID of the User who posted the quoted message. This includes information to identify if the quoted message was posted by an App on behalf of a user.",
          readOnly = true,
        },
        lastEditTimeMicros = {
          description = "Output only. Time when the quoted message was last edited by a user at the time when quoting action happens. Time is in microseconds.",
          format = "int64",
          readOnly = true,
          type = "string",
        },
        lastUpdateTimeWhenQuotedMicros = {
          description = "The `last_update_time` of the original message when the client initiated the quote creation. This is derived from the request payload passed from clients. Used to fetch the quoted message contents at a specific time on the read path. This field is populated from storage directly.",
          format = "int64",
          type = "string",
        },
        messageId = {
          ["$ref"] = "MessageId",
          description = "MessageId of the original message that is being quoted. This is derived from the request payload passed from clients. This field is populated from storage directly.",
        },
        messageState = {
          description = "Output only. The state of the quoted message. Used by clients to display tombstones for quotes that reference a deleted message.",
          enum = {
            "MESSAGE_STATE_UNSPECIFIED",
            "MESSAGE_STATE_ACTIVE",
            "MESSAGE_STATE_DELETED",
            "MESSAGE_STATE_OTR_EDITED",
          },
          enumDescriptions = {
            "",
            "The original message is present in storage and not deleted; the message contents can be hydrated.",
            "The original message has been deleted; the message contents cannot be hydrated.",
            "The OTR original message was edited and therefore no longer retrievable from storage; the message contents cannot be hydrated. See go/message-quoting-otr-edits for more context.",
          },
          readOnly = true,
          type = "string",
        },
        retentionSettings = {
          ["$ref"] = "AppsDynamiteSharedRetentionSettings",
          description = "Output only. The retention (OTR) settings of the quoted message.",
          readOnly = true,
        },
        textBody = {
          description = "Output only. Snapshot of the text body of the quoted message.",
          readOnly = true,
          type = "string",
        },
        updaterId = {
          ["$ref"] = "UserId",
          description = "Output only. ID of the User who last updated (created/edited/deleted) the quoted message at the time when quoting action happens. This includes information to identify if the quoted message was posted by an App on behalf of a user.",
          readOnly = true,
        },
        uploadMetadata = {
          description = "Output only. Upload metadata of the quoted message.",
          items = {
            ["$ref"] = "UploadMetadata",
          },
          readOnly = true,
          type = "array",
        },
      },
      type = "object",
    },
    Rank = {
      description = "The rank contains a tuple of numbers which may be used as a general sort order. The rank should be treated as an ordered set of numbers, where the ordering is done in descending order of the most significant rank member. For example, given the following ranks described as (primary, secondary): (1,1), (1,2), (2,2) (2,1) The descending rank-order is: (2,2) > (2,1) > (1,2) > (1,1)",
      id = "Rank",
      properties = {
        primary = {
          description = "The primary rank is the most significant rank member. This rank element should always be present. Items with higher primary rank are always considered of higher rank than those of lower primary rank.",
          format = "int64",
          type = "string",
        },
        secondary = {
          description = "The secondary rank may be used to rank items of identical primary rank. This rank element should always be present.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    RbacRoleProto = {
      description = "Principal associated with a given RBAC role. This principal is used by Sphinx Provisioning Service for RBAC (go/cedi-auth) provisionable (go/sphinx-rbacz-design).",
      id = "RbacRoleProto",
      properties = {
        name = {
          type = "string",
        },
        objectId = {
          type = "string",
        },
        rbacNamespace = {
          description = "DEPRECATED as of 01.11.2019",
          type = "string",
        },
        rbacRoleName = {
          description = "Format: \"RbacNamespaceName.RbacRoleName(/field=value)*\", e.g., \"hr.v1.Reader\", \"hr.v1.Reader/language=EN_US/country=USA/room=NYC-9th-11A201\".",
          type = "string",
        },
      },
      type = "object",
    },
    RbacSubjectProto = {
      description = "Principal associated with a given RBAC subject. This principal is used by Sphinx Provisioning Service for RBAC (go/cedi-auth) provisionable (go/sphinx-rbacz-design).",
      id = "RbacSubjectProto",
      properties = {
        username = {
          description = "Format \"username\" without \"@domain\", e.g., \"bogdand\".",
          type = "string",
        },
      },
      type = "object",
    },
    ReactionInfo = {
      description = "Contains information about an emoji reaction.",
      id = "ReactionInfo",
      properties = {
        emoji = {
          description = "Unicode string representing a single emoji.",
          type = "string",
        },
      },
      type = "object",
    },
    ReadReceiptsSettingsUpdatedMetadata = {
      id = "ReadReceiptsSettingsUpdatedMetadata",
      properties = {
        readReceiptsEnabled = {
          description = "The new read receipts state.",
          type = "boolean",
        },
      },
      type = "object",
    },
    Recipient = {
      id = "Recipient",
      properties = {
        email = {
          type = "string",
        },
      },
      type = "object",
    },
    RecordingEvent = {
      description = "A recording event is something that happens to the recording in a conference.",
      id = "RecordingEvent",
      properties = {
        deviceId = {
          description = "The initiator of the latest event of the recording. It will be set for all user events (`type` is 100-199) and unset for all server events (`type` is 200-299).",
          type = "string",
        },
        type = {
          description = "The type of event.",
          enum = {
            "RECORDING_EVENT_UNSPECIFIED",
            "USER_ACTION",
            "STARTED_BY_USER",
            "STOPPED_BY_USER",
            "CANCELLED_BY_USER",
            "CANCELLED_INITIALIZATION_FAILED",
            "CANCELLED_INITIATOR_LEFT",
            "ACTIVE_ABOUT_TO_STOP_TOO_LONG",
            "STOPPED_TOO_LONG",
            "STOPPED_ALL_DEVICES_LEFT",
            "STOPPED_INTERNAL_FAILURES",
          },
          enumDescriptions = {
            "This is never used.",
            "Deprecated, use detailed user actions instead.",
            "Recording was started or is being started by a user.",
            "Recording was stopped by a user.",
            "Recording was cancelled by a user.",
            "Recording was cancelled by the server because of a failure during recording initialization.",
            "Recording was cancelled by the server because the recording initiator left the conference during initialization. When the initiator leaves after the recording is started, no event is triggered.",
            "Recording is about to be stopped by the server because the recording is about to reach the maximum duration.",
            "Recording was stopped because the recording reached the maximum duration.",
            "Recording was stopped because there were no devices left in the conference.",
            "Recording was stopped because of an internal error.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    RecordingInfo = {
      description = "This message is deprecated, please use RecordingSessionInfo instead. Information about recording in the current conference.",
      id = "RecordingInfo",
      properties = {
        latestRecordingEvent = {
          ["$ref"] = "RecordingEvent",
          description = "The latest recording event. This can be used by clients to help explain what is going on, why recording stopped, etc. This will always be set if there is or was an active recording, which means there can be latest event when recording is INACTIVE.",
        },
        ownerDisplayName = {
          description = "The display name of the owner of the recording output. Email notifications about uploaded recordings will also be sent to this owner.",
          type = "string",
        },
        producerDeviceId = {
          description = "The device resource name of the producer device for the currently active recording. Note that, after the producer drops/leaves the conference, this field will be cleaned up by the server after a delay.",
          type = "string",
        },
        recordingApplicationType = {
          description = "The application type of the current active recording. `RECORDING_APPLICATION_TYPE_UNSPECIFIED` if `recording_status` is inactive.",
          enum = {
            "RECORDING_APPLICATION_TYPE_UNSPECIFIED",
            "RECORDING",
            "GLIVE_STREAM",
            "BROADCAST",
          },
          enumDescriptions = {
            "This is never used.",
            "A meeting recording saved to a video file in Google Drive.",
            "A *Google Live* managed stream.",
            "A meeting broadcast.",
          },
          type = "string",
        },
        recordingId = {
          description = "An identifier for the current recording, if any. This is returned whenever recording_status is either `RECORDING_STARTING` or `RECORDING_STARTED`.",
          type = "string",
        },
        recordingStatus = {
          description = "The current status of the recording. This can be used by clients to show a recording dot or similar to indicated to the user that a recording is taking place.",
          enum = {
            "RECORDING_UNSPECIFIED",
            "RECORDING_INACTIVE",
            "RECORDING_STARTING",
            "RECORDING_STARTED",
          },
          enumDescriptions = {
            "This value is never used.",
            "The conference is not being recorded. This can mean either that no recording has been started, or that a previous recording has stopped.",
            "Recording is about to begin. The status will be updated to RECORDING_STARTED when the recording actually starts, which happens when all the backend plumbing is set up.",
            "The recording is started. Any media sent to the conference may be included in the resulting recording.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    RecordingSessionInfo = {
      description = "Information about a recording session.",
      id = "RecordingSessionInfo",
      properties = {
        ownerEmail = {
          description = "Input only. Deprecated field, should not be used.",
          type = "string",
        },
        recordingSessionId = {
          description = "A unique server-generated ID for the recording session.",
          type = "string",
        },
        sessionStateInfo = {
          ["$ref"] = "SessionStateInfo",
          description = "Recording session's state information.",
        },
      },
      type = "object",
    },
    Reference = {
      description = "All fields in this proto are now columns in spanner see google3/storage/slice/production/gmail/user_data_tables.pi for documentation.",
      id = "Reference",
      properties = {
        blobId = {
          type = "string",
        },
        contentType = {
          type = "string",
        },
        hash = {
          type = "string",
        },
        key = {
          description = "LINT.IfChange",
          type = "string",
        },
        name = {
          description = "LINT.ThenChange(//depot/google3/storage/slice/production/gmail/ user_data_tables.pi)",
          type = "string",
        },
        size = {
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    References = {
      id = "References",
      properties = {
        references = {
          items = {
            ["$ref"] = "Reference",
          },
          type = "array",
        },
      },
      type = "object",
    },
    RenameEvent = {
      id = "RenameEvent",
      properties = {
        newName = {
          type = "string",
        },
        originalName = {
          type = "string",
        },
      },
      type = "object",
    },
    RepositoryError = {
      description = "Errors when the connector is communicating to the source repository.",
      id = "RepositoryError",
      properties = {
        errorMessage = {
          description = "Message that describes the error. The maximum allowable length of the message is 8192 characters.",
          type = "string",
        },
        httpStatusCode = {
          description = "Error codes. Matches the definition of HTTP status codes.",
          format = "int32",
          type = "integer",
        },
        type = {
          description = "The type of error.",
          enum = {
            "UNKNOWN",
            "NETWORK_ERROR",
            "DNS_ERROR",
            "CONNECTION_ERROR",
            "AUTHENTICATION_ERROR",
            "AUTHORIZATION_ERROR",
            "SERVER_ERROR",
            "QUOTA_EXCEEDED",
            "SERVICE_UNAVAILABLE",
            "CLIENT_ERROR",
          },
          enumDescriptions = {
            "Unknown error.",
            "Unknown or unreachable host.",
            "DNS problem, such as the DNS server is not responding.",
            "Cannot connect to the repository server.",
            "Failed authentication due to incorrect credentials.",
            "Service account is not authorized for the repository.",
            "Repository server error.",
            "Quota exceeded.",
            "Server temporarily unavailable.",
            "Client-related error, such as an invalid request from the connector to the repository server.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    RequestFileScope = {
      id = "RequestFileScope",
      properties = {
        itemId = {
          type = "string",
        },
      },
      type = "object",
    },
    RequestFileScopeForActiveDocument = {
      id = "RequestFileScopeForActiveDocument",
      properties = {},
      type = "object",
    },
    RequestOptions = {
      description = "Shared request options for all RPC methods.",
      id = "RequestOptions",
      properties = {
        debugOptions = {
          ["$ref"] = "DebugOptions",
          description = "Debug options of the request",
        },
        languageCode = {
          description = "The BCP-47 language code, such as \"en-US\" or \"sr-Latn\". For more information, see http://www.unicode.org/reports/tr35/#Unicode_locale_identifier. For translations. Set this field using the language set in browser or for the page. In the event that the user's language preference is known, set this field to the known user language. When specified, the documents in search results are biased towards the specified language. From Suggest API perspective, for 3p suggest this is used as a hint while making predictions to add language boosting.",
          type = "string",
        },
        searchApplicationId = {
          description = "The ID generated when you create a search application using the [admin console](https://support.google.com/a/answer/9043922).",
          type = "string",
        },
        timeZone = {
          description = "Current user's time zone id, such as \"America/Los_Angeles\" or \"Australia/Sydney\". These IDs are defined by [Unicode Common Locale Data Repository (CLDR)](http://cldr.unicode.org/) project, and currently available in the file [timezone.xml](http://unicode.org/repos/cldr/trunk/common/bcp47/timezone.xml). This field is used to correctly interpret date and time queries. If this field is not specified, the default time zone (UTC) is used.",
          type = "string",
        },
      },
      type = "object",
    },
    RequiredMessageFeaturesMetadata = {
      description = "A list of capabilities that are used in this message.",
      id = "RequiredMessageFeaturesMetadata",
      properties = {
        requiredFeatures = {
          items = {
            enum = {
              "REQUIRED_FEATURE_UNSPECIFIED",
              "REQUIRED_FEATURE_MESSAGE_QUOTING",
              "REQUIRED_FEATURE_TOMBSTONES_IN_DMS_AND_UFRS",
              "REQUIRED_FEATURE_CUSTOM_HYPERLINK",
            },
            enumDescriptions = {
              "",
              "",
              "",
              "",
            },
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ResetSearchApplicationRequest = {
      id = "ResetSearchApplicationRequest",
      properties = {
        debugOptions = {
          ["$ref"] = "DebugOptions",
          description = "Common debug options.",
        },
      },
      type = "object",
    },
    ResourceRoleProto = {
      description = "A type of sharing target that points to some resource's ACL. Used to refer to the set of Principals that have the given privilege ('role_id') for the given resource ('application_id', 'object_id', 'object_part'). The meaning of 'role_id' is interpreted only by implementations of AclRpcService and is usually dependent on 'application_id' All fields except object_part are required. If present, object_part must be non-empty.",
      id = "ResourceRoleProto",
      properties = {
        applicationId = {
          type = "string",
        },
        objectId = {
          type = "string",
        },
        objectPart = {
          type = "string",
        },
        roleId = {
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    ResponseDebugInfo = {
      description = "Debugging information about the response.",
      id = "ResponseDebugInfo",
      properties = {
        formattedDebugInfo = {
          description = "General debug info formatted for display.",
          type = "string",
        },
      },
      type = "object",
    },
    RestrictItem = {
      description = "Information relevant only to a restrict entry. NextId: 12",
      id = "RestrictItem",
      properties = {
        driveFollowUpRestrict = {
          ["$ref"] = "DriveFollowUpRestrict",
        },
        driveLocationRestrict = {
          ["$ref"] = "DriveLocationRestrict",
        },
        driveMimeTypeRestrict = {
          ["$ref"] = "DriveMimeTypeRestrict",
          description = "Drive Types.",
        },
        driveTimeSpanRestrict = {
          ["$ref"] = "DriveTimeSpanRestrict",
        },
        searchOperator = {
          description = "The search restrict (e.g. \"after:2017-09-11 before:2017-09-12\").",
          type = "string",
        },
      },
      type = "object",
    },
    ResultCounts = {
      description = "Result count information",
      id = "ResultCounts",
      properties = {
        sourceResultCounts = {
          description = "Result count information for each source with results.",
          items = {
            ["$ref"] = "SourceResultCount",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ResultDebugInfo = {
      description = "Debugging information about the result.",
      id = "ResultDebugInfo",
      properties = {
        formattedDebugInfo = {
          description = "General debug info formatted for display.",
          type = "string",
        },
      },
      type = "object",
    },
    ResultDisplayField = {
      description = "Display Fields for Search Results",
      id = "ResultDisplayField",
      properties = {
        label = {
          description = "The display label for the property.",
          type = "string",
        },
        operatorName = {
          description = "The operator name of the property.",
          type = "string",
        },
        property = {
          ["$ref"] = "NamedProperty",
          description = "The name value pair for the property.",
        },
      },
      type = "object",
    },
    ResultDisplayLine = {
      description = "The collection of fields that make up a displayed line",
      id = "ResultDisplayLine",
      properties = {
        fields = {
          items = {
            ["$ref"] = "ResultDisplayField",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ResultDisplayMetadata = {
      id = "ResultDisplayMetadata",
      properties = {
        metalines = {
          description = "The metalines content to be displayed with the result.",
          items = {
            ["$ref"] = "ResultDisplayLine",
          },
          type = "array",
        },
        objectTypeLabel = {
          description = "The display label for the object.",
          type = "string",
        },
      },
      type = "object",
    },
    RetrievalImportance = {
      id = "RetrievalImportance",
      properties = {
        importance = {
          description = "Indicates the ranking importance given to property when it is matched during retrieval. Once set, the token importance of a property cannot be changed.",
          enum = {
            "DEFAULT",
            "HIGHEST",
            "HIGH",
            "LOW",
            "NONE",
          },
          enumDescriptions = {
            "Treat the match like a body text match.",
            "Treat the match like a match against title of the item.",
            "Treat the match with higher importance than body text.",
            "Treat the match with lower importance than body text.",
            "Do not match against this field during retrieval. The property can still be used for operator matching, faceting, and suggest if desired.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    RoomRenameMetadata = {
      id = "RoomRenameMetadata",
      properties = {
        newName = {
          type = "string",
        },
        prevName = {
          description = "NEXT_TAG: 3",
          type = "string",
        },
      },
      type = "object",
    },
    RoomUpdatedMetadata = {
      id = "RoomUpdatedMetadata",
      properties = {
        groupDetailsMetadata = {
          ["$ref"] = "GroupDetailsUpdatedMetadata",
        },
        groupLinkSharingEnabled = {
          type = "boolean",
        },
        initiator = {
          ["$ref"] = "User",
          description = "The user who initiated this room update. Complete member profiles, when ListTopicsRequest FetchOptions.USER is set. Otherwise, only the id will be filled in.",
        },
        initiatorType = {
          description = "The type of the user who initiated this room update.",
          enum = {
            "INITIATOR_TYPE_UNSPECIFIED",
            "INITIATOR_TYPE_END_USER",
            "INITIATOR_TYPE_ADMIN",
          },
          enumDescriptions = {
            "",
            "",
            "",
          },
          type = "string",
        },
        name = {
          description = "What was updated in the room.",
          type = "string",
        },
        renameMetadata = {
          ["$ref"] = "RoomRenameMetadata",
        },
        visibility = {
          ["$ref"] = "AppsDynamiteSharedGroupVisibility",
          description = "DEPRECATED: See GroupVisibility proto definition.",
        },
      },
      type = "object",
    },
    Roster = {
      description = "Roster profile information.",
      id = "Roster",
      properties = {
        avatarUrl = {
          type = "string",
        },
        id = {
          ["$ref"] = "RosterId",
        },
        isMembershipVisibleToCaller = {
          description = "Whether caller has visibility into members of the roster.",
          type = "boolean",
        },
        membershipCount = {
          format = "int32",
          type = "integer",
        },
        name = {
          type = "string",
        },
        rosterGaiaKey = {
          description = "Roster gaia key, usually an email address. Set in looking up rosters response.",
          type = "string",
        },
        rosterState = {
          description = "Roster deletion state - considered active unless set to deleted",
          enum = {
            "ROSTER_STATE_UNKNOWN",
            "ROSTER_ACTIVE",
            "ROSTER_DELETED",
          },
          enumDescriptions = {
            "",
            "Roster is active",
            "Roster deleted",
          },
          type = "string",
        },
        segmentedMembershipCounts = {
          ["$ref"] = "AppsDynamiteSharedSegmentedMembershipCounts",
          description = "Roster membership count. May contain counts based on member type and membership state.",
        },
      },
      type = "object",
    },
    RosterId = {
      description = "Primary key for Roster resource.",
      id = "RosterId",
      properties = {
        id = {
          description = "Opaque, server-assigned ID of the Roster.",
          type = "string",
        },
      },
      type = "object",
    },
    RpcOptions = {
      description = "Options for Triggers dispatched via RPC.",
      id = "RpcOptions",
      properties = {
        requestExtensions = {
          ["$ref"] = "MessageSet",
          description = "The RPC's request extensions (i.e. RPC::request_extensions(), a.k.a. the Stubby side channel) will be merged with the specified [request_extensions]. When Triggers are batched, the RPC's request extensions will be merged with all of the [request_extensions] of the Triggers in the batch. Note that merging of request extensions follows standard protocol buffer semantics; values of singular fields override previous values, and values of repeated fields are appended (In the case of Triggers, Triggers with later fire times will be merged after Triggers with earlier fire times in the same batch). It is not advised to specify extensions with repeated fields on batchable Triggers.",
        },
      },
      type = "object",
    },
    SafeUrlProto = {
      description = "Message containing a string that is safe to use in URL contexts in DOM APIs and HTML documents, where the URL context does not refer to a resource that loads code.",
      id = "SafeUrlProto",
      properties = {
        privateDoNotAccessOrElseSafeUrlWrappedValue = {
          description = "IMPORTANT: Never set or read this field, even from tests, it is private. See documentation at the top of .proto file for programming language packages with which to create or read this message.",
          type = "string",
        },
      },
      type = "object",
    },
    Schema = {
      description = "The schema definition for a data source.",
      id = "Schema",
      properties = {
        objectDefinitions = {
          description = "The list of top-level objects for the data source. The maximum number of elements is 10.",
          items = {
            ["$ref"] = "ObjectDefinition",
          },
          type = "array",
        },
        operationIds = {
          description = "IDs of the Long Running Operations (LROs) currently running for this schema. After modifying the schema, wait for operations to complete before indexing additional content.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ScoringConfig = {
      description = "Scoring configurations for a source while processing a Search or Suggest request.",
      id = "ScoringConfig",
      properties = {
        disableFreshness = {
          description = "Whether to use freshness as a ranking signal. By default, freshness is used as a ranking signal. Note that this setting is not available in the Admin UI.",
          type = "boolean",
        },
        disablePersonalization = {
          description = "Whether to personalize the results. By default, personal signals will be used to boost results.",
          type = "boolean",
        },
      },
      type = "object",
    },
    SearchApplication = {
      description = "SearchApplication",
      id = "SearchApplication",
      properties = {
        dataSourceRestrictions = {
          description = "Retrictions applied to the configurations. The maximum number of elements is 10.",
          items = {
            ["$ref"] = "DataSourceRestriction",
          },
          type = "array",
        },
        defaultFacetOptions = {
          description = "The default fields for returning facet results. The sources specified here also have been included in data_source_restrictions above.",
          items = {
            ["$ref"] = "FacetOptions",
          },
          type = "array",
        },
        defaultSortOptions = {
          ["$ref"] = "SortOptions",
          description = "The default options for sorting the search results",
        },
        displayName = {
          description = "Display name of the Search Application. The maximum length is 300 characters.",
          type = "string",
        },
        enableAuditLog = {
          description = "Indicates whether audit logging is on/off for requests made for the search application in query APIs.",
          type = "boolean",
        },
        name = {
          description = "The name of the Search Application. Format: searchapplications/{application_id}.",
          type = "string",
        },
        operationIds = {
          description = "Output only. IDs of the Long Running Operations (LROs) currently running for this schema. Output only field.",
          items = {
            type = "string",
          },
          readOnly = true,
          type = "array",
        },
        queryInterpretationConfig = {
          ["$ref"] = "QueryInterpretationConfig",
          description = "The default options for query interpretation",
        },
        returnResultThumbnailUrls = {
          description = "With each result we should return the URI for its thumbnail (when applicable)",
          type = "boolean",
        },
        scoringConfig = {
          ["$ref"] = "ScoringConfig",
          description = "Configuration for ranking results.",
        },
        sourceConfig = {
          description = "Configuration for a sources specified in data_source_restrictions.",
          items = {
            ["$ref"] = "SourceConfig",
          },
          type = "array",
        },
      },
      type = "object",
    },
    SearchApplicationQueryStats = {
      description = "Search application level query stats per date",
      id = "SearchApplicationQueryStats",
      properties = {
        date = {
          ["$ref"] = "Date",
          description = "The date for which query stats were calculated. Stats calculated on the next day close to midnight are returned.",
        },
        queryCountByStatus = {
          items = {
            ["$ref"] = "QueryCountByStatus",
          },
          type = "array",
        },
      },
      type = "object",
    },
    SearchApplicationSessionStats = {
      id = "SearchApplicationSessionStats",
      properties = {
        date = {
          ["$ref"] = "Date",
          description = "The date for which session stats were calculated. Stats are calculated on the following day, close to midnight PST, and then returned.",
        },
        searchSessionsCount = {
          description = "The count of search sessions on the day",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    SearchApplicationUserStats = {
      id = "SearchApplicationUserStats",
      properties = {
        date = {
          ["$ref"] = "Date",
          description = "The date for which session stats were calculated. Stats calculated on the next day close to midnight are returned.",
        },
        oneDayActiveUsersCount = {
          description = "The count of unique active users in the past one day",
          format = "int64",
          type = "string",
        },
        sevenDaysActiveUsersCount = {
          description = "The count of unique active users in the past seven days",
          format = "int64",
          type = "string",
        },
        thirtyDaysActiveUsersCount = {
          description = "The count of unique active users in the past thirty days",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    SearchItemsByViewUrlRequest = {
      id = "SearchItemsByViewUrlRequest",
      properties = {
        debugOptions = {
          ["$ref"] = "DebugOptions",
          description = "Common debug options.",
        },
        pageToken = {
          description = "The next_page_token value returned from a previous request, if any.",
          type = "string",
        },
        viewUrl = {
          description = "Specify the full view URL to find the corresponding item. The maximum length is 2048 characters.",
          type = "string",
        },
      },
      type = "object",
    },
    SearchItemsByViewUrlResponse = {
      id = "SearchItemsByViewUrlResponse",
      properties = {
        items = {
          items = {
            ["$ref"] = "Item",
          },
          type = "array",
        },
        nextPageToken = {
          description = "Token to retrieve the next page of results, or empty if there are no more results in the list.",
          type = "string",
        },
      },
      type = "object",
    },
    SearchQualityMetadata = {
      description = "Additional search quality metadata of the item.",
      id = "SearchQualityMetadata",
      properties = {
        quality = {
          description = "An indication of the quality of the item, used to influence search quality. Value should be between 0.0 (lowest quality) and 1.0 (highest quality). The default value is 0.0.",
          format = "double",
          type = "number",
        },
      },
      type = "object",
    },
    SearchRequest = {
      description = "The search API request.",
      id = "SearchRequest",
      properties = {
        contextAttributes = {
          description = "Context attributes for the request which will be used to adjust ranking of search results. The maximum number of elements is 10.",
          items = {
            ["$ref"] = "ContextAttribute",
          },
          type = "array",
        },
        dataSourceRestrictions = {
          description = "The sources to use for querying. If not specified, all data sources from the current search application are used.",
          items = {
            ["$ref"] = "DataSourceRestriction",
          },
          type = "array",
        },
        facetOptions = {
          items = {
            ["$ref"] = "FacetOptions",
          },
          type = "array",
        },
        pageSize = {
          description = "Maximum number of search results to return in one page. Valid values are between 1 and 100, inclusive. Default value is 10. Minimum value is 50 when results beyond 2000 are requested.",
          format = "int32",
          type = "integer",
        },
        query = {
          description = "The raw query string. See supported search operators in the [Narrow your search with operators](https://support.google.com/cloudsearch/answer/6172299)",
          type = "string",
        },
        queryInterpretationOptions = {
          ["$ref"] = "QueryInterpretationOptions",
          description = "Options to interpret the user query.",
        },
        requestOptions = {
          ["$ref"] = "RequestOptions",
          description = "Request options, such as the search application and user timezone.",
        },
        sortOptions = {
          ["$ref"] = "SortOptions",
          description = "The options for sorting the search results",
        },
        start = {
          description = "Starting index of the results.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    SearchResponse = {
      description = "The search API response.",
      id = "SearchResponse",
      properties = {
        debugInfo = {
          ["$ref"] = "ResponseDebugInfo",
          description = "Debugging information about the response.",
        },
        errorInfo = {
          ["$ref"] = "ErrorInfo",
          description = "Error information about the response.",
        },
        facetResults = {
          description = "Repeated facet results.",
          items = {
            ["$ref"] = "FacetResult",
          },
          type = "array",
        },
        hasMoreResults = {
          description = "Whether there are more search results matching the query.",
          type = "boolean",
        },
        queryInterpretation = {
          ["$ref"] = "QueryInterpretation",
          description = "Query interpretation result for user query. Empty if query interpretation is disabled.",
        },
        resultCountEstimate = {
          description = "The estimated result count for this query.",
          format = "int64",
          type = "string",
        },
        resultCountExact = {
          description = "The exact result count for this query.",
          format = "int64",
          type = "string",
        },
        resultCounts = {
          ["$ref"] = "ResultCounts",
          description = "Expanded result count information.",
        },
        results = {
          description = "Results from a search query.",
          items = {
            ["$ref"] = "SearchResult",
          },
          type = "array",
        },
        spellResults = {
          description = "Suggested spelling for the query.",
          items = {
            ["$ref"] = "SpellResult",
          },
          type = "array",
        },
        structuredResults = {
          description = "Structured results for the user query. These results are not counted against the page_size.",
          items = {
            ["$ref"] = "StructuredResult",
          },
          type = "array",
        },
      },
      type = "object",
    },
    SearchResult = {
      description = "Results containing indexed information for a document.",
      id = "SearchResult",
      properties = {
        clusteredResults = {
          description = "If source is clustered, provide list of clustered results. There will only be one level of clustered results. If current source is not enabled for clustering, this field will be empty.",
          items = {
            ["$ref"] = "SearchResult",
          },
          type = "array",
        },
        debugInfo = {
          ["$ref"] = "ResultDebugInfo",
          description = "Debugging information about this search result.",
        },
        metadata = {
          ["$ref"] = "Metadata",
          description = "Metadata of the search result.",
        },
        snippet = {
          ["$ref"] = "Snippet",
          description = "The concatenation of all snippets (summaries) available for this result.",
        },
        title = {
          description = "Title of the search result.",
          type = "string",
        },
        url = {
          description = "The URL of the search result. The URL contains a Google redirect to the actual item. This URL is signed and shouldn't be changed.",
          type = "string",
        },
      },
      type = "object",
    },
    Section = {
      description = "Sections are separated by a line divider. They contain a collection of widgets that are rendered (vertically) in the order that they are specified. Across all platforms, AddOns have a narrow fixed width, so there is currently no need for layout properties (e.g. float).",
      id = "Section",
      properties = {
        collapsable = {
          description = "Indicating whether this section is collapsable. If a section is collapsable, the description must be given.",
          type = "boolean",
        },
        description = {
          description = "The header of the section, text formatted supported.",
          type = "string",
        },
        numUncollapsableWidgets = {
          description = "The number of uncollapsable widgets. For example, when a section contains 5 widgets and the num_uncollapsable_widget are set to be 2, The first 2 widgets will always shown and the last 3 is collapsed as default. Only when collapsable is set to be true, the num_uncollapsable_widget will be taken into account.",
          format = "int32",
          type = "integer",
        },
        widgets = {
          description = "A section must contain at least 1 widget.",
          items = {
            ["$ref"] = "WidgetMarkup",
          },
          type = "array",
        },
      },
      type = "object",
    },
    Segment = {
      id = "Segment",
      properties = {
        formatting = {
          ["$ref"] = "Formatting",
          description = "Formatting to be applied when rendering the Segment. For all segment types, this is the standard way of representing that the Segment should be rendered in bold, italics, etc.",
        },
        hashtagData = {
          ["$ref"] = "HashtagData",
          description = "For HASHTAG type:",
        },
        linkData = {
          ["$ref"] = "LinkData",
          description = "Type-specific metadata. At most one of these should be populated, and the one that is populated should correspond to the type of the Segment. For LINK type:",
        },
        text = {
          description = "Text content of the Segment. As a general rule, this field should contain the actual text that should be rendered in the UI. Thus, for a hashtag, it should be \"#Foo\", and for a link, it should be the display text. Clients that do not understand a particular segment type may use this text, along with the Formatting info below, as a fallback for display. The field is not required -- if all relevant information is carried in other metadata fields and there is no need for a fallback, or it is not practical for a fallback to be provided for any other reason, the field may be left blank. A standard example would be a user reference being transmitted between server layers, where a gaia-ID representation may be sufficient and there is no need for a textual fallback. In such a case, it would be valid and useful - though not required - for servers to compute and populate a fallback on the serving path.",
          type = "string",
        },
        type = {
          description = "Type of Segment.",
          enum = {
            "TEXT",
            "LINE_BREAK",
            "LINK",
            "USER_MENTION",
            "ALL_USER_MENTION",
            "HASHTAG",
          },
          enumDescriptions = {
            "A TEXT segment represents plain-text subject to particular formatting constraints (as represented in the \"formatting\" field of the Segment).",
            "A LINE_BREAK segment is simply a placeholder to represent a line break between other segments. The \"text\" variable may be set to a newline as a fallback, but clients that understand this segment type should simply insert a line break without needing to reference any fields.",
            "A LINK segment represents a link to a web entity. The \"text\" field should be used for anchor text. Additional link data should be put in the link_data protobuf.",
            "A USER_MENTION segment represents a reference to a (possibly non-Gaia, possibly off-network) user. The \"text\" field may be populated as a fallback, but information identifying the user should be contained in the user_mention_data protobuf. (The set of fields that are populated in user_mention_data may differ depending on the context in which the segment is viewed, but the interpretation of the fields is uniform. See comments over UserMentionData).",
            "An ALL_USER_MENTION segment represents a reference to all users in the context, that is, the conversation, discussion, or other context containing the segment. For example, an ALL_USER_MENTION segment (\"@all\") can be useful to ping all participants in a conversation if the notification setting of the conversation is not set to ping on normal messages. An ALL_USER_MENTION should be treated as a USER_MENTION for all users who receives the segment.",
            "A HASHTAG segment represents a structured reference to a topic. The \"text\" field should represent display text (e.g. \"#Google\"), and additional metadata should be put in the Segment's hashtag_data field.",
          },
          type = "string",
        },
        userMentionData = {
          ["$ref"] = "UserMentionData",
          description = "For USER_MENTION type:",
        },
      },
      type = "object",
    },
    SelectionControl = {
      id = "SelectionControl",
      properties = {
        items = {
          description = "For radio button, at most one of the items will be selected.",
          items = {
            ["$ref"] = "SelectionItem",
          },
          type = "array",
        },
        label = {
          description = "Label used to be displayed ahead of the selection control. It is optional.",
          type = "string",
        },
        name = {
          description = "The name of the text field which is will be used in FormInput.",
          type = "string",
        },
        onChange = {
          ["$ref"] = "FormAction",
          description = "If specified, form is submitted when selection changed. If not specified, developer will need to specify a separate button.",
        },
        type = {
          enum = {
            "CHECK_BOX",
            "RADIO_BUTTON",
            "SWITCH",
            "DROPDOWN",
          },
          enumDescriptions = {
            "",
            "",
            "",
            "",
          },
          type = "string",
        },
      },
      type = "object",
    },
    SelectionItem = {
      id = "SelectionItem",
      properties = {
        selected = {
          description = "If more than one items are selected for RADIO_BUTTON and DROPDOWN, the first selected item is treated as sElected and the after ones are all ignored.",
          type = "boolean",
        },
        text = {
          description = "The text to be displayed.",
          type = "string",
        },
        value = {
          description = "The value associated with this item which will be sent back to app scripts. Client should use as a form input value.",
          type = "string",
        },
      },
      type = "object",
    },
    SessionContext = {
      id = "SessionContext",
      properties = {
        authTime = {
          description = "Time at which this activity's session was authenticated, in seconds since the epoch.",
          format = "int64",
          type = "string",
        },
        delegateUserId = {
          description = "Gaia ID of the authenticated user when delegate access is active. In such sessions the main gaia ID is that of the delegator, i.e. the account being accessed.",
          format = "int64",
          type = "string",
        },
        dusi = {
          description = "Device User Session ID, see go/dusi.",
          type = "string",
        },
        imapSessionContext = {
          ["$ref"] = "ImapSessionContext",
          description = "Imap session context for Bond/Gmail integration",
        },
        oauthLoginId = {
          description = "OAuth login ID.",
          format = "int32",
          type = "integer",
        },
        oauthProjectId = {
          description = "The devconsole project ID of the developer who authenticated with OAuth.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    SessionEvent = {
      description = "A session event is something that happens to the streaming session in a conference.",
      id = "SessionEvent",
      properties = {
        deviceId = {
          description = "The initiator of the latest event of the streaming session. It will be set for all user events (`type` is 100-199) and unset for all server events(`type` is 200-299).",
          type = "string",
        },
        type = {
          description = "The type of event.",
          enum = {
            "EVENT_UNSPECIFIED",
            "STARTED_BY_USER",
            "STOPPED_BY_USER",
            "CANCELLED_BY_USER",
            "CANCELLED_INITIALIZATION_FAILED",
            "CANCELLED_INITIATOR_LEFT",
            "ACTIVE_ABOUT_TO_STOP_TOO_LONG",
            "STOPPED_TOO_LONG",
            "STOPPED_ALL_DEVICES_LEFT",
            "STOPPED_INTERNAL_FAILURES",
          },
          enumDescriptions = {
            "This is never used.",
            "Streaming session was started or is being started by a user.",
            "Streaming session was stopped by a user.",
            "Streaming session was cancelled by a user.",
            "Streaming session was cancelled by the server because of a failure during session initialization.",
            "Streaming session was cancelled by the server because the session initiator left the conference during initialization. When the initiator leaves after the session is started, no event is triggered.",
            "Streaming session is about to be stopped by the server because the session is about to reach the maximum duration.",
            "Streaming session was stopped because the session reached the maximum duration.",
            "Streaming session was stopped because there were no devices left in the conference.",
            "Streaming session was stopped because of an internal error.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    SessionStateInfo = {
      description = "Information about the state of a (recording, broadcast, transcription...) session in a conference.",
      id = "SessionStateInfo",
      properties = {
        ackInfo = {
          ["$ref"] = "AckInfo",
          description = "Output only. The ack info of the session.",
          readOnly = true,
        },
        languageConfig = {
          ["$ref"] = "LanguageConfig",
          description = "Immutable. The language configuration used by this session. When empty, captions will be disabled. It's a required field for transcription sessions.",
        },
        lastActorDeviceId = {
          description = "Output only. The device id of the actor is set if the current state is a result of a user action, is empty otherwise.",
          readOnly = true,
          type = "string",
        },
        maxEndTime = {
          description = "Output only. The max end time of the session, at this time the session will be force stopped/terminated. Clients are expected to use this timestamp to warn users about the force stop.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        sessionState = {
          description = "State of the session.",
          enum = {
            "SESSION_STATE_UNSPECIFIED",
            "STARTING",
            "ACTIVE",
            "STOPPED",
          },
          enumDescriptions = {
            "Unspecified session state.",
            "The session is starting.",
            "The session is active/ongoing.",
            "The session has stopped.",
          },
          type = "string",
        },
        sessionStopReason = {
          description = "Output only. The reason the session was transitioned to STOPPED state.",
          enum = {
            "SESSION_STOP_REASON_UNSPECIFIED",
            "USER_ACTION",
            "STOPPED_INITIALIZATION_FAILED",
            "STOPPED_TOO_LONG",
            "STOPPED_ALL_DEVICES_LEFT",
            "STOPPED_INTERNAL_FAILURES",
            "STOPPED_YOU_TUBE_LIVE_EVENT_ENDED",
          },
          enumDescriptions = {
            "Session stop reason unspecified.",
            "Stopped by user action.",
            "Stopped by the server because of an initialization failure.",
            "Stopped because the session reached the maximum duration.",
            "Stopped because there were no devices left in the conference.",
            "Stopped because of an internal error.",
            "Stopped because the broadcast event ended on YouTube.",
          },
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    Settings = {
      description = "Settings of a meeting space that can be edited by users with corresponding manage privilege. These settings are always populated in responses.",
      id = "Settings",
      properties = {
        accessLock = {
          description = "The access lock of the meeting space that lets hosts control who can join the meeting.",
          type = "boolean",
        },
        accessType = {
          description = "The access type of the meeting space.",
          enum = {
            "ACCESS_TYPE_UNSPECIFIED",
            "ACCESS_TYPE_OPEN",
            "ACCESS_TYPE_TRUSTED",
            "ACCESS_TYPE_RESTRICTED",
          },
          enumDescriptions = {
            "Default value. This value is unused.",
            "Anyone with meeting join information (url, phone access...) can join, no knocking required. (Subject to organization policies)",
            "Members of the Host's organization, invited external users, and dial-in users can join without knocking, everyone else must knock. (Subject to organization policies)",
            "Only participants invited by a host can automatically join, everyone else must knock and be admitted. (Subject to organization policies) Participants cannot dial out from the meeting. And only hosts can accept knocks.",
          },
          type = "string",
        },
        allowJoiningBeforeHost = {
          description = "Whether users can join before host in the conferences of this meeting space.",
          type = "boolean",
        },
        attendanceReportEnabled = {
          description = "Whether attendance report is enabled for the meeting space.",
          type = "boolean",
        },
        chatLock = {
          description = "The chat lock of the meeting space that lets owner control whether the participants can send chat messages.",
          type = "boolean",
        },
        cohostArtifactSharingEnabled = {
          description = "Whether meeting artifacts will be shared with cohosts.",
          type = "boolean",
        },
        cseEnabled = {
          description = "Whether Client-side Encryption is enabled for the meeting space.",
          type = "boolean",
        },
        defaultAsViewer = {
          description = "Whether the default role is viewer or not.",
          type = "boolean",
        },
        moderationEnabled = {
          description = "Indicates whether the meeting space is moderated.",
          type = "boolean",
        },
        presentLock = {
          description = "The present lock of the meeting space that lets owner control whether the participants can present their screen.",
          type = "boolean",
        },
        reactionsLock = {
          description = "The reactions lock of the meeting space that lets owner control whether the participants can send reactions.",
          type = "boolean",
        },
      },
      type = "object",
    },
    ShareScope = {
      id = "ShareScope",
      properties = {
        domain = {
          description = "If scope is DOMAIN, this field contains the dasher domain, for example \"google.com\".",
          type = "string",
        },
        scope = {
          description = "The scope to which the content was shared.",
          enum = {
            "UNKNOWN",
            "PRIVATE",
            "LIMITED",
            "EXTENDED",
            "DASHER_DOMAIN",
            "PUBLIC",
          },
          enumDescriptions = {
            "",
            "Only the author can view the post.",
            "Viewable only by a set of people.",
            "Viewable by extended circles.",
            "",
            "",
          },
          type = "string",
        },
      },
      type = "object",
    },
    SheetsClientActionMarkup = {
      id = "SheetsClientActionMarkup",
      properties = {
        customFunctionReturnValueMarkup = {
          ["$ref"] = "CustomFunctionReturnValueMarkup",
        },
      },
      type = "object",
    },
    SigningKeyPossessorProto = {
      description = "Represents a principal who possesses a signing key corresponding to the verification key or keyset described here.",
      id = "SigningKeyPossessorProto",
      properties = {
        keymasterKeyType = {
          description = "This value must be from the KeyMetadata.Type enum in keymaster.proto.",
          format = "int32",
          type = "integer",
        },
        serializedVerificationKey = {
          description = "The actual verification key bytes corresponding to the above type.",
          format = "byte",
          type = "string",
        },
        serializedVerificationKeyset = {
          description = "The binary serialized Keymaster SerializedReader of a public keyset. The keyset must contain exactly one key. N.B.: If this field is populated, serialized_verification_key should be set to the empty string and keymaster_key_type should be set to zero.",
          format = "byte",
          type = "string",
        },
      },
      type = "object",
    },
    SimpleSecretHolderProto = {
      description = "Represents a principal which possesses a particular, presumably secret, string. Useful for things like \"auth keys,\" used for anonymous sharing. Since representing this principal with the actual secret included reveals the secret, it's best if the requisite condition is enforced in some other way, for example via Keystore wrapping attributes (Keystore will unwrap only if the specified secret, aka \"attribute\", is presented). All that's stored here is an identifying label.",
      id = "SimpleSecretHolderProto",
      properties = {
        label = {
          ["$ref"] = "SimpleSecretLabelProto",
          description = "A descriptive label to help identify a relevant ACL entry or otherwise disambiguate this instance.",
        },
      },
      type = "object",
    },
    SimpleSecretLabelProto = {
      description = "SimpleSecretProto (in authenticator.proto) and SimpleSecretHolderProto (below) share the notion of a \"label\", which identifies a particular secret without (hopefully) revealing the secret. Note that a SimpleSecretLabel only disambiguates between secrets used to get access to some particular object. Two different secrets that apply to two different objects could have the same label. For example, in the common sharing model, each object has no more than one \"auth key\". Therefore, the label for an auth key simply has type = AUTH_KEY with no additional information. In theory, we could add some sort of resource ID to SimpleSecretLabel to make it more explicit. However, in practice, this is never really needed. A SimpleSecret for one object is never used to authorize a request on some other object, so there is no ambiguity. Also, since SimpleSecrets must obviously be unguessable, there is no risk that a SimpleSecret intended for one object will accidentally grant access to another.",
      id = "SimpleSecretLabelProto",
      properties = {
        capabilityId = {
          description = "***DEPRECATED (3-Oct-2011) *** This field should be deleted when code stops using CAP_TOKEN labels. Used when type = CAP_TOKEN. When a CAP_TOKEN label appears in a SimpleSecretHolder Principal, |capability_id| must be filled in to identify one of the capabilities on the ACL. When a CAP_TOKEN label appears in a SimpleSecret Authenticator, it is NOT necessary to fill in |capability_id| -- ACL Service will find the ID by searching all capabilities on the ACL for one associated with the token given by the SimpleSecret's secret data. If |capability_id| is specified, though, then the Authenticator will only be accepted if it actually matches that particular token ID.",
          format = "int32",
          type = "integer",
        },
        genericLabel = {
          description = "Used when type = GENERIC_SECRET",
          format = "byte",
          type = "string",
        },
        inviteId = {
          description = "Used when type == INVITE.",
          format = "int64",
          type = "string",
        },
        type = {
          description = "This is optional because required enums cannot be extended.",
          enum = {
            "INVALID",
            "AUTH_KEY",
            "INVITE",
            "GENERIC_SECRET",
            "CAP_TOKEN",
            "REKE",
          },
          enumDescriptions = {
            "Used as a default value.",
            "The singleton auth key for a common-sharing ACL. No other fields of SimpleSecretLabelProto need to be filled in, since there is only one of these per ACL. The corresponding secret is the auth key encoded in 64-bit big-endian.",
            "A common-sharing invite token. |invite_id| (below) must be set to identify the invite. The corresponding secret is the SecretMaterial, as defined by InviteToken.SecretMaterial in acl.proto, encoded in 64-bit big-endian. If there is no SecretMaterial, the secret should be omitted; in this case the invite ID itself is the secret, which is less secure.",
            "A generic secret value. Do not use this if any more specific type is appropriate.",
            "***DEPRECATED (3-Oct-2011)*** Use the new CapTokenProto and CapTokenHolderProto instead. A capability token. The corresponding secret is an arbitrary-length random byte string (recommended: 128 bits). |capability_id| may be filled in (see below). See CapTokenMetadata in acl.proto.",
            "Identifies a principal that can perform a successful REKE handshake. The holder is not authenticated by presenting a SimpleSecretProto, but rather by knowing either the REKE resumption ticket secret or the private key corresponding to a public key specified outside the PrincipalProto. For more information, see: http://goto.google.com/loas2cert",
          },
          type = "string",
        },
      },
      type = "object",
    },
    SlashCommandMetadata = {
      description = "Annotation metadata for slash commands (/).",
      id = "SlashCommandMetadata",
      properties = {
        argumentsHint = {
          description = "Hint string for the arguments expected by the slash command.",
          type = "string",
        },
        commandId = {
          description = "Unique id for the slash command.",
          format = "int64",
          type = "string",
        },
        commandName = {
          description = "Name of the slash command.",
          type = "string",
        },
        id = {
          ["$ref"] = "UserId",
          description = "ID of the bot which owns the slash command.",
        },
        triggersDialog = {
          description = "Whether or not this slash command should trigger a dialog.",
          type = "boolean",
        },
        type = {
          enum = {
            "TYPE_UNSPECIFIED",
            "ADD",
            "INVOKE",
            "FAILED_TO_ADD",
          },
          enumDescriptions = {
            "Default value for the enum. DO NOT USE.",
            "If a bot is added by a Slash Command, it means the bot was invoked by the user but hasn't yet been added to the group. Attaching an ADD annotation both add and invoke the bot.",
            "",
            "Server-generated slash command metadata, for clients to strikethrough.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    Snippet = {
      description = "Snippet of the search result, which summarizes the content of the resulting page.",
      id = "Snippet",
      properties = {
        matchRanges = {
          description = "The matched ranges in the snippet.",
          items = {
            ["$ref"] = "MatchRange",
          },
          type = "array",
        },
        snippet = {
          description = "The snippet of the document. The snippet of the document. May contain escaped HTML character that should be unescaped prior to rendering.",
          type = "string",
        },
      },
      type = "object",
    },
    SocialCommonAttachmentAttachment = {
      description = "An Attachment represents a linked entity associated with a piece of social content. This may be a 1st-party or 3rd-party entity. In the Papyrus context, an Attachment is part of a Cent, and sits alongside the main content of the cent, which is represented as a sequence of Segments. Right now an Attachment is just a wrapper around an Embed, but we provide the extra layer of abstraction since, as Embeds move to separate storage in Briefcase, we may want to add additional fields that are not part of the Embed proper, but that (for example) relate to the usage of the linked content within the particular post/cent.",
      id = "SocialCommonAttachmentAttachment",
      properties = {
        embedItem = {
          ["$ref"] = "EmbedClientItem",
          description = "An embed represents an external entity. See go/es-embeds.",
        },
        id = {
          description = "An id to uniquely identify an attachment when several attachments are in a collection.",
          type = "string",
        },
      },
      type = "object",
    },
    SocialGraphNodeProto = {
      description = "Represents a user pseudonym. Pseudonyms are linked accounts on Google and third-party services (e.g. YouTube or Twitter) and are described by a Social Graph Node.",
      id = "SocialGraphNodeProto",
      properties = {
        sgnDomain = {
          description = "The fields from ccc/socialgraph/socialgraphnode.proto:SgnNode that uniquely identify a social graph node. The 'ident' field is not included here because its value can be changed.",
          type = "string",
        },
        sgnPk = {
          type = "string",
        },
      },
      type = "object",
    },
    SortOptions = {
      id = "SortOptions",
      properties = {
        operatorName = {
          description = "The name of the operator corresponding to the field to sort on. The corresponding property must be marked as sortable.",
          type = "string",
        },
        sortOrder = {
          description = "Ascending is the default sort order",
          enum = {
            "ASCENDING",
            "DESCENDING",
          },
          enumDescriptions = {
            "",
            "",
          },
          type = "string",
        },
      },
      type = "object",
    },
    Source = {
      description = "Defines sources for the suggest/search APIs.",
      id = "Source",
      properties = {
        name = {
          description = "Source name for content indexed by the Indexing API.",
          type = "string",
        },
        predefinedSource = {
          description = "Predefined content source for Google Apps.",
          enum = {
            "NONE",
            "QUERY_HISTORY",
            "PERSON",
            "GOOGLE_DRIVE",
            "GOOGLE_GMAIL",
            "GOOGLE_SITES",
            "GOOGLE_GROUPS",
            "GOOGLE_CALENDAR",
            "GOOGLE_KEEP",
          },
          enumDescriptions = {
            "",
            "Suggests queries issued by the user in the past. Only valid when used with the suggest API. Ignored when used in the query API.",
            "Suggests people in the organization. Only valid when used with the suggest API. Results in an error when used in the query API.",
            "",
            "",
            "",
            "",
            "",
            "",
          },
          type = "string",
        },
      },
      type = "object",
    },
    SourceConfig = {
      description = "Configurations for a source while processing a Search or Suggest request.",
      id = "SourceConfig",
      properties = {
        crowdingConfig = {
          ["$ref"] = "SourceCrowdingConfig",
          description = "The crowding configuration for the source.",
        },
        scoringConfig = {
          ["$ref"] = "SourceScoringConfig",
          description = "The scoring configuration for the source.",
        },
        source = {
          ["$ref"] = "Source",
          description = "The source for which this configuration is to be used.",
        },
      },
      type = "object",
    },
    SourceCrowdingConfig = {
      description = "Set search results crowding limits. Crowding is a situation in which multiple results from the same source or host \"crowd out\" other results, diminishing the quality of search for users. To foster better search quality and source diversity in search results, you can set a condition to reduce repetitive results by source.",
      id = "SourceCrowdingConfig",
      properties = {
        numResults = {
          description = "Maximum number of results allowed from a datasource in a result page as long as results from other sources are not exhausted. Value specified must not be negative. A default value is used if this value is equal to 0. To disable crowding, set the value greater than 100.",
          format = "int32",
          type = "integer",
        },
        numSuggestions = {
          description = "Maximum number of suggestions allowed from a source. No limits will be set on results if this value is less than or equal to 0.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    SourceResultCount = {
      description = "Per source result count information.",
      id = "SourceResultCount",
      properties = {
        hasMoreResults = {
          description = "Whether there are more search results for this source.",
          type = "boolean",
        },
        resultCountEstimate = {
          description = "The estimated result count for this source.",
          format = "int64",
          type = "string",
        },
        resultCountExact = {
          description = "The exact result count for this source.",
          format = "int64",
          type = "string",
        },
        source = {
          ["$ref"] = "Source",
          description = "The source the result count information is associated with.",
        },
      },
      type = "object",
    },
    SourceScoringConfig = {
      description = "Set the scoring configuration. This allows modifying the ranking of results for a source.",
      id = "SourceScoringConfig",
      properties = {
        sourceImportance = {
          description = "Importance of the source.",
          enum = {
            "DEFAULT",
            "LOW",
            "HIGH",
          },
          enumDescriptions = {
            "",
            "",
            "",
          },
          type = "string",
        },
      },
      type = "object",
    },
    SpaceId = {
      description = "Primary key for Space resource.",
      id = "SpaceId",
      properties = {
        spaceId = {
          description = "Unique, immutable ID of the Space",
          type = "string",
        },
      },
      type = "object",
    },
    SpellResult = {
      id = "SpellResult",
      properties = {
        suggestedQuery = {
          description = "The suggested spelling of the query.",
          type = "string",
        },
      },
      type = "object",
    },
    SquareProto = {
      description = "Represents the set of members (of a given type) in a Google+ Square (see http://go/squares). A Square with default member_type is currently (1/2012) identical to the GaiaGroup with the same ID, but that is expected to change soon (see http://go/superglue). Support for this principal type is currently (1/2012) incomplete -- e.g., Keystore does not support it yet (see b/5703421).",
      id = "SquareProto",
      properties = {
        memberType = {
          description = "The type of Square members to consider, e.g. \"all members\" vs. \"owners\" vs. \"admins\". These are defined by legacy_relation_id values in social.graph.storage.EdgeTypeEnum.EdgeType enum options in social/graph/storage/proto/id.proto. See square.pb (defined in production/config/cdd/socialgraph/mixer_config/prod/node_type_config) for all valid edge types associated with square. Currently required.",
          format = "int32",
          type = "integer",
        },
        squareId = {
          description = "Currently required.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    StartUploadItemRequest = {
      description = "Start upload file request.",
      id = "StartUploadItemRequest",
      properties = {
        connectorName = {
          description = "The name of connector making this call. Format: datasources/{source_id}/connectors/{ID}",
          type = "string",
        },
        debugOptions = {
          ["$ref"] = "DebugOptions",
          description = "Common debug options.",
        },
      },
      type = "object",
    },
    Status = {
      description = "The `Status` type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by [gRPC](https://github.com/grpc). Each `Status` message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the [API Design Guide](https://cloud.google.com/apis/design/errors).",
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
    StoredParticipantId = {
      id = "StoredParticipantId",
      properties = {
        gaiaId = {
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    StreamViewerStats = {
      description = "Information about viewers of the stream.",
      id = "StreamViewerStats",
      properties = {
        estimatedViewerCount = {
          description = "The estimate of the current viewer count.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    StreamingSessionInfo = {
      description = "Information about a streaming session in conference.",
      id = "StreamingSessionInfo",
      properties = {
        applicationType = {
          description = "The application type of the current streaming session.",
          enum = {
            "RECORDING_APPLICATION_TYPE_UNSPECIFIED",
            "RECORDING",
            "GLIVE_STREAM",
            "BROADCAST",
          },
          enumDescriptions = {
            "This is never used.",
            "A meeting recording saved to a video file in Google Drive.",
            "A *Google Live* managed stream.",
            "A meeting broadcast.",
          },
          type = "string",
        },
        latestSessionEvent = {
          ["$ref"] = "SessionEvent",
          description = "The latest streaming session event. This can be used by clients to help explain what is going on, why recording stopped, etc. This will always be set to a valid event and consistent with the status. It can be set when current session is inactive to indicate latest event that makes current session to become inactive.",
        },
        ownerDisplayName = {
          description = "The display name of the owner of the recording output. It's only set when there will be uploaded recordings. Currently, it's only set when application type is RECORDING or GLIVE_STREAM.",
          type = "string",
        },
        sessionId = {
          description = "This is the REST name and unique identifier of this streaming session and has the form `spaces//recordings/` This is returned whenever status is either `STARTING` or `STARTED`.",
          type = "string",
        },
        status = {
          description = "The current status of this streaming session. This can be used by clients to show session status indicator and/or notification.",
          enum = {
            "STATUS_UNSPECIFIED",
            "INACTIVE",
            "STARTING",
            "LIVE",
          },
          enumDescriptions = {
            "This value is never used.",
            "The streaming session is inactive. This means either it's not started yet or it's already stopped.",
            "The streaming session is about to begin. The status will be updated to LIVE when the streaming session actually starts, which happens when all the backend plumbing is set up.",
            "The streaming session is live. Any media sent to the conference may be included in the resulting recording/broadcast.",
          },
          type = "string",
        },
        trainingEnabled = {
          description = "When true, this recording may be used for training new transcription models.",
          type = "boolean",
        },
        viewerAccessPolicy = {
          description = "The policy that controls who can view the broadcast. This setting applies for broadcast session.",
          enum = {
            "BROADCASTING_ACCESS_POLICY_UNSPECIFIED",
            "ORGANIZATION",
            "PUBLIC",
          },
          enumDescriptions = {
            "Used only when broadcast is not enabled, or an unknown enum value is used.",
            "Only authenticated Google accounts belonging to the same organization as the meeting organizer can access the broadcast.",
            "Anyone with the broadcast view URL can access the broadcast.",
          },
          type = "string",
        },
        viewerStats = {
          ["$ref"] = "StreamViewerStats",
          description = "Contains information about viewers of the livestream. It is only set when application type is BROADCAST.",
        },
      },
      type = "object",
    },
    StructuredDataObject = {
      description = "A structured data object consisting of named properties.",
      id = "StructuredDataObject",
      properties = {
        properties = {
          description = "The properties for the object. The maximum number of elements is 1000.",
          items = {
            ["$ref"] = "NamedProperty",
          },
          type = "array",
        },
      },
      type = "object",
    },
    StructuredResult = {
      description = "Structured results that are returned as part of search request.",
      id = "StructuredResult",
      properties = {
        person = {
          ["$ref"] = "Person",
          description = "Representation of a person",
        },
      },
      type = "object",
    },
    SuggestRequest = {
      description = "Request of suggest API.",
      id = "SuggestRequest",
      properties = {
        dataSourceRestrictions = {
          description = "The sources to use for suggestions. If not specified, the data sources are taken from the current search application. NOTE: Suggestions are only supported for the following sources: * Third-party data sources * PredefinedSource.PERSON * PredefinedSource.GOOGLE_DRIVE",
          items = {
            ["$ref"] = "DataSourceRestriction",
          },
          type = "array",
        },
        query = {
          description = "Partial query for which autocomplete suggestions will be shown. For example, if the query is \"sea\", then the server might return \"season\", \"search\", \"seagull\" and so on.",
          type = "string",
        },
        requestOptions = {
          ["$ref"] = "RequestOptions",
          description = "Request options, such as the search application and user timezone.",
        },
      },
      type = "object",
    },
    SuggestResponse = {
      description = "Response of the suggest API.",
      id = "SuggestResponse",
      properties = {
        suggestResults = {
          description = "List of suggestions.",
          items = {
            ["$ref"] = "SuggestResult",
          },
          type = "array",
        },
      },
      type = "object",
    },
    SuggestResult = {
      description = "One suggestion result.",
      id = "SuggestResult",
      properties = {
        peopleSuggestion = {
          ["$ref"] = "PeopleSuggestion",
          description = "This is present when the suggestion indicates a person. It contains more information about the person - like their email ID, name etc.",
        },
        querySuggestion = {
          ["$ref"] = "QuerySuggestion",
          description = "This field will be present if the suggested query is a word/phrase completion.",
        },
        source = {
          ["$ref"] = "Source",
          description = "The source of the suggestion.",
        },
        suggestedQuery = {
          description = "The suggested query that will be used for search, when the user clicks on the suggestion",
          type = "string",
        },
      },
      type = "object",
    },
    SupportUrls = {
      description = "Urls with additional bot related information.",
      id = "SupportUrls",
      properties = {
        adminConfigUrl = {
          description = "Link to the admin configuration webpage for the bot. Configured by Pantheon, may be empty.",
          type = "string",
        },
        deletionPolicyUrl = {
          description = "Link to the deletion policy webpage for the bot. Configured by Pantheon, may be empty.",
          type = "string",
        },
        gwmUrl = {
          description = "Link to GWM page of the app. May be empty.",
          type = "string",
        },
        privacyPolicyUrl = {
          description = "Link to the privacy policy webpage for the bot. May be empty.",
          type = "string",
        },
        setupUrl = {
          description = "Link to the setup webpage for the bot. Configured by Pantheon, may be empty.",
          type = "string",
        },
        supportUrl = {
          description = "Link to the support webpage for the developer of the bot. May be empty.",
          type = "string",
        },
        tosUrl = {
          description = "Link to the terms of service webpage for the bot. May be empty.",
          type = "string",
        },
      },
      type = "object",
    },
    SwitchWidget = {
      id = "SwitchWidget",
      properties = {
        controlType = {
          enum = {
            "UNSPECIFIED",
            "SWITCH",
            "CHECKBOX",
          },
          enumDescriptions = {
            "",
            "",
            "",
          },
          type = "string",
        },
        name = {
          description = "The name of the switch widget which is will be used in FormInput.",
          type = "string",
        },
        onChange = {
          ["$ref"] = "FormAction",
        },
        selected = {
          type = "boolean",
        },
        value = {
          description = "The value is what is passed back in apps script callback.",
          type = "string",
        },
      },
      type = "object",
    },
    TaskActionMarkup = {
      id = "TaskActionMarkup",
      properties = {
        reloadTasks = {
          type = "boolean",
        },
      },
      type = "object",
    },
    TextButton = {
      id = "TextButton",
      properties = {
        altText = {
          description = "The alternative text used for accessibility Next field number: 7.",
          type = "string",
        },
        backgroundColor = {
          description = "Optional color of the button's background in RAISE mode. The default is the secondary color from addon's manifest.",
          type = "string",
        },
        disabled = {
          type = "boolean",
        },
        onClick = {
          ["$ref"] = "OnClick",
        },
        style = {
          enum = {
            "UNSPECIFIED",
            "TEXT",
            "FILLED",
          },
          enumDescriptions = {
            "",
            "Simple text button with ripple touch feedback.",
            "Button with solid background.",
          },
          type = "string",
        },
        text = {
          description = "Text color can be set via HTML markup.",
          type = "string",
        },
      },
      type = "object",
    },
    TextField = {
      id = "TextField",
      properties = {
        autoComplete = {
          ["$ref"] = "AutoComplete",
          description = "The initial set of auto complete items without any user input.",
        },
        autoCompleteCallback = {
          ["$ref"] = "FormAction",
          description = "The refresh function which returns AutoComplete based on the user's input text. If the callback is not specified, auto complete will be purely done in client side based on the auto_complete items.",
        },
        autoCompleteMultipleSelections = {
          description = "When set to true, a user can input multiple auto-complet items.",
          type = "boolean",
        },
        hintText = {
          type = "string",
        },
        label = {
          description = "One of label or hint_text is required to be specified by the developers.",
          type = "string",
        },
        maxLines = {
          format = "int32",
          type = "integer",
        },
        name = {
          description = "The name of the text field which is will be used in FormInput.",
          type = "string",
        },
        onChange = {
          ["$ref"] = "FormAction",
        },
        type = {
          enum = {
            "SINGLE_LINE",
            "MULTIPLE_LINE",
          },
          enumDescriptions = {
            "",
            "",
          },
          type = "string",
        },
        value = {
          description = "The default value when no input from user.",
          type = "string",
        },
      },
      type = "object",
    },
    TextKeyValue = {
      description = "This is deprecated and please use KeyValue.",
      id = "TextKeyValue",
      properties = {
        key = {
          type = "string",
        },
        onClick = {
          ["$ref"] = "OnClick",
        },
        text = {
          type = "string",
        },
      },
      type = "object",
    },
    TextOperatorOptions = {
      description = "Used to provide a search operator for text properties. This is optional. Search operators let users restrict the query to specific fields relevant to the type of item being searched.",
      id = "TextOperatorOptions",
      properties = {
        exactMatchWithOperator = {
          description = "If true, the text value is tokenized as one atomic value in operator searches and facet matches. For example, if the operator name is \"genre\" and the value is \"science-fiction\" the query restrictions \"genre:science\" and \"genre:fiction\" doesn't match the item; \"genre:science-fiction\" does. Text value matching is case-sensitive and does not remove special characters. If false, the text is tokenized. For example, if the value is \"science-fiction\" the queries \"genre:science\" and \"genre:fiction\" matches the item.",
          type = "boolean",
        },
        operatorName = {
          description = "Indicates the operator name required in the query in order to isolate the text property. For example, if operatorName is *subject* and the property's name is *subjectLine*, then queries like *subject:<value>* show results only where the value of the property named *subjectLine* matches *<value>*. By contrast, a search that uses the same *<value>* without an operator returns all items where *<value>* matches the value of any text properties or text within the content field for the item. The operator name can only contain lowercase letters (a-z). The maximum length is 32 characters.",
          type = "string",
        },
      },
      type = "object",
    },
    TextParagraph = {
      id = "TextParagraph",
      properties = {
        text = {
          type = "string",
        },
      },
      type = "object",
    },
    TextPropertyOptions = {
      description = "The options for text properties.",
      id = "TextPropertyOptions",
      properties = {
        operatorOptions = {
          ["$ref"] = "TextOperatorOptions",
          description = "If set, describes how the property should be used as a search operator.",
        },
        retrievalImportance = {
          ["$ref"] = "RetrievalImportance",
          description = "Indicates the search quality importance of the tokens within the field when used for retrieval.",
        },
      },
      type = "object",
    },
    TextValues = {
      description = "List of text values.",
      id = "TextValues",
      properties = {
        values = {
          description = "The maximum allowable length for text values is 2048 characters.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ThreadKeySet = {
      description = "The ThreadKey was set on some (subset of the) messages in this thread.",
      id = "ThreadKeySet",
      properties = {
        messageKeys = {
          description = "Messages on which the thread_key was changed.",
          items = {
            ["$ref"] = "MultiKey",
          },
          type = "array",
        },
        newThreadKey = {
          ["$ref"] = "MultiKey",
          description = "The new thread_key for this thread",
        },
      },
      type = "object",
    },
    ThreadUpdate = {
      description = "HistoryRecord for changes associated with a thread, namely: MESSAGE_ADDED MESSAGE_DELETED LABEL_ADDED LABEL_REMOVED ATTRIBUTE_SET ATTRIBUTE_REMOVED THREAD_KEY_SET All label_ids refer to the (unchanging) value as defined by the Label.id field in labels.proto. In particular, it is *not* the canonical_name.",
      id = "ThreadUpdate",
      properties = {
        attributeRemoved = {
          ["$ref"] = "AttributeRemoved",
        },
        attributeSet = {
          ["$ref"] = "AttributeSet",
        },
        labelAdded = {
          ["$ref"] = "LabelAdded",
        },
        labelRemoved = {
          ["$ref"] = "LabelRemoved",
        },
        lastHistoryRecordId = {
          description = "Indicates the record id of the last operation that modified this thread.",
          format = "uint64",
          type = "string",
        },
        messageAdded = {
          ["$ref"] = "MessageAdded",
        },
        messageDeleted = {
          ["$ref"] = "MessageDeleted",
        },
        originalThreadKey = {
          ["$ref"] = "MultiKey",
          description = "The first non-empty thread-key on any message in the thread (including deleted messages). This field has been introduced to maintain backward compatibility for clients that are not subthread aware.",
        },
        preState = {
          description = "The PreStates of all messages before the transaction. These are suppressed if the client requested that prestates not be included in the output of the GetHistoryRequest.",
          items = {
            ["$ref"] = "PreState",
          },
          type = "array",
        },
        threadKey = {
          ["$ref"] = "MultiKey",
          description = "Affected thread",
        },
        threadKeySet = {
          ["$ref"] = "ThreadKeySet",
        },
        threadLocator = {
          description = "Thread PLID",
          type = "string",
        },
        topicStateUpdate = {
          ["$ref"] = "TopicStateUpdate",
        },
      },
      type = "object",
    },
    TimestampOperatorOptions = {
      description = "Used to provide a search operator for timestamp properties. This is optional. Search operators let users restrict the query to specific fields relevant to the type of item being searched.",
      id = "TimestampOperatorOptions",
      properties = {
        greaterThanOperatorName = {
          description = "Indicates the operator name required in the query in order to isolate the timestamp property using the greater-than operator. For example, if greaterThanOperatorName is *closedafter* and the property's name is *closeDate*, then queries like *closedafter:<value>* show results only where the value of the property named *closeDate* is later than *<value>*. The operator name can only contain lowercase letters (a-z). The maximum length is 32 characters.",
          type = "string",
        },
        lessThanOperatorName = {
          description = "Indicates the operator name required in the query in order to isolate the timestamp property using the less-than operator. For example, if lessThanOperatorName is *closedbefore* and the property's name is *closeDate*, then queries like *closedbefore:<value>* show results only where the value of the property named *closeDate* is earlier than *<value>*. The operator name can only contain lowercase letters (a-z). The maximum length is 32 characters.",
          type = "string",
        },
        operatorName = {
          description = "Indicates the operator name required in the query in order to isolate the timestamp property. For example, if operatorName is *closedon* and the property's name is *closeDate*, then queries like *closedon:<value>* show results only where the value of the property named *closeDate* matches *<value>*. By contrast, a search that uses the same *<value>* without an operator returns all items where *<value>* matches the value of any String properties or text within the content field for the item. The operator name can only contain lowercase letters (a-z). The maximum length is 32 characters.",
          type = "string",
        },
      },
      type = "object",
    },
    TimestampPropertyOptions = {
      description = "The options for timestamp properties.",
      id = "TimestampPropertyOptions",
      properties = {
        operatorOptions = {
          ["$ref"] = "TimestampOperatorOptions",
          description = "If set, describes how the timestamp should be used as a search operator.",
        },
      },
      type = "object",
    },
    TimestampValues = {
      description = "List of timestamp values.",
      id = "TimestampValues",
      properties = {
        values = {
          items = {
            format = "google-datetime",
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    TombstoneMetadata = {
      description = "Tombstoning is the act of leaving a contextual trace when deleting a message. See more: go/tombstone-prd, go/hub-dynamite-tombstones-server-design-v2.",
      id = "TombstoneMetadata",
      properties = {
        tombstoneType = {
          description = "Indicates the type of Tombstone.",
          enum = {
            "TOMBSTONE_UNSPECIFIED",
            "CREATOR",
            "ROOM_OWNER",
            "ADMIN",
            "APP_MESSAGE_EXPIRY",
            "CREATOR_VIA_APP",
            "ROOM_OWNER_VIA_APP",
          },
          enumDescriptions = {
            "This should not be used.",
            "User deleted their own message.",
            "The space owner deleted a message in their space.",
            "The customer admin deleted a message in a space or DM owned by the customer. (go/chat-customer-owned-data)",
            "App scheduled deletion of their own message. See go/bme-dd.",
            "User deleted their own message via an app. See go/chat-api-delete-message.",
            "The space owner deleted a message in their space via an app. See go/chat-api-delete-message.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    Toolbar = {
      description = "The Toolbar markup has been deprecated. The information is now specified in the manifest.",
      id = "Toolbar",
      properties = {
        color = {
          description = "Background color of the toolbar in RBG hex representation.",
          type = "string",
        },
        iconUrl = {
          type = "string",
        },
        name = {
          type = "string",
        },
      },
      type = "object",
    },
    TopicId = {
      id = "TopicId",
      properties = {
        groupId = {
          ["$ref"] = "GroupId",
          description = "The Space or DM that the topic belongs to.",
        },
        topicId = {
          description = "Opaque, server-assigned ID of the Topic. While this ID is guaranteed to be unique within the Space, it's not guaranteed to be globally unique. Internal usage: this field can be empty in the following cases: 1. To create the first message in a topic. 2. To list last N messages of a Space (regardless of topic).",
          type = "string",
        },
      },
      type = "object",
    },
    TopicState = {
      description = "State of an topic thread as maintained within Tingle.",
      id = "TopicState",
      properties = {
        labelIdMessageCount = {
          additionalProperties = {
            format = "int32",
            type = "integer",
          },
          description = "Map of label => count of topic constituent messages with label These only contain counts of labels that are relevant for topic normalization/denormalization. Eg. If a topic thread has 5 constituents, 4 of which are in inbox, this will contain ^i => 4. Some labels of interest are archive, inbox, trash, spam, etc.",
          type = "object",
        },
        numConstituents = {
          description = "Number of constituents for this entity.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    TopicStateUpdate = {
      id = "TopicStateUpdate",
      properties = {
        topicState = {
          ["$ref"] = "TopicState",
        },
      },
      type = "object",
    },
    TransactionContext = {
      description = "Storage information pertaining to the transaction with which a HistoryRecord is associated.",
      id = "TransactionContext",
      properties = {
        endingRecordId = {
          description = "The last HistoryRecord of the transaction. Note that this may correspond to a record that is filtered by Tingle (and thus not returned to the client). See http://b/9513464.",
          format = "uint64",
          type = "string",
        },
        startingRecordId = {
          description = "The first HistoryRecord of the transaction. Note that this may be a record of type INTERNAL.",
          format = "uint64",
          type = "string",
        },
        writeTimestampUs = {
          description = "The microsecond timestamp of the transaction.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    TransactionDebugInfo = {
      description = "HistoryRecord for debug info associated with the transaction, namely: TXN_DEBUG_INFO TODO(b/143845917) This is a short-term workaround for unblocking fusebox writes migration. Clean up the code or land a long-term solution after the rollout. go/diff-to-historyrecord",
      id = "TransactionDebugInfo",
      properties = {},
      type = "object",
    },
    TranscriptionSessionInfo = {
      description = "Information about a transcription session.",
      id = "TranscriptionSessionInfo",
      properties = {
        sessionStateInfo = {
          ["$ref"] = "SessionStateInfo",
          description = "Transcription session's state information.",
        },
        transcriptionSessionId = {
          description = "A unique server-generated ID for the transcription session.",
          type = "string",
        },
      },
      type = "object",
    },
    TransientData = {
      description = "Transient generic data that will not be saved on the server.",
      id = "TransientData",
      properties = {},
      type = "object",
    },
    Trigger = {
      id = "Trigger",
      properties = {
        actionType = {
          description = "Each dispatcher should use an enum to for the actions that it supports. If a dispatcher has only one action, this does not need to be set. (It can be expanded later, defining the default behaviour as type 0.) For purposes such as batching, the type of a trigger is (dispatcher, action_type).",
          format = "uint32",
          type = "integer",
        },
        batchTimeUs = {
          description = "Maximum possible delay in micros that can be tolerated so triggers can be batched, which makes processing more efficient compared to firing triggers individually. Note that the actual fire time will be somewhere in the timerange interval [fire_time_us, fire_time_us + batch_time_us).",
          format = "int64",
          type = "string",
        },
        dispatchId = {
          description = "Must be set for DISPATCHER_STUBBY_DISPATCHER.",
          format = "uint32",
          type = "integer",
        },
        dispatcher = {
          description = "Which server should interpret action_type.",
          enum = {
            "DISPATCHER_COPROC",
            "DISPATCHER_JOBSETTED_PRIMARY",
            "DISPATCHER_STRATUS",
            "DISPATCHER_TASKS_SERVER",
            "DISPATCHER_STUBBY_DISPATCHER",
            "DISPATCHER_CS",
          },
          enumDescriptions = {
            "Replace ACTION_INVOKE_X; the CS and Stratus are no longer limited to a single type of action. Each additional remote client should be defined here.",
            "",
            "",
            "",
            "",
            "",
          },
          type = "string",
        },
        fireTimeUs = {
          description = "Earliest time to fire at in microseconds. The actual time that the trigger will fire will be in the timerange: [fire_time_us, fire_time_us + batch_time_us).",
          format = "int64",
          type = "string",
        },
        jobsettedServerSpec = {
          ["$ref"] = "JobsettedServerSpec",
          description = "Must be set for DISPATCHER_JOBSETTED_PRIMARY.",
        },
        key = {
          description = "The trigger key, if applicable.",
          type = "string",
        },
        rpcOptions = {
          ["$ref"] = "RpcOptions",
        },
        sliceFireTimeUs = {
          description = "The slice_fire_time_us is automatically computed and stored as part of the trigger write. It represents the exact fire time at which the trigger will be queued to fire and will satisfy fire_time_us < slice_fire_time_us <= fire_time_us + batch_time_us Triggers have an index row in the slice trigger index with the row prefix matching this time. Note that this field is internal to gmail_cp and is ignored if set by external clients when adding / updating triggers.",
          format = "int64",
          type = "string",
        },
        triggerAction = {
          ["$ref"] = "TriggerAction",
          description = "Trigger action to perform. This should always be set.",
        },
        triggerKey = {
          ["$ref"] = "TriggerKey",
          description = "The TriggerKey will uniquely determine a trigger within a given context. A context is a single message for message triggers or a single account for account triggers.",
        },
      },
      type = "object",
    },
    TriggerAction = {
      id = "TriggerAction",
      properties = {
        action = {
          enum = {
            "ACTION_NONE",
            "ACTION_DELETE",
            "ACTION_CREATE_NEW_TRIGGER",
            "ACTION_MESSAGE_EXPUNGE",
            "ACTION_RETENTION_POLICY_UPDATE",
            "ACTION_UPDATE_ICEBOX_MODEL",
            "ACTION_INVOKE_CS",
            "ACTION_INVOKE_STRATUS",
            "ACTION_PDH_EXPUNGE",
            "ACTION_QUERY_RETENTION",
            "ACTION_INVOKE_JOBSETTED_PRIMARY",
            "ACTION_INVOKE_TASKS_SERVER",
            "ACTION_INVOKE_PUBLISHER",
            "ACTION_INVOKE_OBSERVER",
            "ACTION_PUSH_HISTORY_TO_PDH",
            "ACTION_INVOKE_STUBBY_DISPATCHER",
            "ACTION_PDH_BACKFILL",
            "ACTION_MESSAGE_UNDELETE",
            "ACTION_VAULT_END_USER_ACCESS",
            "ACTION_INVOKE_GROUPS",
            "ACTION_ACCOUNT_INITIALIZATION",
            "ACTION_INVOKE_OBSERVER_WIPEOUT",
            "ACTION_SERVICE_REMOVED_MESSAGE_EXPUNGE",
            "ACTION_EVERCLEAR_EXPUNGE",
            "ACTION_INVOKE_SMIME_CERTIFICATE_ISSUER",
            "ACTION_GROUPS_QUERY_RETENTION",
            "ACTION_INVOKE_SATELLITE_BACKUP",
            "ACTION_INVOKE_DEBUG_LOG",
            "ACTION_PREFERENCE_CLEANUP",
            "ACTION_CARIBOU_DATA_RETENTION",
            "ACTION_HISTORY_CLEANUP",
            "ACTION_ITEM_BULK_RELABEL",
            "ACTION_INVOKE_SATELLITE_IMAGE_PROCESSING",
            "ACTION_CARIBOU_DATA_RETENTION_DIFF",
            "ACTION_RELEVANCY_SCORE_BACKFILL",
            "ACTION_PDH_PUSH_NOTIFICATION_BACKFILL",
            "ACTION_AUTO_SAVE_DRAFT_EXPUNGE",
          },
          enumDescriptions = {
            "",
            "No-op",
            "No-op",
            "This action begins the message expunge process. It will trigger a purge attempt for all messages that have this trigger.",
            "When this trigger fires, the current retention policy will be loaded from the policy management system and stored into the preference cache (if necessary). This will also create new expunge triggers if necessary.",
            "When this trigger fires, the message should be used to update the user's importance model. See http://go/io-tingle for more details.",
            "Sends the trigger to the master Caribou server via the Stubby TriggerHandlerService interface (defined in caribou/coproc/proto/trigger_handler.proto). The trigger is handled at fire time in the account's primary replica, and only in non-primary replicas after a delay.",
            "Similar to ACTION_INVOKE_CS, but instead of sending the trigger to the master Caribou server, sends it to a Stratus server that also implements the TriggerHandlerService. This Stratus server is specified via FLAGS_triggers_stratus_server_address. The trigger is handled at fire time in the account's primary replica, and only in non-primary replicas after a delay.",
            "This action begins the message's PDH expunge. It will trigger a expunge (from pdh) attempt for all messages that have this trigger.",
            "When this trigger fires, based on the latest retention policy: 1. messages that need to be deleted will be deleted through the CS trigger handler 2. ^deleted messages that need to be expunged will be expunged",
            "Similar to ACTION_INVOKE_CS, but instead of sending the trigger to the master Caribou server, sends it to a jobsetted server in the user's master jobset using the consistent-hash homing algorithm. The jobsetted_server_spec must be specified when using this TriggerAction.",
            "Send the trigger to a Tasks server that implements the TriggerHandlerService. Dispatched via GSLB target specified by FLAGS_triggers_tasks_server_address.",
            "Send the trigger to a SmartMail Publisher server that implements the TriggerHandlerService. Dispatched via GSLB target specified by FLAGS_triggers_publisher_server_address.",
            "Send the trigger to an Observer server that implements the TriggerHandlerService. Dispatched via GSLB target specified by FLAGS_triggers_observer_server_address.",
            "Push a set of history records to PDH.",
            "Send the trigger to the stubby dispatcher, which routes the RPC using the value of Trigger.dispatch_id as the RoutingInfo.extension_tag field. Dispatched via the GSLB target specified by FLAGS_triggers_stubby_dispatcher_address.",
            "Backfills a set of records from an account and pushes them to PDH.",
            "Move messages from ^deleted to ^all. This trigger will only undelete messages that were deleted before the fire time of the trigger. Also, messages whose blobs are already deleted will not be undeleted. This is an account trigger.",
            "This trigger will undelete messages that were ^deleted arbitrarily long in the past and a trash label will be applied to these undeleted messages. This is an account trigger that will be written when the Vault admin enables end user access for the Vault customer. This trigger shares its implementation with the ACTION_MESSAGE_UNDELETE trigger.",
            "Send the trigger to a groups server that implements the TriggerHandlerService. Dispatched via GSLB target specified by FLAGS_triggers_groups_server_address.",
            "This trigger will be executed once per newly created account. It will be created as part of the first transaction written to the account. The trigger can also be written as part of an SVF in case we want to re-initialize every account.",
            "Send the trigger to an Observer server that implements the TriggerHandlerService for wipeout purpose. Dispatched via GSLB target specified by FLAGS_triggers_observer_server_address. It behaves differently from the invoke observer trigger (ACTION_INVOKE_OBSERVER) and should be batched separately. Tingle always fires this kind of action trigger for ^deleted messages.",
            "Begins the message expunge similar to ACTION_MESSAGE_EXPUNGE but doesn't check if the message was deleted at least 30 days back. To be used ONLY for service removal. See go/gmail-service-removal for more details.",
            "Sends RPC to everclear for the message expunge.",
            "Send the trigger to the S/MIME certificate issuer server. Dispatched via the GSLB target specified by FLAGS_triggers_smime_certificate_issuer_server_address.",
            "The retention trigger that will be written to implement Groups retention.",
            "Dispatches the permanent backup trigger to Satellite through Stubby dispatcher.",
            "Process the debug log trigger by adding message body before dispatching to the Caribou Server through Stubby Dispatcher.",
            "This trigger deletes expired temporary preferences. See go/tingle-temp-prefs for more details.",
            "Similar to ACTION_QUERY_RETENTION but uses the MessageRetention policies to trash/delete the messages: cs/caribou/base/lib/proto/data_retention.proto .",
            "This trigger deletes expired HistoryRecords. See go/history-record-cleanup for more details.",
            "This trigger relabels messages asynchronously. See go/fusebox-bulk-api for more details.",
            "Dispatches the image processing trigger to Satellite through Stubby dispatcher. See go/gmail-photo-sharing for details.",
            "Trigger for executing comparison logic between the output of ApplyDataRetention idle task and CaribouDataRetention trigger.",
            "Trigger for backfill relevancy score. see go/gmail-relevancy-scoring-write for detail.",
            "Trigger to backfill gaps left by pdh pushed via push notification. see go/tingle-moonshine-push-v2",
            "Begins the message expunge similar to ACTION_MESSAGE_EXPUNGE but fires within one day. To be used ONLY for auto save drafts. See go/faster-auto-save-draft-deletion for more details.",
          },
          type = "string",
        },
        data = {
          description = "Clients should use extensions on the Trigger message instead.",
          format = "byte",
          type = "string",
        },
        dataInt = {
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    TriggerKey = {
      description = "A TriggerKey (type + instance_id) uniquely identifies a trigger within a message for a message-trigger and within an account for an account-trigger.",
      id = "TriggerKey",
      properties = {
        instanceId = {
          description = "Identifier to distinguish multiple Triggers of the same type (per message or per account).",
          type = "string",
        },
        type = {
          description = "A non-empty string that identifies the type of Trigger. Triggers of the same type may be batched together. The universe of values for the type field should be finite as it is used as a stats key.",
          type = "string",
        },
      },
      type = "object",
    },
    Triggers = {
      id = "Triggers",
      properties = {
        triggers = {
          description = "A list of triggers.",
          items = {
            ["$ref"] = "Trigger",
          },
          type = "array",
        },
      },
      type = "object",
    },
    TrustedResourceUrlProto = {
      description = "Message containing a string that is safe to use in all URL contexts in DOM APIs and HTML documents; even where the referred-to resource is interpreted as code, e.g., as the src of a script element.",
      id = "TrustedResourceUrlProto",
      properties = {
        privateDoNotAccessOrElseTrustedResourceUrlWrappedValue = {
          description = "IMPORTANT: Never set or read this field, even from tests, it is private. See documentation at the top of .proto file for programming language packages with which to create or read this message.",
          type = "string",
        },
      },
      type = "object",
    },
    TypeInfo = {
      description = "Next tag: 2",
      id = "TypeInfo",
      properties = {
        videoInfo = {
          ["$ref"] = "VideoInfo",
          description = "Contains additional video information only if document_type is VIDEO.",
        },
      },
      type = "object",
    },
    UniversalPhoneAccess = {
      description = "Universal phone access contains information required to dial into a conference using one of a static list of phone numbers and a universal PIN. The phone number list is distributed separately.",
      id = "UniversalPhoneAccess",
      properties = {
        pin = {
          description = "The PIN that users must enter after dialing a universal number. The pin consists of only decimal digits and the length may vary, though it generally is longer than a PhoneAccess.pin.",
          type = "string",
        },
        pstnInfoUrl = {
          description = "This field has the same contents as the MeetingSpace.more_join_url field, and is included for compatibility reasons. Clients should use the other field instead. This field is deprecated and will be removed.",
          type = "string",
        },
      },
      type = "object",
    },
    UnmappedIdentity = {
      id = "UnmappedIdentity",
      properties = {
        externalIdentity = {
          ["$ref"] = "Principal",
          description = "The resource name for an external user.",
        },
        resolutionStatusCode = {
          description = "The resolution status for the external identity.",
          enum = {
            "CODE_UNSPECIFIED",
            "NOT_FOUND",
            "IDENTITY_SOURCE_NOT_FOUND",
            "IDENTITY_SOURCE_MISCONFIGURED",
            "TOO_MANY_MAPPINGS_FOUND",
            "INTERNAL_ERROR",
          },
          enumDescriptions = {
            "Input-only value. Used to list all unmapped identities regardless of status.",
            "The unmapped identity was not found in IDaaS, and needs to be provided by the user.",
            "The identity source associated with the identity was either not found or deleted.",
            "IDaaS does not understand the identity source, probably because the schema was modified in a non compatible way.",
            "The number of users associated with the external identity is too large.",
            "Internal error.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    UnreserveItemsRequest = {
      id = "UnreserveItemsRequest",
      properties = {
        connectorName = {
          description = "The name of connector making this call. Format: datasources/{source_id}/connectors/{ID}",
          type = "string",
        },
        debugOptions = {
          ["$ref"] = "DebugOptions",
          description = "Common debug options.",
        },
        queue = {
          description = "The name of a queue to unreserve items from.",
          type = "string",
        },
      },
      type = "object",
    },
    UpdateBccRecipients = {
      id = "UpdateBccRecipients",
      properties = {
        bccRecipients = {
          items = {
            ["$ref"] = "Recipient",
          },
          type = "array",
        },
      },
      type = "object",
    },
    UpdateBody = {
      id = "UpdateBody",
      properties = {
        insertContents = {
          description = "A repeated field that contains a series of content to insert into the draft that the user is currently editing. The content can contain HTML content or plain text content.",
          items = {
            ["$ref"] = "InsertContent",
          },
          type = "array",
        },
        type = {
          enum = {
            "UNSPECIFIED_ACTION_TYPE",
            "IN_PLACE_INSERT",
            "INSERT_AT_START",
            "INSERT_AT_END",
            "REPLACE",
          },
          enumDescriptions = {
            "Default value when nothing is set for Type.",
            "Indicates this action is to perform an in-place insertion. By default the content is inserted at the current cursor position, if there is selected content, it replaces the selected content.",
            "Indicates this action is to perform insert at the start of the message body.",
            "Indicates this action is to perform insert at the end of the message body.",
            "Indicates this action is to replace the message body.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    UpdateCcRecipients = {
      id = "UpdateCcRecipients",
      properties = {
        ccRecipients = {
          items = {
            ["$ref"] = "Recipient",
          },
          type = "array",
        },
      },
      type = "object",
    },
    UpdateDataSourceRequest = {
      id = "UpdateDataSourceRequest",
      properties = {
        debugOptions = {
          ["$ref"] = "DebugOptions",
          description = "Common debug options.",
        },
        source = {
          ["$ref"] = "DataSource",
        },
        updateMask = {
          description = "Only applies to [`settings.datasources.patch`](https://developers.google.com/cloud-search/docs/reference/rest/v1/settings.datasources/patch). Update mask to control which fields to update. Example field paths: `name`, `displayName`. * If `update_mask` is non-empty, then only the fields specified in the `update_mask` are updated. * If you specify a field in the `update_mask`, but don't specify its value in the source, that field is cleared. * If the `update_mask` is not present or empty or has the value `*`, then all fields are updated.",
          format = "google-fieldmask",
          type = "string",
        },
      },
      type = "object",
    },
    UpdateDraftActionMarkup = {
      id = "UpdateDraftActionMarkup",
      properties = {
        updateBccRecipients = {
          ["$ref"] = "UpdateBccRecipients",
          description = "If set, replaces the existing Bcc recipients of the draft the user is currently editing.",
        },
        updateBody = {
          ["$ref"] = "UpdateBody",
          description = "A field that contains a series of update actions to perform on the draft body that the user is currently editing.",
        },
        updateCcRecipients = {
          ["$ref"] = "UpdateCcRecipients",
          description = "If set, replaces the existing Cc recipients of the draft the user is currently editing.",
        },
        updateSubject = {
          ["$ref"] = "UpdateSubject",
          description = "If set, replaces the existing subject of the draft the user is currently editing.",
        },
        updateToRecipients = {
          ["$ref"] = "UpdateToRecipients",
          description = "If set, replaces the existing To recipients of the draft the user is currently editing.",
        },
      },
      type = "object",
    },
    UpdateSchemaRequest = {
      id = "UpdateSchemaRequest",
      properties = {
        debugOptions = {
          ["$ref"] = "DebugOptions",
          description = "Common debug options.",
        },
        schema = {
          ["$ref"] = "Schema",
          description = "The new schema for the source.",
        },
        validateOnly = {
          description = "If true, the schema will be checked for validity, but will not be registered with the data source, even if valid.",
          type = "boolean",
        },
      },
      type = "object",
    },
    UpdateSubject = {
      id = "UpdateSubject",
      properties = {
        subject = {
          type = "string",
        },
      },
      type = "object",
    },
    UpdateToRecipients = {
      id = "UpdateToRecipients",
      properties = {
        toRecipients = {
          items = {
            ["$ref"] = "Recipient",
          },
          type = "array",
        },
      },
      type = "object",
    },
    UploadItemRef = {
      description = "Represents an upload session reference. This reference is created via upload method. This reference is valid for 30 days after its creation. Updating of item content may refer to this uploaded content via contentDataRef.",
      id = "UploadItemRef",
      properties = {
        name = {
          description = "The name of the content reference. The maximum length is 2048 characters.",
          type = "string",
        },
      },
      type = "object",
    },
    UploadMetadata = {
      description = "Annotation metadata for user Upload artifacts.",
      id = "UploadMetadata",
      properties = {
        attachmentToken = {
          description = "Opaque token. Clients shall simply pass it back to the Backend. This field will NOT be saved into storage.",
          type = "string",
        },
        backendUploadMetadata = {
          ["$ref"] = "AppsDynamiteSharedBackendUploadMetadata",
          description = "Information about the uploaded attachment that is only used in Backend. This field will NOT be sent out of Google.",
        },
        clonedAuthorizedItemId = {
          ["$ref"] = "AuthorizedItemId",
          description = "The \"new\" secure identifier for Drive files. Should be used instead of the deprecated string drive_id field above. This should only be set if the upload file has been added to Drive. Note that older Drive files that do not have a ResourceKey should still use this field, with the resource_key field unset.",
        },
        clonedDriveAction = {
          description = "DriveAction for organizing the cloned version of this upload in Drive, if the file has been added to Drive. This field is not set if the file has not been added to Drive. Additionally, this field is only set when part of a FileResult in a ListFilesResponse.",
          enum = {
            "DRIVE_ACTION_UNSPECIFIED",
            "ADD_TO_DRIVE",
            "ORGANIZE",
            "ADD_SHORTCUT",
            "ADD_ANOTHER_SHORTCUT",
          },
          enumDescriptions = {
            "No organize action should be shown.",
            "Show \"Add to Drive\" button, for adding file that doesn't exist in Drive to Drive. Note that deleted Drive files that still exist (i.e. in your Trash) will still be ORGANIZE (this is consistent with Gmail Drive attachments).",
            "Show \"Move\" button, for organizing a Drive file the user has permission to move.",
            "Show \"Add shortcut\" button, for adding a shortcut to a Drive file the user does not have permission to move.",
            "Show \"Add another shortcut\" button, for Drive files the user has already created a shortcut to.",
          },
          type = "string",
        },
        clonedDriveId = {
          description = "Reference to a Drive ID, if this upload file has been previously cloned to Drive. Note: this is deprecated in favor of the AuthorizedItemId below.",
          type = "string",
        },
        contentName = {
          description = "The original file name for the content, not the full path.",
          type = "string",
        },
        contentType = {
          description = "Type is from Scotty's best_guess by default: http://google3/uploader/agent/scotty_agent.proto?l=51&rcl=140889785",
          type = "string",
        },
        dlpMetricsMetadata = {
          ["$ref"] = "AppsDynamiteSharedDlpMetricsMetadata",
          description = "The metrics metadata of the Data Loss Prevention attachment scan.",
        },
        latestVirusScanTimestamp = {
          description = "The timestamp of the most recent virus scan completed (in microseconds).",
          format = "int64",
          type = "string",
        },
        localId = {
          description = "A copy of the LocalId in Annotation. This field is supposed to be filled by server only.",
          type = "string",
        },
        originalDimension = {
          ["$ref"] = "AppsDynamiteSharedDimension",
          description = "Original dimension of the content. Only set for image attachments.",
        },
        videoReference = {
          ["$ref"] = "AppsDynamiteSharedVideoReference",
          description = "Reference to a transcoded video attachment. Only set for video attachments.",
        },
        virusScanResult = {
          description = "Result for a virus scan. It's duplicated in the above field apps.dynamite.shared.BackendUploadMetadata",
          enum = {
            "UNKNOWN_VIRUS_SCAN_RESULT",
            "CLEAN",
            "INFECTED",
            "ERROR",
            "POLICY_VIOLATION",
          },
          enumDescriptions = {
            "",
            "",
            "",
            "",
            "The document violates Google's policy for executables and archives.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    UrlMetadata = {
      description = "Annotation metadata for a Weblink. In case of pasted link it can qualify to be other types in addition to being a URL - like DRIVE_DOC/DRIVE_SHEET and so on. The URL metadata will also be present and it's up to the client to decide which metadata to render it with. These fields are filled in using page render service.",
      id = "UrlMetadata",
      properties = {
        domain = {
          description = "Domain for this url. If it's an IP address the address is returned.",
          type = "string",
        },
        gwsUrl = {
          ["$ref"] = "SafeUrlProto",
          description = "The signed GWS URL.",
        },
        gwsUrlExpirationTimestamp = {
          description = "The expiration timestamp for GWS URL, only set when gws_url is set.",
          format = "int64",
          type = "string",
        },
        imageHeight = {
          description = "Dimensions of the image: height. This field is string to match with page render service response. Deprecated. Use int_image_height instead.",
          type = "string",
        },
        imageUrl = {
          description = "Representative image of the website.",
          type = "string",
        },
        imageWidth = {
          description = "Dimensions of the image: width. This field is string to match with page render service response. Deprecated. Use int_image_height instead.",
          type = "string",
        },
        intImageHeight = {
          description = "Dimensions of the image: height.",
          format = "int32",
          type = "integer",
        },
        intImageWidth = {
          description = "Dimensions of the image: width.",
          format = "int32",
          type = "integer",
        },
        mimeType = {
          description = "Mime type of the content (Currently mapped from Page Render Service ItemType) Note that this is not necessarily the mime type of the http resource. For example a text/html from youtube or vimeo may actually be classified as a video type. Then we shall mark it as video/* since we don't know exactly what type of video it is.",
          type = "string",
        },
        redirectUrl = {
          ["$ref"] = "SafeUrlProto",
          description = "The stable redirect URL pointing to frontend server.",
        },
        shouldNotRender = {
          description = "If the UrlMetadata is missing data for rendering a chip. Deprecated. Use Annotation.ChipRenderType instead.",
          type = "boolean",
        },
        snippet = {
          description = "Snippet/small description of the weblink.",
          type = "string",
        },
        title = {
          description = "Title of the Weblink.",
          type = "string",
        },
        url = {
          ["$ref"] = "SafeUrlProto",
          description = "The original URL.",
        },
        urlSource = {
          enum = {
            "URL_SOURCE_UNKNOWN",
            "SERVER_SUPPLIED_POLICY_VIOLATION",
            "AUTO_DETECTED_PLAIN_TEXT",
            "RICH_TEXT",
          },
          enumDescriptions = {
            "",
            "",
            "Set by the server, when it detects a URL in the message text",
            "Set by the client, when the user adds a link as a custom hyperlink. Validated by the server and persisted in storage.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    User = {
      description = "User profile information. This user is not necessarily member of a space.",
      id = "User",
      properties = {
        avatarUrl = {
          description = "URL for the avatar picture of the User in dynamite",
          type = "string",
        },
        blockRelationship = {
          ["$ref"] = "AppsDynamiteSharedUserBlockRelationship",
          description = "Information about whether the user is blocked by requester and/or has blocked requester.",
        },
        botInfo = {
          ["$ref"] = "BotInfo",
          description = "Bot-specific profile information. Leave it empty for human users.",
        },
        deleted = {
          description = "Deleted flag, if true, means User has been soft-deleted/purged Deprecated. Use user_account_state field instead.",
          type = "boolean",
        },
        email = {
          description = "Email ID of the user",
          type = "string",
        },
        firstName = {
          description = "First or given name of the user",
          type = "string",
        },
        gender = {
          description = "Gender of the user",
          type = "string",
        },
        id = {
          ["$ref"] = "UserId",
          description = "UserId",
        },
        isAnonymous = {
          description = "Set to true if none of the depending services (Gaia, PeopleApi) returns any info for this user.",
          type = "boolean",
        },
        lastName = {
          description = "Last or family name of the user",
          type = "string",
        },
        name = {
          description = "Non-unique, user-defined display name of the User",
          type = "string",
        },
        organizationInfo = {
          ["$ref"] = "AppsDynamiteSharedOrganizationInfo",
          description = "Information about whether the user is a consumer user, or the GSuite customer that they belong to.",
        },
        phoneNumber = {
          description = "Phone number(s) of the user",
          items = {
            ["$ref"] = "AppsDynamiteSharedPhoneNumber",
          },
          type = "array",
        },
        userAccountState = {
          description = "State of user's Gaia Account",
          enum = {
            "UNKNOWN_USER_ACCOUNT_STATE",
            "ENABLED",
            "DISABLED",
            "DELETED",
            "TEMPORARY_UNAVAILABLE",
          },
          enumDescriptions = {
            "",
            "User has Dynamite enabled.",
            "User doesn't have Dynamite enabled. This includes service disabled by admin, or user's account is suspended",
            "User account is deleted",
            "Failed to retrieve user's info. Will use user's email address as name and first_name.",
          },
          type = "string",
        },
        userProfileVisibility = {
          description = "Visibility of user's Profile",
          enum = {
            "UNKNOWN_USER_PROFILE_VISIBILITY",
            "FULL_PROFILE",
            "PRIMARY_MAIL",
            "INVITEE_EMAIL",
            "DELETED_USER",
            "UNKNOWN_USER",
            "FAILURE",
          },
          enumDescriptions = {
            "",
            "Caller has full visibility.",
            "Caller can only see target user's primary email from Gaia",
            "Caller can only see the email used to invite the target user",
            "Caller can only see the target user as a deleted user. Email is empty. Names are redacted as \"Deleted User\".",
            "Caller has no visibility to the target user at all. Email is empty. Names are redacted as \"Unknown User\".",
            "Stubby failed. Clients should always retry ASAP",
          },
          type = "string",
        },
      },
      type = "object",
    },
    UserDisplayInfo = {
      description = "Resource for displaying user info",
      id = "UserDisplayInfo",
      properties = {
        avatarUrl = {
          description = "The avatar to show for this user",
          type = "string",
        },
        displayName = {
          description = "The name to show for this user",
          type = "string",
        },
      },
      type = "object",
    },
    UserId = {
      description = "Primary key for User resource.",
      id = "UserId",
      properties = {
        actingUserId = {
          description = "Optional. Opaque, server-assigned ID of the user profile associated with App/user acting on behalf of the human user. This is currently only set when a 3P application is acting on the user's behalf.",
          type = "string",
        },
        id = {
          description = "Opaque, server-assigned ID of the User.",
          type = "string",
        },
        originAppId = {
          ["$ref"] = "AppId",
          description = "Optional. Identifier of the App involved (directly or on behalf of a human creator) in creating this message. This is not set if the user posted a message directly, but is used in the case of, for example, a message being generated by a 1P integration based on a user action (creating an event, creating a task etc). This should only be used on the BE. For clients, please use the field in the FE message proto instead (google3/apps/dynamite/v1/frontend/api/message.proto?q=origin_app_id).",
        },
        type = {
          description = "Clients do not need to send UserType to Backend, but Backend will always send this field to clients per the following rule: 1. For HUMAN Ids, the field is empty but by default .getType() will return HUMAN. 2. For BOT Ids, the field is ALWAYS set to BOT.",
          enum = {
            "HUMAN",
            "BOT",
          },
          enumDescriptions = {
            "Notes on HUMAN type: 1) Leaving UserId.UserType field empty will return HUMAN as default value. This is expected because all the existing UserIds are without explicitly setting UserType, most of which are HUMAN Ids. For Bot Ids we will always set BOT in UserType field. 2) DO NOT explicitly set HUMAN as type. This is a proto2 issue, that a UserId with explicitly set default value HUMAN as type is NOT equal to an id without setting the field. aka. UserId id1 = UserId.newBuilder() .setId(\"dummy\").setType(UserType.HUMAN).build(); UserId id2 = UserId.newBuilder().setId(\"dummy\").build(); AssertThat(id1).isNotEqual(id2); AssertThat(id2.getType()).isEqualTo(UserType.HUMAN);",
            "",
          },
          type = "string",
        },
      },
      type = "object",
    },
    UserInfo = {
      description = "Contains info regarding the updater of an Activity Feed item. Next Id: 8",
      id = "UserInfo",
      properties = {
        driveNotificationAvatarUrl = {
          description = "Avatar url of the user who triggered the Drive Notification email. This field will be populated if we can extract such information from the Drive Notification email. This should only be used to fetch user avatars when updater_to_show_email is not populated. This field is not set for non-Drive Notification items.",
          type = "string",
        },
        updaterCountDisplayType = {
          description = "Describes how updater_count_to_show should be used.",
          enum = {
            "UPDATER_COUNT_DISPLAY_TYPE_UNSPECIFIED",
            "NO_DISPLAY_COUNT",
            "EXACT_COUNT",
            "NONZERO_COUNT",
          },
          enumDescriptions = {
            "",
            "No additional updaters where involved. Shows up in clients as \"$USERNAME replied\".",
            "A precise updater count is known and the value set in updater_count_to_show should be used. If set, updater_count_to_show is set to the total number of updaters minus the one set in updater_to_show. Shows up in clients as \"$USERNAME and $NUM others replied\".",
            "A precise updater count could not be calculated, but there is at least one. Any value set in updater_count_to_show should NOT be used. Shows up in clients as \"$USERNAME and others replied\".",
          },
          type = "string",
        },
        updaterCountToShow = {
          description = "The number of updaters for clients to show depending on UpdaterCountDisplayType.",
          format = "int32",
          type = "integer",
        },
        updaterToShowEmail = {
          description = "The email of the updater for clients to show used for Gmail items. For Drive Notifications, this is the email of the user who triggered the Drive Notification email. This field will be populated if we can extract such information from the Drive Notification email. This is not the actual sender of the email, as the sender is always comments-noreply@docs.google.com.",
          type = "string",
        },
        updaterToShowGaiaId = {
          description = "The gaia id of the updater for clients to show used for Gmail items. If the updater is an external user, the email field below should be populated.",
          format = "int64",
          type = "string",
        },
        updaterToShowName = {
          description = "The display name of the updater for clients to show used for Gmail items. For non-Drive Notification items, this field will always be populated. If the display name cannot be found for the user, the fallback string will be the email address. For Drive Notification items, this is the name of the user who triggered the Drive notification email. This field will be populated if we can extract such information from the Drive Notification email. If the name cannot be extracted, then the email will be the fallback string, which is used as the display name text in the UI when needed. This is not the actual sender of the email, as the sender is always comments-noreply@docs.google.com.",
          type = "string",
        },
        updaterToShowUserId = {
          ["$ref"] = "UserId",
          description = "The updater for clients to show used for Dynamite Chat items.",
        },
      },
      type = "object",
    },
    UserMentionData = {
      description = "Person metadata, for USER_MENTION segments. Should always contain at least one of user_gaia_id, user_id, email or user. The exact set of populated fields may differ depending on the context and the level in the serving stack; for example, emails will be elided on the viewing path. But as a general rule, a proto having any one of the four is valid, subject to the standard constraints of the applied annotations -- that is, communication between servers and clients will ignore jspb.ignore fields, and communication between servers and other servers (or between servers and storage) will ignore client_only fields. For more on the annotations, see the comments in social/common/segment_annotations.proto",
      id = "UserMentionData",
      properties = {
        email = {
          type = "string",
        },
        user = {
          ["$ref"] = "PrincipalProto",
          description = "If the principal is backed by a gaia id, DO NOT use this field. Use user_gaia_id/user_id fields instead.",
        },
        userGaiaId = {
          description = "An unobfuscated gaia ID:",
          format = "int64",
          type = "string",
        },
        userId = {
          description = "An obfuscated gaia ID:",
          type = "string",
        },
      },
      type = "object",
    },
    UserMentionMetadata = {
      description = "Annotation metadata for user mentions (+/@/-).",
      id = "UserMentionMetadata",
      properties = {
        displayName = {
          description = "Display name of the mentioned user. This field should remain empty when clients resolve a UserMention annotation. It will be filled in when a UserMention is generated by the Integration Server.",
          type = "string",
        },
        gender = {
          description = "Gender of the mentioned user. One of \"female\", \"male\" or \"other\". Used for choosing accurate translations for strings that contain the UserMention, when these need to be constructed (e.g. task assignment update message). This field should remain empty when clients resolve a UserMention. It will be filled in when a UserMention is generated by the Integration Server.",
          type = "string",
        },
        id = {
          ["$ref"] = "UserId",
          description = "To be deprecated. Use invitee_info field instead. ID of the User mentioned. This field should remain empty when type == MENTION_ALL.",
        },
        inviteeInfo = {
          ["$ref"] = "InviteeInfo",
          description = "Invitee UserId and email used when mentioned. This field should remain empty when type == MENTION_ALL. Invitee_info.email is only used when a user is @-mentioned with an email address, and it will be empty when clients get messages from Backend.",
        },
        type = {
          enum = {
            "TYPE_UNSPECIFIED",
            "INVITE",
            "UNINVITE",
            "MENTION",
            "MENTION_ALL",
            "FAILED_TO_ADD",
          },
          enumDescriptions = {
            "Default value for the enum. DO NOT USE.",
            "",
            "",
            "",
            "",
            "Server-generated user mention, for clients to strikethrough.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    VPCSettings = {
      id = "VPCSettings",
      properties = {
        project = {
          description = "The resource name of the GCP Project to be used for VPC SC policy check. VPC security settings on this project will be honored for Cloud Search APIs after project_name has been updated through CustomerService. Format: projects/{project_id}",
          type = "string",
        },
      },
      type = "object",
    },
    Value = {
      description = "Definition of a single value with generic type.",
      id = "Value",
      properties = {
        booleanValue = {
          type = "boolean",
        },
        dateValue = {
          ["$ref"] = "Date",
        },
        doubleValue = {
          format = "double",
          type = "number",
        },
        integerValue = {
          format = "int64",
          type = "string",
        },
        stringValue = {
          type = "string",
        },
        timestampValue = {
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    ValueFilter = {
      id = "ValueFilter",
      properties = {
        operatorName = {
          description = "The `operator_name` applied to the query, such as *price_greater_than*. The filter can work against both types of filters defined in the schema for your data source: 1. `operator_name`, where the query filters results by the property that matches the value. 2. `greater_than_operator_name` or `less_than_operator_name` in your schema. The query filters the results for the property values that are greater than or less than the supplied value in the query.",
          type = "string",
        },
        value = {
          ["$ref"] = "Value",
          description = "The value to be compared with.",
        },
      },
      type = "object",
    },
    VideoCallMetadata = {
      id = "VideoCallMetadata",
      properties = {
        meetingSpace = {
          ["$ref"] = "MeetingSpace",
          description = "Thor meeting space.",
        },
        shouldNotRender = {
          description = "If this field is set to true, server should still contact external backends to get metadata for search but clients should not render this chip.",
          type = "boolean",
        },
        wasCreatedInCurrentGroup = {
          description = "Whether this meeting space was created via Dynamite in this Dynamite group.",
          type = "boolean",
        },
      },
      type = "object",
    },
    VideoInfo = {
      description = "Next tag: 2",
      id = "VideoInfo",
      properties = {
        duration = {
          description = "Duration of the video in milliseconds. This field can be absent for recently uploaded video or inaccurate sometimes.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    VoicePhoneNumber = {
      description = "Represents both long and short phone number that can be called or texted. Short telephone numbers are used to reach local services. Short numbers and their purpose differ from country to country. These numbers in US are in the form of N11 which is a three-digit abbreviated dialing telephone number.",
      id = "VoicePhoneNumber",
      properties = {
        e164 = {
          description = "E.164 formatted full phone number with leading +. This field also represents encoded form of short telephone numbers in E.164 format. e.g. \"911\" is encoded as \"+1911\".",
          type = "string",
        },
        i18nData = {
          ["$ref"] = "VoicePhoneNumberI18nData",
          description = "Additional data that could be added using the libphonenumber API.",
        },
      },
      type = "object",
    },
    VoicePhoneNumberI18nData = {
      id = "VoicePhoneNumberI18nData",
      properties = {
        countryCode = {
          description = "The country calling code for this number, as defined by the ITU. For example, this would be 1 for NANPA countries, and 33 for France (for more info see i18n.phonenumbers.PhoneNumber.country_code).",
          format = "int32",
          type = "integer",
        },
        internationalNumber = {
          description = "Display number formatted using the INTERNATIONAL format.",
          type = "string",
        },
        isValid = {
          description = "When present, indicates the number is valid according to the libphonenumber's isValidNumber API (see https://code.google.com/p/libphonenumber/).",
          type = "boolean",
        },
        nationalNumber = {
          description = "Display number formatted using the NATIONAL format.",
          type = "string",
        },
        regionCode = {
          description = "A region (country, territory, continent, etc), as defined by Unicode's \"CLDR\", itself based on ISO 3166 (UN country codes). For details, see https://www.corp.google.com/~engdocs/java/com/google/i18n/identifiers/RegionCode.html",
          type = "string",
        },
        validationResult = {
          description = "When set to a non-default value, indicates the validation reason that is set when phone number is invalid (is_valid is false).",
          enum = {
            "UNKNOWN",
            "IS_POSSIBLE",
            "INVALID_COUNTRY_CODE",
            "TOO_SHORT",
            "TOO_LONG",
            "IS_POSSIBLE_LOCAL_ONLY",
            "INVALID_LENGTH",
          },
          enumDescriptions = {
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
      },
      type = "object",
    },
    WhiteboardInfo = {
      description = "Information on a whiteboard attached to an active conference. A whiteboard is a Jam document.",
      id = "WhiteboardInfo",
      properties = {
        id = {
          description = "The Cosmo Id of the whiteboard document (Jam).",
          type = "string",
        },
        title = {
          description = "Title of the whiteboard document.",
          type = "string",
        },
        uri = {
          description = "The uri for whiteboard document.",
          type = "string",
        },
      },
      type = "object",
    },
    WidgetMarkup = {
      id = "WidgetMarkup",
      properties = {
        buttons = {
          description = "buttons is also oneof data and only one of these fields should be set.",
          items = {
            ["$ref"] = "Button",
          },
          type = "array",
        },
        dateTimePicker = {
          ["$ref"] = "DateTimePicker",
        },
        divider = {
          ["$ref"] = "Divider",
        },
        grid = {
          ["$ref"] = "Grid",
        },
        horizontalAlignment = {
          description = "The horizontal alignment of this widget.",
          enum = {
            "HORIZONTAL_ALIGNMENT_UNSPECIFIED",
            "START",
            "CENTER",
            "END",
          },
          enumDescriptions = {
            "",
            "",
            "",
            "",
          },
          type = "string",
        },
        image = {
          ["$ref"] = "Image",
        },
        imageKeyValue = {
          ["$ref"] = "ImageKeyValue",
        },
        keyValue = {
          ["$ref"] = "KeyValue",
        },
        menu = {
          ["$ref"] = "Menu",
          description = "Input Widgets",
        },
        selectionControl = {
          ["$ref"] = "SelectionControl",
        },
        textField = {
          ["$ref"] = "TextField",
        },
        textKeyValue = {
          ["$ref"] = "TextKeyValue",
        },
        textParagraph = {
          ["$ref"] = "TextParagraph",
          description = "Read-only Widgets",
        },
      },
      type = "object",
    },
    WrappedResourceKey = {
      description = "A wrapper around a raw resource key. The secret should never be logged, and this proto annotates those secret fields to ensure that they are not. Clients are encouraged to use this proto rather than defining their own, to ensure that secrets are correctly annotated.",
      id = "WrappedResourceKey",
      properties = {
        resourceKey = {
          description = "Resource key of the Drive item. This field should be unset if, depending on the context, the item does not have a resource key, or if none was specified. This must never be logged.",
          type = "string",
        },
      },
      type = "object",
    },
    YouTubeBroadcastSessionInfo = {
      description = "Information about a YouTube broadcast session.",
      id = "YouTubeBroadcastSessionInfo",
      properties = {
        broadcastStats = {
          ["$ref"] = "YouTubeBroadcastStats",
          description = "Current broadcast session's statistics.",
        },
        sessionStateInfo = {
          ["$ref"] = "SessionStateInfo",
          description = "YouTube broadcast session's state information.",
        },
        youTubeBroadcastSessionId = {
          description = "A unique server-generated ID for the broadcast session.",
          type = "string",
        },
        youTubeLiveBroadcastEvent = {
          ["$ref"] = "YouTubeLiveBroadcastEvent",
          description = "The YouTube Live broadcast event that is being streamed to.",
        },
      },
      type = "object",
    },
    YouTubeBroadcastStats = {
      description = "Statistics of the YouTube broadcast session.",
      id = "YouTubeBroadcastStats",
      properties = {
        estimatedViewerCount = {
          description = "Estimated concurrent viewer count.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    YouTubeLiveBroadcastEvent = {
      description = "Information about the broadcast to YouTube.",
      id = "YouTubeLiveBroadcastEvent",
      properties = {
        broadcastId = {
          description = "Input only. The broadcast id, used to control the lifecycle of the event on YouTube",
          type = "string",
        },
        channelId = {
          description = "YouTube channel associated with the broadcast.",
          type = "string",
        },
        viewUrl = {
          description = "Output only. A URL that can be used to watch the meeting broadcast. Will be populated by the backend.",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    YoutubeMetadata = {
      description = "Annotation metadata for YouTube artifact.",
      id = "YoutubeMetadata",
      properties = {
        id = {
          description = "YouTube resource ID of the artifact.",
          type = "string",
        },
        shouldNotRender = {
          description = "If this field is set to true, server should still contact external backends to get metadata for search but clients should not render this chip.",
          type = "boolean",
        },
        startTime = {
          description = "YouTube query parameter for timestamp. YouTube specific flag that allows users to embed time token when sharing a link. This property contains parsed time token in seconds.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    YoutubeUserProto = {
      id = "YoutubeUserProto",
      properties = {
        youtubeUserId = {
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    ZwiebackSessionProto = {
      description = "See go/zwieback. New uses of Zwieback sessions must be approved via go/zwieback-request.",
      id = "ZwiebackSessionProto",
      properties = {
        zwiebackSessionId = {
          format = "uint64",
          type = "string",
        },
      },
      type = "object",
    },
  },
  servicePath = "",
  title = "Cloud Search API",
  version = "v1",
  version_module = true,
}
