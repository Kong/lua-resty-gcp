return {
  auth = {
    oauth2 = {
      scopes = {
        ["https://www.googleapis.com/auth/bigquery"] = {
          description = "View and manage your data in Google BigQuery and see the email address for your Google Account",
        },
        ["https://www.googleapis.com/auth/cloud-platform"] = {
          description = "See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account.",
        },
        ["https://www.googleapis.com/auth/cloud-platform.read-only"] = {
          description = "View your data across Google Cloud services and see the email address of your Google Account",
        },
      },
    },
  },
  basePath = "",
  baseUrl = "https://bigquerydatatransfer.googleapis.com/",
  batchPath = "batch",
  canonicalName = "BigQuery Data Transfer",
  description = "Schedule queries or transfer external data from SaaS applications to Google BigQuery on a regular basis.",
  discoveryVersion = "v1",
  documentationLink = "https://cloud.google.com/bigquery-transfer/",
  fullyEncodeReservedExpansion = true,
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "bigquerydatatransfer:v1",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://bigquerydatatransfer.mtls.googleapis.com/",
  name = "bigquerydatatransfer",
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
    projects = {
      methods = {
        enrollDataSources = {
          description = "Enroll data sources in a user project. This allows users to create transfer configurations for these data sources. They will also appear in the ListDataSources RPC and as such, will appear in the [BigQuery UI](https://console.cloud.google.com/bigquery), and the documents can be found in the public guide for [BigQuery Web UI](https://cloud.google.com/bigquery/bigquery-web-ui) and [Data Transfer Service](https://cloud.google.com/bigquery/docs/working-with-transfers).",
          flatPath = "v1/projects/{projectsId}:enrollDataSources",
          httpMethod = "POST",
          id = "bigquerydatatransfer.projects.enrollDataSources",
          parameterOrder = {
            "name",
          },
          parameters = {
            name = {
              description = "The name of the project resource in the form: `projects/{project_id}`",
              location = "path",
              pattern = "^projects/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "v1/{+name}:enrollDataSources",
          request = {
            ["$ref"] = "EnrollDataSourcesRequest",
          },
          response = {
            ["$ref"] = "Empty",
          },
          scopes = {
            "https://www.googleapis.com/auth/bigquery",
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
      },
      resources = {
        dataSources = {
          methods = {
            checkValidCreds = {
              description = "Returns true if valid credentials exist for the given data source and requesting user.",
              flatPath = "v1/projects/{projectsId}/dataSources/{dataSourcesId}:checkValidCreds",
              httpMethod = "POST",
              id = "bigquerydatatransfer.projects.dataSources.checkValidCreds",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. The data source in the form: `projects/{project_id}/dataSources/{data_source_id}` or `projects/{project_id}/locations/{location_id}/dataSources/{data_source_id}`.",
                  location = "path",
                  pattern = "^projects/[^/]+/dataSources/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}:checkValidCreds",
              request = {
                ["$ref"] = "CheckValidCredsRequest",
              },
              response = {
                ["$ref"] = "CheckValidCredsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/bigquery",
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/cloud-platform.read-only",
              },
            },
            get = {
              description = "Retrieves a supported data source and returns its settings.",
              flatPath = "v1/projects/{projectsId}/dataSources/{dataSourcesId}",
              httpMethod = "GET",
              id = "bigquerydatatransfer.projects.dataSources.get",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. The field will contain name of the resource requested, for example: `projects/{project_id}/dataSources/{data_source_id}` or `projects/{project_id}/locations/{location_id}/dataSources/{data_source_id}`",
                  location = "path",
                  pattern = "^projects/[^/]+/dataSources/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}",
              response = {
                ["$ref"] = "DataSource",
              },
              scopes = {
                "https://www.googleapis.com/auth/bigquery",
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/cloud-platform.read-only",
              },
            },
            list = {
              description = "Lists supported data sources and returns their settings.",
              flatPath = "v1/projects/{projectsId}/dataSources",
              httpMethod = "GET",
              id = "bigquerydatatransfer.projects.dataSources.list",
              parameterOrder = {
                "parent",
              },
              parameters = {
                pageSize = {
                  description = "Page size. The default page size is the maximum value of 1000 results.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "Pagination token, which can be used to request a specific page of `ListDataSourcesRequest` list results. For multiple-page results, `ListDataSourcesResponse` outputs a `next_page` token, which can be used as the `page_token` value to request the next page of list results.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "Required. The BigQuery project id for which data sources should be returned. Must be in the form: `projects/{project_id}` or `projects/{project_id}/locations/{location_id}`",
                  location = "path",
                  pattern = "^projects/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/dataSources",
              response = {
                ["$ref"] = "ListDataSourcesResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/bigquery",
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/cloud-platform.read-only",
              },
            },
          },
        },
        locations = {
          methods = {
            enrollDataSources = {
              description = "Enroll data sources in a user project. This allows users to create transfer configurations for these data sources. They will also appear in the ListDataSources RPC and as such, will appear in the [BigQuery UI](https://console.cloud.google.com/bigquery), and the documents can be found in the public guide for [BigQuery Web UI](https://cloud.google.com/bigquery/bigquery-web-ui) and [Data Transfer Service](https://cloud.google.com/bigquery/docs/working-with-transfers).",
              flatPath = "v1/projects/{projectsId}/locations/{locationsId}:enrollDataSources",
              httpMethod = "POST",
              id = "bigquerydatatransfer.projects.locations.enrollDataSources",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "The name of the project resource in the form: `projects/{project_id}`",
                  location = "path",
                  pattern = "^projects/[^/]+/locations/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}:enrollDataSources",
              request = {
                ["$ref"] = "EnrollDataSourcesRequest",
              },
              response = {
                ["$ref"] = "Empty",
              },
              scopes = {
                "https://www.googleapis.com/auth/bigquery",
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            get = {
              description = "Gets information about a location.",
              flatPath = "v1/projects/{projectsId}/locations/{locationsId}",
              httpMethod = "GET",
              id = "bigquerydatatransfer.projects.locations.get",
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
              path = "v1/{+name}",
              response = {
                ["$ref"] = "Location",
              },
              scopes = {
                "https://www.googleapis.com/auth/bigquery",
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/cloud-platform.read-only",
              },
            },
            list = {
              description = "Lists information about the supported locations for this service.",
              flatPath = "v1/projects/{projectsId}/locations",
              httpMethod = "GET",
              id = "bigquerydatatransfer.projects.locations.list",
              parameterOrder = {
                "name",
              },
              parameters = {
                filter = {
                  description = "A filter to narrow down results to a preferred subset. The filtering language accepts strings like `\"displayName=tokyo\"`, and is documented in more detail in [AIP-160](https://google.aip.dev/160).",
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
                  description = "A page token received from the `next_page_token` field in the response. Send that page token to receive the subsequent page.",
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/{+name}/locations",
              response = {
                ["$ref"] = "ListLocationsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/bigquery",
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/cloud-platform.read-only",
              },
            },
          },
          resources = {
            dataSources = {
              methods = {
                checkValidCreds = {
                  description = "Returns true if valid credentials exist for the given data source and requesting user.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/dataSources/{dataSourcesId}:checkValidCreds",
                  httpMethod = "POST",
                  id = "bigquerydatatransfer.projects.locations.dataSources.checkValidCreds",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The data source in the form: `projects/{project_id}/dataSources/{data_source_id}` or `projects/{project_id}/locations/{location_id}/dataSources/{data_source_id}`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/dataSources/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}:checkValidCreds",
                  request = {
                    ["$ref"] = "CheckValidCredsRequest",
                  },
                  response = {
                    ["$ref"] = "CheckValidCredsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/bigquery",
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/cloud-platform.read-only",
                  },
                },
                get = {
                  description = "Retrieves a supported data source and returns its settings.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/dataSources/{dataSourcesId}",
                  httpMethod = "GET",
                  id = "bigquerydatatransfer.projects.locations.dataSources.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The field will contain name of the resource requested, for example: `projects/{project_id}/dataSources/{data_source_id}` or `projects/{project_id}/locations/{location_id}/dataSources/{data_source_id}`",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/dataSources/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "DataSource",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/bigquery",
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/cloud-platform.read-only",
                  },
                },
                list = {
                  description = "Lists supported data sources and returns their settings.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/dataSources",
                  httpMethod = "GET",
                  id = "bigquerydatatransfer.projects.locations.dataSources.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    pageSize = {
                      description = "Page size. The default page size is the maximum value of 1000 results.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "Pagination token, which can be used to request a specific page of `ListDataSourcesRequest` list results. For multiple-page results, `ListDataSourcesResponse` outputs a `next_page` token, which can be used as the `page_token` value to request the next page of list results.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The BigQuery project id for which data sources should be returned. Must be in the form: `projects/{project_id}` or `projects/{project_id}/locations/{location_id}`",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/dataSources",
                  response = {
                    ["$ref"] = "ListDataSourcesResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/bigquery",
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/cloud-platform.read-only",
                  },
                },
              },
            },
            transferConfigs = {
              methods = {
                create = {
                  description = "Creates a new data transfer configuration.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/transferConfigs",
                  httpMethod = "POST",
                  id = "bigquerydatatransfer.projects.locations.transferConfigs.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    authorizationCode = {
                      description = "Optional OAuth2 authorization code to use with this transfer configuration. This is required only if `transferConfig.dataSourceId` is 'youtube_channel' and new credentials are needed, as indicated by `CheckValidCreds`. In order to obtain authorization_code, make a request to the following URL: https://www.gstatic.com/bigquerydatatransfer/oauthz/auth?redirect_uri=urn:ietf:wg:oauth:2.0:oob&response_type=authorization_code&client_id=client_id&scope=data_source_scopes * The client_id is the OAuth client_id of the a data source as returned by ListDataSources method. * data_source_scopes are the scopes returned by ListDataSources method. Note that this should not be set when `service_account_name` is used to create the transfer config.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The BigQuery project id where the transfer configuration should be created. Must be in the format projects/{project_id}/locations/{location_id} or projects/{project_id}. If specified location and location of the destination bigquery dataset do not match - the request will fail.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    serviceAccountName = {
                      description = "Optional service account name. If this field is set, the transfer config will be created with this service account's credentials. It requires that the requesting user calling this API has permissions to act as this service account. Note that not all data sources support service account credentials when creating a transfer config. For the latest list of data sources, read about [using service accounts](https://cloud.google.com/bigquery-transfer/docs/use-service-accounts).",
                      location = "query",
                      type = "string",
                    },
                    versionInfo = {
                      description = "Optional version info. This is required only if `transferConfig.dataSourceId` is not 'youtube_channel' and new credentials are needed, as indicated by `CheckValidCreds`. In order to obtain version info, make a request to the following URL: https://www.gstatic.com/bigquerydatatransfer/oauthz/auth?redirect_uri=urn:ietf:wg:oauth:2.0:oob&response_type=version_info&client_id=client_id&scope=data_source_scopes * The client_id is the OAuth client_id of the a data source as returned by ListDataSources method. * data_source_scopes are the scopes returned by ListDataSources method. Note that this should not be set when `service_account_name` is used to create the transfer config.",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/transferConfigs",
                  request = {
                    ["$ref"] = "TransferConfig",
                  },
                  response = {
                    ["$ref"] = "TransferConfig",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                delete = {
                  description = "Deletes a data transfer configuration, including any associated transfer runs and logs.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/transferConfigs/{transferConfigsId}",
                  httpMethod = "DELETE",
                  id = "bigquerydatatransfer.projects.locations.transferConfigs.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The field will contain name of the resource requested, for example: `projects/{project_id}/transferConfigs/{config_id}` or `projects/{project_id}/locations/{location_id}/transferConfigs/{config_id}`",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/transferConfigs/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "Empty",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/bigquery",
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                get = {
                  description = "Returns information about a data transfer config.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/transferConfigs/{transferConfigsId}",
                  httpMethod = "GET",
                  id = "bigquerydatatransfer.projects.locations.transferConfigs.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The field will contain name of the resource requested, for example: `projects/{project_id}/transferConfigs/{config_id}` or `projects/{project_id}/locations/{location_id}/transferConfigs/{config_id}`",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/transferConfigs/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "TransferConfig",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/bigquery",
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/cloud-platform.read-only",
                  },
                },
                list = {
                  description = "Returns information about all transfer configs owned by a project in the specified location.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/transferConfigs",
                  httpMethod = "GET",
                  id = "bigquerydatatransfer.projects.locations.transferConfigs.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    dataSourceIds = {
                      description = "When specified, only configurations of requested data sources are returned.",
                      location = "query",
                      repeated = true,
                      type = "string",
                    },
                    pageSize = {
                      description = "Page size. The default page size is the maximum value of 1000 results.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "Pagination token, which can be used to request a specific page of `ListTransfersRequest` list results. For multiple-page results, `ListTransfersResponse` outputs a `next_page` token, which can be used as the `page_token` value to request the next page of list results.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The BigQuery project id for which transfer configs should be returned: `projects/{project_id}` or `projects/{project_id}/locations/{location_id}`",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/transferConfigs",
                  response = {
                    ["$ref"] = "ListTransferConfigsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/bigquery",
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/cloud-platform.read-only",
                  },
                },
                patch = {
                  description = "Updates a data transfer configuration. All fields must be set, even if they are not updated.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/transferConfigs/{transferConfigsId}",
                  httpMethod = "PATCH",
                  id = "bigquerydatatransfer.projects.locations.transferConfigs.patch",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    authorizationCode = {
                      description = "Optional OAuth2 authorization code to use with this transfer configuration. This is required only if `transferConfig.dataSourceId` is 'youtube_channel' and new credentials are needed, as indicated by `CheckValidCreds`. In order to obtain authorization_code, make a request to the following URL: https://www.gstatic.com/bigquerydatatransfer/oauthz/auth?redirect_uri=urn:ietf:wg:oauth:2.0:oob&response_type=authorization_code&client_id=client_id&scope=data_source_scopes * The client_id is the OAuth client_id of the a data source as returned by ListDataSources method. * data_source_scopes are the scopes returned by ListDataSources method. Note that this should not be set when `service_account_name` is used to update the transfer config.",
                      location = "query",
                      type = "string",
                    },
                    name = {
                      description = "The resource name of the transfer config. Transfer config names have the form `projects/{project_id}/locations/{region}/transferConfigs/{config_id}`. Where `config_id` is usually a uuid, even though it is not guaranteed or required. The name is ignored when creating a transfer config.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/transferConfigs/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    serviceAccountName = {
                      description = "Optional service account name. If this field is set, the transfer config will be created with this service account's credentials. It requires that the requesting user calling this API has permissions to act as this service account. Note that not all data sources support service account credentials when creating a transfer config. For the latest list of data sources, read about [using service accounts](https://cloud.google.com/bigquery-transfer/docs/use-service-accounts).",
                      location = "query",
                      type = "string",
                    },
                    updateMask = {
                      description = "Required. Required list of fields to be updated in this request.",
                      format = "google-fieldmask",
                      location = "query",
                      type = "string",
                    },
                    versionInfo = {
                      description = "Optional version info. This is required only if `transferConfig.dataSourceId` is not 'youtube_channel' and new credentials are needed, as indicated by `CheckValidCreds`. In order to obtain version info, make a request to the following URL: https://www.gstatic.com/bigquerydatatransfer/oauthz/auth?redirect_uri=urn:ietf:wg:oauth:2.0:oob&response_type=version_info&client_id=client_id&scope=data_source_scopes * The client_id is the OAuth client_id of the a data source as returned by ListDataSources method. * data_source_scopes are the scopes returned by ListDataSources method. Note that this should not be set when `service_account_name` is used to update the transfer config.",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  request = {
                    ["$ref"] = "TransferConfig",
                  },
                  response = {
                    ["$ref"] = "TransferConfig",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                scheduleRuns = {
                  description = "Creates transfer runs for a time range [start_time, end_time]. For each date - or whatever granularity the data source supports - in the range, one transfer run is created. Note that runs are created per UTC time in the time range. DEPRECATED: use StartManualTransferRuns instead.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/transferConfigs/{transferConfigsId}:scheduleRuns",
                  httpMethod = "POST",
                  id = "bigquerydatatransfer.projects.locations.transferConfigs.scheduleRuns",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    parent = {
                      description = "Required. Transfer configuration name in the form: `projects/{project_id}/transferConfigs/{config_id}` or `projects/{project_id}/locations/{location_id}/transferConfigs/{config_id}`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/transferConfigs/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}:scheduleRuns",
                  request = {
                    ["$ref"] = "ScheduleTransferRunsRequest",
                  },
                  response = {
                    ["$ref"] = "ScheduleTransferRunsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/bigquery",
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                startManualRuns = {
                  description = "Start manual transfer runs to be executed now with schedule_time equal to current time. The transfer runs can be created for a time range where the run_time is between start_time (inclusive) and end_time (exclusive), or for a specific run_time.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/transferConfigs/{transferConfigsId}:startManualRuns",
                  httpMethod = "POST",
                  id = "bigquerydatatransfer.projects.locations.transferConfigs.startManualRuns",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    parent = {
                      description = "Transfer configuration name in the form: `projects/{project_id}/transferConfigs/{config_id}` or `projects/{project_id}/locations/{location_id}/transferConfigs/{config_id}`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/transferConfigs/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}:startManualRuns",
                  request = {
                    ["$ref"] = "StartManualTransferRunsRequest",
                  },
                  response = {
                    ["$ref"] = "StartManualTransferRunsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/bigquery",
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
              },
              resources = {
                runs = {
                  methods = {
                    delete = {
                      description = "Deletes the specified transfer run.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/transferConfigs/{transferConfigsId}/runs/{runsId}",
                      httpMethod = "DELETE",
                      id = "bigquerydatatransfer.projects.locations.transferConfigs.runs.delete",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The field will contain name of the resource requested, for example: `projects/{project_id}/transferConfigs/{config_id}/runs/{run_id}` or `projects/{project_id}/locations/{location_id}/transferConfigs/{config_id}/runs/{run_id}`",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/transferConfigs/[^/]+/runs/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}",
                      response = {
                        ["$ref"] = "Empty",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/bigquery",
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    get = {
                      description = "Returns information about the particular transfer run.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/transferConfigs/{transferConfigsId}/runs/{runsId}",
                      httpMethod = "GET",
                      id = "bigquerydatatransfer.projects.locations.transferConfigs.runs.get",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The field will contain name of the resource requested, for example: `projects/{project_id}/transferConfigs/{config_id}/runs/{run_id}` or `projects/{project_id}/locations/{location_id}/transferConfigs/{config_id}/runs/{run_id}`",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/transferConfigs/[^/]+/runs/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}",
                      response = {
                        ["$ref"] = "TransferRun",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/bigquery",
                        "https://www.googleapis.com/auth/cloud-platform",
                        "https://www.googleapis.com/auth/cloud-platform.read-only",
                      },
                    },
                    list = {
                      description = "Returns information about running and completed transfer runs.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/transferConfigs/{transferConfigsId}/runs",
                      httpMethod = "GET",
                      id = "bigquerydatatransfer.projects.locations.transferConfigs.runs.list",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        pageSize = {
                          description = "Page size. The default page size is the maximum value of 1000 results.",
                          format = "int32",
                          location = "query",
                          type = "integer",
                        },
                        pageToken = {
                          description = "Pagination token, which can be used to request a specific page of `ListTransferRunsRequest` list results. For multiple-page results, `ListTransferRunsResponse` outputs a `next_page` token, which can be used as the `page_token` value to request the next page of list results.",
                          location = "query",
                          type = "string",
                        },
                        parent = {
                          description = "Required. Name of transfer configuration for which transfer runs should be retrieved. Format of transfer configuration resource name is: `projects/{project_id}/transferConfigs/{config_id}` or `projects/{project_id}/locations/{location_id}/transferConfigs/{config_id}`.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/transferConfigs/[^/]+$",
                          required = true,
                          type = "string",
                        },
                        runAttempt = {
                          description = "Indicates how run attempts are to be pulled.",
                          enum = {
                            "RUN_ATTEMPT_UNSPECIFIED",
                            "LATEST",
                          },
                          enumDescriptions = {
                            "All runs should be returned.",
                            "Only latest run per day should be returned.",
                          },
                          location = "query",
                          type = "string",
                        },
                        states = {
                          description = "When specified, only transfer runs with requested states are returned.",
                          enum = {
                            "TRANSFER_STATE_UNSPECIFIED",
                            "PENDING",
                            "RUNNING",
                            "SUCCEEDED",
                            "FAILED",
                            "CANCELLED",
                          },
                          enumDescriptions = {
                            "State placeholder (0).",
                            "Data transfer is scheduled and is waiting to be picked up by data transfer backend (2).",
                            "Data transfer is in progress (3).",
                            "Data transfer completed successfully (4).",
                            "Data transfer failed (5).",
                            "Data transfer is cancelled (6).",
                          },
                          location = "query",
                          repeated = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/runs",
                      response = {
                        ["$ref"] = "ListTransferRunsResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/bigquery",
                        "https://www.googleapis.com/auth/cloud-platform",
                        "https://www.googleapis.com/auth/cloud-platform.read-only",
                      },
                    },
                  },
                  resources = {
                    transferLogs = {
                      methods = {
                        list = {
                          description = "Returns log messages for the transfer run.",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/transferConfigs/{transferConfigsId}/runs/{runsId}/transferLogs",
                          httpMethod = "GET",
                          id = "bigquerydatatransfer.projects.locations.transferConfigs.runs.transferLogs.list",
                          parameterOrder = {
                            "parent",
                          },
                          parameters = {
                            messageTypes = {
                              description = "Message types to return. If not populated - INFO, WARNING and ERROR messages are returned.",
                              enum = {
                                "MESSAGE_SEVERITY_UNSPECIFIED",
                                "INFO",
                                "WARNING",
                                "ERROR",
                              },
                              enumDescriptions = {
                                "No severity specified.",
                                "Informational message.",
                                "Warning message.",
                                "Error message.",
                              },
                              location = "query",
                              repeated = true,
                              type = "string",
                            },
                            pageSize = {
                              description = "Page size. The default page size is the maximum value of 1000 results.",
                              format = "int32",
                              location = "query",
                              type = "integer",
                            },
                            pageToken = {
                              description = "Pagination token, which can be used to request a specific page of `ListTransferLogsRequest` list results. For multiple-page results, `ListTransferLogsResponse` outputs a `next_page` token, which can be used as the `page_token` value to request the next page of list results.",
                              location = "query",
                              type = "string",
                            },
                            parent = {
                              description = "Required. Transfer run name in the form: `projects/{project_id}/transferConfigs/{config_id}/runs/{run_id}` or `projects/{project_id}/locations/{location_id}/transferConfigs/{config_id}/runs/{run_id}`",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/transferConfigs/[^/]+/runs/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v1/{+parent}/transferLogs",
                          response = {
                            ["$ref"] = "ListTransferLogsResponse",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/bigquery",
                            "https://www.googleapis.com/auth/cloud-platform",
                            "https://www.googleapis.com/auth/cloud-platform.read-only",
                          },
                        },
                      },
                    },
                  },
                },
              },
            },
          },
        },
        transferConfigs = {
          methods = {
            create = {
              description = "Creates a new data transfer configuration.",
              flatPath = "v1/projects/{projectsId}/transferConfigs",
              httpMethod = "POST",
              id = "bigquerydatatransfer.projects.transferConfigs.create",
              parameterOrder = {
                "parent",
              },
              parameters = {
                authorizationCode = {
                  description = "Optional OAuth2 authorization code to use with this transfer configuration. This is required only if `transferConfig.dataSourceId` is 'youtube_channel' and new credentials are needed, as indicated by `CheckValidCreds`. In order to obtain authorization_code, make a request to the following URL: https://www.gstatic.com/bigquerydatatransfer/oauthz/auth?redirect_uri=urn:ietf:wg:oauth:2.0:oob&response_type=authorization_code&client_id=client_id&scope=data_source_scopes * The client_id is the OAuth client_id of the a data source as returned by ListDataSources method. * data_source_scopes are the scopes returned by ListDataSources method. Note that this should not be set when `service_account_name` is used to create the transfer config.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "Required. The BigQuery project id where the transfer configuration should be created. Must be in the format projects/{project_id}/locations/{location_id} or projects/{project_id}. If specified location and location of the destination bigquery dataset do not match - the request will fail.",
                  location = "path",
                  pattern = "^projects/[^/]+$",
                  required = true,
                  type = "string",
                },
                serviceAccountName = {
                  description = "Optional service account name. If this field is set, the transfer config will be created with this service account's credentials. It requires that the requesting user calling this API has permissions to act as this service account. Note that not all data sources support service account credentials when creating a transfer config. For the latest list of data sources, read about [using service accounts](https://cloud.google.com/bigquery-transfer/docs/use-service-accounts).",
                  location = "query",
                  type = "string",
                },
                versionInfo = {
                  description = "Optional version info. This is required only if `transferConfig.dataSourceId` is not 'youtube_channel' and new credentials are needed, as indicated by `CheckValidCreds`. In order to obtain version info, make a request to the following URL: https://www.gstatic.com/bigquerydatatransfer/oauthz/auth?redirect_uri=urn:ietf:wg:oauth:2.0:oob&response_type=version_info&client_id=client_id&scope=data_source_scopes * The client_id is the OAuth client_id of the a data source as returned by ListDataSources method. * data_source_scopes are the scopes returned by ListDataSources method. Note that this should not be set when `service_account_name` is used to create the transfer config.",
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/{+parent}/transferConfigs",
              request = {
                ["$ref"] = "TransferConfig",
              },
              response = {
                ["$ref"] = "TransferConfig",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            delete = {
              description = "Deletes a data transfer configuration, including any associated transfer runs and logs.",
              flatPath = "v1/projects/{projectsId}/transferConfigs/{transferConfigsId}",
              httpMethod = "DELETE",
              id = "bigquerydatatransfer.projects.transferConfigs.delete",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. The field will contain name of the resource requested, for example: `projects/{project_id}/transferConfigs/{config_id}` or `projects/{project_id}/locations/{location_id}/transferConfigs/{config_id}`",
                  location = "path",
                  pattern = "^projects/[^/]+/transferConfigs/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}",
              response = {
                ["$ref"] = "Empty",
              },
              scopes = {
                "https://www.googleapis.com/auth/bigquery",
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            get = {
              description = "Returns information about a data transfer config.",
              flatPath = "v1/projects/{projectsId}/transferConfigs/{transferConfigsId}",
              httpMethod = "GET",
              id = "bigquerydatatransfer.projects.transferConfigs.get",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. The field will contain name of the resource requested, for example: `projects/{project_id}/transferConfigs/{config_id}` or `projects/{project_id}/locations/{location_id}/transferConfigs/{config_id}`",
                  location = "path",
                  pattern = "^projects/[^/]+/transferConfigs/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}",
              response = {
                ["$ref"] = "TransferConfig",
              },
              scopes = {
                "https://www.googleapis.com/auth/bigquery",
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/cloud-platform.read-only",
              },
            },
            list = {
              description = "Returns information about all transfer configs owned by a project in the specified location.",
              flatPath = "v1/projects/{projectsId}/transferConfigs",
              httpMethod = "GET",
              id = "bigquerydatatransfer.projects.transferConfigs.list",
              parameterOrder = {
                "parent",
              },
              parameters = {
                dataSourceIds = {
                  description = "When specified, only configurations of requested data sources are returned.",
                  location = "query",
                  repeated = true,
                  type = "string",
                },
                pageSize = {
                  description = "Page size. The default page size is the maximum value of 1000 results.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "Pagination token, which can be used to request a specific page of `ListTransfersRequest` list results. For multiple-page results, `ListTransfersResponse` outputs a `next_page` token, which can be used as the `page_token` value to request the next page of list results.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "Required. The BigQuery project id for which transfer configs should be returned: `projects/{project_id}` or `projects/{project_id}/locations/{location_id}`",
                  location = "path",
                  pattern = "^projects/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/transferConfigs",
              response = {
                ["$ref"] = "ListTransferConfigsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/bigquery",
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/cloud-platform.read-only",
              },
            },
            patch = {
              description = "Updates a data transfer configuration. All fields must be set, even if they are not updated.",
              flatPath = "v1/projects/{projectsId}/transferConfigs/{transferConfigsId}",
              httpMethod = "PATCH",
              id = "bigquerydatatransfer.projects.transferConfigs.patch",
              parameterOrder = {
                "name",
              },
              parameters = {
                authorizationCode = {
                  description = "Optional OAuth2 authorization code to use with this transfer configuration. This is required only if `transferConfig.dataSourceId` is 'youtube_channel' and new credentials are needed, as indicated by `CheckValidCreds`. In order to obtain authorization_code, make a request to the following URL: https://www.gstatic.com/bigquerydatatransfer/oauthz/auth?redirect_uri=urn:ietf:wg:oauth:2.0:oob&response_type=authorization_code&client_id=client_id&scope=data_source_scopes * The client_id is the OAuth client_id of the a data source as returned by ListDataSources method. * data_source_scopes are the scopes returned by ListDataSources method. Note that this should not be set when `service_account_name` is used to update the transfer config.",
                  location = "query",
                  type = "string",
                },
                name = {
                  description = "The resource name of the transfer config. Transfer config names have the form `projects/{project_id}/locations/{region}/transferConfigs/{config_id}`. Where `config_id` is usually a uuid, even though it is not guaranteed or required. The name is ignored when creating a transfer config.",
                  location = "path",
                  pattern = "^projects/[^/]+/transferConfigs/[^/]+$",
                  required = true,
                  type = "string",
                },
                serviceAccountName = {
                  description = "Optional service account name. If this field is set, the transfer config will be created with this service account's credentials. It requires that the requesting user calling this API has permissions to act as this service account. Note that not all data sources support service account credentials when creating a transfer config. For the latest list of data sources, read about [using service accounts](https://cloud.google.com/bigquery-transfer/docs/use-service-accounts).",
                  location = "query",
                  type = "string",
                },
                updateMask = {
                  description = "Required. Required list of fields to be updated in this request.",
                  format = "google-fieldmask",
                  location = "query",
                  type = "string",
                },
                versionInfo = {
                  description = "Optional version info. This is required only if `transferConfig.dataSourceId` is not 'youtube_channel' and new credentials are needed, as indicated by `CheckValidCreds`. In order to obtain version info, make a request to the following URL: https://www.gstatic.com/bigquerydatatransfer/oauthz/auth?redirect_uri=urn:ietf:wg:oauth:2.0:oob&response_type=version_info&client_id=client_id&scope=data_source_scopes * The client_id is the OAuth client_id of the a data source as returned by ListDataSources method. * data_source_scopes are the scopes returned by ListDataSources method. Note that this should not be set when `service_account_name` is used to update the transfer config.",
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/{+name}",
              request = {
                ["$ref"] = "TransferConfig",
              },
              response = {
                ["$ref"] = "TransferConfig",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            scheduleRuns = {
              description = "Creates transfer runs for a time range [start_time, end_time]. For each date - or whatever granularity the data source supports - in the range, one transfer run is created. Note that runs are created per UTC time in the time range. DEPRECATED: use StartManualTransferRuns instead.",
              flatPath = "v1/projects/{projectsId}/transferConfigs/{transferConfigsId}:scheduleRuns",
              httpMethod = "POST",
              id = "bigquerydatatransfer.projects.transferConfigs.scheduleRuns",
              parameterOrder = {
                "parent",
              },
              parameters = {
                parent = {
                  description = "Required. Transfer configuration name in the form: `projects/{project_id}/transferConfigs/{config_id}` or `projects/{project_id}/locations/{location_id}/transferConfigs/{config_id}`.",
                  location = "path",
                  pattern = "^projects/[^/]+/transferConfigs/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}:scheduleRuns",
              request = {
                ["$ref"] = "ScheduleTransferRunsRequest",
              },
              response = {
                ["$ref"] = "ScheduleTransferRunsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/bigquery",
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            startManualRuns = {
              description = "Start manual transfer runs to be executed now with schedule_time equal to current time. The transfer runs can be created for a time range where the run_time is between start_time (inclusive) and end_time (exclusive), or for a specific run_time.",
              flatPath = "v1/projects/{projectsId}/transferConfigs/{transferConfigsId}:startManualRuns",
              httpMethod = "POST",
              id = "bigquerydatatransfer.projects.transferConfigs.startManualRuns",
              parameterOrder = {
                "parent",
              },
              parameters = {
                parent = {
                  description = "Transfer configuration name in the form: `projects/{project_id}/transferConfigs/{config_id}` or `projects/{project_id}/locations/{location_id}/transferConfigs/{config_id}`.",
                  location = "path",
                  pattern = "^projects/[^/]+/transferConfigs/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}:startManualRuns",
              request = {
                ["$ref"] = "StartManualTransferRunsRequest",
              },
              response = {
                ["$ref"] = "StartManualTransferRunsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/bigquery",
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
          },
          resources = {
            runs = {
              methods = {
                delete = {
                  description = "Deletes the specified transfer run.",
                  flatPath = "v1/projects/{projectsId}/transferConfigs/{transferConfigsId}/runs/{runsId}",
                  httpMethod = "DELETE",
                  id = "bigquerydatatransfer.projects.transferConfigs.runs.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The field will contain name of the resource requested, for example: `projects/{project_id}/transferConfigs/{config_id}/runs/{run_id}` or `projects/{project_id}/locations/{location_id}/transferConfigs/{config_id}/runs/{run_id}`",
                      location = "path",
                      pattern = "^projects/[^/]+/transferConfigs/[^/]+/runs/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "Empty",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/bigquery",
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                get = {
                  description = "Returns information about the particular transfer run.",
                  flatPath = "v1/projects/{projectsId}/transferConfigs/{transferConfigsId}/runs/{runsId}",
                  httpMethod = "GET",
                  id = "bigquerydatatransfer.projects.transferConfigs.runs.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The field will contain name of the resource requested, for example: `projects/{project_id}/transferConfigs/{config_id}/runs/{run_id}` or `projects/{project_id}/locations/{location_id}/transferConfigs/{config_id}/runs/{run_id}`",
                      location = "path",
                      pattern = "^projects/[^/]+/transferConfigs/[^/]+/runs/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "TransferRun",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/bigquery",
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/cloud-platform.read-only",
                  },
                },
                list = {
                  description = "Returns information about running and completed transfer runs.",
                  flatPath = "v1/projects/{projectsId}/transferConfigs/{transferConfigsId}/runs",
                  httpMethod = "GET",
                  id = "bigquerydatatransfer.projects.transferConfigs.runs.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    pageSize = {
                      description = "Page size. The default page size is the maximum value of 1000 results.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "Pagination token, which can be used to request a specific page of `ListTransferRunsRequest` list results. For multiple-page results, `ListTransferRunsResponse` outputs a `next_page` token, which can be used as the `page_token` value to request the next page of list results.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. Name of transfer configuration for which transfer runs should be retrieved. Format of transfer configuration resource name is: `projects/{project_id}/transferConfigs/{config_id}` or `projects/{project_id}/locations/{location_id}/transferConfigs/{config_id}`.",
                      location = "path",
                      pattern = "^projects/[^/]+/transferConfigs/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    runAttempt = {
                      description = "Indicates how run attempts are to be pulled.",
                      enum = {
                        "RUN_ATTEMPT_UNSPECIFIED",
                        "LATEST",
                      },
                      enumDescriptions = {
                        "All runs should be returned.",
                        "Only latest run per day should be returned.",
                      },
                      location = "query",
                      type = "string",
                    },
                    states = {
                      description = "When specified, only transfer runs with requested states are returned.",
                      enum = {
                        "TRANSFER_STATE_UNSPECIFIED",
                        "PENDING",
                        "RUNNING",
                        "SUCCEEDED",
                        "FAILED",
                        "CANCELLED",
                      },
                      enumDescriptions = {
                        "State placeholder (0).",
                        "Data transfer is scheduled and is waiting to be picked up by data transfer backend (2).",
                        "Data transfer is in progress (3).",
                        "Data transfer completed successfully (4).",
                        "Data transfer failed (5).",
                        "Data transfer is cancelled (6).",
                      },
                      location = "query",
                      repeated = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/runs",
                  response = {
                    ["$ref"] = "ListTransferRunsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/bigquery",
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/cloud-platform.read-only",
                  },
                },
              },
              resources = {
                transferLogs = {
                  methods = {
                    list = {
                      description = "Returns log messages for the transfer run.",
                      flatPath = "v1/projects/{projectsId}/transferConfigs/{transferConfigsId}/runs/{runsId}/transferLogs",
                      httpMethod = "GET",
                      id = "bigquerydatatransfer.projects.transferConfigs.runs.transferLogs.list",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        messageTypes = {
                          description = "Message types to return. If not populated - INFO, WARNING and ERROR messages are returned.",
                          enum = {
                            "MESSAGE_SEVERITY_UNSPECIFIED",
                            "INFO",
                            "WARNING",
                            "ERROR",
                          },
                          enumDescriptions = {
                            "No severity specified.",
                            "Informational message.",
                            "Warning message.",
                            "Error message.",
                          },
                          location = "query",
                          repeated = true,
                          type = "string",
                        },
                        pageSize = {
                          description = "Page size. The default page size is the maximum value of 1000 results.",
                          format = "int32",
                          location = "query",
                          type = "integer",
                        },
                        pageToken = {
                          description = "Pagination token, which can be used to request a specific page of `ListTransferLogsRequest` list results. For multiple-page results, `ListTransferLogsResponse` outputs a `next_page` token, which can be used as the `page_token` value to request the next page of list results.",
                          location = "query",
                          type = "string",
                        },
                        parent = {
                          description = "Required. Transfer run name in the form: `projects/{project_id}/transferConfigs/{config_id}/runs/{run_id}` or `projects/{project_id}/locations/{location_id}/transferConfigs/{config_id}/runs/{run_id}`",
                          location = "path",
                          pattern = "^projects/[^/]+/transferConfigs/[^/]+/runs/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/transferLogs",
                      response = {
                        ["$ref"] = "ListTransferLogsResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/bigquery",
                        "https://www.googleapis.com/auth/cloud-platform",
                        "https://www.googleapis.com/auth/cloud-platform.read-only",
                      },
                    },
                  },
                },
              },
            },
          },
        },
      },
    },
  },
  revision = "20230107",
  rootUrl = "https://bigquerydatatransfer.googleapis.com/",
  schemas = {
    CheckValidCredsRequest = {
      description = "A request to determine whether the user has valid credentials. This method is used to limit the number of OAuth popups in the user interface. The user id is inferred from the API call context. If the data source has the Google+ authorization type, this method returns false, as it cannot be determined whether the credentials are already valid merely based on the user id.",
      id = "CheckValidCredsRequest",
      properties = {},
      type = "object",
    },
    CheckValidCredsResponse = {
      description = "A response indicating whether the credentials exist and are valid.",
      id = "CheckValidCredsResponse",
      properties = {
        hasValidCreds = {
          description = "If set to `true`, the credentials exist and are valid.",
          type = "boolean",
        },
      },
      type = "object",
    },
    DataSource = {
      description = "Defines the properties and custom parameters for a data source.",
      id = "DataSource",
      properties = {
        authorizationType = {
          description = "Indicates the type of authorization.",
          enum = {
            "AUTHORIZATION_TYPE_UNSPECIFIED",
            "AUTHORIZATION_CODE",
            "GOOGLE_PLUS_AUTHORIZATION_CODE",
            "FIRST_PARTY_OAUTH",
          },
          enumDescriptions = {
            "Type unspecified.",
            "Use OAuth 2 authorization codes that can be exchanged for a refresh token on the backend.",
            "Return an authorization code for a given Google+ page that can then be exchanged for a refresh token on the backend.",
            "Use First Party OAuth.",
          },
          type = "string",
        },
        clientId = {
          description = "Data source client id which should be used to receive refresh token.",
          type = "string",
        },
        dataRefreshType = {
          description = "Specifies whether the data source supports automatic data refresh for the past few days, and how it's supported. For some data sources, data might not be complete until a few days later, so it's useful to refresh data automatically.",
          enum = {
            "DATA_REFRESH_TYPE_UNSPECIFIED",
            "SLIDING_WINDOW",
            "CUSTOM_SLIDING_WINDOW",
          },
          enumDescriptions = {
            "The data source won't support data auto refresh, which is default value.",
            "The data source supports data auto refresh, and runs will be scheduled for the past few days. Does not allow custom values to be set for each transfer config.",
            "The data source supports data auto refresh, and runs will be scheduled for the past few days. Allows custom values to be set for each transfer config.",
          },
          type = "string",
        },
        dataSourceId = {
          description = "Data source id.",
          type = "string",
        },
        defaultDataRefreshWindowDays = {
          description = "Default data refresh window on days. Only meaningful when `data_refresh_type` = `SLIDING_WINDOW`.",
          format = "int32",
          type = "integer",
        },
        defaultSchedule = {
          description = "Default data transfer schedule. Examples of valid schedules include: `1st,3rd monday of month 15:30`, `every wed,fri of jan,jun 13:15`, and `first sunday of quarter 00:00`.",
          type = "string",
        },
        description = {
          description = "User friendly data source description string.",
          type = "string",
        },
        displayName = {
          description = "User friendly data source name.",
          type = "string",
        },
        helpUrl = {
          description = "Url for the help document for this data source.",
          type = "string",
        },
        manualRunsDisabled = {
          description = "Disables backfilling and manual run scheduling for the data source.",
          type = "boolean",
        },
        minimumScheduleInterval = {
          description = "The minimum interval for scheduler to schedule runs.",
          format = "google-duration",
          type = "string",
        },
        name = {
          description = "Output only. Data source resource name.",
          readOnly = true,
          type = "string",
        },
        parameters = {
          description = "Data source parameters.",
          items = {
            ["$ref"] = "DataSourceParameter",
          },
          type = "array",
        },
        scopes = {
          description = "Api auth scopes for which refresh token needs to be obtained. These are scopes needed by a data source to prepare data and ingest them into BigQuery, e.g., https://www.googleapis.com/auth/bigquery",
          items = {
            type = "string",
          },
          type = "array",
        },
        supportsCustomSchedule = {
          description = "Specifies whether the data source supports a user defined schedule, or operates on the default schedule. When set to `true`, user can override default schedule.",
          type = "boolean",
        },
        supportsMultipleTransfers = {
          description = "Deprecated. This field has no effect.",
          type = "boolean",
        },
        transferType = {
          description = "Deprecated. This field has no effect.",
          enum = {
            "TRANSFER_TYPE_UNSPECIFIED",
            "BATCH",
            "STREAMING",
          },
          enumDescriptions = {
            "Invalid or Unknown transfer type placeholder.",
            "Batch data transfer.",
            "Streaming data transfer. Streaming data source currently doesn't support multiple transfer configs per project.",
          },
          type = "string",
        },
        updateDeadlineSeconds = {
          description = "The number of seconds to wait for an update from the data source before the Data Transfer Service marks the transfer as FAILED.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    DataSourceParameter = {
      description = "A parameter used to define custom fields in a data source definition.",
      id = "DataSourceParameter",
      properties = {
        allowedValues = {
          description = "All possible values for the parameter.",
          items = {
            type = "string",
          },
          type = "array",
        },
        deprecated = {
          description = "If true, it should not be used in new transfers, and it should not be visible to users.",
          type = "boolean",
        },
        description = {
          description = "Parameter description.",
          type = "string",
        },
        displayName = {
          description = "Parameter display name in the user interface.",
          type = "string",
        },
        fields = {
          description = "Deprecated. This field has no effect.",
          items = {
            ["$ref"] = "DataSourceParameter",
          },
          type = "array",
        },
        immutable = {
          description = "Cannot be changed after initial creation.",
          type = "boolean",
        },
        maxValue = {
          description = "For integer and double values specifies maximum allowed value.",
          format = "double",
          type = "number",
        },
        minValue = {
          description = "For integer and double values specifies minimum allowed value.",
          format = "double",
          type = "number",
        },
        paramId = {
          description = "Parameter identifier.",
          type = "string",
        },
        recurse = {
          description = "Deprecated. This field has no effect.",
          type = "boolean",
        },
        repeated = {
          description = "Deprecated. This field has no effect.",
          type = "boolean",
        },
        required = {
          description = "Is parameter required.",
          type = "boolean",
        },
        type = {
          description = "Parameter type.",
          enum = {
            "TYPE_UNSPECIFIED",
            "STRING",
            "INTEGER",
            "DOUBLE",
            "BOOLEAN",
            "RECORD",
            "PLUS_PAGE",
          },
          enumDescriptions = {
            "Type unspecified.",
            "String parameter.",
            "Integer parameter (64-bits). Will be serialized to json as string.",
            "Double precision floating point parameter.",
            "Boolean parameter.",
            "Deprecated. This field has no effect.",
            "Page ID for a Google+ Page.",
          },
          type = "string",
        },
        validationDescription = {
          description = "Description of the requirements for this field, in case the user input does not fulfill the regex pattern or min/max values.",
          type = "string",
        },
        validationHelpUrl = {
          description = "URL to a help document to further explain the naming requirements.",
          type = "string",
        },
        validationRegex = {
          description = "Regular expression which can be used for parameter validation.",
          type = "string",
        },
      },
      type = "object",
    },
    EmailPreferences = {
      description = "Represents preferences for sending email notifications for transfer run events.",
      id = "EmailPreferences",
      properties = {
        enableFailureEmail = {
          description = "If true, email notifications will be sent on transfer run failures.",
          type = "boolean",
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
    EnrollDataSourcesRequest = {
      description = "A request to enroll a set of data sources so they are visible in the BigQuery UI's `Transfer` tab.",
      id = "EnrollDataSourcesRequest",
      properties = {
        dataSourceIds = {
          description = "Data sources that are enrolled. It is required to provide at least one data source id.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ListDataSourcesResponse = {
      description = "Returns list of supported data sources and their metadata.",
      id = "ListDataSourcesResponse",
      properties = {
        dataSources = {
          description = "List of supported data sources and their transfer settings.",
          items = {
            ["$ref"] = "DataSource",
          },
          type = "array",
        },
        nextPageToken = {
          description = "Output only. The next-pagination token. For multiple-page list results, this token can be used as the `ListDataSourcesRequest.page_token` to request the next page of list results.",
          readOnly = true,
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
    ListTransferConfigsResponse = {
      description = "The returned list of pipelines in the project.",
      id = "ListTransferConfigsResponse",
      properties = {
        nextPageToken = {
          description = "Output only. The next-pagination token. For multiple-page list results, this token can be used as the `ListTransferConfigsRequest.page_token` to request the next page of list results.",
          readOnly = true,
          type = "string",
        },
        transferConfigs = {
          description = "Output only. The stored pipeline transfer configurations.",
          items = {
            ["$ref"] = "TransferConfig",
          },
          readOnly = true,
          type = "array",
        },
      },
      type = "object",
    },
    ListTransferLogsResponse = {
      description = "The returned list transfer run messages.",
      id = "ListTransferLogsResponse",
      properties = {
        nextPageToken = {
          description = "Output only. The next-pagination token. For multiple-page list results, this token can be used as the `GetTransferRunLogRequest.page_token` to request the next page of list results.",
          readOnly = true,
          type = "string",
        },
        transferMessages = {
          description = "Output only. The stored pipeline transfer messages.",
          items = {
            ["$ref"] = "TransferMessage",
          },
          readOnly = true,
          type = "array",
        },
      },
      type = "object",
    },
    ListTransferRunsResponse = {
      description = "The returned list of pipelines in the project.",
      id = "ListTransferRunsResponse",
      properties = {
        nextPageToken = {
          description = "Output only. The next-pagination token. For multiple-page list results, this token can be used as the `ListTransferRunsRequest.page_token` to request the next page of list results.",
          readOnly = true,
          type = "string",
        },
        transferRuns = {
          description = "Output only. The stored pipeline transfer runs.",
          items = {
            ["$ref"] = "TransferRun",
          },
          readOnly = true,
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
          description = "Cross-service attributes for the location. For example {\"cloud.googleapis.com/region\": \"us-east1\"}",
          type = "object",
        },
        locationId = {
          description = "The canonical id for this location. For example: `\"us-east1\"`.",
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
          description = "Resource name for the location, which may vary between implementations. For example: `\"projects/example-project/locations/us-east1\"`",
          type = "string",
        },
      },
      type = "object",
    },
    ScheduleOptions = {
      description = "Options customizing the data transfer schedule.",
      id = "ScheduleOptions",
      properties = {
        disableAutoScheduling = {
          description = "If true, automatic scheduling of data transfer runs for this configuration will be disabled. The runs can be started on ad-hoc basis using StartManualTransferRuns API. When automatic scheduling is disabled, the TransferConfig.schedule field will be ignored.",
          type = "boolean",
        },
        endTime = {
          description = "Defines time to stop scheduling transfer runs. A transfer run cannot be scheduled at or after the end time. The end time can be changed at any moment. The time when a data transfer can be trigerred manually is not limited by this option.",
          format = "google-datetime",
          type = "string",
        },
        startTime = {
          description = "Specifies time to start scheduling transfer runs. The first run will be scheduled at or after the start time according to a recurrence pattern defined in the schedule string. The start time can be changed at any moment. The time when a data transfer can be trigerred manually is not limited by this option.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    ScheduleTransferRunsRequest = {
      description = "A request to schedule transfer runs for a time range.",
      id = "ScheduleTransferRunsRequest",
      properties = {
        endTime = {
          description = "Required. End time of the range of transfer runs. For example, `\"2017-05-30T00:00:00+00:00\"`.",
          format = "google-datetime",
          type = "string",
        },
        startTime = {
          description = "Required. Start time of the range of transfer runs. For example, `\"2017-05-25T00:00:00+00:00\"`.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    ScheduleTransferRunsResponse = {
      description = "A response to schedule transfer runs for a time range.",
      id = "ScheduleTransferRunsResponse",
      properties = {
        runs = {
          description = "The transfer runs that were scheduled.",
          items = {
            ["$ref"] = "TransferRun",
          },
          type = "array",
        },
      },
      type = "object",
    },
    StartManualTransferRunsRequest = {
      description = "A request to start manual transfer runs.",
      id = "StartManualTransferRunsRequest",
      properties = {
        requestedRunTime = {
          description = "Specific run_time for a transfer run to be started. The requested_run_time must not be in the future.",
          format = "google-datetime",
          type = "string",
        },
        requestedTimeRange = {
          ["$ref"] = "TimeRange",
          description = "Time range for the transfer runs that should be started.",
        },
      },
      type = "object",
    },
    StartManualTransferRunsResponse = {
      description = "A response to start manual transfer runs.",
      id = "StartManualTransferRunsResponse",
      properties = {
        runs = {
          description = "The transfer runs that were created.",
          items = {
            ["$ref"] = "TransferRun",
          },
          type = "array",
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
    TimeRange = {
      description = "A specification for a time range, this will request transfer runs with run_time between start_time (inclusive) and end_time (exclusive).",
      id = "TimeRange",
      properties = {
        endTime = {
          description = "End time of the range of transfer runs. For example, `\"2017-05-30T00:00:00+00:00\"`. The end_time must not be in the future. Creates transfer runs where run_time is in the range between start_time (inclusive) and end_time (exclusive).",
          format = "google-datetime",
          type = "string",
        },
        startTime = {
          description = "Start time of the range of transfer runs. For example, `\"2017-05-25T00:00:00+00:00\"`. The start_time must be strictly less than the end_time. Creates transfer runs where run_time is in the range between start_time (inclusive) and end_time (exclusive).",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    TransferConfig = {
      description = "Represents a data transfer configuration. A transfer configuration contains all metadata needed to perform a data transfer. For example, `destination_dataset_id` specifies where data should be stored. When a new transfer configuration is created, the specified `destination_dataset_id` is created when needed and shared with the appropriate data source service account.",
      id = "TransferConfig",
      properties = {
        dataRefreshWindowDays = {
          description = "The number of days to look back to automatically refresh the data. For example, if `data_refresh_window_days = 10`, then every day BigQuery reingests data for [today-10, today-1], rather than ingesting data for just [today-1]. Only valid if the data source supports the feature. Set the value to 0 to use the default value.",
          format = "int32",
          type = "integer",
        },
        dataSourceId = {
          description = "Data source ID. This cannot be changed once data transfer is created. The full list of available data source IDs can be returned through an API call: https://cloud.google.com/bigquery-transfer/docs/reference/datatransfer/rest/v1/projects.locations.dataSources/list",
          type = "string",
        },
        datasetRegion = {
          description = "Output only. Region in which BigQuery dataset is located.",
          readOnly = true,
          type = "string",
        },
        destinationDatasetId = {
          description = "The BigQuery target dataset id.",
          type = "string",
        },
        disabled = {
          description = "Is this config disabled. When set to true, no runs are scheduled for a given transfer.",
          type = "boolean",
        },
        displayName = {
          description = "User specified display name for the data transfer.",
          type = "string",
        },
        emailPreferences = {
          ["$ref"] = "EmailPreferences",
          description = "Email notifications will be sent according to these preferences to the email address of the user who owns this transfer config.",
        },
        name = {
          description = "The resource name of the transfer config. Transfer config names have the form `projects/{project_id}/locations/{region}/transferConfigs/{config_id}`. Where `config_id` is usually a uuid, even though it is not guaranteed or required. The name is ignored when creating a transfer config.",
          type = "string",
        },
        nextRunTime = {
          description = "Output only. Next time when data transfer will run.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        notificationPubsubTopic = {
          description = "Pub/Sub topic where notifications will be sent after transfer runs associated with this transfer config finish. The format for specifying a pubsub topic is: `projects/{project}/topics/{topic}`",
          type = "string",
        },
        ownerInfo = {
          ["$ref"] = "UserInfo",
          description = "Output only. Information about the user whose credentials are used to transfer data. Populated only for `transferConfigs.get` requests. In case the user information is not available, this field will not be populated.",
          readOnly = true,
        },
        params = {
          additionalProperties = {
            description = "Properties of the object.",
            type = "any",
          },
          description = "Parameters specific to each data source. For more information see the bq tab in the 'Setting up a data transfer' section for each data source. For example the parameters for Cloud Storage transfers are listed here: https://cloud.google.com/bigquery-transfer/docs/cloud-storage-transfer#bq",
          type = "object",
        },
        schedule = {
          description = "Data transfer schedule. If the data source does not support a custom schedule, this should be empty. If it is empty, the default value for the data source will be used. The specified times are in UTC. Examples of valid format: `1st,3rd monday of month 15:30`, `every wed,fri of jan,jun 13:15`, and `first sunday of quarter 00:00`. See more explanation about the format here: https://cloud.google.com/appengine/docs/flexible/python/scheduling-jobs-with-cron-yaml#the_schedule_format NOTE: The minimum interval time between recurring transfers depends on the data source; refer to the documentation for your data source.",
          type = "string",
        },
        scheduleOptions = {
          ["$ref"] = "ScheduleOptions",
          description = "Options customizing the data transfer schedule.",
        },
        state = {
          description = "Output only. State of the most recently updated transfer run.",
          enum = {
            "TRANSFER_STATE_UNSPECIFIED",
            "PENDING",
            "RUNNING",
            "SUCCEEDED",
            "FAILED",
            "CANCELLED",
          },
          enumDescriptions = {
            "State placeholder (0).",
            "Data transfer is scheduled and is waiting to be picked up by data transfer backend (2).",
            "Data transfer is in progress (3).",
            "Data transfer completed successfully (4).",
            "Data transfer failed (5).",
            "Data transfer is cancelled (6).",
          },
          readOnly = true,
          type = "string",
        },
        updateTime = {
          description = "Output only. Data transfer modification time. Ignored by server on input.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        userId = {
          description = "Deprecated. Unique ID of the user on whose behalf transfer is done.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    TransferMessage = {
      description = "Represents a user facing message for a particular data transfer run.",
      id = "TransferMessage",
      properties = {
        messageText = {
          description = "Message text.",
          type = "string",
        },
        messageTime = {
          description = "Time when message was logged.",
          format = "google-datetime",
          type = "string",
        },
        severity = {
          description = "Message severity.",
          enum = {
            "MESSAGE_SEVERITY_UNSPECIFIED",
            "INFO",
            "WARNING",
            "ERROR",
          },
          enumDescriptions = {
            "No severity specified.",
            "Informational message.",
            "Warning message.",
            "Error message.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    TransferRun = {
      description = "Represents a data transfer run.",
      id = "TransferRun",
      properties = {
        dataSourceId = {
          description = "Output only. Data source id.",
          readOnly = true,
          type = "string",
        },
        destinationDatasetId = {
          description = "Output only. The BigQuery target dataset id.",
          readOnly = true,
          type = "string",
        },
        emailPreferences = {
          ["$ref"] = "EmailPreferences",
          description = "Output only. Email notifications will be sent according to these preferences to the email address of the user who owns the transfer config this run was derived from.",
          readOnly = true,
        },
        endTime = {
          description = "Output only. Time when transfer run ended. Parameter ignored by server for input requests.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        errorStatus = {
          ["$ref"] = "Status",
          description = "Status of the transfer run.",
        },
        name = {
          description = "The resource name of the transfer run. Transfer run names have the form `projects/{project_id}/locations/{location}/transferConfigs/{config_id}/runs/{run_id}`. The name is ignored when creating a transfer run.",
          type = "string",
        },
        notificationPubsubTopic = {
          description = "Output only. Pub/Sub topic where a notification will be sent after this transfer run finishes. The format for specifying a pubsub topic is: `projects/{project}/topics/{topic}`",
          readOnly = true,
          type = "string",
        },
        params = {
          additionalProperties = {
            description = "Properties of the object.",
            type = "any",
          },
          description = "Output only. Parameters specific to each data source. For more information see the bq tab in the 'Setting up a data transfer' section for each data source. For example the parameters for Cloud Storage transfers are listed here: https://cloud.google.com/bigquery-transfer/docs/cloud-storage-transfer#bq",
          readOnly = true,
          type = "object",
        },
        runTime = {
          description = "For batch transfer runs, specifies the date and time of the data should be ingested.",
          format = "google-datetime",
          type = "string",
        },
        schedule = {
          description = "Output only. Describes the schedule of this transfer run if it was created as part of a regular schedule. For batch transfer runs that are scheduled manually, this is empty. NOTE: the system might choose to delay the schedule depending on the current load, so `schedule_time` doesn't always match this.",
          readOnly = true,
          type = "string",
        },
        scheduleTime = {
          description = "Minimum time after which a transfer run can be started.",
          format = "google-datetime",
          type = "string",
        },
        startTime = {
          description = "Output only. Time when transfer run was started. Parameter ignored by server for input requests.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        state = {
          description = "Data transfer run state. Ignored for input requests.",
          enum = {
            "TRANSFER_STATE_UNSPECIFIED",
            "PENDING",
            "RUNNING",
            "SUCCEEDED",
            "FAILED",
            "CANCELLED",
          },
          enumDescriptions = {
            "State placeholder (0).",
            "Data transfer is scheduled and is waiting to be picked up by data transfer backend (2).",
            "Data transfer is in progress (3).",
            "Data transfer completed successfully (4).",
            "Data transfer failed (5).",
            "Data transfer is cancelled (6).",
          },
          type = "string",
        },
        updateTime = {
          description = "Output only. Last time the data transfer run state was updated.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        userId = {
          description = "Deprecated. Unique ID of the user on whose behalf transfer is done.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    UserInfo = {
      description = "Information about a user.",
      id = "UserInfo",
      properties = {
        email = {
          description = "E-mail address of the user.",
          type = "string",
        },
      },
      type = "object",
    },
  },
  servicePath = "",
  title = "BigQuery Data Transfer API",
  version = "v1",
  version_module = true,
}
