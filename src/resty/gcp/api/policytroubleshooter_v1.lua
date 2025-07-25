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
  baseUrl = "https://policytroubleshooter.googleapis.com/",
  batchPath = "batch",
  canonicalName = "Policy Troubleshooter",
  description = "",
  discoveryVersion = "v1",
  documentationLink = "https://cloud.google.com/iam/",
  fullyEncodeReservedExpansion = true,
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "policytroubleshooter:v1",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://policytroubleshooter.mtls.googleapis.com/",
  name = "policytroubleshooter",
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
    iam = {
      methods = {
        troubleshoot = {
          description = "Checks whether a principal has a specific permission for a specific resource, and explains why the principal does or does not have that permission.",
          flatPath = "v1/iam:troubleshoot",
          httpMethod = "POST",
          id = "policytroubleshooter.iam.troubleshoot",
          parameterOrder = {},
          parameters = {},
          path = "v1/iam:troubleshoot",
          request = {
            ["$ref"] = "GoogleCloudPolicytroubleshooterV1TroubleshootIamPolicyRequest",
          },
          response = {
            ["$ref"] = "GoogleCloudPolicytroubleshooterV1TroubleshootIamPolicyResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
      },
    },
  },
  revision = "20230115",
  rootUrl = "https://policytroubleshooter.googleapis.com/",
  schemas = {
    GoogleCloudPolicytroubleshooterV1AccessTuple = {
      description = "Information about the principal, resource, and permission to check.",
      id = "GoogleCloudPolicytroubleshooterV1AccessTuple",
      properties = {
        fullResourceName = {
          description = "Required. The full resource name that identifies the resource. For example, `//compute.googleapis.com/projects/my-project/zones/us-central1-a/instances/my-instance`. For examples of full resource names for Google Cloud services, see https://cloud.google.com/iam/help/troubleshooter/full-resource-names.",
          type = "string",
        },
        permission = {
          description = "Required. The IAM permission to check for the specified principal and resource. For a complete list of IAM permissions, see https://cloud.google.com/iam/help/permissions/reference. For a complete list of predefined IAM roles and the permissions in each role, see https://cloud.google.com/iam/help/roles/reference.",
          type = "string",
        },
        principal = {
          description = "Required. The principal whose access you want to check, in the form of the email address that represents that principal. For example, `alice@example.com` or `my-service-account@my-project.iam.gserviceaccount.com`. The principal must be a Google Account or a service account. Other types of principals are not supported.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudPolicytroubleshooterV1BindingExplanation = {
      description = "Details about how a binding in a policy affects a principal's ability to use a permission.",
      id = "GoogleCloudPolicytroubleshooterV1BindingExplanation",
      properties = {
        access = {
          description = "Required. Indicates whether _this binding_ provides the specified permission to the specified principal for the specified resource. This field does _not_ indicate whether the principal actually has the permission for the resource. There might be another binding that overrides this binding. To determine whether the principal actually has the permission, use the `access` field in the TroubleshootIamPolicyResponse.",
          enum = {
            "ACCESS_STATE_UNSPECIFIED",
            "GRANTED",
            "NOT_GRANTED",
            "UNKNOWN_CONDITIONAL",
            "UNKNOWN_INFO_DENIED",
          },
          enumDescriptions = {
            "Default value. This value is unused.",
            "The principal has the permission.",
            "The principal does not have the permission.",
            "The principal has the permission only if a condition expression evaluates to `true`.",
            "The sender of the request does not have access to all of the policies that Policy Troubleshooter needs to evaluate.",
          },
          type = "string",
        },
        condition = {
          ["$ref"] = "GoogleTypeExpr",
          description = "A condition expression that prevents this binding from granting access unless the expression evaluates to `true`. To learn about IAM Conditions, see https://cloud.google.com/iam/help/conditions/overview.",
        },
        memberships = {
          additionalProperties = {
            ["$ref"] = "GoogleCloudPolicytroubleshooterV1BindingExplanationAnnotatedMembership",
          },
          description = "Indicates whether each principal in the binding includes the principal specified in the request, either directly or indirectly. Each key identifies a principal in the binding, and each value indicates whether the principal in the binding includes the principal in the request. For example, suppose that a binding includes the following principals: * `user:alice@example.com` * `group:product-eng@example.com` You want to troubleshoot access for `user:bob@example.com`. This user is a principal of the group `group:product-eng@example.com`. For the first principal in the binding, the key is `user:alice@example.com`, and the `membership` field in the value is set to `MEMBERSHIP_NOT_INCLUDED`. For the second principal in the binding, the key is `group:product-eng@example.com`, and the `membership` field in the value is set to `MEMBERSHIP_INCLUDED`.",
          type = "object",
        },
        relevance = {
          description = "The relevance of this binding to the overall determination for the entire policy.",
          enum = {
            "HEURISTIC_RELEVANCE_UNSPECIFIED",
            "NORMAL",
            "HIGH",
          },
          enumDescriptions = {
            "Default value. This value is unused.",
            "The data point has a limited effect on the result. Changing the data point is unlikely to affect the overall determination.",
            "The data point has a strong effect on the result. Changing the data point is likely to affect the overall determination.",
          },
          type = "string",
        },
        role = {
          description = "The role that this binding grants. For example, `roles/compute.serviceAgent`. For a complete list of predefined IAM roles, as well as the permissions in each role, see https://cloud.google.com/iam/help/roles/reference.",
          type = "string",
        },
        rolePermission = {
          description = "Indicates whether the role granted by this binding contains the specified permission.",
          enum = {
            "ROLE_PERMISSION_UNSPECIFIED",
            "ROLE_PERMISSION_INCLUDED",
            "ROLE_PERMISSION_NOT_INCLUDED",
            "ROLE_PERMISSION_UNKNOWN_INFO_DENIED",
          },
          enumDescriptions = {
            "Default value. This value is unused.",
            "The permission is included in the role.",
            "The permission is not included in the role.",
            "The sender of the request is not allowed to access the binding.",
          },
          type = "string",
        },
        rolePermissionRelevance = {
          description = "The relevance of the permission's existence, or nonexistence, in the role to the overall determination for the entire policy.",
          enum = {
            "HEURISTIC_RELEVANCE_UNSPECIFIED",
            "NORMAL",
            "HIGH",
          },
          enumDescriptions = {
            "Default value. This value is unused.",
            "The data point has a limited effect on the result. Changing the data point is unlikely to affect the overall determination.",
            "The data point has a strong effect on the result. Changing the data point is likely to affect the overall determination.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudPolicytroubleshooterV1BindingExplanationAnnotatedMembership = {
      description = "Details about whether the binding includes the principal.",
      id = "GoogleCloudPolicytroubleshooterV1BindingExplanationAnnotatedMembership",
      properties = {
        membership = {
          description = "Indicates whether the binding includes the principal.",
          enum = {
            "MEMBERSHIP_UNSPECIFIED",
            "MEMBERSHIP_INCLUDED",
            "MEMBERSHIP_NOT_INCLUDED",
            "MEMBERSHIP_UNKNOWN_INFO_DENIED",
            "MEMBERSHIP_UNKNOWN_UNSUPPORTED",
          },
          enumDescriptions = {
            "Default value. This value is unused.",
            "The binding includes the principal. The principal can be included directly or indirectly. For example: * A principal is included directly if that principal is listed in the binding. * A principal is included indirectly if that principal is in a Google group or Google Workspace domain that is listed in the binding.",
            "The binding does not include the principal.",
            "The sender of the request is not allowed to access the binding.",
            "The principal is an unsupported type. Only Google Accounts and service accounts are supported.",
          },
          type = "string",
        },
        relevance = {
          description = "The relevance of the principal's status to the overall determination for the binding.",
          enum = {
            "HEURISTIC_RELEVANCE_UNSPECIFIED",
            "NORMAL",
            "HIGH",
          },
          enumDescriptions = {
            "Default value. This value is unused.",
            "The data point has a limited effect on the result. Changing the data point is unlikely to affect the overall determination.",
            "The data point has a strong effect on the result. Changing the data point is likely to affect the overall determination.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudPolicytroubleshooterV1ExplainedPolicy = {
      description = "Details about how a specific IAM Policy contributed to the access check.",
      id = "GoogleCloudPolicytroubleshooterV1ExplainedPolicy",
      properties = {
        access = {
          description = "Indicates whether _this policy_ provides the specified permission to the specified principal for the specified resource. This field does _not_ indicate whether the principal actually has the permission for the resource. There might be another policy that overrides this policy. To determine whether the principal actually has the permission, use the `access` field in the TroubleshootIamPolicyResponse.",
          enum = {
            "ACCESS_STATE_UNSPECIFIED",
            "GRANTED",
            "NOT_GRANTED",
            "UNKNOWN_CONDITIONAL",
            "UNKNOWN_INFO_DENIED",
          },
          enumDescriptions = {
            "Default value. This value is unused.",
            "The principal has the permission.",
            "The principal does not have the permission.",
            "The principal has the permission only if a condition expression evaluates to `true`.",
            "The sender of the request does not have access to all of the policies that Policy Troubleshooter needs to evaluate.",
          },
          type = "string",
        },
        bindingExplanations = {
          description = "Details about how each binding in the policy affects the principal's ability, or inability, to use the permission for the resource. If the sender of the request does not have access to the policy, this field is omitted.",
          items = {
            ["$ref"] = "GoogleCloudPolicytroubleshooterV1BindingExplanation",
          },
          type = "array",
        },
        fullResourceName = {
          description = "The full resource name that identifies the resource. For example, `//compute.googleapis.com/projects/my-project/zones/us-central1-a/instances/my-instance`. If the sender of the request does not have access to the policy, this field is omitted. For examples of full resource names for Google Cloud services, see https://cloud.google.com/iam/help/troubleshooter/full-resource-names.",
          type = "string",
        },
        policy = {
          ["$ref"] = "GoogleIamV1Policy",
          description = "The IAM policy attached to the resource. If the sender of the request does not have access to the policy, this field is empty.",
        },
        relevance = {
          description = "The relevance of this policy to the overall determination in the TroubleshootIamPolicyResponse. If the sender of the request does not have access to the policy, this field is omitted.",
          enum = {
            "HEURISTIC_RELEVANCE_UNSPECIFIED",
            "NORMAL",
            "HIGH",
          },
          enumDescriptions = {
            "Default value. This value is unused.",
            "The data point has a limited effect on the result. Changing the data point is unlikely to affect the overall determination.",
            "The data point has a strong effect on the result. Changing the data point is likely to affect the overall determination.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudPolicytroubleshooterV1TroubleshootIamPolicyRequest = {
      description = "Request for TroubleshootIamPolicy.",
      id = "GoogleCloudPolicytroubleshooterV1TroubleshootIamPolicyRequest",
      properties = {
        accessTuple = {
          ["$ref"] = "GoogleCloudPolicytroubleshooterV1AccessTuple",
          description = "The information to use for checking whether a principal has a permission for a resource.",
        },
      },
      type = "object",
    },
    GoogleCloudPolicytroubleshooterV1TroubleshootIamPolicyResponse = {
      description = "Response for TroubleshootIamPolicy.",
      id = "GoogleCloudPolicytroubleshooterV1TroubleshootIamPolicyResponse",
      properties = {
        access = {
          description = "Indicates whether the principal has the specified permission for the specified resource, based on evaluating all of the applicable IAM policies.",
          enum = {
            "ACCESS_STATE_UNSPECIFIED",
            "GRANTED",
            "NOT_GRANTED",
            "UNKNOWN_CONDITIONAL",
            "UNKNOWN_INFO_DENIED",
          },
          enumDescriptions = {
            "Default value. This value is unused.",
            "The principal has the permission.",
            "The principal does not have the permission.",
            "The principal has the permission only if a condition expression evaluates to `true`.",
            "The sender of the request does not have access to all of the policies that Policy Troubleshooter needs to evaluate.",
          },
          type = "string",
        },
        errors = {
          description = "The general errors contained in the troubleshooting response.",
          items = {
            ["$ref"] = "GoogleRpcStatus",
          },
          type = "array",
        },
        explainedPolicies = {
          description = "List of IAM policies that were evaluated to check the principal's permissions, with annotations to indicate how each policy contributed to the final result. The list of policies can include the policy for the resource itself. It can also include policies that are inherited from higher levels of the resource hierarchy, including the organization, the folder, and the project. To learn more about the resource hierarchy, see https://cloud.google.com/iam/help/resource-hierarchy.",
          items = {
            ["$ref"] = "GoogleCloudPolicytroubleshooterV1ExplainedPolicy",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleIamV1AuditConfig = {
      description = "Specifies the audit configuration for a service. The configuration determines which permission types are logged, and what identities, if any, are exempted from logging. An AuditConfig must have one or more AuditLogConfigs. If there are AuditConfigs for both `allServices` and a specific service, the union of the two AuditConfigs is used for that service: the log_types specified in each AuditConfig are enabled, and the exempted_members in each AuditLogConfig are exempted. Example Policy with multiple AuditConfigs: { \"audit_configs\": [ { \"service\": \"allServices\", \"audit_log_configs\": [ { \"log_type\": \"DATA_READ\", \"exempted_members\": [ \"user:jose@example.com\" ] }, { \"log_type\": \"DATA_WRITE\" }, { \"log_type\": \"ADMIN_READ\" } ] }, { \"service\": \"sampleservice.googleapis.com\", \"audit_log_configs\": [ { \"log_type\": \"DATA_READ\" }, { \"log_type\": \"DATA_WRITE\", \"exempted_members\": [ \"user:aliya@example.com\" ] } ] } ] } For sampleservice, this policy enables DATA_READ, DATA_WRITE and ADMIN_READ logging. It also exempts `jose@example.com` from DATA_READ logging, and `aliya@example.com` from DATA_WRITE logging.",
      id = "GoogleIamV1AuditConfig",
      properties = {
        auditLogConfigs = {
          description = "The configuration for logging of each type of permission.",
          items = {
            ["$ref"] = "GoogleIamV1AuditLogConfig",
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
    GoogleIamV1AuditLogConfig = {
      description = "Provides the configuration for logging a type of permissions. Example: { \"audit_log_configs\": [ { \"log_type\": \"DATA_READ\", \"exempted_members\": [ \"user:jose@example.com\" ] }, { \"log_type\": \"DATA_WRITE\" } ] } This enables 'DATA_READ' and 'DATA_WRITE' logging, while exempting jose@example.com from DATA_READ logging.",
      id = "GoogleIamV1AuditLogConfig",
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
    GoogleIamV1Binding = {
      description = "Associates `members`, or principals, with a `role`.",
      id = "GoogleIamV1Binding",
      properties = {
        condition = {
          ["$ref"] = "GoogleTypeExpr",
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
    GoogleIamV1Policy = {
      description = "An Identity and Access Management (IAM) policy, which specifies access controls for Google Cloud resources. A `Policy` is a collection of `bindings`. A `binding` binds one or more `members`, or principals, to a single `role`. Principals can be user accounts, service accounts, Google groups, and domains (such as G Suite). A `role` is a named list of permissions; each `role` can be an IAM predefined role or a user-created custom role. For some types of Google Cloud resources, a `binding` can also specify a `condition`, which is a logical expression that allows access to a resource only if the expression evaluates to `true`. A condition can add constraints based on attributes of the request, the resource, or both. To learn which resources support conditions in their IAM policies, see the [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies). **JSON example:** { \"bindings\": [ { \"role\": \"roles/resourcemanager.organizationAdmin\", \"members\": [ \"user:mike@example.com\", \"group:admins@example.com\", \"domain:google.com\", \"serviceAccount:my-project-id@appspot.gserviceaccount.com\" ] }, { \"role\": \"roles/resourcemanager.organizationViewer\", \"members\": [ \"user:eve@example.com\" ], \"condition\": { \"title\": \"expirable access\", \"description\": \"Does not grant access after Sep 2020\", \"expression\": \"request.time < timestamp('2020-10-01T00:00:00.000Z')\", } } ], \"etag\": \"BwWWja0YfJA=\", \"version\": 3 } **YAML example:** bindings: - members: - user:mike@example.com - group:admins@example.com - domain:google.com - serviceAccount:my-project-id@appspot.gserviceaccount.com role: roles/resourcemanager.organizationAdmin - members: - user:eve@example.com role: roles/resourcemanager.organizationViewer condition: title: expirable access description: Does not grant access after Sep 2020 expression: request.time < timestamp('2020-10-01T00:00:00.000Z') etag: BwWWja0YfJA= version: 3 For a description of IAM and its features, see the [IAM documentation](https://cloud.google.com/iam/docs/).",
      id = "GoogleIamV1Policy",
      properties = {
        auditConfigs = {
          description = "Specifies cloud audit logging configuration for this policy.",
          items = {
            ["$ref"] = "GoogleIamV1AuditConfig",
          },
          type = "array",
        },
        bindings = {
          description = "Associates a list of `members`, or principals, with a `role`. Optionally, may specify a `condition` that determines how and when the `bindings` are applied. Each of the `bindings` must contain at least one principal. The `bindings` in a `Policy` can refer to up to 1,500 principals; up to 250 of these principals can be Google groups. Each occurrence of a principal counts towards these limits. For example, if the `bindings` grant 50 different roles to `user:alice@example.com`, and not to any other principal, then you can add another 1,450 principals to the `bindings` in the `Policy`.",
          items = {
            ["$ref"] = "GoogleIamV1Binding",
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
    GoogleTypeExpr = {
      description = "Represents a textual expression in the Common Expression Language (CEL) syntax. CEL is a C-like expression language. The syntax and semantics of CEL are documented at https://github.com/google/cel-spec. Example (Comparison): title: \"Summary size limit\" description: \"Determines if a summary is less than 100 chars\" expression: \"document.summary.size() < 100\" Example (Equality): title: \"Requestor is owner\" description: \"Determines if requestor is the document owner\" expression: \"document.owner == request.auth.claims.email\" Example (Logic): title: \"Public documents\" description: \"Determine whether the document should be publicly visible\" expression: \"document.type != 'private' && document.type != 'internal'\" Example (Data Manipulation): title: \"Notification string\" description: \"Create a notification string with a timestamp.\" expression: \"'New message received at ' + string(document.create_time)\" The exact variables and functions that may be referenced within an expression are determined by the service that evaluates it. See the service documentation for additional information.",
      id = "GoogleTypeExpr",
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
  },
  servicePath = "",
  title = "Policy Troubleshooter API",
  version = "v1",
  version_module = true,
}
