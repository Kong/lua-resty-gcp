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
      },
    },
  },
  basePath = "",
  baseUrl = "https://cloudresourcemanager.googleapis.com/",
  batchPath = "batch",
  canonicalName = "Cloud Resource Manager",
  description = "Creates, reads, and updates metadata for Google Cloud Platform resource containers.",
  discoveryVersion = "v1",
  documentationLink = "https://cloud.google.com/resource-manager",
  fullyEncodeReservedExpansion = true,
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "cloudresourcemanager:v1",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://cloudresourcemanager.mtls.googleapis.com/",
  name = "cloudresourcemanager",
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
      methods = {
        clearOrgPolicy = {
          description = "Clears a `Policy` from a resource.",
          flatPath = "v1/folders/{foldersId}:clearOrgPolicy",
          httpMethod = "POST",
          id = "cloudresourcemanager.folders.clearOrgPolicy",
          parameterOrder = {
            "resource",
          },
          parameters = {
            resource = {
              description = "Name of the resource for the `Policy` to clear.",
              location = "path",
              pattern = "^folders/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "v1/{+resource}:clearOrgPolicy",
          request = {
            ["$ref"] = "ClearOrgPolicyRequest",
          },
          response = {
            ["$ref"] = "Empty",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
        getEffectiveOrgPolicy = {
          description = "Gets the effective `Policy` on a resource. This is the result of merging `Policies` in the resource hierarchy. The returned `Policy` will not have an `etag`set because it is a computed `Policy` across multiple resources. Subtrees of Resource Manager resource hierarchy with 'under:' prefix will not be expanded.",
          flatPath = "v1/folders/{foldersId}:getEffectiveOrgPolicy",
          httpMethod = "POST",
          id = "cloudresourcemanager.folders.getEffectiveOrgPolicy",
          parameterOrder = {
            "resource",
          },
          parameters = {
            resource = {
              description = "The name of the resource to start computing the effective `Policy`.",
              location = "path",
              pattern = "^folders/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "v1/{+resource}:getEffectiveOrgPolicy",
          request = {
            ["$ref"] = "GetEffectiveOrgPolicyRequest",
          },
          response = {
            ["$ref"] = "OrgPolicy",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/cloud-platform.read-only",
          },
        },
        getOrgPolicy = {
          description = "Gets a `Policy` on a resource. If no `Policy` is set on the resource, a `Policy` is returned with default values including `POLICY_TYPE_NOT_SET` for the `policy_type oneof`. The `etag` value can be used with `SetOrgPolicy()` to create or update a `Policy` during read-modify-write.",
          flatPath = "v1/folders/{foldersId}:getOrgPolicy",
          httpMethod = "POST",
          id = "cloudresourcemanager.folders.getOrgPolicy",
          parameterOrder = {
            "resource",
          },
          parameters = {
            resource = {
              description = "Name of the resource the `Policy` is set on.",
              location = "path",
              pattern = "^folders/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "v1/{+resource}:getOrgPolicy",
          request = {
            ["$ref"] = "GetOrgPolicyRequest",
          },
          response = {
            ["$ref"] = "OrgPolicy",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/cloud-platform.read-only",
          },
        },
        listAvailableOrgPolicyConstraints = {
          description = "Lists `Constraints` that could be applied on the specified resource.",
          flatPath = "v1/folders/{foldersId}:listAvailableOrgPolicyConstraints",
          httpMethod = "POST",
          id = "cloudresourcemanager.folders.listAvailableOrgPolicyConstraints",
          parameterOrder = {
            "resource",
          },
          parameters = {
            resource = {
              description = "Name of the resource to list `Constraints` for.",
              location = "path",
              pattern = "^folders/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "v1/{+resource}:listAvailableOrgPolicyConstraints",
          request = {
            ["$ref"] = "ListAvailableOrgPolicyConstraintsRequest",
          },
          response = {
            ["$ref"] = "ListAvailableOrgPolicyConstraintsResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/cloud-platform.read-only",
          },
        },
        listOrgPolicies = {
          description = "Lists all the `Policies` set for a particular resource.",
          flatPath = "v1/folders/{foldersId}:listOrgPolicies",
          httpMethod = "POST",
          id = "cloudresourcemanager.folders.listOrgPolicies",
          parameterOrder = {
            "resource",
          },
          parameters = {
            resource = {
              description = "Name of the resource to list Policies for.",
              location = "path",
              pattern = "^folders/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "v1/{+resource}:listOrgPolicies",
          request = {
            ["$ref"] = "ListOrgPoliciesRequest",
          },
          response = {
            ["$ref"] = "ListOrgPoliciesResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/cloud-platform.read-only",
          },
        },
        setOrgPolicy = {
          description = "Updates the specified `Policy` on the resource. Creates a new `Policy` for that `Constraint` on the resource if one does not exist. Not supplying an `etag` on the request `Policy` results in an unconditional write of the `Policy`.",
          flatPath = "v1/folders/{foldersId}:setOrgPolicy",
          httpMethod = "POST",
          id = "cloudresourcemanager.folders.setOrgPolicy",
          parameterOrder = {
            "resource",
          },
          parameters = {
            resource = {
              description = "Resource name of the resource to attach the `Policy`.",
              location = "path",
              pattern = "^folders/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "v1/{+resource}:setOrgPolicy",
          request = {
            ["$ref"] = "SetOrgPolicyRequest",
          },
          response = {
            ["$ref"] = "OrgPolicy",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
      },
    },
    liens = {
      methods = {
        create = {
          description = "Create a Lien which applies to the resource denoted by the `parent` field. Callers of this method will require permission on the `parent` resource. For example, applying to `projects/1234` requires permission `resourcemanager.projects.updateLiens`. NOTE: Some resources may limit the number of Liens which may be applied.",
          flatPath = "v1/liens",
          httpMethod = "POST",
          id = "cloudresourcemanager.liens.create",
          parameterOrder = {},
          parameters = {},
          path = "v1/liens",
          request = {
            ["$ref"] = "Lien",
          },
          response = {
            ["$ref"] = "Lien",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/cloud-platform.read-only",
          },
        },
        delete = {
          description = "Delete a Lien by `name`. Callers of this method will require permission on the `parent` resource. For example, a Lien with a `parent` of `projects/1234` requires permission `resourcemanager.projects.updateLiens`.",
          flatPath = "v1/liens/{liensId}",
          httpMethod = "DELETE",
          id = "cloudresourcemanager.liens.delete",
          parameterOrder = {
            "name",
          },
          parameters = {
            name = {
              description = "Required. The name/identifier of the Lien to delete.",
              location = "path",
              pattern = "^liens/.*$",
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
            "https://www.googleapis.com/auth/cloud-platform.read-only",
          },
        },
        get = {
          description = "Retrieve a Lien by `name`. Callers of this method will require permission on the `parent` resource. For example, a Lien with a `parent` of `projects/1234` requires permission `resourcemanager.projects.get`",
          flatPath = "v1/liens/{liensId}",
          httpMethod = "GET",
          id = "cloudresourcemanager.liens.get",
          parameterOrder = {
            "name",
          },
          parameters = {
            name = {
              description = "Required. The name/identifier of the Lien.",
              location = "path",
              pattern = "^liens/.*$",
              required = true,
              type = "string",
            },
          },
          path = "v1/{+name}",
          response = {
            ["$ref"] = "Lien",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/cloud-platform.read-only",
          },
        },
        list = {
          description = "List all Liens applied to the `parent` resource. Callers of this method will require permission on the `parent` resource. For example, a Lien with a `parent` of `projects/1234` requires permission `resourcemanager.projects.get`.",
          flatPath = "v1/liens",
          httpMethod = "GET",
          id = "cloudresourcemanager.liens.list",
          parameterOrder = {},
          parameters = {
            pageSize = {
              description = "The maximum number of items to return. This is a suggestion for the server. The server can return fewer liens than requested. If unspecified, server picks an appropriate default.",
              format = "int32",
              location = "query",
              type = "integer",
            },
            pageToken = {
              description = "The `next_page_token` value returned from a previous List request, if any.",
              location = "query",
              type = "string",
            },
            parent = {
              description = "Required. The name of the resource to list all attached Liens. For example, `projects/1234`. (google.api.field_policy).resource_type annotation is not set since the parent depends on the meta api implementation. This field could be a project or other sub project resources.",
              location = "query",
              type = "string",
            },
          },
          path = "v1/liens",
          response = {
            ["$ref"] = "ListLiensResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/cloud-platform.read-only",
          },
        },
      },
    },
    operations = {
      methods = {
        get = {
          description = "Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.",
          flatPath = "v1/operations/{operationsId}",
          httpMethod = "GET",
          id = "cloudresourcemanager.operations.get",
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
          path = "v1/{+name}",
          response = {
            ["$ref"] = "Operation",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/cloud-platform.read-only",
          },
        },
      },
    },
    organizations = {
      methods = {
        clearOrgPolicy = {
          description = "Clears a `Policy` from a resource.",
          flatPath = "v1/organizations/{organizationsId}:clearOrgPolicy",
          httpMethod = "POST",
          id = "cloudresourcemanager.organizations.clearOrgPolicy",
          parameterOrder = {
            "resource",
          },
          parameters = {
            resource = {
              description = "Name of the resource for the `Policy` to clear.",
              location = "path",
              pattern = "^organizations/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "v1/{+resource}:clearOrgPolicy",
          request = {
            ["$ref"] = "ClearOrgPolicyRequest",
          },
          response = {
            ["$ref"] = "Empty",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
        get = {
          description = "Fetches an Organization resource identified by the specified resource name.",
          flatPath = "v1/organizations/{organizationsId}",
          httpMethod = "GET",
          id = "cloudresourcemanager.organizations.get",
          parameterOrder = {
            "name",
          },
          parameters = {
            name = {
              description = "The resource name of the Organization to fetch. This is the organization's relative path in the API, formatted as \"organizations/[organizationId]\". For example, \"organizations/1234\".",
              location = "path",
              pattern = "^organizations/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "v1/{+name}",
          response = {
            ["$ref"] = "Organization",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/cloud-platform.read-only",
          },
        },
        getEffectiveOrgPolicy = {
          description = "Gets the effective `Policy` on a resource. This is the result of merging `Policies` in the resource hierarchy. The returned `Policy` will not have an `etag`set because it is a computed `Policy` across multiple resources. Subtrees of Resource Manager resource hierarchy with 'under:' prefix will not be expanded.",
          flatPath = "v1/organizations/{organizationsId}:getEffectiveOrgPolicy",
          httpMethod = "POST",
          id = "cloudresourcemanager.organizations.getEffectiveOrgPolicy",
          parameterOrder = {
            "resource",
          },
          parameters = {
            resource = {
              description = "The name of the resource to start computing the effective `Policy`.",
              location = "path",
              pattern = "^organizations/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "v1/{+resource}:getEffectiveOrgPolicy",
          request = {
            ["$ref"] = "GetEffectiveOrgPolicyRequest",
          },
          response = {
            ["$ref"] = "OrgPolicy",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/cloud-platform.read-only",
          },
        },
        getIamPolicy = {
          description = "Gets the access control policy for an Organization resource. May be empty if no such policy or resource exists. The `resource` field should be the organization's resource name, e.g. \"organizations/123\". Authorization requires the Google IAM permission `resourcemanager.organizations.getIamPolicy` on the specified organization",
          flatPath = "v1/organizations/{organizationsId}:getIamPolicy",
          httpMethod = "POST",
          id = "cloudresourcemanager.organizations.getIamPolicy",
          parameterOrder = {
            "resource",
          },
          parameters = {
            resource = {
              description = "REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
              location = "path",
              pattern = "^organizations/[^/]+$",
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
            "https://www.googleapis.com/auth/cloud-platform.read-only",
          },
        },
        getOrgPolicy = {
          description = "Gets a `Policy` on a resource. If no `Policy` is set on the resource, a `Policy` is returned with default values including `POLICY_TYPE_NOT_SET` for the `policy_type oneof`. The `etag` value can be used with `SetOrgPolicy()` to create or update a `Policy` during read-modify-write.",
          flatPath = "v1/organizations/{organizationsId}:getOrgPolicy",
          httpMethod = "POST",
          id = "cloudresourcemanager.organizations.getOrgPolicy",
          parameterOrder = {
            "resource",
          },
          parameters = {
            resource = {
              description = "Name of the resource the `Policy` is set on.",
              location = "path",
              pattern = "^organizations/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "v1/{+resource}:getOrgPolicy",
          request = {
            ["$ref"] = "GetOrgPolicyRequest",
          },
          response = {
            ["$ref"] = "OrgPolicy",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/cloud-platform.read-only",
          },
        },
        listAvailableOrgPolicyConstraints = {
          description = "Lists `Constraints` that could be applied on the specified resource.",
          flatPath = "v1/organizations/{organizationsId}:listAvailableOrgPolicyConstraints",
          httpMethod = "POST",
          id = "cloudresourcemanager.organizations.listAvailableOrgPolicyConstraints",
          parameterOrder = {
            "resource",
          },
          parameters = {
            resource = {
              description = "Name of the resource to list `Constraints` for.",
              location = "path",
              pattern = "^organizations/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "v1/{+resource}:listAvailableOrgPolicyConstraints",
          request = {
            ["$ref"] = "ListAvailableOrgPolicyConstraintsRequest",
          },
          response = {
            ["$ref"] = "ListAvailableOrgPolicyConstraintsResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/cloud-platform.read-only",
          },
        },
        listOrgPolicies = {
          description = "Lists all the `Policies` set for a particular resource.",
          flatPath = "v1/organizations/{organizationsId}:listOrgPolicies",
          httpMethod = "POST",
          id = "cloudresourcemanager.organizations.listOrgPolicies",
          parameterOrder = {
            "resource",
          },
          parameters = {
            resource = {
              description = "Name of the resource to list Policies for.",
              location = "path",
              pattern = "^organizations/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "v1/{+resource}:listOrgPolicies",
          request = {
            ["$ref"] = "ListOrgPoliciesRequest",
          },
          response = {
            ["$ref"] = "ListOrgPoliciesResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/cloud-platform.read-only",
          },
        },
        search = {
          description = "Searches Organization resources that are visible to the user and satisfy the specified filter. This method returns Organizations in an unspecified order. New Organizations do not necessarily appear at the end of the results. Search will only return organizations on which the user has the permission `resourcemanager.organizations.get`",
          flatPath = "v1/organizations:search",
          httpMethod = "POST",
          id = "cloudresourcemanager.organizations.search",
          parameterOrder = {},
          parameters = {},
          path = "v1/organizations:search",
          request = {
            ["$ref"] = "SearchOrganizationsRequest",
          },
          response = {
            ["$ref"] = "SearchOrganizationsResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/cloud-platform.read-only",
          },
        },
        setIamPolicy = {
          description = "Sets the access control policy on an Organization resource. Replaces any existing policy. The `resource` field should be the organization's resource name, e.g. \"organizations/123\". Authorization requires the Google IAM permission `resourcemanager.organizations.setIamPolicy` on the specified organization",
          flatPath = "v1/organizations/{organizationsId}:setIamPolicy",
          httpMethod = "POST",
          id = "cloudresourcemanager.organizations.setIamPolicy",
          parameterOrder = {
            "resource",
          },
          parameters = {
            resource = {
              description = "REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
              location = "path",
              pattern = "^organizations/[^/]+$",
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
        setOrgPolicy = {
          description = "Updates the specified `Policy` on the resource. Creates a new `Policy` for that `Constraint` on the resource if one does not exist. Not supplying an `etag` on the request `Policy` results in an unconditional write of the `Policy`.",
          flatPath = "v1/organizations/{organizationsId}:setOrgPolicy",
          httpMethod = "POST",
          id = "cloudresourcemanager.organizations.setOrgPolicy",
          parameterOrder = {
            "resource",
          },
          parameters = {
            resource = {
              description = "Resource name of the resource to attach the `Policy`.",
              location = "path",
              pattern = "^organizations/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "v1/{+resource}:setOrgPolicy",
          request = {
            ["$ref"] = "SetOrgPolicyRequest",
          },
          response = {
            ["$ref"] = "OrgPolicy",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
        testIamPermissions = {
          description = "Returns permissions that a caller has on the specified Organization. The `resource` field should be the organization's resource name, e.g. \"organizations/123\". There are no permissions required for making this API call.",
          flatPath = "v1/organizations/{organizationsId}:testIamPermissions",
          httpMethod = "POST",
          id = "cloudresourcemanager.organizations.testIamPermissions",
          parameterOrder = {
            "resource",
          },
          parameters = {
            resource = {
              description = "REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
              location = "path",
              pattern = "^organizations/[^/]+$",
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
            "https://www.googleapis.com/auth/cloud-platform.read-only",
          },
        },
      },
    },
    projects = {
      methods = {
        clearOrgPolicy = {
          description = "Clears a `Policy` from a resource.",
          flatPath = "v1/projects/{projectsId}:clearOrgPolicy",
          httpMethod = "POST",
          id = "cloudresourcemanager.projects.clearOrgPolicy",
          parameterOrder = {
            "resource",
          },
          parameters = {
            resource = {
              description = "Name of the resource for the `Policy` to clear.",
              location = "path",
              pattern = "^projects/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "v1/{+resource}:clearOrgPolicy",
          request = {
            ["$ref"] = "ClearOrgPolicyRequest",
          },
          response = {
            ["$ref"] = "Empty",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
        create = {
          description = "Request that a new Project be created. The result is an Operation which can be used to track the creation process. This process usually takes a few seconds, but can sometimes take much longer. The tracking Operation is automatically deleted after a few hours, so there is no need to call DeleteOperation. Authorization requires the Google IAM permission `resourcemanager.projects.create` on the specified parent for the new project. The parent is identified by a specified ResourceId, which must include both an ID and a type, such as organization. This method does not associate the new project with a billing account. You can set or update the billing account associated with a project using the [`projects.updateBillingInfo`] (/billing/reference/rest/v1/projects/updateBillingInfo) method.",
          flatPath = "v1/projects",
          httpMethod = "POST",
          id = "cloudresourcemanager.projects.create",
          parameterOrder = {},
          parameters = {},
          path = "v1/projects",
          request = {
            ["$ref"] = "Project",
          },
          response = {
            ["$ref"] = "Operation",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
        delete = {
          description = "Marks the Project identified by the specified `project_id` (for example, `my-project-123`) for deletion. This method will only affect the Project if it has a lifecycle state of ACTIVE. This method changes the Project's lifecycle state from ACTIVE to DELETE_REQUESTED. The deletion starts at an unspecified time, at which point the Project is no longer accessible. Until the deletion completes, you can check the lifecycle state checked by retrieving the Project with GetProject, and the Project remains visible to ListProjects. However, you cannot update the project. After the deletion completes, the Project is not retrievable by the GetProject and ListProjects methods. The caller must have delete permissions for this Project.",
          flatPath = "v1/projects/{projectId}",
          httpMethod = "DELETE",
          id = "cloudresourcemanager.projects.delete",
          parameterOrder = {
            "projectId",
          },
          parameters = {
            projectId = {
              description = "The Project ID (for example, `foo-bar-123`). Required.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "v1/projects/{projectId}",
          response = {
            ["$ref"] = "Empty",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
        get = {
          description = "Retrieves the Project identified by the specified `project_id` (for example, `my-project-123`). The caller must have read permissions for this Project.",
          flatPath = "v1/projects/{projectId}",
          httpMethod = "GET",
          id = "cloudresourcemanager.projects.get",
          parameterOrder = {
            "projectId",
          },
          parameters = {
            projectId = {
              description = "Required. The Project ID (for example, `my-project-123`).",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "v1/projects/{projectId}",
          response = {
            ["$ref"] = "Project",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/cloud-platform.read-only",
          },
        },
        getAncestry = {
          description = "Gets a list of ancestors in the resource hierarchy for the Project identified by the specified `project_id` (for example, `my-project-123`). The caller must have read permissions for this Project.",
          flatPath = "v1/projects/{projectId}:getAncestry",
          httpMethod = "POST",
          id = "cloudresourcemanager.projects.getAncestry",
          parameterOrder = {
            "projectId",
          },
          parameters = {
            projectId = {
              description = "Required. The Project ID (for example, `my-project-123`).",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "v1/projects/{projectId}:getAncestry",
          request = {
            ["$ref"] = "GetAncestryRequest",
          },
          response = {
            ["$ref"] = "GetAncestryResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/cloud-platform.read-only",
          },
        },
        getEffectiveOrgPolicy = {
          description = "Gets the effective `Policy` on a resource. This is the result of merging `Policies` in the resource hierarchy. The returned `Policy` will not have an `etag`set because it is a computed `Policy` across multiple resources. Subtrees of Resource Manager resource hierarchy with 'under:' prefix will not be expanded.",
          flatPath = "v1/projects/{projectsId}:getEffectiveOrgPolicy",
          httpMethod = "POST",
          id = "cloudresourcemanager.projects.getEffectiveOrgPolicy",
          parameterOrder = {
            "resource",
          },
          parameters = {
            resource = {
              description = "The name of the resource to start computing the effective `Policy`.",
              location = "path",
              pattern = "^projects/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "v1/{+resource}:getEffectiveOrgPolicy",
          request = {
            ["$ref"] = "GetEffectiveOrgPolicyRequest",
          },
          response = {
            ["$ref"] = "OrgPolicy",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/cloud-platform.read-only",
          },
        },
        getIamPolicy = {
          description = "Returns the IAM access control policy for the specified Project. Permission is denied if the policy or the resource does not exist. Authorization requires the Google IAM permission `resourcemanager.projects.getIamPolicy` on the project. For additional information about `resource` (e.g. my-project-id) structure and identification, see [Resource Names](https://cloud.google.com/apis/design/resource_names).",
          flatPath = "v1/projects/{resource}:getIamPolicy",
          httpMethod = "POST",
          id = "cloudresourcemanager.projects.getIamPolicy",
          parameterOrder = {
            "resource",
          },
          parameters = {
            resource = {
              description = "REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "v1/projects/{resource}:getIamPolicy",
          request = {
            ["$ref"] = "GetIamPolicyRequest",
          },
          response = {
            ["$ref"] = "Policy",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/cloud-platform.read-only",
          },
        },
        getOrgPolicy = {
          description = "Gets a `Policy` on a resource. If no `Policy` is set on the resource, a `Policy` is returned with default values including `POLICY_TYPE_NOT_SET` for the `policy_type oneof`. The `etag` value can be used with `SetOrgPolicy()` to create or update a `Policy` during read-modify-write.",
          flatPath = "v1/projects/{projectsId}:getOrgPolicy",
          httpMethod = "POST",
          id = "cloudresourcemanager.projects.getOrgPolicy",
          parameterOrder = {
            "resource",
          },
          parameters = {
            resource = {
              description = "Name of the resource the `Policy` is set on.",
              location = "path",
              pattern = "^projects/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "v1/{+resource}:getOrgPolicy",
          request = {
            ["$ref"] = "GetOrgPolicyRequest",
          },
          response = {
            ["$ref"] = "OrgPolicy",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/cloud-platform.read-only",
          },
        },
        list = {
          description = "Lists Projects that the caller has the `resourcemanager.projects.get` permission on and satisfy the specified filter. This method returns Projects in an unspecified order. This method is eventually consistent with project mutations; this means that a newly created project may not appear in the results or recent updates to an existing project may not be reflected in the results. To retrieve the latest state of a project, use the GetProject method. NOTE: If the request filter contains a `parent.type` and `parent.id` and the caller has the `resourcemanager.projects.list` permission on the parent, the results will be drawn from an alternate index which provides more consistent results. In future versions of this API, this List method will be split into List and Search to properly capture the behavioral difference.",
          flatPath = "v1/projects",
          httpMethod = "GET",
          id = "cloudresourcemanager.projects.list",
          parameterOrder = {},
          parameters = {
            filter = {
              description = "Optional. An expression for filtering the results of the request. Filter rules are case insensitive. If multiple fields are included in a filter query, the query will return results that match any of the fields. Some eligible fields for filtering are: + `name` + `id` + `labels.` (where *key* is the name of a label) + `parent.type` + `parent.id` + `lifecycleState` Some examples of filter queries: | Query | Description | |------------------|-----------------------------------------------------| | name:how* | The project's name starts with \"how\". | | name:Howl | The project's name is `Howl` or `howl`. | | name:HOWL | Equivalent to above. | | NAME:howl | Equivalent to above. | | labels.color:* | The project has the label `color`. | | labels.color:red | The project's label `color` has the value `red`. | | labels.color:red labels.size:big | The project's label `color` has the value `red` or its label `size` has the value `big`. | | lifecycleState:DELETE_REQUESTED | Only show projects that are pending deletion.| If no filter is specified, the call will return projects for which the user has the `resourcemanager.projects.get` permission. NOTE: To perform a by-parent query (eg., what projects are directly in a Folder), the caller must have the `resourcemanager.projects.list` permission on the parent and the filter must contain both a `parent.type` and a `parent.id` restriction (example: \"parent.type:folder parent.id:123\"). In this case an alternate search index is used which provides more consistent results.",
              location = "query",
              type = "string",
            },
            pageSize = {
              description = "Optional. The maximum number of Projects to return in the response. The server can return fewer Projects than requested. If unspecified, server picks an appropriate default.",
              format = "int32",
              location = "query",
              type = "integer",
            },
            pageToken = {
              description = "Optional. A pagination token returned from a previous call to ListProjects that indicates from where listing should continue.",
              location = "query",
              type = "string",
            },
          },
          path = "v1/projects",
          response = {
            ["$ref"] = "ListProjectsResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/cloud-platform.read-only",
          },
        },
        listAvailableOrgPolicyConstraints = {
          description = "Lists `Constraints` that could be applied on the specified resource.",
          flatPath = "v1/projects/{projectsId}:listAvailableOrgPolicyConstraints",
          httpMethod = "POST",
          id = "cloudresourcemanager.projects.listAvailableOrgPolicyConstraints",
          parameterOrder = {
            "resource",
          },
          parameters = {
            resource = {
              description = "Name of the resource to list `Constraints` for.",
              location = "path",
              pattern = "^projects/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "v1/{+resource}:listAvailableOrgPolicyConstraints",
          request = {
            ["$ref"] = "ListAvailableOrgPolicyConstraintsRequest",
          },
          response = {
            ["$ref"] = "ListAvailableOrgPolicyConstraintsResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/cloud-platform.read-only",
          },
        },
        listOrgPolicies = {
          description = "Lists all the `Policies` set for a particular resource.",
          flatPath = "v1/projects/{projectsId}:listOrgPolicies",
          httpMethod = "POST",
          id = "cloudresourcemanager.projects.listOrgPolicies",
          parameterOrder = {
            "resource",
          },
          parameters = {
            resource = {
              description = "Name of the resource to list Policies for.",
              location = "path",
              pattern = "^projects/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "v1/{+resource}:listOrgPolicies",
          request = {
            ["$ref"] = "ListOrgPoliciesRequest",
          },
          response = {
            ["$ref"] = "ListOrgPoliciesResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/cloud-platform.read-only",
          },
        },
        setIamPolicy = {
          description = "Sets the IAM access control policy for the specified Project. CAUTION: This method will replace the existing policy, and cannot be used to append additional IAM settings. NOTE: Removing service accounts from policies or changing their roles can render services completely inoperable. It is important to understand how the service account is being used before removing or updating its roles. For additional information about `resource` (e.g. my-project-id) structure and identification, see [Resource Names](https://cloud.google.com/apis/design/resource_names). The following constraints apply when using `setIamPolicy()`: + Project does not support `allUsers` and `allAuthenticatedUsers` as `members` in a `Binding` of a `Policy`. + The owner role can be granted to a `user`, `serviceAccount`, or a group that is part of an organization. For example, group@myownpersonaldomain.com could be added as an owner to a project in the myownpersonaldomain.com organization, but not the examplepetstore.com organization. + Service accounts can be made owners of a project directly without any restrictions. However, to be added as an owner, a user must be invited via Cloud Platform console and must accept the invitation. + A user cannot be granted the owner role using `setIamPolicy()`. The user must be granted the owner role using the Cloud Platform Console and must explicitly accept the invitation. + You can only grant ownership of a project to a member by using the GCP Console. Inviting a member will deliver an invitation email that they must accept. An invitation email is not generated if you are granting a role other than owner, or if both the member you are inviting and the project are part of your organization. + If the project is not part of an organization, there must be at least one owner who has accepted the Terms of Service (ToS) agreement in the policy. Calling `setIamPolicy()` to remove the last ToS-accepted owner from the policy will fail. This restriction also applies to legacy projects that no longer have owners who have accepted the ToS. Edits to IAM policies will be rejected until the lack of a ToS-accepting owner is rectified. If the project is part of an organization, you can remove all owners, potentially making the organization inaccessible. Authorization requires the Google IAM permission `resourcemanager.projects.setIamPolicy` on the project",
          flatPath = "v1/projects/{resource}:setIamPolicy",
          httpMethod = "POST",
          id = "cloudresourcemanager.projects.setIamPolicy",
          parameterOrder = {
            "resource",
          },
          parameters = {
            resource = {
              description = "REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "v1/projects/{resource}:setIamPolicy",
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
        setOrgPolicy = {
          description = "Updates the specified `Policy` on the resource. Creates a new `Policy` for that `Constraint` on the resource if one does not exist. Not supplying an `etag` on the request `Policy` results in an unconditional write of the `Policy`.",
          flatPath = "v1/projects/{projectsId}:setOrgPolicy",
          httpMethod = "POST",
          id = "cloudresourcemanager.projects.setOrgPolicy",
          parameterOrder = {
            "resource",
          },
          parameters = {
            resource = {
              description = "Resource name of the resource to attach the `Policy`.",
              location = "path",
              pattern = "^projects/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "v1/{+resource}:setOrgPolicy",
          request = {
            ["$ref"] = "SetOrgPolicyRequest",
          },
          response = {
            ["$ref"] = "OrgPolicy",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
        testIamPermissions = {
          description = "Returns permissions that a caller has on the specified Project. For additional information about `resource` (e.g. my-project-id) structure and identification, see [Resource Names](https://cloud.google.com/apis/design/resource_names). There are no permissions required for making this API call.",
          flatPath = "v1/projects/{resource}:testIamPermissions",
          httpMethod = "POST",
          id = "cloudresourcemanager.projects.testIamPermissions",
          parameterOrder = {
            "resource",
          },
          parameters = {
            resource = {
              description = "REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "v1/projects/{resource}:testIamPermissions",
          request = {
            ["$ref"] = "TestIamPermissionsRequest",
          },
          response = {
            ["$ref"] = "TestIamPermissionsResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/cloud-platform.read-only",
          },
        },
        undelete = {
          description = "Restores the Project identified by the specified `project_id` (for example, `my-project-123`). You can only use this method for a Project that has a lifecycle state of DELETE_REQUESTED. After deletion starts, the Project cannot be restored. The caller must have undelete permissions for this Project.",
          flatPath = "v1/projects/{projectId}:undelete",
          httpMethod = "POST",
          id = "cloudresourcemanager.projects.undelete",
          parameterOrder = {
            "projectId",
          },
          parameters = {
            projectId = {
              description = "Required. The project ID (for example, `foo-bar-123`).",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "v1/projects/{projectId}:undelete",
          request = {
            ["$ref"] = "UndeleteProjectRequest",
          },
          response = {
            ["$ref"] = "Empty",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
        update = {
          description = "Updates the attributes of the Project identified by the specified `project_id` (for example, `my-project-123`). The caller must have modify permissions for this Project.",
          flatPath = "v1/projects/{projectId}",
          httpMethod = "PUT",
          id = "cloudresourcemanager.projects.update",
          parameterOrder = {
            "projectId",
          },
          parameters = {
            projectId = {
              description = "The project ID (for example, `my-project-123`). Required.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "v1/projects/{projectId}",
          request = {
            ["$ref"] = "Project",
          },
          response = {
            ["$ref"] = "Project",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
      },
    },
  },
  revision = "20230115",
  rootUrl = "https://cloudresourcemanager.googleapis.com/",
  schemas = {
    Ancestor = {
      description = "Identifying information for a single ancestor of a project.",
      id = "Ancestor",
      properties = {
        resourceId = {
          ["$ref"] = "ResourceId",
          description = "Resource id of the ancestor.",
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
    BooleanConstraint = {
      description = "A `Constraint` that is either enforced or not. For example a constraint `constraints/compute.disableSerialPortAccess`. If it is enforced on a VM instance, serial port connections will not be opened to that instance.",
      id = "BooleanConstraint",
      properties = {},
      type = "object",
    },
    BooleanPolicy = {
      description = "Used in `policy_type` to specify how `boolean_policy` will behave at this resource.",
      id = "BooleanPolicy",
      properties = {
        enforced = {
          description = "If `true`, then the `Policy` is enforced. If `false`, then any configuration is acceptable. Suppose you have a `Constraint` `constraints/compute.disableSerialPortAccess` with `constraint_default` set to `ALLOW`. A `Policy` for that `Constraint` exhibits the following behavior: - If the `Policy` at this resource has enforced set to `false`, serial port connection attempts will be allowed. - If the `Policy` at this resource has enforced set to `true`, serial port connection attempts will be refused. - If the `Policy` at this resource is `RestoreDefault`, serial port connection attempts will be allowed. - If no `Policy` is set at this resource or anywhere higher in the resource hierarchy, serial port connection attempts will be allowed. - If no `Policy` is set at this resource, but one exists higher in the resource hierarchy, the behavior is as if the`Policy` were set at this resource. The following examples demonstrate the different possible layerings: Example 1 (nearest `Constraint` wins): `organizations/foo` has a `Policy` with: {enforced: false} `projects/bar` has no `Policy` set. The constraint at `projects/bar` and `organizations/foo` will not be enforced. Example 2 (enforcement gets replaced): `organizations/foo` has a `Policy` with: {enforced: false} `projects/bar` has a `Policy` with: {enforced: true} The constraint at `organizations/foo` is not enforced. The constraint at `projects/bar` is enforced. Example 3 (RestoreDefault): `organizations/foo` has a `Policy` with: {enforced: true} `projects/bar` has a `Policy` with: {RestoreDefault: {}} The constraint at `organizations/foo` is enforced. The constraint at `projects/bar` is not enforced, because `constraint_default` for the `Constraint` is `ALLOW`.",
          type = "boolean",
        },
      },
      type = "object",
    },
    ClearOrgPolicyRequest = {
      description = "The request sent to the ClearOrgPolicy method.",
      id = "ClearOrgPolicyRequest",
      properties = {
        constraint = {
          description = "Name of the `Constraint` of the `Policy` to clear.",
          type = "string",
        },
        etag = {
          description = "The current version, for concurrency control. Not sending an `etag` will cause the `Policy` to be cleared blindly.",
          format = "byte",
          type = "string",
        },
      },
      type = "object",
    },
    CloudresourcemanagerGoogleCloudResourcemanagerV2alpha1FolderOperation = {
      description = "Metadata describing a long running folder operation",
      id = "CloudresourcemanagerGoogleCloudResourcemanagerV2alpha1FolderOperation",
      properties = {
        destinationParent = {
          description = "The resource name of the folder or organization we are either creating the folder under or moving the folder to.",
          type = "string",
        },
        displayName = {
          description = "The display name of the folder.",
          type = "string",
        },
        operationType = {
          description = "The type of this operation.",
          enum = {
            "OPERATION_TYPE_UNSPECIFIED",
            "CREATE",
            "MOVE",
          },
          enumDescriptions = {
            "Operation type not specified.",
            "A create folder operation.",
            "A move folder operation.",
          },
          type = "string",
        },
        sourceParent = {
          description = "The resource name of the folder's parent. Only applicable when the operation_type is MOVE.",
          type = "string",
        },
      },
      type = "object",
    },
    CloudresourcemanagerGoogleCloudResourcemanagerV2beta1FolderOperation = {
      description = "Metadata describing a long running folder operation",
      id = "CloudresourcemanagerGoogleCloudResourcemanagerV2beta1FolderOperation",
      properties = {
        destinationParent = {
          description = "The resource name of the folder or organization we are either creating the folder under or moving the folder to.",
          type = "string",
        },
        displayName = {
          description = "The display name of the folder.",
          type = "string",
        },
        operationType = {
          description = "The type of this operation.",
          enum = {
            "OPERATION_TYPE_UNSPECIFIED",
            "CREATE",
            "MOVE",
          },
          enumDescriptions = {
            "Operation type not specified.",
            "A create folder operation.",
            "A move folder operation.",
          },
          type = "string",
        },
        sourceParent = {
          description = "The resource name of the folder's parent. Only applicable when the operation_type is MOVE.",
          type = "string",
        },
      },
      type = "object",
    },
    Constraint = {
      description = "A `Constraint` describes a way in which a resource's configuration can be restricted. For example, it controls which cloud services can be activated across an organization, or whether a Compute Engine instance can have serial port connections established. `Constraints` can be configured by the organization's policy administrator to fit the needs of the organzation by setting Policies for `Constraints` at different locations in the organization's resource hierarchy. Policies are inherited down the resource hierarchy from higher levels, but can also be overridden. For details about the inheritance rules please read about [Policies](/resource-manager/reference/rest/v1/Policy). `Constraints` have a default behavior determined by the `constraint_default` field, which is the enforcement behavior that is used in the absence of a `Policy` being defined or inherited for the resource in question.",
      id = "Constraint",
      properties = {
        booleanConstraint = {
          ["$ref"] = "BooleanConstraint",
          description = "Defines this constraint as being a BooleanConstraint.",
        },
        constraintDefault = {
          description = "The evaluation behavior of this constraint in the absence of 'Policy'.",
          enum = {
            "CONSTRAINT_DEFAULT_UNSPECIFIED",
            "ALLOW",
            "DENY",
          },
          enumDescriptions = {
            "This is only used for distinguishing unset values and should never be used.",
            "Indicate that all values are allowed for list constraints. Indicate that enforcement is off for boolean constraints.",
            "Indicate that all values are denied for list constraints. Indicate that enforcement is on for boolean constraints.",
          },
          type = "string",
        },
        description = {
          description = "Detailed description of what this `Constraint` controls as well as how and where it is enforced. Mutable.",
          type = "string",
        },
        displayName = {
          description = "The human readable name. Mutable.",
          type = "string",
        },
        listConstraint = {
          ["$ref"] = "ListConstraint",
          description = "Defines this constraint as being a ListConstraint.",
        },
        name = {
          description = "Immutable value, required to globally be unique. For example, `constraints/serviceuser.services`",
          type = "string",
        },
        version = {
          description = "Version of the `Constraint`. Default version is 0;",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    CreateFolderMetadata = {
      description = "Metadata pertaining to the Folder creation process.",
      id = "CreateFolderMetadata",
      properties = {
        displayName = {
          description = "The display name of the folder.",
          type = "string",
        },
        parent = {
          description = "The resource name of the folder or organization we are creating the folder under.",
          type = "string",
        },
      },
      type = "object",
    },
    CreateProjectMetadata = {
      description = "A status object which is used as the `metadata` field for the Operation returned by CreateProject. It provides insight for when significant phases of Project creation have completed.",
      id = "CreateProjectMetadata",
      properties = {
        createTime = {
          description = "Creation time of the project creation workflow.",
          format = "google-datetime",
          type = "string",
        },
        gettable = {
          description = "True if the project can be retrieved using `GetProject`. No other operations on the project are guaranteed to work until the project creation is complete.",
          type = "boolean",
        },
        ready = {
          description = "True if the project creation process is complete.",
          type = "boolean",
        },
      },
      type = "object",
    },
    CreateTagBindingMetadata = {
      description = "Runtime operation information for creating a TagValue.",
      id = "CreateTagBindingMetadata",
      properties = {},
      type = "object",
    },
    CreateTagKeyMetadata = {
      description = "Runtime operation information for creating a TagKey.",
      id = "CreateTagKeyMetadata",
      properties = {},
      type = "object",
    },
    CreateTagValueMetadata = {
      description = "Runtime operation information for creating a TagValue.",
      id = "CreateTagValueMetadata",
      properties = {},
      type = "object",
    },
    DeleteFolderMetadata = {
      description = "A status object which is used as the `metadata` field for the `Operation` returned by `DeleteFolder`.",
      id = "DeleteFolderMetadata",
      properties = {},
      type = "object",
    },
    DeleteOrganizationMetadata = {
      description = "A status object which is used as the `metadata` field for the operation returned by DeleteOrganization.",
      id = "DeleteOrganizationMetadata",
      properties = {},
      type = "object",
    },
    DeleteProjectMetadata = {
      description = "A status object which is used as the `metadata` field for the Operation returned by `DeleteProject`.",
      id = "DeleteProjectMetadata",
      properties = {},
      type = "object",
    },
    DeleteTagBindingMetadata = {
      description = "Runtime operation information for deleting a TagBinding.",
      id = "DeleteTagBindingMetadata",
      properties = {},
      type = "object",
    },
    DeleteTagKeyMetadata = {
      description = "Runtime operation information for deleting a TagKey.",
      id = "DeleteTagKeyMetadata",
      properties = {},
      type = "object",
    },
    DeleteTagValueMetadata = {
      description = "Runtime operation information for deleting a TagValue.",
      id = "DeleteTagValueMetadata",
      properties = {},
      type = "object",
    },
    Empty = {
      description = "A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }",
      id = "Empty",
      properties = {},
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
    FolderOperation = {
      description = "Metadata describing a long running folder operation",
      id = "FolderOperation",
      properties = {
        destinationParent = {
          description = "The resource name of the folder or organization we are either creating the folder under or moving the folder to.",
          type = "string",
        },
        displayName = {
          description = "The display name of the folder.",
          type = "string",
        },
        operationType = {
          description = "The type of this operation.",
          enum = {
            "OPERATION_TYPE_UNSPECIFIED",
            "CREATE",
            "MOVE",
          },
          enumDescriptions = {
            "Operation type not specified.",
            "A create folder operation.",
            "A move folder operation.",
          },
          type = "string",
        },
        sourceParent = {
          description = "The resource name of the folder's parent. Only applicable when the operation_type is MOVE.",
          type = "string",
        },
      },
      type = "object",
    },
    FolderOperationError = {
      description = "A classification of the Folder Operation error.",
      id = "FolderOperationError",
      properties = {
        errorMessageId = {
          description = "The type of operation error experienced.",
          enum = {
            "ERROR_TYPE_UNSPECIFIED",
            "ACTIVE_FOLDER_HEIGHT_VIOLATION",
            "MAX_CHILD_FOLDERS_VIOLATION",
            "FOLDER_NAME_UNIQUENESS_VIOLATION",
            "RESOURCE_DELETED_VIOLATION",
            "PARENT_DELETED_VIOLATION",
            "CYCLE_INTRODUCED_VIOLATION",
            "FOLDER_BEING_MOVED_VIOLATION",
            "FOLDER_TO_DELETE_NON_EMPTY_VIOLATION",
            "DELETED_FOLDER_HEIGHT_VIOLATION",
          },
          enumDescriptions = {
            "The error type was unrecognized or unspecified.",
            "The attempted action would violate the max folder depth constraint.",
            "The attempted action would violate the max child folders constraint.",
            "The attempted action would violate the locally-unique folder display_name constraint.",
            "The resource being moved has been deleted.",
            "The resource a folder was being added to has been deleted.",
            "The attempted action would introduce cycle in resource path.",
            "The attempted action would move a folder that is already being moved.",
            "The folder the caller is trying to delete contains active resources.",
            "The attempted action would violate the max deleted folder depth constraint.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GetAncestryRequest = {
      description = "The request sent to the GetAncestry method.",
      id = "GetAncestryRequest",
      properties = {},
      type = "object",
    },
    GetAncestryResponse = {
      description = "Response from the projects.getAncestry method.",
      id = "GetAncestryResponse",
      properties = {
        ancestor = {
          description = "Ancestors are ordered from bottom to top of the resource hierarchy. The first ancestor is the project itself, followed by the project's parent, etc..",
          items = {
            ["$ref"] = "Ancestor",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GetEffectiveOrgPolicyRequest = {
      description = "The request sent to the GetEffectiveOrgPolicy method.",
      id = "GetEffectiveOrgPolicyRequest",
      properties = {
        constraint = {
          description = "The name of the `Constraint` to compute the effective `Policy`.",
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
    GetOrgPolicyRequest = {
      description = "The request sent to the GetOrgPolicy method.",
      id = "GetOrgPolicyRequest",
      properties = {
        constraint = {
          description = "Name of the `Constraint` to get the `Policy`.",
          type = "string",
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
    Lien = {
      description = "A Lien represents an encumbrance on the actions that can be performed on a resource.",
      id = "Lien",
      properties = {
        createTime = {
          description = "The creation time of this Lien.",
          format = "google-datetime",
          type = "string",
        },
        name = {
          description = "A system-generated unique identifier for this Lien. Example: `liens/1234abcd`",
          type = "string",
        },
        origin = {
          description = "A stable, user-visible/meaningful string identifying the origin of the Lien, intended to be inspected programmatically. Maximum length of 200 characters. Example: 'compute.googleapis.com'",
          type = "string",
        },
        parent = {
          description = "A reference to the resource this Lien is attached to. The server will validate the parent against those for which Liens are supported. Example: `projects/1234`",
          type = "string",
        },
        reason = {
          description = "Concise user-visible strings indicating why an action cannot be performed on a resource. Maximum length of 200 characters. Example: 'Holds production API key'",
          type = "string",
        },
        restrictions = {
          description = "The types of operations which should be blocked as a result of this Lien. Each value should correspond to an IAM permission. The server will validate the permissions against those for which Liens are supported. An empty list is meaningless and will be rejected. Example: ['resourcemanager.projects.delete']",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ListAvailableOrgPolicyConstraintsRequest = {
      description = "The request sent to the `ListAvailableOrgPolicyConstraints` method on the project, folder, or organization.",
      id = "ListAvailableOrgPolicyConstraintsRequest",
      properties = {
        pageSize = {
          description = "Size of the pages to be returned. This is currently unsupported and will be ignored. The server may at any point start using this field to limit page size.",
          format = "int32",
          type = "integer",
        },
        pageToken = {
          description = "Page token used to retrieve the next page. This is currently unsupported and will be ignored. The server may at any point start using this field.",
          type = "string",
        },
      },
      type = "object",
    },
    ListAvailableOrgPolicyConstraintsResponse = {
      description = "The response returned from the `ListAvailableOrgPolicyConstraints` method. Returns all `Constraints` that could be set at this level of the hierarchy (contrast with the response from `ListPolicies`, which returns all policies which are set).",
      id = "ListAvailableOrgPolicyConstraintsResponse",
      properties = {
        constraints = {
          description = "The collection of constraints that are settable on the request resource.",
          items = {
            ["$ref"] = "Constraint",
          },
          type = "array",
        },
        nextPageToken = {
          description = "Page token used to retrieve the next page. This is currently not used.",
          type = "string",
        },
      },
      type = "object",
    },
    ListConstraint = {
      description = "A `Constraint` that allows or disallows a list of string values, which are configured by an Organization's policy administrator with a `Policy`.",
      id = "ListConstraint",
      properties = {
        suggestedValue = {
          description = "Optional. The Google Cloud Console will try to default to a configuration that matches the value specified in this `Constraint`.",
          type = "string",
        },
        supportsUnder = {
          description = "Indicates whether subtrees of Cloud Resource Manager resource hierarchy can be used in `Policy.allowed_values` and `Policy.denied_values`. For example, `\"under:folders/123\"` would match any resource under the 'folders/123' folder.",
          type = "boolean",
        },
      },
      type = "object",
    },
    ListLiensResponse = {
      description = "The response message for Liens.ListLiens.",
      id = "ListLiensResponse",
      properties = {
        liens = {
          description = "A list of Liens.",
          items = {
            ["$ref"] = "Lien",
          },
          type = "array",
        },
        nextPageToken = {
          description = "Token to retrieve the next page of results, or empty if there are no more results in the list.",
          type = "string",
        },
      },
      type = "object",
    },
    ListOrgPoliciesRequest = {
      description = "The request sent to the ListOrgPolicies method.",
      id = "ListOrgPoliciesRequest",
      properties = {
        pageSize = {
          description = "Size of the pages to be returned. This is currently unsupported and will be ignored. The server may at any point start using this field to limit page size.",
          format = "int32",
          type = "integer",
        },
        pageToken = {
          description = "Page token used to retrieve the next page. This is currently unsupported and will be ignored. The server may at any point start using this field.",
          type = "string",
        },
      },
      type = "object",
    },
    ListOrgPoliciesResponse = {
      description = "The response returned from the `ListOrgPolicies` method. It will be empty if no `Policies` are set on the resource.",
      id = "ListOrgPoliciesResponse",
      properties = {
        nextPageToken = {
          description = "Page token used to retrieve the next page. This is currently not used, but the server may at any point start supplying a valid token.",
          type = "string",
        },
        policies = {
          description = "The `Policies` that are set on the resource. It will be empty if no `Policies` are set.",
          items = {
            ["$ref"] = "OrgPolicy",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ListPolicy = {
      description = "Used in `policy_type` to specify how `list_policy` behaves at this resource. `ListPolicy` can define specific values and subtrees of Cloud Resource Manager resource hierarchy (`Organizations`, `Folders`, `Projects`) that are allowed or denied by setting the `allowed_values` and `denied_values` fields. This is achieved by using the `under:` and optional `is:` prefixes. The `under:` prefix is used to denote resource subtree values. The `is:` prefix is used to denote specific values, and is required only if the value contains a \":\". Values prefixed with \"is:\" are treated the same as values with no prefix. Ancestry subtrees must be in one of the following formats: - \"projects/\", e.g. \"projects/tokyo-rain-123\" - \"folders/\", e.g. \"folders/1234\" - \"organizations/\", e.g. \"organizations/1234\" The `supports_under` field of the associated `Constraint` defines whether ancestry prefixes can be used. You can set `allowed_values` and `denied_values` in the same `Policy` if `all_values` is `ALL_VALUES_UNSPECIFIED`. `ALLOW` or `DENY` are used to allow or deny all values. If `all_values` is set to either `ALLOW` or `DENY`, `allowed_values` and `denied_values` must be unset.",
      id = "ListPolicy",
      properties = {
        allValues = {
          description = "The policy all_values state.",
          enum = {
            "ALL_VALUES_UNSPECIFIED",
            "ALLOW",
            "DENY",
          },
          enumDescriptions = {
            "Indicates that allowed_values or denied_values must be set.",
            "A policy with this set allows all values.",
            "A policy with this set denies all values.",
          },
          type = "string",
        },
        allowedValues = {
          description = "List of values allowed at this resource. Can only be set if `all_values` is set to `ALL_VALUES_UNSPECIFIED`.",
          items = {
            type = "string",
          },
          type = "array",
        },
        deniedValues = {
          description = "List of values denied at this resource. Can only be set if `all_values` is set to `ALL_VALUES_UNSPECIFIED`.",
          items = {
            type = "string",
          },
          type = "array",
        },
        inheritFromParent = {
          description = "Determines the inheritance behavior for this `Policy`. By default, a `ListPolicy` set at a resource supersedes any `Policy` set anywhere up the resource hierarchy. However, if `inherit_from_parent` is set to `true`, then the values from the effective `Policy` of the parent resource are inherited, meaning the values set in this `Policy` are added to the values inherited up the hierarchy. Setting `Policy` hierarchies that inherit both allowed values and denied values isn't recommended in most circumstances to keep the configuration simple and understandable. However, it is possible to set a `Policy` with `allowed_values` set that inherits a `Policy` with `denied_values` set. In this case, the values that are allowed must be in `allowed_values` and not present in `denied_values`. For example, suppose you have a `Constraint` `constraints/serviceuser.services`, which has a `constraint_type` of `list_constraint`, and with `constraint_default` set to `ALLOW`. Suppose that at the Organization level, a `Policy` is applied that restricts the allowed API activations to {`E1`, `E2`}. Then, if a `Policy` is applied to a project below the Organization that has `inherit_from_parent` set to `false` and field all_values set to DENY, then an attempt to activate any API will be denied. The following examples demonstrate different possible layerings for `projects/bar` parented by `organizations/foo`: Example 1 (no inherited values): `organizations/foo` has a `Policy` with values: {allowed_values: \"E1\" allowed_values:\"E2\"} `projects/bar` has `inherit_from_parent` `false` and values: {allowed_values: \"E3\" allowed_values: \"E4\"} The accepted values at `organizations/foo` are `E1`, `E2`. The accepted values at `projects/bar` are `E3`, and `E4`. Example 2 (inherited values): `organizations/foo` has a `Policy` with values: {allowed_values: \"E1\" allowed_values:\"E2\"} `projects/bar` has a `Policy` with values: {value: \"E3\" value: \"E4\" inherit_from_parent: true} The accepted values at `organizations/foo` are `E1`, `E2`. The accepted values at `projects/bar` are `E1`, `E2`, `E3`, and `E4`. Example 3 (inheriting both allowed and denied values): `organizations/foo` has a `Policy` with values: {allowed_values: \"E1\" allowed_values: \"E2\"} `projects/bar` has a `Policy` with: {denied_values: \"E1\"} The accepted values at `organizations/foo` are `E1`, `E2`. The value accepted at `projects/bar` is `E2`. Example 4 (RestoreDefault): `organizations/foo` has a `Policy` with values: {allowed_values: \"E1\" allowed_values:\"E2\"} `projects/bar` has a `Policy` with values: {RestoreDefault: {}} The accepted values at `organizations/foo` are `E1`, `E2`. The accepted values at `projects/bar` are either all or none depending on the value of `constraint_default` (if `ALLOW`, all; if `DENY`, none). Example 5 (no policy inherits parent policy): `organizations/foo` has no `Policy` set. `projects/bar` has no `Policy` set. The accepted values at both levels are either all or none depending on the value of `constraint_default` (if `ALLOW`, all; if `DENY`, none). Example 6 (ListConstraint allowing all): `organizations/foo` has a `Policy` with values: {allowed_values: \"E1\" allowed_values: \"E2\"} `projects/bar` has a `Policy` with: {all: ALLOW} The accepted values at `organizations/foo` are `E1`, E2`. Any value is accepted at `projects/bar`. Example 7 (ListConstraint allowing none): `organizations/foo` has a `Policy` with values: {allowed_values: \"E1\" allowed_values: \"E2\"} `projects/bar` has a `Policy` with: {all: DENY} The accepted values at `organizations/foo` are `E1`, E2`. No value is accepted at `projects/bar`. Example 10 (allowed and denied subtrees of Resource Manager hierarchy): Given the following resource hierarchy O1->{F1, F2}; F1->{P1}; F2->{P2, P3}, `organizations/foo` has a `Policy` with values: {allowed_values: \"under:organizations/O1\"} `projects/bar` has a `Policy` with: {allowed_values: \"under:projects/P3\"} {denied_values: \"under:folders/F2\"} The accepted values at `organizations/foo` are `organizations/O1`, `folders/F1`, `folders/F2`, `projects/P1`, `projects/P2`, `projects/P3`. The accepted values at `projects/bar` are `organizations/O1`, `folders/F1`, `projects/P1`.",
          type = "boolean",
        },
        suggestedValue = {
          description = "Optional. The Google Cloud Console will try to default to a configuration that matches the value specified in this `Policy`. If `suggested_value` is not set, it will inherit the value specified higher in the hierarchy, unless `inherit_from_parent` is `false`.",
          type = "string",
        },
      },
      type = "object",
    },
    ListProjectsResponse = {
      description = "A page of the response received from the ListProjects method. A paginated response where more pages are available has `next_page_token` set. This token can be used in a subsequent request to retrieve the next request page.",
      id = "ListProjectsResponse",
      properties = {
        nextPageToken = {
          description = "Pagination token. If the result set is too large to fit in a single response, this token is returned. It encodes the position of the current result cursor. Feeding this value into a new list request with the `page_token` parameter gives the next page of the results. When `next_page_token` is not filled in, there is no next page and the list returned is the last page in the result set. Pagination tokens have a limited lifetime.",
          type = "string",
        },
        projects = {
          description = "The list of Projects that matched the list filter. This list can be paginated.",
          items = {
            ["$ref"] = "Project",
          },
          type = "array",
        },
      },
      type = "object",
    },
    MoveFolderMetadata = {
      description = "Metadata pertaining to the folder move process.",
      id = "MoveFolderMetadata",
      properties = {
        destinationParent = {
          description = "The resource name of the folder or organization to move the folder to.",
          type = "string",
        },
        displayName = {
          description = "The display name of the folder.",
          type = "string",
        },
        sourceParent = {
          description = "The resource name of the folder's parent.",
          type = "string",
        },
      },
      type = "object",
    },
    MoveProjectMetadata = {
      description = "A status object which is used as the `metadata` field for the Operation returned by MoveProject.",
      id = "MoveProjectMetadata",
      properties = {},
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
    OrgPolicy = {
      description = "Defines a Cloud Organization `Policy` which is used to specify `Constraints` for configurations of Cloud Platform resources.",
      id = "OrgPolicy",
      properties = {
        booleanPolicy = {
          ["$ref"] = "BooleanPolicy",
          description = "For boolean `Constraints`, whether to enforce the `Constraint` or not.",
        },
        constraint = {
          description = "The name of the `Constraint` the `Policy` is configuring, for example, `constraints/serviceuser.services`. A [list of available constraints](/resource-manager/docs/organization-policy/org-policy-constraints) is available. Immutable after creation.",
          type = "string",
        },
        etag = {
          description = "An opaque tag indicating the current version of the `Policy`, used for concurrency control. When the `Policy` is returned from either a `GetPolicy` or a `ListOrgPolicy` request, this `etag` indicates the version of the current `Policy` to use when executing a read-modify-write loop. When the `Policy` is returned from a `GetEffectivePolicy` request, the `etag` will be unset. When the `Policy` is used in a `SetOrgPolicy` method, use the `etag` value that was returned from a `GetOrgPolicy` request as part of a read-modify-write loop for concurrency control. Not setting the `etag`in a `SetOrgPolicy` request will result in an unconditional write of the `Policy`.",
          format = "byte",
          type = "string",
        },
        listPolicy = {
          ["$ref"] = "ListPolicy",
          description = "List of values either allowed or disallowed.",
        },
        restoreDefault = {
          ["$ref"] = "RestoreDefault",
          description = "Restores the default behavior of the constraint; independent of `Constraint` type.",
        },
        updateTime = {
          description = "The time stamp the `Policy` was previously updated. This is set by the server, not specified by the caller, and represents the last time a call to `SetOrgPolicy` was made for that `Policy`. Any value set by the client will be ignored.",
          format = "google-datetime",
          type = "string",
        },
        version = {
          description = "Version of the `Policy`. Default version is 0;",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    Organization = {
      description = "The root node in the resource hierarchy to which a particular entity's (e.g., company) resources belong.",
      id = "Organization",
      properties = {
        creationTime = {
          description = "Timestamp when the Organization was created. Assigned by the server.",
          format = "google-datetime",
          type = "string",
        },
        displayName = {
          description = "A human-readable string that refers to the Organization in the GCP Console UI. This string is set by the server and cannot be changed. The string will be set to the primary domain (for example, \"google.com\") of the G Suite customer that owns the organization.",
          type = "string",
        },
        lifecycleState = {
          description = "The organization's current lifecycle state. Assigned by the server.",
          enum = {
            "LIFECYCLE_STATE_UNSPECIFIED",
            "ACTIVE",
            "DELETE_REQUESTED",
          },
          enumDescriptions = {
            "Unspecified state. This is only useful for distinguishing unset values.",
            "The normal and active state.",
            "The organization has been marked for deletion by the user.",
          },
          type = "string",
        },
        name = {
          description = "Output only. The resource name of the organization. This is the organization's relative path in the API. Its format is \"organizations/[organization_id]\". For example, \"organizations/1234\".",
          type = "string",
        },
        owner = {
          ["$ref"] = "OrganizationOwner",
          description = "The owner of this Organization. The owner should be specified on creation. Once set, it cannot be changed. This field is required.",
        },
      },
      type = "object",
    },
    OrganizationOwner = {
      description = "The entity that owns an Organization. The lifetime of the Organization and all of its descendants are bound to the `OrganizationOwner`. If the `OrganizationOwner` is deleted, the Organization and all its descendants will be deleted.",
      id = "OrganizationOwner",
      properties = {
        directoryCustomerId = {
          description = "The G Suite customer id used in the Directory API.",
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
    Project = {
      description = "A Project is a high-level Google Cloud Platform entity. It is a container for ACLs, APIs, App Engine Apps, VMs, and other Google Cloud Platform resources.",
      id = "Project",
      properties = {
        createTime = {
          description = "Creation time. Read-only.",
          format = "google-datetime",
          type = "string",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "The labels associated with this Project. Label keys must be between 1 and 63 characters long and must conform to the following regular expression: a-z{0,62}. Label values must be between 0 and 63 characters long and must conform to the regular expression [a-z0-9_-]{0,63}. A label value can be empty. No more than 256 labels can be associated with a given resource. Clients should store labels in a representation such as JSON that does not depend on specific characters being disallowed. Example: \"environment\" : \"dev\" Read-write.",
          type = "object",
        },
        lifecycleState = {
          description = "The Project lifecycle state. Read-only.",
          enum = {
            "LIFECYCLE_STATE_UNSPECIFIED",
            "ACTIVE",
            "DELETE_REQUESTED",
            "DELETE_IN_PROGRESS",
          },
          enumDescriptions = {
            "Unspecified state. This is only used/useful for distinguishing unset values.",
            "The normal and active state.",
            "The project has been marked for deletion by the user (by invoking DeleteProject) or by the system (Google Cloud Platform). This can generally be reversed by invoking UndeleteProject.",
            "This lifecycle state is no longer used and not returned by the API.",
          },
          type = "string",
        },
        name = {
          description = "The optional user-assigned display name of the Project. When present it must be between 4 to 30 characters. Allowed characters are: lowercase and uppercase letters, numbers, hyphen, single-quote, double-quote, space, and exclamation point. Example: `My Project` Read-write.",
          type = "string",
        },
        parent = {
          ["$ref"] = "ResourceId",
          description = "An optional reference to a parent Resource. Supported parent types include \"organization\" and \"folder\". Once set, the parent cannot be cleared. The `parent` can be set on creation or using the `UpdateProject` method; the end user must have the `resourcemanager.projects.create` permission on the parent.",
        },
        projectId = {
          description = "The unique, user-assigned ID of the Project. It must be 6 to 30 lowercase letters, digits, or hyphens. It must start with a letter. Trailing hyphens are prohibited. Example: `tokyo-rain-123` Read-only after creation.",
          type = "string",
        },
        projectNumber = {
          description = "The number uniquely identifying the project. Example: `415104041262` Read-only.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    ProjectCreationStatus = {
      description = "A status object which is used as the `metadata` field for the Operation returned by CreateProject. It provides insight for when significant phases of Project creation have completed.",
      id = "ProjectCreationStatus",
      properties = {
        createTime = {
          description = "Creation time of the project creation workflow.",
          format = "google-datetime",
          type = "string",
        },
        gettable = {
          description = "True if the project can be retrieved using GetProject. No other operations on the project are guaranteed to work until the project creation is complete.",
          type = "boolean",
        },
        ready = {
          description = "True if the project creation process is complete.",
          type = "boolean",
        },
      },
      type = "object",
    },
    ResourceId = {
      description = "A container to reference an id for any resource type. A `resource` in Google Cloud Platform is a generic term for something you (a developer) may want to interact with through one of our API's. Some examples are an App Engine app, a Compute Engine instance, a Cloud SQL database, and so on.",
      id = "ResourceId",
      properties = {
        id = {
          description = "The type-specific id. This should correspond to the id used in the type-specific API's.",
          type = "string",
        },
        type = {
          description = "The resource type this id is for. At present, the valid types are: \"organization\", \"folder\", and \"project\".",
          type = "string",
        },
      },
      type = "object",
    },
    RestoreDefault = {
      description = "Ignores policies set above this resource and restores the `constraint_default` enforcement behavior of the specific `Constraint` at this resource. Suppose that `constraint_default` is set to `ALLOW` for the `Constraint` `constraints/serviceuser.services`. Suppose that organization foo.com sets a `Policy` at their Organization resource node that restricts the allowed service activations to deny all service activations. They could then set a `Policy` with the `policy_type` `restore_default` on several experimental projects, restoring the `constraint_default` enforcement of the `Constraint` for only those projects, allowing those projects to have all services activated.",
      id = "RestoreDefault",
      properties = {},
      type = "object",
    },
    SearchOrganizationsRequest = {
      description = "The request sent to the `SearchOrganizations` method.",
      id = "SearchOrganizationsRequest",
      properties = {
        filter = {
          description = "An optional query string used to filter the Organizations to return in the response. Filter rules are case-insensitive. Organizations may be filtered by `owner.directoryCustomerId` or by `domain`, where the domain is a G Suite domain, for example: * Filter `owner.directorycustomerid:123456789` returns Organization resources with `owner.directory_customer_id` equal to `123456789`. * Filter `domain:google.com` returns Organization resources corresponding to the domain `google.com`. This field is optional.",
          type = "string",
        },
        pageSize = {
          description = "The maximum number of Organizations to return in the response. The server can return fewer organizations than requested. If unspecified, server picks an appropriate default.",
          format = "int32",
          type = "integer",
        },
        pageToken = {
          description = "A pagination token returned from a previous call to `SearchOrganizations` that indicates from where listing should continue. This field is optional.",
          type = "string",
        },
      },
      type = "object",
    },
    SearchOrganizationsResponse = {
      description = "The response returned from the `SearchOrganizations` method.",
      id = "SearchOrganizationsResponse",
      properties = {
        nextPageToken = {
          description = "A pagination token to be used to retrieve the next page of results. If the result is too large to fit within the page size specified in the request, this field will be set with a token that can be used to fetch the next page of results. If this field is empty, it indicates that this response contains the last page of results.",
          type = "string",
        },
        organizations = {
          description = "The list of Organizations that matched the search query, possibly paginated.",
          items = {
            ["$ref"] = "Organization",
          },
          type = "array",
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
    SetOrgPolicyRequest = {
      description = "The request sent to the SetOrgPolicyRequest method.",
      id = "SetOrgPolicyRequest",
      properties = {
        policy = {
          ["$ref"] = "OrgPolicy",
          description = "`Policy` to set on the resource.",
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
    UndeleteFolderMetadata = {
      description = "A status object which is used as the `metadata` field for the `Operation` returned by `UndeleteFolder`.",
      id = "UndeleteFolderMetadata",
      properties = {},
      type = "object",
    },
    UndeleteOrganizationMetadata = {
      description = "A status object which is used as the `metadata` field for the Operation returned by UndeleteOrganization.",
      id = "UndeleteOrganizationMetadata",
      properties = {},
      type = "object",
    },
    UndeleteProjectMetadata = {
      description = "A status object which is used as the `metadata` field for the Operation returned by `UndeleteProject`.",
      id = "UndeleteProjectMetadata",
      properties = {},
      type = "object",
    },
    UndeleteProjectRequest = {
      description = "The request sent to the UndeleteProject method.",
      id = "UndeleteProjectRequest",
      properties = {},
      type = "object",
    },
    UpdateFolderMetadata = {
      description = "A status object which is used as the `metadata` field for the Operation returned by UpdateFolder.",
      id = "UpdateFolderMetadata",
      properties = {},
      type = "object",
    },
    UpdateProjectMetadata = {
      description = "A status object which is used as the `metadata` field for the Operation returned by UpdateProject.",
      id = "UpdateProjectMetadata",
      properties = {},
      type = "object",
    },
    UpdateTagKeyMetadata = {
      description = "Runtime operation information for updating a TagKey.",
      id = "UpdateTagKeyMetadata",
      properties = {},
      type = "object",
    },
    UpdateTagValueMetadata = {
      description = "Runtime operation information for updating a TagValue.",
      id = "UpdateTagValueMetadata",
      properties = {},
      type = "object",
    },
  },
  servicePath = "",
  title = "Cloud Resource Manager API",
  version = "v1",
}
