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
  baseUrl = "https://redis.googleapis.com/",
  batchPath = "batch",
  canonicalName = "Cloud Redis",
  description = "Creates and manages Redis instances on the Google Cloud Platform.",
  discoveryVersion = "v1",
  documentationLink = "https://cloud.google.com/memorystore/docs/redis/",
  fullyEncodeReservedExpansion = true,
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "redis:v1",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://redis.mtls.googleapis.com/",
  name = "redis",
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
      resources = {
        locations = {
          methods = {
            get = {
              description = "Gets information about a location.",
              flatPath = "v1/projects/{projectsId}/locations/{locationsId}",
              httpMethod = "GET",
              id = "redis.projects.locations.get",
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
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            list = {
              description = "Lists information about the supported locations for this service.",
              flatPath = "v1/projects/{projectsId}/locations",
              httpMethod = "GET",
              id = "redis.projects.locations.list",
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
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
          },
          resources = {
            instances = {
              methods = {
                create = {
                  description = "Creates a Redis instance based on the specified tier and memory size. By default, the instance is accessible from the project's [default network](https://cloud.google.com/vpc/docs/vpc). The creation is executed asynchronously and callers may check the returned operation to track its progress. Once the operation is completed the Redis instance will be fully functional. Completed longrunning.Operation will contain the new instance object in the response field. The returned operation is automatically deleted after a few hours, so there is no need to call DeleteOperation.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/instances",
                  httpMethod = "POST",
                  id = "redis.projects.locations.instances.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    instanceId = {
                      description = "Required. The logical name of the Redis instance in the customer project with the following restrictions: * Must contain only lowercase letters, numbers, and hyphens. * Must start with a letter. * Must be between 1-40 characters. * Must end with a number or a letter. * Must be unique within the customer project / location",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The resource name of the instance location using the form: `projects/{project_id}/locations/{location_id}` where `location_id` refers to a GCP region.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/instances",
                  request = {
                    ["$ref"] = "Instance",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                delete = {
                  description = "Deletes a specific Redis instance. Instance stops serving and data is deleted.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/instances/{instancesId}",
                  httpMethod = "DELETE",
                  id = "redis.projects.locations.instances.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Redis instance resource name using the form: `projects/{project_id}/locations/{location_id}/instances/{instance_id}` where `location_id` refers to a GCP region.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/instances/[^/]+$",
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
                  },
                },
                export = {
                  description = "Export Redis instance data into a Redis RDB format file in Cloud Storage. Redis will continue serving during this operation. The returned operation is automatically deleted after a few hours, so there is no need to call DeleteOperation.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/instances/{instancesId}:export",
                  httpMethod = "POST",
                  id = "redis.projects.locations.instances.export",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Redis instance resource name using the form: `projects/{project_id}/locations/{location_id}/instances/{instance_id}` where `location_id` refers to a GCP region.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/instances/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}:export",
                  request = {
                    ["$ref"] = "ExportInstanceRequest",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                failover = {
                  description = "Initiates a failover of the primary node to current replica node for a specific STANDARD tier Cloud Memorystore for Redis instance.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/instances/{instancesId}:failover",
                  httpMethod = "POST",
                  id = "redis.projects.locations.instances.failover",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Redis instance resource name using the form: `projects/{project_id}/locations/{location_id}/instances/{instance_id}` where `location_id` refers to a GCP region.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/instances/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}:failover",
                  request = {
                    ["$ref"] = "FailoverInstanceRequest",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                get = {
                  description = "Gets the details of a specific Redis instance.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/instances/{instancesId}",
                  httpMethod = "GET",
                  id = "redis.projects.locations.instances.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Redis instance resource name using the form: `projects/{project_id}/locations/{location_id}/instances/{instance_id}` where `location_id` refers to a GCP region.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/instances/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "Instance",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                getAuthString = {
                  description = "Gets the AUTH string for a Redis instance. If AUTH is not enabled for the instance the response will be empty. This information is not included in the details returned to GetInstance.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/instances/{instancesId}/authString",
                  httpMethod = "GET",
                  id = "redis.projects.locations.instances.getAuthString",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Redis instance resource name using the form: `projects/{project_id}/locations/{location_id}/instances/{instance_id}` where `location_id` refers to a GCP region.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/instances/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}/authString",
                  response = {
                    ["$ref"] = "InstanceAuthString",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                import = {
                  description = "Import a Redis RDB snapshot file from Cloud Storage into a Redis instance. Redis may stop serving during this operation. Instance state will be IMPORTING for entire operation. When complete, the instance will contain only data from the imported file. The returned operation is automatically deleted after a few hours, so there is no need to call DeleteOperation.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/instances/{instancesId}:import",
                  httpMethod = "POST",
                  id = "redis.projects.locations.instances.import",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Redis instance resource name using the form: `projects/{project_id}/locations/{location_id}/instances/{instance_id}` where `location_id` refers to a GCP region.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/instances/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}:import",
                  request = {
                    ["$ref"] = "ImportInstanceRequest",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                list = {
                  description = "Lists all Redis instances owned by a project in either the specified location (region) or all locations. The location should have the following format: * `projects/{project_id}/locations/{location_id}` If `location_id` is specified as `-` (wildcard), then all regions available to the project are queried, and the results are aggregated.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/instances",
                  httpMethod = "GET",
                  id = "redis.projects.locations.instances.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    pageSize = {
                      description = "The maximum number of items to return. If not specified, a default value of 1000 will be used by the service. Regardless of the page_size value, the response may include a partial list and a caller should only rely on response's `next_page_token` to determine if there are more instances left to be queried.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "The `next_page_token` value returned from a previous ListInstances request, if any.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The resource name of the instance location using the form: `projects/{project_id}/locations/{location_id}` where `location_id` refers to a GCP region.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/instances",
                  response = {
                    ["$ref"] = "ListInstancesResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                patch = {
                  description = "Updates the metadata and configuration of a specific Redis instance. Completed longrunning.Operation will contain the new instance object in the response field. The returned operation is automatically deleted after a few hours, so there is no need to call DeleteOperation.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/instances/{instancesId}",
                  httpMethod = "PATCH",
                  id = "redis.projects.locations.instances.patch",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Unique name of the resource in this scope including project and location using the form: `projects/{project_id}/locations/{location_id}/instances/{instance_id}` Note: Redis instances are managed and addressed at regional level so location_id here refers to a GCP region; however, users may choose which specific zone (or collection of zones for cross-zone instances) an instance should be provisioned in. Refer to location_id and alternative_location_id fields for more details.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/instances/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    updateMask = {
                      description = "Required. Mask of fields to update. At least one path must be supplied in this field. The elements of the repeated paths field may only include these fields from Instance: * `displayName` * `labels` * `memorySizeGb` * `redisConfig` * `replica_count`",
                      format = "google-fieldmask",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  request = {
                    ["$ref"] = "Instance",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                rescheduleMaintenance = {
                  description = "Reschedule maintenance for a given instance in a given project and location.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/instances/{instancesId}:rescheduleMaintenance",
                  httpMethod = "POST",
                  id = "redis.projects.locations.instances.rescheduleMaintenance",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Redis instance resource name using the form: `projects/{project_id}/locations/{location_id}/instances/{instance_id}` where `location_id` refers to a GCP region.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/instances/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}:rescheduleMaintenance",
                  request = {
                    ["$ref"] = "RescheduleMaintenanceRequest",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                upgrade = {
                  description = "Upgrades Redis instance to the newer Redis version specified in the request.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/instances/{instancesId}:upgrade",
                  httpMethod = "POST",
                  id = "redis.projects.locations.instances.upgrade",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Redis instance resource name using the form: `projects/{project_id}/locations/{location_id}/instances/{instance_id}` where `location_id` refers to a GCP region.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/instances/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}:upgrade",
                  request = {
                    ["$ref"] = "UpgradeInstanceRequest",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
              },
            },
            operations = {
              methods = {
                cancel = {
                  description = "Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of 1, corresponding to `Code.CANCELLED`.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/operations/{operationsId}:cancel",
                  httpMethod = "POST",
                  id = "redis.projects.locations.operations.cancel",
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
                  path = "v1/{+name}:cancel",
                  response = {
                    ["$ref"] = "Empty",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                delete = {
                  description = "Deletes a long-running operation. This method indicates that the client is no longer interested in the operation result. It does not cancel the operation. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/operations/{operationsId}",
                  httpMethod = "DELETE",
                  id = "redis.projects.locations.operations.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "The name of the operation resource to be deleted.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/operations/[^/]+$",
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
                  },
                },
                get = {
                  description = "Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/operations/{operationsId}",
                  httpMethod = "GET",
                  id = "redis.projects.locations.operations.get",
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
                  },
                },
                list = {
                  description = "Lists operations that match the specified filter in the request. If the server doesn't support this method, it returns `UNIMPLEMENTED`. NOTE: the `name` binding allows API services to override the binding to use different resource name schemes, such as `users/*/operations`. To override the binding, API services can add a binding such as `\"/v1/{name=users/*}/operations\"` to their service configuration. For backwards compatibility, the default name includes the operations collection id, however overriding users must ensure the name binding is the parent resource, without the operations collection id.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/operations",
                  httpMethod = "GET",
                  id = "redis.projects.locations.operations.list",
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
                  path = "v1/{+name}/operations",
                  response = {
                    ["$ref"] = "ListOperationsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
              },
            },
          },
        },
      },
    },
  },
  revision = "20230111",
  rootUrl = "https://redis.googleapis.com/",
  schemas = {
    Empty = {
      description = "A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }",
      id = "Empty",
      properties = {},
      type = "object",
    },
    ExportInstanceRequest = {
      description = "Request for Export.",
      id = "ExportInstanceRequest",
      properties = {
        outputConfig = {
          ["$ref"] = "OutputConfig",
          description = "Required. Specify data to be exported.",
        },
      },
      type = "object",
    },
    FailoverInstanceRequest = {
      description = "Request for Failover.",
      id = "FailoverInstanceRequest",
      properties = {
        dataProtectionMode = {
          description = "Optional. Available data protection modes that the user can choose. If it's unspecified, data protection mode will be LIMITED_DATA_LOSS by default.",
          enum = {
            "DATA_PROTECTION_MODE_UNSPECIFIED",
            "LIMITED_DATA_LOSS",
            "FORCE_DATA_LOSS",
          },
          enumDescriptions = {
            "Defaults to LIMITED_DATA_LOSS if a data protection mode is not specified.",
            "Instance failover will be protected with data loss control. More specifically, the failover will only be performed if the current replication offset diff between primary and replica is under a certain threshold.",
            "Instance failover will be performed without data loss control.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GcsDestination = {
      description = "The Cloud Storage location for the output content",
      id = "GcsDestination",
      properties = {
        uri = {
          description = "Required. Data destination URI (e.g. 'gs://my_bucket/my_object'). Existing files will be overwritten.",
          type = "string",
        },
      },
      type = "object",
    },
    GcsSource = {
      description = "The Cloud Storage location for the input content",
      id = "GcsSource",
      properties = {
        uri = {
          description = "Required. Source data URI. (e.g. 'gs://my_bucket/my_object').",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudRedisV1LocationMetadata = {
      description = "This location metadata represents additional configuration options for a given location where a Redis instance may be created. All fields are output only. It is returned as content of the `google.cloud.location.Location.metadata` field.",
      id = "GoogleCloudRedisV1LocationMetadata",
      properties = {
        availableZones = {
          additionalProperties = {
            ["$ref"] = "GoogleCloudRedisV1ZoneMetadata",
          },
          description = "Output only. The set of available zones in the location. The map is keyed by the lowercase ID of each zone, as defined by GCE. These keys can be specified in `location_id` or `alternative_location_id` fields when creating a Redis instance.",
          readOnly = true,
          type = "object",
        },
      },
      type = "object",
    },
    GoogleCloudRedisV1OperationMetadata = {
      description = "Represents the v1 metadata of the long-running operation.",
      id = "GoogleCloudRedisV1OperationMetadata",
      properties = {
        apiVersion = {
          description = "API version.",
          type = "string",
        },
        cancelRequested = {
          description = "Specifies if cancellation was requested for the operation.",
          type = "boolean",
        },
        createTime = {
          description = "Creation timestamp.",
          format = "google-datetime",
          type = "string",
        },
        endTime = {
          description = "End timestamp.",
          format = "google-datetime",
          type = "string",
        },
        statusDetail = {
          description = "Operation status details.",
          type = "string",
        },
        target = {
          description = "Operation target.",
          type = "string",
        },
        verb = {
          description = "Operation verb.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudRedisV1ZoneMetadata = {
      description = "Defines specific information for a particular zone. Currently empty and reserved for future use only.",
      id = "GoogleCloudRedisV1ZoneMetadata",
      properties = {},
      type = "object",
    },
    ImportInstanceRequest = {
      description = "Request for Import.",
      id = "ImportInstanceRequest",
      properties = {
        inputConfig = {
          ["$ref"] = "InputConfig",
          description = "Required. Specify data to be imported.",
        },
      },
      type = "object",
    },
    InputConfig = {
      description = "The input content",
      id = "InputConfig",
      properties = {
        gcsSource = {
          ["$ref"] = "GcsSource",
          description = "Google Cloud Storage location where input content is located.",
        },
      },
      type = "object",
    },
    Instance = {
      description = "A Memorystore for Redis instance.",
      id = "Instance",
      properties = {
        alternativeLocationId = {
          description = "Optional. If specified, at least one node will be provisioned in this zone in addition to the zone specified in location_id. Only applicable to standard tier. If provided, it must be a different zone from the one provided in [location_id]. Additional nodes beyond the first 2 will be placed in zones selected by the service.",
          type = "string",
        },
        authEnabled = {
          description = "Optional. Indicates whether OSS Redis AUTH is enabled for the instance. If set to \"true\" AUTH is enabled on the instance. Default value is \"false\" meaning AUTH is disabled.",
          type = "boolean",
        },
        authorizedNetwork = {
          description = "Optional. The full name of the Google Compute Engine [network](https://cloud.google.com/vpc/docs/vpc) to which the instance is connected. If left unspecified, the `default` network will be used.",
          type = "string",
        },
        connectMode = {
          description = "Optional. The network connect mode of the Redis instance. If not provided, the connect mode defaults to DIRECT_PEERING.",
          enum = {
            "CONNECT_MODE_UNSPECIFIED",
            "DIRECT_PEERING",
            "PRIVATE_SERVICE_ACCESS",
          },
          enumDescriptions = {
            "Not set.",
            "Connect via direct peering to the Memorystore for Redis hosted service.",
            "Connect your Memorystore for Redis instance using Private Service Access. Private services access provides an IP address range for multiple Google Cloud services, including Memorystore.",
          },
          type = "string",
        },
        createTime = {
          description = "Output only. The time the instance was created.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        currentLocationId = {
          description = "Output only. The current zone where the Redis primary node is located. In basic tier, this will always be the same as [location_id]. In standard tier, this can be the zone of any node in the instance.",
          readOnly = true,
          type = "string",
        },
        customerManagedKey = {
          description = "Optional. The KMS key reference that the customer provides when trying to create the instance.",
          type = "string",
        },
        displayName = {
          description = "An arbitrary and optional user-provided name for the instance.",
          type = "string",
        },
        host = {
          description = "Output only. Hostname or IP address of the exposed Redis endpoint used by clients to connect to the service.",
          readOnly = true,
          type = "string",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "Resource labels to represent user provided metadata",
          type = "object",
        },
        locationId = {
          description = "Optional. The zone where the instance will be provisioned. If not provided, the service will choose a zone from the specified region for the instance. For standard tier, additional nodes will be added across multiple zones for protection against zonal failures. If specified, at least one node will be provisioned in this zone.",
          type = "string",
        },
        maintenancePolicy = {
          ["$ref"] = "MaintenancePolicy",
          description = "Optional. The maintenance policy for the instance. If not provided, maintenance events can be performed at any time.",
        },
        maintenanceSchedule = {
          ["$ref"] = "MaintenanceSchedule",
          description = "Output only. Date and time of upcoming maintenance events which have been scheduled.",
          readOnly = true,
        },
        memorySizeGb = {
          description = "Required. Redis memory size in GiB.",
          format = "int32",
          type = "integer",
        },
        name = {
          description = "Required. Unique name of the resource in this scope including project and location using the form: `projects/{project_id}/locations/{location_id}/instances/{instance_id}` Note: Redis instances are managed and addressed at regional level so location_id here refers to a GCP region; however, users may choose which specific zone (or collection of zones for cross-zone instances) an instance should be provisioned in. Refer to location_id and alternative_location_id fields for more details.",
          type = "string",
        },
        nodes = {
          description = "Output only. Info per node.",
          items = {
            ["$ref"] = "NodeInfo",
          },
          readOnly = true,
          type = "array",
        },
        persistenceConfig = {
          ["$ref"] = "PersistenceConfig",
          description = "Optional. Persistence configuration parameters",
        },
        persistenceIamIdentity = {
          description = "Output only. Cloud IAM identity used by import / export operations to transfer data to/from Cloud Storage. Format is \"serviceAccount:\". The value may change over time for a given instance so should be checked before each import/export operation.",
          readOnly = true,
          type = "string",
        },
        port = {
          description = "Output only. The port number of the exposed Redis endpoint.",
          format = "int32",
          readOnly = true,
          type = "integer",
        },
        readEndpoint = {
          description = "Output only. Hostname or IP address of the exposed readonly Redis endpoint. Standard tier only. Targets all healthy replica nodes in instance. Replication is asynchronous and replica nodes will exhibit some lag behind the primary. Write requests must target 'host'.",
          readOnly = true,
          type = "string",
        },
        readEndpointPort = {
          description = "Output only. The port number of the exposed readonly redis endpoint. Standard tier only. Write requests should target 'port'.",
          format = "int32",
          readOnly = true,
          type = "integer",
        },
        readReplicasMode = {
          description = "Optional. Read replicas mode for the instance. Defaults to READ_REPLICAS_DISABLED.",
          enum = {
            "READ_REPLICAS_MODE_UNSPECIFIED",
            "READ_REPLICAS_DISABLED",
            "READ_REPLICAS_ENABLED",
          },
          enumDescriptions = {
            "If not set, Memorystore Redis backend will default to READ_REPLICAS_DISABLED.",
            "If disabled, read endpoint will not be provided and the instance cannot scale up or down the number of replicas.",
            "If enabled, read endpoint will be provided and the instance can scale up and down the number of replicas. Not valid for basic tier.",
          },
          type = "string",
        },
        redisConfigs = {
          additionalProperties = {
            type = "string",
          },
          description = "Optional. Redis configuration parameters, according to http://redis.io/topics/config. Currently, the only supported parameters are: Redis version 3.2 and newer: * maxmemory-policy * notify-keyspace-events Redis version 4.0 and newer: * activedefrag * lfu-decay-time * lfu-log-factor * maxmemory-gb Redis version 5.0 and newer: * stream-node-max-bytes * stream-node-max-entries",
          type = "object",
        },
        redisVersion = {
          description = "Optional. The version of Redis software. If not provided, latest supported version will be used. Currently, the supported values are: * `REDIS_3_2` for Redis 3.2 compatibility * `REDIS_4_0` for Redis 4.0 compatibility (default) * `REDIS_5_0` for Redis 5.0 compatibility * `REDIS_6_X` for Redis 6.x compatibility",
          type = "string",
        },
        replicaCount = {
          description = "Optional. The number of replica nodes. The valid range for the Standard Tier with read replicas enabled is [1-5] and defaults to 2. If read replicas are not enabled for a Standard Tier instance, the only valid value is 1 and the default is 1. The valid value for basic tier is 0 and the default is also 0.",
          format = "int32",
          type = "integer",
        },
        reservedIpRange = {
          description = "Optional. For DIRECT_PEERING mode, the CIDR range of internal addresses that are reserved for this instance. Range must be unique and non-overlapping with existing subnets in an authorized network. For PRIVATE_SERVICE_ACCESS mode, the name of one allocated IP address ranges associated with this private service access connection. If not provided, the service will choose an unused /29 block, for example, 10.0.0.0/29 or 192.168.0.0/29. For READ_REPLICAS_ENABLED the default block size is /28.",
          type = "string",
        },
        secondaryIpRange = {
          description = "Optional. Additional IP range for node placement. Required when enabling read replicas on an existing instance. For DIRECT_PEERING mode value must be a CIDR range of size /28, or \"auto\". For PRIVATE_SERVICE_ACCESS mode value must be the name of an allocated address range associated with the private service access connection, or \"auto\".",
          type = "string",
        },
        serverCaCerts = {
          description = "Output only. List of server CA certificates for the instance.",
          items = {
            ["$ref"] = "TlsCertificate",
          },
          readOnly = true,
          type = "array",
        },
        state = {
          description = "Output only. The current state of this instance.",
          enum = {
            "STATE_UNSPECIFIED",
            "CREATING",
            "READY",
            "UPDATING",
            "DELETING",
            "REPAIRING",
            "MAINTENANCE",
            "IMPORTING",
            "FAILING_OVER",
          },
          enumDescriptions = {
            "Not set.",
            "Redis instance is being created.",
            "Redis instance has been created and is fully usable.",
            "Redis instance configuration is being updated. Certain kinds of updates may cause the instance to become unusable while the update is in progress.",
            "Redis instance is being deleted.",
            "Redis instance is being repaired and may be unusable.",
            "Maintenance is being performed on this Redis instance.",
            "Redis instance is importing data (availability may be affected).",
            "Redis instance is failing over (availability may be affected).",
          },
          readOnly = true,
          type = "string",
        },
        statusMessage = {
          description = "Output only. Additional information about the current status of this instance, if available.",
          readOnly = true,
          type = "string",
        },
        suspensionReasons = {
          description = "Optional. reasons that causes instance in \"SUSPENDED\" state.",
          items = {
            enum = {
              "SUSPENSION_REASON_UNSPECIFIED",
              "CUSTOMER_MANAGED_KEY_ISSUE",
            },
            enumDescriptions = {
              "Not set.",
              "Something wrong with the CMEK key provided by customer.",
            },
            type = "string",
          },
          type = "array",
        },
        tier = {
          description = "Required. The service tier of the instance.",
          enum = {
            "TIER_UNSPECIFIED",
            "BASIC",
            "STANDARD_HA",
          },
          enumDescriptions = {
            "Not set.",
            "BASIC tier: standalone instance",
            "STANDARD_HA tier: highly available primary/replica instances",
          },
          type = "string",
        },
        transitEncryptionMode = {
          description = "Optional. The TLS mode of the Redis instance. If not provided, TLS is disabled for the instance.",
          enum = {
            "TRANSIT_ENCRYPTION_MODE_UNSPECIFIED",
            "SERVER_AUTHENTICATION",
            "DISABLED",
          },
          enumDescriptions = {
            "Not set.",
            "Client to Server traffic encryption enabled with server authentication.",
            "TLS is disabled for the instance.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    InstanceAuthString = {
      description = "Instance AUTH string details.",
      id = "InstanceAuthString",
      properties = {
        authString = {
          description = "AUTH string set on the instance.",
          type = "string",
        },
      },
      type = "object",
    },
    ListInstancesResponse = {
      description = "Response for ListInstances.",
      id = "ListInstancesResponse",
      properties = {
        instances = {
          description = "A list of Redis instances in the project in the specified location, or across all locations. If the `location_id` in the parent field of the request is \"-\", all regions available to the project are queried, and the results aggregated. If in such an aggregated query a location is unavailable, a placeholder Redis entry is included in the response with the `name` field set to a value of the form `projects/{project_id}/locations/{location_id}/instances/`- and the `status` field set to ERROR and `status_message` field set to \"location not available for ListInstances\".",
          items = {
            ["$ref"] = "Instance",
          },
          type = "array",
        },
        nextPageToken = {
          description = "Token to retrieve the next page of results, or empty if there are no more results in the list.",
          type = "string",
        },
        unreachable = {
          description = "Locations that could not be reached.",
          items = {
            type = "string",
          },
          type = "array",
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
          description = "Resource ID for the region. For example: \"us-east1\".",
          type = "string",
        },
        metadata = {
          additionalProperties = {
            description = "Properties of the object. Contains field @type with type URL.",
            type = "any",
          },
          description = "Output only. The set of available zones in the location. The map is keyed by the lowercase ID of each zone, as defined by Compute Engine. These keys can be specified in `location_id` or `alternative_location_id` fields when creating a Redis instance.",
          type = "object",
        },
        name = {
          description = "Full resource name for the region. For example: \"projects/example-project/locations/us-east1\".",
          type = "string",
        },
      },
      type = "object",
    },
    MaintenancePolicy = {
      description = "Maintenance policy for an instance.",
      id = "MaintenancePolicy",
      properties = {
        createTime = {
          description = "Output only. The time when the policy was created.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        description = {
          description = "Optional. Description of what this policy is for. Create/Update methods return INVALID_ARGUMENT if the length is greater than 512.",
          type = "string",
        },
        updateTime = {
          description = "Output only. The time when the policy was last updated.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        weeklyMaintenanceWindow = {
          description = "Optional. Maintenance window that is applied to resources covered by this policy. Minimum 1. For the current version, the maximum number of weekly_window is expected to be one.",
          items = {
            ["$ref"] = "WeeklyMaintenanceWindow",
          },
          type = "array",
        },
      },
      type = "object",
    },
    MaintenanceSchedule = {
      description = "Upcoming maintenance schedule. If no maintenance is scheduled, fields are not populated.",
      id = "MaintenanceSchedule",
      properties = {
        canReschedule = {
          description = "If the scheduled maintenance can be rescheduled, default is true.",
          type = "boolean",
        },
        endTime = {
          description = "Output only. The end time of any upcoming scheduled maintenance for this instance.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        scheduleDeadlineTime = {
          description = "Output only. The deadline that the maintenance schedule start time can not go beyond, including reschedule.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        startTime = {
          description = "Output only. The start time of any upcoming scheduled maintenance for this instance.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    NodeInfo = {
      description = "Node specific properties.",
      id = "NodeInfo",
      properties = {
        id = {
          description = "Output only. Node identifying string. e.g. 'node-0', 'node-1'",
          readOnly = true,
          type = "string",
        },
        zone = {
          description = "Output only. Location of the node.",
          readOnly = true,
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
          description = "{ `createTime`: The time the operation was created. `endTime`: The time the operation finished running. `target`: Server-defined resource path for the target of the operation. `verb`: Name of the verb executed by the operation. `statusDetail`: Human-readable status of the operation, if any. `cancelRequested`: Identifies whether the user has requested cancellation of the operation. Operations that have successfully been cancelled have Operation.error value with a google.rpc.Status.code of 1, corresponding to `Code.CANCELLED`. `apiVersion`: API version used to start the operation. }",
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
    OutputConfig = {
      description = "The output content",
      id = "OutputConfig",
      properties = {
        gcsDestination = {
          ["$ref"] = "GcsDestination",
          description = "Google Cloud Storage destination for output content.",
        },
      },
      type = "object",
    },
    PersistenceConfig = {
      description = "Configuration of the persistence functionality.",
      id = "PersistenceConfig",
      properties = {
        persistenceMode = {
          description = "Optional. Controls whether Persistence features are enabled. If not provided, the existing value will be used.",
          enum = {
            "PERSISTENCE_MODE_UNSPECIFIED",
            "DISABLED",
            "RDB",
          },
          enumDescriptions = {
            "Not set.",
            "Persistence is disabled for the instance, and any existing snapshots are deleted.",
            "RDB based Persistence is enabled.",
          },
          type = "string",
        },
        rdbNextSnapshotTime = {
          description = "Output only. The next time that a snapshot attempt is scheduled to occur.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        rdbSnapshotPeriod = {
          description = "Optional. Period between RDB snapshots. Snapshots will be attempted every period starting from the provided snapshot start time. For example, a start time of 01/01/2033 06:45 and SIX_HOURS snapshot period will do nothing until 01/01/2033, and then trigger snapshots every day at 06:45, 12:45, 18:45, and 00:45 the next day, and so on. If not provided, TWENTY_FOUR_HOURS will be used as default.",
          enum = {
            "SNAPSHOT_PERIOD_UNSPECIFIED",
            "ONE_HOUR",
            "SIX_HOURS",
            "TWELVE_HOURS",
            "TWENTY_FOUR_HOURS",
          },
          enumDescriptions = {
            "Not set.",
            "Snapshot every 1 hour.",
            "Snapshot every 6 hours.",
            "Snapshot every 12 hours.",
            "Snapshot every 24 hours.",
          },
          type = "string",
        },
        rdbSnapshotStartTime = {
          description = "Optional. Date and time that the first snapshot was/will be attempted, and to which future snapshots will be aligned. If not provided, the current time will be used.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    ReconciliationOperationMetadata = {
      description = "Operation metadata returned by the CLH during resource state reconciliation.",
      id = "ReconciliationOperationMetadata",
      properties = {
        deleteResource = {
          description = "DEPRECATED. Use exclusive_action instead.",
          type = "boolean",
        },
        exclusiveAction = {
          description = "Excluisive action returned by the CLH.",
          enum = {
            "UNKNOWN_REPAIR_ACTION",
            "DELETE",
            "RETRY",
          },
          enumDescriptions = {
            "Unknown repair action.",
            "The resource has to be deleted. When using this bit, the CLH should fail the operation. DEPRECATED. Instead use DELETE_RESOURCE OperationSignal in SideChannel. For more information - go/ccfe-delete-on-upsert, go/ccfe-reconciliation-protocol-ug#apply_delete",
            "This resource could not be repaired but the repair should be tried again at a later time. This can happen if there is a dependency that needs to be resolved first- e.g. if a parent resource must be repaired before a child resource.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    RescheduleMaintenanceRequest = {
      description = "Request for RescheduleMaintenance.",
      id = "RescheduleMaintenanceRequest",
      properties = {
        rescheduleType = {
          description = "Required. If reschedule type is SPECIFIC_TIME, must set up schedule_time as well.",
          enum = {
            "RESCHEDULE_TYPE_UNSPECIFIED",
            "IMMEDIATE",
            "NEXT_AVAILABLE_WINDOW",
            "SPECIFIC_TIME",
          },
          enumDescriptions = {
            "Not set.",
            "If the user wants to schedule the maintenance to happen now.",
            "If the user wants to use the existing maintenance policy to find the next available window.",
            "If the user wants to reschedule the maintenance to a specific time.",
          },
          type = "string",
        },
        scheduleTime = {
          description = "Optional. Timestamp when the maintenance shall be rescheduled to if reschedule_type=SPECIFIC_TIME, in RFC 3339 format, for example `2012-11-15T16:19:00.094Z`.",
          format = "google-datetime",
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
    TimeOfDay = {
      description = "Represents a time of day. The date and time zone are either not significant or are specified elsewhere. An API may choose to allow leap seconds. Related types are google.type.Date and `google.protobuf.Timestamp`.",
      id = "TimeOfDay",
      properties = {
        hours = {
          description = "Hours of day in 24 hour format. Should be from 0 to 23. An API may choose to allow the value \"24:00:00\" for scenarios like business closing time.",
          format = "int32",
          type = "integer",
        },
        minutes = {
          description = "Minutes of hour of day. Must be from 0 to 59.",
          format = "int32",
          type = "integer",
        },
        nanos = {
          description = "Fractions of seconds in nanoseconds. Must be from 0 to 999,999,999.",
          format = "int32",
          type = "integer",
        },
        seconds = {
          description = "Seconds of minutes of the time. Must normally be from 0 to 59. An API may allow the value 60 if it allows leap-seconds.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    TlsCertificate = {
      description = "TlsCertificate Resource",
      id = "TlsCertificate",
      properties = {
        cert = {
          description = "PEM representation.",
          type = "string",
        },
        createTime = {
          description = "Output only. The time when the certificate was created in [RFC 3339](https://tools.ietf.org/html/rfc3339) format, for example `2020-05-18T00:00:00.094Z`.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        expireTime = {
          description = "Output only. The time when the certificate expires in [RFC 3339](https://tools.ietf.org/html/rfc3339) format, for example `2020-05-18T00:00:00.094Z`.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        serialNumber = {
          description = "Serial number, as extracted from the certificate.",
          type = "string",
        },
        sha1Fingerprint = {
          description = "Sha1 Fingerprint of the certificate.",
          type = "string",
        },
      },
      type = "object",
    },
    UpgradeInstanceRequest = {
      description = "Request for UpgradeInstance.",
      id = "UpgradeInstanceRequest",
      properties = {
        redisVersion = {
          description = "Required. Specifies the target version of Redis software to upgrade to.",
          type = "string",
        },
      },
      type = "object",
    },
    WeeklyMaintenanceWindow = {
      description = "Time window in which disruptive maintenance updates occur. Non-disruptive updates can occur inside or outside this window.",
      id = "WeeklyMaintenanceWindow",
      properties = {
        day = {
          description = "Required. The day of week that maintenance updates occur.",
          enum = {
            "DAY_OF_WEEK_UNSPECIFIED",
            "MONDAY",
            "TUESDAY",
            "WEDNESDAY",
            "THURSDAY",
            "FRIDAY",
            "SATURDAY",
            "SUNDAY",
          },
          enumDescriptions = {
            "The day of the week is unspecified.",
            "Monday",
            "Tuesday",
            "Wednesday",
            "Thursday",
            "Friday",
            "Saturday",
            "Sunday",
          },
          type = "string",
        },
        duration = {
          description = "Output only. Duration of the maintenance window. The current window is fixed at 1 hour.",
          format = "google-duration",
          readOnly = true,
          type = "string",
        },
        startTime = {
          ["$ref"] = "TimeOfDay",
          description = "Required. Start time of the window in UTC time.",
        },
      },
      type = "object",
    },
  },
  servicePath = "",
  title = "Google Cloud Memorystore for Redis API",
  version = "v1",
  version_module = true,
}
