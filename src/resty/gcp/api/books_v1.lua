return {
  auth = {
    oauth2 = {
      scopes = {
        ["https://www.googleapis.com/auth/books"] = {
          description = "Manage your books",
        },
      },
    },
  },
  basePath = "",
  baseUrl = "https://books.googleapis.com/",
  batchPath = "batch",
  description = "The Google Books API allows clients to access the Google Books repository.",
  discoveryVersion = "v1",
  documentationLink = "https://code.google.com/apis/books/docs/v1/getting_started.html",
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "books:v1",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://books.mtls.googleapis.com/",
  name = "books",
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
    bookshelves = {
      methods = {
        get = {
          description = "Retrieves metadata for a specific bookshelf for the specified user.",
          flatPath = "books/v1/users/{userId}/bookshelves/{shelf}",
          httpMethod = "GET",
          id = "books.bookshelves.get",
          parameterOrder = {
            "userId",
            "shelf",
          },
          parameters = {
            shelf = {
              description = "ID of bookshelf to retrieve.",
              location = "path",
              required = true,
              type = "string",
            },
            source = {
              description = "String to identify the originator of this request.",
              location = "query",
              type = "string",
            },
            userId = {
              description = "ID of user for whom to retrieve bookshelves.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "books/v1/users/{userId}/bookshelves/{shelf}",
          response = {
            ["$ref"] = "Bookshelf",
          },
          scopes = {
            "https://www.googleapis.com/auth/books",
          },
        },
        list = {
          description = "Retrieves a list of public bookshelves for the specified user.",
          flatPath = "books/v1/users/{userId}/bookshelves",
          httpMethod = "GET",
          id = "books.bookshelves.list",
          parameterOrder = {
            "userId",
          },
          parameters = {
            source = {
              description = "String to identify the originator of this request.",
              location = "query",
              type = "string",
            },
            userId = {
              description = "ID of user for whom to retrieve bookshelves.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "books/v1/users/{userId}/bookshelves",
          response = {
            ["$ref"] = "Bookshelves",
          },
          scopes = {
            "https://www.googleapis.com/auth/books",
          },
        },
      },
      resources = {
        volumes = {
          methods = {
            list = {
              description = "Retrieves volumes in a specific bookshelf for the specified user.",
              flatPath = "books/v1/users/{userId}/bookshelves/{shelf}/volumes",
              httpMethod = "GET",
              id = "books.bookshelves.volumes.list",
              parameterOrder = {
                "userId",
                "shelf",
              },
              parameters = {
                maxResults = {
                  description = "Maximum number of results to return",
                  format = "uint32",
                  location = "query",
                  minimum = "0",
                  type = "integer",
                },
                shelf = {
                  description = "ID of bookshelf to retrieve volumes.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                showPreorders = {
                  description = "Set to true to show pre-ordered books. Defaults to false.",
                  location = "query",
                  type = "boolean",
                },
                source = {
                  description = "String to identify the originator of this request.",
                  location = "query",
                  type = "string",
                },
                startIndex = {
                  description = "Index of the first element to return (starts at 0)",
                  format = "uint32",
                  location = "query",
                  minimum = "0",
                  type = "integer",
                },
                userId = {
                  description = "ID of user for whom to retrieve bookshelf volumes.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "books/v1/users/{userId}/bookshelves/{shelf}/volumes",
              response = {
                ["$ref"] = "Volumes",
              },
              scopes = {
                "https://www.googleapis.com/auth/books",
              },
            },
          },
        },
      },
    },
    cloudloading = {
      methods = {
        addBook = {
          description = "Add a user-upload volume and triggers processing.",
          flatPath = "books/v1/cloudloading/addBook",
          httpMethod = "POST",
          id = "books.cloudloading.addBook",
          parameterOrder = {},
          parameters = {
            drive_document_id = {
              description = "A drive document id. The upload_client_token must not be set.",
              location = "query",
              type = "string",
            },
            mime_type = {
              description = "The document MIME type. It can be set only if the drive_document_id is set.",
              location = "query",
              type = "string",
            },
            name = {
              description = "The document name. It can be set only if the drive_document_id is set.",
              location = "query",
              type = "string",
            },
            upload_client_token = {
              description = "Scotty upload token.",
              location = "query",
              type = "string",
            },
          },
          path = "books/v1/cloudloading/addBook",
          response = {
            ["$ref"] = "BooksCloudloadingResource",
          },
          scopes = {
            "https://www.googleapis.com/auth/books",
          },
        },
        deleteBook = {
          description = "Remove the book and its contents",
          flatPath = "books/v1/cloudloading/deleteBook",
          httpMethod = "POST",
          id = "books.cloudloading.deleteBook",
          parameterOrder = {
            "volumeId",
          },
          parameters = {
            volumeId = {
              description = "The id of the book to be removed.",
              location = "query",
              required = true,
              type = "string",
            },
          },
          path = "books/v1/cloudloading/deleteBook",
          response = {
            ["$ref"] = "Empty",
          },
          scopes = {
            "https://www.googleapis.com/auth/books",
          },
        },
        updateBook = {
          description = "Updates a user-upload volume.",
          flatPath = "books/v1/cloudloading/updateBook",
          httpMethod = "POST",
          id = "books.cloudloading.updateBook",
          parameterOrder = {},
          parameters = {},
          path = "books/v1/cloudloading/updateBook",
          request = {
            ["$ref"] = "BooksCloudloadingResource",
          },
          response = {
            ["$ref"] = "BooksCloudloadingResource",
          },
          scopes = {
            "https://www.googleapis.com/auth/books",
          },
        },
      },
    },
    dictionary = {
      methods = {
        listOfflineMetadata = {
          description = "Returns a list of offline dictionary metadata available",
          flatPath = "books/v1/dictionary/listOfflineMetadata",
          httpMethod = "GET",
          id = "books.dictionary.listOfflineMetadata",
          parameterOrder = {
            "cpksver",
          },
          parameters = {
            cpksver = {
              description = "The device/version ID from which to request the data.",
              location = "query",
              required = true,
              type = "string",
            },
          },
          path = "books/v1/dictionary/listOfflineMetadata",
          response = {
            ["$ref"] = "Metadata",
          },
          scopes = {
            "https://www.googleapis.com/auth/books",
          },
        },
      },
    },
    familysharing = {
      methods = {
        getFamilyInfo = {
          description = "Gets information regarding the family that the user is part of.",
          flatPath = "books/v1/familysharing/getFamilyInfo",
          httpMethod = "GET",
          id = "books.familysharing.getFamilyInfo",
          parameterOrder = {},
          parameters = {
            source = {
              description = "String to identify the originator of this request.",
              location = "query",
              type = "string",
            },
          },
          path = "books/v1/familysharing/getFamilyInfo",
          response = {
            ["$ref"] = "FamilyInfo",
          },
          scopes = {
            "https://www.googleapis.com/auth/books",
          },
        },
        share = {
          description = "Initiates sharing of the content with the user's family. Empty response indicates success.",
          flatPath = "books/v1/familysharing/share",
          httpMethod = "POST",
          id = "books.familysharing.share",
          parameterOrder = {},
          parameters = {
            docId = {
              description = "The docid to share.",
              location = "query",
              type = "string",
            },
            source = {
              description = "String to identify the originator of this request.",
              location = "query",
              type = "string",
            },
            volumeId = {
              description = "The volume to share.",
              location = "query",
              type = "string",
            },
          },
          path = "books/v1/familysharing/share",
          response = {
            ["$ref"] = "Empty",
          },
          scopes = {
            "https://www.googleapis.com/auth/books",
          },
        },
        unshare = {
          description = "Initiates revoking content that has already been shared with the user's family. Empty response indicates success.",
          flatPath = "books/v1/familysharing/unshare",
          httpMethod = "POST",
          id = "books.familysharing.unshare",
          parameterOrder = {},
          parameters = {
            docId = {
              description = "The docid to unshare.",
              location = "query",
              type = "string",
            },
            source = {
              description = "String to identify the originator of this request.",
              location = "query",
              type = "string",
            },
            volumeId = {
              description = "The volume to unshare.",
              location = "query",
              type = "string",
            },
          },
          path = "books/v1/familysharing/unshare",
          response = {
            ["$ref"] = "Empty",
          },
          scopes = {
            "https://www.googleapis.com/auth/books",
          },
        },
      },
    },
    layers = {
      methods = {
        get = {
          description = "Gets the layer summary for a volume.",
          flatPath = "books/v1/volumes/{volumeId}/layersummary/{summaryId}",
          httpMethod = "GET",
          id = "books.layers.get",
          parameterOrder = {
            "volumeId",
            "summaryId",
          },
          parameters = {
            contentVersion = {
              description = "The content version for the requested volume.",
              location = "query",
              type = "string",
            },
            source = {
              description = "String to identify the originator of this request.",
              location = "query",
              type = "string",
            },
            summaryId = {
              description = "The ID for the layer to get the summary for.",
              location = "path",
              required = true,
              type = "string",
            },
            volumeId = {
              description = "The volume to retrieve layers for.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "books/v1/volumes/{volumeId}/layersummary/{summaryId}",
          response = {
            ["$ref"] = "Layersummary",
          },
          scopes = {
            "https://www.googleapis.com/auth/books",
          },
        },
        list = {
          description = "List the layer summaries for a volume.",
          flatPath = "books/v1/volumes/{volumeId}/layersummary",
          httpMethod = "GET",
          id = "books.layers.list",
          parameterOrder = {
            "volumeId",
          },
          parameters = {
            contentVersion = {
              description = "The content version for the requested volume.",
              location = "query",
              type = "string",
            },
            maxResults = {
              description = "Maximum number of results to return",
              format = "uint32",
              location = "query",
              maximum = "200",
              minimum = "0",
              type = "integer",
            },
            pageToken = {
              description = "The value of the nextToken from the previous page.",
              location = "query",
              type = "string",
            },
            source = {
              description = "String to identify the originator of this request.",
              location = "query",
              type = "string",
            },
            volumeId = {
              description = "The volume to retrieve layers for.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "books/v1/volumes/{volumeId}/layersummary",
          response = {
            ["$ref"] = "Layersummaries",
          },
          scopes = {
            "https://www.googleapis.com/auth/books",
          },
        },
      },
      resources = {
        annotationData = {
          methods = {
            get = {
              description = "Gets the annotation data.",
              flatPath = "books/v1/volumes/{volumeId}/layers/{layerId}/data/{annotationDataId}",
              httpMethod = "GET",
              id = "books.layers.annotationData.get",
              parameterOrder = {
                "volumeId",
                "layerId",
                "annotationDataId",
                "contentVersion",
              },
              parameters = {
                allowWebDefinitions = {
                  description = "For the dictionary layer. Whether or not to allow web definitions.",
                  location = "query",
                  type = "boolean",
                },
                annotationDataId = {
                  description = "The ID of the annotation data to retrieve.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                contentVersion = {
                  description = "The content version for the volume you are trying to retrieve.",
                  location = "query",
                  required = true,
                  type = "string",
                },
                h = {
                  description = "The requested pixel height for any images. If height is provided width must also be provided.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                layerId = {
                  description = "The ID for the layer to get the annotations.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                locale = {
                  description = "The locale information for the data. ISO-639-1 language and ISO-3166-1 country code. Ex: 'en_US'.",
                  location = "query",
                  type = "string",
                },
                scale = {
                  description = "The requested scale for the image.",
                  format = "int32",
                  location = "query",
                  minimum = "0",
                  type = "integer",
                },
                source = {
                  description = "String to identify the originator of this request.",
                  location = "query",
                  type = "string",
                },
                volumeId = {
                  description = "The volume to retrieve annotations for.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                w = {
                  description = "The requested pixel width for any images. If width is provided height must also be provided.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
              },
              path = "books/v1/volumes/{volumeId}/layers/{layerId}/data/{annotationDataId}",
              response = {
                ["$ref"] = "DictionaryAnnotationdata",
              },
              scopes = {
                "https://www.googleapis.com/auth/books",
              },
            },
            list = {
              description = "Gets the annotation data for a volume and layer.",
              flatPath = "books/v1/volumes/{volumeId}/layers/{layerId}/data",
              httpMethod = "GET",
              id = "books.layers.annotationData.list",
              parameterOrder = {
                "volumeId",
                "layerId",
                "contentVersion",
              },
              parameters = {
                annotationDataId = {
                  description = "The list of Annotation Data Ids to retrieve. Pagination is ignored if this is set.",
                  location = "query",
                  repeated = true,
                  type = "string",
                },
                contentVersion = {
                  description = "The content version for the requested volume.",
                  location = "query",
                  required = true,
                  type = "string",
                },
                h = {
                  description = "The requested pixel height for any images. If height is provided width must also be provided.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                layerId = {
                  description = "The ID for the layer to get the annotation data.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                locale = {
                  description = "The locale information for the data. ISO-639-1 language and ISO-3166-1 country code. Ex: 'en_US'.",
                  location = "query",
                  type = "string",
                },
                maxResults = {
                  description = "Maximum number of results to return",
                  format = "uint32",
                  location = "query",
                  maximum = "200",
                  minimum = "0",
                  type = "integer",
                },
                pageToken = {
                  description = "The value of the nextToken from the previous page.",
                  location = "query",
                  type = "string",
                },
                scale = {
                  description = "The requested scale for the image.",
                  format = "int32",
                  location = "query",
                  minimum = "0",
                  type = "integer",
                },
                source = {
                  description = "String to identify the originator of this request.",
                  location = "query",
                  type = "string",
                },
                updatedMax = {
                  description = "RFC 3339 timestamp to restrict to items updated prior to this timestamp (exclusive).",
                  location = "query",
                  type = "string",
                },
                updatedMin = {
                  description = "RFC 3339 timestamp to restrict to items updated since this timestamp (inclusive).",
                  location = "query",
                  type = "string",
                },
                volumeId = {
                  description = "The volume to retrieve annotation data for.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                w = {
                  description = "The requested pixel width for any images. If width is provided height must also be provided.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
              },
              path = "books/v1/volumes/{volumeId}/layers/{layerId}/data",
              response = {
                ["$ref"] = "Annotationsdata",
              },
              scopes = {
                "https://www.googleapis.com/auth/books",
              },
            },
          },
        },
        volumeAnnotations = {
          methods = {
            get = {
              description = "Gets the volume annotation.",
              flatPath = "books/v1/volumes/{volumeId}/layers/{layerId}/annotations/{annotationId}",
              httpMethod = "GET",
              id = "books.layers.volumeAnnotations.get",
              parameterOrder = {
                "volumeId",
                "layerId",
                "annotationId",
              },
              parameters = {
                annotationId = {
                  description = "The ID of the volume annotation to retrieve.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                layerId = {
                  description = "The ID for the layer to get the annotations.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                locale = {
                  description = "The locale information for the data. ISO-639-1 language and ISO-3166-1 country code. Ex: 'en_US'.",
                  location = "query",
                  type = "string",
                },
                source = {
                  description = "String to identify the originator of this request.",
                  location = "query",
                  type = "string",
                },
                volumeId = {
                  description = "The volume to retrieve annotations for.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "books/v1/volumes/{volumeId}/layers/{layerId}/annotations/{annotationId}",
              response = {
                ["$ref"] = "Volumeannotation",
              },
              scopes = {
                "https://www.googleapis.com/auth/books",
              },
            },
            list = {
              description = "Gets the volume annotations for a volume and layer.",
              flatPath = "books/v1/volumes/{volumeId}/layers/{layerId}",
              httpMethod = "GET",
              id = "books.layers.volumeAnnotations.list",
              parameterOrder = {
                "volumeId",
                "layerId",
                "contentVersion",
              },
              parameters = {
                contentVersion = {
                  description = "The content version for the requested volume.",
                  location = "query",
                  required = true,
                  type = "string",
                },
                endOffset = {
                  description = "The end offset to end retrieving data from.",
                  location = "query",
                  type = "string",
                },
                endPosition = {
                  description = "The end position to end retrieving data from.",
                  location = "query",
                  type = "string",
                },
                layerId = {
                  description = "The ID for the layer to get the annotations.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                locale = {
                  description = "The locale information for the data. ISO-639-1 language and ISO-3166-1 country code. Ex: 'en_US'.",
                  location = "query",
                  type = "string",
                },
                maxResults = {
                  description = "Maximum number of results to return",
                  format = "uint32",
                  location = "query",
                  maximum = "200",
                  minimum = "0",
                  type = "integer",
                },
                pageToken = {
                  description = "The value of the nextToken from the previous page.",
                  location = "query",
                  type = "string",
                },
                showDeleted = {
                  description = "Set to true to return deleted annotations. updatedMin must be in the request to use this. Defaults to false.",
                  location = "query",
                  type = "boolean",
                },
                source = {
                  description = "String to identify the originator of this request.",
                  location = "query",
                  type = "string",
                },
                startOffset = {
                  description = "The start offset to start retrieving data from.",
                  location = "query",
                  type = "string",
                },
                startPosition = {
                  description = "The start position to start retrieving data from.",
                  location = "query",
                  type = "string",
                },
                updatedMax = {
                  description = "RFC 3339 timestamp to restrict to items updated prior to this timestamp (exclusive).",
                  location = "query",
                  type = "string",
                },
                updatedMin = {
                  description = "RFC 3339 timestamp to restrict to items updated since this timestamp (inclusive).",
                  location = "query",
                  type = "string",
                },
                volumeAnnotationsVersion = {
                  description = "The version of the volume annotations that you are requesting.",
                  location = "query",
                  type = "string",
                },
                volumeId = {
                  description = "The volume to retrieve annotations for.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "books/v1/volumes/{volumeId}/layers/{layerId}",
              response = {
                ["$ref"] = "Volumeannotations",
              },
              scopes = {
                "https://www.googleapis.com/auth/books",
              },
            },
          },
        },
      },
    },
    myconfig = {
      methods = {
        getUserSettings = {
          description = "Gets the current settings for the user.",
          flatPath = "books/v1/myconfig/getUserSettings",
          httpMethod = "GET",
          id = "books.myconfig.getUserSettings",
          parameterOrder = {},
          parameters = {
            country = {
              description = "Unused. Added only to workaround TEX mandatory request template requirement",
              location = "query",
              type = "string",
            },
          },
          path = "books/v1/myconfig/getUserSettings",
          response = {
            ["$ref"] = "Usersettings",
          },
          scopes = {
            "https://www.googleapis.com/auth/books",
          },
        },
        releaseDownloadAccess = {
          description = "Release downloaded content access restriction.",
          flatPath = "books/v1/myconfig/releaseDownloadAccess",
          httpMethod = "POST",
          id = "books.myconfig.releaseDownloadAccess",
          parameterOrder = {
            "cpksver",
            "volumeIds",
          },
          parameters = {
            cpksver = {
              description = "The device/version ID from which to release the restriction.",
              location = "query",
              required = true,
              type = "string",
            },
            locale = {
              description = "ISO-639-1, ISO-3166-1 codes for message localization, i.e. en_US.",
              location = "query",
              type = "string",
            },
            source = {
              description = "String to identify the originator of this request.",
              location = "query",
              type = "string",
            },
            volumeIds = {
              description = "The volume(s) to release restrictions for.",
              location = "query",
              repeated = true,
              required = true,
              type = "string",
            },
          },
          path = "books/v1/myconfig/releaseDownloadAccess",
          response = {
            ["$ref"] = "DownloadAccesses",
          },
          scopes = {
            "https://www.googleapis.com/auth/books",
          },
        },
        requestAccess = {
          description = "Request concurrent and download access restrictions.",
          flatPath = "books/v1/myconfig/requestAccess",
          httpMethod = "POST",
          id = "books.myconfig.requestAccess",
          parameterOrder = {
            "cpksver",
            "nonce",
            "source",
            "volumeId",
          },
          parameters = {
            cpksver = {
              description = "The device/version ID from which to request the restrictions.",
              location = "query",
              required = true,
              type = "string",
            },
            licenseTypes = {
              description = "The type of access license to request. If not specified, the default is BOTH.",
              enum = {
                "LICENSE_TYPES_UNDEFINED",
                "BOTH",
                "CONCURRENT",
                "DOWNLOAD",
              },
              enumDescriptions = {
                "",
                "Both concurrent and download licenses.",
                "Concurrent access license.",
                "Offline download access license.",
              },
              location = "query",
              type = "string",
            },
            locale = {
              description = "ISO-639-1, ISO-3166-1 codes for message localization, i.e. en_US.",
              location = "query",
              type = "string",
            },
            nonce = {
              description = "The client nonce value.",
              location = "query",
              required = true,
              type = "string",
            },
            source = {
              description = "String to identify the originator of this request.",
              location = "query",
              required = true,
              type = "string",
            },
            volumeId = {
              description = "The volume to request concurrent/download restrictions for.",
              location = "query",
              required = true,
              type = "string",
            },
          },
          path = "books/v1/myconfig/requestAccess",
          response = {
            ["$ref"] = "RequestAccessData",
          },
          scopes = {
            "https://www.googleapis.com/auth/books",
          },
        },
        syncVolumeLicenses = {
          description = "Request downloaded content access for specified volumes on the My eBooks shelf.",
          flatPath = "books/v1/myconfig/syncVolumeLicenses",
          httpMethod = "POST",
          id = "books.myconfig.syncVolumeLicenses",
          parameterOrder = {
            "cpksver",
            "nonce",
            "source",
          },
          parameters = {
            cpksver = {
              description = "The device/version ID from which to release the restriction.",
              location = "query",
              required = true,
              type = "string",
            },
            features = {
              description = "List of features supported by the client, i.e., 'RENTALS'",
              enum = {
                "FEATURES_UNDEFINED",
                "RENTALS",
              },
              enumDescriptions = {
                "",
                "Client supports rentals.",
              },
              location = "query",
              repeated = true,
              type = "string",
            },
            includeNonComicsSeries = {
              description = "Set to true to include non-comics series. Defaults to false.",
              location = "query",
              type = "boolean",
            },
            locale = {
              description = "ISO-639-1, ISO-3166-1 codes for message localization, i.e. en_US.",
              location = "query",
              type = "string",
            },
            nonce = {
              description = "The client nonce value.",
              location = "query",
              required = true,
              type = "string",
            },
            showPreorders = {
              description = "Set to true to show pre-ordered books. Defaults to false.",
              location = "query",
              type = "boolean",
            },
            source = {
              description = "String to identify the originator of this request.",
              location = "query",
              required = true,
              type = "string",
            },
            volumeIds = {
              description = "The volume(s) to request download restrictions for.",
              location = "query",
              repeated = true,
              type = "string",
            },
          },
          path = "books/v1/myconfig/syncVolumeLicenses",
          response = {
            ["$ref"] = "Volumes",
          },
          scopes = {
            "https://www.googleapis.com/auth/books",
          },
        },
        updateUserSettings = {
          description = "Sets the settings for the user. If a sub-object is specified, it will overwrite the existing sub-object stored in the server. Unspecified sub-objects will retain the existing value.",
          flatPath = "books/v1/myconfig/updateUserSettings",
          httpMethod = "POST",
          id = "books.myconfig.updateUserSettings",
          parameterOrder = {},
          parameters = {},
          path = "books/v1/myconfig/updateUserSettings",
          request = {
            ["$ref"] = "Usersettings",
          },
          response = {
            ["$ref"] = "Usersettings",
          },
          scopes = {
            "https://www.googleapis.com/auth/books",
          },
        },
      },
    },
    mylibrary = {
      resources = {
        annotations = {
          methods = {
            delete = {
              description = "Deletes an annotation.",
              flatPath = "books/v1/mylibrary/annotations/{annotationId}",
              httpMethod = "DELETE",
              id = "books.mylibrary.annotations.delete",
              parameterOrder = {
                "annotationId",
              },
              parameters = {
                annotationId = {
                  description = "The ID for the annotation to delete.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                source = {
                  description = "String to identify the originator of this request.",
                  location = "query",
                  type = "string",
                },
              },
              path = "books/v1/mylibrary/annotations/{annotationId}",
              response = {
                ["$ref"] = "Empty",
              },
              scopes = {
                "https://www.googleapis.com/auth/books",
              },
            },
            insert = {
              description = "Inserts a new annotation.",
              flatPath = "books/v1/mylibrary/annotations",
              httpMethod = "POST",
              id = "books.mylibrary.annotations.insert",
              parameterOrder = {},
              parameters = {
                annotationId = {
                  description = "The ID for the annotation to insert.",
                  location = "query",
                  type = "string",
                },
                country = {
                  description = "ISO-3166-1 code to override the IP-based location.",
                  location = "query",
                  type = "string",
                },
                showOnlySummaryInResponse = {
                  description = "Requests that only the summary of the specified layer be provided in the response.",
                  location = "query",
                  type = "boolean",
                },
                source = {
                  description = "String to identify the originator of this request.",
                  location = "query",
                  type = "string",
                },
              },
              path = "books/v1/mylibrary/annotations",
              request = {
                ["$ref"] = "Annotation",
              },
              response = {
                ["$ref"] = "Annotation",
              },
              scopes = {
                "https://www.googleapis.com/auth/books",
              },
            },
            list = {
              description = "Retrieves a list of annotations, possibly filtered.",
              flatPath = "books/v1/mylibrary/annotations",
              httpMethod = "GET",
              id = "books.mylibrary.annotations.list",
              parameterOrder = {},
              parameters = {
                contentVersion = {
                  description = "The content version for the requested volume.",
                  location = "query",
                  type = "string",
                },
                layerId = {
                  description = "The layer ID to limit annotation by.",
                  location = "query",
                  type = "string",
                },
                layerIds = {
                  description = "The layer ID(s) to limit annotation by.",
                  location = "query",
                  repeated = true,
                  type = "string",
                },
                maxResults = {
                  description = "Maximum number of results to return",
                  format = "uint32",
                  location = "query",
                  maximum = "40",
                  minimum = "0",
                  type = "integer",
                },
                pageToken = {
                  description = "The value of the nextToken from the previous page.",
                  location = "query",
                  type = "string",
                },
                showDeleted = {
                  description = "Set to true to return deleted annotations. updatedMin must be in the request to use this. Defaults to false.",
                  location = "query",
                  type = "boolean",
                },
                source = {
                  description = "String to identify the originator of this request.",
                  location = "query",
                  type = "string",
                },
                updatedMax = {
                  description = "RFC 3339 timestamp to restrict to items updated prior to this timestamp (exclusive).",
                  location = "query",
                  type = "string",
                },
                updatedMin = {
                  description = "RFC 3339 timestamp to restrict to items updated since this timestamp (inclusive).",
                  location = "query",
                  type = "string",
                },
                volumeId = {
                  description = "The volume to restrict annotations to.",
                  location = "query",
                  type = "string",
                },
              },
              path = "books/v1/mylibrary/annotations",
              response = {
                ["$ref"] = "Annotations",
              },
              scopes = {
                "https://www.googleapis.com/auth/books",
              },
            },
            summary = {
              description = "Gets the summary of specified layers.",
              flatPath = "books/v1/mylibrary/annotations/summary",
              httpMethod = "POST",
              id = "books.mylibrary.annotations.summary",
              parameterOrder = {
                "layerIds",
                "volumeId",
              },
              parameters = {
                layerIds = {
                  description = "Array of layer IDs to get the summary for.",
                  location = "query",
                  repeated = true,
                  required = true,
                  type = "string",
                },
                volumeId = {
                  description = "Volume id to get the summary for.",
                  location = "query",
                  required = true,
                  type = "string",
                },
              },
              path = "books/v1/mylibrary/annotations/summary",
              response = {
                ["$ref"] = "AnnotationsSummary",
              },
              scopes = {
                "https://www.googleapis.com/auth/books",
              },
            },
            update = {
              description = "Updates an existing annotation.",
              flatPath = "books/v1/mylibrary/annotations/{annotationId}",
              httpMethod = "PUT",
              id = "books.mylibrary.annotations.update",
              parameterOrder = {
                "annotationId",
              },
              parameters = {
                annotationId = {
                  description = "The ID for the annotation to update.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                source = {
                  description = "String to identify the originator of this request.",
                  location = "query",
                  type = "string",
                },
              },
              path = "books/v1/mylibrary/annotations/{annotationId}",
              request = {
                ["$ref"] = "Annotation",
              },
              response = {
                ["$ref"] = "Annotation",
              },
              scopes = {
                "https://www.googleapis.com/auth/books",
              },
            },
          },
        },
        bookshelves = {
          methods = {
            addVolume = {
              description = "Adds a volume to a bookshelf.",
              flatPath = "books/v1/mylibrary/bookshelves/{shelf}/addVolume",
              httpMethod = "POST",
              id = "books.mylibrary.bookshelves.addVolume",
              parameterOrder = {
                "shelf",
                "volumeId",
              },
              parameters = {
                reason = {
                  description = "The reason for which the book is added to the library.",
                  enum = {
                    "REASON_UNDEFINED",
                    "IOS_PREX",
                    "IOS_SEARCH",
                    "ONBOARDING",
                  },
                  enumDescriptions = {
                    "",
                    "Volumes added from the PREX flow on iOS.",
                    "Volumes added from the Search flow on iOS.",
                    "Volumes added from the Onboarding flow.",
                  },
                  location = "query",
                  type = "string",
                },
                shelf = {
                  description = "ID of bookshelf to which to add a volume.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                source = {
                  description = "String to identify the originator of this request.",
                  location = "query",
                  type = "string",
                },
                volumeId = {
                  description = "ID of volume to add.",
                  location = "query",
                  required = true,
                  type = "string",
                },
              },
              path = "books/v1/mylibrary/bookshelves/{shelf}/addVolume",
              response = {
                ["$ref"] = "Empty",
              },
              scopes = {
                "https://www.googleapis.com/auth/books",
              },
            },
            clearVolumes = {
              description = "Clears all volumes from a bookshelf.",
              flatPath = "books/v1/mylibrary/bookshelves/{shelf}/clearVolumes",
              httpMethod = "POST",
              id = "books.mylibrary.bookshelves.clearVolumes",
              parameterOrder = {
                "shelf",
              },
              parameters = {
                shelf = {
                  description = "ID of bookshelf from which to remove a volume.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                source = {
                  description = "String to identify the originator of this request.",
                  location = "query",
                  type = "string",
                },
              },
              path = "books/v1/mylibrary/bookshelves/{shelf}/clearVolumes",
              response = {
                ["$ref"] = "Empty",
              },
              scopes = {
                "https://www.googleapis.com/auth/books",
              },
            },
            get = {
              description = "Retrieves metadata for a specific bookshelf belonging to the authenticated user.",
              flatPath = "books/v1/mylibrary/bookshelves/{shelf}",
              httpMethod = "GET",
              id = "books.mylibrary.bookshelves.get",
              parameterOrder = {
                "shelf",
              },
              parameters = {
                shelf = {
                  description = "ID of bookshelf to retrieve.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                source = {
                  description = "String to identify the originator of this request.",
                  location = "query",
                  type = "string",
                },
              },
              path = "books/v1/mylibrary/bookshelves/{shelf}",
              response = {
                ["$ref"] = "Bookshelf",
              },
              scopes = {
                "https://www.googleapis.com/auth/books",
              },
            },
            list = {
              description = "Retrieves a list of bookshelves belonging to the authenticated user.",
              flatPath = "books/v1/mylibrary/bookshelves",
              httpMethod = "GET",
              id = "books.mylibrary.bookshelves.list",
              parameterOrder = {},
              parameters = {
                source = {
                  description = "String to identify the originator of this request.",
                  location = "query",
                  type = "string",
                },
              },
              path = "books/v1/mylibrary/bookshelves",
              response = {
                ["$ref"] = "Bookshelves",
              },
              scopes = {
                "https://www.googleapis.com/auth/books",
              },
            },
            moveVolume = {
              description = "Moves a volume within a bookshelf.",
              flatPath = "books/v1/mylibrary/bookshelves/{shelf}/moveVolume",
              httpMethod = "POST",
              id = "books.mylibrary.bookshelves.moveVolume",
              parameterOrder = {
                "shelf",
                "volumeId",
                "volumePosition",
              },
              parameters = {
                shelf = {
                  description = "ID of bookshelf with the volume.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                source = {
                  description = "String to identify the originator of this request.",
                  location = "query",
                  type = "string",
                },
                volumeId = {
                  description = "ID of volume to move.",
                  location = "query",
                  required = true,
                  type = "string",
                },
                volumePosition = {
                  description = "Position on shelf to move the item (0 puts the item before the current first item, 1 puts it between the first and the second and so on.)",
                  format = "int32",
                  location = "query",
                  required = true,
                  type = "integer",
                },
              },
              path = "books/v1/mylibrary/bookshelves/{shelf}/moveVolume",
              response = {
                ["$ref"] = "Empty",
              },
              scopes = {
                "https://www.googleapis.com/auth/books",
              },
            },
            removeVolume = {
              description = "Removes a volume from a bookshelf.",
              flatPath = "books/v1/mylibrary/bookshelves/{shelf}/removeVolume",
              httpMethod = "POST",
              id = "books.mylibrary.bookshelves.removeVolume",
              parameterOrder = {
                "shelf",
                "volumeId",
              },
              parameters = {
                reason = {
                  description = "The reason for which the book is removed from the library.",
                  enum = {
                    "REASON_UNDEFINED",
                    "ONBOARDING",
                  },
                  enumDescriptions = {
                    "",
                    "Samples removed from the Onboarding flow.",
                  },
                  location = "query",
                  type = "string",
                },
                shelf = {
                  description = "ID of bookshelf from which to remove a volume.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                source = {
                  description = "String to identify the originator of this request.",
                  location = "query",
                  type = "string",
                },
                volumeId = {
                  description = "ID of volume to remove.",
                  location = "query",
                  required = true,
                  type = "string",
                },
              },
              path = "books/v1/mylibrary/bookshelves/{shelf}/removeVolume",
              response = {
                ["$ref"] = "Empty",
              },
              scopes = {
                "https://www.googleapis.com/auth/books",
              },
            },
          },
          resources = {
            volumes = {
              methods = {
                list = {
                  description = "Gets volume information for volumes on a bookshelf.",
                  flatPath = "books/v1/mylibrary/bookshelves/{shelf}/volumes",
                  httpMethod = "GET",
                  id = "books.mylibrary.bookshelves.volumes.list",
                  parameterOrder = {
                    "shelf",
                  },
                  parameters = {
                    country = {
                      description = "ISO-3166-1 code to override the IP-based location.",
                      location = "query",
                      type = "string",
                    },
                    maxResults = {
                      description = "Maximum number of results to return",
                      format = "uint32",
                      location = "query",
                      minimum = "0",
                      type = "integer",
                    },
                    projection = {
                      description = "Restrict information returned to a set of selected fields.",
                      enum = {
                        "PROJECTION_UNDEFINED",
                        "FULL",
                        "LITE",
                      },
                      enumDescriptions = {
                        "",
                        "Includes all volume data.",
                        "Includes a subset of fields in volumeInfo and accessInfo.",
                      },
                      location = "query",
                      type = "string",
                    },
                    q = {
                      description = "Full-text search query string in this bookshelf.",
                      location = "query",
                      type = "string",
                    },
                    shelf = {
                      description = "The bookshelf ID or name retrieve volumes for.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    showPreorders = {
                      description = "Set to true to show pre-ordered books. Defaults to false.",
                      location = "query",
                      type = "boolean",
                    },
                    source = {
                      description = "String to identify the originator of this request.",
                      location = "query",
                      type = "string",
                    },
                    startIndex = {
                      description = "Index of the first element to return (starts at 0)",
                      format = "uint32",
                      location = "query",
                      minimum = "0",
                      type = "integer",
                    },
                  },
                  path = "books/v1/mylibrary/bookshelves/{shelf}/volumes",
                  response = {
                    ["$ref"] = "Volumes",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/books",
                  },
                },
              },
            },
          },
        },
        readingpositions = {
          methods = {
            get = {
              description = "Retrieves my reading position information for a volume.",
              flatPath = "books/v1/mylibrary/readingpositions/{volumeId}",
              httpMethod = "GET",
              id = "books.mylibrary.readingpositions.get",
              parameterOrder = {
                "volumeId",
              },
              parameters = {
                contentVersion = {
                  description = "Volume content version for which this reading position is requested.",
                  location = "query",
                  type = "string",
                },
                source = {
                  description = "String to identify the originator of this request.",
                  location = "query",
                  type = "string",
                },
                volumeId = {
                  description = "ID of volume for which to retrieve a reading position.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "books/v1/mylibrary/readingpositions/{volumeId}",
              response = {
                ["$ref"] = "ReadingPosition",
              },
              scopes = {
                "https://www.googleapis.com/auth/books",
              },
            },
            setPosition = {
              description = "Sets my reading position information for a volume.",
              flatPath = "books/v1/mylibrary/readingpositions/{volumeId}/setPosition",
              httpMethod = "POST",
              id = "books.mylibrary.readingpositions.setPosition",
              parameterOrder = {
                "volumeId",
                "position",
                "timestamp",
              },
              parameters = {
                action = {
                  description = "Action that caused this reading position to be set.",
                  enum = {
                    "ACTION_UNDEFINED",
                    "bookmark",
                    "chapter",
                    "next-page",
                    "prev-page",
                    "scroll",
                    "search",
                  },
                  enumDescriptions = {
                    "",
                    "User chose bookmark within volume.",
                    "User selected chapter from list.",
                    "Next page event.",
                    "Previous page event.",
                    "User navigated to page.",
                    "User chose search results within volume.",
                  },
                  location = "query",
                  type = "string",
                },
                contentVersion = {
                  description = "Volume content version for which this reading position applies.",
                  location = "query",
                  type = "string",
                },
                deviceCookie = {
                  description = "Random persistent device cookie optional on set position.",
                  location = "query",
                  type = "string",
                },
                position = {
                  description = "Position string for the new volume reading position.",
                  location = "query",
                  required = true,
                  type = "string",
                },
                source = {
                  description = "String to identify the originator of this request.",
                  location = "query",
                  type = "string",
                },
                timestamp = {
                  description = "RFC 3339 UTC format timestamp associated with this reading position.",
                  location = "query",
                  required = true,
                  type = "string",
                },
                volumeId = {
                  description = "ID of volume for which to update the reading position.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "books/v1/mylibrary/readingpositions/{volumeId}/setPosition",
              response = {
                ["$ref"] = "Empty",
              },
              scopes = {
                "https://www.googleapis.com/auth/books",
              },
            },
          },
        },
      },
    },
    notification = {
      methods = {
        get = {
          description = "Returns notification details for a given notification id.",
          flatPath = "books/v1/notification/get",
          httpMethod = "GET",
          id = "books.notification.get",
          parameterOrder = {
            "notification_id",
          },
          parameters = {
            locale = {
              description = "ISO-639-1 language and ISO-3166-1 country code. Ex: 'en_US'. Used for generating notification title and body.",
              location = "query",
              type = "string",
            },
            notification_id = {
              description = "String to identify the notification.",
              location = "query",
              required = true,
              type = "string",
            },
            source = {
              description = "String to identify the originator of this request.",
              location = "query",
              type = "string",
            },
          },
          path = "books/v1/notification/get",
          response = {
            ["$ref"] = "Notification",
          },
          scopes = {
            "https://www.googleapis.com/auth/books",
          },
        },
      },
    },
    onboarding = {
      methods = {
        listCategories = {
          description = "List categories for onboarding experience.",
          flatPath = "books/v1/onboarding/listCategories",
          httpMethod = "GET",
          id = "books.onboarding.listCategories",
          parameterOrder = {},
          parameters = {
            locale = {
              description = "ISO-639-1 language and ISO-3166-1 country code. Default is en-US if unset.",
              location = "query",
              type = "string",
            },
          },
          path = "books/v1/onboarding/listCategories",
          response = {
            ["$ref"] = "Category",
          },
          scopes = {
            "https://www.googleapis.com/auth/books",
          },
        },
        listCategoryVolumes = {
          description = "List available volumes under categories for onboarding experience.",
          flatPath = "books/v1/onboarding/listCategoryVolumes",
          httpMethod = "GET",
          id = "books.onboarding.listCategoryVolumes",
          parameterOrder = {},
          parameters = {
            categoryId = {
              description = "List of category ids requested.",
              location = "query",
              repeated = true,
              type = "string",
            },
            locale = {
              description = "ISO-639-1 language and ISO-3166-1 country code. Default is en-US if unset.",
              location = "query",
              type = "string",
            },
            maxAllowedMaturityRating = {
              description = "The maximum allowed maturity rating of returned volumes. Books with a higher maturity rating are filtered out.",
              enum = {
                "MAX_ALLOWED_MATURITY_RATING_UNDEFINED",
                "MATURE",
                "not-mature",
              },
              enumDescriptions = {
                "",
                "Show books which are rated mature or lower.",
                "Show books which are rated not mature.",
              },
              location = "query",
              type = "string",
            },
            pageSize = {
              description = "Number of maximum results per page to be included in the response.",
              format = "uint32",
              location = "query",
              type = "integer",
            },
            pageToken = {
              description = "The value of the nextToken from the previous page.",
              location = "query",
              type = "string",
            },
          },
          path = "books/v1/onboarding/listCategoryVolumes",
          response = {
            ["$ref"] = "Volume2",
          },
          scopes = {
            "https://www.googleapis.com/auth/books",
          },
        },
      },
    },
    personalizedstream = {
      methods = {
        get = {
          description = "Returns a stream of personalized book clusters",
          flatPath = "books/v1/personalizedstream/get",
          httpMethod = "GET",
          id = "books.personalizedstream.get",
          parameterOrder = {},
          parameters = {
            locale = {
              description = "ISO-639-1 language and ISO-3166-1 country code. Ex: 'en_US'. Used for generating recommendations.",
              location = "query",
              type = "string",
            },
            maxAllowedMaturityRating = {
              description = "The maximum allowed maturity rating of returned recommendations. Books with a higher maturity rating are filtered out.",
              enum = {
                "MAX_ALLOWED_MATURITY_RATING_UNDEFINED",
                "MATURE",
                "not-mature",
              },
              enumDescriptions = {
                "",
                "Show books which are rated mature or lower.",
                "Show books which are rated not mature.",
              },
              location = "query",
              type = "string",
            },
            source = {
              description = "String to identify the originator of this request.",
              location = "query",
              type = "string",
            },
          },
          path = "books/v1/personalizedstream/get",
          response = {
            ["$ref"] = "Discoveryclusters",
          },
          scopes = {
            "https://www.googleapis.com/auth/books",
          },
        },
      },
    },
    promooffer = {
      methods = {
        accept = {
          description = "Accepts the promo offer.",
          flatPath = "books/v1/promooffer/accept",
          httpMethod = "POST",
          id = "books.promooffer.accept",
          parameterOrder = {},
          parameters = {
            androidId = {
              description = "device android_id",
              location = "query",
              type = "string",
            },
            device = {
              description = "device device",
              location = "query",
              type = "string",
            },
            manufacturer = {
              description = "device manufacturer",
              location = "query",
              type = "string",
            },
            model = {
              description = "device model",
              location = "query",
              type = "string",
            },
            offerId = {
              location = "query",
              type = "string",
            },
            product = {
              description = "device product",
              location = "query",
              type = "string",
            },
            serial = {
              description = "device serial",
              location = "query",
              type = "string",
            },
            volumeId = {
              description = "Volume id to exercise the offer",
              location = "query",
              type = "string",
            },
          },
          path = "books/v1/promooffer/accept",
          response = {
            ["$ref"] = "Empty",
          },
          scopes = {
            "https://www.googleapis.com/auth/books",
          },
        },
        dismiss = {
          description = "Marks the promo offer as dismissed.",
          flatPath = "books/v1/promooffer/dismiss",
          httpMethod = "POST",
          id = "books.promooffer.dismiss",
          parameterOrder = {},
          parameters = {
            androidId = {
              description = "device android_id",
              location = "query",
              type = "string",
            },
            device = {
              description = "device device",
              location = "query",
              type = "string",
            },
            manufacturer = {
              description = "device manufacturer",
              location = "query",
              type = "string",
            },
            model = {
              description = "device model",
              location = "query",
              type = "string",
            },
            offerId = {
              description = "Offer to dimiss",
              location = "query",
              type = "string",
            },
            product = {
              description = "device product",
              location = "query",
              type = "string",
            },
            serial = {
              description = "device serial",
              location = "query",
              type = "string",
            },
          },
          path = "books/v1/promooffer/dismiss",
          response = {
            ["$ref"] = "Empty",
          },
          scopes = {
            "https://www.googleapis.com/auth/books",
          },
        },
        get = {
          description = "Returns a list of promo offers available to the user",
          flatPath = "books/v1/promooffer/get",
          httpMethod = "GET",
          id = "books.promooffer.get",
          parameterOrder = {},
          parameters = {
            androidId = {
              description = "device android_id",
              location = "query",
              type = "string",
            },
            device = {
              description = "device device",
              location = "query",
              type = "string",
            },
            manufacturer = {
              description = "device manufacturer",
              location = "query",
              type = "string",
            },
            model = {
              description = "device model",
              location = "query",
              type = "string",
            },
            product = {
              description = "device product",
              location = "query",
              type = "string",
            },
            serial = {
              description = "device serial",
              location = "query",
              type = "string",
            },
          },
          path = "books/v1/promooffer/get",
          response = {
            ["$ref"] = "Offers",
          },
          scopes = {
            "https://www.googleapis.com/auth/books",
          },
        },
      },
    },
    series = {
      methods = {
        get = {
          description = "Returns Series metadata for the given series ids.",
          flatPath = "books/v1/series/get",
          httpMethod = "GET",
          id = "books.series.get",
          parameterOrder = {
            "series_id",
          },
          parameters = {
            series_id = {
              description = "String that identifies the series",
              location = "query",
              repeated = true,
              required = true,
              type = "string",
            },
          },
          path = "books/v1/series/get",
          response = {
            ["$ref"] = "Series",
          },
          scopes = {
            "https://www.googleapis.com/auth/books",
          },
        },
      },
      resources = {
        membership = {
          methods = {
            get = {
              description = "Returns Series membership data given the series id.",
              flatPath = "books/v1/series/membership/get",
              httpMethod = "GET",
              id = "books.series.membership.get",
              parameterOrder = {
                "series_id",
              },
              parameters = {
                page_size = {
                  description = "Number of maximum results per page to be included in the response.",
                  format = "uint32",
                  location = "query",
                  type = "integer",
                },
                page_token = {
                  description = "The value of the nextToken from the previous page.",
                  location = "query",
                  type = "string",
                },
                series_id = {
                  description = "String that identifies the series",
                  location = "query",
                  required = true,
                  type = "string",
                },
              },
              path = "books/v1/series/membership/get",
              response = {
                ["$ref"] = "Seriesmembership",
              },
              scopes = {
                "https://www.googleapis.com/auth/books",
              },
            },
          },
        },
      },
    },
    volumes = {
      methods = {
        get = {
          description = "Gets volume information for a single volume.",
          flatPath = "books/v1/volumes/{volumeId}",
          httpMethod = "GET",
          id = "books.volumes.get",
          parameterOrder = {
            "volumeId",
          },
          parameters = {
            country = {
              description = "ISO-3166-1 code to override the IP-based location.",
              location = "query",
              type = "string",
            },
            includeNonComicsSeries = {
              description = "Set to true to include non-comics series. Defaults to false.",
              location = "query",
              type = "boolean",
            },
            partner = {
              description = "Brand results for partner ID.",
              location = "query",
              type = "string",
            },
            projection = {
              description = "Restrict information returned to a set of selected fields.",
              enum = {
                "PROJECTION_UNDEFINED",
                "FULL",
                "LITE",
              },
              enumDescriptions = {
                "",
                "Includes all volume data.",
                "Includes a subset of fields in volumeInfo and accessInfo.",
              },
              location = "query",
              type = "string",
            },
            source = {
              description = "string to identify the originator of this request.",
              location = "query",
              type = "string",
            },
            user_library_consistent_read = {
              location = "query",
              type = "boolean",
            },
            volumeId = {
              description = "ID of volume to retrieve.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "books/v1/volumes/{volumeId}",
          response = {
            ["$ref"] = "Volume",
          },
          scopes = {
            "https://www.googleapis.com/auth/books",
          },
        },
        list = {
          description = "Performs a book search.",
          flatPath = "books/v1/volumes",
          httpMethod = "GET",
          id = "books.volumes.list",
          parameterOrder = {
            "q",
          },
          parameters = {
            download = {
              description = "Restrict to volumes by download availability.",
              enum = {
                "DOWNLOAD_UNDEFINED",
                "EPUB",
              },
              enumDescriptions = {
                "",
                "All volumes with epub.",
              },
              location = "query",
              type = "string",
            },
            filter = {
              description = "Filter search results.",
              enum = {
                "FILTER_UNDEFINED",
                "ebooks",
                "free-ebooks",
                "full",
                "paid-ebooks",
                "partial",
              },
              enumDescriptions = {
                "",
                "All Google eBooks.",
                "Google eBook with full volume text viewability.",
                "Public can view entire volume text.",
                "Google eBook with a price.",
                "Public able to see parts of text.",
              },
              location = "query",
              type = "string",
            },
            langRestrict = {
              description = "Restrict results to books with this language code.",
              location = "query",
              type = "string",
            },
            libraryRestrict = {
              description = "Restrict search to this user's library.",
              enum = {
                "LIBRARY_RESTRICT_UNDEFINED",
                "my-library",
                "no-restrict",
              },
              enumDescriptions = {
                "",
                "Restrict to the user's library, any shelf.",
                "Do not restrict based on user's library.",
              },
              location = "query",
              type = "string",
            },
            maxAllowedMaturityRating = {
              description = "The maximum allowed maturity rating of returned recommendations. Books with a higher maturity rating are filtered out.",
              enum = {
                "MAX_ALLOWED_MATURITY_RATING_UNDEFINED",
                "MATURE",
                "not-mature",
              },
              enumDescriptions = {
                "",
                "Show books which are rated mature or lower.",
                "Show books which are rated not mature.",
              },
              location = "query",
              type = "string",
            },
            maxResults = {
              description = "Maximum number of results to return.",
              format = "uint32",
              location = "query",
              maximum = "40",
              minimum = "0",
              type = "integer",
            },
            orderBy = {
              description = "Sort search results.",
              enum = {
                "ORDER_BY_UNDEFINED",
                "newest",
                "relevance",
              },
              enumDescriptions = {
                "",
                "Most recently published.",
                "Relevance to search terms.",
              },
              location = "query",
              type = "string",
            },
            partner = {
              description = "Restrict and brand results for partner ID.",
              location = "query",
              type = "string",
            },
            printType = {
              description = "Restrict to books or magazines.",
              enum = {
                "PRINT_TYPE_UNDEFINED",
                "ALL",
                "BOOKS",
                "MAGAZINES",
              },
              enumDescriptions = {
                "",
                "All volume content types.",
                "Just books.",
                "Just magazines.",
              },
              location = "query",
              type = "string",
            },
            projection = {
              description = "Restrict information returned to a set of selected fields.",
              enum = {
                "PROJECTION_UNDEFINED",
                "FULL",
                "LITE",
              },
              enumDescriptions = {
                "",
                "Includes all volume data.",
                "Includes a subset of fields in volumeInfo and accessInfo.",
              },
              location = "query",
              type = "string",
            },
            q = {
              description = "Full-text search query string.",
              location = "query",
              required = true,
              type = "string",
            },
            showPreorders = {
              description = "Set to true to show books available for preorder. Defaults to false.",
              location = "query",
              type = "boolean",
            },
            source = {
              description = "String to identify the originator of this request.",
              location = "query",
              type = "string",
            },
            startIndex = {
              description = "Index of the first result to return (starts at 0)",
              format = "uint32",
              location = "query",
              minimum = "0",
              type = "integer",
            },
          },
          path = "books/v1/volumes",
          response = {
            ["$ref"] = "Volumes",
          },
          scopes = {
            "https://www.googleapis.com/auth/books",
          },
        },
      },
      resources = {
        associated = {
          methods = {
            list = {
              description = "Return a list of associated books.",
              flatPath = "books/v1/volumes/{volumeId}/associated",
              httpMethod = "GET",
              id = "books.volumes.associated.list",
              parameterOrder = {
                "volumeId",
              },
              parameters = {
                association = {
                  description = "Association type.",
                  enum = {
                    "ASSOCIATION_UNDEFINED",
                    "end-of-sample",
                    "end-of-volume",
                    "related-for-play",
                  },
                  enumDescriptions = {
                    "",
                    "Recommendations for display end-of-sample.",
                    "Recommendations for display end-of-volume.",
                    "Related volumes for Play Store.",
                  },
                  location = "query",
                  type = "string",
                },
                locale = {
                  description = "ISO-639-1 language and ISO-3166-1 country code. Ex: 'en_US'. Used for generating recommendations.",
                  location = "query",
                  type = "string",
                },
                maxAllowedMaturityRating = {
                  description = "The maximum allowed maturity rating of returned recommendations. Books with a higher maturity rating are filtered out.",
                  enum = {
                    "MAX_ALLOWED_MATURITY_RATING_UNDEFINED",
                    "MATURE",
                    "not-mature",
                  },
                  enumDescriptions = {
                    "",
                    "Show books which are rated mature or lower.",
                    "Show books which are rated not mature.",
                  },
                  location = "query",
                  type = "string",
                },
                source = {
                  description = "String to identify the originator of this request.",
                  location = "query",
                  type = "string",
                },
                volumeId = {
                  description = "ID of the source volume.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "books/v1/volumes/{volumeId}/associated",
              response = {
                ["$ref"] = "Volumes",
              },
              scopes = {
                "https://www.googleapis.com/auth/books",
              },
            },
          },
        },
        mybooks = {
          methods = {
            list = {
              description = "Return a list of books in My Library.",
              flatPath = "books/v1/volumes/mybooks",
              httpMethod = "GET",
              id = "books.volumes.mybooks.list",
              parameterOrder = {},
              parameters = {
                acquireMethod = {
                  description = "How the book was acquired",
                  enum = {
                    "ACQUIRE_METHOD_UNDEFINED",
                    "FAMILY_SHARED",
                    "PREORDERED",
                    "PREVIOUSLY_RENTED",
                    "PUBLIC_DOMAIN",
                    "PURCHASED",
                    "RENTED",
                    "SAMPLE",
                    "UPLOADED",
                  },
                  enumDescriptions = {
                    "",
                    "Books acquired via Family Sharing",
                    "Preordered books (not yet available)",
                    "User-rented books past their expiration time",
                    "Public domain books",
                    "Purchased books",
                    "User-rented books",
                    "Sample books",
                    "User uploaded books",
                  },
                  location = "query",
                  repeated = true,
                  type = "string",
                },
                country = {
                  description = "ISO-3166-1 code to override the IP-based location.",
                  location = "query",
                  type = "string",
                },
                locale = {
                  description = "ISO-639-1 language and ISO-3166-1 country code. Ex:'en_US'. Used for generating recommendations.",
                  location = "query",
                  type = "string",
                },
                maxResults = {
                  description = "Maximum number of results to return.",
                  format = "uint32",
                  location = "query",
                  maximum = "100",
                  minimum = "0",
                  type = "integer",
                },
                processingState = {
                  description = "The processing state of the user uploaded volumes to be returned. Applicable only if the UPLOADED is specified in the acquireMethod.",
                  enum = {
                    "PROCESSING_STATE_UNDEFINED",
                    "COMPLETED_FAILED",
                    "COMPLETED_SUCCESS",
                    "RUNNING",
                  },
                  enumDescriptions = {
                    "",
                    "The volume processing hase failed.",
                    "The volume processing was completed.",
                    "The volume processing is not completed.",
                  },
                  location = "query",
                  repeated = true,
                  type = "string",
                },
                source = {
                  description = "String to identify the originator of this request.",
                  location = "query",
                  type = "string",
                },
                startIndex = {
                  description = "Index of the first result to return (starts at 0)",
                  format = "uint32",
                  location = "query",
                  minimum = "0",
                  type = "integer",
                },
              },
              path = "books/v1/volumes/mybooks",
              response = {
                ["$ref"] = "Volumes",
              },
              scopes = {
                "https://www.googleapis.com/auth/books",
              },
            },
          },
        },
        recommended = {
          methods = {
            list = {
              description = "Return a list of recommended books for the current user.",
              flatPath = "books/v1/volumes/recommended",
              httpMethod = "GET",
              id = "books.volumes.recommended.list",
              parameterOrder = {},
              parameters = {
                locale = {
                  description = "ISO-639-1 language and ISO-3166-1 country code. Ex: 'en_US'. Used for generating recommendations.",
                  location = "query",
                  type = "string",
                },
                maxAllowedMaturityRating = {
                  description = "The maximum allowed maturity rating of returned recommendations. Books with a higher maturity rating are filtered out.",
                  enum = {
                    "MAX_ALLOWED_MATURITY_RATING_UNDEFINED",
                    "MATURE",
                    "not-mature",
                  },
                  enumDescriptions = {
                    "",
                    "Show books which are rated mature or lower.",
                    "Show books which are rated not mature.",
                  },
                  location = "query",
                  type = "string",
                },
                source = {
                  description = "String to identify the originator of this request.",
                  location = "query",
                  type = "string",
                },
              },
              path = "books/v1/volumes/recommended",
              response = {
                ["$ref"] = "Volumes",
              },
              scopes = {
                "https://www.googleapis.com/auth/books",
              },
            },
            rate = {
              description = "Rate a recommended book for the current user.",
              flatPath = "books/v1/volumes/recommended/rate",
              httpMethod = "POST",
              id = "books.volumes.recommended.rate",
              parameterOrder = {
                "rating",
                "volumeId",
              },
              parameters = {
                locale = {
                  description = "ISO-639-1 language and ISO-3166-1 country code. Ex: 'en_US'. Used for generating recommendations.",
                  location = "query",
                  type = "string",
                },
                rating = {
                  description = "Rating to be given to the volume.",
                  enum = {
                    "RATING_UNDEFINED",
                    "HAVE_IT",
                    "NOT_INTERESTED",
                  },
                  enumDescriptions = {
                    "",
                    "Rating indicating a dismissal due to ownership.",
                    "Rating indicating a negative dismissal of a volume.",
                  },
                  location = "query",
                  required = true,
                  type = "string",
                },
                source = {
                  description = "String to identify the originator of this request.",
                  location = "query",
                  type = "string",
                },
                volumeId = {
                  description = "ID of the source volume.",
                  location = "query",
                  required = true,
                  type = "string",
                },
              },
              path = "books/v1/volumes/recommended/rate",
              response = {
                ["$ref"] = "BooksVolumesRecommendedRateResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/books",
              },
            },
          },
        },
        useruploaded = {
          methods = {
            list = {
              description = "Return a list of books uploaded by the current user.",
              flatPath = "books/v1/volumes/useruploaded",
              httpMethod = "GET",
              id = "books.volumes.useruploaded.list",
              parameterOrder = {},
              parameters = {
                locale = {
                  description = "ISO-639-1 language and ISO-3166-1 country code. Ex: 'en_US'. Used for generating recommendations.",
                  location = "query",
                  type = "string",
                },
                maxResults = {
                  description = "Maximum number of results to return.",
                  format = "uint32",
                  location = "query",
                  maximum = "40",
                  minimum = "0",
                  type = "integer",
                },
                processingState = {
                  description = "The processing state of the user uploaded volumes to be returned.",
                  enum = {
                    "PROCESSING_STATE_UNDEFINED",
                    "COMPLETED_FAILED",
                    "COMPLETED_SUCCESS",
                    "RUNNING",
                  },
                  enumDescriptions = {
                    "",
                    "The volume processing hase failed.",
                    "The volume processing was completed.",
                    "The volume processing is not completed.",
                  },
                  location = "query",
                  repeated = true,
                  type = "string",
                },
                source = {
                  description = "String to identify the originator of this request.",
                  location = "query",
                  type = "string",
                },
                startIndex = {
                  description = "Index of the first result to return (starts at 0)",
                  format = "uint32",
                  location = "query",
                  minimum = "0",
                  type = "integer",
                },
                volumeId = {
                  description = "The ids of the volumes to be returned. If not specified all that match the processingState are returned.",
                  location = "query",
                  repeated = true,
                  type = "string",
                },
              },
              path = "books/v1/volumes/useruploaded",
              response = {
                ["$ref"] = "Volumes",
              },
              scopes = {
                "https://www.googleapis.com/auth/books",
              },
            },
          },
        },
      },
    },
  },
  revision = "20230110",
  rootUrl = "https://books.googleapis.com/",
  schemas = {
    Annotation = {
      id = "Annotation",
      properties = {
        afterSelectedText = {
          description = "Anchor text after excerpt. For requests, if the user bookmarked a screen that has no flowing text on it, then this field should be empty.",
          type = "string",
        },
        beforeSelectedText = {
          description = "Anchor text before excerpt. For requests, if the user bookmarked a screen that has no flowing text on it, then this field should be empty.",
          type = "string",
        },
        clientVersionRanges = {
          description = "Selection ranges sent from the client.",
          properties = {
            cfiRange = {
              ["$ref"] = "BooksAnnotationsRange",
              description = "Range in CFI format for this annotation sent by client.",
            },
            contentVersion = {
              description = "Content version the client sent in.",
              type = "string",
            },
            gbImageRange = {
              ["$ref"] = "BooksAnnotationsRange",
              description = "Range in GB image format for this annotation sent by client.",
            },
            gbTextRange = {
              ["$ref"] = "BooksAnnotationsRange",
              description = "Range in GB text format for this annotation sent by client.",
            },
            imageCfiRange = {
              ["$ref"] = "BooksAnnotationsRange",
              description = "Range in image CFI format for this annotation sent by client.",
            },
          },
          type = "object",
        },
        created = {
          description = "Timestamp for the created time of this annotation.",
          type = "string",
        },
        currentVersionRanges = {
          description = "Selection ranges for the most recent content version.",
          properties = {
            cfiRange = {
              ["$ref"] = "BooksAnnotationsRange",
              description = "Range in CFI format for this annotation for version above.",
            },
            contentVersion = {
              description = "Content version applicable to ranges below.",
              type = "string",
            },
            gbImageRange = {
              ["$ref"] = "BooksAnnotationsRange",
              description = "Range in GB image format for this annotation for version above.",
            },
            gbTextRange = {
              ["$ref"] = "BooksAnnotationsRange",
              description = "Range in GB text format for this annotation for version above.",
            },
            imageCfiRange = {
              ["$ref"] = "BooksAnnotationsRange",
              description = "Range in image CFI format for this annotation for version above.",
            },
          },
          type = "object",
        },
        data = {
          description = "User-created data for this annotation.",
          type = "string",
        },
        deleted = {
          description = "Indicates that this annotation is deleted.",
          type = "boolean",
        },
        highlightStyle = {
          description = "The highlight style for this annotation.",
          type = "string",
        },
        id = {
          description = "Id of this annotation, in the form of a GUID.",
          type = "string",
        },
        kind = {
          description = "Resource type.",
          type = "string",
        },
        layerId = {
          description = "The layer this annotation is for.",
          type = "string",
        },
        layerSummary = {
          properties = {
            allowedCharacterCount = {
              description = "Maximum allowed characters on this layer, especially for the \"copy\" layer.",
              format = "int32",
              type = "integer",
            },
            limitType = {
              description = "Type of limitation on this layer. \"limited\" or \"unlimited\" for the \"copy\" layer.",
              type = "string",
            },
            remainingCharacterCount = {
              description = "Remaining allowed characters on this layer, especially for the \"copy\" layer.",
              format = "int32",
              type = "integer",
            },
          },
          type = "object",
        },
        pageIds = {
          description = "Pages that this annotation spans.",
          items = {
            type = "string",
          },
          type = "array",
        },
        selectedText = {
          description = "Excerpt from the volume.",
          type = "string",
        },
        selfLink = {
          description = "URL to this resource.",
          type = "string",
        },
        updated = {
          description = "Timestamp for the last time this annotation was modified.",
          type = "string",
        },
        volumeId = {
          description = "The volume that this annotation belongs to.",
          type = "string",
        },
      },
      type = "object",
    },
    Annotations = {
      id = "Annotations",
      properties = {
        items = {
          description = "A list of annotations.",
          items = {
            ["$ref"] = "Annotation",
          },
          type = "array",
        },
        kind = {
          description = "Resource type.",
          type = "string",
        },
        nextPageToken = {
          description = "Token to pass in for pagination for the next page. This will not be present if this request does not have more results.",
          type = "string",
        },
        totalItems = {
          description = "Total number of annotations found. This may be greater than the number of notes returned in this response if results have been paginated.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    AnnotationsSummary = {
      id = "AnnotationsSummary",
      properties = {
        kind = {
          type = "string",
        },
        layers = {
          items = {
            properties = {
              allowedCharacterCount = {
                format = "int32",
                type = "integer",
              },
              layerId = {
                type = "string",
              },
              limitType = {
                type = "string",
              },
              remainingCharacterCount = {
                format = "int32",
                type = "integer",
              },
              updated = {
                type = "string",
              },
            },
            type = "object",
          },
          type = "array",
        },
      },
      type = "object",
    },
    Annotationsdata = {
      id = "Annotationsdata",
      properties = {
        items = {
          description = "A list of Annotation Data.",
          items = {
            ["$ref"] = "GeoAnnotationdata",
          },
          type = "array",
        },
        kind = {
          description = "Resource type",
          type = "string",
        },
        nextPageToken = {
          description = "Token to pass in for pagination for the next page. This will not be present if this request does not have more results.",
          type = "string",
        },
        totalItems = {
          description = "The total number of volume annotations found.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    BooksAnnotationsRange = {
      id = "BooksAnnotationsRange",
      properties = {
        endOffset = {
          description = "The offset from the ending position.",
          type = "string",
        },
        endPosition = {
          description = "The ending position for the range.",
          type = "string",
        },
        startOffset = {
          description = "The offset from the starting position.",
          type = "string",
        },
        startPosition = {
          description = "The starting position for the range.",
          type = "string",
        },
      },
      type = "object",
    },
    BooksCloudloadingResource = {
      id = "BooksCloudloadingResource",
      properties = {
        author = {
          type = "string",
        },
        processingState = {
          type = "string",
        },
        title = {
          type = "string",
        },
        volumeId = {
          type = "string",
        },
      },
      type = "object",
    },
    BooksVolumesRecommendedRateResponse = {
      id = "BooksVolumesRecommendedRateResponse",
      properties = {
        consistency_token = {
          type = "string",
        },
      },
      type = "object",
    },
    Bookshelf = {
      id = "Bookshelf",
      properties = {
        access = {
          description = "Whether this bookshelf is PUBLIC or PRIVATE.",
          type = "string",
        },
        created = {
          description = "Created time for this bookshelf (formatted UTC timestamp with millisecond resolution).",
          type = "string",
        },
        description = {
          description = "Description of this bookshelf.",
          type = "string",
        },
        id = {
          description = "Id of this bookshelf, only unique by user.",
          format = "int32",
          type = "integer",
        },
        kind = {
          description = "Resource type for bookshelf metadata.",
          type = "string",
        },
        selfLink = {
          description = "URL to this resource.",
          type = "string",
        },
        title = {
          description = "Title of this bookshelf.",
          type = "string",
        },
        updated = {
          description = "Last modified time of this bookshelf (formatted UTC timestamp with millisecond resolution).",
          type = "string",
        },
        volumeCount = {
          description = "Number of volumes in this bookshelf.",
          format = "int32",
          type = "integer",
        },
        volumesLastUpdated = {
          description = "Last time a volume was added or removed from this bookshelf (formatted UTC timestamp with millisecond resolution).",
          type = "string",
        },
      },
      type = "object",
    },
    Bookshelves = {
      id = "Bookshelves",
      properties = {
        items = {
          description = "A list of bookshelves.",
          items = {
            ["$ref"] = "Bookshelf",
          },
          type = "array",
        },
        kind = {
          description = "Resource type.",
          type = "string",
        },
      },
      type = "object",
    },
    Category = {
      id = "Category",
      properties = {
        items = {
          description = "A list of onboarding categories.",
          items = {
            properties = {
              badgeUrl = {
                type = "string",
              },
              categoryId = {
                type = "string",
              },
              name = {
                type = "string",
              },
            },
            type = "object",
          },
          type = "array",
        },
        kind = {
          description = "Resource type.",
          type = "string",
        },
      },
      type = "object",
    },
    ConcurrentAccessRestriction = {
      id = "ConcurrentAccessRestriction",
      properties = {
        deviceAllowed = {
          description = "Whether access is granted for this (user, device, volume).",
          type = "boolean",
        },
        kind = {
          description = "Resource type.",
          type = "string",
        },
        maxConcurrentDevices = {
          description = "The maximum number of concurrent access licenses for this volume.",
          format = "int32",
          type = "integer",
        },
        message = {
          description = "Error/warning message.",
          type = "string",
        },
        nonce = {
          description = "Client nonce for verification. Download access and client-validation only.",
          type = "string",
        },
        reasonCode = {
          description = "Error/warning reason code.",
          type = "string",
        },
        restricted = {
          description = "Whether this volume has any concurrent access restrictions.",
          type = "boolean",
        },
        signature = {
          description = "Response signature.",
          type = "string",
        },
        source = {
          description = "Client app identifier for verification. Download access and client-validation only.",
          type = "string",
        },
        timeWindowSeconds = {
          description = "Time in seconds for license auto-expiration.",
          format = "int32",
          type = "integer",
        },
        volumeId = {
          description = "Identifies the volume for which this entry applies.",
          type = "string",
        },
      },
      type = "object",
    },
    DictionaryAnnotationdata = {
      id = "DictionaryAnnotationdata",
      properties = {
        annotationType = {
          description = "The type of annotation this data is for.",
          type = "string",
        },
        data = {
          ["$ref"] = "Dictlayerdata",
          description = "JSON encoded data for this dictionary annotation data. Emitted with name 'data' in JSON output. Either this or geo_data will be populated.",
        },
        encodedData = {
          description = "Base64 encoded data for this annotation data.",
          format = "byte",
          type = "string",
        },
        id = {
          description = "Unique id for this annotation data.",
          type = "string",
        },
        kind = {
          description = "Resource Type",
          type = "string",
        },
        layerId = {
          description = "The Layer id for this data. *",
          type = "string",
        },
        selfLink = {
          description = "URL for this resource. *",
          type = "string",
        },
        updated = {
          description = "Timestamp for the last time this data was updated. (RFC 3339 UTC date-time format).",
          type = "string",
        },
        volumeId = {
          description = "The volume id for this data. *",
          type = "string",
        },
      },
      type = "object",
    },
    Dictlayerdata = {
      id = "Dictlayerdata",
      properties = {
        common = {
          properties = {
            title = {
              description = "The display title and localized canonical name to use when searching for this entity on Google search.",
              type = "string",
            },
          },
          type = "object",
        },
        dict = {
          properties = {
            source = {
              description = "The source, url and attribution for this dictionary data.",
              properties = {
                attribution = {
                  type = "string",
                },
                url = {
                  type = "string",
                },
              },
              type = "object",
            },
            words = {
              items = {
                properties = {
                  derivatives = {
                    items = {
                      properties = {
                        source = {
                          properties = {
                            attribution = {
                              type = "string",
                            },
                            url = {
                              type = "string",
                            },
                          },
                          type = "object",
                        },
                        text = {
                          type = "string",
                        },
                      },
                      type = "object",
                    },
                    type = "array",
                  },
                  examples = {
                    items = {
                      properties = {
                        source = {
                          properties = {
                            attribution = {
                              type = "string",
                            },
                            url = {
                              type = "string",
                            },
                          },
                          type = "object",
                        },
                        text = {
                          type = "string",
                        },
                      },
                      type = "object",
                    },
                    type = "array",
                  },
                  senses = {
                    items = {
                      properties = {
                        conjugations = {
                          items = {
                            properties = {
                              type = {
                                type = "string",
                              },
                              value = {
                                type = "string",
                              },
                            },
                            type = "object",
                          },
                          type = "array",
                        },
                        definitions = {
                          items = {
                            properties = {
                              definition = {
                                type = "string",
                              },
                              examples = {
                                items = {
                                  properties = {
                                    source = {
                                      properties = {
                                        attribution = {
                                          type = "string",
                                        },
                                        url = {
                                          type = "string",
                                        },
                                      },
                                      type = "object",
                                    },
                                    text = {
                                      type = "string",
                                    },
                                  },
                                  type = "object",
                                },
                                type = "array",
                              },
                            },
                            type = "object",
                          },
                          type = "array",
                        },
                        partOfSpeech = {
                          type = "string",
                        },
                        pronunciation = {
                          type = "string",
                        },
                        pronunciationUrl = {
                          type = "string",
                        },
                        source = {
                          properties = {
                            attribution = {
                              type = "string",
                            },
                            url = {
                              type = "string",
                            },
                          },
                          type = "object",
                        },
                        syllabification = {
                          type = "string",
                        },
                        synonyms = {
                          items = {
                            properties = {
                              source = {
                                properties = {
                                  attribution = {
                                    type = "string",
                                  },
                                  url = {
                                    type = "string",
                                  },
                                },
                                type = "object",
                              },
                              text = {
                                type = "string",
                              },
                            },
                            type = "object",
                          },
                          type = "array",
                        },
                      },
                      type = "object",
                    },
                    type = "array",
                  },
                  source = {
                    description = "The words with different meanings but not related words, e.g. \"go\" (game) and \"go\" (verb).",
                    properties = {
                      attribution = {
                        type = "string",
                      },
                      url = {
                        type = "string",
                      },
                    },
                    type = "object",
                  },
                },
                type = "object",
              },
              type = "array",
            },
          },
          type = "object",
        },
        kind = {
          type = "string",
        },
      },
      type = "object",
    },
    Discoveryclusters = {
      id = "Discoveryclusters",
      properties = {
        clusters = {
          items = {
            properties = {
              banner_with_content_container = {
                properties = {
                  fillColorArgb = {
                    type = "string",
                  },
                  imageUrl = {
                    type = "string",
                  },
                  maskColorArgb = {
                    type = "string",
                  },
                  moreButtonText = {
                    type = "string",
                  },
                  moreButtonUrl = {
                    type = "string",
                  },
                  textColorArgb = {
                    type = "string",
                  },
                },
                type = "object",
              },
              subTitle = {
                type = "string",
              },
              title = {
                type = "string",
              },
              totalVolumes = {
                format = "int32",
                type = "integer",
              },
              uid = {
                type = "string",
              },
              volumes = {
                items = {
                  ["$ref"] = "Volume",
                },
                type = "array",
              },
            },
            type = "object",
          },
          type = "array",
        },
        kind = {
          description = "Resorce type.",
          type = "string",
        },
        totalClusters = {
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    DownloadAccessRestriction = {
      id = "DownloadAccessRestriction",
      properties = {
        deviceAllowed = {
          description = "If restricted, whether access is granted for this (user, device, volume).",
          type = "boolean",
        },
        downloadsAcquired = {
          description = "If restricted, the number of content download licenses already acquired (including the requesting client, if licensed).",
          format = "int32",
          type = "integer",
        },
        justAcquired = {
          description = "If deviceAllowed, whether access was just acquired with this request.",
          type = "boolean",
        },
        kind = {
          description = "Resource type.",
          type = "string",
        },
        maxDownloadDevices = {
          description = "If restricted, the maximum number of content download licenses for this volume.",
          format = "int32",
          type = "integer",
        },
        message = {
          description = "Error/warning message.",
          type = "string",
        },
        nonce = {
          description = "Client nonce for verification. Download access and client-validation only.",
          type = "string",
        },
        reasonCode = {
          description = "Error/warning reason code. Additional codes may be added in the future. 0 OK 100 ACCESS_DENIED_PUBLISHER_LIMIT 101 ACCESS_DENIED_LIMIT 200 WARNING_USED_LAST_ACCESS",
          type = "string",
        },
        restricted = {
          description = "Whether this volume has any download access restrictions.",
          type = "boolean",
        },
        signature = {
          description = "Response signature.",
          type = "string",
        },
        source = {
          description = "Client app identifier for verification. Download access and client-validation only.",
          type = "string",
        },
        volumeId = {
          description = "Identifies the volume for which this entry applies.",
          type = "string",
        },
      },
      type = "object",
    },
    DownloadAccesses = {
      id = "DownloadAccesses",
      properties = {
        downloadAccessList = {
          description = "A list of download access responses.",
          items = {
            ["$ref"] = "DownloadAccessRestriction",
          },
          type = "array",
        },
        kind = {
          description = "Resource type.",
          type = "string",
        },
      },
      type = "object",
    },
    Empty = {
      description = "A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }",
      id = "Empty",
      properties = {},
      type = "object",
    },
    FamilyInfo = {
      id = "FamilyInfo",
      properties = {
        kind = {
          description = "Resource type.",
          type = "string",
        },
        membership = {
          description = "Family membership info of the user that made the request.",
          properties = {
            acquirePermission = {
              description = "Restrictions on user buying and acquiring content.",
              type = "string",
            },
            ageGroup = {
              description = "The age group of the user.",
              type = "string",
            },
            allowedMaturityRating = {
              description = "The maximum allowed maturity rating for the user.",
              type = "string",
            },
            isInFamily = {
              type = "boolean",
            },
            role = {
              description = "The role of the user in the family.",
              type = "string",
            },
          },
          type = "object",
        },
      },
      type = "object",
    },
    GeoAnnotationdata = {
      id = "GeoAnnotationdata",
      properties = {
        annotationType = {
          description = "The type of annotation this data is for.",
          type = "string",
        },
        data = {
          ["$ref"] = "Geolayerdata",
          description = "JSON encoded data for this geo annotation data. Emitted with name 'data' in JSON output. Either this or dict_data will be populated.",
        },
        encodedData = {
          description = "Base64 encoded data for this annotation data.",
          format = "byte",
          type = "string",
        },
        id = {
          description = "Unique id for this annotation data.",
          type = "string",
        },
        kind = {
          description = "Resource Type",
          type = "string",
        },
        layerId = {
          description = "The Layer id for this data. *",
          type = "string",
        },
        selfLink = {
          description = "URL for this resource. *",
          type = "string",
        },
        updated = {
          description = "Timestamp for the last time this data was updated. (RFC 3339 UTC date-time format).",
          type = "string",
        },
        volumeId = {
          description = "The volume id for this data. *",
          type = "string",
        },
      },
      type = "object",
    },
    Geolayerdata = {
      id = "Geolayerdata",
      properties = {
        common = {
          properties = {
            lang = {
              description = "The language of the information url and description.",
              type = "string",
            },
            previewImageUrl = {
              description = "The URL for the preview image information.",
              type = "string",
            },
            snippet = {
              description = "The description for this location.",
              type = "string",
            },
            snippetUrl = {
              description = "The URL for information for this location. Ex: wikipedia link.",
              type = "string",
            },
            title = {
              description = "The display title and localized canonical name to use when searching for this entity on Google search.",
              type = "string",
            },
          },
          type = "object",
        },
        geo = {
          properties = {
            boundary = {
              description = "The boundary of the location as a set of loops containing pairs of latitude, longitude coordinates.",
              items = {
                type = "string",
              },
              type = "array",
            },
            cachePolicy = {
              description = "The cache policy active for this data. EX: UNRESTRICTED, RESTRICTED, NEVER",
              type = "string",
            },
            countryCode = {
              description = "The country code of the location.",
              type = "string",
            },
            latitude = {
              description = "The latitude of the location.",
              format = "double",
              type = "number",
            },
            longitude = {
              description = "The longitude of the location.",
              format = "double",
              type = "number",
            },
            mapType = {
              description = "The type of map that should be used for this location. EX: HYBRID, ROADMAP, SATELLITE, TERRAIN",
              type = "string",
            },
            viewport = {
              description = "The viewport for showing this location. This is a latitude, longitude rectangle.",
              properties = {
                hi = {
                  properties = {
                    latitude = {
                      format = "double",
                      type = "number",
                    },
                    longitude = {
                      format = "double",
                      type = "number",
                    },
                  },
                  type = "object",
                },
                lo = {
                  properties = {
                    latitude = {
                      format = "double",
                      type = "number",
                    },
                    longitude = {
                      format = "double",
                      type = "number",
                    },
                  },
                  type = "object",
                },
              },
              type = "object",
            },
            zoom = {
              description = "The Zoom level to use for the map. Zoom levels between 0 (the lowest zoom level, in which the entire world can be seen on one map) to 21+ (down to individual buildings). See: https: //developers.google.com/maps/documentation/staticmaps/#Zoomlevels",
              format = "int32",
              type = "integer",
            },
          },
          type = "object",
        },
        kind = {
          type = "string",
        },
      },
      type = "object",
    },
    Layersummaries = {
      id = "Layersummaries",
      properties = {
        items = {
          description = "A list of layer summary items.",
          items = {
            ["$ref"] = "Layersummary",
          },
          type = "array",
        },
        kind = {
          description = "Resource type.",
          type = "string",
        },
        totalItems = {
          description = "The total number of layer summaries found.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    Layersummary = {
      id = "Layersummary",
      properties = {
        annotationCount = {
          description = "The number of annotations for this layer.",
          format = "int32",
          type = "integer",
        },
        annotationTypes = {
          description = "The list of annotation types contained for this layer.",
          items = {
            type = "string",
          },
          type = "array",
        },
        annotationsDataLink = {
          description = "Link to get data for this annotation.",
          type = "string",
        },
        annotationsLink = {
          description = "The link to get the annotations for this layer.",
          type = "string",
        },
        contentVersion = {
          description = "The content version this resource is for.",
          type = "string",
        },
        dataCount = {
          description = "The number of data items for this layer.",
          format = "int32",
          type = "integer",
        },
        id = {
          description = "Unique id of this layer summary.",
          type = "string",
        },
        kind = {
          description = "Resource Type",
          type = "string",
        },
        layerId = {
          description = "The layer id for this summary.",
          type = "string",
        },
        selfLink = {
          description = "URL to this resource.",
          type = "string",
        },
        updated = {
          description = "Timestamp for the last time an item in this layer was updated. (RFC 3339 UTC date-time format).",
          type = "string",
        },
        volumeAnnotationsVersion = {
          description = "The current version of this layer's volume annotations. Note that this version applies only to the data in the books.layers.volumeAnnotations.* responses. The actual annotation data is versioned separately.",
          type = "string",
        },
        volumeId = {
          description = "The volume id this resource is for.",
          type = "string",
        },
      },
      type = "object",
    },
    Metadata = {
      id = "Metadata",
      properties = {
        items = {
          description = "A list of offline dictionary metadata.",
          items = {
            properties = {
              download_url = {
                type = "string",
              },
              encrypted_key = {
                type = "string",
              },
              language = {
                type = "string",
              },
              size = {
                format = "int64",
                type = "string",
              },
              version = {
                format = "int64",
                type = "string",
              },
            },
            type = "object",
          },
          type = "array",
        },
        kind = {
          description = "Resource type.",
          type = "string",
        },
      },
      type = "object",
    },
    Notification = {
      id = "Notification",
      properties = {
        body = {
          type = "string",
        },
        crmExperimentIds = {
          description = "The list of crm experiment ids.",
          items = {
            format = "int64",
            type = "string",
          },
          type = "array",
        },
        doc_id = {
          type = "string",
        },
        doc_type = {
          type = "string",
        },
        dont_show_notification = {
          type = "boolean",
        },
        iconUrl = {
          type = "string",
        },
        is_document_mature = {
          type = "boolean",
        },
        kind = {
          description = "Resource type.",
          type = "string",
        },
        notificationGroup = {
          type = "string",
        },
        notification_type = {
          type = "string",
        },
        pcampaign_id = {
          type = "string",
        },
        reason = {
          type = "string",
        },
        show_notification_settings_action = {
          type = "boolean",
        },
        targetUrl = {
          type = "string",
        },
        timeToExpireMs = {
          format = "int64",
          type = "string",
        },
        title = {
          type = "string",
        },
      },
      type = "object",
    },
    Offers = {
      id = "Offers",
      properties = {
        items = {
          description = "A list of offers.",
          items = {
            properties = {
              artUrl = {
                type = "string",
              },
              gservicesKey = {
                type = "string",
              },
              id = {
                type = "string",
              },
              items = {
                items = {
                  properties = {
                    author = {
                      type = "string",
                    },
                    canonicalVolumeLink = {
                      type = "string",
                    },
                    coverUrl = {
                      type = "string",
                    },
                    description = {
                      type = "string",
                    },
                    title = {
                      type = "string",
                    },
                    volumeId = {
                      type = "string",
                    },
                  },
                  type = "object",
                },
                type = "array",
              },
            },
            type = "object",
          },
          type = "array",
        },
        kind = {
          description = "Resource type.",
          type = "string",
        },
      },
      type = "object",
    },
    ReadingPosition = {
      id = "ReadingPosition",
      properties = {
        epubCfiPosition = {
          description = "Position in an EPUB as a CFI.",
          type = "string",
        },
        gbImagePosition = {
          description = "Position in a volume for image-based content.",
          type = "string",
        },
        gbTextPosition = {
          description = "Position in a volume for text-based content.",
          type = "string",
        },
        kind = {
          description = "Resource type for a reading position.",
          type = "string",
        },
        pdfPosition = {
          description = "Position in a PDF file.",
          type = "string",
        },
        updated = {
          description = "Timestamp when this reading position was last updated (formatted UTC timestamp with millisecond resolution).",
          type = "string",
        },
        volumeId = {
          description = "Volume id associated with this reading position.",
          type = "string",
        },
      },
      type = "object",
    },
    RequestAccessData = {
      id = "RequestAccessData",
      properties = {
        concurrentAccess = {
          ["$ref"] = "ConcurrentAccessRestriction",
          description = "A concurrent access response.",
        },
        downloadAccess = {
          ["$ref"] = "DownloadAccessRestriction",
          description = "A download access response.",
        },
        kind = {
          description = "Resource type.",
          type = "string",
        },
      },
      type = "object",
    },
    Review = {
      id = "Review",
      properties = {
        author = {
          description = "Author of this review.",
          properties = {
            displayName = {
              description = "Name of this person.",
              type = "string",
            },
          },
          type = "object",
        },
        content = {
          description = "Review text.",
          type = "string",
        },
        date = {
          description = "Date of this review.",
          type = "string",
        },
        fullTextUrl = {
          description = "URL for the full review text, for reviews gathered from the web.",
          type = "string",
        },
        kind = {
          description = "Resource type for a review.",
          type = "string",
        },
        rating = {
          description = "Star rating for this review. Possible values are ONE, TWO, THREE, FOUR, FIVE or NOT_RATED.",
          type = "string",
        },
        source = {
          description = "Information regarding the source of this review, when the review is not from a Google Books user.",
          properties = {
            description = {
              description = "Name of the source.",
              type = "string",
            },
            extraDescription = {
              description = "Extra text about the source of the review.",
              type = "string",
            },
            url = {
              description = "URL of the source of the review.",
              type = "string",
            },
          },
          type = "object",
        },
        title = {
          description = "Title for this review.",
          type = "string",
        },
        type = {
          description = "Source type for this review. Possible values are EDITORIAL, WEB_USER or GOOGLE_USER.",
          type = "string",
        },
        volumeId = {
          description = "Volume that this review is for.",
          type = "string",
        },
      },
      type = "object",
    },
    Series = {
      id = "Series",
      properties = {
        kind = {
          description = "Resource type.",
          type = "string",
        },
        series = {
          items = {
            properties = {
              bannerImageUrl = {
                type = "string",
              },
              eligibleForSubscription = {
                type = "boolean",
              },
              imageUrl = {
                type = "string",
              },
              isComplete = {
                type = "boolean",
              },
              seriesFormatType = {
                type = "string",
              },
              seriesId = {
                type = "string",
              },
              seriesSubscriptionReleaseInfo = {
                properties = {
                  cancelTime = {
                    type = "string",
                  },
                  currentReleaseInfo = {
                    properties = {
                      amountInMicros = {
                        format = "double",
                        type = "number",
                      },
                      currencyCode = {
                        type = "string",
                      },
                      releaseNumber = {
                        type = "string",
                      },
                      releaseTime = {
                        type = "string",
                      },
                    },
                    type = "object",
                  },
                  nextReleaseInfo = {
                    properties = {
                      amountInMicros = {
                        format = "double",
                        type = "number",
                      },
                      currencyCode = {
                        type = "string",
                      },
                      releaseNumber = {
                        type = "string",
                      },
                      releaseTime = {
                        type = "string",
                      },
                    },
                    type = "object",
                  },
                  seriesSubscriptionType = {
                    type = "string",
                  },
                },
                type = "object",
              },
              seriesType = {
                type = "string",
              },
              subscriptionId = {
                type = "string",
              },
              title = {
                type = "string",
              },
            },
            type = "object",
          },
          type = "array",
        },
      },
      type = "object",
    },
    Seriesmembership = {
      id = "Seriesmembership",
      properties = {
        kind = {
          description = "Resorce type.",
          type = "string",
        },
        member = {
          items = {
            ["$ref"] = "Volume",
          },
          type = "array",
        },
        nextPageToken = {
          type = "string",
        },
      },
      type = "object",
    },
    Usersettings = {
      id = "Usersettings",
      properties = {
        kind = {
          description = "Resource type.",
          type = "string",
        },
        notesExport = {
          description = "User settings in sub-objects, each for different purposes.",
          properties = {
            folderName = {
              type = "string",
            },
            isEnabled = {
              type = "boolean",
            },
          },
          type = "object",
        },
        notification = {
          properties = {
            matchMyInterests = {
              properties = {
                opted_state = {
                  type = "string",
                },
              },
              type = "object",
            },
            moreFromAuthors = {
              properties = {
                opted_state = {
                  type = "string",
                },
              },
              type = "object",
            },
            moreFromSeries = {
              properties = {
                opted_state = {
                  type = "string",
                },
              },
              type = "object",
            },
            priceDrop = {
              properties = {
                opted_state = {
                  type = "string",
                },
              },
              type = "object",
            },
            rewardExpirations = {
              properties = {
                opted_state = {
                  type = "string",
                },
              },
              type = "object",
            },
          },
          type = "object",
        },
      },
      type = "object",
    },
    Volume = {
      id = "Volume",
      properties = {
        accessInfo = {
          description = "Any information about a volume related to reading or obtaining that volume text. This information can depend on country (books may be public domain in one country but not in another, e.g.).",
          properties = {
            accessViewStatus = {
              description = "Combines the access and viewability of this volume into a single status field for this user. Values can be FULL_PURCHASED, FULL_PUBLIC_DOMAIN, SAMPLE or NONE. (In LITE projection.)",
              type = "string",
            },
            country = {
              description = "The two-letter ISO_3166-1 country code for which this access information is valid. (In LITE projection.)",
              type = "string",
            },
            downloadAccess = {
              ["$ref"] = "DownloadAccessRestriction",
              description = "Information about a volume's download license access restrictions.",
            },
            driveImportedContentLink = {
              description = "URL to the Google Drive viewer if this volume is uploaded by the user by selecting the file from Google Drive.",
              type = "string",
            },
            embeddable = {
              description = "Whether this volume can be embedded in a viewport using the Embedded Viewer API.",
              type = "boolean",
            },
            epub = {
              description = "Information about epub content. (In LITE projection.)",
              properties = {
                acsTokenLink = {
                  description = "URL to retrieve ACS token for epub download. (In LITE projection.)",
                  type = "string",
                },
                downloadLink = {
                  description = "URL to download epub. (In LITE projection.)",
                  type = "string",
                },
                isAvailable = {
                  description = "Is a flowing text epub available either as public domain or for purchase. (In LITE projection.)",
                  type = "boolean",
                },
              },
              type = "object",
            },
            explicitOfflineLicenseManagement = {
              description = "Whether this volume requires that the client explicitly request offline download license rather than have it done automatically when loading the content, if the client supports it.",
              type = "boolean",
            },
            pdf = {
              description = "Information about pdf content. (In LITE projection.)",
              properties = {
                acsTokenLink = {
                  description = "URL to retrieve ACS token for pdf download. (In LITE projection.)",
                  type = "string",
                },
                downloadLink = {
                  description = "URL to download pdf. (In LITE projection.)",
                  type = "string",
                },
                isAvailable = {
                  description = "Is a scanned image pdf available either as public domain or for purchase. (In LITE projection.)",
                  type = "boolean",
                },
              },
              type = "object",
            },
            publicDomain = {
              description = "Whether or not this book is public domain in the country listed above.",
              type = "boolean",
            },
            quoteSharingAllowed = {
              description = "Whether quote sharing is allowed for this volume.",
              type = "boolean",
            },
            textToSpeechPermission = {
              description = "Whether text-to-speech is permitted for this volume. Values can be ALLOWED, ALLOWED_FOR_ACCESSIBILITY, or NOT_ALLOWED.",
              type = "string",
            },
            viewOrderUrl = {
              description = "For ordered but not yet processed orders, we give a URL that can be used to go to the appropriate Google Wallet page.",
              type = "string",
            },
            viewability = {
              description = "The read access of a volume. Possible values are PARTIAL, ALL_PAGES, NO_PAGES or UNKNOWN. This value depends on the country listed above. A value of PARTIAL means that the publisher has allowed some portion of the volume to be viewed publicly, without purchase. This can apply to eBooks as well as non-eBooks. Public domain books will always have a value of ALL_PAGES.",
              type = "string",
            },
            webReaderLink = {
              description = "URL to read this volume on the Google Books site. Link will not allow users to read non-viewable volumes.",
              type = "string",
            },
          },
          type = "object",
        },
        etag = {
          description = "Opaque identifier for a specific version of a volume resource. (In LITE projection)",
          type = "string",
        },
        id = {
          description = "Unique identifier for a volume. (In LITE projection.)",
          type = "string",
        },
        kind = {
          description = "Resource type for a volume. (In LITE projection.)",
          type = "string",
        },
        layerInfo = {
          description = "What layers exist in this volume and high level information about them.",
          properties = {
            layers = {
              description = "A layer should appear here if and only if the layer exists for this book.",
              items = {
                properties = {
                  layerId = {
                    description = "The layer id of this layer (e.g. \"geo\").",
                    type = "string",
                  },
                  volumeAnnotationsVersion = {
                    description = "The current version of this layer's volume annotations. Note that this version applies only to the data in the books.layers.volumeAnnotations.* responses. The actual annotation data is versioned separately.",
                    type = "string",
                  },
                },
                type = "object",
              },
              type = "array",
            },
          },
          type = "object",
        },
        recommendedInfo = {
          description = "Recommendation related information for this volume.",
          properties = {
            explanation = {
              description = "A text explaining why this volume is recommended.",
              type = "string",
            },
          },
          type = "object",
        },
        saleInfo = {
          description = "Any information about a volume related to the eBookstore and/or purchaseability. This information can depend on the country where the request originates from (i.e. books may not be for sale in certain countries).",
          properties = {
            buyLink = {
              description = "URL to purchase this volume on the Google Books site. (In LITE projection)",
              type = "string",
            },
            country = {
              description = "The two-letter ISO_3166-1 country code for which this sale information is valid. (In LITE projection.)",
              type = "string",
            },
            isEbook = {
              description = "Whether or not this volume is an eBook (can be added to the My eBooks shelf).",
              type = "boolean",
            },
            listPrice = {
              description = "Suggested retail price. (In LITE projection.)",
              properties = {
                amount = {
                  description = "Amount in the currency listed below. (In LITE projection.)",
                  format = "double",
                  type = "number",
                },
                currencyCode = {
                  description = "An ISO 4217, three-letter currency code. (In LITE projection.)",
                  type = "string",
                },
              },
              type = "object",
            },
            offers = {
              description = "Offers available for this volume (sales and rentals).",
              items = {
                properties = {
                  finskyOfferType = {
                    description = "The finsky offer type (e.g., PURCHASE=0 RENTAL=3)",
                    format = "int32",
                    type = "integer",
                  },
                  giftable = {
                    description = "Indicates whether the offer is giftable.",
                    type = "boolean",
                  },
                  listPrice = {
                    description = "Offer list (=undiscounted) price in Micros.",
                    properties = {
                      amountInMicros = {
                        format = "double",
                        type = "number",
                      },
                      currencyCode = {
                        type = "string",
                      },
                    },
                    type = "object",
                  },
                  rentalDuration = {
                    description = "The rental duration (for rental offers only).",
                    properties = {
                      count = {
                        format = "double",
                        type = "number",
                      },
                      unit = {
                        type = "string",
                      },
                    },
                    type = "object",
                  },
                  retailPrice = {
                    description = "Offer retail (=discounted) price in Micros",
                    properties = {
                      amountInMicros = {
                        format = "double",
                        type = "number",
                      },
                      currencyCode = {
                        type = "string",
                      },
                    },
                    type = "object",
                  },
                },
                type = "object",
              },
              type = "array",
            },
            onSaleDate = {
              description = "The date on which this book is available for sale.",
              type = "string",
            },
            retailPrice = {
              description = "The actual selling price of the book. This is the same as the suggested retail or list price unless there are offers or discounts on this volume. (In LITE projection.)",
              properties = {
                amount = {
                  description = "Amount in the currency listed below. (In LITE projection.)",
                  format = "double",
                  type = "number",
                },
                currencyCode = {
                  description = "An ISO 4217, three-letter currency code. (In LITE projection.)",
                  type = "string",
                },
              },
              type = "object",
            },
            saleability = {
              description = "Whether or not this book is available for sale or offered for free in the Google eBookstore for the country listed above. Possible values are FOR_SALE, FOR_RENTAL_ONLY, FOR_SALE_AND_RENTAL, FREE, NOT_FOR_SALE, or FOR_PREORDER.",
              type = "string",
            },
          },
          type = "object",
        },
        searchInfo = {
          description = "Search result information related to this volume.",
          properties = {
            textSnippet = {
              description = "A text snippet containing the search query.",
              type = "string",
            },
          },
          type = "object",
        },
        selfLink = {
          description = "URL to this resource. (In LITE projection.)",
          type = "string",
        },
        userInfo = {
          description = "User specific information related to this volume. (e.g. page this user last read or whether they purchased this book)",
          properties = {
            acquiredTime = {
              description = "Timestamp when this volume was acquired by the user. (RFC 3339 UTC date-time format) Acquiring includes purchase, user upload, receiving family sharing, etc.",
              type = "string",
            },
            acquisitionType = {
              description = "How this volume was acquired.",
              format = "int32",
              type = "integer",
            },
            copy = {
              description = "Copy/Paste accounting information.",
              properties = {
                allowedCharacterCount = {
                  format = "int32",
                  type = "integer",
                },
                limitType = {
                  type = "string",
                },
                remainingCharacterCount = {
                  format = "int32",
                  type = "integer",
                },
                updated = {
                  type = "string",
                },
              },
              type = "object",
            },
            entitlementType = {
              description = "Whether this volume is purchased, sample, pd download etc.",
              format = "int32",
              type = "integer",
            },
            familySharing = {
              description = "Information on the ability to share with the family.",
              properties = {
                familyRole = {
                  description = "The role of the user in the family.",
                  type = "string",
                },
                isSharingAllowed = {
                  description = "Whether or not this volume can be shared with the family by the user. This includes sharing eligibility of both the volume and the user. If the value is true, the user can initiate a family sharing action.",
                  type = "boolean",
                },
                isSharingDisabledByFop = {
                  description = "Whether or not sharing this volume is temporarily disabled due to issues with the Family Wallet.",
                  type = "boolean",
                },
              },
              type = "object",
            },
            isFamilySharedFromUser = {
              description = "Whether or not the user shared this volume with the family.",
              type = "boolean",
            },
            isFamilySharedToUser = {
              description = "Whether or not the user received this volume through family sharing.",
              type = "boolean",
            },
            isFamilySharingAllowed = {
              description = "Deprecated: Replaced by familySharing.",
              type = "boolean",
            },
            isFamilySharingDisabledByFop = {
              description = "Deprecated: Replaced by familySharing.",
              type = "boolean",
            },
            isInMyBooks = {
              description = "Whether or not this volume is currently in \"my books.\"",
              type = "boolean",
            },
            isPreordered = {
              description = "Whether or not this volume was pre-ordered by the authenticated user making the request. (In LITE projection.)",
              type = "boolean",
            },
            isPurchased = {
              description = "Whether or not this volume was purchased by the authenticated user making the request. (In LITE projection.)",
              type = "boolean",
            },
            isUploaded = {
              description = "Whether or not this volume was user uploaded.",
              type = "boolean",
            },
            readingPosition = {
              ["$ref"] = "ReadingPosition",
              description = "The user's current reading position in the volume, if one is available. (In LITE projection.)",
            },
            rentalPeriod = {
              description = "Period during this book is/was a valid rental.",
              properties = {
                endUtcSec = {
                  format = "int64",
                  type = "string",
                },
                startUtcSec = {
                  format = "int64",
                  type = "string",
                },
              },
              type = "object",
            },
            rentalState = {
              description = "Whether this book is an active or an expired rental.",
              type = "string",
            },
            review = {
              ["$ref"] = "Review",
              description = "This user's review of this volume, if one exists.",
            },
            updated = {
              description = "Timestamp when this volume was last modified by a user action, such as a reading position update, volume purchase or writing a review. (RFC 3339 UTC date-time format).",
              type = "string",
            },
            userUploadedVolumeInfo = {
              properties = {
                processingState = {
                  type = "string",
                },
              },
              type = "object",
            },
          },
          type = "object",
        },
        volumeInfo = {
          description = "General volume information.",
          properties = {
            allowAnonLogging = {
              description = "Whether anonymous logging should be allowed.",
              type = "boolean",
            },
            authors = {
              description = "The names of the authors and/or editors for this volume. (In LITE projection)",
              items = {
                type = "string",
              },
              type = "array",
            },
            averageRating = {
              description = "The mean review rating for this volume. (min = 1.0, max = 5.0)",
              format = "double",
              type = "number",
            },
            canonicalVolumeLink = {
              description = "Canonical URL for a volume. (In LITE projection.)",
              type = "string",
            },
            categories = {
              description = "A list of subject categories, such as \"Fiction\", \"Suspense\", etc.",
              items = {
                type = "string",
              },
              type = "array",
            },
            comicsContent = {
              description = "Whether the volume has comics content.",
              type = "boolean",
            },
            contentVersion = {
              description = "An identifier for the version of the volume content (text & images). (In LITE projection)",
              type = "string",
            },
            description = {
              description = "A synopsis of the volume. The text of the description is formatted in HTML and includes simple formatting elements, such as b, i, and br tags. (In LITE projection.)",
              type = "string",
            },
            dimensions = {
              description = "Physical dimensions of this volume.",
              properties = {
                height = {
                  description = "Height or length of this volume (in cm).",
                  type = "string",
                },
                thickness = {
                  description = "Thickness of this volume (in cm).",
                  type = "string",
                },
                width = {
                  description = "Width of this volume (in cm).",
                  type = "string",
                },
              },
              type = "object",
            },
            imageLinks = {
              description = "A list of image links for all the sizes that are available. (In LITE projection.)",
              properties = {
                extraLarge = {
                  description = "Image link for extra large size (width of ~1280 pixels). (In LITE projection)",
                  type = "string",
                },
                large = {
                  description = "Image link for large size (width of ~800 pixels). (In LITE projection)",
                  type = "string",
                },
                medium = {
                  description = "Image link for medium size (width of ~575 pixels). (In LITE projection)",
                  type = "string",
                },
                small = {
                  description = "Image link for small size (width of ~300 pixels). (In LITE projection)",
                  type = "string",
                },
                smallThumbnail = {
                  description = "Image link for small thumbnail size (width of ~80 pixels). (In LITE projection)",
                  type = "string",
                },
                thumbnail = {
                  description = "Image link for thumbnail size (width of ~128 pixels). (In LITE projection)",
                  type = "string",
                },
              },
              type = "object",
            },
            industryIdentifiers = {
              description = "Industry standard identifiers for this volume.",
              items = {
                properties = {
                  identifier = {
                    description = "Industry specific volume identifier.",
                    type = "string",
                  },
                  type = {
                    description = "Identifier type. Possible values are ISBN_10, ISBN_13, ISSN and OTHER.",
                    type = "string",
                  },
                },
                type = "object",
              },
              type = "array",
            },
            infoLink = {
              description = "URL to view information about this volume on the Google Books site. (In LITE projection)",
              type = "string",
            },
            language = {
              description = "Best language for this volume (based on content). It is the two-letter ISO 639-1 code such as 'fr', 'en', etc.",
              type = "string",
            },
            mainCategory = {
              description = "The main category to which this volume belongs. It will be the category from the categories list returned below that has the highest weight.",
              type = "string",
            },
            maturityRating = {
              type = "string",
            },
            pageCount = {
              description = "Total number of pages as per publisher metadata.",
              format = "int32",
              type = "integer",
            },
            panelizationSummary = {
              description = "A top-level summary of the panelization info in this volume.",
              properties = {
                containsEpubBubbles = {
                  type = "boolean",
                },
                containsImageBubbles = {
                  type = "boolean",
                },
                epubBubbleVersion = {
                  type = "string",
                },
                imageBubbleVersion = {
                  type = "string",
                },
              },
              type = "object",
            },
            previewLink = {
              description = "URL to preview this volume on the Google Books site.",
              type = "string",
            },
            printType = {
              description = "Type of publication of this volume. Possible values are BOOK or MAGAZINE.",
              type = "string",
            },
            printedPageCount = {
              description = "Total number of printed pages in generated pdf representation.",
              format = "int32",
              type = "integer",
            },
            publishedDate = {
              description = "Date of publication. (In LITE projection.)",
              type = "string",
            },
            publisher = {
              description = "Publisher of this volume. (In LITE projection.)",
              type = "string",
            },
            ratingsCount = {
              description = "The number of review ratings for this volume.",
              format = "int32",
              type = "integer",
            },
            readingModes = {
              description = "The reading modes available for this volume.",
              properties = {
                image = {
                  type = "boolean",
                },
                text = {
                  type = "boolean",
                },
              },
              type = "object",
            },
            samplePageCount = {
              description = "Total number of sample pages as per publisher metadata.",
              format = "int32",
              type = "integer",
            },
            seriesInfo = {
              ["$ref"] = "Volumeseriesinfo",
            },
            subtitle = {
              description = "Volume subtitle. (In LITE projection.)",
              type = "string",
            },
            title = {
              description = "Volume title. (In LITE projection.)",
              type = "string",
            },
          },
          type = "object",
        },
      },
      type = "object",
    },
    Volume2 = {
      id = "Volume2",
      properties = {
        items = {
          description = "A list of volumes.",
          items = {
            ["$ref"] = "Volume",
          },
          type = "array",
        },
        kind = {
          description = "Resource type.",
          type = "string",
        },
        nextPageToken = {
          type = "string",
        },
      },
      type = "object",
    },
    Volumeannotation = {
      id = "Volumeannotation",
      properties = {
        annotationDataId = {
          description = "The annotation data id for this volume annotation.",
          type = "string",
        },
        annotationDataLink = {
          description = "Link to get data for this annotation.",
          type = "string",
        },
        annotationType = {
          description = "The type of annotation this is.",
          type = "string",
        },
        contentRanges = {
          description = "The content ranges to identify the selected text.",
          properties = {
            cfiRange = {
              ["$ref"] = "BooksAnnotationsRange",
              description = "Range in CFI format for this annotation for version above.",
            },
            contentVersion = {
              description = "Content version applicable to ranges below.",
              type = "string",
            },
            gbImageRange = {
              ["$ref"] = "BooksAnnotationsRange",
              description = "Range in GB image format for this annotation for version above.",
            },
            gbTextRange = {
              ["$ref"] = "BooksAnnotationsRange",
              description = "Range in GB text format for this annotation for version above.",
            },
          },
          type = "object",
        },
        data = {
          description = "Data for this annotation.",
          type = "string",
        },
        deleted = {
          description = "Indicates that this annotation is deleted.",
          type = "boolean",
        },
        id = {
          description = "Unique id of this volume annotation.",
          type = "string",
        },
        kind = {
          description = "Resource Type",
          type = "string",
        },
        layerId = {
          description = "The Layer this annotation is for.",
          type = "string",
        },
        pageIds = {
          description = "Pages the annotation spans.",
          items = {
            type = "string",
          },
          type = "array",
        },
        selectedText = {
          description = "Excerpt from the volume.",
          type = "string",
        },
        selfLink = {
          description = "URL to this resource.",
          type = "string",
        },
        updated = {
          description = "Timestamp for the last time this anntoation was updated. (RFC 3339 UTC date-time format).",
          type = "string",
        },
        volumeId = {
          description = "The Volume this annotation is for.",
          type = "string",
        },
      },
      type = "object",
    },
    Volumeannotations = {
      id = "Volumeannotations",
      properties = {
        items = {
          description = "A list of volume annotations.",
          items = {
            ["$ref"] = "Volumeannotation",
          },
          type = "array",
        },
        kind = {
          description = "Resource type",
          type = "string",
        },
        nextPageToken = {
          description = "Token to pass in for pagination for the next page. This will not be present if this request does not have more results.",
          type = "string",
        },
        totalItems = {
          description = "The total number of volume annotations found.",
          format = "int32",
          type = "integer",
        },
        version = {
          description = "The version string for all of the volume annotations in this layer (not just the ones in this response). Note: the version string doesn't apply to the annotation data, just the information in this response (e.g. the location of annotations in the book).",
          type = "string",
        },
      },
      type = "object",
    },
    Volumes = {
      id = "Volumes",
      properties = {
        items = {
          description = "A list of volumes.",
          items = {
            ["$ref"] = "Volume",
          },
          type = "array",
        },
        kind = {
          description = "Resource type.",
          type = "string",
        },
        totalItems = {
          description = "Total number of volumes found. This might be greater than the number of volumes returned in this response if results have been paginated.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    Volumeseriesinfo = {
      id = "Volumeseriesinfo",
      properties = {
        bookDisplayNumber = {
          description = "The display number string. This should be used only for display purposes and the actual sequence should be inferred from the below orderNumber.",
          type = "string",
        },
        kind = {
          description = "Resource type.",
          type = "string",
        },
        shortSeriesBookTitle = {
          description = "Short book title in the context of the series.",
          type = "string",
        },
        volumeSeries = {
          items = {
            properties = {
              issue = {
                description = "List of issues. Applicable only for Collection Edition and Omnibus.",
                items = {
                  properties = {
                    issueDisplayNumber = {
                      type = "string",
                    },
                    issueOrderNumber = {
                      format = "int32",
                      type = "integer",
                    },
                  },
                  type = "object",
                },
                type = "array",
              },
              orderNumber = {
                description = "The book order number in the series.",
                format = "int32",
                type = "integer",
              },
              seriesBookType = {
                description = "The book type in the context of series. Examples - Single Issue, Collection Edition, etc.",
                type = "string",
              },
              seriesId = {
                description = "The series id.",
                type = "string",
              },
            },
            type = "object",
          },
          type = "array",
        },
      },
      type = "object",
    },
  },
  servicePath = "",
  title = "Books API",
  version = "v1",
  version_module = true,
}
