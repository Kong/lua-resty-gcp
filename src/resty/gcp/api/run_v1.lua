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
  id = "run:v1",
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
    namespaces = {
      resources = {
        authorizeddomains = {
          methods = {
            list = {
              description = "List authorized domains.",
              flatPath = "apis/domains.cloudrun.com/v1/namespaces/{namespacesId}/authorizeddomains",
              httpMethod = "GET",
              id = "run.namespaces.authorizeddomains.list",
              parameterOrder = {
                "parent",
              },
              parameters = {
                pageSize = {
                  description = "Maximum results to return per page.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "Continuation token for fetching the next page of results.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "Name of the parent Project resource. Example: `projects/myproject`.",
                  location = "path",
                  pattern = "^namespaces/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "apis/domains.cloudrun.com/v1/{+parent}/authorizeddomains",
              response = {
                ["$ref"] = "ListAuthorizedDomainsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
          },
        },
        configurations = {
          methods = {
            get = {
              description = "Get information about a configuration.",
              flatPath = "apis/serving.knative.dev/v1/namespaces/{namespacesId}/configurations/{configurationsId}",
              httpMethod = "GET",
              id = "run.namespaces.configurations.get",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "The name of the configuration to retrieve. For Cloud Run, replace {namespace_id} with the project ID or number.",
                  location = "path",
                  pattern = "^namespaces/[^/]+/configurations/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "apis/serving.knative.dev/v1/{+name}",
              response = {
                ["$ref"] = "Configuration",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            list = {
              description = "List configurations.",
              flatPath = "apis/serving.knative.dev/v1/namespaces/{namespacesId}/configurations",
              httpMethod = "GET",
              id = "run.namespaces.configurations.list",
              parameterOrder = {
                "parent",
              },
              parameters = {
                continue = {
                  description = "Optional. Encoded string to continue paging.",
                  location = "query",
                  type = "string",
                },
                fieldSelector = {
                  description = "Not supported by Cloud Run.",
                  location = "query",
                  type = "string",
                },
                includeUninitialized = {
                  description = "Not supported by Cloud Run.",
                  location = "query",
                  type = "boolean",
                },
                labelSelector = {
                  description = "Allows to filter resources based on a label. Supported operations are =, !=, exists, in, and notIn.",
                  location = "query",
                  type = "string",
                },
                limit = {
                  description = "Optional. The maximum number of the records that should be returned.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                parent = {
                  description = "The namespace from which the configurations should be listed. For Cloud Run, replace {namespace_id} with the project ID or number.",
                  location = "path",
                  pattern = "^namespaces/[^/]+$",
                  required = true,
                  type = "string",
                },
                resourceVersion = {
                  description = "Not supported by Cloud Run.",
                  location = "query",
                  type = "string",
                },
                watch = {
                  description = "Not supported by Cloud Run.",
                  location = "query",
                  type = "boolean",
                },
              },
              path = "apis/serving.knative.dev/v1/{+parent}/configurations",
              response = {
                ["$ref"] = "ListConfigurationsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
          },
        },
        domainmappings = {
          methods = {
            create = {
              description = "Create a new domain mapping.",
              flatPath = "apis/domains.cloudrun.com/v1/namespaces/{namespacesId}/domainmappings",
              httpMethod = "POST",
              id = "run.namespaces.domainmappings.create",
              parameterOrder = {
                "parent",
              },
              parameters = {
                dryRun = {
                  description = "Indicates that the server should validate the request and populate default values without persisting the request. Supported values: `all`",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "The namespace in which the domain mapping should be created. For Cloud Run (fully managed), replace {namespace} with the project ID or number. It takes the form namespaces/{namespace}. For example: namespaces/PROJECT_ID",
                  location = "path",
                  pattern = "^namespaces/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "apis/domains.cloudrun.com/v1/{+parent}/domainmappings",
              request = {
                ["$ref"] = "DomainMapping",
              },
              response = {
                ["$ref"] = "DomainMapping",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            delete = {
              description = "Delete a domain mapping.",
              flatPath = "apis/domains.cloudrun.com/v1/namespaces/{namespacesId}/domainmappings/{domainmappingsId}",
              httpMethod = "DELETE",
              id = "run.namespaces.domainmappings.delete",
              parameterOrder = {
                "name",
              },
              parameters = {
                apiVersion = {
                  description = "Cloud Run currently ignores this parameter.",
                  location = "query",
                  type = "string",
                },
                dryRun = {
                  description = "Indicates that the server should validate the request and populate default values without persisting the request. Supported values: `all`",
                  location = "query",
                  type = "string",
                },
                kind = {
                  description = "Cloud Run currently ignores this parameter.",
                  location = "query",
                  type = "string",
                },
                name = {
                  description = "The name of the domain mapping to delete. For Cloud Run (fully managed), replace {namespace} with the project ID or number. It takes the form namespaces/{namespace}. For example: namespaces/PROJECT_ID",
                  location = "path",
                  pattern = "^namespaces/[^/]+/domainmappings/[^/]+$",
                  required = true,
                  type = "string",
                },
                propagationPolicy = {
                  description = "Specifies the propagation policy of delete. Cloud Run currently ignores this setting, and deletes in the background. Please see kubernetes.io/docs/concepts/architecture/garbage-collection/ for more information.",
                  location = "query",
                  type = "string",
                },
              },
              path = "apis/domains.cloudrun.com/v1/{+name}",
              response = {
                ["$ref"] = "Status",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            get = {
              description = "Get information about a domain mapping.",
              flatPath = "apis/domains.cloudrun.com/v1/namespaces/{namespacesId}/domainmappings/{domainmappingsId}",
              httpMethod = "GET",
              id = "run.namespaces.domainmappings.get",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "The name of the domain mapping to retrieve. For Cloud Run (fully managed), replace {namespace} with the project ID or number. It takes the form namespaces/{namespace}. For example: namespaces/PROJECT_ID",
                  location = "path",
                  pattern = "^namespaces/[^/]+/domainmappings/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "apis/domains.cloudrun.com/v1/{+name}",
              response = {
                ["$ref"] = "DomainMapping",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            list = {
              description = "List all domain mappings.",
              flatPath = "apis/domains.cloudrun.com/v1/namespaces/{namespacesId}/domainmappings",
              httpMethod = "GET",
              id = "run.namespaces.domainmappings.list",
              parameterOrder = {
                "parent",
              },
              parameters = {
                continue = {
                  description = "Optional. Encoded string to continue paging.",
                  location = "query",
                  type = "string",
                },
                fieldSelector = {
                  description = "Allows to filter resources based on a specific value for a field name. Send this in a query string format. i.e. 'metadata.name%3Dlorem'. Not currently used by Cloud Run.",
                  location = "query",
                  type = "string",
                },
                includeUninitialized = {
                  description = "Not currently used by Cloud Run.",
                  location = "query",
                  type = "boolean",
                },
                labelSelector = {
                  description = "Allows to filter resources based on a label. Supported operations are =, !=, exists, in, and notIn.",
                  location = "query",
                  type = "string",
                },
                limit = {
                  description = "Optional. The maximum number of records that should be returned.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                parent = {
                  description = "The namespace from which the domain mappings should be listed. For Cloud Run (fully managed), replace {namespace} with the project ID or number. It takes the form namespaces/{namespace}. For example: namespaces/PROJECT_ID",
                  location = "path",
                  pattern = "^namespaces/[^/]+$",
                  required = true,
                  type = "string",
                },
                resourceVersion = {
                  description = "The baseline resource version from which the list or watch operation should start. Not currently used by Cloud Run.",
                  location = "query",
                  type = "string",
                },
                watch = {
                  description = "Flag that indicates that the client expects to watch this resource as well. Not currently used by Cloud Run.",
                  location = "query",
                  type = "boolean",
                },
              },
              path = "apis/domains.cloudrun.com/v1/{+parent}/domainmappings",
              response = {
                ["$ref"] = "ListDomainMappingsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
          },
        },
        executions = {
          methods = {
            cancel = {
              description = "Cancel an execution.",
              flatPath = "apis/run.googleapis.com/v1/namespaces/{namespacesId}/executions/{executionsId}:cancel",
              httpMethod = "POST",
              id = "run.namespaces.executions.cancel",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. The name of the execution to cancel. Replace {namespace} with the project ID or number. It takes the form namespaces/{namespace}. For example: namespaces/PROJECT_ID",
                  location = "path",
                  pattern = "^namespaces/[^/]+/executions/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "apis/run.googleapis.com/v1/{+name}:cancel",
              request = {
                ["$ref"] = "CancelExecutionRequest",
              },
              response = {
                ["$ref"] = "Execution",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            delete = {
              description = "Delete an execution.",
              flatPath = "apis/run.googleapis.com/v1/namespaces/{namespacesId}/executions/{executionsId}",
              httpMethod = "DELETE",
              id = "run.namespaces.executions.delete",
              parameterOrder = {
                "name",
              },
              parameters = {
                apiVersion = {
                  description = "Optional. Cloud Run currently ignores this parameter.",
                  location = "query",
                  type = "string",
                },
                kind = {
                  description = "Optional. Cloud Run currently ignores this parameter.",
                  location = "query",
                  type = "string",
                },
                name = {
                  description = "Required. The name of the execution to delete. Replace {namespace} with the project ID or number. It takes the form namespaces/{namespace}. For example: namespaces/PROJECT_ID",
                  location = "path",
                  pattern = "^namespaces/[^/]+/executions/[^/]+$",
                  required = true,
                  type = "string",
                },
                propagationPolicy = {
                  description = "Optional. Specifies the propagation policy of delete. Cloud Run currently ignores this setting, and deletes in the background. Please see https://kubernetes.io/docs/concepts/workloads/controllers/garbage-collection/ for more information.",
                  location = "query",
                  type = "string",
                },
              },
              path = "apis/run.googleapis.com/v1/{+name}",
              response = {
                ["$ref"] = "Status",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            get = {
              description = "Get information about an execution.",
              flatPath = "apis/run.googleapis.com/v1/namespaces/{namespacesId}/executions/{executionsId}",
              httpMethod = "GET",
              id = "run.namespaces.executions.get",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. The name of the execution to retrieve. Replace {namespace} with the project ID or number. It takes the form namespaces/{namespace}. For example: namespaces/PROJECT_ID",
                  location = "path",
                  pattern = "^namespaces/[^/]+/executions/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "apis/run.googleapis.com/v1/{+name}",
              response = {
                ["$ref"] = "Execution",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            list = {
              description = "List executions.",
              flatPath = "apis/run.googleapis.com/v1/namespaces/{namespacesId}/executions",
              httpMethod = "GET",
              id = "run.namespaces.executions.list",
              parameterOrder = {
                "parent",
              },
              parameters = {
                continue = {
                  description = "Optional. Optional encoded string to continue paging.",
                  location = "query",
                  type = "string",
                },
                fieldSelector = {
                  description = "Optional. Not supported by Cloud Run.",
                  location = "query",
                  type = "string",
                },
                includeUninitialized = {
                  description = "Optional. Not supported by Cloud Run.",
                  location = "query",
                  type = "boolean",
                },
                labelSelector = {
                  description = "Optional. Allows to filter resources based on a label. Supported operations are =, !=, exists, in, and notIn.",
                  location = "query",
                  type = "string",
                },
                limit = {
                  description = "Optional. The maximum number of the records that should be returned.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                parent = {
                  description = "Required. The namespace from which the executions should be listed. Replace {namespace} with the project ID or number. It takes the form namespaces/{namespace}. For example: namespaces/PROJECT_ID",
                  location = "path",
                  pattern = "^namespaces/[^/]+$",
                  required = true,
                  type = "string",
                },
                resourceVersion = {
                  description = "Optional. Not supported by Cloud Run.",
                  location = "query",
                  type = "string",
                },
                watch = {
                  description = "Optional. Not supported by Cloud Run.",
                  location = "query",
                  type = "boolean",
                },
              },
              path = "apis/run.googleapis.com/v1/{+parent}/executions",
              response = {
                ["$ref"] = "ListExecutionsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
          },
        },
        jobs = {
          methods = {
            create = {
              description = "Create a job.",
              flatPath = "apis/run.googleapis.com/v1/namespaces/{namespacesId}/jobs",
              httpMethod = "POST",
              id = "run.namespaces.jobs.create",
              parameterOrder = {
                "parent",
              },
              parameters = {
                parent = {
                  description = "Required. The namespace in which the job should be created. Replace {namespace} with the project ID or number. It takes the form namespaces/{namespace}. For example: namespaces/PROJECT_ID",
                  location = "path",
                  pattern = "^namespaces/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "apis/run.googleapis.com/v1/{+parent}/jobs",
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
              description = "Delete a job.",
              flatPath = "apis/run.googleapis.com/v1/namespaces/{namespacesId}/jobs/{jobsId}",
              httpMethod = "DELETE",
              id = "run.namespaces.jobs.delete",
              parameterOrder = {
                "name",
              },
              parameters = {
                apiVersion = {
                  description = "Optional. Cloud Run currently ignores this parameter.",
                  location = "query",
                  type = "string",
                },
                kind = {
                  description = "Optional. Cloud Run currently ignores this parameter.",
                  location = "query",
                  type = "string",
                },
                name = {
                  description = "Required. The name of the job to delete. Replace {namespace} with the project ID or number. It takes the form namespaces/{namespace}. For example: namespaces/PROJECT_ID",
                  location = "path",
                  pattern = "^namespaces/[^/]+/jobs/[^/]+$",
                  required = true,
                  type = "string",
                },
                propagationPolicy = {
                  description = "Optional. Specifies the propagation policy of delete. Cloud Run currently ignores this setting, and deletes in the background. Please see kubernetes.io/docs/concepts/workloads/controllers/garbage-collection/ for more information.",
                  location = "query",
                  type = "string",
                },
              },
              path = "apis/run.googleapis.com/v1/{+name}",
              response = {
                ["$ref"] = "Status",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            get = {
              description = "Get information about a job.",
              flatPath = "apis/run.googleapis.com/v1/namespaces/{namespacesId}/jobs/{jobsId}",
              httpMethod = "GET",
              id = "run.namespaces.jobs.get",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. The name of the job to retrieve. Replace {namespace} with the project ID or number. It takes the form namespaces/{namespace}. For example: namespaces/PROJECT_ID",
                  location = "path",
                  pattern = "^namespaces/[^/]+/jobs/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "apis/run.googleapis.com/v1/{+name}",
              response = {
                ["$ref"] = "Job",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            list = {
              description = "List jobs.",
              flatPath = "apis/run.googleapis.com/v1/namespaces/{namespacesId}/jobs",
              httpMethod = "GET",
              id = "run.namespaces.jobs.list",
              parameterOrder = {
                "parent",
              },
              parameters = {
                continue = {
                  description = "Optional. Optional encoded string to continue paging.",
                  location = "query",
                  type = "string",
                },
                fieldSelector = {
                  description = "Optional. Not supported by Cloud Run.",
                  location = "query",
                  type = "string",
                },
                includeUninitialized = {
                  description = "Optional. Not supported by Cloud Run.",
                  location = "query",
                  type = "boolean",
                },
                labelSelector = {
                  description = "Optional. Allows to filter resources based on a label. Supported operations are =, !=, exists, in, and notIn.",
                  location = "query",
                  type = "string",
                },
                limit = {
                  description = "Optional. The maximum number of records that should be returned.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                parent = {
                  description = "Required. The namespace from which the jobs should be listed. Replace {namespace} with the project ID or number. It takes the form namespaces/{namespace}. For example: namespaces/PROJECT_ID",
                  location = "path",
                  pattern = "^namespaces/[^/]+$",
                  required = true,
                  type = "string",
                },
                resourceVersion = {
                  description = "Optional. Not supported by Cloud Run.",
                  location = "query",
                  type = "string",
                },
                watch = {
                  description = "Optional. Not supported by Cloud Run.",
                  location = "query",
                  type = "boolean",
                },
              },
              path = "apis/run.googleapis.com/v1/{+parent}/jobs",
              response = {
                ["$ref"] = "ListJobsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            replaceJob = {
              description = "Replace a job. Only the spec and metadata labels and annotations are modifiable. After the Replace request, Cloud Run will work to make the 'status' match the requested 'spec'. May provide metadata.resourceVersion to enforce update from last read for optimistic concurrency control.",
              flatPath = "apis/run.googleapis.com/v1/namespaces/{namespacesId}/jobs/{jobsId}",
              httpMethod = "PUT",
              id = "run.namespaces.jobs.replaceJob",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. The name of the job being replaced. Replace {namespace} with the project ID or number. It takes the form namespaces/{namespace}. For example: namespaces/PROJECT_ID",
                  location = "path",
                  pattern = "^namespaces/[^/]+/jobs/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "apis/run.googleapis.com/v1/{+name}",
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
            run = {
              description = "Trigger creation of a new execution of this job.",
              flatPath = "apis/run.googleapis.com/v1/namespaces/{namespacesId}/jobs/{jobsId}:run",
              httpMethod = "POST",
              id = "run.namespaces.jobs.run",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. The name of the job to run. Replace {namespace} with the project ID or number. It takes the form namespaces/{namespace}. For example: namespaces/PROJECT_ID",
                  location = "path",
                  pattern = "^namespaces/[^/]+/jobs/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "apis/run.googleapis.com/v1/{+name}:run",
              request = {
                ["$ref"] = "RunJobRequest",
              },
              response = {
                ["$ref"] = "Execution",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
          },
        },
        revisions = {
          methods = {
            delete = {
              description = "Delete a revision.",
              flatPath = "apis/serving.knative.dev/v1/namespaces/{namespacesId}/revisions/{revisionsId}",
              httpMethod = "DELETE",
              id = "run.namespaces.revisions.delete",
              parameterOrder = {
                "name",
              },
              parameters = {
                apiVersion = {
                  description = "Cloud Run currently ignores this parameter.",
                  location = "query",
                  type = "string",
                },
                dryRun = {
                  description = "Indicates that the server should validate the request and populate default values without persisting the request. Supported values: `all`",
                  location = "query",
                  type = "string",
                },
                kind = {
                  description = "Cloud Run currently ignores this parameter.",
                  location = "query",
                  type = "string",
                },
                name = {
                  description = "The name of the revision to delete. For Cloud Run (fully managed), replace {namespace} with the project ID or number. It takes the form namespaces/{namespace}. For example: namespaces/PROJECT_ID",
                  location = "path",
                  pattern = "^namespaces/[^/]+/revisions/[^/]+$",
                  required = true,
                  type = "string",
                },
                propagationPolicy = {
                  description = "Specifies the propagation policy of delete. Cloud Run currently ignores this setting, and deletes in the background. Please see https://kubernetes.io/docs/concepts/architecture/garbage-collection/ for more information.",
                  location = "query",
                  type = "string",
                },
              },
              path = "apis/serving.knative.dev/v1/{+name}",
              response = {
                ["$ref"] = "Status",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            get = {
              description = "Get information about a revision.",
              flatPath = "apis/serving.knative.dev/v1/namespaces/{namespacesId}/revisions/{revisionsId}",
              httpMethod = "GET",
              id = "run.namespaces.revisions.get",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "The name of the revision to retrieve. For Cloud Run (fully managed), replace {namespace} with the project ID or number. It takes the form namespaces/{namespace}. For example: namespaces/PROJECT_ID",
                  location = "path",
                  pattern = "^namespaces/[^/]+/revisions/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "apis/serving.knative.dev/v1/{+name}",
              response = {
                ["$ref"] = "Revision",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            list = {
              description = "List revisions.",
              flatPath = "apis/serving.knative.dev/v1/namespaces/{namespacesId}/revisions",
              httpMethod = "GET",
              id = "run.namespaces.revisions.list",
              parameterOrder = {
                "parent",
              },
              parameters = {
                continue = {
                  description = "Optional. Encoded string to continue paging.",
                  location = "query",
                  type = "string",
                },
                fieldSelector = {
                  description = "Allows to filter resources based on a specific value for a field name. Send this in a query string format. i.e. 'metadata.name%3Dlorem'. Not currently used by Cloud Run.",
                  location = "query",
                  type = "string",
                },
                includeUninitialized = {
                  description = "Not currently used by Cloud Run.",
                  location = "query",
                  type = "boolean",
                },
                labelSelector = {
                  description = "Allows to filter resources based on a label. Supported operations are =, !=, exists, in, and notIn.",
                  location = "query",
                  type = "string",
                },
                limit = {
                  description = "Optional. The maximum number of records that should be returned.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                parent = {
                  description = "The namespace from which the revisions should be listed. For Cloud Run (fully managed), replace {namespace} with the project ID or number. It takes the form namespaces/{namespace}. For example: namespaces/PROJECT_ID",
                  location = "path",
                  pattern = "^namespaces/[^/]+$",
                  required = true,
                  type = "string",
                },
                resourceVersion = {
                  description = "The baseline resource version from which the list or watch operation should start. Not currently used by Cloud Run.",
                  location = "query",
                  type = "string",
                },
                watch = {
                  description = "Flag that indicates that the client expects to watch this resource as well. Not currently used by Cloud Run.",
                  location = "query",
                  type = "boolean",
                },
              },
              path = "apis/serving.knative.dev/v1/{+parent}/revisions",
              response = {
                ["$ref"] = "ListRevisionsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
          },
        },
        routes = {
          methods = {
            get = {
              description = "Get information about a route.",
              flatPath = "apis/serving.knative.dev/v1/namespaces/{namespacesId}/routes/{routesId}",
              httpMethod = "GET",
              id = "run.namespaces.routes.get",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "The name of the route to retrieve. For Cloud Run (fully managed), replace {namespace} with the project ID or number. It takes the form namespaces/{namespace}. For example: namespaces/PROJECT_ID",
                  location = "path",
                  pattern = "^namespaces/[^/]+/routes/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "apis/serving.knative.dev/v1/{+name}",
              response = {
                ["$ref"] = "Route",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            list = {
              description = "List routes.",
              flatPath = "apis/serving.knative.dev/v1/namespaces/{namespacesId}/routes",
              httpMethod = "GET",
              id = "run.namespaces.routes.list",
              parameterOrder = {
                "parent",
              },
              parameters = {
                continue = {
                  description = "Optional. Encoded string to continue paging.",
                  location = "query",
                  type = "string",
                },
                fieldSelector = {
                  description = "Allows to filter resources based on a specific value for a field name. Send this in a query string format. i.e. 'metadata.name%3Dlorem'. Not currently used by Cloud Run.",
                  location = "query",
                  type = "string",
                },
                includeUninitialized = {
                  description = "Not currently used by Cloud Run.",
                  location = "query",
                  type = "boolean",
                },
                labelSelector = {
                  description = "Allows to filter resources based on a label. Supported operations are =, !=, exists, in, and notIn.",
                  location = "query",
                  type = "string",
                },
                limit = {
                  description = "Optional. The maximum number of records that should be returned.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                parent = {
                  description = "The namespace from which the routes should be listed. For Cloud Run (fully managed), replace {namespace} with the project ID or number. It takes the form namespaces/{namespace}. For example: namespaces/PROJECT_ID",
                  location = "path",
                  pattern = "^namespaces/[^/]+$",
                  required = true,
                  type = "string",
                },
                resourceVersion = {
                  description = "The baseline resource version from which the list or watch operation should start. Not currently used by Cloud Run.",
                  location = "query",
                  type = "string",
                },
                watch = {
                  description = "Flag that indicates that the client expects to watch this resource as well. Not currently used by Cloud Run.",
                  location = "query",
                  type = "boolean",
                },
              },
              path = "apis/serving.knative.dev/v1/{+parent}/routes",
              response = {
                ["$ref"] = "ListRoutesResponse",
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
              description = "Creates a new Service. Service creation will trigger a new deployment. Use GetService, and check service.status to determine if the Service is ready.",
              flatPath = "apis/serving.knative.dev/v1/namespaces/{namespacesId}/services",
              httpMethod = "POST",
              id = "run.namespaces.services.create",
              parameterOrder = {
                "parent",
              },
              parameters = {
                dryRun = {
                  description = "Indicates that the server should validate the request and populate default values without persisting the request. Supported values: `all`",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "Required. The resource's parent. In Cloud Run, it may be one of the following: * `{project_id_or_number}` * `namespaces/{project_id_or_number}` * `namespaces/{project_id_or_number}/services` * `projects/{project_id_or_number}/locations/{region}` * `projects/{project_id_or_number}/regions/{region}`",
                  location = "path",
                  pattern = "^namespaces/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "apis/serving.knative.dev/v1/{+parent}/services",
              request = {
                ["$ref"] = "Service",
              },
              response = {
                ["$ref"] = "Service",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            delete = {
              description = "Deletes the provided service. This will cause the Service to stop serving traffic and will delete all associated Revisions.",
              flatPath = "apis/serving.knative.dev/v1/namespaces/{namespacesId}/services/{servicesId}",
              httpMethod = "DELETE",
              id = "run.namespaces.services.delete",
              parameterOrder = {
                "name",
              },
              parameters = {
                apiVersion = {
                  description = "Not supported, and ignored by Cloud Run.",
                  location = "query",
                  type = "string",
                },
                dryRun = {
                  description = "Indicates that the server should validate the request and populate default values without persisting the request. Supported values: `all`",
                  location = "query",
                  type = "string",
                },
                kind = {
                  description = "Not supported, and ignored by Cloud Run.",
                  location = "query",
                  type = "string",
                },
                name = {
                  description = "Required. The fully qualified name of the service to delete. It can be any of the following forms: * `namespaces/{project_id_or_number}/services/{service_name}` (only when the `endpoint` is regional) * `projects/{project_id_or_number}/locations/{region}/services/{service_name}` * `projects/{project_id_or_number}/regions/{region}/services/{service_name}`",
                  location = "path",
                  pattern = "^namespaces/[^/]+/services/[^/]+$",
                  required = true,
                  type = "string",
                },
                propagationPolicy = {
                  description = "Not supported, and ignored by Cloud Run.",
                  location = "query",
                  type = "string",
                },
              },
              path = "apis/serving.knative.dev/v1/{+name}",
              response = {
                ["$ref"] = "Status",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            get = {
              description = "Gets information about a service.",
              flatPath = "apis/serving.knative.dev/v1/namespaces/{namespacesId}/services/{servicesId}",
              httpMethod = "GET",
              id = "run.namespaces.services.get",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. The fully qualified name of the service to retrieve. It can be any of the following forms: * `namespaces/{project_id_or_number}/services/{service_name}` (only when the `endpoint` is regional) * `projects/{project_id_or_number}/locations/{region}/services/{service_name}` * `projects/{project_id_or_number}/regions/{region}/services/{service_name}`",
                  location = "path",
                  pattern = "^namespaces/[^/]+/services/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "apis/serving.knative.dev/v1/{+name}",
              response = {
                ["$ref"] = "Service",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            list = {
              description = "Lists services for the given project and region.",
              flatPath = "apis/serving.knative.dev/v1/namespaces/{namespacesId}/services",
              httpMethod = "GET",
              id = "run.namespaces.services.list",
              parameterOrder = {
                "parent",
              },
              parameters = {
                continue = {
                  description = "Encoded string to continue paging.",
                  location = "query",
                  type = "string",
                },
                fieldSelector = {
                  description = "Not supported, and ignored by Cloud Run.",
                  location = "query",
                  type = "string",
                },
                includeUninitialized = {
                  description = "Not supported, and ignored by Cloud Run.",
                  location = "query",
                  type = "boolean",
                },
                labelSelector = {
                  description = "Allows to filter resources based on a label. Supported operations are =, !=, exists, in, and notIn.",
                  location = "query",
                  type = "string",
                },
                limit = {
                  description = "The maximum number of records that should be returned.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                parent = {
                  description = "Required. The parent from where the resources should be listed. In Cloud Run, it may be one of the following: * `{project_id_or_number}` * `namespaces/{project_id_or_number}` * `namespaces/{project_id_or_number}/services` * `projects/{project_id_or_number}/locations/{region}` * `projects/{project_id_or_number}/regions/{region}`",
                  location = "path",
                  pattern = "^namespaces/[^/]+$",
                  required = true,
                  type = "string",
                },
                resourceVersion = {
                  description = "Not supported, and ignored by Cloud Run.",
                  location = "query",
                  type = "string",
                },
                watch = {
                  description = "Not supported, and ignored by Cloud Run.",
                  location = "query",
                  type = "boolean",
                },
              },
              path = "apis/serving.knative.dev/v1/{+parent}/services",
              response = {
                ["$ref"] = "ListServicesResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            replaceService = {
              description = "Replaces a service. Only the spec and metadata labels and annotations are modifiable. After the Update request, Cloud Run will work to make the 'status' match the requested 'spec'. May provide metadata.resourceVersion to enforce update from last read for optimistic concurrency control.",
              flatPath = "apis/serving.knative.dev/v1/namespaces/{namespacesId}/services/{servicesId}",
              httpMethod = "PUT",
              id = "run.namespaces.services.replaceService",
              parameterOrder = {
                "name",
              },
              parameters = {
                dryRun = {
                  description = "Indicates that the server should validate the request and populate default values without persisting the request. Supported values: `all`",
                  location = "query",
                  type = "string",
                },
                name = {
                  description = "Required. The fully qualified name of the service to replace. It can be any of the following forms: * `namespaces/{project_id_or_number}/services/{service_name}` (only when the `endpoint` is regional) * `projects/{project_id_or_number}/locations/{region}/services/{service_name}` * `projects/{project_id_or_number}/regions/{region}/services/{service_name}`",
                  location = "path",
                  pattern = "^namespaces/[^/]+/services/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "apis/serving.knative.dev/v1/{+name}",
              request = {
                ["$ref"] = "Service",
              },
              response = {
                ["$ref"] = "Service",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
          },
        },
        tasks = {
          methods = {
            get = {
              description = "Get information about a task.",
              flatPath = "apis/run.googleapis.com/v1/namespaces/{namespacesId}/tasks/{tasksId}",
              httpMethod = "GET",
              id = "run.namespaces.tasks.get",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. The name of the task to retrieve. Replace {namespace} with the project ID or number. It takes the form namespaces/{namespace}. For example: namespaces/PROJECT_ID",
                  location = "path",
                  pattern = "^namespaces/[^/]+/tasks/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "apis/run.googleapis.com/v1/{+name}",
              response = {
                ["$ref"] = "Task",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            list = {
              description = "List tasks.",
              flatPath = "apis/run.googleapis.com/v1/namespaces/{namespacesId}/tasks",
              httpMethod = "GET",
              id = "run.namespaces.tasks.list",
              parameterOrder = {
                "parent",
              },
              parameters = {
                continue = {
                  description = "Optional. Optional encoded string to continue paging.",
                  location = "query",
                  type = "string",
                },
                fieldSelector = {
                  description = "Optional. Not supported by Cloud Run.",
                  location = "query",
                  type = "string",
                },
                includeUninitialized = {
                  description = "Optional. Not supported by Cloud Run.",
                  location = "query",
                  type = "boolean",
                },
                labelSelector = {
                  description = "Optional. Allows to filter resources based on a label. Supported operations are =, !=, exists, in, and notIn. For example, to list all tasks of execution \"foo\" in succeeded state: `run.googleapis.com/execution=foo,run.googleapis.com/runningState=Succeeded`. Supported states are: * `Pending`: Initial state of all tasks. The task has not yet started but eventually will. * `Running`: Container instances for this task are running or will be running shortly. * `Succeeded`: No more container instances to run for the task, and the last attempt succeeded. * `Failed`: No more container instances to run for the task, and the last attempt failed. This task has run out of retry attempts. * `Cancelled`: Task was running but got stopped because its parent execution has been aborted. * `Abandoned`: The task has not yet started and never will because its parent execution has been aborted.",
                  location = "query",
                  type = "string",
                },
                limit = {
                  description = "Optional. The maximum number of records that should be returned.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                parent = {
                  description = "Required. The namespace from which the tasks should be listed. Replace {namespace} with the project ID or number. It takes the form namespaces/{namespace}. For example: namespaces/PROJECT_ID",
                  location = "path",
                  pattern = "^namespaces/[^/]+$",
                  required = true,
                  type = "string",
                },
                resourceVersion = {
                  description = "Optional. Not supported by Cloud Run.",
                  location = "query",
                  type = "string",
                },
                watch = {
                  description = "Optional. Not supported by Cloud Run.",
                  location = "query",
                  type = "boolean",
                },
              },
              path = "apis/run.googleapis.com/v1/{+parent}/tasks",
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
    projects = {
      resources = {
        authorizeddomains = {
          methods = {
            list = {
              description = "List authorized domains.",
              flatPath = "v1/projects/{projectsId}/authorizeddomains",
              httpMethod = "GET",
              id = "run.projects.authorizeddomains.list",
              parameterOrder = {
                "parent",
              },
              parameters = {
                pageSize = {
                  description = "Maximum results to return per page.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "Continuation token for fetching the next page of results.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "Name of the parent Project resource. Example: `projects/myproject`.",
                  location = "path",
                  pattern = "^projects/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/authorizeddomains",
              response = {
                ["$ref"] = "ListAuthorizedDomainsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
          },
        },
        locations = {
          methods = {
            list = {
              description = "Lists information about the supported locations for this service.",
              flatPath = "v1/projects/{projectsId}/locations",
              httpMethod = "GET",
              id = "run.projects.locations.list",
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
            authorizeddomains = {
              methods = {
                list = {
                  description = "List authorized domains.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/authorizeddomains",
                  httpMethod = "GET",
                  id = "run.projects.locations.authorizeddomains.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    pageSize = {
                      description = "Maximum results to return per page.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "Continuation token for fetching the next page of results.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Name of the parent Project resource. Example: `projects/myproject`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/authorizeddomains",
                  response = {
                    ["$ref"] = "ListAuthorizedDomainsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
              },
            },
            configurations = {
              methods = {
                get = {
                  description = "Get information about a configuration.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/configurations/{configurationsId}",
                  httpMethod = "GET",
                  id = "run.projects.locations.configurations.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "The name of the configuration to retrieve. For Cloud Run, replace {namespace_id} with the project ID or number.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/configurations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "Configuration",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                list = {
                  description = "List configurations.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/configurations",
                  httpMethod = "GET",
                  id = "run.projects.locations.configurations.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    continue = {
                      description = "Optional. Encoded string to continue paging.",
                      location = "query",
                      type = "string",
                    },
                    fieldSelector = {
                      description = "Not supported by Cloud Run.",
                      location = "query",
                      type = "string",
                    },
                    includeUninitialized = {
                      description = "Not supported by Cloud Run.",
                      location = "query",
                      type = "boolean",
                    },
                    labelSelector = {
                      description = "Allows to filter resources based on a label. Supported operations are =, !=, exists, in, and notIn.",
                      location = "query",
                      type = "string",
                    },
                    limit = {
                      description = "Optional. The maximum number of the records that should be returned.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    parent = {
                      description = "The namespace from which the configurations should be listed. For Cloud Run, replace {namespace_id} with the project ID or number.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    resourceVersion = {
                      description = "Not supported by Cloud Run.",
                      location = "query",
                      type = "string",
                    },
                    watch = {
                      description = "Not supported by Cloud Run.",
                      location = "query",
                      type = "boolean",
                    },
                  },
                  path = "v1/{+parent}/configurations",
                  response = {
                    ["$ref"] = "ListConfigurationsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
              },
            },
            domainmappings = {
              methods = {
                create = {
                  description = "Create a new domain mapping.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/domainmappings",
                  httpMethod = "POST",
                  id = "run.projects.locations.domainmappings.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    dryRun = {
                      description = "Indicates that the server should validate the request and populate default values without persisting the request. Supported values: `all`",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "The namespace in which the domain mapping should be created. For Cloud Run (fully managed), replace {namespace} with the project ID or number. It takes the form namespaces/{namespace}. For example: namespaces/PROJECT_ID",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/domainmappings",
                  request = {
                    ["$ref"] = "DomainMapping",
                  },
                  response = {
                    ["$ref"] = "DomainMapping",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                delete = {
                  description = "Delete a domain mapping.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/domainmappings/{domainmappingsId}",
                  httpMethod = "DELETE",
                  id = "run.projects.locations.domainmappings.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    apiVersion = {
                      description = "Cloud Run currently ignores this parameter.",
                      location = "query",
                      type = "string",
                    },
                    dryRun = {
                      description = "Indicates that the server should validate the request and populate default values without persisting the request. Supported values: `all`",
                      location = "query",
                      type = "string",
                    },
                    kind = {
                      description = "Cloud Run currently ignores this parameter.",
                      location = "query",
                      type = "string",
                    },
                    name = {
                      description = "The name of the domain mapping to delete. For Cloud Run (fully managed), replace {namespace} with the project ID or number. It takes the form namespaces/{namespace}. For example: namespaces/PROJECT_ID",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/domainmappings/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    propagationPolicy = {
                      description = "Specifies the propagation policy of delete. Cloud Run currently ignores this setting, and deletes in the background. Please see kubernetes.io/docs/concepts/architecture/garbage-collection/ for more information.",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "Status",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                get = {
                  description = "Get information about a domain mapping.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/domainmappings/{domainmappingsId}",
                  httpMethod = "GET",
                  id = "run.projects.locations.domainmappings.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "The name of the domain mapping to retrieve. For Cloud Run (fully managed), replace {namespace} with the project ID or number. It takes the form namespaces/{namespace}. For example: namespaces/PROJECT_ID",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/domainmappings/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "DomainMapping",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                list = {
                  description = "List all domain mappings.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/domainmappings",
                  httpMethod = "GET",
                  id = "run.projects.locations.domainmappings.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    continue = {
                      description = "Optional. Encoded string to continue paging.",
                      location = "query",
                      type = "string",
                    },
                    fieldSelector = {
                      description = "Allows to filter resources based on a specific value for a field name. Send this in a query string format. i.e. 'metadata.name%3Dlorem'. Not currently used by Cloud Run.",
                      location = "query",
                      type = "string",
                    },
                    includeUninitialized = {
                      description = "Not currently used by Cloud Run.",
                      location = "query",
                      type = "boolean",
                    },
                    labelSelector = {
                      description = "Allows to filter resources based on a label. Supported operations are =, !=, exists, in, and notIn.",
                      location = "query",
                      type = "string",
                    },
                    limit = {
                      description = "Optional. The maximum number of records that should be returned.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    parent = {
                      description = "The namespace from which the domain mappings should be listed. For Cloud Run (fully managed), replace {namespace} with the project ID or number. It takes the form namespaces/{namespace}. For example: namespaces/PROJECT_ID",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    resourceVersion = {
                      description = "The baseline resource version from which the list or watch operation should start. Not currently used by Cloud Run.",
                      location = "query",
                      type = "string",
                    },
                    watch = {
                      description = "Flag that indicates that the client expects to watch this resource as well. Not currently used by Cloud Run.",
                      location = "query",
                      type = "boolean",
                    },
                  },
                  path = "v1/{+parent}/domainmappings",
                  response = {
                    ["$ref"] = "ListDomainMappingsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
              },
            },
            jobs = {
              methods = {
                getIamPolicy = {
                  description = "Get the IAM Access Control policy currently in effect for the given job. This result does not include any inherited policies.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/jobs/{jobsId}:getIamPolicy",
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
                  path = "v1/{+resource}:getIamPolicy",
                  response = {
                    ["$ref"] = "Policy",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                setIamPolicy = {
                  description = "Sets the IAM Access control policy for the specified job. Overwrites any existing policy.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/jobs/{jobsId}:setIamPolicy",
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
                  description = "Returns permissions that a caller has on the specified job. There are no permissions required for making this API call.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/jobs/{jobsId}:testIamPermissions",
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
            },
            revisions = {
              methods = {
                delete = {
                  description = "Delete a revision.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/revisions/{revisionsId}",
                  httpMethod = "DELETE",
                  id = "run.projects.locations.revisions.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    apiVersion = {
                      description = "Cloud Run currently ignores this parameter.",
                      location = "query",
                      type = "string",
                    },
                    dryRun = {
                      description = "Indicates that the server should validate the request and populate default values without persisting the request. Supported values: `all`",
                      location = "query",
                      type = "string",
                    },
                    kind = {
                      description = "Cloud Run currently ignores this parameter.",
                      location = "query",
                      type = "string",
                    },
                    name = {
                      description = "The name of the revision to delete. For Cloud Run (fully managed), replace {namespace} with the project ID or number. It takes the form namespaces/{namespace}. For example: namespaces/PROJECT_ID",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/revisions/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    propagationPolicy = {
                      description = "Specifies the propagation policy of delete. Cloud Run currently ignores this setting, and deletes in the background. Please see https://kubernetes.io/docs/concepts/architecture/garbage-collection/ for more information.",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "Status",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                get = {
                  description = "Get information about a revision.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/revisions/{revisionsId}",
                  httpMethod = "GET",
                  id = "run.projects.locations.revisions.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "The name of the revision to retrieve. For Cloud Run (fully managed), replace {namespace} with the project ID or number. It takes the form namespaces/{namespace}. For example: namespaces/PROJECT_ID",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/revisions/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "Revision",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                list = {
                  description = "List revisions.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/revisions",
                  httpMethod = "GET",
                  id = "run.projects.locations.revisions.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    continue = {
                      description = "Optional. Encoded string to continue paging.",
                      location = "query",
                      type = "string",
                    },
                    fieldSelector = {
                      description = "Allows to filter resources based on a specific value for a field name. Send this in a query string format. i.e. 'metadata.name%3Dlorem'. Not currently used by Cloud Run.",
                      location = "query",
                      type = "string",
                    },
                    includeUninitialized = {
                      description = "Not currently used by Cloud Run.",
                      location = "query",
                      type = "boolean",
                    },
                    labelSelector = {
                      description = "Allows to filter resources based on a label. Supported operations are =, !=, exists, in, and notIn.",
                      location = "query",
                      type = "string",
                    },
                    limit = {
                      description = "Optional. The maximum number of records that should be returned.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    parent = {
                      description = "The namespace from which the revisions should be listed. For Cloud Run (fully managed), replace {namespace} with the project ID or number. It takes the form namespaces/{namespace}. For example: namespaces/PROJECT_ID",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    resourceVersion = {
                      description = "The baseline resource version from which the list or watch operation should start. Not currently used by Cloud Run.",
                      location = "query",
                      type = "string",
                    },
                    watch = {
                      description = "Flag that indicates that the client expects to watch this resource as well. Not currently used by Cloud Run.",
                      location = "query",
                      type = "boolean",
                    },
                  },
                  path = "v1/{+parent}/revisions",
                  response = {
                    ["$ref"] = "ListRevisionsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
              },
            },
            routes = {
              methods = {
                get = {
                  description = "Get information about a route.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/routes/{routesId}",
                  httpMethod = "GET",
                  id = "run.projects.locations.routes.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "The name of the route to retrieve. For Cloud Run (fully managed), replace {namespace} with the project ID or number. It takes the form namespaces/{namespace}. For example: namespaces/PROJECT_ID",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/routes/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "Route",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                list = {
                  description = "List routes.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/routes",
                  httpMethod = "GET",
                  id = "run.projects.locations.routes.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    continue = {
                      description = "Optional. Encoded string to continue paging.",
                      location = "query",
                      type = "string",
                    },
                    fieldSelector = {
                      description = "Allows to filter resources based on a specific value for a field name. Send this in a query string format. i.e. 'metadata.name%3Dlorem'. Not currently used by Cloud Run.",
                      location = "query",
                      type = "string",
                    },
                    includeUninitialized = {
                      description = "Not currently used by Cloud Run.",
                      location = "query",
                      type = "boolean",
                    },
                    labelSelector = {
                      description = "Allows to filter resources based on a label. Supported operations are =, !=, exists, in, and notIn.",
                      location = "query",
                      type = "string",
                    },
                    limit = {
                      description = "Optional. The maximum number of records that should be returned.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    parent = {
                      description = "The namespace from which the routes should be listed. For Cloud Run (fully managed), replace {namespace} with the project ID or number. It takes the form namespaces/{namespace}. For example: namespaces/PROJECT_ID",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    resourceVersion = {
                      description = "The baseline resource version from which the list or watch operation should start. Not currently used by Cloud Run.",
                      location = "query",
                      type = "string",
                    },
                    watch = {
                      description = "Flag that indicates that the client expects to watch this resource as well. Not currently used by Cloud Run.",
                      location = "query",
                      type = "boolean",
                    },
                  },
                  path = "v1/{+parent}/routes",
                  response = {
                    ["$ref"] = "ListRoutesResponse",
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
                  description = "Creates a new Service. Service creation will trigger a new deployment. Use GetService, and check service.status to determine if the Service is ready.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/services",
                  httpMethod = "POST",
                  id = "run.projects.locations.services.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    dryRun = {
                      description = "Indicates that the server should validate the request and populate default values without persisting the request. Supported values: `all`",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The resource's parent. In Cloud Run, it may be one of the following: * `{project_id_or_number}` * `namespaces/{project_id_or_number}` * `namespaces/{project_id_or_number}/services` * `projects/{project_id_or_number}/locations/{region}` * `projects/{project_id_or_number}/regions/{region}`",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/services",
                  request = {
                    ["$ref"] = "Service",
                  },
                  response = {
                    ["$ref"] = "Service",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                delete = {
                  description = "Deletes the provided service. This will cause the Service to stop serving traffic and will delete all associated Revisions.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/services/{servicesId}",
                  httpMethod = "DELETE",
                  id = "run.projects.locations.services.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    apiVersion = {
                      description = "Not supported, and ignored by Cloud Run.",
                      location = "query",
                      type = "string",
                    },
                    dryRun = {
                      description = "Indicates that the server should validate the request and populate default values without persisting the request. Supported values: `all`",
                      location = "query",
                      type = "string",
                    },
                    kind = {
                      description = "Not supported, and ignored by Cloud Run.",
                      location = "query",
                      type = "string",
                    },
                    name = {
                      description = "Required. The fully qualified name of the service to delete. It can be any of the following forms: * `namespaces/{project_id_or_number}/services/{service_name}` (only when the `endpoint` is regional) * `projects/{project_id_or_number}/locations/{region}/services/{service_name}` * `projects/{project_id_or_number}/regions/{region}/services/{service_name}`",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/services/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    propagationPolicy = {
                      description = "Not supported, and ignored by Cloud Run.",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "Status",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                get = {
                  description = "Gets information about a service.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/services/{servicesId}",
                  httpMethod = "GET",
                  id = "run.projects.locations.services.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The fully qualified name of the service to retrieve. It can be any of the following forms: * `namespaces/{project_id_or_number}/services/{service_name}` (only when the `endpoint` is regional) * `projects/{project_id_or_number}/locations/{region}/services/{service_name}` * `projects/{project_id_or_number}/regions/{region}/services/{service_name}`",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/services/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "Service",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                getIamPolicy = {
                  description = "Gets the IAM Access Control policy currently in effect for the given Cloud Run service. This result does not include any inherited policies.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/services/{servicesId}:getIamPolicy",
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
                  path = "v1/{+resource}:getIamPolicy",
                  response = {
                    ["$ref"] = "Policy",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                list = {
                  description = "Lists services for the given project and region.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/services",
                  httpMethod = "GET",
                  id = "run.projects.locations.services.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    continue = {
                      description = "Encoded string to continue paging.",
                      location = "query",
                      type = "string",
                    },
                    fieldSelector = {
                      description = "Not supported, and ignored by Cloud Run.",
                      location = "query",
                      type = "string",
                    },
                    includeUninitialized = {
                      description = "Not supported, and ignored by Cloud Run.",
                      location = "query",
                      type = "boolean",
                    },
                    labelSelector = {
                      description = "Allows to filter resources based on a label. Supported operations are =, !=, exists, in, and notIn.",
                      location = "query",
                      type = "string",
                    },
                    limit = {
                      description = "The maximum number of records that should be returned.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    parent = {
                      description = "Required. The parent from where the resources should be listed. In Cloud Run, it may be one of the following: * `{project_id_or_number}` * `namespaces/{project_id_or_number}` * `namespaces/{project_id_or_number}/services` * `projects/{project_id_or_number}/locations/{region}` * `projects/{project_id_or_number}/regions/{region}`",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    resourceVersion = {
                      description = "Not supported, and ignored by Cloud Run.",
                      location = "query",
                      type = "string",
                    },
                    watch = {
                      description = "Not supported, and ignored by Cloud Run.",
                      location = "query",
                      type = "boolean",
                    },
                  },
                  path = "v1/{+parent}/services",
                  response = {
                    ["$ref"] = "ListServicesResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                replaceService = {
                  description = "Replaces a service. Only the spec and metadata labels and annotations are modifiable. After the Update request, Cloud Run will work to make the 'status' match the requested 'spec'. May provide metadata.resourceVersion to enforce update from last read for optimistic concurrency control.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/services/{servicesId}",
                  httpMethod = "PUT",
                  id = "run.projects.locations.services.replaceService",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    dryRun = {
                      description = "Indicates that the server should validate the request and populate default values without persisting the request. Supported values: `all`",
                      location = "query",
                      type = "string",
                    },
                    name = {
                      description = "Required. The fully qualified name of the service to replace. It can be any of the following forms: * `namespaces/{project_id_or_number}/services/{service_name}` (only when the `endpoint` is regional) * `projects/{project_id_or_number}/locations/{region}/services/{service_name}` * `projects/{project_id_or_number}/regions/{region}/services/{service_name}`",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/services/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  request = {
                    ["$ref"] = "Service",
                  },
                  response = {
                    ["$ref"] = "Service",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                setIamPolicy = {
                  description = "Sets the IAM Access control policy for the specified Service. Overwrites any existing policy.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/services/{servicesId}:setIamPolicy",
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
                  description = "Returns permissions that a caller has on the specified Project. There are no permissions required for making this API call.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/services/{servicesId}:testIamPermissions",
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
            },
          },
        },
      },
    },
  },
  revision = "20230108",
  rootUrl = "https://run.googleapis.com/",
  schemas = {
    Addressable = {
      description = "Information for connecting over HTTP(s).",
      id = "Addressable",
      properties = {
        url = {
          type = "string",
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
    AuthorizedDomain = {
      description = "A domain that a user has been authorized to administer. To authorize use of a domain, verify ownership via [Webmaster Central](https://www.google.com/webmasters/verification/home).",
      id = "AuthorizedDomain",
      properties = {
        id = {
          description = "Relative name of the domain authorized for use. Example: `example.com`.",
          type = "string",
        },
        name = {
          description = "Deprecated Read only. Full path to the `AuthorizedDomain` resource in the API. Example: `projects/myproject/authorizedDomains/example.com`.",
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
    CancelExecutionRequest = {
      description = "Request message for cancelling an execution.",
      id = "CancelExecutionRequest",
      properties = {},
      type = "object",
    },
    ConfigMapEnvSource = {
      description = "Not supported by Cloud Run. ConfigMapEnvSource selects a ConfigMap to populate the environment variables with. The contents of the target ConfigMap's Data field will represent the key-value pairs as environment variables.",
      id = "ConfigMapEnvSource",
      properties = {
        localObjectReference = {
          ["$ref"] = "LocalObjectReference",
          description = "This field should not be used directly as it is meant to be inlined directly into the message. Use the \"name\" field instead.",
        },
        name = {
          description = "The ConfigMap to select from.",
          type = "string",
        },
        optional = {
          description = "Specify whether the ConfigMap must be defined.",
          type = "boolean",
        },
      },
      type = "object",
    },
    ConfigMapKeySelector = {
      description = "Not supported by Cloud Run.",
      id = "ConfigMapKeySelector",
      properties = {
        key = {
          description = "Required. Not supported by Cloud Run.",
          type = "string",
        },
        localObjectReference = {
          ["$ref"] = "LocalObjectReference",
          description = "Not supported by Cloud Run.",
        },
        name = {
          description = "Required. Not supported by Cloud Run.",
          type = "string",
        },
        optional = {
          description = "Not supported by Cloud Run.",
          type = "boolean",
        },
      },
      type = "object",
    },
    ConfigMapVolumeSource = {
      description = "Not supported by Cloud Run. Adapts a ConfigMap into a volume. The contents of the target ConfigMap's Data field will be presented in a volume as files using the keys in the Data field as the file names, unless the items element is populated with specific mappings of keys to paths.",
      id = "ConfigMapVolumeSource",
      properties = {
        defaultMode = {
          description = "(Optional) Integer representation of mode bits to use on created files by default. Must be a value between 01 and 0777 (octal). If 0 or not set, it will default to 0644. Directories within the path are not affected by this setting. Notes * Internally, a umask of 0222 will be applied to any non-zero value. * This is an integer representation of the mode bits. So, the octal integer value should look exactly as the chmod numeric notation with a leading zero. Some examples: for chmod 777 (a=rwx), set to 0777 (octal) or 511 (base-10). For chmod 640 (u=rw,g=r), set to 0640 (octal) or 416 (base-10). For chmod 755 (u=rwx,g=rx,o=rx), set to 0755 (octal) or 493 (base-10). * This might be in conflict with other options that affect the file mode, like fsGroup, and the result can be other mode bits set.",
          format = "int32",
          type = "integer",
        },
        items = {
          description = "(Optional) If unspecified, each key-value pair in the Data field of the referenced Secret will be projected into the volume as a file whose name is the key and content is the value. If specified, the listed keys will be projected into the specified paths, and unlisted keys will not be present. If a key is specified that is not present in the Secret, the volume setup will error unless it is marked optional.",
          items = {
            ["$ref"] = "KeyToPath",
          },
          type = "array",
        },
        name = {
          description = "Name of the config.",
          type = "string",
        },
        optional = {
          description = "(Optional) Specify whether the Secret or its keys must be defined.",
          type = "boolean",
        },
      },
      type = "object",
    },
    Configuration = {
      description = "Configuration represents the \"floating HEAD\" of a linear history of Revisions, and optionally how the containers those revisions reference are built. Users create new Revisions by updating the Configuration's spec. The \"latest created\" revision's name is available under status, as is the \"latest ready\" revision's name. See also: https://github.com/knative/specs/blob/main/specs/serving/overview.md#configuration",
      id = "Configuration",
      properties = {
        apiVersion = {
          description = "The API version for this call such as \"serving.knative.dev/v1\".",
          type = "string",
        },
        kind = {
          description = "The kind of resource, in this case always \"Configuration\".",
          type = "string",
        },
        metadata = {
          ["$ref"] = "ObjectMeta",
          description = "Metadata associated with this Configuration, including name, namespace, labels, and annotations.",
        },
        spec = {
          ["$ref"] = "ConfigurationSpec",
          description = "Spec holds the desired state of the Configuration (from the client).",
        },
        status = {
          ["$ref"] = "ConfigurationStatus",
          description = "Status communicates the observed state of the Configuration (from the controller).",
        },
      },
      type = "object",
    },
    ConfigurationSpec = {
      description = "ConfigurationSpec holds the desired state of the Configuration (from the client).",
      id = "ConfigurationSpec",
      properties = {
        template = {
          ["$ref"] = "RevisionTemplate",
          description = "Template holds the latest specification for the Revision to be stamped out.",
        },
      },
      type = "object",
    },
    ConfigurationStatus = {
      description = "ConfigurationStatus communicates the observed state of the Configuration (from the controller).",
      id = "ConfigurationStatus",
      properties = {
        conditions = {
          description = "Conditions communicate information about ongoing/complete reconciliation processes that bring the \"spec\" inline with the observed state of the world.",
          items = {
            ["$ref"] = "GoogleCloudRunV1Condition",
          },
          type = "array",
        },
        latestCreatedRevisionName = {
          description = "LatestCreatedRevisionName is the last revision that was created from this Configuration. It might not be ready yet, so for the latest ready revision, use LatestReadyRevisionName.",
          type = "string",
        },
        latestReadyRevisionName = {
          description = "LatestReadyRevisionName holds the name of the latest Revision stamped out from this Configuration that has had its \"Ready\" condition become \"True\".",
          type = "string",
        },
        observedGeneration = {
          description = "ObservedGeneration is the 'Generation' of the Configuration that was last processed by the controller. The observed generation is updated even if the controller failed to process the spec and create the Revision. Clients polling for completed reconciliation should poll until observedGeneration = metadata.generation, and the Ready condition's status is True or False.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    Container = {
      description = "A single application container. This specifies both the container to run, the command to run in the container and the arguments to supply to it. Note that additional arguments may be supplied by the system to the container at runtime.",
      id = "Container",
      properties = {
        args = {
          description = "Arguments to the entrypoint. The docker image's CMD is used if this is not provided. Variable references are not supported in Cloud Run.",
          items = {
            type = "string",
          },
          type = "array",
        },
        command = {
          description = "Entrypoint array. Not executed within a shell. The docker image's ENTRYPOINT is used if this is not provided. Variable references are not supported in Cloud Run.",
          items = {
            type = "string",
          },
          type = "array",
        },
        env = {
          description = "List of environment variables to set in the container. EnvVar with duplicate names are generally allowed; if referencing a secret, the name must be unique for the container. For non-secret EnvVar names, the Container will only get the last-declared one.",
          items = {
            ["$ref"] = "EnvVar",
          },
          type = "array",
        },
        envFrom = {
          description = "Not supported by Cloud Run.",
          items = {
            ["$ref"] = "EnvFromSource",
          },
          type = "array",
        },
        image = {
          description = "Required. URL of the Container image in Google Container Registry or Google Artifact Registry. More info: https://kubernetes.io/docs/concepts/containers/images",
          type = "string",
        },
        imagePullPolicy = {
          description = "Image pull policy. One of Always, Never, IfNotPresent. Defaults to Always if :latest tag is specified, or IfNotPresent otherwise. More info: https://kubernetes.io/docs/concepts/containers/images#updating-images",
          type = "string",
        },
        livenessProbe = {
          ["$ref"] = "Probe",
          description = "Periodic probe of container liveness. Container will be restarted if the probe fails. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes",
        },
        name = {
          description = "Name of the container specified as a DNS_LABEL (RFC 1123). More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#dns-label-names",
          type = "string",
        },
        ports = {
          description = "List of ports to expose from the container. Only a single port can be specified. The specified ports must be listening on all interfaces (0.0.0.0) within the container to be accessible. If omitted, a port number will be chosen and passed to the container through the PORT environment variable for the container to listen on.",
          items = {
            ["$ref"] = "ContainerPort",
          },
          type = "array",
        },
        readinessProbe = {
          ["$ref"] = "Probe",
          description = "Not supported by Cloud Run.",
        },
        resources = {
          ["$ref"] = "ResourceRequirements",
          description = "Compute Resources required by this container. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#resources",
        },
        securityContext = {
          ["$ref"] = "SecurityContext",
          description = "Not supported by Cloud Run.",
        },
        startupProbe = {
          ["$ref"] = "Probe",
          description = "Startup probe of application within the container. All other probes are disabled if a startup probe is provided, until it succeeds. Container will not receive traffic if the probe fails. If not provided, a default startup probe with TCP socket action is used. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes",
        },
        terminationMessagePath = {
          description = "Path at which the file to which the container's termination message will be written is mounted into the container's filesystem. Message written is intended to be brief final status, such as an assertion failure message. Will be truncated by the node if greater than 4096 bytes. The total message length across all containers will be limited to 12kb. Defaults to /dev/termination-log.",
          type = "string",
        },
        terminationMessagePolicy = {
          description = "Indicate how the termination message should be populated. File will use the contents of terminationMessagePath to populate the container status message on both success and failure. FallbackToLogsOnError will use the last chunk of container log output if the termination message file is empty and the container exited with an error. The log output is limited to 2048 bytes or 80 lines, whichever is smaller. Defaults to File. Cannot be updated.",
          type = "string",
        },
        volumeMounts = {
          description = "Volume to mount into the container's filesystem. Only supports SecretVolumeSources. Pod volumes to mount into the container's filesystem.",
          items = {
            ["$ref"] = "VolumeMount",
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
    ContainerPort = {
      description = "ContainerPort represents a network port in a single container.",
      id = "ContainerPort",
      properties = {
        containerPort = {
          description = "Port number the container listens on. This must be a valid port number, 0 < x < 65536.",
          format = "int32",
          type = "integer",
        },
        name = {
          description = "If specified, used to specify which protocol to use. Allowed values are \"http1\" and \"h2c\".",
          type = "string",
        },
        protocol = {
          description = "Protocol for port. Must be \"TCP\". Defaults to \"TCP\".",
          type = "string",
        },
      },
      type = "object",
    },
    DomainMapping = {
      description = "Resource to hold the state and status of a user's domain mapping. NOTE: This resource is currently in Beta.",
      id = "DomainMapping",
      properties = {
        apiVersion = {
          description = "The API version for this call such as \"domains.cloudrun.com/v1\".",
          type = "string",
        },
        kind = {
          description = "The kind of resource, in this case \"DomainMapping\".",
          type = "string",
        },
        metadata = {
          ["$ref"] = "ObjectMeta",
          description = "Metadata associated with this BuildTemplate.",
        },
        spec = {
          ["$ref"] = "DomainMappingSpec",
          description = "The spec for this DomainMapping.",
        },
        status = {
          ["$ref"] = "DomainMappingStatus",
          description = "The current status of the DomainMapping.",
        },
      },
      type = "object",
    },
    DomainMappingSpec = {
      description = "The desired state of the Domain Mapping.",
      id = "DomainMappingSpec",
      properties = {
        certificateMode = {
          description = "The mode of the certificate.",
          enum = {
            "CERTIFICATE_MODE_UNSPECIFIED",
            "NONE",
            "AUTOMATIC",
          },
          enumDescriptions = {
            "",
            "Do not provision an HTTPS certificate.",
            "Automatically provisions an HTTPS certificate via GoogleCA.",
          },
          type = "string",
        },
        forceOverride = {
          description = "If set, the mapping will override any mapping set before this spec was set. It is recommended that the user leaves this empty to receive an error warning about a potential conflict and only set it once the respective UI has given such a warning.",
          type = "boolean",
        },
        routeName = {
          description = "The name of the Knative Route that this DomainMapping applies to. The route must exist.",
          type = "string",
        },
      },
      type = "object",
    },
    DomainMappingStatus = {
      description = "The current state of the Domain Mapping.",
      id = "DomainMappingStatus",
      properties = {
        conditions = {
          description = "Array of observed DomainMappingConditions, indicating the current state of the DomainMapping.",
          items = {
            ["$ref"] = "GoogleCloudRunV1Condition",
          },
          type = "array",
        },
        mappedRouteName = {
          description = "The name of the route that the mapping currently points to.",
          type = "string",
        },
        observedGeneration = {
          description = "ObservedGeneration is the 'Generation' of the DomainMapping that was last processed by the controller. Clients polling for completed reconciliation should poll until observedGeneration = metadata.generation and the Ready condition's status is True or False.",
          format = "int32",
          type = "integer",
        },
        resourceRecords = {
          description = "The resource records required to configure this domain mapping. These records must be added to the domain's DNS configuration in order to serve the application via this domain mapping.",
          items = {
            ["$ref"] = "ResourceRecord",
          },
          type = "array",
        },
        url = {
          description = "Optional. Not supported by Cloud Run.",
          type = "string",
        },
      },
      type = "object",
    },
    EnvFromSource = {
      description = "Not supported by Cloud Run. EnvFromSource represents the source of a set of ConfigMaps",
      id = "EnvFromSource",
      properties = {
        configMapRef = {
          ["$ref"] = "ConfigMapEnvSource",
          description = "The ConfigMap to select from",
        },
        prefix = {
          description = "An optional identifier to prepend to each key in the ConfigMap. Must be a C_IDENTIFIER.",
          type = "string",
        },
        secretRef = {
          ["$ref"] = "SecretEnvSource",
          description = "The Secret to select from",
        },
      },
      type = "object",
    },
    EnvVar = {
      description = "EnvVar represents an environment variable present in a Container.",
      id = "EnvVar",
      properties = {
        name = {
          description = "Required. Name of the environment variable. Must be a C_IDENTIFIER.",
          type = "string",
        },
        value = {
          description = "Value of the environment variable. Defaults to \"\". Variable references are not supported in Cloud Run.",
          type = "string",
        },
        valueFrom = {
          ["$ref"] = "EnvVarSource",
          description = "Source for the environment variable's value. Only supports secret_key_ref. Cannot be used if value is not empty.",
        },
      },
      type = "object",
    },
    EnvVarSource = {
      description = "EnvVarSource represents a source for the value of an EnvVar.",
      id = "EnvVarSource",
      properties = {
        configMapKeyRef = {
          ["$ref"] = "ConfigMapKeySelector",
          description = "Not supported by Cloud Run. Not supported in Cloud Run.",
        },
        secretKeyRef = {
          ["$ref"] = "SecretKeySelector",
          description = "Selects a key (version) of a secret in Secret Manager.",
        },
      },
      type = "object",
    },
    ExecAction = {
      description = "Not supported by Cloud Run. ExecAction describes a \"run in container\" action.",
      id = "ExecAction",
      properties = {
        command = {
          description = "Command is the command line to execute inside the container, the working directory for the command is root ('/') in the container's filesystem. The command is simply exec'd, it is not run inside a shell, so traditional shell instructions ('|', etc) won't work. To use a shell, you need to explicitly call out to that shell. Exit status of 0 is treated as live/healthy and non-zero is unhealthy.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    Execution = {
      description = "Execution represents the configuration of a single execution. An execution is an immutable resource that references a container image which is run to completion.",
      id = "Execution",
      properties = {
        apiVersion = {
          description = "Optional. APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources",
          type = "string",
        },
        kind = {
          description = "Optional. Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds",
          type = "string",
        },
        metadata = {
          ["$ref"] = "ObjectMeta",
          description = "Optional. Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata",
        },
        spec = {
          ["$ref"] = "ExecutionSpec",
          description = "Optional. Specification of the desired behavior of an execution. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status",
        },
        status = {
          ["$ref"] = "ExecutionStatus",
          description = "Output only. Current status of an execution. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status",
          readOnly = true,
        },
      },
      type = "object",
    },
    ExecutionReference = {
      description = "Reference to an Execution. Use /Executions.GetExecution with the given name to get full execution including the latest status.",
      id = "ExecutionReference",
      properties = {
        completionTimestamp = {
          description = "Optional. Completion timestamp of the execution.",
          format = "google-datetime",
          type = "string",
        },
        creationTimestamp = {
          description = "Optional. Creation timestamp of the execution.",
          format = "google-datetime",
          type = "string",
        },
        name = {
          description = "Optional. Name of the execution.",
          type = "string",
        },
      },
      type = "object",
    },
    ExecutionSpec = {
      description = "ExecutionSpec describes how the execution will look.",
      id = "ExecutionSpec",
      properties = {
        parallelism = {
          description = "Optional. Specifies the maximum desired number of tasks the execution should run at given time. Must be <= task_count. When the job is run, if this field is 0 or unset, the maximum possible value will be used for that execution. The actual number of tasks running in steady state will be less than this number when there are fewer tasks waiting to be completed, i.e. when the work left to do is less than max parallelism.",
          format = "int32",
          type = "integer",
        },
        taskCount = {
          description = "Optional. Specifies the desired number of tasks the execution should run. Setting to 1 means that parallelism is limited to 1 and the success of that task signals the success of the execution.",
          format = "int32",
          type = "integer",
        },
        template = {
          ["$ref"] = "TaskTemplateSpec",
          description = "Optional. The template used to create tasks for this execution.",
        },
      },
      type = "object",
    },
    ExecutionStatus = {
      description = "ExecutionStatus represents the current state of an Execution.",
      id = "ExecutionStatus",
      properties = {
        cancelledCount = {
          description = "Optional. The number of tasks which reached phase Cancelled.",
          format = "int32",
          type = "integer",
        },
        completionTime = {
          description = "Optional. Represents the time that the execution was completed. It is not guaranteed to be set in happens-before order across separate operations. It is represented in RFC3339 form and is in UTC. +optional",
          format = "google-datetime",
          type = "string",
        },
        conditions = {
          description = "Optional. Conditions communicate information about ongoing/complete reconciliation processes that bring the \"spec\" inline with the observed state of the world. Execution-specific conditions include: * `ResourcesAvailable`: `True` when underlying resources have been provisioned. * `Started`: `True` when the execution has started to execute. * `Completed`: `True` when the execution has succeeded. `False` when the execution has failed.",
          items = {
            ["$ref"] = "GoogleCloudRunV1Condition",
          },
          type = "array",
        },
        failedCount = {
          description = "Optional. The number of tasks which reached phase Failed.",
          format = "int32",
          type = "integer",
        },
        logUri = {
          description = "Optional. URI where logs for this execution can be found in Cloud Console.",
          type = "string",
        },
        observedGeneration = {
          description = "Optional. The 'generation' of the execution that was last processed by the controller.",
          format = "int32",
          type = "integer",
        },
        retriedCount = {
          description = "Optional. The number of tasks which have retried at least once.",
          format = "int32",
          type = "integer",
        },
        runningCount = {
          description = "Optional. The number of actively running tasks.",
          format = "int32",
          type = "integer",
        },
        startTime = {
          description = "Optional. Represents the time that the execution started to run. It is not guaranteed to be set in happens-before order across separate operations. It is represented in RFC3339 form and is in UTC.",
          format = "google-datetime",
          type = "string",
        },
        succeededCount = {
          description = "Optional. The number of tasks which reached phase Succeeded.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    ExecutionTemplateSpec = {
      description = "ExecutionTemplateSpec describes the metadata and spec an Execution should have when created from a job. Based on: https://github.com/kubernetes/api/blob/e771f807/core/v1/types.go#L3179-L3190",
      id = "ExecutionTemplateSpec",
      properties = {
        metadata = {
          ["$ref"] = "ObjectMeta",
          description = "Optional. Optional metadata for this Execution, including labels and annotations. The following annotation keys set properties of the created execution: * `run.googleapis.com/cloudsql-instances` sets Cloud SQL connections. Multiple values should be comma separated. * `run.googleapis.com/vpc-access-connector` sets a Serverless VPC Access connector. * `run.googleapis.com/vpc-access-egress` sets VPC egress. Supported values are `all-traffic`, `all` (deprecated), and `private-ranges-only`. `all-traffic` and `all` provide the same functionality. `all` is deprecated but will continue to be supported. Prefer `all-traffic`.",
        },
        spec = {
          ["$ref"] = "ExecutionSpec",
          description = "Required. ExecutionSpec holds the desired configuration for executions of this job.",
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
    GRPCAction = {
      description = "GRPCAction describes an action involving a GRPC port.",
      id = "GRPCAction",
      properties = {
        port = {
          description = "Port number of the gRPC service. Number must be in the range 1 to 65535.",
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
    GoogleCloudRunV1Condition = {
      description = "Conditions show the status of reconciliation progress on a given resource. Most resource use a top-level condition type \"Ready\" or \"Completed\" to show overall status with other conditions to checkpoint each stage of reconciliation. Note that if metadata.Generation does not equal status.ObservedGeneration, the conditions shown may not be relevant for the current spec.",
      id = "GoogleCloudRunV1Condition",
      properties = {
        lastTransitionTime = {
          description = "Optional. Last time the condition transitioned from one status to another.",
          format = "google-datetime",
          type = "string",
        },
        message = {
          description = "Optional. Human readable message indicating details about the current status.",
          type = "string",
        },
        reason = {
          description = "Optional. One-word CamelCase reason for the condition's last transition. These are intended to be stable, unique values which the client may use to trigger error handling logic, whereas messages which may be changed later by the server.",
          type = "string",
        },
        severity = {
          description = "Optional. How to interpret this condition. One of Error, Warning, or Info. Conditions of severity Info do not contribute to resource readiness.",
          type = "string",
        },
        status = {
          description = "Status of the condition, one of True, False, Unknown.",
          type = "string",
        },
        type = {
          description = "type is used to communicate the status of the reconciliation process. See also: https://github.com/knative/serving/blob/main/docs/spec/errors.md#error-conditions-and-reporting Types common to all resources include: * \"Ready\" or \"Completed\": True when the Resource is ready.",
          type = "string",
        },
      },
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
    HTTPGetAction = {
      description = "HTTPGetAction describes an action based on HTTP Get requests.",
      id = "HTTPGetAction",
      properties = {
        host = {
          description = "Not supported by Cloud Run.",
          type = "string",
        },
        httpHeaders = {
          description = "Custom headers to set in the request. HTTP allows repeated headers.",
          items = {
            ["$ref"] = "HTTPHeader",
          },
          type = "array",
        },
        path = {
          description = "Path to access on the HTTP server.",
          type = "string",
        },
        scheme = {
          description = "Not supported by Cloud Run.",
          type = "string",
        },
      },
      type = "object",
    },
    HTTPHeader = {
      description = "HTTPHeader describes a custom header to be used in HTTP probes",
      id = "HTTPHeader",
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
    Job = {
      description = "Job represents the configuration of a single job, which references a container image which is run to completion.",
      id = "Job",
      properties = {
        apiVersion = {
          description = "Optional. APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources",
          type = "string",
        },
        kind = {
          description = "Optional. Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds",
          type = "string",
        },
        metadata = {
          ["$ref"] = "ObjectMeta",
          description = "Optional. Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata",
        },
        spec = {
          ["$ref"] = "JobSpec",
          description = "Optional. Specification of the desired behavior of a job. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status",
        },
        status = {
          ["$ref"] = "JobStatus",
          description = "Output only. Current status of a job. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status",
          readOnly = true,
        },
      },
      type = "object",
    },
    JobSpec = {
      description = "JobSpec describes how the job will look.",
      id = "JobSpec",
      properties = {
        template = {
          ["$ref"] = "ExecutionTemplateSpec",
          description = "Optional. Describes the execution that will be created when running a job.",
        },
      },
      type = "object",
    },
    JobStatus = {
      description = "JobStatus represents the current state of a Job.",
      id = "JobStatus",
      properties = {
        conditions = {
          description = "Conditions communicate information about ongoing/complete reconciliation processes that bring the \"spec\" inline with the observed state of the world. Job-specific conditions include: * `Ready`: `True` when the job is ready to be executed.",
          items = {
            ["$ref"] = "GoogleCloudRunV1Condition",
          },
          type = "array",
        },
        executionCount = {
          description = "Number of executions created for this job.",
          format = "int32",
          type = "integer",
        },
        latestCreatedExecution = {
          ["$ref"] = "ExecutionReference",
          description = "A pointer to the most recently created execution for this job. This is set regardless of the eventual state of the execution.",
        },
        observedGeneration = {
          description = "The 'generation' of the job that was last processed by the controller.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    KeyToPath = {
      description = "Maps a string key to a path within a volume.",
      id = "KeyToPath",
      properties = {
        key = {
          description = "The Cloud Secret Manager secret version. Can be 'latest' for the latest value, or an integer or a secret alias for a specific version. The key to project.",
          type = "string",
        },
        mode = {
          description = "(Optional) Mode bits to use on this file, must be a value between 01 and 0777 (octal). If 0 or not set, the Volume's default mode will be used. Notes * Internally, a umask of 0222 will be applied to any non-zero value. * This is an integer representation of the mode bits. So, the octal integer value should look exactly as the chmod numeric notation with a leading zero. Some examples: for chmod 777 (a=rwx), set to 0777 (octal) or 511 (base-10). For chmod 640 (u=rw,g=r), set to 0640 (octal) or 416 (base-10). For chmod 755 (u=rwx,g=rx,o=rx), set to 0755 (octal) or 493 (base-10). * This might be in conflict with other options that affect the file mode, like fsGroup, and the result can be other mode bits set.",
          format = "int32",
          type = "integer",
        },
        path = {
          description = "The relative path of the file to map the key to. May not be an absolute path. May not contain the path element '..'. May not start with the string '..'.",
          type = "string",
        },
      },
      type = "object",
    },
    ListAuthorizedDomainsResponse = {
      description = "A list of Authorized Domains.",
      id = "ListAuthorizedDomainsResponse",
      properties = {
        domains = {
          description = "The authorized domains belonging to the user.",
          items = {
            ["$ref"] = "AuthorizedDomain",
          },
          type = "array",
        },
        nextPageToken = {
          description = "Continuation token for fetching the next page of results.",
          type = "string",
        },
      },
      type = "object",
    },
    ListConfigurationsResponse = {
      description = "ListConfigurationsResponse is a list of Configuration resources.",
      id = "ListConfigurationsResponse",
      properties = {
        apiVersion = {
          description = "The API version for this call such as \"serving.knative.dev/v1\".",
          type = "string",
        },
        items = {
          description = "List of Configurations.",
          items = {
            ["$ref"] = "Configuration",
          },
          type = "array",
        },
        kind = {
          description = "The kind of this resource, in this case \"ConfigurationList\".",
          type = "string",
        },
        metadata = {
          ["$ref"] = "ListMeta",
          description = "Metadata associated with this Configuration list.",
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
    ListDomainMappingsResponse = {
      description = "ListDomainMappingsResponse is a list of DomainMapping resources.",
      id = "ListDomainMappingsResponse",
      properties = {
        apiVersion = {
          description = "The API version for this call such as \"domains.cloudrun.com/v1\".",
          type = "string",
        },
        items = {
          description = "List of DomainMappings.",
          items = {
            ["$ref"] = "DomainMapping",
          },
          type = "array",
        },
        kind = {
          description = "The kind of this resource, in this case \"DomainMappingList\".",
          type = "string",
        },
        metadata = {
          ["$ref"] = "ListMeta",
          description = "Metadata associated with this DomainMapping list.",
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
    ListExecutionsResponse = {
      description = "ListExecutionsResponse is a list of Executions resources.",
      id = "ListExecutionsResponse",
      properties = {
        apiVersion = {
          description = "The API version for this call such as \"run.googleapis.com/v1\".",
          type = "string",
        },
        items = {
          description = "List of Executions.",
          items = {
            ["$ref"] = "Execution",
          },
          type = "array",
        },
        kind = {
          description = "The kind of this resource, in this case \"ExecutionsList\".",
          type = "string",
        },
        metadata = {
          ["$ref"] = "ListMeta",
          description = "Metadata associated with this executions list.",
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
    ListJobsResponse = {
      description = "ListJobsResponse is a list of Jobs resources.",
      id = "ListJobsResponse",
      properties = {
        apiVersion = {
          description = "The API version for this call such as \"run.googleapis.com/v1\".",
          type = "string",
        },
        items = {
          description = "List of Jobs.",
          items = {
            ["$ref"] = "Job",
          },
          type = "array",
        },
        kind = {
          description = "The kind of this resource, in this case \"JobsList\".",
          type = "string",
        },
        metadata = {
          ["$ref"] = "ListMeta",
          description = "Metadata associated with this jobs list.",
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
    ListMeta = {
      description = "Metadata for synthetic resources like List. In Cloud Run, all List Resources Responses will have a ListMeta instead of ObjectMeta.",
      id = "ListMeta",
      properties = {
        continue = {
          description = "Continuation token is a value emitted when the count of items is larger than the user/system limit. To retrieve the next page of items, pass the value of `continue` as the next request's `page_token`.",
          type = "string",
        },
        resourceVersion = {
          description = "Opaque string that identifies the server's internal version of this object. It can be used by clients to determine when objects have changed. If the message is passed back to the server, it must be left unmodified. https://git.k8s.io/community/contributors/devel/api-conventions.md#concurrency-control-and-consistency",
          type = "string",
        },
        selfLink = {
          description = "URL representing this object.",
          type = "string",
        },
      },
      type = "object",
    },
    ListRevisionsResponse = {
      description = "ListRevisionsResponse is a list of Revision resources.",
      id = "ListRevisionsResponse",
      properties = {
        apiVersion = {
          description = "The API version for this call such as \"serving.knative.dev/v1\".",
          type = "string",
        },
        items = {
          description = "List of Revisions.",
          items = {
            ["$ref"] = "Revision",
          },
          type = "array",
        },
        kind = {
          description = "The kind of this resource, in this case \"RevisionList\".",
          type = "string",
        },
        metadata = {
          ["$ref"] = "ListMeta",
          description = "Metadata associated with this revision list.",
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
    ListRoutesResponse = {
      description = "ListRoutesResponse is a list of Route resources.",
      id = "ListRoutesResponse",
      properties = {
        apiVersion = {
          description = "The API version for this call such as \"serving.knative.dev/v1\".",
          type = "string",
        },
        items = {
          description = "List of Routes.",
          items = {
            ["$ref"] = "Route",
          },
          type = "array",
        },
        kind = {
          description = "The kind of this resource, in this case always \"RouteList\".",
          type = "string",
        },
        metadata = {
          ["$ref"] = "ListMeta",
          description = "Metadata associated with this Route list.",
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
    ListServicesResponse = {
      description = "A list of Service resources.",
      id = "ListServicesResponse",
      properties = {
        apiVersion = {
          description = "The API version for this call; returns \"serving.knative.dev/v1\".",
          type = "string",
        },
        items = {
          description = "List of Services.",
          items = {
            ["$ref"] = "Service",
          },
          type = "array",
        },
        kind = {
          description = "The kind of this resource; returns \"ServiceList\".",
          type = "string",
        },
        metadata = {
          ["$ref"] = "ListMeta",
          description = "Metadata associated with this Service list.",
        },
        unreachable = {
          description = "For calls against the global endpoint, returns the list of Cloud locations that could not be reached. For regional calls, this field is not used.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ListTasksResponse = {
      description = "ListTasksResponse is a list of Tasks resources.",
      id = "ListTasksResponse",
      properties = {
        apiVersion = {
          description = "The API version for this call such as \"run.googleapis.com/v1\".",
          type = "string",
        },
        items = {
          description = "List of Tasks.",
          items = {
            ["$ref"] = "Task",
          },
          type = "array",
        },
        kind = {
          description = "The kind of this resource, in this case \"TasksList\".",
          type = "string",
        },
        metadata = {
          ["$ref"] = "ListMeta",
          description = "Metadata associated with this tasks list.",
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
    LocalObjectReference = {
      description = "Not supported by Cloud Run. LocalObjectReference contains enough information to let you locate the referenced object inside the same namespace.",
      id = "LocalObjectReference",
      properties = {
        name = {
          description = "Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names",
          type = "string",
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
    ObjectMeta = {
      description = "k8s.io.apimachinery.pkg.apis.meta.v1.ObjectMeta is metadata that all persisted resources must have, which includes all objects users must create.",
      id = "ObjectMeta",
      properties = {
        annotations = {
          additionalProperties = {
            type = "string",
          },
          description = "Unstructured key value map stored with a resource that may be set by external tools to store and retrieve arbitrary metadata. They are not queryable and should be preserved when modifying objects. In Cloud Run, annotations with 'run.googleapis.com/' and 'autoscaling.knative.dev' are restricted, and the accepted annotations will be different depending on the resource type. * `autoscaling.knative.dev/maxScale`: Revision. * `autoscaling.knative.dev/minScale`: Revision. * `run.googleapis.com/binary-authorization-breakglass`: Service, Job, * `run.googleapis.com/binary-authorization`: Service, Job, Execution. * `run.googleapis.com/client-name`: All resources. * `run.googleapis.com/cloudsql-instances`: Revision, Execution. * `run.googleapis.com/cpu-throttling`: Revision. * `run.googleapis.com/custom-audiences`: Service. * `run.googleapis.com/description`: Service. * `run.googleapis.com/encryption-key-shutdown-hours`: Revision * `run.googleapis.com/encryption-key`: Revision, Execution. * `run.googleapis.com/execution-environment`: Revision, Execution. * `run.googleapis.com/gc-traffic-tags`: Service. * `run.googleapis.com/ingress`: Service. * `run.googleapis.com/network-interfaces`: Revision, Execution. * `run.googleapis.com/post-key-revocation-action-type`: Revision. * `run.googleapis.com/secrets`: Revision, Execution. * `run.googleapis.com/secure-session-agent`: Revision. * `run.googleapis.com/sessionAffinity`: Revision. * `run.googleapis.com/startup-cpu-boost`: Revision. * `run.googleapis.com/vpc-access-connector`: Revision, Execution. * `run.googleapis.com/vpc-access-egress`: Revision, Execution. Execution. More info: https://kubernetes.io/docs/user-guide/annotations",
          type = "object",
        },
        clusterName = {
          description = "Not supported by Cloud Run",
          type = "string",
        },
        creationTimestamp = {
          description = "UTC timestamp representing the server time when this object was created. More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata",
          format = "google-datetime",
          type = "string",
        },
        deletionGracePeriodSeconds = {
          description = "Not supported by Cloud Run",
          format = "int32",
          type = "integer",
        },
        deletionTimestamp = {
          description = "The read-only soft deletion timestamp for this resource. In Cloud Run, users are not able to set this field. Instead, they must call the corresponding Delete API.",
          format = "google-datetime",
          type = "string",
        },
        finalizers = {
          description = "Not supported by Cloud Run",
          items = {
            type = "string",
          },
          type = "array",
        },
        generateName = {
          description = "Not supported by Cloud Run",
          type = "string",
        },
        generation = {
          description = "A system-provided sequence number representing a specific generation of the desired state.",
          format = "int32",
          type = "integer",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "Map of string keys and values that can be used to organize and categorize (scope and select) objects. May match selectors of replication controllers and routes. More info: https://kubernetes.io/docs/user-guide/labels",
          type = "object",
        },
        name = {
          description = "Required. The name of the resource. In Cloud Run, name is required when creating top-level resources (Service, Job), must be unique within a Cloud Run project/region, and cannot be changed once created. More info: https://kubernetes.io/docs/user-guide/identifiers#names",
          type = "string",
        },
        namespace = {
          description = "Required. Defines the space within each name must be unique within a Cloud Run region. In Cloud Run, it must be project ID or number.",
          type = "string",
        },
        ownerReferences = {
          description = "Not supported by Cloud Run",
          items = {
            ["$ref"] = "OwnerReference",
          },
          type = "array",
        },
        resourceVersion = {
          description = "Opaque, system-generated value that represents the internal version of this object that can be used by clients to determine when objects have changed. May be used for optimistic concurrency, change detection, and the watch operation on a resource or set of resources. Clients must treat these values as opaque and passed unmodified back to the server or omit the value to disable conflict-detection. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#concurrency-control-and-consistency",
          type = "string",
        },
        selfLink = {
          description = "URL representing this object.",
          type = "string",
        },
        uid = {
          description = "Unique, system-generated identifier for this resource. More info: https://kubernetes.io/docs/user-guide/identifiers#uids",
          type = "string",
        },
      },
      type = "object",
    },
    OwnerReference = {
      description = "This is not supported or used by Cloud Run.",
      id = "OwnerReference",
      properties = {
        apiVersion = {
          description = "This is not supported or used by Cloud Run.",
          type = "string",
        },
        blockOwnerDeletion = {
          description = "This is not supported or used by Cloud Run.",
          type = "boolean",
        },
        controller = {
          description = "This is not supported or used by Cloud Run.",
          type = "boolean",
        },
        kind = {
          description = "This is not supported or used by Cloud Run.",
          type = "string",
        },
        name = {
          description = "This is not supported or used by Cloud Run.",
          type = "string",
        },
        uid = {
          description = "This is not supported or used by Cloud Run.",
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
    Probe = {
      description = "Probe describes a health check to be performed against a container to determine whether it is alive or ready to receive traffic.",
      id = "Probe",
      properties = {
        exec = {
          ["$ref"] = "ExecAction",
          description = "Not supported by Cloud Run.",
        },
        failureThreshold = {
          description = "Minimum consecutive failures for the probe to be considered failed after having succeeded. Defaults to 3. Minimum value is 1.",
          format = "int32",
          type = "integer",
        },
        grpc = {
          ["$ref"] = "GRPCAction",
          description = "GRPCAction specifies an action involving a GRPC port.",
        },
        httpGet = {
          ["$ref"] = "HTTPGetAction",
          description = "HTTPGet specifies the http request to perform.",
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
        successThreshold = {
          description = "Minimum consecutive successes for the probe to be considered successful after having failed. Must be 1 if set.",
          format = "int32",
          type = "integer",
        },
        tcpSocket = {
          ["$ref"] = "TCPSocketAction",
          description = "TCPSocket specifies an action involving a TCP port.",
        },
        timeoutSeconds = {
          description = "Number of seconds after which the probe times out. Defaults to 1 second. Minimum value is 1. Maximum value is 3600. Must be smaller than period_seconds. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    ResourceRecord = {
      description = "A DNS resource record.",
      id = "ResourceRecord",
      properties = {
        name = {
          description = "Relative name of the object affected by this record. Only applicable for `CNAME` records. Example: 'www'.",
          type = "string",
        },
        rrdata = {
          description = "Data for this record. Values vary by record type, as defined in RFC 1035 (section 5) and RFC 1034 (section 3.6.1).",
          type = "string",
        },
        type = {
          description = "Resource record type. Example: `AAAA`.",
          enum = {
            "RECORD_TYPE_UNSPECIFIED",
            "A",
            "AAAA",
            "CNAME",
          },
          enumDescriptions = {
            "An unknown resource record.",
            "An A resource record. Data is an IPv4 address.",
            "An AAAA resource record. Data is an IPv6 address.",
            "A CNAME resource record. Data is a domain name to be aliased.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    ResourceRequirements = {
      description = "ResourceRequirements describes the compute resource requirements.",
      id = "ResourceRequirements",
      properties = {
        limits = {
          additionalProperties = {
            type = "string",
          },
          description = "Only memory and CPU are supported. Limits describes the maximum amount of compute resources allowed. The values of the map is string form of the 'quantity' k8s type: https://github.com/kubernetes/kubernetes/blob/master/staging/src/k8s.io/apimachinery/pkg/api/resource/quantity.go",
          type = "object",
        },
        requests = {
          additionalProperties = {
            type = "string",
          },
          description = "Only memory and CPU are supported. Requests describes the minimum amount of compute resources required. If Requests is omitted for a container, it defaults to Limits if that is explicitly specified, otherwise to an implementation-defined value. The values of the map is string form of the 'quantity' k8s type: https://github.com/kubernetes/kubernetes/blob/master/staging/src/k8s.io/apimachinery/pkg/api/resource/quantity.go",
          type = "object",
        },
      },
      type = "object",
    },
    Revision = {
      description = "Revision is an immutable snapshot of code and configuration. A revision references a container image. Revisions are created by updates to a Configuration. See also: https://github.com/knative/specs/blob/main/specs/serving/overview.md#revision",
      id = "Revision",
      properties = {
        apiVersion = {
          description = "The API version for this call such as \"serving.knative.dev/v1\".",
          type = "string",
        },
        kind = {
          description = "The kind of this resource, in this case \"Revision\".",
          type = "string",
        },
        metadata = {
          ["$ref"] = "ObjectMeta",
          description = "Metadata associated with this Revision, including name, namespace, labels, and annotations.",
        },
        spec = {
          ["$ref"] = "RevisionSpec",
          description = "Spec holds the desired state of the Revision (from the client).",
        },
        status = {
          ["$ref"] = "RevisionStatus",
          description = "Status communicates the observed state of the Revision (from the controller).",
        },
      },
      type = "object",
    },
    RevisionSpec = {
      description = "RevisionSpec holds the desired state of the Revision (from the client).",
      id = "RevisionSpec",
      properties = {
        containerConcurrency = {
          description = "ContainerConcurrency specifies the maximum allowed in-flight (concurrent) requests per container instance of the Revision. If not specified, defaults to 80.",
          format = "int32",
          type = "integer",
        },
        containers = {
          description = "Containers holds the single container that defines the unit of execution for this Revision. In the context of a Revision, we disallow a number of fields on this Container, including: name and lifecycle. In Cloud Run, only a single container may be provided. The runtime contract is documented here: https://github.com/knative/specs/blob/main/specs/serving/runtime-contract.md",
          items = {
            ["$ref"] = "Container",
          },
          type = "array",
        },
        enableServiceLinks = {
          description = "Not supported by Cloud Run.",
          type = "boolean",
        },
        imagePullSecrets = {
          description = "Not supported by Cloud Run.",
          items = {
            ["$ref"] = "LocalObjectReference",
          },
          type = "array",
        },
        serviceAccountName = {
          description = "Email address of the IAM service account associated with the revision of the service. The service account represents the identity of the running revision, and determines what permissions the revision has. If not provided, the revision will use the project's default service account.",
          type = "string",
        },
        timeoutSeconds = {
          description = "TimeoutSeconds holds the max duration the instance is allowed for responding to a request. Cloud Run: defaults to 300 seconds (5 minutes). Maximum allowed value is 3600 seconds (1 hour).",
          format = "int32",
          type = "integer",
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
    RevisionStatus = {
      description = "RevisionStatus communicates the observed state of the Revision (from the controller).",
      id = "RevisionStatus",
      properties = {
        conditions = {
          description = "Conditions communicate information about ongoing/complete reconciliation processes that bring the \"spec\" inline with the observed state of the world. As a Revision is being prepared, it will incrementally update conditions. Revision-specific conditions include: * `ResourcesAvailable`: `True` when underlying resources have been provisioned. * `ContainerHealthy`: `True` when the Revision readiness check completes. * `Active`: `True` when the Revision may receive traffic.",
          items = {
            ["$ref"] = "GoogleCloudRunV1Condition",
          },
          type = "array",
        },
        imageDigest = {
          description = "ImageDigest holds the resolved digest for the image specified within .Spec.Container.Image. The digest is resolved during the creation of Revision. This field holds the digest value regardless of whether a tag or digest was originally specified in the Container object.",
          type = "string",
        },
        logUrl = {
          description = "Optional. Specifies the generated logging url for this particular revision based on the revision url template specified in the controller's config.",
          type = "string",
        },
        observedGeneration = {
          description = "ObservedGeneration is the 'Generation' of the Revision that was last processed by the controller. Clients polling for completed reconciliation should poll until observedGeneration = metadata.generation, and the Ready condition's status is True or False.",
          format = "int32",
          type = "integer",
        },
        serviceName = {
          description = "Not currently used by Cloud Run.",
          type = "string",
        },
      },
      type = "object",
    },
    RevisionTemplate = {
      description = "RevisionTemplateSpec describes the data a revision should have when created from a template. Based on: https://github.com/kubernetes/api/blob/e771f807/core/v1/types.go#L3179-L3190",
      id = "RevisionTemplate",
      properties = {
        metadata = {
          ["$ref"] = "ObjectMeta",
          description = "Optional metadata for this Revision, including labels and annotations. Name will be generated by the Configuration. The following annotation keys set properties of the created revision: * `autoscaling.knative.dev/minScale` sets the minimum number of instances. * `autoscaling.knative.dev/maxScale` sets the maximum number of instances. * `run.googleapis.com/cloudsql-instances` sets Cloud SQL connections. Multiple values should be comma separated. * `run.googleapis.com/vpc-access-connector` sets a Serverless VPC Access connector. * `run.googleapis.com/vpc-access-egress` sets VPC egress. Supported values are `all-traffic`, `all` (deprecated), and `private-ranges-only`. `all-traffic` and `all` provide the same functionality. `all` is deprecated but will continue to be supported. Prefer `all-traffic`.",
        },
        spec = {
          ["$ref"] = "RevisionSpec",
          description = "RevisionSpec holds the desired state of the Revision (from the client).",
        },
      },
      type = "object",
    },
    Route = {
      description = "Route is responsible for configuring ingress over a collection of Revisions. Some of the Revisions a Route distributes traffic over may be specified by referencing the Configuration responsible for creating them; in these cases the Route is additionally responsible for monitoring the Configuration for \"latest ready\" revision changes, and smoothly rolling out latest revisions. See also: https://github.com/knative/specs/blob/main/specs/serving/overview.md#route Cloud Run currently supports referencing a single Configuration to automatically deploy the \"latest ready\" Revision from that Configuration.",
      id = "Route",
      properties = {
        apiVersion = {
          description = "The API version for this call such as \"serving.knative.dev/v1\".",
          type = "string",
        },
        kind = {
          description = "The kind of this resource, in this case always \"Route\".",
          type = "string",
        },
        metadata = {
          ["$ref"] = "ObjectMeta",
          description = "Metadata associated with this Route, including name, namespace, labels, and annotations.",
        },
        spec = {
          ["$ref"] = "RouteSpec",
          description = "Spec holds the desired state of the Route (from the client).",
        },
        status = {
          ["$ref"] = "RouteStatus",
          description = "Status communicates the observed state of the Route (from the controller).",
        },
      },
      type = "object",
    },
    RouteSpec = {
      description = "RouteSpec holds the desired state of the Route (from the client).",
      id = "RouteSpec",
      properties = {
        traffic = {
          description = "Traffic specifies how to distribute traffic over a collection of Knative Revisions and Configurations. Cloud Run currently supports a single configurationName.",
          items = {
            ["$ref"] = "TrafficTarget",
          },
          type = "array",
        },
      },
      type = "object",
    },
    RouteStatus = {
      description = "RouteStatus communicates the observed state of the Route (from the controller).",
      id = "RouteStatus",
      properties = {
        address = {
          ["$ref"] = "Addressable",
          description = "Similar to url, information on where the service is available on HTTP.",
        },
        conditions = {
          description = "Conditions communicates information about ongoing/complete reconciliation processes that bring the \"spec\" inline with the observed state of the world.",
          items = {
            ["$ref"] = "GoogleCloudRunV1Condition",
          },
          type = "array",
        },
        observedGeneration = {
          description = "ObservedGeneration is the 'Generation' of the Route that was last processed by the controller. Clients polling for completed reconciliation should poll until observedGeneration = metadata.generation and the Ready condition's status is True or False. Note that providing a TrafficTarget that has latest_revision=True will result in a Route that does not increment either its metadata.generation or its observedGeneration, as new \"latest ready\" revisions from the Configuration are processed without an update to the Route's spec.",
          format = "int32",
          type = "integer",
        },
        traffic = {
          description = "Traffic holds the configured traffic distribution. These entries will always contain RevisionName references. When ConfigurationName appears in the spec, this will hold the LatestReadyRevisionName that was last observed.",
          items = {
            ["$ref"] = "TrafficTarget",
          },
          type = "array",
        },
        url = {
          description = "URL holds the url that will distribute traffic over the provided traffic targets. It generally has the form: https://{route-hash}-{project-hash}-{cluster-level-suffix}.a.run.app",
          type = "string",
        },
      },
      type = "object",
    },
    RunJobRequest = {
      description = "Request message for creating a new execution of a job.",
      id = "RunJobRequest",
      properties = {},
      type = "object",
    },
    SecretEnvSource = {
      description = "Not supported by Cloud Run. SecretEnvSource selects a Secret to populate the environment variables with. The contents of the target Secret's Data field will represent the key-value pairs as environment variables.",
      id = "SecretEnvSource",
      properties = {
        localObjectReference = {
          ["$ref"] = "LocalObjectReference",
          description = "This field should not be used directly as it is meant to be inlined directly into the message. Use the \"name\" field instead.",
        },
        name = {
          description = "The Secret to select from.",
          type = "string",
        },
        optional = {
          description = "Specify whether the Secret must be defined",
          type = "boolean",
        },
      },
      type = "object",
    },
    SecretKeySelector = {
      description = "SecretKeySelector selects a key of a Secret.",
      id = "SecretKeySelector",
      properties = {
        key = {
          description = "Required. A Cloud Secret Manager secret version. Must be 'latest' for the latest version, an integer for a specific version, or a version alias. The key of the secret to select from. Must be a valid secret key.",
          type = "string",
        },
        localObjectReference = {
          ["$ref"] = "LocalObjectReference",
          description = "This field should not be used directly as it is meant to be inlined directly into the message. Use the \"name\" field instead.",
        },
        name = {
          description = "The name of the secret in Cloud Secret Manager. By default, the secret is assumed to be in the same project. If the secret is in another project, you must define an alias. An alias definition has the form: :projects//secrets/. If multiple alias definitions are needed, they must be separated by commas. The alias definitions must be set on the run.googleapis.com/secrets annotation. The name of the secret in the pod's namespace to select from.",
          type = "string",
        },
        optional = {
          description = "Specify whether the Secret or its key must be defined.",
          type = "boolean",
        },
      },
      type = "object",
    },
    SecretVolumeSource = {
      description = "A volume representing a secret stored in Google Secret Manager. The secret's value will be presented as the content of a file whose name is defined in the item path. If no items are defined, the name of the file is the secret_name. The contents of the target Secret's Data field will be presented in a volume as files using the keys in the Data field as the file names.",
      id = "SecretVolumeSource",
      properties = {
        defaultMode = {
          description = "Integer representation of mode bits to use on created files by default. Must be a value between 01 and 0777 (octal). If 0 or not set, it will default to 0444. Directories within the path are not affected by this setting. Notes * Internally, a umask of 0222 will be applied to any non-zero value. * This is an integer representation of the mode bits. So, the octal integer value should look exactly as the chmod numeric notation with a leading zero. Some examples: for chmod 777 (a=rwx), set to 0777 (octal) or 511 (base-10). For chmod 640 (u=rw,g=r), set to 0640 (octal) or 416 (base-10). For chmod 755 (u=rwx,g=rx,o=rx), set to 0755 (octal) or 493 (base-10). * This might be in conflict with other options that affect the file mode, like fsGroup, and the result can be other mode bits set.",
          format = "int32",
          type = "integer",
        },
        items = {
          description = "A list of secret versions to mount in the volume. If no items are specified, the volume will expose a file with the same name as the secret name. The contents of the file will be the data in the latest version of the secret. If items are specified, the key will be used as the version to fetch from Cloud Secret Manager and the path will be the name of the file exposed in the volume. When items are defined, they must specify both a key and a path.",
          items = {
            ["$ref"] = "KeyToPath",
          },
          type = "array",
        },
        optional = {
          description = "Not supported by Cloud Run.",
          type = "boolean",
        },
        secretName = {
          description = "The name of the secret in Cloud Secret Manager. By default, the secret is assumed to be in the same project. If the secret is in another project, you must define an alias. An alias definition has the form: :projects//secrets/. If multiple alias definitions are needed, they must be separated by commas. The alias definitions must be set on the run.googleapis.com/secrets annotation. Name of the secret in the container's namespace to use.",
          type = "string",
        },
      },
      type = "object",
    },
    SecurityContext = {
      description = "Not supported by Cloud Run. SecurityContext holds security configuration that will be applied to a container. Some fields are present in both SecurityContext and PodSecurityContext. When both are set, the values in SecurityContext take precedence.",
      id = "SecurityContext",
      properties = {
        runAsUser = {
          description = "The UID to run the entrypoint of the container process. Defaults to user specified in image metadata if unspecified. May also be set in PodSecurityContext. If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    Service = {
      description = "Service acts as a top-level container that manages a set of Routes and Configurations which implement a network service. Service exists to provide a singular abstraction which can be access controlled, reasoned about, and which encapsulates software lifecycle decisions such as rollout policy and team resource ownership. Service acts only as an orchestrator of the underlying Routes and Configurations (much as a kubernetes Deployment orchestrates ReplicaSets). The Service's controller will track the statuses of its owned Configuration and Route, reflecting their statuses and conditions as its own. See also: https://github.com/knative/serving/blob/main/docs/spec/overview.md#service",
      id = "Service",
      properties = {
        apiVersion = {
          description = "The API version for this call. It must be \"serving.knative.dev/v1\".",
          type = "string",
        },
        kind = {
          description = "The kind of resource. It must be \"Service\".",
          type = "string",
        },
        metadata = {
          ["$ref"] = "ObjectMeta",
          description = "Metadata associated with this Service, including name, namespace, labels, and annotations. In Cloud Run, annotations with 'run.googleapis.com/' and 'autoscaling.knative.dev' are restricted, and the accepted annotations will be different depending on the resource type. The following Cloud Run-specific annotations are accepted in Service.metadata.annotations. * `run.googleapis.com/binary-authorization-breakglass` * `run.googleapis.com/binary-authorization` * `run.googleapis.com/client-name` * `run.googleapis.com/custom-audiences` * `run.googleapis.com/description` * `run.googleapis.com/gc-traffic-tags` * `run.googleapis.com/ingress` * `run.googleapis.com/ingress` sets the ingress settings for the Service. See [the ingress settings documentation](/run/docs/securing/ingress) for details on configuring ingress settings. * `run.googleapis.com/ingress-status` is output-only and contains the currently active ingress settings for the Service. `run.googleapis.com/ingress-status` may differ from `run.googleapis.com/ingress` while the system is processing a change to `run.googleapis.com/ingress` or if the system failed to process a change to `run.googleapis.com/ingress`. When the system has processed all changes successfully `run.googleapis.com/ingress-status` and `run.googleapis.com/ingress` are equal.",
        },
        spec = {
          ["$ref"] = "ServiceSpec",
          description = "Holds the desired state of the Service (from the client).",
        },
        status = {
          ["$ref"] = "ServiceStatus",
          description = "Communicates the system-controlled state of the Service.",
        },
      },
      type = "object",
    },
    ServiceSpec = {
      description = "ServiceSpec holds the desired state of the Route (from the client), which is used to manipulate the underlying Route and Configuration(s).",
      id = "ServiceSpec",
      properties = {
        template = {
          ["$ref"] = "RevisionTemplate",
          description = "Holds the latest specification for the Revision to be stamped out.",
        },
        traffic = {
          description = "Specifies how to distribute traffic over a collection of Knative Revisions and Configurations to the Service's main URL.",
          items = {
            ["$ref"] = "TrafficTarget",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ServiceStatus = {
      description = "The current state of the Service. Output only.",
      id = "ServiceStatus",
      properties = {
        address = {
          ["$ref"] = "Addressable",
          description = "Similar to url, information on where the service is available on HTTP.",
        },
        conditions = {
          description = "Conditions communicate information about ongoing/complete reconciliation processes that bring the `spec` inline with the observed state of the world. Service-specific conditions include: * `ConfigurationsReady`: `True` when the underlying Configuration is ready. * `RoutesReady`: `True` when the underlying Route is ready. * `Ready`: `True` when all underlying resources are ready.",
          items = {
            ["$ref"] = "GoogleCloudRunV1Condition",
          },
          type = "array",
        },
        latestCreatedRevisionName = {
          description = "Name of the last revision that was created from this Service's Configuration. It might not be ready yet, for that use LatestReadyRevisionName.",
          type = "string",
        },
        latestReadyRevisionName = {
          description = "Name of the latest Revision from this Service's Configuration that has had its `Ready` condition become `True`.",
          type = "string",
        },
        observedGeneration = {
          description = "Returns the generation last fully processed by the system. This will only match metadata.generation when reconciliation is complete. Clients polling for completed reconciliation should poll until observedGeneration = metadata.generation and the Ready condition's status is True or False.",
          format = "int32",
          type = "integer",
        },
        traffic = {
          description = "Holds the configured traffic distribution. These entries will always contain RevisionName references. When ConfigurationName appears in the spec, this will hold the LatestReadyRevisionName that we last observed.",
          items = {
            ["$ref"] = "TrafficTarget",
          },
          type = "array",
        },
        url = {
          description = "URL that will distribute traffic over the provided traffic targets. It generally has the form https://{route-hash}-{project-hash}-{cluster-level-suffix}.a.run.app",
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
      description = "Status is a return value for calls that don't return other objects.",
      id = "Status",
      properties = {
        code = {
          description = "Suggested HTTP return code for this status, 0 if not set.",
          format = "int32",
          type = "integer",
        },
        details = {
          ["$ref"] = "StatusDetails",
          description = "Extended data associated with the reason. Each reason may define its own extended details. This field is optional and the data returned is not guaranteed to conform to any schema except that defined by the reason type.",
        },
        message = {
          description = "A human-readable description of the status of this operation.",
          type = "string",
        },
        metadata = {
          ["$ref"] = "ListMeta",
          description = "Standard list metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds",
        },
        reason = {
          description = "A machine-readable description of why this operation is in the \"Failure\" status. If this value is empty there is no information available. A Reason clarifies an HTTP status code but does not override it.",
          type = "string",
        },
        status = {
          description = "Status of the operation. One of: \"Success\" or \"Failure\". More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status",
          type = "string",
        },
      },
      type = "object",
    },
    StatusCause = {
      description = "StatusCause provides more information about an api.Status failure, including cases when multiple errors are encountered.",
      id = "StatusCause",
      properties = {
        field = {
          description = "The field of the resource that has caused this error, as named by its JSON serialization. May include dot and postfix notation for nested attributes. Arrays are zero-indexed. Fields may appear more than once in an array of causes due to fields having multiple errors. Examples: \"name\" - the field \"name\" on the current resource \"items[0].name\" - the field \"name\" on the first array entry in \"items\"",
          type = "string",
        },
        message = {
          description = "A human-readable description of the cause of the error. This field may be presented as-is to a reader.",
          type = "string",
        },
        reason = {
          description = "A machine-readable description of the cause of the error. If this value is empty there is no information available.",
          type = "string",
        },
      },
      type = "object",
    },
    StatusDetails = {
      description = "StatusDetails is a set of additional properties that MAY be set by the server to provide additional information about a response. The Reason field of a Status object defines what attributes will be set. Clients must ignore fields that do not match the defined type of each attribute, and should assume that any attribute may be empty, invalid, or under defined.",
      id = "StatusDetails",
      properties = {
        causes = {
          description = "The Causes array includes more details associated with the StatusReason failure. Not all StatusReasons may provide detailed causes.",
          items = {
            ["$ref"] = "StatusCause",
          },
          type = "array",
        },
        group = {
          description = "The group attribute of the resource associated with the status StatusReason.",
          type = "string",
        },
        kind = {
          description = "The kind attribute of the resource associated with the status StatusReason. On some operations may differ from the requested resource Kind. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds",
          type = "string",
        },
        name = {
          description = "The name attribute of the resource associated with the status StatusReason (when there is a single name which can be described).",
          type = "string",
        },
        retryAfterSeconds = {
          description = "If specified, the time in seconds before the operation should be retried. Some errors may indicate the client must take an alternate action - for those errors this field may indicate how long to wait before taking the alternate action.",
          format = "int32",
          type = "integer",
        },
        uid = {
          description = "UID of the resource. (when there is a single resource which can be described). More info: https://kubernetes.io/docs/user-guide/identifiers#uids",
          type = "string",
        },
      },
      type = "object",
    },
    TCPSocketAction = {
      description = "TCPSocketAction describes an action based on opening a socket",
      id = "TCPSocketAction",
      properties = {
        host = {
          description = "Not supported by Cloud Run.",
          type = "string",
        },
        port = {
          description = "Port number to access on the container. Number must be in the range 1 to 65535.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    Task = {
      description = "Task represents a single run of a container to completion.",
      id = "Task",
      properties = {
        apiVersion = {
          description = "Optional. APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources",
          type = "string",
        },
        kind = {
          description = "Optional. Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds",
          type = "string",
        },
        metadata = {
          ["$ref"] = "ObjectMeta",
          description = "Optional. Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata",
        },
        spec = {
          ["$ref"] = "TaskSpec",
          description = "Optional. Specification of the desired behavior of a task. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status",
        },
        status = {
          ["$ref"] = "TaskStatus",
          description = "Output only. Current status of a task. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status",
          readOnly = true,
        },
      },
      type = "object",
    },
    TaskAttemptResult = {
      description = "Result of a task attempt.",
      id = "TaskAttemptResult",
      properties = {
        exitCode = {
          description = "Optional. The exit code of this attempt. This may be unset if the container was unable to exit cleanly with a code due to some other failure. See status field for possible failure details.",
          format = "int32",
          type = "integer",
        },
        status = {
          ["$ref"] = "GoogleRpcStatus",
          description = "Optional. The status of this attempt. If the status code is OK, then the attempt succeeded.",
        },
      },
      type = "object",
    },
    TaskSpec = {
      description = "TaskSpec is a description of a task.",
      id = "TaskSpec",
      properties = {
        containers = {
          description = "Optional. List of containers belonging to the task. We disallow a number of fields on this Container. Only a single container may be provided.",
          items = {
            ["$ref"] = "Container",
          },
          type = "array",
        },
        maxRetries = {
          description = "Optional. Number of retries allowed per task, before marking this job failed.",
          format = "int32",
          type = "integer",
        },
        serviceAccountName = {
          description = "Optional. Email address of the IAM service account associated with the task of a job execution. The service account represents the identity of the running task, and determines what permissions the task has. If not provided, the task will use the project's default service account.",
          type = "string",
        },
        timeoutSeconds = {
          description = "Optional. Duration in seconds the task may be active before the system will actively try to mark it failed and kill associated containers. This applies per attempt of a task, meaning each retry can run for the full timeout.",
          format = "int64",
          type = "string",
        },
        volumes = {
          description = "Optional. List of volumes that can be mounted by containers belonging to the task. More info: https://kubernetes.io/docs/concepts/storage/volumes",
          items = {
            ["$ref"] = "Volume",
          },
          type = "array",
        },
      },
      type = "object",
    },
    TaskStatus = {
      description = "TaskStatus represents the status of a task.",
      id = "TaskStatus",
      properties = {
        completionTime = {
          description = "Optional. Represents time when the task was completed. It is not guaranteed to be set in happens-before order across separate operations. It is represented in RFC3339 form and is in UTC.",
          format = "google-datetime",
          type = "string",
        },
        conditions = {
          description = "Optional. Conditions communicate information about ongoing/complete reconciliation processes that bring the \"spec\" inline with the observed state of the world. Task-specific conditions include: * `Started`: `True` when the task has started to execute. * `Completed`: `True` when the task has succeeded. `False` when the task has failed.",
          items = {
            ["$ref"] = "GoogleCloudRunV1Condition",
          },
          type = "array",
        },
        index = {
          description = "Required. Index of the task, unique per execution, and beginning at 0.",
          format = "int32",
          type = "integer",
        },
        lastAttemptResult = {
          ["$ref"] = "TaskAttemptResult",
          description = "Optional. Result of the last attempt of this task.",
        },
        logUri = {
          description = "Optional. URI where logs for this task can be found in Cloud Console.",
          type = "string",
        },
        observedGeneration = {
          description = "Optional. The 'generation' of the task that was last processed by the controller.",
          format = "int32",
          type = "integer",
        },
        retried = {
          description = "Optional. The number of times this task was retried. Instances are retried when they fail up to the maxRetries limit.",
          format = "int32",
          type = "integer",
        },
        startTime = {
          description = "Optional. Represents time when the task started to run. It is not guaranteed to be set in happens-before order across separate operations. It is represented in RFC3339 form and is in UTC.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    TaskTemplateSpec = {
      description = "TaskTemplateSpec describes the data a task should have when created from a template.",
      id = "TaskTemplateSpec",
      properties = {
        spec = {
          ["$ref"] = "TaskSpec",
          description = "Optional. Specification of the desired behavior of the task. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status",
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
    TrafficTarget = {
      description = "TrafficTarget holds a single entry of the routing table for a Route.",
      id = "TrafficTarget",
      properties = {
        configurationName = {
          description = "[Deprecated] Not supported in Cloud Run. It must be empty.",
          type = "string",
        },
        latestRevision = {
          description = "Uses the \"status.latestReadyRevisionName\" of the Service to determine the traffic target. When it changes, traffic will automatically migrate from the prior \"latest ready\" revision to the new one. This field must be false if RevisionName is set. This field defaults to true otherwise. If the field is set to true on Status, this means that the Revision was resolved from the Service's latest ready revision.",
          type = "boolean",
        },
        percent = {
          description = "Percent specifies percent of the traffic to this Revision or Configuration. This defaults to zero if unspecified.",
          format = "int32",
          type = "integer",
        },
        revisionName = {
          description = "Points this traffic target to a specific Revision. This field is mutually exclusive with latest_revision.",
          type = "string",
        },
        tag = {
          description = "Tag is used to expose a dedicated url for referencing this target exclusively.",
          type = "string",
        },
        url = {
          description = "Output only. URL displays the URL for accessing tagged traffic targets. URL is displayed in status, and is disallowed on spec. URL must contain a scheme (e.g. https://) and a hostname, but may not contain anything else (e.g. basic auth, url path, etc.)",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    Volume = {
      description = "Volume represents a named volume in a container.",
      id = "Volume",
      properties = {
        configMap = {
          ["$ref"] = "ConfigMapVolumeSource",
          description = "Not supported in Cloud Run.",
        },
        name = {
          description = "Volume's name. In Cloud Run Fully Managed, the name 'cloudsql' is reserved.",
          type = "string",
        },
        secret = {
          ["$ref"] = "SecretVolumeSource",
          description = "The secret's value will be presented as the content of a file whose name is defined in the item path. If no items are defined, the name of the file is the secretName.",
        },
      },
      type = "object",
    },
    VolumeMount = {
      description = "VolumeMount describes a mounting of a Volume within a container.",
      id = "VolumeMount",
      properties = {
        mountPath = {
          description = "Required. Path within the container at which the volume should be mounted. Must not contain ':'.",
          type = "string",
        },
        name = {
          description = "Required. The name of the volume. There must be a corresponding Volume with the same name.",
          type = "string",
        },
        readOnly = {
          description = "Only true is accepted for Secret Volumes. Defaults to true for Secrets Volumes.",
          type = "boolean",
        },
        subPath = {
          description = "Path within the volume from which the container's volume should be mounted. Defaults to \"\" (volume's root).",
          type = "string",
        },
      },
      type = "object",
    },
  },
  servicePath = "",
  title = "Cloud Run Admin API",
  version = "v1",
  version_module = true,
}
