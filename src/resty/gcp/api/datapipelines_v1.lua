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
  baseUrl = "https://datapipelines.googleapis.com/",
  batchPath = "batch",
  canonicalName = "Datapipelines",
  description = "Data Pipelines provides an interface for creating, updating, and managing recurring Data Analytics jobs.",
  discoveryVersion = "v1",
  documentationLink = "https://cloud.google.com/dataflow/docs/guides/data-pipelines",
  fullyEncodeReservedExpansion = true,
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "datapipelines:v1",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://datapipelines.mtls.googleapis.com/",
  name = "datapipelines",
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
          resources = {
            pipelines = {
              methods = {
                create = {
                  description = "Creates a pipeline. For a batch pipeline, you can pass scheduler information. Data Pipelines uses the scheduler information to create an internal scheduler that runs jobs periodically. If the internal scheduler is not configured, you can use RunPipeline to run jobs.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/pipelines",
                  httpMethod = "POST",
                  id = "datapipelines.projects.locations.pipelines.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    parent = {
                      description = "Required. The location name. For example: `projects/PROJECT_ID/locations/LOCATION_ID`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/pipelines",
                  request = {
                    ["$ref"] = "GoogleCloudDatapipelinesV1Pipeline",
                  },
                  response = {
                    ["$ref"] = "GoogleCloudDatapipelinesV1Pipeline",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                delete = {
                  description = "Deletes a pipeline. If a scheduler job is attached to the pipeline, it will be deleted.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/pipelines/{pipelinesId}",
                  httpMethod = "DELETE",
                  id = "datapipelines.projects.locations.pipelines.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The pipeline name. For example: `projects/PROJECT_ID/locations/LOCATION_ID/pipelines/PIPELINE_ID`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/pipelines/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "GoogleProtobufEmpty",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                get = {
                  description = "Looks up a single pipeline. Returns a \"NOT_FOUND\" error if no such pipeline exists. Returns a \"FORBIDDEN\" error if the caller doesn't have permission to access it.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/pipelines/{pipelinesId}",
                  httpMethod = "GET",
                  id = "datapipelines.projects.locations.pipelines.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The pipeline name. For example: `projects/PROJECT_ID/locations/LOCATION_ID/pipelines/PIPELINE_ID`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/pipelines/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "GoogleCloudDatapipelinesV1Pipeline",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                list = {
                  description = "Lists pipelines. Returns a \"FORBIDDEN\" error if the caller doesn't have permission to access it.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/pipelines",
                  httpMethod = "GET",
                  id = "datapipelines.projects.locations.pipelines.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    filter = {
                      description = "An expression for filtering the results of the request. If unspecified, all pipelines will be returned. Multiple filters can be applied and must be comma separated. Fields eligible for filtering are: + `type`: The type of the pipeline (streaming or batch). Allowed values are `ALL`, `BATCH`, and `STREAMING`. + `status`: The activity status of the pipeline. Allowed values are `ALL`, `ACTIVE`, `ARCHIVED`, and `PAUSED`. For example, to limit results to active batch processing pipelines: type:BATCH,status:ACTIVE",
                      location = "query",
                      type = "string",
                    },
                    pageSize = {
                      description = "The maximum number of entities to return. The service may return fewer than this value, even if there are additional pages. If unspecified, the max limit is yet to be determined by the backend implementation.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "A page token, received from a previous `ListPipelines` call. Provide this to retrieve the subsequent page. When paginating, all other parameters provided to `ListPipelines` must match the call that provided the page token.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The location name. For example: `projects/PROJECT_ID/locations/LOCATION_ID`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/pipelines",
                  response = {
                    ["$ref"] = "GoogleCloudDatapipelinesV1ListPipelinesResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                patch = {
                  description = "Updates a pipeline. If successful, the updated Pipeline is returned. Returns `NOT_FOUND` if the pipeline doesn't exist. If UpdatePipeline does not return successfully, you can retry the UpdatePipeline request until you receive a successful response.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/pipelines/{pipelinesId}",
                  httpMethod = "PATCH",
                  id = "datapipelines.projects.locations.pipelines.patch",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "The pipeline name. For example: `projects/PROJECT_ID/locations/LOCATION_ID/pipelines/PIPELINE_ID`. * `PROJECT_ID` can contain letters ([A-Za-z]), numbers ([0-9]), hyphens (-), colons (:), and periods (.). For more information, see [Identifying projects](https://cloud.google.com/resource-manager/docs/creating-managing-projects#identifying_projects). * `LOCATION_ID` is the canonical ID for the pipeline's location. The list of available locations can be obtained by calling `google.cloud.location.Locations.ListLocations`. Note that the Data Pipelines service is not available in all regions. It depends on Cloud Scheduler, an App Engine application, so it's only available in [App Engine regions](https://cloud.google.com/about/locations#region). * `PIPELINE_ID` is the ID of the pipeline. Must be unique for the selected project and location.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/pipelines/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    updateMask = {
                      description = "The list of fields to be updated.",
                      format = "google-fieldmask",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  request = {
                    ["$ref"] = "GoogleCloudDatapipelinesV1Pipeline",
                  },
                  response = {
                    ["$ref"] = "GoogleCloudDatapipelinesV1Pipeline",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                run = {
                  description = "Creates a job for the specified pipeline directly. You can use this method when the internal scheduler is not configured and you want to trigger the job directly or through an external system. Returns a \"NOT_FOUND\" error if the pipeline doesn't exist. Returns a \"FORBIDDEN\" error if the user doesn't have permission to access the pipeline or run jobs for the pipeline.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/pipelines/{pipelinesId}:run",
                  httpMethod = "POST",
                  id = "datapipelines.projects.locations.pipelines.run",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The pipeline name. For example: `projects/PROJECT_ID/locations/LOCATION_ID/pipelines/PIPELINE_ID`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/pipelines/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}:run",
                  request = {
                    ["$ref"] = "GoogleCloudDatapipelinesV1RunPipelineRequest",
                  },
                  response = {
                    ["$ref"] = "GoogleCloudDatapipelinesV1RunPipelineResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                stop = {
                  description = "Freezes pipeline execution permanently. If there's a corresponding scheduler entry, it's deleted, and the pipeline state is changed to \"ARCHIVED\". However, pipeline metadata is retained.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/pipelines/{pipelinesId}:stop",
                  httpMethod = "POST",
                  id = "datapipelines.projects.locations.pipelines.stop",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The pipeline name. For example: `projects/PROJECT_ID/locations/LOCATION_ID/pipelines/PIPELINE_ID`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/pipelines/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}:stop",
                  request = {
                    ["$ref"] = "GoogleCloudDatapipelinesV1StopPipelineRequest",
                  },
                  response = {
                    ["$ref"] = "GoogleCloudDatapipelinesV1Pipeline",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
              },
              resources = {
                jobs = {
                  methods = {
                    list = {
                      description = "Lists jobs for a given pipeline. Throws a \"FORBIDDEN\" error if the caller doesn't have permission to access it.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/pipelines/{pipelinesId}/jobs",
                      httpMethod = "GET",
                      id = "datapipelines.projects.locations.pipelines.jobs.list",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        pageSize = {
                          description = "The maximum number of entities to return. The service may return fewer than this value, even if there are additional pages. If unspecified, the max limit will be determined by the backend implementation.",
                          format = "int32",
                          location = "query",
                          type = "integer",
                        },
                        pageToken = {
                          description = "A page token, received from a previous `ListJobs` call. Provide this to retrieve the subsequent page. When paginating, all other parameters provided to `ListJobs` must match the call that provided the page token.",
                          location = "query",
                          type = "string",
                        },
                        parent = {
                          description = "Required. The pipeline name. For example: `projects/PROJECT_ID/locations/LOCATION_ID/pipelines/PIPELINE_ID`.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/pipelines/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/jobs",
                      response = {
                        ["$ref"] = "GoogleCloudDatapipelinesV1ListJobsResponse",
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
    },
  },
  revision = "20230108",
  rootUrl = "https://datapipelines.googleapis.com/",
  schemas = {
    GoogleCloudDatapipelinesV1DataflowJobDetails = {
      description = "Pipeline job details specific to the Dataflow API. This is encapsulated here to allow for more executors to store their specific details separately.",
      id = "GoogleCloudDatapipelinesV1DataflowJobDetails",
      properties = {
        currentWorkers = {
          description = "Output only. The current number of workers used to run the jobs. Only set to a value if the job is still running.",
          format = "int32",
          readOnly = true,
          type = "integer",
        },
        resourceInfo = {
          additionalProperties = {
            format = "double",
            type = "number",
          },
          description = "Cached version of all the metrics of interest for the job. This value gets stored here when the job is terminated. As long as the job is running, this field is populated from the Dataflow API.",
          type = "object",
        },
        sdkVersion = {
          ["$ref"] = "GoogleCloudDatapipelinesV1SdkVersion",
          description = "Output only. The SDK version used to run the job.",
          readOnly = true,
        },
      },
      type = "object",
    },
    GoogleCloudDatapipelinesV1FlexTemplateRuntimeEnvironment = {
      description = "The environment values to be set at runtime for a Flex Template.",
      id = "GoogleCloudDatapipelinesV1FlexTemplateRuntimeEnvironment",
      properties = {
        additionalExperiments = {
          description = "Additional experiment flags for the job.",
          items = {
            type = "string",
          },
          type = "array",
        },
        additionalUserLabels = {
          additionalProperties = {
            type = "string",
          },
          description = "Additional user labels to be specified for the job. Keys and values must follow the restrictions specified in the [labeling restrictions](https://cloud.google.com/compute/docs/labeling-resources#restrictions). An object containing a list of key/value pairs. Example: `{ \"name\": \"wrench\", \"mass\": \"1kg\", \"count\": \"3\" }`.",
          type = "object",
        },
        enableStreamingEngine = {
          description = "Whether to enable Streaming Engine for the job.",
          type = "boolean",
        },
        flexrsGoal = {
          description = "Set FlexRS goal for the job. https://cloud.google.com/dataflow/docs/guides/flexrs",
          enum = {
            "FLEXRS_UNSPECIFIED",
            "FLEXRS_SPEED_OPTIMIZED",
            "FLEXRS_COST_OPTIMIZED",
          },
          enumDescriptions = {
            "Run in the default mode.",
            "Optimize for lower execution time.",
            "Optimize for lower cost.",
          },
          type = "string",
        },
        ipConfiguration = {
          description = "Configuration for VM IPs.",
          enum = {
            "WORKER_IP_UNSPECIFIED",
            "WORKER_IP_PUBLIC",
            "WORKER_IP_PRIVATE",
          },
          enumDescriptions = {
            "The configuration is unknown, or unspecified.",
            "Workers should have public IP addresses.",
            "Workers should have private IP addresses.",
          },
          type = "string",
        },
        kmsKeyName = {
          description = "Name for the Cloud KMS key for the job. Key format is: projects//locations//keyRings//cryptoKeys/",
          type = "string",
        },
        machineType = {
          description = "The machine type to use for the job. Defaults to the value from the template if not specified.",
          type = "string",
        },
        maxWorkers = {
          description = "The maximum number of Compute Engine instances to be made available to your pipeline during execution, from 1 to 1000.",
          format = "int32",
          type = "integer",
        },
        network = {
          description = "Network to which VMs will be assigned. If empty or unspecified, the service will use the network \"default\".",
          type = "string",
        },
        numWorkers = {
          description = "The initial number of Compute Engine instances for the job.",
          format = "int32",
          type = "integer",
        },
        serviceAccountEmail = {
          description = "The email address of the service account to run the job as.",
          type = "string",
        },
        subnetwork = {
          description = "Subnetwork to which VMs will be assigned, if desired. You can specify a subnetwork using either a complete URL or an abbreviated path. Expected to be of the form \"https://www.googleapis.com/compute/v1/projects/HOST_PROJECT_ID/regions/REGION/subnetworks/SUBNETWORK\" or \"regions/REGION/subnetworks/SUBNETWORK\". If the subnetwork is located in a Shared VPC network, you must use the complete URL.",
          type = "string",
        },
        tempLocation = {
          description = "The Cloud Storage path to use for temporary files. Must be a valid Cloud Storage URL, beginning with `gs://`.",
          type = "string",
        },
        workerRegion = {
          description = "The Compute Engine region (https://cloud.google.com/compute/docs/regions-zones/regions-zones) in which worker processing should occur, e.g. \"us-west1\". Mutually exclusive with worker_zone. If neither worker_region nor worker_zone is specified, defaults to the control plane region.",
          type = "string",
        },
        workerZone = {
          description = "The Compute Engine zone (https://cloud.google.com/compute/docs/regions-zones/regions-zones) in which worker processing should occur, e.g. \"us-west1-a\". Mutually exclusive with worker_region. If neither worker_region nor worker_zone is specified, a zone in the control plane region is chosen based on available capacity. If both `worker_zone` and `zone` are set, `worker_zone` takes precedence.",
          type = "string",
        },
        zone = {
          description = "The Compute Engine [availability zone](https://cloud.google.com/compute/docs/regions-zones/regions-zones) for launching worker instances to run your pipeline. In the future, worker_zone will take precedence.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDatapipelinesV1Job = {
      description = "Definition of the job information maintained by the pipeline. Fields in this entity are retrieved from the executor API (e.g. Dataflow API).",
      id = "GoogleCloudDatapipelinesV1Job",
      properties = {
        createTime = {
          description = "Output only. The time of job creation.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        dataflowJobDetails = {
          ["$ref"] = "GoogleCloudDatapipelinesV1DataflowJobDetails",
          description = "All the details that are specific to a Dataflow job.",
        },
        endTime = {
          description = "Output only. The time of job termination. This is absent if the job is still running.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        id = {
          description = "Output only. The internal ID for the job.",
          readOnly = true,
          type = "string",
        },
        name = {
          description = "Required. The fully qualified resource name for the job.",
          type = "string",
        },
        state = {
          description = "The current state of the job.",
          enum = {
            "STATE_UNSPECIFIED",
            "STATE_PENDING",
            "STATE_RUNNING",
            "STATE_DONE",
            "STATE_FAILED",
            "STATE_CANCELLED",
          },
          enumDescriptions = {
            "The job state isn't specified.",
            "The job is waiting to start execution.",
            "The job is executing.",
            "The job has finished execution successfully.",
            "The job has finished execution with a failure.",
            "The job has been terminated upon user request.",
          },
          type = "string",
        },
        status = {
          ["$ref"] = "GoogleRpcStatus",
          description = "Status capturing any error code or message related to job creation or execution.",
        },
      },
      type = "object",
    },
    GoogleCloudDatapipelinesV1LaunchFlexTemplateParameter = {
      description = "Launch Flex Template parameter.",
      id = "GoogleCloudDatapipelinesV1LaunchFlexTemplateParameter",
      properties = {
        containerSpecGcsPath = {
          description = "Cloud Storage path to a file with a JSON-serialized ContainerSpec as content.",
          type = "string",
        },
        environment = {
          ["$ref"] = "GoogleCloudDatapipelinesV1FlexTemplateRuntimeEnvironment",
          description = "The runtime environment for the Flex Template job.",
        },
        jobName = {
          description = "Required. The job name to use for the created job. For an update job request, the job name should be the same as the existing running job.",
          type = "string",
        },
        launchOptions = {
          additionalProperties = {
            type = "string",
          },
          description = "Launch options for this Flex Template job. This is a common set of options across languages and templates. This should not be used to pass job parameters.",
          type = "object",
        },
        parameters = {
          additionalProperties = {
            type = "string",
          },
          description = "The parameters for the Flex Template. Example: `{\"num_workers\":\"5\"}`",
          type = "object",
        },
        transformNameMappings = {
          additionalProperties = {
            type = "string",
          },
          description = "Use this to pass transform name mappings for streaming update jobs. Example: `{\"oldTransformName\":\"newTransformName\",...}`",
          type = "object",
        },
        update = {
          description = "Set this to true if you are sending a request to update a running streaming job. When set, the job name should be the same as the running job.",
          type = "boolean",
        },
      },
      type = "object",
    },
    GoogleCloudDatapipelinesV1LaunchFlexTemplateRequest = {
      description = "A request to launch a Dataflow job from a Flex Template.",
      id = "GoogleCloudDatapipelinesV1LaunchFlexTemplateRequest",
      properties = {
        launchParameter = {
          ["$ref"] = "GoogleCloudDatapipelinesV1LaunchFlexTemplateParameter",
          description = "Required. Parameter to launch a job from a Flex Template.",
        },
        location = {
          description = "Required. The [regional endpoint] (https://cloud.google.com/dataflow/docs/concepts/regional-endpoints) to which to direct the request. For example, `us-central1`, `us-west1`.",
          type = "string",
        },
        projectId = {
          description = "Required. The ID of the Cloud Platform project that the job belongs to.",
          type = "string",
        },
        validateOnly = {
          description = "If true, the request is validated but not actually executed. Defaults to false.",
          type = "boolean",
        },
      },
      type = "object",
    },
    GoogleCloudDatapipelinesV1LaunchTemplateParameters = {
      description = "Parameters to provide to the template being launched.",
      id = "GoogleCloudDatapipelinesV1LaunchTemplateParameters",
      properties = {
        environment = {
          ["$ref"] = "GoogleCloudDatapipelinesV1RuntimeEnvironment",
          description = "The runtime environment for the job.",
        },
        jobName = {
          description = "Required. The job name to use for the created job.",
          type = "string",
        },
        parameters = {
          additionalProperties = {
            type = "string",
          },
          description = "The runtime parameters to pass to the job.",
          type = "object",
        },
        transformNameMapping = {
          additionalProperties = {
            type = "string",
          },
          description = "Map of transform name prefixes of the job to be replaced to the corresponding name prefixes of the new job. Only applicable when updating a pipeline.",
          type = "object",
        },
        update = {
          description = "If set, replace the existing pipeline with the name specified by jobName with this pipeline, preserving state.",
          type = "boolean",
        },
      },
      type = "object",
    },
    GoogleCloudDatapipelinesV1LaunchTemplateRequest = {
      description = "A request to launch a template.",
      id = "GoogleCloudDatapipelinesV1LaunchTemplateRequest",
      properties = {
        gcsPath = {
          description = "A Cloud Storage path to the template from which to create the job. Must be a valid Cloud Storage URL, beginning with 'gs://'.",
          type = "string",
        },
        launchParameters = {
          ["$ref"] = "GoogleCloudDatapipelinesV1LaunchTemplateParameters",
          description = "The parameters of the template to launch. This should be part of the body of the POST request.",
        },
        location = {
          description = "The [regional endpoint] (https://cloud.google.com/dataflow/docs/concepts/regional-endpoints) to which to direct the request.",
          type = "string",
        },
        projectId = {
          description = "Required. The ID of the Cloud Platform project that the job belongs to.",
          type = "string",
        },
        validateOnly = {
          description = "If true, the request is validated but not actually executed. Defaults to false.",
          type = "boolean",
        },
      },
      type = "object",
    },
    GoogleCloudDatapipelinesV1ListJobsResponse = {
      description = "Response message for ListJobs",
      id = "GoogleCloudDatapipelinesV1ListJobsResponse",
      properties = {
        jobs = {
          description = "Results that were accessible to the caller. Results are always in descending order of job creation date.",
          items = {
            ["$ref"] = "GoogleCloudDatapipelinesV1Job",
          },
          type = "array",
        },
        nextPageToken = {
          description = "A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, there are no subsequent pages.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDatapipelinesV1ListPipelinesResponse = {
      description = "Response message for ListPipelines.",
      id = "GoogleCloudDatapipelinesV1ListPipelinesResponse",
      properties = {
        nextPageToken = {
          description = "A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, there are no subsequent pages.",
          type = "string",
        },
        pipelines = {
          description = "Results that matched the filter criteria and were accessible to the caller. Results are always in descending order of pipeline creation date.",
          items = {
            ["$ref"] = "GoogleCloudDatapipelinesV1Pipeline",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudDatapipelinesV1Pipeline = {
      description = "The main pipeline entity and all the necessary metadata for launching and managing linked jobs.",
      id = "GoogleCloudDatapipelinesV1Pipeline",
      properties = {
        createTime = {
          description = "Output only. Immutable. The timestamp when the pipeline was initially created. Set by the Data Pipelines service.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        displayName = {
          description = "Required. The display name of the pipeline. It can contain only letters ([A-Za-z]), numbers ([0-9]), hyphens (-), and underscores (_).",
          type = "string",
        },
        jobCount = {
          description = "Output only. Number of jobs.",
          format = "int32",
          readOnly = true,
          type = "integer",
        },
        lastUpdateTime = {
          description = "Output only. Immutable. The timestamp when the pipeline was last modified. Set by the Data Pipelines service.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        name = {
          description = "The pipeline name. For example: `projects/PROJECT_ID/locations/LOCATION_ID/pipelines/PIPELINE_ID`. * `PROJECT_ID` can contain letters ([A-Za-z]), numbers ([0-9]), hyphens (-), colons (:), and periods (.). For more information, see [Identifying projects](https://cloud.google.com/resource-manager/docs/creating-managing-projects#identifying_projects). * `LOCATION_ID` is the canonical ID for the pipeline's location. The list of available locations can be obtained by calling `google.cloud.location.Locations.ListLocations`. Note that the Data Pipelines service is not available in all regions. It depends on Cloud Scheduler, an App Engine application, so it's only available in [App Engine regions](https://cloud.google.com/about/locations#region). * `PIPELINE_ID` is the ID of the pipeline. Must be unique for the selected project and location.",
          type = "string",
        },
        pipelineSources = {
          additionalProperties = {
            type = "string",
          },
          description = "Immutable. The sources of the pipeline (for example, Dataplex). The keys and values are set by the corresponding sources during pipeline creation.",
          type = "object",
        },
        scheduleInfo = {
          ["$ref"] = "GoogleCloudDatapipelinesV1ScheduleSpec",
          description = "Internal scheduling information for a pipeline. If this information is provided, periodic jobs will be created per the schedule. If not, users are responsible for creating jobs externally.",
        },
        schedulerServiceAccountEmail = {
          description = "Optional. A service account email to be used with the Cloud Scheduler job. If not specified, the default compute engine service account will be used.",
          type = "string",
        },
        state = {
          description = "Required. The state of the pipeline. When the pipeline is created, the state is set to 'PIPELINE_STATE_ACTIVE' by default. State changes can be requested by setting the state to stopping, paused, or resuming. State cannot be changed through UpdatePipeline requests.",
          enum = {
            "STATE_UNSPECIFIED",
            "STATE_RESUMING",
            "STATE_ACTIVE",
            "STATE_STOPPING",
            "STATE_ARCHIVED",
            "STATE_PAUSED",
          },
          enumDescriptions = {
            "The pipeline state isn't specified.",
            "The pipeline is getting started or resumed. When finished, the pipeline state will be 'PIPELINE_STATE_ACTIVE'.",
            "The pipeline is actively running.",
            "The pipeline is in the process of stopping. When finished, the pipeline state will be 'PIPELINE_STATE_ARCHIVED'.",
            "The pipeline has been stopped. This is a terminal state and cannot be undone.",
            "The pipeline is paused. This is a non-terminal state. When the pipeline is paused, it will hold processing jobs, but can be resumed later. For a batch pipeline, this means pausing the scheduler job. For a streaming pipeline, creating a job snapshot to resume from will give the same effect.",
          },
          type = "string",
        },
        type = {
          description = "Required. The type of the pipeline. This field affects the scheduling of the pipeline and the type of metrics to show for the pipeline.",
          enum = {
            "PIPELINE_TYPE_UNSPECIFIED",
            "PIPELINE_TYPE_BATCH",
            "PIPELINE_TYPE_STREAMING",
          },
          enumDescriptions = {
            "The pipeline type isn't specified.",
            "A batch pipeline. It runs jobs on a specific schedule, and each job will automatically terminate once execution is finished.",
            "A streaming pipeline. The underlying job is continuously running until it is manually terminated by the user. This type of pipeline doesn't have a schedule to run on, and the linked job gets created when the pipeline is created.",
          },
          type = "string",
        },
        workload = {
          ["$ref"] = "GoogleCloudDatapipelinesV1Workload",
          description = "Workload information for creating new jobs.",
        },
      },
      type = "object",
    },
    GoogleCloudDatapipelinesV1RunPipelineRequest = {
      description = "Request message for RunPipeline",
      id = "GoogleCloudDatapipelinesV1RunPipelineRequest",
      properties = {},
      type = "object",
    },
    GoogleCloudDatapipelinesV1RunPipelineResponse = {
      description = "Response message for RunPipeline",
      id = "GoogleCloudDatapipelinesV1RunPipelineResponse",
      properties = {
        job = {
          ["$ref"] = "GoogleCloudDatapipelinesV1Job",
          description = "Job that was created as part of RunPipeline operation.",
        },
      },
      type = "object",
    },
    GoogleCloudDatapipelinesV1RuntimeEnvironment = {
      description = "The environment values to set at runtime.",
      id = "GoogleCloudDatapipelinesV1RuntimeEnvironment",
      properties = {
        additionalExperiments = {
          description = "Additional experiment flags for the job.",
          items = {
            type = "string",
          },
          type = "array",
        },
        additionalUserLabels = {
          additionalProperties = {
            type = "string",
          },
          description = "Additional user labels to be specified for the job. Keys and values should follow the restrictions specified in the [labeling restrictions](https://cloud.google.com/compute/docs/labeling-resources#restrictions) page. An object containing a list of key/value pairs. Example: { \"name\": \"wrench\", \"mass\": \"1kg\", \"count\": \"3\" }.",
          type = "object",
        },
        bypassTempDirValidation = {
          description = "Whether to bypass the safety checks for the job's temporary directory. Use with caution.",
          type = "boolean",
        },
        enableStreamingEngine = {
          description = "Whether to enable Streaming Engine for the job.",
          type = "boolean",
        },
        ipConfiguration = {
          description = "Configuration for VM IPs.",
          enum = {
            "WORKER_IP_UNSPECIFIED",
            "WORKER_IP_PUBLIC",
            "WORKER_IP_PRIVATE",
          },
          enumDescriptions = {
            "The configuration is unknown, or unspecified.",
            "Workers should have public IP addresses.",
            "Workers should have private IP addresses.",
          },
          type = "string",
        },
        kmsKeyName = {
          description = "Name for the Cloud KMS key for the job. The key format is: projects//locations//keyRings//cryptoKeys/",
          type = "string",
        },
        machineType = {
          description = "The machine type to use for the job. Defaults to the value from the template if not specified.",
          type = "string",
        },
        maxWorkers = {
          description = "The maximum number of Compute Engine instances to be made available to your pipeline during execution, from 1 to 1000.",
          format = "int32",
          type = "integer",
        },
        network = {
          description = "Network to which VMs will be assigned. If empty or unspecified, the service will use the network \"default\".",
          type = "string",
        },
        numWorkers = {
          description = "The initial number of Compute Engine instances for the job.",
          format = "int32",
          type = "integer",
        },
        serviceAccountEmail = {
          description = "The email address of the service account to run the job as.",
          type = "string",
        },
        subnetwork = {
          description = "Subnetwork to which VMs will be assigned, if desired. You can specify a subnetwork using either a complete URL or an abbreviated path. Expected to be of the form \"https://www.googleapis.com/compute/v1/projects/HOST_PROJECT_ID/regions/REGION/subnetworks/SUBNETWORK\" or \"regions/REGION/subnetworks/SUBNETWORK\". If the subnetwork is located in a Shared VPC network, you must use the complete URL.",
          type = "string",
        },
        tempLocation = {
          description = "The Cloud Storage path to use for temporary files. Must be a valid Cloud Storage URL, beginning with `gs://`.",
          type = "string",
        },
        workerRegion = {
          description = "The Compute Engine region (https://cloud.google.com/compute/docs/regions-zones/regions-zones) in which worker processing should occur, e.g. \"us-west1\". Mutually exclusive with worker_zone. If neither worker_region nor worker_zone is specified, default to the control plane's region.",
          type = "string",
        },
        workerZone = {
          description = "The Compute Engine zone (https://cloud.google.com/compute/docs/regions-zones/regions-zones) in which worker processing should occur, e.g. \"us-west1-a\". Mutually exclusive with worker_region. If neither worker_region nor worker_zone is specified, a zone in the control plane's region is chosen based on available capacity. If both `worker_zone` and `zone` are set, `worker_zone` takes precedence.",
          type = "string",
        },
        zone = {
          description = "The Compute Engine [availability zone](https://cloud.google.com/compute/docs/regions-zones/regions-zones) for launching worker instances to run your pipeline. In the future, worker_zone will take precedence.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDatapipelinesV1ScheduleSpec = {
      description = "Details of the schedule the pipeline runs on.",
      id = "GoogleCloudDatapipelinesV1ScheduleSpec",
      properties = {
        nextJobTime = {
          description = "Output only. When the next Scheduler job is going to run.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        schedule = {
          description = "Unix-cron format of the schedule. This information is retrieved from the linked Cloud Scheduler.",
          type = "string",
        },
        timeZone = {
          description = "Timezone ID. This matches the timezone IDs used by the Cloud Scheduler API. If empty, UTC time is assumed.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDatapipelinesV1SdkVersion = {
      description = "The version of the SDK used to run the job.",
      id = "GoogleCloudDatapipelinesV1SdkVersion",
      properties = {
        sdkSupportStatus = {
          description = "The support status for this SDK version.",
          enum = {
            "UNKNOWN",
            "SUPPORTED",
            "STALE",
            "DEPRECATED",
            "UNSUPPORTED",
          },
          enumDescriptions = {
            "Dataflow is unaware of this version.",
            "This is a known version of an SDK, and is supported.",
            "A newer version of the SDK exists, and an update is recommended.",
            "This version of the SDK is deprecated and will eventually be unsupported.",
            "Support for this SDK version has ended and it should no longer be used.",
          },
          type = "string",
        },
        version = {
          description = "The version of the SDK used to run the job.",
          type = "string",
        },
        versionDisplayName = {
          description = "A readable string describing the version of the SDK.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDatapipelinesV1StopPipelineRequest = {
      description = "Request message for StopPipeline.",
      id = "GoogleCloudDatapipelinesV1StopPipelineRequest",
      properties = {},
      type = "object",
    },
    GoogleCloudDatapipelinesV1Workload = {
      description = "Workload details for creating the pipeline jobs.",
      id = "GoogleCloudDatapipelinesV1Workload",
      properties = {
        dataflowFlexTemplateRequest = {
          ["$ref"] = "GoogleCloudDatapipelinesV1LaunchFlexTemplateRequest",
          description = "Template information and additional parameters needed to launch a Dataflow job using the flex launch API.",
        },
        dataflowLaunchTemplateRequest = {
          ["$ref"] = "GoogleCloudDatapipelinesV1LaunchTemplateRequest",
          description = "Template information and additional parameters needed to launch a Dataflow job using the standard launch API.",
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
  title = "Data pipelines API",
  version = "v1",
  version_module = true,
}
