return {
  basePath = "",
  baseUrl = "https://paymentsresellersubscription.googleapis.com/",
  batchPath = "batch",
  canonicalName = "Payments Reseller Subscription",
  description = "",
  discoveryVersion = "v1",
  documentationLink = "https://developers.google.com/payments/reseller/subscription/",
  fullyEncodeReservedExpansion = true,
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "paymentsresellersubscription:v1",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://paymentsresellersubscription.mtls.googleapis.com/",
  name = "paymentsresellersubscription",
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
    partners = {
      resources = {
        products = {
          methods = {
            list = {
              description = "To retrieve the products that can be resold by the partner. It should be autenticated with a service account.",
              flatPath = "v1/partners/{partnersId}/products",
              httpMethod = "GET",
              id = "paymentsresellersubscription.partners.products.list",
              parameterOrder = {
                "parent",
              },
              parameters = {
                filter = {
                  description = "Optional. Specifies the filters for the product results. The syntax is defined in https://google.aip.dev/160 with the following caveats: - Only the following features are supported: - Logical operator `AND` - Comparison operator `=` (no wildcards `*`) - Traversal operator `.` - Has operator `:` (no wildcards `*`) - Only the following fields are supported: - `regionCodes` - `youtubePayload.partnerEligibilityId` - `youtubePayload.postalCode` - Unless explicitly mentioned above, other features are not supported. Example: `regionCodes:US AND youtubePayload.postalCode=94043 AND youtubePayload.partnerEligibilityId=eligibility-id`",
                  location = "query",
                  type = "string",
                },
                pageSize = {
                  description = "Optional. The maximum number of products to return. The service may return fewer than this value. If unspecified, at most 50 products will be returned. The maximum value is 1000; values above 1000 will be coerced to 1000.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "Optional. A page token, received from a previous `ListProducts` call. Provide this to retrieve the subsequent page. When paginating, all other parameters provided to `ListProducts` must match the call that provided the page token.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "Required. The parent, the partner that can resell. Format: partners/{partner}",
                  location = "path",
                  pattern = "^partners/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/products",
              response = {
                ["$ref"] = "GoogleCloudPaymentsResellerSubscriptionV1ListProductsResponse",
              },
            },
          },
        },
        promotions = {
          methods = {
            findEligible = {
              description = "To find eligible promotions for the current user. The API requires user authorization via OAuth. The user is inferred from the authenticated OAuth credential.",
              flatPath = "v1/partners/{partnersId}/promotions:findEligible",
              httpMethod = "POST",
              id = "paymentsresellersubscription.partners.promotions.findEligible",
              parameterOrder = {
                "parent",
              },
              parameters = {
                parent = {
                  description = "Required. The parent, the partner that can resell. Format: partners/{partner}",
                  location = "path",
                  pattern = "^partners/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/promotions:findEligible",
              request = {
                ["$ref"] = "GoogleCloudPaymentsResellerSubscriptionV1FindEligiblePromotionsRequest",
              },
              response = {
                ["$ref"] = "GoogleCloudPaymentsResellerSubscriptionV1FindEligiblePromotionsResponse",
              },
            },
            list = {
              description = "To retrieve the promotions, such as free trial, that can be used by the partner. It should be autenticated with a service account.",
              flatPath = "v1/partners/{partnersId}/promotions",
              httpMethod = "GET",
              id = "paymentsresellersubscription.partners.promotions.list",
              parameterOrder = {
                "parent",
              },
              parameters = {
                filter = {
                  description = "Optional. Specifies the filters for the promotion results. The syntax is defined in https://google.aip.dev/160 with the following caveats: - Only the following features are supported: - Logical operator `AND` - Comparison operator `=` (no wildcards `*`) - Traversal operator `.` - Has operator `:` (no wildcards `*`) - Only the following fields are supported: - `applicableProducts` - `regionCodes` - `youtubePayload.partnerEligibilityId` - `youtubePayload.postalCode` - Unless explicitly mentioned above, other features are not supported. Example: `applicableProducts:partners/partner1/products/product1 AND regionCodes:US AND youtubePayload.postalCode=94043 AND youtubePayload.partnerEligibilityId=eligibility-id`",
                  location = "query",
                  type = "string",
                },
                pageSize = {
                  description = "Optional. The maximum number of promotions to return. The service may return fewer than this value. If unspecified, at most 50 products will be returned. The maximum value is 1000; values above 1000 will be coerced to 1000.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "Optional. A page token, received from a previous `ListPromotions` call. Provide this to retrieve the subsequent page. When paginating, all other parameters provided to `ListPromotions` must match the call that provided the page token.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "Required. The parent, the partner that can resell. Format: partners/{partner}",
                  location = "path",
                  pattern = "^partners/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/promotions",
              response = {
                ["$ref"] = "GoogleCloudPaymentsResellerSubscriptionV1ListPromotionsResponse",
              },
            },
          },
        },
        subscriptions = {
          methods = {
            cancel = {
              description = "Used by partners to cancel a subscription service either immediately or by the end of the current billing cycle for their customers. It should be called directly by the partner using service accounts.",
              flatPath = "v1/partners/{partnersId}/subscriptions/{subscriptionsId}:cancel",
              httpMethod = "POST",
              id = "paymentsresellersubscription.partners.subscriptions.cancel",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. The name of the subscription resource to be cancelled. It will have the format of \"partners/{partner_id}/subscriptions/{subscription_id}\"",
                  location = "path",
                  pattern = "^partners/[^/]+/subscriptions/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}:cancel",
              request = {
                ["$ref"] = "GoogleCloudPaymentsResellerSubscriptionV1CancelSubscriptionRequest",
              },
              response = {
                ["$ref"] = "GoogleCloudPaymentsResellerSubscriptionV1CancelSubscriptionResponse",
              },
            },
            create = {
              description = "Used by partners to create a subscription for their customers. The created subscription is associated with the end user inferred from the end user credentials. This API must be authorized by the end user using OAuth.",
              flatPath = "v1/partners/{partnersId}/subscriptions",
              httpMethod = "POST",
              id = "paymentsresellersubscription.partners.subscriptions.create",
              parameterOrder = {
                "parent",
              },
              parameters = {
                parent = {
                  description = "Required. The parent resource name, which is the identifier of the partner. It will have the format of \"partners/{partner_id}\".",
                  location = "path",
                  pattern = "^partners/[^/]+$",
                  required = true,
                  type = "string",
                },
                subscriptionId = {
                  description = "Required. Identifies the subscription resource on the Partner side. The value is restricted to 63 ASCII characters at the maximum. If a subscription was previously created with the same subscription_id, we will directly return that one.",
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/{+parent}/subscriptions",
              request = {
                ["$ref"] = "GoogleCloudPaymentsResellerSubscriptionV1Subscription",
              },
              response = {
                ["$ref"] = "GoogleCloudPaymentsResellerSubscriptionV1Subscription",
              },
            },
            entitle = {
              description = "Used by partners to entitle a previously provisioned subscription to the current end user. The end user identity is inferred from the authorized credential of the request. This API must be authorized by the end user using OAuth.",
              flatPath = "v1/partners/{partnersId}/subscriptions/{subscriptionsId}:entitle",
              httpMethod = "POST",
              id = "paymentsresellersubscription.partners.subscriptions.entitle",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. The name of the subscription resource that is entitled to the current end user. It will have the format of \"partners/{partner_id}/subscriptions/{subscription_id}\"",
                  location = "path",
                  pattern = "^partners/[^/]+/subscriptions/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}:entitle",
              request = {
                ["$ref"] = "GoogleCloudPaymentsResellerSubscriptionV1EntitleSubscriptionRequest",
              },
              response = {
                ["$ref"] = "GoogleCloudPaymentsResellerSubscriptionV1EntitleSubscriptionResponse",
              },
            },
            extend = {
              description = "[Deprecated] New partners should be on auto-extend by default. Used by partners to extend a subscription service for their customers on an ongoing basis for the subscription to remain active and renewable. It should be called directly by the partner using service accounts.",
              flatPath = "v1/partners/{partnersId}/subscriptions/{subscriptionsId}:extend",
              httpMethod = "POST",
              id = "paymentsresellersubscription.partners.subscriptions.extend",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. The name of the subscription resource to be extended. It will have the format of \"partners/{partner_id}/subscriptions/{subscription_id}\".",
                  location = "path",
                  pattern = "^partners/[^/]+/subscriptions/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}:extend",
              request = {
                ["$ref"] = "GoogleCloudPaymentsResellerSubscriptionV1ExtendSubscriptionRequest",
              },
              response = {
                ["$ref"] = "GoogleCloudPaymentsResellerSubscriptionV1ExtendSubscriptionResponse",
              },
            },
            get = {
              description = "Used by partners to get a subscription by id. It should be called directly by the partner using service accounts.",
              flatPath = "v1/partners/{partnersId}/subscriptions/{subscriptionsId}",
              httpMethod = "GET",
              id = "paymentsresellersubscription.partners.subscriptions.get",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. The name of the subscription resource to retrieve. It will have the format of \"partners/{partner_id}/subscriptions/{subscription_id}\"",
                  location = "path",
                  pattern = "^partners/[^/]+/subscriptions/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}",
              response = {
                ["$ref"] = "GoogleCloudPaymentsResellerSubscriptionV1Subscription",
              },
            },
            provision = {
              description = "Used by partners to provision a subscription for their customers. This creates a subscription without associating it with the end user account. EntitleSubscription must be called separately using OAuth in order for the end user account to be associated with the subscription. It should be called directly by the partner using service accounts.",
              flatPath = "v1/partners/{partnersId}/subscriptions:provision",
              httpMethod = "POST",
              id = "paymentsresellersubscription.partners.subscriptions.provision",
              parameterOrder = {
                "parent",
              },
              parameters = {
                parent = {
                  description = "Required. The parent resource name, which is the identifier of the partner. It will have the format of \"partners/{partner_id}\".",
                  location = "path",
                  pattern = "^partners/[^/]+$",
                  required = true,
                  type = "string",
                },
                subscriptionId = {
                  description = "Required. Identifies the subscription resource on the Partner side. The value is restricted to 63 ASCII characters at the maximum. If a subscription was previously created with the same subscription_id, we will directly return that one.",
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/{+parent}/subscriptions:provision",
              request = {
                ["$ref"] = "GoogleCloudPaymentsResellerSubscriptionV1Subscription",
              },
              response = {
                ["$ref"] = "GoogleCloudPaymentsResellerSubscriptionV1Subscription",
              },
            },
            undoCancel = {
              description = "Used by partners to revoke the pending cancellation of a subscription, which is currently in `STATE_CANCEL_AT_END_OF_CYCLE` state. If the subscription is already cancelled, the request will fail. It should be called directly by the partner using service accounts.",
              flatPath = "v1/partners/{partnersId}/subscriptions/{subscriptionsId}:undoCancel",
              httpMethod = "POST",
              id = "paymentsresellersubscription.partners.subscriptions.undoCancel",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. The name of the subscription resource whose pending cancellation needs to be undone. It will have the format of \"partners/{partner_id}/subscriptions/{subscription_id}\"",
                  location = "path",
                  pattern = "^partners/[^/]+/subscriptions/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}:undoCancel",
              request = {
                ["$ref"] = "GoogleCloudPaymentsResellerSubscriptionV1UndoCancelSubscriptionRequest",
              },
              response = {
                ["$ref"] = "GoogleCloudPaymentsResellerSubscriptionV1UndoCancelSubscriptionResponse",
              },
            },
          },
        },
      },
    },
  },
  revision = "20230116",
  rootUrl = "https://paymentsresellersubscription.googleapis.com/",
  schemas = {
    GoogleCloudPaymentsResellerSubscriptionV1Amount = {
      description = "Describes the amount unit including the currency code.",
      id = "GoogleCloudPaymentsResellerSubscriptionV1Amount",
      properties = {
        amountMicros = {
          description = "Required. Amount in micros (1_000_000 micros = 1 currency unit)",
          format = "int64",
          type = "string",
        },
        currencyCode = {
          description = "Required. Currency codes in accordance with [ISO-4217 Currency Codes] (https://en.wikipedia.org/wiki/ISO_4217). For example, USD.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudPaymentsResellerSubscriptionV1CancelSubscriptionRequest = {
      id = "GoogleCloudPaymentsResellerSubscriptionV1CancelSubscriptionRequest",
      properties = {
        cancelImmediately = {
          description = "Optional. If true, Google will cancel the subscription immediately, and issue a prorated refund for the remainder of the billing cycle. Otherwise, Google defers the cancelation at renewal_time, and therefore, will not issue a refund.",
          type = "boolean",
        },
        cancellationReason = {
          description = "Specifies the reason for the cancellation.",
          enum = {
            "CANCELLATION_REASON_UNSPECIFIED",
            "CANCELLATION_REASON_FRAUD",
            "CANCELLATION_REASON_REMORSE",
            "CANCELLATION_REASON_ACCIDENTAL_PURCHASE",
            "CANCELLATION_REASON_PAST_DUE",
            "CANCELLATION_REASON_ACCOUNT_CLOSED",
            "CANCELLATION_REASON_UPGRADE_DOWNGRADE",
            "CANCELLATION_REASON_USER_DELINQUENCY",
            "CANCELLATION_REASON_OTHER",
          },
          enumDescriptions = {
            "Reason is unspecified.",
            "Fraudualant transaction.",
            "Buyer's remorse.",
            "Accidential purchase.",
            "Payment is past due.",
            "User account closed.",
            "Used for notification only, do not use in Cancel API. Cancellation due to upgrade or downgrade.",
            "Cancellation due to user delinquency",
            "Other reason.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudPaymentsResellerSubscriptionV1CancelSubscriptionResponse = {
      id = "GoogleCloudPaymentsResellerSubscriptionV1CancelSubscriptionResponse",
      properties = {
        subscription = {
          ["$ref"] = "GoogleCloudPaymentsResellerSubscriptionV1Subscription",
          description = "The cancelled subscription resource.",
        },
      },
      type = "object",
    },
    GoogleCloudPaymentsResellerSubscriptionV1Duration = {
      description = "Describes the length of a period of a time.",
      id = "GoogleCloudPaymentsResellerSubscriptionV1Duration",
      properties = {
        count = {
          description = "number of duration units to be included.",
          format = "int32",
          type = "integer",
        },
        unit = {
          description = "The unit used for the duration",
          enum = {
            "UNIT_UNSPECIFIED",
            "MONTH",
            "DAY",
          },
          enumDescriptions = {
            "Default value.",
            "Unit of a calendar month.",
            "Unit of a day.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudPaymentsResellerSubscriptionV1EntitleSubscriptionRequest = {
      description = "Partner request for entitling the previously provisioned subscription to an end user. The end user identity is inferred from the request OAuth context.",
      id = "GoogleCloudPaymentsResellerSubscriptionV1EntitleSubscriptionRequest",
      properties = {},
      type = "object",
    },
    GoogleCloudPaymentsResellerSubscriptionV1EntitleSubscriptionResponse = {
      id = "GoogleCloudPaymentsResellerSubscriptionV1EntitleSubscriptionResponse",
      properties = {
        subscription = {
          ["$ref"] = "GoogleCloudPaymentsResellerSubscriptionV1Subscription",
          description = "The subscription that has user linked to it.",
        },
      },
      type = "object",
    },
    GoogleCloudPaymentsResellerSubscriptionV1ExtendSubscriptionRequest = {
      description = "Request message for extending a Subscription resource. A new recurrence will be made based on the subscription schedule defined by the original product.",
      id = "GoogleCloudPaymentsResellerSubscriptionV1ExtendSubscriptionRequest",
      properties = {
        extension = {
          ["$ref"] = "GoogleCloudPaymentsResellerSubscriptionV1Extension",
          description = "Required. Specifies details of the extension. Currently, the duration of the extension must be exactly one billing cycle of the original subscription.",
        },
        requestId = {
          description = "Required. Restricted to 36 ASCII characters. A random UUID is recommended. The idempotency key for the request. The ID generation logic is controlled by the partner. request_id should be the same as on retries of the same request. A different request_id must be used for a extension of a different cycle. A random UUID is recommended.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudPaymentsResellerSubscriptionV1ExtendSubscriptionResponse = {
      id = "GoogleCloudPaymentsResellerSubscriptionV1ExtendSubscriptionResponse",
      properties = {
        cycleEndTime = {
          description = "The time at which the subscription is expected to be extended, in ISO 8061 format. UTC timezone. Example, \"cycleEndTime\":\"2019-08-31T17:28:54.564Z\"",
          format = "google-datetime",
          type = "string",
        },
        freeTrialEndTime = {
          description = "End of the free trial period, in ISO 8061 format. UTC timezone. Example, \"freeTrialEndTime\":\"2019-08-31T17:28:54.564Z\" This time will be set the same as initial subscription creation time if no free trial period is offered to the partner.",
          format = "google-datetime",
          type = "string",
        },
        renewalTime = {
          description = "Output only. The time at which the subscription is expected to be renewed by Google - a new charge will be incurred and the service entitlement will be renewed. A non-immediate cancellation will take place at this time too, before which, the service entitlement for the end user will remain valid. UTC timezone in ISO 8061 format. For example: \"2019-08-31T17:28:54.564Z\"",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudPaymentsResellerSubscriptionV1Extension = {
      description = "Describes the details of an extension request.",
      id = "GoogleCloudPaymentsResellerSubscriptionV1Extension",
      properties = {
        duration = {
          ["$ref"] = "GoogleCloudPaymentsResellerSubscriptionV1Duration",
          description = "Specifies the period of access the subscription should grant.",
        },
        partnerUserToken = {
          description = "Required. Identifier of the end-user in partner’s system.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudPaymentsResellerSubscriptionV1FindEligiblePromotionsRequest = {
      id = "GoogleCloudPaymentsResellerSubscriptionV1FindEligiblePromotionsRequest",
      properties = {
        filter = {
          description = "Optional. Specifies the filters for the promotion results. The syntax is defined in https://google.aip.dev/160 with the following caveats: - Only the following features are supported: - Logical operator `AND` - Comparison operator `=` (no wildcards `*`) - Traversal operator `.` - Has operator `:` (no wildcards `*`) - Only the following fields are supported: - `applicableProducts` - `regionCodes` - `youtubePayload.partnerEligibilityId` - `youtubePayload.postalCode` - Unless explicitly mentioned above, other features are not supported. Example: `applicableProducts:partners/partner1/products/product1 AND regionCodes:US AND youtubePayload.postalCode=94043 AND youtubePayload.partnerEligibilityId=eligibility-id`",
          type = "string",
        },
        pageSize = {
          description = "Optional. The maximum number of promotions to return. The service may return fewer than this value. If unspecified, at most 50 products will be returned. The maximum value is 1000; values above 1000 will be coerced to 1000.",
          format = "int32",
          type = "integer",
        },
        pageToken = {
          description = "Optional. A page token, received from a previous `ListPromotions` call. Provide this to retrieve the subsequent page. When paginating, all other parameters provided to `ListPromotions` must match the call that provided the page token.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudPaymentsResellerSubscriptionV1FindEligiblePromotionsResponse = {
      description = "Response containing the found promotions for the current user.",
      id = "GoogleCloudPaymentsResellerSubscriptionV1FindEligiblePromotionsResponse",
      properties = {
        nextPageToken = {
          description = "A token, which can be sent as `page_token` to retrieve the next page. If this field is empty, there are no subsequent pages.",
          type = "string",
        },
        promotions = {
          description = "The promotions for the current user.",
          items = {
            ["$ref"] = "GoogleCloudPaymentsResellerSubscriptionV1Promotion",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudPaymentsResellerSubscriptionV1GoogleOnePayload = {
      description = "Payload specific to Google One products.",
      id = "GoogleCloudPaymentsResellerSubscriptionV1GoogleOnePayload",
      properties = {
        campaigns = {
          description = "Campaign attributed to sales of this subscription.",
          items = {
            type = "string",
          },
          type = "array",
        },
        offering = {
          description = "The type of offering the subscription was sold by the partner. e.g. VAS.",
          enum = {
            "OFFERING_UNSPECIFIED",
            "OFFERING_VAS_BUNDLE",
            "OFFERING_VAS_STANDALONE",
            "OFFERING_HARD_BUNDLE",
            "OFFERING_SOFT_BUNDLE",
          },
          enumDescriptions = {
            "The type of partner offering is unspecified.",
            "Google One product purchased as a Value added service in addition to existing partner's products. Customer pays additional amount for Google One product.",
            "Google One product purchased by itself by customer as a value add service. Customer pays additional amount for Google One product.",
            "Product purchased as part of a hard bundle where Google One was included with the bundle. Google One pricing is included in the bundle.",
            "Purchased as part of a bundle where Google One was provided as an option. Google One pricing is included in the bundle.",
          },
          type = "string",
        },
        salesChannel = {
          description = "The type of sales channel through which the subscription was sold.",
          enum = {
            "CHANNEL_UNSPECIFIED",
            "CHANNEL_RETAIL",
            "CHANNEL_ONLINE_WEB",
            "CHANNEL_ONLINE_ANDROID_APP",
            "CHANNEL_ONLINE_IOS_APP",
          },
          enumDescriptions = {
            "The channel type is unspecified.",
            "Sold at store.",
            "Sold through partner website.",
            "Sold through partner android app.",
            "Sold through partner iOS app.",
          },
          type = "string",
        },
        storeId = {
          description = "The identifier for the partner store where the subscription was sold.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudPaymentsResellerSubscriptionV1ListProductsResponse = {
      id = "GoogleCloudPaymentsResellerSubscriptionV1ListProductsResponse",
      properties = {
        nextPageToken = {
          description = "A token, which can be sent as `page_token` to retrieve the next page. If this field is empty, there are no subsequent pages.",
          type = "string",
        },
        products = {
          description = "The products for the specified partner.",
          items = {
            ["$ref"] = "GoogleCloudPaymentsResellerSubscriptionV1Product",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudPaymentsResellerSubscriptionV1ListPromotionsResponse = {
      id = "GoogleCloudPaymentsResellerSubscriptionV1ListPromotionsResponse",
      properties = {
        nextPageToken = {
          description = "A token, which can be sent as `page_token` to retrieve the next page. If this field is empty, there are no subsequent pages.",
          type = "string",
        },
        promotions = {
          description = "The promotions for the specified partner.",
          items = {
            ["$ref"] = "GoogleCloudPaymentsResellerSubscriptionV1Promotion",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudPaymentsResellerSubscriptionV1Location = {
      description = "Describes a location of an end user.",
      id = "GoogleCloudPaymentsResellerSubscriptionV1Location",
      properties = {
        postalCode = {
          description = "The postal code this location refers to. Ex. \"94043\"",
          type = "string",
        },
        regionCode = {
          description = "2-letter ISO region code for current content region. Ex. “US” Please refers to: https://en.wikipedia.org/wiki/ISO_3166-1",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudPaymentsResellerSubscriptionV1Product = {
      description = "A Product resource that defines a subscription service that can be resold.",
      id = "GoogleCloudPaymentsResellerSubscriptionV1Product",
      properties = {
        name = {
          description = "Output only. Response only. Resource name of the product. It will have the format of \"partners/{partner_id}/products/{product_id}\"",
          readOnly = true,
          type = "string",
        },
        priceConfigs = {
          description = "Output only. Price configs for the product in the available regions.",
          items = {
            ["$ref"] = "GoogleCloudPaymentsResellerSubscriptionV1ProductPriceConfig",
          },
          readOnly = true,
          type = "array",
        },
        regionCodes = {
          description = "Output only. 2-letter ISO region code where the product is available in. Ex. \"US\" Please refers to: https://en.wikipedia.org/wiki/ISO_3166-1",
          items = {
            type = "string",
          },
          readOnly = true,
          type = "array",
        },
        subscriptionBillingCycleDuration = {
          ["$ref"] = "GoogleCloudPaymentsResellerSubscriptionV1Duration",
          description = "Output only. Specifies the length of the billing cycle of the subscription.",
          readOnly = true,
        },
        titles = {
          description = "Output only. Localized human readable name of the product.",
          items = {
            ["$ref"] = "GoogleTypeLocalizedText",
          },
          readOnly = true,
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudPaymentsResellerSubscriptionV1ProductPayload = {
      description = "Specifies product specific payload.",
      id = "GoogleCloudPaymentsResellerSubscriptionV1ProductPayload",
      properties = {
        googleOnePayload = {
          ["$ref"] = "GoogleCloudPaymentsResellerSubscriptionV1GoogleOnePayload",
          description = "Payload specific to Google One products.",
        },
        youtubePayload = {
          ["$ref"] = "GoogleCloudPaymentsResellerSubscriptionV1YoutubePayload",
          description = "Payload specific to Youtube products.",
        },
      },
      type = "object",
    },
    GoogleCloudPaymentsResellerSubscriptionV1ProductPriceConfig = {
      description = "Configs the prices in an available region.",
      id = "GoogleCloudPaymentsResellerSubscriptionV1ProductPriceConfig",
      properties = {
        amount = {
          ["$ref"] = "GoogleCloudPaymentsResellerSubscriptionV1Amount",
          description = "Output only. The price in the region.",
          readOnly = true,
        },
        regionCode = {
          description = "Output only. 2-letter ISO region code where the product is available in. Ex. \"US\".",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudPaymentsResellerSubscriptionV1Promotion = {
      description = "A Promotion resource that defines a promotion for a subscription that can be resold.",
      id = "GoogleCloudPaymentsResellerSubscriptionV1Promotion",
      properties = {
        applicableProducts = {
          description = "Output only. The product ids this promotion can be applied to.",
          items = {
            type = "string",
          },
          readOnly = true,
          type = "array",
        },
        endTime = {
          description = "Optional. Specifies the end time (exclusive) of the period that the promotion is available in. If unset, the promotion is available indefinitely.",
          format = "google-datetime",
          type = "string",
        },
        freeTrialDuration = {
          ["$ref"] = "GoogleCloudPaymentsResellerSubscriptionV1Duration",
          description = "Optional. Specifies the duration of the free trial of the subscription when promotion_type is PROMOTION_TYPE_FREE_TRIAL",
        },
        introductoryPricingDetails = {
          ["$ref"] = "GoogleCloudPaymentsResellerSubscriptionV1PromotionIntroductoryPricingDetails",
          description = "Optional. Specifies the introductory pricing details when the promotion_type is PROMOTION_TYPE_INTRODUCTORY_PRICING.",
        },
        name = {
          description = "Output only. Response only. Resource name of the subscription promotion. It will have the format of \"partners/{partner_id}/promotion/{promotion_id}\"",
          readOnly = true,
          type = "string",
        },
        promotionType = {
          description = "Output only. Output Only. Specifies the type of the promotion.",
          enum = {
            "PROMOTION_TYPE_UNSPECIFIED",
            "PROMOTION_TYPE_FREE_TRIAL",
            "PROMOTION_TYPE_INTRODUCTORY_PRICING",
          },
          enumDescriptions = {
            "The promotion type is unspecified.",
            "The promotion is a free trial.",
            "The promotion is a reduced introductory pricing.",
          },
          readOnly = true,
          type = "string",
        },
        regionCodes = {
          description = "Output only. 2-letter ISO region code where the promotion is available in. Ex. \"US\" Please refers to: https://en.wikipedia.org/wiki/ISO_3166-1",
          items = {
            type = "string",
          },
          readOnly = true,
          type = "array",
        },
        startTime = {
          description = "Optional. Specifies the start time (inclusive) of the period that the promotion is available in.",
          format = "google-datetime",
          type = "string",
        },
        titles = {
          description = "Output only. Localized human readable name of the promotion.",
          items = {
            ["$ref"] = "GoogleTypeLocalizedText",
          },
          readOnly = true,
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudPaymentsResellerSubscriptionV1PromotionIntroductoryPricingDetails = {
      description = "The details of a introductory pricing promotion.",
      id = "GoogleCloudPaymentsResellerSubscriptionV1PromotionIntroductoryPricingDetails",
      properties = {
        introductoryPricingSpecs = {
          description = "Specifies the introductory pricing periods.",
          items = {
            ["$ref"] = "GoogleCloudPaymentsResellerSubscriptionV1PromotionIntroductoryPricingDetailsIntroductoryPricingSpec",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudPaymentsResellerSubscriptionV1PromotionIntroductoryPricingDetailsIntroductoryPricingSpec = {
      description = "The duration of an introductory pricing promotion.",
      id = "GoogleCloudPaymentsResellerSubscriptionV1PromotionIntroductoryPricingDetailsIntroductoryPricingSpec",
      properties = {
        discountAmount = {
          ["$ref"] = "GoogleCloudPaymentsResellerSubscriptionV1Amount",
          description = "Output only. The discount amount. The value is positive.",
          readOnly = true,
        },
        discountRatioMicros = {
          description = "Output only. The discount percentage in micros. For example, 50,000 represents 5%.",
          format = "int64",
          readOnly = true,
          type = "string",
        },
        recurrenceCount = {
          description = "Output only. Output Only. The duration of an introductory offer in billing cycles.",
          format = "int32",
          readOnly = true,
          type = "integer",
        },
        regionCode = {
          description = "Output only. 2-letter ISO region code where the product is available in. Ex. \"US\".",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudPaymentsResellerSubscriptionV1ServicePeriod = {
      description = "A description of what time period or moment in time the product or service is being delivered over.",
      id = "GoogleCloudPaymentsResellerSubscriptionV1ServicePeriod",
      properties = {
        endTime = {
          description = "Optional. The end time of the service period. Time is exclusive.",
          format = "google-datetime",
          type = "string",
        },
        startTime = {
          description = "Required. The start time of the service period. Time is inclusive.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudPaymentsResellerSubscriptionV1Subscription = {
      description = "A Subscription resource managed by 3P Partners.",
      id = "GoogleCloudPaymentsResellerSubscriptionV1Subscription",
      properties = {
        cancellationDetails = {
          ["$ref"] = "GoogleCloudPaymentsResellerSubscriptionV1SubscriptionCancellationDetails",
          description = "Output only. Describes the details of a cancelled subscription. Only applicable to subscription of state `STATE_CANCELLED`.",
          readOnly = true,
        },
        createTime = {
          description = "Output only. System generated timestamp when the subscription is created. UTC timezone.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        cycleEndTime = {
          description = "Output only. The time at which the subscription is expected to be extended, in ISO 8061 format. UTC timezone. For example: \"2019-08-31T17:28:54.564Z\"",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        endUserEntitled = {
          description = "Output only. Indicates if the subscription is entitled to the end user.",
          readOnly = true,
          type = "boolean",
        },
        freeTrialEndTime = {
          description = "Output only. End of the free trial period, in ISO 8061 format. For example, \"2019-08-31T17:28:54.564Z\". It will be set the same as createTime if no free trial promotion is specified.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        lineItems = {
          description = "Required. The line items of the subscription.",
          items = {
            ["$ref"] = "GoogleCloudPaymentsResellerSubscriptionV1SubscriptionLineItem",
          },
          type = "array",
        },
        name = {
          description = "Optional. Resource name of the subscription. It will have the format of \"partners/{partner_id}/subscriptions/{subscription_id}\". This is available for authorizeAddon, but otherwise is response only.",
          type = "string",
        },
        partnerUserToken = {
          description = "Required. Identifier of the end-user in partner’s system. The value is restricted to 63 ASCII characters at the maximum.",
          type = "string",
        },
        processingState = {
          description = "Output only. Describes the processing state of the subscription. See more details at [the lifecycle of a subscription](/payments/reseller/subscription/reference/index/Receive.Notifications#payments-subscription-lifecycle).",
          enum = {
            "PROCESSING_STATE_UNSPECIFIED",
            "PROCESSING_STATE_CANCELLING",
            "PROCESSING_STATE_RECURRING",
          },
          enumDescriptions = {
            "The processing state is unspecified.",
            "The subscription is being cancelled.",
            "The subscription is recurring.",
          },
          readOnly = true,
          type = "string",
        },
        products = {
          description = "Required. Deprecated: consider using `line_items` as the input. Required. Resource name that identifies the purchased products. The format will be 'partners/{partner_id}/products/{product_id}'.",
          items = {
            type = "string",
          },
          type = "array",
        },
        promotionSpecs = {
          description = "Optional. Subscription-level promotions. Only free trial is supported on this level. It determines the first renewal time of the subscription to be the end of the free trial period. Specify the promotion resource name only when used as input.",
          items = {
            ["$ref"] = "GoogleCloudPaymentsResellerSubscriptionV1SubscriptionPromotionSpec",
          },
          type = "array",
        },
        promotions = {
          description = "Optional. Deprecated: consider using the top-level `promotion_specs` as the input. Optional. Resource name that identifies one or more promotions that can be applied on the product. A typical promotion for a subscription is Free trial. The format will be 'partners/{partner_id}/promotions/{promotion_id}'.",
          items = {
            type = "string",
          },
          type = "array",
        },
        redirectUri = {
          description = "Output only. The place where partners should redirect the end-user to after creation. This field might also be populated when creation failed. However, Partners should always prepare a default URL to redirect the user in case this field is empty.",
          readOnly = true,
          type = "string",
        },
        renewalTime = {
          description = "Output only. The time at which the subscription is expected to be renewed by Google - a new charge will be incurred and the service entitlement will be renewed. A non-immediate cancellation will take place at this time too, before which, the service entitlement for the end user will remain valid. UTC timezone in ISO 8061 format. For example: \"2019-08-31T17:28:54.564Z\"",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        serviceLocation = {
          ["$ref"] = "GoogleCloudPaymentsResellerSubscriptionV1Location",
          description = "Required. The location that the service is provided as indicated by the partner.",
        },
        state = {
          description = "Output only. Describes the state of the subscription. See more details at [the lifecycle of a subscription](/payments/reseller/subscription/reference/index/Receive.Notifications#payments-subscription-lifecycle).",
          enum = {
            "STATE_UNSPECIFIED",
            "STATE_CREATED",
            "STATE_ACTIVE",
            "STATE_CANCELLED",
            "STATE_IN_GRACE_PERIOD",
            "STATE_CANCEL_AT_END_OF_CYCLE",
            "STATE_SUSPENDED",
          },
          enumDescriptions = {
            "The state is unspecified.",
            "The subscription is created, a state before it is moved to STATE_ACTIVE.",
            "The subscription is active.",
            "The subscription is cancelled.",
            "The subscription has not been extended by the partner after the end of current cycle.",
            "The subscription is waiting to be cancelled by the next recurrence cycle.",
            "The subscription is suspended.",
          },
          readOnly = true,
          type = "string",
        },
        updateTime = {
          description = "Output only. System generated timestamp when the subscription is most recently updated. UTC timezone.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        upgradeDowngradeDetails = {
          ["$ref"] = "GoogleCloudPaymentsResellerSubscriptionV1SubscriptionUpgradeDowngradeDetails",
          description = "Optional. Details about the previous subscription that this new subscription upgrades/downgrades from. Only populated if this subscription is an upgrade/downgrade from another subscription.",
        },
      },
      type = "object",
    },
    GoogleCloudPaymentsResellerSubscriptionV1SubscriptionCancellationDetails = {
      description = "Describes the details of a cancelled or cancelling subscription.",
      id = "GoogleCloudPaymentsResellerSubscriptionV1SubscriptionCancellationDetails",
      properties = {
        reason = {
          description = "The reason of the cancellation.",
          enum = {
            "CANCELLATION_REASON_UNSPECIFIED",
            "CANCELLATION_REASON_FRAUD",
            "CANCELLATION_REASON_REMORSE",
            "CANCELLATION_REASON_ACCIDENTAL_PURCHASE",
            "CANCELLATION_REASON_PAST_DUE",
            "CANCELLATION_REASON_ACCOUNT_CLOSED",
            "CANCELLATION_REASON_UPGRADE_DOWNGRADE",
            "CANCELLATION_REASON_USER_DELINQUENCY",
            "CANCELLATION_REASON_OTHER",
          },
          enumDescriptions = {
            "Reason is unspecified.",
            "Fraudualant transaction.",
            "Buyer's remorse.",
            "Accidential purchase.",
            "Payment is past due.",
            "User account closed.",
            "Used for notification only, do not use in Cancel API. Cancellation due to upgrade or downgrade.",
            "Cancellation due to user delinquency",
            "Other reason.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudPaymentsResellerSubscriptionV1SubscriptionLineItem = {
      description = "Individual line item definition of a subscription.",
      id = "GoogleCloudPaymentsResellerSubscriptionV1SubscriptionLineItem",
      properties = {
        description = {
          description = "Output only. Description of this line item.",
          readOnly = true,
          type = "string",
        },
        lineItemFreeTrialEndTime = {
          description = "Output only. It is set only if the line item has its own free trial applied. End time of the line item free trial period, in ISO 8061 format. For example, \"2019-08-31T17:28:54.564Z\". It will be set the same as createTime if no free trial promotion is specified.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        lineItemPromotionSpecs = {
          description = "Optional. The promotions applied on the line item. It can be: - a free trial promotion, which overrides the subscription-level free trial promotion. - an introductory pricing promotion. When used as input in Create or Provision API, specify its resource name only.",
          items = {
            ["$ref"] = "GoogleCloudPaymentsResellerSubscriptionV1SubscriptionPromotionSpec",
          },
          type = "array",
        },
        oneTimeRecurrenceDetails = {
          ["$ref"] = "GoogleCloudPaymentsResellerSubscriptionV1SubscriptionLineItemOneTimeRecurrenceDetails",
          description = "Output only. Details only set for a ONE_TIME recurrence line item.",
          readOnly = true,
        },
        product = {
          description = "Required. Product resource name that identifies one the line item The format is 'partners/{partner_id}/products/{product_id}'.",
          type = "string",
        },
        productPayload = {
          ["$ref"] = "GoogleCloudPaymentsResellerSubscriptionV1ProductPayload",
          description = "Optional. Product specific payload for this line item.",
        },
        recurrenceType = {
          description = "Output only. The recurrence type of the line item.",
          enum = {
            "LINE_ITEM_RECURRENCE_TYPE_UNSPECIFIED",
            "LINE_ITEM_RECURRENCE_TYPE_PERIODIC",
            "LINE_ITEM_RECURRENCE_TYPE_ONE_TIME",
          },
          enumDescriptions = {
            "The line item recurrence type is unspecified.",
            "The line item recurs periodically.",
            "The line item does not recur in the future.",
          },
          readOnly = true,
          type = "string",
        },
        state = {
          description = "Output only. The state of the line item.",
          enum = {
            "LINE_ITEM_STATE_UNSPECIFIED",
            "LINE_ITEM_STATE_ACTIVE",
            "LINE_ITEM_STATE_INACTIVE",
            "LINE_ITEM_STATE_NEW",
            "LINE_ITEM_STATE_ACTIVATING",
            "LINE_ITEM_STATE_DEACTIVATING",
            "LINE_ITEM_STATE_WAITING_TO_DEACTIVATE",
          },
          enumDescriptions = {
            "Unspecified state.",
            "The line item is in ACTIVE state.",
            "The line item is in INACTIVE state.",
            "The line item is new, and is not activated or charged yet.",
            "The line item is being activated in order to be charged. If a free trial applies to the line item, the line item is pending a prorated charge at the end of the free trial period, as indicated by `line_item_free_trial_end_time`.",
            "The line item is being deactivated, and a prorated refund in being processed.",
            "The line item is scheduled to be deactivated at the end of the current cycle.",
          },
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudPaymentsResellerSubscriptionV1SubscriptionLineItemOneTimeRecurrenceDetails = {
      description = "Details for a ONE_TIME recurrence line item.",
      id = "GoogleCloudPaymentsResellerSubscriptionV1SubscriptionLineItemOneTimeRecurrenceDetails",
      properties = {
        servicePeriod = {
          ["$ref"] = "GoogleCloudPaymentsResellerSubscriptionV1ServicePeriod",
          description = "The service period of the ONE_TIME line item.",
        },
      },
      type = "object",
    },
    GoogleCloudPaymentsResellerSubscriptionV1SubscriptionPromotionSpec = {
      description = "Describes the spec for one promotion.",
      id = "GoogleCloudPaymentsResellerSubscriptionV1SubscriptionPromotionSpec",
      properties = {
        freeTrialDuration = {
          ["$ref"] = "GoogleCloudPaymentsResellerSubscriptionV1Duration",
          description = "Output only. The duration of the free trial if the promotion is of type FREE_TRIAL.",
          readOnly = true,
        },
        introductoryPricingDetails = {
          ["$ref"] = "GoogleCloudPaymentsResellerSubscriptionV1PromotionIntroductoryPricingDetails",
          description = "Output only. The details of the introductory pricing spec if the promotion is of type INTRODUCTORY_PRICING.",
          readOnly = true,
        },
        promotion = {
          description = "Required. Promotion resource name that identifies a promotion. The format is 'partners/{partner_id}/promotions/{promotion_id}'.",
          type = "string",
        },
        type = {
          description = "Output only. The type of the promotion for the spec.",
          enum = {
            "PROMOTION_TYPE_UNSPECIFIED",
            "PROMOTION_TYPE_FREE_TRIAL",
            "PROMOTION_TYPE_INTRODUCTORY_PRICING",
          },
          enumDescriptions = {
            "The promotion type is unspecified.",
            "The promotion is a free trial.",
            "The promotion is a reduced introductory pricing.",
          },
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudPaymentsResellerSubscriptionV1SubscriptionUpgradeDowngradeDetails = {
      description = "Details about the previous subscription that this new subscription upgrades/downgrades from.",
      id = "GoogleCloudPaymentsResellerSubscriptionV1SubscriptionUpgradeDowngradeDetails",
      properties = {
        billingCycleSpec = {
          description = "Required. Specifies the billing cycle spec for the new upgraded/downgraded subscription.",
          enum = {
            "BILLING_CYCLE_SPEC_UNSPECIFIED",
            "BILLING_CYCLE_SPEC_ALIGN_WITH_PREVIOUS_SUBSCRIPTION",
            "BILLING_CYCLE_SPEC_START_IMMEDIATELY",
          },
          enumDescriptions = {
            "Billing cycle spec is not specified.",
            "The billing cycle of the new subscription aligns with the previous subscription it upgrades or downgrades from.",
            "The billing cycle of the new subscription starts immediately.",
          },
          type = "string",
        },
        previousSubscriptionId = {
          description = "Required. The previous subscription id to be replaced. This is not the full resource name, use the subscription_id segment only.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudPaymentsResellerSubscriptionV1UndoCancelSubscriptionRequest = {
      description = "Request to revoke a cancellation request.",
      id = "GoogleCloudPaymentsResellerSubscriptionV1UndoCancelSubscriptionRequest",
      properties = {},
      type = "object",
    },
    GoogleCloudPaymentsResellerSubscriptionV1UndoCancelSubscriptionResponse = {
      description = "Response that contains the updated subscription resource.",
      id = "GoogleCloudPaymentsResellerSubscriptionV1UndoCancelSubscriptionResponse",
      properties = {
        subscription = {
          ["$ref"] = "GoogleCloudPaymentsResellerSubscriptionV1Subscription",
          description = "The updated subscription resource.",
        },
      },
      type = "object",
    },
    GoogleCloudPaymentsResellerSubscriptionV1YoutubePayload = {
      description = "Payload specific to Youtube products.",
      id = "GoogleCloudPaymentsResellerSubscriptionV1YoutubePayload",
      properties = {
        partnerEligibilityIds = {
          description = "The list of eligibility_ids which are applicable for the line item.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleTypeLocalizedText = {
      description = "Localized variant of a text in a particular language.",
      id = "GoogleTypeLocalizedText",
      properties = {
        languageCode = {
          description = "The text's BCP-47 language code, such as \"en-US\" or \"sr-Latn\". For more information, see http://www.unicode.org/reports/tr35/#Unicode_locale_identifier.",
          type = "string",
        },
        text = {
          description = "Localized string in the language corresponding to `language_code' below.",
          type = "string",
        },
      },
      type = "object",
    },
  },
  servicePath = "",
  title = "Payments Reseller Subscription API",
  version = "v1",
  version_module = true,
}
