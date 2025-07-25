return {
  auth = {
    oauth2 = {
      scopes = {
        ["https://www.googleapis.com/auth/cloud-platform"] = {
          description = "See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account.",
        },
        ["https://www.googleapis.com/auth/cloud-vision"] = {
          description = "Apply machine learning models to understand and label images",
        },
      },
    },
  },
  basePath = "",
  baseUrl = "https://vision.googleapis.com/",
  batchPath = "batch",
  canonicalName = "Vision",
  description = "Integrates Google Vision features, including image labeling, face, logo, and landmark detection, optical character recognition (OCR), and detection of explicit content, into applications.",
  discoveryVersion = "v1",
  documentationLink = "https://cloud.google.com/vision/",
  fullyEncodeReservedExpansion = true,
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "vision:v1",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://vision.mtls.googleapis.com/",
  name = "vision",
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
    files = {
      methods = {
        annotate = {
          description = "Service that performs image detection and annotation for a batch of files. Now only \"application/pdf\", \"image/tiff\" and \"image/gif\" are supported. This service will extract at most 5 (customers can specify which 5 in AnnotateFileRequest.pages) frames (gif) or pages (pdf or tiff) from each file provided and perform detection and annotation for each image extracted.",
          flatPath = "v1/files:annotate",
          httpMethod = "POST",
          id = "vision.files.annotate",
          parameterOrder = {},
          parameters = {},
          path = "v1/files:annotate",
          request = {
            ["$ref"] = "BatchAnnotateFilesRequest",
          },
          response = {
            ["$ref"] = "BatchAnnotateFilesResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/cloud-vision",
          },
        },
        asyncBatchAnnotate = {
          description = "Run asynchronous image detection and annotation for a list of generic files, such as PDF files, which may contain multiple pages and multiple images per page. Progress and results can be retrieved through the `google.longrunning.Operations` interface. `Operation.metadata` contains `OperationMetadata` (metadata). `Operation.response` contains `AsyncBatchAnnotateFilesResponse` (results).",
          flatPath = "v1/files:asyncBatchAnnotate",
          httpMethod = "POST",
          id = "vision.files.asyncBatchAnnotate",
          parameterOrder = {},
          parameters = {},
          path = "v1/files:asyncBatchAnnotate",
          request = {
            ["$ref"] = "AsyncBatchAnnotateFilesRequest",
          },
          response = {
            ["$ref"] = "Operation",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/cloud-vision",
          },
        },
      },
    },
    images = {
      methods = {
        annotate = {
          description = "Run image detection and annotation for a batch of images.",
          flatPath = "v1/images:annotate",
          httpMethod = "POST",
          id = "vision.images.annotate",
          parameterOrder = {},
          parameters = {},
          path = "v1/images:annotate",
          request = {
            ["$ref"] = "BatchAnnotateImagesRequest",
          },
          response = {
            ["$ref"] = "BatchAnnotateImagesResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/cloud-vision",
          },
        },
        asyncBatchAnnotate = {
          description = "Run asynchronous image detection and annotation for a list of images. Progress and results can be retrieved through the `google.longrunning.Operations` interface. `Operation.metadata` contains `OperationMetadata` (metadata). `Operation.response` contains `AsyncBatchAnnotateImagesResponse` (results). This service will write image annotation outputs to json files in customer GCS bucket, each json file containing BatchAnnotateImagesResponse proto.",
          flatPath = "v1/images:asyncBatchAnnotate",
          httpMethod = "POST",
          id = "vision.images.asyncBatchAnnotate",
          parameterOrder = {},
          parameters = {},
          path = "v1/images:asyncBatchAnnotate",
          request = {
            ["$ref"] = "AsyncBatchAnnotateImagesRequest",
          },
          response = {
            ["$ref"] = "Operation",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/cloud-vision",
          },
        },
      },
    },
    locations = {
      resources = {
        operations = {
          methods = {
            get = {
              description = "Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.",
              flatPath = "v1/locations/{locationsId}/operations/{operationsId}",
              httpMethod = "GET",
              id = "vision.locations.operations.get",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "The name of the operation resource.",
                  location = "path",
                  pattern = "^locations/[^/]+/operations/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}",
              response = {
                ["$ref"] = "Operation",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/cloud-vision",
              },
            },
          },
        },
      },
    },
    operations = {
      methods = {
        cancel = {
          description = "Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of 1, corresponding to `Code.CANCELLED`.",
          flatPath = "v1/operations/{operationsId}:cancel",
          httpMethod = "POST",
          id = "vision.operations.cancel",
          parameterOrder = {
            "name",
          },
          parameters = {
            name = {
              description = "The name of the operation resource to be cancelled.",
              location = "path",
              pattern = "^operations/.*$",
              required = true,
              type = "string",
            },
          },
          path = "v1/{+name}:cancel",
          request = {
            ["$ref"] = "CancelOperationRequest",
          },
          response = {
            ["$ref"] = "Empty",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/cloud-vision",
          },
        },
        delete = {
          description = "Deletes a long-running operation. This method indicates that the client is no longer interested in the operation result. It does not cancel the operation. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.",
          flatPath = "v1/operations/{operationsId}",
          httpMethod = "DELETE",
          id = "vision.operations.delete",
          parameterOrder = {
            "name",
          },
          parameters = {
            name = {
              description = "The name of the operation resource to be deleted.",
              location = "path",
              pattern = "^operations/.*$",
              required = true,
              type = "string",
            },
          },
          path = "v1/{+name}",
          response = {
            ["$ref"] = "Empty",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/cloud-vision",
          },
        },
        get = {
          description = "Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.",
          flatPath = "v1/operations/{operationsId}",
          httpMethod = "GET",
          id = "vision.operations.get",
          parameterOrder = {
            "name",
          },
          parameters = {
            name = {
              description = "The name of the operation resource.",
              location = "path",
              pattern = "^operations/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "v1/{+name}",
          response = {
            ["$ref"] = "Operation",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/cloud-vision",
          },
        },
        list = {
          description = "Lists operations that match the specified filter in the request. If the server doesn't support this method, it returns `UNIMPLEMENTED`. NOTE: the `name` binding allows API services to override the binding to use different resource name schemes, such as `users/*/operations`. To override the binding, API services can add a binding such as `\"/v1/{name=users/*}/operations\"` to their service configuration. For backwards compatibility, the default name includes the operations collection id, however overriding users must ensure the name binding is the parent resource, without the operations collection id.",
          flatPath = "v1/operations",
          httpMethod = "GET",
          id = "vision.operations.list",
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
              pattern = "^operations$",
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
          path = "v1/{+name}",
          response = {
            ["$ref"] = "ListOperationsResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/cloud-vision",
          },
        },
      },
    },
    projects = {
      resources = {
        files = {
          methods = {
            annotate = {
              description = "Service that performs image detection and annotation for a batch of files. Now only \"application/pdf\", \"image/tiff\" and \"image/gif\" are supported. This service will extract at most 5 (customers can specify which 5 in AnnotateFileRequest.pages) frames (gif) or pages (pdf or tiff) from each file provided and perform detection and annotation for each image extracted.",
              flatPath = "v1/projects/{projectsId}/files:annotate",
              httpMethod = "POST",
              id = "vision.projects.files.annotate",
              parameterOrder = {
                "parent",
              },
              parameters = {
                parent = {
                  description = "Optional. Target project and location to make a call. Format: `projects/{project-id}/locations/{location-id}`. If no parent is specified, a region will be chosen automatically. Supported location-ids: `us`: USA country only, `asia`: East asia areas, like Japan, Taiwan, `eu`: The European Union. Example: `projects/project-A/locations/eu`.",
                  location = "path",
                  pattern = "^projects/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/files:annotate",
              request = {
                ["$ref"] = "BatchAnnotateFilesRequest",
              },
              response = {
                ["$ref"] = "BatchAnnotateFilesResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/cloud-vision",
              },
            },
            asyncBatchAnnotate = {
              description = "Run asynchronous image detection and annotation for a list of generic files, such as PDF files, which may contain multiple pages and multiple images per page. Progress and results can be retrieved through the `google.longrunning.Operations` interface. `Operation.metadata` contains `OperationMetadata` (metadata). `Operation.response` contains `AsyncBatchAnnotateFilesResponse` (results).",
              flatPath = "v1/projects/{projectsId}/files:asyncBatchAnnotate",
              httpMethod = "POST",
              id = "vision.projects.files.asyncBatchAnnotate",
              parameterOrder = {
                "parent",
              },
              parameters = {
                parent = {
                  description = "Optional. Target project and location to make a call. Format: `projects/{project-id}/locations/{location-id}`. If no parent is specified, a region will be chosen automatically. Supported location-ids: `us`: USA country only, `asia`: East asia areas, like Japan, Taiwan, `eu`: The European Union. Example: `projects/project-A/locations/eu`.",
                  location = "path",
                  pattern = "^projects/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/files:asyncBatchAnnotate",
              request = {
                ["$ref"] = "AsyncBatchAnnotateFilesRequest",
              },
              response = {
                ["$ref"] = "Operation",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/cloud-vision",
              },
            },
          },
        },
        images = {
          methods = {
            annotate = {
              description = "Run image detection and annotation for a batch of images.",
              flatPath = "v1/projects/{projectsId}/images:annotate",
              httpMethod = "POST",
              id = "vision.projects.images.annotate",
              parameterOrder = {
                "parent",
              },
              parameters = {
                parent = {
                  description = "Optional. Target project and location to make a call. Format: `projects/{project-id}/locations/{location-id}`. If no parent is specified, a region will be chosen automatically. Supported location-ids: `us`: USA country only, `asia`: East asia areas, like Japan, Taiwan, `eu`: The European Union. Example: `projects/project-A/locations/eu`.",
                  location = "path",
                  pattern = "^projects/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/images:annotate",
              request = {
                ["$ref"] = "BatchAnnotateImagesRequest",
              },
              response = {
                ["$ref"] = "BatchAnnotateImagesResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/cloud-vision",
              },
            },
            asyncBatchAnnotate = {
              description = "Run asynchronous image detection and annotation for a list of images. Progress and results can be retrieved through the `google.longrunning.Operations` interface. `Operation.metadata` contains `OperationMetadata` (metadata). `Operation.response` contains `AsyncBatchAnnotateImagesResponse` (results). This service will write image annotation outputs to json files in customer GCS bucket, each json file containing BatchAnnotateImagesResponse proto.",
              flatPath = "v1/projects/{projectsId}/images:asyncBatchAnnotate",
              httpMethod = "POST",
              id = "vision.projects.images.asyncBatchAnnotate",
              parameterOrder = {
                "parent",
              },
              parameters = {
                parent = {
                  description = "Optional. Target project and location to make a call. Format: `projects/{project-id}/locations/{location-id}`. If no parent is specified, a region will be chosen automatically. Supported location-ids: `us`: USA country only, `asia`: East asia areas, like Japan, Taiwan, `eu`: The European Union. Example: `projects/project-A/locations/eu`.",
                  location = "path",
                  pattern = "^projects/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/images:asyncBatchAnnotate",
              request = {
                ["$ref"] = "AsyncBatchAnnotateImagesRequest",
              },
              response = {
                ["$ref"] = "Operation",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/cloud-vision",
              },
            },
          },
        },
        locations = {
          resources = {
            files = {
              methods = {
                annotate = {
                  description = "Service that performs image detection and annotation for a batch of files. Now only \"application/pdf\", \"image/tiff\" and \"image/gif\" are supported. This service will extract at most 5 (customers can specify which 5 in AnnotateFileRequest.pages) frames (gif) or pages (pdf or tiff) from each file provided and perform detection and annotation for each image extracted.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/files:annotate",
                  httpMethod = "POST",
                  id = "vision.projects.locations.files.annotate",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    parent = {
                      description = "Optional. Target project and location to make a call. Format: `projects/{project-id}/locations/{location-id}`. If no parent is specified, a region will be chosen automatically. Supported location-ids: `us`: USA country only, `asia`: East asia areas, like Japan, Taiwan, `eu`: The European Union. Example: `projects/project-A/locations/eu`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/files:annotate",
                  request = {
                    ["$ref"] = "BatchAnnotateFilesRequest",
                  },
                  response = {
                    ["$ref"] = "BatchAnnotateFilesResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/cloud-vision",
                  },
                },
                asyncBatchAnnotate = {
                  description = "Run asynchronous image detection and annotation for a list of generic files, such as PDF files, which may contain multiple pages and multiple images per page. Progress and results can be retrieved through the `google.longrunning.Operations` interface. `Operation.metadata` contains `OperationMetadata` (metadata). `Operation.response` contains `AsyncBatchAnnotateFilesResponse` (results).",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/files:asyncBatchAnnotate",
                  httpMethod = "POST",
                  id = "vision.projects.locations.files.asyncBatchAnnotate",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    parent = {
                      description = "Optional. Target project and location to make a call. Format: `projects/{project-id}/locations/{location-id}`. If no parent is specified, a region will be chosen automatically. Supported location-ids: `us`: USA country only, `asia`: East asia areas, like Japan, Taiwan, `eu`: The European Union. Example: `projects/project-A/locations/eu`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/files:asyncBatchAnnotate",
                  request = {
                    ["$ref"] = "AsyncBatchAnnotateFilesRequest",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/cloud-vision",
                  },
                },
              },
            },
            images = {
              methods = {
                annotate = {
                  description = "Run image detection and annotation for a batch of images.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/images:annotate",
                  httpMethod = "POST",
                  id = "vision.projects.locations.images.annotate",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    parent = {
                      description = "Optional. Target project and location to make a call. Format: `projects/{project-id}/locations/{location-id}`. If no parent is specified, a region will be chosen automatically. Supported location-ids: `us`: USA country only, `asia`: East asia areas, like Japan, Taiwan, `eu`: The European Union. Example: `projects/project-A/locations/eu`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/images:annotate",
                  request = {
                    ["$ref"] = "BatchAnnotateImagesRequest",
                  },
                  response = {
                    ["$ref"] = "BatchAnnotateImagesResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/cloud-vision",
                  },
                },
                asyncBatchAnnotate = {
                  description = "Run asynchronous image detection and annotation for a list of images. Progress and results can be retrieved through the `google.longrunning.Operations` interface. `Operation.metadata` contains `OperationMetadata` (metadata). `Operation.response` contains `AsyncBatchAnnotateImagesResponse` (results). This service will write image annotation outputs to json files in customer GCS bucket, each json file containing BatchAnnotateImagesResponse proto.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/images:asyncBatchAnnotate",
                  httpMethod = "POST",
                  id = "vision.projects.locations.images.asyncBatchAnnotate",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    parent = {
                      description = "Optional. Target project and location to make a call. Format: `projects/{project-id}/locations/{location-id}`. If no parent is specified, a region will be chosen automatically. Supported location-ids: `us`: USA country only, `asia`: East asia areas, like Japan, Taiwan, `eu`: The European Union. Example: `projects/project-A/locations/eu`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/images:asyncBatchAnnotate",
                  request = {
                    ["$ref"] = "AsyncBatchAnnotateImagesRequest",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/cloud-vision",
                  },
                },
              },
            },
            operations = {
              methods = {
                get = {
                  description = "Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/operations/{operationsId}",
                  httpMethod = "GET",
                  id = "vision.projects.locations.operations.get",
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
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/cloud-vision",
                  },
                },
              },
            },
            productSets = {
              methods = {
                addProduct = {
                  description = "Adds a Product to the specified ProductSet. If the Product is already present, no change is made. One Product can be added to at most 100 ProductSets. Possible errors: * Returns NOT_FOUND if the Product or the ProductSet doesn't exist.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/productSets/{productSetsId}:addProduct",
                  httpMethod = "POST",
                  id = "vision.projects.locations.productSets.addProduct",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The resource name for the ProductSet to modify. Format is: `projects/PROJECT_ID/locations/LOC_ID/productSets/PRODUCT_SET_ID`",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/productSets/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}:addProduct",
                  request = {
                    ["$ref"] = "AddProductToProductSetRequest",
                  },
                  response = {
                    ["$ref"] = "Empty",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/cloud-vision",
                  },
                },
                create = {
                  description = "Creates and returns a new ProductSet resource. Possible errors: * Returns INVALID_ARGUMENT if display_name is missing, or is longer than 4096 characters.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/productSets",
                  httpMethod = "POST",
                  id = "vision.projects.locations.productSets.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    parent = {
                      description = "Required. The project in which the ProductSet should be created. Format is `projects/PROJECT_ID/locations/LOC_ID`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    productSetId = {
                      description = "A user-supplied resource id for this ProductSet. If set, the server will attempt to use this value as the resource id. If it is already in use, an error is returned with code ALREADY_EXISTS. Must be at most 128 characters long. It cannot contain the character `/`.",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/productSets",
                  request = {
                    ["$ref"] = "ProductSet",
                  },
                  response = {
                    ["$ref"] = "ProductSet",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/cloud-vision",
                  },
                },
                delete = {
                  description = "Permanently deletes a ProductSet. Products and ReferenceImages in the ProductSet are not deleted. The actual image files are not deleted from Google Cloud Storage.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/productSets/{productSetsId}",
                  httpMethod = "DELETE",
                  id = "vision.projects.locations.productSets.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Resource name of the ProductSet to delete. Format is: `projects/PROJECT_ID/locations/LOC_ID/productSets/PRODUCT_SET_ID`",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/productSets/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "Empty",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/cloud-vision",
                  },
                },
                get = {
                  description = "Gets information associated with a ProductSet. Possible errors: * Returns NOT_FOUND if the ProductSet does not exist.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/productSets/{productSetsId}",
                  httpMethod = "GET",
                  id = "vision.projects.locations.productSets.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Resource name of the ProductSet to get. Format is: `projects/PROJECT_ID/locations/LOC_ID/productSets/PRODUCT_SET_ID`",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/productSets/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "ProductSet",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/cloud-vision",
                  },
                },
                import = {
                  description = "Asynchronous API that imports a list of reference images to specified product sets based on a list of image information. The google.longrunning.Operation API can be used to keep track of the progress and results of the request. `Operation.metadata` contains `BatchOperationMetadata`. (progress) `Operation.response` contains `ImportProductSetsResponse`. (results) The input source of this method is a csv file on Google Cloud Storage. For the format of the csv file please see ImportProductSetsGcsSource.csv_file_uri.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/productSets:import",
                  httpMethod = "POST",
                  id = "vision.projects.locations.productSets.import",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    parent = {
                      description = "Required. The project in which the ProductSets should be imported. Format is `projects/PROJECT_ID/locations/LOC_ID`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/productSets:import",
                  request = {
                    ["$ref"] = "ImportProductSetsRequest",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/cloud-vision",
                  },
                },
                list = {
                  description = "Lists ProductSets in an unspecified order. Possible errors: * Returns INVALID_ARGUMENT if page_size is greater than 100, or less than 1.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/productSets",
                  httpMethod = "GET",
                  id = "vision.projects.locations.productSets.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    pageSize = {
                      description = "The maximum number of items to return. Default 10, maximum 100.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "The next_page_token returned from a previous List request, if any.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The project from which ProductSets should be listed. Format is `projects/PROJECT_ID/locations/LOC_ID`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/productSets",
                  response = {
                    ["$ref"] = "ListProductSetsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/cloud-vision",
                  },
                },
                patch = {
                  description = "Makes changes to a ProductSet resource. Only display_name can be updated currently. Possible errors: * Returns NOT_FOUND if the ProductSet does not exist. * Returns INVALID_ARGUMENT if display_name is present in update_mask but missing from the request or longer than 4096 characters.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/productSets/{productSetsId}",
                  httpMethod = "PATCH",
                  id = "vision.projects.locations.productSets.patch",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "The resource name of the ProductSet. Format is: `projects/PROJECT_ID/locations/LOC_ID/productSets/PRODUCT_SET_ID`. This field is ignored when creating a ProductSet.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/productSets/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    updateMask = {
                      description = "The FieldMask that specifies which fields to update. If update_mask isn't specified, all mutable fields are to be updated. Valid mask path is `display_name`.",
                      format = "google-fieldmask",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  request = {
                    ["$ref"] = "ProductSet",
                  },
                  response = {
                    ["$ref"] = "ProductSet",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/cloud-vision",
                  },
                },
                removeProduct = {
                  description = "Removes a Product from the specified ProductSet.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/productSets/{productSetsId}:removeProduct",
                  httpMethod = "POST",
                  id = "vision.projects.locations.productSets.removeProduct",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The resource name for the ProductSet to modify. Format is: `projects/PROJECT_ID/locations/LOC_ID/productSets/PRODUCT_SET_ID`",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/productSets/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}:removeProduct",
                  request = {
                    ["$ref"] = "RemoveProductFromProductSetRequest",
                  },
                  response = {
                    ["$ref"] = "Empty",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/cloud-vision",
                  },
                },
              },
              resources = {
                products = {
                  methods = {
                    list = {
                      description = "Lists the Products in a ProductSet, in an unspecified order. If the ProductSet does not exist, the products field of the response will be empty. Possible errors: * Returns INVALID_ARGUMENT if page_size is greater than 100 or less than 1.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/productSets/{productSetsId}/products",
                      httpMethod = "GET",
                      id = "vision.projects.locations.productSets.products.list",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The ProductSet resource for which to retrieve Products. Format is: `projects/PROJECT_ID/locations/LOC_ID/productSets/PRODUCT_SET_ID`",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/productSets/[^/]+$",
                          required = true,
                          type = "string",
                        },
                        pageSize = {
                          description = "The maximum number of items to return. Default 10, maximum 100.",
                          format = "int32",
                          location = "query",
                          type = "integer",
                        },
                        pageToken = {
                          description = "The next_page_token returned from a previous List request, if any.",
                          location = "query",
                          type = "string",
                        },
                      },
                      path = "v1/{+name}/products",
                      response = {
                        ["$ref"] = "ListProductsInProductSetResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                        "https://www.googleapis.com/auth/cloud-vision",
                      },
                    },
                  },
                },
              },
            },
            products = {
              methods = {
                create = {
                  description = "Creates and returns a new product resource. Possible errors: * Returns INVALID_ARGUMENT if display_name is missing or longer than 4096 characters. * Returns INVALID_ARGUMENT if description is longer than 4096 characters. * Returns INVALID_ARGUMENT if product_category is missing or invalid.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/products",
                  httpMethod = "POST",
                  id = "vision.projects.locations.products.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    parent = {
                      description = "Required. The project in which the Product should be created. Format is `projects/PROJECT_ID/locations/LOC_ID`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    productId = {
                      description = "A user-supplied resource id for this Product. If set, the server will attempt to use this value as the resource id. If it is already in use, an error is returned with code ALREADY_EXISTS. Must be at most 128 characters long. It cannot contain the character `/`.",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/products",
                  request = {
                    ["$ref"] = "Product",
                  },
                  response = {
                    ["$ref"] = "Product",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/cloud-vision",
                  },
                },
                delete = {
                  description = "Permanently deletes a product and its reference images. Metadata of the product and all its images will be deleted right away, but search queries against ProductSets containing the product may still work until all related caches are refreshed.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/products/{productsId}",
                  httpMethod = "DELETE",
                  id = "vision.projects.locations.products.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Resource name of product to delete. Format is: `projects/PROJECT_ID/locations/LOC_ID/products/PRODUCT_ID`",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/products/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "Empty",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/cloud-vision",
                  },
                },
                get = {
                  description = "Gets information associated with a Product. Possible errors: * Returns NOT_FOUND if the Product does not exist.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/products/{productsId}",
                  httpMethod = "GET",
                  id = "vision.projects.locations.products.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Resource name of the Product to get. Format is: `projects/PROJECT_ID/locations/LOC_ID/products/PRODUCT_ID`",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/products/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "Product",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/cloud-vision",
                  },
                },
                list = {
                  description = "Lists products in an unspecified order. Possible errors: * Returns INVALID_ARGUMENT if page_size is greater than 100 or less than 1.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/products",
                  httpMethod = "GET",
                  id = "vision.projects.locations.products.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    pageSize = {
                      description = "The maximum number of items to return. Default 10, maximum 100.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "The next_page_token returned from a previous List request, if any.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The project OR ProductSet from which Products should be listed. Format: `projects/PROJECT_ID/locations/LOC_ID`",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/products",
                  response = {
                    ["$ref"] = "ListProductsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/cloud-vision",
                  },
                },
                patch = {
                  description = "Makes changes to a Product resource. Only the `display_name`, `description`, and `labels` fields can be updated right now. If labels are updated, the change will not be reflected in queries until the next index time. Possible errors: * Returns NOT_FOUND if the Product does not exist. * Returns INVALID_ARGUMENT if display_name is present in update_mask but is missing from the request or longer than 4096 characters. * Returns INVALID_ARGUMENT if description is present in update_mask but is longer than 4096 characters. * Returns INVALID_ARGUMENT if product_category is present in update_mask.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/products/{productsId}",
                  httpMethod = "PATCH",
                  id = "vision.projects.locations.products.patch",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "The resource name of the product. Format is: `projects/PROJECT_ID/locations/LOC_ID/products/PRODUCT_ID`. This field is ignored when creating a product.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/products/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    updateMask = {
                      description = "The FieldMask that specifies which fields to update. If update_mask isn't specified, all mutable fields are to be updated. Valid mask paths include `product_labels`, `display_name`, and `description`.",
                      format = "google-fieldmask",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  request = {
                    ["$ref"] = "Product",
                  },
                  response = {
                    ["$ref"] = "Product",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/cloud-vision",
                  },
                },
                purge = {
                  description = "Asynchronous API to delete all Products in a ProductSet or all Products that are in no ProductSet. If a Product is a member of the specified ProductSet in addition to other ProductSets, the Product will still be deleted. It is recommended to not delete the specified ProductSet until after this operation has completed. It is also recommended to not add any of the Products involved in the batch delete to a new ProductSet while this operation is running because those Products may still end up deleted. It's not possible to undo the PurgeProducts operation. Therefore, it is recommended to keep the csv files used in ImportProductSets (if that was how you originally built the Product Set) before starting PurgeProducts, in case you need to re-import the data after deletion. If the plan is to purge all of the Products from a ProductSet and then re-use the empty ProductSet to re-import new Products into the empty ProductSet, you must wait until the PurgeProducts operation has finished for that ProductSet. The google.longrunning.Operation API can be used to keep track of the progress and results of the request. `Operation.metadata` contains `BatchOperationMetadata`. (progress)",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/products:purge",
                  httpMethod = "POST",
                  id = "vision.projects.locations.products.purge",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    parent = {
                      description = "Required. The project and location in which the Products should be deleted. Format is `projects/PROJECT_ID/locations/LOC_ID`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/products:purge",
                  request = {
                    ["$ref"] = "PurgeProductsRequest",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/cloud-vision",
                  },
                },
              },
              resources = {
                referenceImages = {
                  methods = {
                    create = {
                      description = "Creates and returns a new ReferenceImage resource. The `bounding_poly` field is optional. If `bounding_poly` is not specified, the system will try to detect regions of interest in the image that are compatible with the product_category on the parent product. If it is specified, detection is ALWAYS skipped. The system converts polygons into non-rotated rectangles. Note that the pipeline will resize the image if the image resolution is too large to process (above 50MP). Possible errors: * Returns INVALID_ARGUMENT if the image_uri is missing or longer than 4096 characters. * Returns INVALID_ARGUMENT if the product does not exist. * Returns INVALID_ARGUMENT if bounding_poly is not provided, and nothing compatible with the parent product's product_category is detected. * Returns INVALID_ARGUMENT if bounding_poly contains more than 10 polygons.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/products/{productsId}/referenceImages",
                      httpMethod = "POST",
                      id = "vision.projects.locations.products.referenceImages.create",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        parent = {
                          description = "Required. Resource name of the product in which to create the reference image. Format is `projects/PROJECT_ID/locations/LOC_ID/products/PRODUCT_ID`.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/products/[^/]+$",
                          required = true,
                          type = "string",
                        },
                        referenceImageId = {
                          description = "A user-supplied resource id for the ReferenceImage to be added. If set, the server will attempt to use this value as the resource id. If it is already in use, an error is returned with code ALREADY_EXISTS. Must be at most 128 characters long. It cannot contain the character `/`.",
                          location = "query",
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/referenceImages",
                      request = {
                        ["$ref"] = "ReferenceImage",
                      },
                      response = {
                        ["$ref"] = "ReferenceImage",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                        "https://www.googleapis.com/auth/cloud-vision",
                      },
                    },
                    delete = {
                      description = "Permanently deletes a reference image. The image metadata will be deleted right away, but search queries against ProductSets containing the image may still work until all related caches are refreshed. The actual image files are not deleted from Google Cloud Storage.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/products/{productsId}/referenceImages/{referenceImagesId}",
                      httpMethod = "DELETE",
                      id = "vision.projects.locations.products.referenceImages.delete",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The resource name of the reference image to delete. Format is: `projects/PROJECT_ID/locations/LOC_ID/products/PRODUCT_ID/referenceImages/IMAGE_ID`",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/products/[^/]+/referenceImages/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}",
                      response = {
                        ["$ref"] = "Empty",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                        "https://www.googleapis.com/auth/cloud-vision",
                      },
                    },
                    get = {
                      description = "Gets information associated with a ReferenceImage. Possible errors: * Returns NOT_FOUND if the specified image does not exist.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/products/{productsId}/referenceImages/{referenceImagesId}",
                      httpMethod = "GET",
                      id = "vision.projects.locations.products.referenceImages.get",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The resource name of the ReferenceImage to get. Format is: `projects/PROJECT_ID/locations/LOC_ID/products/PRODUCT_ID/referenceImages/IMAGE_ID`.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/products/[^/]+/referenceImages/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}",
                      response = {
                        ["$ref"] = "ReferenceImage",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                        "https://www.googleapis.com/auth/cloud-vision",
                      },
                    },
                    list = {
                      description = "Lists reference images. Possible errors: * Returns NOT_FOUND if the parent product does not exist. * Returns INVALID_ARGUMENT if the page_size is greater than 100, or less than 1.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/products/{productsId}/referenceImages",
                      httpMethod = "GET",
                      id = "vision.projects.locations.products.referenceImages.list",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        pageSize = {
                          description = "The maximum number of items to return. Default 10, maximum 100.",
                          format = "int32",
                          location = "query",
                          type = "integer",
                        },
                        pageToken = {
                          description = "A token identifying a page of results to be returned. This is the value of `nextPageToken` returned in a previous reference image list request. Defaults to the first page if not specified.",
                          location = "query",
                          type = "string",
                        },
                        parent = {
                          description = "Required. Resource name of the product containing the reference images. Format is `projects/PROJECT_ID/locations/LOC_ID/products/PRODUCT_ID`.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/products/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/referenceImages",
                      response = {
                        ["$ref"] = "ListReferenceImagesResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                        "https://www.googleapis.com/auth/cloud-vision",
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
            get = {
              description = "Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.",
              flatPath = "v1/projects/{projectsId}/operations/{operationsId}",
              httpMethod = "GET",
              id = "vision.projects.operations.get",
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
                ["$ref"] = "Operation",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/cloud-vision",
              },
            },
          },
        },
      },
    },
  },
  revision = "20230106",
  rootUrl = "https://vision.googleapis.com/",
  schemas = {
    AddProductToProductSetRequest = {
      description = "Request message for the `AddProductToProductSet` method.",
      id = "AddProductToProductSetRequest",
      properties = {
        product = {
          description = "Required. The resource name for the Product to be added to this ProductSet. Format is: `projects/PROJECT_ID/locations/LOC_ID/products/PRODUCT_ID`",
          type = "string",
        },
      },
      type = "object",
    },
    AnnotateFileRequest = {
      description = "A request to annotate one single file, e.g. a PDF, TIFF or GIF file.",
      id = "AnnotateFileRequest",
      properties = {
        features = {
          description = "Required. Requested features.",
          items = {
            ["$ref"] = "Feature",
          },
          type = "array",
        },
        imageContext = {
          ["$ref"] = "ImageContext",
          description = "Additional context that may accompany the image(s) in the file.",
        },
        inputConfig = {
          ["$ref"] = "InputConfig",
          description = "Required. Information about the input file.",
        },
        pages = {
          description = "Pages of the file to perform image annotation. Pages starts from 1, we assume the first page of the file is page 1. At most 5 pages are supported per request. Pages can be negative. Page 1 means the first page. Page 2 means the second page. Page -1 means the last page. Page -2 means the second to the last page. If the file is GIF instead of PDF or TIFF, page refers to GIF frames. If this field is empty, by default the service performs image annotation for the first 5 pages of the file.",
          items = {
            format = "int32",
            type = "integer",
          },
          type = "array",
        },
      },
      type = "object",
    },
    AnnotateFileResponse = {
      description = "Response to a single file annotation request. A file may contain one or more images, which individually have their own responses.",
      id = "AnnotateFileResponse",
      properties = {
        error = {
          ["$ref"] = "Status",
          description = "If set, represents the error message for the failed request. The `responses` field will not be set in this case.",
        },
        inputConfig = {
          ["$ref"] = "InputConfig",
          description = "Information about the file for which this response is generated.",
        },
        responses = {
          description = "Individual responses to images found within the file. This field will be empty if the `error` field is set.",
          items = {
            ["$ref"] = "AnnotateImageResponse",
          },
          type = "array",
        },
        totalPages = {
          description = "This field gives the total number of pages in the file.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    AnnotateImageRequest = {
      description = "Request for performing Google Cloud Vision API tasks over a user-provided image, with user-requested features, and with context information.",
      id = "AnnotateImageRequest",
      properties = {
        features = {
          description = "Requested features.",
          items = {
            ["$ref"] = "Feature",
          },
          type = "array",
        },
        image = {
          ["$ref"] = "Image",
          description = "The image to be processed.",
        },
        imageContext = {
          ["$ref"] = "ImageContext",
          description = "Additional context that may accompany the image.",
        },
      },
      type = "object",
    },
    AnnotateImageResponse = {
      description = "Response to an image annotation request.",
      id = "AnnotateImageResponse",
      properties = {
        context = {
          ["$ref"] = "ImageAnnotationContext",
          description = "If present, contextual information is needed to understand where this image comes from.",
        },
        cropHintsAnnotation = {
          ["$ref"] = "CropHintsAnnotation",
          description = "If present, crop hints have completed successfully.",
        },
        error = {
          ["$ref"] = "Status",
          description = "If set, represents the error message for the operation. Note that filled-in image annotations are guaranteed to be correct, even when `error` is set.",
        },
        faceAnnotations = {
          description = "If present, face detection has completed successfully.",
          items = {
            ["$ref"] = "FaceAnnotation",
          },
          type = "array",
        },
        fullTextAnnotation = {
          ["$ref"] = "TextAnnotation",
          description = "If present, text (OCR) detection or document (OCR) text detection has completed successfully. This annotation provides the structural hierarchy for the OCR detected text.",
        },
        imagePropertiesAnnotation = {
          ["$ref"] = "ImageProperties",
          description = "If present, image properties were extracted successfully.",
        },
        labelAnnotations = {
          description = "If present, label detection has completed successfully.",
          items = {
            ["$ref"] = "EntityAnnotation",
          },
          type = "array",
        },
        landmarkAnnotations = {
          description = "If present, landmark detection has completed successfully.",
          items = {
            ["$ref"] = "EntityAnnotation",
          },
          type = "array",
        },
        localizedObjectAnnotations = {
          description = "If present, localized object detection has completed successfully. This will be sorted descending by confidence score.",
          items = {
            ["$ref"] = "LocalizedObjectAnnotation",
          },
          type = "array",
        },
        logoAnnotations = {
          description = "If present, logo detection has completed successfully.",
          items = {
            ["$ref"] = "EntityAnnotation",
          },
          type = "array",
        },
        productSearchResults = {
          ["$ref"] = "ProductSearchResults",
          description = "If present, product search has completed successfully.",
        },
        safeSearchAnnotation = {
          ["$ref"] = "SafeSearchAnnotation",
          description = "If present, safe-search annotation has completed successfully.",
        },
        textAnnotations = {
          description = "If present, text (OCR) detection has completed successfully.",
          items = {
            ["$ref"] = "EntityAnnotation",
          },
          type = "array",
        },
        webDetection = {
          ["$ref"] = "WebDetection",
          description = "If present, web detection has completed successfully.",
        },
      },
      type = "object",
    },
    AsyncAnnotateFileRequest = {
      description = "An offline file annotation request.",
      id = "AsyncAnnotateFileRequest",
      properties = {
        features = {
          description = "Required. Requested features.",
          items = {
            ["$ref"] = "Feature",
          },
          type = "array",
        },
        imageContext = {
          ["$ref"] = "ImageContext",
          description = "Additional context that may accompany the image(s) in the file.",
        },
        inputConfig = {
          ["$ref"] = "InputConfig",
          description = "Required. Information about the input file.",
        },
        outputConfig = {
          ["$ref"] = "OutputConfig",
          description = "Required. The desired output location and metadata (e.g. format).",
        },
      },
      type = "object",
    },
    AsyncAnnotateFileResponse = {
      description = "The response for a single offline file annotation request.",
      id = "AsyncAnnotateFileResponse",
      properties = {
        outputConfig = {
          ["$ref"] = "OutputConfig",
          description = "The output location and metadata from AsyncAnnotateFileRequest.",
        },
      },
      type = "object",
    },
    AsyncBatchAnnotateFilesRequest = {
      description = "Multiple async file annotation requests are batched into a single service call.",
      id = "AsyncBatchAnnotateFilesRequest",
      properties = {
        parent = {
          description = "Optional. Target project and location to make a call. Format: `projects/{project-id}/locations/{location-id}`. If no parent is specified, a region will be chosen automatically. Supported location-ids: `us`: USA country only, `asia`: East asia areas, like Japan, Taiwan, `eu`: The European Union. Example: `projects/project-A/locations/eu`.",
          type = "string",
        },
        requests = {
          description = "Required. Individual async file annotation requests for this batch.",
          items = {
            ["$ref"] = "AsyncAnnotateFileRequest",
          },
          type = "array",
        },
      },
      type = "object",
    },
    AsyncBatchAnnotateFilesResponse = {
      description = "Response to an async batch file annotation request.",
      id = "AsyncBatchAnnotateFilesResponse",
      properties = {
        responses = {
          description = "The list of file annotation responses, one for each request in AsyncBatchAnnotateFilesRequest.",
          items = {
            ["$ref"] = "AsyncAnnotateFileResponse",
          },
          type = "array",
        },
      },
      type = "object",
    },
    AsyncBatchAnnotateImagesRequest = {
      description = "Request for async image annotation for a list of images.",
      id = "AsyncBatchAnnotateImagesRequest",
      properties = {
        outputConfig = {
          ["$ref"] = "OutputConfig",
          description = "Required. The desired output location and metadata (e.g. format).",
        },
        parent = {
          description = "Optional. Target project and location to make a call. Format: `projects/{project-id}/locations/{location-id}`. If no parent is specified, a region will be chosen automatically. Supported location-ids: `us`: USA country only, `asia`: East asia areas, like Japan, Taiwan, `eu`: The European Union. Example: `projects/project-A/locations/eu`.",
          type = "string",
        },
        requests = {
          description = "Required. Individual image annotation requests for this batch.",
          items = {
            ["$ref"] = "AnnotateImageRequest",
          },
          type = "array",
        },
      },
      type = "object",
    },
    AsyncBatchAnnotateImagesResponse = {
      description = "Response to an async batch image annotation request.",
      id = "AsyncBatchAnnotateImagesResponse",
      properties = {
        outputConfig = {
          ["$ref"] = "OutputConfig",
          description = "The output location and metadata from AsyncBatchAnnotateImagesRequest.",
        },
      },
      type = "object",
    },
    BatchAnnotateFilesRequest = {
      description = "A list of requests to annotate files using the BatchAnnotateFiles API.",
      id = "BatchAnnotateFilesRequest",
      properties = {
        parent = {
          description = "Optional. Target project and location to make a call. Format: `projects/{project-id}/locations/{location-id}`. If no parent is specified, a region will be chosen automatically. Supported location-ids: `us`: USA country only, `asia`: East asia areas, like Japan, Taiwan, `eu`: The European Union. Example: `projects/project-A/locations/eu`.",
          type = "string",
        },
        requests = {
          description = "Required. The list of file annotation requests. Right now we support only one AnnotateFileRequest in BatchAnnotateFilesRequest.",
          items = {
            ["$ref"] = "AnnotateFileRequest",
          },
          type = "array",
        },
      },
      type = "object",
    },
    BatchAnnotateFilesResponse = {
      description = "A list of file annotation responses.",
      id = "BatchAnnotateFilesResponse",
      properties = {
        responses = {
          description = "The list of file annotation responses, each response corresponding to each AnnotateFileRequest in BatchAnnotateFilesRequest.",
          items = {
            ["$ref"] = "AnnotateFileResponse",
          },
          type = "array",
        },
      },
      type = "object",
    },
    BatchAnnotateImagesRequest = {
      description = "Multiple image annotation requests are batched into a single service call.",
      id = "BatchAnnotateImagesRequest",
      properties = {
        parent = {
          description = "Optional. Target project and location to make a call. Format: `projects/{project-id}/locations/{location-id}`. If no parent is specified, a region will be chosen automatically. Supported location-ids: `us`: USA country only, `asia`: East asia areas, like Japan, Taiwan, `eu`: The European Union. Example: `projects/project-A/locations/eu`.",
          type = "string",
        },
        requests = {
          description = "Required. Individual image annotation requests for this batch.",
          items = {
            ["$ref"] = "AnnotateImageRequest",
          },
          type = "array",
        },
      },
      type = "object",
    },
    BatchAnnotateImagesResponse = {
      description = "Response to a batch image annotation request.",
      id = "BatchAnnotateImagesResponse",
      properties = {
        responses = {
          description = "Individual responses to image annotation requests within the batch.",
          items = {
            ["$ref"] = "AnnotateImageResponse",
          },
          type = "array",
        },
      },
      type = "object",
    },
    BatchOperationMetadata = {
      description = "Metadata for the batch operations such as the current state. This is included in the `metadata` field of the `Operation` returned by the `GetOperation` call of the `google::longrunning::Operations` service.",
      id = "BatchOperationMetadata",
      properties = {
        endTime = {
          description = "The time when the batch request is finished and google.longrunning.Operation.done is set to true.",
          format = "google-datetime",
          type = "string",
        },
        state = {
          description = "The current state of the batch operation.",
          enum = {
            "STATE_UNSPECIFIED",
            "PROCESSING",
            "SUCCESSFUL",
            "FAILED",
            "CANCELLED",
          },
          enumDescriptions = {
            "Invalid.",
            "Request is actively being processed.",
            "The request is done and at least one item has been successfully processed.",
            "The request is done and no item has been successfully processed.",
            "The request is done after the longrunning.Operations.CancelOperation has been called by the user. Any records that were processed before the cancel command are output as specified in the request.",
          },
          type = "string",
        },
        submitTime = {
          description = "The time when the batch request was submitted to the server.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    Block = {
      description = "Logical element on the page.",
      id = "Block",
      properties = {
        blockType = {
          description = "Detected block type (text, image etc) for this block.",
          enum = {
            "UNKNOWN",
            "TEXT",
            "TABLE",
            "PICTURE",
            "RULER",
            "BARCODE",
          },
          enumDescriptions = {
            "Unknown block type.",
            "Regular text block.",
            "Table block.",
            "Image block.",
            "Horizontal/vertical line box.",
            "Barcode block.",
          },
          type = "string",
        },
        boundingBox = {
          ["$ref"] = "BoundingPoly",
          description = "The bounding box for the block. The vertices are in the order of top-left, top-right, bottom-right, bottom-left. When a rotation of the bounding box is detected the rotation is represented as around the top-left corner as defined when the text is read in the 'natural' orientation. For example: * when the text is horizontal it might look like: 0----1 | | 3----2 * when it's rotated 180 degrees around the top-left corner it becomes: 2----3 | | 1----0 and the vertex order will still be (0, 1, 2, 3).",
        },
        confidence = {
          description = "Confidence of the OCR results on the block. Range [0, 1].",
          format = "float",
          type = "number",
        },
        paragraphs = {
          description = "List of paragraphs in this block (if this blocks is of type text).",
          items = {
            ["$ref"] = "Paragraph",
          },
          type = "array",
        },
        property = {
          ["$ref"] = "TextProperty",
          description = "Additional information detected for the block.",
        },
      },
      type = "object",
    },
    BoundingPoly = {
      description = "A bounding polygon for the detected image annotation.",
      id = "BoundingPoly",
      properties = {
        normalizedVertices = {
          description = "The bounding polygon normalized vertices.",
          items = {
            ["$ref"] = "NormalizedVertex",
          },
          type = "array",
        },
        vertices = {
          description = "The bounding polygon vertices.",
          items = {
            ["$ref"] = "Vertex",
          },
          type = "array",
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
    ColorInfo = {
      description = "Color information consists of RGB channels, score, and the fraction of the image that the color occupies in the image.",
      id = "ColorInfo",
      properties = {
        color = {
          ["$ref"] = "Color",
          description = "RGB components of the color.",
        },
        pixelFraction = {
          description = "The fraction of pixels the color occupies in the image. Value in range [0, 1].",
          format = "float",
          type = "number",
        },
        score = {
          description = "Image-specific score for this color. Value in range [0, 1].",
          format = "float",
          type = "number",
        },
      },
      type = "object",
    },
    CropHint = {
      description = "Single crop hint that is used to generate a new crop when serving an image.",
      id = "CropHint",
      properties = {
        boundingPoly = {
          ["$ref"] = "BoundingPoly",
          description = "The bounding polygon for the crop region. The coordinates of the bounding box are in the original image's scale.",
        },
        confidence = {
          description = "Confidence of this being a salient region. Range [0, 1].",
          format = "float",
          type = "number",
        },
        importanceFraction = {
          description = "Fraction of importance of this salient region with respect to the original image.",
          format = "float",
          type = "number",
        },
      },
      type = "object",
    },
    CropHintsAnnotation = {
      description = "Set of crop hints that are used to generate new crops when serving images.",
      id = "CropHintsAnnotation",
      properties = {
        cropHints = {
          description = "Crop hint results.",
          items = {
            ["$ref"] = "CropHint",
          },
          type = "array",
        },
      },
      type = "object",
    },
    CropHintsParams = {
      description = "Parameters for crop hints annotation request.",
      id = "CropHintsParams",
      properties = {
        aspectRatios = {
          description = "Aspect ratios in floats, representing the ratio of the width to the height of the image. For example, if the desired aspect ratio is 4/3, the corresponding float value should be 1.33333. If not specified, the best possible crop is returned. The number of provided aspect ratios is limited to a maximum of 16; any aspect ratios provided after the 16th are ignored.",
          items = {
            format = "float",
            type = "number",
          },
          type = "array",
        },
      },
      type = "object",
    },
    DetectedBreak = {
      description = "Detected start or end of a structural component.",
      id = "DetectedBreak",
      properties = {
        isPrefix = {
          description = "True if break prepends the element.",
          type = "boolean",
        },
        type = {
          description = "Detected break type.",
          enum = {
            "UNKNOWN",
            "SPACE",
            "SURE_SPACE",
            "EOL_SURE_SPACE",
            "HYPHEN",
            "LINE_BREAK",
          },
          enumDescriptions = {
            "Unknown break label type.",
            "Regular space.",
            "Sure space (very wide).",
            "Line-wrapping break.",
            "End-line hyphen that is not present in text; does not co-occur with `SPACE`, `LEADER_SPACE`, or `LINE_BREAK`.",
            "Line break that ends a paragraph.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    DetectedLanguage = {
      description = "Detected language for a structural component.",
      id = "DetectedLanguage",
      properties = {
        confidence = {
          description = "Confidence of detected language. Range [0, 1].",
          format = "float",
          type = "number",
        },
        languageCode = {
          description = "The BCP-47 language code, such as \"en-US\" or \"sr-Latn\". For more information, see http://www.unicode.org/reports/tr35/#Unicode_locale_identifier.",
          type = "string",
        },
      },
      type = "object",
    },
    DominantColorsAnnotation = {
      description = "Set of dominant colors and their corresponding scores.",
      id = "DominantColorsAnnotation",
      properties = {
        colors = {
          description = "RGB color values with their score and pixel fraction.",
          items = {
            ["$ref"] = "ColorInfo",
          },
          type = "array",
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
    EntityAnnotation = {
      description = "Set of detected entity features.",
      id = "EntityAnnotation",
      properties = {
        boundingPoly = {
          ["$ref"] = "BoundingPoly",
          description = "Image region to which this entity belongs. Not produced for `LABEL_DETECTION` features.",
        },
        confidence = {
          description = "**Deprecated. Use `score` instead.** The accuracy of the entity detection in an image. For example, for an image in which the \"Eiffel Tower\" entity is detected, this field represents the confidence that there is a tower in the query image. Range [0, 1].",
          format = "float",
          type = "number",
        },
        description = {
          description = "Entity textual description, expressed in its `locale` language.",
          type = "string",
        },
        locale = {
          description = "The language code for the locale in which the entity textual `description` is expressed.",
          type = "string",
        },
        locations = {
          description = "The location information for the detected entity. Multiple `LocationInfo` elements can be present because one location may indicate the location of the scene in the image, and another location may indicate the location of the place where the image was taken. Location information is usually present for landmarks.",
          items = {
            ["$ref"] = "LocationInfo",
          },
          type = "array",
        },
        mid = {
          description = "Opaque entity ID. Some IDs may be available in [Google Knowledge Graph Search API](https://developers.google.com/knowledge-graph/).",
          type = "string",
        },
        properties = {
          description = "Some entities may have optional user-supplied `Property` (name/value) fields, such a score or string that qualifies the entity.",
          items = {
            ["$ref"] = "Property",
          },
          type = "array",
        },
        score = {
          description = "Overall score of the result. Range [0, 1].",
          format = "float",
          type = "number",
        },
        topicality = {
          description = "The relevancy of the ICA (Image Content Annotation) label to the image. For example, the relevancy of \"tower\" is likely higher to an image containing the detected \"Eiffel Tower\" than to an image containing a detected distant towering building, even though the confidence that there is a tower in each image may be the same. Range [0, 1].",
          format = "float",
          type = "number",
        },
      },
      type = "object",
    },
    FaceAnnotation = {
      description = "A face annotation object contains the results of face detection.",
      id = "FaceAnnotation",
      properties = {
        angerLikelihood = {
          description = "Anger likelihood.",
          enum = {
            "UNKNOWN",
            "VERY_UNLIKELY",
            "UNLIKELY",
            "POSSIBLE",
            "LIKELY",
            "VERY_LIKELY",
          },
          enumDescriptions = {
            "Unknown likelihood.",
            "It is very unlikely.",
            "It is unlikely.",
            "It is possible.",
            "It is likely.",
            "It is very likely.",
          },
          type = "string",
        },
        blurredLikelihood = {
          description = "Blurred likelihood.",
          enum = {
            "UNKNOWN",
            "VERY_UNLIKELY",
            "UNLIKELY",
            "POSSIBLE",
            "LIKELY",
            "VERY_LIKELY",
          },
          enumDescriptions = {
            "Unknown likelihood.",
            "It is very unlikely.",
            "It is unlikely.",
            "It is possible.",
            "It is likely.",
            "It is very likely.",
          },
          type = "string",
        },
        boundingPoly = {
          ["$ref"] = "BoundingPoly",
          description = "The bounding polygon around the face. The coordinates of the bounding box are in the original image's scale. The bounding box is computed to \"frame\" the face in accordance with human expectations. It is based on the landmarker results. Note that one or more x and/or y coordinates may not be generated in the `BoundingPoly` (the polygon will be unbounded) if only a partial face appears in the image to be annotated.",
        },
        detectionConfidence = {
          description = "Detection confidence. Range [0, 1].",
          format = "float",
          type = "number",
        },
        fdBoundingPoly = {
          ["$ref"] = "BoundingPoly",
          description = "The `fd_bounding_poly` bounding polygon is tighter than the `boundingPoly`, and encloses only the skin part of the face. Typically, it is used to eliminate the face from any image analysis that detects the \"amount of skin\" visible in an image. It is not based on the landmarker results, only on the initial face detection, hence the fd (face detection) prefix.",
        },
        headwearLikelihood = {
          description = "Headwear likelihood.",
          enum = {
            "UNKNOWN",
            "VERY_UNLIKELY",
            "UNLIKELY",
            "POSSIBLE",
            "LIKELY",
            "VERY_LIKELY",
          },
          enumDescriptions = {
            "Unknown likelihood.",
            "It is very unlikely.",
            "It is unlikely.",
            "It is possible.",
            "It is likely.",
            "It is very likely.",
          },
          type = "string",
        },
        joyLikelihood = {
          description = "Joy likelihood.",
          enum = {
            "UNKNOWN",
            "VERY_UNLIKELY",
            "UNLIKELY",
            "POSSIBLE",
            "LIKELY",
            "VERY_LIKELY",
          },
          enumDescriptions = {
            "Unknown likelihood.",
            "It is very unlikely.",
            "It is unlikely.",
            "It is possible.",
            "It is likely.",
            "It is very likely.",
          },
          type = "string",
        },
        landmarkingConfidence = {
          description = "Face landmarking confidence. Range [0, 1].",
          format = "float",
          type = "number",
        },
        landmarks = {
          description = "Detected face landmarks.",
          items = {
            ["$ref"] = "Landmark",
          },
          type = "array",
        },
        panAngle = {
          description = "Yaw angle, which indicates the leftward/rightward angle that the face is pointing relative to the vertical plane perpendicular to the image. Range [-180,180].",
          format = "float",
          type = "number",
        },
        rollAngle = {
          description = "Roll angle, which indicates the amount of clockwise/anti-clockwise rotation of the face relative to the image vertical about the axis perpendicular to the face. Range [-180,180].",
          format = "float",
          type = "number",
        },
        sorrowLikelihood = {
          description = "Sorrow likelihood.",
          enum = {
            "UNKNOWN",
            "VERY_UNLIKELY",
            "UNLIKELY",
            "POSSIBLE",
            "LIKELY",
            "VERY_LIKELY",
          },
          enumDescriptions = {
            "Unknown likelihood.",
            "It is very unlikely.",
            "It is unlikely.",
            "It is possible.",
            "It is likely.",
            "It is very likely.",
          },
          type = "string",
        },
        surpriseLikelihood = {
          description = "Surprise likelihood.",
          enum = {
            "UNKNOWN",
            "VERY_UNLIKELY",
            "UNLIKELY",
            "POSSIBLE",
            "LIKELY",
            "VERY_LIKELY",
          },
          enumDescriptions = {
            "Unknown likelihood.",
            "It is very unlikely.",
            "It is unlikely.",
            "It is possible.",
            "It is likely.",
            "It is very likely.",
          },
          type = "string",
        },
        tiltAngle = {
          description = "Pitch angle, which indicates the upwards/downwards angle that the face is pointing relative to the image's horizontal plane. Range [-180,180].",
          format = "float",
          type = "number",
        },
        underExposedLikelihood = {
          description = "Under-exposed likelihood.",
          enum = {
            "UNKNOWN",
            "VERY_UNLIKELY",
            "UNLIKELY",
            "POSSIBLE",
            "LIKELY",
            "VERY_LIKELY",
          },
          enumDescriptions = {
            "Unknown likelihood.",
            "It is very unlikely.",
            "It is unlikely.",
            "It is possible.",
            "It is likely.",
            "It is very likely.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    Feature = {
      description = "The type of Google Cloud Vision API detection to perform, and the maximum number of results to return for that type. Multiple `Feature` objects can be specified in the `features` list.",
      id = "Feature",
      properties = {
        maxResults = {
          description = "Maximum number of results of this type. Does not apply to `TEXT_DETECTION`, `DOCUMENT_TEXT_DETECTION`, or `CROP_HINTS`.",
          format = "int32",
          type = "integer",
        },
        model = {
          description = "Model to use for the feature. Supported values: \"builtin/stable\" (the default if unset) and \"builtin/latest\". `DOCUMENT_TEXT_DETECTION` and `TEXT_DETECTION` also support \"builtin/weekly\" for the bleeding edge release updated weekly.",
          type = "string",
        },
        type = {
          description = "The feature type.",
          enum = {
            "TYPE_UNSPECIFIED",
            "FACE_DETECTION",
            "LANDMARK_DETECTION",
            "LOGO_DETECTION",
            "LABEL_DETECTION",
            "TEXT_DETECTION",
            "DOCUMENT_TEXT_DETECTION",
            "SAFE_SEARCH_DETECTION",
            "IMAGE_PROPERTIES",
            "CROP_HINTS",
            "WEB_DETECTION",
            "PRODUCT_SEARCH",
            "OBJECT_LOCALIZATION",
          },
          enumDescriptions = {
            "Unspecified feature type.",
            "Run face detection.",
            "Run landmark detection.",
            "Run logo detection.",
            "Run label detection.",
            "Run text detection / optical character recognition (OCR). Text detection is optimized for areas of text within a larger image; if the image is a document, use `DOCUMENT_TEXT_DETECTION` instead.",
            "Run dense text document OCR. Takes precedence when both `DOCUMENT_TEXT_DETECTION` and `TEXT_DETECTION` are present.",
            "Run Safe Search to detect potentially unsafe or undesirable content.",
            "Compute a set of image properties, such as the image's dominant colors.",
            "Run crop hints.",
            "Run web detection.",
            "Run Product Search.",
            "Run localizer for object detection.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GcsDestination = {
      description = "The Google Cloud Storage location where the output will be written to.",
      id = "GcsDestination",
      properties = {
        uri = {
          description = "Google Cloud Storage URI prefix where the results will be stored. Results will be in JSON format and preceded by its corresponding input URI prefix. This field can either represent a gcs file prefix or gcs directory. In either case, the uri should be unique because in order to get all of the output files, you will need to do a wildcard gcs search on the uri prefix you provide. Examples: * File Prefix: gs://bucket-name/here/filenameprefix The output files will be created in gs://bucket-name/here/ and the names of the output files will begin with \"filenameprefix\". * Directory Prefix: gs://bucket-name/some/location/ The output files will be created in gs://bucket-name/some/location/ and the names of the output files could be anything because there was no filename prefix specified. If multiple outputs, each response is still AnnotateFileResponse, each of which contains some subset of the full list of AnnotateImageResponse. Multiple outputs can happen if, for example, the output JSON is too large and overflows into multiple sharded files.",
          type = "string",
        },
      },
      type = "object",
    },
    GcsSource = {
      description = "The Google Cloud Storage location where the input will be read from.",
      id = "GcsSource",
      properties = {
        uri = {
          description = "Google Cloud Storage URI for the input file. This must only be a Google Cloud Storage object. Wildcards are not currently supported.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p1beta1AnnotateFileResponse = {
      description = "Response to a single file annotation request. A file may contain one or more images, which individually have their own responses.",
      id = "GoogleCloudVisionV1p1beta1AnnotateFileResponse",
      properties = {
        error = {
          ["$ref"] = "Status",
          description = "If set, represents the error message for the failed request. The `responses` field will not be set in this case.",
        },
        inputConfig = {
          ["$ref"] = "GoogleCloudVisionV1p1beta1InputConfig",
          description = "Information about the file for which this response is generated.",
        },
        responses = {
          description = "Individual responses to images found within the file. This field will be empty if the `error` field is set.",
          items = {
            ["$ref"] = "GoogleCloudVisionV1p1beta1AnnotateImageResponse",
          },
          type = "array",
        },
        totalPages = {
          description = "This field gives the total number of pages in the file.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p1beta1AnnotateImageResponse = {
      description = "Response to an image annotation request.",
      id = "GoogleCloudVisionV1p1beta1AnnotateImageResponse",
      properties = {
        context = {
          ["$ref"] = "GoogleCloudVisionV1p1beta1ImageAnnotationContext",
          description = "If present, contextual information is needed to understand where this image comes from.",
        },
        cropHintsAnnotation = {
          ["$ref"] = "GoogleCloudVisionV1p1beta1CropHintsAnnotation",
          description = "If present, crop hints have completed successfully.",
        },
        error = {
          ["$ref"] = "Status",
          description = "If set, represents the error message for the operation. Note that filled-in image annotations are guaranteed to be correct, even when `error` is set.",
        },
        faceAnnotations = {
          description = "If present, face detection has completed successfully.",
          items = {
            ["$ref"] = "GoogleCloudVisionV1p1beta1FaceAnnotation",
          },
          type = "array",
        },
        fullTextAnnotation = {
          ["$ref"] = "GoogleCloudVisionV1p1beta1TextAnnotation",
          description = "If present, text (OCR) detection or document (OCR) text detection has completed successfully. This annotation provides the structural hierarchy for the OCR detected text.",
        },
        imagePropertiesAnnotation = {
          ["$ref"] = "GoogleCloudVisionV1p1beta1ImageProperties",
          description = "If present, image properties were extracted successfully.",
        },
        labelAnnotations = {
          description = "If present, label detection has completed successfully.",
          items = {
            ["$ref"] = "GoogleCloudVisionV1p1beta1EntityAnnotation",
          },
          type = "array",
        },
        landmarkAnnotations = {
          description = "If present, landmark detection has completed successfully.",
          items = {
            ["$ref"] = "GoogleCloudVisionV1p1beta1EntityAnnotation",
          },
          type = "array",
        },
        localizedObjectAnnotations = {
          description = "If present, localized object detection has completed successfully. This will be sorted descending by confidence score.",
          items = {
            ["$ref"] = "GoogleCloudVisionV1p1beta1LocalizedObjectAnnotation",
          },
          type = "array",
        },
        logoAnnotations = {
          description = "If present, logo detection has completed successfully.",
          items = {
            ["$ref"] = "GoogleCloudVisionV1p1beta1EntityAnnotation",
          },
          type = "array",
        },
        productSearchResults = {
          ["$ref"] = "GoogleCloudVisionV1p1beta1ProductSearchResults",
          description = "If present, product search has completed successfully.",
        },
        safeSearchAnnotation = {
          ["$ref"] = "GoogleCloudVisionV1p1beta1SafeSearchAnnotation",
          description = "If present, safe-search annotation has completed successfully.",
        },
        textAnnotations = {
          description = "If present, text (OCR) detection has completed successfully.",
          items = {
            ["$ref"] = "GoogleCloudVisionV1p1beta1EntityAnnotation",
          },
          type = "array",
        },
        webDetection = {
          ["$ref"] = "GoogleCloudVisionV1p1beta1WebDetection",
          description = "If present, web detection has completed successfully.",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p1beta1AsyncAnnotateFileResponse = {
      description = "The response for a single offline file annotation request.",
      id = "GoogleCloudVisionV1p1beta1AsyncAnnotateFileResponse",
      properties = {
        outputConfig = {
          ["$ref"] = "GoogleCloudVisionV1p1beta1OutputConfig",
          description = "The output location and metadata from AsyncAnnotateFileRequest.",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p1beta1AsyncBatchAnnotateFilesResponse = {
      description = "Response to an async batch file annotation request.",
      id = "GoogleCloudVisionV1p1beta1AsyncBatchAnnotateFilesResponse",
      properties = {
        responses = {
          description = "The list of file annotation responses, one for each request in AsyncBatchAnnotateFilesRequest.",
          items = {
            ["$ref"] = "GoogleCloudVisionV1p1beta1AsyncAnnotateFileResponse",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p1beta1Block = {
      description = "Logical element on the page.",
      id = "GoogleCloudVisionV1p1beta1Block",
      properties = {
        blockType = {
          description = "Detected block type (text, image etc) for this block.",
          enum = {
            "UNKNOWN",
            "TEXT",
            "TABLE",
            "PICTURE",
            "RULER",
            "BARCODE",
          },
          enumDescriptions = {
            "Unknown block type.",
            "Regular text block.",
            "Table block.",
            "Image block.",
            "Horizontal/vertical line box.",
            "Barcode block.",
          },
          type = "string",
        },
        boundingBox = {
          ["$ref"] = "GoogleCloudVisionV1p1beta1BoundingPoly",
          description = "The bounding box for the block. The vertices are in the order of top-left, top-right, bottom-right, bottom-left. When a rotation of the bounding box is detected the rotation is represented as around the top-left corner as defined when the text is read in the 'natural' orientation. For example: * when the text is horizontal it might look like: 0----1 | | 3----2 * when it's rotated 180 degrees around the top-left corner it becomes: 2----3 | | 1----0 and the vertex order will still be (0, 1, 2, 3).",
        },
        confidence = {
          description = "Confidence of the OCR results on the block. Range [0, 1].",
          format = "float",
          type = "number",
        },
        paragraphs = {
          description = "List of paragraphs in this block (if this blocks is of type text).",
          items = {
            ["$ref"] = "GoogleCloudVisionV1p1beta1Paragraph",
          },
          type = "array",
        },
        property = {
          ["$ref"] = "GoogleCloudVisionV1p1beta1TextAnnotationTextProperty",
          description = "Additional information detected for the block.",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p1beta1BoundingPoly = {
      description = "A bounding polygon for the detected image annotation.",
      id = "GoogleCloudVisionV1p1beta1BoundingPoly",
      properties = {
        normalizedVertices = {
          description = "The bounding polygon normalized vertices.",
          items = {
            ["$ref"] = "GoogleCloudVisionV1p1beta1NormalizedVertex",
          },
          type = "array",
        },
        vertices = {
          description = "The bounding polygon vertices.",
          items = {
            ["$ref"] = "GoogleCloudVisionV1p1beta1Vertex",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p1beta1ColorInfo = {
      description = "Color information consists of RGB channels, score, and the fraction of the image that the color occupies in the image.",
      id = "GoogleCloudVisionV1p1beta1ColorInfo",
      properties = {
        color = {
          ["$ref"] = "Color",
          description = "RGB components of the color.",
        },
        pixelFraction = {
          description = "The fraction of pixels the color occupies in the image. Value in range [0, 1].",
          format = "float",
          type = "number",
        },
        score = {
          description = "Image-specific score for this color. Value in range [0, 1].",
          format = "float",
          type = "number",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p1beta1CropHint = {
      description = "Single crop hint that is used to generate a new crop when serving an image.",
      id = "GoogleCloudVisionV1p1beta1CropHint",
      properties = {
        boundingPoly = {
          ["$ref"] = "GoogleCloudVisionV1p1beta1BoundingPoly",
          description = "The bounding polygon for the crop region. The coordinates of the bounding box are in the original image's scale.",
        },
        confidence = {
          description = "Confidence of this being a salient region. Range [0, 1].",
          format = "float",
          type = "number",
        },
        importanceFraction = {
          description = "Fraction of importance of this salient region with respect to the original image.",
          format = "float",
          type = "number",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p1beta1CropHintsAnnotation = {
      description = "Set of crop hints that are used to generate new crops when serving images.",
      id = "GoogleCloudVisionV1p1beta1CropHintsAnnotation",
      properties = {
        cropHints = {
          description = "Crop hint results.",
          items = {
            ["$ref"] = "GoogleCloudVisionV1p1beta1CropHint",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p1beta1DominantColorsAnnotation = {
      description = "Set of dominant colors and their corresponding scores.",
      id = "GoogleCloudVisionV1p1beta1DominantColorsAnnotation",
      properties = {
        colors = {
          description = "RGB color values with their score and pixel fraction.",
          items = {
            ["$ref"] = "GoogleCloudVisionV1p1beta1ColorInfo",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p1beta1EntityAnnotation = {
      description = "Set of detected entity features.",
      id = "GoogleCloudVisionV1p1beta1EntityAnnotation",
      properties = {
        boundingPoly = {
          ["$ref"] = "GoogleCloudVisionV1p1beta1BoundingPoly",
          description = "Image region to which this entity belongs. Not produced for `LABEL_DETECTION` features.",
        },
        confidence = {
          description = "**Deprecated. Use `score` instead.** The accuracy of the entity detection in an image. For example, for an image in which the \"Eiffel Tower\" entity is detected, this field represents the confidence that there is a tower in the query image. Range [0, 1].",
          format = "float",
          type = "number",
        },
        description = {
          description = "Entity textual description, expressed in its `locale` language.",
          type = "string",
        },
        locale = {
          description = "The language code for the locale in which the entity textual `description` is expressed.",
          type = "string",
        },
        locations = {
          description = "The location information for the detected entity. Multiple `LocationInfo` elements can be present because one location may indicate the location of the scene in the image, and another location may indicate the location of the place where the image was taken. Location information is usually present for landmarks.",
          items = {
            ["$ref"] = "GoogleCloudVisionV1p1beta1LocationInfo",
          },
          type = "array",
        },
        mid = {
          description = "Opaque entity ID. Some IDs may be available in [Google Knowledge Graph Search API](https://developers.google.com/knowledge-graph/).",
          type = "string",
        },
        properties = {
          description = "Some entities may have optional user-supplied `Property` (name/value) fields, such a score or string that qualifies the entity.",
          items = {
            ["$ref"] = "GoogleCloudVisionV1p1beta1Property",
          },
          type = "array",
        },
        score = {
          description = "Overall score of the result. Range [0, 1].",
          format = "float",
          type = "number",
        },
        topicality = {
          description = "The relevancy of the ICA (Image Content Annotation) label to the image. For example, the relevancy of \"tower\" is likely higher to an image containing the detected \"Eiffel Tower\" than to an image containing a detected distant towering building, even though the confidence that there is a tower in each image may be the same. Range [0, 1].",
          format = "float",
          type = "number",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p1beta1FaceAnnotation = {
      description = "A face annotation object contains the results of face detection.",
      id = "GoogleCloudVisionV1p1beta1FaceAnnotation",
      properties = {
        angerLikelihood = {
          description = "Anger likelihood.",
          enum = {
            "UNKNOWN",
            "VERY_UNLIKELY",
            "UNLIKELY",
            "POSSIBLE",
            "LIKELY",
            "VERY_LIKELY",
          },
          enumDescriptions = {
            "Unknown likelihood.",
            "It is very unlikely.",
            "It is unlikely.",
            "It is possible.",
            "It is likely.",
            "It is very likely.",
          },
          type = "string",
        },
        blurredLikelihood = {
          description = "Blurred likelihood.",
          enum = {
            "UNKNOWN",
            "VERY_UNLIKELY",
            "UNLIKELY",
            "POSSIBLE",
            "LIKELY",
            "VERY_LIKELY",
          },
          enumDescriptions = {
            "Unknown likelihood.",
            "It is very unlikely.",
            "It is unlikely.",
            "It is possible.",
            "It is likely.",
            "It is very likely.",
          },
          type = "string",
        },
        boundingPoly = {
          ["$ref"] = "GoogleCloudVisionV1p1beta1BoundingPoly",
          description = "The bounding polygon around the face. The coordinates of the bounding box are in the original image's scale. The bounding box is computed to \"frame\" the face in accordance with human expectations. It is based on the landmarker results. Note that one or more x and/or y coordinates may not be generated in the `BoundingPoly` (the polygon will be unbounded) if only a partial face appears in the image to be annotated.",
        },
        detectionConfidence = {
          description = "Detection confidence. Range [0, 1].",
          format = "float",
          type = "number",
        },
        fdBoundingPoly = {
          ["$ref"] = "GoogleCloudVisionV1p1beta1BoundingPoly",
          description = "The `fd_bounding_poly` bounding polygon is tighter than the `boundingPoly`, and encloses only the skin part of the face. Typically, it is used to eliminate the face from any image analysis that detects the \"amount of skin\" visible in an image. It is not based on the landmarker results, only on the initial face detection, hence the fd (face detection) prefix.",
        },
        headwearLikelihood = {
          description = "Headwear likelihood.",
          enum = {
            "UNKNOWN",
            "VERY_UNLIKELY",
            "UNLIKELY",
            "POSSIBLE",
            "LIKELY",
            "VERY_LIKELY",
          },
          enumDescriptions = {
            "Unknown likelihood.",
            "It is very unlikely.",
            "It is unlikely.",
            "It is possible.",
            "It is likely.",
            "It is very likely.",
          },
          type = "string",
        },
        joyLikelihood = {
          description = "Joy likelihood.",
          enum = {
            "UNKNOWN",
            "VERY_UNLIKELY",
            "UNLIKELY",
            "POSSIBLE",
            "LIKELY",
            "VERY_LIKELY",
          },
          enumDescriptions = {
            "Unknown likelihood.",
            "It is very unlikely.",
            "It is unlikely.",
            "It is possible.",
            "It is likely.",
            "It is very likely.",
          },
          type = "string",
        },
        landmarkingConfidence = {
          description = "Face landmarking confidence. Range [0, 1].",
          format = "float",
          type = "number",
        },
        landmarks = {
          description = "Detected face landmarks.",
          items = {
            ["$ref"] = "GoogleCloudVisionV1p1beta1FaceAnnotationLandmark",
          },
          type = "array",
        },
        panAngle = {
          description = "Yaw angle, which indicates the leftward/rightward angle that the face is pointing relative to the vertical plane perpendicular to the image. Range [-180,180].",
          format = "float",
          type = "number",
        },
        rollAngle = {
          description = "Roll angle, which indicates the amount of clockwise/anti-clockwise rotation of the face relative to the image vertical about the axis perpendicular to the face. Range [-180,180].",
          format = "float",
          type = "number",
        },
        sorrowLikelihood = {
          description = "Sorrow likelihood.",
          enum = {
            "UNKNOWN",
            "VERY_UNLIKELY",
            "UNLIKELY",
            "POSSIBLE",
            "LIKELY",
            "VERY_LIKELY",
          },
          enumDescriptions = {
            "Unknown likelihood.",
            "It is very unlikely.",
            "It is unlikely.",
            "It is possible.",
            "It is likely.",
            "It is very likely.",
          },
          type = "string",
        },
        surpriseLikelihood = {
          description = "Surprise likelihood.",
          enum = {
            "UNKNOWN",
            "VERY_UNLIKELY",
            "UNLIKELY",
            "POSSIBLE",
            "LIKELY",
            "VERY_LIKELY",
          },
          enumDescriptions = {
            "Unknown likelihood.",
            "It is very unlikely.",
            "It is unlikely.",
            "It is possible.",
            "It is likely.",
            "It is very likely.",
          },
          type = "string",
        },
        tiltAngle = {
          description = "Pitch angle, which indicates the upwards/downwards angle that the face is pointing relative to the image's horizontal plane. Range [-180,180].",
          format = "float",
          type = "number",
        },
        underExposedLikelihood = {
          description = "Under-exposed likelihood.",
          enum = {
            "UNKNOWN",
            "VERY_UNLIKELY",
            "UNLIKELY",
            "POSSIBLE",
            "LIKELY",
            "VERY_LIKELY",
          },
          enumDescriptions = {
            "Unknown likelihood.",
            "It is very unlikely.",
            "It is unlikely.",
            "It is possible.",
            "It is likely.",
            "It is very likely.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p1beta1FaceAnnotationLandmark = {
      description = "A face-specific landmark (for example, a face feature).",
      id = "GoogleCloudVisionV1p1beta1FaceAnnotationLandmark",
      properties = {
        position = {
          ["$ref"] = "GoogleCloudVisionV1p1beta1Position",
          description = "Face landmark position.",
        },
        type = {
          description = "Face landmark type.",
          enum = {
            "UNKNOWN_LANDMARK",
            "LEFT_EYE",
            "RIGHT_EYE",
            "LEFT_OF_LEFT_EYEBROW",
            "RIGHT_OF_LEFT_EYEBROW",
            "LEFT_OF_RIGHT_EYEBROW",
            "RIGHT_OF_RIGHT_EYEBROW",
            "MIDPOINT_BETWEEN_EYES",
            "NOSE_TIP",
            "UPPER_LIP",
            "LOWER_LIP",
            "MOUTH_LEFT",
            "MOUTH_RIGHT",
            "MOUTH_CENTER",
            "NOSE_BOTTOM_RIGHT",
            "NOSE_BOTTOM_LEFT",
            "NOSE_BOTTOM_CENTER",
            "LEFT_EYE_TOP_BOUNDARY",
            "LEFT_EYE_RIGHT_CORNER",
            "LEFT_EYE_BOTTOM_BOUNDARY",
            "LEFT_EYE_LEFT_CORNER",
            "RIGHT_EYE_TOP_BOUNDARY",
            "RIGHT_EYE_RIGHT_CORNER",
            "RIGHT_EYE_BOTTOM_BOUNDARY",
            "RIGHT_EYE_LEFT_CORNER",
            "LEFT_EYEBROW_UPPER_MIDPOINT",
            "RIGHT_EYEBROW_UPPER_MIDPOINT",
            "LEFT_EAR_TRAGION",
            "RIGHT_EAR_TRAGION",
            "LEFT_EYE_PUPIL",
            "RIGHT_EYE_PUPIL",
            "FOREHEAD_GLABELLA",
            "CHIN_GNATHION",
            "CHIN_LEFT_GONION",
            "CHIN_RIGHT_GONION",
            "LEFT_CHEEK_CENTER",
            "RIGHT_CHEEK_CENTER",
          },
          enumDescriptions = {
            "Unknown face landmark detected. Should not be filled.",
            "Left eye.",
            "Right eye.",
            "Left of left eyebrow.",
            "Right of left eyebrow.",
            "Left of right eyebrow.",
            "Right of right eyebrow.",
            "Midpoint between eyes.",
            "Nose tip.",
            "Upper lip.",
            "Lower lip.",
            "Mouth left.",
            "Mouth right.",
            "Mouth center.",
            "Nose, bottom right.",
            "Nose, bottom left.",
            "Nose, bottom center.",
            "Left eye, top boundary.",
            "Left eye, right corner.",
            "Left eye, bottom boundary.",
            "Left eye, left corner.",
            "Right eye, top boundary.",
            "Right eye, right corner.",
            "Right eye, bottom boundary.",
            "Right eye, left corner.",
            "Left eyebrow, upper midpoint.",
            "Right eyebrow, upper midpoint.",
            "Left ear tragion.",
            "Right ear tragion.",
            "Left eye pupil.",
            "Right eye pupil.",
            "Forehead glabella.",
            "Chin gnathion.",
            "Chin left gonion.",
            "Chin right gonion.",
            "Left cheek center.",
            "Right cheek center.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p1beta1GcsDestination = {
      description = "The Google Cloud Storage location where the output will be written to.",
      id = "GoogleCloudVisionV1p1beta1GcsDestination",
      properties = {
        uri = {
          description = "Google Cloud Storage URI prefix where the results will be stored. Results will be in JSON format and preceded by its corresponding input URI prefix. This field can either represent a gcs file prefix or gcs directory. In either case, the uri should be unique because in order to get all of the output files, you will need to do a wildcard gcs search on the uri prefix you provide. Examples: * File Prefix: gs://bucket-name/here/filenameprefix The output files will be created in gs://bucket-name/here/ and the names of the output files will begin with \"filenameprefix\". * Directory Prefix: gs://bucket-name/some/location/ The output files will be created in gs://bucket-name/some/location/ and the names of the output files could be anything because there was no filename prefix specified. If multiple outputs, each response is still AnnotateFileResponse, each of which contains some subset of the full list of AnnotateImageResponse. Multiple outputs can happen if, for example, the output JSON is too large and overflows into multiple sharded files.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p1beta1GcsSource = {
      description = "The Google Cloud Storage location where the input will be read from.",
      id = "GoogleCloudVisionV1p1beta1GcsSource",
      properties = {
        uri = {
          description = "Google Cloud Storage URI for the input file. This must only be a Google Cloud Storage object. Wildcards are not currently supported.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p1beta1ImageAnnotationContext = {
      description = "If an image was produced from a file (e.g. a PDF), this message gives information about the source of that image.",
      id = "GoogleCloudVisionV1p1beta1ImageAnnotationContext",
      properties = {
        pageNumber = {
          description = "If the file was a PDF or TIFF, this field gives the page number within the file used to produce the image.",
          format = "int32",
          type = "integer",
        },
        uri = {
          description = "The URI of the file used to produce the image.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p1beta1ImageProperties = {
      description = "Stores image properties, such as dominant colors.",
      id = "GoogleCloudVisionV1p1beta1ImageProperties",
      properties = {
        dominantColors = {
          ["$ref"] = "GoogleCloudVisionV1p1beta1DominantColorsAnnotation",
          description = "If present, dominant colors completed successfully.",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p1beta1InputConfig = {
      description = "The desired input location and metadata.",
      id = "GoogleCloudVisionV1p1beta1InputConfig",
      properties = {
        content = {
          description = "File content, represented as a stream of bytes. Note: As with all `bytes` fields, protobuffers use a pure binary representation, whereas JSON representations use base64. Currently, this field only works for BatchAnnotateFiles requests. It does not work for AsyncBatchAnnotateFiles requests.",
          format = "byte",
          type = "string",
        },
        gcsSource = {
          ["$ref"] = "GoogleCloudVisionV1p1beta1GcsSource",
          description = "The Google Cloud Storage location to read the input from.",
        },
        mimeType = {
          description = "The type of the file. Currently only \"application/pdf\", \"image/tiff\" and \"image/gif\" are supported. Wildcards are not supported.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p1beta1LocalizedObjectAnnotation = {
      description = "Set of detected objects with bounding boxes.",
      id = "GoogleCloudVisionV1p1beta1LocalizedObjectAnnotation",
      properties = {
        boundingPoly = {
          ["$ref"] = "GoogleCloudVisionV1p1beta1BoundingPoly",
          description = "Image region to which this object belongs. This must be populated.",
        },
        languageCode = {
          description = "The BCP-47 language code, such as \"en-US\" or \"sr-Latn\". For more information, see http://www.unicode.org/reports/tr35/#Unicode_locale_identifier.",
          type = "string",
        },
        mid = {
          description = "Object ID that should align with EntityAnnotation mid.",
          type = "string",
        },
        name = {
          description = "Object name, expressed in its `language_code` language.",
          type = "string",
        },
        score = {
          description = "Score of the result. Range [0, 1].",
          format = "float",
          type = "number",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p1beta1LocationInfo = {
      description = "Detected entity location information.",
      id = "GoogleCloudVisionV1p1beta1LocationInfo",
      properties = {
        latLng = {
          ["$ref"] = "LatLng",
          description = "lat/long location coordinates.",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p1beta1NormalizedVertex = {
      description = "A vertex represents a 2D point in the image. NOTE: the normalized vertex coordinates are relative to the original image and range from 0 to 1.",
      id = "GoogleCloudVisionV1p1beta1NormalizedVertex",
      properties = {
        x = {
          description = "X coordinate.",
          format = "float",
          type = "number",
        },
        y = {
          description = "Y coordinate.",
          format = "float",
          type = "number",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p1beta1OperationMetadata = {
      description = "Contains metadata for the BatchAnnotateImages operation.",
      id = "GoogleCloudVisionV1p1beta1OperationMetadata",
      properties = {
        createTime = {
          description = "The time when the batch request was received.",
          format = "google-datetime",
          type = "string",
        },
        state = {
          description = "Current state of the batch operation.",
          enum = {
            "STATE_UNSPECIFIED",
            "CREATED",
            "RUNNING",
            "DONE",
            "CANCELLED",
          },
          enumDescriptions = {
            "Invalid.",
            "Request is received.",
            "Request is actively being processed.",
            "The batch processing is done.",
            "The batch processing was cancelled.",
          },
          type = "string",
        },
        updateTime = {
          description = "The time when the operation result was last updated.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p1beta1OutputConfig = {
      description = "The desired output location and metadata.",
      id = "GoogleCloudVisionV1p1beta1OutputConfig",
      properties = {
        batchSize = {
          description = "The max number of response protos to put into each output JSON file on Google Cloud Storage. The valid range is [1, 100]. If not specified, the default value is 20. For example, for one pdf file with 100 pages, 100 response protos will be generated. If `batch_size` = 20, then 5 json files each containing 20 response protos will be written under the prefix `gcs_destination`.`uri`. Currently, batch_size only applies to GcsDestination, with potential future support for other output configurations.",
          format = "int32",
          type = "integer",
        },
        gcsDestination = {
          ["$ref"] = "GoogleCloudVisionV1p1beta1GcsDestination",
          description = "The Google Cloud Storage location to write the output(s) to.",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p1beta1Page = {
      description = "Detected page from OCR.",
      id = "GoogleCloudVisionV1p1beta1Page",
      properties = {
        blocks = {
          description = "List of blocks of text, images etc on this page.",
          items = {
            ["$ref"] = "GoogleCloudVisionV1p1beta1Block",
          },
          type = "array",
        },
        confidence = {
          description = "Confidence of the OCR results on the page. Range [0, 1].",
          format = "float",
          type = "number",
        },
        height = {
          description = "Page height. For PDFs the unit is points. For images (including TIFFs) the unit is pixels.",
          format = "int32",
          type = "integer",
        },
        property = {
          ["$ref"] = "GoogleCloudVisionV1p1beta1TextAnnotationTextProperty",
          description = "Additional information detected on the page.",
        },
        width = {
          description = "Page width. For PDFs the unit is points. For images (including TIFFs) the unit is pixels.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p1beta1Paragraph = {
      description = "Structural unit of text representing a number of words in certain order.",
      id = "GoogleCloudVisionV1p1beta1Paragraph",
      properties = {
        boundingBox = {
          ["$ref"] = "GoogleCloudVisionV1p1beta1BoundingPoly",
          description = "The bounding box for the paragraph. The vertices are in the order of top-left, top-right, bottom-right, bottom-left. When a rotation of the bounding box is detected the rotation is represented as around the top-left corner as defined when the text is read in the 'natural' orientation. For example: * when the text is horizontal it might look like: 0----1 | | 3----2 * when it's rotated 180 degrees around the top-left corner it becomes: 2----3 | | 1----0 and the vertex order will still be (0, 1, 2, 3).",
        },
        confidence = {
          description = "Confidence of the OCR results for the paragraph. Range [0, 1].",
          format = "float",
          type = "number",
        },
        property = {
          ["$ref"] = "GoogleCloudVisionV1p1beta1TextAnnotationTextProperty",
          description = "Additional information detected for the paragraph.",
        },
        words = {
          description = "List of all words in this paragraph.",
          items = {
            ["$ref"] = "GoogleCloudVisionV1p1beta1Word",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p1beta1Position = {
      description = "A 3D position in the image, used primarily for Face detection landmarks. A valid Position must have both x and y coordinates. The position coordinates are in the same scale as the original image.",
      id = "GoogleCloudVisionV1p1beta1Position",
      properties = {
        x = {
          description = "X coordinate.",
          format = "float",
          type = "number",
        },
        y = {
          description = "Y coordinate.",
          format = "float",
          type = "number",
        },
        z = {
          description = "Z coordinate (or depth).",
          format = "float",
          type = "number",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p1beta1Product = {
      description = "A Product contains ReferenceImages.",
      id = "GoogleCloudVisionV1p1beta1Product",
      properties = {
        description = {
          description = "User-provided metadata to be stored with this product. Must be at most 4096 characters long.",
          type = "string",
        },
        displayName = {
          description = "The user-provided name for this Product. Must not be empty. Must be at most 4096 characters long.",
          type = "string",
        },
        name = {
          description = "The resource name of the product. Format is: `projects/PROJECT_ID/locations/LOC_ID/products/PRODUCT_ID`. This field is ignored when creating a product.",
          type = "string",
        },
        productCategory = {
          description = "Immutable. The category for the product identified by the reference image. This should be one of \"homegoods-v2\", \"apparel-v2\", \"toys-v2\", \"packagedgoods-v1\" or \"general-v1\". The legacy categories \"homegoods\", \"apparel\", and \"toys\" are still supported, but these should not be used for new products.",
          type = "string",
        },
        productLabels = {
          description = "Key-value pairs that can be attached to a product. At query time, constraints can be specified based on the product_labels. Note that integer values can be provided as strings, e.g. \"1199\". Only strings with integer values can match a range-based restriction which is to be supported soon. Multiple values can be assigned to the same key. One product may have up to 500 product_labels. Notice that the total number of distinct product_labels over all products in one ProductSet cannot exceed 1M, otherwise the product search pipeline will refuse to work for that ProductSet.",
          items = {
            ["$ref"] = "GoogleCloudVisionV1p1beta1ProductKeyValue",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p1beta1ProductKeyValue = {
      description = "A product label represented as a key-value pair.",
      id = "GoogleCloudVisionV1p1beta1ProductKeyValue",
      properties = {
        key = {
          description = "The key of the label attached to the product. Cannot be empty and cannot exceed 128 bytes.",
          type = "string",
        },
        value = {
          description = "The value of the label attached to the product. Cannot be empty and cannot exceed 128 bytes.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p1beta1ProductSearchResults = {
      description = "Results for a product search request.",
      id = "GoogleCloudVisionV1p1beta1ProductSearchResults",
      properties = {
        indexTime = {
          description = "Timestamp of the index which provided these results. Products added to the product set and products removed from the product set after this time are not reflected in the current results.",
          format = "google-datetime",
          type = "string",
        },
        productGroupedResults = {
          description = "List of results grouped by products detected in the query image. Each entry corresponds to one bounding polygon in the query image, and contains the matching products specific to that region. There may be duplicate product matches in the union of all the per-product results.",
          items = {
            ["$ref"] = "GoogleCloudVisionV1p1beta1ProductSearchResultsGroupedResult",
          },
          type = "array",
        },
        results = {
          description = "List of results, one for each product match.",
          items = {
            ["$ref"] = "GoogleCloudVisionV1p1beta1ProductSearchResultsResult",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p1beta1ProductSearchResultsGroupedResult = {
      description = "Information about the products similar to a single product in a query image.",
      id = "GoogleCloudVisionV1p1beta1ProductSearchResultsGroupedResult",
      properties = {
        boundingPoly = {
          ["$ref"] = "GoogleCloudVisionV1p1beta1BoundingPoly",
          description = "The bounding polygon around the product detected in the query image.",
        },
        objectAnnotations = {
          description = "List of generic predictions for the object in the bounding box.",
          items = {
            ["$ref"] = "GoogleCloudVisionV1p1beta1ProductSearchResultsObjectAnnotation",
          },
          type = "array",
        },
        results = {
          description = "List of results, one for each product match.",
          items = {
            ["$ref"] = "GoogleCloudVisionV1p1beta1ProductSearchResultsResult",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p1beta1ProductSearchResultsObjectAnnotation = {
      description = "Prediction for what the object in the bounding box is.",
      id = "GoogleCloudVisionV1p1beta1ProductSearchResultsObjectAnnotation",
      properties = {
        languageCode = {
          description = "The BCP-47 language code, such as \"en-US\" or \"sr-Latn\". For more information, see http://www.unicode.org/reports/tr35/#Unicode_locale_identifier.",
          type = "string",
        },
        mid = {
          description = "Object ID that should align with EntityAnnotation mid.",
          type = "string",
        },
        name = {
          description = "Object name, expressed in its `language_code` language.",
          type = "string",
        },
        score = {
          description = "Score of the result. Range [0, 1].",
          format = "float",
          type = "number",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p1beta1ProductSearchResultsResult = {
      description = "Information about a product.",
      id = "GoogleCloudVisionV1p1beta1ProductSearchResultsResult",
      properties = {
        image = {
          description = "The resource name of the image from the product that is the closest match to the query.",
          type = "string",
        },
        product = {
          ["$ref"] = "GoogleCloudVisionV1p1beta1Product",
          description = "The Product.",
        },
        score = {
          description = "A confidence level on the match, ranging from 0 (no confidence) to 1 (full confidence).",
          format = "float",
          type = "number",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p1beta1Property = {
      description = "A `Property` consists of a user-supplied name/value pair.",
      id = "GoogleCloudVisionV1p1beta1Property",
      properties = {
        name = {
          description = "Name of the property.",
          type = "string",
        },
        uint64Value = {
          description = "Value of numeric properties.",
          format = "uint64",
          type = "string",
        },
        value = {
          description = "Value of the property.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p1beta1SafeSearchAnnotation = {
      description = "Set of features pertaining to the image, computed by computer vision methods over safe-search verticals (for example, adult, spoof, medical, violence).",
      id = "GoogleCloudVisionV1p1beta1SafeSearchAnnotation",
      properties = {
        adult = {
          description = "Represents the adult content likelihood for the image. Adult content may contain elements such as nudity, pornographic images or cartoons, or sexual activities.",
          enum = {
            "UNKNOWN",
            "VERY_UNLIKELY",
            "UNLIKELY",
            "POSSIBLE",
            "LIKELY",
            "VERY_LIKELY",
          },
          enumDescriptions = {
            "Unknown likelihood.",
            "It is very unlikely.",
            "It is unlikely.",
            "It is possible.",
            "It is likely.",
            "It is very likely.",
          },
          type = "string",
        },
        medical = {
          description = "Likelihood that this is a medical image.",
          enum = {
            "UNKNOWN",
            "VERY_UNLIKELY",
            "UNLIKELY",
            "POSSIBLE",
            "LIKELY",
            "VERY_LIKELY",
          },
          enumDescriptions = {
            "Unknown likelihood.",
            "It is very unlikely.",
            "It is unlikely.",
            "It is possible.",
            "It is likely.",
            "It is very likely.",
          },
          type = "string",
        },
        racy = {
          description = "Likelihood that the request image contains racy content. Racy content may include (but is not limited to) skimpy or sheer clothing, strategically covered nudity, lewd or provocative poses, or close-ups of sensitive body areas.",
          enum = {
            "UNKNOWN",
            "VERY_UNLIKELY",
            "UNLIKELY",
            "POSSIBLE",
            "LIKELY",
            "VERY_LIKELY",
          },
          enumDescriptions = {
            "Unknown likelihood.",
            "It is very unlikely.",
            "It is unlikely.",
            "It is possible.",
            "It is likely.",
            "It is very likely.",
          },
          type = "string",
        },
        spoof = {
          description = "Spoof likelihood. The likelihood that an modification was made to the image's canonical version to make it appear funny or offensive.",
          enum = {
            "UNKNOWN",
            "VERY_UNLIKELY",
            "UNLIKELY",
            "POSSIBLE",
            "LIKELY",
            "VERY_LIKELY",
          },
          enumDescriptions = {
            "Unknown likelihood.",
            "It is very unlikely.",
            "It is unlikely.",
            "It is possible.",
            "It is likely.",
            "It is very likely.",
          },
          type = "string",
        },
        violence = {
          description = "Likelihood that this image contains violent content.",
          enum = {
            "UNKNOWN",
            "VERY_UNLIKELY",
            "UNLIKELY",
            "POSSIBLE",
            "LIKELY",
            "VERY_LIKELY",
          },
          enumDescriptions = {
            "Unknown likelihood.",
            "It is very unlikely.",
            "It is unlikely.",
            "It is possible.",
            "It is likely.",
            "It is very likely.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p1beta1Symbol = {
      description = "A single symbol representation.",
      id = "GoogleCloudVisionV1p1beta1Symbol",
      properties = {
        boundingBox = {
          ["$ref"] = "GoogleCloudVisionV1p1beta1BoundingPoly",
          description = "The bounding box for the symbol. The vertices are in the order of top-left, top-right, bottom-right, bottom-left. When a rotation of the bounding box is detected the rotation is represented as around the top-left corner as defined when the text is read in the 'natural' orientation. For example: * when the text is horizontal it might look like: 0----1 | | 3----2 * when it's rotated 180 degrees around the top-left corner it becomes: 2----3 | | 1----0 and the vertex order will still be (0, 1, 2, 3).",
        },
        confidence = {
          description = "Confidence of the OCR results for the symbol. Range [0, 1].",
          format = "float",
          type = "number",
        },
        property = {
          ["$ref"] = "GoogleCloudVisionV1p1beta1TextAnnotationTextProperty",
          description = "Additional information detected for the symbol.",
        },
        text = {
          description = "The actual UTF-8 representation of the symbol.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p1beta1TextAnnotation = {
      description = "TextAnnotation contains a structured representation of OCR extracted text. The hierarchy of an OCR extracted text structure is like this: TextAnnotation -> Page -> Block -> Paragraph -> Word -> Symbol Each structural component, starting from Page, may further have their own properties. Properties describe detected languages, breaks etc.. Please refer to the TextAnnotation.TextProperty message definition below for more detail.",
      id = "GoogleCloudVisionV1p1beta1TextAnnotation",
      properties = {
        pages = {
          description = "List of pages detected by OCR.",
          items = {
            ["$ref"] = "GoogleCloudVisionV1p1beta1Page",
          },
          type = "array",
        },
        text = {
          description = "UTF-8 text detected on the pages.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p1beta1TextAnnotationDetectedBreak = {
      description = "Detected start or end of a structural component.",
      id = "GoogleCloudVisionV1p1beta1TextAnnotationDetectedBreak",
      properties = {
        isPrefix = {
          description = "True if break prepends the element.",
          type = "boolean",
        },
        type = {
          description = "Detected break type.",
          enum = {
            "UNKNOWN",
            "SPACE",
            "SURE_SPACE",
            "EOL_SURE_SPACE",
            "HYPHEN",
            "LINE_BREAK",
          },
          enumDescriptions = {
            "Unknown break label type.",
            "Regular space.",
            "Sure space (very wide).",
            "Line-wrapping break.",
            "End-line hyphen that is not present in text; does not co-occur with `SPACE`, `LEADER_SPACE`, or `LINE_BREAK`.",
            "Line break that ends a paragraph.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p1beta1TextAnnotationDetectedLanguage = {
      description = "Detected language for a structural component.",
      id = "GoogleCloudVisionV1p1beta1TextAnnotationDetectedLanguage",
      properties = {
        confidence = {
          description = "Confidence of detected language. Range [0, 1].",
          format = "float",
          type = "number",
        },
        languageCode = {
          description = "The BCP-47 language code, such as \"en-US\" or \"sr-Latn\". For more information, see http://www.unicode.org/reports/tr35/#Unicode_locale_identifier.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p1beta1TextAnnotationTextProperty = {
      description = "Additional information detected on the structural component.",
      id = "GoogleCloudVisionV1p1beta1TextAnnotationTextProperty",
      properties = {
        detectedBreak = {
          ["$ref"] = "GoogleCloudVisionV1p1beta1TextAnnotationDetectedBreak",
          description = "Detected start or end of a text segment.",
        },
        detectedLanguages = {
          description = "A list of detected languages together with confidence.",
          items = {
            ["$ref"] = "GoogleCloudVisionV1p1beta1TextAnnotationDetectedLanguage",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p1beta1Vertex = {
      description = "A vertex represents a 2D point in the image. NOTE: the vertex coordinates are in the same scale as the original image.",
      id = "GoogleCloudVisionV1p1beta1Vertex",
      properties = {
        x = {
          description = "X coordinate.",
          format = "int32",
          type = "integer",
        },
        y = {
          description = "Y coordinate.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p1beta1WebDetection = {
      description = "Relevant information for the image from the Internet.",
      id = "GoogleCloudVisionV1p1beta1WebDetection",
      properties = {
        bestGuessLabels = {
          description = "The service's best guess as to the topic of the request image. Inferred from similar images on the open web.",
          items = {
            ["$ref"] = "GoogleCloudVisionV1p1beta1WebDetectionWebLabel",
          },
          type = "array",
        },
        fullMatchingImages = {
          description = "Fully matching images from the Internet. Can include resized copies of the query image.",
          items = {
            ["$ref"] = "GoogleCloudVisionV1p1beta1WebDetectionWebImage",
          },
          type = "array",
        },
        pagesWithMatchingImages = {
          description = "Web pages containing the matching images from the Internet.",
          items = {
            ["$ref"] = "GoogleCloudVisionV1p1beta1WebDetectionWebPage",
          },
          type = "array",
        },
        partialMatchingImages = {
          description = "Partial matching images from the Internet. Those images are similar enough to share some key-point features. For example an original image will likely have partial matching for its crops.",
          items = {
            ["$ref"] = "GoogleCloudVisionV1p1beta1WebDetectionWebImage",
          },
          type = "array",
        },
        visuallySimilarImages = {
          description = "The visually similar image results.",
          items = {
            ["$ref"] = "GoogleCloudVisionV1p1beta1WebDetectionWebImage",
          },
          type = "array",
        },
        webEntities = {
          description = "Deduced entities from similar images on the Internet.",
          items = {
            ["$ref"] = "GoogleCloudVisionV1p1beta1WebDetectionWebEntity",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p1beta1WebDetectionWebEntity = {
      description = "Entity deduced from similar images on the Internet.",
      id = "GoogleCloudVisionV1p1beta1WebDetectionWebEntity",
      properties = {
        description = {
          description = "Canonical description of the entity, in English.",
          type = "string",
        },
        entityId = {
          description = "Opaque entity ID.",
          type = "string",
        },
        score = {
          description = "Overall relevancy score for the entity. Not normalized and not comparable across different image queries.",
          format = "float",
          type = "number",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p1beta1WebDetectionWebImage = {
      description = "Metadata for online images.",
      id = "GoogleCloudVisionV1p1beta1WebDetectionWebImage",
      properties = {
        score = {
          description = "(Deprecated) Overall relevancy score for the image.",
          format = "float",
          type = "number",
        },
        url = {
          description = "The result image URL.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p1beta1WebDetectionWebLabel = {
      description = "Label to provide extra metadata for the web detection.",
      id = "GoogleCloudVisionV1p1beta1WebDetectionWebLabel",
      properties = {
        label = {
          description = "Label for extra metadata.",
          type = "string",
        },
        languageCode = {
          description = "The BCP-47 language code for `label`, such as \"en-US\" or \"sr-Latn\". For more information, see http://www.unicode.org/reports/tr35/#Unicode_locale_identifier.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p1beta1WebDetectionWebPage = {
      description = "Metadata for web pages.",
      id = "GoogleCloudVisionV1p1beta1WebDetectionWebPage",
      properties = {
        fullMatchingImages = {
          description = "Fully matching images on the page. Can include resized copies of the query image.",
          items = {
            ["$ref"] = "GoogleCloudVisionV1p1beta1WebDetectionWebImage",
          },
          type = "array",
        },
        pageTitle = {
          description = "Title for the web page, may contain HTML markups.",
          type = "string",
        },
        partialMatchingImages = {
          description = "Partial matching images on the page. Those images are similar enough to share some key-point features. For example an original image will likely have partial matching for its crops.",
          items = {
            ["$ref"] = "GoogleCloudVisionV1p1beta1WebDetectionWebImage",
          },
          type = "array",
        },
        score = {
          description = "(Deprecated) Overall relevancy score for the web page.",
          format = "float",
          type = "number",
        },
        url = {
          description = "The result web page URL.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p1beta1Word = {
      description = "A word representation.",
      id = "GoogleCloudVisionV1p1beta1Word",
      properties = {
        boundingBox = {
          ["$ref"] = "GoogleCloudVisionV1p1beta1BoundingPoly",
          description = "The bounding box for the word. The vertices are in the order of top-left, top-right, bottom-right, bottom-left. When a rotation of the bounding box is detected the rotation is represented as around the top-left corner as defined when the text is read in the 'natural' orientation. For example: * when the text is horizontal it might look like: 0----1 | | 3----2 * when it's rotated 180 degrees around the top-left corner it becomes: 2----3 | | 1----0 and the vertex order will still be (0, 1, 2, 3).",
        },
        confidence = {
          description = "Confidence of the OCR results for the word. Range [0, 1].",
          format = "float",
          type = "number",
        },
        property = {
          ["$ref"] = "GoogleCloudVisionV1p1beta1TextAnnotationTextProperty",
          description = "Additional information detected for the word.",
        },
        symbols = {
          description = "List of symbols in the word. The order of the symbols follows the natural reading order.",
          items = {
            ["$ref"] = "GoogleCloudVisionV1p1beta1Symbol",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p2beta1AnnotateFileResponse = {
      description = "Response to a single file annotation request. A file may contain one or more images, which individually have their own responses.",
      id = "GoogleCloudVisionV1p2beta1AnnotateFileResponse",
      properties = {
        error = {
          ["$ref"] = "Status",
          description = "If set, represents the error message for the failed request. The `responses` field will not be set in this case.",
        },
        inputConfig = {
          ["$ref"] = "GoogleCloudVisionV1p2beta1InputConfig",
          description = "Information about the file for which this response is generated.",
        },
        responses = {
          description = "Individual responses to images found within the file. This field will be empty if the `error` field is set.",
          items = {
            ["$ref"] = "GoogleCloudVisionV1p2beta1AnnotateImageResponse",
          },
          type = "array",
        },
        totalPages = {
          description = "This field gives the total number of pages in the file.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p2beta1AnnotateImageResponse = {
      description = "Response to an image annotation request.",
      id = "GoogleCloudVisionV1p2beta1AnnotateImageResponse",
      properties = {
        context = {
          ["$ref"] = "GoogleCloudVisionV1p2beta1ImageAnnotationContext",
          description = "If present, contextual information is needed to understand where this image comes from.",
        },
        cropHintsAnnotation = {
          ["$ref"] = "GoogleCloudVisionV1p2beta1CropHintsAnnotation",
          description = "If present, crop hints have completed successfully.",
        },
        error = {
          ["$ref"] = "Status",
          description = "If set, represents the error message for the operation. Note that filled-in image annotations are guaranteed to be correct, even when `error` is set.",
        },
        faceAnnotations = {
          description = "If present, face detection has completed successfully.",
          items = {
            ["$ref"] = "GoogleCloudVisionV1p2beta1FaceAnnotation",
          },
          type = "array",
        },
        fullTextAnnotation = {
          ["$ref"] = "GoogleCloudVisionV1p2beta1TextAnnotation",
          description = "If present, text (OCR) detection or document (OCR) text detection has completed successfully. This annotation provides the structural hierarchy for the OCR detected text.",
        },
        imagePropertiesAnnotation = {
          ["$ref"] = "GoogleCloudVisionV1p2beta1ImageProperties",
          description = "If present, image properties were extracted successfully.",
        },
        labelAnnotations = {
          description = "If present, label detection has completed successfully.",
          items = {
            ["$ref"] = "GoogleCloudVisionV1p2beta1EntityAnnotation",
          },
          type = "array",
        },
        landmarkAnnotations = {
          description = "If present, landmark detection has completed successfully.",
          items = {
            ["$ref"] = "GoogleCloudVisionV1p2beta1EntityAnnotation",
          },
          type = "array",
        },
        localizedObjectAnnotations = {
          description = "If present, localized object detection has completed successfully. This will be sorted descending by confidence score.",
          items = {
            ["$ref"] = "GoogleCloudVisionV1p2beta1LocalizedObjectAnnotation",
          },
          type = "array",
        },
        logoAnnotations = {
          description = "If present, logo detection has completed successfully.",
          items = {
            ["$ref"] = "GoogleCloudVisionV1p2beta1EntityAnnotation",
          },
          type = "array",
        },
        productSearchResults = {
          ["$ref"] = "GoogleCloudVisionV1p2beta1ProductSearchResults",
          description = "If present, product search has completed successfully.",
        },
        safeSearchAnnotation = {
          ["$ref"] = "GoogleCloudVisionV1p2beta1SafeSearchAnnotation",
          description = "If present, safe-search annotation has completed successfully.",
        },
        textAnnotations = {
          description = "If present, text (OCR) detection has completed successfully.",
          items = {
            ["$ref"] = "GoogleCloudVisionV1p2beta1EntityAnnotation",
          },
          type = "array",
        },
        webDetection = {
          ["$ref"] = "GoogleCloudVisionV1p2beta1WebDetection",
          description = "If present, web detection has completed successfully.",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p2beta1AsyncAnnotateFileResponse = {
      description = "The response for a single offline file annotation request.",
      id = "GoogleCloudVisionV1p2beta1AsyncAnnotateFileResponse",
      properties = {
        outputConfig = {
          ["$ref"] = "GoogleCloudVisionV1p2beta1OutputConfig",
          description = "The output location and metadata from AsyncAnnotateFileRequest.",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesResponse = {
      description = "Response to an async batch file annotation request.",
      id = "GoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesResponse",
      properties = {
        responses = {
          description = "The list of file annotation responses, one for each request in AsyncBatchAnnotateFilesRequest.",
          items = {
            ["$ref"] = "GoogleCloudVisionV1p2beta1AsyncAnnotateFileResponse",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p2beta1Block = {
      description = "Logical element on the page.",
      id = "GoogleCloudVisionV1p2beta1Block",
      properties = {
        blockType = {
          description = "Detected block type (text, image etc) for this block.",
          enum = {
            "UNKNOWN",
            "TEXT",
            "TABLE",
            "PICTURE",
            "RULER",
            "BARCODE",
          },
          enumDescriptions = {
            "Unknown block type.",
            "Regular text block.",
            "Table block.",
            "Image block.",
            "Horizontal/vertical line box.",
            "Barcode block.",
          },
          type = "string",
        },
        boundingBox = {
          ["$ref"] = "GoogleCloudVisionV1p2beta1BoundingPoly",
          description = "The bounding box for the block. The vertices are in the order of top-left, top-right, bottom-right, bottom-left. When a rotation of the bounding box is detected the rotation is represented as around the top-left corner as defined when the text is read in the 'natural' orientation. For example: * when the text is horizontal it might look like: 0----1 | | 3----2 * when it's rotated 180 degrees around the top-left corner it becomes: 2----3 | | 1----0 and the vertex order will still be (0, 1, 2, 3).",
        },
        confidence = {
          description = "Confidence of the OCR results on the block. Range [0, 1].",
          format = "float",
          type = "number",
        },
        paragraphs = {
          description = "List of paragraphs in this block (if this blocks is of type text).",
          items = {
            ["$ref"] = "GoogleCloudVisionV1p2beta1Paragraph",
          },
          type = "array",
        },
        property = {
          ["$ref"] = "GoogleCloudVisionV1p2beta1TextAnnotationTextProperty",
          description = "Additional information detected for the block.",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p2beta1BoundingPoly = {
      description = "A bounding polygon for the detected image annotation.",
      id = "GoogleCloudVisionV1p2beta1BoundingPoly",
      properties = {
        normalizedVertices = {
          description = "The bounding polygon normalized vertices.",
          items = {
            ["$ref"] = "GoogleCloudVisionV1p2beta1NormalizedVertex",
          },
          type = "array",
        },
        vertices = {
          description = "The bounding polygon vertices.",
          items = {
            ["$ref"] = "GoogleCloudVisionV1p2beta1Vertex",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p2beta1ColorInfo = {
      description = "Color information consists of RGB channels, score, and the fraction of the image that the color occupies in the image.",
      id = "GoogleCloudVisionV1p2beta1ColorInfo",
      properties = {
        color = {
          ["$ref"] = "Color",
          description = "RGB components of the color.",
        },
        pixelFraction = {
          description = "The fraction of pixels the color occupies in the image. Value in range [0, 1].",
          format = "float",
          type = "number",
        },
        score = {
          description = "Image-specific score for this color. Value in range [0, 1].",
          format = "float",
          type = "number",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p2beta1CropHint = {
      description = "Single crop hint that is used to generate a new crop when serving an image.",
      id = "GoogleCloudVisionV1p2beta1CropHint",
      properties = {
        boundingPoly = {
          ["$ref"] = "GoogleCloudVisionV1p2beta1BoundingPoly",
          description = "The bounding polygon for the crop region. The coordinates of the bounding box are in the original image's scale.",
        },
        confidence = {
          description = "Confidence of this being a salient region. Range [0, 1].",
          format = "float",
          type = "number",
        },
        importanceFraction = {
          description = "Fraction of importance of this salient region with respect to the original image.",
          format = "float",
          type = "number",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p2beta1CropHintsAnnotation = {
      description = "Set of crop hints that are used to generate new crops when serving images.",
      id = "GoogleCloudVisionV1p2beta1CropHintsAnnotation",
      properties = {
        cropHints = {
          description = "Crop hint results.",
          items = {
            ["$ref"] = "GoogleCloudVisionV1p2beta1CropHint",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p2beta1DominantColorsAnnotation = {
      description = "Set of dominant colors and their corresponding scores.",
      id = "GoogleCloudVisionV1p2beta1DominantColorsAnnotation",
      properties = {
        colors = {
          description = "RGB color values with their score and pixel fraction.",
          items = {
            ["$ref"] = "GoogleCloudVisionV1p2beta1ColorInfo",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p2beta1EntityAnnotation = {
      description = "Set of detected entity features.",
      id = "GoogleCloudVisionV1p2beta1EntityAnnotation",
      properties = {
        boundingPoly = {
          ["$ref"] = "GoogleCloudVisionV1p2beta1BoundingPoly",
          description = "Image region to which this entity belongs. Not produced for `LABEL_DETECTION` features.",
        },
        confidence = {
          description = "**Deprecated. Use `score` instead.** The accuracy of the entity detection in an image. For example, for an image in which the \"Eiffel Tower\" entity is detected, this field represents the confidence that there is a tower in the query image. Range [0, 1].",
          format = "float",
          type = "number",
        },
        description = {
          description = "Entity textual description, expressed in its `locale` language.",
          type = "string",
        },
        locale = {
          description = "The language code for the locale in which the entity textual `description` is expressed.",
          type = "string",
        },
        locations = {
          description = "The location information for the detected entity. Multiple `LocationInfo` elements can be present because one location may indicate the location of the scene in the image, and another location may indicate the location of the place where the image was taken. Location information is usually present for landmarks.",
          items = {
            ["$ref"] = "GoogleCloudVisionV1p2beta1LocationInfo",
          },
          type = "array",
        },
        mid = {
          description = "Opaque entity ID. Some IDs may be available in [Google Knowledge Graph Search API](https://developers.google.com/knowledge-graph/).",
          type = "string",
        },
        properties = {
          description = "Some entities may have optional user-supplied `Property` (name/value) fields, such a score or string that qualifies the entity.",
          items = {
            ["$ref"] = "GoogleCloudVisionV1p2beta1Property",
          },
          type = "array",
        },
        score = {
          description = "Overall score of the result. Range [0, 1].",
          format = "float",
          type = "number",
        },
        topicality = {
          description = "The relevancy of the ICA (Image Content Annotation) label to the image. For example, the relevancy of \"tower\" is likely higher to an image containing the detected \"Eiffel Tower\" than to an image containing a detected distant towering building, even though the confidence that there is a tower in each image may be the same. Range [0, 1].",
          format = "float",
          type = "number",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p2beta1FaceAnnotation = {
      description = "A face annotation object contains the results of face detection.",
      id = "GoogleCloudVisionV1p2beta1FaceAnnotation",
      properties = {
        angerLikelihood = {
          description = "Anger likelihood.",
          enum = {
            "UNKNOWN",
            "VERY_UNLIKELY",
            "UNLIKELY",
            "POSSIBLE",
            "LIKELY",
            "VERY_LIKELY",
          },
          enumDescriptions = {
            "Unknown likelihood.",
            "It is very unlikely.",
            "It is unlikely.",
            "It is possible.",
            "It is likely.",
            "It is very likely.",
          },
          type = "string",
        },
        blurredLikelihood = {
          description = "Blurred likelihood.",
          enum = {
            "UNKNOWN",
            "VERY_UNLIKELY",
            "UNLIKELY",
            "POSSIBLE",
            "LIKELY",
            "VERY_LIKELY",
          },
          enumDescriptions = {
            "Unknown likelihood.",
            "It is very unlikely.",
            "It is unlikely.",
            "It is possible.",
            "It is likely.",
            "It is very likely.",
          },
          type = "string",
        },
        boundingPoly = {
          ["$ref"] = "GoogleCloudVisionV1p2beta1BoundingPoly",
          description = "The bounding polygon around the face. The coordinates of the bounding box are in the original image's scale. The bounding box is computed to \"frame\" the face in accordance with human expectations. It is based on the landmarker results. Note that one or more x and/or y coordinates may not be generated in the `BoundingPoly` (the polygon will be unbounded) if only a partial face appears in the image to be annotated.",
        },
        detectionConfidence = {
          description = "Detection confidence. Range [0, 1].",
          format = "float",
          type = "number",
        },
        fdBoundingPoly = {
          ["$ref"] = "GoogleCloudVisionV1p2beta1BoundingPoly",
          description = "The `fd_bounding_poly` bounding polygon is tighter than the `boundingPoly`, and encloses only the skin part of the face. Typically, it is used to eliminate the face from any image analysis that detects the \"amount of skin\" visible in an image. It is not based on the landmarker results, only on the initial face detection, hence the fd (face detection) prefix.",
        },
        headwearLikelihood = {
          description = "Headwear likelihood.",
          enum = {
            "UNKNOWN",
            "VERY_UNLIKELY",
            "UNLIKELY",
            "POSSIBLE",
            "LIKELY",
            "VERY_LIKELY",
          },
          enumDescriptions = {
            "Unknown likelihood.",
            "It is very unlikely.",
            "It is unlikely.",
            "It is possible.",
            "It is likely.",
            "It is very likely.",
          },
          type = "string",
        },
        joyLikelihood = {
          description = "Joy likelihood.",
          enum = {
            "UNKNOWN",
            "VERY_UNLIKELY",
            "UNLIKELY",
            "POSSIBLE",
            "LIKELY",
            "VERY_LIKELY",
          },
          enumDescriptions = {
            "Unknown likelihood.",
            "It is very unlikely.",
            "It is unlikely.",
            "It is possible.",
            "It is likely.",
            "It is very likely.",
          },
          type = "string",
        },
        landmarkingConfidence = {
          description = "Face landmarking confidence. Range [0, 1].",
          format = "float",
          type = "number",
        },
        landmarks = {
          description = "Detected face landmarks.",
          items = {
            ["$ref"] = "GoogleCloudVisionV1p2beta1FaceAnnotationLandmark",
          },
          type = "array",
        },
        panAngle = {
          description = "Yaw angle, which indicates the leftward/rightward angle that the face is pointing relative to the vertical plane perpendicular to the image. Range [-180,180].",
          format = "float",
          type = "number",
        },
        rollAngle = {
          description = "Roll angle, which indicates the amount of clockwise/anti-clockwise rotation of the face relative to the image vertical about the axis perpendicular to the face. Range [-180,180].",
          format = "float",
          type = "number",
        },
        sorrowLikelihood = {
          description = "Sorrow likelihood.",
          enum = {
            "UNKNOWN",
            "VERY_UNLIKELY",
            "UNLIKELY",
            "POSSIBLE",
            "LIKELY",
            "VERY_LIKELY",
          },
          enumDescriptions = {
            "Unknown likelihood.",
            "It is very unlikely.",
            "It is unlikely.",
            "It is possible.",
            "It is likely.",
            "It is very likely.",
          },
          type = "string",
        },
        surpriseLikelihood = {
          description = "Surprise likelihood.",
          enum = {
            "UNKNOWN",
            "VERY_UNLIKELY",
            "UNLIKELY",
            "POSSIBLE",
            "LIKELY",
            "VERY_LIKELY",
          },
          enumDescriptions = {
            "Unknown likelihood.",
            "It is very unlikely.",
            "It is unlikely.",
            "It is possible.",
            "It is likely.",
            "It is very likely.",
          },
          type = "string",
        },
        tiltAngle = {
          description = "Pitch angle, which indicates the upwards/downwards angle that the face is pointing relative to the image's horizontal plane. Range [-180,180].",
          format = "float",
          type = "number",
        },
        underExposedLikelihood = {
          description = "Under-exposed likelihood.",
          enum = {
            "UNKNOWN",
            "VERY_UNLIKELY",
            "UNLIKELY",
            "POSSIBLE",
            "LIKELY",
            "VERY_LIKELY",
          },
          enumDescriptions = {
            "Unknown likelihood.",
            "It is very unlikely.",
            "It is unlikely.",
            "It is possible.",
            "It is likely.",
            "It is very likely.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p2beta1FaceAnnotationLandmark = {
      description = "A face-specific landmark (for example, a face feature).",
      id = "GoogleCloudVisionV1p2beta1FaceAnnotationLandmark",
      properties = {
        position = {
          ["$ref"] = "GoogleCloudVisionV1p2beta1Position",
          description = "Face landmark position.",
        },
        type = {
          description = "Face landmark type.",
          enum = {
            "UNKNOWN_LANDMARK",
            "LEFT_EYE",
            "RIGHT_EYE",
            "LEFT_OF_LEFT_EYEBROW",
            "RIGHT_OF_LEFT_EYEBROW",
            "LEFT_OF_RIGHT_EYEBROW",
            "RIGHT_OF_RIGHT_EYEBROW",
            "MIDPOINT_BETWEEN_EYES",
            "NOSE_TIP",
            "UPPER_LIP",
            "LOWER_LIP",
            "MOUTH_LEFT",
            "MOUTH_RIGHT",
            "MOUTH_CENTER",
            "NOSE_BOTTOM_RIGHT",
            "NOSE_BOTTOM_LEFT",
            "NOSE_BOTTOM_CENTER",
            "LEFT_EYE_TOP_BOUNDARY",
            "LEFT_EYE_RIGHT_CORNER",
            "LEFT_EYE_BOTTOM_BOUNDARY",
            "LEFT_EYE_LEFT_CORNER",
            "RIGHT_EYE_TOP_BOUNDARY",
            "RIGHT_EYE_RIGHT_CORNER",
            "RIGHT_EYE_BOTTOM_BOUNDARY",
            "RIGHT_EYE_LEFT_CORNER",
            "LEFT_EYEBROW_UPPER_MIDPOINT",
            "RIGHT_EYEBROW_UPPER_MIDPOINT",
            "LEFT_EAR_TRAGION",
            "RIGHT_EAR_TRAGION",
            "LEFT_EYE_PUPIL",
            "RIGHT_EYE_PUPIL",
            "FOREHEAD_GLABELLA",
            "CHIN_GNATHION",
            "CHIN_LEFT_GONION",
            "CHIN_RIGHT_GONION",
            "LEFT_CHEEK_CENTER",
            "RIGHT_CHEEK_CENTER",
          },
          enumDescriptions = {
            "Unknown face landmark detected. Should not be filled.",
            "Left eye.",
            "Right eye.",
            "Left of left eyebrow.",
            "Right of left eyebrow.",
            "Left of right eyebrow.",
            "Right of right eyebrow.",
            "Midpoint between eyes.",
            "Nose tip.",
            "Upper lip.",
            "Lower lip.",
            "Mouth left.",
            "Mouth right.",
            "Mouth center.",
            "Nose, bottom right.",
            "Nose, bottom left.",
            "Nose, bottom center.",
            "Left eye, top boundary.",
            "Left eye, right corner.",
            "Left eye, bottom boundary.",
            "Left eye, left corner.",
            "Right eye, top boundary.",
            "Right eye, right corner.",
            "Right eye, bottom boundary.",
            "Right eye, left corner.",
            "Left eyebrow, upper midpoint.",
            "Right eyebrow, upper midpoint.",
            "Left ear tragion.",
            "Right ear tragion.",
            "Left eye pupil.",
            "Right eye pupil.",
            "Forehead glabella.",
            "Chin gnathion.",
            "Chin left gonion.",
            "Chin right gonion.",
            "Left cheek center.",
            "Right cheek center.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p2beta1GcsDestination = {
      description = "The Google Cloud Storage location where the output will be written to.",
      id = "GoogleCloudVisionV1p2beta1GcsDestination",
      properties = {
        uri = {
          description = "Google Cloud Storage URI prefix where the results will be stored. Results will be in JSON format and preceded by its corresponding input URI prefix. This field can either represent a gcs file prefix or gcs directory. In either case, the uri should be unique because in order to get all of the output files, you will need to do a wildcard gcs search on the uri prefix you provide. Examples: * File Prefix: gs://bucket-name/here/filenameprefix The output files will be created in gs://bucket-name/here/ and the names of the output files will begin with \"filenameprefix\". * Directory Prefix: gs://bucket-name/some/location/ The output files will be created in gs://bucket-name/some/location/ and the names of the output files could be anything because there was no filename prefix specified. If multiple outputs, each response is still AnnotateFileResponse, each of which contains some subset of the full list of AnnotateImageResponse. Multiple outputs can happen if, for example, the output JSON is too large and overflows into multiple sharded files.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p2beta1GcsSource = {
      description = "The Google Cloud Storage location where the input will be read from.",
      id = "GoogleCloudVisionV1p2beta1GcsSource",
      properties = {
        uri = {
          description = "Google Cloud Storage URI for the input file. This must only be a Google Cloud Storage object. Wildcards are not currently supported.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p2beta1ImageAnnotationContext = {
      description = "If an image was produced from a file (e.g. a PDF), this message gives information about the source of that image.",
      id = "GoogleCloudVisionV1p2beta1ImageAnnotationContext",
      properties = {
        pageNumber = {
          description = "If the file was a PDF or TIFF, this field gives the page number within the file used to produce the image.",
          format = "int32",
          type = "integer",
        },
        uri = {
          description = "The URI of the file used to produce the image.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p2beta1ImageProperties = {
      description = "Stores image properties, such as dominant colors.",
      id = "GoogleCloudVisionV1p2beta1ImageProperties",
      properties = {
        dominantColors = {
          ["$ref"] = "GoogleCloudVisionV1p2beta1DominantColorsAnnotation",
          description = "If present, dominant colors completed successfully.",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p2beta1InputConfig = {
      description = "The desired input location and metadata.",
      id = "GoogleCloudVisionV1p2beta1InputConfig",
      properties = {
        content = {
          description = "File content, represented as a stream of bytes. Note: As with all `bytes` fields, protobuffers use a pure binary representation, whereas JSON representations use base64. Currently, this field only works for BatchAnnotateFiles requests. It does not work for AsyncBatchAnnotateFiles requests.",
          format = "byte",
          type = "string",
        },
        gcsSource = {
          ["$ref"] = "GoogleCloudVisionV1p2beta1GcsSource",
          description = "The Google Cloud Storage location to read the input from.",
        },
        mimeType = {
          description = "The type of the file. Currently only \"application/pdf\", \"image/tiff\" and \"image/gif\" are supported. Wildcards are not supported.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p2beta1LocalizedObjectAnnotation = {
      description = "Set of detected objects with bounding boxes.",
      id = "GoogleCloudVisionV1p2beta1LocalizedObjectAnnotation",
      properties = {
        boundingPoly = {
          ["$ref"] = "GoogleCloudVisionV1p2beta1BoundingPoly",
          description = "Image region to which this object belongs. This must be populated.",
        },
        languageCode = {
          description = "The BCP-47 language code, such as \"en-US\" or \"sr-Latn\". For more information, see http://www.unicode.org/reports/tr35/#Unicode_locale_identifier.",
          type = "string",
        },
        mid = {
          description = "Object ID that should align with EntityAnnotation mid.",
          type = "string",
        },
        name = {
          description = "Object name, expressed in its `language_code` language.",
          type = "string",
        },
        score = {
          description = "Score of the result. Range [0, 1].",
          format = "float",
          type = "number",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p2beta1LocationInfo = {
      description = "Detected entity location information.",
      id = "GoogleCloudVisionV1p2beta1LocationInfo",
      properties = {
        latLng = {
          ["$ref"] = "LatLng",
          description = "lat/long location coordinates.",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p2beta1NormalizedVertex = {
      description = "A vertex represents a 2D point in the image. NOTE: the normalized vertex coordinates are relative to the original image and range from 0 to 1.",
      id = "GoogleCloudVisionV1p2beta1NormalizedVertex",
      properties = {
        x = {
          description = "X coordinate.",
          format = "float",
          type = "number",
        },
        y = {
          description = "Y coordinate.",
          format = "float",
          type = "number",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p2beta1OperationMetadata = {
      description = "Contains metadata for the BatchAnnotateImages operation.",
      id = "GoogleCloudVisionV1p2beta1OperationMetadata",
      properties = {
        createTime = {
          description = "The time when the batch request was received.",
          format = "google-datetime",
          type = "string",
        },
        state = {
          description = "Current state of the batch operation.",
          enum = {
            "STATE_UNSPECIFIED",
            "CREATED",
            "RUNNING",
            "DONE",
            "CANCELLED",
          },
          enumDescriptions = {
            "Invalid.",
            "Request is received.",
            "Request is actively being processed.",
            "The batch processing is done.",
            "The batch processing was cancelled.",
          },
          type = "string",
        },
        updateTime = {
          description = "The time when the operation result was last updated.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p2beta1OutputConfig = {
      description = "The desired output location and metadata.",
      id = "GoogleCloudVisionV1p2beta1OutputConfig",
      properties = {
        batchSize = {
          description = "The max number of response protos to put into each output JSON file on Google Cloud Storage. The valid range is [1, 100]. If not specified, the default value is 20. For example, for one pdf file with 100 pages, 100 response protos will be generated. If `batch_size` = 20, then 5 json files each containing 20 response protos will be written under the prefix `gcs_destination`.`uri`. Currently, batch_size only applies to GcsDestination, with potential future support for other output configurations.",
          format = "int32",
          type = "integer",
        },
        gcsDestination = {
          ["$ref"] = "GoogleCloudVisionV1p2beta1GcsDestination",
          description = "The Google Cloud Storage location to write the output(s) to.",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p2beta1Page = {
      description = "Detected page from OCR.",
      id = "GoogleCloudVisionV1p2beta1Page",
      properties = {
        blocks = {
          description = "List of blocks of text, images etc on this page.",
          items = {
            ["$ref"] = "GoogleCloudVisionV1p2beta1Block",
          },
          type = "array",
        },
        confidence = {
          description = "Confidence of the OCR results on the page. Range [0, 1].",
          format = "float",
          type = "number",
        },
        height = {
          description = "Page height. For PDFs the unit is points. For images (including TIFFs) the unit is pixels.",
          format = "int32",
          type = "integer",
        },
        property = {
          ["$ref"] = "GoogleCloudVisionV1p2beta1TextAnnotationTextProperty",
          description = "Additional information detected on the page.",
        },
        width = {
          description = "Page width. For PDFs the unit is points. For images (including TIFFs) the unit is pixels.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p2beta1Paragraph = {
      description = "Structural unit of text representing a number of words in certain order.",
      id = "GoogleCloudVisionV1p2beta1Paragraph",
      properties = {
        boundingBox = {
          ["$ref"] = "GoogleCloudVisionV1p2beta1BoundingPoly",
          description = "The bounding box for the paragraph. The vertices are in the order of top-left, top-right, bottom-right, bottom-left. When a rotation of the bounding box is detected the rotation is represented as around the top-left corner as defined when the text is read in the 'natural' orientation. For example: * when the text is horizontal it might look like: 0----1 | | 3----2 * when it's rotated 180 degrees around the top-left corner it becomes: 2----3 | | 1----0 and the vertex order will still be (0, 1, 2, 3).",
        },
        confidence = {
          description = "Confidence of the OCR results for the paragraph. Range [0, 1].",
          format = "float",
          type = "number",
        },
        property = {
          ["$ref"] = "GoogleCloudVisionV1p2beta1TextAnnotationTextProperty",
          description = "Additional information detected for the paragraph.",
        },
        words = {
          description = "List of all words in this paragraph.",
          items = {
            ["$ref"] = "GoogleCloudVisionV1p2beta1Word",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p2beta1Position = {
      description = "A 3D position in the image, used primarily for Face detection landmarks. A valid Position must have both x and y coordinates. The position coordinates are in the same scale as the original image.",
      id = "GoogleCloudVisionV1p2beta1Position",
      properties = {
        x = {
          description = "X coordinate.",
          format = "float",
          type = "number",
        },
        y = {
          description = "Y coordinate.",
          format = "float",
          type = "number",
        },
        z = {
          description = "Z coordinate (or depth).",
          format = "float",
          type = "number",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p2beta1Product = {
      description = "A Product contains ReferenceImages.",
      id = "GoogleCloudVisionV1p2beta1Product",
      properties = {
        description = {
          description = "User-provided metadata to be stored with this product. Must be at most 4096 characters long.",
          type = "string",
        },
        displayName = {
          description = "The user-provided name for this Product. Must not be empty. Must be at most 4096 characters long.",
          type = "string",
        },
        name = {
          description = "The resource name of the product. Format is: `projects/PROJECT_ID/locations/LOC_ID/products/PRODUCT_ID`. This field is ignored when creating a product.",
          type = "string",
        },
        productCategory = {
          description = "Immutable. The category for the product identified by the reference image. This should be one of \"homegoods-v2\", \"apparel-v2\", \"toys-v2\", \"packagedgoods-v1\" or \"general-v1\". The legacy categories \"homegoods\", \"apparel\", and \"toys\" are still supported, but these should not be used for new products.",
          type = "string",
        },
        productLabels = {
          description = "Key-value pairs that can be attached to a product. At query time, constraints can be specified based on the product_labels. Note that integer values can be provided as strings, e.g. \"1199\". Only strings with integer values can match a range-based restriction which is to be supported soon. Multiple values can be assigned to the same key. One product may have up to 500 product_labels. Notice that the total number of distinct product_labels over all products in one ProductSet cannot exceed 1M, otherwise the product search pipeline will refuse to work for that ProductSet.",
          items = {
            ["$ref"] = "GoogleCloudVisionV1p2beta1ProductKeyValue",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p2beta1ProductKeyValue = {
      description = "A product label represented as a key-value pair.",
      id = "GoogleCloudVisionV1p2beta1ProductKeyValue",
      properties = {
        key = {
          description = "The key of the label attached to the product. Cannot be empty and cannot exceed 128 bytes.",
          type = "string",
        },
        value = {
          description = "The value of the label attached to the product. Cannot be empty and cannot exceed 128 bytes.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p2beta1ProductSearchResults = {
      description = "Results for a product search request.",
      id = "GoogleCloudVisionV1p2beta1ProductSearchResults",
      properties = {
        indexTime = {
          description = "Timestamp of the index which provided these results. Products added to the product set and products removed from the product set after this time are not reflected in the current results.",
          format = "google-datetime",
          type = "string",
        },
        productGroupedResults = {
          description = "List of results grouped by products detected in the query image. Each entry corresponds to one bounding polygon in the query image, and contains the matching products specific to that region. There may be duplicate product matches in the union of all the per-product results.",
          items = {
            ["$ref"] = "GoogleCloudVisionV1p2beta1ProductSearchResultsGroupedResult",
          },
          type = "array",
        },
        results = {
          description = "List of results, one for each product match.",
          items = {
            ["$ref"] = "GoogleCloudVisionV1p2beta1ProductSearchResultsResult",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p2beta1ProductSearchResultsGroupedResult = {
      description = "Information about the products similar to a single product in a query image.",
      id = "GoogleCloudVisionV1p2beta1ProductSearchResultsGroupedResult",
      properties = {
        boundingPoly = {
          ["$ref"] = "GoogleCloudVisionV1p2beta1BoundingPoly",
          description = "The bounding polygon around the product detected in the query image.",
        },
        objectAnnotations = {
          description = "List of generic predictions for the object in the bounding box.",
          items = {
            ["$ref"] = "GoogleCloudVisionV1p2beta1ProductSearchResultsObjectAnnotation",
          },
          type = "array",
        },
        results = {
          description = "List of results, one for each product match.",
          items = {
            ["$ref"] = "GoogleCloudVisionV1p2beta1ProductSearchResultsResult",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p2beta1ProductSearchResultsObjectAnnotation = {
      description = "Prediction for what the object in the bounding box is.",
      id = "GoogleCloudVisionV1p2beta1ProductSearchResultsObjectAnnotation",
      properties = {
        languageCode = {
          description = "The BCP-47 language code, such as \"en-US\" or \"sr-Latn\". For more information, see http://www.unicode.org/reports/tr35/#Unicode_locale_identifier.",
          type = "string",
        },
        mid = {
          description = "Object ID that should align with EntityAnnotation mid.",
          type = "string",
        },
        name = {
          description = "Object name, expressed in its `language_code` language.",
          type = "string",
        },
        score = {
          description = "Score of the result. Range [0, 1].",
          format = "float",
          type = "number",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p2beta1ProductSearchResultsResult = {
      description = "Information about a product.",
      id = "GoogleCloudVisionV1p2beta1ProductSearchResultsResult",
      properties = {
        image = {
          description = "The resource name of the image from the product that is the closest match to the query.",
          type = "string",
        },
        product = {
          ["$ref"] = "GoogleCloudVisionV1p2beta1Product",
          description = "The Product.",
        },
        score = {
          description = "A confidence level on the match, ranging from 0 (no confidence) to 1 (full confidence).",
          format = "float",
          type = "number",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p2beta1Property = {
      description = "A `Property` consists of a user-supplied name/value pair.",
      id = "GoogleCloudVisionV1p2beta1Property",
      properties = {
        name = {
          description = "Name of the property.",
          type = "string",
        },
        uint64Value = {
          description = "Value of numeric properties.",
          format = "uint64",
          type = "string",
        },
        value = {
          description = "Value of the property.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p2beta1SafeSearchAnnotation = {
      description = "Set of features pertaining to the image, computed by computer vision methods over safe-search verticals (for example, adult, spoof, medical, violence).",
      id = "GoogleCloudVisionV1p2beta1SafeSearchAnnotation",
      properties = {
        adult = {
          description = "Represents the adult content likelihood for the image. Adult content may contain elements such as nudity, pornographic images or cartoons, or sexual activities.",
          enum = {
            "UNKNOWN",
            "VERY_UNLIKELY",
            "UNLIKELY",
            "POSSIBLE",
            "LIKELY",
            "VERY_LIKELY",
          },
          enumDescriptions = {
            "Unknown likelihood.",
            "It is very unlikely.",
            "It is unlikely.",
            "It is possible.",
            "It is likely.",
            "It is very likely.",
          },
          type = "string",
        },
        medical = {
          description = "Likelihood that this is a medical image.",
          enum = {
            "UNKNOWN",
            "VERY_UNLIKELY",
            "UNLIKELY",
            "POSSIBLE",
            "LIKELY",
            "VERY_LIKELY",
          },
          enumDescriptions = {
            "Unknown likelihood.",
            "It is very unlikely.",
            "It is unlikely.",
            "It is possible.",
            "It is likely.",
            "It is very likely.",
          },
          type = "string",
        },
        racy = {
          description = "Likelihood that the request image contains racy content. Racy content may include (but is not limited to) skimpy or sheer clothing, strategically covered nudity, lewd or provocative poses, or close-ups of sensitive body areas.",
          enum = {
            "UNKNOWN",
            "VERY_UNLIKELY",
            "UNLIKELY",
            "POSSIBLE",
            "LIKELY",
            "VERY_LIKELY",
          },
          enumDescriptions = {
            "Unknown likelihood.",
            "It is very unlikely.",
            "It is unlikely.",
            "It is possible.",
            "It is likely.",
            "It is very likely.",
          },
          type = "string",
        },
        spoof = {
          description = "Spoof likelihood. The likelihood that an modification was made to the image's canonical version to make it appear funny or offensive.",
          enum = {
            "UNKNOWN",
            "VERY_UNLIKELY",
            "UNLIKELY",
            "POSSIBLE",
            "LIKELY",
            "VERY_LIKELY",
          },
          enumDescriptions = {
            "Unknown likelihood.",
            "It is very unlikely.",
            "It is unlikely.",
            "It is possible.",
            "It is likely.",
            "It is very likely.",
          },
          type = "string",
        },
        violence = {
          description = "Likelihood that this image contains violent content.",
          enum = {
            "UNKNOWN",
            "VERY_UNLIKELY",
            "UNLIKELY",
            "POSSIBLE",
            "LIKELY",
            "VERY_LIKELY",
          },
          enumDescriptions = {
            "Unknown likelihood.",
            "It is very unlikely.",
            "It is unlikely.",
            "It is possible.",
            "It is likely.",
            "It is very likely.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p2beta1Symbol = {
      description = "A single symbol representation.",
      id = "GoogleCloudVisionV1p2beta1Symbol",
      properties = {
        boundingBox = {
          ["$ref"] = "GoogleCloudVisionV1p2beta1BoundingPoly",
          description = "The bounding box for the symbol. The vertices are in the order of top-left, top-right, bottom-right, bottom-left. When a rotation of the bounding box is detected the rotation is represented as around the top-left corner as defined when the text is read in the 'natural' orientation. For example: * when the text is horizontal it might look like: 0----1 | | 3----2 * when it's rotated 180 degrees around the top-left corner it becomes: 2----3 | | 1----0 and the vertex order will still be (0, 1, 2, 3).",
        },
        confidence = {
          description = "Confidence of the OCR results for the symbol. Range [0, 1].",
          format = "float",
          type = "number",
        },
        property = {
          ["$ref"] = "GoogleCloudVisionV1p2beta1TextAnnotationTextProperty",
          description = "Additional information detected for the symbol.",
        },
        text = {
          description = "The actual UTF-8 representation of the symbol.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p2beta1TextAnnotation = {
      description = "TextAnnotation contains a structured representation of OCR extracted text. The hierarchy of an OCR extracted text structure is like this: TextAnnotation -> Page -> Block -> Paragraph -> Word -> Symbol Each structural component, starting from Page, may further have their own properties. Properties describe detected languages, breaks etc.. Please refer to the TextAnnotation.TextProperty message definition below for more detail.",
      id = "GoogleCloudVisionV1p2beta1TextAnnotation",
      properties = {
        pages = {
          description = "List of pages detected by OCR.",
          items = {
            ["$ref"] = "GoogleCloudVisionV1p2beta1Page",
          },
          type = "array",
        },
        text = {
          description = "UTF-8 text detected on the pages.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p2beta1TextAnnotationDetectedBreak = {
      description = "Detected start or end of a structural component.",
      id = "GoogleCloudVisionV1p2beta1TextAnnotationDetectedBreak",
      properties = {
        isPrefix = {
          description = "True if break prepends the element.",
          type = "boolean",
        },
        type = {
          description = "Detected break type.",
          enum = {
            "UNKNOWN",
            "SPACE",
            "SURE_SPACE",
            "EOL_SURE_SPACE",
            "HYPHEN",
            "LINE_BREAK",
          },
          enumDescriptions = {
            "Unknown break label type.",
            "Regular space.",
            "Sure space (very wide).",
            "Line-wrapping break.",
            "End-line hyphen that is not present in text; does not co-occur with `SPACE`, `LEADER_SPACE`, or `LINE_BREAK`.",
            "Line break that ends a paragraph.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p2beta1TextAnnotationDetectedLanguage = {
      description = "Detected language for a structural component.",
      id = "GoogleCloudVisionV1p2beta1TextAnnotationDetectedLanguage",
      properties = {
        confidence = {
          description = "Confidence of detected language. Range [0, 1].",
          format = "float",
          type = "number",
        },
        languageCode = {
          description = "The BCP-47 language code, such as \"en-US\" or \"sr-Latn\". For more information, see http://www.unicode.org/reports/tr35/#Unicode_locale_identifier.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p2beta1TextAnnotationTextProperty = {
      description = "Additional information detected on the structural component.",
      id = "GoogleCloudVisionV1p2beta1TextAnnotationTextProperty",
      properties = {
        detectedBreak = {
          ["$ref"] = "GoogleCloudVisionV1p2beta1TextAnnotationDetectedBreak",
          description = "Detected start or end of a text segment.",
        },
        detectedLanguages = {
          description = "A list of detected languages together with confidence.",
          items = {
            ["$ref"] = "GoogleCloudVisionV1p2beta1TextAnnotationDetectedLanguage",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p2beta1Vertex = {
      description = "A vertex represents a 2D point in the image. NOTE: the vertex coordinates are in the same scale as the original image.",
      id = "GoogleCloudVisionV1p2beta1Vertex",
      properties = {
        x = {
          description = "X coordinate.",
          format = "int32",
          type = "integer",
        },
        y = {
          description = "Y coordinate.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p2beta1WebDetection = {
      description = "Relevant information for the image from the Internet.",
      id = "GoogleCloudVisionV1p2beta1WebDetection",
      properties = {
        bestGuessLabels = {
          description = "The service's best guess as to the topic of the request image. Inferred from similar images on the open web.",
          items = {
            ["$ref"] = "GoogleCloudVisionV1p2beta1WebDetectionWebLabel",
          },
          type = "array",
        },
        fullMatchingImages = {
          description = "Fully matching images from the Internet. Can include resized copies of the query image.",
          items = {
            ["$ref"] = "GoogleCloudVisionV1p2beta1WebDetectionWebImage",
          },
          type = "array",
        },
        pagesWithMatchingImages = {
          description = "Web pages containing the matching images from the Internet.",
          items = {
            ["$ref"] = "GoogleCloudVisionV1p2beta1WebDetectionWebPage",
          },
          type = "array",
        },
        partialMatchingImages = {
          description = "Partial matching images from the Internet. Those images are similar enough to share some key-point features. For example an original image will likely have partial matching for its crops.",
          items = {
            ["$ref"] = "GoogleCloudVisionV1p2beta1WebDetectionWebImage",
          },
          type = "array",
        },
        visuallySimilarImages = {
          description = "The visually similar image results.",
          items = {
            ["$ref"] = "GoogleCloudVisionV1p2beta1WebDetectionWebImage",
          },
          type = "array",
        },
        webEntities = {
          description = "Deduced entities from similar images on the Internet.",
          items = {
            ["$ref"] = "GoogleCloudVisionV1p2beta1WebDetectionWebEntity",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p2beta1WebDetectionWebEntity = {
      description = "Entity deduced from similar images on the Internet.",
      id = "GoogleCloudVisionV1p2beta1WebDetectionWebEntity",
      properties = {
        description = {
          description = "Canonical description of the entity, in English.",
          type = "string",
        },
        entityId = {
          description = "Opaque entity ID.",
          type = "string",
        },
        score = {
          description = "Overall relevancy score for the entity. Not normalized and not comparable across different image queries.",
          format = "float",
          type = "number",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p2beta1WebDetectionWebImage = {
      description = "Metadata for online images.",
      id = "GoogleCloudVisionV1p2beta1WebDetectionWebImage",
      properties = {
        score = {
          description = "(Deprecated) Overall relevancy score for the image.",
          format = "float",
          type = "number",
        },
        url = {
          description = "The result image URL.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p2beta1WebDetectionWebLabel = {
      description = "Label to provide extra metadata for the web detection.",
      id = "GoogleCloudVisionV1p2beta1WebDetectionWebLabel",
      properties = {
        label = {
          description = "Label for extra metadata.",
          type = "string",
        },
        languageCode = {
          description = "The BCP-47 language code for `label`, such as \"en-US\" or \"sr-Latn\". For more information, see http://www.unicode.org/reports/tr35/#Unicode_locale_identifier.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p2beta1WebDetectionWebPage = {
      description = "Metadata for web pages.",
      id = "GoogleCloudVisionV1p2beta1WebDetectionWebPage",
      properties = {
        fullMatchingImages = {
          description = "Fully matching images on the page. Can include resized copies of the query image.",
          items = {
            ["$ref"] = "GoogleCloudVisionV1p2beta1WebDetectionWebImage",
          },
          type = "array",
        },
        pageTitle = {
          description = "Title for the web page, may contain HTML markups.",
          type = "string",
        },
        partialMatchingImages = {
          description = "Partial matching images on the page. Those images are similar enough to share some key-point features. For example an original image will likely have partial matching for its crops.",
          items = {
            ["$ref"] = "GoogleCloudVisionV1p2beta1WebDetectionWebImage",
          },
          type = "array",
        },
        score = {
          description = "(Deprecated) Overall relevancy score for the web page.",
          format = "float",
          type = "number",
        },
        url = {
          description = "The result web page URL.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p2beta1Word = {
      description = "A word representation.",
      id = "GoogleCloudVisionV1p2beta1Word",
      properties = {
        boundingBox = {
          ["$ref"] = "GoogleCloudVisionV1p2beta1BoundingPoly",
          description = "The bounding box for the word. The vertices are in the order of top-left, top-right, bottom-right, bottom-left. When a rotation of the bounding box is detected the rotation is represented as around the top-left corner as defined when the text is read in the 'natural' orientation. For example: * when the text is horizontal it might look like: 0----1 | | 3----2 * when it's rotated 180 degrees around the top-left corner it becomes: 2----3 | | 1----0 and the vertex order will still be (0, 1, 2, 3).",
        },
        confidence = {
          description = "Confidence of the OCR results for the word. Range [0, 1].",
          format = "float",
          type = "number",
        },
        property = {
          ["$ref"] = "GoogleCloudVisionV1p2beta1TextAnnotationTextProperty",
          description = "Additional information detected for the word.",
        },
        symbols = {
          description = "List of symbols in the word. The order of the symbols follows the natural reading order.",
          items = {
            ["$ref"] = "GoogleCloudVisionV1p2beta1Symbol",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p3beta1AnnotateFileResponse = {
      description = "Response to a single file annotation request. A file may contain one or more images, which individually have their own responses.",
      id = "GoogleCloudVisionV1p3beta1AnnotateFileResponse",
      properties = {
        error = {
          ["$ref"] = "Status",
          description = "If set, represents the error message for the failed request. The `responses` field will not be set in this case.",
        },
        inputConfig = {
          ["$ref"] = "GoogleCloudVisionV1p3beta1InputConfig",
          description = "Information about the file for which this response is generated.",
        },
        responses = {
          description = "Individual responses to images found within the file. This field will be empty if the `error` field is set.",
          items = {
            ["$ref"] = "GoogleCloudVisionV1p3beta1AnnotateImageResponse",
          },
          type = "array",
        },
        totalPages = {
          description = "This field gives the total number of pages in the file.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p3beta1AnnotateImageResponse = {
      description = "Response to an image annotation request.",
      id = "GoogleCloudVisionV1p3beta1AnnotateImageResponse",
      properties = {
        context = {
          ["$ref"] = "GoogleCloudVisionV1p3beta1ImageAnnotationContext",
          description = "If present, contextual information is needed to understand where this image comes from.",
        },
        cropHintsAnnotation = {
          ["$ref"] = "GoogleCloudVisionV1p3beta1CropHintsAnnotation",
          description = "If present, crop hints have completed successfully.",
        },
        error = {
          ["$ref"] = "Status",
          description = "If set, represents the error message for the operation. Note that filled-in image annotations are guaranteed to be correct, even when `error` is set.",
        },
        faceAnnotations = {
          description = "If present, face detection has completed successfully.",
          items = {
            ["$ref"] = "GoogleCloudVisionV1p3beta1FaceAnnotation",
          },
          type = "array",
        },
        fullTextAnnotation = {
          ["$ref"] = "GoogleCloudVisionV1p3beta1TextAnnotation",
          description = "If present, text (OCR) detection or document (OCR) text detection has completed successfully. This annotation provides the structural hierarchy for the OCR detected text.",
        },
        imagePropertiesAnnotation = {
          ["$ref"] = "GoogleCloudVisionV1p3beta1ImageProperties",
          description = "If present, image properties were extracted successfully.",
        },
        labelAnnotations = {
          description = "If present, label detection has completed successfully.",
          items = {
            ["$ref"] = "GoogleCloudVisionV1p3beta1EntityAnnotation",
          },
          type = "array",
        },
        landmarkAnnotations = {
          description = "If present, landmark detection has completed successfully.",
          items = {
            ["$ref"] = "GoogleCloudVisionV1p3beta1EntityAnnotation",
          },
          type = "array",
        },
        localizedObjectAnnotations = {
          description = "If present, localized object detection has completed successfully. This will be sorted descending by confidence score.",
          items = {
            ["$ref"] = "GoogleCloudVisionV1p3beta1LocalizedObjectAnnotation",
          },
          type = "array",
        },
        logoAnnotations = {
          description = "If present, logo detection has completed successfully.",
          items = {
            ["$ref"] = "GoogleCloudVisionV1p3beta1EntityAnnotation",
          },
          type = "array",
        },
        productSearchResults = {
          ["$ref"] = "GoogleCloudVisionV1p3beta1ProductSearchResults",
          description = "If present, product search has completed successfully.",
        },
        safeSearchAnnotation = {
          ["$ref"] = "GoogleCloudVisionV1p3beta1SafeSearchAnnotation",
          description = "If present, safe-search annotation has completed successfully.",
        },
        textAnnotations = {
          description = "If present, text (OCR) detection has completed successfully.",
          items = {
            ["$ref"] = "GoogleCloudVisionV1p3beta1EntityAnnotation",
          },
          type = "array",
        },
        webDetection = {
          ["$ref"] = "GoogleCloudVisionV1p3beta1WebDetection",
          description = "If present, web detection has completed successfully.",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p3beta1AsyncAnnotateFileResponse = {
      description = "The response for a single offline file annotation request.",
      id = "GoogleCloudVisionV1p3beta1AsyncAnnotateFileResponse",
      properties = {
        outputConfig = {
          ["$ref"] = "GoogleCloudVisionV1p3beta1OutputConfig",
          description = "The output location and metadata from AsyncAnnotateFileRequest.",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p3beta1AsyncBatchAnnotateFilesResponse = {
      description = "Response to an async batch file annotation request.",
      id = "GoogleCloudVisionV1p3beta1AsyncBatchAnnotateFilesResponse",
      properties = {
        responses = {
          description = "The list of file annotation responses, one for each request in AsyncBatchAnnotateFilesRequest.",
          items = {
            ["$ref"] = "GoogleCloudVisionV1p3beta1AsyncAnnotateFileResponse",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p3beta1BatchOperationMetadata = {
      description = "Metadata for the batch operations such as the current state. This is included in the `metadata` field of the `Operation` returned by the `GetOperation` call of the `google::longrunning::Operations` service.",
      id = "GoogleCloudVisionV1p3beta1BatchOperationMetadata",
      properties = {
        endTime = {
          description = "The time when the batch request is finished and google.longrunning.Operation.done is set to true.",
          format = "google-datetime",
          type = "string",
        },
        state = {
          description = "The current state of the batch operation.",
          enum = {
            "STATE_UNSPECIFIED",
            "PROCESSING",
            "SUCCESSFUL",
            "FAILED",
            "CANCELLED",
          },
          enumDescriptions = {
            "Invalid.",
            "Request is actively being processed.",
            "The request is done and at least one item has been successfully processed.",
            "The request is done and no item has been successfully processed.",
            "The request is done after the longrunning.Operations.CancelOperation has been called by the user. Any records that were processed before the cancel command are output as specified in the request.",
          },
          type = "string",
        },
        submitTime = {
          description = "The time when the batch request was submitted to the server.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p3beta1Block = {
      description = "Logical element on the page.",
      id = "GoogleCloudVisionV1p3beta1Block",
      properties = {
        blockType = {
          description = "Detected block type (text, image etc) for this block.",
          enum = {
            "UNKNOWN",
            "TEXT",
            "TABLE",
            "PICTURE",
            "RULER",
            "BARCODE",
          },
          enumDescriptions = {
            "Unknown block type.",
            "Regular text block.",
            "Table block.",
            "Image block.",
            "Horizontal/vertical line box.",
            "Barcode block.",
          },
          type = "string",
        },
        boundingBox = {
          ["$ref"] = "GoogleCloudVisionV1p3beta1BoundingPoly",
          description = "The bounding box for the block. The vertices are in the order of top-left, top-right, bottom-right, bottom-left. When a rotation of the bounding box is detected the rotation is represented as around the top-left corner as defined when the text is read in the 'natural' orientation. For example: * when the text is horizontal it might look like: 0----1 | | 3----2 * when it's rotated 180 degrees around the top-left corner it becomes: 2----3 | | 1----0 and the vertex order will still be (0, 1, 2, 3).",
        },
        confidence = {
          description = "Confidence of the OCR results on the block. Range [0, 1].",
          format = "float",
          type = "number",
        },
        paragraphs = {
          description = "List of paragraphs in this block (if this blocks is of type text).",
          items = {
            ["$ref"] = "GoogleCloudVisionV1p3beta1Paragraph",
          },
          type = "array",
        },
        property = {
          ["$ref"] = "GoogleCloudVisionV1p3beta1TextAnnotationTextProperty",
          description = "Additional information detected for the block.",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p3beta1BoundingPoly = {
      description = "A bounding polygon for the detected image annotation.",
      id = "GoogleCloudVisionV1p3beta1BoundingPoly",
      properties = {
        normalizedVertices = {
          description = "The bounding polygon normalized vertices.",
          items = {
            ["$ref"] = "GoogleCloudVisionV1p3beta1NormalizedVertex",
          },
          type = "array",
        },
        vertices = {
          description = "The bounding polygon vertices.",
          items = {
            ["$ref"] = "GoogleCloudVisionV1p3beta1Vertex",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p3beta1ColorInfo = {
      description = "Color information consists of RGB channels, score, and the fraction of the image that the color occupies in the image.",
      id = "GoogleCloudVisionV1p3beta1ColorInfo",
      properties = {
        color = {
          ["$ref"] = "Color",
          description = "RGB components of the color.",
        },
        pixelFraction = {
          description = "The fraction of pixels the color occupies in the image. Value in range [0, 1].",
          format = "float",
          type = "number",
        },
        score = {
          description = "Image-specific score for this color. Value in range [0, 1].",
          format = "float",
          type = "number",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p3beta1CropHint = {
      description = "Single crop hint that is used to generate a new crop when serving an image.",
      id = "GoogleCloudVisionV1p3beta1CropHint",
      properties = {
        boundingPoly = {
          ["$ref"] = "GoogleCloudVisionV1p3beta1BoundingPoly",
          description = "The bounding polygon for the crop region. The coordinates of the bounding box are in the original image's scale.",
        },
        confidence = {
          description = "Confidence of this being a salient region. Range [0, 1].",
          format = "float",
          type = "number",
        },
        importanceFraction = {
          description = "Fraction of importance of this salient region with respect to the original image.",
          format = "float",
          type = "number",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p3beta1CropHintsAnnotation = {
      description = "Set of crop hints that are used to generate new crops when serving images.",
      id = "GoogleCloudVisionV1p3beta1CropHintsAnnotation",
      properties = {
        cropHints = {
          description = "Crop hint results.",
          items = {
            ["$ref"] = "GoogleCloudVisionV1p3beta1CropHint",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p3beta1DominantColorsAnnotation = {
      description = "Set of dominant colors and their corresponding scores.",
      id = "GoogleCloudVisionV1p3beta1DominantColorsAnnotation",
      properties = {
        colors = {
          description = "RGB color values with their score and pixel fraction.",
          items = {
            ["$ref"] = "GoogleCloudVisionV1p3beta1ColorInfo",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p3beta1EntityAnnotation = {
      description = "Set of detected entity features.",
      id = "GoogleCloudVisionV1p3beta1EntityAnnotation",
      properties = {
        boundingPoly = {
          ["$ref"] = "GoogleCloudVisionV1p3beta1BoundingPoly",
          description = "Image region to which this entity belongs. Not produced for `LABEL_DETECTION` features.",
        },
        confidence = {
          description = "**Deprecated. Use `score` instead.** The accuracy of the entity detection in an image. For example, for an image in which the \"Eiffel Tower\" entity is detected, this field represents the confidence that there is a tower in the query image. Range [0, 1].",
          format = "float",
          type = "number",
        },
        description = {
          description = "Entity textual description, expressed in its `locale` language.",
          type = "string",
        },
        locale = {
          description = "The language code for the locale in which the entity textual `description` is expressed.",
          type = "string",
        },
        locations = {
          description = "The location information for the detected entity. Multiple `LocationInfo` elements can be present because one location may indicate the location of the scene in the image, and another location may indicate the location of the place where the image was taken. Location information is usually present for landmarks.",
          items = {
            ["$ref"] = "GoogleCloudVisionV1p3beta1LocationInfo",
          },
          type = "array",
        },
        mid = {
          description = "Opaque entity ID. Some IDs may be available in [Google Knowledge Graph Search API](https://developers.google.com/knowledge-graph/).",
          type = "string",
        },
        properties = {
          description = "Some entities may have optional user-supplied `Property` (name/value) fields, such a score or string that qualifies the entity.",
          items = {
            ["$ref"] = "GoogleCloudVisionV1p3beta1Property",
          },
          type = "array",
        },
        score = {
          description = "Overall score of the result. Range [0, 1].",
          format = "float",
          type = "number",
        },
        topicality = {
          description = "The relevancy of the ICA (Image Content Annotation) label to the image. For example, the relevancy of \"tower\" is likely higher to an image containing the detected \"Eiffel Tower\" than to an image containing a detected distant towering building, even though the confidence that there is a tower in each image may be the same. Range [0, 1].",
          format = "float",
          type = "number",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p3beta1FaceAnnotation = {
      description = "A face annotation object contains the results of face detection.",
      id = "GoogleCloudVisionV1p3beta1FaceAnnotation",
      properties = {
        angerLikelihood = {
          description = "Anger likelihood.",
          enum = {
            "UNKNOWN",
            "VERY_UNLIKELY",
            "UNLIKELY",
            "POSSIBLE",
            "LIKELY",
            "VERY_LIKELY",
          },
          enumDescriptions = {
            "Unknown likelihood.",
            "It is very unlikely.",
            "It is unlikely.",
            "It is possible.",
            "It is likely.",
            "It is very likely.",
          },
          type = "string",
        },
        blurredLikelihood = {
          description = "Blurred likelihood.",
          enum = {
            "UNKNOWN",
            "VERY_UNLIKELY",
            "UNLIKELY",
            "POSSIBLE",
            "LIKELY",
            "VERY_LIKELY",
          },
          enumDescriptions = {
            "Unknown likelihood.",
            "It is very unlikely.",
            "It is unlikely.",
            "It is possible.",
            "It is likely.",
            "It is very likely.",
          },
          type = "string",
        },
        boundingPoly = {
          ["$ref"] = "GoogleCloudVisionV1p3beta1BoundingPoly",
          description = "The bounding polygon around the face. The coordinates of the bounding box are in the original image's scale. The bounding box is computed to \"frame\" the face in accordance with human expectations. It is based on the landmarker results. Note that one or more x and/or y coordinates may not be generated in the `BoundingPoly` (the polygon will be unbounded) if only a partial face appears in the image to be annotated.",
        },
        detectionConfidence = {
          description = "Detection confidence. Range [0, 1].",
          format = "float",
          type = "number",
        },
        fdBoundingPoly = {
          ["$ref"] = "GoogleCloudVisionV1p3beta1BoundingPoly",
          description = "The `fd_bounding_poly` bounding polygon is tighter than the `boundingPoly`, and encloses only the skin part of the face. Typically, it is used to eliminate the face from any image analysis that detects the \"amount of skin\" visible in an image. It is not based on the landmarker results, only on the initial face detection, hence the fd (face detection) prefix.",
        },
        headwearLikelihood = {
          description = "Headwear likelihood.",
          enum = {
            "UNKNOWN",
            "VERY_UNLIKELY",
            "UNLIKELY",
            "POSSIBLE",
            "LIKELY",
            "VERY_LIKELY",
          },
          enumDescriptions = {
            "Unknown likelihood.",
            "It is very unlikely.",
            "It is unlikely.",
            "It is possible.",
            "It is likely.",
            "It is very likely.",
          },
          type = "string",
        },
        joyLikelihood = {
          description = "Joy likelihood.",
          enum = {
            "UNKNOWN",
            "VERY_UNLIKELY",
            "UNLIKELY",
            "POSSIBLE",
            "LIKELY",
            "VERY_LIKELY",
          },
          enumDescriptions = {
            "Unknown likelihood.",
            "It is very unlikely.",
            "It is unlikely.",
            "It is possible.",
            "It is likely.",
            "It is very likely.",
          },
          type = "string",
        },
        landmarkingConfidence = {
          description = "Face landmarking confidence. Range [0, 1].",
          format = "float",
          type = "number",
        },
        landmarks = {
          description = "Detected face landmarks.",
          items = {
            ["$ref"] = "GoogleCloudVisionV1p3beta1FaceAnnotationLandmark",
          },
          type = "array",
        },
        panAngle = {
          description = "Yaw angle, which indicates the leftward/rightward angle that the face is pointing relative to the vertical plane perpendicular to the image. Range [-180,180].",
          format = "float",
          type = "number",
        },
        rollAngle = {
          description = "Roll angle, which indicates the amount of clockwise/anti-clockwise rotation of the face relative to the image vertical about the axis perpendicular to the face. Range [-180,180].",
          format = "float",
          type = "number",
        },
        sorrowLikelihood = {
          description = "Sorrow likelihood.",
          enum = {
            "UNKNOWN",
            "VERY_UNLIKELY",
            "UNLIKELY",
            "POSSIBLE",
            "LIKELY",
            "VERY_LIKELY",
          },
          enumDescriptions = {
            "Unknown likelihood.",
            "It is very unlikely.",
            "It is unlikely.",
            "It is possible.",
            "It is likely.",
            "It is very likely.",
          },
          type = "string",
        },
        surpriseLikelihood = {
          description = "Surprise likelihood.",
          enum = {
            "UNKNOWN",
            "VERY_UNLIKELY",
            "UNLIKELY",
            "POSSIBLE",
            "LIKELY",
            "VERY_LIKELY",
          },
          enumDescriptions = {
            "Unknown likelihood.",
            "It is very unlikely.",
            "It is unlikely.",
            "It is possible.",
            "It is likely.",
            "It is very likely.",
          },
          type = "string",
        },
        tiltAngle = {
          description = "Pitch angle, which indicates the upwards/downwards angle that the face is pointing relative to the image's horizontal plane. Range [-180,180].",
          format = "float",
          type = "number",
        },
        underExposedLikelihood = {
          description = "Under-exposed likelihood.",
          enum = {
            "UNKNOWN",
            "VERY_UNLIKELY",
            "UNLIKELY",
            "POSSIBLE",
            "LIKELY",
            "VERY_LIKELY",
          },
          enumDescriptions = {
            "Unknown likelihood.",
            "It is very unlikely.",
            "It is unlikely.",
            "It is possible.",
            "It is likely.",
            "It is very likely.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p3beta1FaceAnnotationLandmark = {
      description = "A face-specific landmark (for example, a face feature).",
      id = "GoogleCloudVisionV1p3beta1FaceAnnotationLandmark",
      properties = {
        position = {
          ["$ref"] = "GoogleCloudVisionV1p3beta1Position",
          description = "Face landmark position.",
        },
        type = {
          description = "Face landmark type.",
          enum = {
            "UNKNOWN_LANDMARK",
            "LEFT_EYE",
            "RIGHT_EYE",
            "LEFT_OF_LEFT_EYEBROW",
            "RIGHT_OF_LEFT_EYEBROW",
            "LEFT_OF_RIGHT_EYEBROW",
            "RIGHT_OF_RIGHT_EYEBROW",
            "MIDPOINT_BETWEEN_EYES",
            "NOSE_TIP",
            "UPPER_LIP",
            "LOWER_LIP",
            "MOUTH_LEFT",
            "MOUTH_RIGHT",
            "MOUTH_CENTER",
            "NOSE_BOTTOM_RIGHT",
            "NOSE_BOTTOM_LEFT",
            "NOSE_BOTTOM_CENTER",
            "LEFT_EYE_TOP_BOUNDARY",
            "LEFT_EYE_RIGHT_CORNER",
            "LEFT_EYE_BOTTOM_BOUNDARY",
            "LEFT_EYE_LEFT_CORNER",
            "RIGHT_EYE_TOP_BOUNDARY",
            "RIGHT_EYE_RIGHT_CORNER",
            "RIGHT_EYE_BOTTOM_BOUNDARY",
            "RIGHT_EYE_LEFT_CORNER",
            "LEFT_EYEBROW_UPPER_MIDPOINT",
            "RIGHT_EYEBROW_UPPER_MIDPOINT",
            "LEFT_EAR_TRAGION",
            "RIGHT_EAR_TRAGION",
            "LEFT_EYE_PUPIL",
            "RIGHT_EYE_PUPIL",
            "FOREHEAD_GLABELLA",
            "CHIN_GNATHION",
            "CHIN_LEFT_GONION",
            "CHIN_RIGHT_GONION",
            "LEFT_CHEEK_CENTER",
            "RIGHT_CHEEK_CENTER",
          },
          enumDescriptions = {
            "Unknown face landmark detected. Should not be filled.",
            "Left eye.",
            "Right eye.",
            "Left of left eyebrow.",
            "Right of left eyebrow.",
            "Left of right eyebrow.",
            "Right of right eyebrow.",
            "Midpoint between eyes.",
            "Nose tip.",
            "Upper lip.",
            "Lower lip.",
            "Mouth left.",
            "Mouth right.",
            "Mouth center.",
            "Nose, bottom right.",
            "Nose, bottom left.",
            "Nose, bottom center.",
            "Left eye, top boundary.",
            "Left eye, right corner.",
            "Left eye, bottom boundary.",
            "Left eye, left corner.",
            "Right eye, top boundary.",
            "Right eye, right corner.",
            "Right eye, bottom boundary.",
            "Right eye, left corner.",
            "Left eyebrow, upper midpoint.",
            "Right eyebrow, upper midpoint.",
            "Left ear tragion.",
            "Right ear tragion.",
            "Left eye pupil.",
            "Right eye pupil.",
            "Forehead glabella.",
            "Chin gnathion.",
            "Chin left gonion.",
            "Chin right gonion.",
            "Left cheek center.",
            "Right cheek center.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p3beta1GcsDestination = {
      description = "The Google Cloud Storage location where the output will be written to.",
      id = "GoogleCloudVisionV1p3beta1GcsDestination",
      properties = {
        uri = {
          description = "Google Cloud Storage URI prefix where the results will be stored. Results will be in JSON format and preceded by its corresponding input URI prefix. This field can either represent a gcs file prefix or gcs directory. In either case, the uri should be unique because in order to get all of the output files, you will need to do a wildcard gcs search on the uri prefix you provide. Examples: * File Prefix: gs://bucket-name/here/filenameprefix The output files will be created in gs://bucket-name/here/ and the names of the output files will begin with \"filenameprefix\". * Directory Prefix: gs://bucket-name/some/location/ The output files will be created in gs://bucket-name/some/location/ and the names of the output files could be anything because there was no filename prefix specified. If multiple outputs, each response is still AnnotateFileResponse, each of which contains some subset of the full list of AnnotateImageResponse. Multiple outputs can happen if, for example, the output JSON is too large and overflows into multiple sharded files.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p3beta1GcsSource = {
      description = "The Google Cloud Storage location where the input will be read from.",
      id = "GoogleCloudVisionV1p3beta1GcsSource",
      properties = {
        uri = {
          description = "Google Cloud Storage URI for the input file. This must only be a Google Cloud Storage object. Wildcards are not currently supported.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p3beta1ImageAnnotationContext = {
      description = "If an image was produced from a file (e.g. a PDF), this message gives information about the source of that image.",
      id = "GoogleCloudVisionV1p3beta1ImageAnnotationContext",
      properties = {
        pageNumber = {
          description = "If the file was a PDF or TIFF, this field gives the page number within the file used to produce the image.",
          format = "int32",
          type = "integer",
        },
        uri = {
          description = "The URI of the file used to produce the image.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p3beta1ImageProperties = {
      description = "Stores image properties, such as dominant colors.",
      id = "GoogleCloudVisionV1p3beta1ImageProperties",
      properties = {
        dominantColors = {
          ["$ref"] = "GoogleCloudVisionV1p3beta1DominantColorsAnnotation",
          description = "If present, dominant colors completed successfully.",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p3beta1ImportProductSetsResponse = {
      description = "Response message for the `ImportProductSets` method. This message is returned by the google.longrunning.Operations.GetOperation method in the returned google.longrunning.Operation.response field.",
      id = "GoogleCloudVisionV1p3beta1ImportProductSetsResponse",
      properties = {
        referenceImages = {
          description = "The list of reference_images that are imported successfully.",
          items = {
            ["$ref"] = "GoogleCloudVisionV1p3beta1ReferenceImage",
          },
          type = "array",
        },
        statuses = {
          description = "The rpc status for each ImportProductSet request, including both successes and errors. The number of statuses here matches the number of lines in the csv file, and statuses[i] stores the success or failure status of processing the i-th line of the csv, starting from line 0.",
          items = {
            ["$ref"] = "Status",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p3beta1InputConfig = {
      description = "The desired input location and metadata.",
      id = "GoogleCloudVisionV1p3beta1InputConfig",
      properties = {
        content = {
          description = "File content, represented as a stream of bytes. Note: As with all `bytes` fields, protobuffers use a pure binary representation, whereas JSON representations use base64. Currently, this field only works for BatchAnnotateFiles requests. It does not work for AsyncBatchAnnotateFiles requests.",
          format = "byte",
          type = "string",
        },
        gcsSource = {
          ["$ref"] = "GoogleCloudVisionV1p3beta1GcsSource",
          description = "The Google Cloud Storage location to read the input from.",
        },
        mimeType = {
          description = "The type of the file. Currently only \"application/pdf\", \"image/tiff\" and \"image/gif\" are supported. Wildcards are not supported.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p3beta1LocalizedObjectAnnotation = {
      description = "Set of detected objects with bounding boxes.",
      id = "GoogleCloudVisionV1p3beta1LocalizedObjectAnnotation",
      properties = {
        boundingPoly = {
          ["$ref"] = "GoogleCloudVisionV1p3beta1BoundingPoly",
          description = "Image region to which this object belongs. This must be populated.",
        },
        languageCode = {
          description = "The BCP-47 language code, such as \"en-US\" or \"sr-Latn\". For more information, see http://www.unicode.org/reports/tr35/#Unicode_locale_identifier.",
          type = "string",
        },
        mid = {
          description = "Object ID that should align with EntityAnnotation mid.",
          type = "string",
        },
        name = {
          description = "Object name, expressed in its `language_code` language.",
          type = "string",
        },
        score = {
          description = "Score of the result. Range [0, 1].",
          format = "float",
          type = "number",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p3beta1LocationInfo = {
      description = "Detected entity location information.",
      id = "GoogleCloudVisionV1p3beta1LocationInfo",
      properties = {
        latLng = {
          ["$ref"] = "LatLng",
          description = "lat/long location coordinates.",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p3beta1NormalizedVertex = {
      description = "A vertex represents a 2D point in the image. NOTE: the normalized vertex coordinates are relative to the original image and range from 0 to 1.",
      id = "GoogleCloudVisionV1p3beta1NormalizedVertex",
      properties = {
        x = {
          description = "X coordinate.",
          format = "float",
          type = "number",
        },
        y = {
          description = "Y coordinate.",
          format = "float",
          type = "number",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p3beta1OperationMetadata = {
      description = "Contains metadata for the BatchAnnotateImages operation.",
      id = "GoogleCloudVisionV1p3beta1OperationMetadata",
      properties = {
        createTime = {
          description = "The time when the batch request was received.",
          format = "google-datetime",
          type = "string",
        },
        state = {
          description = "Current state of the batch operation.",
          enum = {
            "STATE_UNSPECIFIED",
            "CREATED",
            "RUNNING",
            "DONE",
            "CANCELLED",
          },
          enumDescriptions = {
            "Invalid.",
            "Request is received.",
            "Request is actively being processed.",
            "The batch processing is done.",
            "The batch processing was cancelled.",
          },
          type = "string",
        },
        updateTime = {
          description = "The time when the operation result was last updated.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p3beta1OutputConfig = {
      description = "The desired output location and metadata.",
      id = "GoogleCloudVisionV1p3beta1OutputConfig",
      properties = {
        batchSize = {
          description = "The max number of response protos to put into each output JSON file on Google Cloud Storage. The valid range is [1, 100]. If not specified, the default value is 20. For example, for one pdf file with 100 pages, 100 response protos will be generated. If `batch_size` = 20, then 5 json files each containing 20 response protos will be written under the prefix `gcs_destination`.`uri`. Currently, batch_size only applies to GcsDestination, with potential future support for other output configurations.",
          format = "int32",
          type = "integer",
        },
        gcsDestination = {
          ["$ref"] = "GoogleCloudVisionV1p3beta1GcsDestination",
          description = "The Google Cloud Storage location to write the output(s) to.",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p3beta1Page = {
      description = "Detected page from OCR.",
      id = "GoogleCloudVisionV1p3beta1Page",
      properties = {
        blocks = {
          description = "List of blocks of text, images etc on this page.",
          items = {
            ["$ref"] = "GoogleCloudVisionV1p3beta1Block",
          },
          type = "array",
        },
        confidence = {
          description = "Confidence of the OCR results on the page. Range [0, 1].",
          format = "float",
          type = "number",
        },
        height = {
          description = "Page height. For PDFs the unit is points. For images (including TIFFs) the unit is pixels.",
          format = "int32",
          type = "integer",
        },
        property = {
          ["$ref"] = "GoogleCloudVisionV1p3beta1TextAnnotationTextProperty",
          description = "Additional information detected on the page.",
        },
        width = {
          description = "Page width. For PDFs the unit is points. For images (including TIFFs) the unit is pixels.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p3beta1Paragraph = {
      description = "Structural unit of text representing a number of words in certain order.",
      id = "GoogleCloudVisionV1p3beta1Paragraph",
      properties = {
        boundingBox = {
          ["$ref"] = "GoogleCloudVisionV1p3beta1BoundingPoly",
          description = "The bounding box for the paragraph. The vertices are in the order of top-left, top-right, bottom-right, bottom-left. When a rotation of the bounding box is detected the rotation is represented as around the top-left corner as defined when the text is read in the 'natural' orientation. For example: * when the text is horizontal it might look like: 0----1 | | 3----2 * when it's rotated 180 degrees around the top-left corner it becomes: 2----3 | | 1----0 and the vertex order will still be (0, 1, 2, 3).",
        },
        confidence = {
          description = "Confidence of the OCR results for the paragraph. Range [0, 1].",
          format = "float",
          type = "number",
        },
        property = {
          ["$ref"] = "GoogleCloudVisionV1p3beta1TextAnnotationTextProperty",
          description = "Additional information detected for the paragraph.",
        },
        words = {
          description = "List of all words in this paragraph.",
          items = {
            ["$ref"] = "GoogleCloudVisionV1p3beta1Word",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p3beta1Position = {
      description = "A 3D position in the image, used primarily for Face detection landmarks. A valid Position must have both x and y coordinates. The position coordinates are in the same scale as the original image.",
      id = "GoogleCloudVisionV1p3beta1Position",
      properties = {
        x = {
          description = "X coordinate.",
          format = "float",
          type = "number",
        },
        y = {
          description = "Y coordinate.",
          format = "float",
          type = "number",
        },
        z = {
          description = "Z coordinate (or depth).",
          format = "float",
          type = "number",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p3beta1Product = {
      description = "A Product contains ReferenceImages.",
      id = "GoogleCloudVisionV1p3beta1Product",
      properties = {
        description = {
          description = "User-provided metadata to be stored with this product. Must be at most 4096 characters long.",
          type = "string",
        },
        displayName = {
          description = "The user-provided name for this Product. Must not be empty. Must be at most 4096 characters long.",
          type = "string",
        },
        name = {
          description = "The resource name of the product. Format is: `projects/PROJECT_ID/locations/LOC_ID/products/PRODUCT_ID`. This field is ignored when creating a product.",
          type = "string",
        },
        productCategory = {
          description = "Immutable. The category for the product identified by the reference image. This should be one of \"homegoods-v2\", \"apparel-v2\", \"toys-v2\", \"packagedgoods-v1\" or \"general-v1\". The legacy categories \"homegoods\", \"apparel\", and \"toys\" are still supported, but these should not be used for new products.",
          type = "string",
        },
        productLabels = {
          description = "Key-value pairs that can be attached to a product. At query time, constraints can be specified based on the product_labels. Note that integer values can be provided as strings, e.g. \"1199\". Only strings with integer values can match a range-based restriction which is to be supported soon. Multiple values can be assigned to the same key. One product may have up to 500 product_labels. Notice that the total number of distinct product_labels over all products in one ProductSet cannot exceed 1M, otherwise the product search pipeline will refuse to work for that ProductSet.",
          items = {
            ["$ref"] = "GoogleCloudVisionV1p3beta1ProductKeyValue",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p3beta1ProductKeyValue = {
      description = "A product label represented as a key-value pair.",
      id = "GoogleCloudVisionV1p3beta1ProductKeyValue",
      properties = {
        key = {
          description = "The key of the label attached to the product. Cannot be empty and cannot exceed 128 bytes.",
          type = "string",
        },
        value = {
          description = "The value of the label attached to the product. Cannot be empty and cannot exceed 128 bytes.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p3beta1ProductSearchResults = {
      description = "Results for a product search request.",
      id = "GoogleCloudVisionV1p3beta1ProductSearchResults",
      properties = {
        indexTime = {
          description = "Timestamp of the index which provided these results. Products added to the product set and products removed from the product set after this time are not reflected in the current results.",
          format = "google-datetime",
          type = "string",
        },
        productGroupedResults = {
          description = "List of results grouped by products detected in the query image. Each entry corresponds to one bounding polygon in the query image, and contains the matching products specific to that region. There may be duplicate product matches in the union of all the per-product results.",
          items = {
            ["$ref"] = "GoogleCloudVisionV1p3beta1ProductSearchResultsGroupedResult",
          },
          type = "array",
        },
        results = {
          description = "List of results, one for each product match.",
          items = {
            ["$ref"] = "GoogleCloudVisionV1p3beta1ProductSearchResultsResult",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p3beta1ProductSearchResultsGroupedResult = {
      description = "Information about the products similar to a single product in a query image.",
      id = "GoogleCloudVisionV1p3beta1ProductSearchResultsGroupedResult",
      properties = {
        boundingPoly = {
          ["$ref"] = "GoogleCloudVisionV1p3beta1BoundingPoly",
          description = "The bounding polygon around the product detected in the query image.",
        },
        objectAnnotations = {
          description = "List of generic predictions for the object in the bounding box.",
          items = {
            ["$ref"] = "GoogleCloudVisionV1p3beta1ProductSearchResultsObjectAnnotation",
          },
          type = "array",
        },
        results = {
          description = "List of results, one for each product match.",
          items = {
            ["$ref"] = "GoogleCloudVisionV1p3beta1ProductSearchResultsResult",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p3beta1ProductSearchResultsObjectAnnotation = {
      description = "Prediction for what the object in the bounding box is.",
      id = "GoogleCloudVisionV1p3beta1ProductSearchResultsObjectAnnotation",
      properties = {
        languageCode = {
          description = "The BCP-47 language code, such as \"en-US\" or \"sr-Latn\". For more information, see http://www.unicode.org/reports/tr35/#Unicode_locale_identifier.",
          type = "string",
        },
        mid = {
          description = "Object ID that should align with EntityAnnotation mid.",
          type = "string",
        },
        name = {
          description = "Object name, expressed in its `language_code` language.",
          type = "string",
        },
        score = {
          description = "Score of the result. Range [0, 1].",
          format = "float",
          type = "number",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p3beta1ProductSearchResultsResult = {
      description = "Information about a product.",
      id = "GoogleCloudVisionV1p3beta1ProductSearchResultsResult",
      properties = {
        image = {
          description = "The resource name of the image from the product that is the closest match to the query.",
          type = "string",
        },
        product = {
          ["$ref"] = "GoogleCloudVisionV1p3beta1Product",
          description = "The Product.",
        },
        score = {
          description = "A confidence level on the match, ranging from 0 (no confidence) to 1 (full confidence).",
          format = "float",
          type = "number",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p3beta1Property = {
      description = "A `Property` consists of a user-supplied name/value pair.",
      id = "GoogleCloudVisionV1p3beta1Property",
      properties = {
        name = {
          description = "Name of the property.",
          type = "string",
        },
        uint64Value = {
          description = "Value of numeric properties.",
          format = "uint64",
          type = "string",
        },
        value = {
          description = "Value of the property.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p3beta1ReferenceImage = {
      description = "A `ReferenceImage` represents a product image and its associated metadata, such as bounding boxes.",
      id = "GoogleCloudVisionV1p3beta1ReferenceImage",
      properties = {
        boundingPolys = {
          description = "Optional. Bounding polygons around the areas of interest in the reference image. If this field is empty, the system will try to detect regions of interest. At most 10 bounding polygons will be used. The provided shape is converted into a non-rotated rectangle. Once converted, the small edge of the rectangle must be greater than or equal to 300 pixels. The aspect ratio must be 1:4 or less (i.e. 1:3 is ok; 1:5 is not).",
          items = {
            ["$ref"] = "GoogleCloudVisionV1p3beta1BoundingPoly",
          },
          type = "array",
        },
        name = {
          description = "The resource name of the reference image. Format is: `projects/PROJECT_ID/locations/LOC_ID/products/PRODUCT_ID/referenceImages/IMAGE_ID`. This field is ignored when creating a reference image.",
          type = "string",
        },
        uri = {
          description = "Required. The Google Cloud Storage URI of the reference image. The URI must start with `gs://`.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p3beta1SafeSearchAnnotation = {
      description = "Set of features pertaining to the image, computed by computer vision methods over safe-search verticals (for example, adult, spoof, medical, violence).",
      id = "GoogleCloudVisionV1p3beta1SafeSearchAnnotation",
      properties = {
        adult = {
          description = "Represents the adult content likelihood for the image. Adult content may contain elements such as nudity, pornographic images or cartoons, or sexual activities.",
          enum = {
            "UNKNOWN",
            "VERY_UNLIKELY",
            "UNLIKELY",
            "POSSIBLE",
            "LIKELY",
            "VERY_LIKELY",
          },
          enumDescriptions = {
            "Unknown likelihood.",
            "It is very unlikely.",
            "It is unlikely.",
            "It is possible.",
            "It is likely.",
            "It is very likely.",
          },
          type = "string",
        },
        medical = {
          description = "Likelihood that this is a medical image.",
          enum = {
            "UNKNOWN",
            "VERY_UNLIKELY",
            "UNLIKELY",
            "POSSIBLE",
            "LIKELY",
            "VERY_LIKELY",
          },
          enumDescriptions = {
            "Unknown likelihood.",
            "It is very unlikely.",
            "It is unlikely.",
            "It is possible.",
            "It is likely.",
            "It is very likely.",
          },
          type = "string",
        },
        racy = {
          description = "Likelihood that the request image contains racy content. Racy content may include (but is not limited to) skimpy or sheer clothing, strategically covered nudity, lewd or provocative poses, or close-ups of sensitive body areas.",
          enum = {
            "UNKNOWN",
            "VERY_UNLIKELY",
            "UNLIKELY",
            "POSSIBLE",
            "LIKELY",
            "VERY_LIKELY",
          },
          enumDescriptions = {
            "Unknown likelihood.",
            "It is very unlikely.",
            "It is unlikely.",
            "It is possible.",
            "It is likely.",
            "It is very likely.",
          },
          type = "string",
        },
        spoof = {
          description = "Spoof likelihood. The likelihood that an modification was made to the image's canonical version to make it appear funny or offensive.",
          enum = {
            "UNKNOWN",
            "VERY_UNLIKELY",
            "UNLIKELY",
            "POSSIBLE",
            "LIKELY",
            "VERY_LIKELY",
          },
          enumDescriptions = {
            "Unknown likelihood.",
            "It is very unlikely.",
            "It is unlikely.",
            "It is possible.",
            "It is likely.",
            "It is very likely.",
          },
          type = "string",
        },
        violence = {
          description = "Likelihood that this image contains violent content.",
          enum = {
            "UNKNOWN",
            "VERY_UNLIKELY",
            "UNLIKELY",
            "POSSIBLE",
            "LIKELY",
            "VERY_LIKELY",
          },
          enumDescriptions = {
            "Unknown likelihood.",
            "It is very unlikely.",
            "It is unlikely.",
            "It is possible.",
            "It is likely.",
            "It is very likely.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p3beta1Symbol = {
      description = "A single symbol representation.",
      id = "GoogleCloudVisionV1p3beta1Symbol",
      properties = {
        boundingBox = {
          ["$ref"] = "GoogleCloudVisionV1p3beta1BoundingPoly",
          description = "The bounding box for the symbol. The vertices are in the order of top-left, top-right, bottom-right, bottom-left. When a rotation of the bounding box is detected the rotation is represented as around the top-left corner as defined when the text is read in the 'natural' orientation. For example: * when the text is horizontal it might look like: 0----1 | | 3----2 * when it's rotated 180 degrees around the top-left corner it becomes: 2----3 | | 1----0 and the vertex order will still be (0, 1, 2, 3).",
        },
        confidence = {
          description = "Confidence of the OCR results for the symbol. Range [0, 1].",
          format = "float",
          type = "number",
        },
        property = {
          ["$ref"] = "GoogleCloudVisionV1p3beta1TextAnnotationTextProperty",
          description = "Additional information detected for the symbol.",
        },
        text = {
          description = "The actual UTF-8 representation of the symbol.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p3beta1TextAnnotation = {
      description = "TextAnnotation contains a structured representation of OCR extracted text. The hierarchy of an OCR extracted text structure is like this: TextAnnotation -> Page -> Block -> Paragraph -> Word -> Symbol Each structural component, starting from Page, may further have their own properties. Properties describe detected languages, breaks etc.. Please refer to the TextAnnotation.TextProperty message definition below for more detail.",
      id = "GoogleCloudVisionV1p3beta1TextAnnotation",
      properties = {
        pages = {
          description = "List of pages detected by OCR.",
          items = {
            ["$ref"] = "GoogleCloudVisionV1p3beta1Page",
          },
          type = "array",
        },
        text = {
          description = "UTF-8 text detected on the pages.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p3beta1TextAnnotationDetectedBreak = {
      description = "Detected start or end of a structural component.",
      id = "GoogleCloudVisionV1p3beta1TextAnnotationDetectedBreak",
      properties = {
        isPrefix = {
          description = "True if break prepends the element.",
          type = "boolean",
        },
        type = {
          description = "Detected break type.",
          enum = {
            "UNKNOWN",
            "SPACE",
            "SURE_SPACE",
            "EOL_SURE_SPACE",
            "HYPHEN",
            "LINE_BREAK",
          },
          enumDescriptions = {
            "Unknown break label type.",
            "Regular space.",
            "Sure space (very wide).",
            "Line-wrapping break.",
            "End-line hyphen that is not present in text; does not co-occur with `SPACE`, `LEADER_SPACE`, or `LINE_BREAK`.",
            "Line break that ends a paragraph.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p3beta1TextAnnotationDetectedLanguage = {
      description = "Detected language for a structural component.",
      id = "GoogleCloudVisionV1p3beta1TextAnnotationDetectedLanguage",
      properties = {
        confidence = {
          description = "Confidence of detected language. Range [0, 1].",
          format = "float",
          type = "number",
        },
        languageCode = {
          description = "The BCP-47 language code, such as \"en-US\" or \"sr-Latn\". For more information, see http://www.unicode.org/reports/tr35/#Unicode_locale_identifier.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p3beta1TextAnnotationTextProperty = {
      description = "Additional information detected on the structural component.",
      id = "GoogleCloudVisionV1p3beta1TextAnnotationTextProperty",
      properties = {
        detectedBreak = {
          ["$ref"] = "GoogleCloudVisionV1p3beta1TextAnnotationDetectedBreak",
          description = "Detected start or end of a text segment.",
        },
        detectedLanguages = {
          description = "A list of detected languages together with confidence.",
          items = {
            ["$ref"] = "GoogleCloudVisionV1p3beta1TextAnnotationDetectedLanguage",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p3beta1Vertex = {
      description = "A vertex represents a 2D point in the image. NOTE: the vertex coordinates are in the same scale as the original image.",
      id = "GoogleCloudVisionV1p3beta1Vertex",
      properties = {
        x = {
          description = "X coordinate.",
          format = "int32",
          type = "integer",
        },
        y = {
          description = "Y coordinate.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p3beta1WebDetection = {
      description = "Relevant information for the image from the Internet.",
      id = "GoogleCloudVisionV1p3beta1WebDetection",
      properties = {
        bestGuessLabels = {
          description = "The service's best guess as to the topic of the request image. Inferred from similar images on the open web.",
          items = {
            ["$ref"] = "GoogleCloudVisionV1p3beta1WebDetectionWebLabel",
          },
          type = "array",
        },
        fullMatchingImages = {
          description = "Fully matching images from the Internet. Can include resized copies of the query image.",
          items = {
            ["$ref"] = "GoogleCloudVisionV1p3beta1WebDetectionWebImage",
          },
          type = "array",
        },
        pagesWithMatchingImages = {
          description = "Web pages containing the matching images from the Internet.",
          items = {
            ["$ref"] = "GoogleCloudVisionV1p3beta1WebDetectionWebPage",
          },
          type = "array",
        },
        partialMatchingImages = {
          description = "Partial matching images from the Internet. Those images are similar enough to share some key-point features. For example an original image will likely have partial matching for its crops.",
          items = {
            ["$ref"] = "GoogleCloudVisionV1p3beta1WebDetectionWebImage",
          },
          type = "array",
        },
        visuallySimilarImages = {
          description = "The visually similar image results.",
          items = {
            ["$ref"] = "GoogleCloudVisionV1p3beta1WebDetectionWebImage",
          },
          type = "array",
        },
        webEntities = {
          description = "Deduced entities from similar images on the Internet.",
          items = {
            ["$ref"] = "GoogleCloudVisionV1p3beta1WebDetectionWebEntity",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p3beta1WebDetectionWebEntity = {
      description = "Entity deduced from similar images on the Internet.",
      id = "GoogleCloudVisionV1p3beta1WebDetectionWebEntity",
      properties = {
        description = {
          description = "Canonical description of the entity, in English.",
          type = "string",
        },
        entityId = {
          description = "Opaque entity ID.",
          type = "string",
        },
        score = {
          description = "Overall relevancy score for the entity. Not normalized and not comparable across different image queries.",
          format = "float",
          type = "number",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p3beta1WebDetectionWebImage = {
      description = "Metadata for online images.",
      id = "GoogleCloudVisionV1p3beta1WebDetectionWebImage",
      properties = {
        score = {
          description = "(Deprecated) Overall relevancy score for the image.",
          format = "float",
          type = "number",
        },
        url = {
          description = "The result image URL.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p3beta1WebDetectionWebLabel = {
      description = "Label to provide extra metadata for the web detection.",
      id = "GoogleCloudVisionV1p3beta1WebDetectionWebLabel",
      properties = {
        label = {
          description = "Label for extra metadata.",
          type = "string",
        },
        languageCode = {
          description = "The BCP-47 language code for `label`, such as \"en-US\" or \"sr-Latn\". For more information, see http://www.unicode.org/reports/tr35/#Unicode_locale_identifier.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p3beta1WebDetectionWebPage = {
      description = "Metadata for web pages.",
      id = "GoogleCloudVisionV1p3beta1WebDetectionWebPage",
      properties = {
        fullMatchingImages = {
          description = "Fully matching images on the page. Can include resized copies of the query image.",
          items = {
            ["$ref"] = "GoogleCloudVisionV1p3beta1WebDetectionWebImage",
          },
          type = "array",
        },
        pageTitle = {
          description = "Title for the web page, may contain HTML markups.",
          type = "string",
        },
        partialMatchingImages = {
          description = "Partial matching images on the page. Those images are similar enough to share some key-point features. For example an original image will likely have partial matching for its crops.",
          items = {
            ["$ref"] = "GoogleCloudVisionV1p3beta1WebDetectionWebImage",
          },
          type = "array",
        },
        score = {
          description = "(Deprecated) Overall relevancy score for the web page.",
          format = "float",
          type = "number",
        },
        url = {
          description = "The result web page URL.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p3beta1Word = {
      description = "A word representation.",
      id = "GoogleCloudVisionV1p3beta1Word",
      properties = {
        boundingBox = {
          ["$ref"] = "GoogleCloudVisionV1p3beta1BoundingPoly",
          description = "The bounding box for the word. The vertices are in the order of top-left, top-right, bottom-right, bottom-left. When a rotation of the bounding box is detected the rotation is represented as around the top-left corner as defined when the text is read in the 'natural' orientation. For example: * when the text is horizontal it might look like: 0----1 | | 3----2 * when it's rotated 180 degrees around the top-left corner it becomes: 2----3 | | 1----0 and the vertex order will still be (0, 1, 2, 3).",
        },
        confidence = {
          description = "Confidence of the OCR results for the word. Range [0, 1].",
          format = "float",
          type = "number",
        },
        property = {
          ["$ref"] = "GoogleCloudVisionV1p3beta1TextAnnotationTextProperty",
          description = "Additional information detected for the word.",
        },
        symbols = {
          description = "List of symbols in the word. The order of the symbols follows the natural reading order.",
          items = {
            ["$ref"] = "GoogleCloudVisionV1p3beta1Symbol",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p4beta1AnnotateFileResponse = {
      description = "Response to a single file annotation request. A file may contain one or more images, which individually have their own responses.",
      id = "GoogleCloudVisionV1p4beta1AnnotateFileResponse",
      properties = {
        error = {
          ["$ref"] = "Status",
          description = "If set, represents the error message for the failed request. The `responses` field will not be set in this case.",
        },
        inputConfig = {
          ["$ref"] = "GoogleCloudVisionV1p4beta1InputConfig",
          description = "Information about the file for which this response is generated.",
        },
        responses = {
          description = "Individual responses to images found within the file. This field will be empty if the `error` field is set.",
          items = {
            ["$ref"] = "GoogleCloudVisionV1p4beta1AnnotateImageResponse",
          },
          type = "array",
        },
        totalPages = {
          description = "This field gives the total number of pages in the file.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p4beta1AnnotateImageResponse = {
      description = "Response to an image annotation request.",
      id = "GoogleCloudVisionV1p4beta1AnnotateImageResponse",
      properties = {
        context = {
          ["$ref"] = "GoogleCloudVisionV1p4beta1ImageAnnotationContext",
          description = "If present, contextual information is needed to understand where this image comes from.",
        },
        cropHintsAnnotation = {
          ["$ref"] = "GoogleCloudVisionV1p4beta1CropHintsAnnotation",
          description = "If present, crop hints have completed successfully.",
        },
        error = {
          ["$ref"] = "Status",
          description = "If set, represents the error message for the operation. Note that filled-in image annotations are guaranteed to be correct, even when `error` is set.",
        },
        faceAnnotations = {
          description = "If present, face detection has completed successfully.",
          items = {
            ["$ref"] = "GoogleCloudVisionV1p4beta1FaceAnnotation",
          },
          type = "array",
        },
        fullTextAnnotation = {
          ["$ref"] = "GoogleCloudVisionV1p4beta1TextAnnotation",
          description = "If present, text (OCR) detection or document (OCR) text detection has completed successfully. This annotation provides the structural hierarchy for the OCR detected text.",
        },
        imagePropertiesAnnotation = {
          ["$ref"] = "GoogleCloudVisionV1p4beta1ImageProperties",
          description = "If present, image properties were extracted successfully.",
        },
        labelAnnotations = {
          description = "If present, label detection has completed successfully.",
          items = {
            ["$ref"] = "GoogleCloudVisionV1p4beta1EntityAnnotation",
          },
          type = "array",
        },
        landmarkAnnotations = {
          description = "If present, landmark detection has completed successfully.",
          items = {
            ["$ref"] = "GoogleCloudVisionV1p4beta1EntityAnnotation",
          },
          type = "array",
        },
        localizedObjectAnnotations = {
          description = "If present, localized object detection has completed successfully. This will be sorted descending by confidence score.",
          items = {
            ["$ref"] = "GoogleCloudVisionV1p4beta1LocalizedObjectAnnotation",
          },
          type = "array",
        },
        logoAnnotations = {
          description = "If present, logo detection has completed successfully.",
          items = {
            ["$ref"] = "GoogleCloudVisionV1p4beta1EntityAnnotation",
          },
          type = "array",
        },
        productSearchResults = {
          ["$ref"] = "GoogleCloudVisionV1p4beta1ProductSearchResults",
          description = "If present, product search has completed successfully.",
        },
        safeSearchAnnotation = {
          ["$ref"] = "GoogleCloudVisionV1p4beta1SafeSearchAnnotation",
          description = "If present, safe-search annotation has completed successfully.",
        },
        textAnnotations = {
          description = "If present, text (OCR) detection has completed successfully.",
          items = {
            ["$ref"] = "GoogleCloudVisionV1p4beta1EntityAnnotation",
          },
          type = "array",
        },
        webDetection = {
          ["$ref"] = "GoogleCloudVisionV1p4beta1WebDetection",
          description = "If present, web detection has completed successfully.",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p4beta1AsyncAnnotateFileResponse = {
      description = "The response for a single offline file annotation request.",
      id = "GoogleCloudVisionV1p4beta1AsyncAnnotateFileResponse",
      properties = {
        outputConfig = {
          ["$ref"] = "GoogleCloudVisionV1p4beta1OutputConfig",
          description = "The output location and metadata from AsyncAnnotateFileRequest.",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p4beta1AsyncBatchAnnotateFilesResponse = {
      description = "Response to an async batch file annotation request.",
      id = "GoogleCloudVisionV1p4beta1AsyncBatchAnnotateFilesResponse",
      properties = {
        responses = {
          description = "The list of file annotation responses, one for each request in AsyncBatchAnnotateFilesRequest.",
          items = {
            ["$ref"] = "GoogleCloudVisionV1p4beta1AsyncAnnotateFileResponse",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p4beta1AsyncBatchAnnotateImagesResponse = {
      description = "Response to an async batch image annotation request.",
      id = "GoogleCloudVisionV1p4beta1AsyncBatchAnnotateImagesResponse",
      properties = {
        outputConfig = {
          ["$ref"] = "GoogleCloudVisionV1p4beta1OutputConfig",
          description = "The output location and metadata from AsyncBatchAnnotateImagesRequest.",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p4beta1BatchAnnotateFilesResponse = {
      description = "A list of file annotation responses.",
      id = "GoogleCloudVisionV1p4beta1BatchAnnotateFilesResponse",
      properties = {
        responses = {
          description = "The list of file annotation responses, each response corresponding to each AnnotateFileRequest in BatchAnnotateFilesRequest.",
          items = {
            ["$ref"] = "GoogleCloudVisionV1p4beta1AnnotateFileResponse",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p4beta1BatchOperationMetadata = {
      description = "Metadata for the batch operations such as the current state. This is included in the `metadata` field of the `Operation` returned by the `GetOperation` call of the `google::longrunning::Operations` service.",
      id = "GoogleCloudVisionV1p4beta1BatchOperationMetadata",
      properties = {
        endTime = {
          description = "The time when the batch request is finished and google.longrunning.Operation.done is set to true.",
          format = "google-datetime",
          type = "string",
        },
        state = {
          description = "The current state of the batch operation.",
          enum = {
            "STATE_UNSPECIFIED",
            "PROCESSING",
            "SUCCESSFUL",
            "FAILED",
            "CANCELLED",
          },
          enumDescriptions = {
            "Invalid.",
            "Request is actively being processed.",
            "The request is done and at least one item has been successfully processed.",
            "The request is done and no item has been successfully processed.",
            "The request is done after the longrunning.Operations.CancelOperation has been called by the user. Any records that were processed before the cancel command are output as specified in the request.",
          },
          type = "string",
        },
        submitTime = {
          description = "The time when the batch request was submitted to the server.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p4beta1Block = {
      description = "Logical element on the page.",
      id = "GoogleCloudVisionV1p4beta1Block",
      properties = {
        blockType = {
          description = "Detected block type (text, image etc) for this block.",
          enum = {
            "UNKNOWN",
            "TEXT",
            "TABLE",
            "PICTURE",
            "RULER",
            "BARCODE",
          },
          enumDescriptions = {
            "Unknown block type.",
            "Regular text block.",
            "Table block.",
            "Image block.",
            "Horizontal/vertical line box.",
            "Barcode block.",
          },
          type = "string",
        },
        boundingBox = {
          ["$ref"] = "GoogleCloudVisionV1p4beta1BoundingPoly",
          description = "The bounding box for the block. The vertices are in the order of top-left, top-right, bottom-right, bottom-left. When a rotation of the bounding box is detected the rotation is represented as around the top-left corner as defined when the text is read in the 'natural' orientation. For example: * when the text is horizontal it might look like: 0----1 | | 3----2 * when it's rotated 180 degrees around the top-left corner it becomes: 2----3 | | 1----0 and the vertex order will still be (0, 1, 2, 3).",
        },
        confidence = {
          description = "Confidence of the OCR results on the block. Range [0, 1].",
          format = "float",
          type = "number",
        },
        paragraphs = {
          description = "List of paragraphs in this block (if this blocks is of type text).",
          items = {
            ["$ref"] = "GoogleCloudVisionV1p4beta1Paragraph",
          },
          type = "array",
        },
        property = {
          ["$ref"] = "GoogleCloudVisionV1p4beta1TextAnnotationTextProperty",
          description = "Additional information detected for the block.",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p4beta1BoundingPoly = {
      description = "A bounding polygon for the detected image annotation.",
      id = "GoogleCloudVisionV1p4beta1BoundingPoly",
      properties = {
        normalizedVertices = {
          description = "The bounding polygon normalized vertices.",
          items = {
            ["$ref"] = "GoogleCloudVisionV1p4beta1NormalizedVertex",
          },
          type = "array",
        },
        vertices = {
          description = "The bounding polygon vertices.",
          items = {
            ["$ref"] = "GoogleCloudVisionV1p4beta1Vertex",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p4beta1Celebrity = {
      description = "A Celebrity is a group of Faces with an identity.",
      id = "GoogleCloudVisionV1p4beta1Celebrity",
      properties = {
        description = {
          description = "The Celebrity's description.",
          type = "string",
        },
        displayName = {
          description = "The Celebrity's display name.",
          type = "string",
        },
        name = {
          description = "The resource name of the preloaded Celebrity. Has the format `builtin/{mid}`.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p4beta1ColorInfo = {
      description = "Color information consists of RGB channels, score, and the fraction of the image that the color occupies in the image.",
      id = "GoogleCloudVisionV1p4beta1ColorInfo",
      properties = {
        color = {
          ["$ref"] = "Color",
          description = "RGB components of the color.",
        },
        pixelFraction = {
          description = "The fraction of pixels the color occupies in the image. Value in range [0, 1].",
          format = "float",
          type = "number",
        },
        score = {
          description = "Image-specific score for this color. Value in range [0, 1].",
          format = "float",
          type = "number",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p4beta1CropHint = {
      description = "Single crop hint that is used to generate a new crop when serving an image.",
      id = "GoogleCloudVisionV1p4beta1CropHint",
      properties = {
        boundingPoly = {
          ["$ref"] = "GoogleCloudVisionV1p4beta1BoundingPoly",
          description = "The bounding polygon for the crop region. The coordinates of the bounding box are in the original image's scale.",
        },
        confidence = {
          description = "Confidence of this being a salient region. Range [0, 1].",
          format = "float",
          type = "number",
        },
        importanceFraction = {
          description = "Fraction of importance of this salient region with respect to the original image.",
          format = "float",
          type = "number",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p4beta1CropHintsAnnotation = {
      description = "Set of crop hints that are used to generate new crops when serving images.",
      id = "GoogleCloudVisionV1p4beta1CropHintsAnnotation",
      properties = {
        cropHints = {
          description = "Crop hint results.",
          items = {
            ["$ref"] = "GoogleCloudVisionV1p4beta1CropHint",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p4beta1DominantColorsAnnotation = {
      description = "Set of dominant colors and their corresponding scores.",
      id = "GoogleCloudVisionV1p4beta1DominantColorsAnnotation",
      properties = {
        colors = {
          description = "RGB color values with their score and pixel fraction.",
          items = {
            ["$ref"] = "GoogleCloudVisionV1p4beta1ColorInfo",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p4beta1EntityAnnotation = {
      description = "Set of detected entity features.",
      id = "GoogleCloudVisionV1p4beta1EntityAnnotation",
      properties = {
        boundingPoly = {
          ["$ref"] = "GoogleCloudVisionV1p4beta1BoundingPoly",
          description = "Image region to which this entity belongs. Not produced for `LABEL_DETECTION` features.",
        },
        confidence = {
          description = "**Deprecated. Use `score` instead.** The accuracy of the entity detection in an image. For example, for an image in which the \"Eiffel Tower\" entity is detected, this field represents the confidence that there is a tower in the query image. Range [0, 1].",
          format = "float",
          type = "number",
        },
        description = {
          description = "Entity textual description, expressed in its `locale` language.",
          type = "string",
        },
        locale = {
          description = "The language code for the locale in which the entity textual `description` is expressed.",
          type = "string",
        },
        locations = {
          description = "The location information for the detected entity. Multiple `LocationInfo` elements can be present because one location may indicate the location of the scene in the image, and another location may indicate the location of the place where the image was taken. Location information is usually present for landmarks.",
          items = {
            ["$ref"] = "GoogleCloudVisionV1p4beta1LocationInfo",
          },
          type = "array",
        },
        mid = {
          description = "Opaque entity ID. Some IDs may be available in [Google Knowledge Graph Search API](https://developers.google.com/knowledge-graph/).",
          type = "string",
        },
        properties = {
          description = "Some entities may have optional user-supplied `Property` (name/value) fields, such a score or string that qualifies the entity.",
          items = {
            ["$ref"] = "GoogleCloudVisionV1p4beta1Property",
          },
          type = "array",
        },
        score = {
          description = "Overall score of the result. Range [0, 1].",
          format = "float",
          type = "number",
        },
        topicality = {
          description = "The relevancy of the ICA (Image Content Annotation) label to the image. For example, the relevancy of \"tower\" is likely higher to an image containing the detected \"Eiffel Tower\" than to an image containing a detected distant towering building, even though the confidence that there is a tower in each image may be the same. Range [0, 1].",
          format = "float",
          type = "number",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p4beta1FaceAnnotation = {
      description = "A face annotation object contains the results of face detection.",
      id = "GoogleCloudVisionV1p4beta1FaceAnnotation",
      properties = {
        angerLikelihood = {
          description = "Anger likelihood.",
          enum = {
            "UNKNOWN",
            "VERY_UNLIKELY",
            "UNLIKELY",
            "POSSIBLE",
            "LIKELY",
            "VERY_LIKELY",
          },
          enumDescriptions = {
            "Unknown likelihood.",
            "It is very unlikely.",
            "It is unlikely.",
            "It is possible.",
            "It is likely.",
            "It is very likely.",
          },
          type = "string",
        },
        blurredLikelihood = {
          description = "Blurred likelihood.",
          enum = {
            "UNKNOWN",
            "VERY_UNLIKELY",
            "UNLIKELY",
            "POSSIBLE",
            "LIKELY",
            "VERY_LIKELY",
          },
          enumDescriptions = {
            "Unknown likelihood.",
            "It is very unlikely.",
            "It is unlikely.",
            "It is possible.",
            "It is likely.",
            "It is very likely.",
          },
          type = "string",
        },
        boundingPoly = {
          ["$ref"] = "GoogleCloudVisionV1p4beta1BoundingPoly",
          description = "The bounding polygon around the face. The coordinates of the bounding box are in the original image's scale. The bounding box is computed to \"frame\" the face in accordance with human expectations. It is based on the landmarker results. Note that one or more x and/or y coordinates may not be generated in the `BoundingPoly` (the polygon will be unbounded) if only a partial face appears in the image to be annotated.",
        },
        detectionConfidence = {
          description = "Detection confidence. Range [0, 1].",
          format = "float",
          type = "number",
        },
        fdBoundingPoly = {
          ["$ref"] = "GoogleCloudVisionV1p4beta1BoundingPoly",
          description = "The `fd_bounding_poly` bounding polygon is tighter than the `boundingPoly`, and encloses only the skin part of the face. Typically, it is used to eliminate the face from any image analysis that detects the \"amount of skin\" visible in an image. It is not based on the landmarker results, only on the initial face detection, hence the fd (face detection) prefix.",
        },
        headwearLikelihood = {
          description = "Headwear likelihood.",
          enum = {
            "UNKNOWN",
            "VERY_UNLIKELY",
            "UNLIKELY",
            "POSSIBLE",
            "LIKELY",
            "VERY_LIKELY",
          },
          enumDescriptions = {
            "Unknown likelihood.",
            "It is very unlikely.",
            "It is unlikely.",
            "It is possible.",
            "It is likely.",
            "It is very likely.",
          },
          type = "string",
        },
        joyLikelihood = {
          description = "Joy likelihood.",
          enum = {
            "UNKNOWN",
            "VERY_UNLIKELY",
            "UNLIKELY",
            "POSSIBLE",
            "LIKELY",
            "VERY_LIKELY",
          },
          enumDescriptions = {
            "Unknown likelihood.",
            "It is very unlikely.",
            "It is unlikely.",
            "It is possible.",
            "It is likely.",
            "It is very likely.",
          },
          type = "string",
        },
        landmarkingConfidence = {
          description = "Face landmarking confidence. Range [0, 1].",
          format = "float",
          type = "number",
        },
        landmarks = {
          description = "Detected face landmarks.",
          items = {
            ["$ref"] = "GoogleCloudVisionV1p4beta1FaceAnnotationLandmark",
          },
          type = "array",
        },
        panAngle = {
          description = "Yaw angle, which indicates the leftward/rightward angle that the face is pointing relative to the vertical plane perpendicular to the image. Range [-180,180].",
          format = "float",
          type = "number",
        },
        recognitionResult = {
          description = "Additional recognition information. Only computed if image_context.face_recognition_params is provided, **and** a match is found to a Celebrity in the input CelebritySet. This field is sorted in order of decreasing confidence values.",
          items = {
            ["$ref"] = "GoogleCloudVisionV1p4beta1FaceRecognitionResult",
          },
          type = "array",
        },
        rollAngle = {
          description = "Roll angle, which indicates the amount of clockwise/anti-clockwise rotation of the face relative to the image vertical about the axis perpendicular to the face. Range [-180,180].",
          format = "float",
          type = "number",
        },
        sorrowLikelihood = {
          description = "Sorrow likelihood.",
          enum = {
            "UNKNOWN",
            "VERY_UNLIKELY",
            "UNLIKELY",
            "POSSIBLE",
            "LIKELY",
            "VERY_LIKELY",
          },
          enumDescriptions = {
            "Unknown likelihood.",
            "It is very unlikely.",
            "It is unlikely.",
            "It is possible.",
            "It is likely.",
            "It is very likely.",
          },
          type = "string",
        },
        surpriseLikelihood = {
          description = "Surprise likelihood.",
          enum = {
            "UNKNOWN",
            "VERY_UNLIKELY",
            "UNLIKELY",
            "POSSIBLE",
            "LIKELY",
            "VERY_LIKELY",
          },
          enumDescriptions = {
            "Unknown likelihood.",
            "It is very unlikely.",
            "It is unlikely.",
            "It is possible.",
            "It is likely.",
            "It is very likely.",
          },
          type = "string",
        },
        tiltAngle = {
          description = "Pitch angle, which indicates the upwards/downwards angle that the face is pointing relative to the image's horizontal plane. Range [-180,180].",
          format = "float",
          type = "number",
        },
        underExposedLikelihood = {
          description = "Under-exposed likelihood.",
          enum = {
            "UNKNOWN",
            "VERY_UNLIKELY",
            "UNLIKELY",
            "POSSIBLE",
            "LIKELY",
            "VERY_LIKELY",
          },
          enumDescriptions = {
            "Unknown likelihood.",
            "It is very unlikely.",
            "It is unlikely.",
            "It is possible.",
            "It is likely.",
            "It is very likely.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p4beta1FaceAnnotationLandmark = {
      description = "A face-specific landmark (for example, a face feature).",
      id = "GoogleCloudVisionV1p4beta1FaceAnnotationLandmark",
      properties = {
        position = {
          ["$ref"] = "GoogleCloudVisionV1p4beta1Position",
          description = "Face landmark position.",
        },
        type = {
          description = "Face landmark type.",
          enum = {
            "UNKNOWN_LANDMARK",
            "LEFT_EYE",
            "RIGHT_EYE",
            "LEFT_OF_LEFT_EYEBROW",
            "RIGHT_OF_LEFT_EYEBROW",
            "LEFT_OF_RIGHT_EYEBROW",
            "RIGHT_OF_RIGHT_EYEBROW",
            "MIDPOINT_BETWEEN_EYES",
            "NOSE_TIP",
            "UPPER_LIP",
            "LOWER_LIP",
            "MOUTH_LEFT",
            "MOUTH_RIGHT",
            "MOUTH_CENTER",
            "NOSE_BOTTOM_RIGHT",
            "NOSE_BOTTOM_LEFT",
            "NOSE_BOTTOM_CENTER",
            "LEFT_EYE_TOP_BOUNDARY",
            "LEFT_EYE_RIGHT_CORNER",
            "LEFT_EYE_BOTTOM_BOUNDARY",
            "LEFT_EYE_LEFT_CORNER",
            "RIGHT_EYE_TOP_BOUNDARY",
            "RIGHT_EYE_RIGHT_CORNER",
            "RIGHT_EYE_BOTTOM_BOUNDARY",
            "RIGHT_EYE_LEFT_CORNER",
            "LEFT_EYEBROW_UPPER_MIDPOINT",
            "RIGHT_EYEBROW_UPPER_MIDPOINT",
            "LEFT_EAR_TRAGION",
            "RIGHT_EAR_TRAGION",
            "LEFT_EYE_PUPIL",
            "RIGHT_EYE_PUPIL",
            "FOREHEAD_GLABELLA",
            "CHIN_GNATHION",
            "CHIN_LEFT_GONION",
            "CHIN_RIGHT_GONION",
            "LEFT_CHEEK_CENTER",
            "RIGHT_CHEEK_CENTER",
          },
          enumDescriptions = {
            "Unknown face landmark detected. Should not be filled.",
            "Left eye.",
            "Right eye.",
            "Left of left eyebrow.",
            "Right of left eyebrow.",
            "Left of right eyebrow.",
            "Right of right eyebrow.",
            "Midpoint between eyes.",
            "Nose tip.",
            "Upper lip.",
            "Lower lip.",
            "Mouth left.",
            "Mouth right.",
            "Mouth center.",
            "Nose, bottom right.",
            "Nose, bottom left.",
            "Nose, bottom center.",
            "Left eye, top boundary.",
            "Left eye, right corner.",
            "Left eye, bottom boundary.",
            "Left eye, left corner.",
            "Right eye, top boundary.",
            "Right eye, right corner.",
            "Right eye, bottom boundary.",
            "Right eye, left corner.",
            "Left eyebrow, upper midpoint.",
            "Right eyebrow, upper midpoint.",
            "Left ear tragion.",
            "Right ear tragion.",
            "Left eye pupil.",
            "Right eye pupil.",
            "Forehead glabella.",
            "Chin gnathion.",
            "Chin left gonion.",
            "Chin right gonion.",
            "Left cheek center.",
            "Right cheek center.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p4beta1FaceRecognitionResult = {
      description = "Information about a face's identity.",
      id = "GoogleCloudVisionV1p4beta1FaceRecognitionResult",
      properties = {
        celebrity = {
          ["$ref"] = "GoogleCloudVisionV1p4beta1Celebrity",
          description = "The Celebrity that this face was matched to.",
        },
        confidence = {
          description = "Recognition confidence. Range [0, 1].",
          format = "float",
          type = "number",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p4beta1GcsDestination = {
      description = "The Google Cloud Storage location where the output will be written to.",
      id = "GoogleCloudVisionV1p4beta1GcsDestination",
      properties = {
        uri = {
          description = "Google Cloud Storage URI prefix where the results will be stored. Results will be in JSON format and preceded by its corresponding input URI prefix. This field can either represent a gcs file prefix or gcs directory. In either case, the uri should be unique because in order to get all of the output files, you will need to do a wildcard gcs search on the uri prefix you provide. Examples: * File Prefix: gs://bucket-name/here/filenameprefix The output files will be created in gs://bucket-name/here/ and the names of the output files will begin with \"filenameprefix\". * Directory Prefix: gs://bucket-name/some/location/ The output files will be created in gs://bucket-name/some/location/ and the names of the output files could be anything because there was no filename prefix specified. If multiple outputs, each response is still AnnotateFileResponse, each of which contains some subset of the full list of AnnotateImageResponse. Multiple outputs can happen if, for example, the output JSON is too large and overflows into multiple sharded files.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p4beta1GcsSource = {
      description = "The Google Cloud Storage location where the input will be read from.",
      id = "GoogleCloudVisionV1p4beta1GcsSource",
      properties = {
        uri = {
          description = "Google Cloud Storage URI for the input file. This must only be a Google Cloud Storage object. Wildcards are not currently supported.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p4beta1ImageAnnotationContext = {
      description = "If an image was produced from a file (e.g. a PDF), this message gives information about the source of that image.",
      id = "GoogleCloudVisionV1p4beta1ImageAnnotationContext",
      properties = {
        pageNumber = {
          description = "If the file was a PDF or TIFF, this field gives the page number within the file used to produce the image.",
          format = "int32",
          type = "integer",
        },
        uri = {
          description = "The URI of the file used to produce the image.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p4beta1ImageProperties = {
      description = "Stores image properties, such as dominant colors.",
      id = "GoogleCloudVisionV1p4beta1ImageProperties",
      properties = {
        dominantColors = {
          ["$ref"] = "GoogleCloudVisionV1p4beta1DominantColorsAnnotation",
          description = "If present, dominant colors completed successfully.",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p4beta1ImportProductSetsResponse = {
      description = "Response message for the `ImportProductSets` method. This message is returned by the google.longrunning.Operations.GetOperation method in the returned google.longrunning.Operation.response field.",
      id = "GoogleCloudVisionV1p4beta1ImportProductSetsResponse",
      properties = {
        referenceImages = {
          description = "The list of reference_images that are imported successfully.",
          items = {
            ["$ref"] = "GoogleCloudVisionV1p4beta1ReferenceImage",
          },
          type = "array",
        },
        statuses = {
          description = "The rpc status for each ImportProductSet request, including both successes and errors. The number of statuses here matches the number of lines in the csv file, and statuses[i] stores the success or failure status of processing the i-th line of the csv, starting from line 0.",
          items = {
            ["$ref"] = "Status",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p4beta1InputConfig = {
      description = "The desired input location and metadata.",
      id = "GoogleCloudVisionV1p4beta1InputConfig",
      properties = {
        content = {
          description = "File content, represented as a stream of bytes. Note: As with all `bytes` fields, protobuffers use a pure binary representation, whereas JSON representations use base64. Currently, this field only works for BatchAnnotateFiles requests. It does not work for AsyncBatchAnnotateFiles requests.",
          format = "byte",
          type = "string",
        },
        gcsSource = {
          ["$ref"] = "GoogleCloudVisionV1p4beta1GcsSource",
          description = "The Google Cloud Storage location to read the input from.",
        },
        mimeType = {
          description = "The type of the file. Currently only \"application/pdf\", \"image/tiff\" and \"image/gif\" are supported. Wildcards are not supported.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p4beta1LocalizedObjectAnnotation = {
      description = "Set of detected objects with bounding boxes.",
      id = "GoogleCloudVisionV1p4beta1LocalizedObjectAnnotation",
      properties = {
        boundingPoly = {
          ["$ref"] = "GoogleCloudVisionV1p4beta1BoundingPoly",
          description = "Image region to which this object belongs. This must be populated.",
        },
        languageCode = {
          description = "The BCP-47 language code, such as \"en-US\" or \"sr-Latn\". For more information, see http://www.unicode.org/reports/tr35/#Unicode_locale_identifier.",
          type = "string",
        },
        mid = {
          description = "Object ID that should align with EntityAnnotation mid.",
          type = "string",
        },
        name = {
          description = "Object name, expressed in its `language_code` language.",
          type = "string",
        },
        score = {
          description = "Score of the result. Range [0, 1].",
          format = "float",
          type = "number",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p4beta1LocationInfo = {
      description = "Detected entity location information.",
      id = "GoogleCloudVisionV1p4beta1LocationInfo",
      properties = {
        latLng = {
          ["$ref"] = "LatLng",
          description = "lat/long location coordinates.",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p4beta1NormalizedVertex = {
      description = "A vertex represents a 2D point in the image. NOTE: the normalized vertex coordinates are relative to the original image and range from 0 to 1.",
      id = "GoogleCloudVisionV1p4beta1NormalizedVertex",
      properties = {
        x = {
          description = "X coordinate.",
          format = "float",
          type = "number",
        },
        y = {
          description = "Y coordinate.",
          format = "float",
          type = "number",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p4beta1OperationMetadata = {
      description = "Contains metadata for the BatchAnnotateImages operation.",
      id = "GoogleCloudVisionV1p4beta1OperationMetadata",
      properties = {
        createTime = {
          description = "The time when the batch request was received.",
          format = "google-datetime",
          type = "string",
        },
        state = {
          description = "Current state of the batch operation.",
          enum = {
            "STATE_UNSPECIFIED",
            "CREATED",
            "RUNNING",
            "DONE",
            "CANCELLED",
          },
          enumDescriptions = {
            "Invalid.",
            "Request is received.",
            "Request is actively being processed.",
            "The batch processing is done.",
            "The batch processing was cancelled.",
          },
          type = "string",
        },
        updateTime = {
          description = "The time when the operation result was last updated.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p4beta1OutputConfig = {
      description = "The desired output location and metadata.",
      id = "GoogleCloudVisionV1p4beta1OutputConfig",
      properties = {
        batchSize = {
          description = "The max number of response protos to put into each output JSON file on Google Cloud Storage. The valid range is [1, 100]. If not specified, the default value is 20. For example, for one pdf file with 100 pages, 100 response protos will be generated. If `batch_size` = 20, then 5 json files each containing 20 response protos will be written under the prefix `gcs_destination`.`uri`. Currently, batch_size only applies to GcsDestination, with potential future support for other output configurations.",
          format = "int32",
          type = "integer",
        },
        gcsDestination = {
          ["$ref"] = "GoogleCloudVisionV1p4beta1GcsDestination",
          description = "The Google Cloud Storage location to write the output(s) to.",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p4beta1Page = {
      description = "Detected page from OCR.",
      id = "GoogleCloudVisionV1p4beta1Page",
      properties = {
        blocks = {
          description = "List of blocks of text, images etc on this page.",
          items = {
            ["$ref"] = "GoogleCloudVisionV1p4beta1Block",
          },
          type = "array",
        },
        confidence = {
          description = "Confidence of the OCR results on the page. Range [0, 1].",
          format = "float",
          type = "number",
        },
        height = {
          description = "Page height. For PDFs the unit is points. For images (including TIFFs) the unit is pixels.",
          format = "int32",
          type = "integer",
        },
        property = {
          ["$ref"] = "GoogleCloudVisionV1p4beta1TextAnnotationTextProperty",
          description = "Additional information detected on the page.",
        },
        width = {
          description = "Page width. For PDFs the unit is points. For images (including TIFFs) the unit is pixels.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p4beta1Paragraph = {
      description = "Structural unit of text representing a number of words in certain order.",
      id = "GoogleCloudVisionV1p4beta1Paragraph",
      properties = {
        boundingBox = {
          ["$ref"] = "GoogleCloudVisionV1p4beta1BoundingPoly",
          description = "The bounding box for the paragraph. The vertices are in the order of top-left, top-right, bottom-right, bottom-left. When a rotation of the bounding box is detected the rotation is represented as around the top-left corner as defined when the text is read in the 'natural' orientation. For example: * when the text is horizontal it might look like: 0----1 | | 3----2 * when it's rotated 180 degrees around the top-left corner it becomes: 2----3 | | 1----0 and the vertex order will still be (0, 1, 2, 3).",
        },
        confidence = {
          description = "Confidence of the OCR results for the paragraph. Range [0, 1].",
          format = "float",
          type = "number",
        },
        property = {
          ["$ref"] = "GoogleCloudVisionV1p4beta1TextAnnotationTextProperty",
          description = "Additional information detected for the paragraph.",
        },
        words = {
          description = "List of all words in this paragraph.",
          items = {
            ["$ref"] = "GoogleCloudVisionV1p4beta1Word",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p4beta1Position = {
      description = "A 3D position in the image, used primarily for Face detection landmarks. A valid Position must have both x and y coordinates. The position coordinates are in the same scale as the original image.",
      id = "GoogleCloudVisionV1p4beta1Position",
      properties = {
        x = {
          description = "X coordinate.",
          format = "float",
          type = "number",
        },
        y = {
          description = "Y coordinate.",
          format = "float",
          type = "number",
        },
        z = {
          description = "Z coordinate (or depth).",
          format = "float",
          type = "number",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p4beta1Product = {
      description = "A Product contains ReferenceImages.",
      id = "GoogleCloudVisionV1p4beta1Product",
      properties = {
        description = {
          description = "User-provided metadata to be stored with this product. Must be at most 4096 characters long.",
          type = "string",
        },
        displayName = {
          description = "The user-provided name for this Product. Must not be empty. Must be at most 4096 characters long.",
          type = "string",
        },
        name = {
          description = "The resource name of the product. Format is: `projects/PROJECT_ID/locations/LOC_ID/products/PRODUCT_ID`. This field is ignored when creating a product.",
          type = "string",
        },
        productCategory = {
          description = "Immutable. The category for the product identified by the reference image. This should be one of \"homegoods-v2\", \"apparel-v2\", \"toys-v2\", \"packagedgoods-v1\" or \"general-v1\". The legacy categories \"homegoods\", \"apparel\", and \"toys\" are still supported, but these should not be used for new products.",
          type = "string",
        },
        productLabels = {
          description = "Key-value pairs that can be attached to a product. At query time, constraints can be specified based on the product_labels. Note that integer values can be provided as strings, e.g. \"1199\". Only strings with integer values can match a range-based restriction which is to be supported soon. Multiple values can be assigned to the same key. One product may have up to 500 product_labels. Notice that the total number of distinct product_labels over all products in one ProductSet cannot exceed 1M, otherwise the product search pipeline will refuse to work for that ProductSet.",
          items = {
            ["$ref"] = "GoogleCloudVisionV1p4beta1ProductKeyValue",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p4beta1ProductKeyValue = {
      description = "A product label represented as a key-value pair.",
      id = "GoogleCloudVisionV1p4beta1ProductKeyValue",
      properties = {
        key = {
          description = "The key of the label attached to the product. Cannot be empty and cannot exceed 128 bytes.",
          type = "string",
        },
        value = {
          description = "The value of the label attached to the product. Cannot be empty and cannot exceed 128 bytes.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p4beta1ProductSearchResults = {
      description = "Results for a product search request.",
      id = "GoogleCloudVisionV1p4beta1ProductSearchResults",
      properties = {
        indexTime = {
          description = "Timestamp of the index which provided these results. Products added to the product set and products removed from the product set after this time are not reflected in the current results.",
          format = "google-datetime",
          type = "string",
        },
        productGroupedResults = {
          description = "List of results grouped by products detected in the query image. Each entry corresponds to one bounding polygon in the query image, and contains the matching products specific to that region. There may be duplicate product matches in the union of all the per-product results.",
          items = {
            ["$ref"] = "GoogleCloudVisionV1p4beta1ProductSearchResultsGroupedResult",
          },
          type = "array",
        },
        results = {
          description = "List of results, one for each product match.",
          items = {
            ["$ref"] = "GoogleCloudVisionV1p4beta1ProductSearchResultsResult",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p4beta1ProductSearchResultsGroupedResult = {
      description = "Information about the products similar to a single product in a query image.",
      id = "GoogleCloudVisionV1p4beta1ProductSearchResultsGroupedResult",
      properties = {
        boundingPoly = {
          ["$ref"] = "GoogleCloudVisionV1p4beta1BoundingPoly",
          description = "The bounding polygon around the product detected in the query image.",
        },
        objectAnnotations = {
          description = "List of generic predictions for the object in the bounding box.",
          items = {
            ["$ref"] = "GoogleCloudVisionV1p4beta1ProductSearchResultsObjectAnnotation",
          },
          type = "array",
        },
        results = {
          description = "List of results, one for each product match.",
          items = {
            ["$ref"] = "GoogleCloudVisionV1p4beta1ProductSearchResultsResult",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p4beta1ProductSearchResultsObjectAnnotation = {
      description = "Prediction for what the object in the bounding box is.",
      id = "GoogleCloudVisionV1p4beta1ProductSearchResultsObjectAnnotation",
      properties = {
        languageCode = {
          description = "The BCP-47 language code, such as \"en-US\" or \"sr-Latn\". For more information, see http://www.unicode.org/reports/tr35/#Unicode_locale_identifier.",
          type = "string",
        },
        mid = {
          description = "Object ID that should align with EntityAnnotation mid.",
          type = "string",
        },
        name = {
          description = "Object name, expressed in its `language_code` language.",
          type = "string",
        },
        score = {
          description = "Score of the result. Range [0, 1].",
          format = "float",
          type = "number",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p4beta1ProductSearchResultsResult = {
      description = "Information about a product.",
      id = "GoogleCloudVisionV1p4beta1ProductSearchResultsResult",
      properties = {
        image = {
          description = "The resource name of the image from the product that is the closest match to the query.",
          type = "string",
        },
        product = {
          ["$ref"] = "GoogleCloudVisionV1p4beta1Product",
          description = "The Product.",
        },
        score = {
          description = "A confidence level on the match, ranging from 0 (no confidence) to 1 (full confidence).",
          format = "float",
          type = "number",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p4beta1Property = {
      description = "A `Property` consists of a user-supplied name/value pair.",
      id = "GoogleCloudVisionV1p4beta1Property",
      properties = {
        name = {
          description = "Name of the property.",
          type = "string",
        },
        uint64Value = {
          description = "Value of numeric properties.",
          format = "uint64",
          type = "string",
        },
        value = {
          description = "Value of the property.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p4beta1ReferenceImage = {
      description = "A `ReferenceImage` represents a product image and its associated metadata, such as bounding boxes.",
      id = "GoogleCloudVisionV1p4beta1ReferenceImage",
      properties = {
        boundingPolys = {
          description = "Optional. Bounding polygons around the areas of interest in the reference image. If this field is empty, the system will try to detect regions of interest. At most 10 bounding polygons will be used. The provided shape is converted into a non-rotated rectangle. Once converted, the small edge of the rectangle must be greater than or equal to 300 pixels. The aspect ratio must be 1:4 or less (i.e. 1:3 is ok; 1:5 is not).",
          items = {
            ["$ref"] = "GoogleCloudVisionV1p4beta1BoundingPoly",
          },
          type = "array",
        },
        name = {
          description = "The resource name of the reference image. Format is: `projects/PROJECT_ID/locations/LOC_ID/products/PRODUCT_ID/referenceImages/IMAGE_ID`. This field is ignored when creating a reference image.",
          type = "string",
        },
        uri = {
          description = "Required. The Google Cloud Storage URI of the reference image. The URI must start with `gs://`.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p4beta1SafeSearchAnnotation = {
      description = "Set of features pertaining to the image, computed by computer vision methods over safe-search verticals (for example, adult, spoof, medical, violence).",
      id = "GoogleCloudVisionV1p4beta1SafeSearchAnnotation",
      properties = {
        adult = {
          description = "Represents the adult content likelihood for the image. Adult content may contain elements such as nudity, pornographic images or cartoons, or sexual activities.",
          enum = {
            "UNKNOWN",
            "VERY_UNLIKELY",
            "UNLIKELY",
            "POSSIBLE",
            "LIKELY",
            "VERY_LIKELY",
          },
          enumDescriptions = {
            "Unknown likelihood.",
            "It is very unlikely.",
            "It is unlikely.",
            "It is possible.",
            "It is likely.",
            "It is very likely.",
          },
          type = "string",
        },
        medical = {
          description = "Likelihood that this is a medical image.",
          enum = {
            "UNKNOWN",
            "VERY_UNLIKELY",
            "UNLIKELY",
            "POSSIBLE",
            "LIKELY",
            "VERY_LIKELY",
          },
          enumDescriptions = {
            "Unknown likelihood.",
            "It is very unlikely.",
            "It is unlikely.",
            "It is possible.",
            "It is likely.",
            "It is very likely.",
          },
          type = "string",
        },
        racy = {
          description = "Likelihood that the request image contains racy content. Racy content may include (but is not limited to) skimpy or sheer clothing, strategically covered nudity, lewd or provocative poses, or close-ups of sensitive body areas.",
          enum = {
            "UNKNOWN",
            "VERY_UNLIKELY",
            "UNLIKELY",
            "POSSIBLE",
            "LIKELY",
            "VERY_LIKELY",
          },
          enumDescriptions = {
            "Unknown likelihood.",
            "It is very unlikely.",
            "It is unlikely.",
            "It is possible.",
            "It is likely.",
            "It is very likely.",
          },
          type = "string",
        },
        spoof = {
          description = "Spoof likelihood. The likelihood that an modification was made to the image's canonical version to make it appear funny or offensive.",
          enum = {
            "UNKNOWN",
            "VERY_UNLIKELY",
            "UNLIKELY",
            "POSSIBLE",
            "LIKELY",
            "VERY_LIKELY",
          },
          enumDescriptions = {
            "Unknown likelihood.",
            "It is very unlikely.",
            "It is unlikely.",
            "It is possible.",
            "It is likely.",
            "It is very likely.",
          },
          type = "string",
        },
        violence = {
          description = "Likelihood that this image contains violent content.",
          enum = {
            "UNKNOWN",
            "VERY_UNLIKELY",
            "UNLIKELY",
            "POSSIBLE",
            "LIKELY",
            "VERY_LIKELY",
          },
          enumDescriptions = {
            "Unknown likelihood.",
            "It is very unlikely.",
            "It is unlikely.",
            "It is possible.",
            "It is likely.",
            "It is very likely.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p4beta1Symbol = {
      description = "A single symbol representation.",
      id = "GoogleCloudVisionV1p4beta1Symbol",
      properties = {
        boundingBox = {
          ["$ref"] = "GoogleCloudVisionV1p4beta1BoundingPoly",
          description = "The bounding box for the symbol. The vertices are in the order of top-left, top-right, bottom-right, bottom-left. When a rotation of the bounding box is detected the rotation is represented as around the top-left corner as defined when the text is read in the 'natural' orientation. For example: * when the text is horizontal it might look like: 0----1 | | 3----2 * when it's rotated 180 degrees around the top-left corner it becomes: 2----3 | | 1----0 and the vertex order will still be (0, 1, 2, 3).",
        },
        confidence = {
          description = "Confidence of the OCR results for the symbol. Range [0, 1].",
          format = "float",
          type = "number",
        },
        property = {
          ["$ref"] = "GoogleCloudVisionV1p4beta1TextAnnotationTextProperty",
          description = "Additional information detected for the symbol.",
        },
        text = {
          description = "The actual UTF-8 representation of the symbol.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p4beta1TextAnnotation = {
      description = "TextAnnotation contains a structured representation of OCR extracted text. The hierarchy of an OCR extracted text structure is like this: TextAnnotation -> Page -> Block -> Paragraph -> Word -> Symbol Each structural component, starting from Page, may further have their own properties. Properties describe detected languages, breaks etc.. Please refer to the TextAnnotation.TextProperty message definition below for more detail.",
      id = "GoogleCloudVisionV1p4beta1TextAnnotation",
      properties = {
        pages = {
          description = "List of pages detected by OCR.",
          items = {
            ["$ref"] = "GoogleCloudVisionV1p4beta1Page",
          },
          type = "array",
        },
        text = {
          description = "UTF-8 text detected on the pages.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p4beta1TextAnnotationDetectedBreak = {
      description = "Detected start or end of a structural component.",
      id = "GoogleCloudVisionV1p4beta1TextAnnotationDetectedBreak",
      properties = {
        isPrefix = {
          description = "True if break prepends the element.",
          type = "boolean",
        },
        type = {
          description = "Detected break type.",
          enum = {
            "UNKNOWN",
            "SPACE",
            "SURE_SPACE",
            "EOL_SURE_SPACE",
            "HYPHEN",
            "LINE_BREAK",
          },
          enumDescriptions = {
            "Unknown break label type.",
            "Regular space.",
            "Sure space (very wide).",
            "Line-wrapping break.",
            "End-line hyphen that is not present in text; does not co-occur with `SPACE`, `LEADER_SPACE`, or `LINE_BREAK`.",
            "Line break that ends a paragraph.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p4beta1TextAnnotationDetectedLanguage = {
      description = "Detected language for a structural component.",
      id = "GoogleCloudVisionV1p4beta1TextAnnotationDetectedLanguage",
      properties = {
        confidence = {
          description = "Confidence of detected language. Range [0, 1].",
          format = "float",
          type = "number",
        },
        languageCode = {
          description = "The BCP-47 language code, such as \"en-US\" or \"sr-Latn\". For more information, see http://www.unicode.org/reports/tr35/#Unicode_locale_identifier.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p4beta1TextAnnotationTextProperty = {
      description = "Additional information detected on the structural component.",
      id = "GoogleCloudVisionV1p4beta1TextAnnotationTextProperty",
      properties = {
        detectedBreak = {
          ["$ref"] = "GoogleCloudVisionV1p4beta1TextAnnotationDetectedBreak",
          description = "Detected start or end of a text segment.",
        },
        detectedLanguages = {
          description = "A list of detected languages together with confidence.",
          items = {
            ["$ref"] = "GoogleCloudVisionV1p4beta1TextAnnotationDetectedLanguage",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p4beta1Vertex = {
      description = "A vertex represents a 2D point in the image. NOTE: the vertex coordinates are in the same scale as the original image.",
      id = "GoogleCloudVisionV1p4beta1Vertex",
      properties = {
        x = {
          description = "X coordinate.",
          format = "int32",
          type = "integer",
        },
        y = {
          description = "Y coordinate.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p4beta1WebDetection = {
      description = "Relevant information for the image from the Internet.",
      id = "GoogleCloudVisionV1p4beta1WebDetection",
      properties = {
        bestGuessLabels = {
          description = "The service's best guess as to the topic of the request image. Inferred from similar images on the open web.",
          items = {
            ["$ref"] = "GoogleCloudVisionV1p4beta1WebDetectionWebLabel",
          },
          type = "array",
        },
        fullMatchingImages = {
          description = "Fully matching images from the Internet. Can include resized copies of the query image.",
          items = {
            ["$ref"] = "GoogleCloudVisionV1p4beta1WebDetectionWebImage",
          },
          type = "array",
        },
        pagesWithMatchingImages = {
          description = "Web pages containing the matching images from the Internet.",
          items = {
            ["$ref"] = "GoogleCloudVisionV1p4beta1WebDetectionWebPage",
          },
          type = "array",
        },
        partialMatchingImages = {
          description = "Partial matching images from the Internet. Those images are similar enough to share some key-point features. For example an original image will likely have partial matching for its crops.",
          items = {
            ["$ref"] = "GoogleCloudVisionV1p4beta1WebDetectionWebImage",
          },
          type = "array",
        },
        visuallySimilarImages = {
          description = "The visually similar image results.",
          items = {
            ["$ref"] = "GoogleCloudVisionV1p4beta1WebDetectionWebImage",
          },
          type = "array",
        },
        webEntities = {
          description = "Deduced entities from similar images on the Internet.",
          items = {
            ["$ref"] = "GoogleCloudVisionV1p4beta1WebDetectionWebEntity",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p4beta1WebDetectionWebEntity = {
      description = "Entity deduced from similar images on the Internet.",
      id = "GoogleCloudVisionV1p4beta1WebDetectionWebEntity",
      properties = {
        description = {
          description = "Canonical description of the entity, in English.",
          type = "string",
        },
        entityId = {
          description = "Opaque entity ID.",
          type = "string",
        },
        score = {
          description = "Overall relevancy score for the entity. Not normalized and not comparable across different image queries.",
          format = "float",
          type = "number",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p4beta1WebDetectionWebImage = {
      description = "Metadata for online images.",
      id = "GoogleCloudVisionV1p4beta1WebDetectionWebImage",
      properties = {
        score = {
          description = "(Deprecated) Overall relevancy score for the image.",
          format = "float",
          type = "number",
        },
        url = {
          description = "The result image URL.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p4beta1WebDetectionWebLabel = {
      description = "Label to provide extra metadata for the web detection.",
      id = "GoogleCloudVisionV1p4beta1WebDetectionWebLabel",
      properties = {
        label = {
          description = "Label for extra metadata.",
          type = "string",
        },
        languageCode = {
          description = "The BCP-47 language code for `label`, such as \"en-US\" or \"sr-Latn\". For more information, see http://www.unicode.org/reports/tr35/#Unicode_locale_identifier.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p4beta1WebDetectionWebPage = {
      description = "Metadata for web pages.",
      id = "GoogleCloudVisionV1p4beta1WebDetectionWebPage",
      properties = {
        fullMatchingImages = {
          description = "Fully matching images on the page. Can include resized copies of the query image.",
          items = {
            ["$ref"] = "GoogleCloudVisionV1p4beta1WebDetectionWebImage",
          },
          type = "array",
        },
        pageTitle = {
          description = "Title for the web page, may contain HTML markups.",
          type = "string",
        },
        partialMatchingImages = {
          description = "Partial matching images on the page. Those images are similar enough to share some key-point features. For example an original image will likely have partial matching for its crops.",
          items = {
            ["$ref"] = "GoogleCloudVisionV1p4beta1WebDetectionWebImage",
          },
          type = "array",
        },
        score = {
          description = "(Deprecated) Overall relevancy score for the web page.",
          format = "float",
          type = "number",
        },
        url = {
          description = "The result web page URL.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVisionV1p4beta1Word = {
      description = "A word representation.",
      id = "GoogleCloudVisionV1p4beta1Word",
      properties = {
        boundingBox = {
          ["$ref"] = "GoogleCloudVisionV1p4beta1BoundingPoly",
          description = "The bounding box for the word. The vertices are in the order of top-left, top-right, bottom-right, bottom-left. When a rotation of the bounding box is detected the rotation is represented as around the top-left corner as defined when the text is read in the 'natural' orientation. For example: * when the text is horizontal it might look like: 0----1 | | 3----2 * when it's rotated 180 degrees around the top-left corner it becomes: 2----3 | | 1----0 and the vertex order will still be (0, 1, 2, 3).",
        },
        confidence = {
          description = "Confidence of the OCR results for the word. Range [0, 1].",
          format = "float",
          type = "number",
        },
        property = {
          ["$ref"] = "GoogleCloudVisionV1p4beta1TextAnnotationTextProperty",
          description = "Additional information detected for the word.",
        },
        symbols = {
          description = "List of symbols in the word. The order of the symbols follows the natural reading order.",
          items = {
            ["$ref"] = "GoogleCloudVisionV1p4beta1Symbol",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GroupedResult = {
      description = "Information about the products similar to a single product in a query image.",
      id = "GroupedResult",
      properties = {
        boundingPoly = {
          ["$ref"] = "BoundingPoly",
          description = "The bounding polygon around the product detected in the query image.",
        },
        objectAnnotations = {
          description = "List of generic predictions for the object in the bounding box.",
          items = {
            ["$ref"] = "ObjectAnnotation",
          },
          type = "array",
        },
        results = {
          description = "List of results, one for each product match.",
          items = {
            ["$ref"] = "Result",
          },
          type = "array",
        },
      },
      type = "object",
    },
    Image = {
      description = "Client image to perform Google Cloud Vision API tasks over.",
      id = "Image",
      properties = {
        content = {
          description = "Image content, represented as a stream of bytes. Note: As with all `bytes` fields, protobuffers use a pure binary representation, whereas JSON representations use base64. Currently, this field only works for BatchAnnotateImages requests. It does not work for AsyncBatchAnnotateImages requests.",
          format = "byte",
          type = "string",
        },
        source = {
          ["$ref"] = "ImageSource",
          description = "Google Cloud Storage image location, or publicly-accessible image URL. If both `content` and `source` are provided for an image, `content` takes precedence and is used to perform the image annotation request.",
        },
      },
      type = "object",
    },
    ImageAnnotationContext = {
      description = "If an image was produced from a file (e.g. a PDF), this message gives information about the source of that image.",
      id = "ImageAnnotationContext",
      properties = {
        pageNumber = {
          description = "If the file was a PDF or TIFF, this field gives the page number within the file used to produce the image.",
          format = "int32",
          type = "integer",
        },
        uri = {
          description = "The URI of the file used to produce the image.",
          type = "string",
        },
      },
      type = "object",
    },
    ImageContext = {
      description = "Image context and/or feature-specific parameters.",
      id = "ImageContext",
      properties = {
        cropHintsParams = {
          ["$ref"] = "CropHintsParams",
          description = "Parameters for crop hints annotation request.",
        },
        languageHints = {
          description = "List of languages to use for TEXT_DETECTION. In most cases, an empty value yields the best results since it enables automatic language detection. For languages based on the Latin alphabet, setting `language_hints` is not needed. In rare cases, when the language of the text in the image is known, setting a hint will help get better results (although it will be a significant hindrance if the hint is wrong). Text detection returns an error if one or more of the specified languages is not one of the [supported languages](https://cloud.google.com/vision/docs/languages).",
          items = {
            type = "string",
          },
          type = "array",
        },
        latLongRect = {
          ["$ref"] = "LatLongRect",
          description = "Not used.",
        },
        productSearchParams = {
          ["$ref"] = "ProductSearchParams",
          description = "Parameters for product search.",
        },
        textDetectionParams = {
          ["$ref"] = "TextDetectionParams",
          description = "Parameters for text detection and document text detection.",
        },
        webDetectionParams = {
          ["$ref"] = "WebDetectionParams",
          description = "Parameters for web detection.",
        },
      },
      type = "object",
    },
    ImageProperties = {
      description = "Stores image properties, such as dominant colors.",
      id = "ImageProperties",
      properties = {
        dominantColors = {
          ["$ref"] = "DominantColorsAnnotation",
          description = "If present, dominant colors completed successfully.",
        },
      },
      type = "object",
    },
    ImageSource = {
      description = "External image source (Google Cloud Storage or web URL image location).",
      id = "ImageSource",
      properties = {
        gcsImageUri = {
          description = "**Use `image_uri` instead.** The Google Cloud Storage URI of the form `gs://bucket_name/object_name`. Object versioning is not supported. See [Google Cloud Storage Request URIs](https://cloud.google.com/storage/docs/reference-uris) for more info.",
          type = "string",
        },
        imageUri = {
          description = "The URI of the source image. Can be either: 1. A Google Cloud Storage URI of the form `gs://bucket_name/object_name`. Object versioning is not supported. See [Google Cloud Storage Request URIs](https://cloud.google.com/storage/docs/reference-uris) for more info. 2. A publicly-accessible image HTTP/HTTPS URL. When fetching images from HTTP/HTTPS URLs, Google cannot guarantee that the request will be completed. Your request may fail if the specified host denies the request (e.g. due to request throttling or DOS prevention), or if Google throttles requests to the site for abuse prevention. You should not depend on externally-hosted images for production applications. When both `gcs_image_uri` and `image_uri` are specified, `image_uri` takes precedence.",
          type = "string",
        },
      },
      type = "object",
    },
    ImportProductSetsGcsSource = {
      description = "The Google Cloud Storage location for a csv file which preserves a list of ImportProductSetRequests in each line.",
      id = "ImportProductSetsGcsSource",
      properties = {
        csvFileUri = {
          description = "The Google Cloud Storage URI of the input csv file. The URI must start with `gs://`. The format of the input csv file should be one image per line. In each line, there are 8 columns. 1. image-uri 2. image-id 3. product-set-id 4. product-id 5. product-category 6. product-display-name 7. labels 8. bounding-poly The `image-uri`, `product-set-id`, `product-id`, and `product-category` columns are required. All other columns are optional. If the `ProductSet` or `Product` specified by the `product-set-id` and `product-id` values does not exist, then the system will create a new `ProductSet` or `Product` for the image. In this case, the `product-display-name` column refers to display_name, the `product-category` column refers to product_category, and the `labels` column refers to product_labels. The `image-id` column is optional but must be unique if provided. If it is empty, the system will automatically assign a unique id to the image. The `product-display-name` column is optional. If it is empty, the system sets the display_name field for the product to a space (\" \"). You can update the `display_name` later by using the API. If a `Product` with the specified `product-id` already exists, then the system ignores the `product-display-name`, `product-category`, and `labels` columns. The `labels` column (optional) is a line containing a list of comma-separated key-value pairs, in the following format: \"key_1=value_1,key_2=value_2,...,key_n=value_n\" The `bounding-poly` column (optional) identifies one region of interest from the image in the same manner as `CreateReferenceImage`. If you do not specify the `bounding-poly` column, then the system will try to detect regions of interest automatically. At most one `bounding-poly` column is allowed per line. If the image contains multiple regions of interest, add a line to the CSV file that includes the same product information, and the `bounding-poly` values for each region of interest. The `bounding-poly` column must contain an even number of comma-separated numbers, in the format \"p1_x,p1_y,p2_x,p2_y,...,pn_x,pn_y\". Use non-negative integers for absolute bounding polygons, and float values in [0, 1] for normalized bounding polygons. The system will resize the image if the image resolution is too large to process (larger than 20MP).",
          type = "string",
        },
      },
      type = "object",
    },
    ImportProductSetsInputConfig = {
      description = "The input content for the `ImportProductSets` method.",
      id = "ImportProductSetsInputConfig",
      properties = {
        gcsSource = {
          ["$ref"] = "ImportProductSetsGcsSource",
          description = "The Google Cloud Storage location for a csv file which preserves a list of ImportProductSetRequests in each line.",
        },
      },
      type = "object",
    },
    ImportProductSetsRequest = {
      description = "Request message for the `ImportProductSets` method.",
      id = "ImportProductSetsRequest",
      properties = {
        inputConfig = {
          ["$ref"] = "ImportProductSetsInputConfig",
          description = "Required. The input content for the list of requests.",
        },
      },
      type = "object",
    },
    ImportProductSetsResponse = {
      description = "Response message for the `ImportProductSets` method. This message is returned by the google.longrunning.Operations.GetOperation method in the returned google.longrunning.Operation.response field.",
      id = "ImportProductSetsResponse",
      properties = {
        referenceImages = {
          description = "The list of reference_images that are imported successfully.",
          items = {
            ["$ref"] = "ReferenceImage",
          },
          type = "array",
        },
        statuses = {
          description = "The rpc status for each ImportProductSet request, including both successes and errors. The number of statuses here matches the number of lines in the csv file, and statuses[i] stores the success or failure status of processing the i-th line of the csv, starting from line 0.",
          items = {
            ["$ref"] = "Status",
          },
          type = "array",
        },
      },
      type = "object",
    },
    InputConfig = {
      description = "The desired input location and metadata.",
      id = "InputConfig",
      properties = {
        content = {
          description = "File content, represented as a stream of bytes. Note: As with all `bytes` fields, protobuffers use a pure binary representation, whereas JSON representations use base64. Currently, this field only works for BatchAnnotateFiles requests. It does not work for AsyncBatchAnnotateFiles requests.",
          format = "byte",
          type = "string",
        },
        gcsSource = {
          ["$ref"] = "GcsSource",
          description = "The Google Cloud Storage location to read the input from.",
        },
        mimeType = {
          description = "The type of the file. Currently only \"application/pdf\", \"image/tiff\" and \"image/gif\" are supported. Wildcards are not supported.",
          type = "string",
        },
      },
      type = "object",
    },
    KeyValue = {
      description = "A product label represented as a key-value pair.",
      id = "KeyValue",
      properties = {
        key = {
          description = "The key of the label attached to the product. Cannot be empty and cannot exceed 128 bytes.",
          type = "string",
        },
        value = {
          description = "The value of the label attached to the product. Cannot be empty and cannot exceed 128 bytes.",
          type = "string",
        },
      },
      type = "object",
    },
    Landmark = {
      description = "A face-specific landmark (for example, a face feature).",
      id = "Landmark",
      properties = {
        position = {
          ["$ref"] = "Position",
          description = "Face landmark position.",
        },
        type = {
          description = "Face landmark type.",
          enum = {
            "UNKNOWN_LANDMARK",
            "LEFT_EYE",
            "RIGHT_EYE",
            "LEFT_OF_LEFT_EYEBROW",
            "RIGHT_OF_LEFT_EYEBROW",
            "LEFT_OF_RIGHT_EYEBROW",
            "RIGHT_OF_RIGHT_EYEBROW",
            "MIDPOINT_BETWEEN_EYES",
            "NOSE_TIP",
            "UPPER_LIP",
            "LOWER_LIP",
            "MOUTH_LEFT",
            "MOUTH_RIGHT",
            "MOUTH_CENTER",
            "NOSE_BOTTOM_RIGHT",
            "NOSE_BOTTOM_LEFT",
            "NOSE_BOTTOM_CENTER",
            "LEFT_EYE_TOP_BOUNDARY",
            "LEFT_EYE_RIGHT_CORNER",
            "LEFT_EYE_BOTTOM_BOUNDARY",
            "LEFT_EYE_LEFT_CORNER",
            "RIGHT_EYE_TOP_BOUNDARY",
            "RIGHT_EYE_RIGHT_CORNER",
            "RIGHT_EYE_BOTTOM_BOUNDARY",
            "RIGHT_EYE_LEFT_CORNER",
            "LEFT_EYEBROW_UPPER_MIDPOINT",
            "RIGHT_EYEBROW_UPPER_MIDPOINT",
            "LEFT_EAR_TRAGION",
            "RIGHT_EAR_TRAGION",
            "LEFT_EYE_PUPIL",
            "RIGHT_EYE_PUPIL",
            "FOREHEAD_GLABELLA",
            "CHIN_GNATHION",
            "CHIN_LEFT_GONION",
            "CHIN_RIGHT_GONION",
            "LEFT_CHEEK_CENTER",
            "RIGHT_CHEEK_CENTER",
          },
          enumDescriptions = {
            "Unknown face landmark detected. Should not be filled.",
            "Left eye.",
            "Right eye.",
            "Left of left eyebrow.",
            "Right of left eyebrow.",
            "Left of right eyebrow.",
            "Right of right eyebrow.",
            "Midpoint between eyes.",
            "Nose tip.",
            "Upper lip.",
            "Lower lip.",
            "Mouth left.",
            "Mouth right.",
            "Mouth center.",
            "Nose, bottom right.",
            "Nose, bottom left.",
            "Nose, bottom center.",
            "Left eye, top boundary.",
            "Left eye, right corner.",
            "Left eye, bottom boundary.",
            "Left eye, left corner.",
            "Right eye, top boundary.",
            "Right eye, right corner.",
            "Right eye, bottom boundary.",
            "Right eye, left corner.",
            "Left eyebrow, upper midpoint.",
            "Right eyebrow, upper midpoint.",
            "Left ear tragion.",
            "Right ear tragion.",
            "Left eye pupil.",
            "Right eye pupil.",
            "Forehead glabella.",
            "Chin gnathion.",
            "Chin left gonion.",
            "Chin right gonion.",
            "Left cheek center.",
            "Right cheek center.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    LatLng = {
      description = "An object that represents a latitude/longitude pair. This is expressed as a pair of doubles to represent degrees latitude and degrees longitude. Unless specified otherwise, this object must conform to the WGS84 standard. Values must be within normalized ranges.",
      id = "LatLng",
      properties = {
        latitude = {
          description = "The latitude in degrees. It must be in the range [-90.0, +90.0].",
          format = "double",
          type = "number",
        },
        longitude = {
          description = "The longitude in degrees. It must be in the range [-180.0, +180.0].",
          format = "double",
          type = "number",
        },
      },
      type = "object",
    },
    LatLongRect = {
      description = "Rectangle determined by min and max `LatLng` pairs.",
      id = "LatLongRect",
      properties = {
        maxLatLng = {
          ["$ref"] = "LatLng",
          description = "Max lat/long pair.",
        },
        minLatLng = {
          ["$ref"] = "LatLng",
          description = "Min lat/long pair.",
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
    ListProductSetsResponse = {
      description = "Response message for the `ListProductSets` method.",
      id = "ListProductSetsResponse",
      properties = {
        nextPageToken = {
          description = "Token to retrieve the next page of results, or empty if there are no more results in the list.",
          type = "string",
        },
        productSets = {
          description = "List of ProductSets.",
          items = {
            ["$ref"] = "ProductSet",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ListProductsInProductSetResponse = {
      description = "Response message for the `ListProductsInProductSet` method.",
      id = "ListProductsInProductSetResponse",
      properties = {
        nextPageToken = {
          description = "Token to retrieve the next page of results, or empty if there are no more results in the list.",
          type = "string",
        },
        products = {
          description = "The list of Products.",
          items = {
            ["$ref"] = "Product",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ListProductsResponse = {
      description = "Response message for the `ListProducts` method.",
      id = "ListProductsResponse",
      properties = {
        nextPageToken = {
          description = "Token to retrieve the next page of results, or empty if there are no more results in the list.",
          type = "string",
        },
        products = {
          description = "List of products.",
          items = {
            ["$ref"] = "Product",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ListReferenceImagesResponse = {
      description = "Response message for the `ListReferenceImages` method.",
      id = "ListReferenceImagesResponse",
      properties = {
        nextPageToken = {
          description = "The next_page_token returned from a previous List request, if any.",
          type = "string",
        },
        pageSize = {
          description = "The maximum number of items to return. Default 10, maximum 100.",
          format = "int32",
          type = "integer",
        },
        referenceImages = {
          description = "The list of reference images.",
          items = {
            ["$ref"] = "ReferenceImage",
          },
          type = "array",
        },
      },
      type = "object",
    },
    LocalizedObjectAnnotation = {
      description = "Set of detected objects with bounding boxes.",
      id = "LocalizedObjectAnnotation",
      properties = {
        boundingPoly = {
          ["$ref"] = "BoundingPoly",
          description = "Image region to which this object belongs. This must be populated.",
        },
        languageCode = {
          description = "The BCP-47 language code, such as \"en-US\" or \"sr-Latn\". For more information, see http://www.unicode.org/reports/tr35/#Unicode_locale_identifier.",
          type = "string",
        },
        mid = {
          description = "Object ID that should align with EntityAnnotation mid.",
          type = "string",
        },
        name = {
          description = "Object name, expressed in its `language_code` language.",
          type = "string",
        },
        score = {
          description = "Score of the result. Range [0, 1].",
          format = "float",
          type = "number",
        },
      },
      type = "object",
    },
    LocationInfo = {
      description = "Detected entity location information.",
      id = "LocationInfo",
      properties = {
        latLng = {
          ["$ref"] = "LatLng",
          description = "lat/long location coordinates.",
        },
      },
      type = "object",
    },
    NormalizedVertex = {
      description = "A vertex represents a 2D point in the image. NOTE: the normalized vertex coordinates are relative to the original image and range from 0 to 1.",
      id = "NormalizedVertex",
      properties = {
        x = {
          description = "X coordinate.",
          format = "float",
          type = "number",
        },
        y = {
          description = "Y coordinate.",
          format = "float",
          type = "number",
        },
      },
      type = "object",
    },
    ObjectAnnotation = {
      description = "Prediction for what the object in the bounding box is.",
      id = "ObjectAnnotation",
      properties = {
        languageCode = {
          description = "The BCP-47 language code, such as \"en-US\" or \"sr-Latn\". For more information, see http://www.unicode.org/reports/tr35/#Unicode_locale_identifier.",
          type = "string",
        },
        mid = {
          description = "Object ID that should align with EntityAnnotation mid.",
          type = "string",
        },
        name = {
          description = "Object name, expressed in its `language_code` language.",
          type = "string",
        },
        score = {
          description = "Score of the result. Range [0, 1].",
          format = "float",
          type = "number",
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
    OperationMetadata = {
      description = "Contains metadata for the BatchAnnotateImages operation.",
      id = "OperationMetadata",
      properties = {
        createTime = {
          description = "The time when the batch request was received.",
          format = "google-datetime",
          type = "string",
        },
        state = {
          description = "Current state of the batch operation.",
          enum = {
            "STATE_UNSPECIFIED",
            "CREATED",
            "RUNNING",
            "DONE",
            "CANCELLED",
          },
          enumDescriptions = {
            "Invalid.",
            "Request is received.",
            "Request is actively being processed.",
            "The batch processing is done.",
            "The batch processing was cancelled.",
          },
          type = "string",
        },
        updateTime = {
          description = "The time when the operation result was last updated.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    OutputConfig = {
      description = "The desired output location and metadata.",
      id = "OutputConfig",
      properties = {
        batchSize = {
          description = "The max number of response protos to put into each output JSON file on Google Cloud Storage. The valid range is [1, 100]. If not specified, the default value is 20. For example, for one pdf file with 100 pages, 100 response protos will be generated. If `batch_size` = 20, then 5 json files each containing 20 response protos will be written under the prefix `gcs_destination`.`uri`. Currently, batch_size only applies to GcsDestination, with potential future support for other output configurations.",
          format = "int32",
          type = "integer",
        },
        gcsDestination = {
          ["$ref"] = "GcsDestination",
          description = "The Google Cloud Storage location to write the output(s) to.",
        },
      },
      type = "object",
    },
    Page = {
      description = "Detected page from OCR.",
      id = "Page",
      properties = {
        blocks = {
          description = "List of blocks of text, images etc on this page.",
          items = {
            ["$ref"] = "Block",
          },
          type = "array",
        },
        confidence = {
          description = "Confidence of the OCR results on the page. Range [0, 1].",
          format = "float",
          type = "number",
        },
        height = {
          description = "Page height. For PDFs the unit is points. For images (including TIFFs) the unit is pixels.",
          format = "int32",
          type = "integer",
        },
        property = {
          ["$ref"] = "TextProperty",
          description = "Additional information detected on the page.",
        },
        width = {
          description = "Page width. For PDFs the unit is points. For images (including TIFFs) the unit is pixels.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    Paragraph = {
      description = "Structural unit of text representing a number of words in certain order.",
      id = "Paragraph",
      properties = {
        boundingBox = {
          ["$ref"] = "BoundingPoly",
          description = "The bounding box for the paragraph. The vertices are in the order of top-left, top-right, bottom-right, bottom-left. When a rotation of the bounding box is detected the rotation is represented as around the top-left corner as defined when the text is read in the 'natural' orientation. For example: * when the text is horizontal it might look like: 0----1 | | 3----2 * when it's rotated 180 degrees around the top-left corner it becomes: 2----3 | | 1----0 and the vertex order will still be (0, 1, 2, 3).",
        },
        confidence = {
          description = "Confidence of the OCR results for the paragraph. Range [0, 1].",
          format = "float",
          type = "number",
        },
        property = {
          ["$ref"] = "TextProperty",
          description = "Additional information detected for the paragraph.",
        },
        words = {
          description = "List of all words in this paragraph.",
          items = {
            ["$ref"] = "Word",
          },
          type = "array",
        },
      },
      type = "object",
    },
    Position = {
      description = "A 3D position in the image, used primarily for Face detection landmarks. A valid Position must have both x and y coordinates. The position coordinates are in the same scale as the original image.",
      id = "Position",
      properties = {
        x = {
          description = "X coordinate.",
          format = "float",
          type = "number",
        },
        y = {
          description = "Y coordinate.",
          format = "float",
          type = "number",
        },
        z = {
          description = "Z coordinate (or depth).",
          format = "float",
          type = "number",
        },
      },
      type = "object",
    },
    Product = {
      description = "A Product contains ReferenceImages.",
      id = "Product",
      properties = {
        description = {
          description = "User-provided metadata to be stored with this product. Must be at most 4096 characters long.",
          type = "string",
        },
        displayName = {
          description = "The user-provided name for this Product. Must not be empty. Must be at most 4096 characters long.",
          type = "string",
        },
        name = {
          description = "The resource name of the product. Format is: `projects/PROJECT_ID/locations/LOC_ID/products/PRODUCT_ID`. This field is ignored when creating a product.",
          type = "string",
        },
        productCategory = {
          description = "Immutable. The category for the product identified by the reference image. This should be one of \"homegoods-v2\", \"apparel-v2\", \"toys-v2\", \"packagedgoods-v1\" or \"general-v1\". The legacy categories \"homegoods\", \"apparel\", and \"toys\" are still supported, but these should not be used for new products.",
          type = "string",
        },
        productLabels = {
          description = "Key-value pairs that can be attached to a product. At query time, constraints can be specified based on the product_labels. Note that integer values can be provided as strings, e.g. \"1199\". Only strings with integer values can match a range-based restriction which is to be supported soon. Multiple values can be assigned to the same key. One product may have up to 500 product_labels. Notice that the total number of distinct product_labels over all products in one ProductSet cannot exceed 1M, otherwise the product search pipeline will refuse to work for that ProductSet.",
          items = {
            ["$ref"] = "KeyValue",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ProductSearchParams = {
      description = "Parameters for a product search request.",
      id = "ProductSearchParams",
      properties = {
        boundingPoly = {
          ["$ref"] = "BoundingPoly",
          description = "The bounding polygon around the area of interest in the image. If it is not specified, system discretion will be applied.",
        },
        filter = {
          description = "The filtering expression. This can be used to restrict search results based on Product labels. We currently support an AND of OR of key-value expressions, where each expression within an OR must have the same key. An '=' should be used to connect the key and value. For example, \"(color = red OR color = blue) AND brand = Google\" is acceptable, but \"(color = red OR brand = Google)\" is not acceptable. \"color: red\" is not acceptable because it uses a ':' instead of an '='.",
          type = "string",
        },
        productCategories = {
          description = "The list of product categories to search in. Currently, we only consider the first category, and either \"homegoods-v2\", \"apparel-v2\", \"toys-v2\", \"packagedgoods-v1\", or \"general-v1\" should be specified. The legacy categories \"homegoods\", \"apparel\", and \"toys\" are still supported but will be deprecated. For new products, please use \"homegoods-v2\", \"apparel-v2\", or \"toys-v2\" for better product search accuracy. It is recommended to migrate existing products to these categories as well.",
          items = {
            type = "string",
          },
          type = "array",
        },
        productSet = {
          description = "The resource name of a ProductSet to be searched for similar images. Format is: `projects/PROJECT_ID/locations/LOC_ID/productSets/PRODUCT_SET_ID`.",
          type = "string",
        },
      },
      type = "object",
    },
    ProductSearchResults = {
      description = "Results for a product search request.",
      id = "ProductSearchResults",
      properties = {
        indexTime = {
          description = "Timestamp of the index which provided these results. Products added to the product set and products removed from the product set after this time are not reflected in the current results.",
          format = "google-datetime",
          type = "string",
        },
        productGroupedResults = {
          description = "List of results grouped by products detected in the query image. Each entry corresponds to one bounding polygon in the query image, and contains the matching products specific to that region. There may be duplicate product matches in the union of all the per-product results.",
          items = {
            ["$ref"] = "GroupedResult",
          },
          type = "array",
        },
        results = {
          description = "List of results, one for each product match.",
          items = {
            ["$ref"] = "Result",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ProductSet = {
      description = "A ProductSet contains Products. A ProductSet can contain a maximum of 1 million reference images. If the limit is exceeded, periodic indexing will fail.",
      id = "ProductSet",
      properties = {
        displayName = {
          description = "The user-provided name for this ProductSet. Must not be empty. Must be at most 4096 characters long.",
          type = "string",
        },
        indexError = {
          ["$ref"] = "Status",
          description = "Output only. If there was an error with indexing the product set, the field is populated. This field is ignored when creating a ProductSet.",
          readOnly = true,
        },
        indexTime = {
          description = "Output only. The time at which this ProductSet was last indexed. Query results will reflect all updates before this time. If this ProductSet has never been indexed, this timestamp is the default value \"1970-01-01T00:00:00Z\". This field is ignored when creating a ProductSet.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        name = {
          description = "The resource name of the ProductSet. Format is: `projects/PROJECT_ID/locations/LOC_ID/productSets/PRODUCT_SET_ID`. This field is ignored when creating a ProductSet.",
          type = "string",
        },
      },
      type = "object",
    },
    ProductSetPurgeConfig = {
      description = "Config to control which ProductSet contains the Products to be deleted.",
      id = "ProductSetPurgeConfig",
      properties = {
        productSetId = {
          description = "The ProductSet that contains the Products to delete. If a Product is a member of product_set_id in addition to other ProductSets, the Product will still be deleted.",
          type = "string",
        },
      },
      type = "object",
    },
    Property = {
      description = "A `Property` consists of a user-supplied name/value pair.",
      id = "Property",
      properties = {
        name = {
          description = "Name of the property.",
          type = "string",
        },
        uint64Value = {
          description = "Value of numeric properties.",
          format = "uint64",
          type = "string",
        },
        value = {
          description = "Value of the property.",
          type = "string",
        },
      },
      type = "object",
    },
    PurgeProductsRequest = {
      description = "Request message for the `PurgeProducts` method.",
      id = "PurgeProductsRequest",
      properties = {
        deleteOrphanProducts = {
          description = "If delete_orphan_products is true, all Products that are not in any ProductSet will be deleted.",
          type = "boolean",
        },
        force = {
          description = "The default value is false. Override this value to true to actually perform the purge.",
          type = "boolean",
        },
        productSetPurgeConfig = {
          ["$ref"] = "ProductSetPurgeConfig",
          description = "Specify which ProductSet contains the Products to be deleted.",
        },
      },
      type = "object",
    },
    ReferenceImage = {
      description = "A `ReferenceImage` represents a product image and its associated metadata, such as bounding boxes.",
      id = "ReferenceImage",
      properties = {
        boundingPolys = {
          description = "Optional. Bounding polygons around the areas of interest in the reference image. If this field is empty, the system will try to detect regions of interest. At most 10 bounding polygons will be used. The provided shape is converted into a non-rotated rectangle. Once converted, the small edge of the rectangle must be greater than or equal to 300 pixels. The aspect ratio must be 1:4 or less (i.e. 1:3 is ok; 1:5 is not).",
          items = {
            ["$ref"] = "BoundingPoly",
          },
          type = "array",
        },
        name = {
          description = "The resource name of the reference image. Format is: `projects/PROJECT_ID/locations/LOC_ID/products/PRODUCT_ID/referenceImages/IMAGE_ID`. This field is ignored when creating a reference image.",
          type = "string",
        },
        uri = {
          description = "Required. The Google Cloud Storage URI of the reference image. The URI must start with `gs://`.",
          type = "string",
        },
      },
      type = "object",
    },
    RemoveProductFromProductSetRequest = {
      description = "Request message for the `RemoveProductFromProductSet` method.",
      id = "RemoveProductFromProductSetRequest",
      properties = {
        product = {
          description = "Required. The resource name for the Product to be removed from this ProductSet. Format is: `projects/PROJECT_ID/locations/LOC_ID/products/PRODUCT_ID`",
          type = "string",
        },
      },
      type = "object",
    },
    Result = {
      description = "Information about a product.",
      id = "Result",
      properties = {
        image = {
          description = "The resource name of the image from the product that is the closest match to the query.",
          type = "string",
        },
        product = {
          ["$ref"] = "Product",
          description = "The Product.",
        },
        score = {
          description = "A confidence level on the match, ranging from 0 (no confidence) to 1 (full confidence).",
          format = "float",
          type = "number",
        },
      },
      type = "object",
    },
    SafeSearchAnnotation = {
      description = "Set of features pertaining to the image, computed by computer vision methods over safe-search verticals (for example, adult, spoof, medical, violence).",
      id = "SafeSearchAnnotation",
      properties = {
        adult = {
          description = "Represents the adult content likelihood for the image. Adult content may contain elements such as nudity, pornographic images or cartoons, or sexual activities.",
          enum = {
            "UNKNOWN",
            "VERY_UNLIKELY",
            "UNLIKELY",
            "POSSIBLE",
            "LIKELY",
            "VERY_LIKELY",
          },
          enumDescriptions = {
            "Unknown likelihood.",
            "It is very unlikely.",
            "It is unlikely.",
            "It is possible.",
            "It is likely.",
            "It is very likely.",
          },
          type = "string",
        },
        medical = {
          description = "Likelihood that this is a medical image.",
          enum = {
            "UNKNOWN",
            "VERY_UNLIKELY",
            "UNLIKELY",
            "POSSIBLE",
            "LIKELY",
            "VERY_LIKELY",
          },
          enumDescriptions = {
            "Unknown likelihood.",
            "It is very unlikely.",
            "It is unlikely.",
            "It is possible.",
            "It is likely.",
            "It is very likely.",
          },
          type = "string",
        },
        racy = {
          description = "Likelihood that the request image contains racy content. Racy content may include (but is not limited to) skimpy or sheer clothing, strategically covered nudity, lewd or provocative poses, or close-ups of sensitive body areas.",
          enum = {
            "UNKNOWN",
            "VERY_UNLIKELY",
            "UNLIKELY",
            "POSSIBLE",
            "LIKELY",
            "VERY_LIKELY",
          },
          enumDescriptions = {
            "Unknown likelihood.",
            "It is very unlikely.",
            "It is unlikely.",
            "It is possible.",
            "It is likely.",
            "It is very likely.",
          },
          type = "string",
        },
        spoof = {
          description = "Spoof likelihood. The likelihood that an modification was made to the image's canonical version to make it appear funny or offensive.",
          enum = {
            "UNKNOWN",
            "VERY_UNLIKELY",
            "UNLIKELY",
            "POSSIBLE",
            "LIKELY",
            "VERY_LIKELY",
          },
          enumDescriptions = {
            "Unknown likelihood.",
            "It is very unlikely.",
            "It is unlikely.",
            "It is possible.",
            "It is likely.",
            "It is very likely.",
          },
          type = "string",
        },
        violence = {
          description = "Likelihood that this image contains violent content.",
          enum = {
            "UNKNOWN",
            "VERY_UNLIKELY",
            "UNLIKELY",
            "POSSIBLE",
            "LIKELY",
            "VERY_LIKELY",
          },
          enumDescriptions = {
            "Unknown likelihood.",
            "It is very unlikely.",
            "It is unlikely.",
            "It is possible.",
            "It is likely.",
            "It is very likely.",
          },
          type = "string",
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
    Symbol = {
      description = "A single symbol representation.",
      id = "Symbol",
      properties = {
        boundingBox = {
          ["$ref"] = "BoundingPoly",
          description = "The bounding box for the symbol. The vertices are in the order of top-left, top-right, bottom-right, bottom-left. When a rotation of the bounding box is detected the rotation is represented as around the top-left corner as defined when the text is read in the 'natural' orientation. For example: * when the text is horizontal it might look like: 0----1 | | 3----2 * when it's rotated 180 degrees around the top-left corner it becomes: 2----3 | | 1----0 and the vertex order will still be (0, 1, 2, 3).",
        },
        confidence = {
          description = "Confidence of the OCR results for the symbol. Range [0, 1].",
          format = "float",
          type = "number",
        },
        property = {
          ["$ref"] = "TextProperty",
          description = "Additional information detected for the symbol.",
        },
        text = {
          description = "The actual UTF-8 representation of the symbol.",
          type = "string",
        },
      },
      type = "object",
    },
    TextAnnotation = {
      description = "TextAnnotation contains a structured representation of OCR extracted text. The hierarchy of an OCR extracted text structure is like this: TextAnnotation -> Page -> Block -> Paragraph -> Word -> Symbol Each structural component, starting from Page, may further have their own properties. Properties describe detected languages, breaks etc.. Please refer to the TextAnnotation.TextProperty message definition below for more detail.",
      id = "TextAnnotation",
      properties = {
        pages = {
          description = "List of pages detected by OCR.",
          items = {
            ["$ref"] = "Page",
          },
          type = "array",
        },
        text = {
          description = "UTF-8 text detected on the pages.",
          type = "string",
        },
      },
      type = "object",
    },
    TextDetectionParams = {
      description = "Parameters for text detections. This is used to control TEXT_DETECTION and DOCUMENT_TEXT_DETECTION features.",
      id = "TextDetectionParams",
      properties = {
        advancedOcrOptions = {
          description = "A list of advanced OCR options to fine-tune OCR behavior.",
          items = {
            type = "string",
          },
          type = "array",
        },
        enableTextDetectionConfidenceScore = {
          description = "By default, Cloud Vision API only includes confidence score for DOCUMENT_TEXT_DETECTION result. Set the flag to true to include confidence score for TEXT_DETECTION as well.",
          type = "boolean",
        },
      },
      type = "object",
    },
    TextProperty = {
      description = "Additional information detected on the structural component.",
      id = "TextProperty",
      properties = {
        detectedBreak = {
          ["$ref"] = "DetectedBreak",
          description = "Detected start or end of a text segment.",
        },
        detectedLanguages = {
          description = "A list of detected languages together with confidence.",
          items = {
            ["$ref"] = "DetectedLanguage",
          },
          type = "array",
        },
      },
      type = "object",
    },
    Vertex = {
      description = "A vertex represents a 2D point in the image. NOTE: the vertex coordinates are in the same scale as the original image.",
      id = "Vertex",
      properties = {
        x = {
          description = "X coordinate.",
          format = "int32",
          type = "integer",
        },
        y = {
          description = "Y coordinate.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    WebDetection = {
      description = "Relevant information for the image from the Internet.",
      id = "WebDetection",
      properties = {
        bestGuessLabels = {
          description = "The service's best guess as to the topic of the request image. Inferred from similar images on the open web.",
          items = {
            ["$ref"] = "WebLabel",
          },
          type = "array",
        },
        fullMatchingImages = {
          description = "Fully matching images from the Internet. Can include resized copies of the query image.",
          items = {
            ["$ref"] = "WebImage",
          },
          type = "array",
        },
        pagesWithMatchingImages = {
          description = "Web pages containing the matching images from the Internet.",
          items = {
            ["$ref"] = "WebPage",
          },
          type = "array",
        },
        partialMatchingImages = {
          description = "Partial matching images from the Internet. Those images are similar enough to share some key-point features. For example an original image will likely have partial matching for its crops.",
          items = {
            ["$ref"] = "WebImage",
          },
          type = "array",
        },
        visuallySimilarImages = {
          description = "The visually similar image results.",
          items = {
            ["$ref"] = "WebImage",
          },
          type = "array",
        },
        webEntities = {
          description = "Deduced entities from similar images on the Internet.",
          items = {
            ["$ref"] = "WebEntity",
          },
          type = "array",
        },
      },
      type = "object",
    },
    WebDetectionParams = {
      description = "Parameters for web detection request.",
      id = "WebDetectionParams",
      properties = {
        includeGeoResults = {
          description = "Whether to include results derived from the geo information in the image.",
          type = "boolean",
        },
      },
      type = "object",
    },
    WebEntity = {
      description = "Entity deduced from similar images on the Internet.",
      id = "WebEntity",
      properties = {
        description = {
          description = "Canonical description of the entity, in English.",
          type = "string",
        },
        entityId = {
          description = "Opaque entity ID.",
          type = "string",
        },
        score = {
          description = "Overall relevancy score for the entity. Not normalized and not comparable across different image queries.",
          format = "float",
          type = "number",
        },
      },
      type = "object",
    },
    WebImage = {
      description = "Metadata for online images.",
      id = "WebImage",
      properties = {
        score = {
          description = "(Deprecated) Overall relevancy score for the image.",
          format = "float",
          type = "number",
        },
        url = {
          description = "The result image URL.",
          type = "string",
        },
      },
      type = "object",
    },
    WebLabel = {
      description = "Label to provide extra metadata for the web detection.",
      id = "WebLabel",
      properties = {
        label = {
          description = "Label for extra metadata.",
          type = "string",
        },
        languageCode = {
          description = "The BCP-47 language code for `label`, such as \"en-US\" or \"sr-Latn\". For more information, see http://www.unicode.org/reports/tr35/#Unicode_locale_identifier.",
          type = "string",
        },
      },
      type = "object",
    },
    WebPage = {
      description = "Metadata for web pages.",
      id = "WebPage",
      properties = {
        fullMatchingImages = {
          description = "Fully matching images on the page. Can include resized copies of the query image.",
          items = {
            ["$ref"] = "WebImage",
          },
          type = "array",
        },
        pageTitle = {
          description = "Title for the web page, may contain HTML markups.",
          type = "string",
        },
        partialMatchingImages = {
          description = "Partial matching images on the page. Those images are similar enough to share some key-point features. For example an original image will likely have partial matching for its crops.",
          items = {
            ["$ref"] = "WebImage",
          },
          type = "array",
        },
        score = {
          description = "(Deprecated) Overall relevancy score for the web page.",
          format = "float",
          type = "number",
        },
        url = {
          description = "The result web page URL.",
          type = "string",
        },
      },
      type = "object",
    },
    Word = {
      description = "A word representation.",
      id = "Word",
      properties = {
        boundingBox = {
          ["$ref"] = "BoundingPoly",
          description = "The bounding box for the word. The vertices are in the order of top-left, top-right, bottom-right, bottom-left. When a rotation of the bounding box is detected the rotation is represented as around the top-left corner as defined when the text is read in the 'natural' orientation. For example: * when the text is horizontal it might look like: 0----1 | | 3----2 * when it's rotated 180 degrees around the top-left corner it becomes: 2----3 | | 1----0 and the vertex order will still be (0, 1, 2, 3).",
        },
        confidence = {
          description = "Confidence of the OCR results for the word. Range [0, 1].",
          format = "float",
          type = "number",
        },
        property = {
          ["$ref"] = "TextProperty",
          description = "Additional information detected for the word.",
        },
        symbols = {
          description = "List of symbols in the word. The order of the symbols follows the natural reading order.",
          items = {
            ["$ref"] = "Symbol",
          },
          type = "array",
        },
      },
      type = "object",
    },
  },
  servicePath = "",
  title = "Cloud Vision API",
  version = "v1",
  version_module = true,
}
