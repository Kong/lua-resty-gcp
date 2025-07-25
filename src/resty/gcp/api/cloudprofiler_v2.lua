return {
  auth = {
    oauth2 = {
      scopes = {
        ["https://www.googleapis.com/auth/cloud-platform"] = {
          description = "See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account.",
        },
        ["https://www.googleapis.com/auth/monitoring"] = {
          description = "View and write monitoring data for all of your Google and third-party Cloud and API projects",
        },
        ["https://www.googleapis.com/auth/monitoring.write"] = {
          description = "Publish metric data to your Google Cloud projects",
        },
      },
    },
  },
  basePath = "",
  baseUrl = "https://cloudprofiler.googleapis.com/",
  batchPath = "batch",
  canonicalName = "Cloud Profiler",
  description = "Manages continuous profiling information.",
  discoveryVersion = "v1",
  documentationLink = "https://cloud.google.com/profiler/",
  fullyEncodeReservedExpansion = true,
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "cloudprofiler:v2",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://cloudprofiler.mtls.googleapis.com/",
  name = "cloudprofiler",
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
        profiles = {
          methods = {
            create = {
              description = "CreateProfile creates a new profile resource in the online mode. The server ensures that the new profiles are created at a constant rate per deployment, so the creation request may hang for some time until the next profile session is available. The request may fail with ABORTED error if the creation is not available within ~1m, the response will indicate the duration of the backoff the client should take before attempting creating a profile again. The backoff duration is returned in google.rpc.RetryInfo extension on the response status. To a gRPC client, the extension will be return as a binary-serialized proto in the trailing metadata item named \"google.rpc.retryinfo-bin\". ",
              flatPath = "v2/projects/{projectsId}/profiles",
              httpMethod = "POST",
              id = "cloudprofiler.projects.profiles.create",
              parameterOrder = {
                "parent",
              },
              parameters = {
                parent = {
                  description = "Parent project to create the profile in.",
                  location = "path",
                  pattern = "^projects/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v2/{+parent}/profiles",
              request = {
                ["$ref"] = "CreateProfileRequest",
              },
              response = {
                ["$ref"] = "Profile",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/monitoring",
                "https://www.googleapis.com/auth/monitoring.write",
              },
            },
            createOffline = {
              description = "CreateOfflineProfile creates a new profile resource in the offline mode. The client provides the profile to create along with the profile bytes, the server records it.",
              flatPath = "v2/projects/{projectsId}/profiles:createOffline",
              httpMethod = "POST",
              id = "cloudprofiler.projects.profiles.createOffline",
              parameterOrder = {
                "parent",
              },
              parameters = {
                parent = {
                  description = "Parent project to create the profile in.",
                  location = "path",
                  pattern = "^projects/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v2/{+parent}/profiles:createOffline",
              request = {
                ["$ref"] = "Profile",
              },
              response = {
                ["$ref"] = "Profile",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/monitoring",
                "https://www.googleapis.com/auth/monitoring.write",
              },
            },
            patch = {
              description = "UpdateProfile updates the profile bytes and labels on the profile resource created in the online mode. Updating the bytes for profiles created in the offline mode is currently not supported: the profile content must be provided at the time of the profile creation.",
              flatPath = "v2/projects/{projectsId}/profiles/{profilesId}",
              httpMethod = "PATCH",
              id = "cloudprofiler.projects.profiles.patch",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Output only. Opaque, server-assigned, unique ID for this profile.",
                  location = "path",
                  pattern = "^projects/[^/]+/profiles/[^/]+$",
                  required = true,
                  type = "string",
                },
                updateMask = {
                  description = "Field mask used to specify the fields to be overwritten. Currently only profile_bytes and labels fields are supported by UpdateProfile, so only those fields can be specified in the mask. When no mask is provided, all fields are overwritten.",
                  format = "google-fieldmask",
                  location = "query",
                  type = "string",
                },
              },
              path = "v2/{+name}",
              request = {
                ["$ref"] = "Profile",
              },
              response = {
                ["$ref"] = "Profile",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/monitoring",
                "https://www.googleapis.com/auth/monitoring.write",
              },
            },
          },
        },
      },
    },
  },
  revision = "20230109",
  rootUrl = "https://cloudprofiler.googleapis.com/",
  schemas = {
    CreateProfileRequest = {
      description = "CreateProfileRequest describes a profile resource online creation request. The deployment field must be populated. The profile_type specifies the list of profile types supported by the agent. The creation call will hang until a profile of one of these types needs to be collected. ",
      id = "CreateProfileRequest",
      properties = {
        deployment = {
          ["$ref"] = "Deployment",
          description = "Required. Deployment details.",
        },
        profileType = {
          description = "Required. One or more profile types that the agent is capable of providing.",
          items = {
            enum = {
              "PROFILE_TYPE_UNSPECIFIED",
              "CPU",
              "WALL",
              "HEAP",
              "THREADS",
              "CONTENTION",
              "PEAK_HEAP",
              "HEAP_ALLOC",
            },
            enumDescriptions = {
              "Unspecified profile type.",
              "Thread CPU time sampling.",
              "Wallclock time sampling. More expensive as stops all threads.",
              "In-use heap profile. Represents a snapshot of the allocations that are live at the time of the profiling.",
              "Single-shot collection of all thread stacks.",
              "Synchronization contention profile.",
              "Peak heap profile.",
              "Heap allocation profile. It represents the aggregation of all allocations made over the duration of the profile. All allocations are included, including those that might have been freed by the end of the profiling interval. The profile is in particular useful for garbage collecting languages to understand which parts of the code create most of the garbage collection pressure to see if those can be optimized.",
            },
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    Deployment = {
      description = "Deployment contains the deployment identification information.",
      id = "Deployment",
      properties = {
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "Labels identify the deployment within the user universe and same target. Validation regex for label names: `^[a-z0-9]([a-z0-9-]{0,61}[a-z0-9])?$`. Value for an individual label must be <= 512 bytes, the total size of all label names and values must be <= 1024 bytes. Label named \"language\" can be used to record the programming language of the profiled deployment. The standard choices for the value include \"java\", \"go\", \"python\", \"ruby\", \"nodejs\", \"php\", \"dotnet\". For deployments running on Google Cloud Platform, \"zone\" or \"region\" label should be present describing the deployment location. An example of a zone is \"us-central1-a\", an example of a region is \"us-central1\" or \"us-central\".",
          type = "object",
        },
        projectId = {
          description = "Project ID is the ID of a cloud project. Validation regex: `^a-z{4,61}[a-z0-9]$`.",
          type = "string",
        },
        target = {
          description = "Target is the service name used to group related deployments: * Service name for App Engine Flex / Standard. * Cluster and container name for GKE. * User-specified string for direct Compute Engine profiling (e.g. Java). * Job name for Dataflow. Validation regex: `^[a-z0-9]([-a-z0-9_.]{0,253}[a-z0-9])?$`.",
          type = "string",
        },
      },
      type = "object",
    },
    Profile = {
      description = "Profile resource.",
      id = "Profile",
      properties = {
        deployment = {
          ["$ref"] = "Deployment",
          description = "Deployment this profile corresponds to.",
        },
        duration = {
          description = "Duration of the profiling session. Input (for the offline mode) or output (for the online mode). The field represents requested profiling duration. It may slightly differ from the effective profiling duration, which is recorded in the profile data, in case the profiling can't be stopped immediately (e.g. in case stopping the profiling is handled asynchronously).",
          format = "google-duration",
          type = "string",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "Input only. Labels associated to this specific profile. These labels will get merged with the deployment labels for the final data set. See documentation on deployment labels for validation rules and limits.",
          type = "object",
        },
        name = {
          description = "Output only. Opaque, server-assigned, unique ID for this profile.",
          readOnly = true,
          type = "string",
        },
        profileBytes = {
          description = "Input only. Profile bytes, as a gzip compressed serialized proto, the format is https://github.com/google/pprof/blob/master/proto/profile.proto.",
          format = "byte",
          type = "string",
        },
        profileType = {
          description = "Type of profile. For offline mode, this must be specified when creating the profile. For online mode it is assigned and returned by the server.",
          enum = {
            "PROFILE_TYPE_UNSPECIFIED",
            "CPU",
            "WALL",
            "HEAP",
            "THREADS",
            "CONTENTION",
            "PEAK_HEAP",
            "HEAP_ALLOC",
          },
          enumDescriptions = {
            "Unspecified profile type.",
            "Thread CPU time sampling.",
            "Wallclock time sampling. More expensive as stops all threads.",
            "In-use heap profile. Represents a snapshot of the allocations that are live at the time of the profiling.",
            "Single-shot collection of all thread stacks.",
            "Synchronization contention profile.",
            "Peak heap profile.",
            "Heap allocation profile. It represents the aggregation of all allocations made over the duration of the profile. All allocations are included, including those that might have been freed by the end of the profiling interval. The profile is in particular useful for garbage collecting languages to understand which parts of the code create most of the garbage collection pressure to see if those can be optimized.",
          },
          type = "string",
        },
      },
      type = "object",
    },
  },
  servicePath = "",
  title = "Stackdriver Profiler API",
  version = "v2",
  version_module = true,
}
