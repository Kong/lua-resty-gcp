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
  baseUrl = "https://resourcesettings.googleapis.com/",
  batchPath = "batch",
  canonicalName = "Resource Settings",
  description = "The Resource Settings API allows users to control and modify the behavior of their GCP resources (e.g., VM, firewall, Project, etc.) across the Cloud Resource Hierarchy.",
  discoveryVersion = "v1",
  documentationLink = "https://cloud.google.com/resource-manager/docs/resource-settings/overview",
  fullyEncodeReservedExpansion = true,
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "resourcesettings:v1",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://resourcesettings.mtls.googleapis.com/",
  name = "resourcesettings",
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
        settings = {
          methods = {
            get = {
              description = "Returns a specified setting. Returns a `google.rpc.Status` with `google.rpc.Code.NOT_FOUND` if the setting does not exist.",
              flatPath = "v1/folders/{foldersId}/settings/{settingsId}",
              httpMethod = "GET",
              id = "resourcesettings.folders.settings.get",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. The name of the setting to get. See Setting for naming requirements.",
                  location = "path",
                  pattern = "^folders/[^/]+/settings/[^/]+$",
                  required = true,
                  type = "string",
                },
                view = {
                  description = "The SettingView for this request.",
                  enum = {
                    "SETTING_VIEW_UNSPECIFIED",
                    "SETTING_VIEW_BASIC",
                    "SETTING_VIEW_EFFECTIVE_VALUE",
                    "SETTING_VIEW_LOCAL_VALUE",
                  },
                  enumDescriptions = {
                    "The default / unset value. The API will default to the SETTING_VIEW_BASIC view.",
                    "Include Setting.metadata, but nothing else. This is the default value (for both ListSettings and GetSetting).",
                    "Include Setting.effective_value, but nothing else.",
                    "Include Setting.local_value, but nothing else.",
                  },
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/{+name}",
              response = {
                ["$ref"] = "GoogleCloudResourcesettingsV1Setting",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            list = {
              description = "Lists all the settings that are available on the Cloud resource `parent`.",
              flatPath = "v1/folders/{foldersId}/settings",
              httpMethod = "GET",
              id = "resourcesettings.folders.settings.list",
              parameterOrder = {
                "parent",
              },
              parameters = {
                pageSize = {
                  description = "Unused. The size of the page to be returned.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "Unused. A page token used to retrieve the next page.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "Required. The project, folder, or organization that is the parent resource for this setting. Must be in one of the following forms: * `projects/{project_number}` * `projects/{project_id}` * `folders/{folder_id}` * `organizations/{organization_id}`",
                  location = "path",
                  pattern = "^folders/[^/]+$",
                  required = true,
                  type = "string",
                },
                view = {
                  description = "The SettingView for this request.",
                  enum = {
                    "SETTING_VIEW_UNSPECIFIED",
                    "SETTING_VIEW_BASIC",
                    "SETTING_VIEW_EFFECTIVE_VALUE",
                    "SETTING_VIEW_LOCAL_VALUE",
                  },
                  enumDescriptions = {
                    "The default / unset value. The API will default to the SETTING_VIEW_BASIC view.",
                    "Include Setting.metadata, but nothing else. This is the default value (for both ListSettings and GetSetting).",
                    "Include Setting.effective_value, but nothing else.",
                    "Include Setting.local_value, but nothing else.",
                  },
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/{+parent}/settings",
              response = {
                ["$ref"] = "GoogleCloudResourcesettingsV1ListSettingsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            patch = {
              description = "Updates a specified setting. Returns a `google.rpc.Status` with `google.rpc.Code.NOT_FOUND` if the setting does not exist. Returns a `google.rpc.Status` with `google.rpc.Code.FAILED_PRECONDITION` if the setting is flagged as read only. Returns a `google.rpc.Status` with `google.rpc.Code.ABORTED` if the etag supplied in the request does not match the persisted etag of the setting value. On success, the response will contain only `name`, `local_value` and `etag`. The `metadata` and `effective_value` cannot be updated through this API. Note: the supplied setting will perform a full overwrite of the `local_value` field.",
              flatPath = "v1/folders/{foldersId}/settings/{settingsId}",
              httpMethod = "PATCH",
              id = "resourcesettings.folders.settings.patch",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "The resource name of the setting. Must be in one of the following forms: * `projects/{project_number}/settings/{setting_name}` * `folders/{folder_id}/settings/{setting_name}` * `organizations/{organization_id}/settings/{setting_name}` For example, \"/projects/123/settings/gcp-enableMyFeature\"",
                  location = "path",
                  pattern = "^folders/[^/]+/settings/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}",
              request = {
                ["$ref"] = "GoogleCloudResourcesettingsV1Setting",
              },
              response = {
                ["$ref"] = "GoogleCloudResourcesettingsV1Setting",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
          },
        },
      },
    },
    organizations = {
      resources = {
        settings = {
          methods = {
            get = {
              description = "Returns a specified setting. Returns a `google.rpc.Status` with `google.rpc.Code.NOT_FOUND` if the setting does not exist.",
              flatPath = "v1/organizations/{organizationsId}/settings/{settingsId}",
              httpMethod = "GET",
              id = "resourcesettings.organizations.settings.get",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. The name of the setting to get. See Setting for naming requirements.",
                  location = "path",
                  pattern = "^organizations/[^/]+/settings/[^/]+$",
                  required = true,
                  type = "string",
                },
                view = {
                  description = "The SettingView for this request.",
                  enum = {
                    "SETTING_VIEW_UNSPECIFIED",
                    "SETTING_VIEW_BASIC",
                    "SETTING_VIEW_EFFECTIVE_VALUE",
                    "SETTING_VIEW_LOCAL_VALUE",
                  },
                  enumDescriptions = {
                    "The default / unset value. The API will default to the SETTING_VIEW_BASIC view.",
                    "Include Setting.metadata, but nothing else. This is the default value (for both ListSettings and GetSetting).",
                    "Include Setting.effective_value, but nothing else.",
                    "Include Setting.local_value, but nothing else.",
                  },
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/{+name}",
              response = {
                ["$ref"] = "GoogleCloudResourcesettingsV1Setting",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            list = {
              description = "Lists all the settings that are available on the Cloud resource `parent`.",
              flatPath = "v1/organizations/{organizationsId}/settings",
              httpMethod = "GET",
              id = "resourcesettings.organizations.settings.list",
              parameterOrder = {
                "parent",
              },
              parameters = {
                pageSize = {
                  description = "Unused. The size of the page to be returned.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "Unused. A page token used to retrieve the next page.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "Required. The project, folder, or organization that is the parent resource for this setting. Must be in one of the following forms: * `projects/{project_number}` * `projects/{project_id}` * `folders/{folder_id}` * `organizations/{organization_id}`",
                  location = "path",
                  pattern = "^organizations/[^/]+$",
                  required = true,
                  type = "string",
                },
                view = {
                  description = "The SettingView for this request.",
                  enum = {
                    "SETTING_VIEW_UNSPECIFIED",
                    "SETTING_VIEW_BASIC",
                    "SETTING_VIEW_EFFECTIVE_VALUE",
                    "SETTING_VIEW_LOCAL_VALUE",
                  },
                  enumDescriptions = {
                    "The default / unset value. The API will default to the SETTING_VIEW_BASIC view.",
                    "Include Setting.metadata, but nothing else. This is the default value (for both ListSettings and GetSetting).",
                    "Include Setting.effective_value, but nothing else.",
                    "Include Setting.local_value, but nothing else.",
                  },
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/{+parent}/settings",
              response = {
                ["$ref"] = "GoogleCloudResourcesettingsV1ListSettingsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            patch = {
              description = "Updates a specified setting. Returns a `google.rpc.Status` with `google.rpc.Code.NOT_FOUND` if the setting does not exist. Returns a `google.rpc.Status` with `google.rpc.Code.FAILED_PRECONDITION` if the setting is flagged as read only. Returns a `google.rpc.Status` with `google.rpc.Code.ABORTED` if the etag supplied in the request does not match the persisted etag of the setting value. On success, the response will contain only `name`, `local_value` and `etag`. The `metadata` and `effective_value` cannot be updated through this API. Note: the supplied setting will perform a full overwrite of the `local_value` field.",
              flatPath = "v1/organizations/{organizationsId}/settings/{settingsId}",
              httpMethod = "PATCH",
              id = "resourcesettings.organizations.settings.patch",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "The resource name of the setting. Must be in one of the following forms: * `projects/{project_number}/settings/{setting_name}` * `folders/{folder_id}/settings/{setting_name}` * `organizations/{organization_id}/settings/{setting_name}` For example, \"/projects/123/settings/gcp-enableMyFeature\"",
                  location = "path",
                  pattern = "^organizations/[^/]+/settings/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}",
              request = {
                ["$ref"] = "GoogleCloudResourcesettingsV1Setting",
              },
              response = {
                ["$ref"] = "GoogleCloudResourcesettingsV1Setting",
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
        settings = {
          methods = {
            get = {
              description = "Returns a specified setting. Returns a `google.rpc.Status` with `google.rpc.Code.NOT_FOUND` if the setting does not exist.",
              flatPath = "v1/projects/{projectsId}/settings/{settingsId}",
              httpMethod = "GET",
              id = "resourcesettings.projects.settings.get",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. The name of the setting to get. See Setting for naming requirements.",
                  location = "path",
                  pattern = "^projects/[^/]+/settings/[^/]+$",
                  required = true,
                  type = "string",
                },
                view = {
                  description = "The SettingView for this request.",
                  enum = {
                    "SETTING_VIEW_UNSPECIFIED",
                    "SETTING_VIEW_BASIC",
                    "SETTING_VIEW_EFFECTIVE_VALUE",
                    "SETTING_VIEW_LOCAL_VALUE",
                  },
                  enumDescriptions = {
                    "The default / unset value. The API will default to the SETTING_VIEW_BASIC view.",
                    "Include Setting.metadata, but nothing else. This is the default value (for both ListSettings and GetSetting).",
                    "Include Setting.effective_value, but nothing else.",
                    "Include Setting.local_value, but nothing else.",
                  },
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/{+name}",
              response = {
                ["$ref"] = "GoogleCloudResourcesettingsV1Setting",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            list = {
              description = "Lists all the settings that are available on the Cloud resource `parent`.",
              flatPath = "v1/projects/{projectsId}/settings",
              httpMethod = "GET",
              id = "resourcesettings.projects.settings.list",
              parameterOrder = {
                "parent",
              },
              parameters = {
                pageSize = {
                  description = "Unused. The size of the page to be returned.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "Unused. A page token used to retrieve the next page.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "Required. The project, folder, or organization that is the parent resource for this setting. Must be in one of the following forms: * `projects/{project_number}` * `projects/{project_id}` * `folders/{folder_id}` * `organizations/{organization_id}`",
                  location = "path",
                  pattern = "^projects/[^/]+$",
                  required = true,
                  type = "string",
                },
                view = {
                  description = "The SettingView for this request.",
                  enum = {
                    "SETTING_VIEW_UNSPECIFIED",
                    "SETTING_VIEW_BASIC",
                    "SETTING_VIEW_EFFECTIVE_VALUE",
                    "SETTING_VIEW_LOCAL_VALUE",
                  },
                  enumDescriptions = {
                    "The default / unset value. The API will default to the SETTING_VIEW_BASIC view.",
                    "Include Setting.metadata, but nothing else. This is the default value (for both ListSettings and GetSetting).",
                    "Include Setting.effective_value, but nothing else.",
                    "Include Setting.local_value, but nothing else.",
                  },
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/{+parent}/settings",
              response = {
                ["$ref"] = "GoogleCloudResourcesettingsV1ListSettingsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            patch = {
              description = "Updates a specified setting. Returns a `google.rpc.Status` with `google.rpc.Code.NOT_FOUND` if the setting does not exist. Returns a `google.rpc.Status` with `google.rpc.Code.FAILED_PRECONDITION` if the setting is flagged as read only. Returns a `google.rpc.Status` with `google.rpc.Code.ABORTED` if the etag supplied in the request does not match the persisted etag of the setting value. On success, the response will contain only `name`, `local_value` and `etag`. The `metadata` and `effective_value` cannot be updated through this API. Note: the supplied setting will perform a full overwrite of the `local_value` field.",
              flatPath = "v1/projects/{projectsId}/settings/{settingsId}",
              httpMethod = "PATCH",
              id = "resourcesettings.projects.settings.patch",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "The resource name of the setting. Must be in one of the following forms: * `projects/{project_number}/settings/{setting_name}` * `folders/{folder_id}/settings/{setting_name}` * `organizations/{organization_id}/settings/{setting_name}` For example, \"/projects/123/settings/gcp-enableMyFeature\"",
                  location = "path",
                  pattern = "^projects/[^/]+/settings/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}",
              request = {
                ["$ref"] = "GoogleCloudResourcesettingsV1Setting",
              },
              response = {
                ["$ref"] = "GoogleCloudResourcesettingsV1Setting",
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
  revision = "20230116",
  rootUrl = "https://resourcesettings.googleapis.com/",
  schemas = {
    GoogleCloudResourcesettingsV1ListSettingsResponse = {
      description = "The response from ListSettings.",
      id = "GoogleCloudResourcesettingsV1ListSettingsResponse",
      properties = {
        nextPageToken = {
          description = "Unused. A page token used to retrieve the next page.",
          type = "string",
        },
        settings = {
          description = "A list of settings that are available at the specified Cloud resource.",
          items = {
            ["$ref"] = "GoogleCloudResourcesettingsV1Setting",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudResourcesettingsV1Setting = {
      description = "The schema for settings.",
      id = "GoogleCloudResourcesettingsV1Setting",
      properties = {
        effectiveValue = {
          ["$ref"] = "GoogleCloudResourcesettingsV1Value",
          description = "Output only. The effective value of the setting at the given parent resource, evaluated based on the resource hierarchy The effective value evaluates to one of the following options, in this order. If an option is not valid or doesn't exist, then the next option is used: 1. The local setting value on the given resource: Setting.local_value 2. If one of the given resource's ancestors in the resource hierarchy have a local setting value, the local value at the nearest such ancestor. 3. The setting's default value: SettingMetadata.default_value 4. An empty value, defined as a `Value` with all fields unset. The data type of Value must always be consistent with the data type defined in Setting.metadata.",
          readOnly = true,
        },
        etag = {
          description = "A fingerprint used for optimistic concurrency. See UpdateSetting for more details.",
          type = "string",
        },
        localValue = {
          ["$ref"] = "GoogleCloudResourcesettingsV1Value",
          description = "The configured value of the setting at the given parent resource, ignoring the resource hierarchy. The data type of Value must always be consistent with the data type defined in Setting.metadata.",
        },
        metadata = {
          ["$ref"] = "GoogleCloudResourcesettingsV1SettingMetadata",
          description = "Output only. Metadata about a setting which is not editable by the end user.",
          readOnly = true,
        },
        name = {
          description = "The resource name of the setting. Must be in one of the following forms: * `projects/{project_number}/settings/{setting_name}` * `folders/{folder_id}/settings/{setting_name}` * `organizations/{organization_id}/settings/{setting_name}` For example, \"/projects/123/settings/gcp-enableMyFeature\"",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudResourcesettingsV1SettingMetadata = {
      description = "Metadata about a setting which is not editable by the end user.",
      id = "GoogleCloudResourcesettingsV1SettingMetadata",
      properties = {
        dataType = {
          description = "The data type for this setting.",
          enum = {
            "DATA_TYPE_UNSPECIFIED",
            "BOOLEAN",
            "STRING",
            "STRING_SET",
            "ENUM_VALUE",
            "DURATION_VALUE",
            "STRING_MAP",
          },
          enumDescriptions = {
            "Unspecified data type.",
            "A boolean setting.",
            "A string setting.",
            "A string set setting.",
            "A Enum setting",
            "A Duration setting",
            "A string->string map setting",
          },
          type = "string",
        },
        defaultValue = {
          ["$ref"] = "GoogleCloudResourcesettingsV1Value",
          description = "The value provided by Setting.effective_value if no setting value is explicitly set. Note: not all settings have a default value.",
        },
        description = {
          description = "A detailed description of what this setting does.",
          type = "string",
        },
        displayName = {
          description = "The human readable name for this setting.",
          type = "string",
        },
        readOnly = {
          description = "A flag indicating that values of this setting cannot be modified. See documentation for the specific setting for updates and reasons.",
          type = "boolean",
        },
      },
      type = "object",
    },
    GoogleCloudResourcesettingsV1Value = {
      description = "The data in a setting value.",
      id = "GoogleCloudResourcesettingsV1Value",
      properties = {
        booleanValue = {
          description = "Defines this value as being a boolean value.",
          type = "boolean",
        },
        durationValue = {
          description = "Defines this value as being a Duration.",
          format = "google-duration",
          type = "string",
        },
        enumValue = {
          ["$ref"] = "GoogleCloudResourcesettingsV1ValueEnumValue",
          description = "Defines this value as being a Enum.",
        },
        stringMapValue = {
          ["$ref"] = "GoogleCloudResourcesettingsV1ValueStringMap",
          description = "Defines this value as being a StringMap.",
        },
        stringSetValue = {
          ["$ref"] = "GoogleCloudResourcesettingsV1ValueStringSet",
          description = "Defines this value as being a StringSet.",
        },
        stringValue = {
          description = "Defines this value as being a string value.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudResourcesettingsV1ValueEnumValue = {
      description = "A enum value that can hold any enum type setting values. Each enum type is represented by a number, this representation is stored in the definitions.",
      id = "GoogleCloudResourcesettingsV1ValueEnumValue",
      properties = {
        value = {
          description = "The value of this enum",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudResourcesettingsV1ValueStringMap = {
      description = "A string->string map value that can hold a map of string keys to string values. The maximum length of each string is 200 characters and there can be a maximum of 50 key-value pairs in the map.",
      id = "GoogleCloudResourcesettingsV1ValueStringMap",
      properties = {
        mappings = {
          additionalProperties = {
            type = "string",
          },
          description = "The key-value pairs in the map",
          type = "object",
        },
      },
      type = "object",
    },
    GoogleCloudResourcesettingsV1ValueStringSet = {
      description = "A string set value that can hold a set of strings. The maximum length of each string is 200 characters and there can be a maximum of 50 strings in the string set.",
      id = "GoogleCloudResourcesettingsV1ValueStringSet",
      properties = {
        values = {
          description = "The strings in the set",
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
  title = "Resource Settings API",
  version = "v1",
  version_module = true,
}
