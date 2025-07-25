return {
  auth = {
    oauth2 = {
      scopes = {
        ["https://www.googleapis.com/auth/keep"] = {
          description = "See, edit, create and permanently delete all your Google Keep data",
        },
        ["https://www.googleapis.com/auth/keep.readonly"] = {
          description = "View all your Google Keep data",
        },
      },
    },
  },
  basePath = "",
  baseUrl = "https://keep.googleapis.com/",
  batchPath = "batch",
  canonicalName = "Keep",
  description = "The Google Keep API is used in an enterprise environment to manage Google Keep content and resolve issues identified by cloud security software.",
  discoveryVersion = "v1",
  documentationLink = "https://developers.google.com/keep/api",
  fullyEncodeReservedExpansion = true,
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "keep:v1",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://keep.mtls.googleapis.com/",
  name = "keep",
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
    media = {
      methods = {
        download = {
          description = "Gets an attachment. To download attachment media via REST requires the alt=media query parameter. Returns a 400 bad request error if attachment media is not available in the requested MIME type.",
          flatPath = "v1/notes/{notesId}/attachments/{attachmentsId}",
          httpMethod = "GET",
          id = "keep.media.download",
          parameterOrder = {
            "name",
          },
          parameters = {
            mimeType = {
              description = "The IANA MIME type format requested. The requested MIME type must be one specified in the attachment.mime_type. Required when downloading attachment media and ignored otherwise.",
              location = "query",
              type = "string",
            },
            name = {
              description = "Required. The name of the attachment.",
              location = "path",
              pattern = "^notes/[^/]+/attachments/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "v1/{+name}",
          response = {
            ["$ref"] = "Attachment",
          },
          scopes = {
            "https://www.googleapis.com/auth/keep",
            "https://www.googleapis.com/auth/keep.readonly",
          },
          supportsMediaDownload = true,
          useMediaDownloadService = true,
        },
      },
    },
    notes = {
      methods = {
        create = {
          description = "Creates a new note.",
          flatPath = "v1/notes",
          httpMethod = "POST",
          id = "keep.notes.create",
          parameterOrder = {},
          parameters = {},
          path = "v1/notes",
          request = {
            ["$ref"] = "Note",
          },
          response = {
            ["$ref"] = "Note",
          },
          scopes = {
            "https://www.googleapis.com/auth/keep",
          },
        },
        delete = {
          description = "Deletes a note. Caller must have the `OWNER` role on the note to delete. Deleting a note removes the resource immediately and cannot be undone. Any collaborators will lose access to the note.",
          flatPath = "v1/notes/{notesId}",
          httpMethod = "DELETE",
          id = "keep.notes.delete",
          parameterOrder = {
            "name",
          },
          parameters = {
            name = {
              description = "Required. Name of the note to delete.",
              location = "path",
              pattern = "^notes/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "v1/{+name}",
          response = {
            ["$ref"] = "Empty",
          },
          scopes = {
            "https://www.googleapis.com/auth/keep",
          },
        },
        get = {
          description = "Gets a note.",
          flatPath = "v1/notes/{notesId}",
          httpMethod = "GET",
          id = "keep.notes.get",
          parameterOrder = {
            "name",
          },
          parameters = {
            name = {
              description = "Required. Name of the resource.",
              location = "path",
              pattern = "^notes/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "v1/{+name}",
          response = {
            ["$ref"] = "Note",
          },
          scopes = {
            "https://www.googleapis.com/auth/keep",
            "https://www.googleapis.com/auth/keep.readonly",
          },
        },
        list = {
          description = "Lists notes. Every list call returns a page of results with `page_size` as the upper bound of returned items. A `page_size` of zero allows the server to choose the upper bound. The ListNotesResponse contains at most `page_size` entries. If there are more things left to list, it provides a `next_page_token` value. (Page tokens are opaque values.) To get the next page of results, copy the result's `next_page_token` into the next request's `page_token`. Repeat until the `next_page_token` returned with a page of results is empty. ListNotes return consistent results in the face of concurrent changes, or signals that it cannot with an ABORTED error.",
          flatPath = "v1/notes",
          httpMethod = "GET",
          id = "keep.notes.list",
          parameterOrder = {},
          parameters = {
            filter = {
              description = "Filter for list results. If no filter is supplied, the `trashed` filter is applied by default. Valid fields to filter by are: `create_time`, `update_time`, `trash_time`, and `trashed`. Filter syntax follows the [Google AIP filtering spec](https://aip.dev/160).",
              location = "query",
              type = "string",
            },
            pageSize = {
              description = "The maximum number of results to return.",
              format = "int32",
              location = "query",
              type = "integer",
            },
            pageToken = {
              description = "The previous page's `next_page_token` field.",
              location = "query",
              type = "string",
            },
          },
          path = "v1/notes",
          response = {
            ["$ref"] = "ListNotesResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/keep",
            "https://www.googleapis.com/auth/keep.readonly",
          },
        },
      },
      resources = {
        permissions = {
          methods = {
            batchCreate = {
              description = "Creates one or more permissions on the note. Only permissions with the `WRITER` role may be created. If adding any permission fails, then the entire request fails and no changes are made.",
              flatPath = "v1/notes/{notesId}/permissions:batchCreate",
              httpMethod = "POST",
              id = "keep.notes.permissions.batchCreate",
              parameterOrder = {
                "parent",
              },
              parameters = {
                parent = {
                  description = "The parent resource shared by all Permissions being created. Format: `notes/{note}` If this is set, the parent field in the CreatePermission messages must either be empty or match this field.",
                  location = "path",
                  pattern = "^notes/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/permissions:batchCreate",
              request = {
                ["$ref"] = "BatchCreatePermissionsRequest",
              },
              response = {
                ["$ref"] = "BatchCreatePermissionsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/keep",
              },
            },
            batchDelete = {
              description = "Deletes one or more permissions on the note. The specified entities will immediately lose access. A permission with the `OWNER` role can't be removed. If removing a permission fails, then the entire request fails and no changes are made. Returns a 400 bad request error if a specified permission does not exist on the note.",
              flatPath = "v1/notes/{notesId}/permissions:batchDelete",
              httpMethod = "POST",
              id = "keep.notes.permissions.batchDelete",
              parameterOrder = {
                "parent",
              },
              parameters = {
                parent = {
                  description = "The parent resource shared by all permissions being deleted. Format: `notes/{note}` If this is set, the parent of all of the permissions specified in the DeletePermissionRequest messages must match this field.",
                  location = "path",
                  pattern = "^notes/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/permissions:batchDelete",
              request = {
                ["$ref"] = "BatchDeletePermissionsRequest",
              },
              response = {
                ["$ref"] = "Empty",
              },
              scopes = {
                "https://www.googleapis.com/auth/keep",
              },
            },
          },
        },
      },
    },
  },
  revision = "20230110",
  rootUrl = "https://keep.googleapis.com/",
  schemas = {
    Attachment = {
      description = "An attachment to a note.",
      id = "Attachment",
      properties = {
        mimeType = {
          description = "The MIME types (IANA media types) in which the attachment is available.",
          items = {
            type = "string",
          },
          type = "array",
        },
        name = {
          description = "The resource name;",
          type = "string",
        },
      },
      type = "object",
    },
    BatchCreatePermissionsRequest = {
      description = "The request to add one or more permissions on the note. Currently, only the `WRITER` role may be specified. If adding a permission fails, then the entire request fails and no changes are made.",
      id = "BatchCreatePermissionsRequest",
      properties = {
        requests = {
          description = "The request message specifying the resources to create.",
          items = {
            ["$ref"] = "CreatePermissionRequest",
          },
          type = "array",
        },
      },
      type = "object",
    },
    BatchCreatePermissionsResponse = {
      description = "The response for creating permissions on a note.",
      id = "BatchCreatePermissionsResponse",
      properties = {
        permissions = {
          description = "Permissions created.",
          items = {
            ["$ref"] = "Permission",
          },
          type = "array",
        },
      },
      type = "object",
    },
    BatchDeletePermissionsRequest = {
      description = "The request to remove one or more permissions from a note. A permission with the `OWNER` role can't be removed. If removing a permission fails, then the entire request fails and no changes are made. Returns a 400 bad request error if a specified permission does not exist on the note.",
      id = "BatchDeletePermissionsRequest",
      properties = {
        names = {
          description = "Required. The names of the permissions to delete. Format: `notes/{note}/permissions/{permission}`",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    CreatePermissionRequest = {
      description = "The request to add a single permission on the note.",
      id = "CreatePermissionRequest",
      properties = {
        parent = {
          description = "Required. The parent note where this permission will be created. Format: `notes/{note}`",
          type = "string",
        },
        permission = {
          ["$ref"] = "Permission",
          description = "Required. The permission to create. One of Permission.email, User.email or Group.email must be supplied.",
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
    Family = {
      description = "Describes a single Google Family.",
      id = "Family",
      properties = {},
      type = "object",
    },
    Group = {
      description = "Describes a single Group.",
      id = "Group",
      properties = {
        email = {
          description = "The group email.",
          type = "string",
        },
      },
      type = "object",
    },
    ListContent = {
      description = "The list of items for a single list note.",
      id = "ListContent",
      properties = {
        listItems = {
          description = "The items in the list. The number of items must be less than 1,000.",
          items = {
            ["$ref"] = "ListItem",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ListItem = {
      description = "A single list item in a note's list.",
      id = "ListItem",
      properties = {
        checked = {
          description = "Whether this item has been checked off or not.",
          type = "boolean",
        },
        childListItems = {
          description = "If set, list of list items nested under this list item. Only one level of nesting is allowed.",
          items = {
            ["$ref"] = "ListItem",
          },
          type = "array",
        },
        text = {
          ["$ref"] = "TextContent",
          description = "The text of this item. Length must be less than 1,000 characters.",
        },
      },
      type = "object",
    },
    ListNotesResponse = {
      description = "The response when listing a page of notes.",
      id = "ListNotesResponse",
      properties = {
        nextPageToken = {
          description = "Next page's `page_token` field.",
          type = "string",
        },
        notes = {
          description = "A page of notes.",
          items = {
            ["$ref"] = "Note",
          },
          type = "array",
        },
      },
      type = "object",
    },
    Note = {
      description = "A single note.",
      id = "Note",
      properties = {
        attachments = {
          description = "Output only. The attachments attached to this note.",
          items = {
            ["$ref"] = "Attachment",
          },
          readOnly = true,
          type = "array",
        },
        body = {
          ["$ref"] = "Section",
          description = "The body of the note.",
        },
        createTime = {
          description = "Output only. When this note was created.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        name = {
          description = "Output only. The resource name of this note. See general note on identifiers in KeepService.",
          readOnly = true,
          type = "string",
        },
        permissions = {
          description = "Output only. The list of permissions set on the note. Contains at least one entry for the note owner.",
          items = {
            ["$ref"] = "Permission",
          },
          readOnly = true,
          type = "array",
        },
        title = {
          description = "The title of the note. Length must be less than 1,000 characters.",
          type = "string",
        },
        trashTime = {
          description = "Output only. When this note was trashed. If `trashed`, the note is eventually deleted. If the note is not trashed, this field is not set (and the trashed field is `false`).",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        trashed = {
          description = "Output only. `true` if this note has been trashed. If trashed, the note is eventually deleted.",
          readOnly = true,
          type = "boolean",
        },
        updateTime = {
          description = "Output only. When this note was last modified.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    Permission = {
      description = "A single permission on the note. Associates a `member` with a `role`.",
      id = "Permission",
      properties = {
        deleted = {
          description = "Output only. Whether this member has been deleted. If the member is recovered, this value is set to false and the recovered member retains the role on the note.",
          readOnly = true,
          type = "boolean",
        },
        email = {
          description = "The email associated with the member. If set on create, the `email` field in the `User` or `Group` message must either be empty or match this field. On read, may be unset if the member does not have an associated email.",
          type = "string",
        },
        family = {
          ["$ref"] = "Family",
          description = "Output only. The Google Family to which this role applies.",
          readOnly = true,
        },
        group = {
          ["$ref"] = "Group",
          description = "Output only. The group to which this role applies.",
          readOnly = true,
        },
        name = {
          description = "Output only. The resource name.",
          readOnly = true,
          type = "string",
        },
        role = {
          description = "The role granted by this permission. The role determines the entity’s ability to read, write, and share notes.",
          enum = {
            "ROLE_UNSPECIFIED",
            "OWNER",
            "WRITER",
          },
          enumDescriptions = {
            "An undefined role.",
            "A role granting full access. This role cannot be added or removed. Defined by the creator of the note.",
            "A role granting the ability to contribute content and modify note permissions.",
          },
          type = "string",
        },
        user = {
          ["$ref"] = "User",
          description = "Output only. The user to whom this role applies.",
          readOnly = true,
        },
      },
      type = "object",
    },
    Section = {
      description = "The content of the note.",
      id = "Section",
      properties = {
        list = {
          ["$ref"] = "ListContent",
          description = "Used if this section's content is a list.",
        },
        text = {
          ["$ref"] = "TextContent",
          description = "Used if this section's content is a block of text. The length of the text content must be less than 20,000 characters.",
        },
      },
      type = "object",
    },
    TextContent = {
      description = "The block of text for a single text section or list item.",
      id = "TextContent",
      properties = {
        text = {
          description = "The text of the note. The limits on this vary with the specific field using this type.",
          type = "string",
        },
      },
      type = "object",
    },
    User = {
      description = "Describes a single user.",
      id = "User",
      properties = {
        email = {
          description = "The user's email.",
          type = "string",
        },
      },
      type = "object",
    },
  },
  servicePath = "",
  title = "Google Keep API",
  version = "v1",
  version_module = true,
}
