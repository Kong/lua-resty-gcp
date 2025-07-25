return {
  auth = {
    oauth2 = {
      scopes = {
        ["https://www.googleapis.com/auth/cloud-platform"] = {
          description = "See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account.",
        },
        ["https://www.googleapis.com/auth/jobs"] = {
          description = "Manage job postings",
        },
      },
    },
  },
  basePath = "",
  baseUrl = "https://jobs.googleapis.com/",
  batchPath = "batch",
  canonicalName = "Cloud Talent Solution",
  description = "Cloud Talent Solution provides the capability to create, read, update, and delete job postings, as well as search jobs based on keywords and filters. ",
  discoveryVersion = "v1",
  documentationLink = "https://cloud.google.com/talent-solution/job-search/docs/",
  fullyEncodeReservedExpansion = true,
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "jobs:v3",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://jobs.mtls.googleapis.com/",
  name = "jobs",
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
        complete = {
          description = "Completes the specified prefix with keyword suggestions. Intended for use by a job search auto-complete search box.",
          flatPath = "v3/projects/{projectsId}:complete",
          httpMethod = "GET",
          id = "jobs.projects.complete",
          parameterOrder = {
            "name",
          },
          parameters = {
            companyName = {
              description = "Optional. If provided, restricts completion to specified company. The format is \"projects/{project_id}/companies/{company_id}\", for example, \"projects/api-test-project/companies/foo\".",
              location = "query",
              type = "string",
            },
            languageCode = {
              description = "Deprecated. Use language_codes instead. Optional. The language of the query. This is the BCP-47 language code, such as \"en-US\" or \"sr-Latn\". For more information, see [Tags for Identifying Languages](https://tools.ietf.org/html/bcp47). For CompletionType.JOB_TITLE type, only open jobs with the same language_code are returned. For CompletionType.COMPANY_NAME type, only companies having open jobs with the same language_code are returned. For CompletionType.COMBINED type, only open jobs with the same language_code or companies having open jobs with the same language_code are returned. The maximum number of allowed characters is 255.",
              location = "query",
              type = "string",
            },
            languageCodes = {
              description = "Optional. The list of languages of the query. This is the BCP-47 language code, such as \"en-US\" or \"sr-Latn\". For more information, see [Tags for Identifying Languages](https://tools.ietf.org/html/bcp47). For CompletionType.JOB_TITLE type, only open jobs with the same language_codes are returned. For CompletionType.COMPANY_NAME type, only companies having open jobs with the same language_codes are returned. For CompletionType.COMBINED type, only open jobs with the same language_codes or companies having open jobs with the same language_codes are returned. The maximum number of allowed characters is 255.",
              location = "query",
              repeated = true,
              type = "string",
            },
            name = {
              description = "Required. Resource name of project the completion is performed within. The format is \"projects/{project_id}\", for example, \"projects/api-test-project\".",
              location = "path",
              pattern = "^projects/[^/]+$",
              required = true,
              type = "string",
            },
            pageSize = {
              description = "Required. Completion result count. The maximum allowed page size is 10.",
              format = "int32",
              location = "query",
              type = "integer",
            },
            query = {
              description = "Required. The query used to generate suggestions. The maximum number of allowed characters is 255.",
              location = "query",
              type = "string",
            },
            scope = {
              description = "Optional. The scope of the completion. The defaults is CompletionScope.PUBLIC.",
              enum = {
                "COMPLETION_SCOPE_UNSPECIFIED",
                "TENANT",
                "PUBLIC",
              },
              enumDescriptions = {
                "Default value.",
                "Suggestions are based only on the data provided by the client.",
                "Suggestions are based on all jobs data in the system that's visible to the client",
              },
              location = "query",
              type = "string",
            },
            type = {
              description = "Optional. The completion topic. The default is CompletionType.COMBINED.",
              enum = {
                "COMPLETION_TYPE_UNSPECIFIED",
                "JOB_TITLE",
                "COMPANY_NAME",
                "COMBINED",
              },
              enumDescriptions = {
                "Default value.",
                "Only suggest job titles.",
                "Only suggest company names.",
                "Suggest both job titles and company names.",
              },
              location = "query",
              type = "string",
            },
          },
          path = "v3/{+name}:complete",
          response = {
            ["$ref"] = "CompleteQueryResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/jobs",
          },
        },
      },
      resources = {
        clientEvents = {
          methods = {
            create = {
              description = "Report events issued when end user interacts with customer's application that uses Cloud Talent Solution. You may inspect the created events in [self service tools](https://console.cloud.google.com/talent-solution/overview). [Learn more](https://cloud.google.com/talent-solution/docs/management-tools) about self service tools.",
              flatPath = "v3/projects/{projectsId}/clientEvents",
              httpMethod = "POST",
              id = "jobs.projects.clientEvents.create",
              parameterOrder = {
                "parent",
              },
              parameters = {
                parent = {
                  description = "Parent project name.",
                  location = "path",
                  pattern = "^projects/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v3/{+parent}/clientEvents",
              request = {
                ["$ref"] = "CreateClientEventRequest",
              },
              response = {
                ["$ref"] = "ClientEvent",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/jobs",
              },
            },
          },
        },
        companies = {
          methods = {
            create = {
              description = "Creates a new company entity.",
              flatPath = "v3/projects/{projectsId}/companies",
              httpMethod = "POST",
              id = "jobs.projects.companies.create",
              parameterOrder = {
                "parent",
              },
              parameters = {
                parent = {
                  description = "Required. Resource name of the project under which the company is created. The format is \"projects/{project_id}\", for example, \"projects/api-test-project\".",
                  location = "path",
                  pattern = "^projects/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v3/{+parent}/companies",
              request = {
                ["$ref"] = "CreateCompanyRequest",
              },
              response = {
                ["$ref"] = "Company",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/jobs",
              },
            },
            delete = {
              description = "Deletes specified company. Prerequisite: The company has no jobs associated with it.",
              flatPath = "v3/projects/{projectsId}/companies/{companiesId}",
              httpMethod = "DELETE",
              id = "jobs.projects.companies.delete",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. The resource name of the company to be deleted. The format is \"projects/{project_id}/companies/{company_id}\", for example, \"projects/api-test-project/companies/foo\".",
                  location = "path",
                  pattern = "^projects/[^/]+/companies/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v3/{+name}",
              response = {
                ["$ref"] = "Empty",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/jobs",
              },
            },
            get = {
              description = "Retrieves specified company.",
              flatPath = "v3/projects/{projectsId}/companies/{companiesId}",
              httpMethod = "GET",
              id = "jobs.projects.companies.get",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. The resource name of the company to be retrieved. The format is \"projects/{project_id}/companies/{company_id}\", for example, \"projects/api-test-project/companies/foo\".",
                  location = "path",
                  pattern = "^projects/[^/]+/companies/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v3/{+name}",
              response = {
                ["$ref"] = "Company",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/jobs",
              },
            },
            list = {
              description = "Lists all companies associated with the service account.",
              flatPath = "v3/projects/{projectsId}/companies",
              httpMethod = "GET",
              id = "jobs.projects.companies.list",
              parameterOrder = {
                "parent",
              },
              parameters = {
                pageSize = {
                  description = "Optional. The maximum number of companies to be returned, at most 100. Default is 100 if a non-positive number is provided.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "Optional. The starting indicator from which to return results.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "Required. Resource name of the project under which the company is created. The format is \"projects/{project_id}\", for example, \"projects/api-test-project\".",
                  location = "path",
                  pattern = "^projects/[^/]+$",
                  required = true,
                  type = "string",
                },
                requireOpenJobs = {
                  description = "Optional. Set to true if the companies requested must have open jobs. Defaults to false. If true, at most page_size of companies are fetched, among which only those with open jobs are returned.",
                  location = "query",
                  type = "boolean",
                },
              },
              path = "v3/{+parent}/companies",
              response = {
                ["$ref"] = "ListCompaniesResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/jobs",
              },
            },
            patch = {
              description = "Updates specified company. Company names can't be updated. To update a company name, delete the company and all jobs associated with it, and only then re-create them.",
              flatPath = "v3/projects/{projectsId}/companies/{companiesId}",
              httpMethod = "PATCH",
              id = "jobs.projects.companies.patch",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required during company update. The resource name for a company. This is generated by the service when a company is created. The format is \"projects/{project_id}/companies/{company_id}\", for example, \"projects/api-test-project/companies/foo\".",
                  location = "path",
                  pattern = "^projects/[^/]+/companies/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v3/{+name}",
              request = {
                ["$ref"] = "UpdateCompanyRequest",
              },
              response = {
                ["$ref"] = "Company",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/jobs",
              },
            },
          },
        },
        jobs = {
          methods = {
            batchDelete = {
              description = "Deletes a list of Jobs by filter.",
              flatPath = "v3/projects/{projectsId}/jobs:batchDelete",
              httpMethod = "POST",
              id = "jobs.projects.jobs.batchDelete",
              parameterOrder = {
                "parent",
              },
              parameters = {
                parent = {
                  description = "Required. The resource name of the project under which the job is created. The format is \"projects/{project_id}\", for example, \"projects/api-test-project\".",
                  location = "path",
                  pattern = "^projects/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v3/{+parent}/jobs:batchDelete",
              request = {
                ["$ref"] = "BatchDeleteJobsRequest",
              },
              response = {
                ["$ref"] = "Empty",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/jobs",
              },
            },
            create = {
              description = "Creates a new job. Typically, the job becomes searchable within 10 seconds, but it may take up to 5 minutes.",
              flatPath = "v3/projects/{projectsId}/jobs",
              httpMethod = "POST",
              id = "jobs.projects.jobs.create",
              parameterOrder = {
                "parent",
              },
              parameters = {
                parent = {
                  description = "Required. The resource name of the project under which the job is created. The format is \"projects/{project_id}\", for example, \"projects/api-test-project\".",
                  location = "path",
                  pattern = "^projects/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v3/{+parent}/jobs",
              request = {
                ["$ref"] = "CreateJobRequest",
              },
              response = {
                ["$ref"] = "Job",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/jobs",
              },
            },
            delete = {
              description = "Deletes the specified job. Typically, the job becomes unsearchable within 10 seconds, but it may take up to 5 minutes.",
              flatPath = "v3/projects/{projectsId}/jobs/{jobsId}",
              httpMethod = "DELETE",
              id = "jobs.projects.jobs.delete",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. The resource name of the job to be deleted. The format is \"projects/{project_id}/jobs/{job_id}\", for example, \"projects/api-test-project/jobs/1234\".",
                  location = "path",
                  pattern = "^projects/[^/]+/jobs/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v3/{+name}",
              response = {
                ["$ref"] = "Empty",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/jobs",
              },
            },
            get = {
              description = "Retrieves the specified job, whose status is OPEN or recently EXPIRED within the last 90 days.",
              flatPath = "v3/projects/{projectsId}/jobs/{jobsId}",
              httpMethod = "GET",
              id = "jobs.projects.jobs.get",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. The resource name of the job to retrieve. The format is \"projects/{project_id}/jobs/{job_id}\", for example, \"projects/api-test-project/jobs/1234\".",
                  location = "path",
                  pattern = "^projects/[^/]+/jobs/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v3/{+name}",
              response = {
                ["$ref"] = "Job",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/jobs",
              },
            },
            list = {
              description = "Lists jobs by filter.",
              flatPath = "v3/projects/{projectsId}/jobs",
              httpMethod = "GET",
              id = "jobs.projects.jobs.list",
              parameterOrder = {
                "parent",
              },
              parameters = {
                filter = {
                  description = "Required. The filter string specifies the jobs to be enumerated. Supported operator: =, AND The fields eligible for filtering are: * `companyName` * `requisitionId` * `status` Available values: OPEN, EXPIRED, ALL. Defaults to OPEN if no value is specified. At least one of `companyName` and `requisitionId` must present or an INVALID_ARGUMENT error is thrown. Sample Query: * companyName = \"projects/api-test-project/companies/123\" * companyName = \"projects/api-test-project/companies/123\" AND requisitionId = \"req-1\" * companyName = \"projects/api-test-project/companies/123\" AND status = \"EXPIRED\" * requisitionId = \"req-1\" * requisitionId = \"req-1\" AND status = \"EXPIRED\"",
                  location = "query",
                  type = "string",
                },
                jobView = {
                  description = "Optional. The desired job attributes returned for jobs in the search response. Defaults to JobView.JOB_VIEW_FULL if no value is specified.",
                  enum = {
                    "JOB_VIEW_UNSPECIFIED",
                    "JOB_VIEW_ID_ONLY",
                    "JOB_VIEW_MINIMAL",
                    "JOB_VIEW_SMALL",
                    "JOB_VIEW_FULL",
                  },
                  enumDescriptions = {
                    "Default value.",
                    "A ID only view of job, with following attributes: Job.name, Job.requisition_id, Job.language_code.",
                    "A minimal view of the job, with the following attributes: Job.name, Job.requisition_id, Job.title, Job.company_name, Job.DerivedInfo.locations, Job.language_code.",
                    "A small view of the job, with the following attributes in the search results: Job.name, Job.requisition_id, Job.title, Job.company_name, Job.DerivedInfo.locations, Job.visibility, Job.language_code, Job.description.",
                    "All available attributes are included in the search results.",
                  },
                  location = "query",
                  type = "string",
                },
                pageSize = {
                  description = "Optional. The maximum number of jobs to be returned per page of results. If job_view is set to JobView.JOB_VIEW_ID_ONLY, the maximum allowed page size is 1000. Otherwise, the maximum allowed page size is 100. Default is 100 if empty or a number < 1 is specified.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "Optional. The starting point of a query result.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "Required. The resource name of the project under which the job is created. The format is \"projects/{project_id}\", for example, \"projects/api-test-project\".",
                  location = "path",
                  pattern = "^projects/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v3/{+parent}/jobs",
              response = {
                ["$ref"] = "ListJobsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/jobs",
              },
            },
            patch = {
              description = "Updates specified job. Typically, updated contents become visible in search results within 10 seconds, but it may take up to 5 minutes.",
              flatPath = "v3/projects/{projectsId}/jobs/{jobsId}",
              httpMethod = "PATCH",
              id = "jobs.projects.jobs.patch",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required during job update. The resource name for the job. This is generated by the service when a job is created. The format is \"projects/{project_id}/jobs/{job_id}\", for example, \"projects/api-test-project/jobs/1234\". Use of this field in job queries and API calls is preferred over the use of requisition_id since this value is unique.",
                  location = "path",
                  pattern = "^projects/[^/]+/jobs/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v3/{+name}",
              request = {
                ["$ref"] = "UpdateJobRequest",
              },
              response = {
                ["$ref"] = "Job",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/jobs",
              },
            },
            search = {
              description = "Searches for jobs using the provided SearchJobsRequest. This call constrains the visibility of jobs present in the database, and only returns jobs that the caller has permission to search against.",
              flatPath = "v3/projects/{projectsId}/jobs:search",
              httpMethod = "POST",
              id = "jobs.projects.jobs.search",
              parameterOrder = {
                "parent",
              },
              parameters = {
                parent = {
                  description = "Required. The resource name of the project to search within. The format is \"projects/{project_id}\", for example, \"projects/api-test-project\".",
                  location = "path",
                  pattern = "^projects/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v3/{+parent}/jobs:search",
              request = {
                ["$ref"] = "SearchJobsRequest",
              },
              response = {
                ["$ref"] = "SearchJobsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/jobs",
              },
            },
            searchForAlert = {
              description = "Searches for jobs using the provided SearchJobsRequest. This API call is intended for the use case of targeting passive job seekers (for example, job seekers who have signed up to receive email alerts about potential job opportunities), and has different algorithmic adjustments that are targeted to passive job seekers. This call constrains the visibility of jobs present in the database, and only returns jobs the caller has permission to search against.",
              flatPath = "v3/projects/{projectsId}/jobs:searchForAlert",
              httpMethod = "POST",
              id = "jobs.projects.jobs.searchForAlert",
              parameterOrder = {
                "parent",
              },
              parameters = {
                parent = {
                  description = "Required. The resource name of the project to search within. The format is \"projects/{project_id}\", for example, \"projects/api-test-project\".",
                  location = "path",
                  pattern = "^projects/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v3/{+parent}/jobs:searchForAlert",
              request = {
                ["$ref"] = "SearchJobsRequest",
              },
              response = {
                ["$ref"] = "SearchJobsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/jobs",
              },
            },
          },
        },
      },
    },
  },
  revision = "20230114",
  rootUrl = "https://jobs.googleapis.com/",
  schemas = {
    ApplicationInfo = {
      description = "Application related details of a job posting.",
      id = "ApplicationInfo",
      properties = {
        emails = {
          description = "Optional but at least one of uris, emails or instruction must be specified. Use this field to specify email address(es) to which resumes or applications can be sent. The maximum number of allowed characters for each entry is 255.",
          items = {
            type = "string",
          },
          type = "array",
        },
        instruction = {
          description = "Optional but at least one of uris, emails or instruction must be specified. Use this field to provide instructions, such as \"Mail your application to ...\", that a candidate can follow to apply for the job. This field accepts and sanitizes HTML input, and also accepts bold, italic, ordered list, and unordered list markup tags. The maximum number of allowed characters is 3,000.",
          type = "string",
        },
        uris = {
          description = "Optional but at least one of uris, emails or instruction must be specified. Use this URI field to direct an applicant to a website, for example to link to an online application form. The maximum number of allowed characters for each entry is 2,000.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    BatchDeleteJobsRequest = {
      description = "Input only. Batch delete jobs request.",
      id = "BatchDeleteJobsRequest",
      properties = {
        filter = {
          description = "Required. The filter string specifies the jobs to be deleted. Supported operator: =, AND The fields eligible for filtering are: * `companyName` (Required) * `requisitionId` (Required) Sample Query: companyName = \"projects/api-test-project/companies/123\" AND requisitionId = \"req-1\"",
          type = "string",
        },
      },
      type = "object",
    },
    BucketRange = {
      description = "Represents starting and ending value of a range in double.",
      id = "BucketRange",
      properties = {
        from = {
          description = "Starting value of the bucket range.",
          format = "double",
          type = "number",
        },
        to = {
          description = "Ending value of the bucket range.",
          format = "double",
          type = "number",
        },
      },
      type = "object",
    },
    BucketizedCount = {
      description = "Represents count of jobs within one bucket.",
      id = "BucketizedCount",
      properties = {
        count = {
          description = "Number of jobs whose numeric field value fall into `range`.",
          format = "int32",
          type = "integer",
        },
        range = {
          ["$ref"] = "BucketRange",
          description = "Bucket range on which histogram was performed for the numeric field, that is, the count represents number of jobs in this range.",
        },
      },
      type = "object",
    },
    ClientEvent = {
      description = "An event issued when an end user interacts with the application that implements Cloud Talent Solution. Providing this information improves the quality of search and recommendation for the API clients, enabling the service to perform optimally. The number of events sent must be consistent with other calls, such as job searches, issued to the service by the client.",
      id = "ClientEvent",
      properties = {
        createTime = {
          description = "Required. The timestamp of the event.",
          format = "google-datetime",
          type = "string",
        },
        eventId = {
          description = "Required. A unique identifier, generated by the client application. This `event_id` is used to establish the relationship between different events (see parent_event_id).",
          type = "string",
        },
        extraInfo = {
          additionalProperties = {
            type = "string",
          },
          description = "Optional. Extra information about this event. Used for storing information with no matching field in event payload, for example, user application specific context or details. At most 20 keys are supported. The maximum total size of all keys and values is 2 KB.",
          type = "object",
        },
        jobEvent = {
          ["$ref"] = "JobEvent",
          description = "A event issued when a job seeker interacts with the application that implements Cloud Talent Solution.",
        },
        parentEventId = {
          description = "Optional. The event_id of an event that resulted in the current event. For example, a Job view event usually follows a parent impression event: A job seeker first does a search where a list of jobs appears (impression). The job seeker then selects a result and views the description of a particular job (Job view).",
          type = "string",
        },
        requestId = {
          description = "Required. A unique ID generated in the API responses. It can be found in ResponseMetadata.request_id.",
          type = "string",
        },
      },
      type = "object",
    },
    CommuteFilter = {
      description = "Input only. Parameters needed for commute search.",
      id = "CommuteFilter",
      properties = {
        allowImpreciseAddresses = {
          description = "Optional. If true, jobs without \"precise\" addresses (street level addresses or GPS coordinates) might also be returned. For city and coarser level addresses, text matching is used. If this field is set to false or is not specified, only jobs that include precise addresses are returned by Commute Search. Note: If `allow_imprecise_addresses` is set to true, Commute Search is not able to calculate accurate commute times to jobs with city level and coarser address information. Jobs with imprecise addresses will return a `travel_duration` time of 0 regardless of distance from the job seeker.",
          type = "boolean",
        },
        commuteMethod = {
          description = "Required. The method of transportation for which to calculate the commute time.",
          enum = {
            "COMMUTE_METHOD_UNSPECIFIED",
            "DRIVING",
            "TRANSIT",
          },
          enumDescriptions = {
            "Commute method is not specified.",
            "Commute time is calculated based on driving time.",
            "Commute time is calculated based on public transit including bus, metro, subway, etc.",
          },
          type = "string",
        },
        departureTime = {
          ["$ref"] = "TimeOfDay",
          description = "Optional. The departure time used to calculate traffic impact, represented as google.type.TimeOfDay in local time zone. Currently traffic model is restricted to hour level resolution.",
        },
        roadTraffic = {
          description = "Optional. Specifies the traffic density to use when calculating commute time.",
          enum = {
            "ROAD_TRAFFIC_UNSPECIFIED",
            "TRAFFIC_FREE",
            "BUSY_HOUR",
          },
          enumDescriptions = {
            "Road traffic situation is not specified.",
            "Optimal commute time without considering any traffic impact.",
            "Commute time calculation takes in account the peak traffic impact.",
          },
          type = "string",
        },
        startCoordinates = {
          ["$ref"] = "LatLng",
          description = "Required. The latitude and longitude of the location from which to calculate the commute time.",
        },
        travelDuration = {
          description = "Required. The maximum travel time in seconds. The maximum allowed value is `3600s` (one hour). Format is `123s`.",
          format = "google-duration",
          type = "string",
        },
      },
      type = "object",
    },
    CommuteInfo = {
      description = "Output only. Commute details related to this job.",
      id = "CommuteInfo",
      properties = {
        jobLocation = {
          ["$ref"] = "Location",
          description = "Location used as the destination in the commute calculation.",
        },
        travelDuration = {
          description = "The number of seconds required to travel to the job location from the query location. A duration of 0 seconds indicates that the job is not reachable within the requested duration, but was returned as part of an expanded query.",
          format = "google-duration",
          type = "string",
        },
      },
      type = "object",
    },
    Company = {
      description = "A Company resource represents a company in the service. A company is the entity that owns job postings, that is, the hiring entity responsible for employing applicants for the job position.",
      id = "Company",
      properties = {
        careerSiteUri = {
          description = "Optional. The URI to employer's career site or careers page on the employer's web site, for example, \"https://careers.google.com\".",
          type = "string",
        },
        derivedInfo = {
          ["$ref"] = "CompanyDerivedInfo",
          description = "Output only. Derived details about the company.",
        },
        displayName = {
          description = "Required. The display name of the company, for example, \"Google LLC\".",
          type = "string",
        },
        eeoText = {
          description = "Optional. Equal Employment Opportunity legal disclaimer text to be associated with all jobs, and typically to be displayed in all roles. The maximum number of allowed characters is 500.",
          type = "string",
        },
        externalId = {
          description = "Required. Client side company identifier, used to uniquely identify the company. The maximum number of allowed characters is 255.",
          type = "string",
        },
        headquartersAddress = {
          description = "Optional. The street address of the company's main headquarters, which may be different from the job location. The service attempts to geolocate the provided address, and populates a more specific location wherever possible in DerivedInfo.headquarters_location.",
          type = "string",
        },
        hiringAgency = {
          description = "Optional. Set to true if it is the hiring agency that post jobs for other employers. Defaults to false if not provided.",
          type = "boolean",
        },
        imageUri = {
          description = "Optional. A URI that hosts the employer's company logo.",
          type = "string",
        },
        keywordSearchableJobCustomAttributes = {
          description = "Optional. This field is deprecated. Please set the searchability of the custom attribute in the Job.custom_attributes going forward. A list of keys of filterable Job.custom_attributes, whose corresponding `string_values` are used in keyword search. Jobs with `string_values` under these specified field keys are returned if any of the values matches the search keyword. Custom field values with parenthesis, brackets and special symbols won't be properly searchable, and those keyword queries need to be surrounded by quotes.",
          items = {
            type = "string",
          },
          type = "array",
        },
        name = {
          description = "Required during company update. The resource name for a company. This is generated by the service when a company is created. The format is \"projects/{project_id}/companies/{company_id}\", for example, \"projects/api-test-project/companies/foo\".",
          type = "string",
        },
        size = {
          description = "Optional. The employer's company size.",
          enum = {
            "COMPANY_SIZE_UNSPECIFIED",
            "MINI",
            "SMALL",
            "SMEDIUM",
            "MEDIUM",
            "BIG",
            "BIGGER",
            "GIANT",
          },
          enumDescriptions = {
            "Default value if the size is not specified.",
            "The company has less than 50 employees.",
            "The company has between 50 and 99 employees.",
            "The company has between 100 and 499 employees.",
            "The company has between 500 and 999 employees.",
            "The company has between 1,000 and 4,999 employees.",
            "The company has between 5,000 and 9,999 employees.",
            "The company has 10,000 or more employees.",
          },
          type = "string",
        },
        suspended = {
          description = "Output only. Indicates whether a company is flagged to be suspended from public availability by the service when job content appears suspicious, abusive, or spammy.",
          type = "boolean",
        },
        websiteUri = {
          description = "Optional. The URI representing the company's primary web site or home page, for example, \"https://www.google.com\". The maximum number of allowed characters is 255.",
          type = "string",
        },
      },
      type = "object",
    },
    CompanyDerivedInfo = {
      description = "Derived details about the company.",
      id = "CompanyDerivedInfo",
      properties = {
        headquartersLocation = {
          ["$ref"] = "Location",
          description = "A structured headquarters location of the company, resolved from Company.hq_location if provided.",
        },
      },
      type = "object",
    },
    CompensationEntry = {
      description = "A compensation entry that represents one component of compensation, such as base pay, bonus, or other compensation type. Annualization: One compensation entry can be annualized if - it contains valid amount or range. - and its expected_units_per_year is set or can be derived. Its annualized range is determined as (amount or range) times expected_units_per_year.",
      id = "CompensationEntry",
      properties = {
        amount = {
          ["$ref"] = "Money",
          description = "Optional. Compensation amount.",
        },
        description = {
          description = "Optional. Compensation description. For example, could indicate equity terms or provide additional context to an estimated bonus.",
          type = "string",
        },
        expectedUnitsPerYear = {
          description = "Optional. Expected number of units paid each year. If not specified, when Job.employment_types is FULLTIME, a default value is inferred based on unit. Default values: - HOURLY: 2080 - DAILY: 260 - WEEKLY: 52 - MONTHLY: 12 - ANNUAL: 1",
          format = "double",
          type = "number",
        },
        range = {
          ["$ref"] = "CompensationRange",
          description = "Optional. Compensation range.",
        },
        type = {
          description = "Optional. Compensation type. Default is CompensationUnit.COMPENSATION_TYPE_UNSPECIFIED.",
          enum = {
            "COMPENSATION_TYPE_UNSPECIFIED",
            "BASE",
            "BONUS",
            "SIGNING_BONUS",
            "EQUITY",
            "PROFIT_SHARING",
            "COMMISSIONS",
            "TIPS",
            "OTHER_COMPENSATION_TYPE",
          },
          enumDescriptions = {
            "Default value.",
            "Base compensation: Refers to the fixed amount of money paid to an employee by an employer in return for work performed. Base compensation does not include benefits, bonuses or any other potential compensation from an employer.",
            "Bonus.",
            "Signing bonus.",
            "Equity.",
            "Profit sharing.",
            "Commission.",
            "Tips.",
            "Other compensation type.",
          },
          type = "string",
        },
        unit = {
          description = "Optional. Frequency of the specified amount. Default is CompensationUnit.COMPENSATION_UNIT_UNSPECIFIED.",
          enum = {
            "COMPENSATION_UNIT_UNSPECIFIED",
            "HOURLY",
            "DAILY",
            "WEEKLY",
            "MONTHLY",
            "YEARLY",
            "ONE_TIME",
            "OTHER_COMPENSATION_UNIT",
          },
          enumDescriptions = {
            "Default value.",
            "Hourly.",
            "Daily.",
            "Weekly",
            "Monthly.",
            "Yearly.",
            "One time.",
            "Other compensation units.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    CompensationFilter = {
      description = "Input only. Filter on job compensation type and amount.",
      id = "CompensationFilter",
      properties = {
        includeJobsWithUnspecifiedCompensationRange = {
          description = "Optional. If set to true, jobs with unspecified compensation range fields are included.",
          type = "boolean",
        },
        range = {
          ["$ref"] = "CompensationRange",
          description = "Optional. Compensation range.",
        },
        type = {
          description = "Required. Type of filter.",
          enum = {
            "FILTER_TYPE_UNSPECIFIED",
            "UNIT_ONLY",
            "UNIT_AND_AMOUNT",
            "ANNUALIZED_BASE_AMOUNT",
            "ANNUALIZED_TOTAL_AMOUNT",
          },
          enumDescriptions = {
            "Filter type unspecified. Position holder, INVALID, should never be used.",
            "Filter by `base compensation entry's` unit. A job is a match if and only if the job contains a base CompensationEntry and the base CompensationEntry's unit matches provided units. Populate one or more units. See CompensationInfo.CompensationEntry for definition of base compensation entry.",
            "Filter by `base compensation entry's` unit and amount / range. A job is a match if and only if the job contains a base CompensationEntry, and the base entry's unit matches provided compensation_units and amount or range overlaps with provided compensation_range. See CompensationInfo.CompensationEntry for definition of base compensation entry. Set exactly one units and populate range.",
            "Filter by annualized base compensation amount and `base compensation entry's` unit. Populate range and zero or more units.",
            "Filter by annualized total compensation amount and `base compensation entry's` unit . Populate range and zero or more units.",
          },
          type = "string",
        },
        units = {
          description = "Required. Specify desired `base compensation entry's` CompensationInfo.CompensationUnit.",
          items = {
            enum = {
              "COMPENSATION_UNIT_UNSPECIFIED",
              "HOURLY",
              "DAILY",
              "WEEKLY",
              "MONTHLY",
              "YEARLY",
              "ONE_TIME",
              "OTHER_COMPENSATION_UNIT",
            },
            enumDescriptions = {
              "Default value.",
              "Hourly.",
              "Daily.",
              "Weekly",
              "Monthly.",
              "Yearly.",
              "One time.",
              "Other compensation units.",
            },
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    CompensationHistogramRequest = {
      description = "Input only. Compensation based histogram request.",
      id = "CompensationHistogramRequest",
      properties = {
        bucketingOption = {
          ["$ref"] = "NumericBucketingOption",
          description = "Required. Numeric histogram options, like buckets, whether include min or max value.",
        },
        type = {
          description = "Required. Type of the request, representing which field the histogramming should be performed over. A single request can only specify one histogram of each `CompensationHistogramRequestType`.",
          enum = {
            "COMPENSATION_HISTOGRAM_REQUEST_TYPE_UNSPECIFIED",
            "BASE",
            "ANNUALIZED_BASE",
            "ANNUALIZED_TOTAL",
          },
          enumDescriptions = {
            "Default value. Invalid.",
            "Histogram by job's base compensation. See CompensationEntry for definition of base compensation.",
            "Histogram by job's annualized base compensation. See CompensationEntry for definition of annualized base compensation.",
            "Histogram by job's annualized total compensation. See CompensationEntry for definition of annualized total compensation.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    CompensationHistogramResult = {
      description = "Output only. Compensation based histogram result.",
      id = "CompensationHistogramResult",
      properties = {
        result = {
          ["$ref"] = "NumericBucketingResult",
          description = "Histogram result.",
        },
        type = {
          description = "Type of the request, corresponding to CompensationHistogramRequest.type.",
          enum = {
            "COMPENSATION_HISTOGRAM_REQUEST_TYPE_UNSPECIFIED",
            "BASE",
            "ANNUALIZED_BASE",
            "ANNUALIZED_TOTAL",
          },
          enumDescriptions = {
            "Default value. Invalid.",
            "Histogram by job's base compensation. See CompensationEntry for definition of base compensation.",
            "Histogram by job's annualized base compensation. See CompensationEntry for definition of annualized base compensation.",
            "Histogram by job's annualized total compensation. See CompensationEntry for definition of annualized total compensation.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    CompensationInfo = {
      description = "Job compensation details.",
      id = "CompensationInfo",
      properties = {
        annualizedBaseCompensationRange = {
          ["$ref"] = "CompensationRange",
          description = "Output only. Annualized base compensation range. Computed as base compensation entry's CompensationEntry.compensation times CompensationEntry.expected_units_per_year. See CompensationEntry for explanation on compensation annualization.",
        },
        annualizedTotalCompensationRange = {
          ["$ref"] = "CompensationRange",
          description = "Output only. Annualized total compensation range. Computed as all compensation entries' CompensationEntry.compensation times CompensationEntry.expected_units_per_year. See CompensationEntry for explanation on compensation annualization.",
        },
        entries = {
          description = "Optional. Job compensation information. At most one entry can be of type CompensationInfo.CompensationType.BASE, which is referred as ** base compensation entry ** for the job.",
          items = {
            ["$ref"] = "CompensationEntry",
          },
          type = "array",
        },
      },
      type = "object",
    },
    CompensationRange = {
      description = "Compensation range.",
      id = "CompensationRange",
      properties = {
        maxCompensation = {
          ["$ref"] = "Money",
          description = "Optional. The maximum amount of compensation. If left empty, the value is set to a maximal compensation value and the currency code is set to match the currency code of min_compensation.",
        },
        minCompensation = {
          ["$ref"] = "Money",
          description = "Optional. The minimum amount of compensation. If left empty, the value is set to zero and the currency code is set to match the currency code of max_compensation.",
        },
      },
      type = "object",
    },
    CompleteQueryResponse = {
      description = "Output only. Response of auto-complete query.",
      id = "CompleteQueryResponse",
      properties = {
        completionResults = {
          description = "Results of the matching job/company candidates.",
          items = {
            ["$ref"] = "CompletionResult",
          },
          type = "array",
        },
        metadata = {
          ["$ref"] = "ResponseMetadata",
          description = "Additional information for the API invocation, such as the request tracking id.",
        },
      },
      type = "object",
    },
    CompletionResult = {
      description = "Output only. Resource that represents completion results.",
      id = "CompletionResult",
      properties = {
        imageUri = {
          description = "The URI of the company image for CompletionType.COMPANY_NAME.",
          type = "string",
        },
        suggestion = {
          description = "The suggestion for the query.",
          type = "string",
        },
        type = {
          description = "The completion topic.",
          enum = {
            "COMPLETION_TYPE_UNSPECIFIED",
            "JOB_TITLE",
            "COMPANY_NAME",
            "COMBINED",
          },
          enumDescriptions = {
            "Default value.",
            "Only suggest job titles.",
            "Only suggest company names.",
            "Suggest both job titles and company names.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    CreateClientEventRequest = {
      description = "The report event request.",
      id = "CreateClientEventRequest",
      properties = {
        clientEvent = {
          ["$ref"] = "ClientEvent",
          description = "Required. Events issued when end user interacts with customer's application that uses Cloud Talent Solution.",
        },
      },
      type = "object",
    },
    CreateCompanyRequest = {
      description = "Input only. The Request of the CreateCompany method.",
      id = "CreateCompanyRequest",
      properties = {
        company = {
          ["$ref"] = "Company",
          description = "Required. The company to be created.",
        },
      },
      type = "object",
    },
    CreateJobRequest = {
      description = "Input only. Create job request.",
      id = "CreateJobRequest",
      properties = {
        job = {
          ["$ref"] = "Job",
          description = "Required. The Job to be created.",
        },
      },
      type = "object",
    },
    CustomAttribute = {
      description = "Custom attribute values that are either filterable or non-filterable.",
      id = "CustomAttribute",
      properties = {
        filterable = {
          description = "Optional. If the `filterable` flag is true, the custom field values may be used for custom attribute filters JobQuery.custom_attribute_filter. If false, these values may not be used for custom attribute filters. Default is false.",
          type = "boolean",
        },
        longValues = {
          description = "Optional but exactly one of string_values or long_values must be specified. This field is used to perform number range search. (`EQ`, `GT`, `GE`, `LE`, `LT`) over filterable `long_value`. Currently at most 1 long_values is supported.",
          items = {
            format = "int64",
            type = "string",
          },
          type = "array",
        },
        stringValues = {
          description = "Optional but exactly one of string_values or long_values must be specified. This field is used to perform a string match (`CASE_SENSITIVE_MATCH` or `CASE_INSENSITIVE_MATCH`) search. For filterable `string_value`s, a maximum total number of 200 values is allowed, with each `string_value` has a byte size of no more than 500B. For unfilterable `string_values`, the maximum total byte size of unfilterable `string_values` is 50KB. Empty string is not allowed.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    CustomAttributeHistogramRequest = {
      description = "Custom attributes histogram request. An error is thrown if neither string_value_histogram or long_value_histogram_bucketing_option has been defined.",
      id = "CustomAttributeHistogramRequest",
      properties = {
        key = {
          description = "Required. Specifies the custom field key to perform a histogram on. If specified without `long_value_histogram_bucketing_option`, histogram on string values of the given `key` is triggered, otherwise histogram is performed on long values.",
          type = "string",
        },
        longValueHistogramBucketingOption = {
          ["$ref"] = "NumericBucketingOption",
          description = "Optional. Specifies buckets used to perform a range histogram on Job's filterable long custom field values, or min/max value requirements.",
        },
        stringValueHistogram = {
          description = "Optional. If set to true, the response includes the histogram value for each key as a string.",
          type = "boolean",
        },
      },
      type = "object",
    },
    CustomAttributeHistogramResult = {
      description = "Output only. Custom attribute histogram result.",
      id = "CustomAttributeHistogramResult",
      properties = {
        key = {
          description = "Stores the key of custom attribute the histogram is performed on.",
          type = "string",
        },
        longValueHistogramResult = {
          ["$ref"] = "NumericBucketingResult",
          description = "Stores bucketed histogram counting result or min/max values for custom attribute long values associated with `key`.",
        },
        stringValueHistogramResult = {
          additionalProperties = {
            format = "int32",
            type = "integer",
          },
          description = "Stores a map from the values of string custom field associated with `key` to the number of jobs with that value in this histogram result.",
          type = "object",
        },
      },
      type = "object",
    },
    DeviceInfo = {
      description = "Device information collected from the job seeker, candidate, or other entity conducting the job search. Providing this information improves the quality of the search results across devices.",
      id = "DeviceInfo",
      properties = {
        deviceType = {
          description = "Optional. Type of the device.",
          enum = {
            "DEVICE_TYPE_UNSPECIFIED",
            "WEB",
            "MOBILE_WEB",
            "ANDROID",
            "IOS",
            "BOT",
            "OTHER",
          },
          enumDescriptions = {
            "The device type isn't specified.",
            "A desktop web browser, such as, Chrome, Firefox, Safari, or Internet Explorer)",
            "A mobile device web browser, such as a phone or tablet with a Chrome browser.",
            "An Android device native application.",
            "An iOS device native application.",
            "A bot, as opposed to a device operated by human beings, such as a web crawler.",
            "Other devices types.",
          },
          type = "string",
        },
        id = {
          description = "Optional. A device-specific ID. The ID must be a unique identifier that distinguishes the device from other devices.",
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
    HistogramFacets = {
      description = "Input only. Histogram facets to be specified in SearchJobsRequest.",
      id = "HistogramFacets",
      properties = {
        compensationHistogramFacets = {
          description = "Optional. Specifies compensation field-based histogram requests. Duplicate values of CompensationHistogramRequest.type are not allowed.",
          items = {
            ["$ref"] = "CompensationHistogramRequest",
          },
          type = "array",
        },
        customAttributeHistogramFacets = {
          description = "Optional. Specifies the custom attributes histogram requests. Duplicate values of CustomAttributeHistogramRequest.key are not allowed.",
          items = {
            ["$ref"] = "CustomAttributeHistogramRequest",
          },
          type = "array",
        },
        simpleHistogramFacets = {
          description = "Optional. Specifies the simple type of histogram facets, for example, `COMPANY_SIZE`, `EMPLOYMENT_TYPE` etc.",
          items = {
            enum = {
              "SEARCH_TYPE_UNSPECIFIED",
              "COMPANY_ID",
              "EMPLOYMENT_TYPE",
              "COMPANY_SIZE",
              "DATE_PUBLISHED",
              "EDUCATION_LEVEL",
              "EXPERIENCE_LEVEL",
              "ADMIN_1",
              "COUNTRY",
              "CITY",
              "LOCALE",
              "LANGUAGE",
              "CATEGORY",
              "CITY_COORDINATE",
              "ADMIN_1_COUNTRY",
              "COMPANY_DISPLAY_NAME",
              "BASE_COMPENSATION_UNIT",
            },
            enumDescriptions = {
              "The default value if search type is not specified.",
              "Filter by the company id field.",
              "Filter by the employment type field, such as `FULL_TIME` or `PART_TIME`.",
              "Filter by the company size type field, such as `BIG`, `SMALL` or `BIGGER`.",
              "Filter by the date published field. Possible return values are: * PAST_24_HOURS (The past 24 hours) * PAST_3_DAYS (The past 3 days) * PAST_WEEK (The past 7 days) * PAST_MONTH (The past 30 days) * PAST_YEAR (The past 365 days)",
              "Filter by the required education level of the job.",
              "Filter by the required experience level of the job.",
              "Filter by Admin1, which is a global placeholder for referring to state, province, or the particular term a country uses to define the geographic structure below the country level. Examples include states codes such as \"CA\", \"IL\", \"NY\", and provinces, such as \"BC\".",
              "Filter by the country code of job, such as US, JP, FR.",
              "Filter by the \"city name\", \"Admin1 code\", for example, \"Mountain View, CA\" or \"New York, NY\".",
              "Filter by the locale field of a job, such as \"en-US\", \"fr-FR\". This is the BCP-47 language code, such as \"en-US\" or \"sr-Latn\". For more information, see [Tags for Identifying Languages](https://tools.ietf.org/html/bcp47).",
              "Filter by the language code portion of the locale field, such as \"en\" or \"fr\".",
              "Filter by the Category.",
              "Filter by the city center GPS coordinate (latitude and longitude), for example, 37.4038522,-122.0987765. Since the coordinates of a city center can change, clients may need to refresh them periodically.",
              "A combination of state or province code with a country code. This field differs from `JOB_ADMIN1`, which can be used in multiple countries.",
              "Company display name.",
              "Base compensation unit.",
            },
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    HistogramResult = {
      description = "Output only. Result of a histogram call. The response contains the histogram map for the search type specified by HistogramResult.field. The response is a map of each filter value to the corresponding count of jobs for that filter.",
      id = "HistogramResult",
      properties = {
        searchType = {
          description = "The Histogram search filters.",
          enum = {
            "SEARCH_TYPE_UNSPECIFIED",
            "COMPANY_ID",
            "EMPLOYMENT_TYPE",
            "COMPANY_SIZE",
            "DATE_PUBLISHED",
            "EDUCATION_LEVEL",
            "EXPERIENCE_LEVEL",
            "ADMIN_1",
            "COUNTRY",
            "CITY",
            "LOCALE",
            "LANGUAGE",
            "CATEGORY",
            "CITY_COORDINATE",
            "ADMIN_1_COUNTRY",
            "COMPANY_DISPLAY_NAME",
            "BASE_COMPENSATION_UNIT",
          },
          enumDescriptions = {
            "The default value if search type is not specified.",
            "Filter by the company id field.",
            "Filter by the employment type field, such as `FULL_TIME` or `PART_TIME`.",
            "Filter by the company size type field, such as `BIG`, `SMALL` or `BIGGER`.",
            "Filter by the date published field. Possible return values are: * PAST_24_HOURS (The past 24 hours) * PAST_3_DAYS (The past 3 days) * PAST_WEEK (The past 7 days) * PAST_MONTH (The past 30 days) * PAST_YEAR (The past 365 days)",
            "Filter by the required education level of the job.",
            "Filter by the required experience level of the job.",
            "Filter by Admin1, which is a global placeholder for referring to state, province, or the particular term a country uses to define the geographic structure below the country level. Examples include states codes such as \"CA\", \"IL\", \"NY\", and provinces, such as \"BC\".",
            "Filter by the country code of job, such as US, JP, FR.",
            "Filter by the \"city name\", \"Admin1 code\", for example, \"Mountain View, CA\" or \"New York, NY\".",
            "Filter by the locale field of a job, such as \"en-US\", \"fr-FR\". This is the BCP-47 language code, such as \"en-US\" or \"sr-Latn\". For more information, see [Tags for Identifying Languages](https://tools.ietf.org/html/bcp47).",
            "Filter by the language code portion of the locale field, such as \"en\" or \"fr\".",
            "Filter by the Category.",
            "Filter by the city center GPS coordinate (latitude and longitude), for example, 37.4038522,-122.0987765. Since the coordinates of a city center can change, clients may need to refresh them periodically.",
            "A combination of state or province code with a country code. This field differs from `JOB_ADMIN1`, which can be used in multiple countries.",
            "Company display name.",
            "Base compensation unit.",
          },
          type = "string",
        },
        values = {
          additionalProperties = {
            format = "int32",
            type = "integer",
          },
          description = "A map from the values of field to the number of jobs with that value in this search result. Key: search type (filter names, such as the companyName). Values: the count of jobs that match the filter for this search.",
          type = "object",
        },
      },
      type = "object",
    },
    HistogramResults = {
      description = "Output only. Histogram results that match HistogramFacets specified in SearchJobsRequest.",
      id = "HistogramResults",
      properties = {
        compensationHistogramResults = {
          description = "Specifies compensation field-based histogram results that match HistogramFacets.compensation_histogram_requests.",
          items = {
            ["$ref"] = "CompensationHistogramResult",
          },
          type = "array",
        },
        customAttributeHistogramResults = {
          description = "Specifies histogram results for custom attributes that match HistogramFacets.custom_attribute_histogram_facets.",
          items = {
            ["$ref"] = "CustomAttributeHistogramResult",
          },
          type = "array",
        },
        simpleHistogramResults = {
          description = "Specifies histogram results that matches HistogramFacets.simple_histogram_facets.",
          items = {
            ["$ref"] = "HistogramResult",
          },
          type = "array",
        },
      },
      type = "object",
    },
    Job = {
      description = "A Job resource represents a job posting (also referred to as a \"job listing\" or \"job requisition\"). A job belongs to a Company, which is the hiring entity responsible for the job.",
      id = "Job",
      properties = {
        addresses = {
          description = "Optional but strongly recommended for the best service experience. Location(s) where the employer is looking to hire for this job posting. Specifying the full street address(es) of the hiring location enables better API results, especially job searches by commute time. At most 50 locations are allowed for best search performance. If a job has more locations, it is suggested to split it into multiple jobs with unique requisition_ids (e.g. 'ReqA' becomes 'ReqA-1', 'ReqA-2', etc.) as multiple jobs with the same company_name, language_code and requisition_id are not allowed. If the original requisition_id must be preserved, a custom field should be used for storage. It is also suggested to group the locations that close to each other in the same job for better search experience. Jobs with multiple addresses must have their addresses with the same LocationType to allow location filtering to work properly. (For example, a Job with addresses \"1600 Amphitheatre Parkway, Mountain View, CA, USA\" and \"London, UK\" may not have location filters applied correctly at search time since the first is a LocationType.STREET_ADDRESS and the second is a LocationType.LOCALITY.) If a job needs to have multiple addresses, it is suggested to split it into multiple jobs with same LocationTypes. The maximum number of allowed characters is 500.",
          items = {
            type = "string",
          },
          type = "array",
        },
        applicationInfo = {
          ["$ref"] = "ApplicationInfo",
          description = "Required. At least one field within ApplicationInfo must be specified. Job application information.",
        },
        companyDisplayName = {
          description = "Output only. Display name of the company listing the job.",
          type = "string",
        },
        companyName = {
          description = "Required. The resource name of the company listing the job, such as \"projects/api-test-project/companies/foo\".",
          type = "string",
        },
        compensationInfo = {
          ["$ref"] = "CompensationInfo",
          description = "Optional. Job compensation information.",
        },
        customAttributes = {
          additionalProperties = {
            ["$ref"] = "CustomAttribute",
          },
          description = "Optional. A map of fields to hold both filterable and non-filterable custom job attributes that are not covered by the provided structured fields. The keys of the map are strings up to 64 bytes and must match the pattern: a-zA-Z*. For example, key0LikeThis or KEY_1_LIKE_THIS. At most 100 filterable and at most 100 unfilterable keys are supported. For filterable `string_values`, across all keys at most 200 values are allowed, with each string no more than 255 characters. For unfilterable `string_values`, the maximum total size of `string_values` across all keys is 50KB.",
          type = "object",
        },
        degreeTypes = {
          description = "Optional. The desired education degrees for the job, such as Bachelors, Masters.",
          items = {
            enum = {
              "DEGREE_TYPE_UNSPECIFIED",
              "PRIMARY_EDUCATION",
              "LOWER_SECONDARY_EDUCATION",
              "UPPER_SECONDARY_EDUCATION",
              "ADULT_REMEDIAL_EDUCATION",
              "ASSOCIATES_OR_EQUIVALENT",
              "BACHELORS_OR_EQUIVALENT",
              "MASTERS_OR_EQUIVALENT",
              "DOCTORAL_OR_EQUIVALENT",
            },
            enumDescriptions = {
              "Default value. Represents no degree, or early childhood education. Maps to ISCED code 0. Ex) Kindergarten",
              "Primary education which is typically the first stage of compulsory education. ISCED code 1. Ex) Elementary school",
              "Lower secondary education; First stage of secondary education building on primary education, typically with a more subject-oriented curriculum. ISCED code 2. Ex) Middle school",
              "Middle education; Second/final stage of secondary education preparing for tertiary education and/or providing skills relevant to employment. Usually with an increased range of subject options and streams. ISCED code 3. Ex) High school",
              "Adult Remedial Education; Programmes providing learning experiences that build on secondary education and prepare for labour market entry and/or tertiary education. The content is broader than secondary but not as complex as tertiary education. ISCED code 4.",
              "Associate's or equivalent; Short first tertiary programmes that are typically practically-based, occupationally-specific and prepare for labour market entry. These programmes may also provide a pathway to other tertiary programmes. ISCED code 5.",
              "Bachelor's or equivalent; Programmes designed to provide intermediate academic and/or professional knowledge, skills and competencies leading to a first tertiary degree or equivalent qualification. ISCED code 6.",
              "Master's or equivalent; Programmes designed to provide advanced academic and/or professional knowledge, skills and competencies leading to a second tertiary degree or equivalent qualification. ISCED code 7.",
              "Doctoral or equivalent; Programmes designed primarily to lead to an advanced research qualification, usually concluding with the submission and defense of a substantive dissertation of publishable quality based on original research. ISCED code 8.",
            },
            type = "string",
          },
          type = "array",
        },
        department = {
          description = "Optional. The department or functional area within the company with the open position. The maximum number of allowed characters is 255.",
          type = "string",
        },
        derivedInfo = {
          ["$ref"] = "JobDerivedInfo",
          description = "Output only. Derived details about the job posting.",
        },
        description = {
          description = "Required. The description of the job, which typically includes a multi-paragraph description of the company and related information. Separate fields are provided on the job object for responsibilities, qualifications, and other job characteristics. Use of these separate job fields is recommended. This field accepts and sanitizes HTML input, and also accepts bold, italic, ordered list, and unordered list markup tags. The maximum number of allowed characters is 100,000.",
          type = "string",
        },
        employmentTypes = {
          description = "Optional. The employment type(s) of a job, for example, full time or part time.",
          items = {
            enum = {
              "EMPLOYMENT_TYPE_UNSPECIFIED",
              "FULL_TIME",
              "PART_TIME",
              "CONTRACTOR",
              "CONTRACT_TO_HIRE",
              "TEMPORARY",
              "INTERN",
              "VOLUNTEER",
              "PER_DIEM",
              "FLY_IN_FLY_OUT",
              "OTHER_EMPLOYMENT_TYPE",
            },
            enumDescriptions = {
              "The default value if the employment type is not specified.",
              "The job requires working a number of hours that constitute full time employment, typically 40 or more hours per week.",
              "The job entails working fewer hours than a full time job, typically less than 40 hours a week.",
              "The job is offered as a contracted, as opposed to a salaried employee, position.",
              "The job is offered as a contracted position with the understanding that it's converted into a full-time position at the end of the contract. Jobs of this type are also returned by a search for EmploymentType.CONTRACTOR jobs.",
              "The job is offered as a temporary employment opportunity, usually a short-term engagement.",
              "The job is a fixed-term opportunity for students or entry-level job seekers to obtain on-the-job training, typically offered as a summer position.",
              "The is an opportunity for an individual to volunteer, where there's no expectation of compensation for the provided services.",
              "The job requires an employee to work on an as-needed basis with a flexible schedule.",
              "The job involves employing people in remote areas and flying them temporarily to the work site instead of relocating employees and their families permanently.",
              "The job does not fit any of the other listed types.",
            },
            type = "string",
          },
          type = "array",
        },
        incentives = {
          description = "Optional. A description of bonus, commission, and other compensation incentives associated with the job not including salary or pay. The maximum number of allowed characters is 10,000.",
          type = "string",
        },
        jobBenefits = {
          description = "Optional. The benefits included with the job.",
          items = {
            enum = {
              "JOB_BENEFIT_UNSPECIFIED",
              "CHILD_CARE",
              "DENTAL",
              "DOMESTIC_PARTNER",
              "FLEXIBLE_HOURS",
              "MEDICAL",
              "LIFE_INSURANCE",
              "PARENTAL_LEAVE",
              "RETIREMENT_PLAN",
              "SICK_DAYS",
              "VACATION",
              "VISION",
            },
            enumDescriptions = {
              "Default value if the type is not specified.",
              "The job includes access to programs that support child care, such as daycare.",
              "The job includes dental services covered by a dental insurance plan.",
              "The job offers specific benefits to domestic partners.",
              "The job allows for a flexible work schedule.",
              "The job includes health services covered by a medical insurance plan.",
              "The job includes a life insurance plan provided by the employer or available for purchase by the employee.",
              "The job allows for a leave of absence to a parent to care for a newborn child.",
              "The job includes a workplace retirement plan provided by the employer or available for purchase by the employee.",
              "The job allows for paid time off due to illness.",
              "The job includes paid time off for vacation.",
              "The job includes vision services covered by a vision insurance plan.",
            },
            type = "string",
          },
          type = "array",
        },
        jobEndTime = {
          description = "Optional. The end timestamp of the job. Typically this field is used for contracting engagements. Invalid timestamps are ignored.",
          format = "google-datetime",
          type = "string",
        },
        jobLevel = {
          description = "Optional. The experience level associated with the job, such as \"Entry Level\".",
          enum = {
            "JOB_LEVEL_UNSPECIFIED",
            "ENTRY_LEVEL",
            "EXPERIENCED",
            "MANAGER",
            "DIRECTOR",
            "EXECUTIVE",
          },
          enumDescriptions = {
            "The default value if the level is not specified.",
            "Entry-level individual contributors, typically with less than 2 years of experience in a similar role. Includes interns.",
            "Experienced individual contributors, typically with 2+ years of experience in a similar role.",
            "Entry- to mid-level managers responsible for managing a team of people.",
            "Senior-level managers responsible for managing teams of managers.",
            "Executive-level managers and above, including C-level positions.",
          },
          type = "string",
        },
        jobStartTime = {
          description = "Optional. The start timestamp of the job in UTC time zone. Typically this field is used for contracting engagements. Invalid timestamps are ignored.",
          format = "google-datetime",
          type = "string",
        },
        languageCode = {
          description = "Optional. The language of the posting. This field is distinct from any requirements for fluency that are associated with the job. Language codes must be in BCP-47 format, such as \"en-US\" or \"sr-Latn\". For more information, see [Tags for Identifying Languages](https://tools.ietf.org/html/bcp47){: class=\"external\" target=\"_blank\" }. If this field is unspecified and Job.description is present, detected language code based on Job.description is assigned, otherwise defaults to 'en_US'.",
          type = "string",
        },
        name = {
          description = "Required during job update. The resource name for the job. This is generated by the service when a job is created. The format is \"projects/{project_id}/jobs/{job_id}\", for example, \"projects/api-test-project/jobs/1234\". Use of this field in job queries and API calls is preferred over the use of requisition_id since this value is unique.",
          type = "string",
        },
        postingCreateTime = {
          description = "Output only. The timestamp when this job posting was created.",
          format = "google-datetime",
          type = "string",
        },
        postingExpireTime = {
          description = "Optional but strongly recommended for the best service experience. The expiration timestamp of the job. After this timestamp, the job is marked as expired, and it no longer appears in search results. The expired job can't be deleted or listed by the DeleteJob and ListJobs APIs, but it can be retrieved with the GetJob API or updated with the UpdateJob API. An expired job can be updated and opened again by using a future expiration timestamp. Updating an expired job fails if there is another existing open job with same company_name, language_code and requisition_id. The expired jobs are retained in our system for 90 days. However, the overall expired job count cannot exceed 3 times the maximum of open jobs count over the past week, otherwise jobs with earlier expire time are cleaned first. Expired jobs are no longer accessible after they are cleaned out. Invalid timestamps are ignored, and treated as expire time not provided. Timestamp before the instant request is made is considered valid, the job will be treated as expired immediately. If this value is not provided at the time of job creation or is invalid, the job posting expires after 30 days from the job's creation time. For example, if the job was created on 2017/01/01 13:00AM UTC with an unspecified expiration date, the job expires after 2017/01/31 13:00AM UTC. If this value is not provided on job update, it depends on the field masks set by UpdateJobRequest.update_mask. If the field masks include expiry_time, or the masks are empty meaning that every field is updated, the job posting expires after 30 days from the job's last update time. Otherwise the expiration date isn't updated.",
          format = "google-datetime",
          type = "string",
        },
        postingPublishTime = {
          description = "Optional. The timestamp this job posting was most recently published. The default value is the time the request arrives at the server. Invalid timestamps are ignored.",
          format = "google-datetime",
          type = "string",
        },
        postingRegion = {
          description = "Optional. The job PostingRegion (for example, state, country) throughout which the job is available. If this field is set, a LocationFilter in a search query within the job region finds this job posting if an exact location match isn't specified. If this field is set to PostingRegion.NATION or PostingRegion.ADMINISTRATIVE_AREA, setting job Job.addresses to the same location level as this field is strongly recommended.",
          enum = {
            "POSTING_REGION_UNSPECIFIED",
            "ADMINISTRATIVE_AREA",
            "NATION",
            "TELECOMMUTE",
          },
          enumDescriptions = {
            "If the region is unspecified, the job is only returned if it matches the LocationFilter.",
            "In addition to exact location matching, job posting is returned when the LocationFilter in the search query is in the same administrative area as the returned job posting. For example, if a `ADMINISTRATIVE_AREA` job is posted in \"CA, USA\", it's returned if LocationFilter has \"Mountain View\". Administrative area refers to top-level administrative subdivision of this country. For example, US state, IT region, UK constituent nation and JP prefecture.",
            "In addition to exact location matching, job is returned when LocationFilter in search query is in the same country as this job. For example, if a `NATION_WIDE` job is posted in \"USA\", it's returned if LocationFilter has 'Mountain View'.",
            "Job allows employees to work remotely (telecommute). If locations are provided with this value, the job is considered as having a location, but telecommuting is allowed.",
          },
          type = "string",
        },
        postingUpdateTime = {
          description = "Output only. The timestamp when this job posting was last updated.",
          format = "google-datetime",
          type = "string",
        },
        processingOptions = {
          ["$ref"] = "ProcessingOptions",
          description = "Optional. Options for job processing.",
        },
        promotionValue = {
          description = "Optional. A promotion value of the job, as determined by the client. The value determines the sort order of the jobs returned when searching for jobs using the featured jobs search call, with higher promotional values being returned first and ties being resolved by relevance sort. Only the jobs with a promotionValue >0 are returned in a FEATURED_JOB_SEARCH. Default value is 0, and negative values are treated as 0.",
          format = "int32",
          type = "integer",
        },
        qualifications = {
          description = "Optional. A description of the qualifications required to perform the job. The use of this field is recommended as an alternative to using the more general description field. This field accepts and sanitizes HTML input, and also accepts bold, italic, ordered list, and unordered list markup tags. The maximum number of allowed characters is 10,000.",
          type = "string",
        },
        requisitionId = {
          description = "Required. The requisition ID, also referred to as the posting ID, assigned by the client to identify a job. This field is intended to be used by clients for client identification and tracking of postings. A job is not allowed to be created if there is another job with the same [company_name], language_code and requisition_id. The maximum number of allowed characters is 255.",
          type = "string",
        },
        responsibilities = {
          description = "Optional. A description of job responsibilities. The use of this field is recommended as an alternative to using the more general description field. This field accepts and sanitizes HTML input, and also accepts bold, italic, ordered list, and unordered list markup tags. The maximum number of allowed characters is 10,000.",
          type = "string",
        },
        title = {
          description = "Required. The title of the job, such as \"Software Engineer\" The maximum number of allowed characters is 500.",
          type = "string",
        },
        visibility = {
          description = "Deprecated. The job is only visible to the owner. The visibility of the job. Defaults to Visibility.ACCOUNT_ONLY if not specified.",
          enum = {
            "VISIBILITY_UNSPECIFIED",
            "ACCOUNT_ONLY",
            "SHARED_WITH_GOOGLE",
            "SHARED_WITH_PUBLIC",
          },
          enumDescriptions = {
            "Default value.",
            "The resource is only visible to the GCP account who owns it.",
            "The resource is visible to the owner and may be visible to other applications and processes at Google.",
            "The resource is visible to the owner and may be visible to all other API clients.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    JobDerivedInfo = {
      description = "Output only. Derived details about the job posting.",
      id = "JobDerivedInfo",
      properties = {
        jobCategories = {
          description = "Job categories derived from Job.title and Job.description.",
          items = {
            enum = {
              "JOB_CATEGORY_UNSPECIFIED",
              "ACCOUNTING_AND_FINANCE",
              "ADMINISTRATIVE_AND_OFFICE",
              "ADVERTISING_AND_MARKETING",
              "ANIMAL_CARE",
              "ART_FASHION_AND_DESIGN",
              "BUSINESS_OPERATIONS",
              "CLEANING_AND_FACILITIES",
              "COMPUTER_AND_IT",
              "CONSTRUCTION",
              "CUSTOMER_SERVICE",
              "EDUCATION",
              "ENTERTAINMENT_AND_TRAVEL",
              "FARMING_AND_OUTDOORS",
              "HEALTHCARE",
              "HUMAN_RESOURCES",
              "INSTALLATION_MAINTENANCE_AND_REPAIR",
              "LEGAL",
              "MANAGEMENT",
              "MANUFACTURING_AND_WAREHOUSE",
              "MEDIA_COMMUNICATIONS_AND_WRITING",
              "OIL_GAS_AND_MINING",
              "PERSONAL_CARE_AND_SERVICES",
              "PROTECTIVE_SERVICES",
              "REAL_ESTATE",
              "RESTAURANT_AND_HOSPITALITY",
              "SALES_AND_RETAIL",
              "SCIENCE_AND_ENGINEERING",
              "SOCIAL_SERVICES_AND_NON_PROFIT",
              "SPORTS_FITNESS_AND_RECREATION",
              "TRANSPORTATION_AND_LOGISTICS",
            },
            enumDescriptions = {
              "The default value if the category isn't specified.",
              "An accounting and finance job, such as an Accountant.",
              "An administrative and office job, such as an Administrative Assistant.",
              "An advertising and marketing job, such as Marketing Manager.",
              "An animal care job, such as Veterinarian.",
              "An art, fashion, or design job, such as Designer.",
              "A business operations job, such as Business Operations Manager.",
              "A cleaning and facilities job, such as Custodial Staff.",
              "A computer and IT job, such as Systems Administrator.",
              "A construction job, such as General Laborer.",
              "A customer service job, such s Cashier.",
              "An education job, such as School Teacher.",
              "An entertainment and travel job, such as Flight Attendant.",
              "A farming or outdoor job, such as Park Ranger.",
              "A healthcare job, such as Registered Nurse.",
              "A human resources job, such as Human Resources Director.",
              "An installation, maintenance, or repair job, such as Electrician.",
              "A legal job, such as Law Clerk.",
              "A management job, often used in conjunction with another category, such as Store Manager.",
              "A manufacturing or warehouse job, such as Assembly Technician.",
              "A media, communications, or writing job, such as Media Relations.",
              "An oil, gas or mining job, such as Offshore Driller.",
              "A personal care and services job, such as Hair Stylist.",
              "A protective services job, such as Security Guard.",
              "A real estate job, such as Buyer's Agent.",
              "A restaurant and hospitality job, such as Restaurant Server.",
              "A sales and/or retail job, such Sales Associate.",
              "A science and engineering job, such as Lab Technician.",
              "A social services or non-profit job, such as Case Worker.",
              "A sports, fitness, or recreation job, such as Personal Trainer.",
              "A transportation or logistics job, such as Truck Driver.",
            },
            type = "string",
          },
          type = "array",
        },
        locations = {
          description = "Structured locations of the job, resolved from Job.addresses. locations are exactly matched to Job.addresses in the same order.",
          items = {
            ["$ref"] = "Location",
          },
          type = "array",
        },
      },
      type = "object",
    },
    JobEvent = {
      description = "An event issued when a job seeker interacts with the application that implements Cloud Talent Solution.",
      id = "JobEvent",
      properties = {
        jobs = {
          description = "Required. The job name(s) associated with this event. For example, if this is an impression event, this field contains the identifiers of all jobs shown to the job seeker. If this was a view event, this field contains the identifier of the viewed job.",
          items = {
            type = "string",
          },
          type = "array",
        },
        type = {
          description = "Required. The type of the event (see JobEventType).",
          enum = {
            "JOB_EVENT_TYPE_UNSPECIFIED",
            "IMPRESSION",
            "VIEW",
            "VIEW_REDIRECT",
            "APPLICATION_START",
            "APPLICATION_FINISH",
            "APPLICATION_QUICK_SUBMISSION",
            "APPLICATION_REDIRECT",
            "APPLICATION_START_FROM_SEARCH",
            "APPLICATION_REDIRECT_FROM_SEARCH",
            "APPLICATION_COMPANY_SUBMIT",
            "BOOKMARK",
            "NOTIFICATION",
            "HIRED",
            "SENT_CV",
            "INTERVIEW_GRANTED",
            "NOT_INTERESTED",
          },
          enumDescriptions = {
            "The event is unspecified by other provided values.",
            "The job seeker or other entity interacting with the service has had a job rendered in their view, such as in a list of search results in a compressed or clipped format. This event is typically associated with the viewing of a jobs list on a single page by a job seeker.",
            "The job seeker, or other entity interacting with the service, has viewed the details of a job, including the full description. This event doesn't apply to the viewing a snippet of a job appearing as a part of the job search results. Viewing a snippet is associated with an impression).",
            "The job seeker or other entity interacting with the service performed an action to view a job and was redirected to a different website for job.",
            "The job seeker or other entity interacting with the service began the process or demonstrated the intention of applying for a job.",
            "The job seeker or other entity interacting with the service submitted an application for a job.",
            "The job seeker or other entity interacting with the service submitted an application for a job with a single click without entering information. If a job seeker performs this action, send only this event to the service. Do not also send JobEventType.APPLICATION_START or JobEventType.APPLICATION_FINISH events.",
            "The job seeker or other entity interacting with the service performed an action to apply to a job and was redirected to a different website to complete the application.",
            "The job seeker or other entity interacting with the service began the process or demonstrated the intention of applying for a job from the search results page without viewing the details of the job posting. If sending this event, JobEventType.VIEW event shouldn't be sent.",
            "The job seeker, or other entity interacting with the service, performs an action with a single click from the search results page to apply to a job (without viewing the details of the job posting), and is redirected to a different website to complete the application. If a candidate performs this action, send only this event to the service. Do not also send JobEventType.APPLICATION_START, JobEventType.APPLICATION_FINISH or JobEventType.VIEW events.",
            "This event should be used when a company submits an application on behalf of a job seeker. This event is intended for use by staffing agencies attempting to place candidates.",
            "The job seeker or other entity interacting with the service demonstrated an interest in a job by bookmarking or saving it.",
            "The job seeker or other entity interacting with the service was sent a notification, such as an email alert or device notification, containing one or more jobs listings generated by the service.",
            "The job seeker or other entity interacting with the service was employed by the hiring entity (employer). Send this event only if the job seeker was hired through an application that was initiated by a search conducted through the Cloud Talent Solution service.",
            "A recruiter or staffing agency submitted an application on behalf of the candidate after interacting with the service to identify a suitable job posting.",
            "The entity interacting with the service (for example, the job seeker), was granted an initial interview by the hiring entity (employer). This event should only be sent if the job seeker was granted an interview as part of an application that was initiated by a search conducted through / recommendation provided by the Cloud Talent Solution service.",
            "The job seeker or other entity interacting with the service showed no interest in the job.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    JobQuery = {
      description = "Input only. The query required to perform a search query.",
      id = "JobQuery",
      properties = {
        commuteFilter = {
          ["$ref"] = "CommuteFilter",
          description = "Optional. Allows filtering jobs by commute time with different travel methods (for example, driving or public transit). Note: This only works with COMMUTE MODE. When specified, [JobQuery.location_filters] is ignored. Currently we don't support sorting by commute time.",
        },
        companyDisplayNames = {
          description = "Optional. This filter specifies the company Company.display_name of the jobs to search against. The company name must match the value exactly. Alternatively, the value being searched for can be wrapped in different match operators. `SUBSTRING_MATCH([value])` The company name must contain a case insensitive substring match of the value. Using this function may increase latency. Sample Value: `SUBSTRING_MATCH(google)` `MULTI_WORD_TOKEN_MATCH([value])` The value will be treated as a multi word token and the company name must contain a case insensitive match of the value. Using this function may increase latency. Sample Value: `MULTI_WORD_TOKEN_MATCH(google)` If a value isn't specified, jobs within the search results are associated with any company. If multiple values are specified, jobs within the search results may be associated with any of the specified companies. At most 20 company display name filters are allowed.",
          items = {
            type = "string",
          },
          type = "array",
        },
        companyNames = {
          description = "Optional. This filter specifies the company entities to search against. If a value isn't specified, jobs are searched for against all companies. If multiple values are specified, jobs are searched against the companies specified. The format is \"projects/{project_id}/companies/{company_id}\", for example, \"projects/api-test-project/companies/foo\". At most 20 company filters are allowed.",
          items = {
            type = "string",
          },
          type = "array",
        },
        compensationFilter = {
          ["$ref"] = "CompensationFilter",
          description = "Optional. This search filter is applied only to Job.compensation_info. For example, if the filter is specified as \"Hourly job with per-hour compensation > $15\", only jobs meeting these criteria are searched. If a filter isn't defined, all open jobs are searched.",
        },
        customAttributeFilter = {
          description = "Optional. This filter specifies a structured syntax to match against the Job.custom_attributes marked as `filterable`. The syntax for this expression is a subset of SQL syntax. Supported operators are: `=`, `!=`, `<`, `<=`, `>`, and `>=` where the left of the operator is a custom field key and the right of the operator is a number or a quoted string. You must escape backslash (\\\\) and quote (\\\") characters. Supported functions are `LOWER([field_name])` to perform a case insensitive match and `EMPTY([field_name])` to filter on the existence of a key. Boolean expressions (AND/OR/NOT) are supported up to 3 levels of nesting (for example, \"((A AND B AND C) OR NOT D) AND E\"), a maximum of 100 comparisons or functions are allowed in the expression. The expression must be < 10000 bytes in length. Sample Query: `(LOWER(driving_license)=\"class \\\"a\\\"\" OR EMPTY(driving_license)) AND driving_years > 10`",
          type = "string",
        },
        disableSpellCheck = {
          description = "Optional. This flag controls the spell-check feature. If false, the service attempts to correct a misspelled query, for example, \"enginee\" is corrected to \"engineer\". Defaults to false: a spell check is performed.",
          type = "boolean",
        },
        employmentTypes = {
          description = "Optional. The employment type filter specifies the employment type of jobs to search against, such as EmploymentType.FULL_TIME. If a value is not specified, jobs in the search results includes any employment type. If multiple values are specified, jobs in the search results include any of the specified employment types.",
          items = {
            enum = {
              "EMPLOYMENT_TYPE_UNSPECIFIED",
              "FULL_TIME",
              "PART_TIME",
              "CONTRACTOR",
              "CONTRACT_TO_HIRE",
              "TEMPORARY",
              "INTERN",
              "VOLUNTEER",
              "PER_DIEM",
              "FLY_IN_FLY_OUT",
              "OTHER_EMPLOYMENT_TYPE",
            },
            enumDescriptions = {
              "The default value if the employment type is not specified.",
              "The job requires working a number of hours that constitute full time employment, typically 40 or more hours per week.",
              "The job entails working fewer hours than a full time job, typically less than 40 hours a week.",
              "The job is offered as a contracted, as opposed to a salaried employee, position.",
              "The job is offered as a contracted position with the understanding that it's converted into a full-time position at the end of the contract. Jobs of this type are also returned by a search for EmploymentType.CONTRACTOR jobs.",
              "The job is offered as a temporary employment opportunity, usually a short-term engagement.",
              "The job is a fixed-term opportunity for students or entry-level job seekers to obtain on-the-job training, typically offered as a summer position.",
              "The is an opportunity for an individual to volunteer, where there's no expectation of compensation for the provided services.",
              "The job requires an employee to work on an as-needed basis with a flexible schedule.",
              "The job involves employing people in remote areas and flying them temporarily to the work site instead of relocating employees and their families permanently.",
              "The job does not fit any of the other listed types.",
            },
            type = "string",
          },
          type = "array",
        },
        jobCategories = {
          description = "Optional. The category filter specifies the categories of jobs to search against. See Category for more information. If a value is not specified, jobs from any category are searched against. If multiple values are specified, jobs from any of the specified categories are searched against.",
          items = {
            enum = {
              "JOB_CATEGORY_UNSPECIFIED",
              "ACCOUNTING_AND_FINANCE",
              "ADMINISTRATIVE_AND_OFFICE",
              "ADVERTISING_AND_MARKETING",
              "ANIMAL_CARE",
              "ART_FASHION_AND_DESIGN",
              "BUSINESS_OPERATIONS",
              "CLEANING_AND_FACILITIES",
              "COMPUTER_AND_IT",
              "CONSTRUCTION",
              "CUSTOMER_SERVICE",
              "EDUCATION",
              "ENTERTAINMENT_AND_TRAVEL",
              "FARMING_AND_OUTDOORS",
              "HEALTHCARE",
              "HUMAN_RESOURCES",
              "INSTALLATION_MAINTENANCE_AND_REPAIR",
              "LEGAL",
              "MANAGEMENT",
              "MANUFACTURING_AND_WAREHOUSE",
              "MEDIA_COMMUNICATIONS_AND_WRITING",
              "OIL_GAS_AND_MINING",
              "PERSONAL_CARE_AND_SERVICES",
              "PROTECTIVE_SERVICES",
              "REAL_ESTATE",
              "RESTAURANT_AND_HOSPITALITY",
              "SALES_AND_RETAIL",
              "SCIENCE_AND_ENGINEERING",
              "SOCIAL_SERVICES_AND_NON_PROFIT",
              "SPORTS_FITNESS_AND_RECREATION",
              "TRANSPORTATION_AND_LOGISTICS",
            },
            enumDescriptions = {
              "The default value if the category isn't specified.",
              "An accounting and finance job, such as an Accountant.",
              "An administrative and office job, such as an Administrative Assistant.",
              "An advertising and marketing job, such as Marketing Manager.",
              "An animal care job, such as Veterinarian.",
              "An art, fashion, or design job, such as Designer.",
              "A business operations job, such as Business Operations Manager.",
              "A cleaning and facilities job, such as Custodial Staff.",
              "A computer and IT job, such as Systems Administrator.",
              "A construction job, such as General Laborer.",
              "A customer service job, such s Cashier.",
              "An education job, such as School Teacher.",
              "An entertainment and travel job, such as Flight Attendant.",
              "A farming or outdoor job, such as Park Ranger.",
              "A healthcare job, such as Registered Nurse.",
              "A human resources job, such as Human Resources Director.",
              "An installation, maintenance, or repair job, such as Electrician.",
              "A legal job, such as Law Clerk.",
              "A management job, often used in conjunction with another category, such as Store Manager.",
              "A manufacturing or warehouse job, such as Assembly Technician.",
              "A media, communications, or writing job, such as Media Relations.",
              "An oil, gas or mining job, such as Offshore Driller.",
              "A personal care and services job, such as Hair Stylist.",
              "A protective services job, such as Security Guard.",
              "A real estate job, such as Buyer's Agent.",
              "A restaurant and hospitality job, such as Restaurant Server.",
              "A sales and/or retail job, such Sales Associate.",
              "A science and engineering job, such as Lab Technician.",
              "A social services or non-profit job, such as Case Worker.",
              "A sports, fitness, or recreation job, such as Personal Trainer.",
              "A transportation or logistics job, such as Truck Driver.",
            },
            type = "string",
          },
          type = "array",
        },
        languageCodes = {
          description = "Optional. This filter specifies the locale of jobs to search against, for example, \"en-US\". If a value isn't specified, the search results can contain jobs in any locale. Language codes should be in BCP-47 format, such as \"en-US\" or \"sr-Latn\". For more information, see [Tags for Identifying Languages](https://tools.ietf.org/html/bcp47). At most 10 language code filters are allowed.",
          items = {
            type = "string",
          },
          type = "array",
        },
        locationFilters = {
          description = "Optional. The location filter specifies geo-regions containing the jobs to search against. See LocationFilter for more information. If a location value isn't specified, jobs fitting the other search criteria are retrieved regardless of where they're located. If multiple values are specified, jobs are retrieved from any of the specified locations. If different values are specified for the LocationFilter.distance_in_miles parameter, the maximum provided distance is used for all locations. At most 5 location filters are allowed.",
          items = {
            ["$ref"] = "LocationFilter",
          },
          type = "array",
        },
        publishTimeRange = {
          ["$ref"] = "TimestampRange",
          description = "Optional. Jobs published within a range specified by this filter are searched against.",
        },
        query = {
          description = "Optional. The query string that matches against the job title, description, and location fields. The maximum number of allowed characters is 255.",
          type = "string",
        },
        queryLanguageCode = {
          description = "The language code of query. For example, \"en-US\". This field helps to better interpret the query. If a value isn't specified, the query language code is automatically detected, which may not be accurate. Language code should be in BCP-47 format, such as \"en-US\" or \"sr-Latn\". For more information, see [Tags for Identifying Languages](https://tools.ietf.org/html/bcp47).",
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
    ListCompaniesResponse = {
      description = "Output only. The List companies response object.",
      id = "ListCompaniesResponse",
      properties = {
        companies = {
          description = "Companies for the current client.",
          items = {
            ["$ref"] = "Company",
          },
          type = "array",
        },
        metadata = {
          ["$ref"] = "ResponseMetadata",
          description = "Additional information for the API invocation, such as the request tracking id.",
        },
        nextPageToken = {
          description = "A token to retrieve the next page of results.",
          type = "string",
        },
      },
      type = "object",
    },
    ListJobsResponse = {
      description = "Output only. List jobs response.",
      id = "ListJobsResponse",
      properties = {
        jobs = {
          description = "The Jobs for a given company. The maximum number of items returned is based on the limit field provided in the request.",
          items = {
            ["$ref"] = "Job",
          },
          type = "array",
        },
        metadata = {
          ["$ref"] = "ResponseMetadata",
          description = "Additional information for the API invocation, such as the request tracking id.",
        },
        nextPageToken = {
          description = "A token to retrieve the next page of results.",
          type = "string",
        },
      },
      type = "object",
    },
    Location = {
      description = "Output only. A resource that represents a location with full geographic information.",
      id = "Location",
      properties = {
        latLng = {
          ["$ref"] = "LatLng",
          description = "An object representing a latitude/longitude pair.",
        },
        locationType = {
          description = "The type of a location, which corresponds to the address lines field of PostalAddress. For example, \"Downtown, Atlanta, GA, USA\" has a type of LocationType#NEIGHBORHOOD, and \"Kansas City, KS, USA\" has a type of LocationType#LOCALITY.",
          enum = {
            "LOCATION_TYPE_UNSPECIFIED",
            "COUNTRY",
            "ADMINISTRATIVE_AREA",
            "SUB_ADMINISTRATIVE_AREA",
            "LOCALITY",
            "POSTAL_CODE",
            "SUB_LOCALITY",
            "SUB_LOCALITY_1",
            "SUB_LOCALITY_2",
            "NEIGHBORHOOD",
            "STREET_ADDRESS",
          },
          enumDescriptions = {
            "Default value if the type is not specified.",
            "A country level location.",
            "A state or equivalent level location.",
            "A county or equivalent level location.",
            "A city or equivalent level location.",
            "A postal code level location.",
            "A sublocality is a subdivision of a locality, for example a city borough, ward, or arrondissement. Sublocalities are usually recognized by a local political authority. For example, Manhattan and Brooklyn are recognized as boroughs by the City of New York, and are therefore modeled as sublocalities.",
            "A district or equivalent level location.",
            "A smaller district or equivalent level display.",
            "A neighborhood level location.",
            "A street address level location.",
          },
          type = "string",
        },
        postalAddress = {
          ["$ref"] = "PostalAddress",
          description = "Postal address of the location that includes human readable information, such as postal delivery and payments addresses. Given a postal address, a postal service can deliver items to a premises, P.O. Box, or other delivery location.",
        },
        radiusInMiles = {
          description = "Radius in miles of the job location. This value is derived from the location bounding box in which a circle with the specified radius centered from LatLng covers the area associated with the job location. For example, currently, \"Mountain View, CA, USA\" has a radius of 6.17 miles.",
          format = "double",
          type = "number",
        },
      },
      type = "object",
    },
    LocationFilter = {
      description = "Input only. Geographic region of the search.",
      id = "LocationFilter",
      properties = {
        address = {
          description = "Optional. The address name, such as \"Mountain View\" or \"Bay Area\".",
          type = "string",
        },
        distanceInMiles = {
          description = "Optional. The distance_in_miles is applied when the location being searched for is identified as a city or smaller. When the location being searched for is a state or larger, this field is ignored.",
          format = "double",
          type = "number",
        },
        latLng = {
          ["$ref"] = "LatLng",
          description = "Optional. The latitude and longitude of the geographic center from which to search. This field's ignored if `address` is provided.",
        },
        regionCode = {
          description = "Optional. CLDR region code of the country/region. This field may be used in two ways: 1) If telecommute preference is not set, this field is used address ambiguity of the user-input address. For example, \"Liverpool\" may refer to \"Liverpool, NY, US\" or \"Liverpool, UK\". This region code biases the address resolution toward a specific country or territory. If this field is not set, address resolution is biased toward the United States by default. 2) If telecommute preference is set to TELECOMMUTE_ALLOWED, the telecommute location filter will be limited to the region specified in this field. If this field is not set, the telecommute job locations will not be limited. See https://unicode-org.github.io/cldr-staging/charts/latest/supplemental/territory_information.html for details. Example: \"CH\" for Switzerland.",
          type = "string",
        },
        telecommutePreference = {
          description = "Optional. Allows the client to return jobs without a set location, specifically, telecommuting jobs (telecommuting is considered by the service as a special location). Job.posting_region indicates if a job permits telecommuting. If this field is set to TelecommutePreference.TELECOMMUTE_ALLOWED, telecommuting jobs are searched, and address and lat_lng are ignored. If not set or set to TelecommutePreference.TELECOMMUTE_EXCLUDED, the telecommute status of the jobs is ignored. Jobs that have PostingRegion.TELECOMMUTE and have additional Job.addresses may still be matched based on other location filters using address or latlng. This filter can be used by itself to search exclusively for telecommuting jobs, or it can be combined with another location filter to search for a combination of job locations, such as \"Mountain View\" or \"telecommuting\" jobs. However, when used in combination with other location filters, telecommuting jobs can be treated as less relevant than other jobs in the search response.",
          enum = {
            "TELECOMMUTE_PREFERENCE_UNSPECIFIED",
            "TELECOMMUTE_EXCLUDED",
            "TELECOMMUTE_ALLOWED",
            "TELECOMMUTE_JOBS_EXCLUDED",
          },
          enumDescriptions = {
            "Default value if the telecommute preference is not specified.",
            "Deprecated: Ignore telecommute status of jobs. Use TELECOMMUTE_JOBS_EXCLUDED if want to exclude telecommute jobs.",
            "Allow telecommute jobs.",
            "Exclude telecommute jobs.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    MatchingJob = {
      description = "Output only. Job entry with metadata inside SearchJobsResponse.",
      id = "MatchingJob",
      properties = {
        commuteInfo = {
          ["$ref"] = "CommuteInfo",
          description = "Commute information which is generated based on specified CommuteFilter.",
        },
        job = {
          ["$ref"] = "Job",
          description = "Job resource that matches the specified SearchJobsRequest.",
        },
        jobSummary = {
          description = "A summary of the job with core information that's displayed on the search results listing page.",
          type = "string",
        },
        jobTitleSnippet = {
          description = "Contains snippets of text from the Job.job_title field most closely matching a search query's keywords, if available. The matching query keywords are enclosed in HTML bold tags.",
          type = "string",
        },
        searchTextSnippet = {
          description = "Contains snippets of text from the Job.description and similar fields that most closely match a search query's keywords, if available. All HTML tags in the original fields are stripped when returned in this field, and matching query keywords are enclosed in HTML bold tags.",
          type = "string",
        },
      },
      type = "object",
    },
    MendelDebugInput = {
      description = "Message representing input to a Mendel server for debug forcing. See go/mendel-debug-forcing for more details. Next ID: 2",
      id = "MendelDebugInput",
      properties = {
        namespacedDebugInput = {
          additionalProperties = {
            ["$ref"] = "NamespacedDebugInput",
          },
          description = "When a request spans multiple servers, a MendelDebugInput may travel with the request and take effect in all the servers. This field is a map of namespaces to NamespacedMendelDebugInput protos. In a single server, up to two NamespacedMendelDebugInput protos are applied: 1. NamespacedMendelDebugInput with the global namespace (key == \"\"). 2. NamespacedMendelDebugInput with the server's namespace. When both NamespacedMendelDebugInput protos are present, they are merged. See go/mendel-debug-forcing for more details.",
          type = "object",
        },
      },
      type = "object",
    },
    Money = {
      description = "Represents an amount of money with its currency type.",
      id = "Money",
      properties = {
        currencyCode = {
          description = "The three-letter currency code defined in ISO 4217.",
          type = "string",
        },
        nanos = {
          description = "Number of nano (10^-9) units of the amount. The value must be between -999,999,999 and +999,999,999 inclusive. If `units` is positive, `nanos` must be positive or zero. If `units` is zero, `nanos` can be positive, zero, or negative. If `units` is negative, `nanos` must be negative or zero. For example $-1.75 is represented as `units`=-1 and `nanos`=-750,000,000.",
          format = "int32",
          type = "integer",
        },
        units = {
          description = "The whole units of the amount. For example if `currencyCode` is `\"USD\"`, then 1 unit is one US dollar.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    NamespacedDebugInput = {
      description = "Next ID: 16",
      id = "NamespacedDebugInput",
      properties = {
        absolutelyForcedExpNames = {
          description = "Set of experiment names to be absolutely forced. These experiments will be forced without evaluating the conditions.",
          items = {
            type = "string",
          },
          type = "array",
        },
        absolutelyForcedExpTags = {
          description = "Set of experiment tags to be absolutely forced. The experiments with these tags will be forced without evaluating the conditions.",
          items = {
            type = "string",
          },
          type = "array",
        },
        absolutelyForcedExps = {
          description = "Set of experiment ids to be absolutely forced. These ids will be forced without evaluating the conditions.",
          items = {
            format = "int32",
            type = "integer",
          },
          type = "array",
        },
        conditionallyForcedExpNames = {
          description = "Set of experiment names to be conditionally forced. These experiments will be forced only if their conditions and their parent domain's conditions are true.",
          items = {
            type = "string",
          },
          type = "array",
        },
        conditionallyForcedExpTags = {
          description = "Set of experiment tags to be conditionally forced. The experiments with these tags will be forced only if their conditions and their parent domain's conditions are true.",
          items = {
            type = "string",
          },
          type = "array",
        },
        conditionallyForcedExps = {
          description = "Set of experiment ids to be conditionally forced. These ids will be forced only if their conditions and their parent domain's conditions are true.",
          items = {
            format = "int32",
            type = "integer",
          },
          type = "array",
        },
        disableAutomaticEnrollmentSelection = {
          description = "If true, disable automatic enrollment selection (at all diversion points). Automatic enrollment selection means experiment selection process based on the experiment's automatic enrollment condition. This does not disable selection of forced experiments. Setting this field to false does not change anything in the experiment selection process.",
          type = "boolean",
        },
        disableExpNames = {
          description = "Set of experiment names to be disabled. If an experiment is disabled, it is never selected nor forced. If an aggregate experiment is disabled, its partitions are disabled together. If an experiment with an enrollment is disabled, the enrollment is disabled together. If a name corresponds to a domain, the domain itself and all descendant experiments and domains are disabled together.",
          items = {
            type = "string",
          },
          type = "array",
        },
        disableExpTags = {
          description = "Set of experiment tags to be disabled. All experiments that are tagged with one or more of these tags are disabled. If an experiment is disabled, it is never selected nor forced. If an aggregate experiment is disabled, its partitions are disabled together. If an experiment with an enrollment is disabled, the enrollment is disabled together.",
          items = {
            type = "string",
          },
          type = "array",
        },
        disableExps = {
          description = "Set of experiment ids to be disabled. If an experiment is disabled, it is never selected nor forced. If an aggregate experiment is disabled, its partitions are disabled together. If an experiment with an enrollment is disabled, the enrollment is disabled together. If an ID corresponds to a domain, the domain itself and all descendant experiments and domains are disabled together.",
          items = {
            format = "int32",
            type = "integer",
          },
          type = "array",
        },
        disableManualEnrollmentSelection = {
          description = "If true, disable manual enrollment selection (at all diversion points). Manual enrollment selection means experiment selection process based on the request's manual enrollment states (a.k.a. opt-in experiments). This does not disable selection of forced experiments. Setting this field to false does not change anything in the experiment selection process.",
          type = "boolean",
        },
        disableOrganicSelection = {
          description = "If true, disable organic experiment selection (at all diversion points). Organic selection means experiment selection process based on traffic allocation and diversion condition evaluation. This does not disable selection of forced experiments. This is useful in cases when it is not known whether experiment selection behavior is responsible for a error or breakage. Disabling organic selection may help to isolate the cause of a given problem. Setting this field to false does not change anything in the experiment selection process.",
          type = "boolean",
        },
        forcedFlags = {
          additionalProperties = {
            type = "string",
          },
          description = "Flags to force in a particular experiment state. Map from flag name to flag value.",
          type = "object",
        },
        forcedRollouts = {
          additionalProperties = {
            type = "boolean",
          },
          description = "Rollouts to force in a particular experiment state. Map from rollout name to rollout value.",
          type = "object",
        },
        testingMode = {
          description = "Sets different testing modes. See the documentation in the TestingMode message for more information.",
          enum = {
            "TESTING_MODE_UNSPECIFIED",
            "TESTING_MODE_ALL_OFF",
            "TESTING_MODE_ALL_ON",
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
    NumericBucketingOption = {
      description = "Input only. Use this field to specify bucketing option for the histogram search response.",
      id = "NumericBucketingOption",
      properties = {
        bucketBounds = {
          description = "Required. Two adjacent values form a histogram bucket. Values should be in ascending order. For example, if [5, 10, 15] are provided, four buckets are created: (-inf, 5), 5, 10), [10, 15), [15, inf). At most 20 [buckets_bound is supported.",
          items = {
            format = "double",
            type = "number",
          },
          type = "array",
        },
        requiresMinMax = {
          description = "Optional. If set to true, the histogram result includes minimum/maximum value of the numeric field.",
          type = "boolean",
        },
      },
      type = "object",
    },
    NumericBucketingResult = {
      description = "Output only. Custom numeric bucketing result.",
      id = "NumericBucketingResult",
      properties = {
        counts = {
          description = "Count within each bucket. Its size is the length of NumericBucketingOption.bucket_bounds plus 1.",
          items = {
            ["$ref"] = "BucketizedCount",
          },
          type = "array",
        },
        maxValue = {
          description = "Stores the maximum value of the numeric field. Is populated only if [NumericBucketingOption.requires_min_max] is set to true.",
          format = "double",
          type = "number",
        },
        minValue = {
          description = "Stores the minimum value of the numeric field. Will be populated only if [NumericBucketingOption.requires_min_max] is set to true.",
          format = "double",
          type = "number",
        },
      },
      type = "object",
    },
    PostalAddress = {
      description = "Represents a postal address, e.g. for postal delivery or payments addresses. Given a postal address, a postal service can deliver items to a premise, P.O. Box or similar. It is not intended to model geographical locations (roads, towns, mountains). In typical usage an address would be created via user input or from importing existing data, depending on the type of process. Advice on address input / editing: - Use an internationalization-ready address widget such as https://github.com/google/libaddressinput) - Users should not be presented with UI elements for input or editing of fields outside countries where that field is used. For more guidance on how to use this schema, please see: https://support.google.com/business/answer/6397478",
      id = "PostalAddress",
      properties = {
        addressLines = {
          description = "Unstructured address lines describing the lower levels of an address. Because values in address_lines do not have type information and may sometimes contain multiple values in a single field (e.g. \"Austin, TX\"), it is important that the line order is clear. The order of address lines should be \"envelope order\" for the country/region of the address. In places where this can vary (e.g. Japan), address_language is used to make it explicit (e.g. \"ja\" for large-to-small ordering and \"ja-Latn\" or \"en\" for small-to-large). This way, the most specific line of an address can be selected based on the language. The minimum permitted structural representation of an address consists of a region_code with all remaining information placed in the address_lines. It would be possible to format such an address very approximately without geocoding, but no semantic reasoning could be made about any of the address components until it was at least partially resolved. Creating an address only containing a region_code and address_lines, and then geocoding is the recommended way to handle completely unstructured addresses (as opposed to guessing which parts of the address should be localities or administrative areas).",
          items = {
            type = "string",
          },
          type = "array",
        },
        administrativeArea = {
          description = "Optional. Highest administrative subdivision which is used for postal addresses of a country or region. For example, this can be a state, a province, an oblast, or a prefecture. Specifically, for Spain this is the province and not the autonomous community (e.g. \"Barcelona\" and not \"Catalonia\"). Many countries don't use an administrative area in postal addresses. E.g. in Switzerland this should be left unpopulated.",
          type = "string",
        },
        languageCode = {
          description = "Optional. BCP-47 language code of the contents of this address (if known). This is often the UI language of the input form or is expected to match one of the languages used in the address' country/region, or their transliterated equivalents. This can affect formatting in certain countries, but is not critical to the correctness of the data and will never affect any validation or other non-formatting related operations. If this value is not known, it should be omitted (rather than specifying a possibly incorrect default). Examples: \"zh-Hant\", \"ja\", \"ja-Latn\", \"en\".",
          type = "string",
        },
        locality = {
          description = "Optional. Generally refers to the city/town portion of the address. Examples: US city, IT comune, UK post town. In regions of the world where localities are not well defined or do not fit into this structure well, leave locality empty and use address_lines.",
          type = "string",
        },
        organization = {
          description = "Optional. The name of the organization at the address.",
          type = "string",
        },
        postalCode = {
          description = "Optional. Postal code of the address. Not all countries use or require postal codes to be present, but where they are used, they may trigger additional validation with other parts of the address (e.g. state/zip validation in the U.S.A.).",
          type = "string",
        },
        recipients = {
          description = "Optional. The recipient at the address. This field may, under certain circumstances, contain multiline information. For example, it might contain \"care of\" information.",
          items = {
            type = "string",
          },
          type = "array",
        },
        regionCode = {
          description = "Required. CLDR region code of the country/region of the address. This is never inferred and it is up to the user to ensure the value is correct. See https://cldr.unicode.org/ and https://www.unicode.org/cldr/charts/30/supplemental/territory_information.html for details. Example: \"CH\" for Switzerland.",
          type = "string",
        },
        revision = {
          description = "The schema revision of the `PostalAddress`. This must be set to 0, which is the latest revision. All new revisions **must** be backward compatible with old revisions.",
          format = "int32",
          type = "integer",
        },
        sortingCode = {
          description = "Optional. Additional, country-specific, sorting code. This is not used in most regions. Where it is used, the value is either a string like \"CEDEX\", optionally followed by a number (e.g. \"CEDEX 7\"), or just a number alone, representing the \"sector code\" (Jamaica), \"delivery area indicator\" (Malawi) or \"post office indicator\" (e.g. Côte d'Ivoire).",
          type = "string",
        },
        sublocality = {
          description = "Optional. Sublocality of the address. For example, this can be neighborhoods, boroughs, districts.",
          type = "string",
        },
      },
      type = "object",
    },
    ProcessingOptions = {
      description = "Input only. Options for job processing.",
      id = "ProcessingOptions",
      properties = {
        disableStreetAddressResolution = {
          description = "Optional. If set to `true`, the service does not attempt to resolve a more precise address for the job.",
          type = "boolean",
        },
        htmlSanitization = {
          description = "Optional. Option for job HTML content sanitization. Applied fields are: * description * applicationInfo.instruction * incentives * qualifications * responsibilities HTML tags in these fields may be stripped if sanitiazation is not disabled. Defaults to HtmlSanitization.SIMPLE_FORMATTING_ONLY.",
          enum = {
            "HTML_SANITIZATION_UNSPECIFIED",
            "HTML_SANITIZATION_DISABLED",
            "SIMPLE_FORMATTING_ONLY",
          },
          enumDescriptions = {
            "Default value.",
            "Disables sanitization on HTML input.",
            "Sanitizes HTML input, only accepts bold, italic, ordered list, and unordered list markup tags.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    RequestMetadata = {
      description = "Input only. Meta information related to the job searcher or entity conducting the job search. This information is used to improve the performance of the service.",
      id = "RequestMetadata",
      properties = {
        deviceInfo = {
          ["$ref"] = "DeviceInfo",
          description = "Optional. The type of device used by the job seeker at the time of the call to the service.",
        },
        domain = {
          description = "Required. The client-defined scope or source of the service call, which typically is the domain on which the service has been implemented and is currently being run. For example, if the service is being run by client *Foo, Inc.*, on job board www.foo.com and career site www.bar.com, then this field is set to \"foo.com\" for use on the job board, and \"bar.com\" for use on the career site. If this field isn't available for some reason, send \"UNKNOWN\". Any improvements to the model for a particular tenant site rely on this field being set correctly to a domain. The maximum number of allowed characters is 255.",
          type = "string",
        },
        sessionId = {
          description = "Required. A unique session identification string. A session is defined as the duration of an end user's interaction with the service over a certain period. Obfuscate this field for privacy concerns before providing it to the service. If this field is not available for some reason, send \"UNKNOWN\". Note that any improvements to the model for a particular tenant site, rely on this field being set correctly to some unique session_id. The maximum number of allowed characters is 255.",
          type = "string",
        },
        userId = {
          description = "Required. A unique user identification string, as determined by the client. To have the strongest positive impact on search quality make sure the client-level is unique. Obfuscate this field for privacy concerns before providing it to the service. If this field is not available for some reason, send \"UNKNOWN\". Note that any improvements to the model for a particular tenant site, rely on this field being set correctly to a unique user_id. The maximum number of allowed characters is 255.",
          type = "string",
        },
      },
      type = "object",
    },
    ResponseMetadata = {
      description = "Output only. Additional information returned to client, such as debugging information.",
      id = "ResponseMetadata",
      properties = {
        requestId = {
          description = "A unique id associated with this call. This id is logged for tracking purposes.",
          type = "string",
        },
      },
      type = "object",
    },
    SearchJobsRequest = {
      description = "Input only. The Request body of the `SearchJobs` call.",
      id = "SearchJobsRequest",
      properties = {
        disableKeywordMatch = {
          description = "Optional. Controls whether to disable exact keyword match on Job.job_title, Job.description, Job.company_display_name, Job.locations, Job.qualifications. When disable keyword match is turned off, a keyword match returns jobs that do not match given category filters when there are matching keywords. For example, the query \"program manager,\" a result is returned even if the job posting has the title \"software developer,\" which does not fall into \"program manager\" ontology, but does have \"program manager\" appearing in its description. For queries like \"cloud\" that does not contain title or location specific ontology, jobs with \"cloud\" keyword matches are returned regardless of this flag's value. Please use Company.keyword_searchable_custom_fields or Company.keyword_searchable_custom_attributes if company specific globally matched custom field/attribute string values is needed. Enabling keyword match improves recall of subsequent search requests. Defaults to false.",
          type = "boolean",
        },
        diversificationLevel = {
          description = "Optional. Controls whether highly similar jobs are returned next to each other in the search results. Jobs are identified as highly similar based on their titles, job categories, and locations. Highly similar results are clustered so that only one representative job of the cluster is displayed to the job seeker higher up in the results, with the other jobs being displayed lower down in the results. Defaults to DiversificationLevel.SIMPLE if no value is specified.",
          enum = {
            "DIVERSIFICATION_LEVEL_UNSPECIFIED",
            "DISABLED",
            "SIMPLE",
          },
          enumDescriptions = {
            "The diversification level isn't specified. By default, jobs with this enum are ordered according to SIMPLE diversifying behavior.",
            "Disables diversification. Jobs that would normally be pushed to the last page would not have their positions altered. This may result in highly similar jobs appearing in sequence in the search results.",
            "Default diversifying behavior. The result list is ordered so that highly similar results are pushed to the end of the last page of search results.",
          },
          type = "string",
        },
        enableBroadening = {
          description = "Optional. Controls whether to broaden the search when it produces sparse results. Broadened queries append results to the end of the matching results list. Defaults to false.",
          type = "boolean",
        },
        histogramFacets = {
          ["$ref"] = "HistogramFacets",
          description = "Optional. Histogram requests for jobs matching JobQuery.",
        },
        jobQuery = {
          ["$ref"] = "JobQuery",
          description = "Optional. Query used to search against jobs, such as keyword, location filters, etc.",
        },
        jobView = {
          description = "Optional. The desired job attributes returned for jobs in the search response. Defaults to JobView.SMALL if no value is specified.",
          enum = {
            "JOB_VIEW_UNSPECIFIED",
            "JOB_VIEW_ID_ONLY",
            "JOB_VIEW_MINIMAL",
            "JOB_VIEW_SMALL",
            "JOB_VIEW_FULL",
          },
          enumDescriptions = {
            "Default value.",
            "A ID only view of job, with following attributes: Job.name, Job.requisition_id, Job.language_code.",
            "A minimal view of the job, with the following attributes: Job.name, Job.requisition_id, Job.title, Job.company_name, Job.DerivedInfo.locations, Job.language_code.",
            "A small view of the job, with the following attributes in the search results: Job.name, Job.requisition_id, Job.title, Job.company_name, Job.DerivedInfo.locations, Job.visibility, Job.language_code, Job.description.",
            "All available attributes are included in the search results.",
          },
          type = "string",
        },
        offset = {
          description = "Optional. An integer that specifies the current offset (that is, starting result location, amongst the jobs deemed by the API as relevant) in search results. This field is only considered if page_token is unset. The maximum allowed value is 5000. Otherwise an error is thrown. For example, 0 means to return results starting from the first matching job, and 10 means to return from the 11th job. This can be used for pagination, (for example, pageSize = 10 and offset = 10 means to return from the second page).",
          format = "int32",
          type = "integer",
        },
        orderBy = {
          description = "Optional. The criteria determining how search results are sorted. Default is \"relevance desc\". Supported options are: * `\"relevance desc\"`: By relevance descending, as determined by the API algorithms. Relevance thresholding of query results is only available with this ordering. * `\"posting_publish_time desc\"`: By Job.posting_publish_time descending. * `\"posting_update_time desc\"`: By Job.posting_update_time descending. * `\"title\"`: By Job.title ascending. * `\"title desc\"`: By Job.title descending. * `\"annualized_base_compensation\"`: By job's CompensationInfo.annualized_base_compensation_range ascending. Jobs whose annualized base compensation is unspecified are put at the end of search results. * `\"annualized_base_compensation desc\"`: By job's CompensationInfo.annualized_base_compensation_range descending. Jobs whose annualized base compensation is unspecified are put at the end of search results. * `\"annualized_total_compensation\"`: By job's CompensationInfo.annualized_total_compensation_range ascending. Jobs whose annualized base compensation is unspecified are put at the end of search results. * `\"annualized_total_compensation desc\"`: By job's CompensationInfo.annualized_total_compensation_range descending. Jobs whose annualized base compensation is unspecified are put at the end of search results.",
          type = "string",
        },
        pageSize = {
          description = "Optional. A limit on the number of jobs returned in the search results. Increasing this value above the default value of 10 can increase search response time. The value can be between 1 and 100.",
          format = "int32",
          type = "integer",
        },
        pageToken = {
          description = "Optional. The token specifying the current offset within search results. See SearchJobsResponse.next_page_token for an explanation of how to obtain the next set of query results.",
          type = "string",
        },
        requestMetadata = {
          ["$ref"] = "RequestMetadata",
          description = "Required. The meta information collected about the job searcher, used to improve the search quality of the service. The identifiers (such as `user_id`) are provided by users, and must be unique and consistent.",
        },
        requirePreciseResultSize = {
          description = "This field is deprecated.",
          type = "boolean",
        },
        searchMode = {
          description = "Optional. Mode of a search. Defaults to SearchMode.JOB_SEARCH.",
          enum = {
            "SEARCH_MODE_UNSPECIFIED",
            "JOB_SEARCH",
            "FEATURED_JOB_SEARCH",
          },
          enumDescriptions = {
            "The mode of the search method isn't specified. The default search behavior is identical to JOB_SEARCH search behavior.",
            "The job search matches against all jobs, and featured jobs (jobs with promotionValue > 0) are not specially handled.",
            "The job search matches only against featured jobs (jobs with a promotionValue > 0). This method doesn't return any jobs having a promotionValue <= 0. The search results order is determined by the promotionValue (jobs with a higher promotionValue are returned higher up in the search results), with relevance being used as a tiebreaker.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    SearchJobsResponse = {
      description = "Output only. Response for SearchJob method.",
      id = "SearchJobsResponse",
      properties = {
        broadenedQueryJobsCount = {
          description = "If query broadening is enabled, we may append additional results from the broadened query. This number indicates how many of the jobs returned in the jobs field are from the broadened query. These results are always at the end of the jobs list. In particular, a value of 0, or if the field isn't set, all the jobs in the jobs list are from the original (without broadening) query. If this field is non-zero, subsequent requests with offset after this result set should contain all broadened results.",
          format = "int32",
          type = "integer",
        },
        estimatedTotalSize = {
          description = "An estimation of the number of jobs that match the specified query. This number is not guaranteed to be accurate. For accurate results, see SearchJobsResponse.total_size.",
          format = "int32",
          type = "integer",
        },
        histogramResults = {
          ["$ref"] = "HistogramResults",
          description = "The histogram results that match specified SearchJobsRequest.histogram_facets.",
        },
        locationFilters = {
          description = "The location filters that the service applied to the specified query. If any filters are lat-lng based, the JobLocation.location_type is JobLocation.LocationType#LOCATION_TYPE_UNSPECIFIED.",
          items = {
            ["$ref"] = "Location",
          },
          type = "array",
        },
        matchingJobs = {
          description = "The Job entities that match the specified SearchJobsRequest.",
          items = {
            ["$ref"] = "MatchingJob",
          },
          type = "array",
        },
        metadata = {
          ["$ref"] = "ResponseMetadata",
          description = "Additional information for the API invocation, such as the request tracking id.",
        },
        nextPageToken = {
          description = "The token that specifies the starting position of the next page of results. This field is empty if there are no more results.",
          type = "string",
        },
        spellCorrection = {
          ["$ref"] = "SpellingCorrection",
          description = "The spell checking result, and correction.",
        },
        totalSize = {
          description = "The precise result count with limit 100,000.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    SpellingCorrection = {
      description = "Output only. Spell check result.",
      id = "SpellingCorrection",
      properties = {
        corrected = {
          description = "Indicates if the query was corrected by the spell checker.",
          type = "boolean",
        },
        correctedText = {
          description = "Correction output consisting of the corrected keyword string.",
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
    TimestampRange = {
      description = "Message representing a period of time between two timestamps.",
      id = "TimestampRange",
      properties = {
        endTime = {
          description = "End of the period.",
          format = "google-datetime",
          type = "string",
        },
        startTime = {
          description = "Begin of the period.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    UpdateCompanyRequest = {
      description = "Input only. Request for updating a specified company.",
      id = "UpdateCompanyRequest",
      properties = {
        company = {
          ["$ref"] = "Company",
          description = "Required. The company resource to replace the current resource in the system.",
        },
        updateMask = {
          description = "Optional but strongly recommended for the best service experience. If update_mask is provided, only the specified fields in company are updated. Otherwise all the fields are updated. A field mask to specify the company fields to be updated. Only top level fields of Company are supported.",
          format = "google-fieldmask",
          type = "string",
        },
      },
      type = "object",
    },
    UpdateJobRequest = {
      description = "Input only. Update job request.",
      id = "UpdateJobRequest",
      properties = {
        job = {
          ["$ref"] = "Job",
          description = "Required. The Job to be updated.",
        },
        updateMask = {
          description = "Optional but strongly recommended to be provided for the best service experience. If update_mask is provided, only the specified fields in job are updated. Otherwise all the fields are updated. A field mask to restrict the fields that are updated. Only top level fields of Job are supported.",
          format = "google-fieldmask",
          type = "string",
        },
      },
      type = "object",
    },
  },
  servicePath = "",
  title = "Cloud Talent Solution API",
  version = "v3",
  version_module = true,
}
