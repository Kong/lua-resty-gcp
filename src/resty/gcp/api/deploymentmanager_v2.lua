return {
  auth = {
    oauth2 = {
      scopes = {
        ["https://www.googleapis.com/auth/cloud-platform"] = {
          description = "See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account.",
        },
        ["https://www.googleapis.com/auth/cloud-platform.read-only"] = {
          description = "View your data across Google Cloud services and see the email address of your Google Account",
        },
        ["https://www.googleapis.com/auth/ndev.cloudman"] = {
          description = "View and manage your Google Cloud Platform management resources and deployment status information",
        },
        ["https://www.googleapis.com/auth/ndev.cloudman.readonly"] = {
          description = "View your Google Cloud Platform management resources and deployment status information",
        },
      },
    },
  },
  basePath = "",
  baseUrl = "https://deploymentmanager.googleapis.com/",
  batchPath = "batch",
  canonicalName = "Deployment Manager",
  description = "The Google Cloud Deployment Manager v2 API provides services for configuring, deploying, and viewing Google Cloud services and APIs via templates which specify deployments of Cloud resources.",
  discoveryVersion = "v1",
  documentationLink = "https://cloud.google.com/deployment-manager",
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "deploymentmanager:v2",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://deploymentmanager.mtls.googleapis.com/",
  name = "deploymentmanager",
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
    deployments = {
      methods = {
        cancelPreview = {
          description = "Cancels and removes the preview currently associated with the deployment.",
          flatPath = "deploymentmanager/v2/projects/{project}/global/deployments/{deployment}/cancelPreview",
          httpMethod = "POST",
          id = "deploymentmanager.deployments.cancelPreview",
          parameterOrder = {
            "project",
            "deployment",
          },
          parameters = {
            deployment = {
              description = "The name of the deployment for this request.",
              location = "path",
              pattern = "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?",
              required = true,
              type = "string",
            },
            project = {
              description = "The project ID for this request.",
              location = "path",
              pattern = "(?:(?:[-a-z0-9]{1,63}\\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))",
              required = true,
              type = "string",
            },
          },
          path = "deploymentmanager/v2/projects/{project}/global/deployments/{deployment}/cancelPreview",
          request = {
            ["$ref"] = "DeploymentsCancelPreviewRequest",
          },
          response = {
            ["$ref"] = "Operation",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/ndev.cloudman",
          },
        },
        delete = {
          description = "Deletes a deployment and all of the resources in the deployment.",
          flatPath = "deploymentmanager/v2/projects/{project}/global/deployments/{deployment}",
          httpMethod = "DELETE",
          id = "deploymentmanager.deployments.delete",
          parameterOrder = {
            "project",
            "deployment",
          },
          parameters = {
            deletePolicy = {
              default = "DELETE",
              description = "Sets the policy to use for deleting resources.",
              enum = {
                "DELETE",
                "ABANDON",
              },
              enumDescriptions = {
                "",
                "",
              },
              location = "query",
              type = "string",
            },
            deployment = {
              description = "The name of the deployment for this request.",
              location = "path",
              required = true,
              type = "string",
            },
            project = {
              description = "The project ID for this request.",
              location = "path",
              pattern = "(?:(?:[-a-z0-9]{1,63}\\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))",
              required = true,
              type = "string",
            },
          },
          path = "deploymentmanager/v2/projects/{project}/global/deployments/{deployment}",
          response = {
            ["$ref"] = "Operation",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/ndev.cloudman",
          },
        },
        get = {
          description = "Gets information about a specific deployment.",
          flatPath = "deploymentmanager/v2/projects/{project}/global/deployments/{deployment}",
          httpMethod = "GET",
          id = "deploymentmanager.deployments.get",
          parameterOrder = {
            "project",
            "deployment",
          },
          parameters = {
            deployment = {
              description = "The name of the deployment for this request.",
              location = "path",
              pattern = "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?",
              required = true,
              type = "string",
            },
            project = {
              description = "The project ID for this request.",
              location = "path",
              pattern = "(?:(?:[-a-z0-9]{1,63}\\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))",
              required = true,
              type = "string",
            },
          },
          path = "deploymentmanager/v2/projects/{project}/global/deployments/{deployment}",
          response = {
            ["$ref"] = "Deployment",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/cloud-platform.read-only",
            "https://www.googleapis.com/auth/ndev.cloudman",
            "https://www.googleapis.com/auth/ndev.cloudman.readonly",
          },
        },
        getIamPolicy = {
          description = "Gets the access control policy for a resource. May be empty if no such policy or resource exists.",
          flatPath = "deploymentmanager/v2/projects/{project}/global/deployments/{resource}/getIamPolicy",
          httpMethod = "GET",
          id = "deploymentmanager.deployments.getIamPolicy",
          parameterOrder = {
            "project",
            "resource",
          },
          parameters = {
            optionsRequestedPolicyVersion = {
              description = "Requested IAM Policy version.",
              format = "int32",
              location = "query",
              type = "integer",
            },
            project = {
              description = "Project ID for this request.",
              location = "path",
              pattern = "(?:(?:[-a-z0-9]{1,63}\\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z0-9](?:[-a-z0-9]{0,61}[a-z0-9])?))",
              required = true,
              type = "string",
            },
            resource = {
              description = "Name or id of the resource for this request.",
              location = "path",
              pattern = "[a-z](?:[-a-z0-9_]{0,61}[a-z0-9])?|[1-9][0-9]{0,19}",
              required = true,
              type = "string",
            },
          },
          path = "deploymentmanager/v2/projects/{project}/global/deployments/{resource}/getIamPolicy",
          response = {
            ["$ref"] = "Policy",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/ndev.cloudman",
          },
        },
        insert = {
          description = "Creates a deployment and all of the resources described by the deployment manifest.",
          flatPath = "deploymentmanager/v2/projects/{project}/global/deployments",
          httpMethod = "POST",
          id = "deploymentmanager.deployments.insert",
          parameterOrder = {
            "project",
          },
          parameters = {
            createPolicy = {
              default = "CREATE_OR_ACQUIRE",
              description = "Sets the policy to use for creating new resources.",
              enum = {
                "CREATE_OR_ACQUIRE",
                "ACQUIRE",
              },
              enumDescriptions = {
                "",
                "",
              },
              location = "query",
              type = "string",
            },
            preview = {
              description = "If set to true, creates a deployment and creates \"shell\" resources but does not actually instantiate these resources. This allows you to preview what your deployment looks like. After previewing a deployment, you can deploy your resources by making a request with the `update()` method or you can use the `cancelPreview()` method to cancel the preview altogether. Note that the deployment will still exist after you cancel the preview and you must separately delete this deployment if you want to remove it.",
              location = "query",
              type = "boolean",
            },
            project = {
              description = "The project ID for this request.",
              location = "path",
              pattern = "(?:(?:[-a-z0-9]{1,63}\\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))",
              required = true,
              type = "string",
            },
          },
          path = "deploymentmanager/v2/projects/{project}/global/deployments",
          request = {
            ["$ref"] = "Deployment",
          },
          response = {
            ["$ref"] = "Operation",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/ndev.cloudman",
          },
        },
        list = {
          description = "Lists all deployments for a given project.",
          flatPath = "deploymentmanager/v2/projects/{project}/global/deployments",
          httpMethod = "GET",
          id = "deploymentmanager.deployments.list",
          parameterOrder = {
            "project",
          },
          parameters = {
            filter = {
              description = "A filter expression that filters resources listed in the response. Most Compute resources support two types of filter expressions: expressions that support regular expressions and expressions that follow API improvement proposal AIP-160. If you want to use AIP-160, your expression must specify the field name, an operator, and the value that you want to use for filtering. The value must be a string, a number, or a boolean. The operator must be either `=`, `!=`, `>`, `<`, `<=`, `>=` or `:`. For example, if you are filtering Compute Engine instances, you can exclude instances named `example-instance` by specifying `name != example-instance`. The `:` operator can be used with string fields to match substrings. For non-string fields it is equivalent to the `=` operator. The `:*` comparison can be used to test whether a key has been defined. For example, to find all objects with `owner` label use: ``` labels.owner:* ``` You can also filter nested fields. For example, you could specify `scheduling.automaticRestart = false` to include instances only if they are not scheduled for automatic restarts. You can use filtering on nested fields to filter based on resource labels. To filter on multiple expressions, provide each separate expression within parentheses. For example: ``` (scheduling.automaticRestart = true) (cpuPlatform = \"Intel Skylake\") ``` By default, each expression is an `AND` expression. However, you can include `AND` and `OR` expressions explicitly. For example: ``` (cpuPlatform = \"Intel Skylake\") OR (cpuPlatform = \"Intel Broadwell\") AND (scheduling.automaticRestart = true) ``` If you want to use a regular expression, use the `eq` (equal) or `ne` (not equal) operator against a single un-parenthesized expression with or without quotes or against multiple parenthesized expressions. Examples: `fieldname eq unquoted literal` `fieldname eq 'single quoted literal'` `fieldname eq \"double quoted literal\"` `(fieldname1 eq literal) (fieldname2 ne \"literal\")` The literal value is interpreted as a regular expression using Google RE2 library syntax. The literal value must match the entire field. For example, to filter for instances that do not end with name \"instance\", you would use `name ne .*instance`.",
              location = "query",
              type = "string",
            },
            maxResults = {
              default = "500",
              description = "The maximum number of results per page that should be returned. If the number of available results is larger than `maxResults`, Compute Engine returns a `nextPageToken` that can be used to get the next page of results in subsequent list requests. Acceptable values are `0` to `500`, inclusive. (Default: `500`)",
              format = "uint32",
              location = "query",
              minimum = "0",
              type = "integer",
            },
            orderBy = {
              description = "Sorts list results by a certain order. By default, results are returned in alphanumerical order based on the resource name. You can also sort results in descending order based on the creation timestamp using `orderBy=\"creationTimestamp desc\"`. This sorts results based on the `creationTimestamp` field in reverse chronological order (newest result first). Use this to sort resources like operations so that the newest operation is returned first. Currently, only sorting by `name` or `creationTimestamp desc` is supported.",
              location = "query",
              type = "string",
            },
            pageToken = {
              description = "Specifies a page token to use. Set `pageToken` to the `nextPageToken` returned by a previous list request to get the next page of results.",
              location = "query",
              type = "string",
            },
            project = {
              description = "The project ID for this request.",
              location = "path",
              pattern = "(?:(?:[-a-z0-9]{1,63}\\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))",
              required = true,
              type = "string",
            },
          },
          path = "deploymentmanager/v2/projects/{project}/global/deployments",
          response = {
            ["$ref"] = "DeploymentsListResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/cloud-platform.read-only",
            "https://www.googleapis.com/auth/ndev.cloudman",
            "https://www.googleapis.com/auth/ndev.cloudman.readonly",
          },
        },
        patch = {
          description = "Patches a deployment and all of the resources described by the deployment manifest.",
          flatPath = "deploymentmanager/v2/projects/{project}/global/deployments/{deployment}",
          httpMethod = "PATCH",
          id = "deploymentmanager.deployments.patch",
          parameterOrder = {
            "project",
            "deployment",
          },
          parameters = {
            createPolicy = {
              default = "CREATE_OR_ACQUIRE",
              description = "Sets the policy to use for creating new resources.",
              enum = {
                "CREATE_OR_ACQUIRE",
                "ACQUIRE",
              },
              enumDescriptions = {
                "",
                "",
              },
              location = "query",
              type = "string",
            },
            deletePolicy = {
              default = "DELETE",
              description = "Sets the policy to use for deleting resources.",
              enum = {
                "DELETE",
                "ABANDON",
              },
              enumDescriptions = {
                "",
                "",
              },
              location = "query",
              type = "string",
            },
            deployment = {
              description = "The name of the deployment for this request.",
              location = "path",
              pattern = "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?",
              required = true,
              type = "string",
            },
            preview = {
              default = "false",
              description = "If set to true, updates the deployment and creates and updates the \"shell\" resources but does not actually alter or instantiate these resources. This allows you to preview what your deployment will look like. You can use this intent to preview how an update would affect your deployment. You must provide a `target.config` with a configuration if this is set to true. After previewing a deployment, you can deploy your resources by making a request with the `update()` or you can `cancelPreview()` to remove the preview altogether. Note that the deployment will still exist after you cancel the preview and you must separately delete this deployment if you want to remove it.",
              location = "query",
              type = "boolean",
            },
            project = {
              description = "The project ID for this request.",
              location = "path",
              pattern = "(?:(?:[-a-z0-9]{1,63}\\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))",
              required = true,
              type = "string",
            },
          },
          path = "deploymentmanager/v2/projects/{project}/global/deployments/{deployment}",
          request = {
            ["$ref"] = "Deployment",
          },
          response = {
            ["$ref"] = "Operation",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/ndev.cloudman",
          },
        },
        setIamPolicy = {
          description = "Sets the access control policy on the specified resource. Replaces any existing policy.",
          flatPath = "deploymentmanager/v2/projects/{project}/global/deployments/{resource}/setIamPolicy",
          httpMethod = "POST",
          id = "deploymentmanager.deployments.setIamPolicy",
          parameterOrder = {
            "project",
            "resource",
          },
          parameters = {
            project = {
              description = "Project ID for this request.",
              location = "path",
              pattern = "(?:(?:[-a-z0-9]{1,63}\\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z0-9](?:[-a-z0-9]{0,61}[a-z0-9])?))",
              required = true,
              type = "string",
            },
            resource = {
              description = "Name or id of the resource for this request.",
              location = "path",
              pattern = "[a-z](?:[-a-z0-9_]{0,61}[a-z0-9])?|[1-9][0-9]{0,19}",
              required = true,
              type = "string",
            },
          },
          path = "deploymentmanager/v2/projects/{project}/global/deployments/{resource}/setIamPolicy",
          request = {
            ["$ref"] = "GlobalSetPolicyRequest",
          },
          response = {
            ["$ref"] = "Policy",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/ndev.cloudman",
          },
        },
        stop = {
          description = "Stops an ongoing operation. This does not roll back any work that has already been completed, but prevents any new work from being started.",
          flatPath = "deploymentmanager/v2/projects/{project}/global/deployments/{deployment}/stop",
          httpMethod = "POST",
          id = "deploymentmanager.deployments.stop",
          parameterOrder = {
            "project",
            "deployment",
          },
          parameters = {
            deployment = {
              description = "The name of the deployment for this request.",
              location = "path",
              pattern = "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?",
              required = true,
              type = "string",
            },
            project = {
              description = "The project ID for this request.",
              location = "path",
              pattern = "(?:(?:[-a-z0-9]{1,63}\\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))",
              required = true,
              type = "string",
            },
          },
          path = "deploymentmanager/v2/projects/{project}/global/deployments/{deployment}/stop",
          request = {
            ["$ref"] = "DeploymentsStopRequest",
          },
          response = {
            ["$ref"] = "Operation",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/ndev.cloudman",
          },
        },
        testIamPermissions = {
          description = "Returns permissions that a caller has on the specified resource.",
          flatPath = "deploymentmanager/v2/projects/{project}/global/deployments/{resource}/testIamPermissions",
          httpMethod = "POST",
          id = "deploymentmanager.deployments.testIamPermissions",
          parameterOrder = {
            "project",
            "resource",
          },
          parameters = {
            project = {
              description = "Project ID for this request.",
              location = "path",
              pattern = "(?:(?:[-a-z0-9]{1,63}\\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z0-9](?:[-a-z0-9]{0,61}[a-z0-9])?))",
              required = true,
              type = "string",
            },
            resource = {
              description = "Name or id of the resource for this request.",
              location = "path",
              pattern = "[a-z](?:[-a-z0-9_]{0,61}[a-z0-9])?|[1-9][0-9]{0,19}",
              required = true,
              type = "string",
            },
          },
          path = "deploymentmanager/v2/projects/{project}/global/deployments/{resource}/testIamPermissions",
          request = {
            ["$ref"] = "TestPermissionsRequest",
          },
          response = {
            ["$ref"] = "TestPermissionsResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/ndev.cloudman",
          },
        },
        update = {
          description = "Updates a deployment and all of the resources described by the deployment manifest.",
          flatPath = "deploymentmanager/v2/projects/{project}/global/deployments/{deployment}",
          httpMethod = "PUT",
          id = "deploymentmanager.deployments.update",
          parameterOrder = {
            "project",
            "deployment",
          },
          parameters = {
            createPolicy = {
              default = "CREATE_OR_ACQUIRE",
              description = "Sets the policy to use for creating new resources.",
              enum = {
                "CREATE_OR_ACQUIRE",
                "ACQUIRE",
              },
              enumDescriptions = {
                "",
                "",
              },
              location = "query",
              type = "string",
            },
            deletePolicy = {
              default = "DELETE",
              description = "Sets the policy to use for deleting resources.",
              enum = {
                "DELETE",
                "ABANDON",
              },
              enumDescriptions = {
                "",
                "",
              },
              location = "query",
              type = "string",
            },
            deployment = {
              description = "The name of the deployment for this request.",
              location = "path",
              pattern = "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?",
              required = true,
              type = "string",
            },
            preview = {
              default = "false",
              description = "If set to true, updates the deployment and creates and updates the \"shell\" resources but does not actually alter or instantiate these resources. This allows you to preview what your deployment will look like. You can use this intent to preview how an update would affect your deployment. You must provide a `target.config` with a configuration if this is set to true. After previewing a deployment, you can deploy your resources by making a request with the `update()` or you can `cancelPreview()` to remove the preview altogether. Note that the deployment will still exist after you cancel the preview and you must separately delete this deployment if you want to remove it.",
              location = "query",
              type = "boolean",
            },
            project = {
              description = "The project ID for this request.",
              location = "path",
              pattern = "(?:(?:[-a-z0-9]{1,63}\\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))",
              required = true,
              type = "string",
            },
          },
          path = "deploymentmanager/v2/projects/{project}/global/deployments/{deployment}",
          request = {
            ["$ref"] = "Deployment",
          },
          response = {
            ["$ref"] = "Operation",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/ndev.cloudman",
          },
        },
      },
    },
    manifests = {
      methods = {
        get = {
          description = "Gets information about a specific manifest.",
          flatPath = "deploymentmanager/v2/projects/{project}/global/deployments/{deployment}/manifests/{manifest}",
          httpMethod = "GET",
          id = "deploymentmanager.manifests.get",
          parameterOrder = {
            "project",
            "deployment",
            "manifest",
          },
          parameters = {
            deployment = {
              description = "The name of the deployment for this request.",
              location = "path",
              pattern = "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?",
              required = true,
              type = "string",
            },
            manifest = {
              description = "The name of the manifest for this request.",
              location = "path",
              pattern = "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?",
              required = true,
              type = "string",
            },
            project = {
              description = "The project ID for this request.",
              location = "path",
              pattern = "(?:(?:[-a-z0-9]{1,63}\\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))",
              required = true,
              type = "string",
            },
          },
          path = "deploymentmanager/v2/projects/{project}/global/deployments/{deployment}/manifests/{manifest}",
          response = {
            ["$ref"] = "Manifest",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/cloud-platform.read-only",
            "https://www.googleapis.com/auth/ndev.cloudman",
            "https://www.googleapis.com/auth/ndev.cloudman.readonly",
          },
        },
        list = {
          description = "Lists all manifests for a given deployment.",
          flatPath = "deploymentmanager/v2/projects/{project}/global/deployments/{deployment}/manifests",
          httpMethod = "GET",
          id = "deploymentmanager.manifests.list",
          parameterOrder = {
            "project",
            "deployment",
          },
          parameters = {
            deployment = {
              description = "The name of the deployment for this request.",
              location = "path",
              pattern = "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?",
              required = true,
              type = "string",
            },
            filter = {
              description = "A filter expression that filters resources listed in the response. Most Compute resources support two types of filter expressions: expressions that support regular expressions and expressions that follow API improvement proposal AIP-160. If you want to use AIP-160, your expression must specify the field name, an operator, and the value that you want to use for filtering. The value must be a string, a number, or a boolean. The operator must be either `=`, `!=`, `>`, `<`, `<=`, `>=` or `:`. For example, if you are filtering Compute Engine instances, you can exclude instances named `example-instance` by specifying `name != example-instance`. The `:` operator can be used with string fields to match substrings. For non-string fields it is equivalent to the `=` operator. The `:*` comparison can be used to test whether a key has been defined. For example, to find all objects with `owner` label use: ``` labels.owner:* ``` You can also filter nested fields. For example, you could specify `scheduling.automaticRestart = false` to include instances only if they are not scheduled for automatic restarts. You can use filtering on nested fields to filter based on resource labels. To filter on multiple expressions, provide each separate expression within parentheses. For example: ``` (scheduling.automaticRestart = true) (cpuPlatform = \"Intel Skylake\") ``` By default, each expression is an `AND` expression. However, you can include `AND` and `OR` expressions explicitly. For example: ``` (cpuPlatform = \"Intel Skylake\") OR (cpuPlatform = \"Intel Broadwell\") AND (scheduling.automaticRestart = true) ``` If you want to use a regular expression, use the `eq` (equal) or `ne` (not equal) operator against a single un-parenthesized expression with or without quotes or against multiple parenthesized expressions. Examples: `fieldname eq unquoted literal` `fieldname eq 'single quoted literal'` `fieldname eq \"double quoted literal\"` `(fieldname1 eq literal) (fieldname2 ne \"literal\")` The literal value is interpreted as a regular expression using Google RE2 library syntax. The literal value must match the entire field. For example, to filter for instances that do not end with name \"instance\", you would use `name ne .*instance`.",
              location = "query",
              type = "string",
            },
            maxResults = {
              default = "500",
              description = "The maximum number of results per page that should be returned. If the number of available results is larger than `maxResults`, Compute Engine returns a `nextPageToken` that can be used to get the next page of results in subsequent list requests. Acceptable values are `0` to `500`, inclusive. (Default: `500`)",
              format = "uint32",
              location = "query",
              minimum = "0",
              type = "integer",
            },
            orderBy = {
              description = "Sorts list results by a certain order. By default, results are returned in alphanumerical order based on the resource name. You can also sort results in descending order based on the creation timestamp using `orderBy=\"creationTimestamp desc\"`. This sorts results based on the `creationTimestamp` field in reverse chronological order (newest result first). Use this to sort resources like operations so that the newest operation is returned first. Currently, only sorting by `name` or `creationTimestamp desc` is supported.",
              location = "query",
              type = "string",
            },
            pageToken = {
              description = "Specifies a page token to use. Set `pageToken` to the `nextPageToken` returned by a previous list request to get the next page of results.",
              location = "query",
              type = "string",
            },
            project = {
              description = "The project ID for this request.",
              location = "path",
              pattern = "(?:(?:[-a-z0-9]{1,63}\\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))",
              required = true,
              type = "string",
            },
          },
          path = "deploymentmanager/v2/projects/{project}/global/deployments/{deployment}/manifests",
          response = {
            ["$ref"] = "ManifestsListResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/cloud-platform.read-only",
            "https://www.googleapis.com/auth/ndev.cloudman",
            "https://www.googleapis.com/auth/ndev.cloudman.readonly",
          },
        },
      },
    },
    operations = {
      methods = {
        get = {
          description = "Gets information about a specific operation.",
          flatPath = "deploymentmanager/v2/projects/{project}/global/operations/{operation}",
          httpMethod = "GET",
          id = "deploymentmanager.operations.get",
          parameterOrder = {
            "project",
            "operation",
          },
          parameters = {
            operation = {
              description = "The name of the operation for this request.",
              location = "path",
              required = true,
              type = "string",
            },
            project = {
              description = "The project ID for this request.",
              location = "path",
              pattern = "(?:(?:[-a-z0-9]{1,63}\\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))",
              required = true,
              type = "string",
            },
          },
          path = "deploymentmanager/v2/projects/{project}/global/operations/{operation}",
          response = {
            ["$ref"] = "Operation",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/cloud-platform.read-only",
            "https://www.googleapis.com/auth/ndev.cloudman",
            "https://www.googleapis.com/auth/ndev.cloudman.readonly",
          },
        },
        list = {
          description = "Lists all operations for a project.",
          flatPath = "deploymentmanager/v2/projects/{project}/global/operations",
          httpMethod = "GET",
          id = "deploymentmanager.operations.list",
          parameterOrder = {
            "project",
          },
          parameters = {
            filter = {
              description = "A filter expression that filters resources listed in the response. Most Compute resources support two types of filter expressions: expressions that support regular expressions and expressions that follow API improvement proposal AIP-160. If you want to use AIP-160, your expression must specify the field name, an operator, and the value that you want to use for filtering. The value must be a string, a number, or a boolean. The operator must be either `=`, `!=`, `>`, `<`, `<=`, `>=` or `:`. For example, if you are filtering Compute Engine instances, you can exclude instances named `example-instance` by specifying `name != example-instance`. The `:` operator can be used with string fields to match substrings. For non-string fields it is equivalent to the `=` operator. The `:*` comparison can be used to test whether a key has been defined. For example, to find all objects with `owner` label use: ``` labels.owner:* ``` You can also filter nested fields. For example, you could specify `scheduling.automaticRestart = false` to include instances only if they are not scheduled for automatic restarts. You can use filtering on nested fields to filter based on resource labels. To filter on multiple expressions, provide each separate expression within parentheses. For example: ``` (scheduling.automaticRestart = true) (cpuPlatform = \"Intel Skylake\") ``` By default, each expression is an `AND` expression. However, you can include `AND` and `OR` expressions explicitly. For example: ``` (cpuPlatform = \"Intel Skylake\") OR (cpuPlatform = \"Intel Broadwell\") AND (scheduling.automaticRestart = true) ``` If you want to use a regular expression, use the `eq` (equal) or `ne` (not equal) operator against a single un-parenthesized expression with or without quotes or against multiple parenthesized expressions. Examples: `fieldname eq unquoted literal` `fieldname eq 'single quoted literal'` `fieldname eq \"double quoted literal\"` `(fieldname1 eq literal) (fieldname2 ne \"literal\")` The literal value is interpreted as a regular expression using Google RE2 library syntax. The literal value must match the entire field. For example, to filter for instances that do not end with name \"instance\", you would use `name ne .*instance`.",
              location = "query",
              type = "string",
            },
            maxResults = {
              default = "500",
              description = "The maximum number of results per page that should be returned. If the number of available results is larger than `maxResults`, Compute Engine returns a `nextPageToken` that can be used to get the next page of results in subsequent list requests. Acceptable values are `0` to `500`, inclusive. (Default: `500`)",
              format = "uint32",
              location = "query",
              minimum = "0",
              type = "integer",
            },
            orderBy = {
              description = "Sorts list results by a certain order. By default, results are returned in alphanumerical order based on the resource name. You can also sort results in descending order based on the creation timestamp using `orderBy=\"creationTimestamp desc\"`. This sorts results based on the `creationTimestamp` field in reverse chronological order (newest result first). Use this to sort resources like operations so that the newest operation is returned first. Currently, only sorting by `name` or `creationTimestamp desc` is supported.",
              location = "query",
              type = "string",
            },
            pageToken = {
              description = "Specifies a page token to use. Set `pageToken` to the `nextPageToken` returned by a previous list request to get the next page of results.",
              location = "query",
              type = "string",
            },
            project = {
              description = "The project ID for this request.",
              location = "path",
              pattern = "(?:(?:[-a-z0-9]{1,63}\\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))",
              required = true,
              type = "string",
            },
          },
          path = "deploymentmanager/v2/projects/{project}/global/operations",
          response = {
            ["$ref"] = "OperationsListResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/cloud-platform.read-only",
            "https://www.googleapis.com/auth/ndev.cloudman",
            "https://www.googleapis.com/auth/ndev.cloudman.readonly",
          },
        },
      },
    },
    resources = {
      methods = {
        get = {
          description = "Gets information about a single resource.",
          flatPath = "deploymentmanager/v2/projects/{project}/global/deployments/{deployment}/resources/{resource}",
          httpMethod = "GET",
          id = "deploymentmanager.resources.get",
          parameterOrder = {
            "project",
            "deployment",
            "resource",
          },
          parameters = {
            deployment = {
              description = "The name of the deployment for this request.",
              location = "path",
              pattern = "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?",
              required = true,
              type = "string",
            },
            project = {
              description = "The project ID for this request.",
              location = "path",
              pattern = "(?:(?:[-a-z0-9]{1,63}\\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))",
              required = true,
              type = "string",
            },
            resource = {
              description = "The name of the resource for this request.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "deploymentmanager/v2/projects/{project}/global/deployments/{deployment}/resources/{resource}",
          response = {
            ["$ref"] = "Resource",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/cloud-platform.read-only",
            "https://www.googleapis.com/auth/ndev.cloudman",
            "https://www.googleapis.com/auth/ndev.cloudman.readonly",
          },
        },
        list = {
          description = "Lists all resources in a given deployment.",
          flatPath = "deploymentmanager/v2/projects/{project}/global/deployments/{deployment}/resources",
          httpMethod = "GET",
          id = "deploymentmanager.resources.list",
          parameterOrder = {
            "project",
            "deployment",
          },
          parameters = {
            deployment = {
              description = "The name of the deployment for this request.",
              location = "path",
              pattern = "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?",
              required = true,
              type = "string",
            },
            filter = {
              description = "A filter expression that filters resources listed in the response. Most Compute resources support two types of filter expressions: expressions that support regular expressions and expressions that follow API improvement proposal AIP-160. If you want to use AIP-160, your expression must specify the field name, an operator, and the value that you want to use for filtering. The value must be a string, a number, or a boolean. The operator must be either `=`, `!=`, `>`, `<`, `<=`, `>=` or `:`. For example, if you are filtering Compute Engine instances, you can exclude instances named `example-instance` by specifying `name != example-instance`. The `:` operator can be used with string fields to match substrings. For non-string fields it is equivalent to the `=` operator. The `:*` comparison can be used to test whether a key has been defined. For example, to find all objects with `owner` label use: ``` labels.owner:* ``` You can also filter nested fields. For example, you could specify `scheduling.automaticRestart = false` to include instances only if they are not scheduled for automatic restarts. You can use filtering on nested fields to filter based on resource labels. To filter on multiple expressions, provide each separate expression within parentheses. For example: ``` (scheduling.automaticRestart = true) (cpuPlatform = \"Intel Skylake\") ``` By default, each expression is an `AND` expression. However, you can include `AND` and `OR` expressions explicitly. For example: ``` (cpuPlatform = \"Intel Skylake\") OR (cpuPlatform = \"Intel Broadwell\") AND (scheduling.automaticRestart = true) ``` If you want to use a regular expression, use the `eq` (equal) or `ne` (not equal) operator against a single un-parenthesized expression with or without quotes or against multiple parenthesized expressions. Examples: `fieldname eq unquoted literal` `fieldname eq 'single quoted literal'` `fieldname eq \"double quoted literal\"` `(fieldname1 eq literal) (fieldname2 ne \"literal\")` The literal value is interpreted as a regular expression using Google RE2 library syntax. The literal value must match the entire field. For example, to filter for instances that do not end with name \"instance\", you would use `name ne .*instance`.",
              location = "query",
              type = "string",
            },
            maxResults = {
              default = "500",
              description = "The maximum number of results per page that should be returned. If the number of available results is larger than `maxResults`, Compute Engine returns a `nextPageToken` that can be used to get the next page of results in subsequent list requests. Acceptable values are `0` to `500`, inclusive. (Default: `500`)",
              format = "uint32",
              location = "query",
              minimum = "0",
              type = "integer",
            },
            orderBy = {
              description = "Sorts list results by a certain order. By default, results are returned in alphanumerical order based on the resource name. You can also sort results in descending order based on the creation timestamp using `orderBy=\"creationTimestamp desc\"`. This sorts results based on the `creationTimestamp` field in reverse chronological order (newest result first). Use this to sort resources like operations so that the newest operation is returned first. Currently, only sorting by `name` or `creationTimestamp desc` is supported.",
              location = "query",
              type = "string",
            },
            pageToken = {
              description = "Specifies a page token to use. Set `pageToken` to the `nextPageToken` returned by a previous list request to get the next page of results.",
              location = "query",
              type = "string",
            },
            project = {
              description = "The project ID for this request.",
              location = "path",
              pattern = "(?:(?:[-a-z0-9]{1,63}\\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))",
              required = true,
              type = "string",
            },
          },
          path = "deploymentmanager/v2/projects/{project}/global/deployments/{deployment}/resources",
          response = {
            ["$ref"] = "ResourcesListResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/cloud-platform.read-only",
            "https://www.googleapis.com/auth/ndev.cloudman",
            "https://www.googleapis.com/auth/ndev.cloudman.readonly",
          },
        },
      },
    },
    types = {
      methods = {
        list = {
          description = "Lists all resource types for Deployment Manager.",
          flatPath = "deploymentmanager/v2/projects/{project}/global/types",
          httpMethod = "GET",
          id = "deploymentmanager.types.list",
          parameterOrder = {
            "project",
          },
          parameters = {
            filter = {
              description = "A filter expression that filters resources listed in the response. Most Compute resources support two types of filter expressions: expressions that support regular expressions and expressions that follow API improvement proposal AIP-160. If you want to use AIP-160, your expression must specify the field name, an operator, and the value that you want to use for filtering. The value must be a string, a number, or a boolean. The operator must be either `=`, `!=`, `>`, `<`, `<=`, `>=` or `:`. For example, if you are filtering Compute Engine instances, you can exclude instances named `example-instance` by specifying `name != example-instance`. The `:` operator can be used with string fields to match substrings. For non-string fields it is equivalent to the `=` operator. The `:*` comparison can be used to test whether a key has been defined. For example, to find all objects with `owner` label use: ``` labels.owner:* ``` You can also filter nested fields. For example, you could specify `scheduling.automaticRestart = false` to include instances only if they are not scheduled for automatic restarts. You can use filtering on nested fields to filter based on resource labels. To filter on multiple expressions, provide each separate expression within parentheses. For example: ``` (scheduling.automaticRestart = true) (cpuPlatform = \"Intel Skylake\") ``` By default, each expression is an `AND` expression. However, you can include `AND` and `OR` expressions explicitly. For example: ``` (cpuPlatform = \"Intel Skylake\") OR (cpuPlatform = \"Intel Broadwell\") AND (scheduling.automaticRestart = true) ``` If you want to use a regular expression, use the `eq` (equal) or `ne` (not equal) operator against a single un-parenthesized expression with or without quotes or against multiple parenthesized expressions. Examples: `fieldname eq unquoted literal` `fieldname eq 'single quoted literal'` `fieldname eq \"double quoted literal\"` `(fieldname1 eq literal) (fieldname2 ne \"literal\")` The literal value is interpreted as a regular expression using Google RE2 library syntax. The literal value must match the entire field. For example, to filter for instances that do not end with name \"instance\", you would use `name ne .*instance`.",
              location = "query",
              type = "string",
            },
            maxResults = {
              default = "500",
              description = "The maximum number of results per page that should be returned. If the number of available results is larger than `maxResults`, Compute Engine returns a `nextPageToken` that can be used to get the next page of results in subsequent list requests. Acceptable values are `0` to `500`, inclusive. (Default: `500`)",
              format = "uint32",
              location = "query",
              minimum = "0",
              type = "integer",
            },
            orderBy = {
              description = "Sorts list results by a certain order. By default, results are returned in alphanumerical order based on the resource name. You can also sort results in descending order based on the creation timestamp using `orderBy=\"creationTimestamp desc\"`. This sorts results based on the `creationTimestamp` field in reverse chronological order (newest result first). Use this to sort resources like operations so that the newest operation is returned first. Currently, only sorting by `name` or `creationTimestamp desc` is supported.",
              location = "query",
              type = "string",
            },
            pageToken = {
              description = "Specifies a page token to use. Set `pageToken` to the `nextPageToken` returned by a previous list request to get the next page of results.",
              location = "query",
              type = "string",
            },
            project = {
              description = "The project ID for this request.",
              location = "path",
              pattern = "(?:(?:[-a-z0-9]{1,63}\\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))",
              required = true,
              type = "string",
            },
          },
          path = "deploymentmanager/v2/projects/{project}/global/types",
          response = {
            ["$ref"] = "TypesListResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/cloud-platform.read-only",
            "https://www.googleapis.com/auth/ndev.cloudman",
            "https://www.googleapis.com/auth/ndev.cloudman.readonly",
          },
        },
      },
    },
  },
  revision = "20221208",
  rootUrl = "https://deploymentmanager.googleapis.com/",
  schemas = {
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
    ConfigFile = {
      id = "ConfigFile",
      properties = {
        content = {
          description = "The contents of the file.",
          type = "string",
        },
      },
      type = "object",
    },
    Deployment = {
      id = "Deployment",
      properties = {
        description = {
          description = "An optional user-provided description of the deployment.",
          type = "string",
        },
        fingerprint = {
          description = "Provides a fingerprint to use in requests to modify a deployment, such as `update()`, `stop()`, and `cancelPreview()` requests. A fingerprint is a randomly generated value that must be provided with `update()`, `stop()`, and `cancelPreview()` requests to perform optimistic locking. This ensures optimistic concurrency so that only one request happens at a time. The fingerprint is initially generated by Deployment Manager and changes after every request to modify data. To get the latest fingerprint value, perform a `get()` request to a deployment.",
          format = "byte",
          type = "string",
        },
        id = {
          format = "uint64",
          type = "string",
        },
        insertTime = {
          description = "Output only. Creation timestamp in RFC3339 text format.",
          type = "string",
        },
        labels = {
          description = "Map of One Platform labels; provided by the client when the resource is created or updated. Specifically: Label keys must be between 1 and 63 characters long and must conform to the following regular expression: `[a-z]([-a-z0-9]*[a-z0-9])?` Label values must be between 0 and 63 characters long and must conform to the regular expression `([a-z]([-a-z0-9]*[a-z0-9])?)?`.",
          items = {
            ["$ref"] = "DeploymentLabelEntry",
          },
          type = "array",
        },
        manifest = {
          description = "Output only. URL of the manifest representing the last manifest that was successfully deployed. If no manifest has been successfully deployed, this field will be absent.",
          type = "string",
        },
        name = {
          description = "Name of the resource; provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.",
          type = "string",
        },
        operation = {
          ["$ref"] = "Operation",
          description = "Output only. The Operation that most recently ran, or is currently running, on this deployment.",
        },
        selfLink = {
          description = "Output only. Server defined URL for the resource.",
          type = "string",
        },
        target = {
          ["$ref"] = "TargetConfiguration",
          description = "[Input Only] The parameters that define your deployment, including the deployment configuration and relevant templates.",
        },
        update = {
          ["$ref"] = "DeploymentUpdate",
          description = "Output only. If Deployment Manager is currently updating or previewing an update to this deployment, the updated configuration appears here.",
        },
        updateTime = {
          description = "Output only. Update timestamp in RFC3339 text format.",
          type = "string",
        },
      },
      type = "object",
    },
    DeploymentLabelEntry = {
      description = "Label object for Deployments",
      id = "DeploymentLabelEntry",
      properties = {
        key = {
          description = "Key of the label",
          type = "string",
        },
        value = {
          description = "Value of the label",
          type = "string",
        },
      },
      type = "object",
    },
    DeploymentUpdate = {
      id = "DeploymentUpdate",
      properties = {
        description = {
          description = "Output only. An optional user-provided description of the deployment after the current update has been applied.",
          type = "string",
        },
        labels = {
          description = "Map of One Platform labels; provided by the client when the resource is created or updated. Specifically: Label keys must be between 1 and 63 characters long and must conform to the following regular expression: `[a-z]([-a-z0-9]*[a-z0-9])?` Label values must be between 0 and 63 characters long and must conform to the regular expression `([a-z]([-a-z0-9]*[a-z0-9])?)?`.",
          items = {
            ["$ref"] = "DeploymentUpdateLabelEntry",
          },
          type = "array",
        },
        manifest = {
          description = "Output only. URL of the manifest representing the update configuration of this deployment.",
          type = "string",
        },
      },
      type = "object",
    },
    DeploymentUpdateLabelEntry = {
      description = "Label object for DeploymentUpdate",
      id = "DeploymentUpdateLabelEntry",
      properties = {
        key = {
          description = "Key of the label",
          type = "string",
        },
        value = {
          description = "Value of the label",
          type = "string",
        },
      },
      type = "object",
    },
    DeploymentsCancelPreviewRequest = {
      id = "DeploymentsCancelPreviewRequest",
      properties = {
        fingerprint = {
          description = "Specifies a fingerprint for `cancelPreview()` requests. A fingerprint is a randomly generated value that must be provided in `cancelPreview()` requests to perform optimistic locking. This ensures optimistic concurrency so that the deployment does not have conflicting requests (e.g. if someone attempts to make a new update request while another user attempts to cancel a preview, this would prevent one of the requests). The fingerprint is initially generated by Deployment Manager and changes after every request to modify a deployment. To get the latest fingerprint value, perform a `get()` request on the deployment.",
          format = "byte",
          type = "string",
        },
      },
      type = "object",
    },
    DeploymentsListResponse = {
      description = "A response containing a partial list of deployments and a page token used to build the next request if the request has been truncated.",
      id = "DeploymentsListResponse",
      properties = {
        deployments = {
          description = "Output only. The deployments contained in this response.",
          items = {
            ["$ref"] = "Deployment",
          },
          type = "array",
        },
        nextPageToken = {
          description = "Output only. A token used to continue a truncated list request.",
          type = "string",
        },
      },
      type = "object",
    },
    DeploymentsStopRequest = {
      id = "DeploymentsStopRequest",
      properties = {
        fingerprint = {
          description = "Specifies a fingerprint for `stop()` requests. A fingerprint is a randomly generated value that must be provided in `stop()` requests to perform optimistic locking. This ensures optimistic concurrency so that the deployment does not have conflicting requests (e.g. if someone attempts to make a new update request while another user attempts to stop an ongoing update request, this would prevent a collision). The fingerprint is initially generated by Deployment Manager and changes after every request to modify a deployment. To get the latest fingerprint value, perform a `get()` request on the deployment.",
          format = "byte",
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
    GlobalSetPolicyRequest = {
      id = "GlobalSetPolicyRequest",
      properties = {
        bindings = {
          description = "Flatten Policy to create a backward compatible wire-format. Deprecated. Use 'policy' to specify bindings.",
          items = {
            ["$ref"] = "Binding",
          },
          type = "array",
        },
        etag = {
          description = "Flatten Policy to create a backward compatible wire-format. Deprecated. Use 'policy' to specify the etag.",
          format = "byte",
          type = "string",
        },
        policy = {
          ["$ref"] = "Policy",
          description = "REQUIRED: The complete policy to be applied to the 'resource'. The size of the policy is limited to a few 10s of KB. An empty policy is in general a valid policy but certain services (like Projects) might reject them.",
        },
      },
      type = "object",
    },
    ImportFile = {
      id = "ImportFile",
      properties = {
        content = {
          description = "The contents of the file.",
          type = "string",
        },
        name = {
          description = "The name of the file.",
          type = "string",
        },
      },
      type = "object",
    },
    Manifest = {
      id = "Manifest",
      properties = {
        config = {
          ["$ref"] = "ConfigFile",
          description = "Output only. The YAML configuration for this manifest.",
        },
        expandedConfig = {
          description = "Output only. The fully-expanded configuration file, including any templates and references.",
          type = "string",
        },
        id = {
          format = "uint64",
          type = "string",
        },
        imports = {
          description = "Output only. The imported files for this manifest.",
          items = {
            ["$ref"] = "ImportFile",
          },
          type = "array",
        },
        insertTime = {
          description = "Output only. Creation timestamp in RFC3339 text format.",
          type = "string",
        },
        layout = {
          description = "Output only. The YAML layout for this manifest.",
          type = "string",
        },
        manifestSizeBytes = {
          description = "Output only. The computed size of the fully expanded manifest.",
          format = "int64",
          type = "string",
        },
        manifestSizeLimitBytes = {
          description = "Output only. The size limit for expanded manifests in the project.",
          format = "int64",
          type = "string",
        },
        name = {
          description = "Output only. The name of the manifest.",
          type = "string",
        },
        selfLink = {
          description = "Output only. Self link for the manifest.",
          type = "string",
        },
      },
      type = "object",
    },
    ManifestsListResponse = {
      description = "A response containing a partial list of manifests and a page token used to build the next request if the request has been truncated.",
      id = "ManifestsListResponse",
      properties = {
        manifests = {
          description = "Output only. Manifests contained in this list response.",
          items = {
            ["$ref"] = "Manifest",
          },
          type = "array",
        },
        nextPageToken = {
          description = "Output only. A token used to continue a truncated list request.",
          type = "string",
        },
      },
      type = "object",
    },
    Operation = {
      description = "Represents an Operation resource. Google Compute Engine has three Operation resources: * [Global](/compute/docs/reference/rest/{$api_version}/globalOperations) * [Regional](/compute/docs/reference/rest/{$api_version}/regionOperations) * [Zonal](/compute/docs/reference/rest/{$api_version}/zoneOperations) You can use an operation resource to manage asynchronous API requests. For more information, read Handling API responses. Operations can be global, regional or zonal. - For global operations, use the `globalOperations` resource. - For regional operations, use the `regionOperations` resource. - For zonal operations, use the `zonalOperations` resource. For more information, read Global, Regional, and Zonal Resources.",
      id = "Operation",
      properties = {
        clientOperationId = {
          description = "[Output Only] The value of `requestId` if you provided it in the request. Not present otherwise.",
          type = "string",
        },
        creationTimestamp = {
          description = "[Deprecated] This field is deprecated.",
          type = "string",
        },
        description = {
          description = "[Output Only] A textual description of the operation, which is set when the operation is created.",
          type = "string",
        },
        endTime = {
          description = "[Output Only] The time that this operation was completed. This value is in RFC3339 text format.",
          type = "string",
        },
        error = {
          description = "[Output Only] If errors are generated during processing of the operation, this field will be populated.",
          properties = {
            errors = {
              description = "[Output Only] The array of errors encountered while processing this operation.",
              items = {
                properties = {
                  code = {
                    description = "[Output Only] The error type identifier for this error.",
                    type = "string",
                  },
                  location = {
                    description = "[Output Only] Indicates the field in the request that caused the error. This property is optional.",
                    type = "string",
                  },
                  message = {
                    description = "[Output Only] An optional, human-readable error message.",
                    type = "string",
                  },
                },
                type = "object",
              },
              type = "array",
            },
          },
          type = "object",
        },
        httpErrorMessage = {
          description = "[Output Only] If the operation fails, this field contains the HTTP error message that was returned, such as `NOT FOUND`.",
          type = "string",
        },
        httpErrorStatusCode = {
          description = "[Output Only] If the operation fails, this field contains the HTTP error status code that was returned. For example, a `404` means the resource was not found.",
          format = "int32",
          type = "integer",
        },
        id = {
          description = "[Output Only] The unique identifier for the operation. This identifier is defined by the server.",
          format = "uint64",
          type = "string",
        },
        insertTime = {
          description = "[Output Only] The time that this operation was requested. This value is in RFC3339 text format.",
          type = "string",
        },
        kind = {
          default = "compute#operation",
          description = "[Output Only] Type of the resource. Always `compute#operation` for Operation resources.",
          type = "string",
        },
        name = {
          description = "[Output Only] Name of the operation.",
          type = "string",
        },
        operationGroupId = {
          description = "[Output Only] An ID that represents a group of operations, such as when a group of operations results from a `bulkInsert` API request.",
          type = "string",
        },
        operationType = {
          description = "[Output Only] The type of operation, such as `insert`, `update`, or `delete`, and so on.",
          type = "string",
        },
        progress = {
          description = "[Output Only] An optional progress indicator that ranges from 0 to 100. There is no requirement that this be linear or support any granularity of operations. This should not be used to guess when the operation will be complete. This number should monotonically increase as the operation progresses.",
          format = "int32",
          type = "integer",
        },
        region = {
          description = "[Output Only] The URL of the region where the operation resides. Only applicable when performing regional operations.",
          type = "string",
        },
        selfLink = {
          description = "[Output Only] Server-defined URL for the resource.",
          type = "string",
        },
        startTime = {
          description = "[Output Only] The time that this operation was started by the server. This value is in RFC3339 text format.",
          type = "string",
        },
        status = {
          description = "[Output Only] The status of the operation, which can be one of the following: `PENDING`, `RUNNING`, or `DONE`.",
          enum = {
            "PENDING",
            "RUNNING",
            "DONE",
          },
          enumDescriptions = {
            "",
            "",
            "",
          },
          type = "string",
        },
        statusMessage = {
          description = "[Output Only] An optional textual description of the current status of the operation.",
          type = "string",
        },
        targetId = {
          description = "[Output Only] The unique target ID, which identifies a specific incarnation of the target resource.",
          format = "uint64",
          type = "string",
        },
        targetLink = {
          description = "[Output Only] The URL of the resource that the operation modifies. For operations related to creating a snapshot, this points to the persistent disk that the snapshot was created from.",
          type = "string",
        },
        user = {
          description = "[Output Only] User who requested the operation, for example: `user@example.com`.",
          type = "string",
        },
        warnings = {
          description = "[Output Only] If warning messages are generated during processing of the operation, this field will be populated.",
          items = {
            properties = {
              code = {
                description = "[Output Only] A warning code, if applicable. For example, Compute Engine returns NO_RESULTS_ON_PAGE if there are no results in the response.",
                enum = {
                  "DEPRECATED_RESOURCE_USED",
                  "NO_RESULTS_ON_PAGE",
                  "UNREACHABLE",
                  "NEXT_HOP_ADDRESS_NOT_ASSIGNED",
                  "NEXT_HOP_INSTANCE_NOT_FOUND",
                  "NEXT_HOP_INSTANCE_NOT_ON_NETWORK",
                  "NEXT_HOP_CANNOT_IP_FORWARD",
                  "NEXT_HOP_NOT_RUNNING",
                  "INJECTED_KERNELS_DEPRECATED",
                  "REQUIRED_TOS_AGREEMENT",
                  "DISK_SIZE_LARGER_THAN_IMAGE_SIZE",
                  "RESOURCE_NOT_DELETED",
                  "SINGLE_INSTANCE_PROPERTY_TEMPLATE",
                  "NOT_CRITICAL_ERROR",
                  "CLEANUP_FAILED",
                  "FIELD_VALUE_OVERRIDEN",
                  "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING",
                  "MISSING_TYPE_DEPENDENCY",
                  "EXTERNAL_API_WARNING",
                  "SCHEMA_VALIDATION_IGNORED",
                  "UNDECLARED_PROPERTIES",
                  "EXPERIMENTAL_TYPE_USED",
                  "DEPRECATED_TYPE_USED",
                  "PARTIAL_SUCCESS",
                  "LARGE_DEPLOYMENT_WARNING",
                  "NEXT_HOP_INSTANCE_HAS_NO_IPV6_INTERFACE",
                  "INVALID_HEALTH_CHECK_FOR_DYNAMIC_WIEGHTED_LB",
                },
                enumDescriptions = {
                  "A link to a deprecated resource was created.",
                  "No results are present on a particular list page.",
                  "A given scope cannot be reached.",
                  "The route's nextHopIp address is not assigned to an instance on the network.",
                  "The route's nextHopInstance URL refers to an instance that does not exist.",
                  "The route's nextHopInstance URL refers to an instance that is not on the same network as the route.",
                  "The route's next hop instance cannot ip forward.",
                  "The route's next hop instance does not have a status of RUNNING.",
                  "The operation involved use of an injected kernel, which is deprecated.",
                  "The user attempted to use a resource that requires a TOS they have not accepted.",
                  "The user created a boot disk that is larger than image size.",
                  "One or more of the resources set to auto-delete could not be deleted because they were in use.",
                  "Instance template used in instance group manager is valid as such, but its application does not make a lot of sense, because it allows only single instance in instance group.",
                  "Error which is not critical. We decided to continue the process despite the mentioned error.",
                  "Warning about failed cleanup of transient changes made by a failed operation.",
                  "Warning that value of a field has been overridden. Deprecated unused field.",
                  "Warning that a resource is in use.",
                  "A resource depends on a missing type",
                  "Warning that is present in an external api call",
                  "When a resource schema validation is ignored.",
                  "When undeclared properties in the schema are present",
                  "When deploying and at least one of the resources has a type marked as experimental",
                  "When deploying and at least one of the resources has a type marked as deprecated",
                  "Success is reported, but some results may be missing due to errors",
                  "When deploying a deployment with a exceedingly large number of resources",
                  "The route's nextHopInstance URL refers to an instance that does not have an ipv6 interface on the same network as the route.",
                  "A WEIGHTED_MAGLEV backend service is associated with a health check that is not of type HTTP/HTTPS/HTTP2.",
                },
                type = "string",
              },
              data = {
                description = "[Output Only] Metadata about this warning in key: value format. For example: \"data\": [ { \"key\": \"scope\", \"value\": \"zones/us-east1-d\" } ",
                items = {
                  properties = {
                    key = {
                      description = "[Output Only] A key that provides more detail on the warning being returned. For example, for warnings where there are no results in a list request for a particular zone, this key might be scope and the key value might be the zone name. Other examples might be a key indicating a deprecated resource and a suggested replacement, or a warning about invalid network settings (for example, if an instance attempts to perform IP forwarding but is not enabled for IP forwarding).",
                      type = "string",
                    },
                    value = {
                      description = "[Output Only] A warning data value corresponding to the key.",
                      type = "string",
                    },
                  },
                  type = "object",
                },
                type = "array",
              },
              message = {
                description = "[Output Only] A human-readable description of the warning code.",
                type = "string",
              },
            },
            type = "object",
          },
          type = "array",
        },
        zone = {
          description = "[Output Only] The URL of the zone where the operation resides. Only applicable when performing per-zone operations.",
          type = "string",
        },
      },
      type = "object",
    },
    OperationsListResponse = {
      description = "A response containing a partial list of operations and a page token used to build the next request if the request has been truncated.",
      id = "OperationsListResponse",
      properties = {
        nextPageToken = {
          description = "Output only. A token used to continue a truncated list request.",
          type = "string",
        },
        operations = {
          description = "Output only. Operations contained in this list response.",
          items = {
            ["$ref"] = "Operation",
          },
          type = "array",
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
    Resource = {
      id = "Resource",
      properties = {
        accessControl = {
          ["$ref"] = "ResourceAccessControl",
          description = "The Access Control Policy set on this resource.",
        },
        finalProperties = {
          description = "Output only. The evaluated properties of the resource with references expanded. Returned as serialized YAML.",
          type = "string",
        },
        id = {
          format = "uint64",
          type = "string",
        },
        insertTime = {
          description = "Output only. Creation timestamp in RFC3339 text format.",
          type = "string",
        },
        manifest = {
          description = "Output only. URL of the manifest representing the current configuration of this resource.",
          type = "string",
        },
        name = {
          description = "Output only. The name of the resource as it appears in the YAML config.",
          type = "string",
        },
        properties = {
          description = "Output only. The current properties of the resource before any references have been filled in. Returned as serialized YAML.",
          type = "string",
        },
        type = {
          description = "Output only. The type of the resource, for example `compute.v1.instance`, or `cloudfunctions.v1beta1.function`.",
          type = "string",
        },
        update = {
          ["$ref"] = "ResourceUpdate",
          description = "Output only. If Deployment Manager is currently updating or previewing an update to this resource, the updated configuration appears here.",
        },
        updateTime = {
          description = "Output only. Update timestamp in RFC3339 text format.",
          type = "string",
        },
        url = {
          description = "Output only. The URL of the actual resource.",
          type = "string",
        },
        warnings = {
          description = "Output only. If warning messages are generated during processing of this resource, this field will be populated.",
          items = {
            properties = {
              code = {
                description = "[Output Only] A warning code, if applicable. For example, Compute Engine returns NO_RESULTS_ON_PAGE if there are no results in the response.",
                enum = {
                  "DEPRECATED_RESOURCE_USED",
                  "NO_RESULTS_ON_PAGE",
                  "UNREACHABLE",
                  "NEXT_HOP_ADDRESS_NOT_ASSIGNED",
                  "NEXT_HOP_INSTANCE_NOT_FOUND",
                  "NEXT_HOP_INSTANCE_NOT_ON_NETWORK",
                  "NEXT_HOP_CANNOT_IP_FORWARD",
                  "NEXT_HOP_NOT_RUNNING",
                  "INJECTED_KERNELS_DEPRECATED",
                  "REQUIRED_TOS_AGREEMENT",
                  "DISK_SIZE_LARGER_THAN_IMAGE_SIZE",
                  "RESOURCE_NOT_DELETED",
                  "SINGLE_INSTANCE_PROPERTY_TEMPLATE",
                  "NOT_CRITICAL_ERROR",
                  "CLEANUP_FAILED",
                  "FIELD_VALUE_OVERRIDEN",
                  "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING",
                  "MISSING_TYPE_DEPENDENCY",
                  "EXTERNAL_API_WARNING",
                  "SCHEMA_VALIDATION_IGNORED",
                  "UNDECLARED_PROPERTIES",
                  "EXPERIMENTAL_TYPE_USED",
                  "DEPRECATED_TYPE_USED",
                  "PARTIAL_SUCCESS",
                  "LARGE_DEPLOYMENT_WARNING",
                  "NEXT_HOP_INSTANCE_HAS_NO_IPV6_INTERFACE",
                  "INVALID_HEALTH_CHECK_FOR_DYNAMIC_WIEGHTED_LB",
                },
                enumDescriptions = {
                  "A link to a deprecated resource was created.",
                  "No results are present on a particular list page.",
                  "A given scope cannot be reached.",
                  "The route's nextHopIp address is not assigned to an instance on the network.",
                  "The route's nextHopInstance URL refers to an instance that does not exist.",
                  "The route's nextHopInstance URL refers to an instance that is not on the same network as the route.",
                  "The route's next hop instance cannot ip forward.",
                  "The route's next hop instance does not have a status of RUNNING.",
                  "The operation involved use of an injected kernel, which is deprecated.",
                  "The user attempted to use a resource that requires a TOS they have not accepted.",
                  "The user created a boot disk that is larger than image size.",
                  "One or more of the resources set to auto-delete could not be deleted because they were in use.",
                  "Instance template used in instance group manager is valid as such, but its application does not make a lot of sense, because it allows only single instance in instance group.",
                  "Error which is not critical. We decided to continue the process despite the mentioned error.",
                  "Warning about failed cleanup of transient changes made by a failed operation.",
                  "Warning that value of a field has been overridden. Deprecated unused field.",
                  "Warning that a resource is in use.",
                  "A resource depends on a missing type",
                  "Warning that is present in an external api call",
                  "When a resource schema validation is ignored.",
                  "When undeclared properties in the schema are present",
                  "When deploying and at least one of the resources has a type marked as experimental",
                  "When deploying and at least one of the resources has a type marked as deprecated",
                  "Success is reported, but some results may be missing due to errors",
                  "When deploying a deployment with a exceedingly large number of resources",
                  "The route's nextHopInstance URL refers to an instance that does not have an ipv6 interface on the same network as the route.",
                  "A WEIGHTED_MAGLEV backend service is associated with a health check that is not of type HTTP/HTTPS/HTTP2.",
                },
                type = "string",
              },
              data = {
                description = "[Output Only] Metadata about this warning in key: value format. For example: \"data\": [ { \"key\": \"scope\", \"value\": \"zones/us-east1-d\" } ",
                items = {
                  properties = {
                    key = {
                      description = "[Output Only] A key that provides more detail on the warning being returned. For example, for warnings where there are no results in a list request for a particular zone, this key might be scope and the key value might be the zone name. Other examples might be a key indicating a deprecated resource and a suggested replacement, or a warning about invalid network settings (for example, if an instance attempts to perform IP forwarding but is not enabled for IP forwarding).",
                      type = "string",
                    },
                    value = {
                      description = "[Output Only] A warning data value corresponding to the key.",
                      type = "string",
                    },
                  },
                  type = "object",
                },
                type = "array",
              },
              message = {
                description = "[Output Only] A human-readable description of the warning code.",
                type = "string",
              },
            },
            type = "object",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ResourceAccessControl = {
      description = "The access controls set on the resource.",
      id = "ResourceAccessControl",
      properties = {
        gcpIamPolicy = {
          description = "The GCP IAM Policy to set on the resource.",
          type = "string",
        },
      },
      type = "object",
    },
    ResourceUpdate = {
      id = "ResourceUpdate",
      properties = {
        accessControl = {
          ["$ref"] = "ResourceAccessControl",
          description = "The Access Control Policy to set on this resource after updating the resource itself.",
        },
        error = {
          description = "Output only. If errors are generated during update of the resource, this field will be populated.",
          properties = {
            errors = {
              description = "[Output Only] The array of errors encountered while processing this operation.",
              items = {
                properties = {
                  code = {
                    description = "[Output Only] The error type identifier for this error.",
                    type = "string",
                  },
                  location = {
                    description = "[Output Only] Indicates the field in the request that caused the error. This property is optional.",
                    type = "string",
                  },
                  message = {
                    description = "[Output Only] An optional, human-readable error message.",
                    type = "string",
                  },
                },
                type = "object",
              },
              type = "array",
            },
          },
          type = "object",
        },
        finalProperties = {
          description = "Output only. The expanded properties of the resource with reference values expanded. Returned as serialized YAML.",
          type = "string",
        },
        intent = {
          description = "Output only. The intent of the resource: `PREVIEW`, `UPDATE`, or `CANCEL`.",
          enum = {
            "CREATE_OR_ACQUIRE",
            "DELETE",
            "ACQUIRE",
            "UPDATE",
            "ABANDON",
            "CREATE",
          },
          enumDescriptions = {
            "The resource is scheduled to be created, or if it already exists, acquired.",
            "The resource is scheduled to be deleted.",
            "The resource is scheduled to be acquired.",
            "The resource is scheduled to be updated via the UPDATE method.",
            "The resource is scheduled to be abandoned.",
            "The resource is scheduled to be created.",
          },
          type = "string",
        },
        manifest = {
          description = "Output only. URL of the manifest representing the update configuration of this resource.",
          type = "string",
        },
        properties = {
          description = "Output only. The set of updated properties for this resource, before references are expanded. Returned as serialized YAML.",
          type = "string",
        },
        state = {
          description = "Output only. The state of the resource.",
          enum = {
            "PENDING",
            "IN_PROGRESS",
            "IN_PREVIEW",
            "FAILED",
            "ABORTED",
          },
          enumDescriptions = {
            "There are changes pending for this resource.",
            "The service is executing changes on the resource.",
            "The service is previewing changes on the resource.",
            "The service has failed to change the resource.",
            "The service has aborted trying to change the resource.",
          },
          type = "string",
        },
        warnings = {
          description = "Output only. If warning messages are generated during processing of this resource, this field will be populated.",
          items = {
            properties = {
              code = {
                description = "[Output Only] A warning code, if applicable. For example, Compute Engine returns NO_RESULTS_ON_PAGE if there are no results in the response.",
                enum = {
                  "DEPRECATED_RESOURCE_USED",
                  "NO_RESULTS_ON_PAGE",
                  "UNREACHABLE",
                  "NEXT_HOP_ADDRESS_NOT_ASSIGNED",
                  "NEXT_HOP_INSTANCE_NOT_FOUND",
                  "NEXT_HOP_INSTANCE_NOT_ON_NETWORK",
                  "NEXT_HOP_CANNOT_IP_FORWARD",
                  "NEXT_HOP_NOT_RUNNING",
                  "INJECTED_KERNELS_DEPRECATED",
                  "REQUIRED_TOS_AGREEMENT",
                  "DISK_SIZE_LARGER_THAN_IMAGE_SIZE",
                  "RESOURCE_NOT_DELETED",
                  "SINGLE_INSTANCE_PROPERTY_TEMPLATE",
                  "NOT_CRITICAL_ERROR",
                  "CLEANUP_FAILED",
                  "FIELD_VALUE_OVERRIDEN",
                  "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING",
                  "MISSING_TYPE_DEPENDENCY",
                  "EXTERNAL_API_WARNING",
                  "SCHEMA_VALIDATION_IGNORED",
                  "UNDECLARED_PROPERTIES",
                  "EXPERIMENTAL_TYPE_USED",
                  "DEPRECATED_TYPE_USED",
                  "PARTIAL_SUCCESS",
                  "LARGE_DEPLOYMENT_WARNING",
                  "NEXT_HOP_INSTANCE_HAS_NO_IPV6_INTERFACE",
                  "INVALID_HEALTH_CHECK_FOR_DYNAMIC_WIEGHTED_LB",
                },
                enumDescriptions = {
                  "A link to a deprecated resource was created.",
                  "No results are present on a particular list page.",
                  "A given scope cannot be reached.",
                  "The route's nextHopIp address is not assigned to an instance on the network.",
                  "The route's nextHopInstance URL refers to an instance that does not exist.",
                  "The route's nextHopInstance URL refers to an instance that is not on the same network as the route.",
                  "The route's next hop instance cannot ip forward.",
                  "The route's next hop instance does not have a status of RUNNING.",
                  "The operation involved use of an injected kernel, which is deprecated.",
                  "The user attempted to use a resource that requires a TOS they have not accepted.",
                  "The user created a boot disk that is larger than image size.",
                  "One or more of the resources set to auto-delete could not be deleted because they were in use.",
                  "Instance template used in instance group manager is valid as such, but its application does not make a lot of sense, because it allows only single instance in instance group.",
                  "Error which is not critical. We decided to continue the process despite the mentioned error.",
                  "Warning about failed cleanup of transient changes made by a failed operation.",
                  "Warning that value of a field has been overridden. Deprecated unused field.",
                  "Warning that a resource is in use.",
                  "A resource depends on a missing type",
                  "Warning that is present in an external api call",
                  "When a resource schema validation is ignored.",
                  "When undeclared properties in the schema are present",
                  "When deploying and at least one of the resources has a type marked as experimental",
                  "When deploying and at least one of the resources has a type marked as deprecated",
                  "Success is reported, but some results may be missing due to errors",
                  "When deploying a deployment with a exceedingly large number of resources",
                  "The route's nextHopInstance URL refers to an instance that does not have an ipv6 interface on the same network as the route.",
                  "A WEIGHTED_MAGLEV backend service is associated with a health check that is not of type HTTP/HTTPS/HTTP2.",
                },
                type = "string",
              },
              data = {
                description = "[Output Only] Metadata about this warning in key: value format. For example: \"data\": [ { \"key\": \"scope\", \"value\": \"zones/us-east1-d\" } ",
                items = {
                  properties = {
                    key = {
                      description = "[Output Only] A key that provides more detail on the warning being returned. For example, for warnings where there are no results in a list request for a particular zone, this key might be scope and the key value might be the zone name. Other examples might be a key indicating a deprecated resource and a suggested replacement, or a warning about invalid network settings (for example, if an instance attempts to perform IP forwarding but is not enabled for IP forwarding).",
                      type = "string",
                    },
                    value = {
                      description = "[Output Only] A warning data value corresponding to the key.",
                      type = "string",
                    },
                  },
                  type = "object",
                },
                type = "array",
              },
              message = {
                description = "[Output Only] A human-readable description of the warning code.",
                type = "string",
              },
            },
            type = "object",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ResourcesListResponse = {
      description = "A response containing a partial list of resources and a page token used to build the next request if the request has been truncated.",
      id = "ResourcesListResponse",
      properties = {
        nextPageToken = {
          description = "A token used to continue a truncated list request.",
          type = "string",
        },
        resources = {
          description = "Resources contained in this list response.",
          items = {
            ["$ref"] = "Resource",
          },
          type = "array",
        },
      },
      type = "object",
    },
    TargetConfiguration = {
      id = "TargetConfiguration",
      properties = {
        config = {
          ["$ref"] = "ConfigFile",
          description = "The configuration to use for this deployment.",
        },
        imports = {
          description = "Specifies any files to import for this configuration. This can be used to import templates or other files. For example, you might import a text file in order to use the file in a template.",
          items = {
            ["$ref"] = "ImportFile",
          },
          type = "array",
        },
      },
      type = "object",
    },
    TestPermissionsRequest = {
      id = "TestPermissionsRequest",
      properties = {
        permissions = {
          description = "The set of permissions to check for the 'resource'. Permissions with wildcards (such as '*' or 'storage.*') are not allowed.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    TestPermissionsResponse = {
      id = "TestPermissionsResponse",
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
    Type = {
      description = "A resource type supported by Deployment Manager.",
      id = "Type",
      properties = {
        id = {
          format = "uint64",
          type = "string",
        },
        insertTime = {
          description = "Output only. Creation timestamp in RFC3339 text format.",
          type = "string",
        },
        name = {
          description = "Name of the type.",
          type = "string",
        },
        operation = {
          ["$ref"] = "Operation",
          description = "Output only. The Operation that most recently ran, or is currently running, on this type.",
        },
        selfLink = {
          description = "Output only. Server defined URL for the resource.",
          type = "string",
        },
      },
      type = "object",
    },
    TypesListResponse = {
      description = "A response that returns all Types supported by Deployment Manager",
      id = "TypesListResponse",
      properties = {
        nextPageToken = {
          description = "A token used to continue a truncated list request.",
          type = "string",
        },
        types = {
          description = "Output only. A list of resource types supported by Deployment Manager.",
          items = {
            ["$ref"] = "Type",
          },
          type = "array",
        },
      },
      type = "object",
    },
  },
  servicePath = "",
  title = "Cloud Deployment Manager V2 API",
  version = "v2",
}
