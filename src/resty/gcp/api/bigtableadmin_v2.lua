return {
  auth = {
    oauth2 = {
      scopes = {
        ["https://www.googleapis.com/auth/bigtable.admin"] = {
          description = "Administer your Cloud Bigtable tables and clusters",
        },
        ["https://www.googleapis.com/auth/bigtable.admin.cluster"] = {
          description = "Administer your Cloud Bigtable clusters",
        },
        ["https://www.googleapis.com/auth/bigtable.admin.instance"] = {
          description = "Administer your Cloud Bigtable clusters",
        },
        ["https://www.googleapis.com/auth/bigtable.admin.table"] = {
          description = "Administer your Cloud Bigtable tables",
        },
        ["https://www.googleapis.com/auth/cloud-bigtable.admin"] = {
          description = "Administer your Cloud Bigtable tables and clusters",
        },
        ["https://www.googleapis.com/auth/cloud-bigtable.admin.cluster"] = {
          description = "Administer your Cloud Bigtable clusters",
        },
        ["https://www.googleapis.com/auth/cloud-bigtable.admin.table"] = {
          description = "Administer your Cloud Bigtable tables",
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
  baseUrl = "https://bigtableadmin.googleapis.com/",
  batchPath = "batch",
  canonicalName = "Bigtable Admin",
  description = "Administer your Cloud Bigtable tables and instances.",
  discoveryVersion = "v1",
  documentationLink = "https://cloud.google.com/bigtable/",
  fullyEncodeReservedExpansion = true,
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "bigtableadmin:v2",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://bigtableadmin.mtls.googleapis.com/",
  name = "bigtableadmin",
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
    operations = {
      methods = {
        cancel = {
          description = "Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of 1, corresponding to `Code.CANCELLED`.",
          flatPath = "v2/operations/{operationsId}:cancel",
          httpMethod = "POST",
          id = "bigtableadmin.operations.cancel",
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
          path = "v2/{+name}:cancel",
          response = {
            ["$ref"] = "Empty",
          },
          scopes = {
            "https://www.googleapis.com/auth/bigtable.admin",
            "https://www.googleapis.com/auth/bigtable.admin.cluster",
            "https://www.googleapis.com/auth/bigtable.admin.instance",
            "https://www.googleapis.com/auth/cloud-bigtable.admin",
            "https://www.googleapis.com/auth/cloud-bigtable.admin.cluster",
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
        delete = {
          description = "Deletes a long-running operation. This method indicates that the client is no longer interested in the operation result. It does not cancel the operation. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.",
          flatPath = "v2/operations/{operationsId}",
          httpMethod = "DELETE",
          id = "bigtableadmin.operations.delete",
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
          path = "v2/{+name}",
          response = {
            ["$ref"] = "Empty",
          },
          scopes = {
            "https://www.googleapis.com/auth/bigtable.admin",
            "https://www.googleapis.com/auth/bigtable.admin.cluster",
            "https://www.googleapis.com/auth/bigtable.admin.instance",
            "https://www.googleapis.com/auth/cloud-bigtable.admin",
            "https://www.googleapis.com/auth/cloud-bigtable.admin.cluster",
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
        get = {
          description = "Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.",
          flatPath = "v2/operations/{operationsId}",
          httpMethod = "GET",
          id = "bigtableadmin.operations.get",
          parameterOrder = {
            "name",
          },
          parameters = {
            name = {
              description = "The name of the operation resource.",
              location = "path",
              pattern = "^operations/.*$",
              required = true,
              type = "string",
            },
          },
          path = "v2/{+name}",
          response = {
            ["$ref"] = "Operation",
          },
          scopes = {
            "https://www.googleapis.com/auth/bigtable.admin",
            "https://www.googleapis.com/auth/bigtable.admin.cluster",
            "https://www.googleapis.com/auth/bigtable.admin.instance",
            "https://www.googleapis.com/auth/cloud-bigtable.admin",
            "https://www.googleapis.com/auth/cloud-bigtable.admin.cluster",
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/cloud-platform.read-only",
          },
        },
      },
      resources = {
        projects = {
          resources = {
            operations = {
              methods = {
                list = {
                  description = "Lists operations that match the specified filter in the request. If the server doesn't support this method, it returns `UNIMPLEMENTED`. NOTE: the `name` binding allows API services to override the binding to use different resource name schemes, such as `users/*/operations`. To override the binding, API services can add a binding such as `\"/v1/{name=users/*}/operations\"` to their service configuration. For backwards compatibility, the default name includes the operations collection id, however overriding users must ensure the name binding is the parent resource, without the operations collection id.",
                  flatPath = "v2/operations/projects/{projectsId}/operations",
                  httpMethod = "GET",
                  id = "bigtableadmin.operations.projects.operations.list",
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
                      pattern = "^operations/projects/.*$",
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
                  path = "v2/{+name}/operations",
                  response = {
                    ["$ref"] = "ListOperationsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/bigtable.admin",
                    "https://www.googleapis.com/auth/bigtable.admin.cluster",
                    "https://www.googleapis.com/auth/bigtable.admin.instance",
                    "https://www.googleapis.com/auth/cloud-bigtable.admin",
                    "https://www.googleapis.com/auth/cloud-bigtable.admin.cluster",
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
    projects = {
      resources = {
        instances = {
          methods = {
            create = {
              description = "Create an instance within a project. Note that exactly one of Cluster.serve_nodes and Cluster.cluster_config.cluster_autoscaling_config can be set. If serve_nodes is set to non-zero, then the cluster is manually scaled. If cluster_config.cluster_autoscaling_config is non-empty, then autoscaling is enabled.",
              flatPath = "v2/projects/{projectsId}/instances",
              httpMethod = "POST",
              id = "bigtableadmin.projects.instances.create",
              parameterOrder = {
                "parent",
              },
              parameters = {
                parent = {
                  description = "Required. The unique name of the project in which to create the new instance. Values are of the form `projects/{project}`.",
                  location = "path",
                  pattern = "^projects/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v2/{+parent}/instances",
              request = {
                ["$ref"] = "CreateInstanceRequest",
              },
              response = {
                ["$ref"] = "Operation",
              },
              scopes = {
                "https://www.googleapis.com/auth/bigtable.admin",
                "https://www.googleapis.com/auth/bigtable.admin.cluster",
                "https://www.googleapis.com/auth/bigtable.admin.instance",
                "https://www.googleapis.com/auth/cloud-bigtable.admin",
                "https://www.googleapis.com/auth/cloud-bigtable.admin.cluster",
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            delete = {
              description = "Delete an instance from a project.",
              flatPath = "v2/projects/{projectsId}/instances/{instancesId}",
              httpMethod = "DELETE",
              id = "bigtableadmin.projects.instances.delete",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. The unique name of the instance to be deleted. Values are of the form `projects/{project}/instances/{instance}`.",
                  location = "path",
                  pattern = "^projects/[^/]+/instances/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v2/{+name}",
              response = {
                ["$ref"] = "Empty",
              },
              scopes = {
                "https://www.googleapis.com/auth/bigtable.admin",
                "https://www.googleapis.com/auth/bigtable.admin.cluster",
                "https://www.googleapis.com/auth/bigtable.admin.instance",
                "https://www.googleapis.com/auth/cloud-bigtable.admin",
                "https://www.googleapis.com/auth/cloud-bigtable.admin.cluster",
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            get = {
              description = "Gets information about an instance.",
              flatPath = "v2/projects/{projectsId}/instances/{instancesId}",
              httpMethod = "GET",
              id = "bigtableadmin.projects.instances.get",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. The unique name of the requested instance. Values are of the form `projects/{project}/instances/{instance}`.",
                  location = "path",
                  pattern = "^projects/[^/]+/instances/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v2/{+name}",
              response = {
                ["$ref"] = "Instance",
              },
              scopes = {
                "https://www.googleapis.com/auth/bigtable.admin",
                "https://www.googleapis.com/auth/bigtable.admin.cluster",
                "https://www.googleapis.com/auth/bigtable.admin.instance",
                "https://www.googleapis.com/auth/cloud-bigtable.admin",
                "https://www.googleapis.com/auth/cloud-bigtable.admin.cluster",
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/cloud-platform.read-only",
              },
            },
            getIamPolicy = {
              description = "Gets the access control policy for an instance resource. Returns an empty policy if an instance exists but does not have a policy set.",
              flatPath = "v2/projects/{projectsId}/instances/{instancesId}:getIamPolicy",
              httpMethod = "POST",
              id = "bigtableadmin.projects.instances.getIamPolicy",
              parameterOrder = {
                "resource",
              },
              parameters = {
                resource = {
                  description = "REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                  location = "path",
                  pattern = "^projects/[^/]+/instances/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v2/{+resource}:getIamPolicy",
              request = {
                ["$ref"] = "GetIamPolicyRequest",
              },
              response = {
                ["$ref"] = "Policy",
              },
              scopes = {
                "https://www.googleapis.com/auth/bigtable.admin",
                "https://www.googleapis.com/auth/bigtable.admin.cluster",
                "https://www.googleapis.com/auth/bigtable.admin.instance",
                "https://www.googleapis.com/auth/cloud-bigtable.admin",
                "https://www.googleapis.com/auth/cloud-bigtable.admin.cluster",
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            list = {
              description = "Lists information about instances in a project.",
              flatPath = "v2/projects/{projectsId}/instances",
              httpMethod = "GET",
              id = "bigtableadmin.projects.instances.list",
              parameterOrder = {
                "parent",
              },
              parameters = {
                pageToken = {
                  description = "DEPRECATED: This field is unused and ignored.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "Required. The unique name of the project for which a list of instances is requested. Values are of the form `projects/{project}`.",
                  location = "path",
                  pattern = "^projects/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v2/{+parent}/instances",
              response = {
                ["$ref"] = "ListInstancesResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/bigtable.admin",
                "https://www.googleapis.com/auth/bigtable.admin.cluster",
                "https://www.googleapis.com/auth/bigtable.admin.instance",
                "https://www.googleapis.com/auth/cloud-bigtable.admin",
                "https://www.googleapis.com/auth/cloud-bigtable.admin.cluster",
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/cloud-platform.read-only",
              },
            },
            partialUpdateInstance = {
              description = "Partially updates an instance within a project. This method can modify all fields of an Instance and is the preferred way to update an Instance.",
              flatPath = "v2/projects/{projectsId}/instances/{instancesId}",
              httpMethod = "PATCH",
              id = "bigtableadmin.projects.instances.partialUpdateInstance",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "The unique name of the instance. Values are of the form `projects/{project}/instances/a-z+[a-z0-9]`.",
                  location = "path",
                  pattern = "^projects/[^/]+/instances/[^/]+$",
                  required = true,
                  type = "string",
                },
                updateMask = {
                  description = "Required. The subset of Instance fields which should be replaced. Must be explicitly set.",
                  format = "google-fieldmask",
                  location = "query",
                  type = "string",
                },
              },
              path = "v2/{+name}",
              request = {
                ["$ref"] = "Instance",
              },
              response = {
                ["$ref"] = "Operation",
              },
              scopes = {
                "https://www.googleapis.com/auth/bigtable.admin",
                "https://www.googleapis.com/auth/bigtable.admin.cluster",
                "https://www.googleapis.com/auth/bigtable.admin.instance",
                "https://www.googleapis.com/auth/cloud-bigtable.admin",
                "https://www.googleapis.com/auth/cloud-bigtable.admin.cluster",
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            setIamPolicy = {
              description = "Sets the access control policy on an instance resource. Replaces any existing policy.",
              flatPath = "v2/projects/{projectsId}/instances/{instancesId}:setIamPolicy",
              httpMethod = "POST",
              id = "bigtableadmin.projects.instances.setIamPolicy",
              parameterOrder = {
                "resource",
              },
              parameters = {
                resource = {
                  description = "REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                  location = "path",
                  pattern = "^projects/[^/]+/instances/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v2/{+resource}:setIamPolicy",
              request = {
                ["$ref"] = "SetIamPolicyRequest",
              },
              response = {
                ["$ref"] = "Policy",
              },
              scopes = {
                "https://www.googleapis.com/auth/bigtable.admin",
                "https://www.googleapis.com/auth/bigtable.admin.cluster",
                "https://www.googleapis.com/auth/bigtable.admin.instance",
                "https://www.googleapis.com/auth/cloud-bigtable.admin",
                "https://www.googleapis.com/auth/cloud-bigtable.admin.cluster",
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            testIamPermissions = {
              description = "Returns permissions that the caller has on the specified instance resource.",
              flatPath = "v2/projects/{projectsId}/instances/{instancesId}:testIamPermissions",
              httpMethod = "POST",
              id = "bigtableadmin.projects.instances.testIamPermissions",
              parameterOrder = {
                "resource",
              },
              parameters = {
                resource = {
                  description = "REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                  location = "path",
                  pattern = "^projects/[^/]+/instances/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v2/{+resource}:testIamPermissions",
              request = {
                ["$ref"] = "TestIamPermissionsRequest",
              },
              response = {
                ["$ref"] = "TestIamPermissionsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/bigtable.admin",
                "https://www.googleapis.com/auth/bigtable.admin.cluster",
                "https://www.googleapis.com/auth/bigtable.admin.instance",
                "https://www.googleapis.com/auth/cloud-bigtable.admin",
                "https://www.googleapis.com/auth/cloud-bigtable.admin.cluster",
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            update = {
              description = "Updates an instance within a project. This method updates only the display name and type for an Instance. To update other Instance properties, such as labels, use PartialUpdateInstance.",
              flatPath = "v2/projects/{projectsId}/instances/{instancesId}",
              httpMethod = "PUT",
              id = "bigtableadmin.projects.instances.update",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "The unique name of the instance. Values are of the form `projects/{project}/instances/a-z+[a-z0-9]`.",
                  location = "path",
                  pattern = "^projects/[^/]+/instances/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v2/{+name}",
              request = {
                ["$ref"] = "Instance",
              },
              response = {
                ["$ref"] = "Instance",
              },
              scopes = {
                "https://www.googleapis.com/auth/bigtable.admin",
                "https://www.googleapis.com/auth/bigtable.admin.cluster",
                "https://www.googleapis.com/auth/bigtable.admin.instance",
                "https://www.googleapis.com/auth/cloud-bigtable.admin",
                "https://www.googleapis.com/auth/cloud-bigtable.admin.cluster",
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
          },
          resources = {
            appProfiles = {
              methods = {
                create = {
                  description = "Creates an app profile within an instance.",
                  flatPath = "v2/projects/{projectsId}/instances/{instancesId}/appProfiles",
                  httpMethod = "POST",
                  id = "bigtableadmin.projects.instances.appProfiles.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    appProfileId = {
                      description = "Required. The ID to be used when referring to the new app profile within its instance, e.g., just `myprofile` rather than `projects/myproject/instances/myinstance/appProfiles/myprofile`.",
                      location = "query",
                      type = "string",
                    },
                    ignoreWarnings = {
                      description = "If true, ignore safety checks when creating the app profile.",
                      location = "query",
                      type = "boolean",
                    },
                    parent = {
                      description = "Required. The unique name of the instance in which to create the new app profile. Values are of the form `projects/{project}/instances/{instance}`.",
                      location = "path",
                      pattern = "^projects/[^/]+/instances/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v2/{+parent}/appProfiles",
                  request = {
                    ["$ref"] = "AppProfile",
                  },
                  response = {
                    ["$ref"] = "AppProfile",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/bigtable.admin",
                    "https://www.googleapis.com/auth/bigtable.admin.cluster",
                    "https://www.googleapis.com/auth/bigtable.admin.instance",
                    "https://www.googleapis.com/auth/cloud-bigtable.admin",
                    "https://www.googleapis.com/auth/cloud-bigtable.admin.cluster",
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                delete = {
                  description = "Deletes an app profile from an instance.",
                  flatPath = "v2/projects/{projectsId}/instances/{instancesId}/appProfiles/{appProfilesId}",
                  httpMethod = "DELETE",
                  id = "bigtableadmin.projects.instances.appProfiles.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    ignoreWarnings = {
                      description = "Required. If true, ignore safety checks when deleting the app profile.",
                      location = "query",
                      type = "boolean",
                    },
                    name = {
                      description = "Required. The unique name of the app profile to be deleted. Values are of the form `projects/{project}/instances/{instance}/appProfiles/{app_profile}`.",
                      location = "path",
                      pattern = "^projects/[^/]+/instances/[^/]+/appProfiles/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v2/{+name}",
                  response = {
                    ["$ref"] = "Empty",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/bigtable.admin",
                    "https://www.googleapis.com/auth/bigtable.admin.cluster",
                    "https://www.googleapis.com/auth/bigtable.admin.instance",
                    "https://www.googleapis.com/auth/cloud-bigtable.admin",
                    "https://www.googleapis.com/auth/cloud-bigtable.admin.cluster",
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                get = {
                  description = "Gets information about an app profile.",
                  flatPath = "v2/projects/{projectsId}/instances/{instancesId}/appProfiles/{appProfilesId}",
                  httpMethod = "GET",
                  id = "bigtableadmin.projects.instances.appProfiles.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The unique name of the requested app profile. Values are of the form `projects/{project}/instances/{instance}/appProfiles/{app_profile}`.",
                      location = "path",
                      pattern = "^projects/[^/]+/instances/[^/]+/appProfiles/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v2/{+name}",
                  response = {
                    ["$ref"] = "AppProfile",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/bigtable.admin",
                    "https://www.googleapis.com/auth/bigtable.admin.cluster",
                    "https://www.googleapis.com/auth/bigtable.admin.instance",
                    "https://www.googleapis.com/auth/cloud-bigtable.admin",
                    "https://www.googleapis.com/auth/cloud-bigtable.admin.cluster",
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/cloud-platform.read-only",
                  },
                },
                list = {
                  description = "Lists information about app profiles in an instance.",
                  flatPath = "v2/projects/{projectsId}/instances/{instancesId}/appProfiles",
                  httpMethod = "GET",
                  id = "bigtableadmin.projects.instances.appProfiles.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    pageSize = {
                      description = "Maximum number of results per page. A page_size of zero lets the server choose the number of items to return. A page_size which is strictly positive will return at most that many items. A negative page_size will cause an error. Following the first request, subsequent paginated calls are not required to pass a page_size. If a page_size is set in subsequent calls, it must match the page_size given in the first request.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "The value of `next_page_token` returned by a previous call.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The unique name of the instance for which a list of app profiles is requested. Values are of the form `projects/{project}/instances/{instance}`. Use `{instance} = '-'` to list AppProfiles for all Instances in a project, e.g., `projects/myproject/instances/-`.",
                      location = "path",
                      pattern = "^projects/[^/]+/instances/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v2/{+parent}/appProfiles",
                  response = {
                    ["$ref"] = "ListAppProfilesResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/bigtable.admin",
                    "https://www.googleapis.com/auth/bigtable.admin.cluster",
                    "https://www.googleapis.com/auth/bigtable.admin.instance",
                    "https://www.googleapis.com/auth/cloud-bigtable.admin",
                    "https://www.googleapis.com/auth/cloud-bigtable.admin.cluster",
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                patch = {
                  description = "Updates an app profile within an instance.",
                  flatPath = "v2/projects/{projectsId}/instances/{instancesId}/appProfiles/{appProfilesId}",
                  httpMethod = "PATCH",
                  id = "bigtableadmin.projects.instances.appProfiles.patch",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    ignoreWarnings = {
                      description = "If true, ignore safety checks when updating the app profile.",
                      location = "query",
                      type = "boolean",
                    },
                    name = {
                      description = "The unique name of the app profile. Values are of the form `projects/{project}/instances/{instance}/appProfiles/_a-zA-Z0-9*`.",
                      location = "path",
                      pattern = "^projects/[^/]+/instances/[^/]+/appProfiles/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    updateMask = {
                      description = "Required. The subset of app profile fields which should be replaced. If unset, all fields will be replaced.",
                      format = "google-fieldmask",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v2/{+name}",
                  request = {
                    ["$ref"] = "AppProfile",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/bigtable.admin",
                    "https://www.googleapis.com/auth/bigtable.admin.cluster",
                    "https://www.googleapis.com/auth/bigtable.admin.instance",
                    "https://www.googleapis.com/auth/cloud-bigtable.admin",
                    "https://www.googleapis.com/auth/cloud-bigtable.admin.cluster",
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
              },
            },
            clusters = {
              methods = {
                create = {
                  description = "Creates a cluster within an instance. Note that exactly one of Cluster.serve_nodes and Cluster.cluster_config.cluster_autoscaling_config can be set. If serve_nodes is set to non-zero, then the cluster is manually scaled. If cluster_config.cluster_autoscaling_config is non-empty, then autoscaling is enabled.",
                  flatPath = "v2/projects/{projectsId}/instances/{instancesId}/clusters",
                  httpMethod = "POST",
                  id = "bigtableadmin.projects.instances.clusters.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    clusterId = {
                      description = "Required. The ID to be used when referring to the new cluster within its instance, e.g., just `mycluster` rather than `projects/myproject/instances/myinstance/clusters/mycluster`.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The unique name of the instance in which to create the new cluster. Values are of the form `projects/{project}/instances/{instance}`.",
                      location = "path",
                      pattern = "^projects/[^/]+/instances/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v2/{+parent}/clusters",
                  request = {
                    ["$ref"] = "Cluster",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/bigtable.admin",
                    "https://www.googleapis.com/auth/bigtable.admin.cluster",
                    "https://www.googleapis.com/auth/bigtable.admin.instance",
                    "https://www.googleapis.com/auth/cloud-bigtable.admin",
                    "https://www.googleapis.com/auth/cloud-bigtable.admin.cluster",
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                delete = {
                  description = "Deletes a cluster from an instance.",
                  flatPath = "v2/projects/{projectsId}/instances/{instancesId}/clusters/{clustersId}",
                  httpMethod = "DELETE",
                  id = "bigtableadmin.projects.instances.clusters.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The unique name of the cluster to be deleted. Values are of the form `projects/{project}/instances/{instance}/clusters/{cluster}`.",
                      location = "path",
                      pattern = "^projects/[^/]+/instances/[^/]+/clusters/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v2/{+name}",
                  response = {
                    ["$ref"] = "Empty",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/bigtable.admin",
                    "https://www.googleapis.com/auth/bigtable.admin.cluster",
                    "https://www.googleapis.com/auth/bigtable.admin.instance",
                    "https://www.googleapis.com/auth/cloud-bigtable.admin",
                    "https://www.googleapis.com/auth/cloud-bigtable.admin.cluster",
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                get = {
                  description = "Gets information about a cluster.",
                  flatPath = "v2/projects/{projectsId}/instances/{instancesId}/clusters/{clustersId}",
                  httpMethod = "GET",
                  id = "bigtableadmin.projects.instances.clusters.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The unique name of the requested cluster. Values are of the form `projects/{project}/instances/{instance}/clusters/{cluster}`.",
                      location = "path",
                      pattern = "^projects/[^/]+/instances/[^/]+/clusters/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v2/{+name}",
                  response = {
                    ["$ref"] = "Cluster",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/bigtable.admin",
                    "https://www.googleapis.com/auth/bigtable.admin.cluster",
                    "https://www.googleapis.com/auth/bigtable.admin.instance",
                    "https://www.googleapis.com/auth/cloud-bigtable.admin",
                    "https://www.googleapis.com/auth/cloud-bigtable.admin.cluster",
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/cloud-platform.read-only",
                  },
                },
                list = {
                  description = "Lists information about clusters in an instance.",
                  flatPath = "v2/projects/{projectsId}/instances/{instancesId}/clusters",
                  httpMethod = "GET",
                  id = "bigtableadmin.projects.instances.clusters.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    pageToken = {
                      description = "DEPRECATED: This field is unused and ignored.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The unique name of the instance for which a list of clusters is requested. Values are of the form `projects/{project}/instances/{instance}`. Use `{instance} = '-'` to list Clusters for all Instances in a project, e.g., `projects/myproject/instances/-`.",
                      location = "path",
                      pattern = "^projects/[^/]+/instances/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v2/{+parent}/clusters",
                  response = {
                    ["$ref"] = "ListClustersResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/bigtable.admin",
                    "https://www.googleapis.com/auth/bigtable.admin.cluster",
                    "https://www.googleapis.com/auth/bigtable.admin.instance",
                    "https://www.googleapis.com/auth/cloud-bigtable.admin",
                    "https://www.googleapis.com/auth/cloud-bigtable.admin.cluster",
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/cloud-platform.read-only",
                  },
                },
                partialUpdateCluster = {
                  description = "Partially updates a cluster within a project. This method is the preferred way to update a Cluster. To enable and update autoscaling, set cluster_config.cluster_autoscaling_config. When autoscaling is enabled, serve_nodes is treated as an OUTPUT_ONLY field, meaning that updates to it are ignored. Note that an update cannot simultaneously set serve_nodes to non-zero and cluster_config.cluster_autoscaling_config to non-empty, and also specify both in the update_mask. To disable autoscaling, clear cluster_config.cluster_autoscaling_config, and explicitly set a serve_node count via the update_mask.",
                  flatPath = "v2/projects/{projectsId}/instances/{instancesId}/clusters/{clustersId}",
                  httpMethod = "PATCH",
                  id = "bigtableadmin.projects.instances.clusters.partialUpdateCluster",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "The unique name of the cluster. Values are of the form `projects/{project}/instances/{instance}/clusters/a-z*`.",
                      location = "path",
                      pattern = "^projects/[^/]+/instances/[^/]+/clusters/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    updateMask = {
                      description = "Required. The subset of Cluster fields which should be replaced.",
                      format = "google-fieldmask",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v2/{+name}",
                  request = {
                    ["$ref"] = "Cluster",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/bigtable.admin",
                    "https://www.googleapis.com/auth/bigtable.admin.cluster",
                    "https://www.googleapis.com/auth/bigtable.admin.instance",
                    "https://www.googleapis.com/auth/cloud-bigtable.admin",
                    "https://www.googleapis.com/auth/cloud-bigtable.admin.cluster",
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                update = {
                  description = "Updates a cluster within an instance. Note that UpdateCluster does not support updating cluster_config.cluster_autoscaling_config. In order to update it, you must use PartialUpdateCluster.",
                  flatPath = "v2/projects/{projectsId}/instances/{instancesId}/clusters/{clustersId}",
                  httpMethod = "PUT",
                  id = "bigtableadmin.projects.instances.clusters.update",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "The unique name of the cluster. Values are of the form `projects/{project}/instances/{instance}/clusters/a-z*`.",
                      location = "path",
                      pattern = "^projects/[^/]+/instances/[^/]+/clusters/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v2/{+name}",
                  request = {
                    ["$ref"] = "Cluster",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/bigtable.admin",
                    "https://www.googleapis.com/auth/bigtable.admin.cluster",
                    "https://www.googleapis.com/auth/bigtable.admin.instance",
                    "https://www.googleapis.com/auth/cloud-bigtable.admin",
                    "https://www.googleapis.com/auth/cloud-bigtable.admin.cluster",
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
              },
              resources = {
                backups = {
                  methods = {
                    copy = {
                      description = "Copy a Cloud Bigtable backup to a new backup in the destination cluster located in the destination instance and project.",
                      flatPath = "v2/projects/{projectsId}/instances/{instancesId}/clusters/{clustersId}/backups:copy",
                      httpMethod = "POST",
                      id = "bigtableadmin.projects.instances.clusters.backups.copy",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        parent = {
                          description = "Required. The name of the destination cluster that will contain the backup copy. The cluster must already exists. Values are of the form: `projects/{project}/instances/{instance}/clusters/{cluster}`.",
                          location = "path",
                          pattern = "^projects/[^/]+/instances/[^/]+/clusters/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v2/{+parent}/backups:copy",
                      request = {
                        ["$ref"] = "CopyBackupRequest",
                      },
                      response = {
                        ["$ref"] = "Operation",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/bigtable.admin",
                        "https://www.googleapis.com/auth/bigtable.admin.table",
                        "https://www.googleapis.com/auth/cloud-bigtable.admin",
                        "https://www.googleapis.com/auth/cloud-bigtable.admin.table",
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    create = {
                      description = "Starts creating a new Cloud Bigtable Backup. The returned backup long-running operation can be used to track creation of the backup. The metadata field type is CreateBackupMetadata. The response field type is Backup, if successful. Cancelling the returned operation will stop the creation and delete the backup.",
                      flatPath = "v2/projects/{projectsId}/instances/{instancesId}/clusters/{clustersId}/backups",
                      httpMethod = "POST",
                      id = "bigtableadmin.projects.instances.clusters.backups.create",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        backupId = {
                          description = "Required. The id of the backup to be created. The `backup_id` along with the parent `parent` are combined as {parent}/backups/{backup_id} to create the full backup name, of the form: `projects/{project}/instances/{instance}/clusters/{cluster}/backups/{backup_id}`. This string must be between 1 and 50 characters in length and match the regex _a-zA-Z0-9*.",
                          location = "query",
                          type = "string",
                        },
                        parent = {
                          description = "Required. This must be one of the clusters in the instance in which this table is located. The backup will be stored in this cluster. Values are of the form `projects/{project}/instances/{instance}/clusters/{cluster}`.",
                          location = "path",
                          pattern = "^projects/[^/]+/instances/[^/]+/clusters/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v2/{+parent}/backups",
                      request = {
                        ["$ref"] = "Backup",
                      },
                      response = {
                        ["$ref"] = "Operation",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/bigtable.admin",
                        "https://www.googleapis.com/auth/bigtable.admin.table",
                        "https://www.googleapis.com/auth/cloud-bigtable.admin",
                        "https://www.googleapis.com/auth/cloud-bigtable.admin.table",
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    delete = {
                      description = "Deletes a pending or completed Cloud Bigtable backup.",
                      flatPath = "v2/projects/{projectsId}/instances/{instancesId}/clusters/{clustersId}/backups/{backupsId}",
                      httpMethod = "DELETE",
                      id = "bigtableadmin.projects.instances.clusters.backups.delete",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. Name of the backup to delete. Values are of the form `projects/{project}/instances/{instance}/clusters/{cluster}/backups/{backup}`.",
                          location = "path",
                          pattern = "^projects/[^/]+/instances/[^/]+/clusters/[^/]+/backups/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v2/{+name}",
                      response = {
                        ["$ref"] = "Empty",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/bigtable.admin",
                        "https://www.googleapis.com/auth/bigtable.admin.table",
                        "https://www.googleapis.com/auth/cloud-bigtable.admin",
                        "https://www.googleapis.com/auth/cloud-bigtable.admin.table",
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    get = {
                      description = "Gets metadata on a pending or completed Cloud Bigtable Backup.",
                      flatPath = "v2/projects/{projectsId}/instances/{instancesId}/clusters/{clustersId}/backups/{backupsId}",
                      httpMethod = "GET",
                      id = "bigtableadmin.projects.instances.clusters.backups.get",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. Name of the backup. Values are of the form `projects/{project}/instances/{instance}/clusters/{cluster}/backups/{backup}`.",
                          location = "path",
                          pattern = "^projects/[^/]+/instances/[^/]+/clusters/[^/]+/backups/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v2/{+name}",
                      response = {
                        ["$ref"] = "Backup",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/bigtable.admin",
                        "https://www.googleapis.com/auth/bigtable.admin.table",
                        "https://www.googleapis.com/auth/cloud-bigtable.admin",
                        "https://www.googleapis.com/auth/cloud-bigtable.admin.table",
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    getIamPolicy = {
                      description = "Gets the access control policy for a Table resource. Returns an empty policy if the resource exists but does not have a policy set.",
                      flatPath = "v2/projects/{projectsId}/instances/{instancesId}/clusters/{clustersId}/backups/{backupsId}:getIamPolicy",
                      httpMethod = "POST",
                      id = "bigtableadmin.projects.instances.clusters.backups.getIamPolicy",
                      parameterOrder = {
                        "resource",
                      },
                      parameters = {
                        resource = {
                          description = "REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                          location = "path",
                          pattern = "^projects/[^/]+/instances/[^/]+/clusters/[^/]+/backups/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v2/{+resource}:getIamPolicy",
                      request = {
                        ["$ref"] = "GetIamPolicyRequest",
                      },
                      response = {
                        ["$ref"] = "Policy",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/bigtable.admin",
                        "https://www.googleapis.com/auth/bigtable.admin.table",
                        "https://www.googleapis.com/auth/cloud-bigtable.admin",
                        "https://www.googleapis.com/auth/cloud-bigtable.admin.table",
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    list = {
                      description = "Lists Cloud Bigtable backups. Returns both completed and pending backups.",
                      flatPath = "v2/projects/{projectsId}/instances/{instancesId}/clusters/{clustersId}/backups",
                      httpMethod = "GET",
                      id = "bigtableadmin.projects.instances.clusters.backups.list",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        filter = {
                          description = "A filter expression that filters backups listed in the response. The expression must specify the field name, a comparison operator, and the value that you want to use for filtering. The value must be a string, a number, or a boolean. The comparison operator must be <, >, <=, >=, !=, =, or :. Colon ':' represents a HAS operator which is roughly synonymous with equality. Filter rules are case insensitive. The fields eligible for filtering are: * `name` * `source_table` * `state` * `start_time` (and values are of the format YYYY-MM-DDTHH:MM:SSZ) * `end_time` (and values are of the format YYYY-MM-DDTHH:MM:SSZ) * `expire_time` (and values are of the format YYYY-MM-DDTHH:MM:SSZ) * `size_bytes` To filter on multiple expressions, provide each separate expression within parentheses. By default, each expression is an AND expression. However, you can include AND, OR, and NOT expressions explicitly. Some examples of using filters are: * `name:\"exact\"` --> The backup's name is the string \"exact\". * `name:howl` --> The backup's name contains the string \"howl\". * `source_table:prod` --> The source_table's name contains the string \"prod\". * `state:CREATING` --> The backup is pending creation. * `state:READY` --> The backup is fully created and ready for use. * `(name:howl) AND (start_time < \\\"2018-03-28T14:50:00Z\\\")` --> The backup name contains the string \"howl\" and start_time of the backup is before 2018-03-28T14:50:00Z. * `size_bytes > 10000000000` --> The backup's size is greater than 10GB",
                          location = "query",
                          type = "string",
                        },
                        orderBy = {
                          description = "An expression for specifying the sort order of the results of the request. The string value should specify one or more fields in Backup. The full syntax is described at https://aip.dev/132#ordering. Fields supported are: * name * source_table * expire_time * start_time * end_time * size_bytes * state For example, \"start_time\". The default sorting order is ascending. To specify descending order for the field, a suffix \" desc\" should be appended to the field name. For example, \"start_time desc\". Redundant space characters in the syntax are insigificant. If order_by is empty, results will be sorted by `start_time` in descending order starting from the most recently created backup.",
                          location = "query",
                          type = "string",
                        },
                        pageSize = {
                          description = "Number of backups to be returned in the response. If 0 or less, defaults to the server's maximum allowed page size.",
                          format = "int32",
                          location = "query",
                          type = "integer",
                        },
                        pageToken = {
                          description = "If non-empty, `page_token` should contain a next_page_token from a previous ListBackupsResponse to the same `parent` and with the same `filter`.",
                          location = "query",
                          type = "string",
                        },
                        parent = {
                          description = "Required. The cluster to list backups from. Values are of the form `projects/{project}/instances/{instance}/clusters/{cluster}`. Use `{cluster} = '-'` to list backups for all clusters in an instance, e.g., `projects/{project}/instances/{instance}/clusters/-`.",
                          location = "path",
                          pattern = "^projects/[^/]+/instances/[^/]+/clusters/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v2/{+parent}/backups",
                      response = {
                        ["$ref"] = "ListBackupsResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/bigtable.admin",
                        "https://www.googleapis.com/auth/bigtable.admin.table",
                        "https://www.googleapis.com/auth/cloud-bigtable.admin",
                        "https://www.googleapis.com/auth/cloud-bigtable.admin.table",
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    patch = {
                      description = "Updates a pending or completed Cloud Bigtable Backup.",
                      flatPath = "v2/projects/{projectsId}/instances/{instancesId}/clusters/{clustersId}/backups/{backupsId}",
                      httpMethod = "PATCH",
                      id = "bigtableadmin.projects.instances.clusters.backups.patch",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "A globally unique identifier for the backup which cannot be changed. Values are of the form `projects/{project}/instances/{instance}/clusters/{cluster}/ backups/_a-zA-Z0-9*` The final segment of the name must be between 1 and 50 characters in length. The backup is stored in the cluster identified by the prefix of the backup name of the form `projects/{project}/instances/{instance}/clusters/{cluster}`.",
                          location = "path",
                          pattern = "^projects/[^/]+/instances/[^/]+/clusters/[^/]+/backups/[^/]+$",
                          required = true,
                          type = "string",
                        },
                        updateMask = {
                          description = "Required. A mask specifying which fields (e.g. `expire_time`) in the Backup resource should be updated. This mask is relative to the Backup resource, not to the request message. The field mask must always be specified; this prevents any future fields from being erased accidentally by clients that do not know about them.",
                          format = "google-fieldmask",
                          location = "query",
                          type = "string",
                        },
                      },
                      path = "v2/{+name}",
                      request = {
                        ["$ref"] = "Backup",
                      },
                      response = {
                        ["$ref"] = "Backup",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/bigtable.admin",
                        "https://www.googleapis.com/auth/bigtable.admin.table",
                        "https://www.googleapis.com/auth/cloud-bigtable.admin",
                        "https://www.googleapis.com/auth/cloud-bigtable.admin.table",
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    setIamPolicy = {
                      description = "Sets the access control policy on a Table resource. Replaces any existing policy.",
                      flatPath = "v2/projects/{projectsId}/instances/{instancesId}/clusters/{clustersId}/backups/{backupsId}:setIamPolicy",
                      httpMethod = "POST",
                      id = "bigtableadmin.projects.instances.clusters.backups.setIamPolicy",
                      parameterOrder = {
                        "resource",
                      },
                      parameters = {
                        resource = {
                          description = "REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                          location = "path",
                          pattern = "^projects/[^/]+/instances/[^/]+/clusters/[^/]+/backups/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v2/{+resource}:setIamPolicy",
                      request = {
                        ["$ref"] = "SetIamPolicyRequest",
                      },
                      response = {
                        ["$ref"] = "Policy",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/bigtable.admin",
                        "https://www.googleapis.com/auth/bigtable.admin.table",
                        "https://www.googleapis.com/auth/cloud-bigtable.admin",
                        "https://www.googleapis.com/auth/cloud-bigtable.admin.table",
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    testIamPermissions = {
                      description = "Returns permissions that the caller has on the specified table resource.",
                      flatPath = "v2/projects/{projectsId}/instances/{instancesId}/clusters/{clustersId}/backups/{backupsId}:testIamPermissions",
                      httpMethod = "POST",
                      id = "bigtableadmin.projects.instances.clusters.backups.testIamPermissions",
                      parameterOrder = {
                        "resource",
                      },
                      parameters = {
                        resource = {
                          description = "REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                          location = "path",
                          pattern = "^projects/[^/]+/instances/[^/]+/clusters/[^/]+/backups/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v2/{+resource}:testIamPermissions",
                      request = {
                        ["$ref"] = "TestIamPermissionsRequest",
                      },
                      response = {
                        ["$ref"] = "TestIamPermissionsResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/bigtable.admin",
                        "https://www.googleapis.com/auth/bigtable.admin.table",
                        "https://www.googleapis.com/auth/cloud-bigtable.admin",
                        "https://www.googleapis.com/auth/cloud-bigtable.admin.table",
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                  },
                },
                hotTablets = {
                  methods = {
                    list = {
                      description = "Lists hot tablets in a cluster, within the time range provided. Hot tablets are ordered based on CPU usage.",
                      flatPath = "v2/projects/{projectsId}/instances/{instancesId}/clusters/{clustersId}/hotTablets",
                      httpMethod = "GET",
                      id = "bigtableadmin.projects.instances.clusters.hotTablets.list",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        endTime = {
                          description = "The end time to list hot tablets.",
                          format = "google-datetime",
                          location = "query",
                          type = "string",
                        },
                        pageSize = {
                          description = "Maximum number of results per page. A page_size that is empty or zero lets the server choose the number of items to return. A page_size which is strictly positive will return at most that many items. A negative page_size will cause an error. Following the first request, subsequent paginated calls do not need a page_size field. If a page_size is set in subsequent calls, it must match the page_size given in the first request.",
                          format = "int32",
                          location = "query",
                          type = "integer",
                        },
                        pageToken = {
                          description = "The value of `next_page_token` returned by a previous call.",
                          location = "query",
                          type = "string",
                        },
                        parent = {
                          description = "Required. The cluster name to list hot tablets. Value is in the following form: `projects/{project}/instances/{instance}/clusters/{cluster}`.",
                          location = "path",
                          pattern = "^projects/[^/]+/instances/[^/]+/clusters/[^/]+$",
                          required = true,
                          type = "string",
                        },
                        startTime = {
                          description = "The start time to list hot tablets. The hot tablets in the response will have start times between the requested start time and end time. Start time defaults to Now if it is unset, and end time defaults to Now - 24 hours if it is unset. The start time should be less than the end time, and the maximum allowed time range between start time and end time is 48 hours. Start time and end time should have values between Now and Now - 14 days.",
                          format = "google-datetime",
                          location = "query",
                          type = "string",
                        },
                      },
                      path = "v2/{+parent}/hotTablets",
                      response = {
                        ["$ref"] = "ListHotTabletsResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/bigtable.admin",
                        "https://www.googleapis.com/auth/bigtable.admin.cluster",
                        "https://www.googleapis.com/auth/bigtable.admin.instance",
                        "https://www.googleapis.com/auth/cloud-bigtable.admin",
                        "https://www.googleapis.com/auth/cloud-bigtable.admin.cluster",
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                  },
                },
              },
            },
            tables = {
              methods = {
                checkConsistency = {
                  description = "Checks replication consistency based on a consistency token, that is, if replication has caught up based on the conditions specified in the token and the check request.",
                  flatPath = "v2/projects/{projectsId}/instances/{instancesId}/tables/{tablesId}:checkConsistency",
                  httpMethod = "POST",
                  id = "bigtableadmin.projects.instances.tables.checkConsistency",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The unique name of the Table for which to check replication consistency. Values are of the form `projects/{project}/instances/{instance}/tables/{table}`.",
                      location = "path",
                      pattern = "^projects/[^/]+/instances/[^/]+/tables/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v2/{+name}:checkConsistency",
                  request = {
                    ["$ref"] = "CheckConsistencyRequest",
                  },
                  response = {
                    ["$ref"] = "CheckConsistencyResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/bigtable.admin",
                    "https://www.googleapis.com/auth/bigtable.admin.table",
                    "https://www.googleapis.com/auth/cloud-bigtable.admin",
                    "https://www.googleapis.com/auth/cloud-bigtable.admin.table",
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                create = {
                  description = "Creates a new table in the specified instance. The table can be created with a full set of initial column families, specified in the request.",
                  flatPath = "v2/projects/{projectsId}/instances/{instancesId}/tables",
                  httpMethod = "POST",
                  id = "bigtableadmin.projects.instances.tables.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    parent = {
                      description = "Required. The unique name of the instance in which to create the table. Values are of the form `projects/{project}/instances/{instance}`.",
                      location = "path",
                      pattern = "^projects/[^/]+/instances/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v2/{+parent}/tables",
                  request = {
                    ["$ref"] = "CreateTableRequest",
                  },
                  response = {
                    ["$ref"] = "Table",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/bigtable.admin",
                    "https://www.googleapis.com/auth/bigtable.admin.table",
                    "https://www.googleapis.com/auth/cloud-bigtable.admin",
                    "https://www.googleapis.com/auth/cloud-bigtable.admin.table",
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                delete = {
                  description = "Permanently deletes a specified table and all of its data.",
                  flatPath = "v2/projects/{projectsId}/instances/{instancesId}/tables/{tablesId}",
                  httpMethod = "DELETE",
                  id = "bigtableadmin.projects.instances.tables.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The unique name of the table to be deleted. Values are of the form `projects/{project}/instances/{instance}/tables/{table}`.",
                      location = "path",
                      pattern = "^projects/[^/]+/instances/[^/]+/tables/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v2/{+name}",
                  response = {
                    ["$ref"] = "Empty",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/bigtable.admin",
                    "https://www.googleapis.com/auth/bigtable.admin.table",
                    "https://www.googleapis.com/auth/cloud-bigtable.admin",
                    "https://www.googleapis.com/auth/cloud-bigtable.admin.table",
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                dropRowRange = {
                  description = "Permanently drop/delete a row range from a specified table. The request can specify whether to delete all rows in a table, or only those that match a particular prefix.",
                  flatPath = "v2/projects/{projectsId}/instances/{instancesId}/tables/{tablesId}:dropRowRange",
                  httpMethod = "POST",
                  id = "bigtableadmin.projects.instances.tables.dropRowRange",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The unique name of the table on which to drop a range of rows. Values are of the form `projects/{project}/instances/{instance}/tables/{table}`.",
                      location = "path",
                      pattern = "^projects/[^/]+/instances/[^/]+/tables/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v2/{+name}:dropRowRange",
                  request = {
                    ["$ref"] = "DropRowRangeRequest",
                  },
                  response = {
                    ["$ref"] = "Empty",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/bigtable.admin",
                    "https://www.googleapis.com/auth/bigtable.admin.table",
                    "https://www.googleapis.com/auth/cloud-bigtable.admin",
                    "https://www.googleapis.com/auth/cloud-bigtable.admin.table",
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                generateConsistencyToken = {
                  description = "Generates a consistency token for a Table, which can be used in CheckConsistency to check whether mutations to the table that finished before this call started have been replicated. The tokens will be available for 90 days.",
                  flatPath = "v2/projects/{projectsId}/instances/{instancesId}/tables/{tablesId}:generateConsistencyToken",
                  httpMethod = "POST",
                  id = "bigtableadmin.projects.instances.tables.generateConsistencyToken",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The unique name of the Table for which to create a consistency token. Values are of the form `projects/{project}/instances/{instance}/tables/{table}`.",
                      location = "path",
                      pattern = "^projects/[^/]+/instances/[^/]+/tables/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v2/{+name}:generateConsistencyToken",
                  request = {
                    ["$ref"] = "GenerateConsistencyTokenRequest",
                  },
                  response = {
                    ["$ref"] = "GenerateConsistencyTokenResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/bigtable.admin",
                    "https://www.googleapis.com/auth/bigtable.admin.table",
                    "https://www.googleapis.com/auth/cloud-bigtable.admin",
                    "https://www.googleapis.com/auth/cloud-bigtable.admin.table",
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                get = {
                  description = "Gets metadata information about the specified table.",
                  flatPath = "v2/projects/{projectsId}/instances/{instancesId}/tables/{tablesId}",
                  httpMethod = "GET",
                  id = "bigtableadmin.projects.instances.tables.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The unique name of the requested table. Values are of the form `projects/{project}/instances/{instance}/tables/{table}`.",
                      location = "path",
                      pattern = "^projects/[^/]+/instances/[^/]+/tables/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    view = {
                      description = "The view to be applied to the returned table's fields. Defaults to `SCHEMA_VIEW` if unspecified.",
                      enum = {
                        "VIEW_UNSPECIFIED",
                        "NAME_ONLY",
                        "SCHEMA_VIEW",
                        "REPLICATION_VIEW",
                        "ENCRYPTION_VIEW",
                        "STATS_VIEW",
                        "FULL",
                      },
                      enumDescriptions = {
                        "Uses the default view for each method as documented in its request.",
                        "Only populates `name`.",
                        "Only populates `name` and fields related to the table's schema.",
                        "Only populates `name` and fields related to the table's replication state.",
                        "Only populates `name` and fields related to the table's encryption state.",
                        "Only populates `name` and fields related to the table's stats (e.g. TableStats and ColumnFamilyStats).",
                        "Populates all fields except for stats. See STATS_VIEW to request stats.",
                      },
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v2/{+name}",
                  response = {
                    ["$ref"] = "Table",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/bigtable.admin",
                    "https://www.googleapis.com/auth/bigtable.admin.table",
                    "https://www.googleapis.com/auth/cloud-bigtable.admin",
                    "https://www.googleapis.com/auth/cloud-bigtable.admin.table",
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/cloud-platform.read-only",
                  },
                },
                getIamPolicy = {
                  description = "Gets the access control policy for a Table resource. Returns an empty policy if the resource exists but does not have a policy set.",
                  flatPath = "v2/projects/{projectsId}/instances/{instancesId}/tables/{tablesId}:getIamPolicy",
                  httpMethod = "POST",
                  id = "bigtableadmin.projects.instances.tables.getIamPolicy",
                  parameterOrder = {
                    "resource",
                  },
                  parameters = {
                    resource = {
                      description = "REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                      location = "path",
                      pattern = "^projects/[^/]+/instances/[^/]+/tables/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v2/{+resource}:getIamPolicy",
                  request = {
                    ["$ref"] = "GetIamPolicyRequest",
                  },
                  response = {
                    ["$ref"] = "Policy",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/bigtable.admin",
                    "https://www.googleapis.com/auth/bigtable.admin.table",
                    "https://www.googleapis.com/auth/cloud-bigtable.admin",
                    "https://www.googleapis.com/auth/cloud-bigtable.admin.table",
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                list = {
                  description = "Lists all tables served from a specified instance.",
                  flatPath = "v2/projects/{projectsId}/instances/{instancesId}/tables",
                  httpMethod = "GET",
                  id = "bigtableadmin.projects.instances.tables.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    pageSize = {
                      description = "Maximum number of results per page. A page_size of zero lets the server choose the number of items to return. A page_size which is strictly positive will return at most that many items. A negative page_size will cause an error. Following the first request, subsequent paginated calls are not required to pass a page_size. If a page_size is set in subsequent calls, it must match the page_size given in the first request.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "The value of `next_page_token` returned by a previous call.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The unique name of the instance for which tables should be listed. Values are of the form `projects/{project}/instances/{instance}`.",
                      location = "path",
                      pattern = "^projects/[^/]+/instances/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    view = {
                      description = "The view to be applied to the returned tables' fields. Only NAME_ONLY view (default), REPLICATION_VIEW and ENCRYPTION_VIEW are supported.",
                      enum = {
                        "VIEW_UNSPECIFIED",
                        "NAME_ONLY",
                        "SCHEMA_VIEW",
                        "REPLICATION_VIEW",
                        "ENCRYPTION_VIEW",
                        "STATS_VIEW",
                        "FULL",
                      },
                      enumDescriptions = {
                        "Uses the default view for each method as documented in its request.",
                        "Only populates `name`.",
                        "Only populates `name` and fields related to the table's schema.",
                        "Only populates `name` and fields related to the table's replication state.",
                        "Only populates `name` and fields related to the table's encryption state.",
                        "Only populates `name` and fields related to the table's stats (e.g. TableStats and ColumnFamilyStats).",
                        "Populates all fields except for stats. See STATS_VIEW to request stats.",
                      },
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v2/{+parent}/tables",
                  response = {
                    ["$ref"] = "ListTablesResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/bigtable.admin",
                    "https://www.googleapis.com/auth/bigtable.admin.table",
                    "https://www.googleapis.com/auth/cloud-bigtable.admin",
                    "https://www.googleapis.com/auth/cloud-bigtable.admin.table",
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/cloud-platform.read-only",
                  },
                },
                modifyColumnFamilies = {
                  description = "Performs a series of column family modifications on the specified table. Either all or none of the modifications will occur before this method returns, but data requests received prior to that point may see a table where only some modifications have taken effect.",
                  flatPath = "v2/projects/{projectsId}/instances/{instancesId}/tables/{tablesId}:modifyColumnFamilies",
                  httpMethod = "POST",
                  id = "bigtableadmin.projects.instances.tables.modifyColumnFamilies",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The unique name of the table whose families should be modified. Values are of the form `projects/{project}/instances/{instance}/tables/{table}`.",
                      location = "path",
                      pattern = "^projects/[^/]+/instances/[^/]+/tables/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v2/{+name}:modifyColumnFamilies",
                  request = {
                    ["$ref"] = "ModifyColumnFamiliesRequest",
                  },
                  response = {
                    ["$ref"] = "Table",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/bigtable.admin",
                    "https://www.googleapis.com/auth/bigtable.admin.table",
                    "https://www.googleapis.com/auth/cloud-bigtable.admin",
                    "https://www.googleapis.com/auth/cloud-bigtable.admin.table",
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                patch = {
                  description = "Updates a specified table.",
                  flatPath = "v2/projects/{projectsId}/instances/{instancesId}/tables/{tablesId}",
                  httpMethod = "PATCH",
                  id = "bigtableadmin.projects.instances.tables.patch",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "The unique name of the table. Values are of the form `projects/{project}/instances/{instance}/tables/_a-zA-Z0-9*`. Views: `NAME_ONLY`, `SCHEMA_VIEW`, `REPLICATION_VIEW`, `STATS_VIEW`, `FULL`",
                      location = "path",
                      pattern = "^projects/[^/]+/instances/[^/]+/tables/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    updateMask = {
                      description = "Required. The list of fields to update. A mask specifying which fields (e.g. `change_stream_config`) in the `table` field should be updated. This mask is relative to the `table` field, not to the request message. The wildcard (*) path is currently not supported. Currently UpdateTable is only supported for the following fields: * `change_stream_config` * `change_stream_config.retention_period` * `deletion_protection` If `column_families` is set in `update_mask`, it will return an UNIMPLEMENTED error.",
                      format = "google-fieldmask",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v2/{+name}",
                  request = {
                    ["$ref"] = "Table",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/bigtable.admin",
                    "https://www.googleapis.com/auth/bigtable.admin.table",
                    "https://www.googleapis.com/auth/cloud-bigtable.admin",
                    "https://www.googleapis.com/auth/cloud-bigtable.admin.table",
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                restore = {
                  description = "Create a new table by restoring from a completed backup. The returned table long-running operation can be used to track the progress of the operation, and to cancel it. The metadata field type is RestoreTableMetadata. The response type is Table, if successful.",
                  flatPath = "v2/projects/{projectsId}/instances/{instancesId}/tables:restore",
                  httpMethod = "POST",
                  id = "bigtableadmin.projects.instances.tables.restore",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    parent = {
                      description = "Required. The name of the instance in which to create the restored table. Values are of the form `projects//instances/`.",
                      location = "path",
                      pattern = "^projects/[^/]+/instances/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v2/{+parent}/tables:restore",
                  request = {
                    ["$ref"] = "RestoreTableRequest",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/bigtable.admin",
                    "https://www.googleapis.com/auth/bigtable.admin.table",
                    "https://www.googleapis.com/auth/cloud-bigtable.admin",
                    "https://www.googleapis.com/auth/cloud-bigtable.admin.table",
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                setIamPolicy = {
                  description = "Sets the access control policy on a Table resource. Replaces any existing policy.",
                  flatPath = "v2/projects/{projectsId}/instances/{instancesId}/tables/{tablesId}:setIamPolicy",
                  httpMethod = "POST",
                  id = "bigtableadmin.projects.instances.tables.setIamPolicy",
                  parameterOrder = {
                    "resource",
                  },
                  parameters = {
                    resource = {
                      description = "REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                      location = "path",
                      pattern = "^projects/[^/]+/instances/[^/]+/tables/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v2/{+resource}:setIamPolicy",
                  request = {
                    ["$ref"] = "SetIamPolicyRequest",
                  },
                  response = {
                    ["$ref"] = "Policy",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/bigtable.admin",
                    "https://www.googleapis.com/auth/bigtable.admin.table",
                    "https://www.googleapis.com/auth/cloud-bigtable.admin",
                    "https://www.googleapis.com/auth/cloud-bigtable.admin.table",
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                testIamPermissions = {
                  description = "Returns permissions that the caller has on the specified table resource.",
                  flatPath = "v2/projects/{projectsId}/instances/{instancesId}/tables/{tablesId}:testIamPermissions",
                  httpMethod = "POST",
                  id = "bigtableadmin.projects.instances.tables.testIamPermissions",
                  parameterOrder = {
                    "resource",
                  },
                  parameters = {
                    resource = {
                      description = "REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                      location = "path",
                      pattern = "^projects/[^/]+/instances/[^/]+/tables/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v2/{+resource}:testIamPermissions",
                  request = {
                    ["$ref"] = "TestIamPermissionsRequest",
                  },
                  response = {
                    ["$ref"] = "TestIamPermissionsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/bigtable.admin",
                    "https://www.googleapis.com/auth/bigtable.admin.table",
                    "https://www.googleapis.com/auth/cloud-bigtable.admin",
                    "https://www.googleapis.com/auth/cloud-bigtable.admin.table",
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                undelete = {
                  description = "Restores a specified table which was accidentally deleted.",
                  flatPath = "v2/projects/{projectsId}/instances/{instancesId}/tables/{tablesId}:undelete",
                  httpMethod = "POST",
                  id = "bigtableadmin.projects.instances.tables.undelete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The unique name of the table to be restored. Values are of the form `projects/{project}/instances/{instance}/tables/{table}`.",
                      location = "path",
                      pattern = "^projects/[^/]+/instances/[^/]+/tables/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v2/{+name}:undelete",
                  request = {
                    ["$ref"] = "UndeleteTableRequest",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/bigtable.admin",
                    "https://www.googleapis.com/auth/bigtable.admin.table",
                    "https://www.googleapis.com/auth/cloud-bigtable.admin",
                    "https://www.googleapis.com/auth/cloud-bigtable.admin.table",
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
              },
            },
          },
        },
        locations = {
          methods = {
            get = {
              description = "Gets information about a location.",
              flatPath = "v2/projects/{projectsId}/locations/{locationsId}",
              httpMethod = "GET",
              id = "bigtableadmin.projects.locations.get",
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
              path = "v2/{+name}",
              response = {
                ["$ref"] = "Location",
              },
              scopes = {
                "https://www.googleapis.com/auth/bigtable.admin",
                "https://www.googleapis.com/auth/bigtable.admin.cluster",
                "https://www.googleapis.com/auth/bigtable.admin.instance",
                "https://www.googleapis.com/auth/cloud-bigtable.admin",
                "https://www.googleapis.com/auth/cloud-bigtable.admin.cluster",
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/cloud-platform.read-only",
              },
            },
            list = {
              description = "Lists information about the supported locations for this service.",
              flatPath = "v2/projects/{projectsId}/locations",
              httpMethod = "GET",
              id = "bigtableadmin.projects.locations.list",
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
              path = "v2/{+name}/locations",
              response = {
                ["$ref"] = "ListLocationsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/bigtable.admin",
                "https://www.googleapis.com/auth/bigtable.admin.cluster",
                "https://www.googleapis.com/auth/bigtable.admin.instance",
                "https://www.googleapis.com/auth/cloud-bigtable.admin",
                "https://www.googleapis.com/auth/cloud-bigtable.admin.cluster",
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/cloud-platform.read-only",
              },
            },
          },
        },
      },
    },
  },
  revision = "20230101",
  rootUrl = "https://bigtableadmin.googleapis.com/",
  schemas = {
    AppProfile = {
      description = "A configuration object describing how Cloud Bigtable should treat traffic from a particular end user application.",
      id = "AppProfile",
      properties = {
        description = {
          description = "Long form description of the use case for this AppProfile.",
          type = "string",
        },
        etag = {
          description = "Strongly validated etag for optimistic concurrency control. Preserve the value returned from `GetAppProfile` when calling `UpdateAppProfile` to fail the request if there has been a modification in the mean time. The `update_mask` of the request need not include `etag` for this protection to apply. See [Wikipedia](https://en.wikipedia.org/wiki/HTTP_ETag) and [RFC 7232](https://tools.ietf.org/html/rfc7232#section-2.3) for more details.",
          type = "string",
        },
        multiClusterRoutingUseAny = {
          ["$ref"] = "MultiClusterRoutingUseAny",
          description = "Use a multi-cluster routing policy.",
        },
        name = {
          description = "The unique name of the app profile. Values are of the form `projects/{project}/instances/{instance}/appProfiles/_a-zA-Z0-9*`.",
          type = "string",
        },
        singleClusterRouting = {
          ["$ref"] = "SingleClusterRouting",
          description = "Use a single-cluster routing policy.",
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
    AutoscalingLimits = {
      description = "Limits for the number of nodes a Cluster can autoscale up/down to.",
      id = "AutoscalingLimits",
      properties = {
        maxServeNodes = {
          description = "Required. Maximum number of nodes to scale up to.",
          format = "int32",
          type = "integer",
        },
        minServeNodes = {
          description = "Required. Minimum number of nodes to scale down to.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    AutoscalingTargets = {
      description = "The Autoscaling targets for a Cluster. These determine the recommended nodes.",
      id = "AutoscalingTargets",
      properties = {
        cpuUtilizationPercent = {
          description = "The cpu utilization that the Autoscaler should be trying to achieve. This number is on a scale from 0 (no utilization) to 100 (total utilization), and is limited between 10 and 80, otherwise it will return INVALID_ARGUMENT error.",
          format = "int32",
          type = "integer",
        },
        storageUtilizationGibPerNode = {
          description = "The storage utilization that the Autoscaler should be trying to achieve. This number is limited between 2560 (2.5TiB) and 5120 (5TiB) for a SSD cluster and between 8192 (8TiB) and 16384 (16TiB) for an HDD cluster, otherwise it will return INVALID_ARGUMENT error. If this value is set to 0, it will be treated as if it were set to the default value: 2560 for SSD, 8192 for HDD.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    Backup = {
      description = "A backup of a Cloud Bigtable table.",
      id = "Backup",
      properties = {
        encryptionInfo = {
          ["$ref"] = "EncryptionInfo",
          description = "Output only. The encryption information for the backup.",
          readOnly = true,
        },
        endTime = {
          description = "Output only. `end_time` is the time that the backup was finished. The row data in the backup will be no newer than this timestamp.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        expireTime = {
          description = "Required. The expiration time of the backup, with microseconds granularity that must be at least 6 hours and at most 30 days from the time the request is received. Once the `expire_time` has passed, Cloud Bigtable will delete the backup and free the resources used by the backup.",
          format = "google-datetime",
          type = "string",
        },
        name = {
          description = "A globally unique identifier for the backup which cannot be changed. Values are of the form `projects/{project}/instances/{instance}/clusters/{cluster}/ backups/_a-zA-Z0-9*` The final segment of the name must be between 1 and 50 characters in length. The backup is stored in the cluster identified by the prefix of the backup name of the form `projects/{project}/instances/{instance}/clusters/{cluster}`.",
          type = "string",
        },
        sizeBytes = {
          description = "Output only. Size of the backup in bytes.",
          format = "int64",
          readOnly = true,
          type = "string",
        },
        sourceBackup = {
          description = "Output only. Name of the backup from which this backup was copied. If a backup is not created by copying a backup, this field will be empty. Values are of the form: projects//instances//backups/.",
          readOnly = true,
          type = "string",
        },
        sourceTable = {
          description = "Required. Immutable. Name of the table from which this backup was created. This needs to be in the same instance as the backup. Values are of the form `projects/{project}/instances/{instance}/tables/{source_table}`.",
          type = "string",
        },
        startTime = {
          description = "Output only. `start_time` is the time that the backup was started (i.e. approximately the time the CreateBackup request is received). The row data in this backup will be no older than this timestamp.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        state = {
          description = "Output only. The current state of the backup.",
          enum = {
            "STATE_UNSPECIFIED",
            "CREATING",
            "READY",
          },
          enumDescriptions = {
            "Not specified.",
            "The pending backup is still being created. Operations on the backup may fail with `FAILED_PRECONDITION` in this state.",
            "The backup is complete and ready for use.",
          },
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    BackupInfo = {
      description = "Information about a backup.",
      id = "BackupInfo",
      properties = {
        backup = {
          description = "Output only. Name of the backup.",
          readOnly = true,
          type = "string",
        },
        endTime = {
          description = "Output only. This time that the backup was finished. Row data in the backup will be no newer than this timestamp.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        sourceBackup = {
          description = "Output only. Name of the backup from which this backup was copied. If a backup is not created by copying a backup, this field will be empty. Values are of the form: projects//instances//backups/.",
          readOnly = true,
          type = "string",
        },
        sourceTable = {
          description = "Output only. Name of the table the backup was created from.",
          readOnly = true,
          type = "string",
        },
        startTime = {
          description = "Output only. The time that the backup was started. Row data in the backup will be no older than this timestamp.",
          format = "google-datetime",
          readOnly = true,
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
    CheckConsistencyRequest = {
      description = "Request message for google.bigtable.admin.v2.BigtableTableAdmin.CheckConsistency",
      id = "CheckConsistencyRequest",
      properties = {
        consistencyToken = {
          description = "Required. The token created using GenerateConsistencyToken for the Table.",
          type = "string",
        },
      },
      type = "object",
    },
    CheckConsistencyResponse = {
      description = "Response message for google.bigtable.admin.v2.BigtableTableAdmin.CheckConsistency",
      id = "CheckConsistencyResponse",
      properties = {
        consistent = {
          description = "True only if the token is consistent. A token is consistent if replication has caught up with the restrictions specified in the request.",
          type = "boolean",
        },
      },
      type = "object",
    },
    Cluster = {
      description = "A resizable group of nodes in a particular cloud location, capable of serving all Tables in the parent Instance.",
      id = "Cluster",
      properties = {
        clusterConfig = {
          ["$ref"] = "ClusterConfig",
          description = "Configuration for this cluster.",
        },
        defaultStorageType = {
          description = "Immutable. The type of storage used by this cluster to serve its parent instance's tables, unless explicitly overridden.",
          enum = {
            "STORAGE_TYPE_UNSPECIFIED",
            "SSD",
            "HDD",
          },
          enumDescriptions = {
            "The user did not specify a storage type.",
            "Flash (SSD) storage should be used.",
            "Magnetic drive (HDD) storage should be used.",
          },
          type = "string",
        },
        encryptionConfig = {
          ["$ref"] = "EncryptionConfig",
          description = "Immutable. The encryption configuration for CMEK-protected clusters.",
        },
        location = {
          description = "Immutable. The location where this cluster's nodes and storage reside. For best performance, clients should be located as close as possible to this cluster. Currently only zones are supported, so values should be of the form `projects/{project}/locations/{zone}`.",
          type = "string",
        },
        name = {
          description = "The unique name of the cluster. Values are of the form `projects/{project}/instances/{instance}/clusters/a-z*`.",
          type = "string",
        },
        serveNodes = {
          description = "The number of nodes allocated to this cluster. More nodes enable higher throughput and more consistent performance.",
          format = "int32",
          type = "integer",
        },
        state = {
          description = "Output only. The current state of the cluster.",
          enum = {
            "STATE_NOT_KNOWN",
            "READY",
            "CREATING",
            "RESIZING",
            "DISABLED",
          },
          enumDescriptions = {
            "The state of the cluster could not be determined.",
            "The cluster has been successfully created and is ready to serve requests.",
            "The cluster is currently being created, and may be destroyed if the creation process encounters an error. A cluster may not be able to serve requests while being created.",
            "The cluster is currently being resized, and may revert to its previous node count if the process encounters an error. A cluster is still capable of serving requests while being resized, but may exhibit performance as if its number of allocated nodes is between the starting and requested states.",
            "The cluster has no backing nodes. The data (tables) still exist, but no operations can be performed on the cluster.",
          },
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    ClusterAutoscalingConfig = {
      description = "Autoscaling config for a cluster.",
      id = "ClusterAutoscalingConfig",
      properties = {
        autoscalingLimits = {
          ["$ref"] = "AutoscalingLimits",
          description = "Required. Autoscaling limits for this cluster.",
        },
        autoscalingTargets = {
          ["$ref"] = "AutoscalingTargets",
          description = "Required. Autoscaling targets for this cluster.",
        },
      },
      type = "object",
    },
    ClusterConfig = {
      description = "Configuration for a cluster.",
      id = "ClusterConfig",
      properties = {
        clusterAutoscalingConfig = {
          ["$ref"] = "ClusterAutoscalingConfig",
          description = "Autoscaling configuration for this cluster.",
        },
      },
      type = "object",
    },
    ClusterState = {
      description = "The state of a table's data in a particular cluster.",
      id = "ClusterState",
      properties = {
        encryptionInfo = {
          description = "Output only. The encryption information for the table in this cluster. If the encryption key protecting this resource is customer managed, then its version can be rotated in Cloud Key Management Service (Cloud KMS). The primary version of the key and its status will be reflected here when changes propagate from Cloud KMS.",
          items = {
            ["$ref"] = "EncryptionInfo",
          },
          readOnly = true,
          type = "array",
        },
        replicationState = {
          description = "Output only. The state of replication for the table in this cluster.",
          enum = {
            "STATE_NOT_KNOWN",
            "INITIALIZING",
            "PLANNED_MAINTENANCE",
            "UNPLANNED_MAINTENANCE",
            "READY",
            "READY_OPTIMIZING",
          },
          enumDescriptions = {
            "The replication state of the table is unknown in this cluster.",
            "The cluster was recently created, and the table must finish copying over pre-existing data from other clusters before it can begin receiving live replication updates and serving Data API requests.",
            "The table is temporarily unable to serve Data API requests from this cluster due to planned internal maintenance.",
            "The table is temporarily unable to serve Data API requests from this cluster due to unplanned or emergency maintenance.",
            "The table can serve Data API requests from this cluster. Depending on replication delay, reads may not immediately reflect the state of the table in other clusters.",
            "The table is fully created and ready for use after a restore, and is being optimized for performance. When optimizations are complete, the table will transition to `READY` state.",
          },
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    ColumnFamily = {
      description = "A set of columns within a table which share a common configuration.",
      id = "ColumnFamily",
      properties = {
        gcRule = {
          ["$ref"] = "GcRule",
          description = "Garbage collection rule specified as a protobuf. Must serialize to at most 500 bytes. NOTE: Garbage collection executes opportunistically in the background, and so it's possible for reads to return a cell even if it matches the active GC expression for its family.",
        },
        stats = {
          ["$ref"] = "ColumnFamilyStats",
          description = "Only available with STATS_VIEW, this includes summary statistics about column family contents. For statistics over an entire table, see TableStats above.",
        },
      },
      type = "object",
    },
    ColumnFamilyStats = {
      description = "Approximate statistics related to a single column family within a table. This information may change rapidly, interpreting these values at a point in time may already preset out-of-date information. Everything below is approximate, unless otherwise specified.",
      id = "ColumnFamilyStats",
      properties = {
        averageCellsPerColumn = {
          description = "How many cells are present per column qualifier in this column family, averaged over all rows containing any column in the column family. e.g. For column family \"family\" in a table with 3 rows: * A row with 3 cells in \"family:col\" and 1 cell in \"other:col\" (3 cells / 1 column in \"family\") * A row with 1 cell in \"family:col\", 7 cells in \"family:other_col\", and 7 cells in \"other:data\" (8 cells / 2 columns in \"family\") * A row with 3 cells in \"other:col\" (0 columns in \"family\", \"family\" not present) would report (3 + 8 + 0)/(1 + 2 + 0) = 3.66 in this field.",
          format = "double",
          type = "number",
        },
        averageColumnsPerRow = {
          description = "How many column qualifiers are present in this column family, averaged over all rows in the table. e.g. For column family \"family\" in a table with 3 rows: * A row with cells in \"family:col\" and \"other:col\" (1 column in \"family\") * A row with cells in \"family:col\", \"family:other_col\", and \"other:data\" (2 columns in \"family\") * A row with cells in \"other:col\" (0 columns in \"family\", \"family\" not present) would report (1 + 2 + 0)/3 = 1.5 in this field.",
          format = "double",
          type = "number",
        },
        logicalDataBytes = {
          description = "How much space the data in the column family occupies. This is roughly how many bytes would be needed to read the contents of the entire column family (e.g. by streaming all contents out).",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    CopyBackupMetadata = {
      description = "Metadata type for the google.longrunning.Operation returned by CopyBackup.",
      id = "CopyBackupMetadata",
      properties = {
        name = {
          description = "The name of the backup being created through the copy operation. Values are of the form `projects//instances//clusters//backups/`.",
          type = "string",
        },
        progress = {
          ["$ref"] = "OperationProgress",
          description = "The progress of the CopyBackup operation.",
        },
        sourceBackupInfo = {
          ["$ref"] = "BackupInfo",
          description = "Information about the source backup that is being copied from.",
        },
      },
      type = "object",
    },
    CopyBackupRequest = {
      description = "The request for CopyBackup.",
      id = "CopyBackupRequest",
      properties = {
        backupId = {
          description = "Required. The id of the new backup. The `backup_id` along with `parent` are combined as {parent}/backups/{backup_id} to create the full backup name, of the form: `projects/{project}/instances/{instance}/clusters/{cluster}/backups/{backup_id}`. This string must be between 1 and 50 characters in length and match the regex _a-zA-Z0-9*.",
          type = "string",
        },
        expireTime = {
          description = "Required. Required. The expiration time of the copied backup with microsecond granularity that must be at least 6 hours and at most 30 days from the time the request is received. Once the `expire_time` has passed, Cloud Bigtable will delete the backup and free the resources used by the backup.",
          format = "google-datetime",
          type = "string",
        },
        sourceBackup = {
          description = "Required. The source backup to be copied from. The source backup needs to be in READY state for it to be copied. Copying a copied backup is not allowed. Once CopyBackup is in progress, the source backup cannot be deleted or cleaned up on expiration until CopyBackup is finished. Values are of the form: `projects//instances//clusters//backups/`.",
          type = "string",
        },
      },
      type = "object",
    },
    CreateBackupMetadata = {
      description = "Metadata type for the operation returned by CreateBackup.",
      id = "CreateBackupMetadata",
      properties = {
        endTime = {
          description = "If set, the time at which this operation finished or was cancelled.",
          format = "google-datetime",
          type = "string",
        },
        name = {
          description = "The name of the backup being created.",
          type = "string",
        },
        sourceTable = {
          description = "The name of the table the backup is created from.",
          type = "string",
        },
        startTime = {
          description = "The time at which this operation started.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    CreateClusterMetadata = {
      description = "The metadata for the Operation returned by CreateCluster.",
      id = "CreateClusterMetadata",
      properties = {
        finishTime = {
          description = "The time at which the operation failed or was completed successfully.",
          format = "google-datetime",
          type = "string",
        },
        originalRequest = {
          ["$ref"] = "CreateClusterRequest",
          description = "The request that prompted the initiation of this CreateCluster operation.",
        },
        requestTime = {
          description = "The time at which the original request was received.",
          format = "google-datetime",
          type = "string",
        },
        tables = {
          additionalProperties = {
            ["$ref"] = "TableProgress",
          },
          description = "Keys: the full `name` of each table that existed in the instance when CreateCluster was first called, i.e. `projects//instances//tables/`. Any table added to the instance by a later API call will be created in the new cluster by that API call, not this one. Values: information on how much of a table's data has been copied to the newly-created cluster so far.",
          type = "object",
        },
      },
      type = "object",
    },
    CreateClusterRequest = {
      description = "Request message for BigtableInstanceAdmin.CreateCluster.",
      id = "CreateClusterRequest",
      properties = {
        cluster = {
          ["$ref"] = "Cluster",
          description = "Required. The cluster to be created. Fields marked `OutputOnly` must be left blank.",
        },
        clusterId = {
          description = "Required. The ID to be used when referring to the new cluster within its instance, e.g., just `mycluster` rather than `projects/myproject/instances/myinstance/clusters/mycluster`.",
          type = "string",
        },
        parent = {
          description = "Required. The unique name of the instance in which to create the new cluster. Values are of the form `projects/{project}/instances/{instance}`.",
          type = "string",
        },
      },
      type = "object",
    },
    CreateInstanceMetadata = {
      description = "The metadata for the Operation returned by CreateInstance.",
      id = "CreateInstanceMetadata",
      properties = {
        finishTime = {
          description = "The time at which the operation failed or was completed successfully.",
          format = "google-datetime",
          type = "string",
        },
        originalRequest = {
          ["$ref"] = "CreateInstanceRequest",
          description = "The request that prompted the initiation of this CreateInstance operation.",
        },
        requestTime = {
          description = "The time at which the original request was received.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    CreateInstanceRequest = {
      description = "Request message for BigtableInstanceAdmin.CreateInstance.",
      id = "CreateInstanceRequest",
      properties = {
        clusters = {
          additionalProperties = {
            ["$ref"] = "Cluster",
          },
          description = "Required. The clusters to be created within the instance, mapped by desired cluster ID, e.g., just `mycluster` rather than `projects/myproject/instances/myinstance/clusters/mycluster`. Fields marked `OutputOnly` must be left blank.",
          type = "object",
        },
        instance = {
          ["$ref"] = "Instance",
          description = "Required. The instance to create. Fields marked `OutputOnly` must be left blank.",
        },
        instanceId = {
          description = "Required. The ID to be used when referring to the new instance within its project, e.g., just `myinstance` rather than `projects/myproject/instances/myinstance`.",
          type = "string",
        },
        parent = {
          description = "Required. The unique name of the project in which to create the new instance. Values are of the form `projects/{project}`.",
          type = "string",
        },
      },
      type = "object",
    },
    CreateTableRequest = {
      description = "Request message for google.bigtable.admin.v2.BigtableTableAdmin.CreateTable",
      id = "CreateTableRequest",
      properties = {
        initialSplits = {
          description = "The optional list of row keys that will be used to initially split the table into several tablets (tablets are similar to HBase regions). Given two split keys, `s1` and `s2`, three tablets will be created, spanning the key ranges: `[, s1), [s1, s2), [s2, )`. Example: * Row keys := `[\"a\", \"apple\", \"custom\", \"customer_1\", \"customer_2\",` `\"other\", \"zz\"]` * initial_split_keys := `[\"apple\", \"customer_1\", \"customer_2\", \"other\"]` * Key assignment: - Tablet 1 `[, apple) => {\"a\"}.` - Tablet 2 `[apple, customer_1) => {\"apple\", \"custom\"}.` - Tablet 3 `[customer_1, customer_2) => {\"customer_1\"}.` - Tablet 4 `[customer_2, other) => {\"customer_2\"}.` - Tablet 5 `[other, ) => {\"other\", \"zz\"}.`",
          items = {
            ["$ref"] = "Split",
          },
          type = "array",
        },
        table = {
          ["$ref"] = "Table",
          description = "Required. The Table to create.",
        },
        tableId = {
          description = "Required. The name by which the new table should be referred to within the parent instance, e.g., `foobar` rather than `{parent}/tables/foobar`. Maximum 50 characters.",
          type = "string",
        },
      },
      type = "object",
    },
    DropRowRangeRequest = {
      description = "Request message for google.bigtable.admin.v2.BigtableTableAdmin.DropRowRange",
      id = "DropRowRangeRequest",
      properties = {
        deleteAllDataFromTable = {
          description = "Delete all rows in the table. Setting this to false is a no-op.",
          type = "boolean",
        },
        rowKeyPrefix = {
          description = "Delete all rows that start with this row key prefix. Prefix cannot be zero length.",
          format = "byte",
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
    EncryptionConfig = {
      description = "Cloud Key Management Service (Cloud KMS) settings for a CMEK-protected cluster.",
      id = "EncryptionConfig",
      properties = {
        kmsKeyName = {
          description = "Describes the Cloud KMS encryption key that will be used to protect the destination Bigtable cluster. The requirements for this key are: 1) The Cloud Bigtable service account associated with the project that contains this cluster must be granted the `cloudkms.cryptoKeyEncrypterDecrypter` role on the CMEK key. 2) Only regional keys can be used and the region of the CMEK key must match the region of the cluster. Values are of the form `projects/{project}/locations/{location}/keyRings/{keyring}/cryptoKeys/{key}`",
          type = "string",
        },
      },
      type = "object",
    },
    EncryptionInfo = {
      description = "Encryption information for a given resource. If this resource is protected with customer managed encryption, the in-use Cloud Key Management Service (Cloud KMS) key version is specified along with its status.",
      id = "EncryptionInfo",
      properties = {
        encryptionStatus = {
          ["$ref"] = "Status",
          description = "Output only. The status of encrypt/decrypt calls on underlying data for this resource. Regardless of status, the existing data is always encrypted at rest.",
          readOnly = true,
        },
        encryptionType = {
          description = "Output only. The type of encryption used to protect this resource.",
          enum = {
            "ENCRYPTION_TYPE_UNSPECIFIED",
            "GOOGLE_DEFAULT_ENCRYPTION",
            "CUSTOMER_MANAGED_ENCRYPTION",
          },
          enumDescriptions = {
            "Encryption type was not specified, though data at rest remains encrypted.",
            "The data backing this resource is encrypted at rest with a key that is fully managed by Google. No key version or status will be populated. This is the default state.",
            "The data backing this resource is encrypted at rest with a key that is managed by the customer. The in-use version of the key and its status are populated for CMEK-protected tables. CMEK-protected backups are pinned to the key version that was in use at the time the backup was taken. This key version is populated but its status is not tracked and is reported as `UNKNOWN`.",
          },
          readOnly = true,
          type = "string",
        },
        kmsKeyVersion = {
          description = "Output only. The version of the Cloud KMS key specified in the parent cluster that is in use for the data underlying this table.",
          readOnly = true,
          type = "string",
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
    GcRule = {
      description = "Rule for determining which cells to delete during garbage collection.",
      id = "GcRule",
      properties = {
        intersection = {
          ["$ref"] = "Intersection",
          description = "Delete cells that would be deleted by every nested rule.",
        },
        maxAge = {
          description = "Delete cells in a column older than the given age. Values must be at least one millisecond, and will be truncated to microsecond granularity.",
          format = "google-duration",
          type = "string",
        },
        maxNumVersions = {
          description = "Delete all cells in a column except the most recent N.",
          format = "int32",
          type = "integer",
        },
        union = {
          ["$ref"] = "Union",
          description = "Delete cells that would be deleted by any nested rule.",
        },
      },
      type = "object",
    },
    GenerateConsistencyTokenRequest = {
      description = "Request message for google.bigtable.admin.v2.BigtableTableAdmin.GenerateConsistencyToken",
      id = "GenerateConsistencyTokenRequest",
      properties = {},
      type = "object",
    },
    GenerateConsistencyTokenResponse = {
      description = "Response message for google.bigtable.admin.v2.BigtableTableAdmin.GenerateConsistencyToken",
      id = "GenerateConsistencyTokenResponse",
      properties = {
        consistencyToken = {
          description = "The generated consistency token.",
          type = "string",
        },
      },
      type = "object",
    },
    GetIamPolicyRequest = {
      description = "Request message for `GetIamPolicy` method.",
      id = "GetIamPolicyRequest",
      properties = {
        options = {
          ["$ref"] = "GetPolicyOptions",
          description = "OPTIONAL: A `GetPolicyOptions` object for specifying options to `GetIamPolicy`.",
        },
      },
      type = "object",
    },
    GetPolicyOptions = {
      description = "Encapsulates settings provided to GetIamPolicy.",
      id = "GetPolicyOptions",
      properties = {
        requestedPolicyVersion = {
          description = "Optional. The maximum policy version that will be used to format the policy. Valid values are 0, 1, and 3. Requests specifying an invalid value will be rejected. Requests for policies with any conditional role bindings must specify version 3. Policies with no conditional role bindings may specify any valid value or leave the field unset. The policy in the response might use the policy version that you specified, or it might use a lower policy version. For example, if you specify version 3, but the policy has no conditional role bindings, the response uses version 1. To learn which resources support conditions in their IAM policies, see the [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    HotTablet = {
      description = "A tablet is a defined by a start and end key and is explained in https://cloud.google.com/bigtable/docs/overview#architecture and https://cloud.google.com/bigtable/docs/performance#optimization. A Hot tablet is a tablet that exhibits high average cpu usage during the time interval from start time to end time.",
      id = "HotTablet",
      properties = {
        endKey = {
          description = "Tablet End Key (inclusive).",
          type = "string",
        },
        endTime = {
          description = "Output only. The end time of the hot tablet.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        name = {
          description = "The unique name of the hot tablet. Values are of the form `projects/{project}/instances/{instance}/clusters/{cluster}/hotTablets/[a-zA-Z0-9_-]*`.",
          type = "string",
        },
        nodeCpuUsagePercent = {
          description = "Output only. The average CPU usage spent by a node on this tablet over the start_time to end_time time range. The percentage is the amount of CPU used by the node to serve the tablet, from 0% (tablet was not interacted with) to 100% (the node spent all cycles serving the hot tablet).",
          format = "float",
          readOnly = true,
          type = "number",
        },
        startKey = {
          description = "Tablet Start Key (inclusive).",
          type = "string",
        },
        startTime = {
          description = "Output only. The start time of the hot tablet.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        tableName = {
          description = "Name of the table that contains the tablet. Values are of the form `projects/{project}/instances/{instance}/tables/_a-zA-Z0-9*`.",
          type = "string",
        },
      },
      type = "object",
    },
    Instance = {
      description = "A collection of Bigtable Tables and the resources that serve them. All tables in an instance are served from all Clusters in the instance.",
      id = "Instance",
      properties = {
        createTime = {
          description = "Output only. A commit timestamp representing when this Instance was created. For instances created before this field was added (August 2021), this value is `seconds: 0, nanos: 1`.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        displayName = {
          description = "Required. The descriptive name for this instance as it appears in UIs. Can be changed at any time, but should be kept globally unique to avoid confusion.",
          type = "string",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "Labels are a flexible and lightweight mechanism for organizing cloud resources into groups that reflect a customer's organizational needs and deployment strategies. They can be used to filter resources and aggregate metrics. * Label keys must be between 1 and 63 characters long and must conform to the regular expression: `\\p{Ll}\\p{Lo}{0,62}`. * Label values must be between 0 and 63 characters long and must conform to the regular expression: `[\\p{Ll}\\p{Lo}\\p{N}_-]{0,63}`. * No more than 64 labels can be associated with a given resource. * Keys and values must both be under 128 bytes.",
          type = "object",
        },
        name = {
          description = "The unique name of the instance. Values are of the form `projects/{project}/instances/a-z+[a-z0-9]`.",
          type = "string",
        },
        satisfiesPzs = {
          description = "Output only. Reserved for future use.",
          readOnly = true,
          type = "boolean",
        },
        state = {
          description = "Output only. The current state of the instance.",
          enum = {
            "STATE_NOT_KNOWN",
            "READY",
            "CREATING",
          },
          enumDescriptions = {
            "The state of the instance could not be determined.",
            "The instance has been successfully created and can serve requests to its tables.",
            "The instance is currently being created, and may be destroyed if the creation process encounters an error.",
          },
          readOnly = true,
          type = "string",
        },
        type = {
          description = "The type of the instance. Defaults to `PRODUCTION`.",
          enum = {
            "TYPE_UNSPECIFIED",
            "PRODUCTION",
            "DEVELOPMENT",
          },
          enumDescriptions = {
            "The type of the instance is unspecified. If set when creating an instance, a `PRODUCTION` instance will be created. If set when updating an instance, the type will be left unchanged.",
            "An instance meant for production use. `serve_nodes` must be set on the cluster.",
            "DEPRECATED: Prefer PRODUCTION for all use cases, as it no longer enforces a higher minimum node count than DEVELOPMENT.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    Intersection = {
      description = "A GcRule which deletes cells matching all of the given rules.",
      id = "Intersection",
      properties = {
        rules = {
          description = "Only delete cells which would be deleted by every element of `rules`.",
          items = {
            ["$ref"] = "GcRule",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ListAppProfilesResponse = {
      description = "Response message for BigtableInstanceAdmin.ListAppProfiles.",
      id = "ListAppProfilesResponse",
      properties = {
        appProfiles = {
          description = "The list of requested app profiles.",
          items = {
            ["$ref"] = "AppProfile",
          },
          type = "array",
        },
        failedLocations = {
          description = "Locations from which AppProfile information could not be retrieved, due to an outage or some other transient condition. AppProfiles from these locations may be missing from `app_profiles`. Values are of the form `projects//locations/`",
          items = {
            type = "string",
          },
          type = "array",
        },
        nextPageToken = {
          description = "Set if not all app profiles could be returned in a single response. Pass this value to `page_token` in another request to get the next page of results.",
          type = "string",
        },
      },
      type = "object",
    },
    ListBackupsResponse = {
      description = "The response for ListBackups.",
      id = "ListBackupsResponse",
      properties = {
        backups = {
          description = "The list of matching backups.",
          items = {
            ["$ref"] = "Backup",
          },
          type = "array",
        },
        nextPageToken = {
          description = "`next_page_token` can be sent in a subsequent ListBackups call to fetch more of the matching backups.",
          type = "string",
        },
      },
      type = "object",
    },
    ListClustersResponse = {
      description = "Response message for BigtableInstanceAdmin.ListClusters.",
      id = "ListClustersResponse",
      properties = {
        clusters = {
          description = "The list of requested clusters.",
          items = {
            ["$ref"] = "Cluster",
          },
          type = "array",
        },
        failedLocations = {
          description = "Locations from which Cluster information could not be retrieved, due to an outage or some other transient condition. Clusters from these locations may be missing from `clusters`, or may only have partial information returned. Values are of the form `projects//locations/`",
          items = {
            type = "string",
          },
          type = "array",
        },
        nextPageToken = {
          description = "DEPRECATED: This field is unused and ignored.",
          type = "string",
        },
      },
      type = "object",
    },
    ListHotTabletsResponse = {
      description = "Response message for BigtableInstanceAdmin.ListHotTablets.",
      id = "ListHotTabletsResponse",
      properties = {
        hotTablets = {
          description = "List of hot tablets in the tables of the requested cluster that fall within the requested time range. Hot tablets are ordered by node cpu usage percent. If there are multiple hot tablets that correspond to the same tablet within a 15-minute interval, only the hot tablet with the highest node cpu usage will be included in the response.",
          items = {
            ["$ref"] = "HotTablet",
          },
          type = "array",
        },
        nextPageToken = {
          description = "Set if not all hot tablets could be returned in a single response. Pass this value to `page_token` in another request to get the next page of results.",
          type = "string",
        },
      },
      type = "object",
    },
    ListInstancesResponse = {
      description = "Response message for BigtableInstanceAdmin.ListInstances.",
      id = "ListInstancesResponse",
      properties = {
        failedLocations = {
          description = "Locations from which Instance information could not be retrieved, due to an outage or some other transient condition. Instances whose Clusters are all in one of the failed locations may be missing from `instances`, and Instances with at least one Cluster in a failed location may only have partial information returned. Values are of the form `projects//locations/`",
          items = {
            type = "string",
          },
          type = "array",
        },
        instances = {
          description = "The list of requested instances.",
          items = {
            ["$ref"] = "Instance",
          },
          type = "array",
        },
        nextPageToken = {
          description = "DEPRECATED: This field is unused and ignored.",
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
    ListTablesResponse = {
      description = "Response message for google.bigtable.admin.v2.BigtableTableAdmin.ListTables",
      id = "ListTablesResponse",
      properties = {
        nextPageToken = {
          description = "Set if not all tables could be returned in a single response. Pass this value to `page_token` in another request to get the next page of results.",
          type = "string",
        },
        tables = {
          description = "The tables present in the requested instance.",
          items = {
            ["$ref"] = "Table",
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
    Modification = {
      description = "A create, update, or delete of a particular column family.",
      id = "Modification",
      properties = {
        create = {
          ["$ref"] = "ColumnFamily",
          description = "Create a new column family with the specified schema, or fail if one already exists with the given ID.",
        },
        drop = {
          description = "Drop (delete) the column family with the given ID, or fail if no such family exists.",
          type = "boolean",
        },
        id = {
          description = "The ID of the column family to be modified.",
          type = "string",
        },
        update = {
          ["$ref"] = "ColumnFamily",
          description = "Update an existing column family to the specified schema, or fail if no column family exists with the given ID.",
        },
      },
      type = "object",
    },
    ModifyColumnFamiliesRequest = {
      description = "Request message for google.bigtable.admin.v2.BigtableTableAdmin.ModifyColumnFamilies",
      id = "ModifyColumnFamiliesRequest",
      properties = {
        modifications = {
          description = "Required. Modifications to be atomically applied to the specified table's families. Entries are applied in order, meaning that earlier modifications can be masked by later ones (in the case of repeated updates to the same family, for example).",
          items = {
            ["$ref"] = "Modification",
          },
          type = "array",
        },
      },
      type = "object",
    },
    MultiClusterRoutingUseAny = {
      description = "Read/write requests are routed to the nearest cluster in the instance, and will fail over to the nearest cluster that is available in the event of transient errors or delays. Clusters in a region are considered equidistant. Choosing this option sacrifices read-your-writes consistency to improve availability.",
      id = "MultiClusterRoutingUseAny",
      properties = {
        clusterIds = {
          description = "The set of clusters to route to. The order is ignored; clusters will be tried in order of distance. If left empty, all clusters are eligible.",
          items = {
            type = "string",
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
    OperationProgress = {
      description = "Encapsulates progress related information for a Cloud Bigtable long running operation.",
      id = "OperationProgress",
      properties = {
        endTime = {
          description = "If set, the time at which this operation failed or was completed successfully.",
          format = "google-datetime",
          type = "string",
        },
        progressPercent = {
          description = "Percent completion of the operation. Values are between 0 and 100 inclusive.",
          format = "int32",
          type = "integer",
        },
        startTime = {
          description = "Time the request was received.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    OptimizeRestoredTableMetadata = {
      description = "Metadata type for the long-running operation used to track the progress of optimizations performed on a newly restored table. This long-running operation is automatically created by the system after the successful completion of a table restore, and cannot be cancelled.",
      id = "OptimizeRestoredTableMetadata",
      properties = {
        name = {
          description = "Name of the restored table being optimized.",
          type = "string",
        },
        progress = {
          ["$ref"] = "OperationProgress",
          description = "The progress of the post-restore optimizations.",
        },
      },
      type = "object",
    },
    PartialUpdateClusterMetadata = {
      description = "The metadata for the Operation returned by PartialUpdateCluster.",
      id = "PartialUpdateClusterMetadata",
      properties = {
        finishTime = {
          description = "The time at which the operation failed or was completed successfully.",
          format = "google-datetime",
          type = "string",
        },
        originalRequest = {
          ["$ref"] = "PartialUpdateClusterRequest",
          description = "The original request for PartialUpdateCluster.",
        },
        requestTime = {
          description = "The time at which the original request was received.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    PartialUpdateClusterRequest = {
      description = "Request message for BigtableInstanceAdmin.PartialUpdateCluster.",
      id = "PartialUpdateClusterRequest",
      properties = {
        cluster = {
          ["$ref"] = "Cluster",
          description = "Required. The Cluster which contains the partial updates to be applied, subject to the update_mask.",
        },
        updateMask = {
          description = "Required. The subset of Cluster fields which should be replaced.",
          format = "google-fieldmask",
          type = "string",
        },
      },
      type = "object",
    },
    PartialUpdateInstanceRequest = {
      description = "Request message for BigtableInstanceAdmin.PartialUpdateInstance.",
      id = "PartialUpdateInstanceRequest",
      properties = {
        instance = {
          ["$ref"] = "Instance",
          description = "Required. The Instance which will (partially) replace the current value.",
        },
        updateMask = {
          description = "Required. The subset of Instance fields which should be replaced. Must be explicitly set.",
          format = "google-fieldmask",
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
    RestoreInfo = {
      description = "Information about a table restore.",
      id = "RestoreInfo",
      properties = {
        backupInfo = {
          ["$ref"] = "BackupInfo",
          description = "Information about the backup used to restore the table. The backup may no longer exist.",
        },
        sourceType = {
          description = "The type of the restore source.",
          enum = {
            "RESTORE_SOURCE_TYPE_UNSPECIFIED",
            "BACKUP",
          },
          enumDescriptions = {
            "No restore associated.",
            "A backup was used as the source of the restore.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    RestoreTableMetadata = {
      description = "Metadata type for the long-running operation returned by RestoreTable.",
      id = "RestoreTableMetadata",
      properties = {
        backupInfo = {
          ["$ref"] = "BackupInfo",
        },
        name = {
          description = "Name of the table being created and restored to.",
          type = "string",
        },
        optimizeTableOperationName = {
          description = "If exists, the name of the long-running operation that will be used to track the post-restore optimization process to optimize the performance of the restored table. The metadata type of the long-running operation is OptimizeRestoreTableMetadata. The response type is Empty. This long-running operation may be automatically created by the system if applicable after the RestoreTable long-running operation completes successfully. This operation may not be created if the table is already optimized or the restore was not successful.",
          type = "string",
        },
        progress = {
          ["$ref"] = "OperationProgress",
          description = "The progress of the RestoreTable operation.",
        },
        sourceType = {
          description = "The type of the restore source.",
          enum = {
            "RESTORE_SOURCE_TYPE_UNSPECIFIED",
            "BACKUP",
          },
          enumDescriptions = {
            "No restore associated.",
            "A backup was used as the source of the restore.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    RestoreTableRequest = {
      description = "The request for RestoreTable.",
      id = "RestoreTableRequest",
      properties = {
        backup = {
          description = "Name of the backup from which to restore. Values are of the form `projects//instances//clusters//backups/`.",
          type = "string",
        },
        tableId = {
          description = "Required. The id of the table to create and restore to. This table must not already exist. The `table_id` appended to `parent` forms the full table name of the form `projects//instances//tables/`.",
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
    SingleClusterRouting = {
      description = "Unconditionally routes all read/write requests to a specific cluster. This option preserves read-your-writes consistency but does not improve availability.",
      id = "SingleClusterRouting",
      properties = {
        allowTransactionalWrites = {
          description = "Whether or not `CheckAndMutateRow` and `ReadModifyWriteRow` requests are allowed by this app profile. It is unsafe to send these requests to the same table/row/column in multiple clusters.",
          type = "boolean",
        },
        clusterId = {
          description = "The cluster to which read/write requests should be routed.",
          type = "string",
        },
      },
      type = "object",
    },
    Split = {
      description = "An initial split point for a newly created table.",
      id = "Split",
      properties = {
        key = {
          description = "Row key to use as an initial tablet boundary.",
          format = "byte",
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
    Table = {
      description = "A collection of user data indexed by row, column, and timestamp. Each table is served using the resources of its parent cluster.",
      id = "Table",
      properties = {
        clusterStates = {
          additionalProperties = {
            ["$ref"] = "ClusterState",
          },
          description = "Output only. Map from cluster ID to per-cluster table state. If it could not be determined whether or not the table has data in a particular cluster (for example, if its zone is unavailable), then there will be an entry for the cluster with UNKNOWN `replication_status`. Views: `REPLICATION_VIEW`, `ENCRYPTION_VIEW`, `FULL`",
          readOnly = true,
          type = "object",
        },
        columnFamilies = {
          additionalProperties = {
            ["$ref"] = "ColumnFamily",
          },
          description = "The column families configured for this table, mapped by column family ID. Views: `SCHEMA_VIEW`, `STATS_VIEW`, `FULL`",
          type = "object",
        },
        deletionProtection = {
          description = "Set to true to make the table protected against data loss. i.e. deleting the following resources through Admin APIs are prohibited: * The table. * The column families in the table. * The instance containing the table. Note one can still delete the data stored in the table through Data APIs.",
          type = "boolean",
        },
        granularity = {
          description = "Immutable. The granularity (i.e. `MILLIS`) at which timestamps are stored in this table. Timestamps not matching the granularity will be rejected. If unspecified at creation time, the value will be set to `MILLIS`. Views: `SCHEMA_VIEW`, `FULL`.",
          enum = {
            "TIMESTAMP_GRANULARITY_UNSPECIFIED",
            "MILLIS",
          },
          enumDescriptions = {
            "The user did not specify a granularity. Should not be returned. When specified during table creation, MILLIS will be used.",
            "The table keeps data versioned at a granularity of 1ms.",
          },
          type = "string",
        },
        name = {
          description = "The unique name of the table. Values are of the form `projects/{project}/instances/{instance}/tables/_a-zA-Z0-9*`. Views: `NAME_ONLY`, `SCHEMA_VIEW`, `REPLICATION_VIEW`, `STATS_VIEW`, `FULL`",
          type = "string",
        },
        restoreInfo = {
          ["$ref"] = "RestoreInfo",
          description = "Output only. If this table was restored from another data source (e.g. a backup), this field will be populated with information about the restore.",
          readOnly = true,
        },
        stats = {
          ["$ref"] = "TableStats",
          description = "Only available with STATS_VIEW, this includes summary statistics about the entire table contents. For statistics about a specific column family, see ColumnFamilyStats in the mapped ColumnFamily collection above.",
        },
      },
      type = "object",
    },
    TableProgress = {
      description = "Progress info for copying a table's data to the new cluster.",
      id = "TableProgress",
      properties = {
        estimatedCopiedBytes = {
          description = "Estimate of the number of bytes copied so far for this table. This will eventually reach 'estimated_size_bytes' unless the table copy is CANCELLED.",
          format = "int64",
          type = "string",
        },
        estimatedSizeBytes = {
          description = "Estimate of the size of the table to be copied.",
          format = "int64",
          type = "string",
        },
        state = {
          enum = {
            "STATE_UNSPECIFIED",
            "PENDING",
            "COPYING",
            "COMPLETED",
            "CANCELLED",
          },
          enumDescriptions = {
            "",
            "The table has not yet begun copying to the new cluster.",
            "The table is actively being copied to the new cluster.",
            "The table has been fully copied to the new cluster.",
            "The table was deleted before it finished copying to the new cluster. Note that tables deleted after completion will stay marked as COMPLETED, not CANCELLED.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    TableStats = {
      description = "Approximate statistics related to a table. These statistics are calculated infrequently, while simultaneously, data in the table can change rapidly. Thus the values reported here (e.g. row count) are very likely out-of date, even the instant they are received in this API. Thus, only treat these values as approximate. IMPORTANT: Everything below is approximate, unless otherwise specified.",
      id = "TableStats",
      properties = {
        averageCellsPerColumn = {
          description = "How many cells are present per column (column family, column qualifier) combinations, averaged over all columns in all rows in the table. e.g. A table with 2 rows: * A row with 3 cells in \"family:col\" and 1 cell in \"other:col\" (4 cells / 2 columns) * A row with 1 cell in \"family:col\", 7 cells in \"family:other_col\", and 7 cells in \"other:data\" (15 cells / 3 columns) would report (4 + 15)/(2 + 3) = 3.8 in this field.",
          format = "double",
          type = "number",
        },
        averageColumnsPerRow = {
          description = "How many (column family, column qualifier) combinations are present per row in the table, averaged over all rows in the table. e.g. A table with 2 rows: * A row with cells in \"family:col\" and \"other:col\" (2 distinct columns) * A row with cells in \"family:col\", \"family:other_col\", and \"other:data\" (3 distinct columns) would report (2 + 3)/2 = 2.5 in this field.",
          format = "double",
          type = "number",
        },
        logicalDataBytes = {
          description = "This is roughly how many bytes would be needed to read the entire table (e.g. by streaming all contents out).",
          format = "int64",
          type = "string",
        },
        rowCount = {
          description = "How many rows are in the table.",
          format = "int64",
          type = "string",
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
    UndeleteTableMetadata = {
      description = "Metadata type for the operation returned by google.bigtable.admin.v2.BigtableTableAdmin.UndeleteTable.",
      id = "UndeleteTableMetadata",
      properties = {
        endTime = {
          description = "If set, the time at which this operation finished or was cancelled.",
          format = "google-datetime",
          type = "string",
        },
        name = {
          description = "The name of the table being restored.",
          type = "string",
        },
        startTime = {
          description = "The time at which this operation started.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    UndeleteTableRequest = {
      description = "Request message for google.bigtable.admin.v2.BigtableTableAdmin.UndeleteTable",
      id = "UndeleteTableRequest",
      properties = {},
      type = "object",
    },
    Union = {
      description = "A GcRule which deletes cells matching any of the given rules.",
      id = "Union",
      properties = {
        rules = {
          description = "Delete cells which would be deleted by any element of `rules`.",
          items = {
            ["$ref"] = "GcRule",
          },
          type = "array",
        },
      },
      type = "object",
    },
    UpdateAppProfileMetadata = {
      description = "The metadata for the Operation returned by UpdateAppProfile.",
      id = "UpdateAppProfileMetadata",
      properties = {},
      type = "object",
    },
    UpdateClusterMetadata = {
      description = "The metadata for the Operation returned by UpdateCluster.",
      id = "UpdateClusterMetadata",
      properties = {
        finishTime = {
          description = "The time at which the operation failed or was completed successfully.",
          format = "google-datetime",
          type = "string",
        },
        originalRequest = {
          ["$ref"] = "Cluster",
          description = "The request that prompted the initiation of this UpdateCluster operation.",
        },
        requestTime = {
          description = "The time at which the original request was received.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    UpdateInstanceMetadata = {
      description = "The metadata for the Operation returned by UpdateInstance.",
      id = "UpdateInstanceMetadata",
      properties = {
        finishTime = {
          description = "The time at which the operation failed or was completed successfully.",
          format = "google-datetime",
          type = "string",
        },
        originalRequest = {
          ["$ref"] = "PartialUpdateInstanceRequest",
          description = "The request that prompted the initiation of this UpdateInstance operation.",
        },
        requestTime = {
          description = "The time at which the original request was received.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    UpdateTableMetadata = {
      description = "Metadata type for the operation returned by UpdateTable.",
      id = "UpdateTableMetadata",
      properties = {
        endTime = {
          description = "If set, the time at which this operation finished or was canceled.",
          format = "google-datetime",
          type = "string",
        },
        name = {
          description = "The name of the table being updated.",
          type = "string",
        },
        startTime = {
          description = "The time at which this operation started.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
  },
  servicePath = "",
  title = "Cloud Bigtable Admin API",
  version = "v2",
  version_module = true,
}
