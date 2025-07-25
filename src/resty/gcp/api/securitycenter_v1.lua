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
  baseUrl = "https://securitycenter.googleapis.com/",
  batchPath = "batch",
  canonicalName = "Security Command Center",
  description = "Security Command Center API provides access to temporal views of assets and findings within an organization.",
  discoveryVersion = "v1",
  documentationLink = "https://cloud.google.com/security-command-center",
  fullyEncodeReservedExpansion = true,
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "securitycenter:v1",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://securitycenter.mtls.googleapis.com/",
  name = "securitycenter",
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
    folders = {
      resources = {
        assets = {
          methods = {
            group = {
              description = "Filters an organization's assets and groups them by their specified properties.",
              flatPath = "v1/folders/{foldersId}/assets:group",
              httpMethod = "POST",
              id = "securitycenter.folders.assets.group",
              parameterOrder = {
                "parent",
              },
              parameters = {
                parent = {
                  description = "Required. The name of the parent to group the assets by. Its format is \"organizations/[organization_id]\", \"folders/[folder_id]\", or \"projects/[project_id]\".",
                  location = "path",
                  pattern = "^folders/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/assets:group",
              request = {
                ["$ref"] = "GroupAssetsRequest",
              },
              response = {
                ["$ref"] = "GroupAssetsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            list = {
              description = "Lists an organization's assets.",
              flatPath = "v1/folders/{foldersId}/assets",
              httpMethod = "GET",
              id = "securitycenter.folders.assets.list",
              parameterOrder = {
                "parent",
              },
              parameters = {
                compareDuration = {
                  description = "When compare_duration is set, the ListAssetsResult's \"state_change\" attribute is updated to indicate whether the asset was added, removed, or remained present during the compare_duration period of time that precedes the read_time. This is the time between (read_time - compare_duration) and read_time. The state_change value is derived based on the presence of the asset at the two points in time. Intermediate state changes between the two times don't affect the result. For example, the results aren't affected if the asset is removed and re-created again. Possible \"state_change\" values when compare_duration is specified: * \"ADDED\": indicates that the asset was not present at the start of compare_duration, but present at read_time. * \"REMOVED\": indicates that the asset was present at the start of compare_duration, but not present at read_time. * \"ACTIVE\": indicates that the asset was present at both the start and the end of the time period defined by compare_duration and read_time. If compare_duration is not specified, then the only possible state_change is \"UNUSED\", which will be the state_change set for all assets present at read_time.",
                  format = "google-duration",
                  location = "query",
                  type = "string",
                },
                fieldMask = {
                  description = "A field mask to specify the ListAssetsResult fields to be listed in the response. An empty field mask will list all fields.",
                  format = "google-fieldmask",
                  location = "query",
                  type = "string",
                },
                filter = {
                  description = "Expression that defines the filter to apply across assets. The expression is a list of zero or more restrictions combined via logical operators `AND` and `OR`. Parentheses are supported, and `OR` has higher precedence than `AND`. Restrictions have the form ` ` and may have a `-` character in front of them to indicate negation. The fields map to those defined in the Asset resource. Examples include: * name * security_center_properties.resource_name * resource_properties.a_property * security_marks.marks.marka The supported operators are: * `=` for all value types. * `>`, `<`, `>=`, `<=` for integer values. * `:`, meaning substring matching, for strings. The supported value types are: * string literals in quotes. * integer literals without quotes. * boolean literals `true` and `false` without quotes. The following are the allowed field and operator combinations: * name: `=` * update_time: `=`, `>`, `<`, `>=`, `<=` Usage: This should be milliseconds since epoch or an RFC3339 string. Examples: `update_time = \"2019-06-10T16:07:18-07:00\"` `update_time = 1560208038000` * create_time: `=`, `>`, `<`, `>=`, `<=` Usage: This should be milliseconds since epoch or an RFC3339 string. Examples: `create_time = \"2019-06-10T16:07:18-07:00\"` `create_time = 1560208038000` * iam_policy.policy_blob: `=`, `:` * resource_properties: `=`, `:`, `>`, `<`, `>=`, `<=` * security_marks.marks: `=`, `:` * security_center_properties.resource_name: `=`, `:` * security_center_properties.resource_display_name: `=`, `:` * security_center_properties.resource_type: `=`, `:` * security_center_properties.resource_parent: `=`, `:` * security_center_properties.resource_parent_display_name: `=`, `:` * security_center_properties.resource_project: `=`, `:` * security_center_properties.resource_project_display_name: `=`, `:` * security_center_properties.resource_owners: `=`, `:` For example, `resource_properties.size = 100` is a valid filter string. Use a partial match on the empty string to filter based on a property existing: `resource_properties.my_property : \"\"` Use a negated partial match on the empty string to filter based on a property not existing: `-resource_properties.my_property : \"\"`",
                  location = "query",
                  type = "string",
                },
                orderBy = {
                  description = "Expression that defines what fields and order to use for sorting. The string value should follow SQL syntax: comma separated list of fields. For example: \"name,resource_properties.a_property\". The default sorting order is ascending. To specify descending order for a field, a suffix \" desc\" should be appended to the field name. For example: \"name desc,resource_properties.a_property\". Redundant space characters in the syntax are insignificant. \"name desc,resource_properties.a_property\" and \" name desc , resource_properties.a_property \" are equivalent. The following fields are supported: name update_time resource_properties security_marks.marks security_center_properties.resource_name security_center_properties.resource_display_name security_center_properties.resource_parent security_center_properties.resource_parent_display_name security_center_properties.resource_project security_center_properties.resource_project_display_name security_center_properties.resource_type",
                  location = "query",
                  type = "string",
                },
                pageSize = {
                  description = "The maximum number of results to return in a single response. Default is 10, minimum is 1, maximum is 1000.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "The value returned by the last `ListAssetsResponse`; indicates that this is a continuation of a prior `ListAssets` call, and that the system should return the next page of data.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "Required. The name of the parent that the listed assets belong to. Its format is \"organizations/[organization_id], \"folders/[folder_id]\", or \"projects/[project_id]\".",
                  location = "path",
                  pattern = "^folders/[^/]+$",
                  required = true,
                  type = "string",
                },
                readTime = {
                  description = "Time used as a reference point when filtering assets. The filter is limited to assets existing at the supplied time and their values are those at that specific time. Absence of this field will default to the API's version of NOW.",
                  format = "google-datetime",
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/{+parent}/assets",
              response = {
                ["$ref"] = "ListAssetsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            updateSecurityMarks = {
              description = "Updates security marks.",
              flatPath = "v1/folders/{foldersId}/assets/{assetsId}/securityMarks",
              httpMethod = "PATCH",
              id = "securitycenter.folders.assets.updateSecurityMarks",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "The relative resource name of the SecurityMarks. See: https://cloud.google.com/apis/design/resource_names#relative_resource_name Examples: \"organizations/{organization_id}/assets/{asset_id}/securityMarks\" \"organizations/{organization_id}/sources/{source_id}/findings/{finding_id}/securityMarks\".",
                  location = "path",
                  pattern = "^folders/[^/]+/assets/[^/]+/securityMarks$",
                  required = true,
                  type = "string",
                },
                startTime = {
                  description = "The time at which the updated SecurityMarks take effect. If not set uses current server time. Updates will be applied to the SecurityMarks that are active immediately preceding this time. Must be earlier or equal to the server time.",
                  format = "google-datetime",
                  location = "query",
                  type = "string",
                },
                updateMask = {
                  description = "The FieldMask to use when updating the security marks resource. The field mask must not contain duplicate fields. If empty or set to \"marks\", all marks will be replaced. Individual marks can be updated using \"marks.\".",
                  format = "google-fieldmask",
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/{+name}",
              request = {
                ["$ref"] = "SecurityMarks",
              },
              response = {
                ["$ref"] = "SecurityMarks",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
          },
        },
        bigQueryExports = {
          methods = {
            create = {
              description = "Creates a BigQuery export.",
              flatPath = "v1/folders/{foldersId}/bigQueryExports",
              httpMethod = "POST",
              id = "securitycenter.folders.bigQueryExports.create",
              parameterOrder = {
                "parent",
              },
              parameters = {
                bigQueryExportId = {
                  description = "Required. Unique identifier provided by the client within the parent scope. It must consist of lower case letters, numbers, and hyphen, with the first character a letter, the last a letter or a number, and a 63 character maximum.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "Required. The name of the parent resource of the new BigQuery export. Its format is \"organizations/[organization_id]\", \"folders/[folder_id]\", or \"projects/[project_id]\".",
                  location = "path",
                  pattern = "^folders/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/bigQueryExports",
              request = {
                ["$ref"] = "GoogleCloudSecuritycenterV1BigQueryExport",
              },
              response = {
                ["$ref"] = "GoogleCloudSecuritycenterV1BigQueryExport",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            delete = {
              description = "Deletes an existing BigQuery export.",
              flatPath = "v1/folders/{foldersId}/bigQueryExports/{bigQueryExportsId}",
              httpMethod = "DELETE",
              id = "securitycenter.folders.bigQueryExports.delete",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. The name of the BigQuery export to delete. Its format is organizations/{organization}/bigQueryExports/{export_id}, folders/{folder}/bigQueryExports/{export_id}, or projects/{project}/bigQueryExports/{export_id}",
                  location = "path",
                  pattern = "^folders/[^/]+/bigQueryExports/[^/]+$",
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
              description = "Gets a BigQuery export.",
              flatPath = "v1/folders/{foldersId}/bigQueryExports/{bigQueryExportsId}",
              httpMethod = "GET",
              id = "securitycenter.folders.bigQueryExports.get",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. Name of the BigQuery export to retrieve. Its format is organizations/{organization}/bigQueryExports/{export_id}, folders/{folder}/bigQueryExports/{export_id}, or projects/{project}/bigQueryExports/{export_id}",
                  location = "path",
                  pattern = "^folders/[^/]+/bigQueryExports/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}",
              response = {
                ["$ref"] = "GoogleCloudSecuritycenterV1BigQueryExport",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            list = {
              description = "Lists BigQuery exports. Note that when requesting BigQuery exports at a given level all exports under that level are also returned e.g. if requesting BigQuery exports under a folder, then all BigQuery exports immediately under the folder plus the ones created under the projects within the folder are returned.",
              flatPath = "v1/folders/{foldersId}/bigQueryExports",
              httpMethod = "GET",
              id = "securitycenter.folders.bigQueryExports.list",
              parameterOrder = {
                "parent",
              },
              parameters = {
                pageSize = {
                  description = "The maximum number of configs to return. The service may return fewer than this value. If unspecified, at most 10 configs will be returned. The maximum value is 1000; values above 1000 will be coerced to 1000.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "A page token, received from a previous `ListBigQueryExports` call. Provide this to retrieve the subsequent page. When paginating, all other parameters provided to `ListBigQueryExports` must match the call that provided the page token.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "Required. The parent, which owns the collection of BigQuery exports. Its format is \"organizations/[organization_id]\", \"folders/[folder_id]\", \"projects/[project_id]\".",
                  location = "path",
                  pattern = "^folders/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/bigQueryExports",
              response = {
                ["$ref"] = "ListBigQueryExportsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            patch = {
              description = "Updates a BigQuery export.",
              flatPath = "v1/folders/{foldersId}/bigQueryExports/{bigQueryExportsId}",
              httpMethod = "PATCH",
              id = "securitycenter.folders.bigQueryExports.patch",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "The relative resource name of this export. See: https://cloud.google.com/apis/design/resource_names#relative_resource_name. Example format: \"organizations/{organization_id}/bigQueryExports/{export_id}\" Example format: \"folders/{folder_id}/bigQueryExports/{export_id}\" Example format: \"projects/{project_id}/bigQueryExports/{export_id}\" This field is provided in responses, and is ignored when provided in create requests.",
                  location = "path",
                  pattern = "^folders/[^/]+/bigQueryExports/[^/]+$",
                  required = true,
                  type = "string",
                },
                updateMask = {
                  description = "The list of fields to be updated. If empty all mutable fields will be updated.",
                  format = "google-fieldmask",
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/{+name}",
              request = {
                ["$ref"] = "GoogleCloudSecuritycenterV1BigQueryExport",
              },
              response = {
                ["$ref"] = "GoogleCloudSecuritycenterV1BigQueryExport",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
          },
        },
        findings = {
          methods = {
            bulkMute = {
              description = "Kicks off an LRO to bulk mute findings for a parent based on a filter. The parent can be either an organization, folder or project. The findings matched by the filter will be muted after the LRO is done.",
              flatPath = "v1/folders/{foldersId}/findings:bulkMute",
              httpMethod = "POST",
              id = "securitycenter.folders.findings.bulkMute",
              parameterOrder = {
                "parent",
              },
              parameters = {
                parent = {
                  description = "Required. The parent, at which bulk action needs to be applied. Its format is \"organizations/[organization_id]\", \"folders/[folder_id]\", \"projects/[project_id]\".",
                  location = "path",
                  pattern = "^folders/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/findings:bulkMute",
              request = {
                ["$ref"] = "BulkMuteFindingsRequest",
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
        muteConfigs = {
          methods = {
            create = {
              description = "Creates a mute config.",
              flatPath = "v1/folders/{foldersId}/muteConfigs",
              httpMethod = "POST",
              id = "securitycenter.folders.muteConfigs.create",
              parameterOrder = {
                "parent",
              },
              parameters = {
                muteConfigId = {
                  description = "Required. Unique identifier provided by the client within the parent scope. It must consist of lower case letters, numbers, and hyphen, with the first character a letter, the last a letter or a number, and a 63 character maximum.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "Required. Resource name of the new mute configs's parent. Its format is \"organizations/[organization_id]\", \"folders/[folder_id]\", or \"projects/[project_id]\".",
                  location = "path",
                  pattern = "^folders/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/muteConfigs",
              request = {
                ["$ref"] = "GoogleCloudSecuritycenterV1MuteConfig",
              },
              response = {
                ["$ref"] = "GoogleCloudSecuritycenterV1MuteConfig",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            delete = {
              description = "Deletes an existing mute config.",
              flatPath = "v1/folders/{foldersId}/muteConfigs/{muteConfigsId}",
              httpMethod = "DELETE",
              id = "securitycenter.folders.muteConfigs.delete",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. Name of the mute config to delete. Its format is organizations/{organization}/muteConfigs/{config_id}, folders/{folder}/muteConfigs/{config_id}, or projects/{project}/muteConfigs/{config_id}",
                  location = "path",
                  pattern = "^folders/[^/]+/muteConfigs/[^/]+$",
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
              description = "Gets a mute config.",
              flatPath = "v1/folders/{foldersId}/muteConfigs/{muteConfigsId}",
              httpMethod = "GET",
              id = "securitycenter.folders.muteConfigs.get",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. Name of the mute config to retrieve. Its format is organizations/{organization}/muteConfigs/{config_id}, folders/{folder}/muteConfigs/{config_id}, or projects/{project}/muteConfigs/{config_id}",
                  location = "path",
                  pattern = "^folders/[^/]+/muteConfigs/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}",
              response = {
                ["$ref"] = "GoogleCloudSecuritycenterV1MuteConfig",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            list = {
              description = "Lists mute configs.",
              flatPath = "v1/folders/{foldersId}/muteConfigs",
              httpMethod = "GET",
              id = "securitycenter.folders.muteConfigs.list",
              parameterOrder = {
                "parent",
              },
              parameters = {
                pageSize = {
                  description = "The maximum number of configs to return. The service may return fewer than this value. If unspecified, at most 10 configs will be returned. The maximum value is 1000; values above 1000 will be coerced to 1000.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "A page token, received from a previous `ListMuteConfigs` call. Provide this to retrieve the subsequent page. When paginating, all other parameters provided to `ListMuteConfigs` must match the call that provided the page token.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "Required. The parent, which owns the collection of mute configs. Its format is \"organizations/[organization_id]\", \"folders/[folder_id]\", \"projects/[project_id]\".",
                  location = "path",
                  pattern = "^folders/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/muteConfigs",
              response = {
                ["$ref"] = "ListMuteConfigsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            patch = {
              description = "Updates a mute config.",
              flatPath = "v1/folders/{foldersId}/muteConfigs/{muteConfigsId}",
              httpMethod = "PATCH",
              id = "securitycenter.folders.muteConfigs.patch",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "This field will be ignored if provided on config creation. Format \"organizations/{organization}/muteConfigs/{mute_config}\" \"folders/{folder}/muteConfigs/{mute_config}\" \"projects/{project}/muteConfigs/{mute_config}\"",
                  location = "path",
                  pattern = "^folders/[^/]+/muteConfigs/[^/]+$",
                  required = true,
                  type = "string",
                },
                updateMask = {
                  description = "The list of fields to be updated. If empty all mutable fields will be updated.",
                  format = "google-fieldmask",
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/{+name}",
              request = {
                ["$ref"] = "GoogleCloudSecuritycenterV1MuteConfig",
              },
              response = {
                ["$ref"] = "GoogleCloudSecuritycenterV1MuteConfig",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
          },
        },
        notificationConfigs = {
          methods = {
            create = {
              description = "Creates a notification config.",
              flatPath = "v1/folders/{foldersId}/notificationConfigs",
              httpMethod = "POST",
              id = "securitycenter.folders.notificationConfigs.create",
              parameterOrder = {
                "parent",
              },
              parameters = {
                configId = {
                  description = "Required. Unique identifier provided by the client within the parent scope. It must be between 1 and 128 characters and contain alphanumeric characters, underscores, or hyphens only.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "Required. Resource name of the new notification config's parent. Its format is \"organizations/[organization_id]\", \"folders/[folder_id]\", or \"projects/[project_id]\".",
                  location = "path",
                  pattern = "^folders/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/notificationConfigs",
              request = {
                ["$ref"] = "NotificationConfig",
              },
              response = {
                ["$ref"] = "NotificationConfig",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            delete = {
              description = "Deletes a notification config.",
              flatPath = "v1/folders/{foldersId}/notificationConfigs/{notificationConfigsId}",
              httpMethod = "DELETE",
              id = "securitycenter.folders.notificationConfigs.delete",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. Name of the notification config to delete. Its format is \"organizations/[organization_id]/notificationConfigs/[config_id]\", \"folders/[folder_id]/notificationConfigs/[config_id]\", or \"projects/[project_id]/notificationConfigs/[config_id]\".",
                  location = "path",
                  pattern = "^folders/[^/]+/notificationConfigs/[^/]+$",
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
              description = "Gets a notification config.",
              flatPath = "v1/folders/{foldersId}/notificationConfigs/{notificationConfigsId}",
              httpMethod = "GET",
              id = "securitycenter.folders.notificationConfigs.get",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. Name of the notification config to get. Its format is \"organizations/[organization_id]/notificationConfigs/[config_id]\", \"folders/[folder_id]/notificationConfigs/[config_id]\", or \"projects/[project_id]/notificationConfigs/[config_id]\".",
                  location = "path",
                  pattern = "^folders/[^/]+/notificationConfigs/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}",
              response = {
                ["$ref"] = "NotificationConfig",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            list = {
              description = "Lists notification configs.",
              flatPath = "v1/folders/{foldersId}/notificationConfigs",
              httpMethod = "GET",
              id = "securitycenter.folders.notificationConfigs.list",
              parameterOrder = {
                "parent",
              },
              parameters = {
                pageSize = {
                  description = "The maximum number of results to return in a single response. Default is 10, minimum is 1, maximum is 1000.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "The value returned by the last `ListNotificationConfigsResponse`; indicates that this is a continuation of a prior `ListNotificationConfigs` call, and that the system should return the next page of data.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "Required. The name of the parent in which to list the notification configurations. Its format is \"organizations/[organization_id]\", \"folders/[folder_id]\", or \"projects/[project_id]\".",
                  location = "path",
                  pattern = "^folders/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/notificationConfigs",
              response = {
                ["$ref"] = "ListNotificationConfigsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            patch = {
              description = " Updates a notification config. The following update fields are allowed: description, pubsub_topic, streaming_config.filter",
              flatPath = "v1/folders/{foldersId}/notificationConfigs/{notificationConfigsId}",
              httpMethod = "PATCH",
              id = "securitycenter.folders.notificationConfigs.patch",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "The relative resource name of this notification config. See: https://cloud.google.com/apis/design/resource_names#relative_resource_name Example: \"organizations/{organization_id}/notificationConfigs/notify_public_bucket\", \"folders/{folder_id}/notificationConfigs/notify_public_bucket\", or \"projects/{project_id}/notificationConfigs/notify_public_bucket\".",
                  location = "path",
                  pattern = "^folders/[^/]+/notificationConfigs/[^/]+$",
                  required = true,
                  type = "string",
                },
                updateMask = {
                  description = "The FieldMask to use when updating the notification config. If empty all mutable fields will be updated.",
                  format = "google-fieldmask",
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/{+name}",
              request = {
                ["$ref"] = "NotificationConfig",
              },
              response = {
                ["$ref"] = "NotificationConfig",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
          },
        },
        sources = {
          methods = {
            list = {
              description = "Lists all sources belonging to an organization.",
              flatPath = "v1/folders/{foldersId}/sources",
              httpMethod = "GET",
              id = "securitycenter.folders.sources.list",
              parameterOrder = {
                "parent",
              },
              parameters = {
                pageSize = {
                  description = "The maximum number of results to return in a single response. Default is 10, minimum is 1, maximum is 1000.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "The value returned by the last `ListSourcesResponse`; indicates that this is a continuation of a prior `ListSources` call, and that the system should return the next page of data.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "Required. Resource name of the parent of sources to list. Its format should be \"organizations/[organization_id], \"folders/[folder_id]\", or \"projects/[project_id]\".",
                  location = "path",
                  pattern = "^folders/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/sources",
              response = {
                ["$ref"] = "ListSourcesResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
          },
          resources = {
            findings = {
              methods = {
                group = {
                  description = "Filters an organization or source's findings and groups them by their specified properties. To group across all sources provide a `-` as the source id. Example: /v1/organizations/{organization_id}/sources/-/findings, /v1/folders/{folder_id}/sources/-/findings, /v1/projects/{project_id}/sources/-/findings",
                  flatPath = "v1/folders/{foldersId}/sources/{sourcesId}/findings:group",
                  httpMethod = "POST",
                  id = "securitycenter.folders.sources.findings.group",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    parent = {
                      description = "Required. Name of the source to groupBy. Its format is \"organizations/[organization_id]/sources/[source_id]\", folders/[folder_id]/sources/[source_id], or projects/[project_id]/sources/[source_id]. To groupBy across all sources provide a source_id of `-`. For example: organizations/{organization_id}/sources/-, folders/{folder_id}/sources/-, or projects/{project_id}/sources/-",
                      location = "path",
                      pattern = "^folders/[^/]+/sources/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/findings:group",
                  request = {
                    ["$ref"] = "GroupFindingsRequest",
                  },
                  response = {
                    ["$ref"] = "GroupFindingsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                list = {
                  description = "Lists an organization or source's findings. To list across all sources provide a `-` as the source id. Example: /v1/organizations/{organization_id}/sources/-/findings",
                  flatPath = "v1/folders/{foldersId}/sources/{sourcesId}/findings",
                  httpMethod = "GET",
                  id = "securitycenter.folders.sources.findings.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    compareDuration = {
                      description = "When compare_duration is set, the ListFindingsResult's \"state_change\" attribute is updated to indicate whether the finding had its state changed, the finding's state remained unchanged, or if the finding was added in any state during the compare_duration period of time that precedes the read_time. This is the time between (read_time - compare_duration) and read_time. The state_change value is derived based on the presence and state of the finding at the two points in time. Intermediate state changes between the two times don't affect the result. For example, the results aren't affected if the finding is made inactive and then active again. Possible \"state_change\" values when compare_duration is specified: * \"CHANGED\": indicates that the finding was present and matched the given filter at the start of compare_duration, but changed its state at read_time. * \"UNCHANGED\": indicates that the finding was present and matched the given filter at the start of compare_duration and did not change state at read_time. * \"ADDED\": indicates that the finding did not match the given filter or was not present at the start of compare_duration, but was present at read_time. * \"REMOVED\": indicates that the finding was present and matched the filter at the start of compare_duration, but did not match the filter at read_time. If compare_duration is not specified, then the only possible state_change is \"UNUSED\", which will be the state_change set for all findings present at read_time.",
                      format = "google-duration",
                      location = "query",
                      type = "string",
                    },
                    fieldMask = {
                      description = "A field mask to specify the Finding fields to be listed in the response. An empty field mask will list all fields.",
                      format = "google-fieldmask",
                      location = "query",
                      type = "string",
                    },
                    filter = {
                      description = "Expression that defines the filter to apply across findings. The expression is a list of one or more restrictions combined via logical operators `AND` and `OR`. Parentheses are supported, and `OR` has higher precedence than `AND`. Restrictions have the form ` ` and may have a `-` character in front of them to indicate negation. Examples include: * name * source_properties.a_property * security_marks.marks.marka The supported operators are: * `=` for all value types. * `>`, `<`, `>=`, `<=` for integer values. * `:`, meaning substring matching, for strings. The supported value types are: * string literals in quotes. * integer literals without quotes. * boolean literals `true` and `false` without quotes. The following field and operator combinations are supported: * name: `=` * parent: `=`, `:` * resource_name: `=`, `:` * state: `=`, `:` * category: `=`, `:` * external_uri: `=`, `:` * event_time: `=`, `>`, `<`, `>=`, `<=` Usage: This should be milliseconds since epoch or an RFC3339 string. Examples: `event_time = \"2019-06-10T16:07:18-07:00\"` `event_time = 1560208038000` * severity: `=`, `:` * workflow_state: `=`, `:` * security_marks.marks: `=`, `:` * source_properties: `=`, `:`, `>`, `<`, `>=`, `<=` For example, `source_properties.size = 100` is a valid filter string. Use a partial match on the empty string to filter based on a property existing: `source_properties.my_property : \"\"` Use a negated partial match on the empty string to filter based on a property not existing: `-source_properties.my_property : \"\"` * resource: * resource.name: `=`, `:` * resource.parent_name: `=`, `:` * resource.parent_display_name: `=`, `:` * resource.project_name: `=`, `:` * resource.project_display_name: `=`, `:` * resource.type: `=`, `:` * resource.folders.resource_folder: `=`, `:` * resource.display_name: `=`, `:`",
                      location = "query",
                      type = "string",
                    },
                    orderBy = {
                      description = "Expression that defines what fields and order to use for sorting. The string value should follow SQL syntax: comma separated list of fields. For example: \"name,resource_properties.a_property\". The default sorting order is ascending. To specify descending order for a field, a suffix \" desc\" should be appended to the field name. For example: \"name desc,source_properties.a_property\". Redundant space characters in the syntax are insignificant. \"name desc,source_properties.a_property\" and \" name desc , source_properties.a_property \" are equivalent. The following fields are supported: name parent state category resource_name event_time source_properties security_marks.marks",
                      location = "query",
                      type = "string",
                    },
                    pageSize = {
                      description = "The maximum number of results to return in a single response. Default is 10, minimum is 1, maximum is 1000.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "The value returned by the last `ListFindingsResponse`; indicates that this is a continuation of a prior `ListFindings` call, and that the system should return the next page of data.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. Name of the source the findings belong to. Its format is \"organizations/[organization_id]/sources/[source_id], folders/[folder_id]/sources/[source_id], or projects/[project_id]/sources/[source_id]\". To list across all sources provide a source_id of `-`. For example: organizations/{organization_id}/sources/-, folders/{folder_id}/sources/- or projects/{projects_id}/sources/-",
                      location = "path",
                      pattern = "^folders/[^/]+/sources/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    readTime = {
                      description = "Time used as a reference point when filtering findings. The filter is limited to findings existing at the supplied time and their values are those at that specific time. Absence of this field will default to the API's version of NOW.",
                      format = "google-datetime",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/findings",
                  response = {
                    ["$ref"] = "ListFindingsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                patch = {
                  description = "Creates or updates a finding. The corresponding source must exist for a finding creation to succeed.",
                  flatPath = "v1/folders/{foldersId}/sources/{sourcesId}/findings/{findingsId}",
                  httpMethod = "PATCH",
                  id = "securitycenter.folders.sources.findings.patch",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "The relative resource name of this finding. See: https://cloud.google.com/apis/design/resource_names#relative_resource_name Example: \"organizations/{organization_id}/sources/{source_id}/findings/{finding_id}\"",
                      location = "path",
                      pattern = "^folders/[^/]+/sources/[^/]+/findings/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    updateMask = {
                      description = "The FieldMask to use when updating the finding resource. This field should not be specified when creating a finding. When updating a finding, an empty mask is treated as updating all mutable fields and replacing source_properties. Individual source_properties can be added/updated by using \"source_properties.\" in the field mask.",
                      format = "google-fieldmask",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  request = {
                    ["$ref"] = "Finding",
                  },
                  response = {
                    ["$ref"] = "Finding",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                setMute = {
                  description = "Updates the mute state of a finding.",
                  flatPath = "v1/folders/{foldersId}/sources/{sourcesId}/findings/{findingsId}:setMute",
                  httpMethod = "POST",
                  id = "securitycenter.folders.sources.findings.setMute",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The [relative resource name](https://cloud.google.com/apis/design/resource_names#relative_resource_name) of the finding. Example: \"organizations/{organization_id}/sources/{source_id}/findings/{finding_id}\", \"folders/{folder_id}/sources/{source_id}/findings/{finding_id}\", \"projects/{project_id}/sources/{source_id}/findings/{finding_id}\".",
                      location = "path",
                      pattern = "^folders/[^/]+/sources/[^/]+/findings/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}:setMute",
                  request = {
                    ["$ref"] = "SetMuteRequest",
                  },
                  response = {
                    ["$ref"] = "Finding",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                setState = {
                  description = "Updates the state of a finding.",
                  flatPath = "v1/folders/{foldersId}/sources/{sourcesId}/findings/{findingsId}:setState",
                  httpMethod = "POST",
                  id = "securitycenter.folders.sources.findings.setState",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The [relative resource name](https://cloud.google.com/apis/design/resource_names#relative_resource_name) of the finding. Example: \"organizations/{organization_id}/sources/{source_id}/findings/{finding_id}\", \"folders/{folder_id}/sources/{source_id}/findings/{finding_id}\", \"projects/{project_id}/sources/{source_id}/findings/{finding_id}\".",
                      location = "path",
                      pattern = "^folders/[^/]+/sources/[^/]+/findings/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}:setState",
                  request = {
                    ["$ref"] = "SetFindingStateRequest",
                  },
                  response = {
                    ["$ref"] = "Finding",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                updateSecurityMarks = {
                  description = "Updates security marks.",
                  flatPath = "v1/folders/{foldersId}/sources/{sourcesId}/findings/{findingsId}/securityMarks",
                  httpMethod = "PATCH",
                  id = "securitycenter.folders.sources.findings.updateSecurityMarks",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "The relative resource name of the SecurityMarks. See: https://cloud.google.com/apis/design/resource_names#relative_resource_name Examples: \"organizations/{organization_id}/assets/{asset_id}/securityMarks\" \"organizations/{organization_id}/sources/{source_id}/findings/{finding_id}/securityMarks\".",
                      location = "path",
                      pattern = "^folders/[^/]+/sources/[^/]+/findings/[^/]+/securityMarks$",
                      required = true,
                      type = "string",
                    },
                    startTime = {
                      description = "The time at which the updated SecurityMarks take effect. If not set uses current server time. Updates will be applied to the SecurityMarks that are active immediately preceding this time. Must be earlier or equal to the server time.",
                      format = "google-datetime",
                      location = "query",
                      type = "string",
                    },
                    updateMask = {
                      description = "The FieldMask to use when updating the security marks resource. The field mask must not contain duplicate fields. If empty or set to \"marks\", all marks will be replaced. Individual marks can be updated using \"marks.\".",
                      format = "google-fieldmask",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  request = {
                    ["$ref"] = "SecurityMarks",
                  },
                  response = {
                    ["$ref"] = "SecurityMarks",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
              },
              resources = {
                externalSystems = {
                  methods = {
                    patch = {
                      description = "Updates external system. This is for a given finding.",
                      flatPath = "v1/folders/{foldersId}/sources/{sourcesId}/findings/{findingsId}/externalSystems/{externalSystemsId}",
                      httpMethod = "PATCH",
                      id = "securitycenter.folders.sources.findings.externalSystems.patch",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Full resource name of the external system, for example: \"organizations/1234/sources/5678/findings/123456/externalSystems/jira\", \"folders/1234/sources/5678/findings/123456/externalSystems/jira\", \"projects/1234/sources/5678/findings/123456/externalSystems/jira\"",
                          location = "path",
                          pattern = "^folders/[^/]+/sources/[^/]+/findings/[^/]+/externalSystems/[^/]+$",
                          required = true,
                          type = "string",
                        },
                        updateMask = {
                          description = "The FieldMask to use when updating the external system resource. If empty all mutable fields will be updated.",
                          format = "google-fieldmask",
                          location = "query",
                          type = "string",
                        },
                      },
                      path = "v1/{+name}",
                      request = {
                        ["$ref"] = "GoogleCloudSecuritycenterV1ExternalSystem",
                      },
                      response = {
                        ["$ref"] = "GoogleCloudSecuritycenterV1ExternalSystem",
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
    organizations = {
      methods = {
        getOrganizationSettings = {
          description = "Gets the settings for an organization.",
          flatPath = "v1/organizations/{organizationsId}/organizationSettings",
          httpMethod = "GET",
          id = "securitycenter.organizations.getOrganizationSettings",
          parameterOrder = {
            "name",
          },
          parameters = {
            name = {
              description = "Required. Name of the organization to get organization settings for. Its format is \"organizations/[organization_id]/organizationSettings\".",
              location = "path",
              pattern = "^organizations/[^/]+/organizationSettings$",
              required = true,
              type = "string",
            },
          },
          path = "v1/{+name}",
          response = {
            ["$ref"] = "OrganizationSettings",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
        updateOrganizationSettings = {
          description = "Updates an organization's settings.",
          flatPath = "v1/organizations/{organizationsId}/organizationSettings",
          httpMethod = "PATCH",
          id = "securitycenter.organizations.updateOrganizationSettings",
          parameterOrder = {
            "name",
          },
          parameters = {
            name = {
              description = "The relative resource name of the settings. See: https://cloud.google.com/apis/design/resource_names#relative_resource_name Example: \"organizations/{organization_id}/organizationSettings\".",
              location = "path",
              pattern = "^organizations/[^/]+/organizationSettings$",
              required = true,
              type = "string",
            },
            updateMask = {
              description = "The FieldMask to use when updating the settings resource. If empty all mutable fields will be updated.",
              format = "google-fieldmask",
              location = "query",
              type = "string",
            },
          },
          path = "v1/{+name}",
          request = {
            ["$ref"] = "OrganizationSettings",
          },
          response = {
            ["$ref"] = "OrganizationSettings",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
      },
      resources = {
        assets = {
          methods = {
            group = {
              description = "Filters an organization's assets and groups them by their specified properties.",
              flatPath = "v1/organizations/{organizationsId}/assets:group",
              httpMethod = "POST",
              id = "securitycenter.organizations.assets.group",
              parameterOrder = {
                "parent",
              },
              parameters = {
                parent = {
                  description = "Required. The name of the parent to group the assets by. Its format is \"organizations/[organization_id]\", \"folders/[folder_id]\", or \"projects/[project_id]\".",
                  location = "path",
                  pattern = "^organizations/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/assets:group",
              request = {
                ["$ref"] = "GroupAssetsRequest",
              },
              response = {
                ["$ref"] = "GroupAssetsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            list = {
              description = "Lists an organization's assets.",
              flatPath = "v1/organizations/{organizationsId}/assets",
              httpMethod = "GET",
              id = "securitycenter.organizations.assets.list",
              parameterOrder = {
                "parent",
              },
              parameters = {
                compareDuration = {
                  description = "When compare_duration is set, the ListAssetsResult's \"state_change\" attribute is updated to indicate whether the asset was added, removed, or remained present during the compare_duration period of time that precedes the read_time. This is the time between (read_time - compare_duration) and read_time. The state_change value is derived based on the presence of the asset at the two points in time. Intermediate state changes between the two times don't affect the result. For example, the results aren't affected if the asset is removed and re-created again. Possible \"state_change\" values when compare_duration is specified: * \"ADDED\": indicates that the asset was not present at the start of compare_duration, but present at read_time. * \"REMOVED\": indicates that the asset was present at the start of compare_duration, but not present at read_time. * \"ACTIVE\": indicates that the asset was present at both the start and the end of the time period defined by compare_duration and read_time. If compare_duration is not specified, then the only possible state_change is \"UNUSED\", which will be the state_change set for all assets present at read_time.",
                  format = "google-duration",
                  location = "query",
                  type = "string",
                },
                fieldMask = {
                  description = "A field mask to specify the ListAssetsResult fields to be listed in the response. An empty field mask will list all fields.",
                  format = "google-fieldmask",
                  location = "query",
                  type = "string",
                },
                filter = {
                  description = "Expression that defines the filter to apply across assets. The expression is a list of zero or more restrictions combined via logical operators `AND` and `OR`. Parentheses are supported, and `OR` has higher precedence than `AND`. Restrictions have the form ` ` and may have a `-` character in front of them to indicate negation. The fields map to those defined in the Asset resource. Examples include: * name * security_center_properties.resource_name * resource_properties.a_property * security_marks.marks.marka The supported operators are: * `=` for all value types. * `>`, `<`, `>=`, `<=` for integer values. * `:`, meaning substring matching, for strings. The supported value types are: * string literals in quotes. * integer literals without quotes. * boolean literals `true` and `false` without quotes. The following are the allowed field and operator combinations: * name: `=` * update_time: `=`, `>`, `<`, `>=`, `<=` Usage: This should be milliseconds since epoch or an RFC3339 string. Examples: `update_time = \"2019-06-10T16:07:18-07:00\"` `update_time = 1560208038000` * create_time: `=`, `>`, `<`, `>=`, `<=` Usage: This should be milliseconds since epoch or an RFC3339 string. Examples: `create_time = \"2019-06-10T16:07:18-07:00\"` `create_time = 1560208038000` * iam_policy.policy_blob: `=`, `:` * resource_properties: `=`, `:`, `>`, `<`, `>=`, `<=` * security_marks.marks: `=`, `:` * security_center_properties.resource_name: `=`, `:` * security_center_properties.resource_display_name: `=`, `:` * security_center_properties.resource_type: `=`, `:` * security_center_properties.resource_parent: `=`, `:` * security_center_properties.resource_parent_display_name: `=`, `:` * security_center_properties.resource_project: `=`, `:` * security_center_properties.resource_project_display_name: `=`, `:` * security_center_properties.resource_owners: `=`, `:` For example, `resource_properties.size = 100` is a valid filter string. Use a partial match on the empty string to filter based on a property existing: `resource_properties.my_property : \"\"` Use a negated partial match on the empty string to filter based on a property not existing: `-resource_properties.my_property : \"\"`",
                  location = "query",
                  type = "string",
                },
                orderBy = {
                  description = "Expression that defines what fields and order to use for sorting. The string value should follow SQL syntax: comma separated list of fields. For example: \"name,resource_properties.a_property\". The default sorting order is ascending. To specify descending order for a field, a suffix \" desc\" should be appended to the field name. For example: \"name desc,resource_properties.a_property\". Redundant space characters in the syntax are insignificant. \"name desc,resource_properties.a_property\" and \" name desc , resource_properties.a_property \" are equivalent. The following fields are supported: name update_time resource_properties security_marks.marks security_center_properties.resource_name security_center_properties.resource_display_name security_center_properties.resource_parent security_center_properties.resource_parent_display_name security_center_properties.resource_project security_center_properties.resource_project_display_name security_center_properties.resource_type",
                  location = "query",
                  type = "string",
                },
                pageSize = {
                  description = "The maximum number of results to return in a single response. Default is 10, minimum is 1, maximum is 1000.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "The value returned by the last `ListAssetsResponse`; indicates that this is a continuation of a prior `ListAssets` call, and that the system should return the next page of data.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "Required. The name of the parent that the listed assets belong to. Its format is \"organizations/[organization_id], \"folders/[folder_id]\", or \"projects/[project_id]\".",
                  location = "path",
                  pattern = "^organizations/[^/]+$",
                  required = true,
                  type = "string",
                },
                readTime = {
                  description = "Time used as a reference point when filtering assets. The filter is limited to assets existing at the supplied time and their values are those at that specific time. Absence of this field will default to the API's version of NOW.",
                  format = "google-datetime",
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/{+parent}/assets",
              response = {
                ["$ref"] = "ListAssetsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            runDiscovery = {
              description = "Runs asset discovery. The discovery is tracked with a long-running operation. This API can only be called with limited frequency for an organization. If it is called too frequently the caller will receive a TOO_MANY_REQUESTS error.",
              flatPath = "v1/organizations/{organizationsId}/assets:runDiscovery",
              httpMethod = "POST",
              id = "securitycenter.organizations.assets.runDiscovery",
              parameterOrder = {
                "parent",
              },
              parameters = {
                parent = {
                  description = "Required. Name of the organization to run asset discovery for. Its format is \"organizations/[organization_id]\".",
                  location = "path",
                  pattern = "^organizations/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/assets:runDiscovery",
              request = {
                ["$ref"] = "RunAssetDiscoveryRequest",
              },
              response = {
                ["$ref"] = "Operation",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            updateSecurityMarks = {
              description = "Updates security marks.",
              flatPath = "v1/organizations/{organizationsId}/assets/{assetsId}/securityMarks",
              httpMethod = "PATCH",
              id = "securitycenter.organizations.assets.updateSecurityMarks",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "The relative resource name of the SecurityMarks. See: https://cloud.google.com/apis/design/resource_names#relative_resource_name Examples: \"organizations/{organization_id}/assets/{asset_id}/securityMarks\" \"organizations/{organization_id}/sources/{source_id}/findings/{finding_id}/securityMarks\".",
                  location = "path",
                  pattern = "^organizations/[^/]+/assets/[^/]+/securityMarks$",
                  required = true,
                  type = "string",
                },
                startTime = {
                  description = "The time at which the updated SecurityMarks take effect. If not set uses current server time. Updates will be applied to the SecurityMarks that are active immediately preceding this time. Must be earlier or equal to the server time.",
                  format = "google-datetime",
                  location = "query",
                  type = "string",
                },
                updateMask = {
                  description = "The FieldMask to use when updating the security marks resource. The field mask must not contain duplicate fields. If empty or set to \"marks\", all marks will be replaced. Individual marks can be updated using \"marks.\".",
                  format = "google-fieldmask",
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/{+name}",
              request = {
                ["$ref"] = "SecurityMarks",
              },
              response = {
                ["$ref"] = "SecurityMarks",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
          },
        },
        bigQueryExports = {
          methods = {
            create = {
              description = "Creates a BigQuery export.",
              flatPath = "v1/organizations/{organizationsId}/bigQueryExports",
              httpMethod = "POST",
              id = "securitycenter.organizations.bigQueryExports.create",
              parameterOrder = {
                "parent",
              },
              parameters = {
                bigQueryExportId = {
                  description = "Required. Unique identifier provided by the client within the parent scope. It must consist of lower case letters, numbers, and hyphen, with the first character a letter, the last a letter or a number, and a 63 character maximum.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "Required. The name of the parent resource of the new BigQuery export. Its format is \"organizations/[organization_id]\", \"folders/[folder_id]\", or \"projects/[project_id]\".",
                  location = "path",
                  pattern = "^organizations/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/bigQueryExports",
              request = {
                ["$ref"] = "GoogleCloudSecuritycenterV1BigQueryExport",
              },
              response = {
                ["$ref"] = "GoogleCloudSecuritycenterV1BigQueryExport",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            delete = {
              description = "Deletes an existing BigQuery export.",
              flatPath = "v1/organizations/{organizationsId}/bigQueryExports/{bigQueryExportsId}",
              httpMethod = "DELETE",
              id = "securitycenter.organizations.bigQueryExports.delete",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. The name of the BigQuery export to delete. Its format is organizations/{organization}/bigQueryExports/{export_id}, folders/{folder}/bigQueryExports/{export_id}, or projects/{project}/bigQueryExports/{export_id}",
                  location = "path",
                  pattern = "^organizations/[^/]+/bigQueryExports/[^/]+$",
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
              description = "Gets a BigQuery export.",
              flatPath = "v1/organizations/{organizationsId}/bigQueryExports/{bigQueryExportsId}",
              httpMethod = "GET",
              id = "securitycenter.organizations.bigQueryExports.get",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. Name of the BigQuery export to retrieve. Its format is organizations/{organization}/bigQueryExports/{export_id}, folders/{folder}/bigQueryExports/{export_id}, or projects/{project}/bigQueryExports/{export_id}",
                  location = "path",
                  pattern = "^organizations/[^/]+/bigQueryExports/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}",
              response = {
                ["$ref"] = "GoogleCloudSecuritycenterV1BigQueryExport",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            list = {
              description = "Lists BigQuery exports. Note that when requesting BigQuery exports at a given level all exports under that level are also returned e.g. if requesting BigQuery exports under a folder, then all BigQuery exports immediately under the folder plus the ones created under the projects within the folder are returned.",
              flatPath = "v1/organizations/{organizationsId}/bigQueryExports",
              httpMethod = "GET",
              id = "securitycenter.organizations.bigQueryExports.list",
              parameterOrder = {
                "parent",
              },
              parameters = {
                pageSize = {
                  description = "The maximum number of configs to return. The service may return fewer than this value. If unspecified, at most 10 configs will be returned. The maximum value is 1000; values above 1000 will be coerced to 1000.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "A page token, received from a previous `ListBigQueryExports` call. Provide this to retrieve the subsequent page. When paginating, all other parameters provided to `ListBigQueryExports` must match the call that provided the page token.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "Required. The parent, which owns the collection of BigQuery exports. Its format is \"organizations/[organization_id]\", \"folders/[folder_id]\", \"projects/[project_id]\".",
                  location = "path",
                  pattern = "^organizations/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/bigQueryExports",
              response = {
                ["$ref"] = "ListBigQueryExportsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            patch = {
              description = "Updates a BigQuery export.",
              flatPath = "v1/organizations/{organizationsId}/bigQueryExports/{bigQueryExportsId}",
              httpMethod = "PATCH",
              id = "securitycenter.organizations.bigQueryExports.patch",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "The relative resource name of this export. See: https://cloud.google.com/apis/design/resource_names#relative_resource_name. Example format: \"organizations/{organization_id}/bigQueryExports/{export_id}\" Example format: \"folders/{folder_id}/bigQueryExports/{export_id}\" Example format: \"projects/{project_id}/bigQueryExports/{export_id}\" This field is provided in responses, and is ignored when provided in create requests.",
                  location = "path",
                  pattern = "^organizations/[^/]+/bigQueryExports/[^/]+$",
                  required = true,
                  type = "string",
                },
                updateMask = {
                  description = "The list of fields to be updated. If empty all mutable fields will be updated.",
                  format = "google-fieldmask",
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/{+name}",
              request = {
                ["$ref"] = "GoogleCloudSecuritycenterV1BigQueryExport",
              },
              response = {
                ["$ref"] = "GoogleCloudSecuritycenterV1BigQueryExport",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
          },
        },
        findings = {
          methods = {
            bulkMute = {
              description = "Kicks off an LRO to bulk mute findings for a parent based on a filter. The parent can be either an organization, folder or project. The findings matched by the filter will be muted after the LRO is done.",
              flatPath = "v1/organizations/{organizationsId}/findings:bulkMute",
              httpMethod = "POST",
              id = "securitycenter.organizations.findings.bulkMute",
              parameterOrder = {
                "parent",
              },
              parameters = {
                parent = {
                  description = "Required. The parent, at which bulk action needs to be applied. Its format is \"organizations/[organization_id]\", \"folders/[folder_id]\", \"projects/[project_id]\".",
                  location = "path",
                  pattern = "^organizations/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/findings:bulkMute",
              request = {
                ["$ref"] = "BulkMuteFindingsRequest",
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
        muteConfigs = {
          methods = {
            create = {
              description = "Creates a mute config.",
              flatPath = "v1/organizations/{organizationsId}/muteConfigs",
              httpMethod = "POST",
              id = "securitycenter.organizations.muteConfigs.create",
              parameterOrder = {
                "parent",
              },
              parameters = {
                muteConfigId = {
                  description = "Required. Unique identifier provided by the client within the parent scope. It must consist of lower case letters, numbers, and hyphen, with the first character a letter, the last a letter or a number, and a 63 character maximum.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "Required. Resource name of the new mute configs's parent. Its format is \"organizations/[organization_id]\", \"folders/[folder_id]\", or \"projects/[project_id]\".",
                  location = "path",
                  pattern = "^organizations/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/muteConfigs",
              request = {
                ["$ref"] = "GoogleCloudSecuritycenterV1MuteConfig",
              },
              response = {
                ["$ref"] = "GoogleCloudSecuritycenterV1MuteConfig",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            delete = {
              description = "Deletes an existing mute config.",
              flatPath = "v1/organizations/{organizationsId}/muteConfigs/{muteConfigsId}",
              httpMethod = "DELETE",
              id = "securitycenter.organizations.muteConfigs.delete",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. Name of the mute config to delete. Its format is organizations/{organization}/muteConfigs/{config_id}, folders/{folder}/muteConfigs/{config_id}, or projects/{project}/muteConfigs/{config_id}",
                  location = "path",
                  pattern = "^organizations/[^/]+/muteConfigs/[^/]+$",
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
              description = "Gets a mute config.",
              flatPath = "v1/organizations/{organizationsId}/muteConfigs/{muteConfigsId}",
              httpMethod = "GET",
              id = "securitycenter.organizations.muteConfigs.get",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. Name of the mute config to retrieve. Its format is organizations/{organization}/muteConfigs/{config_id}, folders/{folder}/muteConfigs/{config_id}, or projects/{project}/muteConfigs/{config_id}",
                  location = "path",
                  pattern = "^organizations/[^/]+/muteConfigs/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}",
              response = {
                ["$ref"] = "GoogleCloudSecuritycenterV1MuteConfig",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            list = {
              description = "Lists mute configs.",
              flatPath = "v1/organizations/{organizationsId}/muteConfigs",
              httpMethod = "GET",
              id = "securitycenter.organizations.muteConfigs.list",
              parameterOrder = {
                "parent",
              },
              parameters = {
                pageSize = {
                  description = "The maximum number of configs to return. The service may return fewer than this value. If unspecified, at most 10 configs will be returned. The maximum value is 1000; values above 1000 will be coerced to 1000.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "A page token, received from a previous `ListMuteConfigs` call. Provide this to retrieve the subsequent page. When paginating, all other parameters provided to `ListMuteConfigs` must match the call that provided the page token.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "Required. The parent, which owns the collection of mute configs. Its format is \"organizations/[organization_id]\", \"folders/[folder_id]\", \"projects/[project_id]\".",
                  location = "path",
                  pattern = "^organizations/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/muteConfigs",
              response = {
                ["$ref"] = "ListMuteConfigsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            patch = {
              description = "Updates a mute config.",
              flatPath = "v1/organizations/{organizationsId}/muteConfigs/{muteConfigsId}",
              httpMethod = "PATCH",
              id = "securitycenter.organizations.muteConfigs.patch",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "This field will be ignored if provided on config creation. Format \"organizations/{organization}/muteConfigs/{mute_config}\" \"folders/{folder}/muteConfigs/{mute_config}\" \"projects/{project}/muteConfigs/{mute_config}\"",
                  location = "path",
                  pattern = "^organizations/[^/]+/muteConfigs/[^/]+$",
                  required = true,
                  type = "string",
                },
                updateMask = {
                  description = "The list of fields to be updated. If empty all mutable fields will be updated.",
                  format = "google-fieldmask",
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/{+name}",
              request = {
                ["$ref"] = "GoogleCloudSecuritycenterV1MuteConfig",
              },
              response = {
                ["$ref"] = "GoogleCloudSecuritycenterV1MuteConfig",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
          },
        },
        notificationConfigs = {
          methods = {
            create = {
              description = "Creates a notification config.",
              flatPath = "v1/organizations/{organizationsId}/notificationConfigs",
              httpMethod = "POST",
              id = "securitycenter.organizations.notificationConfigs.create",
              parameterOrder = {
                "parent",
              },
              parameters = {
                configId = {
                  description = "Required. Unique identifier provided by the client within the parent scope. It must be between 1 and 128 characters and contain alphanumeric characters, underscores, or hyphens only.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "Required. Resource name of the new notification config's parent. Its format is \"organizations/[organization_id]\", \"folders/[folder_id]\", or \"projects/[project_id]\".",
                  location = "path",
                  pattern = "^organizations/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/notificationConfigs",
              request = {
                ["$ref"] = "NotificationConfig",
              },
              response = {
                ["$ref"] = "NotificationConfig",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            delete = {
              description = "Deletes a notification config.",
              flatPath = "v1/organizations/{organizationsId}/notificationConfigs/{notificationConfigsId}",
              httpMethod = "DELETE",
              id = "securitycenter.organizations.notificationConfigs.delete",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. Name of the notification config to delete. Its format is \"organizations/[organization_id]/notificationConfigs/[config_id]\", \"folders/[folder_id]/notificationConfigs/[config_id]\", or \"projects/[project_id]/notificationConfigs/[config_id]\".",
                  location = "path",
                  pattern = "^organizations/[^/]+/notificationConfigs/[^/]+$",
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
              description = "Gets a notification config.",
              flatPath = "v1/organizations/{organizationsId}/notificationConfigs/{notificationConfigsId}",
              httpMethod = "GET",
              id = "securitycenter.organizations.notificationConfigs.get",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. Name of the notification config to get. Its format is \"organizations/[organization_id]/notificationConfigs/[config_id]\", \"folders/[folder_id]/notificationConfigs/[config_id]\", or \"projects/[project_id]/notificationConfigs/[config_id]\".",
                  location = "path",
                  pattern = "^organizations/[^/]+/notificationConfigs/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}",
              response = {
                ["$ref"] = "NotificationConfig",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            list = {
              description = "Lists notification configs.",
              flatPath = "v1/organizations/{organizationsId}/notificationConfigs",
              httpMethod = "GET",
              id = "securitycenter.organizations.notificationConfigs.list",
              parameterOrder = {
                "parent",
              },
              parameters = {
                pageSize = {
                  description = "The maximum number of results to return in a single response. Default is 10, minimum is 1, maximum is 1000.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "The value returned by the last `ListNotificationConfigsResponse`; indicates that this is a continuation of a prior `ListNotificationConfigs` call, and that the system should return the next page of data.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "Required. The name of the parent in which to list the notification configurations. Its format is \"organizations/[organization_id]\", \"folders/[folder_id]\", or \"projects/[project_id]\".",
                  location = "path",
                  pattern = "^organizations/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/notificationConfigs",
              response = {
                ["$ref"] = "ListNotificationConfigsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            patch = {
              description = " Updates a notification config. The following update fields are allowed: description, pubsub_topic, streaming_config.filter",
              flatPath = "v1/organizations/{organizationsId}/notificationConfigs/{notificationConfigsId}",
              httpMethod = "PATCH",
              id = "securitycenter.organizations.notificationConfigs.patch",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "The relative resource name of this notification config. See: https://cloud.google.com/apis/design/resource_names#relative_resource_name Example: \"organizations/{organization_id}/notificationConfigs/notify_public_bucket\", \"folders/{folder_id}/notificationConfigs/notify_public_bucket\", or \"projects/{project_id}/notificationConfigs/notify_public_bucket\".",
                  location = "path",
                  pattern = "^organizations/[^/]+/notificationConfigs/[^/]+$",
                  required = true,
                  type = "string",
                },
                updateMask = {
                  description = "The FieldMask to use when updating the notification config. If empty all mutable fields will be updated.",
                  format = "google-fieldmask",
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/{+name}",
              request = {
                ["$ref"] = "NotificationConfig",
              },
              response = {
                ["$ref"] = "NotificationConfig",
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
              flatPath = "v1/organizations/{organizationsId}/operations/{operationsId}:cancel",
              httpMethod = "POST",
              id = "securitycenter.organizations.operations.cancel",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "The name of the operation resource to be cancelled.",
                  location = "path",
                  pattern = "^organizations/[^/]+/operations/[^/]+$",
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
              flatPath = "v1/organizations/{organizationsId}/operations/{operationsId}",
              httpMethod = "DELETE",
              id = "securitycenter.organizations.operations.delete",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "The name of the operation resource to be deleted.",
                  location = "path",
                  pattern = "^organizations/[^/]+/operations/[^/]+$",
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
              flatPath = "v1/organizations/{organizationsId}/operations/{operationsId}",
              httpMethod = "GET",
              id = "securitycenter.organizations.operations.get",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "The name of the operation resource.",
                  location = "path",
                  pattern = "^organizations/[^/]+/operations/[^/]+$",
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
              flatPath = "v1/organizations/{organizationsId}/operations",
              httpMethod = "GET",
              id = "securitycenter.organizations.operations.list",
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
                  pattern = "^organizations/[^/]+/operations$",
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
              path = "v1/{+name}",
              response = {
                ["$ref"] = "ListOperationsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
          },
        },
        sources = {
          methods = {
            create = {
              description = "Creates a source.",
              flatPath = "v1/organizations/{organizationsId}/sources",
              httpMethod = "POST",
              id = "securitycenter.organizations.sources.create",
              parameterOrder = {
                "parent",
              },
              parameters = {
                parent = {
                  description = "Required. Resource name of the new source's parent. Its format should be \"organizations/[organization_id]\".",
                  location = "path",
                  pattern = "^organizations/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/sources",
              request = {
                ["$ref"] = "Source",
              },
              response = {
                ["$ref"] = "Source",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            get = {
              description = "Gets a source.",
              flatPath = "v1/organizations/{organizationsId}/sources/{sourcesId}",
              httpMethod = "GET",
              id = "securitycenter.organizations.sources.get",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. Relative resource name of the source. Its format is \"organizations/[organization_id]/source/[source_id]\".",
                  location = "path",
                  pattern = "^organizations/[^/]+/sources/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}",
              response = {
                ["$ref"] = "Source",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            getIamPolicy = {
              description = "Gets the access control policy on the specified Source.",
              flatPath = "v1/organizations/{organizationsId}/sources/{sourcesId}:getIamPolicy",
              httpMethod = "POST",
              id = "securitycenter.organizations.sources.getIamPolicy",
              parameterOrder = {
                "resource",
              },
              parameters = {
                resource = {
                  description = "REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                  location = "path",
                  pattern = "^organizations/[^/]+/sources/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+resource}:getIamPolicy",
              request = {
                ["$ref"] = "GetIamPolicyRequest",
              },
              response = {
                ["$ref"] = "Policy",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            list = {
              description = "Lists all sources belonging to an organization.",
              flatPath = "v1/organizations/{organizationsId}/sources",
              httpMethod = "GET",
              id = "securitycenter.organizations.sources.list",
              parameterOrder = {
                "parent",
              },
              parameters = {
                pageSize = {
                  description = "The maximum number of results to return in a single response. Default is 10, minimum is 1, maximum is 1000.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "The value returned by the last `ListSourcesResponse`; indicates that this is a continuation of a prior `ListSources` call, and that the system should return the next page of data.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "Required. Resource name of the parent of sources to list. Its format should be \"organizations/[organization_id], \"folders/[folder_id]\", or \"projects/[project_id]\".",
                  location = "path",
                  pattern = "^organizations/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/sources",
              response = {
                ["$ref"] = "ListSourcesResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            patch = {
              description = "Updates a source.",
              flatPath = "v1/organizations/{organizationsId}/sources/{sourcesId}",
              httpMethod = "PATCH",
              id = "securitycenter.organizations.sources.patch",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "The relative resource name of this source. See: https://cloud.google.com/apis/design/resource_names#relative_resource_name Example: \"organizations/{organization_id}/sources/{source_id}\"",
                  location = "path",
                  pattern = "^organizations/[^/]+/sources/[^/]+$",
                  required = true,
                  type = "string",
                },
                updateMask = {
                  description = "The FieldMask to use when updating the source resource. If empty all mutable fields will be updated.",
                  format = "google-fieldmask",
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/{+name}",
              request = {
                ["$ref"] = "Source",
              },
              response = {
                ["$ref"] = "Source",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            setIamPolicy = {
              description = "Sets the access control policy on the specified Source.",
              flatPath = "v1/organizations/{organizationsId}/sources/{sourcesId}:setIamPolicy",
              httpMethod = "POST",
              id = "securitycenter.organizations.sources.setIamPolicy",
              parameterOrder = {
                "resource",
              },
              parameters = {
                resource = {
                  description = "REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                  location = "path",
                  pattern = "^organizations/[^/]+/sources/[^/]+$",
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
              description = "Returns the permissions that a caller has on the specified source.",
              flatPath = "v1/organizations/{organizationsId}/sources/{sourcesId}:testIamPermissions",
              httpMethod = "POST",
              id = "securitycenter.organizations.sources.testIamPermissions",
              parameterOrder = {
                "resource",
              },
              parameters = {
                resource = {
                  description = "REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                  location = "path",
                  pattern = "^organizations/[^/]+/sources/[^/]+$",
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
            findings = {
              methods = {
                create = {
                  description = "Creates a finding. The corresponding source must exist for finding creation to succeed.",
                  flatPath = "v1/organizations/{organizationsId}/sources/{sourcesId}/findings",
                  httpMethod = "POST",
                  id = "securitycenter.organizations.sources.findings.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    findingId = {
                      description = "Required. Unique identifier provided by the client within the parent scope. It must be alphanumeric and less than or equal to 32 characters and greater than 0 characters in length.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. Resource name of the new finding's parent. Its format should be \"organizations/[organization_id]/sources/[source_id]\".",
                      location = "path",
                      pattern = "^organizations/[^/]+/sources/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/findings",
                  request = {
                    ["$ref"] = "Finding",
                  },
                  response = {
                    ["$ref"] = "Finding",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                group = {
                  description = "Filters an organization or source's findings and groups them by their specified properties. To group across all sources provide a `-` as the source id. Example: /v1/organizations/{organization_id}/sources/-/findings, /v1/folders/{folder_id}/sources/-/findings, /v1/projects/{project_id}/sources/-/findings",
                  flatPath = "v1/organizations/{organizationsId}/sources/{sourcesId}/findings:group",
                  httpMethod = "POST",
                  id = "securitycenter.organizations.sources.findings.group",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    parent = {
                      description = "Required. Name of the source to groupBy. Its format is \"organizations/[organization_id]/sources/[source_id]\", folders/[folder_id]/sources/[source_id], or projects/[project_id]/sources/[source_id]. To groupBy across all sources provide a source_id of `-`. For example: organizations/{organization_id}/sources/-, folders/{folder_id}/sources/-, or projects/{project_id}/sources/-",
                      location = "path",
                      pattern = "^organizations/[^/]+/sources/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/findings:group",
                  request = {
                    ["$ref"] = "GroupFindingsRequest",
                  },
                  response = {
                    ["$ref"] = "GroupFindingsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                list = {
                  description = "Lists an organization or source's findings. To list across all sources provide a `-` as the source id. Example: /v1/organizations/{organization_id}/sources/-/findings",
                  flatPath = "v1/organizations/{organizationsId}/sources/{sourcesId}/findings",
                  httpMethod = "GET",
                  id = "securitycenter.organizations.sources.findings.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    compareDuration = {
                      description = "When compare_duration is set, the ListFindingsResult's \"state_change\" attribute is updated to indicate whether the finding had its state changed, the finding's state remained unchanged, or if the finding was added in any state during the compare_duration period of time that precedes the read_time. This is the time between (read_time - compare_duration) and read_time. The state_change value is derived based on the presence and state of the finding at the two points in time. Intermediate state changes between the two times don't affect the result. For example, the results aren't affected if the finding is made inactive and then active again. Possible \"state_change\" values when compare_duration is specified: * \"CHANGED\": indicates that the finding was present and matched the given filter at the start of compare_duration, but changed its state at read_time. * \"UNCHANGED\": indicates that the finding was present and matched the given filter at the start of compare_duration and did not change state at read_time. * \"ADDED\": indicates that the finding did not match the given filter or was not present at the start of compare_duration, but was present at read_time. * \"REMOVED\": indicates that the finding was present and matched the filter at the start of compare_duration, but did not match the filter at read_time. If compare_duration is not specified, then the only possible state_change is \"UNUSED\", which will be the state_change set for all findings present at read_time.",
                      format = "google-duration",
                      location = "query",
                      type = "string",
                    },
                    fieldMask = {
                      description = "A field mask to specify the Finding fields to be listed in the response. An empty field mask will list all fields.",
                      format = "google-fieldmask",
                      location = "query",
                      type = "string",
                    },
                    filter = {
                      description = "Expression that defines the filter to apply across findings. The expression is a list of one or more restrictions combined via logical operators `AND` and `OR`. Parentheses are supported, and `OR` has higher precedence than `AND`. Restrictions have the form ` ` and may have a `-` character in front of them to indicate negation. Examples include: * name * source_properties.a_property * security_marks.marks.marka The supported operators are: * `=` for all value types. * `>`, `<`, `>=`, `<=` for integer values. * `:`, meaning substring matching, for strings. The supported value types are: * string literals in quotes. * integer literals without quotes. * boolean literals `true` and `false` without quotes. The following field and operator combinations are supported: * name: `=` * parent: `=`, `:` * resource_name: `=`, `:` * state: `=`, `:` * category: `=`, `:` * external_uri: `=`, `:` * event_time: `=`, `>`, `<`, `>=`, `<=` Usage: This should be milliseconds since epoch or an RFC3339 string. Examples: `event_time = \"2019-06-10T16:07:18-07:00\"` `event_time = 1560208038000` * severity: `=`, `:` * workflow_state: `=`, `:` * security_marks.marks: `=`, `:` * source_properties: `=`, `:`, `>`, `<`, `>=`, `<=` For example, `source_properties.size = 100` is a valid filter string. Use a partial match on the empty string to filter based on a property existing: `source_properties.my_property : \"\"` Use a negated partial match on the empty string to filter based on a property not existing: `-source_properties.my_property : \"\"` * resource: * resource.name: `=`, `:` * resource.parent_name: `=`, `:` * resource.parent_display_name: `=`, `:` * resource.project_name: `=`, `:` * resource.project_display_name: `=`, `:` * resource.type: `=`, `:` * resource.folders.resource_folder: `=`, `:` * resource.display_name: `=`, `:`",
                      location = "query",
                      type = "string",
                    },
                    orderBy = {
                      description = "Expression that defines what fields and order to use for sorting. The string value should follow SQL syntax: comma separated list of fields. For example: \"name,resource_properties.a_property\". The default sorting order is ascending. To specify descending order for a field, a suffix \" desc\" should be appended to the field name. For example: \"name desc,source_properties.a_property\". Redundant space characters in the syntax are insignificant. \"name desc,source_properties.a_property\" and \" name desc , source_properties.a_property \" are equivalent. The following fields are supported: name parent state category resource_name event_time source_properties security_marks.marks",
                      location = "query",
                      type = "string",
                    },
                    pageSize = {
                      description = "The maximum number of results to return in a single response. Default is 10, minimum is 1, maximum is 1000.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "The value returned by the last `ListFindingsResponse`; indicates that this is a continuation of a prior `ListFindings` call, and that the system should return the next page of data.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. Name of the source the findings belong to. Its format is \"organizations/[organization_id]/sources/[source_id], folders/[folder_id]/sources/[source_id], or projects/[project_id]/sources/[source_id]\". To list across all sources provide a source_id of `-`. For example: organizations/{organization_id}/sources/-, folders/{folder_id}/sources/- or projects/{projects_id}/sources/-",
                      location = "path",
                      pattern = "^organizations/[^/]+/sources/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    readTime = {
                      description = "Time used as a reference point when filtering findings. The filter is limited to findings existing at the supplied time and their values are those at that specific time. Absence of this field will default to the API's version of NOW.",
                      format = "google-datetime",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/findings",
                  response = {
                    ["$ref"] = "ListFindingsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                patch = {
                  description = "Creates or updates a finding. The corresponding source must exist for a finding creation to succeed.",
                  flatPath = "v1/organizations/{organizationsId}/sources/{sourcesId}/findings/{findingsId}",
                  httpMethod = "PATCH",
                  id = "securitycenter.organizations.sources.findings.patch",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "The relative resource name of this finding. See: https://cloud.google.com/apis/design/resource_names#relative_resource_name Example: \"organizations/{organization_id}/sources/{source_id}/findings/{finding_id}\"",
                      location = "path",
                      pattern = "^organizations/[^/]+/sources/[^/]+/findings/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    updateMask = {
                      description = "The FieldMask to use when updating the finding resource. This field should not be specified when creating a finding. When updating a finding, an empty mask is treated as updating all mutable fields and replacing source_properties. Individual source_properties can be added/updated by using \"source_properties.\" in the field mask.",
                      format = "google-fieldmask",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  request = {
                    ["$ref"] = "Finding",
                  },
                  response = {
                    ["$ref"] = "Finding",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                setMute = {
                  description = "Updates the mute state of a finding.",
                  flatPath = "v1/organizations/{organizationsId}/sources/{sourcesId}/findings/{findingsId}:setMute",
                  httpMethod = "POST",
                  id = "securitycenter.organizations.sources.findings.setMute",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The [relative resource name](https://cloud.google.com/apis/design/resource_names#relative_resource_name) of the finding. Example: \"organizations/{organization_id}/sources/{source_id}/findings/{finding_id}\", \"folders/{folder_id}/sources/{source_id}/findings/{finding_id}\", \"projects/{project_id}/sources/{source_id}/findings/{finding_id}\".",
                      location = "path",
                      pattern = "^organizations/[^/]+/sources/[^/]+/findings/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}:setMute",
                  request = {
                    ["$ref"] = "SetMuteRequest",
                  },
                  response = {
                    ["$ref"] = "Finding",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                setState = {
                  description = "Updates the state of a finding.",
                  flatPath = "v1/organizations/{organizationsId}/sources/{sourcesId}/findings/{findingsId}:setState",
                  httpMethod = "POST",
                  id = "securitycenter.organizations.sources.findings.setState",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The [relative resource name](https://cloud.google.com/apis/design/resource_names#relative_resource_name) of the finding. Example: \"organizations/{organization_id}/sources/{source_id}/findings/{finding_id}\", \"folders/{folder_id}/sources/{source_id}/findings/{finding_id}\", \"projects/{project_id}/sources/{source_id}/findings/{finding_id}\".",
                      location = "path",
                      pattern = "^organizations/[^/]+/sources/[^/]+/findings/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}:setState",
                  request = {
                    ["$ref"] = "SetFindingStateRequest",
                  },
                  response = {
                    ["$ref"] = "Finding",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                updateSecurityMarks = {
                  description = "Updates security marks.",
                  flatPath = "v1/organizations/{organizationsId}/sources/{sourcesId}/findings/{findingsId}/securityMarks",
                  httpMethod = "PATCH",
                  id = "securitycenter.organizations.sources.findings.updateSecurityMarks",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "The relative resource name of the SecurityMarks. See: https://cloud.google.com/apis/design/resource_names#relative_resource_name Examples: \"organizations/{organization_id}/assets/{asset_id}/securityMarks\" \"organizations/{organization_id}/sources/{source_id}/findings/{finding_id}/securityMarks\".",
                      location = "path",
                      pattern = "^organizations/[^/]+/sources/[^/]+/findings/[^/]+/securityMarks$",
                      required = true,
                      type = "string",
                    },
                    startTime = {
                      description = "The time at which the updated SecurityMarks take effect. If not set uses current server time. Updates will be applied to the SecurityMarks that are active immediately preceding this time. Must be earlier or equal to the server time.",
                      format = "google-datetime",
                      location = "query",
                      type = "string",
                    },
                    updateMask = {
                      description = "The FieldMask to use when updating the security marks resource. The field mask must not contain duplicate fields. If empty or set to \"marks\", all marks will be replaced. Individual marks can be updated using \"marks.\".",
                      format = "google-fieldmask",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  request = {
                    ["$ref"] = "SecurityMarks",
                  },
                  response = {
                    ["$ref"] = "SecurityMarks",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
              },
              resources = {
                externalSystems = {
                  methods = {
                    patch = {
                      description = "Updates external system. This is for a given finding.",
                      flatPath = "v1/organizations/{organizationsId}/sources/{sourcesId}/findings/{findingsId}/externalSystems/{externalSystemsId}",
                      httpMethod = "PATCH",
                      id = "securitycenter.organizations.sources.findings.externalSystems.patch",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Full resource name of the external system, for example: \"organizations/1234/sources/5678/findings/123456/externalSystems/jira\", \"folders/1234/sources/5678/findings/123456/externalSystems/jira\", \"projects/1234/sources/5678/findings/123456/externalSystems/jira\"",
                          location = "path",
                          pattern = "^organizations/[^/]+/sources/[^/]+/findings/[^/]+/externalSystems/[^/]+$",
                          required = true,
                          type = "string",
                        },
                        updateMask = {
                          description = "The FieldMask to use when updating the external system resource. If empty all mutable fields will be updated.",
                          format = "google-fieldmask",
                          location = "query",
                          type = "string",
                        },
                      },
                      path = "v1/{+name}",
                      request = {
                        ["$ref"] = "GoogleCloudSecuritycenterV1ExternalSystem",
                      },
                      response = {
                        ["$ref"] = "GoogleCloudSecuritycenterV1ExternalSystem",
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
    projects = {
      resources = {
        assets = {
          methods = {
            group = {
              description = "Filters an organization's assets and groups them by their specified properties.",
              flatPath = "v1/projects/{projectsId}/assets:group",
              httpMethod = "POST",
              id = "securitycenter.projects.assets.group",
              parameterOrder = {
                "parent",
              },
              parameters = {
                parent = {
                  description = "Required. The name of the parent to group the assets by. Its format is \"organizations/[organization_id]\", \"folders/[folder_id]\", or \"projects/[project_id]\".",
                  location = "path",
                  pattern = "^projects/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/assets:group",
              request = {
                ["$ref"] = "GroupAssetsRequest",
              },
              response = {
                ["$ref"] = "GroupAssetsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            list = {
              description = "Lists an organization's assets.",
              flatPath = "v1/projects/{projectsId}/assets",
              httpMethod = "GET",
              id = "securitycenter.projects.assets.list",
              parameterOrder = {
                "parent",
              },
              parameters = {
                compareDuration = {
                  description = "When compare_duration is set, the ListAssetsResult's \"state_change\" attribute is updated to indicate whether the asset was added, removed, or remained present during the compare_duration period of time that precedes the read_time. This is the time between (read_time - compare_duration) and read_time. The state_change value is derived based on the presence of the asset at the two points in time. Intermediate state changes between the two times don't affect the result. For example, the results aren't affected if the asset is removed and re-created again. Possible \"state_change\" values when compare_duration is specified: * \"ADDED\": indicates that the asset was not present at the start of compare_duration, but present at read_time. * \"REMOVED\": indicates that the asset was present at the start of compare_duration, but not present at read_time. * \"ACTIVE\": indicates that the asset was present at both the start and the end of the time period defined by compare_duration and read_time. If compare_duration is not specified, then the only possible state_change is \"UNUSED\", which will be the state_change set for all assets present at read_time.",
                  format = "google-duration",
                  location = "query",
                  type = "string",
                },
                fieldMask = {
                  description = "A field mask to specify the ListAssetsResult fields to be listed in the response. An empty field mask will list all fields.",
                  format = "google-fieldmask",
                  location = "query",
                  type = "string",
                },
                filter = {
                  description = "Expression that defines the filter to apply across assets. The expression is a list of zero or more restrictions combined via logical operators `AND` and `OR`. Parentheses are supported, and `OR` has higher precedence than `AND`. Restrictions have the form ` ` and may have a `-` character in front of them to indicate negation. The fields map to those defined in the Asset resource. Examples include: * name * security_center_properties.resource_name * resource_properties.a_property * security_marks.marks.marka The supported operators are: * `=` for all value types. * `>`, `<`, `>=`, `<=` for integer values. * `:`, meaning substring matching, for strings. The supported value types are: * string literals in quotes. * integer literals without quotes. * boolean literals `true` and `false` without quotes. The following are the allowed field and operator combinations: * name: `=` * update_time: `=`, `>`, `<`, `>=`, `<=` Usage: This should be milliseconds since epoch or an RFC3339 string. Examples: `update_time = \"2019-06-10T16:07:18-07:00\"` `update_time = 1560208038000` * create_time: `=`, `>`, `<`, `>=`, `<=` Usage: This should be milliseconds since epoch or an RFC3339 string. Examples: `create_time = \"2019-06-10T16:07:18-07:00\"` `create_time = 1560208038000` * iam_policy.policy_blob: `=`, `:` * resource_properties: `=`, `:`, `>`, `<`, `>=`, `<=` * security_marks.marks: `=`, `:` * security_center_properties.resource_name: `=`, `:` * security_center_properties.resource_display_name: `=`, `:` * security_center_properties.resource_type: `=`, `:` * security_center_properties.resource_parent: `=`, `:` * security_center_properties.resource_parent_display_name: `=`, `:` * security_center_properties.resource_project: `=`, `:` * security_center_properties.resource_project_display_name: `=`, `:` * security_center_properties.resource_owners: `=`, `:` For example, `resource_properties.size = 100` is a valid filter string. Use a partial match on the empty string to filter based on a property existing: `resource_properties.my_property : \"\"` Use a negated partial match on the empty string to filter based on a property not existing: `-resource_properties.my_property : \"\"`",
                  location = "query",
                  type = "string",
                },
                orderBy = {
                  description = "Expression that defines what fields and order to use for sorting. The string value should follow SQL syntax: comma separated list of fields. For example: \"name,resource_properties.a_property\". The default sorting order is ascending. To specify descending order for a field, a suffix \" desc\" should be appended to the field name. For example: \"name desc,resource_properties.a_property\". Redundant space characters in the syntax are insignificant. \"name desc,resource_properties.a_property\" and \" name desc , resource_properties.a_property \" are equivalent. The following fields are supported: name update_time resource_properties security_marks.marks security_center_properties.resource_name security_center_properties.resource_display_name security_center_properties.resource_parent security_center_properties.resource_parent_display_name security_center_properties.resource_project security_center_properties.resource_project_display_name security_center_properties.resource_type",
                  location = "query",
                  type = "string",
                },
                pageSize = {
                  description = "The maximum number of results to return in a single response. Default is 10, minimum is 1, maximum is 1000.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "The value returned by the last `ListAssetsResponse`; indicates that this is a continuation of a prior `ListAssets` call, and that the system should return the next page of data.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "Required. The name of the parent that the listed assets belong to. Its format is \"organizations/[organization_id], \"folders/[folder_id]\", or \"projects/[project_id]\".",
                  location = "path",
                  pattern = "^projects/[^/]+$",
                  required = true,
                  type = "string",
                },
                readTime = {
                  description = "Time used as a reference point when filtering assets. The filter is limited to assets existing at the supplied time and their values are those at that specific time. Absence of this field will default to the API's version of NOW.",
                  format = "google-datetime",
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/{+parent}/assets",
              response = {
                ["$ref"] = "ListAssetsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            updateSecurityMarks = {
              description = "Updates security marks.",
              flatPath = "v1/projects/{projectsId}/assets/{assetsId}/securityMarks",
              httpMethod = "PATCH",
              id = "securitycenter.projects.assets.updateSecurityMarks",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "The relative resource name of the SecurityMarks. See: https://cloud.google.com/apis/design/resource_names#relative_resource_name Examples: \"organizations/{organization_id}/assets/{asset_id}/securityMarks\" \"organizations/{organization_id}/sources/{source_id}/findings/{finding_id}/securityMarks\".",
                  location = "path",
                  pattern = "^projects/[^/]+/assets/[^/]+/securityMarks$",
                  required = true,
                  type = "string",
                },
                startTime = {
                  description = "The time at which the updated SecurityMarks take effect. If not set uses current server time. Updates will be applied to the SecurityMarks that are active immediately preceding this time. Must be earlier or equal to the server time.",
                  format = "google-datetime",
                  location = "query",
                  type = "string",
                },
                updateMask = {
                  description = "The FieldMask to use when updating the security marks resource. The field mask must not contain duplicate fields. If empty or set to \"marks\", all marks will be replaced. Individual marks can be updated using \"marks.\".",
                  format = "google-fieldmask",
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/{+name}",
              request = {
                ["$ref"] = "SecurityMarks",
              },
              response = {
                ["$ref"] = "SecurityMarks",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
          },
        },
        bigQueryExports = {
          methods = {
            create = {
              description = "Creates a BigQuery export.",
              flatPath = "v1/projects/{projectsId}/bigQueryExports",
              httpMethod = "POST",
              id = "securitycenter.projects.bigQueryExports.create",
              parameterOrder = {
                "parent",
              },
              parameters = {
                bigQueryExportId = {
                  description = "Required. Unique identifier provided by the client within the parent scope. It must consist of lower case letters, numbers, and hyphen, with the first character a letter, the last a letter or a number, and a 63 character maximum.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "Required. The name of the parent resource of the new BigQuery export. Its format is \"organizations/[organization_id]\", \"folders/[folder_id]\", or \"projects/[project_id]\".",
                  location = "path",
                  pattern = "^projects/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/bigQueryExports",
              request = {
                ["$ref"] = "GoogleCloudSecuritycenterV1BigQueryExport",
              },
              response = {
                ["$ref"] = "GoogleCloudSecuritycenterV1BigQueryExport",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            delete = {
              description = "Deletes an existing BigQuery export.",
              flatPath = "v1/projects/{projectsId}/bigQueryExports/{bigQueryExportsId}",
              httpMethod = "DELETE",
              id = "securitycenter.projects.bigQueryExports.delete",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. The name of the BigQuery export to delete. Its format is organizations/{organization}/bigQueryExports/{export_id}, folders/{folder}/bigQueryExports/{export_id}, or projects/{project}/bigQueryExports/{export_id}",
                  location = "path",
                  pattern = "^projects/[^/]+/bigQueryExports/[^/]+$",
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
              description = "Gets a BigQuery export.",
              flatPath = "v1/projects/{projectsId}/bigQueryExports/{bigQueryExportsId}",
              httpMethod = "GET",
              id = "securitycenter.projects.bigQueryExports.get",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. Name of the BigQuery export to retrieve. Its format is organizations/{organization}/bigQueryExports/{export_id}, folders/{folder}/bigQueryExports/{export_id}, or projects/{project}/bigQueryExports/{export_id}",
                  location = "path",
                  pattern = "^projects/[^/]+/bigQueryExports/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}",
              response = {
                ["$ref"] = "GoogleCloudSecuritycenterV1BigQueryExport",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            list = {
              description = "Lists BigQuery exports. Note that when requesting BigQuery exports at a given level all exports under that level are also returned e.g. if requesting BigQuery exports under a folder, then all BigQuery exports immediately under the folder plus the ones created under the projects within the folder are returned.",
              flatPath = "v1/projects/{projectsId}/bigQueryExports",
              httpMethod = "GET",
              id = "securitycenter.projects.bigQueryExports.list",
              parameterOrder = {
                "parent",
              },
              parameters = {
                pageSize = {
                  description = "The maximum number of configs to return. The service may return fewer than this value. If unspecified, at most 10 configs will be returned. The maximum value is 1000; values above 1000 will be coerced to 1000.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "A page token, received from a previous `ListBigQueryExports` call. Provide this to retrieve the subsequent page. When paginating, all other parameters provided to `ListBigQueryExports` must match the call that provided the page token.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "Required. The parent, which owns the collection of BigQuery exports. Its format is \"organizations/[organization_id]\", \"folders/[folder_id]\", \"projects/[project_id]\".",
                  location = "path",
                  pattern = "^projects/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/bigQueryExports",
              response = {
                ["$ref"] = "ListBigQueryExportsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            patch = {
              description = "Updates a BigQuery export.",
              flatPath = "v1/projects/{projectsId}/bigQueryExports/{bigQueryExportsId}",
              httpMethod = "PATCH",
              id = "securitycenter.projects.bigQueryExports.patch",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "The relative resource name of this export. See: https://cloud.google.com/apis/design/resource_names#relative_resource_name. Example format: \"organizations/{organization_id}/bigQueryExports/{export_id}\" Example format: \"folders/{folder_id}/bigQueryExports/{export_id}\" Example format: \"projects/{project_id}/bigQueryExports/{export_id}\" This field is provided in responses, and is ignored when provided in create requests.",
                  location = "path",
                  pattern = "^projects/[^/]+/bigQueryExports/[^/]+$",
                  required = true,
                  type = "string",
                },
                updateMask = {
                  description = "The list of fields to be updated. If empty all mutable fields will be updated.",
                  format = "google-fieldmask",
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/{+name}",
              request = {
                ["$ref"] = "GoogleCloudSecuritycenterV1BigQueryExport",
              },
              response = {
                ["$ref"] = "GoogleCloudSecuritycenterV1BigQueryExport",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
          },
        },
        findings = {
          methods = {
            bulkMute = {
              description = "Kicks off an LRO to bulk mute findings for a parent based on a filter. The parent can be either an organization, folder or project. The findings matched by the filter will be muted after the LRO is done.",
              flatPath = "v1/projects/{projectsId}/findings:bulkMute",
              httpMethod = "POST",
              id = "securitycenter.projects.findings.bulkMute",
              parameterOrder = {
                "parent",
              },
              parameters = {
                parent = {
                  description = "Required. The parent, at which bulk action needs to be applied. Its format is \"organizations/[organization_id]\", \"folders/[folder_id]\", \"projects/[project_id]\".",
                  location = "path",
                  pattern = "^projects/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/findings:bulkMute",
              request = {
                ["$ref"] = "BulkMuteFindingsRequest",
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
        muteConfigs = {
          methods = {
            create = {
              description = "Creates a mute config.",
              flatPath = "v1/projects/{projectsId}/muteConfigs",
              httpMethod = "POST",
              id = "securitycenter.projects.muteConfigs.create",
              parameterOrder = {
                "parent",
              },
              parameters = {
                muteConfigId = {
                  description = "Required. Unique identifier provided by the client within the parent scope. It must consist of lower case letters, numbers, and hyphen, with the first character a letter, the last a letter or a number, and a 63 character maximum.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "Required. Resource name of the new mute configs's parent. Its format is \"organizations/[organization_id]\", \"folders/[folder_id]\", or \"projects/[project_id]\".",
                  location = "path",
                  pattern = "^projects/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/muteConfigs",
              request = {
                ["$ref"] = "GoogleCloudSecuritycenterV1MuteConfig",
              },
              response = {
                ["$ref"] = "GoogleCloudSecuritycenterV1MuteConfig",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            delete = {
              description = "Deletes an existing mute config.",
              flatPath = "v1/projects/{projectsId}/muteConfigs/{muteConfigsId}",
              httpMethod = "DELETE",
              id = "securitycenter.projects.muteConfigs.delete",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. Name of the mute config to delete. Its format is organizations/{organization}/muteConfigs/{config_id}, folders/{folder}/muteConfigs/{config_id}, or projects/{project}/muteConfigs/{config_id}",
                  location = "path",
                  pattern = "^projects/[^/]+/muteConfigs/[^/]+$",
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
              description = "Gets a mute config.",
              flatPath = "v1/projects/{projectsId}/muteConfigs/{muteConfigsId}",
              httpMethod = "GET",
              id = "securitycenter.projects.muteConfigs.get",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. Name of the mute config to retrieve. Its format is organizations/{organization}/muteConfigs/{config_id}, folders/{folder}/muteConfigs/{config_id}, or projects/{project}/muteConfigs/{config_id}",
                  location = "path",
                  pattern = "^projects/[^/]+/muteConfigs/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}",
              response = {
                ["$ref"] = "GoogleCloudSecuritycenterV1MuteConfig",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            list = {
              description = "Lists mute configs.",
              flatPath = "v1/projects/{projectsId}/muteConfigs",
              httpMethod = "GET",
              id = "securitycenter.projects.muteConfigs.list",
              parameterOrder = {
                "parent",
              },
              parameters = {
                pageSize = {
                  description = "The maximum number of configs to return. The service may return fewer than this value. If unspecified, at most 10 configs will be returned. The maximum value is 1000; values above 1000 will be coerced to 1000.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "A page token, received from a previous `ListMuteConfigs` call. Provide this to retrieve the subsequent page. When paginating, all other parameters provided to `ListMuteConfigs` must match the call that provided the page token.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "Required. The parent, which owns the collection of mute configs. Its format is \"organizations/[organization_id]\", \"folders/[folder_id]\", \"projects/[project_id]\".",
                  location = "path",
                  pattern = "^projects/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/muteConfigs",
              response = {
                ["$ref"] = "ListMuteConfigsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            patch = {
              description = "Updates a mute config.",
              flatPath = "v1/projects/{projectsId}/muteConfigs/{muteConfigsId}",
              httpMethod = "PATCH",
              id = "securitycenter.projects.muteConfigs.patch",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "This field will be ignored if provided on config creation. Format \"organizations/{organization}/muteConfigs/{mute_config}\" \"folders/{folder}/muteConfigs/{mute_config}\" \"projects/{project}/muteConfigs/{mute_config}\"",
                  location = "path",
                  pattern = "^projects/[^/]+/muteConfigs/[^/]+$",
                  required = true,
                  type = "string",
                },
                updateMask = {
                  description = "The list of fields to be updated. If empty all mutable fields will be updated.",
                  format = "google-fieldmask",
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/{+name}",
              request = {
                ["$ref"] = "GoogleCloudSecuritycenterV1MuteConfig",
              },
              response = {
                ["$ref"] = "GoogleCloudSecuritycenterV1MuteConfig",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
          },
        },
        notificationConfigs = {
          methods = {
            create = {
              description = "Creates a notification config.",
              flatPath = "v1/projects/{projectsId}/notificationConfigs",
              httpMethod = "POST",
              id = "securitycenter.projects.notificationConfigs.create",
              parameterOrder = {
                "parent",
              },
              parameters = {
                configId = {
                  description = "Required. Unique identifier provided by the client within the parent scope. It must be between 1 and 128 characters and contain alphanumeric characters, underscores, or hyphens only.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "Required. Resource name of the new notification config's parent. Its format is \"organizations/[organization_id]\", \"folders/[folder_id]\", or \"projects/[project_id]\".",
                  location = "path",
                  pattern = "^projects/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/notificationConfigs",
              request = {
                ["$ref"] = "NotificationConfig",
              },
              response = {
                ["$ref"] = "NotificationConfig",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            delete = {
              description = "Deletes a notification config.",
              flatPath = "v1/projects/{projectsId}/notificationConfigs/{notificationConfigsId}",
              httpMethod = "DELETE",
              id = "securitycenter.projects.notificationConfigs.delete",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. Name of the notification config to delete. Its format is \"organizations/[organization_id]/notificationConfigs/[config_id]\", \"folders/[folder_id]/notificationConfigs/[config_id]\", or \"projects/[project_id]/notificationConfigs/[config_id]\".",
                  location = "path",
                  pattern = "^projects/[^/]+/notificationConfigs/[^/]+$",
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
              description = "Gets a notification config.",
              flatPath = "v1/projects/{projectsId}/notificationConfigs/{notificationConfigsId}",
              httpMethod = "GET",
              id = "securitycenter.projects.notificationConfigs.get",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. Name of the notification config to get. Its format is \"organizations/[organization_id]/notificationConfigs/[config_id]\", \"folders/[folder_id]/notificationConfigs/[config_id]\", or \"projects/[project_id]/notificationConfigs/[config_id]\".",
                  location = "path",
                  pattern = "^projects/[^/]+/notificationConfigs/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}",
              response = {
                ["$ref"] = "NotificationConfig",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            list = {
              description = "Lists notification configs.",
              flatPath = "v1/projects/{projectsId}/notificationConfigs",
              httpMethod = "GET",
              id = "securitycenter.projects.notificationConfigs.list",
              parameterOrder = {
                "parent",
              },
              parameters = {
                pageSize = {
                  description = "The maximum number of results to return in a single response. Default is 10, minimum is 1, maximum is 1000.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "The value returned by the last `ListNotificationConfigsResponse`; indicates that this is a continuation of a prior `ListNotificationConfigs` call, and that the system should return the next page of data.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "Required. The name of the parent in which to list the notification configurations. Its format is \"organizations/[organization_id]\", \"folders/[folder_id]\", or \"projects/[project_id]\".",
                  location = "path",
                  pattern = "^projects/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/notificationConfigs",
              response = {
                ["$ref"] = "ListNotificationConfigsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            patch = {
              description = " Updates a notification config. The following update fields are allowed: description, pubsub_topic, streaming_config.filter",
              flatPath = "v1/projects/{projectsId}/notificationConfigs/{notificationConfigsId}",
              httpMethod = "PATCH",
              id = "securitycenter.projects.notificationConfigs.patch",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "The relative resource name of this notification config. See: https://cloud.google.com/apis/design/resource_names#relative_resource_name Example: \"organizations/{organization_id}/notificationConfigs/notify_public_bucket\", \"folders/{folder_id}/notificationConfigs/notify_public_bucket\", or \"projects/{project_id}/notificationConfigs/notify_public_bucket\".",
                  location = "path",
                  pattern = "^projects/[^/]+/notificationConfigs/[^/]+$",
                  required = true,
                  type = "string",
                },
                updateMask = {
                  description = "The FieldMask to use when updating the notification config. If empty all mutable fields will be updated.",
                  format = "google-fieldmask",
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/{+name}",
              request = {
                ["$ref"] = "NotificationConfig",
              },
              response = {
                ["$ref"] = "NotificationConfig",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
          },
        },
        sources = {
          methods = {
            list = {
              description = "Lists all sources belonging to an organization.",
              flatPath = "v1/projects/{projectsId}/sources",
              httpMethod = "GET",
              id = "securitycenter.projects.sources.list",
              parameterOrder = {
                "parent",
              },
              parameters = {
                pageSize = {
                  description = "The maximum number of results to return in a single response. Default is 10, minimum is 1, maximum is 1000.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "The value returned by the last `ListSourcesResponse`; indicates that this is a continuation of a prior `ListSources` call, and that the system should return the next page of data.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "Required. Resource name of the parent of sources to list. Its format should be \"organizations/[organization_id], \"folders/[folder_id]\", or \"projects/[project_id]\".",
                  location = "path",
                  pattern = "^projects/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/sources",
              response = {
                ["$ref"] = "ListSourcesResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
          },
          resources = {
            findings = {
              methods = {
                group = {
                  description = "Filters an organization or source's findings and groups them by their specified properties. To group across all sources provide a `-` as the source id. Example: /v1/organizations/{organization_id}/sources/-/findings, /v1/folders/{folder_id}/sources/-/findings, /v1/projects/{project_id}/sources/-/findings",
                  flatPath = "v1/projects/{projectsId}/sources/{sourcesId}/findings:group",
                  httpMethod = "POST",
                  id = "securitycenter.projects.sources.findings.group",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    parent = {
                      description = "Required. Name of the source to groupBy. Its format is \"organizations/[organization_id]/sources/[source_id]\", folders/[folder_id]/sources/[source_id], or projects/[project_id]/sources/[source_id]. To groupBy across all sources provide a source_id of `-`. For example: organizations/{organization_id}/sources/-, folders/{folder_id}/sources/-, or projects/{project_id}/sources/-",
                      location = "path",
                      pattern = "^projects/[^/]+/sources/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/findings:group",
                  request = {
                    ["$ref"] = "GroupFindingsRequest",
                  },
                  response = {
                    ["$ref"] = "GroupFindingsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                list = {
                  description = "Lists an organization or source's findings. To list across all sources provide a `-` as the source id. Example: /v1/organizations/{organization_id}/sources/-/findings",
                  flatPath = "v1/projects/{projectsId}/sources/{sourcesId}/findings",
                  httpMethod = "GET",
                  id = "securitycenter.projects.sources.findings.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    compareDuration = {
                      description = "When compare_duration is set, the ListFindingsResult's \"state_change\" attribute is updated to indicate whether the finding had its state changed, the finding's state remained unchanged, or if the finding was added in any state during the compare_duration period of time that precedes the read_time. This is the time between (read_time - compare_duration) and read_time. The state_change value is derived based on the presence and state of the finding at the two points in time. Intermediate state changes between the two times don't affect the result. For example, the results aren't affected if the finding is made inactive and then active again. Possible \"state_change\" values when compare_duration is specified: * \"CHANGED\": indicates that the finding was present and matched the given filter at the start of compare_duration, but changed its state at read_time. * \"UNCHANGED\": indicates that the finding was present and matched the given filter at the start of compare_duration and did not change state at read_time. * \"ADDED\": indicates that the finding did not match the given filter or was not present at the start of compare_duration, but was present at read_time. * \"REMOVED\": indicates that the finding was present and matched the filter at the start of compare_duration, but did not match the filter at read_time. If compare_duration is not specified, then the only possible state_change is \"UNUSED\", which will be the state_change set for all findings present at read_time.",
                      format = "google-duration",
                      location = "query",
                      type = "string",
                    },
                    fieldMask = {
                      description = "A field mask to specify the Finding fields to be listed in the response. An empty field mask will list all fields.",
                      format = "google-fieldmask",
                      location = "query",
                      type = "string",
                    },
                    filter = {
                      description = "Expression that defines the filter to apply across findings. The expression is a list of one or more restrictions combined via logical operators `AND` and `OR`. Parentheses are supported, and `OR` has higher precedence than `AND`. Restrictions have the form ` ` and may have a `-` character in front of them to indicate negation. Examples include: * name * source_properties.a_property * security_marks.marks.marka The supported operators are: * `=` for all value types. * `>`, `<`, `>=`, `<=` for integer values. * `:`, meaning substring matching, for strings. The supported value types are: * string literals in quotes. * integer literals without quotes. * boolean literals `true` and `false` without quotes. The following field and operator combinations are supported: * name: `=` * parent: `=`, `:` * resource_name: `=`, `:` * state: `=`, `:` * category: `=`, `:` * external_uri: `=`, `:` * event_time: `=`, `>`, `<`, `>=`, `<=` Usage: This should be milliseconds since epoch or an RFC3339 string. Examples: `event_time = \"2019-06-10T16:07:18-07:00\"` `event_time = 1560208038000` * severity: `=`, `:` * workflow_state: `=`, `:` * security_marks.marks: `=`, `:` * source_properties: `=`, `:`, `>`, `<`, `>=`, `<=` For example, `source_properties.size = 100` is a valid filter string. Use a partial match on the empty string to filter based on a property existing: `source_properties.my_property : \"\"` Use a negated partial match on the empty string to filter based on a property not existing: `-source_properties.my_property : \"\"` * resource: * resource.name: `=`, `:` * resource.parent_name: `=`, `:` * resource.parent_display_name: `=`, `:` * resource.project_name: `=`, `:` * resource.project_display_name: `=`, `:` * resource.type: `=`, `:` * resource.folders.resource_folder: `=`, `:` * resource.display_name: `=`, `:`",
                      location = "query",
                      type = "string",
                    },
                    orderBy = {
                      description = "Expression that defines what fields and order to use for sorting. The string value should follow SQL syntax: comma separated list of fields. For example: \"name,resource_properties.a_property\". The default sorting order is ascending. To specify descending order for a field, a suffix \" desc\" should be appended to the field name. For example: \"name desc,source_properties.a_property\". Redundant space characters in the syntax are insignificant. \"name desc,source_properties.a_property\" and \" name desc , source_properties.a_property \" are equivalent. The following fields are supported: name parent state category resource_name event_time source_properties security_marks.marks",
                      location = "query",
                      type = "string",
                    },
                    pageSize = {
                      description = "The maximum number of results to return in a single response. Default is 10, minimum is 1, maximum is 1000.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "The value returned by the last `ListFindingsResponse`; indicates that this is a continuation of a prior `ListFindings` call, and that the system should return the next page of data.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. Name of the source the findings belong to. Its format is \"organizations/[organization_id]/sources/[source_id], folders/[folder_id]/sources/[source_id], or projects/[project_id]/sources/[source_id]\". To list across all sources provide a source_id of `-`. For example: organizations/{organization_id}/sources/-, folders/{folder_id}/sources/- or projects/{projects_id}/sources/-",
                      location = "path",
                      pattern = "^projects/[^/]+/sources/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    readTime = {
                      description = "Time used as a reference point when filtering findings. The filter is limited to findings existing at the supplied time and their values are those at that specific time. Absence of this field will default to the API's version of NOW.",
                      format = "google-datetime",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/findings",
                  response = {
                    ["$ref"] = "ListFindingsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                patch = {
                  description = "Creates or updates a finding. The corresponding source must exist for a finding creation to succeed.",
                  flatPath = "v1/projects/{projectsId}/sources/{sourcesId}/findings/{findingsId}",
                  httpMethod = "PATCH",
                  id = "securitycenter.projects.sources.findings.patch",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "The relative resource name of this finding. See: https://cloud.google.com/apis/design/resource_names#relative_resource_name Example: \"organizations/{organization_id}/sources/{source_id}/findings/{finding_id}\"",
                      location = "path",
                      pattern = "^projects/[^/]+/sources/[^/]+/findings/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    updateMask = {
                      description = "The FieldMask to use when updating the finding resource. This field should not be specified when creating a finding. When updating a finding, an empty mask is treated as updating all mutable fields and replacing source_properties. Individual source_properties can be added/updated by using \"source_properties.\" in the field mask.",
                      format = "google-fieldmask",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  request = {
                    ["$ref"] = "Finding",
                  },
                  response = {
                    ["$ref"] = "Finding",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                setMute = {
                  description = "Updates the mute state of a finding.",
                  flatPath = "v1/projects/{projectsId}/sources/{sourcesId}/findings/{findingsId}:setMute",
                  httpMethod = "POST",
                  id = "securitycenter.projects.sources.findings.setMute",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The [relative resource name](https://cloud.google.com/apis/design/resource_names#relative_resource_name) of the finding. Example: \"organizations/{organization_id}/sources/{source_id}/findings/{finding_id}\", \"folders/{folder_id}/sources/{source_id}/findings/{finding_id}\", \"projects/{project_id}/sources/{source_id}/findings/{finding_id}\".",
                      location = "path",
                      pattern = "^projects/[^/]+/sources/[^/]+/findings/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}:setMute",
                  request = {
                    ["$ref"] = "SetMuteRequest",
                  },
                  response = {
                    ["$ref"] = "Finding",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                setState = {
                  description = "Updates the state of a finding.",
                  flatPath = "v1/projects/{projectsId}/sources/{sourcesId}/findings/{findingsId}:setState",
                  httpMethod = "POST",
                  id = "securitycenter.projects.sources.findings.setState",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The [relative resource name](https://cloud.google.com/apis/design/resource_names#relative_resource_name) of the finding. Example: \"organizations/{organization_id}/sources/{source_id}/findings/{finding_id}\", \"folders/{folder_id}/sources/{source_id}/findings/{finding_id}\", \"projects/{project_id}/sources/{source_id}/findings/{finding_id}\".",
                      location = "path",
                      pattern = "^projects/[^/]+/sources/[^/]+/findings/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}:setState",
                  request = {
                    ["$ref"] = "SetFindingStateRequest",
                  },
                  response = {
                    ["$ref"] = "Finding",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                updateSecurityMarks = {
                  description = "Updates security marks.",
                  flatPath = "v1/projects/{projectsId}/sources/{sourcesId}/findings/{findingsId}/securityMarks",
                  httpMethod = "PATCH",
                  id = "securitycenter.projects.sources.findings.updateSecurityMarks",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "The relative resource name of the SecurityMarks. See: https://cloud.google.com/apis/design/resource_names#relative_resource_name Examples: \"organizations/{organization_id}/assets/{asset_id}/securityMarks\" \"organizations/{organization_id}/sources/{source_id}/findings/{finding_id}/securityMarks\".",
                      location = "path",
                      pattern = "^projects/[^/]+/sources/[^/]+/findings/[^/]+/securityMarks$",
                      required = true,
                      type = "string",
                    },
                    startTime = {
                      description = "The time at which the updated SecurityMarks take effect. If not set uses current server time. Updates will be applied to the SecurityMarks that are active immediately preceding this time. Must be earlier or equal to the server time.",
                      format = "google-datetime",
                      location = "query",
                      type = "string",
                    },
                    updateMask = {
                      description = "The FieldMask to use when updating the security marks resource. The field mask must not contain duplicate fields. If empty or set to \"marks\", all marks will be replaced. Individual marks can be updated using \"marks.\".",
                      format = "google-fieldmask",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  request = {
                    ["$ref"] = "SecurityMarks",
                  },
                  response = {
                    ["$ref"] = "SecurityMarks",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
              },
              resources = {
                externalSystems = {
                  methods = {
                    patch = {
                      description = "Updates external system. This is for a given finding.",
                      flatPath = "v1/projects/{projectsId}/sources/{sourcesId}/findings/{findingsId}/externalSystems/{externalSystemsId}",
                      httpMethod = "PATCH",
                      id = "securitycenter.projects.sources.findings.externalSystems.patch",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Full resource name of the external system, for example: \"organizations/1234/sources/5678/findings/123456/externalSystems/jira\", \"folders/1234/sources/5678/findings/123456/externalSystems/jira\", \"projects/1234/sources/5678/findings/123456/externalSystems/jira\"",
                          location = "path",
                          pattern = "^projects/[^/]+/sources/[^/]+/findings/[^/]+/externalSystems/[^/]+$",
                          required = true,
                          type = "string",
                        },
                        updateMask = {
                          description = "The FieldMask to use when updating the external system resource. If empty all mutable fields will be updated.",
                          format = "google-fieldmask",
                          location = "query",
                          type = "string",
                        },
                      },
                      path = "v1/{+name}",
                      request = {
                        ["$ref"] = "GoogleCloudSecuritycenterV1ExternalSystem",
                      },
                      response = {
                        ["$ref"] = "GoogleCloudSecuritycenterV1ExternalSystem",
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
  revision = "20230105",
  rootUrl = "https://securitycenter.googleapis.com/",
  schemas = {
    Access = {
      description = "Represents an access event.",
      id = "Access",
      properties = {
        callerIp = {
          description = "Caller's IP address, such as \"1.1.1.1\".",
          type = "string",
        },
        callerIpGeo = {
          ["$ref"] = "Geolocation",
          description = "The caller IP's geolocation, which identifies where the call came from.",
        },
        methodName = {
          description = "The method that the service account called, e.g. \"SetIamPolicy\".",
          type = "string",
        },
        principalEmail = {
          description = "Associated email, such as \"foo@google.com\". The email address of the authenticated user (or service account on behalf of third party principal) making the request. For third party identity callers, the `principal_subject` field is populated instead of this field. For privacy reasons, the principal email address is sometimes redacted. For more information, see [Caller identities in audit logs](https://cloud.google.com/logging/docs/audit#user-id).",
          type = "string",
        },
        principalSubject = {
          description = "A string representing the principal_subject associated with the identity. As compared to `principal_email`, supports principals that aren't associated with email addresses, such as third party principals. For most identities, the format will be `principal://iam.googleapis.com/{identity pool name}/subjects/{subject}` except for some GKE identities (GKE_WORKLOAD, FREEFORM, GKE_HUB_WORKLOAD) that are still in the legacy format `serviceAccount:{identity pool name}[{subject}]`",
          type = "string",
        },
        serviceAccountDelegationInfo = {
          description = "Identity delegation history of an authenticated service account that makes the request. It contains information on the real authorities that try to access GCP resources by delegating on a service account. When multiple authorities are present, they are guaranteed to be sorted based on the original ordering of the identity delegation events.",
          items = {
            ["$ref"] = "ServiceAccountDelegationInfo",
          },
          type = "array",
        },
        serviceAccountKeyName = {
          description = "The name of the service account key used to create or exchange credentials for authenticating the service account making the request. This is a scheme-less URI full resource name. For example: \"//iam.googleapis.com/projects/{PROJECT_ID}/serviceAccounts/{ACCOUNT}/keys/{key}\" ",
          type = "string",
        },
        serviceName = {
          description = "This is the API service that the service account made a call to, e.g. \"iam.googleapis.com\"",
          type = "string",
        },
        userAgentFamily = {
          description = "What kind of user agent is associated, e.g. operating system shells, embedded or stand-alone applications, etc.",
          type = "string",
        },
        userName = {
          description = "A string representing a username. This is likely not an IAM principal. For instance, this may be the system user name if the finding is VM-related, or this may be some type of application login user name, depending on the type of finding.",
          type = "string",
        },
      },
      type = "object",
    },
    AccessReview = {
      description = "Conveys information about a Kubernetes access review (e.g. kubectl auth can-i ...) that was involved in a finding.",
      id = "AccessReview",
      properties = {
        group = {
          description = "Group is the API Group of the Resource. \"*\" means all.",
          type = "string",
        },
        name = {
          description = "Name is the name of the resource being requested. Empty means all.",
          type = "string",
        },
        ns = {
          description = "Namespace of the action being requested. Currently, there is no distinction between no namespace and all namespaces. Both are represented by \"\" (empty).",
          type = "string",
        },
        resource = {
          description = "Resource is the optional resource type requested. \"*\" means all.",
          type = "string",
        },
        subresource = {
          description = "Subresource is the optional subresource type.",
          type = "string",
        },
        verb = {
          description = "Verb is a Kubernetes resource API verb, like: get, list, watch, create, update, delete, proxy. \"*\" means all.",
          type = "string",
        },
        version = {
          description = "Version is the API Version of the Resource. \"*\" means all.",
          type = "string",
        },
      },
      type = "object",
    },
    Asset = {
      description = "Security Command Center representation of a Google Cloud resource. The Asset is a Security Command Center resource that captures information about a single Google Cloud resource. All modifications to an Asset are only within the context of Security Command Center and don't affect the referenced Google Cloud resource.",
      id = "Asset",
      properties = {
        canonicalName = {
          description = "The canonical name of the resource. It's either \"organizations/{organization_id}/assets/{asset_id}\", \"folders/{folder_id}/assets/{asset_id}\" or \"projects/{project_number}/assets/{asset_id}\", depending on the closest CRM ancestor of the resource.",
          type = "string",
        },
        createTime = {
          description = "The time at which the asset was created in Security Command Center.",
          format = "google-datetime",
          type = "string",
        },
        iamPolicy = {
          ["$ref"] = "IamPolicy",
          description = "Cloud IAM Policy information associated with the Google Cloud resource described by the Security Command Center asset. This information is managed and defined by the Google Cloud resource and cannot be modified by the user.",
        },
        name = {
          description = "The relative resource name of this asset. See: https://cloud.google.com/apis/design/resource_names#relative_resource_name Example: \"organizations/{organization_id}/assets/{asset_id}\".",
          type = "string",
        },
        resourceProperties = {
          additionalProperties = {
            type = "any",
          },
          description = "Resource managed properties. These properties are managed and defined by the Google Cloud resource and cannot be modified by the user.",
          type = "object",
        },
        securityCenterProperties = {
          ["$ref"] = "SecurityCenterProperties",
          description = "Security Command Center managed properties. These properties are managed by Security Command Center and cannot be modified by the user.",
        },
        securityMarks = {
          ["$ref"] = "SecurityMarks",
          description = "User specified security marks. These marks are entirely managed by the user and come from the SecurityMarks resource that belongs to the asset.",
        },
        updateTime = {
          description = "The time at which the asset was last updated or added in Cloud SCC.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    AssetDiscoveryConfig = {
      description = "The configuration used for Asset Discovery runs.",
      id = "AssetDiscoveryConfig",
      properties = {
        folderIds = {
          description = "The folder ids to use for filtering asset discovery. It consists of only digits, e.g., 756619654966.",
          items = {
            type = "string",
          },
          type = "array",
        },
        inclusionMode = {
          description = "The mode to use for filtering asset discovery.",
          enum = {
            "INCLUSION_MODE_UNSPECIFIED",
            "INCLUDE_ONLY",
            "EXCLUDE",
          },
          enumDescriptions = {
            "Unspecified. Setting the mode with this value will disable inclusion/exclusion filtering for Asset Discovery.",
            "Asset Discovery will capture only the resources within the projects specified. All other resources will be ignored.",
            "Asset Discovery will ignore all resources under the projects specified. All other resources will be retrieved.",
          },
          type = "string",
        },
        projectIds = {
          description = "The project ids to use for filtering asset discovery.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    AssociatedFinding = {
      description = "A finding that is associated with this node in the exposure path.",
      id = "AssociatedFinding",
      properties = {
        canonicalFindingName = {
          description = "Canonical name of the associated findings. Example: organizations/123/sources/456/findings/789",
          type = "string",
        },
        findingCategory = {
          description = "The additional taxonomy group within findings from a given source.",
          type = "string",
        },
        name = {
          description = "Full resource name of the finding.",
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
    BulkMuteFindingsRequest = {
      description = "Request message for bulk findings update. Note: 1. If multiple bulk update requests match the same resource, the order in which they get executed is not defined. 2. Once a bulk operation is started, there is no way to stop it.",
      id = "BulkMuteFindingsRequest",
      properties = {
        filter = {
          description = "Expression that identifies findings that should be updated. The expression is a list of zero or more restrictions combined via logical operators `AND` and `OR`. Parentheses are supported, and `OR` has higher precedence than `AND`. Restrictions have the form ` ` and may have a `-` character in front of them to indicate negation. The fields map to those defined in the corresponding resource. The supported operators are: * `=` for all value types. * `>`, `<`, `>=`, `<=` for integer values. * `:`, meaning substring matching, for strings. The supported value types are: * string literals in quotes. * integer literals without quotes. * boolean literals `true` and `false` without quotes.",
          type = "string",
        },
        muteAnnotation = {
          description = "This can be a mute configuration name or any identifier for mute/unmute of findings based on the filter.",
          type = "string",
        },
      },
      type = "object",
    },
    Compliance = {
      description = "Contains compliance information about a security standard indicating unmet recommendations.",
      id = "Compliance",
      properties = {
        ids = {
          description = "Policies within the standard/benchmark e.g. A.12.4.1",
          items = {
            type = "string",
          },
          type = "array",
        },
        standard = {
          description = "Refers to industry wide standards or benchmarks e.g. \"cis\", \"pci\", \"owasp\", etc.",
          type = "string",
        },
        version = {
          description = "Version of the standard/benchmark e.g. 1.1",
          type = "string",
        },
      },
      type = "object",
    },
    Connection = {
      description = "Contains information about the IP connection associated with the finding.",
      id = "Connection",
      properties = {
        destinationIp = {
          description = "Destination IP address. Not present for sockets that are listening and not connected.",
          type = "string",
        },
        destinationPort = {
          description = "Destination port. Not present for sockets that are listening and not connected.",
          format = "int32",
          type = "integer",
        },
        protocol = {
          description = "IANA Internet Protocol Number such as TCP(6) and UDP(17).",
          enum = {
            "PROTOCOL_UNSPECIFIED",
            "ICMP",
            "TCP",
            "UDP",
            "GRE",
            "ESP",
          },
          enumDescriptions = {
            "Unspecified protocol (not HOPOPT).",
            "Internet Control Message Protocol.",
            "Transmission Control Protocol.",
            "User Datagram Protocol.",
            "Generic Routing Encapsulation.",
            "Encap Security Payload.",
          },
          type = "string",
        },
        sourceIp = {
          description = "Source IP address.",
          type = "string",
        },
        sourcePort = {
          description = "Source port.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    Contact = {
      description = "The email address of a contact.",
      id = "Contact",
      properties = {
        email = {
          description = "An email address. For example, \"`person123@company.com`\".",
          type = "string",
        },
      },
      type = "object",
    },
    ContactDetails = {
      description = "The details pertaining to specific contacts",
      id = "ContactDetails",
      properties = {
        contacts = {
          description = "A list of contacts",
          items = {
            ["$ref"] = "Contact",
          },
          type = "array",
        },
      },
      type = "object",
    },
    Container = {
      description = "Container associated with the finding.",
      id = "Container",
      properties = {
        imageId = {
          description = "Optional container image id, when provided by the container runtime. Uniquely identifies the container image launched using a container image digest.",
          type = "string",
        },
        labels = {
          description = "Container labels, as provided by the container runtime.",
          items = {
            ["$ref"] = "Label",
          },
          type = "array",
        },
        name = {
          description = "Container name.",
          type = "string",
        },
        uri = {
          description = "Container image URI provided when configuring a pod/container. May identify a container image version using mutable tags.",
          type = "string",
        },
      },
      type = "object",
    },
    Cve = {
      description = "CVE stands for Common Vulnerabilities and Exposures. More information: https://cve.mitre.org",
      id = "Cve",
      properties = {
        cvssv3 = {
          ["$ref"] = "Cvssv3",
          description = "Describe Common Vulnerability Scoring System specified at https://www.first.org/cvss/v3.1/specification-document",
        },
        id = {
          description = "The unique identifier for the vulnerability. e.g. CVE-2021-34527",
          type = "string",
        },
        references = {
          description = "Additional information about the CVE. e.g. https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2021-34527",
          items = {
            ["$ref"] = "Reference",
          },
          type = "array",
        },
        upstreamFixAvailable = {
          description = "Whether upstream fix is available for the CVE.",
          type = "boolean",
        },
      },
      type = "object",
    },
    Cvssv3 = {
      description = "Common Vulnerability Scoring System version 3.",
      id = "Cvssv3",
      properties = {
        attackComplexity = {
          description = "This metric describes the conditions beyond the attacker's control that must exist in order to exploit the vulnerability.",
          enum = {
            "ATTACK_COMPLEXITY_UNSPECIFIED",
            "ATTACK_COMPLEXITY_LOW",
            "ATTACK_COMPLEXITY_HIGH",
          },
          enumDescriptions = {
            "Invalid value.",
            "Specialized access conditions or extenuating circumstances do not exist. An attacker can expect repeatable success when attacking the vulnerable component.",
            "A successful attack depends on conditions beyond the attacker's control. That is, a successful attack cannot be accomplished at will, but requires the attacker to invest in some measurable amount of effort in preparation or execution against the vulnerable component before a successful attack can be expected.",
          },
          type = "string",
        },
        attackVector = {
          description = "Base Metrics Represents the intrinsic characteristics of a vulnerability that are constant over time and across user environments. This metric reflects the context by which vulnerability exploitation is possible.",
          enum = {
            "ATTACK_VECTOR_UNSPECIFIED",
            "ATTACK_VECTOR_NETWORK",
            "ATTACK_VECTOR_ADJACENT",
            "ATTACK_VECTOR_LOCAL",
            "ATTACK_VECTOR_PHYSICAL",
          },
          enumDescriptions = {
            "Invalid value.",
            "The vulnerable component is bound to the network stack and the set of possible attackers extends beyond the other options listed below, up to and including the entire Internet.",
            "The vulnerable component is bound to the network stack, but the attack is limited at the protocol level to a logically adjacent topology.",
            "The vulnerable component is not bound to the network stack and the attacker's path is via read/write/execute capabilities.",
            "The attack requires the attacker to physically touch or manipulate the vulnerable component.",
          },
          type = "string",
        },
        availabilityImpact = {
          description = "This metric measures the impact to the availability of the impacted component resulting from a successfully exploited vulnerability.",
          enum = {
            "IMPACT_UNSPECIFIED",
            "IMPACT_HIGH",
            "IMPACT_LOW",
            "IMPACT_NONE",
          },
          enumDescriptions = {
            "Invalid value.",
            "High impact.",
            "Low impact.",
            "No impact.",
          },
          type = "string",
        },
        baseScore = {
          description = "The base score is a function of the base metric scores.",
          format = "double",
          type = "number",
        },
        confidentialityImpact = {
          description = "This metric measures the impact to the confidentiality of the information resources managed by a software component due to a successfully exploited vulnerability.",
          enum = {
            "IMPACT_UNSPECIFIED",
            "IMPACT_HIGH",
            "IMPACT_LOW",
            "IMPACT_NONE",
          },
          enumDescriptions = {
            "Invalid value.",
            "High impact.",
            "Low impact.",
            "No impact.",
          },
          type = "string",
        },
        integrityImpact = {
          description = "This metric measures the impact to integrity of a successfully exploited vulnerability.",
          enum = {
            "IMPACT_UNSPECIFIED",
            "IMPACT_HIGH",
            "IMPACT_LOW",
            "IMPACT_NONE",
          },
          enumDescriptions = {
            "Invalid value.",
            "High impact.",
            "Low impact.",
            "No impact.",
          },
          type = "string",
        },
        privilegesRequired = {
          description = "This metric describes the level of privileges an attacker must possess before successfully exploiting the vulnerability.",
          enum = {
            "PRIVILEGES_REQUIRED_UNSPECIFIED",
            "PRIVILEGES_REQUIRED_NONE",
            "PRIVILEGES_REQUIRED_LOW",
            "PRIVILEGES_REQUIRED_HIGH",
          },
          enumDescriptions = {
            "Invalid value.",
            "The attacker is unauthorized prior to attack, and therefore does not require any access to settings or files of the vulnerable system to carry out an attack.",
            "The attacker requires privileges that provide basic user capabilities that could normally affect only settings and files owned by a user. Alternatively, an attacker with Low privileges has the ability to access only non-sensitive resources.",
            "The attacker requires privileges that provide significant (e.g., administrative) control over the vulnerable component allowing access to component-wide settings and files.",
          },
          type = "string",
        },
        scope = {
          description = "The Scope metric captures whether a vulnerability in one vulnerable component impacts resources in components beyond its security scope.",
          enum = {
            "SCOPE_UNSPECIFIED",
            "SCOPE_UNCHANGED",
            "SCOPE_CHANGED",
          },
          enumDescriptions = {
            "Invalid value.",
            "An exploited vulnerability can only affect resources managed by the same security authority.",
            "An exploited vulnerability can affect resources beyond the security scope managed by the security authority of the vulnerable component.",
          },
          type = "string",
        },
        userInteraction = {
          description = "This metric captures the requirement for a human user, other than the attacker, to participate in the successful compromise of the vulnerable component.",
          enum = {
            "USER_INTERACTION_UNSPECIFIED",
            "USER_INTERACTION_NONE",
            "USER_INTERACTION_REQUIRED",
          },
          enumDescriptions = {
            "Invalid value.",
            "The vulnerable system can be exploited without interaction from any user.",
            "Successful exploitation of this vulnerability requires a user to take some action before the vulnerability can be exploited.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    Database = {
      description = "Represents database access information, such as queries. A database may be a sub-resource of an instance (as in the case of CloudSQL instances or Cloud Spanner instances), or the database instance itself. Some database resources may not have the full resource name populated because these resource types are not yet supported by Cloud Asset Inventory (e.g. CloudSQL databases). In these cases only the display name will be provided.",
      id = "Database",
      properties = {
        displayName = {
          description = "The human readable name of the database the user connected to.",
          type = "string",
        },
        grantees = {
          description = "The target usernames/roles/groups of a SQL privilege grant (not an IAM policy change).",
          items = {
            type = "string",
          },
          type = "array",
        },
        name = {
          description = "The full resource name of the database the user connected to, if it is supported by CAI. (https://google.aip.dev/122#full-resource-names)",
          type = "string",
        },
        query = {
          description = "The SQL statement associated with the relevant access.",
          type = "string",
        },
        userName = {
          description = "The username used to connect to the DB. This may not necessarily be an IAM principal, and has no required format.",
          type = "string",
        },
      },
      type = "object",
    },
    Detection = {
      description = "Memory hash detection contributing to the binary family match.",
      id = "Detection",
      properties = {
        binary = {
          description = "The name of the binary associated with the memory hash signature detection.",
          type = "string",
        },
        percentPagesMatched = {
          description = "The percentage of memory page hashes in the signature that were matched.",
          format = "double",
          type = "number",
        },
      },
      type = "object",
    },
    Edge = {
      description = "Represents a connection between a source node and a destination node in this exposure path.",
      id = "Edge",
      properties = {
        destination = {
          description = "This is the resource name of the destination node.",
          type = "string",
        },
        source = {
          description = "This is the resource name of the source node.",
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
    EnvironmentVariable = {
      description = "EnvironmentVariable is a name-value pair to store environment variables for Process.",
      id = "EnvironmentVariable",
      properties = {
        name = {
          description = "Environment variable name as a JSON encoded string.",
          type = "string",
        },
        val = {
          description = "Environment variable value as a JSON encoded string.",
          type = "string",
        },
      },
      type = "object",
    },
    ExfilResource = {
      description = "Resource that has been exfiltrated or exfiltrated_to.",
      id = "ExfilResource",
      properties = {
        components = {
          description = "Subcomponents of the asset that is exfiltrated - these could be URIs used during exfiltration, table names, databases, filenames, etc. For example, multiple tables may be exfiltrated from the same CloudSQL instance, or multiple files from the same Cloud Storage bucket.",
          items = {
            type = "string",
          },
          type = "array",
        },
        name = {
          description = "Resource's URI (https://google.aip.dev/122#full-resource-names)",
          type = "string",
        },
      },
      type = "object",
    },
    Exfiltration = {
      description = "Exfiltration represents a data exfiltration attempt of one or more sources to one or more targets. Sources represent the source of data that is exfiltrated, and Targets represents the destination the data was copied to.",
      id = "Exfiltration",
      properties = {
        sources = {
          description = "If there are multiple sources, then the data is considered \"joined\" between them. For instance, BigQuery can join multiple tables, and each table would be considered a source.",
          items = {
            ["$ref"] = "ExfilResource",
          },
          type = "array",
        },
        targets = {
          description = "If there are multiple targets, each target would get a complete copy of the \"joined\" source data.",
          items = {
            ["$ref"] = "ExfilResource",
          },
          type = "array",
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
    File = {
      description = "File information about the related binary/library used by an executable, or the script used by a script interpreter",
      id = "File",
      properties = {
        contents = {
          description = "Prefix of the file contents as a JSON encoded string. (Currently only populated for Malicious Script Executed findings.)",
          type = "string",
        },
        hashedSize = {
          description = "The length in bytes of the file prefix that was hashed. If hashed_size == size, any hashes reported represent the entire file.",
          format = "int64",
          type = "string",
        },
        partiallyHashed = {
          description = "True when the hash covers only a prefix of the file.",
          type = "boolean",
        },
        path = {
          description = "Absolute path of the file as a JSON encoded string.",
          type = "string",
        },
        sha256 = {
          description = "SHA256 hash of the first hashed_size bytes of the file encoded as a hex string. If hashed_size == size, sha256 represents the SHA256 hash of the entire file.",
          type = "string",
        },
        size = {
          description = "Size of the file in bytes.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    Finding = {
      description = "Security Command Center finding. A finding is a record of assessment data like security, risk, health, or privacy, that is ingested into Security Command Center for presentation, notification, analysis, policy testing, and enforcement. For example, a cross-site scripting (XSS) vulnerability in an App Engine application is a finding.",
      id = "Finding",
      properties = {
        access = {
          ["$ref"] = "Access",
          description = "Access details associated to the Finding, such as more information on the caller, which method was accessed, from where, etc.",
        },
        canonicalName = {
          description = "The canonical name of the finding. It's either \"organizations/{organization_id}/sources/{source_id}/findings/{finding_id}\", \"folders/{folder_id}/sources/{source_id}/findings/{finding_id}\" or \"projects/{project_number}/sources/{source_id}/findings/{finding_id}\", depending on the closest CRM ancestor of the resource associated with the finding.",
          type = "string",
        },
        category = {
          description = "The additional taxonomy group within findings from a given source. This field is immutable after creation time. Example: \"XSS_FLASH_INJECTION\"",
          type = "string",
        },
        compliances = {
          description = "Contains compliance information for security standards associated to the finding.",
          items = {
            ["$ref"] = "Compliance",
          },
          type = "array",
        },
        connections = {
          description = "Contains information about the IP connection associated with the finding.",
          items = {
            ["$ref"] = "Connection",
          },
          type = "array",
        },
        contacts = {
          additionalProperties = {
            ["$ref"] = "ContactDetails",
          },
          description = "Output only. Map containing the points of contact for the given finding. The key represents the type of contact, while the value contains a list of all the contacts that pertain. Please refer to: https://cloud.google.com/resource-manager/docs/managing-notification-contacts#notification-categories { \"security\": { \"contacts\": [ { \"email\": \"person1@company.com\" }, { \"email\": \"person2@company.com\" } ] } }",
          readOnly = true,
          type = "object",
        },
        containers = {
          description = "Containers associated with the finding. containers provides information for both Kubernetes and non-Kubernetes containers.",
          items = {
            ["$ref"] = "Container",
          },
          type = "array",
        },
        createTime = {
          description = "The time at which the finding was created in Security Command Center.",
          format = "google-datetime",
          type = "string",
        },
        database = {
          ["$ref"] = "Database",
          description = "Database associated with the finding.",
        },
        description = {
          description = "Contains more detail about the finding.",
          type = "string",
        },
        eventTime = {
          description = "The time the finding was first detected. If an existing finding is updated, then this is the time the update occurred. For example, if the finding represents an open firewall, this property captures the time the detector believes the firewall became open. The accuracy is determined by the detector. If the finding is later resolved, then this time reflects when the finding was resolved. This must not be set to a value greater than the current timestamp.",
          format = "google-datetime",
          type = "string",
        },
        exfiltration = {
          ["$ref"] = "Exfiltration",
          description = "Represents exfiltration associated with the Finding.",
        },
        externalSystems = {
          additionalProperties = {
            ["$ref"] = "GoogleCloudSecuritycenterV1ExternalSystem",
          },
          description = "Output only. Third party SIEM/SOAR fields within SCC, contains external system information and external system finding fields.",
          readOnly = true,
          type = "object",
        },
        externalUri = {
          description = "The URI that, if available, points to a web page outside of Security Command Center where additional information about the finding can be found. This field is guaranteed to be either empty or a well formed URL.",
          type = "string",
        },
        files = {
          description = "File associated with the finding.",
          items = {
            ["$ref"] = "File",
          },
          type = "array",
        },
        findingClass = {
          description = "The class of the finding.",
          enum = {
            "FINDING_CLASS_UNSPECIFIED",
            "THREAT",
            "VULNERABILITY",
            "MISCONFIGURATION",
            "OBSERVATION",
            "SCC_ERROR",
          },
          enumDescriptions = {
            "Unspecified finding class.",
            "Describes unwanted or malicious activity.",
            "Describes a potential weakness in software that increases risk to Confidentiality & Integrity & Availability.",
            "Describes a potential weakness in cloud resource/asset configuration that increases risk.",
            "Describes a security observation that is for informational purposes.",
            "Describes an error that prevents some SCC functionality.",
          },
          type = "string",
        },
        iamBindings = {
          description = "Represents IAM bindings associated with the Finding.",
          items = {
            ["$ref"] = "IamBinding",
          },
          type = "array",
        },
        indicator = {
          ["$ref"] = "Indicator",
          description = "Represents what's commonly known as an Indicator of compromise (IoC) in computer forensics. This is an artifact observed on a network or in an operating system that, with high confidence, indicates a computer intrusion. Reference: https://en.wikipedia.org/wiki/Indicator_of_compromise",
        },
        kernelRootkit = {
          ["$ref"] = "KernelRootkit",
          description = "Kernel Rootkit signature.",
        },
        kubernetes = {
          ["$ref"] = "Kubernetes",
          description = "Kubernetes resources associated with the finding.",
        },
        mitreAttack = {
          ["$ref"] = "MitreAttack",
          description = "MITRE ATT&CK tactics and techniques related to this finding. See: https://attack.mitre.org",
        },
        mute = {
          description = "Indicates the mute state of a finding (either muted, unmuted or undefined). Unlike other attributes of a finding, a finding provider shouldn't set the value of mute.",
          enum = {
            "MUTE_UNSPECIFIED",
            "MUTED",
            "UNMUTED",
            "UNDEFINED",
          },
          enumDescriptions = {
            "Unspecified.",
            "Finding has been muted.",
            "Finding has been unmuted.",
            "Finding has never been muted/unmuted.",
          },
          type = "string",
        },
        muteInitiator = {
          description = "First known as mute_annotation. Records additional information about the mute operation e.g. mute config that muted the finding, user who muted the finding, etc. Unlike other attributes of a finding, a finding provider shouldn't set the value of mute.",
          type = "string",
        },
        muteUpdateTime = {
          description = "Output only. The most recent time this finding was muted or unmuted.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        name = {
          description = "The relative resource name of this finding. See: https://cloud.google.com/apis/design/resource_names#relative_resource_name Example: \"organizations/{organization_id}/sources/{source_id}/findings/{finding_id}\"",
          type = "string",
        },
        nextSteps = {
          description = "Next steps associate to the finding.",
          type = "string",
        },
        parent = {
          description = "The relative resource name of the source the finding belongs to. See: https://cloud.google.com/apis/design/resource_names#relative_resource_name This field is immutable after creation time. For example: \"organizations/{organization_id}/sources/{source_id}\"",
          type = "string",
        },
        parentDisplayName = {
          description = "Output only. The human readable display name of the finding source such as \"Event Threat Detection\" or \"Security Health Analytics\".",
          readOnly = true,
          type = "string",
        },
        processes = {
          description = "Represents operating system processes associated with the Finding.",
          items = {
            ["$ref"] = "Process",
          },
          type = "array",
        },
        resourceName = {
          description = "For findings on Google Cloud resources, the full resource name of the Google Cloud resource this finding is for. See: https://cloud.google.com/apis/design/resource_names#full_resource_name When the finding is for a non-Google Cloud resource, the resourceName can be a customer or partner defined string. This field is immutable after creation time.",
          type = "string",
        },
        securityMarks = {
          ["$ref"] = "SecurityMarks",
          description = "Output only. User specified security marks. These marks are entirely managed by the user and come from the SecurityMarks resource that belongs to the finding.",
          readOnly = true,
        },
        severity = {
          description = "The severity of the finding. This field is managed by the source that writes the finding.",
          enum = {
            "SEVERITY_UNSPECIFIED",
            "CRITICAL",
            "HIGH",
            "MEDIUM",
            "LOW",
          },
          enumDescriptions = {
            "This value is used for findings when a source doesn't write a severity value.",
            "Vulnerability: A critical vulnerability is easily discoverable by an external actor, exploitable, and results in the direct ability to execute arbitrary code, exfiltrate data, and otherwise gain additional access and privileges to cloud resources and workloads. Examples include publicly accessible unprotected user data, public SSH access with weak or no passwords, etc. Threat: Indicates a threat that is able to access, modify, or delete data or execute unauthorized code within existing resources.",
            "Vulnerability: A high risk vulnerability can be easily discovered and exploited in combination with other vulnerabilities in order to gain direct access and the ability to execute arbitrary code, exfiltrate data, and otherwise gain additional access and privileges to cloud resources and workloads. An example is a database with weak or no passwords that is only accessible internally. This database could easily be compromised by an actor that had access to the internal network. Threat: Indicates a threat that is able to create new computational resources in an environment but not able to access data or execute code in existing resources.",
            "Vulnerability: A medium risk vulnerability could be used by an actor to gain access to resources or privileges that enable them to eventually (through multiple steps or a complex exploit) gain access and the ability to execute arbitrary code or exfiltrate data. An example is a service account with access to more projects than it should have. If an actor gains access to the service account, they could potentially use that access to manipulate a project the service account was not intended to. Threat: Indicates a threat that is able to cause operational impact but may not access data or execute unauthorized code.",
            "Vulnerability: A low risk vulnerability hampers a security organization's ability to detect vulnerabilities or active threats in their deployment, or prevents the root cause investigation of security issues. An example is monitoring and logs being disabled for resource configurations and access. Threat: Indicates a threat that has obtained minimal access to an environment but is not able to access data, execute code, or create resources.",
          },
          type = "string",
        },
        sourceProperties = {
          additionalProperties = {
            type = "any",
          },
          description = "Source specific properties. These properties are managed by the source that writes the finding. The key names in the source_properties map must be between 1 and 255 characters, and must start with a letter and contain alphanumeric characters or underscores only.",
          type = "object",
        },
        state = {
          description = "The state of the finding.",
          enum = {
            "STATE_UNSPECIFIED",
            "ACTIVE",
            "INACTIVE",
          },
          enumDescriptions = {
            "Unspecified state.",
            "The finding requires attention and has not been addressed yet.",
            "The finding has been fixed, triaged as a non-issue or otherwise addressed and is no longer active.",
          },
          type = "string",
        },
        vulnerability = {
          ["$ref"] = "Vulnerability",
          description = "Represents vulnerability-specific fields like CVE and CVSS scores. CVE stands for Common Vulnerabilities and Exposures (https://cve.mitre.org/about/)",
        },
      },
      type = "object",
    },
    Folder = {
      description = "Message that contains the resource name and display name of a folder resource.",
      id = "Folder",
      properties = {
        resourceFolder = {
          description = "Full resource name of this folder. See: https://cloud.google.com/apis/design/resource_names#full_resource_name",
          type = "string",
        },
        resourceFolderDisplayName = {
          description = "The user defined display name for this folder.",
          type = "string",
        },
      },
      type = "object",
    },
    Geolocation = {
      description = "Represents a geographical location for a given access.",
      id = "Geolocation",
      properties = {
        regionCode = {
          description = "A CLDR.",
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
    GoogleCloudSecuritycenterV1BigQueryExport = {
      description = "Configures how to deliver Findings to BigQuery Instance.",
      id = "GoogleCloudSecuritycenterV1BigQueryExport",
      properties = {
        createTime = {
          description = "Output only. The time at which the BigQuery export was created. This field is set by the server and will be ignored if provided on export on creation.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        dataset = {
          description = "The dataset to write findings' updates to. Its format is \"projects/[project_id]/datasets/[bigquery_dataset_id]\". BigQuery Dataset unique ID must contain only letters (a-z, A-Z), numbers (0-9), or underscores (_).",
          type = "string",
        },
        description = {
          description = "The description of the export (max of 1024 characters).",
          type = "string",
        },
        filter = {
          description = "Expression that defines the filter to apply across create/update events of findings. The expression is a list of zero or more restrictions combined via logical operators `AND` and `OR`. Parentheses are supported, and `OR` has higher precedence than `AND`. Restrictions have the form ` ` and may have a `-` character in front of them to indicate negation. The fields map to those defined in the corresponding resource. The supported operators are: * `=` for all value types. * `>`, `<`, `>=`, `<=` for integer values. * `:`, meaning substring matching, for strings. The supported value types are: * string literals in quotes. * integer literals without quotes. * boolean literals `true` and `false` without quotes.",
          type = "string",
        },
        mostRecentEditor = {
          description = "Output only. Email address of the user who last edited the BigQuery export. This field is set by the server and will be ignored if provided on export creation or update.",
          readOnly = true,
          type = "string",
        },
        name = {
          description = "The relative resource name of this export. See: https://cloud.google.com/apis/design/resource_names#relative_resource_name. Example format: \"organizations/{organization_id}/bigQueryExports/{export_id}\" Example format: \"folders/{folder_id}/bigQueryExports/{export_id}\" Example format: \"projects/{project_id}/bigQueryExports/{export_id}\" This field is provided in responses, and is ignored when provided in create requests.",
          type = "string",
        },
        principal = {
          description = "Output only. The service account that needs permission to create table and upload data to the BigQuery dataset.",
          readOnly = true,
          type = "string",
        },
        updateTime = {
          description = "Output only. The most recent time at which the BigQuery export was updated. This field is set by the server and will be ignored if provided on export creation or update.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudSecuritycenterV1Binding = {
      description = "Represents a Kubernetes RoleBinding or ClusterRoleBinding.",
      id = "GoogleCloudSecuritycenterV1Binding",
      properties = {
        name = {
          description = "Name for binding.",
          type = "string",
        },
        ns = {
          description = "Namespace for binding.",
          type = "string",
        },
        role = {
          ["$ref"] = "Role",
          description = "The Role or ClusterRole referenced by the binding.",
        },
        subjects = {
          description = "Represents one or more subjects that are bound to the role. Not always available for PATCH requests.",
          items = {
            ["$ref"] = "Subject",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudSecuritycenterV1BulkMuteFindingsResponse = {
      description = "The response to a BulkMute request. Contains the LRO information.",
      id = "GoogleCloudSecuritycenterV1BulkMuteFindingsResponse",
      properties = {},
      type = "object",
    },
    GoogleCloudSecuritycenterV1ExposedResource = {
      description = "A resource that is exposed as a result of a finding.",
      id = "GoogleCloudSecuritycenterV1ExposedResource",
      properties = {
        displayName = {
          description = "Human readable name of the resource that is exposed.",
          type = "string",
        },
        methods = {
          description = "The ways in which this resource is exposed. Examples: Read, Write",
          items = {
            type = "string",
          },
          type = "array",
        },
        name = {
          description = "Exposed Resource Name e.g.: `organizations/123/attackExposureResults/456/exposedResources/789`",
          type = "string",
        },
        resource = {
          description = "The name of the resource that is exposed. See: https://cloud.google.com/apis/design/resource_names#full_resource_name",
          type = "string",
        },
        resourceType = {
          description = "The resource type of the exposed resource. See: https://cloud.google.com/asset-inventory/docs/supported-asset-types",
          type = "string",
        },
        resourceValue = {
          description = "How valuable this resource is.",
          enum = {
            "RESOURCE_VALUE_UNSPECIFIED",
            "RESOURCE_VALUE_LOW",
            "RESOURCE_VALUE_MEDIUM",
            "RESOURCE_VALUE_HIGH",
          },
          enumDescriptions = {
            "The resource value isn't specified.",
            "This is a low value resource.",
            "This is a medium value resource.",
            "This is a high value resource.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudSecuritycenterV1ExposurePath = {
      description = "A path that an attacker could take to reach an exposed resource.",
      id = "GoogleCloudSecuritycenterV1ExposurePath",
      properties = {
        edges = {
          description = "A list of the edges between nodes in this exposure path.",
          items = {
            ["$ref"] = "Edge",
          },
          type = "array",
        },
        exposedResource = {
          ["$ref"] = "GoogleCloudSecuritycenterV1ExposedResource",
          description = "The leaf node of this exposure path.",
        },
        name = {
          description = "Exposure Path Name e.g.: `organizations/123/attackExposureResults/456/exposurePaths/789`",
          type = "string",
        },
        pathNodes = {
          description = "A list of nodes that exist in this exposure path.",
          items = {
            ["$ref"] = "PathNode",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudSecuritycenterV1ExternalSystem = {
      description = "Representation of third party SIEM/SOAR fields within SCC.",
      id = "GoogleCloudSecuritycenterV1ExternalSystem",
      properties = {
        assignees = {
          description = "References primary/secondary etc assignees in the external system.",
          items = {
            type = "string",
          },
          type = "array",
        },
        externalSystemUpdateTime = {
          description = "The most recent time when the corresponding finding's ticket/tracker was updated in the external system.",
          format = "google-datetime",
          type = "string",
        },
        externalUid = {
          description = "Identifier that's used to track the given finding in the external system.",
          type = "string",
        },
        name = {
          description = "Full resource name of the external system, for example: \"organizations/1234/sources/5678/findings/123456/externalSystems/jira\", \"folders/1234/sources/5678/findings/123456/externalSystems/jira\", \"projects/1234/sources/5678/findings/123456/externalSystems/jira\"",
          type = "string",
        },
        status = {
          description = "Most recent status of the corresponding finding's ticket/tracker in the external system.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudSecuritycenterV1MuteConfig = {
      description = "A mute config is a Cloud SCC resource that contains the configuration to mute create/update events of findings.",
      id = "GoogleCloudSecuritycenterV1MuteConfig",
      properties = {
        createTime = {
          description = "Output only. The time at which the mute config was created. This field is set by the server and will be ignored if provided on config creation.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        description = {
          description = "A description of the mute config.",
          type = "string",
        },
        displayName = {
          description = "The human readable name to be displayed for the mute config.",
          type = "string",
        },
        filter = {
          description = "Required. An expression that defines the filter to apply across create/update events of findings. While creating a filter string, be mindful of the scope in which the mute configuration is being created. E.g., If a filter contains project = X but is created under the project = Y scope, it might not match any findings. The following field and operator combinations are supported: * severity: `=`, `:` * category: `=`, `:` * resource.name: `=`, `:` * resource.project_name: `=`, `:` * resource.project_display_name: `=`, `:` * resource.folders.resource_folder: `=`, `:` * resource.parent_name: `=`, `:` * resource.parent_display_name: `=`, `:` * resource.type: `=`, `:` * finding_class: `=`, `:` * indicator.ip_addresses: `=`, `:` * indicator.domains: `=`, `:`",
          type = "string",
        },
        mostRecentEditor = {
          description = "Output only. Email address of the user who last edited the mute config. This field is set by the server and will be ignored if provided on config creation or update.",
          readOnly = true,
          type = "string",
        },
        name = {
          description = "This field will be ignored if provided on config creation. Format \"organizations/{organization}/muteConfigs/{mute_config}\" \"folders/{folder}/muteConfigs/{mute_config}\" \"projects/{project}/muteConfigs/{mute_config}\"",
          type = "string",
        },
        updateTime = {
          description = "Output only. The most recent time at which the mute config was updated. This field is set by the server and will be ignored if provided on config creation or update.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudSecuritycenterV1NotificationMessage = {
      description = "Cloud SCC's Notification",
      id = "GoogleCloudSecuritycenterV1NotificationMessage",
      properties = {
        finding = {
          ["$ref"] = "Finding",
          description = "If it's a Finding based notification config, this field will be populated.",
        },
        notificationConfigName = {
          description = "Name of the notification config that generated current notification.",
          type = "string",
        },
        resource = {
          ["$ref"] = "GoogleCloudSecuritycenterV1Resource",
          description = "The Cloud resource tied to this notification's Finding.",
        },
      },
      type = "object",
    },
    GoogleCloudSecuritycenterV1Resource = {
      description = "Information related to the Google Cloud resource.",
      id = "GoogleCloudSecuritycenterV1Resource",
      properties = {
        displayName = {
          description = "The human readable name of the resource.",
          type = "string",
        },
        folders = {
          description = "Output only. Contains a Folder message for each folder in the assets ancestry. The first folder is the deepest nested folder, and the last folder is the folder directly under the Organization.",
          items = {
            ["$ref"] = "Folder",
          },
          readOnly = true,
          type = "array",
        },
        name = {
          description = "The full resource name of the resource. See: https://cloud.google.com/apis/design/resource_names#full_resource_name",
          type = "string",
        },
        parent = {
          description = "The full resource name of resource's parent.",
          type = "string",
        },
        parentDisplayName = {
          description = "The human readable name of resource's parent.",
          type = "string",
        },
        project = {
          description = "The full resource name of project that the resource belongs to.",
          type = "string",
        },
        projectDisplayName = {
          description = "The project ID that the resource belongs to.",
          type = "string",
        },
        type = {
          description = "The full resource type of the resource.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudSecuritycenterV1ResourceValueConfig = {
      description = "A resource value config is a mapping configuration of user's tag values to resource values. Used by the attack path simulation.",
      id = "GoogleCloudSecuritycenterV1ResourceValueConfig",
      properties = {
        name = {
          description = "Name for the resource value config",
          type = "string",
        },
        resourceType = {
          description = "Apply resource_value only to resources that match resource_type. resource_type will be checked with \"AND\" of other resources. E.g. \"storage.googleapis.com/Bucket\" with resource_value \"HIGH\" will apply \"HIGH\" value only to \"storage.googleapis.com/Bucket\" resources.",
          type = "string",
        },
        resourceValue = {
          description = "Required. Resource value level this expression represents",
          enum = {
            "RESOURCE_VALUE_UNSPECIFIED",
            "HIGH",
            "MEDIUM",
            "LOW",
            "NONE",
          },
          enumDescriptions = {
            "Unspecific value",
            "High resource value",
            "Medium resource value",
            "Low resource value",
            "No resource value, e.g. ignore these resources",
          },
          type = "string",
        },
        scope = {
          description = "Project or folder to scope this config to. For example, \"project/456\" would apply this config only to resources in \"project/456\" scope will be checked with \"AND\" of other resources.",
          type = "string",
        },
        tagValues = {
          description = "Required. Tag values combined with AND to check against. Values in the form \"tagValues/123\" E.g. [ \"tagValues/123\", \"tagValues/456\", \"tagValues/789\" ] https://cloud.google.com/resource-manager/docs/tags/tags-creating-and-managing",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudSecuritycenterV1RunAssetDiscoveryResponse = {
      description = "Response of asset discovery run",
      id = "GoogleCloudSecuritycenterV1RunAssetDiscoveryResponse",
      properties = {
        duration = {
          description = "The duration between asset discovery run start and end",
          format = "google-duration",
          type = "string",
        },
        state = {
          description = "The state of an asset discovery run.",
          enum = {
            "STATE_UNSPECIFIED",
            "COMPLETED",
            "SUPERSEDED",
            "TERMINATED",
          },
          enumDescriptions = {
            "Asset discovery run state was unspecified.",
            "Asset discovery run completed successfully.",
            "Asset discovery run was cancelled with tasks still pending, as another run for the same organization was started with a higher priority.",
            "Asset discovery run was killed and terminated.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudSecuritycenterV1beta1RunAssetDiscoveryResponse = {
      description = "Response of asset discovery run",
      id = "GoogleCloudSecuritycenterV1beta1RunAssetDiscoveryResponse",
      properties = {
        duration = {
          description = "The duration between asset discovery run start and end",
          format = "google-duration",
          type = "string",
        },
        state = {
          description = "The state of an asset discovery run.",
          enum = {
            "STATE_UNSPECIFIED",
            "COMPLETED",
            "SUPERSEDED",
            "TERMINATED",
          },
          enumDescriptions = {
            "Asset discovery run state was unspecified.",
            "Asset discovery run completed successfully.",
            "Asset discovery run was cancelled with tasks still pending, as another run for the same organization was started with a higher priority.",
            "Asset discovery run was killed and terminated.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudSecuritycenterV1p1beta1Finding = {
      description = "Security Command Center finding. A finding is a record of assessment data (security, risk, health or privacy) ingested into Security Command Center for presentation, notification, analysis, policy testing, and enforcement. For example, an XSS vulnerability in an App Engine application is a finding.",
      id = "GoogleCloudSecuritycenterV1p1beta1Finding",
      properties = {
        canonicalName = {
          description = "The canonical name of the finding. It's either \"organizations/{organization_id}/sources/{source_id}/findings/{finding_id}\", \"folders/{folder_id}/sources/{source_id}/findings/{finding_id}\" or \"projects/{project_number}/sources/{source_id}/findings/{finding_id}\", depending on the closest CRM ancestor of the resource associated with the finding.",
          type = "string",
        },
        category = {
          description = "The additional taxonomy group within findings from a given source. This field is immutable after creation time. Example: \"XSS_FLASH_INJECTION\"",
          type = "string",
        },
        createTime = {
          description = "The time at which the finding was created in Security Command Center.",
          format = "google-datetime",
          type = "string",
        },
        eventTime = {
          description = "The time at which the event took place, or when an update to the finding occurred. For example, if the finding represents an open firewall it would capture the time the detector believes the firewall became open. The accuracy is determined by the detector. If the finding were to be resolved afterward, this time would reflect when the finding was resolved. Must not be set to a value greater than the current timestamp.",
          format = "google-datetime",
          type = "string",
        },
        externalUri = {
          description = "The URI that, if available, points to a web page outside of Security Command Center where additional information about the finding can be found. This field is guaranteed to be either empty or a well formed URL.",
          type = "string",
        },
        name = {
          description = "The relative resource name of this finding. See: https://cloud.google.com/apis/design/resource_names#relative_resource_name Example: \"organizations/{organization_id}/sources/{source_id}/findings/{finding_id}\"",
          type = "string",
        },
        parent = {
          description = "The relative resource name of the source the finding belongs to. See: https://cloud.google.com/apis/design/resource_names#relative_resource_name This field is immutable after creation time. For example: \"organizations/{organization_id}/sources/{source_id}\"",
          type = "string",
        },
        resourceName = {
          description = "For findings on Google Cloud resources, the full resource name of the Google Cloud resource this finding is for. See: https://cloud.google.com/apis/design/resource_names#full_resource_name When the finding is for a non-Google Cloud resource, the resourceName can be a customer or partner defined string. This field is immutable after creation time.",
          type = "string",
        },
        securityMarks = {
          ["$ref"] = "GoogleCloudSecuritycenterV1p1beta1SecurityMarks",
          description = "Output only. User specified security marks. These marks are entirely managed by the user and come from the SecurityMarks resource that belongs to the finding.",
          readOnly = true,
        },
        severity = {
          description = "The severity of the finding. This field is managed by the source that writes the finding.",
          enum = {
            "SEVERITY_UNSPECIFIED",
            "CRITICAL",
            "HIGH",
            "MEDIUM",
            "LOW",
          },
          enumDescriptions = {
            "No severity specified. The default value.",
            "Critical severity.",
            "High severity.",
            "Medium severity.",
            "Low severity.",
          },
          type = "string",
        },
        sourceProperties = {
          additionalProperties = {
            type = "any",
          },
          description = "Source specific properties. These properties are managed by the source that writes the finding. The key names in the source_properties map must be between 1 and 255 characters, and must start with a letter and contain alphanumeric characters or underscores only.",
          type = "object",
        },
        state = {
          description = "The state of the finding.",
          enum = {
            "STATE_UNSPECIFIED",
            "ACTIVE",
            "INACTIVE",
          },
          enumDescriptions = {
            "Unspecified state.",
            "The finding requires attention and has not been addressed yet.",
            "The finding has been fixed, triaged as a non-issue or otherwise addressed and is no longer active.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudSecuritycenterV1p1beta1Folder = {
      description = "Message that contains the resource name and display name of a folder resource.",
      id = "GoogleCloudSecuritycenterV1p1beta1Folder",
      properties = {
        resourceFolder = {
          description = "Full resource name of this folder. See: https://cloud.google.com/apis/design/resource_names#full_resource_name",
          type = "string",
        },
        resourceFolderDisplayName = {
          description = "The user defined display name for this folder.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudSecuritycenterV1p1beta1NotificationMessage = {
      description = "Security Command Center's Notification",
      id = "GoogleCloudSecuritycenterV1p1beta1NotificationMessage",
      properties = {
        finding = {
          ["$ref"] = "GoogleCloudSecuritycenterV1p1beta1Finding",
          description = "If it's a Finding based notification config, this field will be populated.",
        },
        notificationConfigName = {
          description = "Name of the notification config that generated current notification.",
          type = "string",
        },
        resource = {
          ["$ref"] = "GoogleCloudSecuritycenterV1p1beta1Resource",
          description = "The Cloud resource tied to the notification.",
        },
      },
      type = "object",
    },
    GoogleCloudSecuritycenterV1p1beta1Resource = {
      description = "Information related to the Google Cloud resource.",
      id = "GoogleCloudSecuritycenterV1p1beta1Resource",
      properties = {
        folders = {
          description = "Output only. Contains a Folder message for each folder in the assets ancestry. The first folder is the deepest nested folder, and the last folder is the folder directly under the Organization.",
          items = {
            ["$ref"] = "GoogleCloudSecuritycenterV1p1beta1Folder",
          },
          readOnly = true,
          type = "array",
        },
        name = {
          description = "The full resource name of the resource. See: https://cloud.google.com/apis/design/resource_names#full_resource_name",
          type = "string",
        },
        parent = {
          description = "The full resource name of resource's parent.",
          type = "string",
        },
        parentDisplayName = {
          description = "The human readable name of resource's parent.",
          type = "string",
        },
        project = {
          description = "The full resource name of project that the resource belongs to.",
          type = "string",
        },
        projectDisplayName = {
          description = "The project id that the resource belongs to.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudSecuritycenterV1p1beta1RunAssetDiscoveryResponse = {
      description = "Response of asset discovery run",
      id = "GoogleCloudSecuritycenterV1p1beta1RunAssetDiscoveryResponse",
      properties = {
        duration = {
          description = "The duration between asset discovery run start and end",
          format = "google-duration",
          type = "string",
        },
        state = {
          description = "The state of an asset discovery run.",
          enum = {
            "STATE_UNSPECIFIED",
            "COMPLETED",
            "SUPERSEDED",
            "TERMINATED",
          },
          enumDescriptions = {
            "Asset discovery run state was unspecified.",
            "Asset discovery run completed successfully.",
            "Asset discovery run was cancelled with tasks still pending, as another run for the same organization was started with a higher priority.",
            "Asset discovery run was killed and terminated.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudSecuritycenterV1p1beta1SecurityMarks = {
      description = "User specified security marks that are attached to the parent Security Command Center resource. Security marks are scoped within a Security Command Center organization -- they can be modified and viewed by all users who have proper permissions on the organization.",
      id = "GoogleCloudSecuritycenterV1p1beta1SecurityMarks",
      properties = {
        canonicalName = {
          description = "The canonical name of the marks. Examples: \"organizations/{organization_id}/assets/{asset_id}/securityMarks\" \"folders/{folder_id}/assets/{asset_id}/securityMarks\" \"projects/{project_number}/assets/{asset_id}/securityMarks\" \"organizations/{organization_id}/sources/{source_id}/findings/{finding_id}/securityMarks\" \"folders/{folder_id}/sources/{source_id}/findings/{finding_id}/securityMarks\" \"projects/{project_number}/sources/{source_id}/findings/{finding_id}/securityMarks\"",
          type = "string",
        },
        marks = {
          additionalProperties = {
            type = "string",
          },
          description = "Mutable user specified security marks belonging to the parent resource. Constraints are as follows: * Keys and values are treated as case insensitive * Keys must be between 1 - 256 characters (inclusive) * Keys must be letters, numbers, underscores, or dashes * Values have leading and trailing whitespace trimmed, remaining characters must be between 1 - 4096 characters (inclusive)",
          type = "object",
        },
        name = {
          description = "The relative resource name of the SecurityMarks. See: https://cloud.google.com/apis/design/resource_names#relative_resource_name Examples: \"organizations/{organization_id}/assets/{asset_id}/securityMarks\" \"organizations/{organization_id}/sources/{source_id}/findings/{finding_id}/securityMarks\".",
          type = "string",
        },
      },
      type = "object",
    },
    GroupAssetsRequest = {
      description = "Request message for grouping by assets.",
      id = "GroupAssetsRequest",
      properties = {
        compareDuration = {
          description = "When compare_duration is set, the GroupResult's \"state_change\" property is updated to indicate whether the asset was added, removed, or remained present during the compare_duration period of time that precedes the read_time. This is the time between (read_time - compare_duration) and read_time. The state change value is derived based on the presence of the asset at the two points in time. Intermediate state changes between the two times don't affect the result. For example, the results aren't affected if the asset is removed and re-created again. Possible \"state_change\" values when compare_duration is specified: * \"ADDED\": indicates that the asset was not present at the start of compare_duration, but present at reference_time. * \"REMOVED\": indicates that the asset was present at the start of compare_duration, but not present at reference_time. * \"ACTIVE\": indicates that the asset was present at both the start and the end of the time period defined by compare_duration and reference_time. If compare_duration is not specified, then the only possible state_change is \"UNUSED\", which will be the state_change set for all assets present at read_time. If this field is set then `state_change` must be a specified field in `group_by`.",
          format = "google-duration",
          type = "string",
        },
        filter = {
          description = "Expression that defines the filter to apply across assets. The expression is a list of zero or more restrictions combined via logical operators `AND` and `OR`. Parentheses are supported, and `OR` has higher precedence than `AND`. Restrictions have the form ` ` and may have a `-` character in front of them to indicate negation. The fields map to those defined in the Asset resource. Examples include: * name * security_center_properties.resource_name * resource_properties.a_property * security_marks.marks.marka The supported operators are: * `=` for all value types. * `>`, `<`, `>=`, `<=` for integer values. * `:`, meaning substring matching, for strings. The supported value types are: * string literals in quotes. * integer literals without quotes. * boolean literals `true` and `false` without quotes. The following field and operator combinations are supported: * name: `=` * update_time: `=`, `>`, `<`, `>=`, `<=` Usage: This should be milliseconds since epoch or an RFC3339 string. Examples: `update_time = \"2019-06-10T16:07:18-07:00\"` `update_time = 1560208038000` * create_time: `=`, `>`, `<`, `>=`, `<=` Usage: This should be milliseconds since epoch or an RFC3339 string. Examples: `create_time = \"2019-06-10T16:07:18-07:00\"` `create_time = 1560208038000` * iam_policy.policy_blob: `=`, `:` * resource_properties: `=`, `:`, `>`, `<`, `>=`, `<=` * security_marks.marks: `=`, `:` * security_center_properties.resource_name: `=`, `:` * security_center_properties.resource_display_name: `=`, `:` * security_center_properties.resource_type: `=`, `:` * security_center_properties.resource_parent: `=`, `:` * security_center_properties.resource_parent_display_name: `=`, `:` * security_center_properties.resource_project: `=`, `:` * security_center_properties.resource_project_display_name: `=`, `:` * security_center_properties.resource_owners: `=`, `:` For example, `resource_properties.size = 100` is a valid filter string. Use a partial match on the empty string to filter based on a property existing: `resource_properties.my_property : \"\"` Use a negated partial match on the empty string to filter based on a property not existing: `-resource_properties.my_property : \"\"`",
          type = "string",
        },
        groupBy = {
          description = "Required. Expression that defines what assets fields to use for grouping. The string value should follow SQL syntax: comma separated list of fields. For example: \"security_center_properties.resource_project,security_center_properties.project\". The following fields are supported when compare_duration is not set: * security_center_properties.resource_project * security_center_properties.resource_project_display_name * security_center_properties.resource_type * security_center_properties.resource_parent * security_center_properties.resource_parent_display_name The following fields are supported when compare_duration is set: * security_center_properties.resource_type * security_center_properties.resource_project_display_name * security_center_properties.resource_parent_display_name",
          type = "string",
        },
        pageSize = {
          description = "The maximum number of results to return in a single response. Default is 10, minimum is 1, maximum is 1000.",
          format = "int32",
          type = "integer",
        },
        pageToken = {
          description = "The value returned by the last `GroupAssetsResponse`; indicates that this is a continuation of a prior `GroupAssets` call, and that the system should return the next page of data.",
          type = "string",
        },
        readTime = {
          description = "Time used as a reference point when filtering assets. The filter is limited to assets existing at the supplied time and their values are those at that specific time. Absence of this field will default to the API's version of NOW.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    GroupAssetsResponse = {
      description = "Response message for grouping by assets.",
      id = "GroupAssetsResponse",
      properties = {
        groupByResults = {
          description = "Group results. There exists an element for each existing unique combination of property/values. The element contains a count for the number of times those specific property/values appear.",
          items = {
            ["$ref"] = "GroupResult",
          },
          type = "array",
        },
        nextPageToken = {
          description = "Token to retrieve the next page of results, or empty if there are no more results.",
          type = "string",
        },
        readTime = {
          description = "Time used for executing the groupBy request.",
          format = "google-datetime",
          type = "string",
        },
        totalSize = {
          description = "The total number of results matching the query.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    GroupFindingsRequest = {
      description = "Request message for grouping by findings.",
      id = "GroupFindingsRequest",
      properties = {
        compareDuration = {
          description = "When compare_duration is set, the GroupResult's \"state_change\" attribute is updated to indicate whether the finding had its state changed, the finding's state remained unchanged, or if the finding was added during the compare_duration period of time that precedes the read_time. This is the time between (read_time - compare_duration) and read_time. The state_change value is derived based on the presence and state of the finding at the two points in time. Intermediate state changes between the two times don't affect the result. For example, the results aren't affected if the finding is made inactive and then active again. Possible \"state_change\" values when compare_duration is specified: * \"CHANGED\": indicates that the finding was present and matched the given filter at the start of compare_duration, but changed its state at read_time. * \"UNCHANGED\": indicates that the finding was present and matched the given filter at the start of compare_duration and did not change state at read_time. * \"ADDED\": indicates that the finding did not match the given filter or was not present at the start of compare_duration, but was present at read_time. * \"REMOVED\": indicates that the finding was present and matched the filter at the start of compare_duration, but did not match the filter at read_time. If compare_duration is not specified, then the only possible state_change is \"UNUSED\", which will be the state_change set for all findings present at read_time. If this field is set then `state_change` must be a specified field in `group_by`.",
          format = "google-duration",
          type = "string",
        },
        filter = {
          description = "Expression that defines the filter to apply across findings. The expression is a list of one or more restrictions combined via logical operators `AND` and `OR`. Parentheses are supported, and `OR` has higher precedence than `AND`. Restrictions have the form ` ` and may have a `-` character in front of them to indicate negation. Examples include: * name * source_properties.a_property * security_marks.marks.marka The supported operators are: * `=` for all value types. * `>`, `<`, `>=`, `<=` for integer values. * `:`, meaning substring matching, for strings. The supported value types are: * string literals in quotes. * integer literals without quotes. * boolean literals `true` and `false` without quotes. The following field and operator combinations are supported: * name: `=` * parent: `=`, `:` * resource_name: `=`, `:` * state: `=`, `:` * category: `=`, `:` * external_uri: `=`, `:` * event_time: `=`, `>`, `<`, `>=`, `<=` Usage: This should be milliseconds since epoch or an RFC3339 string. Examples: `event_time = \"2019-06-10T16:07:18-07:00\"` `event_time = 1560208038000` * severity: `=`, `:` * workflow_state: `=`, `:` * security_marks.marks: `=`, `:` * source_properties: `=`, `:`, `>`, `<`, `>=`, `<=` For example, `source_properties.size = 100` is a valid filter string. Use a partial match on the empty string to filter based on a property existing: `source_properties.my_property : \"\"` Use a negated partial match on the empty string to filter based on a property not existing: `-source_properties.my_property : \"\"` * resource: * resource.name: `=`, `:` * resource.parent_name: `=`, `:` * resource.parent_display_name: `=`, `:` * resource.project_name: `=`, `:` * resource.project_display_name: `=`, `:` * resource.type: `=`, `:`",
          type = "string",
        },
        groupBy = {
          description = "Required. Expression that defines what assets fields to use for grouping (including `state_change`). The string value should follow SQL syntax: comma separated list of fields. For example: \"parent,resource_name\". The following fields are supported: * resource_name * category * state * parent * severity The following fields are supported when compare_duration is set: * state_change",
          type = "string",
        },
        pageSize = {
          description = "The maximum number of results to return in a single response. Default is 10, minimum is 1, maximum is 1000.",
          format = "int32",
          type = "integer",
        },
        pageToken = {
          description = "The value returned by the last `GroupFindingsResponse`; indicates that this is a continuation of a prior `GroupFindings` call, and that the system should return the next page of data.",
          type = "string",
        },
        readTime = {
          description = "Time used as a reference point when filtering findings. The filter is limited to findings existing at the supplied time and their values are those at that specific time. Absence of this field will default to the API's version of NOW.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    GroupFindingsResponse = {
      description = "Response message for group by findings.",
      id = "GroupFindingsResponse",
      properties = {
        groupByResults = {
          description = "Group results. There exists an element for each existing unique combination of property/values. The element contains a count for the number of times those specific property/values appear.",
          items = {
            ["$ref"] = "GroupResult",
          },
          type = "array",
        },
        nextPageToken = {
          description = "Token to retrieve the next page of results, or empty if there are no more results.",
          type = "string",
        },
        readTime = {
          description = "Time used for executing the groupBy request.",
          format = "google-datetime",
          type = "string",
        },
        totalSize = {
          description = "The total number of results matching the query.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    GroupResult = {
      description = "Result containing the properties and count of a groupBy request.",
      id = "GroupResult",
      properties = {
        count = {
          description = "Total count of resources for the given properties.",
          format = "int64",
          type = "string",
        },
        properties = {
          additionalProperties = {
            type = "any",
          },
          description = "Properties matching the groupBy fields in the request.",
          type = "object",
        },
      },
      type = "object",
    },
    IamBinding = {
      description = "Represents a particular IAM binding, which captures a member's role addition, removal, or state.",
      id = "IamBinding",
      properties = {
        action = {
          description = "The action that was performed on a Binding.",
          enum = {
            "ACTION_UNSPECIFIED",
            "ADD",
            "REMOVE",
          },
          enumDescriptions = {
            "Unspecified.",
            "Addition of a Binding.",
            "Removal of a Binding.",
          },
          type = "string",
        },
        member = {
          description = "A single identity requesting access for a Cloud Platform resource, e.g. \"foo@google.com\".",
          type = "string",
        },
        role = {
          description = "Role that is assigned to \"members\". For example, \"roles/viewer\", \"roles/editor\", or \"roles/owner\".",
          type = "string",
        },
      },
      type = "object",
    },
    IamPolicy = {
      description = "Cloud IAM Policy information associated with the Google Cloud resource described by the Security Command Center asset. This information is managed and defined by the Google Cloud resource and cannot be modified by the user.",
      id = "IamPolicy",
      properties = {
        policyBlob = {
          description = "The JSON representation of the Policy associated with the asset. See https://cloud.google.com/iam/reference/rest/v1/Policy for format details.",
          type = "string",
        },
      },
      type = "object",
    },
    Indicator = {
      description = "Represents what's commonly known as an _indicator of compromise_ (IoC) in computer forensics. This is an artifact observed on a network or in an operating system that, with high confidence, indicates a computer intrusion. For more information, see [Indicator of compromise](https://en.wikipedia.org/wiki/Indicator_of_compromise).",
      id = "Indicator",
      properties = {
        domains = {
          description = "List of domains associated to the Finding.",
          items = {
            type = "string",
          },
          type = "array",
        },
        ipAddresses = {
          description = "The list of IP addresses that are associated with the finding.",
          items = {
            type = "string",
          },
          type = "array",
        },
        signatures = {
          description = "The list of matched signatures indicating that the given process is present in the environment.",
          items = {
            ["$ref"] = "ProcessSignature",
          },
          type = "array",
        },
        uris = {
          description = "The list of URIs associated to the Findings.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    KernelRootkit = {
      description = "Kernel mode rootkit signatures.",
      id = "KernelRootkit",
      properties = {
        name = {
          description = "Rootkit name when available.",
          type = "string",
        },
        unexpectedCodeModification = {
          description = "True when unexpected modifications of kernel code memory are present.",
          type = "boolean",
        },
        unexpectedFtraceHandler = {
          description = "True when `ftrace` points are present with callbacks pointing to regions that are not in the expected kernel or module code range.",
          type = "boolean",
        },
        unexpectedInterruptHandler = {
          description = "True when interrupt handlers that are are not in the expected kernel or module code regions are present.",
          type = "boolean",
        },
        unexpectedKernelCodePages = {
          description = "True when kernel code pages that are not in the expected kernel or module code regions are present.",
          type = "boolean",
        },
        unexpectedKprobeHandler = {
          description = "True when `kprobe` points are present with callbacks pointing to regions that are not in the expected kernel or module code range.",
          type = "boolean",
        },
        unexpectedProcessesInRunqueue = {
          description = "True when unexpected processes in the scheduler run queue are present. Such processes are in the run queue, but not in the process task list.",
          type = "boolean",
        },
        unexpectedReadOnlyDataModification = {
          description = "True when unexpected modifications of kernel read-only data memory are present.",
          type = "boolean",
        },
        unexpectedSystemCallHandler = {
          description = "True when system call handlers that are are not in the expected kernel or module code regions are present.",
          type = "boolean",
        },
      },
      type = "object",
    },
    Kubernetes = {
      description = "Kubernetes-related attributes.",
      id = "Kubernetes",
      properties = {
        accessReviews = {
          description = "Provides information on any Kubernetes access reviews (i.e. privilege checks) relevant to the finding.",
          items = {
            ["$ref"] = "AccessReview",
          },
          type = "array",
        },
        bindings = {
          description = "Provides Kubernetes role binding information for findings that involve RoleBindings or ClusterRoleBindings.",
          items = {
            ["$ref"] = "GoogleCloudSecuritycenterV1Binding",
          },
          type = "array",
        },
        nodePools = {
          description = "GKE Node Pools associated with the finding. This field will contain NodePool information for each Node, when it is available.",
          items = {
            ["$ref"] = "NodePool",
          },
          type = "array",
        },
        nodes = {
          description = "Provides Kubernetes Node information.",
          items = {
            ["$ref"] = "Node",
          },
          type = "array",
        },
        pods = {
          description = "Kubernetes Pods associated with the finding. This field will contain Pod records for each container that is owned by a Pod.",
          items = {
            ["$ref"] = "Pod",
          },
          type = "array",
        },
        roles = {
          description = "Provides Kubernetes role information for findings that involve Roles or ClusterRoles.",
          items = {
            ["$ref"] = "Role",
          },
          type = "array",
        },
      },
      type = "object",
    },
    Label = {
      description = "Label represents a generic name=value label. Label has separate name and value fields to support filtering with contains().",
      id = "Label",
      properties = {
        name = {
          description = "Label name.",
          type = "string",
        },
        value = {
          description = "Label value.",
          type = "string",
        },
      },
      type = "object",
    },
    ListAssetsResponse = {
      description = "Response message for listing assets.",
      id = "ListAssetsResponse",
      properties = {
        listAssetsResults = {
          description = "Assets matching the list request.",
          items = {
            ["$ref"] = "ListAssetsResult",
          },
          type = "array",
        },
        nextPageToken = {
          description = "Token to retrieve the next page of results, or empty if there are no more results.",
          type = "string",
        },
        readTime = {
          description = "Time used for executing the list request.",
          format = "google-datetime",
          type = "string",
        },
        totalSize = {
          description = "The total number of assets matching the query.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    ListAssetsResult = {
      description = "Result containing the Asset and its State.",
      id = "ListAssetsResult",
      properties = {
        asset = {
          ["$ref"] = "Asset",
          description = "Asset matching the search request.",
        },
        stateChange = {
          description = "State change of the asset between the points in time.",
          enum = {
            "UNUSED",
            "ADDED",
            "REMOVED",
            "ACTIVE",
          },
          enumDescriptions = {
            "State change is unused, this is the canonical default for this enum.",
            "Asset was added between the points in time.",
            "Asset was removed between the points in time.",
            "Asset was present at both point(s) in time.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    ListBigQueryExportsResponse = {
      description = "Response message for listing BigQuery exports.",
      id = "ListBigQueryExportsResponse",
      properties = {
        bigQueryExports = {
          description = "The BigQuery exports from the specified parent.",
          items = {
            ["$ref"] = "GoogleCloudSecuritycenterV1BigQueryExport",
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
    ListFindingsResponse = {
      description = "Response message for listing findings.",
      id = "ListFindingsResponse",
      properties = {
        listFindingsResults = {
          description = "Findings matching the list request.",
          items = {
            ["$ref"] = "ListFindingsResult",
          },
          type = "array",
        },
        nextPageToken = {
          description = "Token to retrieve the next page of results, or empty if there are no more results.",
          type = "string",
        },
        readTime = {
          description = "Time used for executing the list request.",
          format = "google-datetime",
          type = "string",
        },
        totalSize = {
          description = "The total number of findings matching the query.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    ListFindingsResult = {
      description = "Result containing the Finding and its StateChange.",
      id = "ListFindingsResult",
      properties = {
        finding = {
          ["$ref"] = "Finding",
          description = "Finding matching the search request.",
        },
        resource = {
          ["$ref"] = "Resource",
          description = "Output only. Resource that is associated with this finding.",
          readOnly = true,
        },
        stateChange = {
          description = "State change of the finding between the points in time.",
          enum = {
            "UNUSED",
            "CHANGED",
            "UNCHANGED",
            "ADDED",
            "REMOVED",
          },
          enumDescriptions = {
            "State change is unused, this is the canonical default for this enum.",
            "The finding has changed state in some way between the points in time and existed at both points.",
            "The finding has not changed state between the points in time and existed at both points.",
            "The finding was created between the points in time.",
            "The finding at timestamp does not match the filter specified, but it did at timestamp - compare_duration.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    ListMuteConfigsResponse = {
      description = "Response message for listing mute configs.",
      id = "ListMuteConfigsResponse",
      properties = {
        muteConfigs = {
          description = "The mute configs from the specified parent.",
          items = {
            ["$ref"] = "GoogleCloudSecuritycenterV1MuteConfig",
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
    ListNotificationConfigsResponse = {
      description = "Response message for listing notification configs.",
      id = "ListNotificationConfigsResponse",
      properties = {
        nextPageToken = {
          description = "Token to retrieve the next page of results, or empty if there are no more results.",
          type = "string",
        },
        notificationConfigs = {
          description = "Notification configs belonging to the requested parent.",
          items = {
            ["$ref"] = "NotificationConfig",
          },
          type = "array",
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
    ListSourcesResponse = {
      description = "Response message for listing sources.",
      id = "ListSourcesResponse",
      properties = {
        nextPageToken = {
          description = "Token to retrieve the next page of results, or empty if there are no more results.",
          type = "string",
        },
        sources = {
          description = "Sources belonging to the requested parent.",
          items = {
            ["$ref"] = "Source",
          },
          type = "array",
        },
      },
      type = "object",
    },
    MemoryHashSignature = {
      description = "A signature corresponding to memory page hashes.",
      id = "MemoryHashSignature",
      properties = {
        binaryFamily = {
          description = "The binary family.",
          type = "string",
        },
        detections = {
          description = "The list of memory hash detections contributing to the binary family match.",
          items = {
            ["$ref"] = "Detection",
          },
          type = "array",
        },
      },
      type = "object",
    },
    MitreAttack = {
      description = "MITRE ATT&CK tactics and techniques related to this finding. See: https://attack.mitre.org",
      id = "MitreAttack",
      properties = {
        additionalTactics = {
          description = "Additional MITRE ATT&CK tactics related to this finding, if any.",
          items = {
            enum = {
              "TACTIC_UNSPECIFIED",
              "RECONNAISSANCE",
              "RESOURCE_DEVELOPMENT",
              "INITIAL_ACCESS",
              "EXECUTION",
              "PERSISTENCE",
              "PRIVILEGE_ESCALATION",
              "DEFENSE_EVASION",
              "CREDENTIAL_ACCESS",
              "DISCOVERY",
              "LATERAL_MOVEMENT",
              "COLLECTION",
              "COMMAND_AND_CONTROL",
              "EXFILTRATION",
              "IMPACT",
            },
            enumDescriptions = {
              "Unspecified value.",
              "TA0043",
              "TA0042",
              "TA0001",
              "TA0002",
              "TA0003",
              "TA0004",
              "TA0005",
              "TA0006",
              "TA0007",
              "TA0008",
              "TA0009",
              "TA0011",
              "TA0010",
              "TA0040",
            },
            type = "string",
          },
          type = "array",
        },
        additionalTechniques = {
          description = "Additional MITRE ATT&CK techniques related to this finding, if any, along with any of their respective parent techniques.",
          items = {
            enum = {
              "TECHNIQUE_UNSPECIFIED",
              "ACTIVE_SCANNING",
              "SCANNING_IP_BLOCKS",
              "INGRESS_TOOL_TRANSFER",
              "NATIVE_API",
              "SHARED_MODULES",
              "COMMAND_AND_SCRIPTING_INTERPRETER",
              "UNIX_SHELL",
              "RESOURCE_HIJACKING",
              "PROXY",
              "EXTERNAL_PROXY",
              "MULTI_HOP_PROXY",
              "DYNAMIC_RESOLUTION",
              "UNSECURED_CREDENTIALS",
              "VALID_ACCOUNTS",
              "LOCAL_ACCOUNTS",
              "CLOUD_ACCOUNTS",
              "NETWORK_DENIAL_OF_SERVICE",
              "PERMISSION_GROUPS_DISCOVERY",
              "CLOUD_GROUPS",
              "EXFILTRATION_OVER_WEB_SERVICE",
              "EXFILTRATION_TO_CLOUD_STORAGE",
              "ACCOUNT_MANIPULATION",
              "SSH_AUTHORIZED_KEYS",
              "CREATE_OR_MODIFY_SYSTEM_PROCESS",
              "STEAL_WEB_SESSION_COOKIE",
              "MODIFY_CLOUD_COMPUTE_INFRASTRUCTURE",
              "EXPLOIT_PUBLIC_FACING_APPLICATION",
              "MODIFY_AUTHENTICATION_PROCESS",
              "DATA_DESTRUCTION",
              "DOMAIN_POLICY_MODIFICATION",
              "IMPAIR_DEFENSES",
              "NETWORK_SERVICE_DISCOVERY",
              "ACCESS_TOKEN_MANIPULATION",
              "ABUSE_ELEVATION_CONTROL_MECHANISM",
              "DEFAULT_ACCOUNTS",
            },
            enumDescriptions = {
              "Unspecified value.",
              "T1595",
              "T1595.001",
              "T1105",
              "T1106",
              "T1129",
              "T1059",
              "T1059.004",
              "T1496",
              "T1090",
              "T1090.002",
              "T1090.003",
              "T1568",
              "T1552",
              "T1078",
              "T1078.003",
              "T1078.004",
              "T1498",
              "T1069",
              "T1069.003",
              "T1567",
              "T1567.002",
              "T1098",
              "T1098.004",
              "T1543",
              "T1539",
              "T1578",
              "T1190",
              "T1556",
              "T1485",
              "T1484",
              "T1562",
              "T1046",
              "T1134",
              "T1548",
              "T1078.001",
            },
            type = "string",
          },
          type = "array",
        },
        primaryTactic = {
          description = "The MITRE ATT&CK tactic most closely represented by this finding, if any.",
          enum = {
            "TACTIC_UNSPECIFIED",
            "RECONNAISSANCE",
            "RESOURCE_DEVELOPMENT",
            "INITIAL_ACCESS",
            "EXECUTION",
            "PERSISTENCE",
            "PRIVILEGE_ESCALATION",
            "DEFENSE_EVASION",
            "CREDENTIAL_ACCESS",
            "DISCOVERY",
            "LATERAL_MOVEMENT",
            "COLLECTION",
            "COMMAND_AND_CONTROL",
            "EXFILTRATION",
            "IMPACT",
          },
          enumDescriptions = {
            "Unspecified value.",
            "TA0043",
            "TA0042",
            "TA0001",
            "TA0002",
            "TA0003",
            "TA0004",
            "TA0005",
            "TA0006",
            "TA0007",
            "TA0008",
            "TA0009",
            "TA0011",
            "TA0010",
            "TA0040",
          },
          type = "string",
        },
        primaryTechniques = {
          description = "The MITRE ATT&CK technique most closely represented by this finding, if any. primary_techniques is a repeated field because there are multiple levels of MITRE ATT&CK techniques. If the technique most closely represented by this finding is a sub-technique (e.g. `SCANNING_IP_BLOCKS`), both the sub-technique and its parent technique(s) will be listed (e.g. `SCANNING_IP_BLOCKS`, `ACTIVE_SCANNING`).",
          items = {
            enum = {
              "TECHNIQUE_UNSPECIFIED",
              "ACTIVE_SCANNING",
              "SCANNING_IP_BLOCKS",
              "INGRESS_TOOL_TRANSFER",
              "NATIVE_API",
              "SHARED_MODULES",
              "COMMAND_AND_SCRIPTING_INTERPRETER",
              "UNIX_SHELL",
              "RESOURCE_HIJACKING",
              "PROXY",
              "EXTERNAL_PROXY",
              "MULTI_HOP_PROXY",
              "DYNAMIC_RESOLUTION",
              "UNSECURED_CREDENTIALS",
              "VALID_ACCOUNTS",
              "LOCAL_ACCOUNTS",
              "CLOUD_ACCOUNTS",
              "NETWORK_DENIAL_OF_SERVICE",
              "PERMISSION_GROUPS_DISCOVERY",
              "CLOUD_GROUPS",
              "EXFILTRATION_OVER_WEB_SERVICE",
              "EXFILTRATION_TO_CLOUD_STORAGE",
              "ACCOUNT_MANIPULATION",
              "SSH_AUTHORIZED_KEYS",
              "CREATE_OR_MODIFY_SYSTEM_PROCESS",
              "STEAL_WEB_SESSION_COOKIE",
              "MODIFY_CLOUD_COMPUTE_INFRASTRUCTURE",
              "EXPLOIT_PUBLIC_FACING_APPLICATION",
              "MODIFY_AUTHENTICATION_PROCESS",
              "DATA_DESTRUCTION",
              "DOMAIN_POLICY_MODIFICATION",
              "IMPAIR_DEFENSES",
              "NETWORK_SERVICE_DISCOVERY",
              "ACCESS_TOKEN_MANIPULATION",
              "ABUSE_ELEVATION_CONTROL_MECHANISM",
              "DEFAULT_ACCOUNTS",
            },
            enumDescriptions = {
              "Unspecified value.",
              "T1595",
              "T1595.001",
              "T1105",
              "T1106",
              "T1129",
              "T1059",
              "T1059.004",
              "T1496",
              "T1090",
              "T1090.002",
              "T1090.003",
              "T1568",
              "T1552",
              "T1078",
              "T1078.003",
              "T1078.004",
              "T1498",
              "T1069",
              "T1069.003",
              "T1567",
              "T1567.002",
              "T1098",
              "T1098.004",
              "T1543",
              "T1539",
              "T1578",
              "T1190",
              "T1556",
              "T1485",
              "T1484",
              "T1562",
              "T1046",
              "T1134",
              "T1548",
              "T1078.001",
            },
            type = "string",
          },
          type = "array",
        },
        version = {
          description = "The MITRE ATT&CK version referenced by the above fields. E.g. \"8\".",
          type = "string",
        },
      },
      type = "object",
    },
    Node = {
      description = "Kubernetes Nodes associated with the finding.",
      id = "Node",
      properties = {
        name = {
          description = "Full Resource name of the Compute Engine VM running the cluster node.",
          type = "string",
        },
      },
      type = "object",
    },
    NodePool = {
      description = "Provides GKE Node Pool information.",
      id = "NodePool",
      properties = {
        name = {
          description = "Kubernetes Node pool name.",
          type = "string",
        },
        nodes = {
          description = "Nodes associated with the finding.",
          items = {
            ["$ref"] = "Node",
          },
          type = "array",
        },
      },
      type = "object",
    },
    NotificationConfig = {
      description = "Cloud Security Command Center (Cloud SCC) notification configs. A notification config is a Cloud SCC resource that contains the configuration to send notifications for create/update events of findings, assets and etc.",
      id = "NotificationConfig",
      properties = {
        description = {
          description = "The description of the notification config (max of 1024 characters).",
          type = "string",
        },
        name = {
          description = "The relative resource name of this notification config. See: https://cloud.google.com/apis/design/resource_names#relative_resource_name Example: \"organizations/{organization_id}/notificationConfigs/notify_public_bucket\", \"folders/{folder_id}/notificationConfigs/notify_public_bucket\", or \"projects/{project_id}/notificationConfigs/notify_public_bucket\".",
          type = "string",
        },
        pubsubTopic = {
          description = "The Pub/Sub topic to send notifications to. Its format is \"projects/[project_id]/topics/[topic]\".",
          type = "string",
        },
        serviceAccount = {
          description = "Output only. The service account that needs \"pubsub.topics.publish\" permission to publish to the Pub/Sub topic.",
          readOnly = true,
          type = "string",
        },
        streamingConfig = {
          ["$ref"] = "StreamingConfig",
          description = "The config for triggering streaming-based notifications.",
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
    OrganizationSettings = {
      description = "User specified settings that are attached to the Security Command Center organization.",
      id = "OrganizationSettings",
      properties = {
        assetDiscoveryConfig = {
          ["$ref"] = "AssetDiscoveryConfig",
          description = "The configuration used for Asset Discovery runs.",
        },
        enableAssetDiscovery = {
          description = "A flag that indicates if Asset Discovery should be enabled. If the flag is set to `true`, then discovery of assets will occur. If it is set to `false, all historical assets will remain, but discovery of future assets will not occur.",
          type = "boolean",
        },
        name = {
          description = "The relative resource name of the settings. See: https://cloud.google.com/apis/design/resource_names#relative_resource_name Example: \"organizations/{organization_id}/organizationSettings\".",
          type = "string",
        },
      },
      type = "object",
    },
    PathNode = {
      description = "Represents one point that an attacker passes through in this exposure path.",
      id = "PathNode",
      properties = {
        associatedFindings = {
          description = "The findings associated with this node in the exposure path.",
          items = {
            ["$ref"] = "AssociatedFinding",
          },
          type = "array",
        },
        displayName = {
          description = "Human readable name of this resource.",
          type = "string",
        },
        resource = {
          description = "The name of the resource at this point in the exposure path. The format of the name is: https://cloud.google.com/apis/design/resource_names#full_resource_name",
          type = "string",
        },
        resourceType = {
          description = "The resource type of this resource. See: https://cloud.google.com/asset-inventory/docs/supported-asset-types",
          type = "string",
        },
      },
      type = "object",
    },
    Pod = {
      description = "Kubernetes Pod.",
      id = "Pod",
      properties = {
        containers = {
          description = "Pod containers associated with this finding, if any.",
          items = {
            ["$ref"] = "Container",
          },
          type = "array",
        },
        labels = {
          description = "Pod labels. For Kubernetes containers, these are applied to the container.",
          items = {
            ["$ref"] = "Label",
          },
          type = "array",
        },
        name = {
          description = "Kubernetes Pod name.",
          type = "string",
        },
        ns = {
          description = "Kubernetes Pod namespace.",
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
    Process = {
      description = "Represents an operating system process.",
      id = "Process",
      properties = {
        args = {
          description = "Process arguments as JSON encoded strings.",
          items = {
            type = "string",
          },
          type = "array",
        },
        argumentsTruncated = {
          description = "True if `args` is incomplete.",
          type = "boolean",
        },
        binary = {
          ["$ref"] = "File",
          description = "File information for the process executable.",
        },
        envVariables = {
          description = "Process environment variables.",
          items = {
            ["$ref"] = "EnvironmentVariable",
          },
          type = "array",
        },
        envVariablesTruncated = {
          description = "True if `env_variables` is incomplete.",
          type = "boolean",
        },
        libraries = {
          description = "File information for libraries loaded by the process.",
          items = {
            ["$ref"] = "File",
          },
          type = "array",
        },
        name = {
          description = "The process name visible in utilities like `top` and `ps`; it can be accessed via `/proc/[pid]/comm` and changed with `prctl(PR_SET_NAME)`.",
          type = "string",
        },
        parentPid = {
          description = "The parent process id.",
          format = "int64",
          type = "string",
        },
        pid = {
          description = "The process id.",
          format = "int64",
          type = "string",
        },
        script = {
          ["$ref"] = "File",
          description = "When the process represents the invocation of a script, `binary` provides information about the interpreter while `script` provides information about the script file provided to the interpreter.",
        },
      },
      type = "object",
    },
    ProcessSignature = {
      description = "Indicates what signature matched this process.",
      id = "ProcessSignature",
      properties = {
        memoryHashSignature = {
          ["$ref"] = "MemoryHashSignature",
          description = "Signature indicating that a binary family was matched.",
        },
        yaraRuleSignature = {
          ["$ref"] = "YaraRuleSignature",
          description = "Signature indicating that a YARA rule was matched.",
        },
      },
      type = "object",
    },
    Reference = {
      description = "Additional Links",
      id = "Reference",
      properties = {
        source = {
          description = "Source of the reference e.g. NVD",
          type = "string",
        },
        uri = {
          description = "Uri for the mentioned source e.g. https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2021-34527.",
          type = "string",
        },
      },
      type = "object",
    },
    Resource = {
      description = "Information related to the Google Cloud resource that is associated with this finding.",
      id = "Resource",
      properties = {
        displayName = {
          description = "The human readable name of the resource.",
          type = "string",
        },
        folders = {
          description = "Contains a Folder message for each folder in the assets ancestry. The first folder is the deepest nested folder, and the last folder is the folder directly under the Organization.",
          items = {
            ["$ref"] = "Folder",
          },
          type = "array",
        },
        name = {
          description = "The full resource name of the resource. See: https://cloud.google.com/apis/design/resource_names#full_resource_name",
          type = "string",
        },
        parentDisplayName = {
          description = "The human readable name of resource's parent.",
          type = "string",
        },
        parentName = {
          description = "The full resource name of resource's parent.",
          type = "string",
        },
        projectDisplayName = {
          description = "The project ID that the resource belongs to.",
          type = "string",
        },
        projectName = {
          description = "The full resource name of project that the resource belongs to.",
          type = "string",
        },
        type = {
          description = "The full resource type of the resource.",
          type = "string",
        },
      },
      type = "object",
    },
    Role = {
      description = "Kubernetes Role or ClusterRole.",
      id = "Role",
      properties = {
        kind = {
          description = "Role type.",
          enum = {
            "KIND_UNSPECIFIED",
            "ROLE",
            "CLUSTER_ROLE",
          },
          enumDescriptions = {
            "Role type is not specified.",
            "Kubernetes Role.",
            "Kubernetes ClusterRole.",
          },
          type = "string",
        },
        name = {
          description = "Role name.",
          type = "string",
        },
        ns = {
          description = "Role namespace.",
          type = "string",
        },
      },
      type = "object",
    },
    RunAssetDiscoveryRequest = {
      description = "Request message for running asset discovery for an organization.",
      id = "RunAssetDiscoveryRequest",
      properties = {},
      type = "object",
    },
    SecurityCenterProperties = {
      description = "Security Command Center managed properties. These properties are managed by Security Command Center and cannot be modified by the user.",
      id = "SecurityCenterProperties",
      properties = {
        folders = {
          description = "Contains a Folder message for each folder in the assets ancestry. The first folder is the deepest nested folder, and the last folder is the folder directly under the Organization.",
          items = {
            ["$ref"] = "Folder",
          },
          type = "array",
        },
        resourceDisplayName = {
          description = "The user defined display name for this resource.",
          type = "string",
        },
        resourceName = {
          description = "The full resource name of the Google Cloud resource this asset represents. This field is immutable after create time. See: https://cloud.google.com/apis/design/resource_names#full_resource_name",
          type = "string",
        },
        resourceOwners = {
          description = "Owners of the Google Cloud resource.",
          items = {
            type = "string",
          },
          type = "array",
        },
        resourceParent = {
          description = "The full resource name of the immediate parent of the resource. See: https://cloud.google.com/apis/design/resource_names#full_resource_name",
          type = "string",
        },
        resourceParentDisplayName = {
          description = "The user defined display name for the parent of this resource.",
          type = "string",
        },
        resourceProject = {
          description = "The full resource name of the project the resource belongs to. See: https://cloud.google.com/apis/design/resource_names#full_resource_name",
          type = "string",
        },
        resourceProjectDisplayName = {
          description = "The user defined display name for the project of this resource.",
          type = "string",
        },
        resourceType = {
          description = "The type of the Google Cloud resource. Examples include: APPLICATION, PROJECT, and ORGANIZATION. This is a case insensitive field defined by Security Command Center and/or the producer of the resource and is immutable after create time.",
          type = "string",
        },
      },
      type = "object",
    },
    SecurityMarks = {
      description = "User specified security marks that are attached to the parent Security Command Center resource. Security marks are scoped within a Security Command Center organization -- they can be modified and viewed by all users who have proper permissions on the organization.",
      id = "SecurityMarks",
      properties = {
        canonicalName = {
          description = "The canonical name of the marks. Examples: \"organizations/{organization_id}/assets/{asset_id}/securityMarks\" \"folders/{folder_id}/assets/{asset_id}/securityMarks\" \"projects/{project_number}/assets/{asset_id}/securityMarks\" \"organizations/{organization_id}/sources/{source_id}/findings/{finding_id}/securityMarks\" \"folders/{folder_id}/sources/{source_id}/findings/{finding_id}/securityMarks\" \"projects/{project_number}/sources/{source_id}/findings/{finding_id}/securityMarks\"",
          type = "string",
        },
        marks = {
          additionalProperties = {
            type = "string",
          },
          description = "Mutable user specified security marks belonging to the parent resource. Constraints are as follows: * Keys and values are treated as case insensitive * Keys must be between 1 - 256 characters (inclusive) * Keys must be letters, numbers, underscores, or dashes * Values have leading and trailing whitespace trimmed, remaining characters must be between 1 - 4096 characters (inclusive)",
          type = "object",
        },
        name = {
          description = "The relative resource name of the SecurityMarks. See: https://cloud.google.com/apis/design/resource_names#relative_resource_name Examples: \"organizations/{organization_id}/assets/{asset_id}/securityMarks\" \"organizations/{organization_id}/sources/{source_id}/findings/{finding_id}/securityMarks\".",
          type = "string",
        },
      },
      type = "object",
    },
    ServiceAccountDelegationInfo = {
      description = "Identity delegation history of an authenticated service account.",
      id = "ServiceAccountDelegationInfo",
      properties = {
        principalEmail = {
          description = "The email address of a Google account.",
          type = "string",
        },
        principalSubject = {
          description = "A string representing the principal_subject associated with the identity. As compared to `principal_email`, supports principals that aren't associated with email addresses, such as third party principals. For most identities, the format will be `principal://iam.googleapis.com/{identity pool name}/subjects/{subject}` except for some GKE identities (GKE_WORKLOAD, FREEFORM, GKE_HUB_WORKLOAD) that are still in the legacy format `serviceAccount:{identity pool name}[{subject}]`",
          type = "string",
        },
      },
      type = "object",
    },
    SetFindingStateRequest = {
      description = "Request message for updating a finding's state.",
      id = "SetFindingStateRequest",
      properties = {
        startTime = {
          description = "Required. The time at which the updated state takes effect.",
          format = "google-datetime",
          type = "string",
        },
        state = {
          description = "Required. The desired State of the finding.",
          enum = {
            "STATE_UNSPECIFIED",
            "ACTIVE",
            "INACTIVE",
          },
          enumDescriptions = {
            "Unspecified state.",
            "The finding requires attention and has not been addressed yet.",
            "The finding has been fixed, triaged as a non-issue or otherwise addressed and is no longer active.",
          },
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
    SetMuteRequest = {
      description = "Request message for updating a finding's mute status.",
      id = "SetMuteRequest",
      properties = {
        mute = {
          description = "Required. The desired state of the Mute.",
          enum = {
            "MUTE_UNSPECIFIED",
            "MUTED",
            "UNMUTED",
            "UNDEFINED",
          },
          enumDescriptions = {
            "Unspecified.",
            "Finding has been muted.",
            "Finding has been unmuted.",
            "Finding has never been muted/unmuted.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    Source = {
      description = "Security Command Center finding source. A finding source is an entity or a mechanism that can produce a finding. A source is like a container of findings that come from the same scanner, logger, monitor, and other tools.",
      id = "Source",
      properties = {
        canonicalName = {
          description = "The canonical name of the finding. It's either \"organizations/{organization_id}/sources/{source_id}\", \"folders/{folder_id}/sources/{source_id}\" or \"projects/{project_number}/sources/{source_id}\", depending on the closest CRM ancestor of the resource associated with the finding.",
          type = "string",
        },
        description = {
          description = "The description of the source (max of 1024 characters). Example: \"Web Security Scanner is a web security scanner for common vulnerabilities in App Engine applications. It can automatically scan and detect four common vulnerabilities, including cross-site-scripting (XSS), Flash injection, mixed content (HTTP in HTTPS), and outdated or insecure libraries.\"",
          type = "string",
        },
        displayName = {
          description = "The source's display name. A source's display name must be unique amongst its siblings, for example, two sources with the same parent can't share the same display name. The display name must have a length between 1 and 64 characters (inclusive).",
          type = "string",
        },
        name = {
          description = "The relative resource name of this source. See: https://cloud.google.com/apis/design/resource_names#relative_resource_name Example: \"organizations/{organization_id}/sources/{source_id}\"",
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
    StreamingConfig = {
      description = "The config for streaming-based notifications, which send each event as soon as it is detected.",
      id = "StreamingConfig",
      properties = {
        filter = {
          description = "Expression that defines the filter to apply across create/update events of assets or findings as specified by the event type. The expression is a list of zero or more restrictions combined via logical operators `AND` and `OR`. Parentheses are supported, and `OR` has higher precedence than `AND`. Restrictions have the form ` ` and may have a `-` character in front of them to indicate negation. The fields map to those defined in the corresponding resource. The supported operators are: * `=` for all value types. * `>`, `<`, `>=`, `<=` for integer values. * `:`, meaning substring matching, for strings. The supported value types are: * string literals in quotes. * integer literals without quotes. * boolean literals `true` and `false` without quotes.",
          type = "string",
        },
      },
      type = "object",
    },
    Subject = {
      description = "Represents a Kubernetes Subject.",
      id = "Subject",
      properties = {
        kind = {
          description = "Authentication type for subject.",
          enum = {
            "AUTH_TYPE_UNSPECIFIED",
            "USER",
            "SERVICEACCOUNT",
            "GROUP",
          },
          enumDescriptions = {
            "Authentication is not specified.",
            "User with valid certificate.",
            "Users managed by Kubernetes API with credentials stored as Secrets.",
            "Collection of users.",
          },
          type = "string",
        },
        name = {
          description = "Name for subject.",
          type = "string",
        },
        ns = {
          description = "Namespace for subject.",
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
    Vulnerability = {
      description = "Refers to common vulnerability fields e.g. cve, cvss, cwe etc.",
      id = "Vulnerability",
      properties = {
        cve = {
          ["$ref"] = "Cve",
          description = "CVE stands for Common Vulnerabilities and Exposures (https://cve.mitre.org/about/)",
        },
      },
      type = "object",
    },
    YaraRuleSignature = {
      description = "A signature corresponding to a YARA rule.",
      id = "YaraRuleSignature",
      properties = {
        yaraRule = {
          description = "The name of the YARA rule.",
          type = "string",
        },
      },
      type = "object",
    },
  },
  servicePath = "",
  title = "Security Command Center API",
  version = "v1",
  version_module = true,
}
