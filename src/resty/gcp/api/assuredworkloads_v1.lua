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
  baseUrl = "https://assuredworkloads.googleapis.com/",
  batchPath = "batch",
  canonicalName = "Assuredworkloads",
  description = "",
  discoveryVersion = "v1",
  documentationLink = "https://cloud.google.com/learnmoreurl",
  fullyEncodeReservedExpansion = true,
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "assuredworkloads:v1",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://assuredworkloads.mtls.googleapis.com/",
  name = "assuredworkloads",
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
    organizations = {
      resources = {
        locations = {
          resources = {
            operations = {
              methods = {
                get = {
                  description = "Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.",
                  flatPath = "v1/organizations/{organizationsId}/locations/{locationsId}/operations/{operationsId}",
                  httpMethod = "GET",
                  id = "assuredworkloads.organizations.locations.operations.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "The name of the operation resource.",
                      location = "path",
                      pattern = "^organizations/[^/]+/locations/[^/]+/operations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "GoogleLongrunningOperation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                list = {
                  description = "Lists operations that match the specified filter in the request. If the server doesn't support this method, it returns `UNIMPLEMENTED`. NOTE: the `name` binding allows API services to override the binding to use different resource name schemes, such as `users/*/operations`. To override the binding, API services can add a binding such as `\"/v1/{name=users/*}/operations\"` to their service configuration. For backwards compatibility, the default name includes the operations collection id, however overriding users must ensure the name binding is the parent resource, without the operations collection id.",
                  flatPath = "v1/organizations/{organizationsId}/locations/{locationsId}/operations",
                  httpMethod = "GET",
                  id = "assuredworkloads.organizations.locations.operations.list",
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
                      pattern = "^organizations/[^/]+/locations/[^/]+$",
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
                  path = "v1/{+name}/operations",
                  response = {
                    ["$ref"] = "GoogleLongrunningListOperationsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
              },
            },
            workloads = {
              methods = {
                create = {
                  description = "Creates Assured Workload.",
                  flatPath = "v1/organizations/{organizationsId}/locations/{locationsId}/workloads",
                  httpMethod = "POST",
                  id = "assuredworkloads.organizations.locations.workloads.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    externalId = {
                      description = "Optional. A identifier associated with the workload and underlying projects which allows for the break down of billing costs for a workload. The value provided for the identifier will add a label to the workload and contained projects with the identifier as the value.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The resource name of the new Workload's parent. Must be of the form `organizations/{org_id}/locations/{location_id}`.",
                      location = "path",
                      pattern = "^organizations/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/workloads",
                  request = {
                    ["$ref"] = "GoogleCloudAssuredworkloadsV1Workload",
                  },
                  response = {
                    ["$ref"] = "GoogleLongrunningOperation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                delete = {
                  description = "Deletes the workload. Make sure that workload's direct children are already in a deleted state, otherwise the request will fail with a FAILED_PRECONDITION error.",
                  flatPath = "v1/organizations/{organizationsId}/locations/{locationsId}/workloads/{workloadsId}",
                  httpMethod = "DELETE",
                  id = "assuredworkloads.organizations.locations.workloads.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    etag = {
                      description = "Optional. The etag of the workload. If this is provided, it must match the server's etag.",
                      location = "query",
                      type = "string",
                    },
                    name = {
                      description = "Required. The `name` field is used to identify the workload. Format: organizations/{org_id}/locations/{location_id}/workloads/{workload_id}",
                      location = "path",
                      pattern = "^organizations/[^/]+/locations/[^/]+/workloads/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "GoogleProtobufEmpty",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                get = {
                  description = "Gets Assured Workload associated with a CRM Node",
                  flatPath = "v1/organizations/{organizationsId}/locations/{locationsId}/workloads/{workloadsId}",
                  httpMethod = "GET",
                  id = "assuredworkloads.organizations.locations.workloads.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The resource name of the Workload to fetch. This is the workload's relative path in the API, formatted as \"organizations/{organization_id}/locations/{location_id}/workloads/{workload_id}\". For example, \"organizations/123/locations/us-east1/workloads/assured-workload-1\".",
                      location = "path",
                      pattern = "^organizations/[^/]+/locations/[^/]+/workloads/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "GoogleCloudAssuredworkloadsV1Workload",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                list = {
                  description = "Lists Assured Workloads under a CRM Node.",
                  flatPath = "v1/organizations/{organizationsId}/locations/{locationsId}/workloads",
                  httpMethod = "GET",
                  id = "assuredworkloads.organizations.locations.workloads.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    filter = {
                      description = "A custom filter for filtering by properties of a workload. At this time, only filtering by labels is supported.",
                      location = "query",
                      type = "string",
                    },
                    pageSize = {
                      description = "Page size.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "Page token returned from previous request. Page token contains context from previous request. Page token needs to be passed in the second and following requests.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. Parent Resource to list workloads from. Must be of the form `organizations/{org_id}/locations/{location}`.",
                      location = "path",
                      pattern = "^organizations/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/workloads",
                  response = {
                    ["$ref"] = "GoogleCloudAssuredworkloadsV1ListWorkloadsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                mutatePartnerPermissions = {
                  description = "Update the permissions settings for an existing partner workload. For force updates don't set etag field in the Workload. Only one update operation per workload can be in progress.",
                  flatPath = "v1/organizations/{organizationsId}/locations/{locationsId}/workloads/{workloadsId}:mutatePartnerPermissions",
                  httpMethod = "PATCH",
                  id = "assuredworkloads.organizations.locations.workloads.mutatePartnerPermissions",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The `name` field is used to identify the workload. Format: organizations/{org_id}/locations/{location_id}/workloads/{workload_id}",
                      location = "path",
                      pattern = "^organizations/[^/]+/locations/[^/]+/workloads/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}:mutatePartnerPermissions",
                  request = {
                    ["$ref"] = "GoogleCloudAssuredworkloadsV1MutatePartnerPermissionsRequest",
                  },
                  response = {
                    ["$ref"] = "GoogleCloudAssuredworkloadsV1Workload",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                patch = {
                  description = "Updates an existing workload. Currently allows updating of workload display_name and labels. For force updates don't set etag field in the Workload. Only one update operation per workload can be in progress.",
                  flatPath = "v1/organizations/{organizationsId}/locations/{locationsId}/workloads/{workloadsId}",
                  httpMethod = "PATCH",
                  id = "assuredworkloads.organizations.locations.workloads.patch",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Optional. The resource name of the workload. Format: organizations/{organization}/locations/{location}/workloads/{workload} Read-only.",
                      location = "path",
                      pattern = "^organizations/[^/]+/locations/[^/]+/workloads/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    updateMask = {
                      description = "Required. The list of fields to be updated.",
                      format = "google-fieldmask",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  request = {
                    ["$ref"] = "GoogleCloudAssuredworkloadsV1Workload",
                  },
                  response = {
                    ["$ref"] = "GoogleCloudAssuredworkloadsV1Workload",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                restrictAllowedResources = {
                  description = "Restrict the list of resources allowed in the Workload environment. The current list of allowed products can be found at https://cloud.google.com/assured-workloads/docs/supported-products In addition to assuredworkloads.workload.update permission, the user should also have orgpolicy.policy.set permission on the folder resource to use this functionality.",
                  flatPath = "v1/organizations/{organizationsId}/locations/{locationsId}/workloads/{workloadsId}:restrictAllowedResources",
                  httpMethod = "POST",
                  id = "assuredworkloads.organizations.locations.workloads.restrictAllowedResources",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The resource name of the Workload. This is the workloads's relative path in the API, formatted as \"organizations/{organization_id}/locations/{location_id}/workloads/{workload_id}\". For example, \"organizations/123/locations/us-east1/workloads/assured-workload-1\".",
                      location = "path",
                      pattern = "^organizations/[^/]+/locations/[^/]+/workloads/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}:restrictAllowedResources",
                  request = {
                    ["$ref"] = "GoogleCloudAssuredworkloadsV1RestrictAllowedResourcesRequest",
                  },
                  response = {
                    ["$ref"] = "GoogleCloudAssuredworkloadsV1RestrictAllowedResourcesResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
              },
              resources = {
                violations = {
                  methods = {
                    acknowledge = {
                      description = "Acknowledges an existing violation. By acknowledging a violation, users acknowledge the existence of a compliance violation in their workload and decide to ignore it due to a valid business justification. Acknowledgement is a permanent operation and it cannot be reverted.",
                      flatPath = "v1/organizations/{organizationsId}/locations/{locationsId}/workloads/{workloadsId}/violations/{violationsId}:acknowledge",
                      httpMethod = "POST",
                      id = "assuredworkloads.organizations.locations.workloads.violations.acknowledge",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The resource name of the Violation to acknowledge. Format: organizations/{organization}/locations/{location}/workloads/{workload}/violations/{violation}",
                          location = "path",
                          pattern = "^organizations/[^/]+/locations/[^/]+/workloads/[^/]+/violations/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}:acknowledge",
                      request = {
                        ["$ref"] = "GoogleCloudAssuredworkloadsV1AcknowledgeViolationRequest",
                      },
                      response = {
                        ["$ref"] = "GoogleCloudAssuredworkloadsV1AcknowledgeViolationResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    get = {
                      description = "Retrieves Assured Workload Violation based on ID.",
                      flatPath = "v1/organizations/{organizationsId}/locations/{locationsId}/workloads/{workloadsId}/violations/{violationsId}",
                      httpMethod = "GET",
                      id = "assuredworkloads.organizations.locations.workloads.violations.get",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The resource name of the Violation to fetch (ie. Violation.name). Format: organizations/{organization}/locations/{location}/workloads/{workload}/violations/{violation}",
                          location = "path",
                          pattern = "^organizations/[^/]+/locations/[^/]+/workloads/[^/]+/violations/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}",
                      response = {
                        ["$ref"] = "GoogleCloudAssuredworkloadsV1Violation",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    list = {
                      description = "Lists the Violations in the AssuredWorkload Environment. Callers may also choose to read across multiple Workloads as per [AIP-159](https://google.aip.dev/159) by using '-' (the hyphen or dash character) as a wildcard character instead of workload-id in the parent. Format `organizations/{org_id}/locations/{location}/workloads/-`",
                      flatPath = "v1/organizations/{organizationsId}/locations/{locationsId}/workloads/{workloadsId}/violations",
                      httpMethod = "GET",
                      id = "assuredworkloads.organizations.locations.workloads.violations.list",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        filter = {
                          description = "Optional. A custom filter for filtering by the Violations properties.",
                          location = "query",
                          type = "string",
                        },
                        ["interval.endTime"] = {
                          description = "The end of the time window.",
                          format = "google-datetime",
                          location = "query",
                          type = "string",
                        },
                        ["interval.startTime"] = {
                          description = "The start of the time window.",
                          format = "google-datetime",
                          location = "query",
                          type = "string",
                        },
                        pageSize = {
                          description = "Optional. Page size.",
                          format = "int32",
                          location = "query",
                          type = "integer",
                        },
                        pageToken = {
                          description = "Optional. Page token returned from previous request.",
                          location = "query",
                          type = "string",
                        },
                        parent = {
                          description = "Required. The Workload name. Format `organizations/{org_id}/locations/{location}/workloads/{workload}`.",
                          location = "path",
                          pattern = "^organizations/[^/]+/locations/[^/]+/workloads/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/violations",
                      response = {
                        ["$ref"] = "GoogleCloudAssuredworkloadsV1ListViolationsResponse",
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
  revision = "20221229",
  rootUrl = "https://assuredworkloads.googleapis.com/",
  schemas = {
    GoogleCloudAssuredworkloadsV1AcknowledgeViolationRequest = {
      description = "Request for acknowledging the violation Next Id: 4",
      id = "GoogleCloudAssuredworkloadsV1AcknowledgeViolationRequest",
      properties = {
        comment = {
          description = "Required. Business justification explaining the need for violation acknowledgement",
          type = "string",
        },
        nonCompliantOrgPolicy = {
          description = "Optional. This field is deprecated and will be removed in future version of the API. Name of the OrgPolicy which was modified with non-compliant change and resulted in this violation. Format: projects/{project_number}/policies/{constraint_name} folders/{folder_id}/policies/{constraint_name} organizations/{organization_id}/policies/{constraint_name}",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudAssuredworkloadsV1AcknowledgeViolationResponse = {
      description = "Response for violation acknowledgement",
      id = "GoogleCloudAssuredworkloadsV1AcknowledgeViolationResponse",
      properties = {},
      type = "object",
    },
    GoogleCloudAssuredworkloadsV1CreateWorkloadOperationMetadata = {
      description = "Operation metadata to give request details of CreateWorkload.",
      id = "GoogleCloudAssuredworkloadsV1CreateWorkloadOperationMetadata",
      properties = {
        complianceRegime = {
          description = "Optional. Compliance controls that should be applied to the resources managed by the workload.",
          enum = {
            "COMPLIANCE_REGIME_UNSPECIFIED",
            "IL4",
            "CJIS",
            "FEDRAMP_HIGH",
            "FEDRAMP_MODERATE",
            "US_REGIONAL_ACCESS",
            "HIPAA",
            "HITRUST",
            "EU_REGIONS_AND_SUPPORT",
            "CA_REGIONS_AND_SUPPORT",
            "ITAR",
            "AU_REGIONS_AND_US_SUPPORT",
            "ASSURED_WORKLOADS_FOR_PARTNERS",
            "ISR_REGIONS",
          },
          enumDescriptions = {
            "Unknown compliance regime.",
            "Information protection as per DoD IL4 requirements.",
            "Criminal Justice Information Services (CJIS) Security policies.",
            "FedRAMP High data protection controls",
            "FedRAMP Moderate data protection controls",
            "Assured Workloads For US Regions data protection controls",
            "Health Insurance Portability and Accountability Act controls",
            "Health Information Trust Alliance controls",
            "Assured Workloads For EU Regions and Support controls",
            "Assured Workloads For Canada Regions and Support controls",
            "International Traffic in Arms Regulations",
            "Assured Workloads for Australia Regions and Support controls Available for public preview consumption. Don't create production workloads.",
            "Assured Workloads for Partners",
            "Assured Workloads for Israel Regions",
          },
          type = "string",
        },
        createTime = {
          description = "Optional. Time when the operation was created.",
          format = "google-datetime",
          type = "string",
        },
        displayName = {
          description = "Optional. The display name of the workload.",
          type = "string",
        },
        parent = {
          description = "Optional. The parent of the workload.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudAssuredworkloadsV1ListViolationsResponse = {
      description = "Response of ListViolations endpoint.",
      id = "GoogleCloudAssuredworkloadsV1ListViolationsResponse",
      properties = {
        nextPageToken = {
          description = "The next page token. Returns empty if reached the last page.",
          type = "string",
        },
        violations = {
          description = "List of Violations under a Workload.",
          items = {
            ["$ref"] = "GoogleCloudAssuredworkloadsV1Violation",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudAssuredworkloadsV1ListWorkloadsResponse = {
      description = "Response of ListWorkloads endpoint.",
      id = "GoogleCloudAssuredworkloadsV1ListWorkloadsResponse",
      properties = {
        nextPageToken = {
          description = "The next page token. Return empty if reached the last page.",
          type = "string",
        },
        workloads = {
          description = "List of Workloads under a given parent.",
          items = {
            ["$ref"] = "GoogleCloudAssuredworkloadsV1Workload",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudAssuredworkloadsV1MutatePartnerPermissionsRequest = {
      description = "Request of updating permission settings for a partner workload.",
      id = "GoogleCloudAssuredworkloadsV1MutatePartnerPermissionsRequest",
      properties = {
        etag = {
          description = "Optional. The etag of the workload. If this is provided, it must match the server's etag.",
          type = "string",
        },
        partnerPermissions = {
          ["$ref"] = "GoogleCloudAssuredworkloadsV1WorkloadPartnerPermissions",
          description = "Required. The partner permissions to be updated.",
        },
        updateMask = {
          description = "Required. The list of fields to be updated. E.g. update_mask { paths: \"partner_permissions.data_logs_viewer\"}",
          format = "google-fieldmask",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudAssuredworkloadsV1RestrictAllowedResourcesRequest = {
      description = "Request for restricting list of available resources in Workload environment.",
      id = "GoogleCloudAssuredworkloadsV1RestrictAllowedResourcesRequest",
      properties = {
        restrictionType = {
          description = "Required. The type of restriction for using gcp products in the Workload environment.",
          enum = {
            "RESTRICTION_TYPE_UNSPECIFIED",
            "ALLOW_ALL_GCP_RESOURCES",
            "ALLOW_COMPLIANT_RESOURCES",
            "APPEND_COMPLIANT_RESOURCES",
          },
          enumDescriptions = {
            "Unknown restriction type.",
            "Allow the use all of all gcp products, irrespective of the compliance posture. This effectively removes gcp.restrictServiceUsage OrgPolicy on the AssuredWorkloads Folder.",
            "Based on Workload's compliance regime, allowed list changes. See - https://cloud.google.com/assured-workloads/docs/supported-products for the list of supported resources.",
            "Similar to ALLOW_COMPLIANT_RESOURCES but adds the list of compliant resources to the existing list of resources. Effective org-policy of the Folder is considered to ensure there is no disruption to the existing customer workflows.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudAssuredworkloadsV1RestrictAllowedResourcesResponse = {
      description = "Response for restricting the list of allowed resources.",
      id = "GoogleCloudAssuredworkloadsV1RestrictAllowedResourcesResponse",
      properties = {},
      type = "object",
    },
    GoogleCloudAssuredworkloadsV1Violation = {
      description = "Workload monitoring Violation. Next Id: 22",
      id = "GoogleCloudAssuredworkloadsV1Violation",
      properties = {
        acknowledged = {
          description = "A boolean that indicates if the violation is acknowledged",
          type = "boolean",
        },
        acknowledgementTime = {
          description = "Optional. Timestamp when this violation was acknowledged last. This will be absent when acknowledged field is marked as false.",
          format = "google-datetime",
          type = "string",
        },
        auditLogLink = {
          description = "Output only. Immutable. Audit Log Link for violated resource Format: https://console.cloud.google.com/logs/query;query={logName}{protoPayload.resourceName}{timeRange}{folder}",
          readOnly = true,
          type = "string",
        },
        beginTime = {
          description = "Output only. Time of the event which triggered the Violation.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        category = {
          description = "Output only. Category under which this violation is mapped. e.g. Location, Service Usage, Access, Encryption, etc.",
          readOnly = true,
          type = "string",
        },
        description = {
          description = "Output only. Description for the Violation. e.g. OrgPolicy gcp.resourceLocations has non compliant value.",
          readOnly = true,
          type = "string",
        },
        exceptionAuditLogLink = {
          description = "Output only. Immutable. Audit Log link to find business justification provided for violation exception. Format: https://console.cloud.google.com/logs/query;query={logName}{protoPayload.resourceName}{protoPayload.methodName}{timeRange}{organization}",
          readOnly = true,
          type = "string",
        },
        name = {
          description = "Output only. Immutable. Name of the Violation. Format: organizations/{organization}/locations/{location}/workloads/{workload_id}/violations/{violations_id}",
          readOnly = true,
          type = "string",
        },
        nonCompliantOrgPolicy = {
          description = "Output only. Immutable. Name of the OrgPolicy which was modified with non-compliant change and resulted this violation. Format: projects/{project_number}/policies/{constraint_name} folders/{folder_id}/policies/{constraint_name} organizations/{organization_id}/policies/{constraint_name}",
          readOnly = true,
          type = "string",
        },
        orgPolicyConstraint = {
          description = "Output only. Immutable. The org-policy-constraint that was incorrectly changed, which resulted in this violation.",
          readOnly = true,
          type = "string",
        },
        remediation = {
          ["$ref"] = "GoogleCloudAssuredworkloadsV1ViolationRemediation",
          description = "Output only. Compliance violation remediation",
          readOnly = true,
        },
        resolveTime = {
          description = "Output only. Time of the event which fixed the Violation. If the violation is ACTIVE this will be empty.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        state = {
          description = "Output only. State of the violation",
          enum = {
            "STATE_UNSPECIFIED",
            "RESOLVED",
            "UNRESOLVED",
            "EXCEPTION",
          },
          enumDescriptions = {
            "Unspecified state.",
            "Violation is resolved.",
            "Violation is Unresolved",
            "Violation is Exception",
          },
          readOnly = true,
          type = "string",
        },
        updateTime = {
          description = "Output only. The last time when the Violation record was updated.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudAssuredworkloadsV1ViolationRemediation = {
      description = "Represents remediation guidance to resolve compliance violation for AssuredWorkload",
      id = "GoogleCloudAssuredworkloadsV1ViolationRemediation",
      properties = {
        compliantValues = {
          description = "Values that can resolve the violation For example: for list org policy violations, this will either be the list of allowed or denied values",
          items = {
            type = "string",
          },
          type = "array",
        },
        instructions = {
          ["$ref"] = "GoogleCloudAssuredworkloadsV1ViolationRemediationInstructions",
          description = "Required. Remediation instructions to resolve violations",
        },
        remediationType = {
          description = "Output only. Reemediation type based on the type of org policy values violated",
          enum = {
            "REMEDIATION_TYPE_UNSPECIFIED",
            "REMEDIATION_BOOLEAN_ORG_POLICY_VIOLATION",
            "REMEDIATION_LIST_ALLOWED_VALUES_ORG_POLICY_VIOLATION",
            "REMEDIATION_LIST_DENIED_VALUES_ORG_POLICY_VIOLATION",
            "REMEDIATION_RESTRICT_CMEK_CRYPTO_KEY_PROJECTS_ORG_POLICY_VIOLATION",
          },
          enumDescriptions = {
            "Unspecified remediation type",
            "Remediation type for boolean org policy",
            "Remediation type for list org policy which have allowed values in the monitoring rule",
            "Remediation type for list org policy which have denied values in the monitoring rule",
            "Remediation type for gcp.restrictCmekCryptoKeyProjects",
          },
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudAssuredworkloadsV1ViolationRemediationInstructions = {
      description = "Instructions to remediate violation",
      id = "GoogleCloudAssuredworkloadsV1ViolationRemediationInstructions",
      properties = {
        consoleInstructions = {
          ["$ref"] = "GoogleCloudAssuredworkloadsV1ViolationRemediationInstructionsConsole",
          description = "Remediation instructions to resolve violation via cloud console",
        },
        gcloudInstructions = {
          ["$ref"] = "GoogleCloudAssuredworkloadsV1ViolationRemediationInstructionsGcloud",
          description = "Remediation instructions to resolve violation via gcloud cli",
        },
      },
      type = "object",
    },
    GoogleCloudAssuredworkloadsV1ViolationRemediationInstructionsConsole = {
      description = "Remediation instructions to resolve violation via cloud console",
      id = "GoogleCloudAssuredworkloadsV1ViolationRemediationInstructionsConsole",
      properties = {
        additionalLinks = {
          description = "Additional urls for more information about steps",
          items = {
            type = "string",
          },
          type = "array",
        },
        consoleUris = {
          description = "Link to console page where violations can be resolved",
          items = {
            type = "string",
          },
          type = "array",
        },
        steps = {
          description = "Steps to resolve violation via cloud console",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudAssuredworkloadsV1ViolationRemediationInstructionsGcloud = {
      description = "Remediation instructions to resolve violation via gcloud cli",
      id = "GoogleCloudAssuredworkloadsV1ViolationRemediationInstructionsGcloud",
      properties = {
        additionalLinks = {
          description = "Additional urls for more information about steps",
          items = {
            type = "string",
          },
          type = "array",
        },
        gcloudCommands = {
          description = "Gcloud command to resolve violation",
          items = {
            type = "string",
          },
          type = "array",
        },
        steps = {
          description = "Steps to resolve violation via gcloud cli",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudAssuredworkloadsV1Workload = {
      description = "A Workload object for managing highly regulated workloads of cloud customers.",
      id = "GoogleCloudAssuredworkloadsV1Workload",
      properties = {
        billingAccount = {
          description = "Optional. The billing account used for the resources which are direct children of workload. This billing account is initially associated with the resources created as part of Workload creation. After the initial creation of these resources, the customer can change the assigned billing account. The resource name has the form `billingAccounts/{billing_account_id}`. For example, `billingAccounts/012345-567890-ABCDEF`.",
          type = "string",
        },
        complianceRegime = {
          description = "Required. Immutable. Compliance Regime associated with this workload.",
          enum = {
            "COMPLIANCE_REGIME_UNSPECIFIED",
            "IL4",
            "CJIS",
            "FEDRAMP_HIGH",
            "FEDRAMP_MODERATE",
            "US_REGIONAL_ACCESS",
            "HIPAA",
            "HITRUST",
            "EU_REGIONS_AND_SUPPORT",
            "CA_REGIONS_AND_SUPPORT",
            "ITAR",
            "AU_REGIONS_AND_US_SUPPORT",
            "ASSURED_WORKLOADS_FOR_PARTNERS",
            "ISR_REGIONS",
          },
          enumDescriptions = {
            "Unknown compliance regime.",
            "Information protection as per DoD IL4 requirements.",
            "Criminal Justice Information Services (CJIS) Security policies.",
            "FedRAMP High data protection controls",
            "FedRAMP Moderate data protection controls",
            "Assured Workloads For US Regions data protection controls",
            "Health Insurance Portability and Accountability Act controls",
            "Health Information Trust Alliance controls",
            "Assured Workloads For EU Regions and Support controls",
            "Assured Workloads For Canada Regions and Support controls",
            "International Traffic in Arms Regulations",
            "Assured Workloads for Australia Regions and Support controls Available for public preview consumption. Don't create production workloads.",
            "Assured Workloads for Partners",
            "Assured Workloads for Israel Regions",
          },
          type = "string",
        },
        complianceStatus = {
          ["$ref"] = "GoogleCloudAssuredworkloadsV1WorkloadComplianceStatus",
          description = "Output only. Count of active Violations in the Workload.",
          readOnly = true,
        },
        compliantButDisallowedServices = {
          description = "Output only. Urls for services which are compliant for this Assured Workload, but which are currently disallowed by the ResourceUsageRestriction org policy. Invoke RestrictAllowedResources endpoint to allow your project developers to use these services in their environment.\"",
          items = {
            type = "string",
          },
          readOnly = true,
          type = "array",
        },
        createTime = {
          description = "Output only. Immutable. The Workload creation timestamp.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        displayName = {
          description = "Required. The user-assigned display name of the Workload. When present it must be between 4 to 30 characters. Allowed characters are: lowercase and uppercase letters, numbers, hyphen, and spaces. Example: My Workload",
          type = "string",
        },
        enableSovereignControls = {
          description = "Optional. Indicates the sovereignty status of the given workload. Currently meant to be used by Europe/Canada customers.",
          type = "boolean",
        },
        etag = {
          description = "Optional. ETag of the workload, it is calculated on the basis of the Workload contents. It will be used in Update & Delete operations.",
          type = "string",
        },
        kajEnrollmentState = {
          description = "Output only. Represents the KAJ enrollment state of the given workload.",
          enum = {
            "KAJ_ENROLLMENT_STATE_UNSPECIFIED",
            "KAJ_ENROLLMENT_STATE_PENDING",
            "KAJ_ENROLLMENT_STATE_COMPLETE",
          },
          enumDescriptions = {
            "Default State for KAJ Enrollment.",
            "Pending State for KAJ Enrollment.",
            "Complete State for KAJ Enrollment.",
          },
          readOnly = true,
          type = "string",
        },
        kmsSettings = {
          ["$ref"] = "GoogleCloudAssuredworkloadsV1WorkloadKMSSettings",
          description = "Input only. Settings used to create a CMEK crypto key. When set, a project with a KMS CMEK key is provisioned. This field is deprecated as of Feb 28, 2022. In order to create a Keyring, callers should specify, ENCRYPTION_KEYS_PROJECT or KEYRING in ResourceSettings.resource_type field.",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "Optional. Labels applied to the workload.",
          type = "object",
        },
        name = {
          description = "Optional. The resource name of the workload. Format: organizations/{organization}/locations/{location}/workloads/{workload} Read-only.",
          type = "string",
        },
        partner = {
          description = "Optional. Partner regime associated with this workload.",
          enum = {
            "PARTNER_UNSPECIFIED",
            "LOCAL_CONTROLS_BY_S3NS",
            "SOVEREIGN_CONTROLS_BY_T_SYSTEMS",
          },
          enumDescriptions = {
            "",
            "Enum representing S3NS partner.",
            "Enum representing T_SYSTEM partner.",
          },
          type = "string",
        },
        provisionedResourcesParent = {
          description = "Input only. The parent resource for the resources managed by this Assured Workload. May be either empty or a folder resource which is a child of the Workload parent. If not specified all resources are created under the parent organization. Format: folders/{folder_id}",
          type = "string",
        },
        resourceSettings = {
          description = "Input only. Resource properties that are used to customize workload resources. These properties (such as custom project id) will be used to create workload resources if possible. This field is optional.",
          items = {
            ["$ref"] = "GoogleCloudAssuredworkloadsV1WorkloadResourceSettings",
          },
          type = "array",
        },
        resources = {
          description = "Output only. The resources associated with this workload. These resources will be created when creating the workload. If any of the projects already exist, the workload creation will fail. Always read only.",
          items = {
            ["$ref"] = "GoogleCloudAssuredworkloadsV1WorkloadResourceInfo",
          },
          readOnly = true,
          type = "array",
        },
        saaEnrollmentResponse = {
          ["$ref"] = "GoogleCloudAssuredworkloadsV1WorkloadSaaEnrollmentResponse",
          description = "Output only. Represents the SAA enrollment response of the given workload. SAA enrollment response is queried during GetWorkload call. In failure cases, user friendly error message is shown in SAA details page.",
          readOnly = true,
        },
      },
      type = "object",
    },
    GoogleCloudAssuredworkloadsV1WorkloadComplianceStatus = {
      description = "Represents the Compliance Status of this workload",
      id = "GoogleCloudAssuredworkloadsV1WorkloadComplianceStatus",
      properties = {
        acknowledgedViolationCount = {
          description = "Count of active Violations which are acknowledged in the Workload.",
          format = "int32",
          type = "integer",
        },
        activeViolationCount = {
          description = "Count of active Violations which haven't been acknowledged.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    GoogleCloudAssuredworkloadsV1WorkloadKMSSettings = {
      description = "Settings specific to the Key Management Service. This message is deprecated. In order to create a Keyring, callers should specify, ENCRYPTION_KEYS_PROJECT or KEYRING in ResourceSettings.resource_type field.",
      id = "GoogleCloudAssuredworkloadsV1WorkloadKMSSettings",
      properties = {
        nextRotationTime = {
          description = "Required. Input only. Immutable. The time at which the Key Management Service will automatically create a new version of the crypto key and mark it as the primary.",
          format = "google-datetime",
          type = "string",
        },
        rotationPeriod = {
          description = "Required. Input only. Immutable. [next_rotation_time] will be advanced by this period when the Key Management Service automatically rotates a key. Must be at least 24 hours and at most 876,000 hours.",
          format = "google-duration",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudAssuredworkloadsV1WorkloadPartnerPermissions = {
      description = "Permissions granted to the AW Partner SA account for the customer workload",
      id = "GoogleCloudAssuredworkloadsV1WorkloadPartnerPermissions",
      properties = {
        dataLogsViewer = {
          description = "Allow partner to view data and logs",
          type = "boolean",
        },
        remediateFolderViolations = {
          description = "Allow partner to monitor folder and remediate violations",
          type = "boolean",
        },
        serviceAccessApprover = {
          description = "Allow partner to approve or reject Service Access requests",
          type = "boolean",
        },
      },
      type = "object",
    },
    GoogleCloudAssuredworkloadsV1WorkloadResourceInfo = {
      description = "Represent the resources that are children of this Workload.",
      id = "GoogleCloudAssuredworkloadsV1WorkloadResourceInfo",
      properties = {
        resourceId = {
          description = "Resource identifier. For a project this represents project_number.",
          format = "int64",
          type = "string",
        },
        resourceType = {
          description = "Indicates the type of resource.",
          enum = {
            "RESOURCE_TYPE_UNSPECIFIED",
            "CONSUMER_PROJECT",
            "CONSUMER_FOLDER",
            "ENCRYPTION_KEYS_PROJECT",
            "KEYRING",
          },
          enumDescriptions = {
            "Unknown resource type.",
            "Consumer project. AssuredWorkloads Projects are no longer supported. This field will be ignored only in CreateWorkload requests. ListWorkloads and GetWorkload will continue to provide projects information. Use CONSUMER_FOLDER instead.",
            "Consumer Folder.",
            "Consumer project containing encryption keys.",
            "Keyring resource that hosts encryption keys.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudAssuredworkloadsV1WorkloadResourceSettings = {
      description = "Represent the custom settings for the resources to be created.",
      id = "GoogleCloudAssuredworkloadsV1WorkloadResourceSettings",
      properties = {
        displayName = {
          description = "User-assigned resource display name. If not empty it will be used to create a resource with the specified name.",
          type = "string",
        },
        resourceId = {
          description = "Resource identifier. For a project this represents project_id. If the project is already taken, the workload creation will fail. For KeyRing, this represents the keyring_id. For a folder, don't set this value as folder_id is assigned by Google.",
          type = "string",
        },
        resourceType = {
          description = "Indicates the type of resource. This field should be specified to correspond the id to the right resource type (CONSUMER_FOLDER or ENCRYPTION_KEYS_PROJECT)",
          enum = {
            "RESOURCE_TYPE_UNSPECIFIED",
            "CONSUMER_PROJECT",
            "CONSUMER_FOLDER",
            "ENCRYPTION_KEYS_PROJECT",
            "KEYRING",
          },
          enumDescriptions = {
            "Unknown resource type.",
            "Consumer project. AssuredWorkloads Projects are no longer supported. This field will be ignored only in CreateWorkload requests. ListWorkloads and GetWorkload will continue to provide projects information. Use CONSUMER_FOLDER instead.",
            "Consumer Folder.",
            "Consumer project containing encryption keys.",
            "Keyring resource that hosts encryption keys.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudAssuredworkloadsV1WorkloadSaaEnrollmentResponse = {
      description = "Signed Access Approvals (SAA) enrollment response.",
      id = "GoogleCloudAssuredworkloadsV1WorkloadSaaEnrollmentResponse",
      properties = {
        setupErrors = {
          description = "Indicates SAA enrollment setup error if any.",
          items = {
            enum = {
              "SETUP_ERROR_UNSPECIFIED",
              "ERROR_INVALID_BASE_SETUP",
              "ERROR_MISSING_EXTERNAL_SIGNING_KEY",
              "ERROR_NOT_ALL_SERVICES_ENROLLED",
              "ERROR_SETUP_CHECK_FAILED",
            },
            enumDescriptions = {
              "Unspecified.",
              "Invalid states for all customers, to be redirected to AA UI for additional details.",
              "Returned when there is not an EKM key configured.",
              "Returned when there are no enrolled services or the customer is enrolled in CAA only for a subset of services.",
              "Returned when exception was encountered during evaluation of other criteria.",
            },
            type = "string",
          },
          type = "array",
        },
        setupStatus = {
          description = "Indicates SAA enrollment status of a given workload.",
          enum = {
            "SETUP_STATE_UNSPECIFIED",
            "STATUS_PENDING",
            "STATUS_COMPLETE",
          },
          enumDescriptions = {
            "Unspecified.",
            "SAA enrollment pending.",
            "SAA enrollment comopleted.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleLongrunningListOperationsResponse = {
      description = "The response message for Operations.ListOperations.",
      id = "GoogleLongrunningListOperationsResponse",
      properties = {
        nextPageToken = {
          description = "The standard List next-page token.",
          type = "string",
        },
        operations = {
          description = "A list of operations that matches the specified filter in the request.",
          items = {
            ["$ref"] = "GoogleLongrunningOperation",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleLongrunningOperation = {
      description = "This resource represents a long-running operation that is the result of a network API call.",
      id = "GoogleLongrunningOperation",
      properties = {
        done = {
          description = "If the value is `false`, it means the operation is still in progress. If `true`, the operation is completed, and either `error` or `response` is available.",
          type = "boolean",
        },
        error = {
          ["$ref"] = "GoogleRpcStatus",
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
    GoogleProtobufEmpty = {
      description = "A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }",
      id = "GoogleProtobufEmpty",
      properties = {},
      type = "object",
    },
    GoogleRpcStatus = {
      description = "The `Status` type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by [gRPC](https://github.com/grpc). Each `Status` message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the [API Design Guide](https://cloud.google.com/apis/design/errors).",
      id = "GoogleRpcStatus",
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
  },
  servicePath = "",
  title = "Assured Workloads API",
  version = "v1",
  version_module = true,
}
