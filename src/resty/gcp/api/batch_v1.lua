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
  baseUrl = "https://batch.googleapis.com/",
  batchPath = "batch",
  canonicalName = "Batch",
  description = "An API to manage the running of batch jobs on Google Cloud Platform.",
  discoveryVersion = "v1",
  documentationLink = "https://cloud.google.com/batch/",
  fullyEncodeReservedExpansion = true,
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "batch:v1",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://batch.mtls.googleapis.com/",
  name = "batch",
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
              id = "batch.projects.locations.get",
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
              id = "batch.projects.locations.list",
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
            jobs = {
              methods = {
                create = {
                  description = "Create a Job.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/jobs",
                  httpMethod = "POST",
                  id = "batch.projects.locations.jobs.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    jobId = {
                      description = "ID used to uniquely identify the Job within its parent scope. This field should contain at most 63 characters and must start with lowercase characters. Only lowercase characters, numbers and '-' are accepted. The '-' character cannot be the first or the last one. A system generated ID will be used if the field is not set. The job.name field in the request will be ignored and the created resource name of the Job will be \"{parent}/jobs/{job_id}\".",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The parent resource name where the Job will be created. Pattern: \"projects/{project}/locations/{location}\"",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    requestId = {
                      description = "Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and t he request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/jobs",
                  request = {
                    ["$ref"] = "Job",
                  },
                  response = {
                    ["$ref"] = "Job",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                delete = {
                  description = "Delete a Job.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/jobs/{jobsId}",
                  httpMethod = "DELETE",
                  id = "batch.projects.locations.jobs.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Job name.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/jobs/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    reason = {
                      description = "Optional. Reason for this deletion.",
                      location = "query",
                      type = "string",
                    },
                    requestId = {
                      description = "Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes after the first request. For example, consider a situation where you make an initial request and t he request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).",
                      location = "query",
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
                get = {
                  description = "Get a Job specified by its resource name.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/jobs/{jobsId}",
                  httpMethod = "GET",
                  id = "batch.projects.locations.jobs.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Job name.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/jobs/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "Job",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                getIamPolicy = {
                  description = "Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/jobs/{jobsId}:getIamPolicy",
                  httpMethod = "GET",
                  id = "batch.projects.locations.jobs.getIamPolicy",
                  parameterOrder = {
                    "resource",
                  },
                  parameters = {
                    ["options.requestedPolicyVersion"] = {
                      description = "Optional. The maximum policy version that will be used to format the policy. Valid values are 0, 1, and 3. Requests specifying an invalid value will be rejected. Requests for policies with any conditional role bindings must specify version 3. Policies with no conditional role bindings may specify any valid value or leave the field unset. The policy in the response might use the policy version that you specified, or it might use a lower policy version. For example, if you specify version 3, but the policy has no conditional role bindings, the response uses version 1. To learn which resources support conditions in their IAM policies, see the [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    resource = {
                      description = "REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/jobs/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+resource}:getIamPolicy",
                  response = {
                    ["$ref"] = "Policy",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                list = {
                  description = "List all Jobs for a project within a region.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/jobs",
                  httpMethod = "GET",
                  id = "batch.projects.locations.jobs.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    filter = {
                      description = "List filter.",
                      location = "query",
                      type = "string",
                    },
                    pageSize = {
                      description = "Page size.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "Page token.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Parent path.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/jobs",
                  response = {
                    ["$ref"] = "ListJobsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                setIamPolicy = {
                  description = "Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/jobs/{jobsId}:setIamPolicy",
                  httpMethod = "POST",
                  id = "batch.projects.locations.jobs.setIamPolicy",
                  parameterOrder = {
                    "resource",
                  },
                  parameters = {
                    resource = {
                      description = "REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/jobs/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+resource}:setIamPolicy",
                  request = {
                    ["$ref"] = "SetIamPolicyRequest",
                  },
                  response = {
                    ["$ref"] = "Policy",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                testIamPermissions = {
                  description = "Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a `NOT_FOUND` error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may \"fail open\" without warning.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/jobs/{jobsId}:testIamPermissions",
                  httpMethod = "POST",
                  id = "batch.projects.locations.jobs.testIamPermissions",
                  parameterOrder = {
                    "resource",
                  },
                  parameters = {
                    resource = {
                      description = "REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/jobs/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+resource}:testIamPermissions",
                  request = {
                    ["$ref"] = "TestIamPermissionsRequest",
                  },
                  response = {
                    ["$ref"] = "TestIamPermissionsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
              },
              resources = {
                taskGroups = {
                  resources = {
                    tasks = {
                      methods = {
                        get = {
                          description = "Return a single Task.",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/jobs/{jobsId}/taskGroups/{taskGroupsId}/tasks/{tasksId}",
                          httpMethod = "GET",
                          id = "batch.projects.locations.jobs.taskGroups.tasks.get",
                          parameterOrder = {
                            "name",
                          },
                          parameters = {
                            name = {
                              description = "Required. Task name.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/jobs/[^/]+/taskGroups/[^/]+/tasks/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v1/{+name}",
                          response = {
                            ["$ref"] = "Task",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                          },
                        },
                        list = {
                          description = "List Tasks associated with a job.",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/jobs/{jobsId}/taskGroups/{taskGroupsId}/tasks",
                          httpMethod = "GET",
                          id = "batch.projects.locations.jobs.taskGroups.tasks.list",
                          parameterOrder = {
                            "parent",
                          },
                          parameters = {
                            filter = {
                              description = "Task filter, null filter matches all Tasks. Filter string should be of the format State=TaskStatus.State e.g. State=RUNNING",
                              location = "query",
                              type = "string",
                            },
                            pageSize = {
                              description = "Page size.",
                              format = "int32",
                              location = "query",
                              type = "integer",
                            },
                            pageToken = {
                              description = "Page token.",
                              location = "query",
                              type = "string",
                            },
                            parent = {
                              description = "Required. Name of a TaskGroup from which Tasks are being requested. Pattern: \"projects/{project}/locations/{location}/jobs/{job}/taskGroups/{task_group}\"",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/jobs/[^/]+/taskGroups/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v1/{+parent}/tasks",
                          response = {
                            ["$ref"] = "ListTasksResponse",
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
            operations = {
              methods = {
                cancel = {
                  description = "Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of 1, corresponding to `Code.CANCELLED`.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/operations/{operationsId}:cancel",
                  httpMethod = "POST",
                  id = "batch.projects.locations.operations.cancel",
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
                  request = {
                    ["$ref"] = "CancelOperationRequest",
                  },
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
                  id = "batch.projects.locations.operations.delete",
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
                  id = "batch.projects.locations.operations.get",
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
                  id = "batch.projects.locations.operations.list",
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
            state = {
              methods = {
                report = {
                  description = "Report agent's state, e.g. agent status and tasks information",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/state:report",
                  httpMethod = "POST",
                  id = "batch.projects.locations.state.report",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    parent = {
                      description = "Required. Format: projects/{project}/locations/{location} {project} should be a project number.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/state:report",
                  request = {
                    ["$ref"] = "ReportAgentStateRequest",
                  },
                  response = {
                    ["$ref"] = "ReportAgentStateResponse",
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
  revision = "20230105",
  rootUrl = "https://batch.googleapis.com/",
  schemas = {
    Accelerator = {
      description = "Accelerator describes Compute Engine accelerators to be attached to the VM.",
      id = "Accelerator",
      properties = {
        count = {
          description = "The number of accelerators of this type.",
          format = "int64",
          type = "string",
        },
        installGpuDrivers = {
          description = "Deprecated: please use instances[0].install_gpu_drivers instead.",
          type = "boolean",
        },
        type = {
          description = "The accelerator type. For example, \"nvidia-tesla-t4\". See `gcloud compute accelerator-types list`.",
          type = "string",
        },
      },
      type = "object",
    },
    ActionCondition = {
      description = "Conditions for actions to deal with task failures.",
      id = "ActionCondition",
      properties = {
        exitCodes = {
          description = "Exit codes of a task execution. If there are more than 1 exit codes, when task executes with any of the exit code in the list, the condition is met and the action will be executed.",
          items = {
            format = "int32",
            type = "integer",
          },
          type = "array",
        },
      },
      type = "object",
    },
    AgentInfo = {
      description = "VM Agent Info.",
      id = "AgentInfo",
      properties = {
        jobId = {
          description = "The assigned Job ID",
          type = "string",
        },
        reportTime = {
          description = "When the AgentInfo is generated.",
          format = "google-datetime",
          type = "string",
        },
        state = {
          description = "Agent state.",
          enum = {
            "AGENT_STATE_UNSPECIFIED",
            "AGENT_STARTING",
            "AGENT_RUNNING",
            "AGENT_STOPPED",
          },
          enumDescriptions = {
            "Unspecified state.",
            "The agent is starting on the VM instance.",
            "The agent is running. The agent in the RUNNING state can never go back to the STARTING state.",
            "The agent has stopped, either on request or due to a failure.",
          },
          type = "string",
        },
        taskGroupId = {
          description = "The assigned task group ID.",
          type = "string",
        },
        tasks = {
          description = "Task Info.",
          items = {
            ["$ref"] = "AgentTaskInfo",
          },
          type = "array",
        },
      },
      type = "object",
    },
    AgentMetadata = {
      description = "VM Agent Metadata.",
      id = "AgentMetadata",
      properties = {
        creationTime = {
          description = "When the VM agent started. Use agent_startup_time instead.",
          format = "google-datetime",
          type = "string",
        },
        creator = {
          description = "Full name of the entity that created this vm. For MIG, this path is: projects/{project}/regions/{region}/InstanceGroupManagers/{igm} The value is retrieved from the vm metadata key of \"created-by\".",
          type = "string",
        },
        imageVersion = {
          description = "image version for the VM that this agent is installed on.",
          type = "string",
        },
        instance = {
          description = "GCP instance name (go/instance-name).",
          type = "string",
        },
        instanceId = {
          description = "GCP instance ID (go/instance-id).",
          format = "uint64",
          type = "string",
        },
        instancePreemptionNoticeReceived = {
          description = "If the GCP instance has received preemption notice.",
          type = "boolean",
        },
        osRelease = {
          additionalProperties = {
            type = "string",
          },
          description = "parsed contents of /etc/os-release",
          type = "object",
        },
        version = {
          description = "agent binary version running on VM",
          type = "string",
        },
        zone = {
          description = "Agent zone.",
          type = "string",
        },
      },
      type = "object",
    },
    AgentTask = {
      description = "TODO(b/182501497) The message needs to be redefined when the Agent API server updates data in storage per the backend design.",
      id = "AgentTask",
      properties = {
        intendedState = {
          description = "The intended state of the task.",
          enum = {
            "INTENDED_STATE_UNSPECIFIED",
            "ASSIGNED",
            "CANCELLED",
            "DELETED",
          },
          enumDescriptions = {
            "Unspecified state.",
            "Assigned state (includes running and finished).",
            "The agent should cancel the execution of this task.",
            "Delete task from agent storage, stop reporting its state.",
          },
          type = "string",
        },
        reachedBarrier = {
          description = "The highest barrier reached by all tasks in the task's TaskGroup.",
          format = "int64",
          type = "string",
        },
        spec = {
          ["$ref"] = "TaskSpec",
          description = "Task Spec.",
        },
        status = {
          ["$ref"] = "TaskStatus",
          description = "Task status.",
        },
        task = {
          description = "Task name.",
          type = "string",
        },
      },
      type = "object",
    },
    AgentTaskInfo = {
      description = "Task Info",
      id = "AgentTaskInfo",
      properties = {
        runnable = {
          description = "The highest index of a runnable started by the agent for this task. The runnables are indexed from 1. Value 0 is undefined.",
          format = "int64",
          type = "string",
        },
        taskId = {
          description = "ID of the Task",
          type = "string",
        },
        taskStatus = {
          ["$ref"] = "TaskStatus",
          description = "The status of the Task. If we need agent specific fields we should fork the public TaskStatus into an agent specific one. Or add them below.",
        },
      },
      type = "object",
    },
    AgentTimingInfo = {
      description = "VM timing information",
      id = "AgentTimingInfo",
      properties = {
        agentStartupTime = {
          description = "Agent startup time",
          format = "google-datetime",
          type = "string",
        },
        bootTime = {
          description = "Boot timestamp of the VM OS",
          format = "google-datetime",
          type = "string",
        },
        scriptStartupTime = {
          description = "Startup time of the Batch VM script.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    AllocationPolicy = {
      description = "A Job's resource allocation policy describes when, where, and how compute resources should be allocated for the Job.",
      id = "AllocationPolicy",
      properties = {
        instances = {
          description = "Describe instances that can be created by this AllocationPolicy. Only instances[0] is supported now.",
          items = {
            ["$ref"] = "InstancePolicyOrTemplate",
          },
          type = "array",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "Labels applied to all VM instances and other resources created by AllocationPolicy. Labels could be user provided or system generated. You can assign up to 64 labels. [Google Compute Engine label restrictions](https://cloud.google.com/compute/docs/labeling-resources#restrictions) apply. Label names that start with \"goog-\" or \"google-\" are reserved.",
          type = "object",
        },
        location = {
          ["$ref"] = "LocationPolicy",
          description = "Location where compute resources should be allocated for the Job.",
        },
        network = {
          ["$ref"] = "NetworkPolicy",
          description = "The network policy.",
        },
        serviceAccount = {
          ["$ref"] = "ServiceAccount",
          description = "Service account that VMs will run as.",
        },
      },
      type = "object",
    },
    AttachedDisk = {
      description = "A new or an existing persistent disk (PD) or a local ssd attached to a VM instance.",
      id = "AttachedDisk",
      properties = {
        deviceName = {
          description = "Device name that the guest operating system will see. It is used by Runnable.volumes field to mount disks. So please specify the device_name if you want Batch to help mount the disk, and it should match the device_name field in volumes.",
          type = "string",
        },
        existingDisk = {
          description = "Name of an existing PD.",
          type = "string",
        },
        newDisk = {
          ["$ref"] = "Disk",
        },
      },
      type = "object",
    },
    AuditConfig = {
      description = "Specifies the audit configuration for a service. The configuration determines which permission types are logged, and what identities, if any, are exempted from logging. An AuditConfig must have one or more AuditLogConfigs. If there are AuditConfigs for both `allServices` and a specific service, the union of the two AuditConfigs is used for that service: the log_types specified in each AuditConfig are enabled, and the exempted_members in each AuditLogConfig are exempted. Example Policy with multiple AuditConfigs: { \"audit_configs\": [ { \"service\": \"allServices\", \"audit_log_configs\": [ { \"log_type\": \"DATA_READ\", \"exempted_members\": [ \"user:jose@example.com\" ] }, { \"log_type\": \"DATA_WRITE\" }, { \"log_type\": \"ADMIN_READ\" } ] }, { \"service\": \"sampleservice.googleapis.com\", \"audit_log_configs\": [ { \"log_type\": \"DATA_READ\" }, { \"log_type\": \"DATA_WRITE\", \"exempted_members\": [ \"user:aliya@example.com\" ] } ] } ] } For sampleservice, this policy enables DATA_READ, DATA_WRITE and ADMIN_READ logging. It also exempts `jose@example.com` from DATA_READ logging, and `aliya@example.com` from DATA_WRITE logging.",
      id = "AuditConfig",
      properties = {
        auditLogConfigs = {
          description = "The configuration for logging of each type of permission.",
          items = {
            ["$ref"] = "AuditLogConfig",
          },
          type = "array",
        },
        service = {
          description = "Specifies a service that will be enabled for audit logging. For example, `storage.googleapis.com`, `cloudsql.googleapis.com`. `allServices` is a special value that covers all services.",
          type = "string",
        },
      },
      type = "object",
    },
    AuditLogConfig = {
      description = "Provides the configuration for logging a type of permissions. Example: { \"audit_log_configs\": [ { \"log_type\": \"DATA_READ\", \"exempted_members\": [ \"user:jose@example.com\" ] }, { \"log_type\": \"DATA_WRITE\" } ] } This enables 'DATA_READ' and 'DATA_WRITE' logging, while exempting jose@example.com from DATA_READ logging.",
      id = "AuditLogConfig",
      properties = {
        exemptedMembers = {
          description = "Specifies the identities that do not cause logging for this type of permission. Follows the same format of Binding.members.",
          items = {
            type = "string",
          },
          type = "array",
        },
        logType = {
          description = "The log type that this config enables.",
          enum = {
            "LOG_TYPE_UNSPECIFIED",
            "ADMIN_READ",
            "DATA_WRITE",
            "DATA_READ",
          },
          enumDescriptions = {
            "Default case. Should never be this.",
            "Admin reads. Example: CloudIAM getIamPolicy",
            "Data writes. Example: CloudSQL Users create",
            "Data reads. Example: CloudSQL Users list",
          },
          type = "string",
        },
      },
      type = "object",
    },
    Barrier = {
      description = "Barrier runnable blocks until all tasks in a taskgroup reach it.",
      id = "Barrier",
      properties = {
        name = {
          description = "Barriers are identified by their index in runnable list. Names are not required, but if present should be an identifier.",
          type = "string",
        },
      },
      type = "object",
    },
    Binding = {
      description = "Associates `members`, or principals, with a `role`.",
      id = "Binding",
      properties = {
        condition = {
          ["$ref"] = "Expr",
          description = "The condition that is associated with this binding. If the condition evaluates to `true`, then this binding applies to the current request. If the condition evaluates to `false`, then this binding does not apply to the current request. However, a different role binding might grant the same role to one or more of the principals in this binding. To learn which resources support conditions in their IAM policies, see the [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).",
        },
        members = {
          description = "Specifies the principals requesting access for a Google Cloud resource. `members` can have the following values: * `allUsers`: A special identifier that represents anyone who is on the internet; with or without a Google account. * `allAuthenticatedUsers`: A special identifier that represents anyone who is authenticated with a Google account or a service account. Does not include identities that come from external identity providers (IdPs) through identity federation. * `user:{emailid}`: An email address that represents a specific Google account. For example, `alice@example.com` . * `serviceAccount:{emailid}`: An email address that represents a Google service account. For example, `my-other-app@appspot.gserviceaccount.com`. * `serviceAccount:{projectid}.svc.id.goog[{namespace}/{kubernetes-sa}]`: An identifier for a [Kubernetes service account](https://cloud.google.com/kubernetes-engine/docs/how-to/kubernetes-service-accounts). For example, `my-project.svc.id.goog[my-namespace/my-kubernetes-sa]`. * `group:{emailid}`: An email address that represents a Google group. For example, `admins@example.com`. * `deleted:user:{emailid}?uid={uniqueid}`: An email address (plus unique identifier) representing a user that has been recently deleted. For example, `alice@example.com?uid=123456789012345678901`. If the user is recovered, this value reverts to `user:{emailid}` and the recovered user retains the role in the binding. * `deleted:serviceAccount:{emailid}?uid={uniqueid}`: An email address (plus unique identifier) representing a service account that has been recently deleted. For example, `my-other-app@appspot.gserviceaccount.com?uid=123456789012345678901`. If the service account is undeleted, this value reverts to `serviceAccount:{emailid}` and the undeleted service account retains the role in the binding. * `deleted:group:{emailid}?uid={uniqueid}`: An email address (plus unique identifier) representing a Google group that has been recently deleted. For example, `admins@example.com?uid=123456789012345678901`. If the group is recovered, this value reverts to `group:{emailid}` and the recovered group retains the role in the binding. * `domain:{domain}`: The G Suite domain (primary) that represents all the users of that domain. For example, `google.com` or `example.com`. ",
          items = {
            type = "string",
          },
          type = "array",
        },
        role = {
          description = "Role that is assigned to the list of `members`, or principals. For example, `roles/viewer`, `roles/editor`, or `roles/owner`.",
          type = "string",
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
    ComputeResource = {
      description = "Compute resource requirements",
      id = "ComputeResource",
      properties = {
        bootDiskMib = {
          description = "Extra boot disk size in MiB for each task.",
          format = "int64",
          type = "string",
        },
        cpuMilli = {
          description = "The milliCPU count.",
          format = "int64",
          type = "string",
        },
        memoryMib = {
          description = "Memory in MiB.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    Container = {
      description = "Container runnable.",
      id = "Container",
      properties = {
        blockExternalNetwork = {
          description = "If set to true, external network access to and from container will be blocked. The container will use the default internal network 'goog-internal'.",
          type = "boolean",
        },
        commands = {
          description = "Overrides the `CMD` specified in the container. If there is an ENTRYPOINT (either in the container image or with the entrypoint field below) then commands are appended as arguments to the ENTRYPOINT.",
          items = {
            type = "string",
          },
          type = "array",
        },
        entrypoint = {
          description = "Overrides the `ENTRYPOINT` specified in the container.",
          type = "string",
        },
        imageUri = {
          description = "The URI to pull the container image from.",
          type = "string",
        },
        options = {
          description = "Arbitrary additional options to include in the \"docker run\" command when running this container, e.g. \"--network host\".",
          type = "string",
        },
        password = {
          description = "Optional password for logging in to a docker registry. If password matches `projects/*/secrets/*/versions/*` then Batch will read the password from the Secret Manager;",
          type = "string",
        },
        username = {
          description = "Optional username for logging in to a docker registry. If username matches `projects/*/secrets/*/versions/*` then Batch will read the username from the Secret Manager.",
          type = "string",
        },
        volumes = {
          description = "Volumes to mount (bind mount) from the host machine files or directories into the container, formatted to match docker run's --volume option, e.g. /foo:/bar, or /foo:/bar:ro",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    Disk = {
      description = "A new persistent disk or a local ssd. A VM can only have one local SSD setting but multiple local SSD partitions. https://cloud.google.com/compute/docs/disks#pdspecs. https://cloud.google.com/compute/docs/disks#localssds.",
      id = "Disk",
      properties = {
        diskInterface = {
          description = "Local SSDs are available through both \"SCSI\" and \"NVMe\" interfaces. If not indicated, \"NVMe\" will be the default one for local ssds. We only support \"SCSI\" for persistent disks now.",
          type = "string",
        },
        image = {
          description = "Name of a public or custom image used as the data source. For example, the following are all valid URLs: (1) Specify the image by its family name: projects/{project}/global/images/family/{image_family} (2) Specify the image version: projects/{project}/global/images/{image_version} You can also use Batch customized image in short names. The following image values are supported for a boot disk: \"batch-debian\": use Batch Debian images. \"batch-centos\": use Batch CentOS images. \"batch-cos\": use Batch Container-Optimized images.",
          type = "string",
        },
        sizeGb = {
          description = "Disk size in GB. For persistent disk, this field is ignored if `data_source` is `image` or `snapshot`. For local SSD, size_gb should be a multiple of 375GB, otherwise, the final size will be the next greater multiple of 375 GB. For boot disk, Batch will calculate the boot disk size based on source image and task requirements if you do not speicify the size. If both this field and the boot_disk_mib field in task spec's compute_resource are defined, Batch will only honor this field.",
          format = "int64",
          type = "string",
        },
        snapshot = {
          description = "Name of a snapshot used as the data source.",
          type = "string",
        },
        type = {
          description = "Disk type as shown in `gcloud compute disk-types list`. For example, local SSD uses type \"local-ssd\". Persistent disks and boot disks use \"pd-balanced\", \"pd-extreme\", \"pd-ssd\" or \"pd-standard\".",
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
    Environment = {
      description = "An Environment describes a collection of environment variables to set when executing Tasks.",
      id = "Environment",
      properties = {
        encryptedVariables = {
          ["$ref"] = "KMSEnvMap",
          description = "An encrypted JSON dictionary where the key/value pairs correspond to environment variable names and their values.",
        },
        secretVariables = {
          additionalProperties = {
            type = "string",
          },
          description = "A map of environment variable names to Secret Manager secret names. The VM will access the named secrets to set the value of each environment variable.",
          type = "object",
        },
        variables = {
          additionalProperties = {
            type = "string",
          },
          description = "A map of environment variable names to values.",
          type = "object",
        },
      },
      type = "object",
    },
    Expr = {
      description = "Represents a textual expression in the Common Expression Language (CEL) syntax. CEL is a C-like expression language. The syntax and semantics of CEL are documented at https://github.com/google/cel-spec. Example (Comparison): title: \"Summary size limit\" description: \"Determines if a summary is less than 100 chars\" expression: \"document.summary.size() < 100\" Example (Equality): title: \"Requestor is owner\" description: \"Determines if requestor is the document owner\" expression: \"document.owner == request.auth.claims.email\" Example (Logic): title: \"Public documents\" description: \"Determine whether the document should be publicly visible\" expression: \"document.type != 'private' && document.type != 'internal'\" Example (Data Manipulation): title: \"Notification string\" description: \"Create a notification string with a timestamp.\" expression: \"'New message received at ' + string(document.create_time)\" The exact variables and functions that may be referenced within an expression are determined by the service that evaluates it. See the service documentation for additional information.",
      id = "Expr",
      properties = {
        description = {
          description = "Optional. Description of the expression. This is a longer text which describes the expression, e.g. when hovered over it in a UI.",
          type = "string",
        },
        expression = {
          description = "Textual representation of an expression in Common Expression Language syntax.",
          type = "string",
        },
        location = {
          description = "Optional. String indicating the location of the expression for error reporting, e.g. a file name and a position in the file.",
          type = "string",
        },
        title = {
          description = "Optional. Title for the expression, i.e. a short string describing its purpose. This can be used e.g. in UIs which allow to enter the expression.",
          type = "string",
        },
      },
      type = "object",
    },
    GCS = {
      description = "Represents a Google Cloud Storage volume.",
      id = "GCS",
      properties = {
        remotePath = {
          description = "Remote path, either a bucket name or a subdirectory of a bucket, e.g.: bucket_name, bucket_name/subdirectory/",
          type = "string",
        },
      },
      type = "object",
    },
    InstancePolicy = {
      description = "InstancePolicy describes an instance type and resources attached to each VM created by this InstancePolicy.",
      id = "InstancePolicy",
      properties = {
        accelerators = {
          description = "The accelerators attached to each VM instance.",
          items = {
            ["$ref"] = "Accelerator",
          },
          type = "array",
        },
        bootDisk = {
          ["$ref"] = "Disk",
          description = "Book disk to be created and attached to each VM by this InstancePolicy. Boot disk will be deleted when the VM is deleted.",
        },
        disks = {
          description = "Non-boot disks to be attached for each VM created by this InstancePolicy. New disks will be deleted when the VM is deleted.",
          items = {
            ["$ref"] = "AttachedDisk",
          },
          type = "array",
        },
        machineType = {
          description = "The Compute Engine machine type.",
          type = "string",
        },
        minCpuPlatform = {
          description = "The minimum CPU platform. See `https://cloud.google.com/compute/docs/instances/specify-min-cpu-platform`. Not yet implemented.",
          type = "string",
        },
        provisioningModel = {
          description = "The provisioning model.",
          enum = {
            "PROVISIONING_MODEL_UNSPECIFIED",
            "STANDARD",
            "SPOT",
            "PREEMPTIBLE",
          },
          enumDescriptions = {
            "Unspecified.",
            "Standard VM.",
            "SPOT VM.",
            "Preemptible VM (PVM). Above SPOT VM is the preferable model for preemptible VM instances: the old preemptible VM model (indicated by this field) is the older model, and has been migrated to use the SPOT model as the underlying technology. This old model will still be supported.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    InstancePolicyOrTemplate = {
      description = "Either an InstancePolicy or an instance template.",
      id = "InstancePolicyOrTemplate",
      properties = {
        installGpuDrivers = {
          description = "Set this field true if users want Batch to help fetch drivers from a third party location and install them for GPUs specified in policy.accelerators or instance_template on their behalf. Default is false.",
          type = "boolean",
        },
        instanceTemplate = {
          description = "Name of an instance template used to create VMs. Named the field as 'instance_template' instead of 'template' to avoid c++ keyword conflict.",
          type = "string",
        },
        policy = {
          ["$ref"] = "InstancePolicy",
          description = "InstancePolicy.",
        },
      },
      type = "object",
    },
    InstanceStatus = {
      description = "VM instance status.",
      id = "InstanceStatus",
      properties = {
        machineType = {
          description = "The Compute Engine machine type.",
          type = "string",
        },
        provisioningModel = {
          description = "The VM instance provisioning model.",
          enum = {
            "PROVISIONING_MODEL_UNSPECIFIED",
            "STANDARD",
            "SPOT",
            "PREEMPTIBLE",
          },
          enumDescriptions = {
            "Unspecified.",
            "Standard VM.",
            "SPOT VM.",
            "Preemptible VM (PVM). Above SPOT VM is the preferable model for preemptible VM instances: the old preemptible VM model (indicated by this field) is the older model, and has been migrated to use the SPOT model as the underlying technology. This old model will still be supported.",
          },
          type = "string",
        },
        taskPack = {
          description = "The max number of tasks can be assigned to this instance type.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    Job = {
      description = "The Cloud Batch Job description.",
      id = "Job",
      properties = {
        allocationPolicy = {
          ["$ref"] = "AllocationPolicy",
          description = "Compute resource allocation for all TaskGroups in the Job.",
        },
        createTime = {
          description = "Output only. When the Job was created.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "Labels for the Job. Labels could be user provided or system generated. For example, \"labels\": { \"department\": \"finance\", \"environment\": \"test\" } You can assign up to 64 labels. [Google Compute Engine label restrictions](https://cloud.google.com/compute/docs/labeling-resources#restrictions) apply. Label names that start with \"goog-\" or \"google-\" are reserved.",
          type = "object",
        },
        logsPolicy = {
          ["$ref"] = "LogsPolicy",
          description = "Log preservation policy for the Job.",
        },
        name = {
          description = "Output only. Job name. For example: \"projects/123456/locations/us-central1/jobs/job01\".",
          readOnly = true,
          type = "string",
        },
        notifications = {
          description = "Notification configurations.",
          items = {
            ["$ref"] = "JobNotification",
          },
          type = "array",
        },
        priority = {
          description = "Priority of the Job. The valid value range is [0, 100). A job with higher priority value is more likely to run earlier if all other requirements are satisfied.",
          format = "int64",
          type = "string",
        },
        status = {
          ["$ref"] = "JobStatus",
          description = "Output only. Job status. It is read only for users.",
          readOnly = true,
        },
        taskGroups = {
          description = "Required. TaskGroups in the Job. Only one TaskGroup is supported now.",
          items = {
            ["$ref"] = "TaskGroup",
          },
          type = "array",
        },
        uid = {
          description = "Output only. A system generated unique ID (in UUID4 format) for the Job.",
          readOnly = true,
          type = "string",
        },
        updateTime = {
          description = "Output only. The last time the Job was updated.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    JobNotification = {
      description = "Notification configurations.",
      id = "JobNotification",
      properties = {
        message = {
          ["$ref"] = "Message",
          description = "The attribute requirements of messages to be sent to this Pub/Sub topic. Without this field, no message will be sent.",
        },
        pubsubTopic = {
          description = "The Pub/Sub topic where notifications like the job state changes will be published. This topic exist in the same project as the job and billings will be charged to this project. If not specified, no Pub/Sub messages will be sent. Topic format: `projects/{project}/topics/{topic}`.",
          type = "string",
        },
      },
      type = "object",
    },
    JobStatus = {
      description = "Job status.",
      id = "JobStatus",
      properties = {
        runDuration = {
          description = "The duration of time that the Job spent in status RUNNING.",
          format = "google-duration",
          type = "string",
        },
        state = {
          description = "Job state",
          enum = {
            "STATE_UNSPECIFIED",
            "QUEUED",
            "SCHEDULED",
            "RUNNING",
            "SUCCEEDED",
            "FAILED",
            "DELETION_IN_PROGRESS",
          },
          enumDescriptions = {
            "",
            "Job is admitted (validated and persisted) and waiting for resources.",
            "Job is scheduled to run as soon as resource allocation is ready. The resource allocation may happen at a later time but with a high chance to succeed.",
            "Resource allocation has been successful. At least one Task in the Job is RUNNING.",
            "All Tasks in the Job have finished successfully.",
            "At least one Task in the Job has failed.",
            "The Job will be deleted, but has not been deleted yet. Typically this is because resources used by the Job are still being cleaned up.",
          },
          type = "string",
        },
        statusEvents = {
          description = "Job status events",
          items = {
            ["$ref"] = "StatusEvent",
          },
          type = "array",
        },
        taskGroups = {
          additionalProperties = {
            ["$ref"] = "TaskGroupStatus",
          },
          description = "Aggregated task status for each TaskGroup in the Job. The map key is TaskGroup ID.",
          type = "object",
        },
      },
      type = "object",
    },
    KMSEnvMap = {
      id = "KMSEnvMap",
      properties = {
        cipherText = {
          description = "The value of the cipherText response from the `encrypt` method.",
          type = "string",
        },
        keyName = {
          description = "The name of the KMS key that will be used to decrypt the cipher text.",
          type = "string",
        },
      },
      type = "object",
    },
    LifecyclePolicy = {
      description = "LifecyclePolicy describes how to deal with task failures based on different conditions.",
      id = "LifecyclePolicy",
      properties = {
        action = {
          description = "Action to execute when ActionCondition is true.",
          enum = {
            "ACTION_UNSPECIFIED",
            "RETRY_TASK",
            "FAIL_TASK",
          },
          enumDescriptions = {
            "Action unspecified.",
            "Action that tasks in the group will be scheduled to re-execute.",
            "Action that tasks in the group will be stopped immediately.",
          },
          type = "string",
        },
        actionCondition = {
          ["$ref"] = "ActionCondition",
          description = "Conditions that decide why a task failure is dealt with a specific action.",
        },
      },
      type = "object",
    },
    ListJobsResponse = {
      description = "ListJob Response.",
      id = "ListJobsResponse",
      properties = {
        jobs = {
          description = "Jobs.",
          items = {
            ["$ref"] = "Job",
          },
          type = "array",
        },
        nextPageToken = {
          description = "Next page token.",
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
    ListTasksResponse = {
      description = "ListTasks Response.",
      id = "ListTasksResponse",
      properties = {
        nextPageToken = {
          description = "Next page token.",
          type = "string",
        },
        tasks = {
          description = "Tasks.",
          items = {
            ["$ref"] = "Task",
          },
          type = "array",
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
    LocationPolicy = {
      id = "LocationPolicy",
      properties = {
        allowedLocations = {
          description = "A list of allowed location names represented by internal URLs. Each location can be a region or a zone. Only one region or multiple zones in one region is supported now. For example, [\"regions/us-central1\"] allow VMs in any zones in region us-central1. [\"zones/us-central1-a\", \"zones/us-central1-c\"] only allow VMs in zones us-central1-a and us-central1-c. All locations end up in different regions would cause errors. For example, [\"regions/us-central1\", \"zones/us-central1-a\", \"zones/us-central1-b\", \"zones/us-west1-a\"] contains 2 regions \"us-central1\" and \"us-west1\". An error is expected in this case.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    LogsPolicy = {
      description = "LogsPolicy describes how outputs from a Job's Tasks (stdout/stderr) will be preserved.",
      id = "LogsPolicy",
      properties = {
        destination = {
          description = "Where logs should be saved.",
          enum = {
            "DESTINATION_UNSPECIFIED",
            "CLOUD_LOGGING",
            "PATH",
          },
          enumDescriptions = {
            "Logs are not preserved.",
            "Logs are streamed to Cloud Logging.",
            "Logs are saved to a file path.",
          },
          type = "string",
        },
        logsPath = {
          description = "The path to which logs are saved when the destination = PATH. This can be a local file path on the VM, or under the mount point of a Persistent Disk or Filestore, or a Cloud Storage path.",
          type = "string",
        },
      },
      type = "object",
    },
    Message = {
      description = "Message details. Describe the attribute that a message should have. Without specified message attributes, no message will be sent by default.",
      id = "Message",
      properties = {
        newJobState = {
          description = "The new job state.",
          enum = {
            "STATE_UNSPECIFIED",
            "QUEUED",
            "SCHEDULED",
            "RUNNING",
            "SUCCEEDED",
            "FAILED",
            "DELETION_IN_PROGRESS",
          },
          enumDescriptions = {
            "",
            "Job is admitted (validated and persisted) and waiting for resources.",
            "Job is scheduled to run as soon as resource allocation is ready. The resource allocation may happen at a later time but with a high chance to succeed.",
            "Resource allocation has been successful. At least one Task in the Job is RUNNING.",
            "All Tasks in the Job have finished successfully.",
            "At least one Task in the Job has failed.",
            "The Job will be deleted, but has not been deleted yet. Typically this is because resources used by the Job are still being cleaned up.",
          },
          type = "string",
        },
        newTaskState = {
          description = "The new task state.",
          enum = {
            "STATE_UNSPECIFIED",
            "PENDING",
            "ASSIGNED",
            "RUNNING",
            "FAILED",
            "SUCCEEDED",
          },
          enumDescriptions = {
            "unknown state",
            "The Task is created and waiting for resources.",
            "The Task is assigned to at least one VM.",
            "The Task is running.",
            "The Task has failed.",
            "The Task has succeeded.",
          },
          type = "string",
        },
        type = {
          description = "The message type.",
          enum = {
            "TYPE_UNSPECIFIED",
            "JOB_STATE_CHANGED",
            "TASK_STATE_CHANGED",
          },
          enumDescriptions = {
            "Unspecified.",
            "Notify users that the job state has changed.",
            "Notify users that the task state has changed.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    NFS = {
      description = "Represents an NFS volume.",
      id = "NFS",
      properties = {
        remotePath = {
          description = "Remote source path exported from the NFS, e.g., \"/share\".",
          type = "string",
        },
        server = {
          description = "The IP address of the NFS.",
          type = "string",
        },
      },
      type = "object",
    },
    NetworkInterface = {
      description = "A network interface.",
      id = "NetworkInterface",
      properties = {
        network = {
          description = "The URL of an existing network resource. You can specify the network as a full or partial URL. For example, the following are all valid URLs: https://www.googleapis.com/compute/v1/projects/{project}/global/networks/{network} projects/{project}/global/networks/{network} global/networks/{network}",
          type = "string",
        },
        noExternalIpAddress = {
          description = "Default is false (with an external IP address). Required if no external public IP address is attached to the VM. If no external public IP address, additional configuration is required to allow the VM to access Google Services. See https://cloud.google.com/vpc/docs/configure-private-google-access and https://cloud.google.com/nat/docs/gce-example#create-nat for more information.",
          type = "boolean",
        },
        subnetwork = {
          description = "The URL of an existing subnetwork resource in the network. You can specify the subnetwork as a full or partial URL. For example, the following are all valid URLs: https://www.googleapis.com/compute/v1/projects/{project}/regions/{region}/subnetworks/{subnetwork} projects/{project}/regions/{region}/subnetworks/{subnetwork} regions/{region}/subnetworks/{subnetwork}",
          type = "string",
        },
      },
      type = "object",
    },
    NetworkPolicy = {
      description = "NetworkPolicy describes VM instance network configurations.",
      id = "NetworkPolicy",
      properties = {
        networkInterfaces = {
          description = "Network configurations.",
          items = {
            ["$ref"] = "NetworkInterface",
          },
          type = "array",
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
      description = "Represents the metadata of the long-running operation.",
      id = "OperationMetadata",
      properties = {
        apiVersion = {
          description = "Output only. API version used to start the operation.",
          readOnly = true,
          type = "string",
        },
        createTime = {
          description = "Output only. The time the operation was created.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        endTime = {
          description = "Output only. The time the operation finished running.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        requestedCancellation = {
          description = "Output only. Identifies whether the user has requested cancellation of the operation. Operations that have successfully been cancelled have Operation.error value with a google.rpc.Status.code of 1, corresponding to `Code.CANCELLED`.",
          readOnly = true,
          type = "boolean",
        },
        statusMessage = {
          description = "Output only. Human-readable status of the operation, if any.",
          readOnly = true,
          type = "string",
        },
        target = {
          description = "Output only. Server-defined resource path for the target of the operation.",
          readOnly = true,
          type = "string",
        },
        verb = {
          description = "Output only. Name of the verb executed by the operation.",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    Policy = {
      description = "An Identity and Access Management (IAM) policy, which specifies access controls for Google Cloud resources. A `Policy` is a collection of `bindings`. A `binding` binds one or more `members`, or principals, to a single `role`. Principals can be user accounts, service accounts, Google groups, and domains (such as G Suite). A `role` is a named list of permissions; each `role` can be an IAM predefined role or a user-created custom role. For some types of Google Cloud resources, a `binding` can also specify a `condition`, which is a logical expression that allows access to a resource only if the expression evaluates to `true`. A condition can add constraints based on attributes of the request, the resource, or both. To learn which resources support conditions in their IAM policies, see the [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies). **JSON example:** { \"bindings\": [ { \"role\": \"roles/resourcemanager.organizationAdmin\", \"members\": [ \"user:mike@example.com\", \"group:admins@example.com\", \"domain:google.com\", \"serviceAccount:my-project-id@appspot.gserviceaccount.com\" ] }, { \"role\": \"roles/resourcemanager.organizationViewer\", \"members\": [ \"user:eve@example.com\" ], \"condition\": { \"title\": \"expirable access\", \"description\": \"Does not grant access after Sep 2020\", \"expression\": \"request.time < timestamp('2020-10-01T00:00:00.000Z')\", } } ], \"etag\": \"BwWWja0YfJA=\", \"version\": 3 } **YAML example:** bindings: - members: - user:mike@example.com - group:admins@example.com - domain:google.com - serviceAccount:my-project-id@appspot.gserviceaccount.com role: roles/resourcemanager.organizationAdmin - members: - user:eve@example.com role: roles/resourcemanager.organizationViewer condition: title: expirable access description: Does not grant access after Sep 2020 expression: request.time < timestamp('2020-10-01T00:00:00.000Z') etag: BwWWja0YfJA= version: 3 For a description of IAM and its features, see the [IAM documentation](https://cloud.google.com/iam/docs/).",
      id = "Policy",
      properties = {
        auditConfigs = {
          description = "Specifies cloud audit logging configuration for this policy.",
          items = {
            ["$ref"] = "AuditConfig",
          },
          type = "array",
        },
        bindings = {
          description = "Associates a list of `members`, or principals, with a `role`. Optionally, may specify a `condition` that determines how and when the `bindings` are applied. Each of the `bindings` must contain at least one principal. The `bindings` in a `Policy` can refer to up to 1,500 principals; up to 250 of these principals can be Google groups. Each occurrence of a principal counts towards these limits. For example, if the `bindings` grant 50 different roles to `user:alice@example.com`, and not to any other principal, then you can add another 1,450 principals to the `bindings` in the `Policy`.",
          items = {
            ["$ref"] = "Binding",
          },
          type = "array",
        },
        etag = {
          description = "`etag` is used for optimistic concurrency control as a way to help prevent simultaneous updates of a policy from overwriting each other. It is strongly suggested that systems make use of the `etag` in the read-modify-write cycle to perform policy updates in order to avoid race conditions: An `etag` is returned in the response to `getIamPolicy`, and systems are expected to put that etag in the request to `setIamPolicy` to ensure that their change will be applied to the same version of the policy. **Important:** If you use IAM Conditions, you must include the `etag` field whenever you call `setIamPolicy`. If you omit this field, then IAM allows you to overwrite a version `3` policy with a version `1` policy, and all of the conditions in the version `3` policy are lost.",
          format = "byte",
          type = "string",
        },
        version = {
          description = "Specifies the format of the policy. Valid values are `0`, `1`, and `3`. Requests that specify an invalid value are rejected. Any operation that affects conditional role bindings must specify version `3`. This requirement applies to the following operations: * Getting a policy that includes a conditional role binding * Adding a conditional role binding to a policy * Changing a conditional role binding in a policy * Removing any role binding, with or without a condition, from a policy that includes conditions **Important:** If you use IAM Conditions, you must include the `etag` field whenever you call `setIamPolicy`. If you omit this field, then IAM allows you to overwrite a version `3` policy with a version `1` policy, and all of the conditions in the version `3` policy are lost. If a policy does not include any conditions, operations on that policy may specify any valid version or leave the field unset. To learn which resources support conditions in their IAM policies, see the [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    ReportAgentStateRequest = {
      description = "Request to report agent's state. The Request itself implies the agent is healthy.",
      id = "ReportAgentStateRequest",
      properties = {
        agentInfo = {
          ["$ref"] = "AgentInfo",
          description = "Agent info.",
        },
        agentTimingInfo = {
          ["$ref"] = "AgentTimingInfo",
          description = "Agent timing info.",
        },
        metadata = {
          ["$ref"] = "AgentMetadata",
          description = "Agent metadata.",
        },
      },
      type = "object",
    },
    ReportAgentStateResponse = {
      description = "Response to ReportAgentStateRequest.",
      id = "ReportAgentStateResponse",
      properties = {
        defaultReportInterval = {
          description = "Default report interval override",
          format = "google-duration",
          type = "string",
        },
        minReportInterval = {
          description = "Minimum report interval override",
          format = "google-duration",
          type = "string",
        },
        tasks = {
          description = "Tasks assigned to the agent",
          items = {
            ["$ref"] = "AgentTask",
          },
          type = "array",
        },
      },
      type = "object",
    },
    Runnable = {
      description = "Runnable describes instructions for executing a specific script or container as part of a Task.",
      id = "Runnable",
      properties = {
        alwaysRun = {
          description = "By default, after a Runnable fails, no further Runnable are executed. This flag indicates that this Runnable must be run even if the Task has already failed. This is useful for Runnables that copy output files off of the VM or for debugging. The always_run flag does not override the Task's overall max_run_duration. If the max_run_duration has expired then no further Runnables will execute, not even always_run Runnables.",
          type = "boolean",
        },
        background = {
          description = "This flag allows a Runnable to continue running in the background while the Task executes subsequent Runnables. This is useful to provide services to other Runnables (or to provide debugging support tools like SSH servers).",
          type = "boolean",
        },
        barrier = {
          ["$ref"] = "Barrier",
          description = "Barrier runnable.",
        },
        container = {
          ["$ref"] = "Container",
          description = "Container runnable.",
        },
        environment = {
          ["$ref"] = "Environment",
          description = "Environment variables for this Runnable (overrides variables set for the whole Task or TaskGroup).",
        },
        ignoreExitStatus = {
          description = "Normally, a non-zero exit status causes the Task to fail. This flag allows execution of other Runnables to continue instead.",
          type = "boolean",
        },
        script = {
          ["$ref"] = "Script",
          description = "Script runnable.",
        },
        timeout = {
          description = "Timeout for this Runnable.",
          format = "google-duration",
          type = "string",
        },
      },
      type = "object",
    },
    Script = {
      description = "Script runnable.",
      id = "Script",
      properties = {
        path = {
          description = "Script file path on the host VM.",
          type = "string",
        },
        text = {
          description = "Shell script text.",
          type = "string",
        },
      },
      type = "object",
    },
    ServiceAccount = {
      description = "Carries information about a Google Cloud service account.",
      id = "ServiceAccount",
      properties = {
        email = {
          description = "Email address of the service account. If not specified, the default Compute Engine service account for the project will be used. If instance template is being used, the service account has to be specified in the instance template and it has to match the email field here.",
          type = "string",
        },
      },
      type = "object",
    },
    SetIamPolicyRequest = {
      description = "Request message for `SetIamPolicy` method.",
      id = "SetIamPolicyRequest",
      properties = {
        policy = {
          ["$ref"] = "Policy",
          description = "REQUIRED: The complete policy to be applied to the `resource`. The size of the policy is limited to a few 10s of KB. An empty policy is a valid policy but certain Google Cloud services (such as Projects) might reject them.",
        },
        updateMask = {
          description = "OPTIONAL: A FieldMask specifying which fields of the policy to modify. Only the fields in the mask will be modified. If no mask is provided, the following default mask is used: `paths: \"bindings, etag\"`",
          format = "google-fieldmask",
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
    StatusEvent = {
      description = "Status event",
      id = "StatusEvent",
      properties = {
        description = {
          description = "Description of the event.",
          type = "string",
        },
        eventTime = {
          description = "The time this event occurred.",
          format = "google-datetime",
          type = "string",
        },
        taskExecution = {
          ["$ref"] = "TaskExecution",
          description = "Task Execution",
        },
        type = {
          description = "Type of the event.",
          type = "string",
        },
      },
      type = "object",
    },
    Task = {
      description = "A Cloud Batch task.",
      id = "Task",
      properties = {
        name = {
          description = "Task name. The name is generated from the parent TaskGroup name and 'id' field. For example: \"projects/123456/locations/us-west1/jobs/job01/taskGroups/group01/tasks/task01\".",
          type = "string",
        },
        status = {
          ["$ref"] = "TaskStatus",
          description = "Task Status.",
        },
      },
      type = "object",
    },
    TaskExecution = {
      description = "This Task Execution field includes detail information for task execution procedures, based on StatusEvent types.",
      id = "TaskExecution",
      properties = {
        exitCode = {
          description = "When task is completed as the status of FAILED or SUCCEEDED, exit code is for one task execution result, default is 0 as success.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    TaskGroup = {
      description = "A TaskGroup contains one or multiple Tasks that share the same Runnable but with different runtime parameters.",
      id = "TaskGroup",
      properties = {
        name = {
          description = "Output only. TaskGroup name. The system generates this field based on parent Job name. For example: \"projects/123456/locations/us-west1/jobs/job01/taskGroups/group01\".",
          readOnly = true,
          type = "string",
        },
        parallelism = {
          description = "Max number of tasks that can run in parallel. Default to min(task_count, 1000).",
          format = "int64",
          type = "string",
        },
        permissiveSsh = {
          description = "When true, Batch will configure SSH to allow passwordless login between VMs running the Batch tasks in the same TaskGroup.",
          type = "boolean",
        },
        requireHostsFile = {
          description = "When true, Batch will populate a file with a list of all VMs assigned to the TaskGroup and set the BATCH_HOSTS_FILE environment variable to the path of that file. Defaults to false.",
          type = "boolean",
        },
        taskCount = {
          description = "Number of Tasks in the TaskGroup. default is 1",
          format = "int64",
          type = "string",
        },
        taskCountPerNode = {
          description = "Max number of tasks that can be run on a VM at the same time. If not specified, the system will decide a value based on available compute resources on a VM and task requirements.",
          format = "int64",
          type = "string",
        },
        taskEnvironments = {
          description = "An array of environment variable mappings, which are passed to Tasks with matching indices. If task_environments is used then task_count should not be specified in the request (and will be ignored). Task count will be the length of task_environments. Tasks get a BATCH_TASK_INDEX and BATCH_TASK_COUNT environment variable, in addition to any environment variables set in task_environments, specifying the number of Tasks in the Task's parent TaskGroup, and the specific Task's index in the TaskGroup (0 through BATCH_TASK_COUNT - 1). task_environments supports up to 200 entries.",
          items = {
            ["$ref"] = "Environment",
          },
          type = "array",
        },
        taskSpec = {
          ["$ref"] = "TaskSpec",
          description = "Required. Tasks in the group share the same task spec.",
        },
      },
      type = "object",
    },
    TaskGroupStatus = {
      description = "Aggregated task status for a TaskGroup.",
      id = "TaskGroupStatus",
      properties = {
        counts = {
          additionalProperties = {
            format = "int64",
            type = "string",
          },
          description = "Count of task in each state in the TaskGroup. The map key is task state name.",
          type = "object",
        },
        instances = {
          description = "Status of instances allocated for the TaskGroup.",
          items = {
            ["$ref"] = "InstanceStatus",
          },
          type = "array",
        },
      },
      type = "object",
    },
    TaskSpec = {
      description = "Spec of a task",
      id = "TaskSpec",
      properties = {
        computeResource = {
          ["$ref"] = "ComputeResource",
          description = "ComputeResource requirements.",
        },
        environment = {
          ["$ref"] = "Environment",
          description = "Environment variables to set before running the Task.",
        },
        environments = {
          additionalProperties = {
            type = "string",
          },
          description = "Deprecated: please use environment(non-plural) instead.",
          type = "object",
        },
        lifecyclePolicies = {
          description = "Lifecycle management schema when any task in a task group is failed. The valid size of lifecycle policies are [0, 10]. For each lifecycle policy, when the condition is met, the action in that policy will execute. If there are multiple policies that the task execution result matches, we use the action from the first matched policy. If task execution result does not meet with any of the defined lifecycle policy, we consider it as the default policy. Default policy means if the exit code is 0, exit task. If task ends with non-zero exit code, retry the task with max_retry_count.",
          items = {
            ["$ref"] = "LifecyclePolicy",
          },
          type = "array",
        },
        maxRetryCount = {
          description = "Maximum number of retries on failures. The default, 0, which means never retry. The valid value range is [0, 10].",
          format = "int32",
          type = "integer",
        },
        maxRunDuration = {
          description = "Maximum duration the task should run. The task will be killed and marked as FAILED if over this limit.",
          format = "google-duration",
          type = "string",
        },
        runnables = {
          description = "The sequence of scripts or containers to run for this Task. Each Task using this TaskSpec executes its list of runnables in order. The Task succeeds if all of its runnables either exit with a zero status or any that exit with a non-zero status have the ignore_exit_status flag. Background runnables are killed automatically (if they have not already exited) a short time after all foreground runnables have completed. Even though this is likely to result in a non-zero exit status for the background runnable, these automatic kills are not treated as Task failures.",
          items = {
            ["$ref"] = "Runnable",
          },
          type = "array",
        },
        volumes = {
          description = "Volumes to mount before running Tasks using this TaskSpec.",
          items = {
            ["$ref"] = "Volume",
          },
          type = "array",
        },
      },
      type = "object",
    },
    TaskStatus = {
      description = "Status of a task",
      id = "TaskStatus",
      properties = {
        state = {
          description = "Task state",
          enum = {
            "STATE_UNSPECIFIED",
            "PENDING",
            "ASSIGNED",
            "RUNNING",
            "FAILED",
            "SUCCEEDED",
          },
          enumDescriptions = {
            "unknown state",
            "The Task is created and waiting for resources.",
            "The Task is assigned to at least one VM.",
            "The Task is running.",
            "The Task has failed.",
            "The Task has succeeded.",
          },
          type = "string",
        },
        statusEvents = {
          description = "Detailed info about why the state is reached.",
          items = {
            ["$ref"] = "StatusEvent",
          },
          type = "array",
        },
      },
      type = "object",
    },
    TestIamPermissionsRequest = {
      description = "Request message for `TestIamPermissions` method.",
      id = "TestIamPermissionsRequest",
      properties = {
        permissions = {
          description = "The set of permissions to check for the `resource`. Permissions with wildcards (such as `*` or `storage.*`) are not allowed. For more information see [IAM Overview](https://cloud.google.com/iam/docs/overview#permissions).",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    TestIamPermissionsResponse = {
      description = "Response message for `TestIamPermissions` method.",
      id = "TestIamPermissionsResponse",
      properties = {
        permissions = {
          description = "A subset of `TestPermissionsRequest.permissions` that the caller is allowed.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    Volume = {
      description = "Volume describes a volume and parameters for it to be mounted to a VM.",
      id = "Volume",
      properties = {
        deviceName = {
          description = "Device name of an attached disk volume, which should align with a device_name specified by job.allocation_policy.instances[0].policy.disks[i].device_name or defined by the given instance template in job.allocation_policy.instances[0].instance_template.",
          type = "string",
        },
        gcs = {
          ["$ref"] = "GCS",
          description = "A Google Cloud Storage (GCS) volume.",
        },
        mountOptions = {
          description = "For Google Cloud Storage (GCS), mount options are the options supported by the gcsfuse tool (https://github.com/GoogleCloudPlatform/gcsfuse). For existing persistent disks, mount options provided by the mount command (https://man7.org/linux/man-pages/man8/mount.8.html) except writing are supported. This is due to restrictions of multi-writer mode (https://cloud.google.com/compute/docs/disks/sharing-disks-between-vms). For other attached disks and Network File System (NFS), mount options are these supported by the mount command (https://man7.org/linux/man-pages/man8/mount.8.html).",
          items = {
            type = "string",
          },
          type = "array",
        },
        mountPath = {
          description = "The mount path for the volume, e.g. /mnt/disks/share.",
          type = "string",
        },
        nfs = {
          ["$ref"] = "NFS",
          description = "A Network File System (NFS) volume. For example, a Filestore file share.",
        },
      },
      type = "object",
    },
  },
  servicePath = "",
  title = "Batch API",
  version = "v1",
  version_module = true,
}
