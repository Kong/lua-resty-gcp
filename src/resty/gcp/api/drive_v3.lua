return {
  auth = {
    oauth2 = {
      scopes = {
        ["https://www.googleapis.com/auth/drive"] = {
          description = "See, edit, create, and delete all of your Google Drive files",
        },
        ["https://www.googleapis.com/auth/drive.appdata"] = {
          description = "See, create, and delete its own configuration data in your Google Drive",
        },
        ["https://www.googleapis.com/auth/drive.file"] = {
          description = "See, edit, create, and delete only the specific Google Drive files you use with this app",
        },
        ["https://www.googleapis.com/auth/drive.metadata"] = {
          description = "View and manage metadata of files in your Google Drive",
        },
        ["https://www.googleapis.com/auth/drive.metadata.readonly"] = {
          description = "See information about your Google Drive files",
        },
        ["https://www.googleapis.com/auth/drive.photos.readonly"] = {
          description = "View the photos, videos and albums in your Google Photos",
        },
        ["https://www.googleapis.com/auth/drive.readonly"] = {
          description = "See and download all your Google Drive files",
        },
        ["https://www.googleapis.com/auth/drive.scripts"] = {
          description = "Modify your Google Apps Script scripts' behavior",
        },
      },
    },
  },
  basePath = "/drive/v3/",
  baseUrl = "https://www.googleapis.com/drive/v3/",
  batchPath = "batch/drive/v3",
  description = "Manages files in Drive including uploading, downloading, searching, detecting changes, and updating sharing permissions.",
  discoveryVersion = "v1",
  documentationLink = "https://developers.google.com/drive/",
  etag = "\"uWj2hSb4GVjzdDlAnRd2gbM1ZQ8/0Tx895GJQ6kFXnddzKHiKA5Vu5c\"",
  icons = {
    x16 = "https://ssl.gstatic.com/docs/doclist/images/drive_icon_16.png",
    x32 = "https://ssl.gstatic.com/docs/doclist/images/drive_icon_32.png",
  },
  id = "drive:v3",
  kind = "discovery#restDescription",
  name = "drive",
  ownerDomain = "google.com",
  ownerName = "Google",
  parameters = {
    alt = {
      default = "json",
      description = "Data format for the response.",
      enum = {
        "json",
      },
      enumDescriptions = {
        "Responses with Content-Type of application/json",
      },
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
      description = "An opaque string that represents a user for quota purposes. Must not exceed 40 characters.",
      location = "query",
      type = "string",
    },
    userIp = {
      description = "Deprecated. Please use quotaUser instead.",
      location = "query",
      type = "string",
    },
  },
  protocol = "rest",
  resources = {
    about = {
      methods = {
        get = {
          description = "Gets information about the user, the user's Drive, and system capabilities.",
          httpMethod = "GET",
          id = "drive.about.get",
          path = "about",
          response = {
            ["$ref"] = "About",
          },
          scopes = {
            "https://www.googleapis.com/auth/drive",
            "https://www.googleapis.com/auth/drive.appdata",
            "https://www.googleapis.com/auth/drive.file",
            "https://www.googleapis.com/auth/drive.metadata",
            "https://www.googleapis.com/auth/drive.metadata.readonly",
            "https://www.googleapis.com/auth/drive.photos.readonly",
            "https://www.googleapis.com/auth/drive.readonly",
          },
        },
      },
    },
    changes = {
      methods = {
        getStartPageToken = {
          description = "Gets the starting pageToken for listing future changes.",
          httpMethod = "GET",
          id = "drive.changes.getStartPageToken",
          parameters = {
            driveId = {
              description = "The ID of the shared drive for which the starting pageToken for listing future changes from that shared drive is returned.",
              location = "query",
              type = "string",
            },
            supportsAllDrives = {
              default = "false",
              description = "Whether the requesting application supports both My Drives and shared drives.",
              location = "query",
              type = "boolean",
            },
            supportsTeamDrives = {
              default = "false",
              description = "Deprecated use supportsAllDrives instead.",
              location = "query",
              type = "boolean",
            },
            teamDriveId = {
              description = "Deprecated use driveId instead.",
              location = "query",
              type = "string",
            },
          },
          path = "changes/startPageToken",
          response = {
            ["$ref"] = "StartPageToken",
          },
          scopes = {
            "https://www.googleapis.com/auth/drive",
            "https://www.googleapis.com/auth/drive.appdata",
            "https://www.googleapis.com/auth/drive.file",
            "https://www.googleapis.com/auth/drive.metadata",
            "https://www.googleapis.com/auth/drive.metadata.readonly",
            "https://www.googleapis.com/auth/drive.photos.readonly",
            "https://www.googleapis.com/auth/drive.readonly",
          },
        },
        list = {
          description = "Lists the changes for a user or shared drive.",
          httpMethod = "GET",
          id = "drive.changes.list",
          parameterOrder = {
            "pageToken",
          },
          parameters = {
            driveId = {
              description = "The shared drive from which changes are returned. If specified the change IDs will be reflective of the shared drive; use the combined drive ID and change ID as an identifier.",
              location = "query",
              type = "string",
            },
            includeCorpusRemovals = {
              default = "false",
              description = "Whether changes should include the file resource if the file is still accessible by the user at the time of the request, even when a file was removed from the list of changes and there will be no further change entries for this file.",
              location = "query",
              type = "boolean",
            },
            includeItemsFromAllDrives = {
              default = "false",
              description = "Whether both My Drive and shared drive items should be included in results.",
              location = "query",
              type = "boolean",
            },
            includeLabels = {
              description = "A comma-separated list of IDs of labels to include in the labelInfo part of the response.",
              location = "query",
              type = "string",
            },
            includePermissionsForView = {
              description = "Specifies which additional view's permissions to include in the response. Only 'published' is supported.",
              location = "query",
              type = "string",
            },
            includeRemoved = {
              default = "true",
              description = "Whether to include changes indicating that items have been removed from the list of changes, for example by deletion or loss of access.",
              location = "query",
              type = "boolean",
            },
            includeTeamDriveItems = {
              default = "false",
              description = "Deprecated use includeItemsFromAllDrives instead.",
              location = "query",
              type = "boolean",
            },
            pageSize = {
              default = "100",
              description = "The maximum number of changes to return per page.",
              format = "int32",
              location = "query",
              maximum = "1000",
              minimum = "1",
              type = "integer",
            },
            pageToken = {
              description = "The token for continuing a previous list request on the next page. This should be set to the value of 'nextPageToken' from the previous response or to the response from the getStartPageToken method.",
              location = "query",
              required = true,
              type = "string",
            },
            restrictToMyDrive = {
              default = "false",
              description = "Whether to restrict the results to changes inside the My Drive hierarchy. This omits changes to files such as those in the Application Data folder or shared files which have not been added to My Drive.",
              location = "query",
              type = "boolean",
            },
            spaces = {
              default = "drive",
              description = "A comma-separated list of spaces to query within the corpora. Supported values are 'drive' and 'appDataFolder'.",
              location = "query",
              type = "string",
            },
            supportsAllDrives = {
              default = "false",
              description = "Whether the requesting application supports both My Drives and shared drives.",
              location = "query",
              type = "boolean",
            },
            supportsTeamDrives = {
              default = "false",
              description = "Deprecated use supportsAllDrives instead.",
              location = "query",
              type = "boolean",
            },
            teamDriveId = {
              description = "Deprecated use driveId instead.",
              location = "query",
              type = "string",
            },
          },
          path = "changes",
          response = {
            ["$ref"] = "ChangeList",
          },
          scopes = {
            "https://www.googleapis.com/auth/drive",
            "https://www.googleapis.com/auth/drive.appdata",
            "https://www.googleapis.com/auth/drive.file",
            "https://www.googleapis.com/auth/drive.metadata",
            "https://www.googleapis.com/auth/drive.metadata.readonly",
            "https://www.googleapis.com/auth/drive.photos.readonly",
            "https://www.googleapis.com/auth/drive.readonly",
          },
          supportsSubscription = true,
        },
        watch = {
          description = "Subscribes to changes for a user.",
          httpMethod = "POST",
          id = "drive.changes.watch",
          parameterOrder = {
            "pageToken",
          },
          parameters = {
            driveId = {
              description = "The shared drive from which changes are returned. If specified the change IDs will be reflective of the shared drive; use the combined drive ID and change ID as an identifier.",
              location = "query",
              type = "string",
            },
            includeCorpusRemovals = {
              default = "false",
              description = "Whether changes should include the file resource if the file is still accessible by the user at the time of the request, even when a file was removed from the list of changes and there will be no further change entries for this file.",
              location = "query",
              type = "boolean",
            },
            includeItemsFromAllDrives = {
              default = "false",
              description = "Whether both My Drive and shared drive items should be included in results.",
              location = "query",
              type = "boolean",
            },
            includeLabels = {
              description = "A comma-separated list of IDs of labels to include in the labelInfo part of the response.",
              location = "query",
              type = "string",
            },
            includePermissionsForView = {
              description = "Specifies which additional view's permissions to include in the response. Only 'published' is supported.",
              location = "query",
              type = "string",
            },
            includeRemoved = {
              default = "true",
              description = "Whether to include changes indicating that items have been removed from the list of changes, for example by deletion or loss of access.",
              location = "query",
              type = "boolean",
            },
            includeTeamDriveItems = {
              default = "false",
              description = "Deprecated use includeItemsFromAllDrives instead.",
              location = "query",
              type = "boolean",
            },
            pageSize = {
              default = "100",
              description = "The maximum number of changes to return per page.",
              format = "int32",
              location = "query",
              maximum = "1000",
              minimum = "1",
              type = "integer",
            },
            pageToken = {
              description = "The token for continuing a previous list request on the next page. This should be set to the value of 'nextPageToken' from the previous response or to the response from the getStartPageToken method.",
              location = "query",
              required = true,
              type = "string",
            },
            restrictToMyDrive = {
              default = "false",
              description = "Whether to restrict the results to changes inside the My Drive hierarchy. This omits changes to files such as those in the Application Data folder or shared files which have not been added to My Drive.",
              location = "query",
              type = "boolean",
            },
            spaces = {
              default = "drive",
              description = "A comma-separated list of spaces to query within the corpora. Supported values are 'drive' and 'appDataFolder'.",
              location = "query",
              type = "string",
            },
            supportsAllDrives = {
              default = "false",
              description = "Whether the requesting application supports both My Drives and shared drives.",
              location = "query",
              type = "boolean",
            },
            supportsTeamDrives = {
              default = "false",
              description = "Deprecated use supportsAllDrives instead.",
              location = "query",
              type = "boolean",
            },
            teamDriveId = {
              description = "Deprecated use driveId instead.",
              location = "query",
              type = "string",
            },
          },
          path = "changes/watch",
          request = {
            ["$ref"] = "Channel",
            parameterName = "resource",
          },
          response = {
            ["$ref"] = "Channel",
          },
          scopes = {
            "https://www.googleapis.com/auth/drive",
            "https://www.googleapis.com/auth/drive.appdata",
            "https://www.googleapis.com/auth/drive.file",
            "https://www.googleapis.com/auth/drive.metadata",
            "https://www.googleapis.com/auth/drive.metadata.readonly",
            "https://www.googleapis.com/auth/drive.photos.readonly",
            "https://www.googleapis.com/auth/drive.readonly",
          },
          supportsSubscription = true,
        },
      },
    },
    channels = {
      methods = {
        stop = {
          description = "Stop watching resources through this channel",
          httpMethod = "POST",
          id = "drive.channels.stop",
          path = "channels/stop",
          request = {
            ["$ref"] = "Channel",
            parameterName = "resource",
          },
          scopes = {
            "https://www.googleapis.com/auth/drive",
            "https://www.googleapis.com/auth/drive.appdata",
            "https://www.googleapis.com/auth/drive.file",
            "https://www.googleapis.com/auth/drive.metadata",
            "https://www.googleapis.com/auth/drive.metadata.readonly",
            "https://www.googleapis.com/auth/drive.photos.readonly",
            "https://www.googleapis.com/auth/drive.readonly",
          },
        },
      },
    },
    comments = {
      methods = {
        create = {
          description = "Creates a comment on a file.",
          httpMethod = "POST",
          id = "drive.comments.create",
          parameterOrder = {
            "fileId",
          },
          parameters = {
            fileId = {
              description = "The ID of the file.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "files/{fileId}/comments",
          request = {
            ["$ref"] = "Comment",
          },
          response = {
            ["$ref"] = "Comment",
          },
          scopes = {
            "https://www.googleapis.com/auth/drive",
            "https://www.googleapis.com/auth/drive.file",
          },
        },
        delete = {
          description = "Deletes a comment.",
          httpMethod = "DELETE",
          id = "drive.comments.delete",
          parameterOrder = {
            "fileId",
            "commentId",
          },
          parameters = {
            commentId = {
              description = "The ID of the comment.",
              location = "path",
              required = true,
              type = "string",
            },
            fileId = {
              description = "The ID of the file.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "files/{fileId}/comments/{commentId}",
          scopes = {
            "https://www.googleapis.com/auth/drive",
            "https://www.googleapis.com/auth/drive.file",
          },
        },
        get = {
          description = "Gets a comment by ID.",
          httpMethod = "GET",
          id = "drive.comments.get",
          parameterOrder = {
            "fileId",
            "commentId",
          },
          parameters = {
            commentId = {
              description = "The ID of the comment.",
              location = "path",
              required = true,
              type = "string",
            },
            fileId = {
              description = "The ID of the file.",
              location = "path",
              required = true,
              type = "string",
            },
            includeDeleted = {
              default = "false",
              description = "Whether to return deleted comments. Deleted comments will not include their original content.",
              location = "query",
              type = "boolean",
            },
          },
          path = "files/{fileId}/comments/{commentId}",
          response = {
            ["$ref"] = "Comment",
          },
          scopes = {
            "https://www.googleapis.com/auth/drive",
            "https://www.googleapis.com/auth/drive.file",
            "https://www.googleapis.com/auth/drive.readonly",
          },
        },
        list = {
          description = "Lists a file's comments.",
          httpMethod = "GET",
          id = "drive.comments.list",
          parameterOrder = {
            "fileId",
          },
          parameters = {
            fileId = {
              description = "The ID of the file.",
              location = "path",
              required = true,
              type = "string",
            },
            includeDeleted = {
              default = "false",
              description = "Whether to include deleted comments. Deleted comments will not include their original content.",
              location = "query",
              type = "boolean",
            },
            pageSize = {
              default = "20",
              description = "The maximum number of comments to return per page.",
              format = "int32",
              location = "query",
              maximum = "100",
              minimum = "1",
              type = "integer",
            },
            pageToken = {
              description = "The token for continuing a previous list request on the next page. This should be set to the value of 'nextPageToken' from the previous response.",
              location = "query",
              type = "string",
            },
            startModifiedTime = {
              description = "The minimum value of 'modifiedTime' for the result comments (RFC 3339 date-time).",
              location = "query",
              type = "string",
            },
          },
          path = "files/{fileId}/comments",
          response = {
            ["$ref"] = "CommentList",
          },
          scopes = {
            "https://www.googleapis.com/auth/drive",
            "https://www.googleapis.com/auth/drive.file",
            "https://www.googleapis.com/auth/drive.readonly",
          },
        },
        update = {
          description = "Updates a comment with patch semantics.",
          httpMethod = "PATCH",
          id = "drive.comments.update",
          parameterOrder = {
            "fileId",
            "commentId",
          },
          parameters = {
            commentId = {
              description = "The ID of the comment.",
              location = "path",
              required = true,
              type = "string",
            },
            fileId = {
              description = "The ID of the file.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "files/{fileId}/comments/{commentId}",
          request = {
            ["$ref"] = "Comment",
          },
          response = {
            ["$ref"] = "Comment",
          },
          scopes = {
            "https://www.googleapis.com/auth/drive",
            "https://www.googleapis.com/auth/drive.file",
          },
        },
      },
    },
    drives = {
      methods = {
        create = {
          description = "Creates a shared drive.",
          httpMethod = "POST",
          id = "drive.drives.create",
          parameterOrder = {
            "requestId",
          },
          parameters = {
            requestId = {
              description = "An ID, such as a random UUID, which uniquely identifies this user's request for idempotent creation of a shared drive. A repeated request by the same user and with the same request ID will avoid creating duplicates by attempting to create the same shared drive. If the shared drive already exists a 409 error will be returned.",
              location = "query",
              required = true,
              type = "string",
            },
          },
          path = "drives",
          request = {
            ["$ref"] = "Drive",
          },
          response = {
            ["$ref"] = "Drive",
          },
          scopes = {
            "https://www.googleapis.com/auth/drive",
          },
        },
        delete = {
          description = "Permanently deletes a shared drive for which the user is an organizer. The shared drive cannot contain any untrashed items.",
          httpMethod = "DELETE",
          id = "drive.drives.delete",
          parameterOrder = {
            "driveId",
          },
          parameters = {
            allowItemDeletion = {
              default = "false",
              description = "Whether any items inside the shared drive should also be deleted. This option is only supported when useDomainAdminAccess is also set to true.",
              location = "query",
              type = "boolean",
            },
            driveId = {
              description = "The ID of the shared drive.",
              location = "path",
              required = true,
              type = "string",
            },
            useDomainAdminAccess = {
              default = "false",
              description = "Issue the request as a domain administrator; if set to true, then the requester will be granted access if they are an administrator of the domain to which the shared drive belongs.",
              location = "query",
              type = "boolean",
            },
          },
          path = "drives/{driveId}",
          scopes = {
            "https://www.googleapis.com/auth/drive",
          },
        },
        get = {
          description = "Gets a shared drive's metadata by ID.",
          httpMethod = "GET",
          id = "drive.drives.get",
          parameterOrder = {
            "driveId",
          },
          parameters = {
            driveId = {
              description = "The ID of the shared drive.",
              location = "path",
              required = true,
              type = "string",
            },
            useDomainAdminAccess = {
              default = "false",
              description = "Issue the request as a domain administrator; if set to true, then the requester will be granted access if they are an administrator of the domain to which the shared drive belongs.",
              location = "query",
              type = "boolean",
            },
          },
          path = "drives/{driveId}",
          response = {
            ["$ref"] = "Drive",
          },
          scopes = {
            "https://www.googleapis.com/auth/drive",
            "https://www.googleapis.com/auth/drive.readonly",
          },
        },
        hide = {
          description = "Hides a shared drive from the default view.",
          httpMethod = "POST",
          id = "drive.drives.hide",
          parameterOrder = {
            "driveId",
          },
          parameters = {
            driveId = {
              description = "The ID of the shared drive.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "drives/{driveId}/hide",
          response = {
            ["$ref"] = "Drive",
          },
          scopes = {
            "https://www.googleapis.com/auth/drive",
          },
        },
        list = {
          description = "Lists the user's shared drives.",
          httpMethod = "GET",
          id = "drive.drives.list",
          parameters = {
            pageSize = {
              default = "10",
              description = "Maximum number of shared drives to return per page.",
              format = "int32",
              location = "query",
              maximum = "100",
              minimum = "1",
              type = "integer",
            },
            pageToken = {
              description = "Page token for shared drives.",
              location = "query",
              type = "string",
            },
            q = {
              description = "Query string for searching shared drives.",
              location = "query",
              type = "string",
            },
            useDomainAdminAccess = {
              default = "false",
              description = "Issue the request as a domain administrator; if set to true, then all shared drives of the domain in which the requester is an administrator are returned.",
              location = "query",
              type = "boolean",
            },
          },
          path = "drives",
          response = {
            ["$ref"] = "DriveList",
          },
          scopes = {
            "https://www.googleapis.com/auth/drive",
            "https://www.googleapis.com/auth/drive.readonly",
          },
        },
        unhide = {
          description = "Restores a shared drive to the default view.",
          httpMethod = "POST",
          id = "drive.drives.unhide",
          parameterOrder = {
            "driveId",
          },
          parameters = {
            driveId = {
              description = "The ID of the shared drive.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "drives/{driveId}/unhide",
          response = {
            ["$ref"] = "Drive",
          },
          scopes = {
            "https://www.googleapis.com/auth/drive",
          },
        },
        update = {
          description = "Updates the metadate for a shared drive.",
          httpMethod = "PATCH",
          id = "drive.drives.update",
          parameterOrder = {
            "driveId",
          },
          parameters = {
            driveId = {
              description = "The ID of the shared drive.",
              location = "path",
              required = true,
              type = "string",
            },
            useDomainAdminAccess = {
              default = "false",
              description = "Issue the request as a domain administrator; if set to true, then the requester will be granted access if they are an administrator of the domain to which the shared drive belongs.",
              location = "query",
              type = "boolean",
            },
          },
          path = "drives/{driveId}",
          request = {
            ["$ref"] = "Drive",
          },
          response = {
            ["$ref"] = "Drive",
          },
          scopes = {
            "https://www.googleapis.com/auth/drive",
          },
        },
      },
    },
    files = {
      methods = {
        copy = {
          description = "Creates a copy of a file and applies any requested updates with patch semantics. Folders cannot be copied.",
          httpMethod = "POST",
          id = "drive.files.copy",
          parameterOrder = {
            "fileId",
          },
          parameters = {
            enforceSingleParent = {
              default = "false",
              description = "Deprecated. Copying files into multiple folders is no longer supported. Use shortcuts instead.",
              location = "query",
              type = "boolean",
            },
            fileId = {
              description = "The ID of the file.",
              location = "path",
              required = true,
              type = "string",
            },
            ignoreDefaultVisibility = {
              default = "false",
              description = "Whether to ignore the domain's default visibility settings for the created file. Domain administrators can choose to make all uploaded files visible to the domain by default; this parameter bypasses that behavior for the request. Permissions are still inherited from parent folders.",
              location = "query",
              type = "boolean",
            },
            includeLabels = {
              description = "A comma-separated list of IDs of labels to include in the labelInfo part of the response.",
              location = "query",
              type = "string",
            },
            includePermissionsForView = {
              description = "Specifies which additional view's permissions to include in the response. Only 'published' is supported.",
              location = "query",
              type = "string",
            },
            keepRevisionForever = {
              default = "false",
              description = "Whether to set the 'keepForever' field in the new head revision. This is only applicable to files with binary content in Google Drive. Only 200 revisions for the file can be kept forever. If the limit is reached, try deleting pinned revisions.",
              location = "query",
              type = "boolean",
            },
            ocrLanguage = {
              description = "A language hint for OCR processing during image import (ISO 639-1 code).",
              location = "query",
              type = "string",
            },
            supportsAllDrives = {
              default = "false",
              description = "Whether the requesting application supports both My Drives and shared drives.",
              location = "query",
              type = "boolean",
            },
            supportsTeamDrives = {
              default = "false",
              description = "Deprecated use supportsAllDrives instead.",
              location = "query",
              type = "boolean",
            },
          },
          path = "files/{fileId}/copy",
          request = {
            ["$ref"] = "File",
          },
          response = {
            ["$ref"] = "File",
          },
          scopes = {
            "https://www.googleapis.com/auth/drive",
            "https://www.googleapis.com/auth/drive.appdata",
            "https://www.googleapis.com/auth/drive.file",
            "https://www.googleapis.com/auth/drive.photos.readonly",
          },
        },
        create = {
          description = "Creates a file.",
          httpMethod = "POST",
          id = "drive.files.create",
          mediaUpload = {
            accept = {
              "*/*",
            },
            maxSize = "5120GB",
            protocols = {
              resumable = {
                multipart = true,
                path = "/resumable/upload/drive/v3/files",
              },
              simple = {
                multipart = true,
                path = "/upload/drive/v3/files",
              },
            },
          },
          parameters = {
            enforceSingleParent = {
              default = "false",
              description = "Deprecated. Creating files in multiple folders is no longer supported.",
              location = "query",
              type = "boolean",
            },
            ignoreDefaultVisibility = {
              default = "false",
              description = "Whether to ignore the domain's default visibility settings for the created file. Domain administrators can choose to make all uploaded files visible to the domain by default; this parameter bypasses that behavior for the request. Permissions are still inherited from parent folders.",
              location = "query",
              type = "boolean",
            },
            includeLabels = {
              description = "A comma-separated list of IDs of labels to include in the labelInfo part of the response.",
              location = "query",
              type = "string",
            },
            includePermissionsForView = {
              description = "Specifies which additional view's permissions to include in the response. Only 'published' is supported.",
              location = "query",
              type = "string",
            },
            keepRevisionForever = {
              default = "false",
              description = "Whether to set the 'keepForever' field in the new head revision. This is only applicable to files with binary content in Google Drive. Only 200 revisions for the file can be kept forever. If the limit is reached, try deleting pinned revisions.",
              location = "query",
              type = "boolean",
            },
            ocrLanguage = {
              description = "A language hint for OCR processing during image import (ISO 639-1 code).",
              location = "query",
              type = "string",
            },
            supportsAllDrives = {
              default = "false",
              description = "Whether the requesting application supports both My Drives and shared drives.",
              location = "query",
              type = "boolean",
            },
            supportsTeamDrives = {
              default = "false",
              description = "Deprecated use supportsAllDrives instead.",
              location = "query",
              type = "boolean",
            },
            useContentAsIndexableText = {
              default = "false",
              description = "Whether to use the uploaded content as indexable text.",
              location = "query",
              type = "boolean",
            },
          },
          path = "files",
          request = {
            ["$ref"] = "File",
          },
          response = {
            ["$ref"] = "File",
          },
          scopes = {
            "https://www.googleapis.com/auth/drive",
            "https://www.googleapis.com/auth/drive.appdata",
            "https://www.googleapis.com/auth/drive.file",
          },
          supportsMediaUpload = true,
          supportsSubscription = true,
        },
        delete = {
          description = "Permanently deletes a file owned by the user without moving it to the trash. If the file belongs to a shared drive the user must be an organizer on the parent. If the target is a folder, all descendants owned by the user are also deleted.",
          httpMethod = "DELETE",
          id = "drive.files.delete",
          parameterOrder = {
            "fileId",
          },
          parameters = {
            enforceSingleParent = {
              default = "false",
              description = "Deprecated. If an item is not in a shared drive and its last parent is deleted but the item itself is not, the item will be placed under its owner's root.",
              location = "query",
              type = "boolean",
            },
            fileId = {
              description = "The ID of the file.",
              location = "path",
              required = true,
              type = "string",
            },
            supportsAllDrives = {
              default = "false",
              description = "Whether the requesting application supports both My Drives and shared drives.",
              location = "query",
              type = "boolean",
            },
            supportsTeamDrives = {
              default = "false",
              description = "Deprecated use supportsAllDrives instead.",
              location = "query",
              type = "boolean",
            },
          },
          path = "files/{fileId}",
          scopes = {
            "https://www.googleapis.com/auth/drive",
            "https://www.googleapis.com/auth/drive.appdata",
            "https://www.googleapis.com/auth/drive.file",
          },
        },
        emptyTrash = {
          description = "Permanently deletes all of the user's trashed files.",
          httpMethod = "DELETE",
          id = "drive.files.emptyTrash",
          parameters = {
            enforceSingleParent = {
              default = "false",
              description = "Deprecated. If an item is not in a shared drive and its last parent is deleted but the item itself is not, the item will be placed under its owner's root.",
              location = "query",
              type = "boolean",
            },
          },
          path = "files/trash",
          scopes = {
            "https://www.googleapis.com/auth/drive",
          },
        },
        export = {
          description = "Exports a Google Workspace document to the requested MIME type and returns exported byte content. Note that the exported content is limited to 10MB.",
          httpMethod = "GET",
          id = "drive.files.export",
          parameterOrder = {
            "fileId",
            "mimeType",
          },
          parameters = {
            fileId = {
              description = "The ID of the file.",
              location = "path",
              required = true,
              type = "string",
            },
            mimeType = {
              description = "The MIME type of the format requested for this export.",
              location = "query",
              required = true,
              type = "string",
            },
          },
          path = "files/{fileId}/export",
          scopes = {
            "https://www.googleapis.com/auth/drive",
            "https://www.googleapis.com/auth/drive.file",
            "https://www.googleapis.com/auth/drive.readonly",
          },
          supportsMediaDownload = true,
        },
        generateIds = {
          description = "Generates a set of file IDs which can be provided in create or copy requests.",
          httpMethod = "GET",
          id = "drive.files.generateIds",
          parameters = {
            count = {
              default = "10",
              description = "The number of IDs to return.",
              format = "int32",
              location = "query",
              maximum = "1000",
              minimum = "1",
              type = "integer",
            },
            space = {
              default = "drive",
              description = "The space in which the IDs can be used to create new files. Supported values are 'drive' and 'appDataFolder'. (Default: 'drive')",
              location = "query",
              type = "string",
            },
            type = {
              default = "files",
              description = "The type of items which the IDs can be used for. Supported values are 'files' and 'shortcuts'. Note that 'shortcuts' are only supported in the drive 'space'. (Default: 'files')",
              location = "query",
              type = "string",
            },
          },
          path = "files/generateIds",
          response = {
            ["$ref"] = "GeneratedIds",
          },
          scopes = {
            "https://www.googleapis.com/auth/drive",
            "https://www.googleapis.com/auth/drive.appdata",
            "https://www.googleapis.com/auth/drive.file",
          },
        },
        get = {
          description = "Gets a file's metadata or content by ID.",
          httpMethod = "GET",
          id = "drive.files.get",
          parameterOrder = {
            "fileId",
          },
          parameters = {
            acknowledgeAbuse = {
              default = "false",
              description = "Whether the user is acknowledging the risk of downloading known malware or other abusive files. This is only applicable when alt=media.",
              location = "query",
              type = "boolean",
            },
            fileId = {
              description = "The ID of the file.",
              location = "path",
              required = true,
              type = "string",
            },
            includeLabels = {
              description = "A comma-separated list of IDs of labels to include in the labelInfo part of the response.",
              location = "query",
              type = "string",
            },
            includePermissionsForView = {
              description = "Specifies which additional view's permissions to include in the response. Only 'published' is supported.",
              location = "query",
              type = "string",
            },
            supportsAllDrives = {
              default = "false",
              description = "Whether the requesting application supports both My Drives and shared drives.",
              location = "query",
              type = "boolean",
            },
            supportsTeamDrives = {
              default = "false",
              description = "Deprecated use supportsAllDrives instead.",
              location = "query",
              type = "boolean",
            },
          },
          path = "files/{fileId}",
          response = {
            ["$ref"] = "File",
          },
          scopes = {
            "https://www.googleapis.com/auth/drive",
            "https://www.googleapis.com/auth/drive.appdata",
            "https://www.googleapis.com/auth/drive.file",
            "https://www.googleapis.com/auth/drive.metadata",
            "https://www.googleapis.com/auth/drive.metadata.readonly",
            "https://www.googleapis.com/auth/drive.photos.readonly",
            "https://www.googleapis.com/auth/drive.readonly",
          },
          supportsMediaDownload = true,
          supportsSubscription = true,
          useMediaDownloadService = true,
        },
        list = {
          description = "Lists or searches files.",
          httpMethod = "GET",
          id = "drive.files.list",
          parameters = {
            corpora = {
              description = "Groupings of files to which the query applies. Supported groupings are: 'user' (files created by, opened by, or shared directly with the user), 'drive' (files in the specified shared drive as indicated by the 'driveId'), 'domain' (files shared to the user's domain), and 'allDrives' (A combination of 'user' and 'drive' for all drives where the user is a member). When able, use 'user' or 'drive', instead of 'allDrives', for efficiency.",
              location = "query",
              type = "string",
            },
            corpus = {
              description = "The source of files to list. Deprecated: use 'corpora' instead.",
              enum = {
                "domain",
                "user",
              },
              enumDescriptions = {
                "Files shared to the user's domain.",
                "Files owned by or shared to the user. If a user has permissions on a Shared Drive, the files inside it won't be retrieved unless the user has created, opened, or shared the file.",
              },
              location = "query",
              type = "string",
            },
            driveId = {
              description = "ID of the shared drive to search.",
              location = "query",
              type = "string",
            },
            includeItemsFromAllDrives = {
              default = "false",
              description = "Whether both My Drive and shared drive items should be included in results.",
              location = "query",
              type = "boolean",
            },
            includeLabels = {
              description = "A comma-separated list of IDs of labels to include in the labelInfo part of the response.",
              location = "query",
              type = "string",
            },
            includePermissionsForView = {
              description = "Specifies which additional view's permissions to include in the response. Only 'published' is supported.",
              location = "query",
              type = "string",
            },
            includeTeamDriveItems = {
              default = "false",
              description = "Deprecated use includeItemsFromAllDrives instead.",
              location = "query",
              type = "boolean",
            },
            orderBy = {
              description = "A comma-separated list of sort keys. Valid keys are 'createdTime', 'folder', 'modifiedByMeTime', 'modifiedTime', 'name', 'name_natural', 'quotaBytesUsed', 'recency', 'sharedWithMeTime', 'starred', and 'viewedByMeTime'. Each key sorts ascending by default, but may be reversed with the 'desc' modifier. Example usage: ?orderBy=folder,modifiedTime desc,name. Please note that there is a current limitation for users with approximately one million files in which the requested sort order is ignored.",
              location = "query",
              type = "string",
            },
            pageSize = {
              default = "100",
              description = "The maximum number of files to return per page. Partial or empty result pages are possible even before the end of the files list has been reached.",
              format = "int32",
              location = "query",
              maximum = "1000",
              minimum = "1",
              type = "integer",
            },
            pageToken = {
              description = "The token for continuing a previous list request on the next page. This should be set to the value of 'nextPageToken' from the previous response.",
              location = "query",
              type = "string",
            },
            q = {
              description = "A query for filtering the file results. See the \"Search for Files\" guide for supported syntax.",
              location = "query",
              type = "string",
            },
            spaces = {
              default = "drive",
              description = "A comma-separated list of spaces to query within the corpora. Supported values are 'drive' and 'appDataFolder'.",
              location = "query",
              type = "string",
            },
            supportsAllDrives = {
              default = "false",
              description = "Whether the requesting application supports both My Drives and shared drives.",
              location = "query",
              type = "boolean",
            },
            supportsTeamDrives = {
              default = "false",
              description = "Deprecated use supportsAllDrives instead.",
              location = "query",
              type = "boolean",
            },
            teamDriveId = {
              description = "Deprecated use driveId instead.",
              location = "query",
              type = "string",
            },
          },
          path = "files",
          response = {
            ["$ref"] = "FileList",
          },
          scopes = {
            "https://www.googleapis.com/auth/drive",
            "https://www.googleapis.com/auth/drive.appdata",
            "https://www.googleapis.com/auth/drive.file",
            "https://www.googleapis.com/auth/drive.metadata",
            "https://www.googleapis.com/auth/drive.metadata.readonly",
            "https://www.googleapis.com/auth/drive.photos.readonly",
            "https://www.googleapis.com/auth/drive.readonly",
          },
        },
        listLabels = {
          description = "Lists the labels on a file.",
          httpMethod = "GET",
          id = "drive.files.listLabels",
          parameterOrder = {
            "fileId",
          },
          parameters = {
            fileId = {
              description = "The ID of the file.",
              location = "path",
              required = true,
              type = "string",
            },
            maxResults = {
              default = "100",
              description = "The maximum number of labels to return per page. When not set, this defaults to 100.",
              format = "int32",
              location = "query",
              maximum = "100",
              minimum = "1",
              type = "integer",
            },
            pageToken = {
              description = "The token for continuing a previous list request on the next page. This should be set to the value of 'nextPageToken' from the previous response.",
              location = "query",
              type = "string",
            },
          },
          path = "files/{fileId}/listLabels",
          response = {
            ["$ref"] = "LabelList",
          },
          scopes = {
            "https://www.googleapis.com/auth/drive",
            "https://www.googleapis.com/auth/drive.file",
            "https://www.googleapis.com/auth/drive.metadata",
            "https://www.googleapis.com/auth/drive.metadata.readonly",
            "https://www.googleapis.com/auth/drive.readonly",
          },
        },
        modifyLabels = {
          description = "Modifies the set of labels on a file.",
          httpMethod = "POST",
          id = "drive.files.modifyLabels",
          parameterOrder = {
            "fileId",
          },
          parameters = {
            fileId = {
              description = "The ID of the file for which the labels are modified.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "files/{fileId}/modifyLabels",
          request = {
            ["$ref"] = "ModifyLabelsRequest",
          },
          response = {
            ["$ref"] = "ModifyLabelsResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/drive",
            "https://www.googleapis.com/auth/drive.file",
            "https://www.googleapis.com/auth/drive.metadata",
          },
        },
        update = {
          description = "Updates a file's metadata and/or content. When calling this method, only populate fields in the request that you want to modify. When updating fields, some fields might change automatically, such as modifiedDate. This method supports patch semantics.",
          httpMethod = "PATCH",
          id = "drive.files.update",
          mediaUpload = {
            accept = {
              "*/*",
            },
            maxSize = "5120GB",
            protocols = {
              resumable = {
                multipart = true,
                path = "/resumable/upload/drive/v3/files/{fileId}",
              },
              simple = {
                multipart = true,
                path = "/upload/drive/v3/files/{fileId}",
              },
            },
          },
          parameterOrder = {
            "fileId",
          },
          parameters = {
            addParents = {
              description = "A comma-separated list of parent IDs to add.",
              location = "query",
              type = "string",
            },
            enforceSingleParent = {
              default = "false",
              description = "Deprecated. Adding files to multiple folders is no longer supported. Use shortcuts instead.",
              location = "query",
              type = "boolean",
            },
            fileId = {
              description = "The ID of the file.",
              location = "path",
              required = true,
              type = "string",
            },
            includeLabels = {
              description = "A comma-separated list of IDs of labels to include in the labelInfo part of the response.",
              location = "query",
              type = "string",
            },
            includePermissionsForView = {
              description = "Specifies which additional view's permissions to include in the response. Only 'published' is supported.",
              location = "query",
              type = "string",
            },
            keepRevisionForever = {
              default = "false",
              description = "Whether to set the 'keepForever' field in the new head revision. This is only applicable to files with binary content in Google Drive. Only 200 revisions for the file can be kept forever. If the limit is reached, try deleting pinned revisions.",
              location = "query",
              type = "boolean",
            },
            ocrLanguage = {
              description = "A language hint for OCR processing during image import (ISO 639-1 code).",
              location = "query",
              type = "string",
            },
            removeParents = {
              description = "A comma-separated list of parent IDs to remove.",
              location = "query",
              type = "string",
            },
            supportsAllDrives = {
              default = "false",
              description = "Whether the requesting application supports both My Drives and shared drives.",
              location = "query",
              type = "boolean",
            },
            supportsTeamDrives = {
              default = "false",
              description = "Deprecated use supportsAllDrives instead.",
              location = "query",
              type = "boolean",
            },
            useContentAsIndexableText = {
              default = "false",
              description = "Whether to use the uploaded content as indexable text.",
              location = "query",
              type = "boolean",
            },
          },
          path = "files/{fileId}",
          request = {
            ["$ref"] = "File",
          },
          response = {
            ["$ref"] = "File",
          },
          scopes = {
            "https://www.googleapis.com/auth/drive",
            "https://www.googleapis.com/auth/drive.appdata",
            "https://www.googleapis.com/auth/drive.file",
            "https://www.googleapis.com/auth/drive.metadata",
            "https://www.googleapis.com/auth/drive.scripts",
          },
          supportsMediaUpload = true,
        },
        watch = {
          description = "Subscribes to changes to a file. While you can establish a channel for changes to a file on a shared drive, a change to a shared drive file won't create a notification.",
          httpMethod = "POST",
          id = "drive.files.watch",
          parameterOrder = {
            "fileId",
          },
          parameters = {
            acknowledgeAbuse = {
              default = "false",
              description = "Whether the user is acknowledging the risk of downloading known malware or other abusive files. This is only applicable when alt=media.",
              location = "query",
              type = "boolean",
            },
            fileId = {
              description = "The ID of the file.",
              location = "path",
              required = true,
              type = "string",
            },
            includeLabels = {
              description = "A comma-separated list of IDs of labels to include in the labelInfo part of the response.",
              location = "query",
              type = "string",
            },
            includePermissionsForView = {
              description = "Specifies which additional view's permissions to include in the response. Only 'published' is supported.",
              location = "query",
              type = "string",
            },
            supportsAllDrives = {
              default = "false",
              description = "Whether the requesting application supports both My Drives and shared drives.",
              location = "query",
              type = "boolean",
            },
            supportsTeamDrives = {
              default = "false",
              description = "Deprecated use supportsAllDrives instead.",
              location = "query",
              type = "boolean",
            },
          },
          path = "files/{fileId}/watch",
          request = {
            ["$ref"] = "Channel",
            parameterName = "resource",
          },
          response = {
            ["$ref"] = "Channel",
          },
          scopes = {
            "https://www.googleapis.com/auth/drive",
            "https://www.googleapis.com/auth/drive.appdata",
            "https://www.googleapis.com/auth/drive.file",
            "https://www.googleapis.com/auth/drive.metadata",
            "https://www.googleapis.com/auth/drive.metadata.readonly",
            "https://www.googleapis.com/auth/drive.photos.readonly",
            "https://www.googleapis.com/auth/drive.readonly",
          },
          supportsMediaDownload = true,
          supportsSubscription = true,
          useMediaDownloadService = true,
        },
      },
    },
    permissions = {
      methods = {
        create = {
          description = "Creates a permission for a file or shared drive.",
          httpMethod = "POST",
          id = "drive.permissions.create",
          parameterOrder = {
            "fileId",
          },
          parameters = {
            emailMessage = {
              description = "A plain text custom message to include in the notification email.",
              location = "query",
              type = "string",
            },
            enforceSingleParent = {
              default = "false",
              description = "Deprecated. See moveToNewOwnersRoot for details.",
              location = "query",
              type = "boolean",
            },
            fileId = {
              description = "The ID of the file or shared drive.",
              location = "path",
              required = true,
              type = "string",
            },
            moveToNewOwnersRoot = {
              default = "false",
              description = "This parameter will only take effect if the item is not in a shared drive and the request is attempting to transfer the ownership of the item. If set to true, the item will be moved to the new owner's My Drive root folder and all prior parents removed. If set to false, parents are not changed.",
              location = "query",
              type = "boolean",
            },
            sendNotificationEmail = {
              description = "Whether to send a notification email when sharing to users or groups. This defaults to true for users and groups, and is not allowed for other requests. It must not be disabled for ownership transfers.",
              location = "query",
              type = "boolean",
            },
            supportsAllDrives = {
              default = "false",
              description = "Whether the requesting application supports both My Drives and shared drives.",
              location = "query",
              type = "boolean",
            },
            supportsTeamDrives = {
              default = "false",
              description = "Deprecated use supportsAllDrives instead.",
              location = "query",
              type = "boolean",
            },
            transferOwnership = {
              default = "false",
              description = "Whether to transfer ownership to the specified user and downgrade the current owner to a writer. This parameter is required as an acknowledgement of the side effect. File owners can only transfer ownership of files existing on My Drive. Files existing in a shared drive are owned by the organization that owns that shared drive. Ownership transfers are not supported for files and folders in shared drives. Organizers of a shared drive can move items from that shared drive into their My Drive which transfers the ownership to them.",
              location = "query",
              type = "boolean",
            },
            useDomainAdminAccess = {
              default = "false",
              description = "Issue the request as a domain administrator; if set to true, then the requester will be granted access if the file ID parameter refers to a shared drive and the requester is an administrator of the domain to which the shared drive belongs.",
              location = "query",
              type = "boolean",
            },
          },
          path = "files/{fileId}/permissions",
          request = {
            ["$ref"] = "Permission",
          },
          response = {
            ["$ref"] = "Permission",
          },
          scopes = {
            "https://www.googleapis.com/auth/drive",
            "https://www.googleapis.com/auth/drive.file",
          },
        },
        delete = {
          description = "Deletes a permission.",
          httpMethod = "DELETE",
          id = "drive.permissions.delete",
          parameterOrder = {
            "fileId",
            "permissionId",
          },
          parameters = {
            fileId = {
              description = "The ID of the file or shared drive.",
              location = "path",
              required = true,
              type = "string",
            },
            permissionId = {
              description = "The ID of the permission.",
              location = "path",
              required = true,
              type = "string",
            },
            supportsAllDrives = {
              default = "false",
              description = "Whether the requesting application supports both My Drives and shared drives.",
              location = "query",
              type = "boolean",
            },
            supportsTeamDrives = {
              default = "false",
              description = "Deprecated use supportsAllDrives instead.",
              location = "query",
              type = "boolean",
            },
            useDomainAdminAccess = {
              default = "false",
              description = "Issue the request as a domain administrator; if set to true, then the requester will be granted access if the file ID parameter refers to a shared drive and the requester is an administrator of the domain to which the shared drive belongs.",
              location = "query",
              type = "boolean",
            },
          },
          path = "files/{fileId}/permissions/{permissionId}",
          scopes = {
            "https://www.googleapis.com/auth/drive",
            "https://www.googleapis.com/auth/drive.file",
          },
        },
        get = {
          description = "Gets a permission by ID.",
          httpMethod = "GET",
          id = "drive.permissions.get",
          parameterOrder = {
            "fileId",
            "permissionId",
          },
          parameters = {
            fileId = {
              description = "The ID of the file.",
              location = "path",
              required = true,
              type = "string",
            },
            permissionId = {
              description = "The ID of the permission.",
              location = "path",
              required = true,
              type = "string",
            },
            supportsAllDrives = {
              default = "false",
              description = "Whether the requesting application supports both My Drives and shared drives.",
              location = "query",
              type = "boolean",
            },
            supportsTeamDrives = {
              default = "false",
              description = "Deprecated use supportsAllDrives instead.",
              location = "query",
              type = "boolean",
            },
            useDomainAdminAccess = {
              default = "false",
              description = "Issue the request as a domain administrator; if set to true, then the requester will be granted access if the file ID parameter refers to a shared drive and the requester is an administrator of the domain to which the shared drive belongs.",
              location = "query",
              type = "boolean",
            },
          },
          path = "files/{fileId}/permissions/{permissionId}",
          response = {
            ["$ref"] = "Permission",
          },
          scopes = {
            "https://www.googleapis.com/auth/drive",
            "https://www.googleapis.com/auth/drive.file",
            "https://www.googleapis.com/auth/drive.metadata",
            "https://www.googleapis.com/auth/drive.metadata.readonly",
            "https://www.googleapis.com/auth/drive.photos.readonly",
            "https://www.googleapis.com/auth/drive.readonly",
          },
        },
        list = {
          description = "Lists a file's or shared drive's permissions.",
          httpMethod = "GET",
          id = "drive.permissions.list",
          parameterOrder = {
            "fileId",
          },
          parameters = {
            fileId = {
              description = "The ID of the file or shared drive.",
              location = "path",
              required = true,
              type = "string",
            },
            includePermissionsForView = {
              description = "Specifies which additional view's permissions to include in the response. Only 'published' is supported.",
              location = "query",
              type = "string",
            },
            pageSize = {
              description = "The maximum number of permissions to return per page. When not set for files in a shared drive, at most 100 results will be returned. When not set for files that are not in a shared drive, the entire list will be returned.",
              format = "int32",
              location = "query",
              maximum = "100",
              minimum = "1",
              type = "integer",
            },
            pageToken = {
              description = "The token for continuing a previous list request on the next page. This should be set to the value of 'nextPageToken' from the previous response.",
              location = "query",
              type = "string",
            },
            supportsAllDrives = {
              default = "false",
              description = "Whether the requesting application supports both My Drives and shared drives.",
              location = "query",
              type = "boolean",
            },
            supportsTeamDrives = {
              default = "false",
              description = "Deprecated use supportsAllDrives instead.",
              location = "query",
              type = "boolean",
            },
            useDomainAdminAccess = {
              default = "false",
              description = "Issue the request as a domain administrator; if set to true, then the requester will be granted access if the file ID parameter refers to a shared drive and the requester is an administrator of the domain to which the shared drive belongs.",
              location = "query",
              type = "boolean",
            },
          },
          path = "files/{fileId}/permissions",
          response = {
            ["$ref"] = "PermissionList",
          },
          scopes = {
            "https://www.googleapis.com/auth/drive",
            "https://www.googleapis.com/auth/drive.file",
            "https://www.googleapis.com/auth/drive.metadata",
            "https://www.googleapis.com/auth/drive.metadata.readonly",
            "https://www.googleapis.com/auth/drive.photos.readonly",
            "https://www.googleapis.com/auth/drive.readonly",
          },
        },
        update = {
          description = "Updates a permission with patch semantics.",
          httpMethod = "PATCH",
          id = "drive.permissions.update",
          parameterOrder = {
            "fileId",
            "permissionId",
          },
          parameters = {
            fileId = {
              description = "The ID of the file or shared drive.",
              location = "path",
              required = true,
              type = "string",
            },
            permissionId = {
              description = "The ID of the permission.",
              location = "path",
              required = true,
              type = "string",
            },
            removeExpiration = {
              default = "false",
              description = "Whether to remove the expiration date.",
              location = "query",
              type = "boolean",
            },
            supportsAllDrives = {
              default = "false",
              description = "Whether the requesting application supports both My Drives and shared drives.",
              location = "query",
              type = "boolean",
            },
            supportsTeamDrives = {
              default = "false",
              description = "Deprecated use supportsAllDrives instead.",
              location = "query",
              type = "boolean",
            },
            transferOwnership = {
              default = "false",
              description = "Whether to transfer ownership to the specified user and downgrade the current owner to a writer. This parameter is required as an acknowledgement of the side effect. File owners can only transfer ownership of files existing on My Drive. Files existing in a shared drive are owned by the organization that owns that shared drive. Ownership transfers are not supported for files and folders in shared drives. Organizers of a shared drive can move items from that shared drive into their My Drive which transfers the ownership to them.",
              location = "query",
              type = "boolean",
            },
            useDomainAdminAccess = {
              default = "false",
              description = "Issue the request as a domain administrator; if set to true, then the requester will be granted access if the file ID parameter refers to a shared drive and the requester is an administrator of the domain to which the shared drive belongs.",
              location = "query",
              type = "boolean",
            },
          },
          path = "files/{fileId}/permissions/{permissionId}",
          request = {
            ["$ref"] = "Permission",
          },
          response = {
            ["$ref"] = "Permission",
          },
          scopes = {
            "https://www.googleapis.com/auth/drive",
            "https://www.googleapis.com/auth/drive.file",
          },
        },
      },
    },
    replies = {
      methods = {
        create = {
          description = "Creates a reply to a comment.",
          httpMethod = "POST",
          id = "drive.replies.create",
          parameterOrder = {
            "fileId",
            "commentId",
          },
          parameters = {
            commentId = {
              description = "The ID of the comment.",
              location = "path",
              required = true,
              type = "string",
            },
            fileId = {
              description = "The ID of the file.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "files/{fileId}/comments/{commentId}/replies",
          request = {
            ["$ref"] = "Reply",
          },
          response = {
            ["$ref"] = "Reply",
          },
          scopes = {
            "https://www.googleapis.com/auth/drive",
            "https://www.googleapis.com/auth/drive.file",
          },
        },
        delete = {
          description = "Deletes a reply.",
          httpMethod = "DELETE",
          id = "drive.replies.delete",
          parameterOrder = {
            "fileId",
            "commentId",
            "replyId",
          },
          parameters = {
            commentId = {
              description = "The ID of the comment.",
              location = "path",
              required = true,
              type = "string",
            },
            fileId = {
              description = "The ID of the file.",
              location = "path",
              required = true,
              type = "string",
            },
            replyId = {
              description = "The ID of the reply.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "files/{fileId}/comments/{commentId}/replies/{replyId}",
          scopes = {
            "https://www.googleapis.com/auth/drive",
            "https://www.googleapis.com/auth/drive.file",
          },
        },
        get = {
          description = "Gets a reply by ID.",
          httpMethod = "GET",
          id = "drive.replies.get",
          parameterOrder = {
            "fileId",
            "commentId",
            "replyId",
          },
          parameters = {
            commentId = {
              description = "The ID of the comment.",
              location = "path",
              required = true,
              type = "string",
            },
            fileId = {
              description = "The ID of the file.",
              location = "path",
              required = true,
              type = "string",
            },
            includeDeleted = {
              default = "false",
              description = "Whether to return deleted replies. Deleted replies will not include their original content.",
              location = "query",
              type = "boolean",
            },
            replyId = {
              description = "The ID of the reply.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "files/{fileId}/comments/{commentId}/replies/{replyId}",
          response = {
            ["$ref"] = "Reply",
          },
          scopes = {
            "https://www.googleapis.com/auth/drive",
            "https://www.googleapis.com/auth/drive.file",
            "https://www.googleapis.com/auth/drive.readonly",
          },
        },
        list = {
          description = "Lists a comment's replies.",
          httpMethod = "GET",
          id = "drive.replies.list",
          parameterOrder = {
            "fileId",
            "commentId",
          },
          parameters = {
            commentId = {
              description = "The ID of the comment.",
              location = "path",
              required = true,
              type = "string",
            },
            fileId = {
              description = "The ID of the file.",
              location = "path",
              required = true,
              type = "string",
            },
            includeDeleted = {
              default = "false",
              description = "Whether to include deleted replies. Deleted replies will not include their original content.",
              location = "query",
              type = "boolean",
            },
            pageSize = {
              default = "20",
              description = "The maximum number of replies to return per page.",
              format = "int32",
              location = "query",
              maximum = "100",
              minimum = "1",
              type = "integer",
            },
            pageToken = {
              description = "The token for continuing a previous list request on the next page. This should be set to the value of 'nextPageToken' from the previous response.",
              location = "query",
              type = "string",
            },
          },
          path = "files/{fileId}/comments/{commentId}/replies",
          response = {
            ["$ref"] = "ReplyList",
          },
          scopes = {
            "https://www.googleapis.com/auth/drive",
            "https://www.googleapis.com/auth/drive.file",
            "https://www.googleapis.com/auth/drive.readonly",
          },
        },
        update = {
          description = "Updates a reply with patch semantics.",
          httpMethod = "PATCH",
          id = "drive.replies.update",
          parameterOrder = {
            "fileId",
            "commentId",
            "replyId",
          },
          parameters = {
            commentId = {
              description = "The ID of the comment.",
              location = "path",
              required = true,
              type = "string",
            },
            fileId = {
              description = "The ID of the file.",
              location = "path",
              required = true,
              type = "string",
            },
            replyId = {
              description = "The ID of the reply.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "files/{fileId}/comments/{commentId}/replies/{replyId}",
          request = {
            ["$ref"] = "Reply",
          },
          response = {
            ["$ref"] = "Reply",
          },
          scopes = {
            "https://www.googleapis.com/auth/drive",
            "https://www.googleapis.com/auth/drive.file",
          },
        },
      },
    },
    revisions = {
      methods = {
        delete = {
          description = "Permanently deletes a file version. You can only delete revisions for files with binary content in Google Drive, like images or videos. Revisions for other files, like Google Docs or Sheets, and the last remaining file version can't be deleted.",
          httpMethod = "DELETE",
          id = "drive.revisions.delete",
          parameterOrder = {
            "fileId",
            "revisionId",
          },
          parameters = {
            fileId = {
              description = "The ID of the file.",
              location = "path",
              required = true,
              type = "string",
            },
            revisionId = {
              description = "The ID of the revision.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "files/{fileId}/revisions/{revisionId}",
          scopes = {
            "https://www.googleapis.com/auth/drive",
            "https://www.googleapis.com/auth/drive.appdata",
            "https://www.googleapis.com/auth/drive.file",
          },
        },
        get = {
          description = "Gets a revision's metadata or content by ID.",
          httpMethod = "GET",
          id = "drive.revisions.get",
          parameterOrder = {
            "fileId",
            "revisionId",
          },
          parameters = {
            acknowledgeAbuse = {
              default = "false",
              description = "Whether the user is acknowledging the risk of downloading known malware or other abusive files. This is only applicable when alt=media.",
              location = "query",
              type = "boolean",
            },
            fileId = {
              description = "The ID of the file.",
              location = "path",
              required = true,
              type = "string",
            },
            revisionId = {
              description = "The ID of the revision.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "files/{fileId}/revisions/{revisionId}",
          response = {
            ["$ref"] = "Revision",
          },
          scopes = {
            "https://www.googleapis.com/auth/drive",
            "https://www.googleapis.com/auth/drive.appdata",
            "https://www.googleapis.com/auth/drive.file",
            "https://www.googleapis.com/auth/drive.metadata",
            "https://www.googleapis.com/auth/drive.metadata.readonly",
            "https://www.googleapis.com/auth/drive.photos.readonly",
            "https://www.googleapis.com/auth/drive.readonly",
          },
          supportsMediaDownload = true,
          useMediaDownloadService = true,
        },
        list = {
          description = "Lists a file's revisions.",
          httpMethod = "GET",
          id = "drive.revisions.list",
          parameterOrder = {
            "fileId",
          },
          parameters = {
            fileId = {
              description = "The ID of the file.",
              location = "path",
              required = true,
              type = "string",
            },
            pageSize = {
              default = "200",
              description = "The maximum number of revisions to return per page.",
              format = "int32",
              location = "query",
              maximum = "1000",
              minimum = "1",
              type = "integer",
            },
            pageToken = {
              description = "The token for continuing a previous list request on the next page. This should be set to the value of 'nextPageToken' from the previous response.",
              location = "query",
              type = "string",
            },
          },
          path = "files/{fileId}/revisions",
          response = {
            ["$ref"] = "RevisionList",
          },
          scopes = {
            "https://www.googleapis.com/auth/drive",
            "https://www.googleapis.com/auth/drive.appdata",
            "https://www.googleapis.com/auth/drive.file",
            "https://www.googleapis.com/auth/drive.metadata",
            "https://www.googleapis.com/auth/drive.metadata.readonly",
            "https://www.googleapis.com/auth/drive.photos.readonly",
            "https://www.googleapis.com/auth/drive.readonly",
          },
        },
        update = {
          description = "Updates a revision with patch semantics.",
          httpMethod = "PATCH",
          id = "drive.revisions.update",
          parameterOrder = {
            "fileId",
            "revisionId",
          },
          parameters = {
            fileId = {
              description = "The ID of the file.",
              location = "path",
              required = true,
              type = "string",
            },
            revisionId = {
              description = "The ID of the revision.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "files/{fileId}/revisions/{revisionId}",
          request = {
            ["$ref"] = "Revision",
          },
          response = {
            ["$ref"] = "Revision",
          },
          scopes = {
            "https://www.googleapis.com/auth/drive",
            "https://www.googleapis.com/auth/drive.appdata",
            "https://www.googleapis.com/auth/drive.file",
          },
        },
      },
    },
    teamdrives = {
      methods = {
        create = {
          description = "Deprecated use drives.create instead.",
          httpMethod = "POST",
          id = "drive.teamdrives.create",
          parameterOrder = {
            "requestId",
          },
          parameters = {
            requestId = {
              description = "An ID, such as a random UUID, which uniquely identifies this user's request for idempotent creation of a Team Drive. A repeated request by the same user and with the same request ID will avoid creating duplicates by attempting to create the same Team Drive. If the Team Drive already exists a 409 error will be returned.",
              location = "query",
              required = true,
              type = "string",
            },
          },
          path = "teamdrives",
          request = {
            ["$ref"] = "TeamDrive",
          },
          response = {
            ["$ref"] = "TeamDrive",
          },
          scopes = {
            "https://www.googleapis.com/auth/drive",
          },
        },
        delete = {
          description = "Deprecated use drives.delete instead.",
          httpMethod = "DELETE",
          id = "drive.teamdrives.delete",
          parameterOrder = {
            "teamDriveId",
          },
          parameters = {
            teamDriveId = {
              description = "The ID of the Team Drive",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "teamdrives/{teamDriveId}",
          scopes = {
            "https://www.googleapis.com/auth/drive",
          },
        },
        get = {
          description = "Deprecated use drives.get instead.",
          httpMethod = "GET",
          id = "drive.teamdrives.get",
          parameterOrder = {
            "teamDriveId",
          },
          parameters = {
            teamDriveId = {
              description = "The ID of the Team Drive",
              location = "path",
              required = true,
              type = "string",
            },
            useDomainAdminAccess = {
              default = "false",
              description = "Issue the request as a domain administrator; if set to true, then the requester will be granted access if they are an administrator of the domain to which the Team Drive belongs.",
              location = "query",
              type = "boolean",
            },
          },
          path = "teamdrives/{teamDriveId}",
          response = {
            ["$ref"] = "TeamDrive",
          },
          scopes = {
            "https://www.googleapis.com/auth/drive",
            "https://www.googleapis.com/auth/drive.readonly",
          },
        },
        list = {
          description = "Deprecated use drives.list instead.",
          httpMethod = "GET",
          id = "drive.teamdrives.list",
          parameters = {
            pageSize = {
              default = "10",
              description = "Maximum number of Team Drives to return.",
              format = "int32",
              location = "query",
              maximum = "100",
              minimum = "1",
              type = "integer",
            },
            pageToken = {
              description = "Page token for Team Drives.",
              location = "query",
              type = "string",
            },
            q = {
              description = "Query string for searching Team Drives.",
              location = "query",
              type = "string",
            },
            useDomainAdminAccess = {
              default = "false",
              description = "Issue the request as a domain administrator; if set to true, then all Team Drives of the domain in which the requester is an administrator are returned.",
              location = "query",
              type = "boolean",
            },
          },
          path = "teamdrives",
          response = {
            ["$ref"] = "TeamDriveList",
          },
          scopes = {
            "https://www.googleapis.com/auth/drive",
            "https://www.googleapis.com/auth/drive.readonly",
          },
        },
        update = {
          description = "Deprecated use drives.update instead",
          httpMethod = "PATCH",
          id = "drive.teamdrives.update",
          parameterOrder = {
            "teamDriveId",
          },
          parameters = {
            teamDriveId = {
              description = "The ID of the Team Drive",
              location = "path",
              required = true,
              type = "string",
            },
            useDomainAdminAccess = {
              default = "false",
              description = "Issue the request as a domain administrator; if set to true, then the requester will be granted access if they are an administrator of the domain to which the Team Drive belongs.",
              location = "query",
              type = "boolean",
            },
          },
          path = "teamdrives/{teamDriveId}",
          request = {
            ["$ref"] = "TeamDrive",
          },
          response = {
            ["$ref"] = "TeamDrive",
          },
          scopes = {
            "https://www.googleapis.com/auth/drive",
          },
        },
      },
    },
  },
  revision = "20230105",
  rootUrl = "https://www.googleapis.com/",
  schemas = {
    About = {
      description = "Information about the user, the user's Drive, and system capabilities.",
      id = "About",
      properties = {
        appInstalled = {
          description = "Whether the user has installed the requesting app.",
          type = "boolean",
        },
        canCreateDrives = {
          description = "Whether the user can create shared drives.",
          type = "boolean",
        },
        canCreateTeamDrives = {
          description = "Deprecated - use canCreateDrives instead.",
          type = "boolean",
        },
        driveThemes = {
          description = "A list of themes that are supported for shared drives.",
          items = {
            properties = {
              backgroundImageLink = {
                description = "A link to this theme's background image.",
                type = "string",
              },
              colorRgb = {
                description = "The color of this theme as an RGB hex string.",
                type = "string",
              },
              id = {
                description = "The ID of the theme.",
                type = "string",
              },
            },
            type = "object",
          },
          type = "array",
        },
        exportFormats = {
          additionalProperties = {
            items = {
              type = "string",
            },
            type = "array",
          },
          description = "A map of source MIME type to possible targets for all supported exports.",
          type = "object",
        },
        folderColorPalette = {
          description = "The currently supported folder colors as RGB hex strings.",
          items = {
            type = "string",
          },
          type = "array",
        },
        importFormats = {
          additionalProperties = {
            items = {
              type = "string",
            },
            type = "array",
          },
          description = "A map of source MIME type to possible targets for all supported imports.",
          type = "object",
        },
        kind = {
          default = "drive#about",
          description = "Identifies what kind of resource this is. Value: the fixed string \"drive#about\".",
          type = "string",
        },
        maxImportSizes = {
          additionalProperties = {
            format = "int64",
            type = "string",
          },
          description = "A map of maximum import sizes by MIME type, in bytes.",
          type = "object",
        },
        maxUploadSize = {
          description = "The maximum upload size in bytes.",
          format = "int64",
          type = "string",
        },
        storageQuota = {
          description = "The user's storage quota limits and usage. All fields are measured in bytes.",
          properties = {
            limit = {
              description = "The usage limit, if applicable. This will not be present if the user has unlimited storage.",
              format = "int64",
              type = "string",
            },
            usage = {
              description = "The total usage across all services.",
              format = "int64",
              type = "string",
            },
            usageInDrive = {
              description = "The usage by all files in Google Drive.",
              format = "int64",
              type = "string",
            },
            usageInDriveTrash = {
              description = "The usage by trashed files in Google Drive.",
              format = "int64",
              type = "string",
            },
          },
          type = "object",
        },
        teamDriveThemes = {
          description = "Deprecated - use driveThemes instead.",
          items = {
            properties = {
              backgroundImageLink = {
                description = "Deprecated - use driveThemes/backgroundImageLink instead.",
                type = "string",
              },
              colorRgb = {
                description = "Deprecated - use driveThemes/colorRgb instead.",
                type = "string",
              },
              id = {
                description = "Deprecated - use driveThemes/id instead.",
                type = "string",
              },
            },
            type = "object",
          },
          type = "array",
        },
        user = {
          ["$ref"] = "User",
          description = "The authenticated user.",
        },
      },
      type = "object",
    },
    Change = {
      description = "A change to a file or shared drive.",
      id = "Change",
      properties = {
        changeType = {
          description = "The type of the change. Possible values are file and drive.",
          type = "string",
        },
        drive = {
          ["$ref"] = "Drive",
          description = "The updated state of the shared drive. Present if the changeType is drive, the user is still a member of the shared drive, and the shared drive has not been deleted.",
        },
        driveId = {
          description = "The ID of the shared drive associated with this change.",
          type = "string",
        },
        file = {
          ["$ref"] = "File",
          description = "The updated state of the file. Present if the type is file and the file has not been removed from this list of changes.",
        },
        fileId = {
          description = "The ID of the file which has changed.",
          type = "string",
        },
        kind = {
          default = "drive#change",
          description = "Identifies what kind of resource this is. Value: the fixed string \"drive#change\".",
          type = "string",
        },
        removed = {
          description = "Whether the file or shared drive has been removed from this list of changes, for example by deletion or loss of access.",
          type = "boolean",
        },
        teamDrive = {
          ["$ref"] = "TeamDrive",
          description = "Deprecated - use drive instead.",
        },
        teamDriveId = {
          description = "Deprecated - use driveId instead.",
          type = "string",
        },
        time = {
          description = "The time of this change (RFC 3339 date-time).",
          format = "date-time",
          type = "string",
        },
        type = {
          description = "Deprecated - use changeType instead.",
          type = "string",
        },
      },
      type = "object",
    },
    ChangeList = {
      description = "A list of changes for a user.",
      id = "ChangeList",
      properties = {
        changes = {
          description = "The list of changes. If nextPageToken is populated, then this list may be incomplete and an additional page of results should be fetched.",
          items = {
            ["$ref"] = "Change",
          },
          type = "array",
        },
        kind = {
          default = "drive#changeList",
          description = "Identifies what kind of resource this is. Value: the fixed string \"drive#changeList\".",
          type = "string",
        },
        newStartPageToken = {
          description = "The starting page token for future changes. This will be present only if the end of the current changes list has been reached.",
          type = "string",
        },
        nextPageToken = {
          description = "The page token for the next page of changes. This will be absent if the end of the changes list has been reached. If the token is rejected for any reason, it should be discarded, and pagination should be restarted from the first page of results.",
          type = "string",
        },
      },
      type = "object",
    },
    Channel = {
      description = "An notification channel used to watch for resource changes.",
      id = "Channel",
      properties = {
        address = {
          description = "The address where notifications are delivered for this channel.",
          type = "string",
        },
        expiration = {
          description = "Date and time of notification channel expiration, expressed as a Unix timestamp, in milliseconds. Optional.",
          format = "int64",
          type = "string",
        },
        id = {
          description = "A UUID or similar unique string that identifies this channel.",
          type = "string",
        },
        kind = {
          default = "api#channel",
          description = "Identifies this as a notification channel used to watch for changes to a resource, which is \"api#channel\".",
          type = "string",
        },
        params = {
          additionalProperties = {
            description = "Declares a new parameter by name.",
            type = "string",
          },
          description = "Additional parameters controlling delivery channel behavior. Optional.",
          type = "object",
        },
        payload = {
          description = "A Boolean value to indicate whether payload is wanted. Optional.",
          type = "boolean",
        },
        resourceId = {
          description = "An opaque ID that identifies the resource being watched on this channel. Stable across different API versions.",
          type = "string",
        },
        resourceUri = {
          description = "A version-specific identifier for the watched resource.",
          type = "string",
        },
        token = {
          description = "An arbitrary string delivered to the target address with each notification delivered over this channel. Optional.",
          type = "string",
        },
        type = {
          description = "The type of delivery mechanism used for this channel. Valid values are \"web_hook\" (or \"webhook\"). Both values refer to a channel where Http requests are used to deliver messages.",
          type = "string",
        },
      },
      type = "object",
    },
    Comment = {
      description = "A comment on a file.",
      id = "Comment",
      properties = {
        anchor = {
          description = "A region of the document represented as a JSON string. For details on defining anchor properties, refer to  Add comments and replies.",
          type = "string",
        },
        author = {
          ["$ref"] = "User",
          description = "The author of the comment. The author's email address and permission ID will not be populated.",
        },
        content = {
          annotations = {
            required = {
              "drive.comments.create",
              "drive.comments.update",
            },
          },
          description = "The plain text content of the comment. This field is used for setting the content, while htmlContent should be displayed.",
          type = "string",
        },
        createdTime = {
          description = "The time at which the comment was created (RFC 3339 date-time).",
          format = "date-time",
          type = "string",
        },
        deleted = {
          description = "Whether the comment has been deleted. A deleted comment has no content.",
          type = "boolean",
        },
        htmlContent = {
          description = "The content of the comment with HTML formatting.",
          type = "string",
        },
        id = {
          description = "The ID of the comment.",
          type = "string",
        },
        kind = {
          default = "drive#comment",
          description = "Identifies what kind of resource this is. Value: the fixed string \"drive#comment\".",
          type = "string",
        },
        modifiedTime = {
          description = "The last time the comment or any of its replies was modified (RFC 3339 date-time).",
          format = "date-time",
          type = "string",
        },
        quotedFileContent = {
          description = "The file content to which the comment refers, typically within the anchor region. For a text file, for example, this would be the text at the location of the comment.",
          properties = {
            mimeType = {
              description = "The MIME type of the quoted content.",
              type = "string",
            },
            value = {
              description = "The quoted content itself. This is interpreted as plain text if set through the API.",
              type = "string",
            },
          },
          type = "object",
        },
        replies = {
          description = "The full list of replies to the comment in chronological order.",
          items = {
            ["$ref"] = "Reply",
          },
          type = "array",
        },
        resolved = {
          description = "Whether the comment has been resolved by one of its replies.",
          type = "boolean",
        },
      },
      type = "object",
    },
    CommentList = {
      description = "A list of comments on a file.",
      id = "CommentList",
      properties = {
        comments = {
          description = "The list of comments. If nextPageToken is populated, then this list may be incomplete and an additional page of results should be fetched.",
          items = {
            ["$ref"] = "Comment",
          },
          type = "array",
        },
        kind = {
          default = "drive#commentList",
          description = "Identifies what kind of resource this is. Value: the fixed string \"drive#commentList\".",
          type = "string",
        },
        nextPageToken = {
          description = "The page token for the next page of comments. This will be absent if the end of the comments list has been reached. If the token is rejected for any reason, it should be discarded, and pagination should be restarted from the first page of results.",
          type = "string",
        },
      },
      type = "object",
    },
    ContentRestriction = {
      description = "A restriction for accessing the content of the file.",
      id = "ContentRestriction",
      properties = {
        readOnly = {
          description = "Whether the content of the file is read-only. If a file is read-only, a new revision of the file may not be added, comments may not be added or modified, and the title of the file may not be modified.",
          type = "boolean",
        },
        reason = {
          description = "Reason for why the content of the file is restricted. This is only mutable on requests that also set readOnly=true.",
          type = "string",
        },
        restrictingUser = {
          ["$ref"] = "User",
          description = "The user who set the content restriction. Only populated if readOnly is true.",
        },
        restrictionTime = {
          description = "The time at which the content restriction was set (formatted RFC 3339 timestamp). Only populated if readOnly is true.",
          format = "date-time",
          type = "string",
        },
        type = {
          description = "The type of the content restriction. Currently the only possible value is globalContentRestriction.",
          type = "string",
        },
      },
      type = "object",
    },
    Drive = {
      description = "Representation of a shared drive.",
      id = "Drive",
      properties = {
        backgroundImageFile = {
          description = "An image file and cropping parameters from which a background image for this shared drive is set. This is a write only field; it can only be set on drive.drives.update requests that don't set themeId. When specified, all fields of the backgroundImageFile must be set.",
          properties = {
            id = {
              description = "The ID of an image file in Google Drive to use for the background image.",
              type = "string",
            },
            width = {
              description = "The width of the cropped image in the closed range of 0 to 1. This value represents the width of the cropped image divided by the width of the entire image. The height is computed by applying a width to height aspect ratio of 80 to 9. The resulting image must be at least 1280 pixels wide and 144 pixels high.",
              format = "float",
              type = "number",
            },
            xCoordinate = {
              description = "The X coordinate of the upper left corner of the cropping area in the background image. This is a value in the closed range of 0 to 1. This value represents the horizontal distance from the left side of the entire image to the left side of the cropping area divided by the width of the entire image.",
              format = "float",
              type = "number",
            },
            yCoordinate = {
              description = "The Y coordinate of the upper left corner of the cropping area in the background image. This is a value in the closed range of 0 to 1. This value represents the vertical distance from the top side of the entire image to the top side of the cropping area divided by the height of the entire image.",
              format = "float",
              type = "number",
            },
          },
          type = "object",
        },
        backgroundImageLink = {
          description = "A short-lived link to this shared drive's background image.",
          type = "string",
        },
        capabilities = {
          description = "Capabilities the current user has on this shared drive.",
          properties = {
            canAddChildren = {
              description = "Whether the current user can add children to folders in this shared drive.",
              type = "boolean",
            },
            canChangeCopyRequiresWriterPermissionRestriction = {
              description = "Whether the current user can change the copyRequiresWriterPermission restriction of this shared drive.",
              type = "boolean",
            },
            canChangeDomainUsersOnlyRestriction = {
              description = "Whether the current user can change the domainUsersOnly restriction of this shared drive.",
              type = "boolean",
            },
            canChangeDriveBackground = {
              description = "Whether the current user can change the background of this shared drive.",
              type = "boolean",
            },
            canChangeDriveMembersOnlyRestriction = {
              description = "Whether the current user can change the driveMembersOnly restriction of this shared drive.",
              type = "boolean",
            },
            canComment = {
              description = "Whether the current user can comment on files in this shared drive.",
              type = "boolean",
            },
            canCopy = {
              description = "Whether the current user can copy files in this shared drive.",
              type = "boolean",
            },
            canDeleteChildren = {
              description = "Whether the current user can delete children from folders in this shared drive.",
              type = "boolean",
            },
            canDeleteDrive = {
              description = "Whether the current user can delete this shared drive. Attempting to delete the shared drive may still fail if there are untrashed items inside the shared drive.",
              type = "boolean",
            },
            canDownload = {
              description = "Whether the current user can download files in this shared drive.",
              type = "boolean",
            },
            canEdit = {
              description = "Whether the current user can edit files in this shared drive",
              type = "boolean",
            },
            canListChildren = {
              description = "Whether the current user can list the children of folders in this shared drive.",
              type = "boolean",
            },
            canManageMembers = {
              description = "Whether the current user can add members to this shared drive or remove them or change their role.",
              type = "boolean",
            },
            canReadRevisions = {
              description = "Whether the current user can read the revisions resource of files in this shared drive.",
              type = "boolean",
            },
            canRename = {
              description = "Whether the current user can rename files or folders in this shared drive.",
              type = "boolean",
            },
            canRenameDrive = {
              description = "Whether the current user can rename this shared drive.",
              type = "boolean",
            },
            canResetDriveRestrictions = {
              description = "Whether the current user can reset the shared drive restrictions to defaults.",
              type = "boolean",
            },
            canShare = {
              description = "Whether the current user can share files or folders in this shared drive.",
              type = "boolean",
            },
            canTrashChildren = {
              description = "Whether the current user can trash children from folders in this shared drive.",
              type = "boolean",
            },
          },
          type = "object",
        },
        colorRgb = {
          description = "The color of this shared drive as an RGB hex string. It can only be set on a drive.drives.update request that does not set themeId.",
          type = "string",
        },
        createdTime = {
          description = "The time at which the shared drive was created (RFC 3339 date-time).",
          format = "date-time",
          type = "string",
        },
        hidden = {
          description = "Whether the shared drive is hidden from default view.",
          type = "boolean",
        },
        id = {
          description = "The ID of this shared drive which is also the ID of the top level folder of this shared drive.",
          type = "string",
        },
        kind = {
          default = "drive#drive",
          description = "Identifies what kind of resource this is. Value: the fixed string \"drive#drive\".",
          type = "string",
        },
        name = {
          annotations = {
            required = {
              "drive.drives.create",
            },
          },
          description = "The name of this shared drive.",
          type = "string",
        },
        orgUnitId = {
          description = "The organizational unit of this shared drive. This field is only populated on drives.list responses when the useDomainAdminAccess parameter is set to true.",
          type = "string",
        },
        restrictions = {
          description = "A set of restrictions that apply to this shared drive or items inside this shared drive.",
          properties = {
            adminManagedRestrictions = {
              description = "Whether administrative privileges on this shared drive are required to modify restrictions.",
              type = "boolean",
            },
            copyRequiresWriterPermission = {
              description = "Whether the options to copy, print, or download files inside this shared drive, should be disabled for readers and commenters. When this restriction is set to true, it will override the similarly named field to true for any file inside this shared drive.",
              type = "boolean",
            },
            domainUsersOnly = {
              description = "Whether access to this shared drive and items inside this shared drive is restricted to users of the domain to which this shared drive belongs. This restriction may be overridden by other sharing policies controlled outside of this shared drive.",
              type = "boolean",
            },
            driveMembersOnly = {
              description = "Whether access to items inside this shared drive is restricted to its members.",
              type = "boolean",
            },
          },
          type = "object",
        },
        themeId = {
          description = "The ID of the theme from which the background image and color will be set. The set of possible driveThemes can be retrieved from a drive.about.get response. When not specified on a drive.drives.create request, a random theme is chosen from which the background image and color are set. This is a write-only field; it can only be set on requests that don't set colorRgb or backgroundImageFile.",
          type = "string",
        },
      },
      type = "object",
    },
    DriveList = {
      description = "A list of shared drives.",
      id = "DriveList",
      properties = {
        drives = {
          description = "The list of shared drives. If nextPageToken is populated, then this list may be incomplete and an additional page of results should be fetched.",
          items = {
            ["$ref"] = "Drive",
          },
          type = "array",
        },
        kind = {
          default = "drive#driveList",
          description = "Identifies what kind of resource this is. Value: the fixed string \"drive#driveList\".",
          type = "string",
        },
        nextPageToken = {
          description = "The page token for the next page of shared drives. This will be absent if the end of the list has been reached. If the token is rejected for any reason, it should be discarded, and pagination should be restarted from the first page of results.",
          type = "string",
        },
      },
      type = "object",
    },
    File = {
      description = "The metadata for a file.",
      id = "File",
      properties = {
        appProperties = {
          additionalProperties = {
            type = "string",
          },
          description = "A collection of arbitrary key-value pairs which are private to the requesting app.\
Entries with null values are cleared in update and copy requests. These properties can only be retrieved using an authenticated request. An authenticated request uses an access token obtained with a OAuth 2 client ID. You cannot use an API key to retrieve private properties.",
          type = "object",
        },
        capabilities = {
          description = "Capabilities the current user has on this file. Each capability corresponds to a fine-grained action that a user may take.",
          properties = {
            canAcceptOwnership = {
              description = "Whether the current user is the pending owner of the file. Not populated for shared drive files.",
              type = "boolean",
            },
            canAddChildren = {
              description = "Whether the current user can add children to this folder. This is always false when the item is not a folder.",
              type = "boolean",
            },
            canAddFolderFromAnotherDrive = {
              description = "Whether the current user can add a folder from another drive (different shared drive or My Drive) to this folder. This is false when the item is not a folder. Only populated for items in shared drives.",
              type = "boolean",
            },
            canAddMyDriveParent = {
              description = "Whether the current user can add a parent for the item without removing an existing parent in the same request. Not populated for shared drive files.",
              type = "boolean",
            },
            canChangeCopyRequiresWriterPermission = {
              description = "Whether the current user can change the copyRequiresWriterPermission restriction of this file.",
              type = "boolean",
            },
            canChangeSecurityUpdateEnabled = {
              description = "Whether the current user can change the securityUpdateEnabled field on link share metadata.",
              type = "boolean",
            },
            canChangeViewersCanCopyContent = {
              description = "Deprecated",
              type = "boolean",
            },
            canComment = {
              description = "Whether the current user can comment on this file.",
              type = "boolean",
            },
            canCopy = {
              description = "Whether the current user can copy this file. For an item in a shared drive, whether the current user can copy non-folder descendants of this item, or this item itself if it is not a folder.",
              type = "boolean",
            },
            canDelete = {
              description = "Whether the current user can delete this file.",
              type = "boolean",
            },
            canDeleteChildren = {
              description = "Whether the current user can delete children of this folder. This is false when the item is not a folder. Only populated for items in shared drives.",
              type = "boolean",
            },
            canDownload = {
              description = "Whether the current user can download this file.",
              type = "boolean",
            },
            canEdit = {
              description = "Whether the current user can edit this file. Other factors may limit the type of changes a user can make to a file. For example, see canChangeCopyRequiresWriterPermission or canModifyContent.",
              type = "boolean",
            },
            canListChildren = {
              description = "Whether the current user can list the children of this folder. This is always false when the item is not a folder.",
              type = "boolean",
            },
            canModifyContent = {
              description = "Whether the current user can modify the content of this file.",
              type = "boolean",
            },
            canModifyContentRestriction = {
              description = "Whether the current user can modify restrictions on content of this file.",
              type = "boolean",
            },
            canModifyLabels = {
              description = "Whether the current user can modify the labels on this file.",
              type = "boolean",
            },
            canMoveChildrenOutOfDrive = {
              description = "Whether the current user can move children of this folder outside of the shared drive. This is false when the item is not a folder. Only populated for items in shared drives.",
              type = "boolean",
            },
            canMoveChildrenOutOfTeamDrive = {
              description = "Deprecated - use canMoveChildrenOutOfDrive instead.",
              type = "boolean",
            },
            canMoveChildrenWithinDrive = {
              description = "Whether the current user can move children of this folder within this drive. This is false when the item is not a folder. Note that a request to move the child may still fail depending on the current user's access to the child and to the destination folder.",
              type = "boolean",
            },
            canMoveChildrenWithinTeamDrive = {
              description = "Deprecated - use canMoveChildrenWithinDrive instead.",
              type = "boolean",
            },
            canMoveItemIntoTeamDrive = {
              description = "Deprecated - use canMoveItemOutOfDrive instead.",
              type = "boolean",
            },
            canMoveItemOutOfDrive = {
              description = "Whether the current user can move this item outside of this drive by changing its parent. Note that a request to change the parent of the item may still fail depending on the new parent that is being added.",
              type = "boolean",
            },
            canMoveItemOutOfTeamDrive = {
              description = "Deprecated - use canMoveItemOutOfDrive instead.",
              type = "boolean",
            },
            canMoveItemWithinDrive = {
              description = "Whether the current user can move this item within this drive. Note that a request to change the parent of the item may still fail depending on the new parent that is being added and the parent that is being removed.",
              type = "boolean",
            },
            canMoveItemWithinTeamDrive = {
              description = "Deprecated - use canMoveItemWithinDrive instead.",
              type = "boolean",
            },
            canMoveTeamDriveItem = {
              description = "Deprecated - use canMoveItemWithinDrive or canMoveItemOutOfDrive instead.",
              type = "boolean",
            },
            canReadDrive = {
              description = "Whether the current user can read the shared drive to which this file belongs. Only populated for items in shared drives.",
              type = "boolean",
            },
            canReadLabels = {
              description = "Whether the current user can read the labels on this file.",
              type = "boolean",
            },
            canReadRevisions = {
              description = "Whether the current user can read the revisions resource of this file. For a shared drive item, whether revisions of non-folder descendants of this item, or this item itself if it isn't a folder, can be read.",
              type = "boolean",
            },
            canReadTeamDrive = {
              description = "Deprecated - use canReadDrive instead.",
              type = "boolean",
            },
            canRemoveChildren = {
              description = "Whether the current user can remove children from this folder. This is always false when the item is not a folder. For a folder in a shared drive, use canDeleteChildren or canTrashChildren instead.",
              type = "boolean",
            },
            canRemoveMyDriveParent = {
              description = "Whether the current user can remove a parent from the item without adding another parent in the same request. Not populated for shared drive files.",
              type = "boolean",
            },
            canRename = {
              description = "Whether the current user can rename this file.",
              type = "boolean",
            },
            canShare = {
              description = "Whether the current user can modify the sharing settings for this file.",
              type = "boolean",
            },
            canTrash = {
              description = "Whether the current user can move this file to trash.",
              type = "boolean",
            },
            canTrashChildren = {
              description = "Whether the current user can trash children of this folder. This is false when the item is not a folder. Only populated for items in shared drives.",
              type = "boolean",
            },
            canUntrash = {
              description = "Whether the current user can restore this file from trash.",
              type = "boolean",
            },
          },
          type = "object",
        },
        contentHints = {
          description = "Additional information about the content of the file. These fields are never populated in responses.",
          properties = {
            indexableText = {
              description = "Text to be indexed for the file to improve fullText queries. This is limited to 128 KB in length and may contain HTML elements. For more information, see Manage file metadata.",
              type = "string",
            },
            thumbnail = {
              description = "A thumbnail for the file. This will only be used if Google Drive cannot generate a standard thumbnail.",
              properties = {
                image = {
                  description = "The thumbnail data encoded with URL-safe Base64 (RFC 4648 section 5).",
                  format = "byte",
                  type = "string",
                },
                mimeType = {
                  description = "The MIME type of the thumbnail.",
                  type = "string",
                },
              },
              type = "object",
            },
          },
          type = "object",
        },
        contentRestrictions = {
          description = "Restrictions for accessing the content of the file. Only populated if such a restriction exists.",
          items = {
            ["$ref"] = "ContentRestriction",
          },
          type = "array",
        },
        copyRequiresWriterPermission = {
          description = "Whether the options to copy, print, or download this file, should be disabled for readers and commenters.",
          type = "boolean",
        },
        createdTime = {
          description = "The time at which the file was created (RFC 3339 date-time).",
          format = "date-time",
          type = "string",
        },
        description = {
          description = "A short description of the file.",
          type = "string",
        },
        driveId = {
          description = "ID of the shared drive the file resides in. Only populated for items in shared drives.",
          type = "string",
        },
        explicitlyTrashed = {
          description = "Whether the file has been explicitly trashed, as opposed to recursively trashed from a parent folder.",
          type = "boolean",
        },
        exportLinks = {
          additionalProperties = {
            description = "A mapping from export format to URL",
            type = "string",
          },
          description = "Links for exporting Docs Editors files to specific formats.",
          readOnly = true,
          type = "object",
        },
        fileExtension = {
          description = "The final component of fullFileExtension. This is only available for files with binary content in Google Drive.",
          type = "string",
        },
        folderColorRgb = {
          description = "The color for a folder or shortcut to a folder as an RGB hex string. The supported colors are published in the folderColorPalette field of the About resource.\
If an unsupported color is specified, the closest color in the palette will be used instead.",
          type = "string",
        },
        fullFileExtension = {
          description = "The full file extension extracted from the name field. May contain multiple concatenated extensions, such as \"tar.gz\". This is only available for files with binary content in Google Drive.\
This is automatically updated when the name field changes, however it isn't cleared if the new name does not contain a valid extension.",
          type = "string",
        },
        hasAugmentedPermissions = {
          description = "Whether there are permissions directly on this file. This field is only populated for items in shared drives.",
          type = "boolean",
        },
        hasThumbnail = {
          description = "Whether this file has a thumbnail. This does not indicate whether the requesting app has access to the thumbnail. To check access, look for the presence of the thumbnailLink field.",
          type = "boolean",
        },
        headRevisionId = {
          description = "The ID of the file's head revision. This is currently only available for files with binary content in Google Drive.",
          type = "string",
        },
        iconLink = {
          description = "A static, unauthenticated link to the file's icon.",
          type = "string",
        },
        id = {
          description = "The ID of the file.",
          type = "string",
        },
        imageMediaMetadata = {
          description = "Additional metadata about image media, if available.",
          properties = {
            aperture = {
              description = "The aperture used to create the photo (f-number).",
              format = "float",
              type = "number",
            },
            cameraMake = {
              description = "The make of the camera used to create the photo.",
              type = "string",
            },
            cameraModel = {
              description = "The model of the camera used to create the photo.",
              type = "string",
            },
            colorSpace = {
              description = "The color space of the photo.",
              type = "string",
            },
            exposureBias = {
              description = "The exposure bias of the photo (APEX value).",
              format = "float",
              type = "number",
            },
            exposureMode = {
              description = "The exposure mode used to create the photo.",
              type = "string",
            },
            exposureTime = {
              description = "The length of the exposure, in seconds.",
              format = "float",
              type = "number",
            },
            flashUsed = {
              description = "Whether a flash was used to create the photo.",
              type = "boolean",
            },
            focalLength = {
              description = "The focal length used to create the photo, in millimeters.",
              format = "float",
              type = "number",
            },
            height = {
              description = "The height of the image in pixels.",
              format = "int32",
              type = "integer",
            },
            isoSpeed = {
              description = "The ISO speed used to create the photo.",
              format = "int32",
              type = "integer",
            },
            lens = {
              description = "The lens used to create the photo.",
              type = "string",
            },
            location = {
              description = "Geographic location information stored in the image.",
              properties = {
                altitude = {
                  description = "The altitude stored in the image.",
                  format = "double",
                  type = "number",
                },
                latitude = {
                  description = "The latitude stored in the image.",
                  format = "double",
                  type = "number",
                },
                longitude = {
                  description = "The longitude stored in the image.",
                  format = "double",
                  type = "number",
                },
              },
              type = "object",
            },
            maxApertureValue = {
              description = "The smallest f-number of the lens at the focal length used to create the photo (APEX value).",
              format = "float",
              type = "number",
            },
            meteringMode = {
              description = "The metering mode used to create the photo.",
              type = "string",
            },
            rotation = {
              description = "The number of clockwise 90 degree rotations applied from the image's original orientation.",
              format = "int32",
              type = "integer",
            },
            sensor = {
              description = "The type of sensor used to create the photo.",
              type = "string",
            },
            subjectDistance = {
              description = "The distance to the subject of the photo, in meters.",
              format = "int32",
              type = "integer",
            },
            time = {
              description = "The date and time the photo was taken (EXIF DateTime).",
              type = "string",
            },
            whiteBalance = {
              description = "The white balance mode used to create the photo.",
              type = "string",
            },
            width = {
              description = "The width of the image in pixels.",
              format = "int32",
              type = "integer",
            },
          },
          type = "object",
        },
        isAppAuthorized = {
          description = "Whether the file was created or opened by the requesting app.",
          type = "boolean",
        },
        kind = {
          default = "drive#file",
          description = "Identifies what kind of resource this is. Value: the fixed string \"drive#file\".",
          type = "string",
        },
        labelInfo = {
          description = "An overview of the labels on the file.",
          properties = {
            labels = {
              description = "The set of labels on the file as requested by the label IDs in the includeLabels parameter. By default, no labels are returned.",
              items = {
                ["$ref"] = "Label",
              },
              type = "array",
            },
          },
          type = "object",
        },
        lastModifyingUser = {
          ["$ref"] = "User",
          description = "The last user to modify the file.",
        },
        linkShareMetadata = {
          description = "Contains details about the link URLs that clients are using to refer to this item.",
          properties = {
            securityUpdateEligible = {
              description = "Whether the file is eligible for security update.",
              type = "boolean",
            },
            securityUpdateEnabled = {
              description = "Whether the security update is enabled for this file.",
              type = "boolean",
            },
          },
          type = "object",
        },
        md5Checksum = {
          description = "The MD5 checksum for the content of the file. This is only applicable to files with binary content in Google Drive.",
          type = "string",
        },
        mimeType = {
          description = "The MIME type of the file.\
Google Drive will attempt to automatically detect an appropriate value from uploaded content if no value is provided. The value cannot be changed unless a new revision is uploaded.\
If a file is created with a Google Doc MIME type, the uploaded content will be imported if possible. The supported import formats are published in the About resource.",
          type = "string",
        },
        modifiedByMe = {
          description = "Whether the file has been modified by this user.",
          type = "boolean",
        },
        modifiedByMeTime = {
          description = "The last time the file was modified by the user (RFC 3339 date-time).",
          format = "date-time",
          type = "string",
        },
        modifiedTime = {
          description = "The last time the file was modified by anyone (RFC 3339 date-time).\
Note that setting modifiedTime will also update modifiedByMeTime for the user.",
          format = "date-time",
          type = "string",
        },
        name = {
          description = "The name of the file. This is not necessarily unique within a folder. Note that for immutable items such as the top level folders of shared drives, My Drive root folder, and Application Data folder the name is constant.",
          type = "string",
        },
        originalFilename = {
          description = "The original filename of the uploaded content if available, or else the original value of the name field. This is only available for files with binary content in Google Drive.",
          type = "string",
        },
        ownedByMe = {
          description = "Whether the user owns the file. Not populated for items in shared drives.",
          type = "boolean",
        },
        owners = {
          description = "The owner of this file. Only certain legacy files may have more than one owner. This field isn't populated for items in shared drives.",
          items = {
            ["$ref"] = "User",
          },
          type = "array",
        },
        parents = {
          description = "The IDs of the parent folders which contain the file.\
If not specified as part of a create request, the file will be placed directly in the user's My Drive folder. If not specified as part of a copy request, the file will inherit any discoverable parents of the source file. Update requests must use the addParents and removeParents parameters to modify the parents list.",
          items = {
            type = "string",
          },
          type = "array",
        },
        permissionIds = {
          description = "List of permission IDs for users with access to this file.",
          items = {
            type = "string",
          },
          type = "array",
        },
        permissions = {
          description = "The full list of permissions for the file. This is only available if the requesting user can share the file. Not populated for items in shared drives.",
          items = {
            ["$ref"] = "Permission",
          },
          type = "array",
        },
        properties = {
          additionalProperties = {
            type = "string",
          },
          description = "A collection of arbitrary key-value pairs which are visible to all apps.\
Entries with null values are cleared in update and copy requests.",
          type = "object",
        },
        quotaBytesUsed = {
          description = "The number of storage quota bytes used by the file. This includes the head revision as well as previous revisions with keepForever enabled.",
          format = "int64",
          type = "string",
        },
        resourceKey = {
          description = "A key needed to access the item via a shared link.",
          type = "string",
        },
        sha1Checksum = {
          description = "The SHA1 checksum associated with this file, if available. This field is only populated for files with content stored in Google Drive; it isn't populated for Docs Editors or shortcut files.",
          type = "string",
        },
        sha256Checksum = {
          description = "The SHA256 checksum associated with this file, if available. This field is only populated for files with content stored in Google Drive; it isn't populated for Docs Editors or shortcut files.",
          type = "string",
        },
        shared = {
          description = "Whether the file has been shared. Not populated for items in shared drives.",
          type = "boolean",
        },
        sharedWithMeTime = {
          description = "The time at which the file was shared with the user, if applicable (RFC 3339 date-time).",
          format = "date-time",
          type = "string",
        },
        sharingUser = {
          ["$ref"] = "User",
          description = "The user who shared the file with the requesting user, if applicable.",
        },
        shortcutDetails = {
          description = "Shortcut file details. Only populated for shortcut files, which have the mimeType field set to application/vnd.google-apps.shortcut.",
          properties = {
            targetId = {
              description = "The ID of the file that this shortcut points to.",
              type = "string",
            },
            targetMimeType = {
              description = "The MIME type of the file that this shortcut points to. The value of this field is a snapshot of the target's MIME type, captured when the shortcut is created.",
              type = "string",
            },
            targetResourceKey = {
              description = "The ResourceKey for the target file.",
              type = "string",
            },
          },
          type = "object",
        },
        size = {
          description = "The size of the file's content in bytes. This is applicable to binary files in Google Drive and Google Docs files.",
          format = "int64",
          type = "string",
        },
        spaces = {
          description = "The list of spaces which contain the file. The currently supported values are 'drive', 'appDataFolder' and 'photos'.",
          items = {
            type = "string",
          },
          type = "array",
        },
        starred = {
          description = "Whether the user has starred the file.",
          type = "boolean",
        },
        teamDriveId = {
          description = "Deprecated - use driveId instead.",
          type = "string",
        },
        thumbnailLink = {
          description = "A short-lived link to the file's thumbnail, if available. Typically lasts on the order of hours. Only populated when the requesting app can access the file's content. If the file isn't shared publicly, the URL returned in Files.thumbnailLink must be fetched using a credentialed request.",
          type = "string",
        },
        thumbnailVersion = {
          description = "The thumbnail version for use in thumbnail cache invalidation.",
          format = "int64",
          type = "string",
        },
        trashed = {
          description = "Whether the file has been trashed, either explicitly or from a trashed parent folder. Only the owner may trash a file. The trashed item is excluded from all files.list responses returned for any user who does not own the file. However, all users with access to the file can see the trashed item metadata in an API response. All users with access can copy, download, export, and share the file.",
          type = "boolean",
        },
        trashedTime = {
          description = "The time that the item was trashed (RFC 3339 date-time). Only populated for items in shared drives.",
          format = "date-time",
          type = "string",
        },
        trashingUser = {
          ["$ref"] = "User",
          description = "If the file has been explicitly trashed, the user who trashed it. Only populated for items in shared drives.",
        },
        version = {
          description = "A monotonically increasing version number for the file. This reflects every change made to the file on the server, even those not visible to the user.",
          format = "int64",
          type = "string",
        },
        videoMediaMetadata = {
          description = "Additional metadata about video media. This may not be available immediately upon upload.",
          properties = {
            durationMillis = {
              description = "The duration of the video in milliseconds.",
              format = "int64",
              type = "string",
            },
            height = {
              description = "The height of the video in pixels.",
              format = "int32",
              type = "integer",
            },
            width = {
              description = "The width of the video in pixels.",
              format = "int32",
              type = "integer",
            },
          },
          type = "object",
        },
        viewedByMe = {
          description = "Whether the file has been viewed by this user.",
          type = "boolean",
        },
        viewedByMeTime = {
          description = "The last time the file was viewed by the user (RFC 3339 date-time).",
          format = "date-time",
          type = "string",
        },
        viewersCanCopyContent = {
          description = "Deprecated - use copyRequiresWriterPermission instead.",
          type = "boolean",
        },
        webContentLink = {
          description = "A link for downloading the content of the file in a browser. This is only available for files with binary content in Google Drive.",
          type = "string",
        },
        webViewLink = {
          description = "A link for opening the file in a relevant Google editor or viewer in a browser.",
          type = "string",
        },
        writersCanShare = {
          description = "Whether users with only writer permission can modify the file's permissions. Not populated for items in shared drives.",
          type = "boolean",
        },
      },
      type = "object",
    },
    FileList = {
      description = "A list of files.",
      id = "FileList",
      properties = {
        files = {
          description = "The list of files. If nextPageToken is populated, then this list may be incomplete and an additional page of results should be fetched.",
          items = {
            ["$ref"] = "File",
          },
          type = "array",
        },
        incompleteSearch = {
          description = "Whether the search process was incomplete. If true, then some search results may be missing, since all documents were not searched. This may occur when searching multiple drives with the \"allDrives\" corpora, but all corpora could not be searched. When this happens, it is suggested that clients narrow their query by choosing a different corpus such as \"user\" or \"drive\".",
          type = "boolean",
        },
        kind = {
          default = "drive#fileList",
          description = "Identifies what kind of resource this is. Value: the fixed string \"drive#fileList\".",
          type = "string",
        },
        nextPageToken = {
          description = "The page token for the next page of files. This will be absent if the end of the files list has been reached. If the token is rejected for any reason, it should be discarded, and pagination should be restarted from the first page of results.",
          type = "string",
        },
      },
      type = "object",
    },
    GeneratedIds = {
      description = "A list of generated file IDs which can be provided in create requests.",
      id = "GeneratedIds",
      properties = {
        ids = {
          description = "The IDs generated for the requesting user in the specified space.",
          items = {
            type = "string",
          },
          type = "array",
        },
        kind = {
          default = "drive#generatedIds",
          description = "Identifies what kind of resource this is. Value: the fixed string \"drive#generatedIds\".",
          type = "string",
        },
        space = {
          description = "The type of file that can be created with these IDs.",
          type = "string",
        },
      },
      type = "object",
    },
    Label = {
      description = "Representation of a label and its fields.",
      id = "Label",
      properties = {
        fields = {
          additionalProperties = {
            ["$ref"] = "LabelField",
          },
          description = "A map of the label's fields keyed by the field ID.",
          type = "object",
        },
        id = {
          description = "The ID of the label.",
          type = "string",
        },
        kind = {
          default = "drive#label",
          description = "This is always drive#label",
          type = "string",
        },
        revisionId = {
          description = "The revision ID of the label.",
          type = "string",
        },
      },
      type = "object",
    },
    LabelField = {
      description = "Representation of a label field.",
      id = "LabelField",
      properties = {
        dateString = {
          description = "Only present if valueType is dateString. RFC 3339 formatted date: YYYY-MM-DD.",
          items = {
            format = "date",
            type = "string",
          },
          type = "array",
        },
        id = {
          description = "The identifier of this field.",
          type = "string",
        },
        integer = {
          description = "Only present if valueType is integer.",
          items = {
            format = "int64",
            type = "string",
          },
          type = "array",
        },
        kind = {
          default = "drive#labelField",
          description = "This is always drive#labelField.",
          type = "string",
        },
        selection = {
          description = "Only present if valueType is selection.",
          items = {
            type = "string",
          },
          type = "array",
        },
        text = {
          description = "Only present if valueType is text.",
          items = {
            type = "string",
          },
          type = "array",
        },
        user = {
          description = "Only present if valueType is user.",
          items = {
            ["$ref"] = "User",
          },
          type = "array",
        },
        valueType = {
          description = "The field type. While new values may be supported in the future, the following are currently allowed:  \
- dateString \
- integer \
- selection \
- text \
- user",
          type = "string",
        },
      },
      type = "object",
    },
    LabelFieldModification = {
      description = "A modification to a label's field.",
      id = "LabelFieldModification",
      properties = {
        fieldId = {
          description = "The ID of the Field to be modified.",
          type = "string",
        },
        kind = {
          default = "drive#labelFieldModification",
          description = "This is always drive#labelFieldModification.",
          type = "string",
        },
        setDateValues = {
          description = "Replaces a dateString field with these new values. The values must be strings in the RFC 3339 full-date format: YYYY-MM-DD.",
          items = {
            format = "date",
            type = "string",
          },
          type = "array",
        },
        setIntegerValues = {
          description = "Replaces an integer field with these new values.",
          items = {
            format = "int64",
            type = "string",
          },
          type = "array",
        },
        setSelectionValues = {
          description = "Replaces a selection field with these new values.",
          items = {
            type = "string",
          },
          type = "array",
        },
        setTextValues = {
          description = "Replaces a text field with these new values.",
          items = {
            type = "string",
          },
          type = "array",
        },
        setUserValues = {
          description = "Replaces a user field with these new values. The values must be valid email addresses.",
          items = {
            type = "string",
          },
          type = "array",
        },
        unsetValues = {
          description = "Unsets the values for this field.",
          type = "boolean",
        },
      },
      type = "object",
    },
    LabelList = {
      description = "A list of labels.",
      id = "LabelList",
      properties = {
        kind = {
          default = "drive#labelList",
          description = "This is always drive#labelList",
          type = "string",
        },
        labels = {
          description = "The list of labels.",
          items = {
            ["$ref"] = "Label",
          },
          type = "array",
        },
        nextPageToken = {
          description = "The page token for the next page of labels. This field will be absent if the end of the list has been reached. If the token is rejected for any reason, it should be discarded, and pagination should be restarted from the first page of results.",
          type = "string",
        },
      },
      type = "object",
    },
    LabelModification = {
      description = "A modification to a label on a file. A LabelModification can be used to apply a label to a file, update an existing label on a file, or remove a label from a file.",
      id = "LabelModification",
      properties = {
        fieldModifications = {
          description = "The list of modifications to this label's fields.",
          items = {
            ["$ref"] = "LabelFieldModification",
          },
          type = "array",
        },
        kind = {
          default = "drive#labelModification",
          description = "This is always drive#labelModification.",
          type = "string",
        },
        labelId = {
          annotations = {
            required = {
              "drive.files.modifyLabels",
            },
          },
          description = "The ID of the label to modify.",
          type = "string",
        },
        removeLabel = {
          description = "If true, the label will be removed from the file.",
          type = "boolean",
        },
      },
      type = "object",
    },
    ModifyLabelsRequest = {
      description = "A request to modify the set of labels on a file. This request may contain many modifications that will either all succeed or all fail transactionally.",
      id = "ModifyLabelsRequest",
      properties = {
        kind = {
          default = "drive#modifyLabelsRequest",
          description = "This is always drive#modifyLabelsRequest",
          type = "string",
        },
        labelModifications = {
          description = "The list of modifications to apply to the labels on the file.",
          items = {
            ["$ref"] = "LabelModification",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ModifyLabelsResponse = {
      description = "Response to a ModifyLabels request. This contains only those labels which were added or updated by the request.",
      id = "ModifyLabelsResponse",
      properties = {
        kind = {
          default = "drive#modifyLabelsResponse",
          description = "This is always drive#modifyLabelsResponse",
          type = "string",
        },
        modifiedLabels = {
          description = "The list of labels which were added or updated by the request.",
          items = {
            ["$ref"] = "Label",
          },
          type = "array",
        },
      },
      type = "object",
    },
    Permission = {
      description = "A permission for a file. A permission grants a user, group, domain or the world access to a file or a folder hierarchy.",
      id = "Permission",
      properties = {
        allowFileDiscovery = {
          description = "Whether the permission allows the file to be discovered through search. This is only applicable for permissions of type domain or anyone.",
          type = "boolean",
        },
        deleted = {
          description = "Whether the account associated with this permission has been deleted. This field only pertains to user and group permissions.",
          type = "boolean",
        },
        displayName = {
          description = "The \"pretty\" name of the value of the permission. The following is a list of examples for each type of permission:  \
- user - User's full name, as defined for their Google account, such as \"Joe Smith.\" \
- group - Name of the Google Group, such as \"The Company Administrators.\" \
- domain - String domain name, such as \"thecompany.com.\" \
- anyone - No displayName is present.",
          type = "string",
        },
        domain = {
          description = "The domain to which this permission refers.",
          type = "string",
        },
        emailAddress = {
          description = "The email address of the user or group to which this permission refers.",
          type = "string",
        },
        expirationTime = {
          description = "The time at which this permission will expire (RFC 3339 date-time). Expiration times have the following restrictions:  \
- They cannot be set on shared drive items \
- They can only be set on user and group permissions \
- The time must be in the future \
- The time cannot be more than a year in the future",
          format = "date-time",
          type = "string",
        },
        id = {
          description = "The ID of this permission. This is a unique identifier for the grantee, and is published in User resources as permissionId. IDs should be treated as opaque values.",
          type = "string",
        },
        kind = {
          default = "drive#permission",
          description = "Identifies what kind of resource this is. Value: the fixed string \"drive#permission\".",
          type = "string",
        },
        pendingOwner = {
          description = "Whether the account associated with this permission is a pending owner. Only populated for user type permissions for files that are not in a shared drive.",
          type = "boolean",
        },
        permissionDetails = {
          description = "Details of whether the permissions on this shared drive item are inherited or directly on this item. This is an output-only field which is present only for shared drive items.",
          items = {
            properties = {
              inherited = {
                description = "Whether this permission is inherited. This field is always populated. This is an output-only field.",
                type = "boolean",
              },
              inheritedFrom = {
                description = "The ID of the item from which this permission is inherited. This is an output-only field.",
                type = "string",
              },
              permissionType = {
                description = "The permission type for this user. While new values may be added in future, the following are currently possible:  \
- file \
- member",
                type = "string",
              },
              role = {
                description = "The primary role for this user. While new values may be added in the future, the following are currently possible:  \
- organizer \
- fileOrganizer \
- writer \
- commenter \
- reader",
                type = "string",
              },
            },
            type = "object",
          },
          readOnly = true,
          type = "array",
        },
        photoLink = {
          description = "A link to the user's profile photo, if available.",
          type = "string",
        },
        role = {
          annotations = {
            required = {
              "drive.permissions.create",
            },
          },
          description = "The role granted by this permission. While new values may be supported in the future, the following are currently allowed:  \
- owner \
- organizer \
- fileOrganizer \
- writer \
- commenter \
- reader",
          type = "string",
        },
        teamDrivePermissionDetails = {
          description = "Deprecated - use permissionDetails instead.",
          items = {
            properties = {
              inherited = {
                description = "Deprecated - use permissionDetails/inherited instead.",
                type = "boolean",
              },
              inheritedFrom = {
                description = "Deprecated - use permissionDetails/inheritedFrom instead.",
                type = "string",
              },
              role = {
                description = "Deprecated - use permissionDetails/role instead.",
                type = "string",
              },
              teamDrivePermissionType = {
                description = "Deprecated - use permissionDetails/permissionType instead.",
                type = "string",
              },
            },
            type = "object",
          },
          readOnly = true,
          type = "array",
        },
        type = {
          annotations = {
            required = {
              "drive.permissions.create",
            },
          },
          description = "The type of the grantee. Valid values are:  \
- user \
- group \
- domain \
- anyone  When creating a permission, if type is user or group, you must provide an emailAddress for the user or group. When type is domain, you must provide a domain. There isn't extra information required for a anyone type.",
          type = "string",
        },
        view = {
          description = "Indicates the view for this permission. Only populated for permissions that belong to a view. published is the only supported value.",
          type = "string",
        },
      },
      type = "object",
    },
    PermissionList = {
      description = "A list of permissions for a file.",
      id = "PermissionList",
      properties = {
        kind = {
          default = "drive#permissionList",
          description = "Identifies what kind of resource this is. Value: the fixed string \"drive#permissionList\".",
          type = "string",
        },
        nextPageToken = {
          description = "The page token for the next page of permissions. This field will be absent if the end of the permissions list has been reached. If the token is rejected for any reason, it should be discarded, and pagination should be restarted from the first page of results.",
          type = "string",
        },
        permissions = {
          description = "The list of permissions. If nextPageToken is populated, then this list may be incomplete and an additional page of results should be fetched.",
          items = {
            ["$ref"] = "Permission",
          },
          type = "array",
        },
      },
      type = "object",
    },
    Reply = {
      description = "A reply to a comment on a file.",
      id = "Reply",
      properties = {
        action = {
          description = "The action the reply performed to the parent comment. Valid values are:  \
- resolve \
- reopen",
          type = "string",
        },
        author = {
          ["$ref"] = "User",
          description = "The author of the reply. The author's email address and permission ID will not be populated.",
        },
        content = {
          annotations = {
            required = {
              "drive.replies.update",
            },
          },
          description = "The plain text content of the reply. This field is used for setting the content, while htmlContent should be displayed. This is required on creates if no action is specified.",
          type = "string",
        },
        createdTime = {
          description = "The time at which the reply was created (RFC 3339 date-time).",
          format = "date-time",
          type = "string",
        },
        deleted = {
          description = "Whether the reply has been deleted. A deleted reply has no content.",
          type = "boolean",
        },
        htmlContent = {
          description = "The content of the reply with HTML formatting.",
          type = "string",
        },
        id = {
          description = "The ID of the reply.",
          type = "string",
        },
        kind = {
          default = "drive#reply",
          description = "Identifies what kind of resource this is. Value: the fixed string \"drive#reply\".",
          type = "string",
        },
        modifiedTime = {
          description = "The last time the reply was modified (RFC 3339 date-time).",
          format = "date-time",
          type = "string",
        },
      },
      type = "object",
    },
    ReplyList = {
      description = "A list of replies to a comment on a file.",
      id = "ReplyList",
      properties = {
        kind = {
          default = "drive#replyList",
          description = "Identifies what kind of resource this is. Value: the fixed string \"drive#replyList\".",
          type = "string",
        },
        nextPageToken = {
          description = "The page token for the next page of replies. This will be absent if the end of the replies list has been reached. If the token is rejected for any reason, it should be discarded, and pagination should be restarted from the first page of results.",
          type = "string",
        },
        replies = {
          description = "The list of replies. If nextPageToken is populated, then this list may be incomplete and an additional page of results should be fetched.",
          items = {
            ["$ref"] = "Reply",
          },
          type = "array",
        },
      },
      type = "object",
    },
    Revision = {
      description = "The metadata for a revision to a file.",
      id = "Revision",
      properties = {
        exportLinks = {
          additionalProperties = {
            description = "A mapping from export format to URL",
            type = "string",
          },
          description = "Links for exporting Docs Editors files to specific formats.",
          type = "object",
        },
        id = {
          description = "The ID of the revision.",
          type = "string",
        },
        keepForever = {
          description = "Whether to keep this revision forever, even if it is no longer the head revision. If not set, the revision will be automatically purged 30 days after newer content is uploaded. This can be set on a maximum of 200 revisions for a file.\
This field is only applicable to files with binary content in Drive.",
          type = "boolean",
        },
        kind = {
          default = "drive#revision",
          description = "Identifies what kind of resource this is. Value: the fixed string \"drive#revision\".",
          type = "string",
        },
        lastModifyingUser = {
          ["$ref"] = "User",
          description = "The last user to modify this revision.",
        },
        md5Checksum = {
          description = "The MD5 checksum of the revision's content. This is only applicable to files with binary content in Drive.",
          type = "string",
        },
        mimeType = {
          description = "The MIME type of the revision.",
          type = "string",
        },
        modifiedTime = {
          description = "The last time the revision was modified (RFC 3339 date-time).",
          format = "date-time",
          type = "string",
        },
        originalFilename = {
          description = "The original filename used to create this revision. This is only applicable to files with binary content in Drive.",
          type = "string",
        },
        publishAuto = {
          description = "Whether subsequent revisions will be automatically republished. This is only applicable to Docs Editors files.",
          type = "boolean",
        },
        published = {
          description = "Whether this revision is published. This is only applicable to Docs Editors files.",
          type = "boolean",
        },
        publishedLink = {
          description = "A link to the published revision. This is only populated for Google Sites files.",
          type = "string",
        },
        publishedOutsideDomain = {
          description = "Whether this revision is published outside the domain. This is only applicable to Docs Editors files.",
          type = "boolean",
        },
        size = {
          description = "The size of the revision's content in bytes. This is only applicable to files with binary content in Drive.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    RevisionList = {
      description = "A list of revisions of a file.",
      id = "RevisionList",
      properties = {
        kind = {
          default = "drive#revisionList",
          description = "Identifies what kind of resource this is. Value: the fixed string \"drive#revisionList\".",
          type = "string",
        },
        nextPageToken = {
          description = "The page token for the next page of revisions. This will be absent if the end of the revisions list has been reached. If the token is rejected for any reason, it should be discarded, and pagination should be restarted from the first page of results.",
          type = "string",
        },
        revisions = {
          description = "The list of revisions. If nextPageToken is populated, then this list may be incomplete and an additional page of results should be fetched.",
          items = {
            ["$ref"] = "Revision",
          },
          type = "array",
        },
      },
      type = "object",
    },
    StartPageToken = {
      id = "StartPageToken",
      properties = {
        kind = {
          default = "drive#startPageToken",
          description = "Identifies what kind of resource this is. Value: the fixed string \"drive#startPageToken\".",
          type = "string",
        },
        startPageToken = {
          description = "The starting page token for listing changes.",
          type = "string",
        },
      },
      type = "object",
    },
    TeamDrive = {
      description = "Deprecated: use the drive collection instead.",
      id = "TeamDrive",
      properties = {
        backgroundImageFile = {
          description = "An image file and cropping parameters from which a background image for this Team Drive is set. This is a write only field; it can only be set on drive.teamdrives.update requests that don't set themeId. When specified, all fields of the backgroundImageFile must be set.",
          properties = {
            id = {
              description = "The ID of an image file in Drive to use for the background image.",
              type = "string",
            },
            width = {
              description = "The width of the cropped image in the closed range of 0 to 1. This value represents the width of the cropped image divided by the width of the entire image. The height is computed by applying a width to height aspect ratio of 80 to 9. The resulting image must be at least 1280 pixels wide and 144 pixels high.",
              format = "float",
              type = "number",
            },
            xCoordinate = {
              description = "The X coordinate of the upper left corner of the cropping area in the background image. This is a value in the closed range of 0 to 1. This value represents the horizontal distance from the left side of the entire image to the left side of the cropping area divided by the width of the entire image.",
              format = "float",
              type = "number",
            },
            yCoordinate = {
              description = "The Y coordinate of the upper left corner of the cropping area in the background image. This is a value in the closed range of 0 to 1. This value represents the vertical distance from the top side of the entire image to the top side of the cropping area divided by the height of the entire image.",
              format = "float",
              type = "number",
            },
          },
          type = "object",
        },
        backgroundImageLink = {
          description = "A short-lived link to this Team Drive's background image.",
          type = "string",
        },
        capabilities = {
          description = "Capabilities the current user has on this Team Drive.",
          properties = {
            canAddChildren = {
              description = "Whether the current user can add children to folders in this Team Drive.",
              type = "boolean",
            },
            canChangeCopyRequiresWriterPermissionRestriction = {
              description = "Whether the current user can change the copyRequiresWriterPermission restriction of this Team Drive.",
              type = "boolean",
            },
            canChangeDomainUsersOnlyRestriction = {
              description = "Whether the current user can change the domainUsersOnly restriction of this Team Drive.",
              type = "boolean",
            },
            canChangeTeamDriveBackground = {
              description = "Whether the current user can change the background of this Team Drive.",
              type = "boolean",
            },
            canChangeTeamMembersOnlyRestriction = {
              description = "Whether the current user can change the teamMembersOnly restriction of this Team Drive.",
              type = "boolean",
            },
            canComment = {
              description = "Whether the current user can comment on files in this Team Drive.",
              type = "boolean",
            },
            canCopy = {
              description = "Whether the current user can copy files in this Team Drive.",
              type = "boolean",
            },
            canDeleteChildren = {
              description = "Whether the current user can delete children from folders in this Team Drive.",
              type = "boolean",
            },
            canDeleteTeamDrive = {
              description = "Whether the current user can delete this Team Drive. Attempting to delete the Team Drive may still fail if there are untrashed items inside the Team Drive.",
              type = "boolean",
            },
            canDownload = {
              description = "Whether the current user can download files in this Team Drive.",
              type = "boolean",
            },
            canEdit = {
              description = "Whether the current user can edit files in this Team Drive",
              type = "boolean",
            },
            canListChildren = {
              description = "Whether the current user can list the children of folders in this Team Drive.",
              type = "boolean",
            },
            canManageMembers = {
              description = "Whether the current user can add members to this Team Drive or remove them or change their role.",
              type = "boolean",
            },
            canReadRevisions = {
              description = "Whether the current user can read the revisions resource of files in this Team Drive.",
              type = "boolean",
            },
            canRemoveChildren = {
              description = "Deprecated - use canDeleteChildren or canTrashChildren instead.",
              type = "boolean",
            },
            canRename = {
              description = "Whether the current user can rename files or folders in this Team Drive.",
              type = "boolean",
            },
            canRenameTeamDrive = {
              description = "Whether the current user can rename this Team Drive.",
              type = "boolean",
            },
            canResetTeamDriveRestrictions = {
              description = "Whether the current user can reset the Team Drive restrictions to defaults.",
              type = "boolean",
            },
            canShare = {
              description = "Whether the current user can share files or folders in this Team Drive.",
              type = "boolean",
            },
            canTrashChildren = {
              description = "Whether the current user can trash children from folders in this Team Drive.",
              type = "boolean",
            },
          },
          type = "object",
        },
        colorRgb = {
          description = "The color of this Team Drive as an RGB hex string. It can only be set on a drive.teamdrives.update request that does not set themeId.",
          type = "string",
        },
        createdTime = {
          description = "The time at which the Team Drive was created (RFC 3339 date-time).",
          format = "date-time",
          type = "string",
        },
        id = {
          description = "The ID of this Team Drive which is also the ID of the top level folder of this Team Drive.",
          type = "string",
        },
        kind = {
          default = "drive#teamDrive",
          description = "Identifies what kind of resource this is. Value: the fixed string \"drive#teamDrive\".",
          type = "string",
        },
        name = {
          annotations = {
            required = {
              "drive.teamdrives.create",
            },
          },
          description = "The name of this Team Drive.",
          type = "string",
        },
        orgUnitId = {
          description = "The organizational unit of this shared drive. This field is only populated on drives.list responses when the useDomainAdminAccess parameter is set to true.",
          type = "string",
        },
        restrictions = {
          description = "A set of restrictions that apply to this Team Drive or items inside this Team Drive.",
          properties = {
            adminManagedRestrictions = {
              description = "Whether administrative privileges on this Team Drive are required to modify restrictions.",
              type = "boolean",
            },
            copyRequiresWriterPermission = {
              description = "Whether the options to copy, print, or download files inside this Team Drive, should be disabled for readers and commenters. When this restriction is set to true, it will override the similarly named field to true for any file inside this Team Drive.",
              type = "boolean",
            },
            domainUsersOnly = {
              description = "Whether access to this Team Drive and items inside this Team Drive is restricted to users of the domain to which this Team Drive belongs. This restriction may be overridden by other sharing policies controlled outside of this Team Drive.",
              type = "boolean",
            },
            teamMembersOnly = {
              description = "Whether access to items inside this Team Drive is restricted to members of this Team Drive.",
              type = "boolean",
            },
          },
          type = "object",
        },
        themeId = {
          description = "The ID of the theme from which the background image and color will be set. The set of possible teamDriveThemes can be retrieved from a drive.about.get response. When not specified on a drive.teamdrives.create request, a random theme is chosen from which the background image and color are set. This is a write-only field; it can only be set on requests that don't set colorRgb or backgroundImageFile.",
          type = "string",
        },
      },
      type = "object",
    },
    TeamDriveList = {
      description = "A list of Team Drives.",
      id = "TeamDriveList",
      properties = {
        kind = {
          default = "drive#teamDriveList",
          description = "Identifies what kind of resource this is. Value: the fixed string \"drive#teamDriveList\".",
          type = "string",
        },
        nextPageToken = {
          description = "The page token for the next page of Team Drives. This will be absent if the end of the Team Drives list has been reached. If the token is rejected for any reason, it should be discarded, and pagination should be restarted from the first page of results.",
          type = "string",
        },
        teamDrives = {
          description = "The list of Team Drives. If nextPageToken is populated, then this list may be incomplete and an additional page of results should be fetched.",
          items = {
            ["$ref"] = "TeamDrive",
          },
          type = "array",
        },
      },
      type = "object",
    },
    User = {
      description = "Information about a Drive user.",
      id = "User",
      properties = {
        displayName = {
          description = "A plain text displayable name for this user.",
          type = "string",
        },
        emailAddress = {
          description = "The email address of the user. This may not be present in certain contexts if the user has not made their email address visible to the requester.",
          type = "string",
        },
        kind = {
          default = "drive#user",
          description = "Identifies what kind of resource this is. Value: the fixed string \"drive#user\".",
          type = "string",
        },
        me = {
          description = "Whether this user is the requesting user.",
          type = "boolean",
        },
        permissionId = {
          description = "The user's ID as visible in Permission resources.",
          type = "string",
        },
        photoLink = {
          description = "A link to the user's profile photo, if available.",
          type = "string",
        },
      },
      type = "object",
    },
  },
  servicePath = "drive/v3/",
  title = "Drive API",
  version = "v3",
}
