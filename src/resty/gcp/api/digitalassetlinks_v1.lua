return {
  basePath = "",
  baseUrl = "https://digitalassetlinks.googleapis.com/",
  batchPath = "batch",
  description = "Discovers relationships between online assets such as websites or mobile apps.",
  discoveryVersion = "v1",
  documentationLink = "https://developers.google.com/digital-asset-links/",
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "digitalassetlinks:v1",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://digitalassetlinks.mtls.googleapis.com/",
  name = "digitalassetlinks",
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
    assetlinks = {
      methods = {
        bulkCheck = {
          description = "Send a bundle of statement checks in a single RPC to minimize latency and service load. Statements need not be all for the same source and/or target. We recommend using this method when you need to check more than one statement in a short period of time.",
          flatPath = "v1/assetlinks:bulkCheck",
          httpMethod = "POST",
          id = "digitalassetlinks.assetlinks.bulkCheck",
          parameterOrder = {},
          parameters = {},
          path = "v1/assetlinks:bulkCheck",
          request = {
            ["$ref"] = "BulkCheckRequest",
          },
          response = {
            ["$ref"] = "BulkCheckResponse",
          },
        },
        check = {
          description = "Determines whether the specified (directional) relationship exists between the specified source and target assets. The relation describes the intent of the link between the two assets as claimed by the source asset. An example for such relationships is the delegation of privileges or permissions. This command is most often used by infrastructure systems to check preconditions for an action. For example, a client may want to know if it is OK to send a web URL to a particular mobile app instead. The client can check for the relevant asset link from the website to the mobile app to decide if the operation should be allowed. A note about security: if you specify a secure asset as the source, such as an HTTPS website or an Android app, the API will ensure that any statements used to generate the response have been made in a secure way by the owner of that asset. Conversely, if the source asset is an insecure HTTP website (that is, the URL starts with `http://` instead of `https://`), the API cannot verify its statements securely, and it is not possible to ensure that the website's statements have not been altered by a third party. For more information, see the [Digital Asset Links technical design specification](https://github.com/google/digitalassetlinks/blob/master/well-known/details.md).",
          flatPath = "v1/assetlinks:check",
          httpMethod = "GET",
          id = "digitalassetlinks.assetlinks.check",
          parameterOrder = {},
          parameters = {
            relation = {
              description = "Query string for the relation. We identify relations with strings of the format `/`, where `` must be one of a set of pre-defined purpose categories, and `` is a free-form lowercase alphanumeric string that describes the specific use case of the statement. Refer to [our API documentation](/digital-asset-links/v1/relation-strings) for the current list of supported relations. For a query to match an asset link, both the query's and the asset link's relation strings must match exactly. Example: A query with relation `delegate_permission/common.handle_all_urls` matches an asset link with relation `delegate_permission/common.handle_all_urls`.",
              location = "query",
              type = "string",
            },
            ["source.androidApp.certificate.sha256Fingerprint"] = {
              description = "The uppercase SHA-265 fingerprint of the certificate. From the PEM certificate, it can be acquired like this: $ keytool -printcert -file $CERTFILE | grep SHA256: SHA256: 14:6D:E9:83:C5:73:06:50:D8:EE:B9:95:2F:34:FC:64:16:A0:83: \\ 42:E6:1D:BE:A8:8A:04:96:B2:3F:CF:44:E5 or like this: $ openssl x509 -in $CERTFILE -noout -fingerprint -sha256 SHA256 Fingerprint=14:6D:E9:83:C5:73:06:50:D8:EE:B9:95:2F:34:FC:64: \\ 16:A0:83:42:E6:1D:BE:A8:8A:04:96:B2:3F:CF:44:E5 In this example, the contents of this field would be `14:6D:E9:83:C5:73: 06:50:D8:EE:B9:95:2F:34:FC:64:16:A0:83:42:E6:1D:BE:A8:8A:04:96:B2:3F:CF: 44:E5`. If these tools are not available to you, you can convert the PEM certificate into the DER format, compute the SHA-256 hash of that string and represent the result as a hexstring (that is, uppercase hexadecimal representations of each octet, separated by colons).",
              location = "query",
              type = "string",
            },
            ["source.androidApp.packageName"] = {
              description = "Android App assets are naturally identified by their Java package name. For example, the Google Maps app uses the package name `com.google.android.apps.maps`. REQUIRED",
              location = "query",
              type = "string",
            },
            ["source.web.site"] = {
              description = "Web assets are identified by a URL that contains only the scheme, hostname and port parts. The format is http[s]://[:] Hostnames must be fully qualified: they must end in a single period (\"`.`\"). Only the schemes \"http\" and \"https\" are currently allowed. Port numbers are given as a decimal number, and they must be omitted if the standard port numbers are used: 80 for http and 443 for https. We call this limited URL the \"site\". All URLs that share the same scheme, hostname and port are considered to be a part of the site and thus belong to the web asset. Example: the asset with the site `https://www.google.com` contains all these URLs: * `https://www.google.com/` * `https://www.google.com:443/` * `https://www.google.com/foo` * `https://www.google.com/foo?bar` * `https://www.google.com/foo#bar` * `https://user@password:www.google.com/` But it does not contain these URLs: * `http://www.google.com/` (wrong scheme) * `https://google.com/` (hostname does not match) * `https://www.google.com:444/` (port does not match) REQUIRED",
              location = "query",
              type = "string",
            },
            ["target.androidApp.certificate.sha256Fingerprint"] = {
              description = "The uppercase SHA-265 fingerprint of the certificate. From the PEM certificate, it can be acquired like this: $ keytool -printcert -file $CERTFILE | grep SHA256: SHA256: 14:6D:E9:83:C5:73:06:50:D8:EE:B9:95:2F:34:FC:64:16:A0:83: \\ 42:E6:1D:BE:A8:8A:04:96:B2:3F:CF:44:E5 or like this: $ openssl x509 -in $CERTFILE -noout -fingerprint -sha256 SHA256 Fingerprint=14:6D:E9:83:C5:73:06:50:D8:EE:B9:95:2F:34:FC:64: \\ 16:A0:83:42:E6:1D:BE:A8:8A:04:96:B2:3F:CF:44:E5 In this example, the contents of this field would be `14:6D:E9:83:C5:73: 06:50:D8:EE:B9:95:2F:34:FC:64:16:A0:83:42:E6:1D:BE:A8:8A:04:96:B2:3F:CF: 44:E5`. If these tools are not available to you, you can convert the PEM certificate into the DER format, compute the SHA-256 hash of that string and represent the result as a hexstring (that is, uppercase hexadecimal representations of each octet, separated by colons).",
              location = "query",
              type = "string",
            },
            ["target.androidApp.packageName"] = {
              description = "Android App assets are naturally identified by their Java package name. For example, the Google Maps app uses the package name `com.google.android.apps.maps`. REQUIRED",
              location = "query",
              type = "string",
            },
            ["target.web.site"] = {
              description = "Web assets are identified by a URL that contains only the scheme, hostname and port parts. The format is http[s]://[:] Hostnames must be fully qualified: they must end in a single period (\"`.`\"). Only the schemes \"http\" and \"https\" are currently allowed. Port numbers are given as a decimal number, and they must be omitted if the standard port numbers are used: 80 for http and 443 for https. We call this limited URL the \"site\". All URLs that share the same scheme, hostname and port are considered to be a part of the site and thus belong to the web asset. Example: the asset with the site `https://www.google.com` contains all these URLs: * `https://www.google.com/` * `https://www.google.com:443/` * `https://www.google.com/foo` * `https://www.google.com/foo?bar` * `https://www.google.com/foo#bar` * `https://user@password:www.google.com/` But it does not contain these URLs: * `http://www.google.com/` (wrong scheme) * `https://google.com/` (hostname does not match) * `https://www.google.com:444/` (port does not match) REQUIRED",
              location = "query",
              type = "string",
            },
          },
          path = "v1/assetlinks:check",
          response = {
            ["$ref"] = "CheckResponse",
          },
        },
      },
    },
    statements = {
      methods = {
        list = {
          description = "Retrieves a list of all statements from a given source that match the specified target and statement string. The API guarantees that all statements with secure source assets, such as HTTPS websites or Android apps, have been made in a secure way by the owner of those assets, as described in the [Digital Asset Links technical design specification](https://github.com/google/digitalassetlinks/blob/master/well-known/details.md). Specifically, you should consider that for insecure websites (that is, where the URL starts with `http://` instead of `https://`), this guarantee cannot be made. The `List` command is most useful in cases where the API client wants to know all the ways in which two assets are related, or enumerate all the relationships from a particular source asset. Example: a feature that helps users navigate to related items. When a mobile app is running on a device, the feature would make it easy to navigate to the corresponding web site or Google+ profile.",
          flatPath = "v1/statements:list",
          httpMethod = "GET",
          id = "digitalassetlinks.statements.list",
          parameterOrder = {},
          parameters = {
            relation = {
              description = "Use only associations that match the specified relation. See the [`Statement`](#Statement) message for a detailed definition of relation strings. For a query to match a statement, one of the following must be true: * both the query's and the statement's relation strings match exactly, or * the query's relation string is empty or missing. Example: A query with relation `delegate_permission/common.handle_all_urls` matches an asset link with relation `delegate_permission/common.handle_all_urls`.",
              location = "query",
              type = "string",
            },
            ["source.androidApp.certificate.sha256Fingerprint"] = {
              description = "The uppercase SHA-265 fingerprint of the certificate. From the PEM certificate, it can be acquired like this: $ keytool -printcert -file $CERTFILE | grep SHA256: SHA256: 14:6D:E9:83:C5:73:06:50:D8:EE:B9:95:2F:34:FC:64:16:A0:83: \\ 42:E6:1D:BE:A8:8A:04:96:B2:3F:CF:44:E5 or like this: $ openssl x509 -in $CERTFILE -noout -fingerprint -sha256 SHA256 Fingerprint=14:6D:E9:83:C5:73:06:50:D8:EE:B9:95:2F:34:FC:64: \\ 16:A0:83:42:E6:1D:BE:A8:8A:04:96:B2:3F:CF:44:E5 In this example, the contents of this field would be `14:6D:E9:83:C5:73: 06:50:D8:EE:B9:95:2F:34:FC:64:16:A0:83:42:E6:1D:BE:A8:8A:04:96:B2:3F:CF: 44:E5`. If these tools are not available to you, you can convert the PEM certificate into the DER format, compute the SHA-256 hash of that string and represent the result as a hexstring (that is, uppercase hexadecimal representations of each octet, separated by colons).",
              location = "query",
              type = "string",
            },
            ["source.androidApp.packageName"] = {
              description = "Android App assets are naturally identified by their Java package name. For example, the Google Maps app uses the package name `com.google.android.apps.maps`. REQUIRED",
              location = "query",
              type = "string",
            },
            ["source.web.site"] = {
              description = "Web assets are identified by a URL that contains only the scheme, hostname and port parts. The format is http[s]://[:] Hostnames must be fully qualified: they must end in a single period (\"`.`\"). Only the schemes \"http\" and \"https\" are currently allowed. Port numbers are given as a decimal number, and they must be omitted if the standard port numbers are used: 80 for http and 443 for https. We call this limited URL the \"site\". All URLs that share the same scheme, hostname and port are considered to be a part of the site and thus belong to the web asset. Example: the asset with the site `https://www.google.com` contains all these URLs: * `https://www.google.com/` * `https://www.google.com:443/` * `https://www.google.com/foo` * `https://www.google.com/foo?bar` * `https://www.google.com/foo#bar` * `https://user@password:www.google.com/` But it does not contain these URLs: * `http://www.google.com/` (wrong scheme) * `https://google.com/` (hostname does not match) * `https://www.google.com:444/` (port does not match) REQUIRED",
              location = "query",
              type = "string",
            },
          },
          path = "v1/statements:list",
          response = {
            ["$ref"] = "ListResponse",
          },
        },
      },
    },
  },
  revision = "20230110",
  rootUrl = "https://digitalassetlinks.googleapis.com/",
  schemas = {
    AndroidAppAsset = {
      description = "Describes an android app asset.",
      id = "AndroidAppAsset",
      properties = {
        certificate = {
          ["$ref"] = "CertificateInfo",
          description = "Because there is no global enforcement of package name uniqueness, we also require a signing certificate, which in combination with the package name uniquely identifies an app. Some apps' signing keys are rotated, so they may be signed by different keys over time. We treat these as distinct assets, since we use (package name, cert) as the unique ID. This should not normally pose any problems as both versions of the app will make the same or similar statements. Other assets making statements about the app will have to be updated when a key is rotated, however. (Note that the syntaxes for publishing and querying for statements contain syntactic sugar to easily let you specify apps that are known by multiple certificates.) REQUIRED",
        },
        packageName = {
          description = "Android App assets are naturally identified by their Java package name. For example, the Google Maps app uses the package name `com.google.android.apps.maps`. REQUIRED",
          type = "string",
        },
      },
      type = "object",
    },
    Asset = {
      description = "Uniquely identifies an asset. A digital asset is an identifiable and addressable online entity that typically provides some service or content. Examples of assets are websites, Android apps, Twitter feeds, and Plus Pages.",
      id = "Asset",
      properties = {
        androidApp = {
          ["$ref"] = "AndroidAppAsset",
          description = "Set if this is an Android App asset.",
        },
        web = {
          ["$ref"] = "WebAsset",
          description = "Set if this is a web asset.",
        },
      },
      type = "object",
    },
    BulkCheckRequest = {
      description = "Message used to check for the existence of multiple digital asset links within a single RPC.",
      id = "BulkCheckRequest",
      properties = {
        allowGoogleInternalDataSources = {
          description = "Same configuration as in Check request, all statements checks will use same configurations.",
          type = "boolean",
        },
        defaultRelation = {
          description = "If specified, will be used in any given template statement that doesn’t specify a relation.",
          type = "string",
        },
        defaultSource = {
          ["$ref"] = "Asset",
          description = "If specified, will be used in any given template statement that doesn’t specify a source.",
        },
        defaultTarget = {
          ["$ref"] = "Asset",
          description = "If specified, will be used in any given template statement that doesn’t specify a target.",
        },
        skipCacheLookup = {
          description = "Same configuration as in Check request, all statements checks will use same configurations.",
          type = "boolean",
        },
        statements = {
          description = "List of statements to check. For each statement, you can omit a field if the corresponding default_* field below was supplied. Minimum 1 statement; maximum 1,000 statements. Any additional statements will be ignored.",
          items = {
            ["$ref"] = "StatementTemplate",
          },
          type = "array",
        },
      },
      type = "object",
    },
    BulkCheckResponse = {
      description = "Response for BulkCheck call. Results are sent in a list in the same order in which they were sent. Individual check errors are described in the appropriate check_results entry. If the entire call fails, the response will include a bulk_error_code field describing the error.",
      id = "BulkCheckResponse",
      properties = {
        bulkErrorCode = {
          description = "Error code for the entire request. Present only if the entire request failed. Individual check errors will not trigger the presence of this field.",
          enum = {
            "ERROR_CODE_UNSPECIFIED",
            "ERROR_CODE_INVALID_QUERY",
            "ERROR_CODE_FETCH_ERROR",
            "ERROR_CODE_FAILED_SSL_VALIDATION",
            "ERROR_CODE_REDIRECT",
            "ERROR_CODE_TOO_LARGE",
            "ERROR_CODE_MALFORMED_HTTP_RESPONSE",
            "ERROR_CODE_WRONG_CONTENT_TYPE",
            "ERROR_CODE_MALFORMED_CONTENT",
            "ERROR_CODE_SECURE_ASSET_INCLUDES_INSECURE",
            "ERROR_CODE_FETCH_BUDGET_EXHAUSTED",
          },
          enumDescriptions = {
            "",
            "Unable to parse query.",
            "Unable to fetch the asset links data.",
            "Invalid HTTPS certificate .",
            "HTTP redirects (e.g, 301) are not allowed.",
            "Asset links data exceeds maximum size.",
            "Can't parse HTTP response.",
            "HTTP Content-type should be application/json.",
            "JSON content is malformed.",
            "A secure asset includes an insecure asset (security downgrade).",
            "Too many includes (maybe a loop).",
          },
          type = "string",
        },
        checkResults = {
          description = "List of results for each check request. Results are returned in the same order in which they were sent in the request.",
          items = {
            ["$ref"] = "CheckResponse",
          },
          type = "array",
        },
      },
      type = "object",
    },
    CertificateInfo = {
      description = "Describes an X509 certificate.",
      id = "CertificateInfo",
      properties = {
        sha256Fingerprint = {
          description = "The uppercase SHA-265 fingerprint of the certificate. From the PEM certificate, it can be acquired like this: $ keytool -printcert -file $CERTFILE | grep SHA256: SHA256: 14:6D:E9:83:C5:73:06:50:D8:EE:B9:95:2F:34:FC:64:16:A0:83: \\ 42:E6:1D:BE:A8:8A:04:96:B2:3F:CF:44:E5 or like this: $ openssl x509 -in $CERTFILE -noout -fingerprint -sha256 SHA256 Fingerprint=14:6D:E9:83:C5:73:06:50:D8:EE:B9:95:2F:34:FC:64: \\ 16:A0:83:42:E6:1D:BE:A8:8A:04:96:B2:3F:CF:44:E5 In this example, the contents of this field would be `14:6D:E9:83:C5:73: 06:50:D8:EE:B9:95:2F:34:FC:64:16:A0:83:42:E6:1D:BE:A8:8A:04:96:B2:3F:CF: 44:E5`. If these tools are not available to you, you can convert the PEM certificate into the DER format, compute the SHA-256 hash of that string and represent the result as a hexstring (that is, uppercase hexadecimal representations of each octet, separated by colons).",
          type = "string",
        },
      },
      type = "object",
    },
    CheckResponse = {
      description = "Response message for the CheckAssetLinks call.",
      id = "CheckResponse",
      properties = {
        debugString = {
          description = "Human-readable message containing information intended to help end users understand, reproduce and debug the result. The message will be in English and we are currently not planning to offer any translations. Please note that no guarantees are made about the contents or format of this string. Any aspect of it may be subject to change without notice. You should not attempt to programmatically parse this data. For programmatic access, use the error_code field below.",
          type = "string",
        },
        errorCode = {
          description = "Error codes that describe the result of the Check operation.",
          items = {
            enum = {
              "ERROR_CODE_UNSPECIFIED",
              "ERROR_CODE_INVALID_QUERY",
              "ERROR_CODE_FETCH_ERROR",
              "ERROR_CODE_FAILED_SSL_VALIDATION",
              "ERROR_CODE_REDIRECT",
              "ERROR_CODE_TOO_LARGE",
              "ERROR_CODE_MALFORMED_HTTP_RESPONSE",
              "ERROR_CODE_WRONG_CONTENT_TYPE",
              "ERROR_CODE_MALFORMED_CONTENT",
              "ERROR_CODE_SECURE_ASSET_INCLUDES_INSECURE",
              "ERROR_CODE_FETCH_BUDGET_EXHAUSTED",
            },
            enumDescriptions = {
              "",
              "Unable to parse query.",
              "Unable to fetch the asset links data.",
              "Invalid HTTPS certificate .",
              "HTTP redirects (e.g, 301) are not allowed.",
              "Asset links data exceeds maximum size.",
              "Can't parse HTTP response.",
              "HTTP Content-type should be application/json.",
              "JSON content is malformed.",
              "A secure asset includes an insecure asset (security downgrade).",
              "Too many includes (maybe a loop).",
            },
            type = "string",
          },
          type = "array",
        },
        linked = {
          description = "Set to true if the assets specified in the request are linked by the relation specified in the request.",
          type = "boolean",
        },
        maxAge = {
          description = "From serving time, how much longer the response should be considered valid barring further updates. REQUIRED",
          format = "google-duration",
          type = "string",
        },
      },
      type = "object",
    },
    ListResponse = {
      description = "Response message for the List call.",
      id = "ListResponse",
      properties = {
        debugString = {
          description = "Human-readable message containing information intended to help end users understand, reproduce and debug the result. The message will be in English and we are currently not planning to offer any translations. Please note that no guarantees are made about the contents or format of this string. Any aspect of it may be subject to change without notice. You should not attempt to programmatically parse this data. For programmatic access, use the error_code field below.",
          type = "string",
        },
        errorCode = {
          description = "Error codes that describe the result of the List operation.",
          items = {
            enum = {
              "ERROR_CODE_UNSPECIFIED",
              "ERROR_CODE_INVALID_QUERY",
              "ERROR_CODE_FETCH_ERROR",
              "ERROR_CODE_FAILED_SSL_VALIDATION",
              "ERROR_CODE_REDIRECT",
              "ERROR_CODE_TOO_LARGE",
              "ERROR_CODE_MALFORMED_HTTP_RESPONSE",
              "ERROR_CODE_WRONG_CONTENT_TYPE",
              "ERROR_CODE_MALFORMED_CONTENT",
              "ERROR_CODE_SECURE_ASSET_INCLUDES_INSECURE",
              "ERROR_CODE_FETCH_BUDGET_EXHAUSTED",
            },
            enumDescriptions = {
              "",
              "Unable to parse query.",
              "Unable to fetch the asset links data.",
              "Invalid HTTPS certificate .",
              "HTTP redirects (e.g, 301) are not allowed.",
              "Asset links data exceeds maximum size.",
              "Can't parse HTTP response.",
              "HTTP Content-type should be application/json.",
              "JSON content is malformed.",
              "A secure asset includes an insecure asset (security downgrade).",
              "Too many includes (maybe a loop).",
            },
            type = "string",
          },
          type = "array",
        },
        maxAge = {
          description = "From serving time, how much longer the response should be considered valid barring further updates. REQUIRED",
          format = "google-duration",
          type = "string",
        },
        statements = {
          description = "A list of all the matching statements that have been found.",
          items = {
            ["$ref"] = "Statement",
          },
          type = "array",
        },
      },
      type = "object",
    },
    Statement = {
      description = "Describes a reliable statement that has been made about the relationship between a source asset and a target asset. Statements are always made by the source asset, either directly or by delegating to a statement list that is stored elsewhere. For more detailed definitions of statements and assets, please refer to our [API documentation landing page](/digital-asset-links/v1/getting-started).",
      id = "Statement",
      properties = {
        relation = {
          description = "The relation identifies the use of the statement as intended by the source asset's owner (that is, the person or entity who issued the statement). Every complete statement has a relation. We identify relations with strings of the format `/`, where `` must be one of a set of pre-defined purpose categories, and `` is a free-form lowercase alphanumeric string that describes the specific use case of the statement. Refer to [our API documentation](/digital-asset-links/v1/relation-strings) for the current list of supported relations. Example: `delegate_permission/common.handle_all_urls` REQUIRED",
          type = "string",
        },
        source = {
          ["$ref"] = "Asset",
          description = "Every statement has a source asset. REQUIRED",
        },
        target = {
          ["$ref"] = "Asset",
          description = "Every statement has a target asset. REQUIRED",
        },
      },
      type = "object",
    },
    StatementTemplate = {
      description = "A single statement to check in a bulk call using BulkCheck. See CheckRequest for details about each field.",
      id = "StatementTemplate",
      properties = {
        relation = {
          description = "The relationship being asserted between the source and target. If omitted, you must specify a BulkCheckRequest.default_relation value to use here.",
          type = "string",
        },
        source = {
          ["$ref"] = "Asset",
          description = "The source asset that is asserting the statement. If omitted, you must specify a BulkCheckRequest.default_source value to use here.",
        },
        target = {
          ["$ref"] = "Asset",
          description = "The target that the source is declaring the relationship with. If omitted, you must specify a BulkCheckRequest.default_target to use here.",
        },
      },
      type = "object",
    },
    WebAsset = {
      description = "Describes a web asset.",
      id = "WebAsset",
      properties = {
        site = {
          description = "Web assets are identified by a URL that contains only the scheme, hostname and port parts. The format is http[s]://[:] Hostnames must be fully qualified: they must end in a single period (\"`.`\"). Only the schemes \"http\" and \"https\" are currently allowed. Port numbers are given as a decimal number, and they must be omitted if the standard port numbers are used: 80 for http and 443 for https. We call this limited URL the \"site\". All URLs that share the same scheme, hostname and port are considered to be a part of the site and thus belong to the web asset. Example: the asset with the site `https://www.google.com` contains all these URLs: * `https://www.google.com/` * `https://www.google.com:443/` * `https://www.google.com/foo` * `https://www.google.com/foo?bar` * `https://www.google.com/foo#bar` * `https://user@password:www.google.com/` But it does not contain these URLs: * `http://www.google.com/` (wrong scheme) * `https://google.com/` (hostname does not match) * `https://www.google.com:444/` (port does not match) REQUIRED",
          type = "string",
        },
      },
      type = "object",
    },
  },
  servicePath = "",
  title = "Digital Asset Links API",
  version = "v1",
  version_module = true,
}
