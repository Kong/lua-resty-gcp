return {
  auth = {
    oauth2 = {
      scopes = {
        ["https://www.googleapis.com/auth/tagmanager.delete.containers"] = {
          description = "Delete your Google Tag Manager containers",
        },
        ["https://www.googleapis.com/auth/tagmanager.edit.containers"] = {
          description = "Manage your Google Tag Manager container and its subcomponents, excluding versioning and publishing",
        },
        ["https://www.googleapis.com/auth/tagmanager.edit.containerversions"] = {
          description = "Manage your Google Tag Manager container versions",
        },
        ["https://www.googleapis.com/auth/tagmanager.manage.accounts"] = {
          description = "View and manage your Google Tag Manager accounts",
        },
        ["https://www.googleapis.com/auth/tagmanager.manage.users"] = {
          description = "Manage user permissions of your Google Tag Manager account and container",
        },
        ["https://www.googleapis.com/auth/tagmanager.publish"] = {
          description = "Publish your Google Tag Manager container versions",
        },
        ["https://www.googleapis.com/auth/tagmanager.readonly"] = {
          description = "View your Google Tag Manager container and its subcomponents",
        },
      },
    },
  },
  basePath = "",
  baseUrl = "https://tagmanager.googleapis.com/",
  batchPath = "batch",
  canonicalName = "Tag Manager",
  description = "This API allows clients to access and modify container and tag configuration.",
  discoveryVersion = "v1",
  documentationLink = "https://developers.google.com/tag-manager",
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "tagmanager:v2",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://tagmanager.mtls.googleapis.com/",
  name = "tagmanager",
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
    accounts = {
      methods = {
        get = {
          description = "Gets a GTM Account.",
          flatPath = "tagmanager/v2/accounts/{accountsId}",
          httpMethod = "GET",
          id = "tagmanager.accounts.get",
          parameterOrder = {
            "path",
          },
          parameters = {
            path = {
              description = "GTM Account's API relative path. Example: accounts/{account_id}",
              location = "path",
              pattern = "^accounts/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "tagmanager/v2/{+path}",
          response = {
            ["$ref"] = "Account",
          },
          scopes = {
            "https://www.googleapis.com/auth/tagmanager.edit.containers",
            "https://www.googleapis.com/auth/tagmanager.manage.accounts",
            "https://www.googleapis.com/auth/tagmanager.readonly",
          },
        },
        list = {
          description = "Lists all GTM Accounts that a user has access to.",
          flatPath = "tagmanager/v2/accounts",
          httpMethod = "GET",
          id = "tagmanager.accounts.list",
          parameterOrder = {},
          parameters = {
            includeGoogleTags = {
              description = "Also retrieve accounts associated with Google Tag when true.",
              location = "query",
              type = "boolean",
            },
            pageToken = {
              description = "Continuation token for fetching the next page of results.",
              location = "query",
              type = "string",
            },
          },
          path = "tagmanager/v2/accounts",
          response = {
            ["$ref"] = "ListAccountsResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/tagmanager.edit.containers",
            "https://www.googleapis.com/auth/tagmanager.manage.accounts",
            "https://www.googleapis.com/auth/tagmanager.readonly",
          },
        },
        update = {
          description = "Updates a GTM Account.",
          flatPath = "tagmanager/v2/accounts/{accountsId}",
          httpMethod = "PUT",
          id = "tagmanager.accounts.update",
          parameterOrder = {
            "path",
          },
          parameters = {
            fingerprint = {
              description = "When provided, this fingerprint must match the fingerprint of the account in storage.",
              location = "query",
              type = "string",
            },
            path = {
              description = "GTM Account's API relative path. Example: accounts/{account_id}",
              location = "path",
              pattern = "^accounts/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "tagmanager/v2/{+path}",
          request = {
            ["$ref"] = "Account",
          },
          response = {
            ["$ref"] = "Account",
          },
          scopes = {
            "https://www.googleapis.com/auth/tagmanager.manage.accounts",
          },
        },
      },
      resources = {
        containers = {
          methods = {
            combine = {
              description = "Combines Containers.",
              flatPath = "tagmanager/v2/accounts/{accountsId}/containers/{containersId}:combine",
              httpMethod = "POST",
              id = "tagmanager.accounts.containers.combine",
              parameterOrder = {
                "path",
              },
              parameters = {
                allowUserPermissionFeatureUpdate = {
                  description = "Must be set to true to allow features.user_permissions to change from false to true. If this operation causes an update but this bit is false, the operation will fail.",
                  location = "query",
                  type = "boolean",
                },
                containerId = {
                  description = "ID of container that will be merged into the current container.",
                  location = "query",
                  type = "string",
                },
                path = {
                  description = "GTM Container's API relative path. Example: accounts/{account_id}/containers/{container_id}",
                  location = "path",
                  pattern = "^accounts/[^/]+/containers/[^/]+$",
                  required = true,
                  type = "string",
                },
                settingSource = {
                  description = "Specify the source of config setting after combine",
                  enum = {
                    "settingSourceUnspecified",
                    "current",
                    "other",
                  },
                  enumDescriptions = {
                    "",
                    "Keep the current container config setting after combine",
                    "Use config setting from the other tag after combine",
                  },
                  location = "query",
                  type = "string",
                },
              },
              path = "tagmanager/v2/{+path}:combine",
              response = {
                ["$ref"] = "Container",
              },
              scopes = {
                "https://www.googleapis.com/auth/tagmanager.edit.containers",
              },
            },
            create = {
              description = "Creates a Container.",
              flatPath = "tagmanager/v2/accounts/{accountsId}/containers",
              httpMethod = "POST",
              id = "tagmanager.accounts.containers.create",
              parameterOrder = {
                "parent",
              },
              parameters = {
                parent = {
                  description = "GTM Account's API relative path. Example: accounts/{account_id}.",
                  location = "path",
                  pattern = "^accounts/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "tagmanager/v2/{+parent}/containers",
              request = {
                ["$ref"] = "Container",
              },
              response = {
                ["$ref"] = "Container",
              },
              scopes = {
                "https://www.googleapis.com/auth/tagmanager.edit.containers",
              },
            },
            delete = {
              description = "Deletes a Container.",
              flatPath = "tagmanager/v2/accounts/{accountsId}/containers/{containersId}",
              httpMethod = "DELETE",
              id = "tagmanager.accounts.containers.delete",
              parameterOrder = {
                "path",
              },
              parameters = {
                path = {
                  description = "GTM Container's API relative path. Example: accounts/{account_id}/containers/{container_id}",
                  location = "path",
                  pattern = "^accounts/[^/]+/containers/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "tagmanager/v2/{+path}",
              scopes = {
                "https://www.googleapis.com/auth/tagmanager.delete.containers",
              },
            },
            get = {
              description = "Gets a Container.",
              flatPath = "tagmanager/v2/accounts/{accountsId}/containers/{containersId}",
              httpMethod = "GET",
              id = "tagmanager.accounts.containers.get",
              parameterOrder = {
                "path",
              },
              parameters = {
                path = {
                  description = "GTM Container's API relative path. Example: accounts/{account_id}/containers/{container_id}",
                  location = "path",
                  pattern = "^accounts/[^/]+/containers/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "tagmanager/v2/{+path}",
              response = {
                ["$ref"] = "Container",
              },
              scopes = {
                "https://www.googleapis.com/auth/tagmanager.edit.containers",
                "https://www.googleapis.com/auth/tagmanager.readonly",
              },
            },
            list = {
              description = "Lists all Containers that belongs to a GTM Account.",
              flatPath = "tagmanager/v2/accounts/{accountsId}/containers",
              httpMethod = "GET",
              id = "tagmanager.accounts.containers.list",
              parameterOrder = {
                "parent",
              },
              parameters = {
                pageToken = {
                  description = "Continuation token for fetching the next page of results.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "GTM Account's API relative path. Example: accounts/{account_id}.",
                  location = "path",
                  pattern = "^accounts/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "tagmanager/v2/{+parent}/containers",
              response = {
                ["$ref"] = "ListContainersResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/tagmanager.edit.containers",
                "https://www.googleapis.com/auth/tagmanager.readonly",
              },
            },
            lookup = {
              description = "Looks up a Container by destination ID.",
              flatPath = "tagmanager/v2/accounts/containers:lookup",
              httpMethod = "GET",
              id = "tagmanager.accounts.containers.lookup",
              parameterOrder = {},
              parameters = {
                destinationId = {
                  description = "Destination ID linked to a GTM Container, e.g. AW-123456789. Example: accounts/containers:lookup?destination_id={destination_id}.",
                  location = "query",
                  type = "string",
                },
              },
              path = "tagmanager/v2/accounts/containers:lookup",
              response = {
                ["$ref"] = "Container",
              },
              scopes = {
                "https://www.googleapis.com/auth/tagmanager.edit.containers",
                "https://www.googleapis.com/auth/tagmanager.readonly",
              },
            },
            move_tag_id = {
              description = "Move Tag ID out of a Container.",
              flatPath = "tagmanager/v2/accounts/{accountsId}/containers/{containersId}:move_tag_id",
              httpMethod = "POST",
              id = "tagmanager.accounts.containers.move_tag_id",
              parameterOrder = {
                "path",
              },
              parameters = {
                allowUserPermissionFeatureUpdate = {
                  description = "Must be set to true to allow features.user_permissions to change from false to true. If this operation causes an update but this bit is false, the operation will fail.",
                  location = "query",
                  type = "boolean",
                },
                copySettings = {
                  description = "Whether or not to copy tag settings from this tag to the new tag.",
                  location = "query",
                  type = "boolean",
                },
                copyTermsOfService = {
                  description = "Must be set to true to accept all terms of service agreements copied from the current tag to the newly created tag. If this bit is false, the operation will fail.",
                  location = "query",
                  type = "boolean",
                },
                copyUsers = {
                  description = "Whether or not to copy users from this tag to the new tag.",
                  location = "query",
                  type = "boolean",
                },
                path = {
                  description = "GTM Container's API relative path. Example: accounts/{account_id}/containers/{container_id}",
                  location = "path",
                  pattern = "^accounts/[^/]+/containers/[^/]+$",
                  required = true,
                  type = "string",
                },
                tagId = {
                  description = "Tag ID to be removed from the current Container.",
                  location = "query",
                  type = "string",
                },
                tagName = {
                  description = "The name for the newly created tag.",
                  location = "query",
                  type = "string",
                },
              },
              path = "tagmanager/v2/{+path}:move_tag_id",
              response = {
                ["$ref"] = "Container",
              },
              scopes = {
                "https://www.googleapis.com/auth/tagmanager.edit.containers",
              },
            },
            snippet = {
              description = "Gets the tagging snippet for a Container.",
              flatPath = "tagmanager/v2/accounts/{accountsId}/containers/{containersId}:snippet",
              httpMethod = "GET",
              id = "tagmanager.accounts.containers.snippet",
              parameterOrder = {
                "path",
              },
              parameters = {
                path = {
                  description = "Container snippet's API relative path. Example: accounts/{account_id}/containers/{container_id}:snippet",
                  location = "path",
                  pattern = "^accounts/[^/]+/containers/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "tagmanager/v2/{+path}:snippet",
              response = {
                ["$ref"] = "GetContainerSnippetResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/tagmanager.edit.containers",
                "https://www.googleapis.com/auth/tagmanager.readonly",
              },
            },
            update = {
              description = "Updates a Container.",
              flatPath = "tagmanager/v2/accounts/{accountsId}/containers/{containersId}",
              httpMethod = "PUT",
              id = "tagmanager.accounts.containers.update",
              parameterOrder = {
                "path",
              },
              parameters = {
                fingerprint = {
                  description = "When provided, this fingerprint must match the fingerprint of the container in storage.",
                  location = "query",
                  type = "string",
                },
                path = {
                  description = "GTM Container's API relative path. Example: accounts/{account_id}/containers/{container_id}",
                  location = "path",
                  pattern = "^accounts/[^/]+/containers/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "tagmanager/v2/{+path}",
              request = {
                ["$ref"] = "Container",
              },
              response = {
                ["$ref"] = "Container",
              },
              scopes = {
                "https://www.googleapis.com/auth/tagmanager.edit.containers",
              },
            },
          },
          resources = {
            destinations = {
              methods = {
                get = {
                  description = "Gets a Destination.",
                  flatPath = "tagmanager/v2/accounts/{accountsId}/containers/{containersId}/destinations/{destinationsId}",
                  httpMethod = "GET",
                  id = "tagmanager.accounts.containers.destinations.get",
                  parameterOrder = {
                    "path",
                  },
                  parameters = {
                    path = {
                      description = "Google Tag Destination's API relative path. Example: accounts/{account_id}/containers/{container_id}/destinations/{destination_link_id}",
                      location = "path",
                      pattern = "^accounts/[^/]+/containers/[^/]+/destinations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "tagmanager/v2/{+path}",
                  response = {
                    ["$ref"] = "Destination",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/tagmanager.edit.containers",
                    "https://www.googleapis.com/auth/tagmanager.readonly",
                  },
                },
                link = {
                  description = "Adds a Destination to this Container and removes it from the Container to which it is currently linked.",
                  flatPath = "tagmanager/v2/accounts/{accountsId}/containers/{containersId}/destinations:link",
                  httpMethod = "POST",
                  id = "tagmanager.accounts.containers.destinations.link",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    allowUserPermissionFeatureUpdate = {
                      description = "Must be set to true to allow features.user_permissions to change from false to true. If this operation causes an update but this bit is false, the operation will fail.",
                      location = "query",
                      type = "boolean",
                    },
                    destinationId = {
                      description = "Destination ID to be linked to the current container.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "GTM parent Container's API relative path. Example: accounts/{account_id}/containers/{container_id}",
                      location = "path",
                      pattern = "^accounts/[^/]+/containers/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "tagmanager/v2/{+parent}/destinations:link",
                  response = {
                    ["$ref"] = "Destination",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/tagmanager.edit.containers",
                  },
                },
                list = {
                  description = "Lists all Destinations linked to a GTM Container.",
                  flatPath = "tagmanager/v2/accounts/{accountsId}/containers/{containersId}/destinations",
                  httpMethod = "GET",
                  id = "tagmanager.accounts.containers.destinations.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    parent = {
                      description = "GTM parent Container's API relative path. Example: accounts/{account_id}/containers/{container_id}",
                      location = "path",
                      pattern = "^accounts/[^/]+/containers/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "tagmanager/v2/{+parent}/destinations",
                  response = {
                    ["$ref"] = "ListDestinationsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/tagmanager.edit.containers",
                    "https://www.googleapis.com/auth/tagmanager.readonly",
                  },
                },
              },
            },
            environments = {
              methods = {
                create = {
                  description = "Creates a GTM Environment.",
                  flatPath = "tagmanager/v2/accounts/{accountsId}/containers/{containersId}/environments",
                  httpMethod = "POST",
                  id = "tagmanager.accounts.containers.environments.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    parent = {
                      description = "GTM Container's API relative path. Example: accounts/{account_id}/containers/{container_id}",
                      location = "path",
                      pattern = "^accounts/[^/]+/containers/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "tagmanager/v2/{+parent}/environments",
                  request = {
                    ["$ref"] = "Environment",
                  },
                  response = {
                    ["$ref"] = "Environment",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/tagmanager.edit.containers",
                  },
                },
                delete = {
                  description = "Deletes a GTM Environment.",
                  flatPath = "tagmanager/v2/accounts/{accountsId}/containers/{containersId}/environments/{environmentsId}",
                  httpMethod = "DELETE",
                  id = "tagmanager.accounts.containers.environments.delete",
                  parameterOrder = {
                    "path",
                  },
                  parameters = {
                    path = {
                      description = "GTM Environment's API relative path. Example: accounts/{account_id}/containers/{container_id}/environments/{environment_id}",
                      location = "path",
                      pattern = "^accounts/[^/]+/containers/[^/]+/environments/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "tagmanager/v2/{+path}",
                  scopes = {
                    "https://www.googleapis.com/auth/tagmanager.edit.containers",
                  },
                },
                get = {
                  description = "Gets a GTM Environment.",
                  flatPath = "tagmanager/v2/accounts/{accountsId}/containers/{containersId}/environments/{environmentsId}",
                  httpMethod = "GET",
                  id = "tagmanager.accounts.containers.environments.get",
                  parameterOrder = {
                    "path",
                  },
                  parameters = {
                    path = {
                      description = "GTM Environment's API relative path. Example: accounts/{account_id}/containers/{container_id}/environments/{environment_id}",
                      location = "path",
                      pattern = "^accounts/[^/]+/containers/[^/]+/environments/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "tagmanager/v2/{+path}",
                  response = {
                    ["$ref"] = "Environment",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/tagmanager.edit.containers",
                    "https://www.googleapis.com/auth/tagmanager.readonly",
                  },
                },
                list = {
                  description = "Lists all GTM Environments of a GTM Container.",
                  flatPath = "tagmanager/v2/accounts/{accountsId}/containers/{containersId}/environments",
                  httpMethod = "GET",
                  id = "tagmanager.accounts.containers.environments.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    pageToken = {
                      description = "Continuation token for fetching the next page of results.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "GTM Container's API relative path. Example: accounts/{account_id}/containers/{container_id}",
                      location = "path",
                      pattern = "^accounts/[^/]+/containers/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "tagmanager/v2/{+parent}/environments",
                  response = {
                    ["$ref"] = "ListEnvironmentsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/tagmanager.edit.containers",
                    "https://www.googleapis.com/auth/tagmanager.readonly",
                  },
                },
                reauthorize = {
                  description = "Re-generates the authorization code for a GTM Environment.",
                  flatPath = "tagmanager/v2/accounts/{accountsId}/containers/{containersId}/environments/{environmentsId}:reauthorize",
                  httpMethod = "POST",
                  id = "tagmanager.accounts.containers.environments.reauthorize",
                  parameterOrder = {
                    "path",
                  },
                  parameters = {
                    path = {
                      description = "GTM Environment's API relative path. Example: accounts/{account_id}/containers/{container_id}/environments/{environment_id}",
                      location = "path",
                      pattern = "^accounts/[^/]+/containers/[^/]+/environments/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "tagmanager/v2/{+path}:reauthorize",
                  request = {
                    ["$ref"] = "Environment",
                  },
                  response = {
                    ["$ref"] = "Environment",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/tagmanager.publish",
                  },
                },
                update = {
                  description = "Updates a GTM Environment.",
                  flatPath = "tagmanager/v2/accounts/{accountsId}/containers/{containersId}/environments/{environmentsId}",
                  httpMethod = "PUT",
                  id = "tagmanager.accounts.containers.environments.update",
                  parameterOrder = {
                    "path",
                  },
                  parameters = {
                    fingerprint = {
                      description = "When provided, this fingerprint must match the fingerprint of the environment in storage.",
                      location = "query",
                      type = "string",
                    },
                    path = {
                      description = "GTM Environment's API relative path. Example: accounts/{account_id}/containers/{container_id}/environments/{environment_id}",
                      location = "path",
                      pattern = "^accounts/[^/]+/containers/[^/]+/environments/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "tagmanager/v2/{+path}",
                  request = {
                    ["$ref"] = "Environment",
                  },
                  response = {
                    ["$ref"] = "Environment",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/tagmanager.edit.containers",
                  },
                },
              },
            },
            version_headers = {
              methods = {
                latest = {
                  description = "Gets the latest container version header",
                  flatPath = "tagmanager/v2/accounts/{accountsId}/containers/{containersId}/version_headers:latest",
                  httpMethod = "GET",
                  id = "tagmanager.accounts.containers.version_headers.latest",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    parent = {
                      description = "GTM Container's API relative path. Example: accounts/{account_id}/containers/{container_id}",
                      location = "path",
                      pattern = "^accounts/[^/]+/containers/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "tagmanager/v2/{+parent}/version_headers:latest",
                  response = {
                    ["$ref"] = "ContainerVersionHeader",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/tagmanager.edit.containers",
                    "https://www.googleapis.com/auth/tagmanager.readonly",
                  },
                },
                list = {
                  description = "Lists all Container Versions of a GTM Container.",
                  flatPath = "tagmanager/v2/accounts/{accountsId}/containers/{containersId}/version_headers",
                  httpMethod = "GET",
                  id = "tagmanager.accounts.containers.version_headers.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    includeDeleted = {
                      description = "Also retrieve deleted (archived) versions when true.",
                      location = "query",
                      type = "boolean",
                    },
                    pageToken = {
                      description = "Continuation token for fetching the next page of results.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "GTM Container's API relative path. Example: accounts/{account_id}/containers/{container_id}",
                      location = "path",
                      pattern = "^accounts/[^/]+/containers/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "tagmanager/v2/{+parent}/version_headers",
                  response = {
                    ["$ref"] = "ListContainerVersionsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/tagmanager.edit.containers",
                    "https://www.googleapis.com/auth/tagmanager.edit.containerversions",
                    "https://www.googleapis.com/auth/tagmanager.readonly",
                  },
                },
              },
            },
            versions = {
              methods = {
                delete = {
                  description = "Deletes a Container Version.",
                  flatPath = "tagmanager/v2/accounts/{accountsId}/containers/{containersId}/versions/{versionsId}",
                  httpMethod = "DELETE",
                  id = "tagmanager.accounts.containers.versions.delete",
                  parameterOrder = {
                    "path",
                  },
                  parameters = {
                    path = {
                      description = "GTM ContainerVersion's API relative path. Example: accounts/{account_id}/containers/{container_id}/versions/{version_id}",
                      location = "path",
                      pattern = "^accounts/[^/]+/containers/[^/]+/versions/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "tagmanager/v2/{+path}",
                  scopes = {
                    "https://www.googleapis.com/auth/tagmanager.edit.containerversions",
                  },
                },
                get = {
                  description = "Gets a Container Version.",
                  flatPath = "tagmanager/v2/accounts/{accountsId}/containers/{containersId}/versions/{versionsId}",
                  httpMethod = "GET",
                  id = "tagmanager.accounts.containers.versions.get",
                  parameterOrder = {
                    "path",
                  },
                  parameters = {
                    containerVersionId = {
                      description = "The GTM ContainerVersion ID. Specify published to retrieve the currently published version.",
                      location = "query",
                      type = "string",
                    },
                    path = {
                      description = "GTM ContainerVersion's API relative path. Example: accounts/{account_id}/containers/{container_id}/versions/{version_id}",
                      location = "path",
                      pattern = "^accounts/[^/]+/containers/[^/]+/versions/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "tagmanager/v2/{+path}",
                  response = {
                    ["$ref"] = "ContainerVersion",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/tagmanager.edit.containers",
                    "https://www.googleapis.com/auth/tagmanager.edit.containerversions",
                    "https://www.googleapis.com/auth/tagmanager.readonly",
                  },
                },
                live = {
                  description = "Gets the live (i.e. published) container version",
                  flatPath = "tagmanager/v2/accounts/{accountsId}/containers/{containersId}/versions:live",
                  httpMethod = "GET",
                  id = "tagmanager.accounts.containers.versions.live",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    parent = {
                      description = "GTM Container's API relative path. Example: accounts/{account_id}/containers/{container_id}",
                      location = "path",
                      pattern = "^accounts/[^/]+/containers/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "tagmanager/v2/{+parent}/versions:live",
                  response = {
                    ["$ref"] = "ContainerVersion",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/tagmanager.edit.containers",
                    "https://www.googleapis.com/auth/tagmanager.readonly",
                  },
                },
                publish = {
                  description = "Publishes a Container Version.",
                  flatPath = "tagmanager/v2/accounts/{accountsId}/containers/{containersId}/versions/{versionsId}:publish",
                  httpMethod = "POST",
                  id = "tagmanager.accounts.containers.versions.publish",
                  parameterOrder = {
                    "path",
                  },
                  parameters = {
                    fingerprint = {
                      description = "When provided, this fingerprint must match the fingerprint of the container version in storage.",
                      location = "query",
                      type = "string",
                    },
                    path = {
                      description = "GTM ContainerVersion's API relative path. Example: accounts/{account_id}/containers/{container_id}/versions/{version_id}",
                      location = "path",
                      pattern = "^accounts/[^/]+/containers/[^/]+/versions/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "tagmanager/v2/{+path}:publish",
                  response = {
                    ["$ref"] = "PublishContainerVersionResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/tagmanager.publish",
                  },
                },
                set_latest = {
                  description = "Sets the latest version used for synchronization of workspaces when detecting conflicts and errors.",
                  flatPath = "tagmanager/v2/accounts/{accountsId}/containers/{containersId}/versions/{versionsId}:set_latest",
                  httpMethod = "POST",
                  id = "tagmanager.accounts.containers.versions.set_latest",
                  parameterOrder = {
                    "path",
                  },
                  parameters = {
                    path = {
                      description = "GTM ContainerVersion's API relative path. Example: accounts/{account_id}/containers/{container_id}/versions/{version_id}",
                      location = "path",
                      pattern = "^accounts/[^/]+/containers/[^/]+/versions/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "tagmanager/v2/{+path}:set_latest",
                  response = {
                    ["$ref"] = "ContainerVersion",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/tagmanager.edit.containers",
                  },
                },
                undelete = {
                  description = "Undeletes a Container Version.",
                  flatPath = "tagmanager/v2/accounts/{accountsId}/containers/{containersId}/versions/{versionsId}:undelete",
                  httpMethod = "POST",
                  id = "tagmanager.accounts.containers.versions.undelete",
                  parameterOrder = {
                    "path",
                  },
                  parameters = {
                    path = {
                      description = "GTM ContainerVersion's API relative path. Example: accounts/{account_id}/containers/{container_id}/versions/{version_id}",
                      location = "path",
                      pattern = "^accounts/[^/]+/containers/[^/]+/versions/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "tagmanager/v2/{+path}:undelete",
                  response = {
                    ["$ref"] = "ContainerVersion",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/tagmanager.edit.containerversions",
                  },
                },
                update = {
                  description = "Updates a Container Version.",
                  flatPath = "tagmanager/v2/accounts/{accountsId}/containers/{containersId}/versions/{versionsId}",
                  httpMethod = "PUT",
                  id = "tagmanager.accounts.containers.versions.update",
                  parameterOrder = {
                    "path",
                  },
                  parameters = {
                    fingerprint = {
                      description = "When provided, this fingerprint must match the fingerprint of the container version in storage.",
                      location = "query",
                      type = "string",
                    },
                    path = {
                      description = "GTM ContainerVersion's API relative path. Example: accounts/{account_id}/containers/{container_id}/versions/{version_id}",
                      location = "path",
                      pattern = "^accounts/[^/]+/containers/[^/]+/versions/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "tagmanager/v2/{+path}",
                  request = {
                    ["$ref"] = "ContainerVersion",
                  },
                  response = {
                    ["$ref"] = "ContainerVersion",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/tagmanager.edit.containerversions",
                  },
                },
              },
            },
            workspaces = {
              methods = {
                create = {
                  description = "Creates a Workspace.",
                  flatPath = "tagmanager/v2/accounts/{accountsId}/containers/{containersId}/workspaces",
                  httpMethod = "POST",
                  id = "tagmanager.accounts.containers.workspaces.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    parent = {
                      description = "GTM parent Container's API relative path. Example: accounts/{account_id}/containers/{container_id}",
                      location = "path",
                      pattern = "^accounts/[^/]+/containers/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "tagmanager/v2/{+parent}/workspaces",
                  request = {
                    ["$ref"] = "Workspace",
                  },
                  response = {
                    ["$ref"] = "Workspace",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/tagmanager.edit.containers",
                  },
                },
                create_version = {
                  description = "Creates a Container Version from the entities present in the workspace, deletes the workspace, and sets the base container version to the newly created version.",
                  flatPath = "tagmanager/v2/accounts/{accountsId}/containers/{containersId}/workspaces/{workspacesId}:create_version",
                  httpMethod = "POST",
                  id = "tagmanager.accounts.containers.workspaces.create_version",
                  parameterOrder = {
                    "path",
                  },
                  parameters = {
                    path = {
                      description = "GTM Workspace's API relative path. Example: accounts/{account_id}/containers/{container_id}/workspaces/{workspace_id}",
                      location = "path",
                      pattern = "^accounts/[^/]+/containers/[^/]+/workspaces/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "tagmanager/v2/{+path}:create_version",
                  request = {
                    ["$ref"] = "CreateContainerVersionRequestVersionOptions",
                  },
                  response = {
                    ["$ref"] = "CreateContainerVersionResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/tagmanager.edit.containerversions",
                  },
                },
                delete = {
                  description = "Deletes a Workspace.",
                  flatPath = "tagmanager/v2/accounts/{accountsId}/containers/{containersId}/workspaces/{workspacesId}",
                  httpMethod = "DELETE",
                  id = "tagmanager.accounts.containers.workspaces.delete",
                  parameterOrder = {
                    "path",
                  },
                  parameters = {
                    path = {
                      description = "GTM Workspace's API relative path. Example: accounts/{account_id}/containers/{container_id}/workspaces/{workspace_id}",
                      location = "path",
                      pattern = "^accounts/[^/]+/containers/[^/]+/workspaces/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "tagmanager/v2/{+path}",
                  scopes = {
                    "https://www.googleapis.com/auth/tagmanager.delete.containers",
                  },
                },
                get = {
                  description = "Gets a Workspace.",
                  flatPath = "tagmanager/v2/accounts/{accountsId}/containers/{containersId}/workspaces/{workspacesId}",
                  httpMethod = "GET",
                  id = "tagmanager.accounts.containers.workspaces.get",
                  parameterOrder = {
                    "path",
                  },
                  parameters = {
                    path = {
                      description = "GTM Workspace's API relative path. Example: accounts/{account_id}/containers/{container_id}/workspaces/{workspace_id}",
                      location = "path",
                      pattern = "^accounts/[^/]+/containers/[^/]+/workspaces/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "tagmanager/v2/{+path}",
                  response = {
                    ["$ref"] = "Workspace",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/tagmanager.edit.containers",
                    "https://www.googleapis.com/auth/tagmanager.readonly",
                  },
                },
                getStatus = {
                  description = "Finds conflicting and modified entities in the workspace.",
                  flatPath = "tagmanager/v2/accounts/{accountsId}/containers/{containersId}/workspaces/{workspacesId}/status",
                  httpMethod = "GET",
                  id = "tagmanager.accounts.containers.workspaces.getStatus",
                  parameterOrder = {
                    "path",
                  },
                  parameters = {
                    path = {
                      description = "GTM Workspace's API relative path. Example: accounts/{account_id}/containers/{container_id}/workspaces/{workspace_id}",
                      location = "path",
                      pattern = "^accounts/[^/]+/containers/[^/]+/workspaces/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "tagmanager/v2/{+path}/status",
                  response = {
                    ["$ref"] = "GetWorkspaceStatusResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/tagmanager.edit.containers",
                    "https://www.googleapis.com/auth/tagmanager.readonly",
                  },
                },
                list = {
                  description = "Lists all Workspaces that belong to a GTM Container.",
                  flatPath = "tagmanager/v2/accounts/{accountsId}/containers/{containersId}/workspaces",
                  httpMethod = "GET",
                  id = "tagmanager.accounts.containers.workspaces.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    pageToken = {
                      description = "Continuation token for fetching the next page of results.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "GTM parent Container's API relative path. Example: accounts/{account_id}/containers/{container_id}",
                      location = "path",
                      pattern = "^accounts/[^/]+/containers/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "tagmanager/v2/{+parent}/workspaces",
                  response = {
                    ["$ref"] = "ListWorkspacesResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/tagmanager.edit.containers",
                    "https://www.googleapis.com/auth/tagmanager.readonly",
                  },
                },
                quick_preview = {
                  description = "Quick previews a workspace by creating a fake container version from all entities in the provided workspace.",
                  flatPath = "tagmanager/v2/accounts/{accountsId}/containers/{containersId}/workspaces/{workspacesId}:quick_preview",
                  httpMethod = "POST",
                  id = "tagmanager.accounts.containers.workspaces.quick_preview",
                  parameterOrder = {
                    "path",
                  },
                  parameters = {
                    path = {
                      description = "GTM Workspace's API relative path. Example: accounts/{account_id}/containers/{container_id}/workspaces/{workspace_id}",
                      location = "path",
                      pattern = "^accounts/[^/]+/containers/[^/]+/workspaces/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "tagmanager/v2/{+path}:quick_preview",
                  response = {
                    ["$ref"] = "QuickPreviewResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/tagmanager.edit.containerversions",
                  },
                },
                resolve_conflict = {
                  description = "Resolves a merge conflict for a workspace entity by updating it to the resolved entity passed in the request.",
                  flatPath = "tagmanager/v2/accounts/{accountsId}/containers/{containersId}/workspaces/{workspacesId}:resolve_conflict",
                  httpMethod = "POST",
                  id = "tagmanager.accounts.containers.workspaces.resolve_conflict",
                  parameterOrder = {
                    "path",
                  },
                  parameters = {
                    fingerprint = {
                      description = "When provided, this fingerprint must match the fingerprint of the entity_in_workspace in the merge conflict.",
                      location = "query",
                      type = "string",
                    },
                    path = {
                      description = "GTM Workspace's API relative path. Example: accounts/{account_id}/containers/{container_id}/workspaces/{workspace_id}",
                      location = "path",
                      pattern = "^accounts/[^/]+/containers/[^/]+/workspaces/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "tagmanager/v2/{+path}:resolve_conflict",
                  request = {
                    ["$ref"] = "Entity",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/tagmanager.edit.containers",
                  },
                },
                sync = {
                  description = "Syncs a workspace to the latest container version by updating all unmodified workspace entities and displaying conflicts for modified entities.",
                  flatPath = "tagmanager/v2/accounts/{accountsId}/containers/{containersId}/workspaces/{workspacesId}:sync",
                  httpMethod = "POST",
                  id = "tagmanager.accounts.containers.workspaces.sync",
                  parameterOrder = {
                    "path",
                  },
                  parameters = {
                    path = {
                      description = "GTM Workspace's API relative path. Example: accounts/{account_id}/containers/{container_id}/workspaces/{workspace_id}",
                      location = "path",
                      pattern = "^accounts/[^/]+/containers/[^/]+/workspaces/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "tagmanager/v2/{+path}:sync",
                  response = {
                    ["$ref"] = "SyncWorkspaceResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/tagmanager.edit.containers",
                  },
                },
                update = {
                  description = "Updates a Workspace.",
                  flatPath = "tagmanager/v2/accounts/{accountsId}/containers/{containersId}/workspaces/{workspacesId}",
                  httpMethod = "PUT",
                  id = "tagmanager.accounts.containers.workspaces.update",
                  parameterOrder = {
                    "path",
                  },
                  parameters = {
                    fingerprint = {
                      description = "When provided, this fingerprint must match the fingerprint of the workspace in storage.",
                      location = "query",
                      type = "string",
                    },
                    path = {
                      description = "GTM Workspace's API relative path. Example: accounts/{account_id}/containers/{container_id}/workspaces/{workspace_id}",
                      location = "path",
                      pattern = "^accounts/[^/]+/containers/[^/]+/workspaces/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "tagmanager/v2/{+path}",
                  request = {
                    ["$ref"] = "Workspace",
                  },
                  response = {
                    ["$ref"] = "Workspace",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/tagmanager.edit.containers",
                  },
                },
              },
              resources = {
                built_in_variables = {
                  methods = {
                    create = {
                      description = "Creates one or more GTM Built-In Variables.",
                      flatPath = "tagmanager/v2/accounts/{accountsId}/containers/{containersId}/workspaces/{workspacesId}/built_in_variables",
                      httpMethod = "POST",
                      id = "tagmanager.accounts.containers.workspaces.built_in_variables.create",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        parent = {
                          description = "GTM Workspace's API relative path. Example: accounts/{account_id}/containers/{container_id}/workspaces/{workspace_id}",
                          location = "path",
                          pattern = "^accounts/[^/]+/containers/[^/]+/workspaces/[^/]+$",
                          required = true,
                          type = "string",
                        },
                        type = {
                          description = "The types of built-in variables to enable.",
                          enum = {
                            "builtInVariableTypeUnspecified",
                            "pageUrl",
                            "pageHostname",
                            "pagePath",
                            "referrer",
                            "event",
                            "clickElement",
                            "clickClasses",
                            "clickId",
                            "clickTarget",
                            "clickUrl",
                            "clickText",
                            "firstPartyServingUrl",
                            "formElement",
                            "formClasses",
                            "formId",
                            "formTarget",
                            "formUrl",
                            "formText",
                            "errorMessage",
                            "errorUrl",
                            "errorLine",
                            "newHistoryUrl",
                            "oldHistoryUrl",
                            "newHistoryFragment",
                            "oldHistoryFragment",
                            "newHistoryState",
                            "oldHistoryState",
                            "historySource",
                            "containerVersion",
                            "debugMode",
                            "randomNumber",
                            "containerId",
                            "appId",
                            "appName",
                            "appVersionCode",
                            "appVersionName",
                            "language",
                            "osVersion",
                            "platform",
                            "sdkVersion",
                            "deviceName",
                            "resolution",
                            "advertiserId",
                            "advertisingTrackingEnabled",
                            "htmlId",
                            "environmentName",
                            "ampBrowserLanguage",
                            "ampCanonicalPath",
                            "ampCanonicalUrl",
                            "ampCanonicalHost",
                            "ampReferrer",
                            "ampTitle",
                            "ampClientId",
                            "ampClientTimezone",
                            "ampClientTimestamp",
                            "ampClientScreenWidth",
                            "ampClientScreenHeight",
                            "ampClientScrollX",
                            "ampClientScrollY",
                            "ampClientMaxScrollX",
                            "ampClientMaxScrollY",
                            "ampTotalEngagedTime",
                            "ampPageViewId",
                            "ampPageLoadTime",
                            "ampPageDownloadTime",
                            "ampGtmEvent",
                            "eventName",
                            "firebaseEventParameterCampaign",
                            "firebaseEventParameterCampaignAclid",
                            "firebaseEventParameterCampaignAnid",
                            "firebaseEventParameterCampaignClickTimestamp",
                            "firebaseEventParameterCampaignContent",
                            "firebaseEventParameterCampaignCp1",
                            "firebaseEventParameterCampaignGclid",
                            "firebaseEventParameterCampaignSource",
                            "firebaseEventParameterCampaignTerm",
                            "firebaseEventParameterCurrency",
                            "firebaseEventParameterDynamicLinkAcceptTime",
                            "firebaseEventParameterDynamicLinkLinkid",
                            "firebaseEventParameterNotificationMessageDeviceTime",
                            "firebaseEventParameterNotificationMessageId",
                            "firebaseEventParameterNotificationMessageName",
                            "firebaseEventParameterNotificationMessageTime",
                            "firebaseEventParameterNotificationTopic",
                            "firebaseEventParameterPreviousAppVersion",
                            "firebaseEventParameterPreviousOsVersion",
                            "firebaseEventParameterPrice",
                            "firebaseEventParameterProductId",
                            "firebaseEventParameterQuantity",
                            "firebaseEventParameterValue",
                            "videoProvider",
                            "videoUrl",
                            "videoTitle",
                            "videoDuration",
                            "videoPercent",
                            "videoVisible",
                            "videoStatus",
                            "videoCurrentTime",
                            "scrollDepthThreshold",
                            "scrollDepthUnits",
                            "scrollDepthDirection",
                            "elementVisibilityRatio",
                            "elementVisibilityTime",
                            "elementVisibilityFirstTime",
                            "elementVisibilityRecentTime",
                            "requestPath",
                            "requestMethod",
                            "clientName",
                            "queryString",
                            "serverPageLocationUrl",
                            "serverPageLocationPath",
                            "serverPageLocationHostname",
                            "visitorRegion",
                          },
                          enumDescriptions = {
                            "",
                            "",
                            "",
                            "",
                            "",
                            "For web or mobile.",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "For web or mobile.",
                            "",
                            "For web or mobile.",
                            "For web or mobile.",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                          },
                          location = "query",
                          repeated = true,
                          type = "string",
                        },
                      },
                      path = "tagmanager/v2/{+parent}/built_in_variables",
                      response = {
                        ["$ref"] = "CreateBuiltInVariableResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/tagmanager.edit.containers",
                      },
                    },
                    delete = {
                      description = "Deletes one or more GTM Built-In Variables.",
                      flatPath = "tagmanager/v2/accounts/{accountsId}/containers/{containersId}/workspaces/{workspacesId}/built_in_variables",
                      httpMethod = "DELETE",
                      id = "tagmanager.accounts.containers.workspaces.built_in_variables.delete",
                      parameterOrder = {
                        "path",
                      },
                      parameters = {
                        path = {
                          description = "GTM BuiltInVariable's API relative path. Example: accounts/{account_id}/containers/{container_id}/workspaces/{workspace_id}/built_in_variables",
                          location = "path",
                          pattern = "^accounts/[^/]+/containers/[^/]+/workspaces/[^/]+/built_in_variables$",
                          required = true,
                          type = "string",
                        },
                        type = {
                          description = "The types of built-in variables to delete.",
                          enum = {
                            "builtInVariableTypeUnspecified",
                            "pageUrl",
                            "pageHostname",
                            "pagePath",
                            "referrer",
                            "event",
                            "clickElement",
                            "clickClasses",
                            "clickId",
                            "clickTarget",
                            "clickUrl",
                            "clickText",
                            "firstPartyServingUrl",
                            "formElement",
                            "formClasses",
                            "formId",
                            "formTarget",
                            "formUrl",
                            "formText",
                            "errorMessage",
                            "errorUrl",
                            "errorLine",
                            "newHistoryUrl",
                            "oldHistoryUrl",
                            "newHistoryFragment",
                            "oldHistoryFragment",
                            "newHistoryState",
                            "oldHistoryState",
                            "historySource",
                            "containerVersion",
                            "debugMode",
                            "randomNumber",
                            "containerId",
                            "appId",
                            "appName",
                            "appVersionCode",
                            "appVersionName",
                            "language",
                            "osVersion",
                            "platform",
                            "sdkVersion",
                            "deviceName",
                            "resolution",
                            "advertiserId",
                            "advertisingTrackingEnabled",
                            "htmlId",
                            "environmentName",
                            "ampBrowserLanguage",
                            "ampCanonicalPath",
                            "ampCanonicalUrl",
                            "ampCanonicalHost",
                            "ampReferrer",
                            "ampTitle",
                            "ampClientId",
                            "ampClientTimezone",
                            "ampClientTimestamp",
                            "ampClientScreenWidth",
                            "ampClientScreenHeight",
                            "ampClientScrollX",
                            "ampClientScrollY",
                            "ampClientMaxScrollX",
                            "ampClientMaxScrollY",
                            "ampTotalEngagedTime",
                            "ampPageViewId",
                            "ampPageLoadTime",
                            "ampPageDownloadTime",
                            "ampGtmEvent",
                            "eventName",
                            "firebaseEventParameterCampaign",
                            "firebaseEventParameterCampaignAclid",
                            "firebaseEventParameterCampaignAnid",
                            "firebaseEventParameterCampaignClickTimestamp",
                            "firebaseEventParameterCampaignContent",
                            "firebaseEventParameterCampaignCp1",
                            "firebaseEventParameterCampaignGclid",
                            "firebaseEventParameterCampaignSource",
                            "firebaseEventParameterCampaignTerm",
                            "firebaseEventParameterCurrency",
                            "firebaseEventParameterDynamicLinkAcceptTime",
                            "firebaseEventParameterDynamicLinkLinkid",
                            "firebaseEventParameterNotificationMessageDeviceTime",
                            "firebaseEventParameterNotificationMessageId",
                            "firebaseEventParameterNotificationMessageName",
                            "firebaseEventParameterNotificationMessageTime",
                            "firebaseEventParameterNotificationTopic",
                            "firebaseEventParameterPreviousAppVersion",
                            "firebaseEventParameterPreviousOsVersion",
                            "firebaseEventParameterPrice",
                            "firebaseEventParameterProductId",
                            "firebaseEventParameterQuantity",
                            "firebaseEventParameterValue",
                            "videoProvider",
                            "videoUrl",
                            "videoTitle",
                            "videoDuration",
                            "videoPercent",
                            "videoVisible",
                            "videoStatus",
                            "videoCurrentTime",
                            "scrollDepthThreshold",
                            "scrollDepthUnits",
                            "scrollDepthDirection",
                            "elementVisibilityRatio",
                            "elementVisibilityTime",
                            "elementVisibilityFirstTime",
                            "elementVisibilityRecentTime",
                            "requestPath",
                            "requestMethod",
                            "clientName",
                            "queryString",
                            "serverPageLocationUrl",
                            "serverPageLocationPath",
                            "serverPageLocationHostname",
                            "visitorRegion",
                          },
                          enumDescriptions = {
                            "",
                            "",
                            "",
                            "",
                            "",
                            "For web or mobile.",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "For web or mobile.",
                            "",
                            "For web or mobile.",
                            "For web or mobile.",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                          },
                          location = "query",
                          repeated = true,
                          type = "string",
                        },
                      },
                      path = "tagmanager/v2/{+path}",
                      scopes = {
                        "https://www.googleapis.com/auth/tagmanager.edit.containers",
                      },
                    },
                    list = {
                      description = "Lists all the enabled Built-In Variables of a GTM Container.",
                      flatPath = "tagmanager/v2/accounts/{accountsId}/containers/{containersId}/workspaces/{workspacesId}/built_in_variables",
                      httpMethod = "GET",
                      id = "tagmanager.accounts.containers.workspaces.built_in_variables.list",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        pageToken = {
                          description = "Continuation token for fetching the next page of results.",
                          location = "query",
                          type = "string",
                        },
                        parent = {
                          description = "GTM Workspace's API relative path. Example: accounts/{account_id}/containers/{container_id}/workspaces/{workspace_id}",
                          location = "path",
                          pattern = "^accounts/[^/]+/containers/[^/]+/workspaces/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "tagmanager/v2/{+parent}/built_in_variables",
                      response = {
                        ["$ref"] = "ListEnabledBuiltInVariablesResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/tagmanager.edit.containers",
                        "https://www.googleapis.com/auth/tagmanager.readonly",
                      },
                    },
                    revert = {
                      description = "Reverts changes to a GTM Built-In Variables in a GTM Workspace.",
                      flatPath = "tagmanager/v2/accounts/{accountsId}/containers/{containersId}/workspaces/{workspacesId}/built_in_variables:revert",
                      httpMethod = "POST",
                      id = "tagmanager.accounts.containers.workspaces.built_in_variables.revert",
                      parameterOrder = {
                        "path",
                      },
                      parameters = {
                        path = {
                          description = "GTM BuiltInVariable's API relative path. Example: accounts/{account_id}/containers/{container_id}/workspaces/{workspace_id}/built_in_variables",
                          location = "path",
                          pattern = "^accounts/[^/]+/containers/[^/]+/workspaces/[^/]+$",
                          required = true,
                          type = "string",
                        },
                        type = {
                          description = "The type of built-in variable to revert.",
                          enum = {
                            "builtInVariableTypeUnspecified",
                            "pageUrl",
                            "pageHostname",
                            "pagePath",
                            "referrer",
                            "event",
                            "clickElement",
                            "clickClasses",
                            "clickId",
                            "clickTarget",
                            "clickUrl",
                            "clickText",
                            "firstPartyServingUrl",
                            "formElement",
                            "formClasses",
                            "formId",
                            "formTarget",
                            "formUrl",
                            "formText",
                            "errorMessage",
                            "errorUrl",
                            "errorLine",
                            "newHistoryUrl",
                            "oldHistoryUrl",
                            "newHistoryFragment",
                            "oldHistoryFragment",
                            "newHistoryState",
                            "oldHistoryState",
                            "historySource",
                            "containerVersion",
                            "debugMode",
                            "randomNumber",
                            "containerId",
                            "appId",
                            "appName",
                            "appVersionCode",
                            "appVersionName",
                            "language",
                            "osVersion",
                            "platform",
                            "sdkVersion",
                            "deviceName",
                            "resolution",
                            "advertiserId",
                            "advertisingTrackingEnabled",
                            "htmlId",
                            "environmentName",
                            "ampBrowserLanguage",
                            "ampCanonicalPath",
                            "ampCanonicalUrl",
                            "ampCanonicalHost",
                            "ampReferrer",
                            "ampTitle",
                            "ampClientId",
                            "ampClientTimezone",
                            "ampClientTimestamp",
                            "ampClientScreenWidth",
                            "ampClientScreenHeight",
                            "ampClientScrollX",
                            "ampClientScrollY",
                            "ampClientMaxScrollX",
                            "ampClientMaxScrollY",
                            "ampTotalEngagedTime",
                            "ampPageViewId",
                            "ampPageLoadTime",
                            "ampPageDownloadTime",
                            "ampGtmEvent",
                            "eventName",
                            "firebaseEventParameterCampaign",
                            "firebaseEventParameterCampaignAclid",
                            "firebaseEventParameterCampaignAnid",
                            "firebaseEventParameterCampaignClickTimestamp",
                            "firebaseEventParameterCampaignContent",
                            "firebaseEventParameterCampaignCp1",
                            "firebaseEventParameterCampaignGclid",
                            "firebaseEventParameterCampaignSource",
                            "firebaseEventParameterCampaignTerm",
                            "firebaseEventParameterCurrency",
                            "firebaseEventParameterDynamicLinkAcceptTime",
                            "firebaseEventParameterDynamicLinkLinkid",
                            "firebaseEventParameterNotificationMessageDeviceTime",
                            "firebaseEventParameterNotificationMessageId",
                            "firebaseEventParameterNotificationMessageName",
                            "firebaseEventParameterNotificationMessageTime",
                            "firebaseEventParameterNotificationTopic",
                            "firebaseEventParameterPreviousAppVersion",
                            "firebaseEventParameterPreviousOsVersion",
                            "firebaseEventParameterPrice",
                            "firebaseEventParameterProductId",
                            "firebaseEventParameterQuantity",
                            "firebaseEventParameterValue",
                            "videoProvider",
                            "videoUrl",
                            "videoTitle",
                            "videoDuration",
                            "videoPercent",
                            "videoVisible",
                            "videoStatus",
                            "videoCurrentTime",
                            "scrollDepthThreshold",
                            "scrollDepthUnits",
                            "scrollDepthDirection",
                            "elementVisibilityRatio",
                            "elementVisibilityTime",
                            "elementVisibilityFirstTime",
                            "elementVisibilityRecentTime",
                            "requestPath",
                            "requestMethod",
                            "clientName",
                            "queryString",
                            "serverPageLocationUrl",
                            "serverPageLocationPath",
                            "serverPageLocationHostname",
                            "visitorRegion",
                          },
                          enumDescriptions = {
                            "",
                            "",
                            "",
                            "",
                            "",
                            "For web or mobile.",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "For web or mobile.",
                            "",
                            "For web or mobile.",
                            "For web or mobile.",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                          },
                          location = "query",
                          type = "string",
                        },
                      },
                      path = "tagmanager/v2/{+path}/built_in_variables:revert",
                      response = {
                        ["$ref"] = "RevertBuiltInVariableResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/tagmanager.edit.containers",
                      },
                    },
                  },
                },
                clients = {
                  methods = {
                    create = {
                      description = "Creates a GTM Client.",
                      flatPath = "tagmanager/v2/accounts/{accountsId}/containers/{containersId}/workspaces/{workspacesId}/clients",
                      httpMethod = "POST",
                      id = "tagmanager.accounts.containers.workspaces.clients.create",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        parent = {
                          description = "GTM Workspace's API relative path. Example: accounts/{account_id}/containers/{container_id}/workspaces/{workspace_id}",
                          location = "path",
                          pattern = "^accounts/[^/]+/containers/[^/]+/workspaces/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "tagmanager/v2/{+parent}/clients",
                      request = {
                        ["$ref"] = "Client",
                      },
                      response = {
                        ["$ref"] = "Client",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/tagmanager.edit.containers",
                      },
                    },
                    delete = {
                      description = "Deletes a GTM Client.",
                      flatPath = "tagmanager/v2/accounts/{accountsId}/containers/{containersId}/workspaces/{workspacesId}/clients/{clientsId}",
                      httpMethod = "DELETE",
                      id = "tagmanager.accounts.containers.workspaces.clients.delete",
                      parameterOrder = {
                        "path",
                      },
                      parameters = {
                        path = {
                          description = "GTM Client's API relative path. Example: accounts/{account_id}/containers/{container_id}/workspaces/{workspace_id}/clients/{client_id}",
                          location = "path",
                          pattern = "^accounts/[^/]+/containers/[^/]+/workspaces/[^/]+/clients/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "tagmanager/v2/{+path}",
                      scopes = {
                        "https://www.googleapis.com/auth/tagmanager.edit.containers",
                      },
                    },
                    get = {
                      description = "Gets a GTM Client.",
                      flatPath = "tagmanager/v2/accounts/{accountsId}/containers/{containersId}/workspaces/{workspacesId}/clients/{clientsId}",
                      httpMethod = "GET",
                      id = "tagmanager.accounts.containers.workspaces.clients.get",
                      parameterOrder = {
                        "path",
                      },
                      parameters = {
                        path = {
                          description = "GTM Client's API relative path. Example: accounts/{account_id}/containers/{container_id}/workspaces/{workspace_id}/clients/{client_id}",
                          location = "path",
                          pattern = "^accounts/[^/]+/containers/[^/]+/workspaces/[^/]+/clients/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "tagmanager/v2/{+path}",
                      response = {
                        ["$ref"] = "Client",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/tagmanager.edit.containers",
                        "https://www.googleapis.com/auth/tagmanager.readonly",
                      },
                    },
                    list = {
                      description = "Lists all GTM Clients of a GTM container workspace.",
                      flatPath = "tagmanager/v2/accounts/{accountsId}/containers/{containersId}/workspaces/{workspacesId}/clients",
                      httpMethod = "GET",
                      id = "tagmanager.accounts.containers.workspaces.clients.list",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        pageToken = {
                          description = "Continuation token for fetching the next page of results.",
                          location = "query",
                          type = "string",
                        },
                        parent = {
                          description = "GTM Workspace's API relative path. Example: accounts/{account_id}/containers/{container_id}/workspaces/{workspace_id}",
                          location = "path",
                          pattern = "^accounts/[^/]+/containers/[^/]+/workspaces/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "tagmanager/v2/{+parent}/clients",
                      response = {
                        ["$ref"] = "ListClientsResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/tagmanager.edit.containers",
                        "https://www.googleapis.com/auth/tagmanager.readonly",
                      },
                    },
                    revert = {
                      description = "Reverts changes to a GTM Client in a GTM Workspace.",
                      flatPath = "tagmanager/v2/accounts/{accountsId}/containers/{containersId}/workspaces/{workspacesId}/clients/{clientsId}:revert",
                      httpMethod = "POST",
                      id = "tagmanager.accounts.containers.workspaces.clients.revert",
                      parameterOrder = {
                        "path",
                      },
                      parameters = {
                        fingerprint = {
                          description = "When provided, this fingerprint must match the fingerprint of the client in storage.",
                          location = "query",
                          type = "string",
                        },
                        path = {
                          description = "GTM Client's API relative path. Example: accounts/{account_id}/containers/{container_id}/workspaces/{workspace_id}/clients/{client_id}",
                          location = "path",
                          pattern = "^accounts/[^/]+/containers/[^/]+/workspaces/[^/]+/clients/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "tagmanager/v2/{+path}:revert",
                      response = {
                        ["$ref"] = "RevertClientResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/tagmanager.edit.containers",
                      },
                    },
                    update = {
                      description = "Updates a GTM Client.",
                      flatPath = "tagmanager/v2/accounts/{accountsId}/containers/{containersId}/workspaces/{workspacesId}/clients/{clientsId}",
                      httpMethod = "PUT",
                      id = "tagmanager.accounts.containers.workspaces.clients.update",
                      parameterOrder = {
                        "path",
                      },
                      parameters = {
                        fingerprint = {
                          description = "When provided, this fingerprint must match the fingerprint of the client in storage.",
                          location = "query",
                          type = "string",
                        },
                        path = {
                          description = "GTM Client's API relative path. Example: accounts/{account_id}/containers/{container_id}/workspaces/{workspace_id}/clients/{client_id}",
                          location = "path",
                          pattern = "^accounts/[^/]+/containers/[^/]+/workspaces/[^/]+/clients/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "tagmanager/v2/{+path}",
                      request = {
                        ["$ref"] = "Client",
                      },
                      response = {
                        ["$ref"] = "Client",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/tagmanager.edit.containers",
                      },
                    },
                  },
                },
                folders = {
                  methods = {
                    create = {
                      description = "Creates a GTM Folder.",
                      flatPath = "tagmanager/v2/accounts/{accountsId}/containers/{containersId}/workspaces/{workspacesId}/folders",
                      httpMethod = "POST",
                      id = "tagmanager.accounts.containers.workspaces.folders.create",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        parent = {
                          description = "GTM Workspace's API relative path. Example: accounts/{account_id}/containers/{container_id}/workspaces/{workspace_id}",
                          location = "path",
                          pattern = "^accounts/[^/]+/containers/[^/]+/workspaces/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "tagmanager/v2/{+parent}/folders",
                      request = {
                        ["$ref"] = "Folder",
                      },
                      response = {
                        ["$ref"] = "Folder",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/tagmanager.edit.containers",
                      },
                    },
                    delete = {
                      description = "Deletes a GTM Folder.",
                      flatPath = "tagmanager/v2/accounts/{accountsId}/containers/{containersId}/workspaces/{workspacesId}/folders/{foldersId}",
                      httpMethod = "DELETE",
                      id = "tagmanager.accounts.containers.workspaces.folders.delete",
                      parameterOrder = {
                        "path",
                      },
                      parameters = {
                        path = {
                          description = "GTM Folder's API relative path. Example: accounts/{account_id}/containers/{container_id}/workspaces/{workspace_id}/folders/{folder_id}",
                          location = "path",
                          pattern = "^accounts/[^/]+/containers/[^/]+/workspaces/[^/]+/folders/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "tagmanager/v2/{+path}",
                      scopes = {
                        "https://www.googleapis.com/auth/tagmanager.edit.containers",
                      },
                    },
                    entities = {
                      description = "List all entities in a GTM Folder.",
                      flatPath = "tagmanager/v2/accounts/{accountsId}/containers/{containersId}/workspaces/{workspacesId}/folders/{foldersId}:entities",
                      httpMethod = "POST",
                      id = "tagmanager.accounts.containers.workspaces.folders.entities",
                      parameterOrder = {
                        "path",
                      },
                      parameters = {
                        pageToken = {
                          description = "Continuation token for fetching the next page of results.",
                          location = "query",
                          type = "string",
                        },
                        path = {
                          description = "GTM Folder's API relative path. Example: accounts/{account_id}/containers/{container_id}/workspaces/{workspace_id}/folders/{folder_id}",
                          location = "path",
                          pattern = "^accounts/[^/]+/containers/[^/]+/workspaces/[^/]+/folders/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "tagmanager/v2/{+path}:entities",
                      response = {
                        ["$ref"] = "FolderEntities",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/tagmanager.edit.containers",
                        "https://www.googleapis.com/auth/tagmanager.readonly",
                      },
                    },
                    get = {
                      description = "Gets a GTM Folder.",
                      flatPath = "tagmanager/v2/accounts/{accountsId}/containers/{containersId}/workspaces/{workspacesId}/folders/{foldersId}",
                      httpMethod = "GET",
                      id = "tagmanager.accounts.containers.workspaces.folders.get",
                      parameterOrder = {
                        "path",
                      },
                      parameters = {
                        path = {
                          description = "GTM Folder's API relative path. Example: accounts/{account_id}/containers/{container_id}/workspaces/{workspace_id}/folders/{folder_id}",
                          location = "path",
                          pattern = "^accounts/[^/]+/containers/[^/]+/workspaces/[^/]+/folders/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "tagmanager/v2/{+path}",
                      response = {
                        ["$ref"] = "Folder",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/tagmanager.edit.containers",
                        "https://www.googleapis.com/auth/tagmanager.readonly",
                      },
                    },
                    list = {
                      description = "Lists all GTM Folders of a Container.",
                      flatPath = "tagmanager/v2/accounts/{accountsId}/containers/{containersId}/workspaces/{workspacesId}/folders",
                      httpMethod = "GET",
                      id = "tagmanager.accounts.containers.workspaces.folders.list",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        pageToken = {
                          description = "Continuation token for fetching the next page of results.",
                          location = "query",
                          type = "string",
                        },
                        parent = {
                          description = "GTM Workspace's API relative path. Example: accounts/{account_id}/containers/{container_id}/workspaces/{workspace_id}",
                          location = "path",
                          pattern = "^accounts/[^/]+/containers/[^/]+/workspaces/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "tagmanager/v2/{+parent}/folders",
                      response = {
                        ["$ref"] = "ListFoldersResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/tagmanager.edit.containers",
                        "https://www.googleapis.com/auth/tagmanager.readonly",
                      },
                    },
                    move_entities_to_folder = {
                      description = "Moves entities to a GTM Folder.",
                      flatPath = "tagmanager/v2/accounts/{accountsId}/containers/{containersId}/workspaces/{workspacesId}/folders/{foldersId}:move_entities_to_folder",
                      httpMethod = "POST",
                      id = "tagmanager.accounts.containers.workspaces.folders.move_entities_to_folder",
                      parameterOrder = {
                        "path",
                      },
                      parameters = {
                        path = {
                          description = "GTM Folder's API relative path. Example: accounts/{account_id}/containers/{container_id}/workspaces/{workspace_id}/folders/{folder_id}",
                          location = "path",
                          pattern = "^accounts/[^/]+/containers/[^/]+/workspaces/[^/]+/folders/[^/]+$",
                          required = true,
                          type = "string",
                        },
                        tagId = {
                          description = "The tags to be moved to the folder.",
                          location = "query",
                          repeated = true,
                          type = "string",
                        },
                        triggerId = {
                          description = "The triggers to be moved to the folder.",
                          location = "query",
                          repeated = true,
                          type = "string",
                        },
                        variableId = {
                          description = "The variables to be moved to the folder.",
                          location = "query",
                          repeated = true,
                          type = "string",
                        },
                      },
                      path = "tagmanager/v2/{+path}:move_entities_to_folder",
                      request = {
                        ["$ref"] = "Folder",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/tagmanager.edit.containers",
                      },
                    },
                    revert = {
                      description = "Reverts changes to a GTM Folder in a GTM Workspace.",
                      flatPath = "tagmanager/v2/accounts/{accountsId}/containers/{containersId}/workspaces/{workspacesId}/folders/{foldersId}:revert",
                      httpMethod = "POST",
                      id = "tagmanager.accounts.containers.workspaces.folders.revert",
                      parameterOrder = {
                        "path",
                      },
                      parameters = {
                        fingerprint = {
                          description = "When provided, this fingerprint must match the fingerprint of the tag in storage.",
                          location = "query",
                          type = "string",
                        },
                        path = {
                          description = "GTM Folder's API relative path. Example: accounts/{account_id}/containers/{container_id}/workspaces/{workspace_id}/folders/{folder_id}",
                          location = "path",
                          pattern = "^accounts/[^/]+/containers/[^/]+/workspaces/[^/]+/folders/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "tagmanager/v2/{+path}:revert",
                      response = {
                        ["$ref"] = "RevertFolderResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/tagmanager.edit.containers",
                      },
                    },
                    update = {
                      description = "Updates a GTM Folder.",
                      flatPath = "tagmanager/v2/accounts/{accountsId}/containers/{containersId}/workspaces/{workspacesId}/folders/{foldersId}",
                      httpMethod = "PUT",
                      id = "tagmanager.accounts.containers.workspaces.folders.update",
                      parameterOrder = {
                        "path",
                      },
                      parameters = {
                        fingerprint = {
                          description = "When provided, this fingerprint must match the fingerprint of the folder in storage.",
                          location = "query",
                          type = "string",
                        },
                        path = {
                          description = "GTM Folder's API relative path. Example: accounts/{account_id}/containers/{container_id}/workspaces/{workspace_id}/folders/{folder_id}",
                          location = "path",
                          pattern = "^accounts/[^/]+/containers/[^/]+/workspaces/[^/]+/folders/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "tagmanager/v2/{+path}",
                      request = {
                        ["$ref"] = "Folder",
                      },
                      response = {
                        ["$ref"] = "Folder",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/tagmanager.edit.containers",
                      },
                    },
                  },
                },
                gtag_config = {
                  methods = {
                    create = {
                      description = "Creates a Google tag config.",
                      flatPath = "tagmanager/v2/accounts/{accountsId}/containers/{containersId}/workspaces/{workspacesId}/gtag_config",
                      httpMethod = "POST",
                      id = "tagmanager.accounts.containers.workspaces.gtag_config.create",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        parent = {
                          description = "Workspace's API relative path. Example: accounts/{account_id}/containers/{container_id}/workspaces/{workspace_id}",
                          location = "path",
                          pattern = "^accounts/[^/]+/containers/[^/]+/workspaces/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "tagmanager/v2/{+parent}/gtag_config",
                      request = {
                        ["$ref"] = "GtagConfig",
                      },
                      response = {
                        ["$ref"] = "GtagConfig",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/tagmanager.edit.containers",
                      },
                    },
                    delete = {
                      description = "Deletes a Google tag config.",
                      flatPath = "tagmanager/v2/accounts/{accountsId}/containers/{containersId}/workspaces/{workspacesId}/gtag_config/{gtag_configId}",
                      httpMethod = "DELETE",
                      id = "tagmanager.accounts.containers.workspaces.gtag_config.delete",
                      parameterOrder = {
                        "path",
                      },
                      parameters = {
                        path = {
                          description = "Google tag config's API relative path. Example: accounts/{account_id}/containers/{container_id}/workspaces/{workspace_id}/gtag_config/{gtag_config_id}",
                          location = "path",
                          pattern = "^accounts/[^/]+/containers/[^/]+/workspaces/[^/]+/gtag_config/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "tagmanager/v2/{+path}",
                      scopes = {
                        "https://www.googleapis.com/auth/tagmanager.edit.containers",
                      },
                    },
                    get = {
                      description = "Gets a Google tag config.",
                      flatPath = "tagmanager/v2/accounts/{accountsId}/containers/{containersId}/workspaces/{workspacesId}/gtag_config/{gtag_configId}",
                      httpMethod = "GET",
                      id = "tagmanager.accounts.containers.workspaces.gtag_config.get",
                      parameterOrder = {
                        "path",
                      },
                      parameters = {
                        path = {
                          description = "Google tag config's API relative path. Example: accounts/{account_id}/containers/{container_id}/workspaces/{workspace_id}/gtag_config/{gtag_config_id}",
                          location = "path",
                          pattern = "^accounts/[^/]+/containers/[^/]+/workspaces/[^/]+/gtag_config/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "tagmanager/v2/{+path}",
                      response = {
                        ["$ref"] = "GtagConfig",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/tagmanager.edit.containers",
                        "https://www.googleapis.com/auth/tagmanager.readonly",
                      },
                    },
                    list = {
                      description = "Lists all Google tag configs in a Container.",
                      flatPath = "tagmanager/v2/accounts/{accountsId}/containers/{containersId}/workspaces/{workspacesId}/gtag_config",
                      httpMethod = "GET",
                      id = "tagmanager.accounts.containers.workspaces.gtag_config.list",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        pageToken = {
                          description = "Continuation token for fetching the next page of results.",
                          location = "query",
                          type = "string",
                        },
                        parent = {
                          description = "Workspace's API relative path. Example: accounts/{account_id}/containers/{container_id}/workspaces/{workspace_id}",
                          location = "path",
                          pattern = "^accounts/[^/]+/containers/[^/]+/workspaces/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "tagmanager/v2/{+parent}/gtag_config",
                      response = {
                        ["$ref"] = "ListGtagConfigResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/tagmanager.edit.containers",
                        "https://www.googleapis.com/auth/tagmanager.readonly",
                      },
                    },
                    update = {
                      description = "Updates a Google tag config.",
                      flatPath = "tagmanager/v2/accounts/{accountsId}/containers/{containersId}/workspaces/{workspacesId}/gtag_config/{gtag_configId}",
                      httpMethod = "PUT",
                      id = "tagmanager.accounts.containers.workspaces.gtag_config.update",
                      parameterOrder = {
                        "path",
                      },
                      parameters = {
                        fingerprint = {
                          description = "When provided, this fingerprint must match the fingerprint of the config in storage.",
                          location = "query",
                          type = "string",
                        },
                        path = {
                          description = "Google tag config's API relative path. Example: accounts/{account_id}/containers/{container_id}/workspaces/{workspace_id}/gtag_config/{gtag_config_id}",
                          location = "path",
                          pattern = "^accounts/[^/]+/containers/[^/]+/workspaces/[^/]+/gtag_config/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "tagmanager/v2/{+path}",
                      request = {
                        ["$ref"] = "GtagConfig",
                      },
                      response = {
                        ["$ref"] = "GtagConfig",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/tagmanager.edit.containers",
                      },
                    },
                  },
                },
                tags = {
                  methods = {
                    create = {
                      description = "Creates a GTM Tag.",
                      flatPath = "tagmanager/v2/accounts/{accountsId}/containers/{containersId}/workspaces/{workspacesId}/tags",
                      httpMethod = "POST",
                      id = "tagmanager.accounts.containers.workspaces.tags.create",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        parent = {
                          description = "GTM Workspace's API relative path. Example: accounts/{account_id}/containers/{container_id}/workspaces/{workspace_id}",
                          location = "path",
                          pattern = "^accounts/[^/]+/containers/[^/]+/workspaces/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "tagmanager/v2/{+parent}/tags",
                      request = {
                        ["$ref"] = "Tag",
                      },
                      response = {
                        ["$ref"] = "Tag",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/tagmanager.edit.containers",
                      },
                    },
                    delete = {
                      description = "Deletes a GTM Tag.",
                      flatPath = "tagmanager/v2/accounts/{accountsId}/containers/{containersId}/workspaces/{workspacesId}/tags/{tagsId}",
                      httpMethod = "DELETE",
                      id = "tagmanager.accounts.containers.workspaces.tags.delete",
                      parameterOrder = {
                        "path",
                      },
                      parameters = {
                        path = {
                          description = "GTM Tag's API relative path. Example: accounts/{account_id}/containers/{container_id}/workspaces/{workspace_id}/tags/{tag_id}",
                          location = "path",
                          pattern = "^accounts/[^/]+/containers/[^/]+/workspaces/[^/]+/tags/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "tagmanager/v2/{+path}",
                      scopes = {
                        "https://www.googleapis.com/auth/tagmanager.edit.containers",
                      },
                    },
                    get = {
                      description = "Gets a GTM Tag.",
                      flatPath = "tagmanager/v2/accounts/{accountsId}/containers/{containersId}/workspaces/{workspacesId}/tags/{tagsId}",
                      httpMethod = "GET",
                      id = "tagmanager.accounts.containers.workspaces.tags.get",
                      parameterOrder = {
                        "path",
                      },
                      parameters = {
                        path = {
                          description = "GTM Tag's API relative path. Example: accounts/{account_id}/containers/{container_id}/workspaces/{workspace_id}/tags/{tag_id}",
                          location = "path",
                          pattern = "^accounts/[^/]+/containers/[^/]+/workspaces/[^/]+/tags/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "tagmanager/v2/{+path}",
                      response = {
                        ["$ref"] = "Tag",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/tagmanager.edit.containers",
                        "https://www.googleapis.com/auth/tagmanager.readonly",
                      },
                    },
                    list = {
                      description = "Lists all GTM Tags of a Container.",
                      flatPath = "tagmanager/v2/accounts/{accountsId}/containers/{containersId}/workspaces/{workspacesId}/tags",
                      httpMethod = "GET",
                      id = "tagmanager.accounts.containers.workspaces.tags.list",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        pageToken = {
                          description = "Continuation token for fetching the next page of results.",
                          location = "query",
                          type = "string",
                        },
                        parent = {
                          description = "GTM Workspace's API relative path. Example: accounts/{account_id}/containers/{container_id}/workspaces/{workspace_id}",
                          location = "path",
                          pattern = "^accounts/[^/]+/containers/[^/]+/workspaces/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "tagmanager/v2/{+parent}/tags",
                      response = {
                        ["$ref"] = "ListTagsResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/tagmanager.edit.containers",
                        "https://www.googleapis.com/auth/tagmanager.readonly",
                      },
                    },
                    revert = {
                      description = "Reverts changes to a GTM Tag in a GTM Workspace.",
                      flatPath = "tagmanager/v2/accounts/{accountsId}/containers/{containersId}/workspaces/{workspacesId}/tags/{tagsId}:revert",
                      httpMethod = "POST",
                      id = "tagmanager.accounts.containers.workspaces.tags.revert",
                      parameterOrder = {
                        "path",
                      },
                      parameters = {
                        fingerprint = {
                          description = "When provided, this fingerprint must match the fingerprint of thetag in storage.",
                          location = "query",
                          type = "string",
                        },
                        path = {
                          description = "GTM Tag's API relative path. Example: accounts/{account_id}/containers/{container_id}/workspaces/{workspace_id}/tags/{tag_id}",
                          location = "path",
                          pattern = "^accounts/[^/]+/containers/[^/]+/workspaces/[^/]+/tags/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "tagmanager/v2/{+path}:revert",
                      response = {
                        ["$ref"] = "RevertTagResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/tagmanager.edit.containers",
                      },
                    },
                    update = {
                      description = "Updates a GTM Tag.",
                      flatPath = "tagmanager/v2/accounts/{accountsId}/containers/{containersId}/workspaces/{workspacesId}/tags/{tagsId}",
                      httpMethod = "PUT",
                      id = "tagmanager.accounts.containers.workspaces.tags.update",
                      parameterOrder = {
                        "path",
                      },
                      parameters = {
                        fingerprint = {
                          description = "When provided, this fingerprint must match the fingerprint of the tag in storage.",
                          location = "query",
                          type = "string",
                        },
                        path = {
                          description = "GTM Tag's API relative path. Example: accounts/{account_id}/containers/{container_id}/workspaces/{workspace_id}/tags/{tag_id}",
                          location = "path",
                          pattern = "^accounts/[^/]+/containers/[^/]+/workspaces/[^/]+/tags/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "tagmanager/v2/{+path}",
                      request = {
                        ["$ref"] = "Tag",
                      },
                      response = {
                        ["$ref"] = "Tag",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/tagmanager.edit.containers",
                      },
                    },
                  },
                },
                templates = {
                  methods = {
                    create = {
                      description = "Creates a GTM Custom Template.",
                      flatPath = "tagmanager/v2/accounts/{accountsId}/containers/{containersId}/workspaces/{workspacesId}/templates",
                      httpMethod = "POST",
                      id = "tagmanager.accounts.containers.workspaces.templates.create",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        parent = {
                          description = "GTM Workspace's API relative path. Example: accounts/{account_id}/containers/{container_id}/workspaces/{workspace_id}",
                          location = "path",
                          pattern = "^accounts/[^/]+/containers/[^/]+/workspaces/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "tagmanager/v2/{+parent}/templates",
                      request = {
                        ["$ref"] = "CustomTemplate",
                      },
                      response = {
                        ["$ref"] = "CustomTemplate",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/tagmanager.edit.containers",
                      },
                    },
                    delete = {
                      description = "Deletes a GTM Template.",
                      flatPath = "tagmanager/v2/accounts/{accountsId}/containers/{containersId}/workspaces/{workspacesId}/templates/{templatesId}",
                      httpMethod = "DELETE",
                      id = "tagmanager.accounts.containers.workspaces.templates.delete",
                      parameterOrder = {
                        "path",
                      },
                      parameters = {
                        path = {
                          description = "GTM Custom Template's API relative path. Example: accounts/{account_id}/containers/{container_id}/workspaces/{workspace_id}/templates/{template_id}",
                          location = "path",
                          pattern = "^accounts/[^/]+/containers/[^/]+/workspaces/[^/]+/templates/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "tagmanager/v2/{+path}",
                      scopes = {
                        "https://www.googleapis.com/auth/tagmanager.edit.containers",
                      },
                    },
                    get = {
                      description = "Gets a GTM Template.",
                      flatPath = "tagmanager/v2/accounts/{accountsId}/containers/{containersId}/workspaces/{workspacesId}/templates/{templatesId}",
                      httpMethod = "GET",
                      id = "tagmanager.accounts.containers.workspaces.templates.get",
                      parameterOrder = {
                        "path",
                      },
                      parameters = {
                        path = {
                          description = "GTM Custom Template's API relative path. Example: accounts/{account_id}/containers/{container_id}/workspaces/{workspace_id}/templates/{template_id}",
                          location = "path",
                          pattern = "^accounts/[^/]+/containers/[^/]+/workspaces/[^/]+/templates/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "tagmanager/v2/{+path}",
                      response = {
                        ["$ref"] = "CustomTemplate",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/tagmanager.edit.containers",
                        "https://www.googleapis.com/auth/tagmanager.readonly",
                      },
                    },
                    list = {
                      description = "Lists all GTM Templates of a GTM container workspace.",
                      flatPath = "tagmanager/v2/accounts/{accountsId}/containers/{containersId}/workspaces/{workspacesId}/templates",
                      httpMethod = "GET",
                      id = "tagmanager.accounts.containers.workspaces.templates.list",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        pageToken = {
                          description = "Continuation token for fetching the next page of results.",
                          location = "query",
                          type = "string",
                        },
                        parent = {
                          description = "GTM Workspace's API relative path. Example: accounts/{account_id}/containers/{container_id}/workspaces/{workspace_id}",
                          location = "path",
                          pattern = "^accounts/[^/]+/containers/[^/]+/workspaces/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "tagmanager/v2/{+parent}/templates",
                      response = {
                        ["$ref"] = "ListTemplatesResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/tagmanager.edit.containers",
                        "https://www.googleapis.com/auth/tagmanager.readonly",
                      },
                    },
                    revert = {
                      description = "Reverts changes to a GTM Template in a GTM Workspace.",
                      flatPath = "tagmanager/v2/accounts/{accountsId}/containers/{containersId}/workspaces/{workspacesId}/templates/{templatesId}:revert",
                      httpMethod = "POST",
                      id = "tagmanager.accounts.containers.workspaces.templates.revert",
                      parameterOrder = {
                        "path",
                      },
                      parameters = {
                        fingerprint = {
                          description = "When provided, this fingerprint must match the fingerprint of the template in storage.",
                          location = "query",
                          type = "string",
                        },
                        path = {
                          description = "GTM Custom Template's API relative path. Example: accounts/{account_id}/containers/{container_id}/workspaces/{workspace_id}/templates/{template_id}",
                          location = "path",
                          pattern = "^accounts/[^/]+/containers/[^/]+/workspaces/[^/]+/templates/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "tagmanager/v2/{+path}:revert",
                      response = {
                        ["$ref"] = "RevertTemplateResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/tagmanager.edit.containers",
                      },
                    },
                    update = {
                      description = "Updates a GTM Template.",
                      flatPath = "tagmanager/v2/accounts/{accountsId}/containers/{containersId}/workspaces/{workspacesId}/templates/{templatesId}",
                      httpMethod = "PUT",
                      id = "tagmanager.accounts.containers.workspaces.templates.update",
                      parameterOrder = {
                        "path",
                      },
                      parameters = {
                        fingerprint = {
                          description = "When provided, this fingerprint must match the fingerprint of the templates in storage.",
                          location = "query",
                          type = "string",
                        },
                        path = {
                          description = "GTM Custom Template's API relative path. Example: accounts/{account_id}/containers/{container_id}/workspaces/{workspace_id}/templates/{template_id}",
                          location = "path",
                          pattern = "^accounts/[^/]+/containers/[^/]+/workspaces/[^/]+/templates/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "tagmanager/v2/{+path}",
                      request = {
                        ["$ref"] = "CustomTemplate",
                      },
                      response = {
                        ["$ref"] = "CustomTemplate",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/tagmanager.edit.containers",
                      },
                    },
                  },
                },
                triggers = {
                  methods = {
                    create = {
                      description = "Creates a GTM Trigger.",
                      flatPath = "tagmanager/v2/accounts/{accountsId}/containers/{containersId}/workspaces/{workspacesId}/triggers",
                      httpMethod = "POST",
                      id = "tagmanager.accounts.containers.workspaces.triggers.create",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        parent = {
                          description = "GTM Workspace's API relative path. Example: accounts/{account_id}/containers/{container_id}/workspaces/{workspace_id}",
                          location = "path",
                          pattern = "^accounts/[^/]+/containers/[^/]+/workspaces/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "tagmanager/v2/{+parent}/triggers",
                      request = {
                        ["$ref"] = "Trigger",
                      },
                      response = {
                        ["$ref"] = "Trigger",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/tagmanager.edit.containers",
                      },
                    },
                    delete = {
                      description = "Deletes a GTM Trigger.",
                      flatPath = "tagmanager/v2/accounts/{accountsId}/containers/{containersId}/workspaces/{workspacesId}/triggers/{triggersId}",
                      httpMethod = "DELETE",
                      id = "tagmanager.accounts.containers.workspaces.triggers.delete",
                      parameterOrder = {
                        "path",
                      },
                      parameters = {
                        path = {
                          description = "GTM Trigger's API relative path. Example: accounts/{account_id}/containers/{container_id}/workspaces/{workspace_id}/triggers/{trigger_id}",
                          location = "path",
                          pattern = "^accounts/[^/]+/containers/[^/]+/workspaces/[^/]+/triggers/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "tagmanager/v2/{+path}",
                      scopes = {
                        "https://www.googleapis.com/auth/tagmanager.edit.containers",
                      },
                    },
                    get = {
                      description = "Gets a GTM Trigger.",
                      flatPath = "tagmanager/v2/accounts/{accountsId}/containers/{containersId}/workspaces/{workspacesId}/triggers/{triggersId}",
                      httpMethod = "GET",
                      id = "tagmanager.accounts.containers.workspaces.triggers.get",
                      parameterOrder = {
                        "path",
                      },
                      parameters = {
                        path = {
                          description = "GTM Trigger's API relative path. Example: accounts/{account_id}/containers/{container_id}/workspaces/{workspace_id}/triggers/{trigger_id}",
                          location = "path",
                          pattern = "^accounts/[^/]+/containers/[^/]+/workspaces/[^/]+/triggers/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "tagmanager/v2/{+path}",
                      response = {
                        ["$ref"] = "Trigger",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/tagmanager.edit.containers",
                        "https://www.googleapis.com/auth/tagmanager.readonly",
                      },
                    },
                    list = {
                      description = "Lists all GTM Triggers of a Container.",
                      flatPath = "tagmanager/v2/accounts/{accountsId}/containers/{containersId}/workspaces/{workspacesId}/triggers",
                      httpMethod = "GET",
                      id = "tagmanager.accounts.containers.workspaces.triggers.list",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        pageToken = {
                          description = "Continuation token for fetching the next page of results.",
                          location = "query",
                          type = "string",
                        },
                        parent = {
                          description = "GTM Workspace's API relative path. Example: accounts/{account_id}/containers/{container_id}/workspaces/{workspace_id}",
                          location = "path",
                          pattern = "^accounts/[^/]+/containers/[^/]+/workspaces/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "tagmanager/v2/{+parent}/triggers",
                      response = {
                        ["$ref"] = "ListTriggersResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/tagmanager.edit.containers",
                        "https://www.googleapis.com/auth/tagmanager.readonly",
                      },
                    },
                    revert = {
                      description = "Reverts changes to a GTM Trigger in a GTM Workspace.",
                      flatPath = "tagmanager/v2/accounts/{accountsId}/containers/{containersId}/workspaces/{workspacesId}/triggers/{triggersId}:revert",
                      httpMethod = "POST",
                      id = "tagmanager.accounts.containers.workspaces.triggers.revert",
                      parameterOrder = {
                        "path",
                      },
                      parameters = {
                        fingerprint = {
                          description = "When provided, this fingerprint must match the fingerprint of the trigger in storage.",
                          location = "query",
                          type = "string",
                        },
                        path = {
                          description = "GTM Trigger's API relative path. Example: accounts/{account_id}/containers/{container_id}/workspaces/{workspace_id}/triggers/{trigger_id}",
                          location = "path",
                          pattern = "^accounts/[^/]+/containers/[^/]+/workspaces/[^/]+/triggers/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "tagmanager/v2/{+path}:revert",
                      response = {
                        ["$ref"] = "RevertTriggerResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/tagmanager.edit.containers",
                      },
                    },
                    update = {
                      description = "Updates a GTM Trigger.",
                      flatPath = "tagmanager/v2/accounts/{accountsId}/containers/{containersId}/workspaces/{workspacesId}/triggers/{triggersId}",
                      httpMethod = "PUT",
                      id = "tagmanager.accounts.containers.workspaces.triggers.update",
                      parameterOrder = {
                        "path",
                      },
                      parameters = {
                        fingerprint = {
                          description = "When provided, this fingerprint must match the fingerprint of the trigger in storage.",
                          location = "query",
                          type = "string",
                        },
                        path = {
                          description = "GTM Trigger's API relative path. Example: accounts/{account_id}/containers/{container_id}/workspaces/{workspace_id}/triggers/{trigger_id}",
                          location = "path",
                          pattern = "^accounts/[^/]+/containers/[^/]+/workspaces/[^/]+/triggers/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "tagmanager/v2/{+path}",
                      request = {
                        ["$ref"] = "Trigger",
                      },
                      response = {
                        ["$ref"] = "Trigger",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/tagmanager.edit.containers",
                      },
                    },
                  },
                },
                variables = {
                  methods = {
                    create = {
                      description = "Creates a GTM Variable.",
                      flatPath = "tagmanager/v2/accounts/{accountsId}/containers/{containersId}/workspaces/{workspacesId}/variables",
                      httpMethod = "POST",
                      id = "tagmanager.accounts.containers.workspaces.variables.create",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        parent = {
                          description = "GTM Workspace's API relative path. Example: accounts/{account_id}/containers/{container_id}/workspaces/{workspace_id}",
                          location = "path",
                          pattern = "^accounts/[^/]+/containers/[^/]+/workspaces/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "tagmanager/v2/{+parent}/variables",
                      request = {
                        ["$ref"] = "Variable",
                      },
                      response = {
                        ["$ref"] = "Variable",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/tagmanager.edit.containers",
                      },
                    },
                    delete = {
                      description = "Deletes a GTM Variable.",
                      flatPath = "tagmanager/v2/accounts/{accountsId}/containers/{containersId}/workspaces/{workspacesId}/variables/{variablesId}",
                      httpMethod = "DELETE",
                      id = "tagmanager.accounts.containers.workspaces.variables.delete",
                      parameterOrder = {
                        "path",
                      },
                      parameters = {
                        path = {
                          description = "GTM Variable's API relative path. Example: accounts/{account_id}/containers/{container_id}/workspaces/{workspace_id}/variables/{variable_id}",
                          location = "path",
                          pattern = "^accounts/[^/]+/containers/[^/]+/workspaces/[^/]+/variables/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "tagmanager/v2/{+path}",
                      scopes = {
                        "https://www.googleapis.com/auth/tagmanager.edit.containers",
                      },
                    },
                    get = {
                      description = "Gets a GTM Variable.",
                      flatPath = "tagmanager/v2/accounts/{accountsId}/containers/{containersId}/workspaces/{workspacesId}/variables/{variablesId}",
                      httpMethod = "GET",
                      id = "tagmanager.accounts.containers.workspaces.variables.get",
                      parameterOrder = {
                        "path",
                      },
                      parameters = {
                        path = {
                          description = "GTM Variable's API relative path. Example: accounts/{account_id}/containers/{container_id}/workspaces/{workspace_id}/variables/{variable_id}",
                          location = "path",
                          pattern = "^accounts/[^/]+/containers/[^/]+/workspaces/[^/]+/variables/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "tagmanager/v2/{+path}",
                      response = {
                        ["$ref"] = "Variable",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/tagmanager.edit.containers",
                        "https://www.googleapis.com/auth/tagmanager.readonly",
                      },
                    },
                    list = {
                      description = "Lists all GTM Variables of a Container.",
                      flatPath = "tagmanager/v2/accounts/{accountsId}/containers/{containersId}/workspaces/{workspacesId}/variables",
                      httpMethod = "GET",
                      id = "tagmanager.accounts.containers.workspaces.variables.list",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        pageToken = {
                          description = "Continuation token for fetching the next page of results.",
                          location = "query",
                          type = "string",
                        },
                        parent = {
                          description = "GTM Workspace's API relative path. Example: accounts/{account_id}/containers/{container_id}/workspaces/{workspace_id}",
                          location = "path",
                          pattern = "^accounts/[^/]+/containers/[^/]+/workspaces/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "tagmanager/v2/{+parent}/variables",
                      response = {
                        ["$ref"] = "ListVariablesResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/tagmanager.edit.containers",
                        "https://www.googleapis.com/auth/tagmanager.readonly",
                      },
                    },
                    revert = {
                      description = "Reverts changes to a GTM Variable in a GTM Workspace.",
                      flatPath = "tagmanager/v2/accounts/{accountsId}/containers/{containersId}/workspaces/{workspacesId}/variables/{variablesId}:revert",
                      httpMethod = "POST",
                      id = "tagmanager.accounts.containers.workspaces.variables.revert",
                      parameterOrder = {
                        "path",
                      },
                      parameters = {
                        fingerprint = {
                          description = "When provided, this fingerprint must match the fingerprint of the variable in storage.",
                          location = "query",
                          type = "string",
                        },
                        path = {
                          description = "GTM Variable's API relative path. Example: accounts/{account_id}/containers/{container_id}/workspaces/{workspace_id}/variables/{variable_id}",
                          location = "path",
                          pattern = "^accounts/[^/]+/containers/[^/]+/workspaces/[^/]+/variables/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "tagmanager/v2/{+path}:revert",
                      response = {
                        ["$ref"] = "RevertVariableResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/tagmanager.edit.containers",
                      },
                    },
                    update = {
                      description = "Updates a GTM Variable.",
                      flatPath = "tagmanager/v2/accounts/{accountsId}/containers/{containersId}/workspaces/{workspacesId}/variables/{variablesId}",
                      httpMethod = "PUT",
                      id = "tagmanager.accounts.containers.workspaces.variables.update",
                      parameterOrder = {
                        "path",
                      },
                      parameters = {
                        fingerprint = {
                          description = "When provided, this fingerprint must match the fingerprint of the variable in storage.",
                          location = "query",
                          type = "string",
                        },
                        path = {
                          description = "GTM Variable's API relative path. Example: accounts/{account_id}/containers/{container_id}/workspaces/{workspace_id}/variables/{variable_id}",
                          location = "path",
                          pattern = "^accounts/[^/]+/containers/[^/]+/workspaces/[^/]+/variables/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "tagmanager/v2/{+path}",
                      request = {
                        ["$ref"] = "Variable",
                      },
                      response = {
                        ["$ref"] = "Variable",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/tagmanager.edit.containers",
                      },
                    },
                  },
                },
                zones = {
                  methods = {
                    create = {
                      description = "Creates a GTM Zone.",
                      flatPath = "tagmanager/v2/accounts/{accountsId}/containers/{containersId}/workspaces/{workspacesId}/zones",
                      httpMethod = "POST",
                      id = "tagmanager.accounts.containers.workspaces.zones.create",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        parent = {
                          description = "GTM Workspace's API relative path. Example: accounts/{account_id}/containers/{container_id}/workspaces/{workspace_id}",
                          location = "path",
                          pattern = "^accounts/[^/]+/containers/[^/]+/workspaces/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "tagmanager/v2/{+parent}/zones",
                      request = {
                        ["$ref"] = "Zone",
                      },
                      response = {
                        ["$ref"] = "Zone",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/tagmanager.edit.containers",
                      },
                    },
                    delete = {
                      description = "Deletes a GTM Zone.",
                      flatPath = "tagmanager/v2/accounts/{accountsId}/containers/{containersId}/workspaces/{workspacesId}/zones/{zonesId}",
                      httpMethod = "DELETE",
                      id = "tagmanager.accounts.containers.workspaces.zones.delete",
                      parameterOrder = {
                        "path",
                      },
                      parameters = {
                        path = {
                          description = "GTM Zone's API relative path. Example: accounts/{account_id}/containers/{container_id}/workspaces/{workspace_id}/zones/{zone_id}",
                          location = "path",
                          pattern = "^accounts/[^/]+/containers/[^/]+/workspaces/[^/]+/zones/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "tagmanager/v2/{+path}",
                      scopes = {
                        "https://www.googleapis.com/auth/tagmanager.edit.containers",
                      },
                    },
                    get = {
                      description = "Gets a GTM Zone.",
                      flatPath = "tagmanager/v2/accounts/{accountsId}/containers/{containersId}/workspaces/{workspacesId}/zones/{zonesId}",
                      httpMethod = "GET",
                      id = "tagmanager.accounts.containers.workspaces.zones.get",
                      parameterOrder = {
                        "path",
                      },
                      parameters = {
                        path = {
                          description = "GTM Zone's API relative path. Example: accounts/{account_id}/containers/{container_id}/workspaces/{workspace_id}/zones/{zone_id}",
                          location = "path",
                          pattern = "^accounts/[^/]+/containers/[^/]+/workspaces/[^/]+/zones/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "tagmanager/v2/{+path}",
                      response = {
                        ["$ref"] = "Zone",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/tagmanager.edit.containers",
                        "https://www.googleapis.com/auth/tagmanager.readonly",
                      },
                    },
                    list = {
                      description = "Lists all GTM Zones of a GTM container workspace.",
                      flatPath = "tagmanager/v2/accounts/{accountsId}/containers/{containersId}/workspaces/{workspacesId}/zones",
                      httpMethod = "GET",
                      id = "tagmanager.accounts.containers.workspaces.zones.list",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        pageToken = {
                          description = "Continuation token for fetching the next page of results.",
                          location = "query",
                          type = "string",
                        },
                        parent = {
                          description = "GTM Workspace's API relative path. Example: accounts/{account_id}/containers/{container_id}/workspaces/{workspace_id}",
                          location = "path",
                          pattern = "^accounts/[^/]+/containers/[^/]+/workspaces/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "tagmanager/v2/{+parent}/zones",
                      response = {
                        ["$ref"] = "ListZonesResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/tagmanager.edit.containers",
                        "https://www.googleapis.com/auth/tagmanager.readonly",
                      },
                    },
                    revert = {
                      description = "Reverts changes to a GTM Zone in a GTM Workspace.",
                      flatPath = "tagmanager/v2/accounts/{accountsId}/containers/{containersId}/workspaces/{workspacesId}/zones/{zonesId}:revert",
                      httpMethod = "POST",
                      id = "tagmanager.accounts.containers.workspaces.zones.revert",
                      parameterOrder = {
                        "path",
                      },
                      parameters = {
                        fingerprint = {
                          description = "When provided, this fingerprint must match the fingerprint of the zone in storage.",
                          location = "query",
                          type = "string",
                        },
                        path = {
                          description = "GTM Zone's API relative path. Example: accounts/{account_id}/containers/{container_id}/workspaces/{workspace_id}/zones/{zone_id}",
                          location = "path",
                          pattern = "^accounts/[^/]+/containers/[^/]+/workspaces/[^/]+/zones/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "tagmanager/v2/{+path}:revert",
                      response = {
                        ["$ref"] = "RevertZoneResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/tagmanager.edit.containers",
                      },
                    },
                    update = {
                      description = "Updates a GTM Zone.",
                      flatPath = "tagmanager/v2/accounts/{accountsId}/containers/{containersId}/workspaces/{workspacesId}/zones/{zonesId}",
                      httpMethod = "PUT",
                      id = "tagmanager.accounts.containers.workspaces.zones.update",
                      parameterOrder = {
                        "path",
                      },
                      parameters = {
                        fingerprint = {
                          description = "When provided, this fingerprint must match the fingerprint of the zone in storage.",
                          location = "query",
                          type = "string",
                        },
                        path = {
                          description = "GTM Zone's API relative path. Example: accounts/{account_id}/containers/{container_id}/workspaces/{workspace_id}/zones/{zone_id}",
                          location = "path",
                          pattern = "^accounts/[^/]+/containers/[^/]+/workspaces/[^/]+/zones/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "tagmanager/v2/{+path}",
                      request = {
                        ["$ref"] = "Zone",
                      },
                      response = {
                        ["$ref"] = "Zone",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/tagmanager.edit.containers",
                      },
                    },
                  },
                },
              },
            },
          },
        },
        user_permissions = {
          methods = {
            create = {
              description = "Creates a user's Account & Container access.",
              flatPath = "tagmanager/v2/accounts/{accountsId}/user_permissions",
              httpMethod = "POST",
              id = "tagmanager.accounts.user_permissions.create",
              parameterOrder = {
                "parent",
              },
              parameters = {
                parent = {
                  description = "GTM Account's API relative path. Example: accounts/{account_id}",
                  location = "path",
                  pattern = "^accounts/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "tagmanager/v2/{+parent}/user_permissions",
              request = {
                ["$ref"] = "UserPermission",
              },
              response = {
                ["$ref"] = "UserPermission",
              },
              scopes = {
                "https://www.googleapis.com/auth/tagmanager.manage.users",
              },
            },
            delete = {
              description = "Removes a user from the account, revoking access to it and all of its containers.",
              flatPath = "tagmanager/v2/accounts/{accountsId}/user_permissions/{user_permissionsId}",
              httpMethod = "DELETE",
              id = "tagmanager.accounts.user_permissions.delete",
              parameterOrder = {
                "path",
              },
              parameters = {
                path = {
                  description = "GTM UserPermission's API relative path. Example: accounts/{account_id}/user_permissions/{user_permission_id}",
                  location = "path",
                  pattern = "^accounts/[^/]+/user_permissions/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "tagmanager/v2/{+path}",
              scopes = {
                "https://www.googleapis.com/auth/tagmanager.manage.users",
              },
            },
            get = {
              description = "Gets a user's Account & Container access.",
              flatPath = "tagmanager/v2/accounts/{accountsId}/user_permissions/{user_permissionsId}",
              httpMethod = "GET",
              id = "tagmanager.accounts.user_permissions.get",
              parameterOrder = {
                "path",
              },
              parameters = {
                path = {
                  description = "GTM UserPermission's API relative path. Example: accounts/{account_id}/user_permissions/{user_permission_id}",
                  location = "path",
                  pattern = "^accounts/[^/]+/user_permissions/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "tagmanager/v2/{+path}",
              response = {
                ["$ref"] = "UserPermission",
              },
              scopes = {
                "https://www.googleapis.com/auth/tagmanager.manage.users",
              },
            },
            list = {
              description = "List all users that have access to the account along with Account and Container user access granted to each of them.",
              flatPath = "tagmanager/v2/accounts/{accountsId}/user_permissions",
              httpMethod = "GET",
              id = "tagmanager.accounts.user_permissions.list",
              parameterOrder = {
                "parent",
              },
              parameters = {
                pageToken = {
                  description = "Continuation token for fetching the next page of results.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "GTM Account's API relative path. Example: accounts/{account_id}",
                  location = "path",
                  pattern = "^accounts/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "tagmanager/v2/{+parent}/user_permissions",
              response = {
                ["$ref"] = "ListUserPermissionsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/tagmanager.manage.users",
              },
            },
            update = {
              description = "Updates a user's Account & Container access.",
              flatPath = "tagmanager/v2/accounts/{accountsId}/user_permissions/{user_permissionsId}",
              httpMethod = "PUT",
              id = "tagmanager.accounts.user_permissions.update",
              parameterOrder = {
                "path",
              },
              parameters = {
                path = {
                  description = "GTM UserPermission's API relative path. Example: accounts/{account_id}/user_permissions/{user_permission_id}",
                  location = "path",
                  pattern = "^accounts/[^/]+/user_permissions/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "tagmanager/v2/{+path}",
              request = {
                ["$ref"] = "UserPermission",
              },
              response = {
                ["$ref"] = "UserPermission",
              },
              scopes = {
                "https://www.googleapis.com/auth/tagmanager.manage.users",
              },
            },
          },
        },
      },
    },
  },
  revision = "20230113",
  rootUrl = "https://tagmanager.googleapis.com/",
  schemas = {
    Account = {
      description = "Represents a Google Tag Manager Account.",
      id = "Account",
      properties = {
        accountId = {
          description = "The Account ID uniquely identifies the GTM Account.",
          type = "string",
        },
        features = {
          ["$ref"] = "AccountFeatures",
          description = "Read-only Account feature set",
        },
        fingerprint = {
          description = "The fingerprint of the GTM Account as computed at storage time. This value is recomputed whenever the account is modified.",
          type = "string",
        },
        name = {
          description = "Account display name. @mutable tagmanager.accounts.create @mutable tagmanager.accounts.update",
          type = "string",
        },
        path = {
          description = "GTM Account's API relative path.",
          type = "string",
        },
        shareData = {
          description = "Whether the account shares data anonymously with Google and others. This flag enables benchmarking by sharing your data in an anonymous form. Google will remove all identifiable information about your website, combine the data with hundreds of other anonymous sites and report aggregate trends in the benchmarking service. @mutable tagmanager.accounts.create @mutable tagmanager.accounts.update",
          type = "boolean",
        },
        tagManagerUrl = {
          description = "Auto generated link to the tag manager UI",
          type = "string",
        },
      },
      type = "object",
    },
    AccountAccess = {
      description = "Defines the Google Tag Manager Account access permissions.",
      id = "AccountAccess",
      properties = {
        permission = {
          description = "Whether the user has no access, user access, or admin access to an account. @mutable tagmanager.accounts.permissions.create @mutable tagmanager.accounts.permissions.update",
          enum = {
            "accountPermissionUnspecified",
            "noAccess",
            "user",
            "admin",
          },
          enumDescriptions = {
            "",
            "",
            "",
            "",
          },
          type = "string",
        },
      },
      type = "object",
    },
    AccountFeatures = {
      id = "AccountFeatures",
      properties = {
        supportMultipleContainers = {
          description = "Whether this Account supports multiple Containers.",
          type = "boolean",
        },
        supportUserPermissions = {
          description = "Whether this Account supports user permissions managed by GTM.",
          type = "boolean",
        },
      },
      type = "object",
    },
    BuiltInVariable = {
      description = "Built-in variables are a special category of variables that are pre-created and non-customizable. They provide common functionality like accessing properties of the gtm data layer, monitoring clicks, or accessing elements of a page URL.",
      id = "BuiltInVariable",
      properties = {
        accountId = {
          description = "GTM Account ID.",
          type = "string",
        },
        containerId = {
          description = "GTM Container ID.",
          type = "string",
        },
        name = {
          description = "Name of the built-in variable to be used to refer to the built-in variable.",
          type = "string",
        },
        path = {
          description = "GTM BuiltInVariable's API relative path.",
          type = "string",
        },
        type = {
          description = "Type of built-in variable. @required.tagmanager.accounts.containers.workspaces.built_in_variable.update @mutable tagmanager.accounts.containers.workspaces.built_in_variable.update",
          enum = {
            "builtInVariableTypeUnspecified",
            "pageUrl",
            "pageHostname",
            "pagePath",
            "referrer",
            "event",
            "clickElement",
            "clickClasses",
            "clickId",
            "clickTarget",
            "clickUrl",
            "clickText",
            "firstPartyServingUrl",
            "formElement",
            "formClasses",
            "formId",
            "formTarget",
            "formUrl",
            "formText",
            "errorMessage",
            "errorUrl",
            "errorLine",
            "newHistoryUrl",
            "oldHistoryUrl",
            "newHistoryFragment",
            "oldHistoryFragment",
            "newHistoryState",
            "oldHistoryState",
            "historySource",
            "containerVersion",
            "debugMode",
            "randomNumber",
            "containerId",
            "appId",
            "appName",
            "appVersionCode",
            "appVersionName",
            "language",
            "osVersion",
            "platform",
            "sdkVersion",
            "deviceName",
            "resolution",
            "advertiserId",
            "advertisingTrackingEnabled",
            "htmlId",
            "environmentName",
            "ampBrowserLanguage",
            "ampCanonicalPath",
            "ampCanonicalUrl",
            "ampCanonicalHost",
            "ampReferrer",
            "ampTitle",
            "ampClientId",
            "ampClientTimezone",
            "ampClientTimestamp",
            "ampClientScreenWidth",
            "ampClientScreenHeight",
            "ampClientScrollX",
            "ampClientScrollY",
            "ampClientMaxScrollX",
            "ampClientMaxScrollY",
            "ampTotalEngagedTime",
            "ampPageViewId",
            "ampPageLoadTime",
            "ampPageDownloadTime",
            "ampGtmEvent",
            "eventName",
            "firebaseEventParameterCampaign",
            "firebaseEventParameterCampaignAclid",
            "firebaseEventParameterCampaignAnid",
            "firebaseEventParameterCampaignClickTimestamp",
            "firebaseEventParameterCampaignContent",
            "firebaseEventParameterCampaignCp1",
            "firebaseEventParameterCampaignGclid",
            "firebaseEventParameterCampaignSource",
            "firebaseEventParameterCampaignTerm",
            "firebaseEventParameterCurrency",
            "firebaseEventParameterDynamicLinkAcceptTime",
            "firebaseEventParameterDynamicLinkLinkid",
            "firebaseEventParameterNotificationMessageDeviceTime",
            "firebaseEventParameterNotificationMessageId",
            "firebaseEventParameterNotificationMessageName",
            "firebaseEventParameterNotificationMessageTime",
            "firebaseEventParameterNotificationTopic",
            "firebaseEventParameterPreviousAppVersion",
            "firebaseEventParameterPreviousOsVersion",
            "firebaseEventParameterPrice",
            "firebaseEventParameterProductId",
            "firebaseEventParameterQuantity",
            "firebaseEventParameterValue",
            "videoProvider",
            "videoUrl",
            "videoTitle",
            "videoDuration",
            "videoPercent",
            "videoVisible",
            "videoStatus",
            "videoCurrentTime",
            "scrollDepthThreshold",
            "scrollDepthUnits",
            "scrollDepthDirection",
            "elementVisibilityRatio",
            "elementVisibilityTime",
            "elementVisibilityFirstTime",
            "elementVisibilityRecentTime",
            "requestPath",
            "requestMethod",
            "clientName",
            "queryString",
            "serverPageLocationUrl",
            "serverPageLocationPath",
            "serverPageLocationHostname",
            "visitorRegion",
          },
          enumDescriptions = {
            "",
            "",
            "",
            "",
            "",
            "For web or mobile.",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "For web or mobile.",
            "",
            "For web or mobile.",
            "For web or mobile.",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
          },
          type = "string",
        },
        workspaceId = {
          description = "GTM Workspace ID.",
          type = "string",
        },
      },
      type = "object",
    },
    Client = {
      id = "Client",
      properties = {
        accountId = {
          description = "GTM Account ID.",
          type = "string",
        },
        clientId = {
          description = "The Client ID uniquely identifies the GTM client.",
          type = "string",
        },
        containerId = {
          description = "GTM Container ID.",
          type = "string",
        },
        fingerprint = {
          description = "The fingerprint of the GTM Client as computed at storage time. This value is recomputed whenever the client is modified.",
          type = "string",
        },
        name = {
          annotations = {
            required = {
              "tagmanager.accounts.containers.workspaces.clients.create",
              "tagmanager.accounts.containers.workspaces.clients.update",
            },
          },
          description = "Client display name. @mutable tagmanager.accounts.containers.workspaces.clients.create @mutable tagmanager.accounts.containers.workspaces.clients.update",
          type = "string",
        },
        notes = {
          description = "User notes on how to apply this tag in the container. @mutable tagmanager.accounts.containers.workspaces.tags.create @mutable tagmanager.accounts.containers.workspaces.tags.update",
          type = "string",
        },
        parameter = {
          description = "The client's parameters. @mutable tagmanager.accounts.containers.workspaces.clients.create @mutable tagmanager.accounts.containers.workspaces.clients.update",
          items = {
            ["$ref"] = "Parameter",
          },
          type = "array",
        },
        parentFolderId = {
          description = "Parent folder id.",
          type = "string",
        },
        path = {
          description = "GTM client's API relative path.",
          type = "string",
        },
        priority = {
          description = "Priority determines relative firing order. @mutable tagmanager.accounts.containers.workspaces.clients.create @mutable tagmanager.accounts.containers.workspaces.clients.update",
          format = "int32",
          type = "integer",
        },
        tagManagerUrl = {
          description = "Auto generated link to the tag manager UI",
          type = "string",
        },
        type = {
          annotations = {
            required = {
              "tagmanager.accounts.containers.workspaces.clients.create",
              "tagmanager.accounts.containers.workspaces.clients.update",
            },
          },
          description = "Client type. @mutable tagmanager.accounts.containers.workspaces.clients.create @mutable tagmanager.accounts.containers.workspaces.clients.update",
          type = "string",
        },
        workspaceId = {
          description = "GTM Workspace ID.",
          type = "string",
        },
      },
      type = "object",
    },
    Condition = {
      description = "Represents a predicate.",
      id = "Condition",
      properties = {
        parameter = {
          annotations = {
            required = {
              "tagmanager.accounts.containers.workspaces.triggers.create",
              "tagmanager.accounts.containers.workspaces.triggers.update",
            },
          },
          description = "A list of named parameters (key/value), depending on the condition's type. Notes: - For binary operators, include parameters named arg0 and arg1 for specifying the left and right operands, respectively. - At this time, the left operand (arg0) must be a reference to a variable. - For case-insensitive Regex matching, include a boolean parameter named ignore_case that is set to true. If not specified or set to any other value, the matching will be case sensitive. - To negate an operator, include a boolean parameter named negate boolean parameter that is set to true. @mutable tagmanager.accounts.containers.workspaces.triggers.create @mutable tagmanager.accounts.containers.workspaces.triggers.update",
          items = {
            ["$ref"] = "Parameter",
          },
          type = "array",
        },
        type = {
          annotations = {
            required = {
              "tagmanager.accounts.containers.workspaces.triggers.create",
              "tagmanager.accounts.containers.workspaces.triggers.update",
            },
          },
          description = "The type of operator for this condition. @mutable tagmanager.accounts.containers.workspaces.triggers.create @mutable tagmanager.accounts.containers.workspaces.triggers.update",
          enum = {
            "conditionTypeUnspecified",
            "equals",
            "contains",
            "startsWith",
            "endsWith",
            "matchRegex",
            "greater",
            "greaterOrEquals",
            "less",
            "lessOrEquals",
            "cssSelector",
            "urlMatches",
          },
          enumDescriptions = {
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "NOTE(lanzone): When defining a ConditionType here, don't forget to also define a matching PredicateType (in condition.proto).",
          },
          type = "string",
        },
      },
      type = "object",
    },
    Container = {
      description = "Represents a Google Tag Manager Container, which specifies the platform tags will run on, manages workspaces, and retains container versions.",
      id = "Container",
      properties = {
        accountId = {
          description = "GTM Account ID.",
          type = "string",
        },
        containerId = {
          description = "The Container ID uniquely identifies the GTM Container.",
          type = "string",
        },
        domainName = {
          description = "List of domain names associated with the Container. @mutable tagmanager.accounts.containers.create @mutable tagmanager.accounts.containers.update",
          items = {
            type = "string",
          },
          type = "array",
        },
        features = {
          ["$ref"] = "ContainerFeatures",
          description = "Read-only Container feature set.",
        },
        fingerprint = {
          description = "The fingerprint of the GTM Container as computed at storage time. This value is recomputed whenever the account is modified.",
          type = "string",
        },
        name = {
          annotations = {
            required = {
              "tagmanager.accounts.containers.create",
              "tagmanager.accounts.containers.update",
            },
          },
          description = "Container display name. @mutable tagmanager.accounts.containers.create @mutable tagmanager.accounts.containers.update",
          type = "string",
        },
        notes = {
          description = "Container Notes. @mutable tagmanager.accounts.containers.create @mutable tagmanager.accounts.containers.update",
          type = "string",
        },
        path = {
          description = "GTM Container's API relative path.",
          type = "string",
        },
        publicId = {
          description = "Container Public ID.",
          type = "string",
        },
        tagIds = {
          description = "All Tag IDs that refer to this Container.",
          items = {
            type = "string",
          },
          type = "array",
        },
        tagManagerUrl = {
          description = "Auto generated link to the tag manager UI",
          type = "string",
        },
        taggingServerUrls = {
          description = "List of server-side container URLs for the Container. If multiple URLs are provided, all URL paths must match. @mutable tagmanager.accounts.containers.create @mutable tagmanager.accounts.containers.update",
          items = {
            type = "string",
          },
          type = "array",
        },
        usageContext = {
          annotations = {
            required = {
              "tagmanager.accounts.containers.create",
              "tagmanager.accounts.containers.update",
            },
          },
          description = "List of Usage Contexts for the Container. Valid values include: web, android, or ios. @mutable tagmanager.accounts.containers.create @mutable tagmanager.accounts.containers.update",
          items = {
            enum = {
              "usageContextUnspecified",
              "web",
              "android",
              "ios",
              "androidSdk5",
              "iosSdk5",
              "amp",
              "server",
            },
            enumDescriptions = {
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
            },
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ContainerAccess = {
      description = "Defines the Google Tag Manager Container access permissions.",
      id = "ContainerAccess",
      properties = {
        containerId = {
          description = "GTM Container ID. @mutable tagmanager.accounts.permissions.create @mutable tagmanager.accounts.permissions.update",
          type = "string",
        },
        permission = {
          description = "List of Container permissions. @mutable tagmanager.accounts.permissions.create @mutable tagmanager.accounts.permissions.update",
          enum = {
            "containerPermissionUnspecified",
            "noAccess",
            "read",
            "edit",
            "approve",
            "publish",
          },
          enumDescriptions = {
            "",
            "",
            "",
            "",
            "",
            "",
          },
          type = "string",
        },
      },
      type = "object",
    },
    ContainerFeatures = {
      id = "ContainerFeatures",
      properties = {
        supportBuiltInVariables = {
          description = "Whether this Container supports built-in variables",
          type = "boolean",
        },
        supportClients = {
          description = "Whether this Container supports clients.",
          type = "boolean",
        },
        supportEnvironments = {
          description = "Whether this Container supports environments.",
          type = "boolean",
        },
        supportFolders = {
          description = "Whether this Container supports folders.",
          type = "boolean",
        },
        supportGtagConfigs = {
          description = "Whether this Container supports Google tag config.",
          type = "boolean",
        },
        supportTags = {
          description = "Whether this Container supports tags.",
          type = "boolean",
        },
        supportTemplates = {
          description = "Whether this Container supports templates.",
          type = "boolean",
        },
        supportTriggers = {
          description = "Whether this Container supports triggers.",
          type = "boolean",
        },
        supportUserPermissions = {
          description = "Whether this Container supports user permissions managed by GTM.",
          type = "boolean",
        },
        supportVariables = {
          description = "Whether this Container supports variables.",
          type = "boolean",
        },
        supportVersions = {
          description = "Whether this Container supports Container versions.",
          type = "boolean",
        },
        supportWorkspaces = {
          description = "Whether this Container supports workspaces.",
          type = "boolean",
        },
        supportZones = {
          description = "Whether this Container supports zones.",
          type = "boolean",
        },
      },
      type = "object",
    },
    ContainerVersion = {
      description = "Represents a Google Tag Manager Container Version.",
      id = "ContainerVersion",
      properties = {
        accountId = {
          description = "GTM Account ID.",
          type = "string",
        },
        builtInVariable = {
          description = "The built-in variables in the container that this version was taken from.",
          items = {
            ["$ref"] = "BuiltInVariable",
          },
          type = "array",
        },
        client = {
          description = "The clients in the container that this version was taken from.",
          items = {
            ["$ref"] = "Client",
          },
          type = "array",
        },
        container = {
          ["$ref"] = "Container",
          description = "The container that this version was taken from.",
        },
        containerId = {
          description = "GTM Container ID.",
          type = "string",
        },
        containerVersionId = {
          description = "The Container Version ID uniquely identifies the GTM Container Version.",
          type = "string",
        },
        customTemplate = {
          description = "The custom templates in the container that this version was taken from.",
          items = {
            ["$ref"] = "CustomTemplate",
          },
          type = "array",
        },
        deleted = {
          description = "A value of true indicates this container version has been deleted.",
          type = "boolean",
        },
        description = {
          description = "Container version description. @mutable tagmanager.accounts.containers.versions.update",
          type = "string",
        },
        fingerprint = {
          description = "The fingerprint of the GTM Container Version as computed at storage time. This value is recomputed whenever the container version is modified.",
          type = "string",
        },
        folder = {
          description = "The folders in the container that this version was taken from.",
          items = {
            ["$ref"] = "Folder",
          },
          type = "array",
        },
        gtagConfig = {
          description = "The Google tag configs in the container that this version was taken from.",
          items = {
            ["$ref"] = "GtagConfig",
          },
          type = "array",
        },
        name = {
          description = "Container version display name. @mutable tagmanager.accounts.containers.versions.update",
          type = "string",
        },
        path = {
          description = "GTM Container Version's API relative path.",
          type = "string",
        },
        tag = {
          description = "The tags in the container that this version was taken from.",
          items = {
            ["$ref"] = "Tag",
          },
          type = "array",
        },
        tagManagerUrl = {
          description = "Auto generated link to the tag manager UI",
          type = "string",
        },
        trigger = {
          description = "The triggers in the container that this version was taken from.",
          items = {
            ["$ref"] = "Trigger",
          },
          type = "array",
        },
        variable = {
          description = "The variables in the container that this version was taken from.",
          items = {
            ["$ref"] = "Variable",
          },
          type = "array",
        },
        zone = {
          description = "The zones in the container that this version was taken from.",
          items = {
            ["$ref"] = "Zone",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ContainerVersionHeader = {
      description = "Represents a Google Tag Manager Container Version Header.",
      id = "ContainerVersionHeader",
      properties = {
        accountId = {
          description = "GTM Account ID.",
          type = "string",
        },
        containerId = {
          description = "GTM Container ID.",
          type = "string",
        },
        containerVersionId = {
          description = "The Container Version ID uniquely identifies the GTM Container Version.",
          type = "string",
        },
        deleted = {
          description = "A value of true indicates this container version has been deleted.",
          type = "boolean",
        },
        name = {
          description = "Container version display name.",
          type = "string",
        },
        numClients = {
          description = "Number of clients in the container version.",
          type = "string",
        },
        numCustomTemplates = {
          description = "Number of custom templates in the container version.",
          type = "string",
        },
        numGtagConfigs = {
          description = "Number of Google tag configs in the container version.",
          type = "string",
        },
        numMacros = {
          description = "Number of macros in the container version.",
          type = "string",
        },
        numRules = {
          description = "Number of rules in the container version.",
          type = "string",
        },
        numTags = {
          description = "Number of tags in the container version.",
          type = "string",
        },
        numTriggers = {
          description = "Number of triggers in the container version.",
          type = "string",
        },
        numVariables = {
          description = "Number of variables in the container version.",
          type = "string",
        },
        numZones = {
          description = "Number of zones in the container version.",
          type = "string",
        },
        path = {
          description = "GTM Container Version's API relative path.",
          type = "string",
        },
      },
      type = "object",
    },
    CreateBuiltInVariableResponse = {
      id = "CreateBuiltInVariableResponse",
      properties = {
        builtInVariable = {
          description = "List of created built-in variables.",
          items = {
            ["$ref"] = "BuiltInVariable",
          },
          type = "array",
        },
      },
      type = "object",
    },
    CreateContainerVersionRequestVersionOptions = {
      description = "Options for new container versions.",
      id = "CreateContainerVersionRequestVersionOptions",
      properties = {
        name = {
          description = "The name of the container version to be created.",
          type = "string",
        },
        notes = {
          description = "The notes of the container version to be created.",
          type = "string",
        },
      },
      type = "object",
    },
    CreateContainerVersionResponse = {
      description = "Create container versions response.",
      id = "CreateContainerVersionResponse",
      properties = {
        compilerError = {
          description = "Compiler errors or not.",
          type = "boolean",
        },
        containerVersion = {
          ["$ref"] = "ContainerVersion",
          description = "The container version created.",
        },
        newWorkspacePath = {
          description = "Auto generated workspace path created as a result of version creation. This field should only be populated if the created version was not a quick preview.",
          type = "string",
        },
        syncStatus = {
          ["$ref"] = "SyncStatus",
          description = "Whether version creation failed when syncing the workspace to the latest container version.",
        },
      },
      type = "object",
    },
    CustomTemplate = {
      description = "Represents a Google Tag Manager Custom Template's contents.",
      id = "CustomTemplate",
      properties = {
        accountId = {
          description = "GTM Account ID.",
          type = "string",
        },
        containerId = {
          description = "GTM Container ID.",
          type = "string",
        },
        fingerprint = {
          description = "The fingerprint of the GTM Custom Template as computed at storage time. This value is recomputed whenever the template is modified.",
          type = "string",
        },
        galleryReference = {
          ["$ref"] = "GalleryReference",
          description = "A reference to the Community Template Gallery entry.",
        },
        name = {
          description = "Custom Template display name.",
          type = "string",
        },
        path = {
          description = "GTM Custom Template's API relative path.",
          type = "string",
        },
        tagManagerUrl = {
          description = "Auto generated link to the tag manager UI",
          type = "string",
        },
        templateData = {
          description = "The custom template in text format.",
          type = "string",
        },
        templateId = {
          description = "The Custom Template ID uniquely identifies the GTM custom template.",
          type = "string",
        },
        workspaceId = {
          description = "GTM Workspace ID.",
          type = "string",
        },
      },
      type = "object",
    },
    Destination = {
      description = "Represents a Google Tag Destination.",
      id = "Destination",
      properties = {
        accountId = {
          description = "GTM Account ID.",
          type = "string",
        },
        containerId = {
          description = "GTM Container ID.",
          type = "string",
        },
        destinationId = {
          description = "Destination ID.",
          type = "string",
        },
        destinationLinkId = {
          description = "The Destination link ID uniquely identifies the Destination.",
          type = "string",
        },
        fingerprint = {
          description = "The fingerprint of the Google Tag Destination as computed at storage time. This value is recomputed whenever the destination is modified.",
          type = "string",
        },
        name = {
          description = "Destination display name.",
          type = "string",
        },
        path = {
          description = "Destination's API relative path.",
          type = "string",
        },
        tagManagerUrl = {
          description = "Auto generated link to the tag manager UI.",
          type = "string",
        },
      },
      type = "object",
    },
    Entity = {
      description = "A workspace entity that may represent a tag, trigger, variable, or folder in addition to its status in the workspace.",
      id = "Entity",
      properties = {
        changeStatus = {
          description = "Represents how the entity has been changed in the workspace.",
          enum = {
            "changeStatusUnspecified",
            "none",
            "added",
            "deleted",
            "updated",
          },
          enumDescriptions = {
            "",
            "The entity has never been changed.",
            "The entity is added to the workspace.",
            "The entity is deleted from the workspace.",
            "The entity has been updated in the workspace.",
          },
          type = "string",
        },
        client = {
          ["$ref"] = "Client",
          description = "The client being represented by the entity.",
        },
        folder = {
          ["$ref"] = "Folder",
          description = "The folder being represented by the entity.",
        },
        tag = {
          ["$ref"] = "Tag",
          description = "The tag being represented by the entity.",
        },
        trigger = {
          ["$ref"] = "Trigger",
          description = "The trigger being represented by the entity.",
        },
        variable = {
          ["$ref"] = "Variable",
          description = "The variable being represented by the entity.",
        },
      },
      type = "object",
    },
    Environment = {
      description = "Represents a Google Tag Manager Environment. Note that a user can create, delete and update environments of type USER, but can only update the enable_debug and url fields of environments of other types.",
      id = "Environment",
      properties = {
        accountId = {
          description = "GTM Account ID.",
          type = "string",
        },
        authorizationCode = {
          description = "The environment authorization code.",
          type = "string",
        },
        authorizationTimestamp = {
          description = "The last update time-stamp for the authorization code.",
          format = "google-datetime",
          type = "string",
        },
        containerId = {
          description = "GTM Container ID.",
          type = "string",
        },
        containerVersionId = {
          description = "Represents a link to a container version.",
          type = "string",
        },
        description = {
          description = "The environment description. Can be set or changed only on USER type environments. @mutable tagmanager.accounts.containers.environments.create @mutable tagmanager.accounts.containers.environments.update",
          type = "string",
        },
        enableDebug = {
          description = "Whether or not to enable debug by default for the environment. @mutable tagmanager.accounts.containers.environments.create @mutable tagmanager.accounts.containers.environments.update",
          type = "boolean",
        },
        environmentId = {
          description = "GTM Environment ID uniquely identifies the GTM Environment.",
          type = "string",
        },
        fingerprint = {
          description = "The fingerprint of the GTM environment as computed at storage time. This value is recomputed whenever the environment is modified.",
          type = "string",
        },
        name = {
          annotations = {
            required = {
              "tagmanager.accounts.containers.environments.create",
              "tagmanager.accounts.containers.environments.update",
            },
          },
          description = "The environment display name. Can be set or changed only on USER type environments. @mutable tagmanager.accounts.containers.environments.create @mutable tagmanager.accounts.containers.environments.update",
          type = "string",
        },
        path = {
          description = "GTM Environment's API relative path.",
          type = "string",
        },
        tagManagerUrl = {
          description = "Auto generated link to the tag manager UI",
          type = "string",
        },
        type = {
          description = "The type of this environment.",
          enum = {
            "user",
            "live",
            "latest",
            "workspace",
          },
          enumDescriptions = {
            "Points to a user defined environment.",
            "Points to the current live container version.",
            "Points to the latest container version.",
            "Automatically managed environment that points to a workspace preview or version created by a workspace.",
          },
          type = "string",
        },
        url = {
          description = "Default preview page url for the environment. @mutable tagmanager.accounts.containers.environments.create @mutable tagmanager.accounts.containers.environments.update",
          type = "string",
        },
        workspaceId = {
          description = "Represents a link to a quick preview of a workspace.",
          type = "string",
        },
      },
      type = "object",
    },
    Folder = {
      description = "Represents a Google Tag Manager Folder.",
      id = "Folder",
      properties = {
        accountId = {
          description = "GTM Account ID.",
          type = "string",
        },
        containerId = {
          description = "GTM Container ID.",
          type = "string",
        },
        fingerprint = {
          description = "The fingerprint of the GTM Folder as computed at storage time. This value is recomputed whenever the folder is modified.",
          type = "string",
        },
        folderId = {
          description = "The Folder ID uniquely identifies the GTM Folder.",
          type = "string",
        },
        name = {
          annotations = {
            required = {
              "tagmanager.accounts.containers.workspaces.folders.create",
              "tagmanager.accounts.containers.workspaces.folders.update",
            },
          },
          description = "Folder display name. @mutable tagmanager.accounts.containers.workspaces.folders.create @mutable tagmanager.accounts.containers.workspaces.folders.update",
          type = "string",
        },
        notes = {
          description = "User notes on how to apply this folder in the container. @mutable tagmanager.accounts.containers.workspaces.folders.create @mutable tagmanager.accounts.containers.workspaces.folders.update",
          type = "string",
        },
        path = {
          description = "GTM Folder's API relative path.",
          type = "string",
        },
        tagManagerUrl = {
          description = "Auto generated link to the tag manager UI",
          type = "string",
        },
        workspaceId = {
          description = "GTM Workspace ID.",
          type = "string",
        },
      },
      type = "object",
    },
    FolderEntities = {
      description = "Represents a Google Tag Manager Folder's contents.",
      id = "FolderEntities",
      properties = {
        nextPageToken = {
          description = "Continuation token for fetching the next page of results.",
          type = "string",
        },
        tag = {
          description = "The list of tags inside the folder.",
          items = {
            ["$ref"] = "Tag",
          },
          type = "array",
        },
        trigger = {
          description = "The list of triggers inside the folder.",
          items = {
            ["$ref"] = "Trigger",
          },
          type = "array",
        },
        variable = {
          description = "The list of variables inside the folder.",
          items = {
            ["$ref"] = "Variable",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GalleryReference = {
      description = "Represents the link between a custom template and an entry on the Community Template Gallery site.",
      id = "GalleryReference",
      properties = {
        host = {
          description = "The name of the host for the community gallery template.",
          type = "string",
        },
        isModified = {
          description = "If a user has manually edited the community gallery template.",
          type = "boolean",
        },
        owner = {
          description = "The name of the owner for the community gallery template.",
          type = "string",
        },
        repository = {
          description = "The name of the repository for the community gallery template.",
          type = "string",
        },
        signature = {
          description = "The signature of the community gallery template as computed at import time. This value is recomputed whenever the template is updated from the gallery.",
          type = "string",
        },
        version = {
          description = "The version of the community gallery template.",
          type = "string",
        },
      },
      type = "object",
    },
    GetContainerSnippetResponse = {
      id = "GetContainerSnippetResponse",
      properties = {
        snippet = {
          description = "Tagging snippet for a Container.",
          type = "string",
        },
      },
      type = "object",
    },
    GetWorkspaceStatusResponse = {
      description = "The changes that have occurred in the workspace since the base container version.",
      id = "GetWorkspaceStatusResponse",
      properties = {
        mergeConflict = {
          description = "The merge conflict after sync.",
          items = {
            ["$ref"] = "MergeConflict",
          },
          type = "array",
        },
        workspaceChange = {
          description = "Entities that have been changed in the workspace.",
          items = {
            ["$ref"] = "Entity",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GtagConfig = {
      description = "Represents a Google tag configuration.",
      id = "GtagConfig",
      properties = {
        accountId = {
          description = "Google tag account ID.",
          type = "string",
        },
        containerId = {
          description = "Google tag container ID.",
          type = "string",
        },
        fingerprint = {
          description = "The fingerprint of the Google tag config as computed at storage time. This value is recomputed whenever the config is modified.",
          type = "string",
        },
        gtagConfigId = {
          description = "The ID uniquely identifies the Google tag config.",
          type = "string",
        },
        parameter = {
          description = "The Google tag config's parameters. @mutable tagmanager.accounts.containers.workspaces.gtag_config.create @mutable tagmanager.accounts.containers.workspaces.gtag_config.update",
          items = {
            ["$ref"] = "Parameter",
          },
          type = "array",
        },
        path = {
          description = "Google tag config's API relative path.",
          type = "string",
        },
        tagManagerUrl = {
          description = "Auto generated link to the tag manager UI",
          type = "string",
        },
        type = {
          description = "Google tag config type. @required tagmanager.accounts.containers.workspaces.gtag_config.create @required tagmanager.accounts.containers.workspaces.gtag_config.update @mutable tagmanager.accounts.containers.workspaces.gtag_config.create @mutable tagmanager.accounts.containers.workspaces.gtag_config.update",
          type = "string",
        },
        workspaceId = {
          description = "Google tag workspace ID. Only used by GTM containers. Set to 0 otherwise.",
          type = "string",
        },
      },
      type = "object",
    },
    ListAccountsResponse = {
      description = "List Accounts Response.",
      id = "ListAccountsResponse",
      properties = {
        account = {
          description = "List of GTM Accounts that a user has access to.",
          items = {
            ["$ref"] = "Account",
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
    ListClientsResponse = {
      id = "ListClientsResponse",
      properties = {
        client = {
          description = "All GTM Clients of a GTM Container.",
          items = {
            ["$ref"] = "Client",
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
    ListContainerVersionsResponse = {
      description = "List container versions response.",
      id = "ListContainerVersionsResponse",
      properties = {
        containerVersionHeader = {
          description = "All container version headers of a GTM Container.",
          items = {
            ["$ref"] = "ContainerVersionHeader",
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
    ListContainersResponse = {
      description = "List Containers Response.",
      id = "ListContainersResponse",
      properties = {
        container = {
          description = "All Containers of a GTM Account.",
          items = {
            ["$ref"] = "Container",
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
    ListDestinationsResponse = {
      id = "ListDestinationsResponse",
      properties = {
        destination = {
          description = "All Destinations linked to a GTM Container.",
          items = {
            ["$ref"] = "Destination",
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
    ListEnabledBuiltInVariablesResponse = {
      description = "A list of enabled built-in variables.",
      id = "ListEnabledBuiltInVariablesResponse",
      properties = {
        builtInVariable = {
          description = "All GTM BuiltInVariables of a GTM container.",
          items = {
            ["$ref"] = "BuiltInVariable",
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
    ListEnvironmentsResponse = {
      description = "List Environments Response.",
      id = "ListEnvironmentsResponse",
      properties = {
        environment = {
          description = "All Environments of a GTM Container.",
          items = {
            ["$ref"] = "Environment",
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
    ListFoldersResponse = {
      description = "List Folders Response.",
      id = "ListFoldersResponse",
      properties = {
        folder = {
          description = "All GTM Folders of a GTM Container.",
          items = {
            ["$ref"] = "Folder",
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
    ListGtagConfigResponse = {
      id = "ListGtagConfigResponse",
      properties = {
        gtagConfig = {
          description = "All Google tag configs in a Container.",
          items = {
            ["$ref"] = "GtagConfig",
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
    ListTagsResponse = {
      description = "List Tags Response.",
      id = "ListTagsResponse",
      properties = {
        nextPageToken = {
          description = "Continuation token for fetching the next page of results.",
          type = "string",
        },
        tag = {
          description = "All GTM Tags of a GTM Container.",
          items = {
            ["$ref"] = "Tag",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ListTemplatesResponse = {
      id = "ListTemplatesResponse",
      properties = {
        nextPageToken = {
          description = "Continuation token for fetching the next page of results.",
          type = "string",
        },
        template = {
          description = "All GTM Custom Templates of a GTM Container.",
          items = {
            ["$ref"] = "CustomTemplate",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ListTriggersResponse = {
      description = "List triggers response.",
      id = "ListTriggersResponse",
      properties = {
        nextPageToken = {
          description = "Continuation token for fetching the next page of results.",
          type = "string",
        },
        trigger = {
          description = "All GTM Triggers of a GTM Container.",
          items = {
            ["$ref"] = "Trigger",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ListUserPermissionsResponse = {
      description = "List user permissions response.",
      id = "ListUserPermissionsResponse",
      properties = {
        nextPageToken = {
          description = "Continuation token for fetching the next page of results.",
          type = "string",
        },
        userPermission = {
          description = "All GTM UserPermissions of a GTM Account.",
          items = {
            ["$ref"] = "UserPermission",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ListVariablesResponse = {
      description = "List Variables Response.",
      id = "ListVariablesResponse",
      properties = {
        nextPageToken = {
          description = "Continuation token for fetching the next page of results.",
          type = "string",
        },
        variable = {
          description = "All GTM Variables of a GTM Container.",
          items = {
            ["$ref"] = "Variable",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ListWorkspacesResponse = {
      description = "A list of workspaces in a container.",
      id = "ListWorkspacesResponse",
      properties = {
        nextPageToken = {
          description = "Continuation token for fetching the next page of results.",
          type = "string",
        },
        workspace = {
          description = "All Workspaces of a GTM Container.",
          items = {
            ["$ref"] = "Workspace",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ListZonesResponse = {
      id = "ListZonesResponse",
      properties = {
        nextPageToken = {
          description = "Continuation token for fetching the next page of results.",
          type = "string",
        },
        zone = {
          description = "All GTM Zones of a GTM Container.",
          items = {
            ["$ref"] = "Zone",
          },
          type = "array",
        },
      },
      type = "object",
    },
    MergeConflict = {
      description = "Represents a merge conflict.",
      id = "MergeConflict",
      properties = {
        entityInBaseVersion = {
          ["$ref"] = "Entity",
          description = "The base version entity (since the latest sync operation) that has conflicting changes compared to the workspace. If this field is missing, it means the workspace entity is deleted from the base version.",
        },
        entityInWorkspace = {
          ["$ref"] = "Entity",
          description = "The workspace entity that has conflicting changes compared to the base version. If an entity is deleted in a workspace, it will still appear with a deleted change status.",
        },
      },
      type = "object",
    },
    Parameter = {
      description = "Represents a Google Tag Manager Parameter.",
      id = "Parameter",
      properties = {
        key = {
          description = "The named key that uniquely identifies a parameter. Required for top-level parameters, as well as map values. Ignored for list values. @mutable tagmanager.accounts.containers.workspaces.variables.create @mutable tagmanager.accounts.containers.workspaces.variables.update @mutable tagmanager.accounts.containers.workspaces.triggers.create @mutable tagmanager.accounts.containers.workspaces.triggers.update @mutable tagmanager.accounts.containers.workspaces.tags.create @mutable tagmanager.accounts.containers.workspaces.tags.update",
          type = "string",
        },
        list = {
          description = "This list parameter's parameters (keys will be ignored). @mutable tagmanager.accounts.containers.workspaces.variables.create @mutable tagmanager.accounts.containers.workspaces.variables.update @mutable tagmanager.accounts.containers.workspaces.triggers.create @mutable tagmanager.accounts.containers.workspaces.triggers.update @mutable tagmanager.accounts.containers.workspaces.tags.create @mutable tagmanager.accounts.containers.workspaces.tags.update",
          items = {
            ["$ref"] = "Parameter",
          },
          type = "array",
        },
        map = {
          description = "This map parameter's parameters (must have keys; keys must be unique). @mutable tagmanager.accounts.containers.workspaces.variables.create @mutable tagmanager.accounts.containers.workspaces.variables.update @mutable tagmanager.accounts.containers.workspaces.triggers.create @mutable tagmanager.accounts.containers.workspaces.triggers.update @mutable tagmanager.accounts.containers.workspaces.tags.create @mutable tagmanager.accounts.containers.workspaces.tags.update",
          items = {
            ["$ref"] = "Parameter",
          },
          type = "array",
        },
        type = {
          annotations = {
            required = {
              "tagmanager.accounts.containers.workspaces.tags.create",
              "tagmanager.accounts.containers.workspaces.tags.update",
              "tagmanager.accounts.containers.workspaces.triggers.create",
              "tagmanager.accounts.containers.workspaces.triggers.update",
              "tagmanager.accounts.containers.workspaces.variables.create",
              "tagmanager.accounts.containers.workspaces.variables.update",
            },
          },
          description = "The parameter type. Valid values are: - boolean: The value represents a boolean, represented as 'true' or 'false' - integer: The value represents a 64-bit signed integer value, in base 10 - list: A list of parameters should be specified - map: A map of parameters should be specified - template: The value represents any text; this can include variable references (even variable references that might return non-string types) - trigger_reference: The value represents a trigger, represented as the trigger id - tag_reference: The value represents a tag, represented as the tag name @mutable tagmanager.accounts.containers.workspaces.variables.create @mutable tagmanager.accounts.containers.workspaces.variables.update @mutable tagmanager.accounts.containers.workspaces.triggers.create @mutable tagmanager.accounts.containers.workspaces.triggers.update @mutable tagmanager.accounts.containers.workspaces.tags.create @mutable tagmanager.accounts.containers.workspaces.tags.update",
          enum = {
            "typeUnspecified",
            "template",
            "integer",
            "boolean",
            "list",
            "map",
            "triggerReference",
            "tagReference",
          },
          enumDescriptions = {
            "",
            "May include variable references (such as \"{{myVariable}}\").",
            "",
            "",
            "",
            "",
            "",
            "",
          },
          type = "string",
        },
        value = {
          description = "A parameter's value (may contain variable references such as \"{{myVariable}}\") as appropriate to the specified type. @mutable tagmanager.accounts.containers.workspaces.variables.create @mutable tagmanager.accounts.containers.workspaces.variables.update @mutable tagmanager.accounts.containers.workspaces.triggers.create @mutable tagmanager.accounts.containers.workspaces.triggers.update @mutable tagmanager.accounts.containers.workspaces.tags.create @mutable tagmanager.accounts.containers.workspaces.tags.update",
          type = "string",
        },
      },
      type = "object",
    },
    PublishContainerVersionResponse = {
      description = "Publish container version response.",
      id = "PublishContainerVersionResponse",
      properties = {
        compilerError = {
          description = "Compiler errors or not.",
          type = "boolean",
        },
        containerVersion = {
          ["$ref"] = "ContainerVersion",
          description = "The container version created.",
        },
      },
      type = "object",
    },
    QuickPreviewResponse = {
      description = "Response to quick previewing a workspace.",
      id = "QuickPreviewResponse",
      properties = {
        compilerError = {
          description = "Were there compiler errors or not.",
          type = "boolean",
        },
        containerVersion = {
          ["$ref"] = "ContainerVersion",
          description = "The quick previewed container version.",
        },
        syncStatus = {
          ["$ref"] = "SyncStatus",
          description = "Whether quick previewing failed when syncing the workspace to the latest container version.",
        },
      },
      type = "object",
    },
    RevertBuiltInVariableResponse = {
      description = "The result of reverting a built-in variable in a workspace.",
      id = "RevertBuiltInVariableResponse",
      properties = {
        enabled = {
          description = "Whether the built-in variable is enabled after reversion.",
          type = "boolean",
        },
      },
      type = "object",
    },
    RevertClientResponse = {
      description = "The result of reverting a client in a workspace.",
      id = "RevertClientResponse",
      properties = {
        client = {
          ["$ref"] = "Client",
          description = "Client as it appears in the latest container version since the last workspace synchronization operation. If no client is present, that means the client was deleted in the latest container version.",
        },
      },
      type = "object",
    },
    RevertFolderResponse = {
      description = "The result of reverting folder changes in a workspace.",
      id = "RevertFolderResponse",
      properties = {
        folder = {
          ["$ref"] = "Folder",
          description = "Folder as it appears in the latest container version since the last workspace synchronization operation. If no folder is present, that means the folder was deleted in the latest container version.",
        },
      },
      type = "object",
    },
    RevertTagResponse = {
      description = "The result of reverting a tag in a workspace.",
      id = "RevertTagResponse",
      properties = {
        tag = {
          ["$ref"] = "Tag",
          description = "Tag as it appears in the latest container version since the last workspace synchronization operation. If no tag is present, that means the tag was deleted in the latest container version.",
        },
      },
      type = "object",
    },
    RevertTemplateResponse = {
      description = "The result of reverting a template in a workspace.",
      id = "RevertTemplateResponse",
      properties = {
        template = {
          ["$ref"] = "CustomTemplate",
          description = "Template as it appears in the latest container version since the last workspace synchronization operation. If no template is present, that means the template was deleted in the latest container version.",
        },
      },
      type = "object",
    },
    RevertTriggerResponse = {
      description = "The result of reverting a trigger in a workspace.",
      id = "RevertTriggerResponse",
      properties = {
        trigger = {
          ["$ref"] = "Trigger",
          description = "Trigger as it appears in the latest container version since the last workspace synchronization operation. If no trigger is present, that means the trigger was deleted in the latest container version.",
        },
      },
      type = "object",
    },
    RevertVariableResponse = {
      description = "The result of reverting a variable in a workspace.",
      id = "RevertVariableResponse",
      properties = {
        variable = {
          ["$ref"] = "Variable",
          description = "Variable as it appears in the latest container version since the last workspace synchronization operation. If no variable is present, that means the variable was deleted in the latest container version.",
        },
      },
      type = "object",
    },
    RevertZoneResponse = {
      description = "The result of reverting a zone in a workspace.",
      id = "RevertZoneResponse",
      properties = {
        zone = {
          ["$ref"] = "Zone",
          description = "Zone as it appears in the latest container version since the last workspace synchronization operation. If no zone is present, that means the zone was deleted in the latest container version.",
        },
      },
      type = "object",
    },
    SetupTag = {
      description = "Represents a reference to atag that fires before another tag in order to set up dependencies.",
      id = "SetupTag",
      properties = {
        stopOnSetupFailure = {
          description = "If true, fire the main tag if and only if the setup tag fires successfully. If false, fire the main tag regardless of setup tag firing status.",
          type = "boolean",
        },
        tagName = {
          description = "The name of the setup tag.",
          type = "string",
        },
      },
      type = "object",
    },
    SyncStatus = {
      description = "The status of a workspace after synchronization.",
      id = "SyncStatus",
      properties = {
        mergeConflict = {
          description = "Synchornization operation detected a merge conflict.",
          type = "boolean",
        },
        syncError = {
          description = "An error occurred during the synchronization operation.",
          type = "boolean",
        },
      },
      type = "object",
    },
    SyncWorkspaceResponse = {
      description = "A response after synchronizing the workspace to the latest container version.",
      id = "SyncWorkspaceResponse",
      properties = {
        mergeConflict = {
          description = "The merge conflict after sync. If this field is not empty, the sync is still treated as successful. But a version cannot be created until all conflicts are resolved.",
          items = {
            ["$ref"] = "MergeConflict",
          },
          type = "array",
        },
        syncStatus = {
          ["$ref"] = "SyncStatus",
          description = "Indicates whether synchronization caused a merge conflict or sync error.",
        },
      },
      type = "object",
    },
    Tag = {
      description = "Represents a Google Tag Manager Tag.",
      id = "Tag",
      properties = {
        accountId = {
          description = "GTM Account ID.",
          type = "string",
        },
        blockingRuleId = {
          description = "Blocking rule IDs. If any of the listed rules evaluate to true, the tag will not fire. @mutable tagmanager.accounts.containers.workspaces.tags.create @mutable tagmanager.accounts.containers.workspaces.tags.update",
          items = {
            type = "string",
          },
          type = "array",
        },
        blockingTriggerId = {
          description = "Blocking trigger IDs. If any of the listed triggers evaluate to true, the tag will not fire. @mutable tagmanager.accounts.containers.workspaces.tags.create @mutable tagmanager.accounts.containers.workspaces.tags.update",
          items = {
            type = "string",
          },
          type = "array",
        },
        consentSettings = {
          ["$ref"] = "TagConsentSetting",
          description = "Consent settings of a tag. @mutable tagmanager.accounts.containers.workspaces.tags.create @mutable tagmanager.accounts.containers.workspaces.tags.update",
        },
        containerId = {
          description = "GTM Container ID.",
          type = "string",
        },
        fingerprint = {
          description = "The fingerprint of the GTM Tag as computed at storage time. This value is recomputed whenever the tag is modified.",
          type = "string",
        },
        firingRuleId = {
          description = "Firing rule IDs. A tag will fire when any of the listed rules are true and all of its blockingRuleIds (if any specified) are false. @mutable tagmanager.accounts.containers.workspaces.tags.create @mutable tagmanager.accounts.containers.workspaces.tags.update",
          items = {
            type = "string",
          },
          type = "array",
        },
        firingTriggerId = {
          description = "Firing trigger IDs. A tag will fire when any of the listed triggers are true and all of its blockingTriggerIds (if any specified) are false. @mutable tagmanager.accounts.containers.workspaces.tags.create @mutable tagmanager.accounts.containers.workspaces.tags.update",
          items = {
            type = "string",
          },
          type = "array",
        },
        liveOnly = {
          description = "If set to true, this tag will only fire in the live environment (e.g. not in preview or debug mode). @mutable tagmanager.accounts.containers.workspaces.tags.create @mutable tagmanager.accounts.containers.workspaces.tags.update",
          type = "boolean",
        },
        monitoringMetadata = {
          ["$ref"] = "Parameter",
          description = "A map of key-value pairs of tag metadata to be included in the event data for tag monitoring. Notes: - This parameter must be type MAP. - Each parameter in the map are type TEMPLATE, however cannot contain variable references. @mutable tagmanager.accounts.containers.workspaces.tags.create @mutable tagmanager.accounts.containers.workspaces.tags.update",
        },
        monitoringMetadataTagNameKey = {
          description = "If non-empty, then the tag display name will be included in the monitoring metadata map using the key specified. @mutable tagmanager.accounts.containers.workspaces.tags.create @mutable tagmanager.accounts.containers.workspaces.tags.update",
          type = "string",
        },
        name = {
          annotations = {
            required = {
              "tagmanager.accounts.containers.workspaces.tags.create",
              "tagmanager.accounts.containers.workspaces.tags.update",
            },
          },
          description = "Tag display name. @mutable tagmanager.accounts.containers.workspaces.tags.create @mutable tagmanager.accounts.containers.workspaces.tags.update",
          type = "string",
        },
        notes = {
          description = "User notes on how to apply this tag in the container. @mutable tagmanager.accounts.containers.workspaces.tags.create @mutable tagmanager.accounts.containers.workspaces.tags.update",
          type = "string",
        },
        parameter = {
          description = "The tag's parameters. @mutable tagmanager.accounts.containers.workspaces.tags.create @mutable tagmanager.accounts.containers.workspaces.tags.update",
          items = {
            ["$ref"] = "Parameter",
          },
          type = "array",
        },
        parentFolderId = {
          description = "Parent folder id.",
          type = "string",
        },
        path = {
          description = "GTM Tag's API relative path.",
          type = "string",
        },
        paused = {
          description = "Indicates whether the tag is paused, which prevents the tag from firing. @mutable tagmanager.accounts.containers.workspaces.tags.create @mutable tagmanager.accounts.containers.workspaces.tags.update",
          type = "boolean",
        },
        priority = {
          ["$ref"] = "Parameter",
          description = "User defined numeric priority of the tag. Tags are fired asynchronously in order of priority. Tags with higher numeric value fire first. A tag's priority can be a positive or negative value. The default value is 0. @mutable tagmanager.accounts.containers.workspaces.tags.create @mutable tagmanager.accounts.containers.workspaces.tags.update",
        },
        scheduleEndMs = {
          description = "The end timestamp in milliseconds to schedule a tag. @mutable tagmanager.accounts.containers.workspaces.tags.create @mutable tagmanager.accounts.containers.workspaces.tags.update",
          format = "int64",
          type = "string",
        },
        scheduleStartMs = {
          description = "The start timestamp in milliseconds to schedule a tag. @mutable tagmanager.accounts.containers.workspaces.tags.create @mutable tagmanager.accounts.containers.workspaces.tags.update",
          format = "int64",
          type = "string",
        },
        setupTag = {
          description = "The list of setup tags. Currently we only allow one.",
          items = {
            ["$ref"] = "SetupTag",
          },
          type = "array",
        },
        tagFiringOption = {
          description = "Option to fire this tag.",
          enum = {
            "tagFiringOptionUnspecified",
            "unlimited",
            "oncePerEvent",
            "oncePerLoad",
          },
          enumDescriptions = {
            "",
            "Tag can be fired multiple times per event.",
            "Tag can only be fired per event but can be fired multiple times per load (e.g., app load or page load).",
            "Tag can only be fired per load (e.g., app load or page load).",
          },
          type = "string",
        },
        tagId = {
          description = "The Tag ID uniquely identifies the GTM Tag.",
          type = "string",
        },
        tagManagerUrl = {
          description = "Auto generated link to the tag manager UI",
          type = "string",
        },
        teardownTag = {
          description = "The list of teardown tags. Currently we only allow one.",
          items = {
            ["$ref"] = "TeardownTag",
          },
          type = "array",
        },
        type = {
          annotations = {
            required = {
              "tagmanager.accounts.containers.workspaces.tags.create",
              "tagmanager.accounts.containers.workspaces.tags.update",
            },
          },
          description = "GTM Tag Type. @mutable tagmanager.accounts.containers.workspaces.tags.create @mutable tagmanager.accounts.containers.workspaces.tags.update",
          type = "string",
        },
        workspaceId = {
          description = "GTM Workspace ID.",
          type = "string",
        },
      },
      type = "object",
    },
    TagConsentSetting = {
      id = "TagConsentSetting",
      properties = {
        consentStatus = {
          description = "The tag's consent status. If set to NEEDED, the runtime will check that the consent types specified by the consent_type field have been granted.",
          enum = {
            "notSet",
            "notNeeded",
            "needed",
          },
          enumDescriptions = {
            "Default value where user has not specified any setting on it.",
            "Tag doesn't require any additional consent settings.",
            "Tag requires additional consent settings.",
          },
          type = "string",
        },
        consentType = {
          ["$ref"] = "Parameter",
          description = "The type of consents to check for during tag firing if in the consent NEEDED state. This parameter must be of type LIST where each list item is of type STRING.",
        },
      },
      type = "object",
    },
    TeardownTag = {
      description = "Represents a tag that fires after another tag in order to tear down dependencies.",
      id = "TeardownTag",
      properties = {
        stopTeardownOnFailure = {
          description = "If true, fire the teardown tag if and only if the main tag fires successfully. If false, fire the teardown tag regardless of main tag firing status.",
          type = "boolean",
        },
        tagName = {
          description = "The name of the teardown tag.",
          type = "string",
        },
      },
      type = "object",
    },
    Trigger = {
      description = "Represents a Google Tag Manager Trigger",
      id = "Trigger",
      properties = {
        accountId = {
          description = "GTM Account ID.",
          type = "string",
        },
        autoEventFilter = {
          description = "Used in the case of auto event tracking. @mutable tagmanager.accounts.containers.workspaces.triggers.create @mutable tagmanager.accounts.containers.workspaces.triggers.update",
          items = {
            ["$ref"] = "Condition",
          },
          type = "array",
        },
        checkValidation = {
          ["$ref"] = "Parameter",
          description = "Whether or not we should only fire tags if the form submit or link click event is not cancelled by some other event handler (e.g. because of validation). Only valid for Form Submission and Link Click triggers. @mutable tagmanager.accounts.containers.workspaces.triggers.create @mutable tagmanager.accounts.containers.workspaces.triggers.update",
        },
        containerId = {
          description = "GTM Container ID.",
          type = "string",
        },
        continuousTimeMinMilliseconds = {
          ["$ref"] = "Parameter",
          description = "A visibility trigger minimum continuous visible time (in milliseconds). Only valid for AMP Visibility trigger. @mutable tagmanager.accounts.containers.workspaces.triggers.create @mutable tagmanager.accounts.containers.workspaces.triggers.update",
        },
        customEventFilter = {
          description = "Used in the case of custom event, which is fired iff all Conditions are true. @mutable tagmanager.accounts.containers.workspaces.triggers.create @mutable tagmanager.accounts.containers.workspaces.triggers.update",
          items = {
            ["$ref"] = "Condition",
          },
          type = "array",
        },
        eventName = {
          ["$ref"] = "Parameter",
          description = "Name of the GTM event that is fired. Only valid for Timer triggers. @mutable tagmanager.accounts.containers.workspaces.triggers.create @mutable tagmanager.accounts.containers.workspaces.triggers.update",
        },
        filter = {
          description = "The trigger will only fire iff all Conditions are true. @mutable tagmanager.accounts.containers.workspaces.triggers.create @mutable tagmanager.accounts.containers.workspaces.triggers.update",
          items = {
            ["$ref"] = "Condition",
          },
          type = "array",
        },
        fingerprint = {
          description = "The fingerprint of the GTM Trigger as computed at storage time. This value is recomputed whenever the trigger is modified.",
          type = "string",
        },
        horizontalScrollPercentageList = {
          ["$ref"] = "Parameter",
          description = "List of integer percentage values for scroll triggers. The trigger will fire when each percentage is reached when the view is scrolled horizontally. Only valid for AMP scroll triggers. @mutable tagmanager.accounts.containers.workspaces.triggers.create @mutable tagmanager.accounts.containers.workspaces.triggers.update",
        },
        interval = {
          ["$ref"] = "Parameter",
          description = "Time between triggering recurring Timer Events (in milliseconds). Only valid for Timer triggers. @mutable tagmanager.accounts.containers.workspaces.triggers.create @mutable tagmanager.accounts.containers.workspaces.triggers.update",
        },
        intervalSeconds = {
          ["$ref"] = "Parameter",
          description = "Time between Timer Events to fire (in seconds). Only valid for AMP Timer trigger. @mutable tagmanager.accounts.containers.workspaces.triggers.create @mutable tagmanager.accounts.containers.workspaces.triggers.update",
        },
        limit = {
          ["$ref"] = "Parameter",
          description = "Limit of the number of GTM events this Timer Trigger will fire. If no limit is set, we will continue to fire GTM events until the user leaves the page. Only valid for Timer triggers. @mutable tagmanager.accounts.containers.workspaces.triggers.create @mutable tagmanager.accounts.containers.workspaces.triggers.update",
        },
        maxTimerLengthSeconds = {
          ["$ref"] = "Parameter",
          description = "Max time to fire Timer Events (in seconds). Only valid for AMP Timer trigger. @mutable tagmanager.accounts.containers.workspaces.triggers.create @mutable tagmanager.accounts.containers.workspaces.triggers.update",
        },
        name = {
          annotations = {
            required = {
              "tagmanager.accounts.containers.workspaces.triggers.create",
              "tagmanager.accounts.containers.workspaces.triggers.update",
            },
          },
          description = "Trigger display name. @mutable tagmanager.accounts.containers.workspaces.triggers.create @mutable tagmanager.accounts.containers.workspaces.triggers.update",
          type = "string",
        },
        notes = {
          description = "User notes on how to apply this trigger in the container. @mutable tagmanager.accounts.containers.workspaces.triggers.create @mutable tagmanager.accounts.containers.workspaces.triggers.update",
          type = "string",
        },
        parameter = {
          description = "Additional parameters. @mutable tagmanager.accounts.containers.workspaces.triggers.create @mutable tagmanager.accounts.containers.workspaces.triggers.update",
          items = {
            ["$ref"] = "Parameter",
          },
          type = "array",
        },
        parentFolderId = {
          description = "Parent folder id.",
          type = "string",
        },
        path = {
          description = "GTM Trigger's API relative path.",
          type = "string",
        },
        selector = {
          ["$ref"] = "Parameter",
          description = "A click trigger CSS selector (i.e. \"a\", \"button\" etc.). Only valid for AMP Click trigger. @mutable tagmanager.accounts.containers.workspaces.triggers.create @mutable tagmanager.accounts.containers.workspaces.triggers.update",
        },
        tagManagerUrl = {
          description = "Auto generated link to the tag manager UI",
          type = "string",
        },
        totalTimeMinMilliseconds = {
          ["$ref"] = "Parameter",
          description = "A visibility trigger minimum total visible time (in milliseconds). Only valid for AMP Visibility trigger. @mutable tagmanager.accounts.containers.workspaces.triggers.create @mutable tagmanager.accounts.containers.workspaces.triggers.update",
        },
        triggerId = {
          description = "The Trigger ID uniquely identifies the GTM Trigger.",
          type = "string",
        },
        type = {
          annotations = {
            required = {
              "tagmanager.accounts.containers.workspaces.triggers.create",
            },
          },
          description = "Defines the data layer event that causes this trigger. @mutable tagmanager.accounts.containers.workspaces.triggers.create @mutable tagmanager.accounts.containers.workspaces.triggers.update",
          enum = {
            "eventTypeUnspecified",
            "pageview",
            "domReady",
            "windowLoaded",
            "customEvent",
            "triggerGroup",
            "init",
            "consentInit",
            "serverPageview",
            "always",
            "firebaseAppException",
            "firebaseAppUpdate",
            "firebaseCampaign",
            "firebaseFirstOpen",
            "firebaseInAppPurchase",
            "firebaseNotificationDismiss",
            "firebaseNotificationForeground",
            "firebaseNotificationOpen",
            "firebaseNotificationReceive",
            "firebaseOsUpdate",
            "firebaseSessionStart",
            "firebaseUserEngagement",
            "formSubmission",
            "click",
            "linkClick",
            "jsError",
            "historyChange",
            "timer",
            "ampClick",
            "ampTimer",
            "ampScroll",
            "ampVisibility",
            "youTubeVideo",
            "scrollDepth",
            "elementVisibility",
          },
          enumDescriptions = {
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
          },
          type = "string",
        },
        uniqueTriggerId = {
          ["$ref"] = "Parameter",
          description = "Globally unique id of the trigger that auto-generates this (a Form Submit, Link Click or Timer listener) if any. Used to make incompatible auto-events work together with trigger filtering based on trigger ids. This value is populated during output generation since the tags implied by triggers don't exist until then. Only valid for Form Submit, Link Click and Timer triggers. @mutable tagmanager.accounts.containers.workspaces.triggers.create @mutable tagmanager.accounts.containers.workspaces.triggers.update",
        },
        verticalScrollPercentageList = {
          ["$ref"] = "Parameter",
          description = "List of integer percentage values for scroll triggers. The trigger will fire when each percentage is reached when the view is scrolled vertically. Only valid for AMP scroll triggers. @mutable tagmanager.accounts.containers.workspaces.triggers.create @mutable tagmanager.accounts.containers.workspaces.triggers.update",
        },
        visibilitySelector = {
          ["$ref"] = "Parameter",
          description = "A visibility trigger CSS selector (i.e. \"#id\"). Only valid for AMP Visibility trigger. @mutable tagmanager.accounts.containers.workspaces.triggers.create @mutable tagmanager.accounts.containers.workspaces.triggers.update",
        },
        visiblePercentageMax = {
          ["$ref"] = "Parameter",
          description = "A visibility trigger maximum percent visibility. Only valid for AMP Visibility trigger. @mutable tagmanager.accounts.containers.workspaces.triggers.create @mutable tagmanager.accounts.containers.workspaces.triggers.update",
        },
        visiblePercentageMin = {
          ["$ref"] = "Parameter",
          description = "A visibility trigger minimum percent visibility. Only valid for AMP Visibility trigger. @mutable tagmanager.accounts.containers.workspaces.triggers.create @mutable tagmanager.accounts.containers.workspaces.triggers.update",
        },
        waitForTags = {
          ["$ref"] = "Parameter",
          description = "Whether or not we should delay the form submissions or link opening until all of the tags have fired (by preventing the default action and later simulating the default action). Only valid for Form Submission and Link Click triggers. @mutable tagmanager.accounts.containers.workspaces.triggers.create @mutable tagmanager.accounts.containers.workspaces.triggers.update",
        },
        waitForTagsTimeout = {
          ["$ref"] = "Parameter",
          description = "How long to wait (in milliseconds) for tags to fire when 'waits_for_tags' above evaluates to true. Only valid for Form Submission and Link Click triggers. @mutable tagmanager.accounts.containers.workspaces.triggers.create @mutable tagmanager.accounts.containers.workspaces.triggers.update",
        },
        workspaceId = {
          description = "GTM Workspace ID.",
          type = "string",
        },
      },
      type = "object",
    },
    UserPermission = {
      description = "Represents a user's permissions to an account and its container.",
      id = "UserPermission",
      properties = {
        accountAccess = {
          ["$ref"] = "AccountAccess",
          description = "GTM Account access permissions. @mutable tagmanager.accounts.permissions.create @mutable tagmanager.accounts.permissions.update",
        },
        accountId = {
          description = "The Account ID uniquely identifies the GTM Account.",
          type = "string",
        },
        containerAccess = {
          description = "GTM Container access permissions. @mutable tagmanager.accounts.permissions.create @mutable tagmanager.accounts.permissions.update",
          items = {
            ["$ref"] = "ContainerAccess",
          },
          type = "array",
        },
        emailAddress = {
          description = "User's email address. @mutable tagmanager.accounts.permissions.create",
          type = "string",
        },
        path = {
          description = "GTM UserPermission's API relative path.",
          type = "string",
        },
      },
      type = "object",
    },
    Variable = {
      description = "Represents a Google Tag Manager Variable.",
      id = "Variable",
      properties = {
        accountId = {
          description = "GTM Account ID.",
          type = "string",
        },
        containerId = {
          description = "GTM Container ID.",
          type = "string",
        },
        disablingTriggerId = {
          description = "For mobile containers only: A list of trigger IDs for disabling conditional variables; the variable is enabled if one of the enabling trigger is true while all the disabling trigger are false. Treated as an unordered set. @mutable tagmanager.accounts.containers.workspaces.variables.create @mutable tagmanager.accounts.containers.workspaces.variables.update",
          items = {
            type = "string",
          },
          type = "array",
        },
        enablingTriggerId = {
          description = "For mobile containers only: A list of trigger IDs for enabling conditional variables; the variable is enabled if one of the enabling triggers is true while all the disabling triggers are false. Treated as an unordered set. @mutable tagmanager.accounts.containers.workspaces.variables.create @mutable tagmanager.accounts.containers.workspaces.variables.update",
          items = {
            type = "string",
          },
          type = "array",
        },
        fingerprint = {
          description = "The fingerprint of the GTM Variable as computed at storage time. This value is recomputed whenever the variable is modified.",
          type = "string",
        },
        formatValue = {
          ["$ref"] = "VariableFormatValue",
          description = "Option to convert a variable value to other value.",
        },
        name = {
          annotations = {
            required = {
              "tagmanager.accounts.containers.workspaces.variables.create",
              "tagmanager.accounts.containers.workspaces.variables.update",
            },
          },
          description = "Variable display name. @mutable tagmanager.accounts.containers.workspaces.variables.create @mutable tagmanager.accounts.containers.workspaces.variables.update",
          type = "string",
        },
        notes = {
          description = "User notes on how to apply this variable in the container. @mutable tagmanager.accounts.containers.workspaces.variables.create @mutable tagmanager.accounts.containers.workspaces.variables.update",
          type = "string",
        },
        parameter = {
          description = "The variable's parameters. @mutable tagmanager.accounts.containers.workspaces.variables.create @mutable tagmanager.accounts.containers.workspaces.variables.update",
          items = {
            ["$ref"] = "Parameter",
          },
          type = "array",
        },
        parentFolderId = {
          description = "Parent folder id.",
          type = "string",
        },
        path = {
          description = "GTM Variable's API relative path.",
          type = "string",
        },
        scheduleEndMs = {
          description = "The end timestamp in milliseconds to schedule a variable. @mutable tagmanager.accounts.containers.workspaces.variables.create @mutable tagmanager.accounts.containers.workspaces.variables.update",
          format = "int64",
          type = "string",
        },
        scheduleStartMs = {
          description = "The start timestamp in milliseconds to schedule a variable. @mutable tagmanager.accounts.containers.workspaces.variables.create @mutable tagmanager.accounts.containers.workspaces.variables.update",
          format = "int64",
          type = "string",
        },
        tagManagerUrl = {
          description = "Auto generated link to the tag manager UI",
          type = "string",
        },
        type = {
          annotations = {
            required = {
              "tagmanager.accounts.containers.workspaces.variables.create",
              "tagmanager.accounts.containers.workspaces.variables.update",
            },
          },
          description = "GTM Variable Type. @mutable tagmanager.accounts.containers.workspaces.variables.create @mutable tagmanager.accounts.containers.workspaces.variables.update",
          type = "string",
        },
        variableId = {
          description = "The Variable ID uniquely identifies the GTM Variable.",
          type = "string",
        },
        workspaceId = {
          description = "GTM Workspace ID.",
          type = "string",
        },
      },
      type = "object",
    },
    VariableFormatValue = {
      id = "VariableFormatValue",
      properties = {
        caseConversionType = {
          description = "The option to convert a string-type variable value to either lowercase or uppercase.",
          enum = {
            "none",
            "lowercase",
            "uppercase",
          },
          enumDescriptions = {
            "",
            "The option to convert a variable value to lowercase.",
            "The option to convert a variable value to uppercase.",
          },
          type = "string",
        },
        convertFalseToValue = {
          ["$ref"] = "Parameter",
          description = "The value to convert if a variable value is false.",
        },
        convertNullToValue = {
          ["$ref"] = "Parameter",
          description = "The value to convert if a variable value is null.",
        },
        convertTrueToValue = {
          ["$ref"] = "Parameter",
          description = "The value to convert if a variable value is true.",
        },
        convertUndefinedToValue = {
          ["$ref"] = "Parameter",
          description = "The value to convert if a variable value is undefined.",
        },
      },
      type = "object",
    },
    Workspace = {
      description = "Represents a Google Tag Manager Container Workspace.",
      id = "Workspace",
      properties = {
        accountId = {
          description = "GTM Account ID.",
          type = "string",
        },
        containerId = {
          description = "GTM Container ID.",
          type = "string",
        },
        description = {
          description = "Workspace description. @mutable tagmanager.accounts.containers.workspaces.create @mutable tagmanager.accounts.containers.workspaces.update",
          type = "string",
        },
        fingerprint = {
          description = "The fingerprint of the GTM Workspace as computed at storage time. This value is recomputed whenever the workspace is modified.",
          type = "string",
        },
        name = {
          annotations = {
            required = {
              "tagmanager.accounts.containers.workspaces.create",
              "tagmanager.accounts.containers.workspaces.update",
            },
          },
          description = "Workspace display name. @mutable tagmanager.accounts.containers.workspaces.create @mutable tagmanager.accounts.containers.workspaces.update",
          type = "string",
        },
        path = {
          description = "GTM Workspace's API relative path.",
          type = "string",
        },
        tagManagerUrl = {
          description = "Auto generated link to the tag manager UI",
          type = "string",
        },
        workspaceId = {
          description = "The Workspace ID uniquely identifies the GTM Workspace.",
          type = "string",
        },
      },
      type = "object",
    },
    Zone = {
      description = "Represents a Google Tag Manager Zone's contents.",
      id = "Zone",
      properties = {
        accountId = {
          description = "GTM Account ID.",
          type = "string",
        },
        boundary = {
          ["$ref"] = "ZoneBoundary",
          description = "This Zone's boundary.",
        },
        childContainer = {
          description = "Containers that are children of this Zone.",
          items = {
            ["$ref"] = "ZoneChildContainer",
          },
          type = "array",
        },
        containerId = {
          description = "GTM Container ID.",
          type = "string",
        },
        fingerprint = {
          description = "The fingerprint of the GTM Zone as computed at storage time. This value is recomputed whenever the zone is modified.",
          type = "string",
        },
        name = {
          description = "Zone display name.",
          type = "string",
        },
        notes = {
          description = "User notes on how to apply this zone in the container.",
          type = "string",
        },
        path = {
          description = "GTM Zone's API relative path.",
          type = "string",
        },
        tagManagerUrl = {
          description = "Auto generated link to the tag manager UI",
          type = "string",
        },
        typeRestriction = {
          ["$ref"] = "ZoneTypeRestriction",
          description = "This Zone's type restrictions.",
        },
        workspaceId = {
          description = "GTM Workspace ID.",
          type = "string",
        },
        zoneId = {
          description = "The Zone ID uniquely identifies the GTM Zone.",
          type = "string",
        },
      },
      type = "object",
    },
    ZoneBoundary = {
      description = "Represents a Zone's boundaries.",
      id = "ZoneBoundary",
      properties = {
        condition = {
          description = "The conditions that, when conjoined, make up the boundary.",
          items = {
            ["$ref"] = "Condition",
          },
          type = "array",
        },
        customEvaluationTriggerId = {
          description = "Custom evaluation trigger IDs. A zone will evaluate its boundary conditions when any of the listed triggers are true.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ZoneChildContainer = {
      description = "Represents a child container of a Zone.",
      id = "ZoneChildContainer",
      properties = {
        nickname = {
          description = "The zone's nickname for the child container.",
          type = "string",
        },
        publicId = {
          description = "The child container's public id.",
          type = "string",
        },
      },
      type = "object",
    },
    ZoneTypeRestriction = {
      description = "Represents a Zone's type restrictions.",
      id = "ZoneTypeRestriction",
      properties = {
        enable = {
          description = "True if type restrictions have been enabled for this Zone.",
          type = "boolean",
        },
        whitelistedTypeId = {
          description = "List of type public ids that have been whitelisted for use in this Zone.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
  },
  servicePath = "",
  title = "Tag Manager API",
  version = "v2",
}
