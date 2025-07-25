return {
  basePath = "",
  baseUrl = "https://poly.googleapis.com/",
  batchPath = "batch",
  canonicalName = "Poly Service",
  description = "The Poly API provides read access to assets hosted on poly.google.com to all, and upload access to poly.google.com for whitelisted accounts. ",
  discoveryVersion = "v1",
  documentationLink = "https://developers.google.com/poly/",
  fullyEncodeReservedExpansion = true,
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "poly:v1",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://poly.mtls.googleapis.com/",
  name = "poly",
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
    assets = {
      methods = {
        get = {
          description = "Returns detailed information about an asset given its name. PRIVATE assets are returned only if the currently authenticated user (via OAuth token) is the author of the asset.",
          flatPath = "v1/assets/{assetsId}",
          httpMethod = "GET",
          id = "poly.assets.get",
          parameterOrder = {
            "name",
          },
          parameters = {
            name = {
              description = "Required. An asset's name in the form `assets/{ASSET_ID}`.",
              location = "path",
              pattern = "^assets/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "v1/{+name}",
          response = {
            ["$ref"] = "Asset",
          },
        },
        list = {
          description = "Lists all public, remixable assets. These are assets with an access level of PUBLIC and published under the CC-By license.",
          flatPath = "v1/assets",
          httpMethod = "GET",
          id = "poly.assets.list",
          parameterOrder = {},
          parameters = {
            category = {
              description = "Filter assets based on the specified category. Supported values are: `animals`, `architecture`, `art`, `food`, `nature`, `objects`, `people`, `scenes`, `technology`, and `transport`.",
              location = "query",
              type = "string",
            },
            curated = {
              description = "Return only assets that have been curated by the Poly team.",
              location = "query",
              type = "boolean",
            },
            format = {
              description = "Return only assets with the matching format. Acceptable values are: `BLOCKS`, `FBX`, `GLTF`, `GLTF2`, `OBJ`, `TILT`.",
              location = "query",
              type = "string",
            },
            keywords = {
              description = "One or more search terms to be matched against all text that Poly has indexed for assets, which includes display_name, description, and tags. Multiple keywords should be separated by spaces.",
              location = "query",
              type = "string",
            },
            maxComplexity = {
              description = "Returns assets that are of the specified complexity or less. Defaults to COMPLEX. For example, a request for MEDIUM assets also includes SIMPLE assets.",
              enum = {
                "COMPLEXITY_UNSPECIFIED",
                "COMPLEX",
                "MEDIUM",
                "SIMPLE",
              },
              enumDescriptions = {
                "No complexity specified. This is equivalent to omitting the filter.",
                "Highly-complex.",
                "Averagely-complex.",
                "Simple.",
              },
              location = "query",
              type = "string",
            },
            orderBy = {
              description = "Specifies an ordering for assets. Acceptable values are: `BEST`, `NEWEST`, `OLDEST`. Defaults to `BEST`, which ranks assets based on a combination of popularity and other features.",
              location = "query",
              type = "string",
            },
            pageSize = {
              description = "The maximum number of assets to be returned. This value must be between `1` and `100`. Defaults to `20`.",
              format = "int32",
              location = "query",
              type = "integer",
            },
            pageToken = {
              description = "Specifies a continuation token from a previous search whose results were split into multiple pages. To get the next page, submit the same request specifying the value from next_page_token.",
              location = "query",
              type = "string",
            },
          },
          path = "v1/assets",
          response = {
            ["$ref"] = "ListAssetsResponse",
          },
        },
      },
    },
    users = {
      resources = {
        assets = {
          methods = {
            list = {
              description = "Lists assets authored by the given user. Only the value 'me', representing the currently-authenticated user, is supported. May include assets with an access level of PRIVATE or UNLISTED and assets which are All Rights Reserved for the currently-authenticated user.",
              flatPath = "v1/users/{usersId}/assets",
              httpMethod = "GET",
              id = "poly.users.assets.list",
              parameterOrder = {
                "name",
              },
              parameters = {
                format = {
                  description = "Return only assets with the matching format. Acceptable values are: `BLOCKS`, `FBX`, `GLTF`, `GLTF2`, `OBJ`, and `TILT`.",
                  location = "query",
                  type = "string",
                },
                name = {
                  description = "A valid user id. Currently, only the special value 'me', representing the currently-authenticated user is supported. To use 'me', you must pass an OAuth token with the request.",
                  location = "path",
                  pattern = "^users/[^/]+$",
                  required = true,
                  type = "string",
                },
                orderBy = {
                  description = "Specifies an ordering for assets. Acceptable values are: `BEST`, `NEWEST`, `OLDEST`. Defaults to `BEST`, which ranks assets based on a combination of popularity and other features.",
                  location = "query",
                  type = "string",
                },
                pageSize = {
                  description = "The maximum number of assets to be returned. This value must be between `1` and `100`. Defaults to `20`.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "Specifies a continuation token from a previous search whose results were split into multiple pages. To get the next page, submit the same request specifying the value from next_page_token.",
                  location = "query",
                  type = "string",
                },
                visibility = {
                  description = "The visibility of the assets to be returned. Defaults to VISIBILITY_UNSPECIFIED which returns all assets.",
                  enum = {
                    "VISIBILITY_UNSPECIFIED",
                    "PUBLISHED",
                    "PRIVATE",
                  },
                  enumDescriptions = {
                    "No visibility specified. Returns all assets.",
                    "Returns only published assets.",
                    "Returns only private assets.",
                  },
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/{+name}/assets",
              response = {
                ["$ref"] = "ListUserAssetsResponse",
              },
            },
          },
        },
        likedassets = {
          methods = {
            list = {
              description = "Lists assets that the user has liked. Only the value 'me', representing the currently-authenticated user, is supported. May include assets with an access level of UNLISTED.",
              flatPath = "v1/users/{usersId}/likedassets",
              httpMethod = "GET",
              id = "poly.users.likedassets.list",
              parameterOrder = {
                "name",
              },
              parameters = {
                format = {
                  description = "Return only assets with the matching format. Acceptable values are: `BLOCKS`, `FBX`, `GLTF`, `GLTF2`, `OBJ`, `TILT`.",
                  location = "query",
                  type = "string",
                },
                name = {
                  description = "A valid user id. Currently, only the special value 'me', representing the currently-authenticated user is supported. To use 'me', you must pass an OAuth token with the request.",
                  location = "path",
                  pattern = "^users/[^/]+$",
                  required = true,
                  type = "string",
                },
                orderBy = {
                  description = "Specifies an ordering for assets. Acceptable values are: `BEST`, `NEWEST`, `OLDEST`, 'LIKED_TIME'. Defaults to `LIKED_TIME`, which ranks assets based on how recently they were liked.",
                  location = "query",
                  type = "string",
                },
                pageSize = {
                  description = "The maximum number of assets to be returned. This value must be between `1` and `100`. Defaults to `20`.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "Specifies a continuation token from a previous search whose results were split into multiple pages. To get the next page, submit the same request specifying the value from next_page_token.",
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/{+name}/likedassets",
              response = {
                ["$ref"] = "ListLikedAssetsResponse",
              },
            },
          },
        },
      },
    },
  },
  revision = "20210817",
  rootUrl = "https://poly.googleapis.com/",
  schemas = {
    Asset = {
      description = "Represents and describes an asset in the Poly library. An asset is a 3D model or scene created using [Tilt Brush](//www.tiltbrush.com), [Blocks](//vr.google.com/blocks/), or any 3D program that produces a file that can be upload to Poly.",
      id = "Asset",
      properties = {
        authorName = {
          description = "The author's publicly visible name. Use this name when giving credit to the author. For more information, see [Licensing](/poly/discover/licensing).",
          type = "string",
        },
        createTime = {
          description = "For published assets, the time when the asset was published. For unpublished assets, the time when the asset was created.",
          format = "google-datetime",
          type = "string",
        },
        description = {
          description = "The human-readable description, set by the asset's author.",
          type = "string",
        },
        displayName = {
          description = "The human-readable name, set by the asset's author.",
          type = "string",
        },
        formats = {
          description = "A list of Formats where each format describes one representation of the asset.",
          items = {
            ["$ref"] = "Format",
          },
          type = "array",
        },
        isCurated = {
          description = "Whether this asset has been curated by the Poly team.",
          type = "boolean",
        },
        license = {
          description = "The license under which the author has made the asset available for use, if any.",
          enum = {
            "UNKNOWN",
            "CREATIVE_COMMONS_BY",
            "ALL_RIGHTS_RESERVED",
          },
          enumDescriptions = {
            "Unknown license value.",
            "Creative Commons CC-BY 3.0. https://creativecommons.org/licenses/by/3.0/",
            "Unlicensed: All Rights Reserved by the author. Unlicensed assets are **not** returned by List Assets.",
          },
          type = "string",
        },
        metadata = {
          description = "Application-defined opaque metadata for this asset. This field is only returned when querying for the signed-in user's own assets, not for public assets. This string is limited to 1K chars. It is up to the creator of the asset to define the format for this string (for example, JSON).",
          type = "string",
        },
        name = {
          description = "The unique identifier for the asset in the form: `assets/{ASSET_ID}`.",
          type = "string",
        },
        presentationParams = {
          ["$ref"] = "PresentationParams",
          description = "Hints for displaying the asset. Note that these parameters are not immutable; the author of an asset may change them post-publication.",
        },
        remixInfo = {
          ["$ref"] = "RemixInfo",
          description = "The remix info for the asset.",
        },
        thumbnail = {
          ["$ref"] = "File",
          description = "The thumbnail image for the asset.",
        },
        updateTime = {
          description = "The time when the asset was last modified. For published assets, whose contents are immutable, the update time changes only when metadata properties, such as visibility, are updated.",
          format = "google-datetime",
          type = "string",
        },
        visibility = {
          description = "The visibility of the asset and who can access it.",
          enum = {
            "VISIBILITY_UNSPECIFIED",
            "PRIVATE",
            "UNLISTED",
            "PUBLIC",
          },
          enumDescriptions = {
            "Unknown (and invalid) visibility.",
            "Access to the asset and its underlying files and resources is restricted to the author. **Authentication:** You must supply an OAuth token that corresponds to the author's account.",
            "Access to the asset and its underlying files and resources is available to anyone with the asset's name. Unlisted assets are **not** returned by List Assets.",
            "Access to the asset and its underlying files and resources is available to anyone.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    AssetImportMessage = {
      description = "A message generated by the asset import process.",
      id = "AssetImportMessage",
      properties = {
        code = {
          description = "The code associated with this message.",
          enum = {
            "CODE_UNSPECIFIED",
            "NO_IMPORTABLE_FILE",
            "EMPTY_MODEL",
            "OBJ_PARSE_ERROR",
            "EXPIRED",
            "IMAGE_ERROR",
            "EXTRA_FILES_WITH_ARCHIVE",
            "DEFAULT_MATERIALS",
            "FATAL_ERROR",
            "INVALID_ELEMENT_TYPE",
          },
          enumDescriptions = {
            "Unknown error code.",
            "The asset import did not include any file that we can import (i.e. an OBJ file).",
            "When generating the preview for the import, no geometry was found.",
            "A problem was encountered while parsing the OBJ file. The converter makes a 'best effort' attempt to continue when encountering such issues. In some cases the resulting preview model may still be acceptable. The details can be found in the parse error message.",
            "The importer was not able to import the model before the expiration time.",
            "The importer encountered a problem reading an image file.",
            "Multiple files were encountered in addition to a ZIP archive. When uploading an archive only one file is permitted.",
            "Default materials are used in the model. This means that one or more faces is using default materials either because no usemtl statement was specified or because the requested material was not found due to a missing material file or bad material name. This does not cover the case of missing textures.",
            "The importer encountered a fatal error and was unable to import the model.",
            "The import includes a file of an unsupported element type. The file path is specified.",
          },
          type = "string",
        },
        filePath = {
          description = "An optional file path. Only present for those error codes that specify it.",
          type = "string",
        },
        imageError = {
          ["$ref"] = "ImageError",
          description = "An optional image error. Only present for INVALID_IMAGE_FILE.",
        },
        objParseError = {
          ["$ref"] = "ObjParseError",
          description = "An optional OBJ parse error. Only present for OBJ_PARSE_ERROR.",
        },
      },
      type = "object",
    },
    File = {
      description = "Represents a file in Poly, which can be a root, resource, or thumbnail file.",
      id = "File",
      properties = {
        contentType = {
          description = "The MIME content-type, such as `image/png`. For more information, see [MIME types](//developer.mozilla.org/en-US/docs/Web/HTTP/Basics_of_HTTP/MIME_types).",
          type = "string",
        },
        relativePath = {
          description = "The path of the resource file relative to the root file. For root or thumbnail files, this is just the filename.",
          type = "string",
        },
        url = {
          description = "The URL where the file data can be retrieved.",
          type = "string",
        },
      },
      type = "object",
    },
    Format = {
      description = "The same asset can be represented in different formats, for example, a [WaveFront .obj](//en.wikipedia.org/wiki/Wavefront_.obj_file) file with its corresponding .mtl file or a [Khronos glTF](//www.khronos.org/gltf) file with its corresponding .glb binary data. A format refers to a specific representation of an asset and contains all information needed to retrieve and describe this representation.",
      id = "Format",
      properties = {
        formatComplexity = {
          ["$ref"] = "FormatComplexity",
          description = "Complexity stats about this representation of the asset.",
        },
        formatType = {
          description = "A short string that identifies the format type of this representation. Possible values are: `FBX`, `GLTF`, `GLTF2`, `OBJ`, and `TILT`.",
          type = "string",
        },
        resources = {
          description = "A list of dependencies of the root element. May include, but is not limited to, materials, textures, and shader programs.",
          items = {
            ["$ref"] = "File",
          },
          type = "array",
        },
        root = {
          ["$ref"] = "File",
          description = "The root of the file hierarchy. This will always be populated. For some format_types - such as `TILT`, which are self-contained - this is all of the data. Other types - such as `OBJ` - often reference other data elements. These are contained in the resources field.",
        },
      },
      type = "object",
    },
    FormatComplexity = {
      description = "Information on the complexity of this Format.",
      id = "FormatComplexity",
      properties = {
        lodHint = {
          description = "A non-negative integer that represents the level of detail (LOD) of this format relative to other formats of the same asset with the same format_type. This hint allows you to sort formats from the most-detailed (0) to least-detailed (integers greater than 0).",
          format = "int32",
          type = "integer",
        },
        triangleCount = {
          description = "The estimated number of triangles.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    ImageError = {
      description = "A message resulting from reading an image file.",
      id = "ImageError",
      properties = {
        code = {
          description = "The type of image error encountered. Optional for older image errors.",
          enum = {
            "CODE_UNSPECIFIED",
            "INVALID_IMAGE",
            "IMAGE_TOO_BIG",
            "WRONG_IMAGE_TYPE",
          },
          enumDescriptions = {
            "Unknown error code.",
            "We were unable to read the image file.",
            "The image size is too large.",
            "The image data does not match the expected MIME type of the image.",
          },
          type = "string",
        },
        filePath = {
          description = "The file path in the import of the image that was rejected.",
          type = "string",
        },
      },
      type = "object",
    },
    ListAssetsResponse = {
      description = "A response message from a request to list.",
      id = "ListAssetsResponse",
      properties = {
        assets = {
          description = "A list of assets that match the criteria specified in the request.",
          items = {
            ["$ref"] = "Asset",
          },
          type = "array",
        },
        nextPageToken = {
          description = "The continuation token for retrieving the next page. If empty, indicates that there are no more pages. To get the next page, submit the same request specifying this value as the page_token.",
          type = "string",
        },
        totalSize = {
          description = "The total number of assets in the list, without pagination.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    ListLikedAssetsResponse = {
      description = "A response message from a request to list.",
      id = "ListLikedAssetsResponse",
      properties = {
        assets = {
          description = "A list of assets that match the criteria specified in the request.",
          items = {
            ["$ref"] = "Asset",
          },
          type = "array",
        },
        nextPageToken = {
          description = "The continuation token for retrieving the next page. If empty, indicates that there are no more pages. To get the next page, submit the same request specifying this value as the page_token.",
          type = "string",
        },
        totalSize = {
          description = "The total number of assets in the list, without pagination.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    ListUserAssetsResponse = {
      description = "A response message from a request to list.",
      id = "ListUserAssetsResponse",
      properties = {
        nextPageToken = {
          description = "The continuation token for retrieving the next page. If empty, indicates that there are no more pages. To get the next page, submit the same request specifying this value as the page_token.",
          type = "string",
        },
        totalSize = {
          description = "The total number of assets in the list, without pagination.",
          format = "int32",
          type = "integer",
        },
        userAssets = {
          description = "A list of UserAssets matching the request.",
          items = {
            ["$ref"] = "UserAsset",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ObjParseError = {
      description = "Details of an error resulting from parsing an OBJ file",
      id = "ObjParseError",
      properties = {
        code = {
          description = "The type of problem found (required).",
          enum = {
            "CODE_UNSPECIFIED",
            "INCONSISTENT_VERTEX_REFS",
            "INVALID_COMMAND",
            "INVALID_NUMBER",
            "INVALID_VERTEX_REF",
            "MISSING_GEOMETRIC_VERTEX",
            "MISSING_TOKEN",
            "TOO_FEW_DIMENSIONS",
            "TOO_FEW_VERTICES",
            "TOO_MANY_DIMENSIONS",
            "UNSUPPORTED_COMMAND",
            "UNUSED_TOKENS",
            "VERTEX_NOT_FOUND",
            "NUMBER_OUT_OF_RANGE",
            "INVALID_VALUE",
            "INVALID_TEXTURE_OPTION",
            "TOO_MANY_PROBLEMS",
            "MISSING_FILE_NAME",
            "FILE_NOT_FOUND",
            "UNKNOWN_MATERIAL",
            "NO_MATERIAL_DEFINED",
            "INVALID_SMOOTHING_GROUP",
            "MISSING_VERTEX_COLORS",
            "FILE_SUBSTITUTION",
            "LINE_TOO_LONG",
            "INVALID_FILE_PATH",
          },
          enumDescriptions = {
            "Unknown error code.",
            "Vertex references are specified in an inconsistent style for a face (e.g. some vertices specify texture vertices but some don't).",
            "The command is invalid.",
            "A invalid number was specified.",
            "An invalid vertex reference was specified.",
            "A vertex reference does not specify a geometric vertex.",
            "An expected token was not found.",
            "The vertex specified too few dimensions for its usage.",
            "The face specified too few vertices.",
            "The vertex specified too many dimensions for its usage.",
            "This command is a valid OBJ command but is not supported. This error is only generated for the first instance of such a command.",
            "This line ended with unparsed token characters.",
            "The specified vertex was not found.",
            "The specified number was too large or small for its usage.",
            "The specified parameter value was not recognized.",
            "The specified texture option is not valid.",
            "The maximum number of problems to report was reached. Parsing continues, but further problems will be ignored.",
            "An expected file name was not specified.",
            "The specified file was not found in the import.",
            "The specified material was not found in any material definition in the import.",
            "Material parameters were specified before the first material definition.",
            "The smoothing group is not valid.",
            "Vertex colors were specified for only some vertices of a face.",
            "A missing file was found at a different file path.",
            "A line in an OBJ or MTL file exceeded the maximum line length.",
            "The file path was invalid. Only relative paths are supported.",
          },
          type = "string",
        },
        endIndex = {
          description = "The ending character index at which the problem was found.",
          format = "int32",
          type = "integer",
        },
        filePath = {
          description = "The file path in which the problem was found.",
          type = "string",
        },
        line = {
          description = "The text of the line. Note that this may be truncated if the line was very long. This may not include the error if it occurs after line truncation.",
          type = "string",
        },
        lineNumber = {
          description = "Line number at which the problem was found.",
          format = "int32",
          type = "integer",
        },
        startIndex = {
          description = "The starting character index at which the problem was found.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    PresentationParams = {
      description = "Hints for displaying the asset, based on information available when the asset was uploaded.",
      id = "PresentationParams",
      properties = {
        backgroundColor = {
          description = "A background color which could be used for displaying the 3D asset in a 'thumbnail' or 'palette' style view. Authors have the option to set this background color when publishing or editing their asset. This is represented as a six-digit hexademical triplet specifying the RGB components of the background color, e.g. #FF0000 for Red.",
          type = "string",
        },
        colorSpace = {
          description = "The materials' diffuse/albedo color. This does not apply to vertex colors or texture maps.",
          enum = {
            "UNKNOWN",
            "LINEAR",
            "GAMMA",
          },
          enumDescriptions = {
            "Invalid color value.",
            "Linear color values. Default.",
            "Colors should be converted to linear by assuming gamma = 2.0.",
          },
          type = "string",
        },
        orientingRotation = {
          ["$ref"] = "Quaternion",
          description = "A rotation that should be applied to the object root to make it upright. More precisely, this quaternion transforms from \"object space\" (the space in which the object is defined) to \"presentation space\", a coordinate system where +Y is up, +X is right, -Z is forward. For example, if the object is the Eiffel Tower, in its local coordinate system the object might be laid out such that the base of the tower is on the YZ plane and the tip of the tower is towards positive X. In this case this quaternion would specify a rotation (of 90 degrees about the Z axis) such that in the presentation space the base of the tower is aligned with the XZ plane, and the tip of the tower lies towards +Y. This rotation is unrelated to the object's pose in the web preview, which is just a camera position setting and is *not* reflected in this rotation. Please note: this is applicable only to the gLTF.",
        },
      },
      type = "object",
    },
    Quaternion = {
      description = "A [Quaternion](//en.wikipedia.org/wiki/Quaternion). Please note: if in the response you see \"w: 1\" and nothing else this is the default value of [0, 0, 0, 1] where x,y, and z are 0.",
      id = "Quaternion",
      properties = {
        w = {
          description = "The scalar component.",
          format = "double",
          type = "number",
        },
        x = {
          description = "The x component.",
          format = "double",
          type = "number",
        },
        y = {
          description = "The y component.",
          format = "double",
          type = "number",
        },
        z = {
          description = "The z component.",
          format = "double",
          type = "number",
        },
      },
      type = "object",
    },
    RemixInfo = {
      description = "Info about the sources of this asset (i.e. assets that were remixed to create this asset).",
      id = "RemixInfo",
      properties = {
        sourceAsset = {
          description = "Resource ids for the sources of this remix, of the form: `assets/{ASSET_ID}`",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    StartAssetImportResponse = {
      description = "A response message from a request to startImport. This is returned in the response field of the Operation.",
      id = "StartAssetImportResponse",
      properties = {
        assetId = {
          description = "The id of newly created asset. If this is empty when the operation is complete it means the import failed. Please refer to the assetImportMessages field to understand what went wrong.",
          type = "string",
        },
        assetImportId = {
          description = "The id of the asset import.",
          type = "string",
        },
        assetImportMessages = {
          description = "The message from the asset import. This will contain any warnings (or - in the case of failure - errors) that occurred during import.",
          items = {
            ["$ref"] = "AssetImportMessage",
          },
          type = "array",
        },
        publishUrl = {
          description = "The publish URL for the asset.",
          type = "string",
        },
      },
      type = "object",
    },
    UserAsset = {
      description = "Data about the user's asset.",
      id = "UserAsset",
      properties = {
        asset = {
          ["$ref"] = "Asset",
          description = "An Asset.",
        },
      },
      type = "object",
    },
  },
  servicePath = "",
  title = "Poly API",
  version = "v1",
  version_module = true,
}
