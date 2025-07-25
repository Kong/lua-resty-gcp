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
  baseUrl = "https://pubsublite.googleapis.com/",
  batchPath = "batch",
  canonicalName = "PubsubLite",
  description = "",
  discoveryVersion = "v1",
  documentationLink = "https://cloud.google.com/pubsub/lite/docs",
  fullyEncodeReservedExpansion = true,
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "pubsublite:v1",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://pubsublite.mtls.googleapis.com/",
  name = "pubsublite",
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
    admin = {
      resources = {
        projects = {
          resources = {
            locations = {
              resources = {
                operations = {
                  methods = {
                    cancel = {
                      description = "Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of 1, corresponding to `Code.CANCELLED`.",
                      flatPath = "v1/admin/projects/{projectsId}/locations/{locationsId}/operations/{operationsId}:cancel",
                      httpMethod = "POST",
                      id = "pubsublite.admin.projects.locations.operations.cancel",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "The name of the operation resource to be cancelled.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/operations/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/admin/{+name}:cancel",
                      request = {
                        ["$ref"] = "CancelOperationRequest",
                      },
                      response = {
                        ["$ref"] = "Empty",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    delete = {
                      description = "Deletes a long-running operation. This method indicates that the client is no longer interested in the operation result. It does not cancel the operation. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.",
                      flatPath = "v1/admin/projects/{projectsId}/locations/{locationsId}/operations/{operationsId}",
                      httpMethod = "DELETE",
                      id = "pubsublite.admin.projects.locations.operations.delete",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "The name of the operation resource to be deleted.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/operations/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/admin/{+name}",
                      response = {
                        ["$ref"] = "Empty",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    get = {
                      description = "Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.",
                      flatPath = "v1/admin/projects/{projectsId}/locations/{locationsId}/operations/{operationsId}",
                      httpMethod = "GET",
                      id = "pubsublite.admin.projects.locations.operations.get",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "The name of the operation resource.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/operations/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/admin/{+name}",
                      response = {
                        ["$ref"] = "Operation",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    list = {
                      description = "Lists operations that match the specified filter in the request. If the server doesn't support this method, it returns `UNIMPLEMENTED`. NOTE: the `name` binding allows API services to override the binding to use different resource name schemes, such as `users/*/operations`. To override the binding, API services can add a binding such as `\"/v1/{name=users/*}/operations\"` to their service configuration. For backwards compatibility, the default name includes the operations collection id, however overriding users must ensure the name binding is the parent resource, without the operations collection id.",
                      flatPath = "v1/admin/projects/{projectsId}/locations/{locationsId}/operations",
                      httpMethod = "GET",
                      id = "pubsublite.admin.projects.locations.operations.list",
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
                          pattern = "^projects/[^/]+/locations/[^/]+$",
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
                      path = "v1/admin/{+name}/operations",
                      response = {
                        ["$ref"] = "ListOperationsResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                  },
                },
                reservations = {
                  methods = {
                    create = {
                      description = "Creates a new reservation.",
                      flatPath = "v1/admin/projects/{projectsId}/locations/{locationsId}/reservations",
                      httpMethod = "POST",
                      id = "pubsublite.admin.projects.locations.reservations.create",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        parent = {
                          description = "Required. The parent location in which to create the reservation. Structured like `projects/{project_number}/locations/{location}`.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+$",
                          required = true,
                          type = "string",
                        },
                        reservationId = {
                          description = "Required. The ID to use for the reservation, which will become the final component of the reservation's name. This value is structured like: `my-reservation-name`.",
                          location = "query",
                          type = "string",
                        },
                      },
                      path = "v1/admin/{+parent}/reservations",
                      request = {
                        ["$ref"] = "Reservation",
                      },
                      response = {
                        ["$ref"] = "Reservation",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    delete = {
                      description = "Deletes the specified reservation.",
                      flatPath = "v1/admin/projects/{projectsId}/locations/{locationsId}/reservations/{reservationsId}",
                      httpMethod = "DELETE",
                      id = "pubsublite.admin.projects.locations.reservations.delete",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The name of the reservation to delete. Structured like: projects/{project_number}/locations/{location}/reservations/{reservation_id}",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/reservations/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/admin/{+name}",
                      response = {
                        ["$ref"] = "Empty",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    get = {
                      description = "Returns the reservation configuration.",
                      flatPath = "v1/admin/projects/{projectsId}/locations/{locationsId}/reservations/{reservationsId}",
                      httpMethod = "GET",
                      id = "pubsublite.admin.projects.locations.reservations.get",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The name of the reservation whose configuration to return. Structured like: projects/{project_number}/locations/{location}/reservations/{reservation_id}",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/reservations/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/admin/{+name}",
                      response = {
                        ["$ref"] = "Reservation",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    list = {
                      description = "Returns the list of reservations for the given project.",
                      flatPath = "v1/admin/projects/{projectsId}/locations/{locationsId}/reservations",
                      httpMethod = "GET",
                      id = "pubsublite.admin.projects.locations.reservations.list",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        pageSize = {
                          description = "The maximum number of reservations to return. The service may return fewer than this value. If unset or zero, all reservations for the parent will be returned.",
                          format = "int32",
                          location = "query",
                          type = "integer",
                        },
                        pageToken = {
                          description = "A page token, received from a previous `ListReservations` call. Provide this to retrieve the subsequent page. When paginating, all other parameters provided to `ListReservations` must match the call that provided the page token.",
                          location = "query",
                          type = "string",
                        },
                        parent = {
                          description = "Required. The parent whose reservations are to be listed. Structured like `projects/{project_number}/locations/{location}`.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/admin/{+parent}/reservations",
                      response = {
                        ["$ref"] = "ListReservationsResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    patch = {
                      description = "Updates properties of the specified reservation.",
                      flatPath = "v1/admin/projects/{projectsId}/locations/{locationsId}/reservations/{reservationsId}",
                      httpMethod = "PATCH",
                      id = "pubsublite.admin.projects.locations.reservations.patch",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "The name of the reservation. Structured like: projects/{project_number}/locations/{location}/reservations/{reservation_id}",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/reservations/[^/]+$",
                          required = true,
                          type = "string",
                        },
                        updateMask = {
                          description = "Required. A mask specifying the reservation fields to change.",
                          format = "google-fieldmask",
                          location = "query",
                          type = "string",
                        },
                      },
                      path = "v1/admin/{+name}",
                      request = {
                        ["$ref"] = "Reservation",
                      },
                      response = {
                        ["$ref"] = "Reservation",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                  },
                  resources = {
                    topics = {
                      methods = {
                        list = {
                          description = "Lists the topics attached to the specified reservation.",
                          flatPath = "v1/admin/projects/{projectsId}/locations/{locationsId}/reservations/{reservationsId}/topics",
                          httpMethod = "GET",
                          id = "pubsublite.admin.projects.locations.reservations.topics.list",
                          parameterOrder = {
                            "name",
                          },
                          parameters = {
                            name = {
                              description = "Required. The name of the reservation whose topics to list. Structured like: projects/{project_number}/locations/{location}/reservations/{reservation_id}",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/reservations/[^/]+$",
                              required = true,
                              type = "string",
                            },
                            pageSize = {
                              description = "The maximum number of topics to return. The service may return fewer than this value. If unset or zero, all topics for the given reservation will be returned.",
                              format = "int32",
                              location = "query",
                              type = "integer",
                            },
                            pageToken = {
                              description = "A page token, received from a previous `ListReservationTopics` call. Provide this to retrieve the subsequent page. When paginating, all other parameters provided to `ListReservationTopics` must match the call that provided the page token.",
                              location = "query",
                              type = "string",
                            },
                          },
                          path = "v1/admin/{+name}/topics",
                          response = {
                            ["$ref"] = "ListReservationTopicsResponse",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                          },
                        },
                      },
                    },
                  },
                },
                subscriptions = {
                  methods = {
                    create = {
                      description = "Creates a new subscription.",
                      flatPath = "v1/admin/projects/{projectsId}/locations/{locationsId}/subscriptions",
                      httpMethod = "POST",
                      id = "pubsublite.admin.projects.locations.subscriptions.create",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        parent = {
                          description = "Required. The parent location in which to create the subscription. Structured like `projects/{project_number}/locations/{location}`.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+$",
                          required = true,
                          type = "string",
                        },
                        skipBacklog = {
                          description = "If true, the newly created subscription will only receive messages published after the subscription was created. Otherwise, the entire message backlog will be received on the subscription. Defaults to false.",
                          location = "query",
                          type = "boolean",
                        },
                        subscriptionId = {
                          description = "Required. The ID to use for the subscription, which will become the final component of the subscription's name. This value is structured like: `my-sub-name`.",
                          location = "query",
                          type = "string",
                        },
                      },
                      path = "v1/admin/{+parent}/subscriptions",
                      request = {
                        ["$ref"] = "Subscription",
                      },
                      response = {
                        ["$ref"] = "Subscription",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    delete = {
                      description = "Deletes the specified subscription.",
                      flatPath = "v1/admin/projects/{projectsId}/locations/{locationsId}/subscriptions/{subscriptionsId}",
                      httpMethod = "DELETE",
                      id = "pubsublite.admin.projects.locations.subscriptions.delete",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The name of the subscription to delete.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/subscriptions/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/admin/{+name}",
                      response = {
                        ["$ref"] = "Empty",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    get = {
                      description = "Returns the subscription configuration.",
                      flatPath = "v1/admin/projects/{projectsId}/locations/{locationsId}/subscriptions/{subscriptionsId}",
                      httpMethod = "GET",
                      id = "pubsublite.admin.projects.locations.subscriptions.get",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The name of the subscription whose configuration to return.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/subscriptions/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/admin/{+name}",
                      response = {
                        ["$ref"] = "Subscription",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    list = {
                      description = "Returns the list of subscriptions for the given project.",
                      flatPath = "v1/admin/projects/{projectsId}/locations/{locationsId}/subscriptions",
                      httpMethod = "GET",
                      id = "pubsublite.admin.projects.locations.subscriptions.list",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        pageSize = {
                          description = "The maximum number of subscriptions to return. The service may return fewer than this value. If unset or zero, all subscriptions for the parent will be returned.",
                          format = "int32",
                          location = "query",
                          type = "integer",
                        },
                        pageToken = {
                          description = "A page token, received from a previous `ListSubscriptions` call. Provide this to retrieve the subsequent page. When paginating, all other parameters provided to `ListSubscriptions` must match the call that provided the page token.",
                          location = "query",
                          type = "string",
                        },
                        parent = {
                          description = "Required. The parent whose subscriptions are to be listed. Structured like `projects/{project_number}/locations/{location}`.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/admin/{+parent}/subscriptions",
                      response = {
                        ["$ref"] = "ListSubscriptionsResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    patch = {
                      description = "Updates properties of the specified subscription.",
                      flatPath = "v1/admin/projects/{projectsId}/locations/{locationsId}/subscriptions/{subscriptionsId}",
                      httpMethod = "PATCH",
                      id = "pubsublite.admin.projects.locations.subscriptions.patch",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "The name of the subscription. Structured like: projects/{project_number}/locations/{location}/subscriptions/{subscription_id}",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/subscriptions/[^/]+$",
                          required = true,
                          type = "string",
                        },
                        updateMask = {
                          description = "Required. A mask specifying the subscription fields to change.",
                          format = "google-fieldmask",
                          location = "query",
                          type = "string",
                        },
                      },
                      path = "v1/admin/{+name}",
                      request = {
                        ["$ref"] = "Subscription",
                      },
                      response = {
                        ["$ref"] = "Subscription",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    seek = {
                      description = "Performs an out-of-band seek for a subscription to a specified target, which may be timestamps or named positions within the message backlog. Seek translates these targets to cursors for each partition and orchestrates subscribers to start consuming messages from these seek cursors. If an operation is returned, the seek has been registered and subscribers will eventually receive messages from the seek cursors (i.e. eventual consistency), as long as they are using a minimum supported client library version and not a system that tracks cursors independently of Pub/Sub Lite (e.g. Apache Beam, Dataflow, Spark). The seek operation will fail for unsupported clients. If clients would like to know when subscribers react to the seek (or not), they can poll the operation. The seek operation will succeed and complete once subscribers are ready to receive messages from the seek cursors for all partitions of the topic. This means that the seek operation will not complete until all subscribers come online. If the previous seek operation has not yet completed, it will be aborted and the new invocation of seek will supersede it.",
                      flatPath = "v1/admin/projects/{projectsId}/locations/{locationsId}/subscriptions/{subscriptionsId}:seek",
                      httpMethod = "POST",
                      id = "pubsublite.admin.projects.locations.subscriptions.seek",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The name of the subscription to seek.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/subscriptions/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/admin/{+name}:seek",
                      request = {
                        ["$ref"] = "SeekSubscriptionRequest",
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
                topics = {
                  methods = {
                    create = {
                      description = "Creates a new topic.",
                      flatPath = "v1/admin/projects/{projectsId}/locations/{locationsId}/topics",
                      httpMethod = "POST",
                      id = "pubsublite.admin.projects.locations.topics.create",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        parent = {
                          description = "Required. The parent location in which to create the topic. Structured like `projects/{project_number}/locations/{location}`.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+$",
                          required = true,
                          type = "string",
                        },
                        topicId = {
                          description = "Required. The ID to use for the topic, which will become the final component of the topic's name. This value is structured like: `my-topic-name`.",
                          location = "query",
                          type = "string",
                        },
                      },
                      path = "v1/admin/{+parent}/topics",
                      request = {
                        ["$ref"] = "Topic",
                      },
                      response = {
                        ["$ref"] = "Topic",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    delete = {
                      description = "Deletes the specified topic.",
                      flatPath = "v1/admin/projects/{projectsId}/locations/{locationsId}/topics/{topicsId}",
                      httpMethod = "DELETE",
                      id = "pubsublite.admin.projects.locations.topics.delete",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The name of the topic to delete.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/topics/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/admin/{+name}",
                      response = {
                        ["$ref"] = "Empty",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    get = {
                      description = "Returns the topic configuration.",
                      flatPath = "v1/admin/projects/{projectsId}/locations/{locationsId}/topics/{topicsId}",
                      httpMethod = "GET",
                      id = "pubsublite.admin.projects.locations.topics.get",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The name of the topic whose configuration to return.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/topics/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/admin/{+name}",
                      response = {
                        ["$ref"] = "Topic",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    getPartitions = {
                      description = "Returns the partition information for the requested topic.",
                      flatPath = "v1/admin/projects/{projectsId}/locations/{locationsId}/topics/{topicsId}/partitions",
                      httpMethod = "GET",
                      id = "pubsublite.admin.projects.locations.topics.getPartitions",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The topic whose partition information to return.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/topics/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/admin/{+name}/partitions",
                      response = {
                        ["$ref"] = "TopicPartitions",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    list = {
                      description = "Returns the list of topics for the given project.",
                      flatPath = "v1/admin/projects/{projectsId}/locations/{locationsId}/topics",
                      httpMethod = "GET",
                      id = "pubsublite.admin.projects.locations.topics.list",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        pageSize = {
                          description = "The maximum number of topics to return. The service may return fewer than this value. If unset or zero, all topics for the parent will be returned.",
                          format = "int32",
                          location = "query",
                          type = "integer",
                        },
                        pageToken = {
                          description = "A page token, received from a previous `ListTopics` call. Provide this to retrieve the subsequent page. When paginating, all other parameters provided to `ListTopics` must match the call that provided the page token.",
                          location = "query",
                          type = "string",
                        },
                        parent = {
                          description = "Required. The parent whose topics are to be listed. Structured like `projects/{project_number}/locations/{location}`.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/admin/{+parent}/topics",
                      response = {
                        ["$ref"] = "ListTopicsResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    patch = {
                      description = "Updates properties of the specified topic.",
                      flatPath = "v1/admin/projects/{projectsId}/locations/{locationsId}/topics/{topicsId}",
                      httpMethod = "PATCH",
                      id = "pubsublite.admin.projects.locations.topics.patch",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "The name of the topic. Structured like: projects/{project_number}/locations/{location}/topics/{topic_id}",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/topics/[^/]+$",
                          required = true,
                          type = "string",
                        },
                        updateMask = {
                          description = "Required. A mask specifying the topic fields to change.",
                          format = "google-fieldmask",
                          location = "query",
                          type = "string",
                        },
                      },
                      path = "v1/admin/{+name}",
                      request = {
                        ["$ref"] = "Topic",
                      },
                      response = {
                        ["$ref"] = "Topic",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                  },
                  resources = {
                    subscriptions = {
                      methods = {
                        list = {
                          description = "Lists the subscriptions attached to the specified topic.",
                          flatPath = "v1/admin/projects/{projectsId}/locations/{locationsId}/topics/{topicsId}/subscriptions",
                          httpMethod = "GET",
                          id = "pubsublite.admin.projects.locations.topics.subscriptions.list",
                          parameterOrder = {
                            "name",
                          },
                          parameters = {
                            name = {
                              description = "Required. The name of the topic whose subscriptions to list.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/topics/[^/]+$",
                              required = true,
                              type = "string",
                            },
                            pageSize = {
                              description = "The maximum number of subscriptions to return. The service may return fewer than this value. If unset or zero, all subscriptions for the given topic will be returned.",
                              format = "int32",
                              location = "query",
                              type = "integer",
                            },
                            pageToken = {
                              description = "A page token, received from a previous `ListTopicSubscriptions` call. Provide this to retrieve the subsequent page. When paginating, all other parameters provided to `ListTopicSubscriptions` must match the call that provided the page token.",
                              location = "query",
                              type = "string",
                            },
                          },
                          path = "v1/admin/{+name}/subscriptions",
                          response = {
                            ["$ref"] = "ListTopicSubscriptionsResponse",
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
    },
    cursor = {
      resources = {
        projects = {
          resources = {
            locations = {
              resources = {
                subscriptions = {
                  methods = {
                    commitCursor = {
                      description = "Updates the committed cursor.",
                      flatPath = "v1/cursor/projects/{projectsId}/locations/{locationsId}/subscriptions/{subscriptionsId}:commitCursor",
                      httpMethod = "POST",
                      id = "pubsublite.cursor.projects.locations.subscriptions.commitCursor",
                      parameterOrder = {
                        "subscription",
                      },
                      parameters = {
                        subscription = {
                          description = "The subscription for which to update the cursor.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/subscriptions/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/cursor/{+subscription}:commitCursor",
                      request = {
                        ["$ref"] = "CommitCursorRequest",
                      },
                      response = {
                        ["$ref"] = "CommitCursorResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                  },
                  resources = {
                    cursors = {
                      methods = {
                        list = {
                          description = "Returns all committed cursor information for a subscription.",
                          flatPath = "v1/cursor/projects/{projectsId}/locations/{locationsId}/subscriptions/{subscriptionsId}/cursors",
                          httpMethod = "GET",
                          id = "pubsublite.cursor.projects.locations.subscriptions.cursors.list",
                          parameterOrder = {
                            "parent",
                          },
                          parameters = {
                            pageSize = {
                              description = "The maximum number of cursors to return. The service may return fewer than this value. If unset or zero, all cursors for the parent will be returned.",
                              format = "int32",
                              location = "query",
                              type = "integer",
                            },
                            pageToken = {
                              description = "A page token, received from a previous `ListPartitionCursors` call. Provide this to retrieve the subsequent page. When paginating, all other parameters provided to `ListPartitionCursors` must match the call that provided the page token.",
                              location = "query",
                              type = "string",
                            },
                            parent = {
                              description = "Required. The subscription for which to retrieve cursors. Structured like `projects/{project_number}/locations/{location}/subscriptions/{subscription_id}`.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/subscriptions/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v1/cursor/{+parent}/cursors",
                          response = {
                            ["$ref"] = "ListPartitionCursorsResponse",
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
    },
    topicStats = {
      resources = {
        projects = {
          resources = {
            locations = {
              resources = {
                topics = {
                  methods = {
                    computeHeadCursor = {
                      description = "Compute the head cursor for the partition. The head cursor's offset is guaranteed to be less than or equal to all messages which have not yet been acknowledged as published, and greater than the offset of any message whose publish has already been acknowledged. It is zero if there have never been messages in the partition.",
                      flatPath = "v1/topicStats/projects/{projectsId}/locations/{locationsId}/topics/{topicsId}:computeHeadCursor",
                      httpMethod = "POST",
                      id = "pubsublite.topicStats.projects.locations.topics.computeHeadCursor",
                      parameterOrder = {
                        "topic",
                      },
                      parameters = {
                        topic = {
                          description = "Required. The topic for which we should compute the head cursor.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/topics/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/topicStats/{+topic}:computeHeadCursor",
                      request = {
                        ["$ref"] = "ComputeHeadCursorRequest",
                      },
                      response = {
                        ["$ref"] = "ComputeHeadCursorResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    computeMessageStats = {
                      description = "Compute statistics about a range of messages in a given topic and partition.",
                      flatPath = "v1/topicStats/projects/{projectsId}/locations/{locationsId}/topics/{topicsId}:computeMessageStats",
                      httpMethod = "POST",
                      id = "pubsublite.topicStats.projects.locations.topics.computeMessageStats",
                      parameterOrder = {
                        "topic",
                      },
                      parameters = {
                        topic = {
                          description = "Required. The topic for which we should compute message stats.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/topics/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/topicStats/{+topic}:computeMessageStats",
                      request = {
                        ["$ref"] = "ComputeMessageStatsRequest",
                      },
                      response = {
                        ["$ref"] = "ComputeMessageStatsResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    computeTimeCursor = {
                      description = "Compute the corresponding cursor for a publish or event time in a topic partition.",
                      flatPath = "v1/topicStats/projects/{projectsId}/locations/{locationsId}/topics/{topicsId}:computeTimeCursor",
                      httpMethod = "POST",
                      id = "pubsublite.topicStats.projects.locations.topics.computeTimeCursor",
                      parameterOrder = {
                        "topic",
                      },
                      parameters = {
                        topic = {
                          description = "Required. The topic for which we should compute the cursor.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/topics/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/topicStats/{+topic}:computeTimeCursor",
                      request = {
                        ["$ref"] = "ComputeTimeCursorRequest",
                      },
                      response = {
                        ["$ref"] = "ComputeTimeCursorResponse",
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
  revision = "20221230",
  rootUrl = "https://pubsublite.googleapis.com/",
  schemas = {
    CancelOperationRequest = {
      description = "The request message for Operations.CancelOperation.",
      id = "CancelOperationRequest",
      properties = {},
      type = "object",
    },
    Capacity = {
      description = "The throughput capacity configuration for each partition.",
      id = "Capacity",
      properties = {
        publishMibPerSec = {
          description = "Publish throughput capacity per partition in MiB/s. Must be >= 4 and <= 16.",
          format = "int32",
          type = "integer",
        },
        subscribeMibPerSec = {
          description = "Subscribe throughput capacity per partition in MiB/s. Must be >= 4 and <= 32.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    CommitCursorRequest = {
      description = "Request for CommitCursor.",
      id = "CommitCursorRequest",
      properties = {
        cursor = {
          ["$ref"] = "Cursor",
          description = "The new value for the committed cursor.",
        },
        partition = {
          description = "The partition for which to update the cursor. Partitions are zero indexed, so `partition` must be in the range [0, topic.num_partitions).",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    CommitCursorResponse = {
      description = "Response for CommitCursor.",
      id = "CommitCursorResponse",
      properties = {},
      type = "object",
    },
    ComputeHeadCursorRequest = {
      description = "Compute the current head cursor for a partition.",
      id = "ComputeHeadCursorRequest",
      properties = {
        partition = {
          description = "Required. The partition for which we should compute the head cursor.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    ComputeHeadCursorResponse = {
      description = "Response containing the head cursor for the requested topic and partition.",
      id = "ComputeHeadCursorResponse",
      properties = {
        headCursor = {
          ["$ref"] = "Cursor",
          description = "The head cursor.",
        },
      },
      type = "object",
    },
    ComputeMessageStatsRequest = {
      description = "Compute statistics about a range of messages in a given topic and partition.",
      id = "ComputeMessageStatsRequest",
      properties = {
        endCursor = {
          ["$ref"] = "Cursor",
          description = "The exclusive end of the range. The range is empty if end_cursor <= start_cursor. Specifying a start_cursor before the first message and an end_cursor after the last message will retrieve all messages.",
        },
        partition = {
          description = "Required. The partition for which we should compute message stats.",
          format = "int64",
          type = "string",
        },
        startCursor = {
          ["$ref"] = "Cursor",
          description = "The inclusive start of the range.",
        },
      },
      type = "object",
    },
    ComputeMessageStatsResponse = {
      description = "Response containing stats for messages in the requested topic and partition.",
      id = "ComputeMessageStatsResponse",
      properties = {
        messageBytes = {
          description = "The number of quota bytes accounted to these messages.",
          format = "int64",
          type = "string",
        },
        messageCount = {
          description = "The count of messages.",
          format = "int64",
          type = "string",
        },
        minimumEventTime = {
          description = "The minimum event timestamp across these messages. For the purposes of this computation, if a message does not have an event time, we use the publish time. The timestamp will be unset if there are no messages.",
          format = "google-datetime",
          type = "string",
        },
        minimumPublishTime = {
          description = "The minimum publish timestamp across these messages. Note that publish timestamps within a partition are not guaranteed to be non-decreasing. The timestamp will be unset if there are no messages.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    ComputeTimeCursorRequest = {
      description = "Compute the corresponding cursor for a publish or event time in a topic partition.",
      id = "ComputeTimeCursorRequest",
      properties = {
        partition = {
          description = "Required. The partition for which we should compute the cursor.",
          format = "int64",
          type = "string",
        },
        target = {
          ["$ref"] = "TimeTarget",
          description = "Required. The target publish or event time. Specifying a future time will return an unset cursor.",
        },
      },
      type = "object",
    },
    ComputeTimeCursorResponse = {
      description = "Response containing the cursor corresponding to a publish or event time in a topic partition.",
      id = "ComputeTimeCursorResponse",
      properties = {
        cursor = {
          ["$ref"] = "Cursor",
          description = "If present, the cursor references the first message with time greater than or equal to the specified target time. If such a message cannot be found, the cursor will be unset (i.e. `cursor` is not present).",
        },
      },
      type = "object",
    },
    Cursor = {
      description = "A cursor that describes the position of a message within a topic partition.",
      id = "Cursor",
      properties = {
        offset = {
          description = "The offset of a message within a topic partition. Must be greater than or equal 0.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    DeliveryConfig = {
      description = "The settings for a subscription's message delivery.",
      id = "DeliveryConfig",
      properties = {
        deliveryRequirement = {
          description = "The DeliveryRequirement for this subscription.",
          enum = {
            "DELIVERY_REQUIREMENT_UNSPECIFIED",
            "DELIVER_IMMEDIATELY",
            "DELIVER_AFTER_STORED",
          },
          enumDescriptions = {
            "Default value. This value is unused.",
            "The server does not wait for a published message to be successfully written to storage before delivering it to subscribers.",
            "The server will not deliver a published message to subscribers until the message has been successfully written to storage. This will result in higher end-to-end latency, but consistent delivery.",
          },
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
    ExportConfig = {
      description = "Configuration for a Pub/Sub Lite subscription that writes messages to a destination. User subscriber clients must not connect to this subscription.",
      id = "ExportConfig",
      properties = {
        currentState = {
          description = "Output only. The current state of the export, which may be different to the desired state due to errors. This field is output only.",
          enum = {
            "STATE_UNSPECIFIED",
            "ACTIVE",
            "PAUSED",
            "PERMISSION_DENIED",
            "NOT_FOUND",
          },
          enumDescriptions = {
            "Default value. This value is unused.",
            "Messages are being exported.",
            "Exporting messages is suspended.",
            "Messages cannot be exported due to permission denied errors. Output only.",
            "Messages cannot be exported due to missing resources. Output only.",
          },
          readOnly = true,
          type = "string",
        },
        deadLetterTopic = {
          description = "Optional. The name of an optional Pub/Sub Lite topic to publish messages that can not be exported to the destination. For example, the message can not be published to the Pub/Sub service because it does not satisfy the constraints documented at https://cloud.google.com/pubsub/docs/publisher. Structured like: projects/{project_number}/locations/{location}/topics/{topic_id}. Must be within the same project and location as the subscription. The topic may be changed or removed.",
          type = "string",
        },
        desiredState = {
          description = "The desired state of this export. Setting this to values other than `ACTIVE` and `PAUSED` will result in an error.",
          enum = {
            "STATE_UNSPECIFIED",
            "ACTIVE",
            "PAUSED",
            "PERMISSION_DENIED",
            "NOT_FOUND",
          },
          enumDescriptions = {
            "Default value. This value is unused.",
            "Messages are being exported.",
            "Exporting messages is suspended.",
            "Messages cannot be exported due to permission denied errors. Output only.",
            "Messages cannot be exported due to missing resources. Output only.",
          },
          type = "string",
        },
        pubsubConfig = {
          ["$ref"] = "PubSubConfig",
          description = "Messages are automatically written from the Pub/Sub Lite topic associated with this subscription to a Pub/Sub topic.",
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
    ListPartitionCursorsResponse = {
      description = "Response for ListPartitionCursors",
      id = "ListPartitionCursorsResponse",
      properties = {
        nextPageToken = {
          description = "A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, there are no subsequent pages.",
          type = "string",
        },
        partitionCursors = {
          description = "The partition cursors from this request.",
          items = {
            ["$ref"] = "PartitionCursor",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ListReservationTopicsResponse = {
      description = "Response for ListReservationTopics.",
      id = "ListReservationTopicsResponse",
      properties = {
        nextPageToken = {
          description = "A token that can be sent as `page_token` to retrieve the next page of results. If this field is omitted, there are no more results.",
          type = "string",
        },
        topics = {
          description = "The names of topics attached to the reservation. The order of the topics is unspecified.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ListReservationsResponse = {
      description = "Response for ListReservations.",
      id = "ListReservationsResponse",
      properties = {
        nextPageToken = {
          description = "A token that can be sent as `page_token` to retrieve the next page of results. If this field is omitted, there are no more results.",
          type = "string",
        },
        reservations = {
          description = "The list of reservation in the requested parent. The order of the reservations is unspecified.",
          items = {
            ["$ref"] = "Reservation",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ListSubscriptionsResponse = {
      description = "Response for ListSubscriptions.",
      id = "ListSubscriptionsResponse",
      properties = {
        nextPageToken = {
          description = "A token that can be sent as `page_token` to retrieve the next page of results. If this field is omitted, there are no more results.",
          type = "string",
        },
        subscriptions = {
          description = "The list of subscriptions in the requested parent. The order of the subscriptions is unspecified.",
          items = {
            ["$ref"] = "Subscription",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ListTopicSubscriptionsResponse = {
      description = "Response for ListTopicSubscriptions.",
      id = "ListTopicSubscriptionsResponse",
      properties = {
        nextPageToken = {
          description = "A token that can be sent as `page_token` to retrieve the next page of results. If this field is omitted, there are no more results.",
          type = "string",
        },
        subscriptions = {
          description = "The names of subscriptions attached to the topic. The order of the subscriptions is unspecified.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ListTopicsResponse = {
      description = "Response for ListTopics.",
      id = "ListTopicsResponse",
      properties = {
        nextPageToken = {
          description = "A token that can be sent as `page_token` to retrieve the next page of results. If this field is omitted, there are no more results.",
          type = "string",
        },
        topics = {
          description = "The list of topic in the requested parent. The order of the topics is unspecified.",
          items = {
            ["$ref"] = "Topic",
          },
          type = "array",
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
    OperationMetadata = {
      description = "Metadata for long running operations.",
      id = "OperationMetadata",
      properties = {
        createTime = {
          description = "The time the operation was created.",
          format = "google-datetime",
          type = "string",
        },
        endTime = {
          description = "The time the operation finished running. Not set if the operation has not completed.",
          format = "google-datetime",
          type = "string",
        },
        target = {
          description = "Resource path for the target of the operation. For example, targets of seeks are subscription resources, structured like: projects/{project_number}/locations/{location}/subscriptions/{subscription_id}",
          type = "string",
        },
        verb = {
          description = "Name of the verb executed by the operation.",
          type = "string",
        },
      },
      type = "object",
    },
    PartitionConfig = {
      description = "The settings for a topic's partitions.",
      id = "PartitionConfig",
      properties = {
        capacity = {
          ["$ref"] = "Capacity",
          description = "The capacity configuration.",
        },
        count = {
          description = "The number of partitions in the topic. Must be at least 1. Once a topic has been created the number of partitions can be increased but not decreased. Message ordering is not guaranteed across a topic resize. For more information see https://cloud.google.com/pubsub/lite/docs/topics#scaling_capacity",
          format = "int64",
          type = "string",
        },
        scale = {
          description = "DEPRECATED: Use capacity instead which can express a superset of configurations. Every partition in the topic is allocated throughput equivalent to `scale` times the standard partition throughput (4 MiB/s). This is also reflected in the cost of this topic; a topic with `scale` of 2 and count of 10 is charged for 20 partitions. This value must be in the range [1,4].",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    PartitionCursor = {
      description = "A pair of a Cursor and the partition it is for.",
      id = "PartitionCursor",
      properties = {
        cursor = {
          ["$ref"] = "Cursor",
          description = "The value of the cursor.",
        },
        partition = {
          description = "The partition this is for.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    PubSubConfig = {
      description = "Configuration for exporting to a Pub/Sub topic.",
      id = "PubSubConfig",
      properties = {
        topic = {
          description = "The name of the Pub/Sub topic. Structured like: projects/{project_number}/topics/{topic_id}. The topic may be changed.",
          type = "string",
        },
      },
      type = "object",
    },
    Reservation = {
      description = "Metadata about a reservation resource.",
      id = "Reservation",
      properties = {
        name = {
          description = "The name of the reservation. Structured like: projects/{project_number}/locations/{location}/reservations/{reservation_id}",
          type = "string",
        },
        throughputCapacity = {
          description = "The reserved throughput capacity. Every unit of throughput capacity is equivalent to 1 MiB/s of published messages or 2 MiB/s of subscribed messages. Any topics which are declared as using capacity from a Reservation will consume resources from this reservation instead of being charged individually.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    ReservationConfig = {
      description = "The settings for this topic's Reservation usage.",
      id = "ReservationConfig",
      properties = {
        throughputReservation = {
          description = "The Reservation to use for this topic's throughput capacity. Structured like: projects/{project_number}/locations/{location}/reservations/{reservation_id}",
          type = "string",
        },
      },
      type = "object",
    },
    RetentionConfig = {
      description = "The settings for a topic's message retention.",
      id = "RetentionConfig",
      properties = {
        perPartitionBytes = {
          description = "The provisioned storage, in bytes, per partition. If the number of bytes stored in any of the topic's partitions grows beyond this value, older messages will be dropped to make room for newer ones, regardless of the value of `period`.",
          format = "int64",
          type = "string",
        },
        period = {
          description = "How long a published message is retained. If unset, messages will be retained as long as the bytes retained for each partition is below `per_partition_bytes`.",
          format = "google-duration",
          type = "string",
        },
      },
      type = "object",
    },
    SeekSubscriptionRequest = {
      description = "Request for SeekSubscription.",
      id = "SeekSubscriptionRequest",
      properties = {
        namedTarget = {
          description = "Seek to a named position with respect to the message backlog.",
          enum = {
            "NAMED_TARGET_UNSPECIFIED",
            "TAIL",
            "HEAD",
          },
          enumDescriptions = {
            "Unspecified named target. Do not use.",
            "Seek to the oldest retained message.",
            "Seek past all recently published messages, skipping the entire message backlog.",
          },
          type = "string",
        },
        timeTarget = {
          ["$ref"] = "TimeTarget",
          description = "Seek to the first message whose publish or event time is greater than or equal to the specified query time. If no such message can be located, will seek to the end of the message backlog.",
        },
      },
      type = "object",
    },
    SeekSubscriptionResponse = {
      description = "Response for SeekSubscription long running operation.",
      id = "SeekSubscriptionResponse",
      properties = {},
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
    Subscription = {
      description = "Metadata about a subscription resource.",
      id = "Subscription",
      properties = {
        deliveryConfig = {
          ["$ref"] = "DeliveryConfig",
          description = "The settings for this subscription's message delivery.",
        },
        exportConfig = {
          ["$ref"] = "ExportConfig",
          description = "If present, messages are automatically written from the Pub/Sub Lite topic associated with this subscription to a destination.",
        },
        name = {
          description = "The name of the subscription. Structured like: projects/{project_number}/locations/{location}/subscriptions/{subscription_id}",
          type = "string",
        },
        topic = {
          description = "The name of the topic this subscription is attached to. Structured like: projects/{project_number}/locations/{location}/topics/{topic_id}",
          type = "string",
        },
      },
      type = "object",
    },
    TimeTarget = {
      description = "A target publish or event time. Can be used for seeking to or retrieving the corresponding cursor.",
      id = "TimeTarget",
      properties = {
        eventTime = {
          description = "Request the cursor of the first message with event time greater than or equal to `event_time`. If messages are missing an event time, the publish time is used as a fallback. As event times are user supplied, subsequent messages may have event times less than `event_time` and should be filtered by the client, if necessary.",
          format = "google-datetime",
          type = "string",
        },
        publishTime = {
          description = "Request the cursor of the first message with publish time greater than or equal to `publish_time`. All messages thereafter are guaranteed to have publish times >= `publish_time`.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    Topic = {
      description = "Metadata about a topic resource.",
      id = "Topic",
      properties = {
        name = {
          description = "The name of the topic. Structured like: projects/{project_number}/locations/{location}/topics/{topic_id}",
          type = "string",
        },
        partitionConfig = {
          ["$ref"] = "PartitionConfig",
          description = "The settings for this topic's partitions.",
        },
        reservationConfig = {
          ["$ref"] = "ReservationConfig",
          description = "The settings for this topic's Reservation usage.",
        },
        retentionConfig = {
          ["$ref"] = "RetentionConfig",
          description = "The settings for this topic's message retention.",
        },
      },
      type = "object",
    },
    TopicPartitions = {
      description = "Response for GetTopicPartitions.",
      id = "TopicPartitions",
      properties = {
        partitionCount = {
          description = "The number of partitions in the topic.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
  },
  servicePath = "",
  title = "Pub/Sub Lite API",
  version = "v1",
  version_module = true,
}
