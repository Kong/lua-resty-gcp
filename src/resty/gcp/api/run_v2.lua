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
  baseUrl = "https://run.googleapis.com/",
  batchPath = "batch",
  canonicalName = "Cloud Run",
  description = "Deploy and manage user provided container images that scale automatically based on incoming requests. The Cloud Run Admin API v1 follows the Knative Serving API specification, while v2 is aligned with Google Cloud AIP-based API standards, as described in https://google.aip.dev/.",
  discoveryVersion = "v1",
  documentationLink = "https://cloud.google.com/run/",
  fullyEncodeReservedExpansion = true,
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "run:v2",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://run.mtls.googleapis.com/",
  name = "run",
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
            jobs = {
              methods = {
                create = {
                  description = "Creates a Job.",
                  flatPath = "v2/projects/{projectsId}/locations/{locationsId}/jobs",
                  httpMethod = "POST",
                  id = "run.projects.locations.jobs.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    jobId = {
                      description = "Required. The unique identifier for the Job. The name of the job becomes {parent}/jobs/{job_id}.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The location and project in which this Job should be created. Format: projects/{project}/locations/{location}, where {project} can be project id or number.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    validateOnly = {
                      description = "Indicates that the request should be validated and default values populated, without persisting the request or creating any resources.",
                      location = "query",
                      type = "boolean",
                    },
                  },
                  path = "v2/{+parent}/jobs",
                  request = {
                    ["$ref"] = "GoogleCloudRunV2Job",
                  },
                  response = {
                    ["$ref"] = "GoogleLongrunningOperation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                delete = {
                  description = "Deletes a Job.",
                  flatPath = "v2/projects/{projectsId}/locations/{locationsId}/jobs/{jobsId}",
                  httpMethod = "DELETE",
                  id = "run.projects.locations.jobs.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    etag = {
                      description = "A system-generated fingerprint for this version of the resource. May be used to detect modification conflict during updates.",
                      location = "query",
                      type = "string",
                    },
                    name = {
                      description = "Required. The full name of the Job. Format: projects/{project}/locations/{location}/jobs/{job}, where {project} can be project id or number.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/jobs/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    validateOnly = {
                      description = "Indicates that the request should be validated without actually deleting any resources.",
                      location = "query",
                      type = "boolean",
                    },
                  },
                  path = "v2/{+name}",
                  response = {
                    ["$ref"] = "GoogleLongrunningOperation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                get = {
                  description = "Gets information about a Job.",
                  flatPath = "v2/projects/{projectsId}/locations/{locationsId}/jobs/{jobsId}",
                  httpMethod = "GET",
                  id = "run.projects.locations.jobs.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The full name of the Job. Format: projects/{project}/locations/{location}/jobs/{job}, where {project} can be project id or number.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/jobs/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v2/{+name}",
                  response = {
                    ["$ref"] = "GoogleCloudRunV2Job",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                getIamPolicy = {
                  description = "Gets the IAM Access Control policy currently in effect for the given Job. This result does not include any inherited policies.",
                  flatPath = "v2/projects/{projectsId}/locations/{locationsId}/jobs/{jobsId}:getIamPolicy",
                  httpMethod = "GET",
                  id = "run.projects.locations.jobs.getIamPolicy",
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
                  path = "v2/{+resource}:getIamPolicy",
                  response = {
                    ["$ref"] = "GoogleIamV1Policy",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                list = {
                  description = "Lists Jobs.",
                  flatPath = "v2/projects/{projectsId}/locations/{locationsId}/jobs",
                  httpMethod = "GET",
                  id = "run.projects.locations.jobs.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    pageSize = {
                      description = "Maximum number of Jobs to return in this call.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "A page token received from a previous call to ListJobs. All other parameters must match.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The location and project to list resources on. Format: projects/{project}/locations/{location}, where {project} can be project id or number.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    showDeleted = {
                      description = "If true, returns deleted (but unexpired) resources along with active ones.",
                      location = "query",
                      type = "boolean",
                    },
                  },
                  path = "v2/{+parent}/jobs",
                  response = {
                    ["$ref"] = "GoogleCloudRunV2ListJobsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                patch = {
                  description = "Updates a Job.",
                  flatPath = "v2/projects/{projectsId}/locations/{locationsId}/jobs/{jobsId}",
                  httpMethod = "PATCH",
                  id = "run.projects.locations.jobs.patch",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    allowMissing = {
                      description = "If set to true, and if the Job does not exist, it will create a new one. Caller must have both create and update permissions for this call if this is set to true.",
                      location = "query",
                      type = "boolean",
                    },
                    name = {
                      description = "The fully qualified name of this Job. Format: projects/{project}/locations/{location}/jobs/{job}",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/jobs/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    validateOnly = {
                      description = "Indicates that the request should be validated and default values populated, without persisting the request or updating any resources.",
                      location = "query",
                      type = "boolean",
                    },
                  },
                  path = "v2/{+name}",
                  request = {
                    ["$ref"] = "GoogleCloudRunV2Job",
                  },
                  response = {
                    ["$ref"] = "GoogleLongrunningOperation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                run = {
                  description = "Triggers creation of a new Execution of this Job.",
                  flatPath = "v2/projects/{projectsId}/locations/{locationsId}/jobs/{jobsId}:run",
                  httpMethod = "POST",
                  id = "run.projects.locations.jobs.run",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The full name of the Job. Format: projects/{project}/locations/{location}/jobs/{job}, where {project} can be project id or number.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/jobs/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v2/{+name}:run",
                  request = {
                    ["$ref"] = "GoogleCloudRunV2RunJobRequest",
                  },
                  response = {
                    ["$ref"] = "GoogleLongrunningOperation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                setIamPolicy = {
                  description = "Sets the IAM Access control policy for the specified Job. Overwrites any existing policy.",
                  flatPath = "v2/projects/{projectsId}/locations/{locationsId}/jobs/{jobsId}:setIamPolicy",
                  httpMethod = "POST",
                  id = "run.projects.locations.jobs.setIamPolicy",
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
                  path = "v2/{+resource}:setIamPolicy",
                  request = {
                    ["$ref"] = "GoogleIamV1SetIamPolicyRequest",
                  },
                  response = {
                    ["$ref"] = "GoogleIamV1Policy",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                testIamPermissions = {
                  description = "Returns permissions that a caller has on the specified Project. There are no permissions required for making this API call.",
                  flatPath = "v2/projects/{projectsId}/locations/{locationsId}/jobs/{jobsId}:testIamPermissions",
                  httpMethod = "POST",
                  id = "run.projects.locations.jobs.testIamPermissions",
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
                  path = "v2/{+resource}:testIamPermissions",
                  request = {
                    ["$ref"] = "GoogleIamV1TestIamPermissionsRequest",
                  },
                  response = {
                    ["$ref"] = "GoogleIamV1TestIamPermissionsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
              },
              resources = {
                executions = {
                  methods = {
                    delete = {
                      description = "Deletes an Execution.",
                      flatPath = "v2/projects/{projectsId}/locations/{locationsId}/jobs/{jobsId}/executions/{executionsId}",
                      httpMethod = "DELETE",
                      id = "run.projects.locations.jobs.executions.delete",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        etag = {
                          description = "A system-generated fingerprint for this version of the resource. This may be used to detect modification conflict during updates.",
                          location = "query",
                          type = "string",
                        },
                        name = {
                          description = "Required. The name of the Execution to delete. Format: projects/{project}/locations/{location}/jobs/{job}/executions/{execution}, where {project} can be project id or number.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/jobs/[^/]+/executions/[^/]+$",
                          required = true,
                          type = "string",
                        },
                        validateOnly = {
                          description = "Indicates that the request should be validated without actually deleting any resources.",
                          location = "query",
                          type = "boolean",
                        },
                      },
                      path = "v2/{+name}",
                      response = {
                        ["$ref"] = "GoogleLongrunningOperation",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    get = {
                      description = "Gets information about an Execution.",
                      flatPath = "v2/projects/{projectsId}/locations/{locationsId}/jobs/{jobsId}/executions/{executionsId}",
                      httpMethod = "GET",
                      id = "run.projects.locations.jobs.executions.get",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The full name of the Execution. Format: projects/{project}/locations/{location}/jobs/{job}/executions/{execution}, where {project} can be project id or number.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/jobs/[^/]+/executions/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v2/{+name}",
                      response = {
                        ["$ref"] = "GoogleCloudRunV2Execution",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    list = {
                      description = "Lists Executions from a Job.",
                      flatPath = "v2/projects/{projectsId}/locations/{locationsId}/jobs/{jobsId}/executions",
                      httpMethod = "GET",
                      id = "run.projects.locations.jobs.executions.list",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        pageSize = {
                          description = "Maximum number of Executions to return in this call.",
                          format = "int32",
                          location = "query",
                          type = "integer",
                        },
                        pageToken = {
                          description = "A page token received from a previous call to ListExecutions. All other parameters must match.",
                          location = "query",
                          type = "string",
                        },
                        parent = {
                          description = "Required. The Execution from which the Executions should be listed. To list all Executions across Jobs, use \"-\" instead of Job name. Format: projects/{project}/locations/{location}/jobs/{job}, where {project} can be project id or number.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/jobs/[^/]+$",
                          required = true,
                          type = "string",
                        },
                        showDeleted = {
                          description = "If true, returns deleted (but unexpired) resources along with active ones.",
                          location = "query",
                          type = "boolean",
                        },
                      },
                      path = "v2/{+parent}/executions",
                      response = {
                        ["$ref"] = "GoogleCloudRunV2ListExecutionsResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                  },
                  resources = {
                    tasks = {
                      methods = {
                        get = {
                          description = "Gets information about a Task.",
                          flatPath = "v2/projects/{projectsId}/locations/{locationsId}/jobs/{jobsId}/executions/{executionsId}/tasks/{tasksId}",
                          httpMethod = "GET",
                          id = "run.projects.locations.jobs.executions.tasks.get",
                          parameterOrder = {
                            "name",
                          },
                          parameters = {
                            name = {
                              description = "Required. The full name of the Task. Format: projects/{project}/locations/{location}/jobs/{job}/executions/{execution}/tasks/{task}",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/jobs/[^/]+/executions/[^/]+/tasks/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v2/{+name}",
                          response = {
                            ["$ref"] = "GoogleCloudRunV2Task",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                          },
                        },
                        list = {
                          description = "Lists Tasks from an Execution of a Job.",
                          flatPath = "v2/projects/{projectsId}/locations/{locationsId}/jobs/{jobsId}/executions/{executionsId}/tasks",
                          httpMethod = "GET",
                          id = "run.projects.locations.jobs.executions.tasks.list",
                          parameterOrder = {
                            "parent",
                          },
                          parameters = {
                            pageSize = {
                              description = "Maximum number of Tasks to return in this call.",
                              format = "int32",
                              location = "query",
                              type = "integer",
                            },
                            pageToken = {
                              description = "A page token received from a previous call to ListTasks. All other parameters must match.",
                              location = "query",
                              type = "string",
                            },
                            parent = {
                              description = "Required. The Execution from which the Tasks should be listed. To list all Tasks across Executions of a Job, use \"-\" instead of Execution name. To list all Tasks across Jobs, use \"-\" instead of Job name. Format: projects/{project}/locations/{location}/jobs/{job}/executions/{execution}",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/jobs/[^/]+/executions/[^/]+$",
                              required = true,
                              type = "string",
                            },
                            showDeleted = {
                              description = "If true, returns deleted (but unexpired) resources along with active ones.",
                              location = "query",
                              type = "boolean",
                            },
                          },
                          path = "v2/{+parent}/tasks",
                          response = {
                            ["$ref"] = "GoogleCloudRunV2ListTasksResponse",
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
                delete = {
                  description = "Deletes a long-running operation. This method indicates that the client is no longer interested in the operation result. It does not cancel the operation. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.",
                  flatPath = "v2/projects/{projectsId}/locations/{locationsId}/operations/{operationsId}",
                  httpMethod = "DELETE",
                  id = "run.projects.locations.operations.delete",
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
                  path = "v2/{+name}",
                  response = {
                    ["$ref"] = "GoogleProtobufEmpty",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                get = {
                  description = "Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.",
                  flatPath = "v2/projects/{projectsId}/locations/{locationsId}/operations/{operationsId}",
                  httpMethod = "GET",
                  id = "run.projects.locations.operations.get",
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
                    ["$ref"] = "GoogleLongrunningOperation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                list = {
                  description = "Lists operations that match the specified filter in the request. If the server doesn't support this method, it returns `UNIMPLEMENTED`. NOTE: the `name` binding allows API services to override the binding to use different resource name schemes, such as `users/*/operations`. To override the binding, API services can add a binding such as `\"/v1/{name=users/*}/operations\"` to their service configuration. For backwards compatibility, the default name includes the operations collection id, however overriding users must ensure the name binding is the parent resource, without the operations collection id.",
                  flatPath = "v2/projects/{projectsId}/locations/{locationsId}/operations",
                  httpMethod = "GET",
                  id = "run.projects.locations.operations.list",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    filter = {
                      description = "Optional. A filter for matching the completed or in-progress operations. The supported formats of *filter* are: To query for only completed operations: done:true To query for only ongoing operations: done:false Must be empty to query for all of the latest operations for the given parent project.",
                      location = "query",
                      type = "string",
                    },
                    name = {
                      description = "Required. To query for all of the operations for a project.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    pageSize = {
                      description = "The maximum number of records that should be returned. Requested page size cannot exceed 100. If not set or set to less than or equal to 0, the default page size is 100. .",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "Token identifying which result to start with, which is returned by a previous list call.",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v2/{+name}/operations",
                  response = {
                    ["$ref"] = "GoogleLongrunningListOperationsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
              },
            },
            services = {
              methods = {
                create = {
                  description = "Creates a new Service in a given project and location.",
                  flatPath = "v2/projects/{projectsId}/locations/{locationsId}/services",
                  httpMethod = "POST",
                  id = "run.projects.locations.services.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    parent = {
                      description = "Required. The location and project in which this service should be created. Format: projects/{project}/locations/{location}, where {project} can be project id or number. Only lowercase characters, digits, and hyphens.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    serviceId = {
                      description = "Required. The unique identifier for the Service. It must begin with letter, and cannot end with hyphen; must contain fewer than 50 characters. The name of the service becomes {parent}/services/{service_id}.",
                      location = "query",
                      type = "string",
                    },
                    validateOnly = {
                      description = "Indicates that the request should be validated and default values populated, without persisting the request or creating any resources.",
                      location = "query",
                      type = "boolean",
                    },
                  },
                  path = "v2/{+parent}/services",
                  request = {
                    ["$ref"] = "GoogleCloudRunV2Service",
                  },
                  response = {
                    ["$ref"] = "GoogleLongrunningOperation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                delete = {
                  description = "Deletes a Service. This will cause the Service to stop serving traffic and will delete all revisions.",
                  flatPath = "v2/projects/{projectsId}/locations/{locationsId}/services/{servicesId}",
                  httpMethod = "DELETE",
                  id = "run.projects.locations.services.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    etag = {
                      description = "A system-generated fingerprint for this version of the resource. May be used to detect modification conflict during updates.",
                      location = "query",
                      type = "string",
                    },
                    name = {
                      description = "Required. The full name of the Service. Format: projects/{project}/locations/{location}/services/{service}, where {project} can be project id or number.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/services/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    validateOnly = {
                      description = "Indicates that the request should be validated without actually deleting any resources.",
                      location = "query",
                      type = "boolean",
                    },
                  },
                  path = "v2/{+name}",
                  response = {
                    ["$ref"] = "GoogleLongrunningOperation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                get = {
                  description = "Gets information about a Service.",
                  flatPath = "v2/projects/{projectsId}/locations/{locationsId}/services/{servicesId}",
                  httpMethod = "GET",
                  id = "run.projects.locations.services.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The full name of the Service. Format: projects/{project}/locations/{location}/services/{service}, where {project} can be project id or number.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/services/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v2/{+name}",
                  response = {
                    ["$ref"] = "GoogleCloudRunV2Service",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                getIamPolicy = {
                  description = "Gets the IAM Access Control policy currently in effect for the given Cloud Run Service. This result does not include any inherited policies.",
                  flatPath = "v2/projects/{projectsId}/locations/{locationsId}/services/{servicesId}:getIamPolicy",
                  httpMethod = "GET",
                  id = "run.projects.locations.services.getIamPolicy",
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
                      pattern = "^projects/[^/]+/locations/[^/]+/services/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v2/{+resource}:getIamPolicy",
                  response = {
                    ["$ref"] = "GoogleIamV1Policy",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                list = {
                  description = "Lists Services.",
                  flatPath = "v2/projects/{projectsId}/locations/{locationsId}/services",
                  httpMethod = "GET",
                  id = "run.projects.locations.services.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    pageSize = {
                      description = "Maximum number of Services to return in this call.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "A page token received from a previous call to ListServices. All other parameters must match.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The location and project to list resources on. Location must be a valid Google Cloud region, and cannot be the \"-\" wildcard. Format: projects/{project}/locations/{location}, where {project} can be project id or number.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    showDeleted = {
                      description = "If true, returns deleted (but unexpired) resources along with active ones.",
                      location = "query",
                      type = "boolean",
                    },
                  },
                  path = "v2/{+parent}/services",
                  response = {
                    ["$ref"] = "GoogleCloudRunV2ListServicesResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                patch = {
                  description = "Updates a Service.",
                  flatPath = "v2/projects/{projectsId}/locations/{locationsId}/services/{servicesId}",
                  httpMethod = "PATCH",
                  id = "run.projects.locations.services.patch",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    allowMissing = {
                      description = "If set to true, and if the Service does not exist, it will create a new one. Caller must have both create and update permissions for this call if this is set to true.",
                      location = "query",
                      type = "boolean",
                    },
                    name = {
                      description = "The fully qualified name of this Service. In CreateServiceRequest, this field is ignored, and instead composed from CreateServiceRequest.parent and CreateServiceRequest.service_id. Format: projects/{project}/locations/{location}/services/{service_id}",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/services/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    validateOnly = {
                      description = "Indicates that the request should be validated and default values populated, without persisting the request or updating any resources.",
                      location = "query",
                      type = "boolean",
                    },
                  },
                  path = "v2/{+name}",
                  request = {
                    ["$ref"] = "GoogleCloudRunV2Service",
                  },
                  response = {
                    ["$ref"] = "GoogleLongrunningOperation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                setIamPolicy = {
                  description = "Sets the IAM Access control policy for the specified Service. Overwrites any existing policy.",
                  flatPath = "v2/projects/{projectsId}/locations/{locationsId}/services/{servicesId}:setIamPolicy",
                  httpMethod = "POST",
                  id = "run.projects.locations.services.setIamPolicy",
                  parameterOrder = {
                    "resource",
                  },
                  parameters = {
                    resource = {
                      description = "REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/services/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v2/{+resource}:setIamPolicy",
                  request = {
                    ["$ref"] = "GoogleIamV1SetIamPolicyRequest",
                  },
                  response = {
                    ["$ref"] = "GoogleIamV1Policy",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                testIamPermissions = {
                  description = "Returns permissions that a caller has on the specified Project. There are no permissions required for making this API call.",
                  flatPath = "v2/projects/{projectsId}/locations/{locationsId}/services/{servicesId}:testIamPermissions",
                  httpMethod = "POST",
                  id = "run.projects.locations.services.testIamPermissions",
                  parameterOrder = {
                    "resource",
                  },
                  parameters = {
                    resource = {
                      description = "REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/services/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v2/{+resource}:testIamPermissions",
                  request = {
                    ["$ref"] = "GoogleIamV1TestIamPermissionsRequest",
                  },
                  response = {
                    ["$ref"] = "GoogleIamV1TestIamPermissionsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
              },
              resources = {
                revisions = {
                  methods = {
                    delete = {
                      description = "Deletes a Revision.",
                      flatPath = "v2/projects/{projectsId}/locations/{locationsId}/services/{servicesId}/revisions/{revisionsId}",
                      httpMethod = "DELETE",
                      id = "run.projects.locations.services.revisions.delete",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        etag = {
                          description = "A system-generated fingerprint for this version of the resource. This may be used to detect modification conflict during updates.",
                          location = "query",
                          type = "string",
                        },
                        name = {
                          description = "Required. The name of the Revision to delete. Format: projects/{project}/locations/{location}/services/{service}/revisions/{revision}",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/services/[^/]+/revisions/[^/]+$",
                          required = true,
                          type = "string",
                        },
                        validateOnly = {
                          description = "Indicates that the request should be validated without actually deleting any resources.",
                          location = "query",
                          type = "boolean",
                        },
                      },
                      path = "v2/{+name}",
                      response = {
                        ["$ref"] = "GoogleLongrunningOperation",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    get = {
                      description = "Gets information about a Revision.",
                      flatPath = "v2/projects/{projectsId}/locations/{locationsId}/services/{servicesId}/revisions/{revisionsId}",
                      httpMethod = "GET",
                      id = "run.projects.locations.services.revisions.get",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The full name of the Revision. Format: projects/{project}/locations/{location}/services/{service}/revisions/{revision}",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/services/[^/]+/revisions/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v2/{+name}",
                      response = {
                        ["$ref"] = "GoogleCloudRunV2Revision",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    list = {
                      description = "Lists Revisions from a given Service, or from a given location.",
                      flatPath = "v2/projects/{projectsId}/locations/{locationsId}/services/{servicesId}/revisions",
                      httpMethod = "GET",
                      id = "run.projects.locations.services.revisions.list",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        pageSize = {
                          description = "Maximum number of revisions to return in this call.",
                          format = "int32",
                          location = "query",
                          type = "integer",
                        },
                        pageToken = {
                          description = "A page token received from a previous call to ListRevisions. All other parameters must match.",
                          location = "query",
                          type = "string",
                        },
                        parent = {
                          description = "Required. The Service from which the Revisions should be listed. To list all Revisions across Services, use \"-\" instead of Service name. Format: projects/{project}/locations/{location}/services/{service}",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/services/[^/]+$",
                          required = true,
                          type = "string",
                        },
                        showDeleted = {
                          description = "If true, returns deleted (but unexpired) resources along with active ones.",
                          location = "query",
                          type = "boolean",
                        },
                      },
                      path = "v2/{+parent}/revisions",
                      response = {
                        ["$ref"] = "GoogleCloudRunV2ListRevisionsResponse",
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
  rootUrl = "https://run.googleapis.com/",
  schemas = {
    GoogleCloudRunV2BinaryAuthorization = {
      description = "Settings for Binary Authorization feature.",
      id = "GoogleCloudRunV2BinaryAuthorization",
      properties = {
        breakglassJustification = {
          description = "If present, indicates to use Breakglass using this justification. If use_default is False, then it must be empty. For more information on breakglass, see https://cloud.google.com/binary-authorization/docs/using-breakglass",
          type = "string",
        },
        useDefault = {
          description = "If True, indicates to use the default project's binary authorization policy. If False, binary authorization will be disabled.",
          type = "boolean",
        },
      },
      type = "object",
    },
    GoogleCloudRunV2CloudSqlInstance = {
      description = "Represents a set of Cloud SQL instances. Each one will be available under /cloudsql/[instance]. Visit https://cloud.google.com/sql/docs/mysql/connect-run for more information on how to connect Cloud SQL and Cloud Run.",
      id = "GoogleCloudRunV2CloudSqlInstance",
      properties = {
        instances = {
          description = "The Cloud SQL instance connection names, as can be found in https://console.cloud.google.com/sql/instances. Visit https://cloud.google.com/sql/docs/mysql/connect-run for more information on how to connect Cloud SQL and Cloud Run. Format: {project}:{location}:{instance}",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudRunV2Condition = {
      description = "Defines a status condition for a resource.",
      id = "GoogleCloudRunV2Condition",
      properties = {
        executionReason = {
          description = "A reason for the execution condition.",
          enum = {
            "EXECUTION_REASON_UNDEFINED",
            "JOB_STATUS_SERVICE_POLLING_ERROR",
            "NON_ZERO_EXIT_CODE",
            "CANCELLED",
          },
          enumDescriptions = {
            "Default value.",
            "Internal system error getting execution status. System will retry.",
            "A task reached its retry limit and the last attempt failed due to the user container exiting with a non-zero exit code.",
            "The execution was cancelled by users.",
          },
          type = "string",
        },
        lastTransitionTime = {
          description = "Last time the condition transitioned from one status to another.",
          format = "google-datetime",
          type = "string",
        },
        message = {
          description = "Human readable message indicating details about the current status.",
          type = "string",
        },
        reason = {
          description = "A common (service-level) reason for this condition.",
          enum = {
            "COMMON_REASON_UNDEFINED",
            "UNKNOWN",
            "REVISION_FAILED",
            "PROGRESS_DEADLINE_EXCEEDED",
            "CONTAINER_MISSING",
            "CONTAINER_PERMISSION_DENIED",
            "CONTAINER_IMAGE_UNAUTHORIZED",
            "CONTAINER_IMAGE_AUTHORIZATION_CHECK_FAILED",
            "ENCRYPTION_KEY_PERMISSION_DENIED",
            "ENCRYPTION_KEY_CHECK_FAILED",
            "SECRETS_ACCESS_CHECK_FAILED",
            "WAITING_FOR_OPERATION",
            "IMMEDIATE_RETRY",
            "POSTPONED_RETRY",
            "INTERNAL",
          },
          enumDescriptions = {
            "Default value.",
            "Reason unknown. Further details will be in message.",
            "Revision creation process failed.",
            "Timed out waiting for completion.",
            "The container image path is incorrect.",
            "Insufficient permissions on the container image.",
            "Container image is not authorized by policy.",
            "Container image policy authorization check failed.",
            "Insufficient permissions on encryption key.",
            "Permission check on encryption key failed.",
            "At least one Access check on secrets failed.",
            "Waiting for operation to complete.",
            "System will retry immediately.",
            "System will retry later; current attempt failed.",
            "An internal error occurred. Further information may be in the message.",
          },
          type = "string",
        },
        revisionReason = {
          description = "A reason for the revision condition.",
          enum = {
            "REVISION_REASON_UNDEFINED",
            "PENDING",
            "RESERVE",
            "RETIRED",
            "RETIRING",
            "RECREATING",
            "HEALTH_CHECK_CONTAINER_ERROR",
            "CUSTOMIZED_PATH_RESPONSE_PENDING",
            "MIN_INSTANCES_NOT_PROVISIONED",
            "ACTIVE_REVISION_LIMIT_REACHED",
            "NO_DEPLOYMENT",
            "HEALTH_CHECK_SKIPPED",
            "MIN_INSTANCES_WARMING",
          },
          enumDescriptions = {
            "Default value.",
            "Revision in Pending state.",
            "Revision is in Reserve state.",
            "Revision is Retired.",
            "Revision is being retired.",
            "Revision is being recreated.",
            "There was a health check error.",
            "Health check failed due to user error from customized path of the container. System will retry.",
            "A revision with min_instance_count > 0 was created and is reserved, but it was not configured to serve traffic, so it's not live. This can also happen momentarily during traffic migration.",
            "The maximum allowed number of active revisions has been reached.",
            "There was no deployment defined. This value is no longer used, but Services created in older versions of the API might contain this value.",
            "A revision's container has no port specified since the revision is of a manually scaled service with 0 instance count",
            "A revision with min_instance_count > 0 was created and is waiting for enough instances to begin a traffic migration.",
          },
          type = "string",
        },
        severity = {
          description = "How to interpret failures of this condition, one of Error, Warning, Info",
          enum = {
            "SEVERITY_UNSPECIFIED",
            "ERROR",
            "WARNING",
            "INFO",
          },
          enumDescriptions = {
            "Unspecified severity",
            "Error severity.",
            "Warning severity.",
            "Info severity.",
          },
          type = "string",
        },
        state = {
          description = "State of the condition.",
          enum = {
            "STATE_UNSPECIFIED",
            "CONDITION_PENDING",
            "CONDITION_RECONCILING",
            "CONDITION_FAILED",
            "CONDITION_SUCCEEDED",
          },
          enumDescriptions = {
            "The default value. This value is used if the state is omitted.",
            "Transient state: Reconciliation has not started yet.",
            "Transient state: reconciliation is still in progress.",
            "Terminal state: Reconciliation did not succeed.",
            "Terminal state: Reconciliation completed successfully.",
          },
          type = "string",
        },
        type = {
          description = "type is used to communicate the status of the reconciliation process. See also: https://github.com/knative/serving/blob/main/docs/spec/errors.md#error-conditions-and-reporting Types common to all resources include: * \"Ready\": True when the Resource is ready.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudRunV2Container = {
      description = "A single application container. This specifies both the container to run, the command to run in the container and the arguments to supply to it. Note that additional arguments may be supplied by the system to the container at runtime.",
      id = "GoogleCloudRunV2Container",
      properties = {
        args = {
          description = "Arguments to the entrypoint. The docker image's CMD is used if this is not provided. Variable references $(VAR_NAME) are expanded using the container's environment. If a variable cannot be resolved, the reference in the input string will be unchanged. The $(VAR_NAME) syntax can be escaped with a double $$, ie: $$(VAR_NAME). Escaped references will never be expanded, regardless of whether the variable exists or not. More info: https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#running-a-command-in-a-shell",
          items = {
            type = "string",
          },
          type = "array",
        },
        command = {
          description = "Entrypoint array. Not executed within a shell. The docker image's ENTRYPOINT is used if this is not provided. Variable references $(VAR_NAME) are expanded using the container's environment. If a variable cannot be resolved, the reference in the input string will be unchanged. The $(VAR_NAME) syntax can be escaped with a double $$, ie: $$(VAR_NAME). Escaped references will never be expanded, regardless of whether the variable exists or not. More info: https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#running-a-command-in-a-shell",
          items = {
            type = "string",
          },
          type = "array",
        },
        env = {
          description = "List of environment variables to set in the container.",
          items = {
            ["$ref"] = "GoogleCloudRunV2EnvVar",
          },
          type = "array",
        },
        image = {
          description = "Required. URL of the Container image in Google Container Registry or Google Artifact Registry. More info: https://kubernetes.io/docs/concepts/containers/images",
          type = "string",
        },
        livenessProbe = {
          ["$ref"] = "GoogleCloudRunV2Probe",
          description = "Periodic probe of container liveness. Container will be restarted if the probe fails. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes",
        },
        name = {
          description = "Name of the container specified as a DNS_LABEL (RFC 1123).",
          type = "string",
        },
        ports = {
          description = "List of ports to expose from the container. Only a single port can be specified. The specified ports must be listening on all interfaces (0.0.0.0) within the container to be accessible. If omitted, a port number will be chosen and passed to the container through the PORT environment variable for the container to listen on.",
          items = {
            ["$ref"] = "GoogleCloudRunV2ContainerPort",
          },
          type = "array",
        },
        resources = {
          ["$ref"] = "GoogleCloudRunV2ResourceRequirements",
          description = "Compute Resource requirements by this container. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#resources",
        },
        startupProbe = {
          ["$ref"] = "GoogleCloudRunV2Probe",
          description = "Startup probe of application within the container. All other probes are disabled if a startup probe is provided, until it succeeds. Container will not be added to service endpoints if the probe fails. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes",
        },
        volumeMounts = {
          description = "Volume to mount into the container's filesystem.",
          items = {
            ["$ref"] = "GoogleCloudRunV2VolumeMount",
          },
          type = "array",
        },
        workingDir = {
          description = "Container's working directory. If not specified, the container runtime's default will be used, which might be configured in the container image.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudRunV2ContainerPort = {
      description = "ContainerPort represents a network port in a single container.",
      id = "GoogleCloudRunV2ContainerPort",
      properties = {
        containerPort = {
          description = "Port number the container listens on. This must be a valid TCP port number, 0 < container_port < 65536.",
          format = "int32",
          type = "integer",
        },
        name = {
          description = "If specified, used to specify which protocol to use. Allowed values are \"http1\" and \"h2c\".",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudRunV2EnvVar = {
      description = "EnvVar represents an environment variable present in a Container.",
      id = "GoogleCloudRunV2EnvVar",
      properties = {
        name = {
          description = "Required. Name of the environment variable. Must be a C_IDENTIFIER, and mnay not exceed 32768 characters.",
          type = "string",
        },
        value = {
          description = "Variable references $(VAR_NAME) are expanded using the previous defined environment variables in the container and any route environment variables. If a variable cannot be resolved, the reference in the input string will be unchanged. The $(VAR_NAME) syntax can be escaped with a double $$, ie: $$(VAR_NAME). Escaped references will never be expanded, regardless of whether the variable exists or not. Defaults to \"\", and the maximum length is 32768 bytes.",
          type = "string",
        },
        valueSource = {
          ["$ref"] = "GoogleCloudRunV2EnvVarSource",
          description = "Source for the environment variable's value.",
        },
      },
      type = "object",
    },
    GoogleCloudRunV2EnvVarSource = {
      description = "EnvVarSource represents a source for the value of an EnvVar.",
      id = "GoogleCloudRunV2EnvVarSource",
      properties = {
        secretKeyRef = {
          ["$ref"] = "GoogleCloudRunV2SecretKeySelector",
          description = "Selects a secret and a specific version from Cloud Secret Manager.",
        },
      },
      type = "object",
    },
    GoogleCloudRunV2Execution = {
      description = "Execution represents the configuration of a single execution. A execution an immutable resource that references a container image which is run to completion.",
      id = "GoogleCloudRunV2Execution",
      properties = {
        annotations = {
          additionalProperties = {
            type = "string",
          },
          description = "KRM-style annotations for the resource.",
          type = "object",
        },
        cancelledCount = {
          description = "Output only. The number of tasks which reached phase Cancelled.",
          format = "int32",
          readOnly = true,
          type = "integer",
        },
        completionTime = {
          description = "Output only. Represents time when the execution was completed. It is not guaranteed to be set in happens-before order across separate operations.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        conditions = {
          description = "Output only. The Condition of this Execution, containing its readiness status, and detailed error information in case it did not reach the desired state.",
          items = {
            ["$ref"] = "GoogleCloudRunV2Condition",
          },
          readOnly = true,
          type = "array",
        },
        createTime = {
          description = "Output only. Represents time when the execution was acknowledged by the execution controller. It is not guaranteed to be set in happens-before order across separate operations.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        deleteTime = {
          description = "Output only. For a deleted resource, the deletion time. It is only populated as a response to a Delete request.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        etag = {
          description = "Output only. A system-generated fingerprint for this version of the resource. May be used to detect modification conflict during updates.",
          readOnly = true,
          type = "string",
        },
        expireTime = {
          description = "Output only. For a deleted resource, the time after which it will be permamently deleted. It is only populated as a response to a Delete request.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        failedCount = {
          description = "Output only. The number of tasks which reached phase Failed.",
          format = "int32",
          readOnly = true,
          type = "integer",
        },
        generation = {
          description = "Output only. A number that monotonically increases every time the user modifies the desired state.",
          format = "int64",
          readOnly = true,
          type = "string",
        },
        job = {
          description = "Output only. The name of the parent Job.",
          readOnly = true,
          type = "string",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "KRM-style labels for the resource. User-provided labels are shared with Google's billing system, so they can be used to filter, or break down billing charges by team, component, environment, state, etc. For more information, visit https://cloud.google.com/resource-manager/docs/creating-managing-labels or https://cloud.google.com/run/docs/configuring/labels",
          type = "object",
        },
        launchStage = {
          description = "Set the launch stage to a preview stage on write to allow use of preview features in that stage. On read, describes whether the resource uses preview features. Launch Stages are defined at [Google Cloud Platform Launch Stages](https://cloud.google.com/terms/launch-stages).",
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
            "Deprecated features are scheduled to be shut down and removed. For more information, see the \"Deprecation Policy\" section of our [Terms of Service](https://cloud.google.com/terms/) and the [Google Cloud Platform Subject to the Deprecation Policy](https://cloud.google.com/terms/deprecation) documentation.",
          },
          type = "string",
        },
        logUri = {
          description = "Output only. URI where logs for this execution can be found in Cloud Console.",
          readOnly = true,
          type = "string",
        },
        name = {
          description = "Output only. The unique name of this Execution.",
          readOnly = true,
          type = "string",
        },
        observedGeneration = {
          description = "Output only. The generation of this Execution. See comments in `reconciling` for additional information on reconciliation process in Cloud Run.",
          format = "int64",
          readOnly = true,
          type = "string",
        },
        parallelism = {
          description = "Output only. Specifies the maximum desired number of tasks the execution should run at any given time. Must be <= task_count. The actual number of tasks running in steady state will be less than this number when ((.spec.task_count - .status.successful) < .spec.parallelism), i.e. when the work left to do is less than max parallelism. More info: https://kubernetes.io/docs/concepts/workloads/controllers/jobs-run-to-completion/",
          format = "int32",
          readOnly = true,
          type = "integer",
        },
        reconciling = {
          description = "Output only. Indicates whether the resource's reconciliation is still in progress. See comments in `Job.reconciling` for additional information on reconciliation process in Cloud Run.",
          readOnly = true,
          type = "boolean",
        },
        retriedCount = {
          description = "Output only. The number of tasks which have retried at least once.",
          format = "int32",
          readOnly = true,
          type = "integer",
        },
        runningCount = {
          description = "Output only. The number of actively running tasks.",
          format = "int32",
          readOnly = true,
          type = "integer",
        },
        startTime = {
          description = "Output only. Represents time when the execution started to run. It is not guaranteed to be set in happens-before order across separate operations.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        succeededCount = {
          description = "Output only. The number of tasks which reached phase Succeeded.",
          format = "int32",
          readOnly = true,
          type = "integer",
        },
        taskCount = {
          description = "Output only. Specifies the desired number of tasks the execution should run. Setting to 1 means that parallelism is limited to 1 and the success of that task signals the success of the execution. More info: https://kubernetes.io/docs/concepts/workloads/controllers/jobs-run-to-completion/",
          format = "int32",
          readOnly = true,
          type = "integer",
        },
        template = {
          ["$ref"] = "GoogleCloudRunV2TaskTemplate",
          description = "Output only. The template used to create tasks for this execution.",
          readOnly = true,
        },
        uid = {
          description = "Output only. Server assigned unique identifier for the Execution. The value is a UUID4 string and guaranteed to remain unchanged until the resource is deleted.",
          readOnly = true,
          type = "string",
        },
        updateTime = {
          description = "Output only. The last-modified time.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudRunV2ExecutionReference = {
      description = "Reference to an Execution. Use /Executions.GetExecution with the given name to get full execution including the latest status.",
      id = "GoogleCloudRunV2ExecutionReference",
      properties = {
        completionTime = {
          description = "Creation timestamp of the execution.",
          format = "google-datetime",
          type = "string",
        },
        createTime = {
          description = "Creation timestamp of the execution.",
          format = "google-datetime",
          type = "string",
        },
        name = {
          description = "Name of the execution.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudRunV2ExecutionTemplate = {
      description = "ExecutionTemplate describes the data an execution should have when created from a template.",
      id = "GoogleCloudRunV2ExecutionTemplate",
      properties = {
        annotations = {
          additionalProperties = {
            type = "string",
          },
          description = "KRM-style annotations for the resource. Cloud Run API v2 does not support annotations with `run.googleapis.com`, `cloud.googleapis.com`, `serving.knative.dev`, or `autoscaling.knative.dev` namespaces, and they will be rejected. All system annotations in v1 now have a corresponding field in v2 ExecutionTemplate.",
          type = "object",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "KRM-style labels for the resource. Cloud Run API v2 does not support labels with `run.googleapis.com`, `cloud.googleapis.com`, `serving.knative.dev`, or `autoscaling.knative.dev` namespaces, and they will be rejected. All system labels in v1 now have a corresponding field in v2 ExecutionTemplate.",
          type = "object",
        },
        parallelism = {
          description = "Specifies the maximum desired number of tasks the execution should run at given time. Must be <= task_count. When the job is run, if this field is 0 or unset, the maximum possible value will be used for that execution. The actual number of tasks running in steady state will be less than this number when there are fewer tasks waiting to be completed remaining, i.e. when the work left to do is less than max parallelism.",
          format = "int32",
          type = "integer",
        },
        taskCount = {
          description = "Specifies the desired number of tasks the execution should run. Setting to 1 means that parallelism is limited to 1 and the success of that task signals the success of the execution. More info: https://kubernetes.io/docs/concepts/workloads/controllers/jobs-run-to-completion/",
          format = "int32",
          type = "integer",
        },
        template = {
          ["$ref"] = "GoogleCloudRunV2TaskTemplate",
          description = "Required. Describes the task(s) that will be created when executing an execution.",
        },
      },
      type = "object",
    },
    GoogleCloudRunV2GRPCAction = {
      description = "GRPCAction describes an action involving a GRPC port.",
      id = "GoogleCloudRunV2GRPCAction",
      properties = {
        port = {
          description = "Port number of the gRPC service. Number must be in the range 1 to 65535. If not specified, defaults to 8080.",
          format = "int32",
          type = "integer",
        },
        service = {
          description = "Service is the name of the service to place in the gRPC HealthCheckRequest (see https://github.com/grpc/grpc/blob/master/doc/health-checking.md). If this is not specified, the default behavior is defined by gRPC.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudRunV2HTTPGetAction = {
      description = "HTTPGetAction describes an action based on HTTP Get requests.",
      id = "GoogleCloudRunV2HTTPGetAction",
      properties = {
        httpHeaders = {
          description = "Custom headers to set in the request. HTTP allows repeated headers.",
          items = {
            ["$ref"] = "GoogleCloudRunV2HTTPHeader",
          },
          type = "array",
        },
        path = {
          description = "Path to access on the HTTP server. Defaults to '/'.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudRunV2HTTPHeader = {
      description = "HTTPHeader describes a custom header to be used in HTTP probes",
      id = "GoogleCloudRunV2HTTPHeader",
      properties = {
        name = {
          description = "Required. The header field name",
          type = "string",
        },
        value = {
          description = "The header field value",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudRunV2Job = {
      description = "Job represents the configuration of a single job, which references a container image that is run to completion.",
      id = "GoogleCloudRunV2Job",
      properties = {
        annotations = {
          additionalProperties = {
            type = "string",
          },
          description = "KRM-style annotations for the resource. Unstructured key value map that may be set by external tools to store and arbitrary metadata. They are not queryable and should be preserved when modifying objects. Cloud Run API v2 does not support annotations with `run.googleapis.com`, `cloud.googleapis.com`, `serving.knative.dev`, or `autoscaling.knative.dev` namespaces, and they will be rejected. All system annotations in v1 now have a corresponding field in v2 Job. This field follows Kubernetes annotations' namespacing, limits, and rules. More info: https://kubernetes.io/docs/user-guide/annotations",
          type = "object",
        },
        binaryAuthorization = {
          ["$ref"] = "GoogleCloudRunV2BinaryAuthorization",
          description = "Settings for the Binary Authorization feature.",
        },
        client = {
          description = "Arbitrary identifier for the API client.",
          type = "string",
        },
        clientVersion = {
          description = "Arbitrary version identifier for the API client.",
          type = "string",
        },
        conditions = {
          description = "Output only. The Conditions of all other associated sub-resources. They contain additional diagnostics information in case the Job does not reach its desired state. See comments in `reconciling` for additional information on reconciliation process in Cloud Run.",
          items = {
            ["$ref"] = "GoogleCloudRunV2Condition",
          },
          readOnly = true,
          type = "array",
        },
        createTime = {
          description = "Output only. The creation time.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        creator = {
          description = "Output only. Email address of the authenticated creator.",
          readOnly = true,
          type = "string",
        },
        deleteTime = {
          description = "Output only. The deletion time.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        etag = {
          description = "Output only. A system-generated fingerprint for this version of the resource. May be used to detect modification conflict during updates.",
          readOnly = true,
          type = "string",
        },
        executionCount = {
          description = "Output only. Number of executions created for this job.",
          format = "int32",
          readOnly = true,
          type = "integer",
        },
        expireTime = {
          description = "Output only. For a deleted resource, the time after which it will be permamently deleted.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        generation = {
          description = "Output only. A number that monotonically increases every time the user modifies the desired state.",
          format = "int64",
          readOnly = true,
          type = "string",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "KRM-style labels for the resource. User-provided labels are shared with Google's billing system, so they can be used to filter, or break down billing charges by team, component, environment, state, etc. For more information, visit https://cloud.google.com/resource-manager/docs/creating-managing-labels or https://cloud.google.com/run/docs/configuring/labels Cloud Run API v2 does not support labels with `run.googleapis.com`, `cloud.googleapis.com`, `serving.knative.dev`, or `autoscaling.knative.dev` namespaces, and they will be rejected. All system labels in v1 now have a corresponding field in v2 Job.",
          type = "object",
        },
        lastModifier = {
          description = "Output only. Email address of the last authenticated modifier.",
          readOnly = true,
          type = "string",
        },
        latestCreatedExecution = {
          ["$ref"] = "GoogleCloudRunV2ExecutionReference",
          description = "Output only. Name of the last created execution.",
          readOnly = true,
        },
        launchStage = {
          description = "The launch stage as defined by [Google Cloud Platform Launch Stages](https://cloud.google.com/terms/launch-stages). Cloud Run supports `ALPHA`, `BETA`, and `GA`. If no value is specified, GA is assumed.",
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
            "Deprecated features are scheduled to be shut down and removed. For more information, see the \"Deprecation Policy\" section of our [Terms of Service](https://cloud.google.com/terms/) and the [Google Cloud Platform Subject to the Deprecation Policy](https://cloud.google.com/terms/deprecation) documentation.",
          },
          type = "string",
        },
        name = {
          description = "The fully qualified name of this Job. Format: projects/{project}/locations/{location}/jobs/{job}",
          type = "string",
        },
        observedGeneration = {
          description = "Output only. The generation of this Job. See comments in `reconciling` for additional information on reconciliation process in Cloud Run.",
          format = "int64",
          readOnly = true,
          type = "string",
        },
        reconciling = {
          description = "Output only. Returns true if the Job is currently being acted upon by the system to bring it into the desired state. When a new Job is created, or an existing one is updated, Cloud Run will asynchronously perform all necessary steps to bring the Job to the desired state. This process is called reconciliation. While reconciliation is in process, `observed_generation` and `latest_succeeded_execution`, will have transient values that might mismatch the intended state: Once reconciliation is over (and this field is false), there are two possible outcomes: reconciliation succeeded and the state matches the Job, or there was an error, and reconciliation failed. This state can be found in `terminal_condition.state`. If reconciliation succeeded, the following fields will match: `observed_generation` and `generation`, `latest_succeeded_execution` and `latest_created_execution`. If reconciliation failed, `observed_generation` and `latest_succeeded_execution` will have the state of the last succeeded execution or empty for newly created Job. Additional information on the failure can be found in `terminal_condition` and `conditions`.",
          readOnly = true,
          type = "boolean",
        },
        template = {
          ["$ref"] = "GoogleCloudRunV2ExecutionTemplate",
          description = "Required. The template used to create executions for this Job.",
        },
        terminalCondition = {
          ["$ref"] = "GoogleCloudRunV2Condition",
          description = "Output only. The Condition of this Job, containing its readiness status, and detailed error information in case it did not reach the desired state.",
          readOnly = true,
        },
        uid = {
          description = "Output only. Server assigned unique identifier for the Execution. The value is a UUID4 string and guaranteed to remain unchanged until the resource is deleted.",
          readOnly = true,
          type = "string",
        },
        updateTime = {
          description = "Output only. The last-modified time.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudRunV2ListExecutionsResponse = {
      description = "Response message containing a list of Executions.",
      id = "GoogleCloudRunV2ListExecutionsResponse",
      properties = {
        executions = {
          description = "The resulting list of Executions.",
          items = {
            ["$ref"] = "GoogleCloudRunV2Execution",
          },
          type = "array",
        },
        nextPageToken = {
          description = "A token indicating there are more items than page_size. Use it in the next ListExecutions request to continue.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudRunV2ListJobsResponse = {
      description = "Response message containing a list of Jobs.",
      id = "GoogleCloudRunV2ListJobsResponse",
      properties = {
        jobs = {
          description = "The resulting list of Jobs.",
          items = {
            ["$ref"] = "GoogleCloudRunV2Job",
          },
          type = "array",
        },
        nextPageToken = {
          description = "A token indicating there are more items than page_size. Use it in the next ListJobs request to continue.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudRunV2ListRevisionsResponse = {
      description = "Response message containing a list of Revisions.",
      id = "GoogleCloudRunV2ListRevisionsResponse",
      properties = {
        nextPageToken = {
          description = "A token indicating there are more items than page_size. Use it in the next ListRevisions request to continue.",
          type = "string",
        },
        revisions = {
          description = "The resulting list of Revisions.",
          items = {
            ["$ref"] = "GoogleCloudRunV2Revision",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudRunV2ListServicesResponse = {
      description = "Response message containing a list of Services.",
      id = "GoogleCloudRunV2ListServicesResponse",
      properties = {
        nextPageToken = {
          description = "A token indicating there are more items than page_size. Use it in the next ListServices request to continue.",
          type = "string",
        },
        services = {
          description = "The resulting list of Services.",
          items = {
            ["$ref"] = "GoogleCloudRunV2Service",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudRunV2ListTasksResponse = {
      description = "Response message containing a list of Tasks.",
      id = "GoogleCloudRunV2ListTasksResponse",
      properties = {
        nextPageToken = {
          description = "A token indicating there are more items than page_size. Use it in the next ListTasks request to continue.",
          type = "string",
        },
        tasks = {
          description = "The resulting list of Tasks.",
          items = {
            ["$ref"] = "GoogleCloudRunV2Task",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudRunV2Probe = {
      description = "Probe describes a health check to be performed against a container to determine whether it is alive or ready to receive traffic.",
      id = "GoogleCloudRunV2Probe",
      properties = {
        failureThreshold = {
          description = "Minimum consecutive failures for the probe to be considered failed after having succeeded. Defaults to 3. Minimum value is 1.",
          format = "int32",
          type = "integer",
        },
        grpc = {
          ["$ref"] = "GoogleCloudRunV2GRPCAction",
          description = "GRPC specifies an action involving a gRPC port. Exactly one of httpGet, tcpSocket, or grpc must be specified.",
        },
        httpGet = {
          ["$ref"] = "GoogleCloudRunV2HTTPGetAction",
          description = "HTTPGet specifies the http request to perform. Exactly one of httpGet, tcpSocket, or grpc must be specified.",
        },
        initialDelaySeconds = {
          description = "Number of seconds after the container has started before the probe is initiated. Defaults to 0 seconds. Minimum value is 0. Maximum value for liveness probe is 3600. Maximum value for startup probe is 240. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes",
          format = "int32",
          type = "integer",
        },
        periodSeconds = {
          description = "How often (in seconds) to perform the probe. Default to 10 seconds. Minimum value is 1. Maximum value for liveness probe is 3600. Maximum value for startup probe is 240. Must be greater or equal than timeout_seconds.",
          format = "int32",
          type = "integer",
        },
        tcpSocket = {
          ["$ref"] = "GoogleCloudRunV2TCPSocketAction",
          description = "TCPSocket specifies an action involving a TCP port. Exactly one of httpGet, tcpSocket, or grpc must be specified.",
        },
        timeoutSeconds = {
          description = "Number of seconds after which the probe times out. Defaults to 1 second. Minimum value is 1. Maximum value is 3600. Must be smaller than period_seconds. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    GoogleCloudRunV2ResourceRequirements = {
      description = "ResourceRequirements describes the compute resource requirements.",
      id = "GoogleCloudRunV2ResourceRequirements",
      properties = {
        cpuIdle = {
          description = "Determines whether CPU should be throttled or not outside of requests.",
          type = "boolean",
        },
        limits = {
          additionalProperties = {
            type = "string",
          },
          description = "Only memory and CPU are supported. Note: The only supported values for CPU are '1', '2', '4', and '8'. Setting 4 CPU requires at least 2Gi of memory. The values of the map is string form of the 'quantity' k8s type: https://github.com/kubernetes/kubernetes/blob/master/staging/src/k8s.io/apimachinery/pkg/api/resource/quantity.go",
          type = "object",
        },
      },
      type = "object",
    },
    GoogleCloudRunV2Revision = {
      description = "A Revision is an immutable snapshot of code and configuration. A Revision references a container image. Revisions are only created by updates to its parent Service.",
      id = "GoogleCloudRunV2Revision",
      properties = {
        annotations = {
          additionalProperties = {
            type = "string",
          },
          description = "KRM-style annotations for the resource.",
          type = "object",
        },
        conditions = {
          description = "Output only. The Condition of this Revision, containing its readiness status, and detailed error information in case it did not reach a serving state.",
          items = {
            ["$ref"] = "GoogleCloudRunV2Condition",
          },
          readOnly = true,
          type = "array",
        },
        containers = {
          description = "Holds the single container that defines the unit of execution for this Revision.",
          items = {
            ["$ref"] = "GoogleCloudRunV2Container",
          },
          type = "array",
        },
        createTime = {
          description = "Output only. The creation time.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        deleteTime = {
          description = "Output only. For a deleted resource, the deletion time. It is only populated as a response to a Delete request.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        encryptionKey = {
          description = "A reference to a customer managed encryption key (CMEK) to use to encrypt this container image. For more information, go to https://cloud.google.com/run/docs/securing/using-cmek",
          type = "string",
        },
        encryptionKeyRevocationAction = {
          description = "The action to take if the encryption key is revoked.",
          enum = {
            "ENCRYPTION_KEY_REVOCATION_ACTION_UNSPECIFIED",
            "PREVENT_NEW",
            "SHUTDOWN",
          },
          enumDescriptions = {
            "Unspecified",
            "Prevents the creation of new instances.",
            "Shuts down existing instances, and prevents creation of new ones.",
          },
          type = "string",
        },
        encryptionKeyShutdownDuration = {
          description = "If encryption_key_revocation_action is SHUTDOWN, the duration before shutting down all instances. The minimum increment is 1 hour.",
          format = "google-duration",
          type = "string",
        },
        etag = {
          description = "Output only. A system-generated fingerprint for this version of the resource. May be used to detect modification conflict during updates.",
          readOnly = true,
          type = "string",
        },
        executionEnvironment = {
          description = "The execution environment being used to host this Revision.",
          enum = {
            "EXECUTION_ENVIRONMENT_UNSPECIFIED",
            "EXECUTION_ENVIRONMENT_GEN1",
            "EXECUTION_ENVIRONMENT_GEN2",
          },
          enumDescriptions = {
            "Unspecified",
            "Uses the First Generation environment.",
            "Uses Second Generation environment.",
          },
          type = "string",
        },
        expireTime = {
          description = "Output only. For a deleted resource, the time after which it will be permamently deleted. It is only populated as a response to a Delete request.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        generation = {
          description = "Output only. A number that monotonically increases every time the user modifies the desired state.",
          format = "int64",
          readOnly = true,
          type = "string",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "KRM-style labels for the resource. User-provided labels are shared with Google's billing system, so they can be used to filter, or break down billing charges by team, component, environment, state, etc. For more information, visit https://cloud.google.com/resource-manager/docs/creating-managing-labels or https://cloud.google.com/run/docs/configuring/labels",
          type = "object",
        },
        launchStage = {
          description = "Set the launch stage to a preview stage on write to allow use of preview features in that stage. On read, describes whether the resource uses preview features. Launch Stages are defined at [Google Cloud Platform Launch Stages](https://cloud.google.com/terms/launch-stages).",
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
            "Deprecated features are scheduled to be shut down and removed. For more information, see the \"Deprecation Policy\" section of our [Terms of Service](https://cloud.google.com/terms/) and the [Google Cloud Platform Subject to the Deprecation Policy](https://cloud.google.com/terms/deprecation) documentation.",
          },
          type = "string",
        },
        logUri = {
          description = "Output only. The Google Console URI to obtain logs for the Revision.",
          readOnly = true,
          type = "string",
        },
        maxInstanceRequestConcurrency = {
          description = "Sets the maximum number of requests that each serving instance can receive.",
          format = "int32",
          type = "integer",
        },
        name = {
          description = "Output only. The unique name of this Revision.",
          readOnly = true,
          type = "string",
        },
        observedGeneration = {
          description = "Output only. The generation of this Revision currently serving traffic. See comments in `reconciling` for additional information on reconciliation process in Cloud Run.",
          format = "int64",
          readOnly = true,
          type = "string",
        },
        reconciling = {
          description = "Output only. Indicates whether the resource's reconciliation is still in progress. See comments in `Service.reconciling` for additional information on reconciliation process in Cloud Run.",
          readOnly = true,
          type = "boolean",
        },
        scaling = {
          ["$ref"] = "GoogleCloudRunV2RevisionScaling",
          description = "Scaling settings for this revision.",
        },
        service = {
          description = "Output only. The name of the parent service.",
          readOnly = true,
          type = "string",
        },
        serviceAccount = {
          description = "Email address of the IAM service account associated with the revision of the service. The service account represents the identity of the running revision, and determines what permissions the revision has.",
          type = "string",
        },
        timeout = {
          description = "Max allowed time for an instance to respond to a request.",
          format = "google-duration",
          type = "string",
        },
        uid = {
          description = "Output only. Server assigned unique identifier for the Revision. The value is a UUID4 string and guaranteed to remain unchanged until the resource is deleted.",
          readOnly = true,
          type = "string",
        },
        updateTime = {
          description = "Output only. The last-modified time.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        volumes = {
          description = "A list of Volumes to make available to containers.",
          items = {
            ["$ref"] = "GoogleCloudRunV2Volume",
          },
          type = "array",
        },
        vpcAccess = {
          ["$ref"] = "GoogleCloudRunV2VpcAccess",
          description = "VPC Access configuration for this Revision. For more information, visit https://cloud.google.com/run/docs/configuring/connecting-vpc.",
        },
      },
      type = "object",
    },
    GoogleCloudRunV2RevisionScaling = {
      description = "Settings for revision-level scaling settings.",
      id = "GoogleCloudRunV2RevisionScaling",
      properties = {
        maxInstanceCount = {
          description = "Maximum number of serving instances that this resource should have.",
          format = "int32",
          type = "integer",
        },
        minInstanceCount = {
          description = "Minimum number of serving instances that this resource should have.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    GoogleCloudRunV2RevisionTemplate = {
      description = "RevisionTemplate describes the data a revision should have when created from a template.",
      id = "GoogleCloudRunV2RevisionTemplate",
      properties = {
        annotations = {
          additionalProperties = {
            type = "string",
          },
          description = "KRM-style annotations for the resource. Cloud Run API v2 does not support annotations with `run.googleapis.com`, `cloud.googleapis.com`, `serving.knative.dev`, or `autoscaling.knative.dev` namespaces, and they will be rejected. All system annotations in v1 now have a corresponding field in v2 RevisionTemplate.",
          type = "object",
        },
        containers = {
          description = "Holds the single container that defines the unit of execution for this Revision.",
          items = {
            ["$ref"] = "GoogleCloudRunV2Container",
          },
          type = "array",
        },
        encryptionKey = {
          description = "A reference to a customer managed encryption key (CMEK) to use to encrypt this container image. For more information, go to https://cloud.google.com/run/docs/securing/using-cmek",
          type = "string",
        },
        executionEnvironment = {
          description = "The sandbox environment to host this Revision.",
          enum = {
            "EXECUTION_ENVIRONMENT_UNSPECIFIED",
            "EXECUTION_ENVIRONMENT_GEN1",
            "EXECUTION_ENVIRONMENT_GEN2",
          },
          enumDescriptions = {
            "Unspecified",
            "Uses the First Generation environment.",
            "Uses Second Generation environment.",
          },
          type = "string",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "KRM-style labels for the resource. Cloud Run API v2 does not support labels with `run.googleapis.com`, `cloud.googleapis.com`, `serving.knative.dev`, or `autoscaling.knative.dev` namespaces, and they will be rejected. All system labels in v1 now have a corresponding field in v2 RevisionTemplate.",
          type = "object",
        },
        maxInstanceRequestConcurrency = {
          description = "Sets the maximum number of requests that each serving instance can receive.",
          format = "int32",
          type = "integer",
        },
        revision = {
          description = "The unique name for the revision. If this field is omitted, it will be automatically generated based on the Service name.",
          type = "string",
        },
        scaling = {
          ["$ref"] = "GoogleCloudRunV2RevisionScaling",
          description = "Scaling settings for this Revision.",
        },
        serviceAccount = {
          description = "Email address of the IAM service account associated with the revision of the service. The service account represents the identity of the running revision, and determines what permissions the revision has. If not provided, the revision will use the project's default service account.",
          type = "string",
        },
        timeout = {
          description = "Max allowed time for an instance to respond to a request.",
          format = "google-duration",
          type = "string",
        },
        volumes = {
          description = "A list of Volumes to make available to containers.",
          items = {
            ["$ref"] = "GoogleCloudRunV2Volume",
          },
          type = "array",
        },
        vpcAccess = {
          ["$ref"] = "GoogleCloudRunV2VpcAccess",
          description = "VPC Access configuration to use for this Revision. For more information, visit https://cloud.google.com/run/docs/configuring/connecting-vpc.",
        },
      },
      type = "object",
    },
    GoogleCloudRunV2RunJobRequest = {
      description = "Request message to create a new Execution of a Job.",
      id = "GoogleCloudRunV2RunJobRequest",
      properties = {
        etag = {
          description = "A system-generated fingerprint for this version of the resource. May be used to detect modification conflict during updates.",
          type = "string",
        },
        validateOnly = {
          description = "Indicates that the request should be validated without actually deleting any resources.",
          type = "boolean",
        },
      },
      type = "object",
    },
    GoogleCloudRunV2SecretKeySelector = {
      description = "SecretEnvVarSource represents a source for the value of an EnvVar.",
      id = "GoogleCloudRunV2SecretKeySelector",
      properties = {
        secret = {
          description = "Required. The name of the secret in Cloud Secret Manager. Format: {secret_name} if the secret is in the same project. projects/{project}/secrets/{secret_name} if the secret is in a different project.",
          type = "string",
        },
        version = {
          description = "The Cloud Secret Manager secret version. Can be 'latest' for the latest version, an integer for a specific version, or a version alias.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudRunV2SecretVolumeSource = {
      description = "The secret's value will be presented as the content of a file whose name is defined in the item path. If no items are defined, the name of the file is the secret.",
      id = "GoogleCloudRunV2SecretVolumeSource",
      properties = {
        defaultMode = {
          description = "Integer representation of mode bits to use on created files by default. Must be a value between 0000 and 0777 (octal), defaulting to 0444. Directories within the path are not affected by this setting. Notes * Internally, a umask of 0222 will be applied to any non-zero value. * This is an integer representation of the mode bits. So, the octal integer value should look exactly as the chmod numeric notation with a leading zero. Some examples: for chmod 777 (a=rwx), set to 0777 (octal) or 511 (base-10). For chmod 640 (u=rw,g=r), set to 0640 (octal) or 416 (base-10). For chmod 755 (u=rwx,g=rx,o=rx), set to 0755 (octal) or 493 (base-10). * This might be in conflict with other options that affect the file mode, like fsGroup, and the result can be other mode bits set. This might be in conflict with other options that affect the file mode, like fsGroup, and as a result, other mode bits could be set.",
          format = "int32",
          type = "integer",
        },
        items = {
          description = "If unspecified, the volume will expose a file whose name is the secret, relative to VolumeMount.mount_path. If specified, the key will be used as the version to fetch from Cloud Secret Manager and the path will be the name of the file exposed in the volume. When items are defined, they must specify a path and a version.",
          items = {
            ["$ref"] = "GoogleCloudRunV2VersionToPath",
          },
          type = "array",
        },
        secret = {
          description = "Required. The name of the secret in Cloud Secret Manager. Format: {secret} if the secret is in the same project. projects/{project}/secrets/{secret} if the secret is in a different project.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudRunV2Service = {
      description = "Service acts as a top-level container that manages a set of configurations and revision templates which implement a network service. Service exists to provide a singular abstraction which can be access controlled, reasoned about, and which encapsulates software lifecycle decisions such as rollout policy and team resource ownership.",
      id = "GoogleCloudRunV2Service",
      properties = {
        annotations = {
          additionalProperties = {
            type = "string",
          },
          description = "Unstructured key value map that may be set by external tools to store and arbitrary metadata. They are not queryable and should be preserved when modifying objects. Cloud Run API v2 does not support annotations with `run.googleapis.com`, `cloud.googleapis.com`, `serving.knative.dev`, or `autoscaling.knative.dev` namespaces, and they will be rejected. All system annotations in v1 now have a corresponding field in v2 Service. This field follows Kubernetes annotations' namespacing, limits, and rules. More info: https://kubernetes.io/docs/user-guide/annotations",
          type = "object",
        },
        binaryAuthorization = {
          ["$ref"] = "GoogleCloudRunV2BinaryAuthorization",
          description = "Settings for the Binary Authorization feature.",
        },
        client = {
          description = "Arbitrary identifier for the API client.",
          type = "string",
        },
        clientVersion = {
          description = "Arbitrary version identifier for the API client.",
          type = "string",
        },
        conditions = {
          description = "Output only. The Conditions of all other associated sub-resources. They contain additional diagnostics information in case the Service does not reach its Serving state. See comments in `reconciling` for additional information on reconciliation process in Cloud Run.",
          items = {
            ["$ref"] = "GoogleCloudRunV2Condition",
          },
          readOnly = true,
          type = "array",
        },
        createTime = {
          description = "Output only. The creation time.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        creator = {
          description = "Output only. Email address of the authenticated creator.",
          readOnly = true,
          type = "string",
        },
        deleteTime = {
          description = "Output only. The deletion time.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        description = {
          description = "User-provided description of the Service. This field currently has a 512-character limit.",
          type = "string",
        },
        etag = {
          description = "Output only. A system-generated fingerprint for this version of the resource. May be used to detect modification conflict during updates.",
          readOnly = true,
          type = "string",
        },
        expireTime = {
          description = "Output only. For a deleted resource, the time after which it will be permamently deleted.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        generation = {
          description = "Output only. A number that monotonically increases every time the user modifies the desired state. Please note that unlike v1, this is an int64 value. As with most Google APIs, its JSON representation will be a `string` instead of an `integer`.",
          format = "int64",
          readOnly = true,
          type = "string",
        },
        ingress = {
          description = "Provides the ingress settings for this Service. On output, returns the currently observed ingress settings, or INGRESS_TRAFFIC_UNSPECIFIED if no revision is active.",
          enum = {
            "INGRESS_TRAFFIC_UNSPECIFIED",
            "INGRESS_TRAFFIC_ALL",
            "INGRESS_TRAFFIC_INTERNAL_ONLY",
            "INGRESS_TRAFFIC_INTERNAL_LOAD_BALANCER",
          },
          enumDescriptions = {
            "Unspecified",
            "All inbound traffic is allowed.",
            "Only internal traffic is allowed.",
            "Both internal and Google Cloud Load Balancer traffic is allowed.",
          },
          type = "string",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "Map of string keys and values that can be used to organize and categorize objects. User-provided labels are shared with Google's billing system, so they can be used to filter, or break down billing charges by team, component, environment, state, etc. For more information, visit https://cloud.google.com/resource-manager/docs/creating-managing-labels or https://cloud.google.com/run/docs/configuring/labels Cloud Run API v2 does not support labels with `run.googleapis.com`, `cloud.googleapis.com`, `serving.knative.dev`, or `autoscaling.knative.dev` namespaces, and they will be rejected. All system labels in v1 now have a corresponding field in v2 Service.",
          type = "object",
        },
        lastModifier = {
          description = "Output only. Email address of the last authenticated modifier.",
          readOnly = true,
          type = "string",
        },
        latestCreatedRevision = {
          description = "Output only. Name of the last created revision. See comments in `reconciling` for additional information on reconciliation process in Cloud Run.",
          readOnly = true,
          type = "string",
        },
        latestReadyRevision = {
          description = "Output only. Name of the latest revision that is serving traffic. See comments in `reconciling` for additional information on reconciliation process in Cloud Run.",
          readOnly = true,
          type = "string",
        },
        launchStage = {
          description = "The launch stage as defined by [Google Cloud Platform Launch Stages](https://cloud.google.com/terms/launch-stages). Cloud Run supports `ALPHA`, `BETA`, and `GA`. If no value is specified, GA is assumed.",
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
            "Deprecated features are scheduled to be shut down and removed. For more information, see the \"Deprecation Policy\" section of our [Terms of Service](https://cloud.google.com/terms/) and the [Google Cloud Platform Subject to the Deprecation Policy](https://cloud.google.com/terms/deprecation) documentation.",
          },
          type = "string",
        },
        name = {
          description = "The fully qualified name of this Service. In CreateServiceRequest, this field is ignored, and instead composed from CreateServiceRequest.parent and CreateServiceRequest.service_id. Format: projects/{project}/locations/{location}/services/{service_id}",
          type = "string",
        },
        observedGeneration = {
          description = "Output only. The generation of this Service currently serving traffic. See comments in `reconciling` for additional information on reconciliation process in Cloud Run. Please note that unlike v1, this is an int64 value. As with most Google APIs, its JSON representation will be a `string` instead of an `integer`.",
          format = "int64",
          readOnly = true,
          type = "string",
        },
        reconciling = {
          description = "Output only. Returns true if the Service is currently being acted upon by the system to bring it into the desired state. When a new Service is created, or an existing one is updated, Cloud Run will asynchronously perform all necessary steps to bring the Service to the desired serving state. This process is called reconciliation. While reconciliation is in process, `observed_generation`, `latest_ready_revison`, `traffic_statuses`, and `uri` will have transient values that might mismatch the intended state: Once reconciliation is over (and this field is false), there are two possible outcomes: reconciliation succeeded and the serving state matches the Service, or there was an error, and reconciliation failed. This state can be found in `terminal_condition.state`. If reconciliation succeeded, the following fields will match: `traffic` and `traffic_statuses`, `observed_generation` and `generation`, `latest_ready_revision` and `latest_created_revision`. If reconciliation failed, `traffic_statuses`, `observed_generation`, and `latest_ready_revision` will have the state of the last serving revision, or empty for newly created Services. Additional information on the failure can be found in `terminal_condition` and `conditions`.",
          readOnly = true,
          type = "boolean",
        },
        template = {
          ["$ref"] = "GoogleCloudRunV2RevisionTemplate",
          description = "Required. The template used to create revisions for this Service.",
        },
        terminalCondition = {
          ["$ref"] = "GoogleCloudRunV2Condition",
          description = "Output only. The Condition of this Service, containing its readiness status, and detailed error information in case it did not reach a serving state. See comments in `reconciling` for additional information on reconciliation process in Cloud Run.",
          readOnly = true,
        },
        traffic = {
          description = "Specifies how to distribute traffic over a collection of Revisions belonging to the Service. If traffic is empty or not provided, defaults to 100% traffic to the latest `Ready` Revision.",
          items = {
            ["$ref"] = "GoogleCloudRunV2TrafficTarget",
          },
          type = "array",
        },
        trafficStatuses = {
          description = "Output only. Detailed status information for corresponding traffic targets. See comments in `reconciling` for additional information on reconciliation process in Cloud Run.",
          items = {
            ["$ref"] = "GoogleCloudRunV2TrafficTargetStatus",
          },
          readOnly = true,
          type = "array",
        },
        uid = {
          description = "Output only. Server assigned unique identifier for the trigger. The value is a UUID4 string and guaranteed to remain unchanged until the resource is deleted.",
          readOnly = true,
          type = "string",
        },
        updateTime = {
          description = "Output only. The last-modified time.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        uri = {
          description = "Output only. The main URI in which this Service is serving traffic.",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudRunV2TCPSocketAction = {
      description = "TCPSocketAction describes an action based on opening a socket",
      id = "GoogleCloudRunV2TCPSocketAction",
      properties = {
        port = {
          description = "Port number to access on the container. Must be in the range 1 to 65535. If not specified, defaults to 8080.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    GoogleCloudRunV2Task = {
      description = "Task represents a single run of a container to completion.",
      id = "GoogleCloudRunV2Task",
      properties = {
        annotations = {
          additionalProperties = {
            type = "string",
          },
          description = "KRM-style annotations for the resource.",
          type = "object",
        },
        completionTime = {
          description = "Output only. Represents time when the Task was completed. It is not guaranteed to be set in happens-before order across separate operations.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        conditions = {
          description = "Output only. The Condition of this Task, containing its readiness status, and detailed error information in case it did not reach the desired state.",
          items = {
            ["$ref"] = "GoogleCloudRunV2Condition",
          },
          readOnly = true,
          type = "array",
        },
        containers = {
          description = "Holds the single container that defines the unit of execution for this task.",
          items = {
            ["$ref"] = "GoogleCloudRunV2Container",
          },
          type = "array",
        },
        createTime = {
          description = "Output only. Represents time when the task was created by the job controller. It is not guaranteed to be set in happens-before order across separate operations.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        deleteTime = {
          description = "Output only. For a deleted resource, the deletion time. It is only populated as a response to a Delete request.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        encryptionKey = {
          description = "Output only. A reference to a customer managed encryption key (CMEK) to use to encrypt this container image. For more information, go to https://cloud.google.com/run/docs/securing/using-cmek",
          readOnly = true,
          type = "string",
        },
        etag = {
          description = "Output only. A system-generated fingerprint for this version of the resource. May be used to detect modification conflict during updates.",
          readOnly = true,
          type = "string",
        },
        execution = {
          description = "Output only. The name of the parent Execution.",
          readOnly = true,
          type = "string",
        },
        executionEnvironment = {
          description = "The execution environment being used to host this Task.",
          enum = {
            "EXECUTION_ENVIRONMENT_UNSPECIFIED",
            "EXECUTION_ENVIRONMENT_GEN1",
            "EXECUTION_ENVIRONMENT_GEN2",
          },
          enumDescriptions = {
            "Unspecified",
            "Uses the First Generation environment.",
            "Uses Second Generation environment.",
          },
          type = "string",
        },
        expireTime = {
          description = "Output only. For a deleted resource, the time after which it will be permamently deleted. It is only populated as a response to a Delete request.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        generation = {
          description = "Output only. A number that monotonically increases every time the user modifies the desired state.",
          format = "int64",
          readOnly = true,
          type = "string",
        },
        index = {
          description = "Output only. Index of the Task, unique per execution, and beginning at 0.",
          format = "int32",
          readOnly = true,
          type = "integer",
        },
        job = {
          description = "Output only. The name of the parent Job.",
          readOnly = true,
          type = "string",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "KRM-style labels for the resource. User-provided labels are shared with Google's billing system, so they can be used to filter, or break down billing charges by team, component, environment, state, etc. For more information, visit https://cloud.google.com/resource-manager/docs/creating-managing-labels or https://cloud.google.com/run/docs/configuring/labels",
          type = "object",
        },
        lastAttemptResult = {
          ["$ref"] = "GoogleCloudRunV2TaskAttemptResult",
          description = "Output only. Result of the last attempt of this Task.",
          readOnly = true,
        },
        logUri = {
          description = "Output only. URI where logs for this execution can be found in Cloud Console.",
          readOnly = true,
          type = "string",
        },
        maxRetries = {
          description = "Number of retries allowed per Task, before marking this Task failed.",
          format = "int32",
          type = "integer",
        },
        name = {
          description = "Output only. The unique name of this Task.",
          readOnly = true,
          type = "string",
        },
        observedGeneration = {
          description = "Output only. The generation of this Task. See comments in `Job.reconciling` for additional information on reconciliation process in Cloud Run.",
          format = "int64",
          readOnly = true,
          type = "string",
        },
        reconciling = {
          description = "Output only. Indicates whether the resource's reconciliation is still in progress. See comments in `Job.reconciling` for additional information on reconciliation process in Cloud Run.",
          readOnly = true,
          type = "boolean",
        },
        retried = {
          description = "Output only. The number of times this Task was retried. Tasks are retried when they fail up to the maxRetries limit.",
          format = "int32",
          readOnly = true,
          type = "integer",
        },
        serviceAccount = {
          description = "Email address of the IAM service account associated with the Task of a Job. The service account represents the identity of the running task, and determines what permissions the task has. If not provided, the task will use the project's default service account.",
          type = "string",
        },
        startTime = {
          description = "Output only. Represents time when the task started to run. It is not guaranteed to be set in happens-before order across separate operations.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        timeout = {
          description = "Max allowed time duration the Task may be active before the system will actively try to mark it failed and kill associated containers. This applies per attempt of a task, meaning each retry can run for the full timeout.",
          format = "google-duration",
          type = "string",
        },
        uid = {
          description = "Output only. Server assigned unique identifier for the Task. The value is a UUID4 string and guaranteed to remain unchanged until the resource is deleted.",
          readOnly = true,
          type = "string",
        },
        updateTime = {
          description = "Output only. The last-modified time.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        volumes = {
          description = "A list of Volumes to make available to containers.",
          items = {
            ["$ref"] = "GoogleCloudRunV2Volume",
          },
          type = "array",
        },
        vpcAccess = {
          ["$ref"] = "GoogleCloudRunV2VpcAccess",
          description = "Output only. VPC Access configuration to use for this Task. For more information, visit https://cloud.google.com/run/docs/configuring/connecting-vpc.",
          readOnly = true,
        },
      },
      type = "object",
    },
    GoogleCloudRunV2TaskAttemptResult = {
      description = "Result of a task attempt.",
      id = "GoogleCloudRunV2TaskAttemptResult",
      properties = {
        exitCode = {
          description = "Output only. The exit code of this attempt. This may be unset if the container was unable to exit cleanly with a code due to some other failure. See status field for possible failure details.",
          format = "int32",
          readOnly = true,
          type = "integer",
        },
        status = {
          ["$ref"] = "GoogleRpcStatus",
          description = "Output only. The status of this attempt. If the status code is OK, then the attempt succeeded.",
          readOnly = true,
        },
      },
      type = "object",
    },
    GoogleCloudRunV2TaskTemplate = {
      description = "TaskTemplate describes the data a task should have when created from a template.",
      id = "GoogleCloudRunV2TaskTemplate",
      properties = {
        containers = {
          description = "Holds the single container that defines the unit of execution for this task.",
          items = {
            ["$ref"] = "GoogleCloudRunV2Container",
          },
          type = "array",
        },
        encryptionKey = {
          description = "A reference to a customer managed encryption key (CMEK) to use to encrypt this container image. For more information, go to https://cloud.google.com/run/docs/securing/using-cmek",
          type = "string",
        },
        executionEnvironment = {
          description = "The execution environment being used to host this Task.",
          enum = {
            "EXECUTION_ENVIRONMENT_UNSPECIFIED",
            "EXECUTION_ENVIRONMENT_GEN1",
            "EXECUTION_ENVIRONMENT_GEN2",
          },
          enumDescriptions = {
            "Unspecified",
            "Uses the First Generation environment.",
            "Uses Second Generation environment.",
          },
          type = "string",
        },
        maxRetries = {
          description = "Number of retries allowed per Task, before marking this Task failed.",
          format = "int32",
          type = "integer",
        },
        serviceAccount = {
          description = "Email address of the IAM service account associated with the Task of a Job. The service account represents the identity of the running task, and determines what permissions the task has. If not provided, the task will use the project's default service account.",
          type = "string",
        },
        timeout = {
          description = "Max allowed time duration the Task may be active before the system will actively try to mark it failed and kill associated containers. This applies per attempt of a task, meaning each retry can run for the full timeout.",
          format = "google-duration",
          type = "string",
        },
        volumes = {
          description = "A list of Volumes to make available to containers.",
          items = {
            ["$ref"] = "GoogleCloudRunV2Volume",
          },
          type = "array",
        },
        vpcAccess = {
          ["$ref"] = "GoogleCloudRunV2VpcAccess",
          description = "VPC Access configuration to use for this Task. For more information, visit https://cloud.google.com/run/docs/configuring/connecting-vpc.",
        },
      },
      type = "object",
    },
    GoogleCloudRunV2TrafficTarget = {
      description = "Holds a single traffic routing entry for the Service. Allocations can be done to a specific Revision name, or pointing to the latest Ready Revision.",
      id = "GoogleCloudRunV2TrafficTarget",
      properties = {
        percent = {
          description = "Specifies percent of the traffic to this Revision. This defaults to zero if unspecified.",
          format = "int32",
          type = "integer",
        },
        revision = {
          description = "Revision to which to send this portion of traffic, if traffic allocation is by revision.",
          type = "string",
        },
        tag = {
          description = "Indicates a string to be part of the URI to exclusively reference this target.",
          type = "string",
        },
        type = {
          description = "The allocation type for this traffic target.",
          enum = {
            "TRAFFIC_TARGET_ALLOCATION_TYPE_UNSPECIFIED",
            "TRAFFIC_TARGET_ALLOCATION_TYPE_LATEST",
            "TRAFFIC_TARGET_ALLOCATION_TYPE_REVISION",
          },
          enumDescriptions = {
            "Unspecified instance allocation type.",
            "Allocates instances to the Service's latest ready Revision.",
            "Allocates instances to a Revision by name.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudRunV2TrafficTargetStatus = {
      description = "Represents the observed state of a single `TrafficTarget` entry.",
      id = "GoogleCloudRunV2TrafficTargetStatus",
      properties = {
        percent = {
          description = "Specifies percent of the traffic to this Revision.",
          format = "int32",
          type = "integer",
        },
        revision = {
          description = "Revision to which this traffic is sent.",
          type = "string",
        },
        tag = {
          description = "Indicates the string used in the URI to exclusively reference this target.",
          type = "string",
        },
        type = {
          description = "The allocation type for this traffic target.",
          enum = {
            "TRAFFIC_TARGET_ALLOCATION_TYPE_UNSPECIFIED",
            "TRAFFIC_TARGET_ALLOCATION_TYPE_LATEST",
            "TRAFFIC_TARGET_ALLOCATION_TYPE_REVISION",
          },
          enumDescriptions = {
            "Unspecified instance allocation type.",
            "Allocates instances to the Service's latest ready Revision.",
            "Allocates instances to a Revision by name.",
          },
          type = "string",
        },
        uri = {
          description = "Displays the target URI.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudRunV2VersionToPath = {
      description = "VersionToPath maps a specific version of a secret to a relative file to mount to, relative to VolumeMount's mount_path.",
      id = "GoogleCloudRunV2VersionToPath",
      properties = {
        mode = {
          description = "Integer octal mode bits to use on this file, must be a value between 01 and 0777 (octal). If 0 or not set, the Volume's default mode will be used. Notes * Internally, a umask of 0222 will be applied to any non-zero value. * This is an integer representation of the mode bits. So, the octal integer value should look exactly as the chmod numeric notation with a leading zero. Some examples: for chmod 777 (a=rwx), set to 0777 (octal) or 511 (base-10). For chmod 640 (u=rw,g=r), set to 0640 (octal) or 416 (base-10). For chmod 755 (u=rwx,g=rx,o=rx), set to 0755 (octal) or 493 (base-10). * This might be in conflict with other options that affect the file mode, like fsGroup, and the result can be other mode bits set.",
          format = "int32",
          type = "integer",
        },
        path = {
          description = "Required. The relative path of the secret in the container.",
          type = "string",
        },
        version = {
          description = "The Cloud Secret Manager secret version. Can be 'latest' for the latest value, or an integer or a secret alias for a specific version.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudRunV2Volume = {
      description = "Volume represents a named volume in a container.",
      id = "GoogleCloudRunV2Volume",
      properties = {
        cloudSqlInstance = {
          ["$ref"] = "GoogleCloudRunV2CloudSqlInstance",
          description = "For Cloud SQL volumes, contains the specific instances that should be mounted. Visit https://cloud.google.com/sql/docs/mysql/connect-run for more information on how to connect Cloud SQL and Cloud Run.",
        },
        name = {
          description = "Required. Volume's name.",
          type = "string",
        },
        secret = {
          ["$ref"] = "GoogleCloudRunV2SecretVolumeSource",
          description = "Secret represents a secret that should populate this volume. More info: https://kubernetes.io/docs/concepts/storage/volumes#secret",
        },
      },
      type = "object",
    },
    GoogleCloudRunV2VolumeMount = {
      description = "VolumeMount describes a mounting of a Volume within a container.",
      id = "GoogleCloudRunV2VolumeMount",
      properties = {
        mountPath = {
          description = "Required. Path within the container at which the volume should be mounted. Must not contain ':'. For Cloud SQL volumes, it can be left empty, or must otherwise be `/cloudsql`. All instances defined in the Volume will be available as `/cloudsql/[instance]`. For more information on Cloud SQL volumes, visit https://cloud.google.com/sql/docs/mysql/connect-run",
          type = "string",
        },
        name = {
          description = "Required. This must match the Name of a Volume.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudRunV2VpcAccess = {
      description = "VPC Access settings. For more information on creating a VPC Connector, visit https://cloud.google.com/vpc/docs/configure-serverless-vpc-access For information on how to configure Cloud Run with an existing VPC Connector, visit https://cloud.google.com/run/docs/configuring/connecting-vpc",
      id = "GoogleCloudRunV2VpcAccess",
      properties = {
        connector = {
          description = "VPC Access connector name. Format: projects/{project}/locations/{location}/connectors/{connector}, where {project} can be project id or number.",
          type = "string",
        },
        egress = {
          description = "Traffic VPC egress settings.",
          enum = {
            "VPC_EGRESS_UNSPECIFIED",
            "ALL_TRAFFIC",
            "PRIVATE_RANGES_ONLY",
          },
          enumDescriptions = {
            "Unspecified",
            "All outbound traffic is routed through the VPC connector.",
            "Only private IP ranges are routed through the VPC connector.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleIamV1AuditConfig = {
      description = "Specifies the audit configuration for a service. The configuration determines which permission types are logged, and what identities, if any, are exempted from logging. An AuditConfig must have one or more AuditLogConfigs. If there are AuditConfigs for both `allServices` and a specific service, the union of the two AuditConfigs is used for that service: the log_types specified in each AuditConfig are enabled, and the exempted_members in each AuditLogConfig are exempted. Example Policy with multiple AuditConfigs: { \"audit_configs\": [ { \"service\": \"allServices\", \"audit_log_configs\": [ { \"log_type\": \"DATA_READ\", \"exempted_members\": [ \"user:jose@example.com\" ] }, { \"log_type\": \"DATA_WRITE\" }, { \"log_type\": \"ADMIN_READ\" } ] }, { \"service\": \"sampleservice.googleapis.com\", \"audit_log_configs\": [ { \"log_type\": \"DATA_READ\" }, { \"log_type\": \"DATA_WRITE\", \"exempted_members\": [ \"user:aliya@example.com\" ] } ] } ] } For sampleservice, this policy enables DATA_READ, DATA_WRITE and ADMIN_READ logging. It also exempts `jose@example.com` from DATA_READ logging, and `aliya@example.com` from DATA_WRITE logging.",
      id = "GoogleIamV1AuditConfig",
      properties = {
        auditLogConfigs = {
          description = "The configuration for logging of each type of permission.",
          items = {
            ["$ref"] = "GoogleIamV1AuditLogConfig",
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
    GoogleIamV1AuditLogConfig = {
      description = "Provides the configuration for logging a type of permissions. Example: { \"audit_log_configs\": [ { \"log_type\": \"DATA_READ\", \"exempted_members\": [ \"user:jose@example.com\" ] }, { \"log_type\": \"DATA_WRITE\" } ] } This enables 'DATA_READ' and 'DATA_WRITE' logging, while exempting jose@example.com from DATA_READ logging.",
      id = "GoogleIamV1AuditLogConfig",
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
    GoogleIamV1Binding = {
      description = "Associates `members`, or principals, with a `role`.",
      id = "GoogleIamV1Binding",
      properties = {
        condition = {
          ["$ref"] = "GoogleTypeExpr",
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
    GoogleIamV1Policy = {
      description = "An Identity and Access Management (IAM) policy, which specifies access controls for Google Cloud resources. A `Policy` is a collection of `bindings`. A `binding` binds one or more `members`, or principals, to a single `role`. Principals can be user accounts, service accounts, Google groups, and domains (such as G Suite). A `role` is a named list of permissions; each `role` can be an IAM predefined role or a user-created custom role. For some types of Google Cloud resources, a `binding` can also specify a `condition`, which is a logical expression that allows access to a resource only if the expression evaluates to `true`. A condition can add constraints based on attributes of the request, the resource, or both. To learn which resources support conditions in their IAM policies, see the [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies). **JSON example:** { \"bindings\": [ { \"role\": \"roles/resourcemanager.organizationAdmin\", \"members\": [ \"user:mike@example.com\", \"group:admins@example.com\", \"domain:google.com\", \"serviceAccount:my-project-id@appspot.gserviceaccount.com\" ] }, { \"role\": \"roles/resourcemanager.organizationViewer\", \"members\": [ \"user:eve@example.com\" ], \"condition\": { \"title\": \"expirable access\", \"description\": \"Does not grant access after Sep 2020\", \"expression\": \"request.time < timestamp('2020-10-01T00:00:00.000Z')\", } } ], \"etag\": \"BwWWja0YfJA=\", \"version\": 3 } **YAML example:** bindings: - members: - user:mike@example.com - group:admins@example.com - domain:google.com - serviceAccount:my-project-id@appspot.gserviceaccount.com role: roles/resourcemanager.organizationAdmin - members: - user:eve@example.com role: roles/resourcemanager.organizationViewer condition: title: expirable access description: Does not grant access after Sep 2020 expression: request.time < timestamp('2020-10-01T00:00:00.000Z') etag: BwWWja0YfJA= version: 3 For a description of IAM and its features, see the [IAM documentation](https://cloud.google.com/iam/docs/).",
      id = "GoogleIamV1Policy",
      properties = {
        auditConfigs = {
          description = "Specifies cloud audit logging configuration for this policy.",
          items = {
            ["$ref"] = "GoogleIamV1AuditConfig",
          },
          type = "array",
        },
        bindings = {
          description = "Associates a list of `members`, or principals, with a `role`. Optionally, may specify a `condition` that determines how and when the `bindings` are applied. Each of the `bindings` must contain at least one principal. The `bindings` in a `Policy` can refer to up to 1,500 principals; up to 250 of these principals can be Google groups. Each occurrence of a principal counts towards these limits. For example, if the `bindings` grant 50 different roles to `user:alice@example.com`, and not to any other principal, then you can add another 1,450 principals to the `bindings` in the `Policy`.",
          items = {
            ["$ref"] = "GoogleIamV1Binding",
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
    GoogleIamV1SetIamPolicyRequest = {
      description = "Request message for `SetIamPolicy` method.",
      id = "GoogleIamV1SetIamPolicyRequest",
      properties = {
        policy = {
          ["$ref"] = "GoogleIamV1Policy",
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
    GoogleIamV1TestIamPermissionsRequest = {
      description = "Request message for `TestIamPermissions` method.",
      id = "GoogleIamV1TestIamPermissionsRequest",
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
    GoogleIamV1TestIamPermissionsResponse = {
      description = "Response message for `TestIamPermissions` method.",
      id = "GoogleIamV1TestIamPermissionsResponse",
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
    GoogleTypeExpr = {
      description = "Represents a textual expression in the Common Expression Language (CEL) syntax. CEL is a C-like expression language. The syntax and semantics of CEL are documented at https://github.com/google/cel-spec. Example (Comparison): title: \"Summary size limit\" description: \"Determines if a summary is less than 100 chars\" expression: \"document.summary.size() < 100\" Example (Equality): title: \"Requestor is owner\" description: \"Determines if requestor is the document owner\" expression: \"document.owner == request.auth.claims.email\" Example (Logic): title: \"Public documents\" description: \"Determine whether the document should be publicly visible\" expression: \"document.type != 'private' && document.type != 'internal'\" Example (Data Manipulation): title: \"Notification string\" description: \"Create a notification string with a timestamp.\" expression: \"'New message received at ' + string(document.create_time)\" The exact variables and functions that may be referenced within an expression are determined by the service that evaluates it. See the service documentation for additional information.",
      id = "GoogleTypeExpr",
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
  },
  servicePath = "",
  title = "Cloud Run Admin API",
  version = "v2",
  version_module = true,
}
