return {
  auth = {
    oauth2 = {
      scopes = {
        ["https://www.googleapis.com/auth/classroom.announcements"] = {
          description = "View and manage announcements in Google Classroom",
        },
        ["https://www.googleapis.com/auth/classroom.announcements.readonly"] = {
          description = "View announcements in Google Classroom",
        },
        ["https://www.googleapis.com/auth/classroom.courses"] = {
          description = "See, edit, create, and permanently delete your Google Classroom classes",
        },
        ["https://www.googleapis.com/auth/classroom.courses.readonly"] = {
          description = "View your Google Classroom classes",
        },
        ["https://www.googleapis.com/auth/classroom.coursework.me"] = {
          description = "See, create and edit coursework items including assignments, questions, and grades",
        },
        ["https://www.googleapis.com/auth/classroom.coursework.me.readonly"] = {
          description = "View your course work and grades in Google Classroom",
        },
        ["https://www.googleapis.com/auth/classroom.coursework.students"] = {
          description = "Manage course work and grades for students in the Google Classroom classes you teach and view the course work and grades for classes you administer",
        },
        ["https://www.googleapis.com/auth/classroom.coursework.students.readonly"] = {
          description = "View course work and grades for students in the Google Classroom classes you teach or administer",
        },
        ["https://www.googleapis.com/auth/classroom.courseworkmaterials"] = {
          description = "See, edit, and create classwork materials in Google Classroom",
        },
        ["https://www.googleapis.com/auth/classroom.courseworkmaterials.readonly"] = {
          description = "See all classwork materials for your Google Classroom classes",
        },
        ["https://www.googleapis.com/auth/classroom.guardianlinks.me.readonly"] = {
          description = "View your Google Classroom guardians",
        },
        ["https://www.googleapis.com/auth/classroom.guardianlinks.students"] = {
          description = "View and manage guardians for students in your Google Classroom classes",
        },
        ["https://www.googleapis.com/auth/classroom.guardianlinks.students.readonly"] = {
          description = "View guardians for students in your Google Classroom classes",
        },
        ["https://www.googleapis.com/auth/classroom.profile.emails"] = {
          description = "View the email addresses of people in your classes",
        },
        ["https://www.googleapis.com/auth/classroom.profile.photos"] = {
          description = "View the profile photos of people in your classes",
        },
        ["https://www.googleapis.com/auth/classroom.push-notifications"] = {
          description = "Receive notifications about your Google Classroom data",
        },
        ["https://www.googleapis.com/auth/classroom.rosters"] = {
          description = "Manage your Google Classroom class rosters",
        },
        ["https://www.googleapis.com/auth/classroom.rosters.readonly"] = {
          description = "View your Google Classroom class rosters",
        },
        ["https://www.googleapis.com/auth/classroom.student-submissions.me.readonly"] = {
          description = "View your course work and grades in Google Classroom",
        },
        ["https://www.googleapis.com/auth/classroom.student-submissions.students.readonly"] = {
          description = "View course work and grades for students in the Google Classroom classes you teach or administer",
        },
        ["https://www.googleapis.com/auth/classroom.topics"] = {
          description = "See, create, and edit topics in Google Classroom",
        },
        ["https://www.googleapis.com/auth/classroom.topics.readonly"] = {
          description = "View topics in Google Classroom",
        },
      },
    },
  },
  basePath = "",
  baseUrl = "https://classroom.googleapis.com/",
  batchPath = "batch",
  description = "Manages classes, rosters, and invitations in Google Classroom.",
  discoveryVersion = "v1",
  documentationLink = "https://developers.google.com/classroom/",
  fullyEncodeReservedExpansion = true,
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "classroom:v1",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://classroom.mtls.googleapis.com/",
  name = "classroom",
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
    courses = {
      methods = {
        create = {
          description = "Creates a course. The user specified in `ownerId` is the owner of the created course and added as a teacher. A non-admin requesting user can only create a course with themselves as the owner. Domain admins can create courses owned by any user within their domain. This method returns the following error codes: * `PERMISSION_DENIED` if the requesting user is not permitted to create courses or for access errors. * `NOT_FOUND` if the primary teacher is not a valid user. * `FAILED_PRECONDITION` if the course owner's account is disabled or for the following request errors: * UserCannotOwnCourse * UserGroupsMembershipLimitReached * `ALREADY_EXISTS` if an alias was specified in the `id` and already exists.",
          flatPath = "v1/courses",
          httpMethod = "POST",
          id = "classroom.courses.create",
          parameterOrder = {},
          parameters = {},
          path = "v1/courses",
          request = {
            ["$ref"] = "Course",
          },
          response = {
            ["$ref"] = "Course",
          },
          scopes = {
            "https://www.googleapis.com/auth/classroom.courses",
          },
        },
        delete = {
          description = "Deletes a course. This method returns the following error codes: * `PERMISSION_DENIED` if the requesting user is not permitted to delete the requested course or for access errors. * `NOT_FOUND` if no course exists with the requested ID.",
          flatPath = "v1/courses/{id}",
          httpMethod = "DELETE",
          id = "classroom.courses.delete",
          parameterOrder = {
            "id",
          },
          parameters = {
            id = {
              description = "Identifier of the course to delete. This identifier can be either the Classroom-assigned identifier or an alias.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "v1/courses/{id}",
          response = {
            ["$ref"] = "Empty",
          },
          scopes = {
            "https://www.googleapis.com/auth/classroom.courses",
          },
        },
        get = {
          description = "Returns a course. This method returns the following error codes: * `PERMISSION_DENIED` if the requesting user is not permitted to access the requested course or for access errors. * `NOT_FOUND` if no course exists with the requested ID.",
          flatPath = "v1/courses/{id}",
          httpMethod = "GET",
          id = "classroom.courses.get",
          parameterOrder = {
            "id",
          },
          parameters = {
            id = {
              description = "Identifier of the course to return. This identifier can be either the Classroom-assigned identifier or an alias.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "v1/courses/{id}",
          response = {
            ["$ref"] = "Course",
          },
          scopes = {
            "https://www.googleapis.com/auth/classroom.courses",
            "https://www.googleapis.com/auth/classroom.courses.readonly",
          },
        },
        list = {
          description = "Returns a list of courses that the requesting user is permitted to view, restricted to those that match the request. Returned courses are ordered by creation time, with the most recently created coming first. This method returns the following error codes: * `PERMISSION_DENIED` for access errors. * `INVALID_ARGUMENT` if the query argument is malformed. * `NOT_FOUND` if any users specified in the query arguments do not exist.",
          flatPath = "v1/courses",
          httpMethod = "GET",
          id = "classroom.courses.list",
          parameterOrder = {},
          parameters = {
            courseStates = {
              description = "Restricts returned courses to those in one of the specified states The default value is ACTIVE, ARCHIVED, PROVISIONED, DECLINED.",
              enum = {
                "COURSE_STATE_UNSPECIFIED",
                "ACTIVE",
                "ARCHIVED",
                "PROVISIONED",
                "DECLINED",
                "SUSPENDED",
              },
              enumDescriptions = {
                "No course state. No returned Course message will use this value.",
                "The course is active.",
                "The course has been archived. You cannot modify it except to change it to a different state.",
                "The course has been created, but not yet activated. It is accessible by the primary teacher and domain administrators, who may modify it or change it to the `ACTIVE` or `DECLINED` states. A course may only be changed to `PROVISIONED` if it is in the `DECLINED` state.",
                "The course has been created, but declined. It is accessible by the course owner and domain administrators, though it will not be displayed in the web UI. You cannot modify the course except to change it to the `PROVISIONED` state. A course may only be changed to `DECLINED` if it is in the `PROVISIONED` state.",
                "The course has been suspended. You cannot modify the course, and only the user identified by the `owner_id` can view the course. A course may be placed in this state if it potentially violates the Terms of Service.",
              },
              location = "query",
              repeated = true,
              type = "string",
            },
            pageSize = {
              description = "Maximum number of items to return. Zero or unspecified indicates that the server may assign a maximum. The server may return fewer than the specified number of results.",
              format = "int32",
              location = "query",
              type = "integer",
            },
            pageToken = {
              description = "nextPageToken value returned from a previous list call, indicating that the subsequent page of results should be returned. The list request must be otherwise identical to the one that resulted in this token.",
              location = "query",
              type = "string",
            },
            studentId = {
              description = "Restricts returned courses to those having a student with the specified identifier. The identifier can be one of the following: * the numeric identifier for the user * the email address of the user * the string literal `\"me\"`, indicating the requesting user",
              location = "query",
              type = "string",
            },
            teacherId = {
              description = "Restricts returned courses to those having a teacher with the specified identifier. The identifier can be one of the following: * the numeric identifier for the user * the email address of the user * the string literal `\"me\"`, indicating the requesting user",
              location = "query",
              type = "string",
            },
          },
          path = "v1/courses",
          response = {
            ["$ref"] = "ListCoursesResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/classroom.courses",
            "https://www.googleapis.com/auth/classroom.courses.readonly",
          },
        },
        patch = {
          description = "Updates one or more fields in a course. This method returns the following error codes: * `PERMISSION_DENIED` if the requesting user is not permitted to modify the requested course or for access errors. * `NOT_FOUND` if no course exists with the requested ID. * `INVALID_ARGUMENT` if invalid fields are specified in the update mask or if no update mask is supplied. * `FAILED_PRECONDITION` for the following request errors: * CourseNotModifiable * InactiveCourseOwner * IneligibleOwner",
          flatPath = "v1/courses/{id}",
          httpMethod = "PATCH",
          id = "classroom.courses.patch",
          parameterOrder = {
            "id",
          },
          parameters = {
            id = {
              description = "Identifier of the course to update. This identifier can be either the Classroom-assigned identifier or an alias.",
              location = "path",
              required = true,
              type = "string",
            },
            updateMask = {
              description = "Mask that identifies which fields on the course to update. This field is required to do an update. The update will fail if invalid fields are specified. The following fields are valid: * `name` * `section` * `descriptionHeading` * `description` * `room` * `courseState` * `ownerId` Note: patches to ownerId are treated as being effective immediately, but in practice it may take some time for the ownership transfer of all affected resources to complete. When set in a query parameter, this field should be specified as `updateMask=,,...`",
              format = "google-fieldmask",
              location = "query",
              type = "string",
            },
          },
          path = "v1/courses/{id}",
          request = {
            ["$ref"] = "Course",
          },
          response = {
            ["$ref"] = "Course",
          },
          scopes = {
            "https://www.googleapis.com/auth/classroom.courses",
          },
        },
        update = {
          description = "Updates a course. This method returns the following error codes: * `PERMISSION_DENIED` if the requesting user is not permitted to modify the requested course or for access errors. * `NOT_FOUND` if no course exists with the requested ID. * `FAILED_PRECONDITION` for the following request errors: * CourseNotModifiable",
          flatPath = "v1/courses/{id}",
          httpMethod = "PUT",
          id = "classroom.courses.update",
          parameterOrder = {
            "id",
          },
          parameters = {
            id = {
              description = "Identifier of the course to update. This identifier can be either the Classroom-assigned identifier or an alias.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "v1/courses/{id}",
          request = {
            ["$ref"] = "Course",
          },
          response = {
            ["$ref"] = "Course",
          },
          scopes = {
            "https://www.googleapis.com/auth/classroom.courses",
          },
        },
      },
      resources = {
        aliases = {
          methods = {
            create = {
              description = "Creates an alias for a course. This method returns the following error codes: * `PERMISSION_DENIED` if the requesting user is not permitted to create the alias or for access errors. * `NOT_FOUND` if the course does not exist. * `ALREADY_EXISTS` if the alias already exists. * `FAILED_PRECONDITION` if the alias requested does not make sense for the requesting user or course (for example, if a user not in a domain attempts to access a domain-scoped alias).",
              flatPath = "v1/courses/{courseId}/aliases",
              httpMethod = "POST",
              id = "classroom.courses.aliases.create",
              parameterOrder = {
                "courseId",
              },
              parameters = {
                courseId = {
                  description = "Identifier of the course to alias. This identifier can be either the Classroom-assigned identifier or an alias.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/courses/{courseId}/aliases",
              request = {
                ["$ref"] = "CourseAlias",
              },
              response = {
                ["$ref"] = "CourseAlias",
              },
              scopes = {
                "https://www.googleapis.com/auth/classroom.courses",
              },
            },
            delete = {
              description = "Deletes an alias of a course. This method returns the following error codes: * `PERMISSION_DENIED` if the requesting user is not permitted to remove the alias or for access errors. * `NOT_FOUND` if the alias does not exist. * `FAILED_PRECONDITION` if the alias requested does not make sense for the requesting user or course (for example, if a user not in a domain attempts to delete a domain-scoped alias).",
              flatPath = "v1/courses/{courseId}/aliases/{alias}",
              httpMethod = "DELETE",
              id = "classroom.courses.aliases.delete",
              parameterOrder = {
                "courseId",
                "alias",
              },
              parameters = {
                alias = {
                  description = "Alias to delete. This may not be the Classroom-assigned identifier.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                courseId = {
                  description = "Identifier of the course whose alias should be deleted. This identifier can be either the Classroom-assigned identifier or an alias.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/courses/{courseId}/aliases/{alias}",
              response = {
                ["$ref"] = "Empty",
              },
              scopes = {
                "https://www.googleapis.com/auth/classroom.courses",
              },
            },
            list = {
              description = "Returns a list of aliases for a course. This method returns the following error codes: * `PERMISSION_DENIED` if the requesting user is not permitted to access the course or for access errors. * `NOT_FOUND` if the course does not exist.",
              flatPath = "v1/courses/{courseId}/aliases",
              httpMethod = "GET",
              id = "classroom.courses.aliases.list",
              parameterOrder = {
                "courseId",
              },
              parameters = {
                courseId = {
                  description = "The identifier of the course. This identifier can be either the Classroom-assigned identifier or an alias.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                pageSize = {
                  description = "Maximum number of items to return. Zero or unspecified indicates that the server may assign a maximum. The server may return fewer than the specified number of results.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "nextPageToken value returned from a previous list call, indicating that the subsequent page of results should be returned. The list request must be otherwise identical to the one that resulted in this token.",
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/courses/{courseId}/aliases",
              response = {
                ["$ref"] = "ListCourseAliasesResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/classroom.courses",
                "https://www.googleapis.com/auth/classroom.courses.readonly",
              },
            },
          },
        },
        announcements = {
          methods = {
            create = {
              description = "Creates an announcement. This method returns the following error codes: * `PERMISSION_DENIED` if the requesting user is not permitted to access the requested course, create announcements in the requested course, share a Drive attachment, or for access errors. * `INVALID_ARGUMENT` if the request is malformed. * `NOT_FOUND` if the requested course does not exist. * `FAILED_PRECONDITION` for the following request error: * AttachmentNotVisible",
              flatPath = "v1/courses/{courseId}/announcements",
              httpMethod = "POST",
              id = "classroom.courses.announcements.create",
              parameterOrder = {
                "courseId",
              },
              parameters = {
                courseId = {
                  description = "Identifier of the course. This identifier can be either the Classroom-assigned identifier or an alias.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/courses/{courseId}/announcements",
              request = {
                ["$ref"] = "Announcement",
              },
              response = {
                ["$ref"] = "Announcement",
              },
              scopes = {
                "https://www.googleapis.com/auth/classroom.announcements",
              },
            },
            delete = {
              description = "Deletes an announcement. This request must be made by the Developer Console project of the [OAuth client ID](https://support.google.com/cloud/answer/6158849) used to create the corresponding announcement item. This method returns the following error codes: * `PERMISSION_DENIED` if the requesting developer project did not create the corresponding announcement, if the requesting user is not permitted to delete the requested course or for access errors. * `FAILED_PRECONDITION` if the requested announcement has already been deleted. * `NOT_FOUND` if no course exists with the requested ID.",
              flatPath = "v1/courses/{courseId}/announcements/{id}",
              httpMethod = "DELETE",
              id = "classroom.courses.announcements.delete",
              parameterOrder = {
                "courseId",
                "id",
              },
              parameters = {
                courseId = {
                  description = "Identifier of the course. This identifier can be either the Classroom-assigned identifier or an alias.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                id = {
                  description = "Identifier of the announcement to delete. This identifier is a Classroom-assigned identifier.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/courses/{courseId}/announcements/{id}",
              response = {
                ["$ref"] = "Empty",
              },
              scopes = {
                "https://www.googleapis.com/auth/classroom.announcements",
              },
            },
            get = {
              description = "Returns an announcement. This method returns the following error codes: * `PERMISSION_DENIED` if the requesting user is not permitted to access the requested course or announcement, or for access errors. * `INVALID_ARGUMENT` if the request is malformed. * `NOT_FOUND` if the requested course or announcement does not exist.",
              flatPath = "v1/courses/{courseId}/announcements/{id}",
              httpMethod = "GET",
              id = "classroom.courses.announcements.get",
              parameterOrder = {
                "courseId",
                "id",
              },
              parameters = {
                courseId = {
                  description = "Identifier of the course. This identifier can be either the Classroom-assigned identifier or an alias.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                id = {
                  description = "Identifier of the announcement.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/courses/{courseId}/announcements/{id}",
              response = {
                ["$ref"] = "Announcement",
              },
              scopes = {
                "https://www.googleapis.com/auth/classroom.announcements",
                "https://www.googleapis.com/auth/classroom.announcements.readonly",
              },
            },
            list = {
              description = "Returns a list of announcements that the requester is permitted to view. Course students may only view `PUBLISHED` announcements. Course teachers and domain administrators may view all announcements. This method returns the following error codes: * `PERMISSION_DENIED` if the requesting user is not permitted to access the requested course or for access errors. * `INVALID_ARGUMENT` if the request is malformed. * `NOT_FOUND` if the requested course does not exist.",
              flatPath = "v1/courses/{courseId}/announcements",
              httpMethod = "GET",
              id = "classroom.courses.announcements.list",
              parameterOrder = {
                "courseId",
              },
              parameters = {
                announcementStates = {
                  description = "Restriction on the `state` of announcements returned. If this argument is left unspecified, the default value is `PUBLISHED`.",
                  enum = {
                    "ANNOUNCEMENT_STATE_UNSPECIFIED",
                    "PUBLISHED",
                    "DRAFT",
                    "DELETED",
                  },
                  enumDescriptions = {
                    "No state specified. This is never returned.",
                    "Status for announcement that has been published. This is the default state.",
                    "Status for an announcement that is not yet published. Announcement in this state is visible only to course teachers and domain administrators.",
                    "Status for announcement that was published but is now deleted. Announcement in this state is visible only to course teachers and domain administrators. Announcement in this state is deleted after some time.",
                  },
                  location = "query",
                  repeated = true,
                  type = "string",
                },
                courseId = {
                  description = "Identifier of the course. This identifier can be either the Classroom-assigned identifier or an alias.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                orderBy = {
                  description = "Optional sort ordering for results. A comma-separated list of fields with an optional sort direction keyword. Supported field is `updateTime`. Supported direction keywords are `asc` and `desc`. If not specified, `updateTime desc` is the default behavior. Examples: `updateTime asc`, `updateTime`",
                  location = "query",
                  type = "string",
                },
                pageSize = {
                  description = "Maximum number of items to return. Zero or unspecified indicates that the server may assign a maximum. The server may return fewer than the specified number of results.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "nextPageToken value returned from a previous list call, indicating that the subsequent page of results should be returned. The list request must be otherwise identical to the one that resulted in this token.",
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/courses/{courseId}/announcements",
              response = {
                ["$ref"] = "ListAnnouncementsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/classroom.announcements",
                "https://www.googleapis.com/auth/classroom.announcements.readonly",
              },
            },
            modifyAssignees = {
              description = "Modifies assignee mode and options of an announcement. Only a teacher of the course that contains the announcement may call this method. This method returns the following error codes: * `PERMISSION_DENIED` if the requesting user is not permitted to access the requested course or course work or for access errors. * `INVALID_ARGUMENT` if the request is malformed. * `NOT_FOUND` if the requested course or course work does not exist.",
              flatPath = "v1/courses/{courseId}/announcements/{id}:modifyAssignees",
              httpMethod = "POST",
              id = "classroom.courses.announcements.modifyAssignees",
              parameterOrder = {
                "courseId",
                "id",
              },
              parameters = {
                courseId = {
                  description = "Identifier of the course. This identifier can be either the Classroom-assigned identifier or an alias.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                id = {
                  description = "Identifier of the announcement.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/courses/{courseId}/announcements/{id}:modifyAssignees",
              request = {
                ["$ref"] = "ModifyAnnouncementAssigneesRequest",
              },
              response = {
                ["$ref"] = "Announcement",
              },
              scopes = {
                "https://www.googleapis.com/auth/classroom.announcements",
              },
            },
            patch = {
              description = "Updates one or more fields of an announcement. This method returns the following error codes: * `PERMISSION_DENIED` if the requesting developer project did not create the corresponding announcement or for access errors. * `INVALID_ARGUMENT` if the request is malformed. * `FAILED_PRECONDITION` if the requested announcement has already been deleted. * `NOT_FOUND` if the requested course or announcement does not exist",
              flatPath = "v1/courses/{courseId}/announcements/{id}",
              httpMethod = "PATCH",
              id = "classroom.courses.announcements.patch",
              parameterOrder = {
                "courseId",
                "id",
              },
              parameters = {
                courseId = {
                  description = "Identifier of the course. This identifier can be either the Classroom-assigned identifier or an alias.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                id = {
                  description = "Identifier of the announcement.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                updateMask = {
                  description = "Mask that identifies which fields on the announcement to update. This field is required to do an update. The update fails if invalid fields are specified. If a field supports empty values, it can be cleared by specifying it in the update mask and not in the Announcement object. If a field that does not support empty values is included in the update mask and not set in the Announcement object, an `INVALID_ARGUMENT` error is returned. The following fields may be specified by teachers: * `text` * `state` * `scheduled_time`",
                  format = "google-fieldmask",
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/courses/{courseId}/announcements/{id}",
              request = {
                ["$ref"] = "Announcement",
              },
              response = {
                ["$ref"] = "Announcement",
              },
              scopes = {
                "https://www.googleapis.com/auth/classroom.announcements",
              },
            },
          },
        },
        courseWork = {
          methods = {
            create = {
              description = "Creates course work. The resulting course work (and corresponding student submissions) are associated with the Developer Console project of the [OAuth client ID](https://support.google.com/cloud/answer/6158849) used to make the request. Classroom API requests to modify course work and student submissions must be made with an OAuth client ID from the associated Developer Console project. This method returns the following error codes: * `PERMISSION_DENIED` if the requesting user is not permitted to access the requested course, create course work in the requested course, share a Drive attachment, or for access errors. * `INVALID_ARGUMENT` if the request is malformed. * `NOT_FOUND` if the requested course does not exist. * `FAILED_PRECONDITION` for the following request error: * AttachmentNotVisible",
              flatPath = "v1/courses/{courseId}/courseWork",
              httpMethod = "POST",
              id = "classroom.courses.courseWork.create",
              parameterOrder = {
                "courseId",
              },
              parameters = {
                courseId = {
                  description = "Identifier of the course. This identifier can be either the Classroom-assigned identifier or an alias.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/courses/{courseId}/courseWork",
              request = {
                ["$ref"] = "CourseWork",
              },
              response = {
                ["$ref"] = "CourseWork",
              },
              scopes = {
                "https://www.googleapis.com/auth/classroom.coursework.students",
              },
            },
            delete = {
              description = "Deletes a course work. This request must be made by the Developer Console project of the [OAuth client ID](https://support.google.com/cloud/answer/6158849) used to create the corresponding course work item. This method returns the following error codes: * `PERMISSION_DENIED` if the requesting developer project did not create the corresponding course work, if the requesting user is not permitted to delete the requested course or for access errors. * `FAILED_PRECONDITION` if the requested course work has already been deleted. * `NOT_FOUND` if no course exists with the requested ID.",
              flatPath = "v1/courses/{courseId}/courseWork/{id}",
              httpMethod = "DELETE",
              id = "classroom.courses.courseWork.delete",
              parameterOrder = {
                "courseId",
                "id",
              },
              parameters = {
                courseId = {
                  description = "Identifier of the course. This identifier can be either the Classroom-assigned identifier or an alias.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                id = {
                  description = "Identifier of the course work to delete. This identifier is a Classroom-assigned identifier.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/courses/{courseId}/courseWork/{id}",
              response = {
                ["$ref"] = "Empty",
              },
              scopes = {
                "https://www.googleapis.com/auth/classroom.coursework.students",
              },
            },
            get = {
              description = "Returns course work. This method returns the following error codes: * `PERMISSION_DENIED` if the requesting user is not permitted to access the requested course or course work, or for access errors. * `INVALID_ARGUMENT` if the request is malformed. * `NOT_FOUND` if the requested course or course work does not exist.",
              flatPath = "v1/courses/{courseId}/courseWork/{id}",
              httpMethod = "GET",
              id = "classroom.courses.courseWork.get",
              parameterOrder = {
                "courseId",
                "id",
              },
              parameters = {
                courseId = {
                  description = "Identifier of the course. This identifier can be either the Classroom-assigned identifier or an alias.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                id = {
                  description = "Identifier of the course work.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/courses/{courseId}/courseWork/{id}",
              response = {
                ["$ref"] = "CourseWork",
              },
              scopes = {
                "https://www.googleapis.com/auth/classroom.coursework.me",
                "https://www.googleapis.com/auth/classroom.coursework.me.readonly",
                "https://www.googleapis.com/auth/classroom.coursework.students",
                "https://www.googleapis.com/auth/classroom.coursework.students.readonly",
              },
            },
            list = {
              description = "Returns a list of course work that the requester is permitted to view. Course students may only view `PUBLISHED` course work. Course teachers and domain administrators may view all course work. This method returns the following error codes: * `PERMISSION_DENIED` if the requesting user is not permitted to access the requested course or for access errors. * `INVALID_ARGUMENT` if the request is malformed. * `NOT_FOUND` if the requested course does not exist.",
              flatPath = "v1/courses/{courseId}/courseWork",
              httpMethod = "GET",
              id = "classroom.courses.courseWork.list",
              parameterOrder = {
                "courseId",
              },
              parameters = {
                courseId = {
                  description = "Identifier of the course. This identifier can be either the Classroom-assigned identifier or an alias.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                courseWorkStates = {
                  description = "Restriction on the work status to return. Only courseWork that matches is returned. If unspecified, items with a work status of `PUBLISHED` is returned.",
                  enum = {
                    "COURSE_WORK_STATE_UNSPECIFIED",
                    "PUBLISHED",
                    "DRAFT",
                    "DELETED",
                  },
                  enumDescriptions = {
                    "No state specified. This is never returned.",
                    "Status for work that has been published. This is the default state.",
                    "Status for work that is not yet published. Work in this state is visible only to course teachers and domain administrators.",
                    "Status for work that was published but is now deleted. Work in this state is visible only to course teachers and domain administrators. Work in this state is deleted after some time.",
                  },
                  location = "query",
                  repeated = true,
                  type = "string",
                },
                orderBy = {
                  description = "Optional sort ordering for results. A comma-separated list of fields with an optional sort direction keyword. Supported fields are `updateTime` and `dueDate`. Supported direction keywords are `asc` and `desc`. If not specified, `updateTime desc` is the default behavior. Examples: `dueDate asc,updateTime desc`, `updateTime,dueDate desc`",
                  location = "query",
                  type = "string",
                },
                pageSize = {
                  description = "Maximum number of items to return. Zero or unspecified indicates that the server may assign a maximum. The server may return fewer than the specified number of results.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "nextPageToken value returned from a previous list call, indicating that the subsequent page of results should be returned. The list request must be otherwise identical to the one that resulted in this token.",
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/courses/{courseId}/courseWork",
              response = {
                ["$ref"] = "ListCourseWorkResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/classroom.coursework.me",
                "https://www.googleapis.com/auth/classroom.coursework.me.readonly",
                "https://www.googleapis.com/auth/classroom.coursework.students",
                "https://www.googleapis.com/auth/classroom.coursework.students.readonly",
              },
            },
            modifyAssignees = {
              description = "Modifies assignee mode and options of a coursework. Only a teacher of the course that contains the coursework may call this method. This method returns the following error codes: * `PERMISSION_DENIED` if the requesting user is not permitted to access the requested course or course work or for access errors. * `INVALID_ARGUMENT` if the request is malformed. * `NOT_FOUND` if the requested course or course work does not exist.",
              flatPath = "v1/courses/{courseId}/courseWork/{id}:modifyAssignees",
              httpMethod = "POST",
              id = "classroom.courses.courseWork.modifyAssignees",
              parameterOrder = {
                "courseId",
                "id",
              },
              parameters = {
                courseId = {
                  description = "Identifier of the course. This identifier can be either the Classroom-assigned identifier or an alias.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                id = {
                  description = "Identifier of the coursework.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/courses/{courseId}/courseWork/{id}:modifyAssignees",
              request = {
                ["$ref"] = "ModifyCourseWorkAssigneesRequest",
              },
              response = {
                ["$ref"] = "CourseWork",
              },
              scopes = {
                "https://www.googleapis.com/auth/classroom.coursework.students",
              },
            },
            patch = {
              description = "Updates one or more fields of a course work. See google.classroom.v1.CourseWork for details of which fields may be updated and who may change them. This request must be made by the Developer Console project of the [OAuth client ID](https://support.google.com/cloud/answer/6158849) used to create the corresponding course work item. This method returns the following error codes: * `PERMISSION_DENIED` if the requesting developer project did not create the corresponding course work, if the user is not permitted to make the requested modification to the student submission, or for access errors. * `INVALID_ARGUMENT` if the request is malformed. * `FAILED_PRECONDITION` if the requested course work has already been deleted. * `NOT_FOUND` if the requested course, course work, or student submission does not exist.",
              flatPath = "v1/courses/{courseId}/courseWork/{id}",
              httpMethod = "PATCH",
              id = "classroom.courses.courseWork.patch",
              parameterOrder = {
                "courseId",
                "id",
              },
              parameters = {
                courseId = {
                  description = "Identifier of the course. This identifier can be either the Classroom-assigned identifier or an alias.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                id = {
                  description = "Identifier of the course work.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                updateMask = {
                  description = "Mask that identifies which fields on the course work to update. This field is required to do an update. The update fails if invalid fields are specified. If a field supports empty values, it can be cleared by specifying it in the update mask and not in the CourseWork object. If a field that does not support empty values is included in the update mask and not set in the CourseWork object, an `INVALID_ARGUMENT` error is returned. The following fields may be specified by teachers: * `title` * `description` * `state` * `due_date` * `due_time` * `max_points` * `scheduled_time` * `submission_modification_mode` * `topic_id`",
                  format = "google-fieldmask",
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/courses/{courseId}/courseWork/{id}",
              request = {
                ["$ref"] = "CourseWork",
              },
              response = {
                ["$ref"] = "CourseWork",
              },
              scopes = {
                "https://www.googleapis.com/auth/classroom.coursework.students",
              },
            },
          },
          resources = {
            studentSubmissions = {
              methods = {
                get = {
                  description = "Returns a student submission. * `PERMISSION_DENIED` if the requesting user is not permitted to access the requested course, course work, or student submission or for access errors. * `INVALID_ARGUMENT` if the request is malformed. * `NOT_FOUND` if the requested course, course work, or student submission does not exist.",
                  flatPath = "v1/courses/{courseId}/courseWork/{courseWorkId}/studentSubmissions/{id}",
                  httpMethod = "GET",
                  id = "classroom.courses.courseWork.studentSubmissions.get",
                  parameterOrder = {
                    "courseId",
                    "courseWorkId",
                    "id",
                  },
                  parameters = {
                    courseId = {
                      description = "Identifier of the course. This identifier can be either the Classroom-assigned identifier or an alias.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    courseWorkId = {
                      description = "Identifier of the course work.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    id = {
                      description = "Identifier of the student submission.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/courses/{courseId}/courseWork/{courseWorkId}/studentSubmissions/{id}",
                  response = {
                    ["$ref"] = "StudentSubmission",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/classroom.coursework.me",
                    "https://www.googleapis.com/auth/classroom.coursework.me.readonly",
                    "https://www.googleapis.com/auth/classroom.coursework.students",
                    "https://www.googleapis.com/auth/classroom.coursework.students.readonly",
                    "https://www.googleapis.com/auth/classroom.student-submissions.me.readonly",
                    "https://www.googleapis.com/auth/classroom.student-submissions.students.readonly",
                  },
                },
                list = {
                  description = "Returns a list of student submissions that the requester is permitted to view, factoring in the OAuth scopes of the request. `-` may be specified as the `course_work_id` to include student submissions for multiple course work items. Course students may only view their own work. Course teachers and domain administrators may view all student submissions. This method returns the following error codes: * `PERMISSION_DENIED` if the requesting user is not permitted to access the requested course or course work, or for access errors. * `INVALID_ARGUMENT` if the request is malformed. * `NOT_FOUND` if the requested course does not exist.",
                  flatPath = "v1/courses/{courseId}/courseWork/{courseWorkId}/studentSubmissions",
                  httpMethod = "GET",
                  id = "classroom.courses.courseWork.studentSubmissions.list",
                  parameterOrder = {
                    "courseId",
                    "courseWorkId",
                  },
                  parameters = {
                    courseId = {
                      description = "Identifier of the course. This identifier can be either the Classroom-assigned identifier or an alias.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    courseWorkId = {
                      description = "Identifier of the student work to request. This may be set to the string literal `\"-\"` to request student work for all course work in the specified course.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    late = {
                      description = "Requested lateness value. If specified, returned student submissions are restricted by the requested value. If unspecified, submissions are returned regardless of `late` value.",
                      enum = {
                        "LATE_VALUES_UNSPECIFIED",
                        "LATE_ONLY",
                        "NOT_LATE_ONLY",
                      },
                      enumDescriptions = {
                        "No restriction on submission late values specified.",
                        "Return StudentSubmissions where late is true.",
                        "Return StudentSubmissions where late is false.",
                      },
                      location = "query",
                      type = "string",
                    },
                    pageSize = {
                      description = "Maximum number of items to return. Zero or unspecified indicates that the server may assign a maximum. The server may return fewer than the specified number of results.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "nextPageToken value returned from a previous list call, indicating that the subsequent page of results should be returned. The list request must be otherwise identical to the one that resulted in this token.",
                      location = "query",
                      type = "string",
                    },
                    states = {
                      description = "Requested submission states. If specified, returned student submissions match one of the specified submission states.",
                      enum = {
                        "SUBMISSION_STATE_UNSPECIFIED",
                        "NEW",
                        "CREATED",
                        "TURNED_IN",
                        "RETURNED",
                        "RECLAIMED_BY_STUDENT",
                      },
                      enumDescriptions = {
                        "No state specified. This should never be returned.",
                        "The student has never accessed this submission. Attachments are not returned and timestamps is not set.",
                        "Has been created.",
                        "Has been turned in to the teacher.",
                        "Has been returned to the student.",
                        "Student chose to \"unsubmit\" the assignment.",
                      },
                      location = "query",
                      repeated = true,
                      type = "string",
                    },
                    userId = {
                      description = "Optional argument to restrict returned student work to those owned by the student with the specified identifier. The identifier can be one of the following: * the numeric identifier for the user * the email address of the user * the string literal `\"me\"`, indicating the requesting user",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/courses/{courseId}/courseWork/{courseWorkId}/studentSubmissions",
                  response = {
                    ["$ref"] = "ListStudentSubmissionsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/classroom.coursework.me",
                    "https://www.googleapis.com/auth/classroom.coursework.me.readonly",
                    "https://www.googleapis.com/auth/classroom.coursework.students",
                    "https://www.googleapis.com/auth/classroom.coursework.students.readonly",
                    "https://www.googleapis.com/auth/classroom.student-submissions.me.readonly",
                    "https://www.googleapis.com/auth/classroom.student-submissions.students.readonly",
                  },
                },
                modifyAttachments = {
                  description = "Modifies attachments of student submission. Attachments may only be added to student submissions belonging to course work objects with a `workType` of `ASSIGNMENT`. This request must be made by the Developer Console project of the [OAuth client ID](https://support.google.com/cloud/answer/6158849) used to create the corresponding course work item. This method returns the following error codes: * `PERMISSION_DENIED` if the requesting user is not permitted to access the requested course or course work, if the user is not permitted to modify attachments on the requested student submission, or for access errors. * `INVALID_ARGUMENT` if the request is malformed. * `NOT_FOUND` if the requested course, course work, or student submission does not exist.",
                  flatPath = "v1/courses/{courseId}/courseWork/{courseWorkId}/studentSubmissions/{id}:modifyAttachments",
                  httpMethod = "POST",
                  id = "classroom.courses.courseWork.studentSubmissions.modifyAttachments",
                  parameterOrder = {
                    "courseId",
                    "courseWorkId",
                    "id",
                  },
                  parameters = {
                    courseId = {
                      description = "Identifier of the course. This identifier can be either the Classroom-assigned identifier or an alias.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    courseWorkId = {
                      description = "Identifier of the course work.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    id = {
                      description = "Identifier of the student submission.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/courses/{courseId}/courseWork/{courseWorkId}/studentSubmissions/{id}:modifyAttachments",
                  request = {
                    ["$ref"] = "ModifyAttachmentsRequest",
                  },
                  response = {
                    ["$ref"] = "StudentSubmission",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/classroom.coursework.me",
                    "https://www.googleapis.com/auth/classroom.coursework.students",
                  },
                },
                patch = {
                  description = "Updates one or more fields of a student submission. See google.classroom.v1.StudentSubmission for details of which fields may be updated and who may change them. This request must be made by the Developer Console project of the [OAuth client ID](https://support.google.com/cloud/answer/6158849) used to create the corresponding course work item. This method returns the following error codes: * `PERMISSION_DENIED` if the requesting developer project did not create the corresponding course work, if the user is not permitted to make the requested modification to the student submission, or for access errors. * `INVALID_ARGUMENT` if the request is malformed. * `NOT_FOUND` if the requested course, course work, or student submission does not exist.",
                  flatPath = "v1/courses/{courseId}/courseWork/{courseWorkId}/studentSubmissions/{id}",
                  httpMethod = "PATCH",
                  id = "classroom.courses.courseWork.studentSubmissions.patch",
                  parameterOrder = {
                    "courseId",
                    "courseWorkId",
                    "id",
                  },
                  parameters = {
                    courseId = {
                      description = "Identifier of the course. This identifier can be either the Classroom-assigned identifier or an alias.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    courseWorkId = {
                      description = "Identifier of the course work.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    id = {
                      description = "Identifier of the student submission.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    updateMask = {
                      description = "Mask that identifies which fields on the student submission to update. This field is required to do an update. The update fails if invalid fields are specified. The following fields may be specified by teachers: * `draft_grade` * `assigned_grade`",
                      format = "google-fieldmask",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/courses/{courseId}/courseWork/{courseWorkId}/studentSubmissions/{id}",
                  request = {
                    ["$ref"] = "StudentSubmission",
                  },
                  response = {
                    ["$ref"] = "StudentSubmission",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/classroom.coursework.me",
                    "https://www.googleapis.com/auth/classroom.coursework.students",
                  },
                },
                reclaim = {
                  description = "Reclaims a student submission on behalf of the student that owns it. Reclaiming a student submission transfers ownership of attached Drive files to the student and updates the submission state. Only the student that owns the requested student submission may call this method, and only for a student submission that has been turned in. This request must be made by the Developer Console project of the [OAuth client ID](https://support.google.com/cloud/answer/6158849) used to create the corresponding course work item. This method returns the following error codes: * `PERMISSION_DENIED` if the requesting user is not permitted to access the requested course or course work, unsubmit the requested student submission, or for access errors. * `FAILED_PRECONDITION` if the student submission has not been turned in. * `INVALID_ARGUMENT` if the request is malformed. * `NOT_FOUND` if the requested course, course work, or student submission does not exist.",
                  flatPath = "v1/courses/{courseId}/courseWork/{courseWorkId}/studentSubmissions/{id}:reclaim",
                  httpMethod = "POST",
                  id = "classroom.courses.courseWork.studentSubmissions.reclaim",
                  parameterOrder = {
                    "courseId",
                    "courseWorkId",
                    "id",
                  },
                  parameters = {
                    courseId = {
                      description = "Identifier of the course. This identifier can be either the Classroom-assigned identifier or an alias.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    courseWorkId = {
                      description = "Identifier of the course work.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    id = {
                      description = "Identifier of the student submission.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/courses/{courseId}/courseWork/{courseWorkId}/studentSubmissions/{id}:reclaim",
                  request = {
                    ["$ref"] = "ReclaimStudentSubmissionRequest",
                  },
                  response = {
                    ["$ref"] = "Empty",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/classroom.coursework.me",
                  },
                },
                ["return"] = {
                  description = "Returns a student submission. Returning a student submission transfers ownership of attached Drive files to the student and may also update the submission state. Unlike the Classroom application, returning a student submission does not set assignedGrade to the draftGrade value. Only a teacher of the course that contains the requested student submission may call this method. This request must be made by the Developer Console project of the [OAuth client ID](https://support.google.com/cloud/answer/6158849) used to create the corresponding course work item. This method returns the following error codes: * `PERMISSION_DENIED` if the requesting user is not permitted to access the requested course or course work, return the requested student submission, or for access errors. * `INVALID_ARGUMENT` if the request is malformed. * `NOT_FOUND` if the requested course, course work, or student submission does not exist.",
                  flatPath = "v1/courses/{courseId}/courseWork/{courseWorkId}/studentSubmissions/{id}:return",
                  httpMethod = "POST",
                  id = "classroom.courses.courseWork.studentSubmissions.return",
                  parameterOrder = {
                    "courseId",
                    "courseWorkId",
                    "id",
                  },
                  parameters = {
                    courseId = {
                      description = "Identifier of the course. This identifier can be either the Classroom-assigned identifier or an alias.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    courseWorkId = {
                      description = "Identifier of the course work.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    id = {
                      description = "Identifier of the student submission.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/courses/{courseId}/courseWork/{courseWorkId}/studentSubmissions/{id}:return",
                  request = {
                    ["$ref"] = "ReturnStudentSubmissionRequest",
                  },
                  response = {
                    ["$ref"] = "Empty",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/classroom.coursework.students",
                  },
                },
                turnIn = {
                  description = "Turns in a student submission. Turning in a student submission transfers ownership of attached Drive files to the teacher and may also update the submission state. This may only be called by the student that owns the specified student submission. This request must be made by the Developer Console project of the [OAuth client ID](https://support.google.com/cloud/answer/6158849) used to create the corresponding course work item. This method returns the following error codes: * `PERMISSION_DENIED` if the requesting user is not permitted to access the requested course or course work, turn in the requested student submission, or for access errors. * `INVALID_ARGUMENT` if the request is malformed. * `NOT_FOUND` if the requested course, course work, or student submission does not exist.",
                  flatPath = "v1/courses/{courseId}/courseWork/{courseWorkId}/studentSubmissions/{id}:turnIn",
                  httpMethod = "POST",
                  id = "classroom.courses.courseWork.studentSubmissions.turnIn",
                  parameterOrder = {
                    "courseId",
                    "courseWorkId",
                    "id",
                  },
                  parameters = {
                    courseId = {
                      description = "Identifier of the course. This identifier can be either the Classroom-assigned identifier or an alias.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    courseWorkId = {
                      description = "Identifier of the course work.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    id = {
                      description = "Identifier of the student submission.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/courses/{courseId}/courseWork/{courseWorkId}/studentSubmissions/{id}:turnIn",
                  request = {
                    ["$ref"] = "TurnInStudentSubmissionRequest",
                  },
                  response = {
                    ["$ref"] = "Empty",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/classroom.coursework.me",
                  },
                },
              },
            },
          },
        },
        courseWorkMaterials = {
          methods = {
            create = {
              description = "Creates a course work material. This method returns the following error codes: * `PERMISSION_DENIED` if the requesting user is not permitted to access the requested course, create course work material in the requested course, share a Drive attachment, or for access errors. * `INVALID_ARGUMENT` if the request is malformed or if more than 20 * materials are provided. * `NOT_FOUND` if the requested course does not exist. * `FAILED_PRECONDITION` for the following request error: * AttachmentNotVisible",
              flatPath = "v1/courses/{courseId}/courseWorkMaterials",
              httpMethod = "POST",
              id = "classroom.courses.courseWorkMaterials.create",
              parameterOrder = {
                "courseId",
              },
              parameters = {
                courseId = {
                  description = "Identifier of the course. This identifier can be either the Classroom-assigned identifier or an alias.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/courses/{courseId}/courseWorkMaterials",
              request = {
                ["$ref"] = "CourseWorkMaterial",
              },
              response = {
                ["$ref"] = "CourseWorkMaterial",
              },
              scopes = {
                "https://www.googleapis.com/auth/classroom.courseworkmaterials",
              },
            },
            delete = {
              description = "Deletes a course work material. This request must be made by the Developer Console project of the [OAuth client ID](https://support.google.com/cloud/answer/6158849) used to create the corresponding course work material item. This method returns the following error codes: * `PERMISSION_DENIED` if the requesting developer project did not create the corresponding course work material, if the requesting user is not permitted to delete the requested course or for access errors. * `FAILED_PRECONDITION` if the requested course work material has already been deleted. * `NOT_FOUND` if no course exists with the requested ID.",
              flatPath = "v1/courses/{courseId}/courseWorkMaterials/{id}",
              httpMethod = "DELETE",
              id = "classroom.courses.courseWorkMaterials.delete",
              parameterOrder = {
                "courseId",
                "id",
              },
              parameters = {
                courseId = {
                  description = "Identifier of the course. This identifier can be either the Classroom-assigned identifier or an alias.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                id = {
                  description = "Identifier of the course work material to delete. This identifier is a Classroom-assigned identifier.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/courses/{courseId}/courseWorkMaterials/{id}",
              response = {
                ["$ref"] = "Empty",
              },
              scopes = {
                "https://www.googleapis.com/auth/classroom.courseworkmaterials",
              },
            },
            get = {
              description = "Returns a course work material. This method returns the following error codes: * `PERMISSION_DENIED` if the requesting user is not permitted to access the requested course or course work material, or for access errors. * `INVALID_ARGUMENT` if the request is malformed. * `NOT_FOUND` if the requested course or course work material does not exist.",
              flatPath = "v1/courses/{courseId}/courseWorkMaterials/{id}",
              httpMethod = "GET",
              id = "classroom.courses.courseWorkMaterials.get",
              parameterOrder = {
                "courseId",
                "id",
              },
              parameters = {
                courseId = {
                  description = "Identifier of the course. This identifier can be either the Classroom-assigned identifier or an alias.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                id = {
                  description = "Identifier of the course work material.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/courses/{courseId}/courseWorkMaterials/{id}",
              response = {
                ["$ref"] = "CourseWorkMaterial",
              },
              scopes = {
                "https://www.googleapis.com/auth/classroom.courseworkmaterials",
                "https://www.googleapis.com/auth/classroom.courseworkmaterials.readonly",
              },
            },
            list = {
              description = "Returns a list of course work material that the requester is permitted to view. Course students may only view `PUBLISHED` course work material. Course teachers and domain administrators may view all course work material. This method returns the following error codes: * `PERMISSION_DENIED` if the requesting user is not permitted to access the requested course or for access errors. * `INVALID_ARGUMENT` if the request is malformed. * `NOT_FOUND` if the requested course does not exist.",
              flatPath = "v1/courses/{courseId}/courseWorkMaterials",
              httpMethod = "GET",
              id = "classroom.courses.courseWorkMaterials.list",
              parameterOrder = {
                "courseId",
              },
              parameters = {
                courseId = {
                  description = "Identifier of the course. This identifier can be either the Classroom-assigned identifier or an alias.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                courseWorkMaterialStates = {
                  description = "Restriction on the work status to return. Only course work material that matches is returned. If unspecified, items with a work status of `PUBLISHED` is returned.",
                  enum = {
                    "COURSEWORK_MATERIAL_STATE_UNSPECIFIED",
                    "PUBLISHED",
                    "DRAFT",
                    "DELETED",
                  },
                  enumDescriptions = {
                    "No state specified. This is never returned.",
                    "Status for course work material that has been published. This is the default state.",
                    "Status for an course work material that is not yet published. Course work material in this state is visible only to course teachers and domain administrators.",
                    "Status for course work material that was published but is now deleted. Course work material in this state is visible only to course teachers and domain administrators. Course work material in this state is deleted after some time.",
                  },
                  location = "query",
                  repeated = true,
                  type = "string",
                },
                materialDriveId = {
                  description = "Optional filtering for course work material with at least one Drive material whose ID matches the provided string. If `material_link` is also specified, course work material must have materials matching both filters.",
                  location = "query",
                  type = "string",
                },
                materialLink = {
                  description = "Optional filtering for course work material with at least one link material whose URL partially matches the provided string.",
                  location = "query",
                  type = "string",
                },
                orderBy = {
                  description = "Optional sort ordering for results. A comma-separated list of fields with an optional sort direction keyword. Supported field is `updateTime`. Supported direction keywords are `asc` and `desc`. If not specified, `updateTime desc` is the default behavior. Examples: `updateTime asc`, `updateTime`",
                  location = "query",
                  type = "string",
                },
                pageSize = {
                  description = "Maximum number of items to return. Zero or unspecified indicates that the server may assign a maximum. The server may return fewer than the specified number of results.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "nextPageToken value returned from a previous list call, indicating that the subsequent page of results should be returned. The list request must be otherwise identical to the one that resulted in this token.",
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/courses/{courseId}/courseWorkMaterials",
              response = {
                ["$ref"] = "ListCourseWorkMaterialResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/classroom.courseworkmaterials",
                "https://www.googleapis.com/auth/classroom.courseworkmaterials.readonly",
              },
            },
            patch = {
              description = "Updates one or more fields of a course work material. This method returns the following error codes: * `PERMISSION_DENIED` if the requesting developer project for access errors. * `INVALID_ARGUMENT` if the request is malformed. * `FAILED_PRECONDITION` if the requested course work material has already been deleted. * `NOT_FOUND` if the requested course or course work material does not exist",
              flatPath = "v1/courses/{courseId}/courseWorkMaterials/{id}",
              httpMethod = "PATCH",
              id = "classroom.courses.courseWorkMaterials.patch",
              parameterOrder = {
                "courseId",
                "id",
              },
              parameters = {
                courseId = {
                  description = "Identifier of the course. This identifier can be either the Classroom-assigned identifier or an alias.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                id = {
                  description = "Identifier of the course work material.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                updateMask = {
                  description = "Mask that identifies which fields on the course work material to update. This field is required to do an update. The update fails if invalid fields are specified. If a field supports empty values, it can be cleared by specifying it in the update mask and not in the course work material object. If a field that does not support empty values is included in the update mask and not set in the course work material object, an `INVALID_ARGUMENT` error is returned. The following fields may be specified by teachers: * `title` * `description` * `state` * `scheduled_time` * `topic_id`",
                  format = "google-fieldmask",
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/courses/{courseId}/courseWorkMaterials/{id}",
              request = {
                ["$ref"] = "CourseWorkMaterial",
              },
              response = {
                ["$ref"] = "CourseWorkMaterial",
              },
              scopes = {
                "https://www.googleapis.com/auth/classroom.courseworkmaterials",
              },
            },
          },
        },
        students = {
          methods = {
            create = {
              description = "Adds a user as a student of a course. Domain administrators are permitted to [directly add](https://developers.google.com/classroom/guides/manage-users) users within their domain as students to courses within their domain. Students are permitted to add themselves to a course using an enrollment code. This method returns the following error codes: * `PERMISSION_DENIED` if the requesting user is not permitted to create students in this course or for access errors. * `NOT_FOUND` if the requested course ID does not exist. * `FAILED_PRECONDITION` if the requested user's account is disabled, for the following request errors: * CourseMemberLimitReached * CourseNotModifiable * UserGroupsMembershipLimitReached * InactiveCourseOwner * `ALREADY_EXISTS` if the user is already a student or teacher in the course.",
              flatPath = "v1/courses/{courseId}/students",
              httpMethod = "POST",
              id = "classroom.courses.students.create",
              parameterOrder = {
                "courseId",
              },
              parameters = {
                courseId = {
                  description = "Identifier of the course to create the student in. This identifier can be either the Classroom-assigned identifier or an alias.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                enrollmentCode = {
                  description = "Enrollment code of the course to create the student in. This code is required if userId corresponds to the requesting user; it may be omitted if the requesting user has administrative permissions to create students for any user.",
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/courses/{courseId}/students",
              request = {
                ["$ref"] = "Student",
              },
              response = {
                ["$ref"] = "Student",
              },
              scopes = {
                "https://www.googleapis.com/auth/classroom.profile.emails",
                "https://www.googleapis.com/auth/classroom.profile.photos",
                "https://www.googleapis.com/auth/classroom.rosters",
              },
            },
            delete = {
              description = "Deletes a student of a course. This method returns the following error codes: * `PERMISSION_DENIED` if the requesting user is not permitted to delete students of this course or for access errors. * `NOT_FOUND` if no student of this course has the requested ID or if the course does not exist.",
              flatPath = "v1/courses/{courseId}/students/{userId}",
              httpMethod = "DELETE",
              id = "classroom.courses.students.delete",
              parameterOrder = {
                "courseId",
                "userId",
              },
              parameters = {
                courseId = {
                  description = "Identifier of the course. This identifier can be either the Classroom-assigned identifier or an alias.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                userId = {
                  description = "Identifier of the student to delete. The identifier can be one of the following: * the numeric identifier for the user * the email address of the user * the string literal `\"me\"`, indicating the requesting user",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/courses/{courseId}/students/{userId}",
              response = {
                ["$ref"] = "Empty",
              },
              scopes = {
                "https://www.googleapis.com/auth/classroom.rosters",
              },
            },
            get = {
              description = "Returns a student of a course. This method returns the following error codes: * `PERMISSION_DENIED` if the requesting user is not permitted to view students of this course or for access errors. * `NOT_FOUND` if no student of this course has the requested ID or if the course does not exist.",
              flatPath = "v1/courses/{courseId}/students/{userId}",
              httpMethod = "GET",
              id = "classroom.courses.students.get",
              parameterOrder = {
                "courseId",
                "userId",
              },
              parameters = {
                courseId = {
                  description = "Identifier of the course. This identifier can be either the Classroom-assigned identifier or an alias.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                userId = {
                  description = "Identifier of the student to return. The identifier can be one of the following: * the numeric identifier for the user * the email address of the user * the string literal `\"me\"`, indicating the requesting user",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/courses/{courseId}/students/{userId}",
              response = {
                ["$ref"] = "Student",
              },
              scopes = {
                "https://www.googleapis.com/auth/classroom.profile.emails",
                "https://www.googleapis.com/auth/classroom.profile.photos",
                "https://www.googleapis.com/auth/classroom.rosters",
                "https://www.googleapis.com/auth/classroom.rosters.readonly",
              },
            },
            list = {
              description = "Returns a list of students of this course that the requester is permitted to view. This method returns the following error codes: * `NOT_FOUND` if the course does not exist. * `PERMISSION_DENIED` for access errors.",
              flatPath = "v1/courses/{courseId}/students",
              httpMethod = "GET",
              id = "classroom.courses.students.list",
              parameterOrder = {
                "courseId",
              },
              parameters = {
                courseId = {
                  description = "Identifier of the course. This identifier can be either the Classroom-assigned identifier or an alias.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                pageSize = {
                  description = "Maximum number of items to return. The default is 30 if unspecified or `0`. The server may return fewer than the specified number of results.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "nextPageToken value returned from a previous list call, indicating that the subsequent page of results should be returned. The list request must be otherwise identical to the one that resulted in this token.",
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/courses/{courseId}/students",
              response = {
                ["$ref"] = "ListStudentsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/classroom.profile.emails",
                "https://www.googleapis.com/auth/classroom.profile.photos",
                "https://www.googleapis.com/auth/classroom.rosters",
                "https://www.googleapis.com/auth/classroom.rosters.readonly",
              },
            },
          },
        },
        teachers = {
          methods = {
            create = {
              description = "Creates a teacher of a course. Domain administrators are permitted to [directly add](https://developers.google.com/classroom/guides/manage-users) users within their domain as teachers to courses within their domain. Non-admin users should send an Invitation instead. This method returns the following error codes: * `PERMISSION_DENIED` if the requesting user is not permitted to create teachers in this course or for access errors. * `NOT_FOUND` if the requested course ID does not exist. * `FAILED_PRECONDITION` if the requested user's account is disabled, for the following request errors: * CourseMemberLimitReached * CourseNotModifiable * CourseTeacherLimitReached * UserGroupsMembershipLimitReached * InactiveCourseOwner * `ALREADY_EXISTS` if the user is already a teacher or student in the course.",
              flatPath = "v1/courses/{courseId}/teachers",
              httpMethod = "POST",
              id = "classroom.courses.teachers.create",
              parameterOrder = {
                "courseId",
              },
              parameters = {
                courseId = {
                  description = "Identifier of the course. This identifier can be either the Classroom-assigned identifier or an alias.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/courses/{courseId}/teachers",
              request = {
                ["$ref"] = "Teacher",
              },
              response = {
                ["$ref"] = "Teacher",
              },
              scopes = {
                "https://www.googleapis.com/auth/classroom.profile.emails",
                "https://www.googleapis.com/auth/classroom.profile.photos",
                "https://www.googleapis.com/auth/classroom.rosters",
              },
            },
            delete = {
              description = "Removes the specified teacher from the specified course. This method returns the following error codes: * `PERMISSION_DENIED` if the requesting user is not permitted to delete teachers of this course or for access errors. * `NOT_FOUND` if no teacher of this course has the requested ID or if the course does not exist. * `FAILED_PRECONDITION` if the requested ID belongs to the primary teacher of this course. * `FAILED_PRECONDITION` if the requested ID belongs to the owner of the course Drive folder. * `FAILED_PRECONDITION` if the course no longer has an active owner.",
              flatPath = "v1/courses/{courseId}/teachers/{userId}",
              httpMethod = "DELETE",
              id = "classroom.courses.teachers.delete",
              parameterOrder = {
                "courseId",
                "userId",
              },
              parameters = {
                courseId = {
                  description = "Identifier of the course. This identifier can be either the Classroom-assigned identifier or an alias.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                userId = {
                  description = "Identifier of the teacher to delete. The identifier can be one of the following: * the numeric identifier for the user * the email address of the user * the string literal `\"me\"`, indicating the requesting user",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/courses/{courseId}/teachers/{userId}",
              response = {
                ["$ref"] = "Empty",
              },
              scopes = {
                "https://www.googleapis.com/auth/classroom.rosters",
              },
            },
            get = {
              description = "Returns a teacher of a course. This method returns the following error codes: * `PERMISSION_DENIED` if the requesting user is not permitted to view teachers of this course or for access errors. * `NOT_FOUND` if no teacher of this course has the requested ID or if the course does not exist.",
              flatPath = "v1/courses/{courseId}/teachers/{userId}",
              httpMethod = "GET",
              id = "classroom.courses.teachers.get",
              parameterOrder = {
                "courseId",
                "userId",
              },
              parameters = {
                courseId = {
                  description = "Identifier of the course. This identifier can be either the Classroom-assigned identifier or an alias.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                userId = {
                  description = "Identifier of the teacher to return. The identifier can be one of the following: * the numeric identifier for the user * the email address of the user * the string literal `\"me\"`, indicating the requesting user",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/courses/{courseId}/teachers/{userId}",
              response = {
                ["$ref"] = "Teacher",
              },
              scopes = {
                "https://www.googleapis.com/auth/classroom.profile.emails",
                "https://www.googleapis.com/auth/classroom.profile.photos",
                "https://www.googleapis.com/auth/classroom.rosters",
                "https://www.googleapis.com/auth/classroom.rosters.readonly",
              },
            },
            list = {
              description = "Returns a list of teachers of this course that the requester is permitted to view. This method returns the following error codes: * `NOT_FOUND` if the course does not exist. * `PERMISSION_DENIED` for access errors.",
              flatPath = "v1/courses/{courseId}/teachers",
              httpMethod = "GET",
              id = "classroom.courses.teachers.list",
              parameterOrder = {
                "courseId",
              },
              parameters = {
                courseId = {
                  description = "Identifier of the course. This identifier can be either the Classroom-assigned identifier or an alias.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                pageSize = {
                  description = "Maximum number of items to return. The default is 30 if unspecified or `0`. The server may return fewer than the specified number of results.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "nextPageToken value returned from a previous list call, indicating that the subsequent page of results should be returned. The list request must be otherwise identical to the one that resulted in this token.",
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/courses/{courseId}/teachers",
              response = {
                ["$ref"] = "ListTeachersResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/classroom.profile.emails",
                "https://www.googleapis.com/auth/classroom.profile.photos",
                "https://www.googleapis.com/auth/classroom.rosters",
                "https://www.googleapis.com/auth/classroom.rosters.readonly",
              },
            },
          },
        },
        topics = {
          methods = {
            create = {
              description = "Creates a topic. This method returns the following error codes: * `PERMISSION_DENIED` if the requesting user is not permitted to access the requested course, create a topic in the requested course, or for access errors. * `INVALID_ARGUMENT` if the request is malformed. * `NOT_FOUND` if the requested course does not exist.",
              flatPath = "v1/courses/{courseId}/topics",
              httpMethod = "POST",
              id = "classroom.courses.topics.create",
              parameterOrder = {
                "courseId",
              },
              parameters = {
                courseId = {
                  description = "Identifier of the course. This identifier can be either the Classroom-assigned identifier or an alias.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/courses/{courseId}/topics",
              request = {
                ["$ref"] = "Topic",
              },
              response = {
                ["$ref"] = "Topic",
              },
              scopes = {
                "https://www.googleapis.com/auth/classroom.topics",
              },
            },
            delete = {
              description = "Deletes a topic. This method returns the following error codes: * `PERMISSION_DENIED` if the requesting user is not allowed to delete the requested topic or for access errors. * `FAILED_PRECONDITION` if the requested topic has already been deleted. * `NOT_FOUND` if no course or topic exists with the requested ID.",
              flatPath = "v1/courses/{courseId}/topics/{id}",
              httpMethod = "DELETE",
              id = "classroom.courses.topics.delete",
              parameterOrder = {
                "courseId",
                "id",
              },
              parameters = {
                courseId = {
                  description = "Identifier of the course. This identifier can be either the Classroom-assigned identifier or an alias.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                id = {
                  description = "Identifier of the topic to delete.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/courses/{courseId}/topics/{id}",
              response = {
                ["$ref"] = "Empty",
              },
              scopes = {
                "https://www.googleapis.com/auth/classroom.topics",
              },
            },
            get = {
              description = "Returns a topic. This method returns the following error codes: * `PERMISSION_DENIED` if the requesting user is not permitted to access the requested course or topic, or for access errors. * `INVALID_ARGUMENT` if the request is malformed. * `NOT_FOUND` if the requested course or topic does not exist.",
              flatPath = "v1/courses/{courseId}/topics/{id}",
              httpMethod = "GET",
              id = "classroom.courses.topics.get",
              parameterOrder = {
                "courseId",
                "id",
              },
              parameters = {
                courseId = {
                  description = "Identifier of the course.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                id = {
                  description = "Identifier of the topic.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/courses/{courseId}/topics/{id}",
              response = {
                ["$ref"] = "Topic",
              },
              scopes = {
                "https://www.googleapis.com/auth/classroom.topics",
                "https://www.googleapis.com/auth/classroom.topics.readonly",
              },
            },
            list = {
              description = "Returns the list of topics that the requester is permitted to view. This method returns the following error codes: * `PERMISSION_DENIED` if the requesting user is not permitted to access the requested course or for access errors. * `INVALID_ARGUMENT` if the request is malformed. * `NOT_FOUND` if the requested course does not exist.",
              flatPath = "v1/courses/{courseId}/topics",
              httpMethod = "GET",
              id = "classroom.courses.topics.list",
              parameterOrder = {
                "courseId",
              },
              parameters = {
                courseId = {
                  description = "Identifier of the course. This identifier can be either the Classroom-assigned identifier or an alias.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                pageSize = {
                  description = "Maximum number of items to return. Zero or unspecified indicates that the server may assign a maximum. The server may return fewer than the specified number of results.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "nextPageToken value returned from a previous list call, indicating that the subsequent page of results should be returned. The list request must be otherwise identical to the one that resulted in this token.",
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/courses/{courseId}/topics",
              response = {
                ["$ref"] = "ListTopicResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/classroom.topics",
                "https://www.googleapis.com/auth/classroom.topics.readonly",
              },
            },
            patch = {
              description = "Updates one or more fields of a topic. This method returns the following error codes: * `PERMISSION_DENIED` if the requesting developer project did not create the corresponding topic or for access errors. * `INVALID_ARGUMENT` if the request is malformed. * `NOT_FOUND` if the requested course or topic does not exist",
              flatPath = "v1/courses/{courseId}/topics/{id}",
              httpMethod = "PATCH",
              id = "classroom.courses.topics.patch",
              parameterOrder = {
                "courseId",
                "id",
              },
              parameters = {
                courseId = {
                  description = "Identifier of the course. This identifier can be either the Classroom-assigned identifier or an alias.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                id = {
                  description = "Identifier of the topic.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                updateMask = {
                  description = "Mask that identifies which fields on the topic to update. This field is required to do an update. The update fails if invalid fields are specified. If a field supports empty values, it can be cleared by specifying it in the update mask and not in the Topic object. If a field that does not support empty values is included in the update mask and not set in the Topic object, an `INVALID_ARGUMENT` error is returned. The following fields may be specified: * `name`",
                  format = "google-fieldmask",
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/courses/{courseId}/topics/{id}",
              request = {
                ["$ref"] = "Topic",
              },
              response = {
                ["$ref"] = "Topic",
              },
              scopes = {
                "https://www.googleapis.com/auth/classroom.topics",
              },
            },
          },
        },
      },
    },
    invitations = {
      methods = {
        accept = {
          description = "Accepts an invitation, removing it and adding the invited user to the teachers or students (as appropriate) of the specified course. Only the invited user may accept an invitation. This method returns the following error codes: * `PERMISSION_DENIED` if the requesting user is not permitted to accept the requested invitation or for access errors. * `FAILED_PRECONDITION` for the following request errors: * CourseMemberLimitReached * CourseNotModifiable * CourseTeacherLimitReached * UserGroupsMembershipLimitReached * `NOT_FOUND` if no invitation exists with the requested ID.",
          flatPath = "v1/invitations/{id}:accept",
          httpMethod = "POST",
          id = "classroom.invitations.accept",
          parameterOrder = {
            "id",
          },
          parameters = {
            id = {
              description = "Identifier of the invitation to accept.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "v1/invitations/{id}:accept",
          response = {
            ["$ref"] = "Empty",
          },
          scopes = {
            "https://www.googleapis.com/auth/classroom.rosters",
          },
        },
        create = {
          description = "Creates an invitation. Only one invitation for a user and course may exist at a time. Delete and re-create an invitation to make changes. This method returns the following error codes: * `PERMISSION_DENIED` if the requesting user is not permitted to create invitations for this course or for access errors. * `NOT_FOUND` if the course or the user does not exist. * `FAILED_PRECONDITION`: * if the requested user's account is disabled. * if the user already has this role or a role with greater permissions. * for the following request errors: * IneligibleOwner * `ALREADY_EXISTS` if an invitation for the specified user and course already exists.",
          flatPath = "v1/invitations",
          httpMethod = "POST",
          id = "classroom.invitations.create",
          parameterOrder = {},
          parameters = {},
          path = "v1/invitations",
          request = {
            ["$ref"] = "Invitation",
          },
          response = {
            ["$ref"] = "Invitation",
          },
          scopes = {
            "https://www.googleapis.com/auth/classroom.rosters",
          },
        },
        delete = {
          description = "Deletes an invitation. This method returns the following error codes: * `PERMISSION_DENIED` if the requesting user is not permitted to delete the requested invitation or for access errors. * `NOT_FOUND` if no invitation exists with the requested ID.",
          flatPath = "v1/invitations/{id}",
          httpMethod = "DELETE",
          id = "classroom.invitations.delete",
          parameterOrder = {
            "id",
          },
          parameters = {
            id = {
              description = "Identifier of the invitation to delete.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "v1/invitations/{id}",
          response = {
            ["$ref"] = "Empty",
          },
          scopes = {
            "https://www.googleapis.com/auth/classroom.rosters",
          },
        },
        get = {
          description = "Returns an invitation. This method returns the following error codes: * `PERMISSION_DENIED` if the requesting user is not permitted to view the requested invitation or for access errors. * `NOT_FOUND` if no invitation exists with the requested ID.",
          flatPath = "v1/invitations/{id}",
          httpMethod = "GET",
          id = "classroom.invitations.get",
          parameterOrder = {
            "id",
          },
          parameters = {
            id = {
              description = "Identifier of the invitation to return.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "v1/invitations/{id}",
          response = {
            ["$ref"] = "Invitation",
          },
          scopes = {
            "https://www.googleapis.com/auth/classroom.rosters",
            "https://www.googleapis.com/auth/classroom.rosters.readonly",
          },
        },
        list = {
          description = "Returns a list of invitations that the requesting user is permitted to view, restricted to those that match the list request. *Note:* At least one of `user_id` or `course_id` must be supplied. Both fields can be supplied. This method returns the following error codes: * `PERMISSION_DENIED` for access errors.",
          flatPath = "v1/invitations",
          httpMethod = "GET",
          id = "classroom.invitations.list",
          parameterOrder = {},
          parameters = {
            courseId = {
              description = "Restricts returned invitations to those for a course with the specified identifier.",
              location = "query",
              type = "string",
            },
            pageSize = {
              description = "Maximum number of items to return. The default is 500 if unspecified or `0`. The server may return fewer than the specified number of results.",
              format = "int32",
              location = "query",
              type = "integer",
            },
            pageToken = {
              description = "nextPageToken value returned from a previous list call, indicating that the subsequent page of results should be returned. The list request must be otherwise identical to the one that resulted in this token.",
              location = "query",
              type = "string",
            },
            userId = {
              description = "Restricts returned invitations to those for a specific user. The identifier can be one of the following: * the numeric identifier for the user * the email address of the user * the string literal `\"me\"`, indicating the requesting user",
              location = "query",
              type = "string",
            },
          },
          path = "v1/invitations",
          response = {
            ["$ref"] = "ListInvitationsResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/classroom.rosters",
            "https://www.googleapis.com/auth/classroom.rosters.readonly",
          },
        },
      },
    },
    registrations = {
      methods = {
        create = {
          description = "Creates a `Registration`, causing Classroom to start sending notifications from the provided `feed` to the destination provided in `cloudPubSubTopic`. Returns the created `Registration`. Currently, this will be the same as the argument, but with server-assigned fields such as `expiry_time` and `id` filled in. Note that any value specified for the `expiry_time` or `id` fields will be ignored. While Classroom may validate the `cloudPubSubTopic` and return errors on a best effort basis, it is the caller's responsibility to ensure that it exists and that Classroom has permission to publish to it. This method may return the following error codes: * `PERMISSION_DENIED` if: * the authenticated user does not have permission to receive notifications from the requested field; or * the current user has not granted access to the current Cloud project with the appropriate scope for the requested feed. Note that domain-wide delegation of authority is not currently supported for this purpose. If the request has the appropriate scope, but no grant exists, a Request Errors is returned. * another access error is encountered. * `INVALID_ARGUMENT` if: * no `cloudPubsubTopic` is specified, or the specified `cloudPubsubTopic` is not valid; or * no `feed` is specified, or the specified `feed` is not valid. * `NOT_FOUND` if: * the specified `feed` cannot be located, or the requesting user does not have permission to determine whether or not it exists; or * the specified `cloudPubsubTopic` cannot be located, or Classroom has not been granted permission to publish to it.",
          flatPath = "v1/registrations",
          httpMethod = "POST",
          id = "classroom.registrations.create",
          parameterOrder = {},
          parameters = {},
          path = "v1/registrations",
          request = {
            ["$ref"] = "Registration",
          },
          response = {
            ["$ref"] = "Registration",
          },
          scopes = {
            "https://www.googleapis.com/auth/classroom.push-notifications",
          },
        },
        delete = {
          description = "Deletes a `Registration`, causing Classroom to stop sending notifications for that `Registration`.",
          flatPath = "v1/registrations/{registrationId}",
          httpMethod = "DELETE",
          id = "classroom.registrations.delete",
          parameterOrder = {
            "registrationId",
          },
          parameters = {
            registrationId = {
              description = "The `registration_id` of the `Registration` to be deleted.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "v1/registrations/{registrationId}",
          response = {
            ["$ref"] = "Empty",
          },
          scopes = {
            "https://www.googleapis.com/auth/classroom.push-notifications",
          },
        },
      },
    },
    userProfiles = {
      methods = {
        get = {
          description = "Returns a user profile. This method returns the following error codes: * `PERMISSION_DENIED` if the requesting user is not permitted to access this user profile, if no profile exists with the requested ID, or for access errors.",
          flatPath = "v1/userProfiles/{userId}",
          httpMethod = "GET",
          id = "classroom.userProfiles.get",
          parameterOrder = {
            "userId",
          },
          parameters = {
            userId = {
              description = "Identifier of the profile to return. The identifier can be one of the following: * the numeric identifier for the user * the email address of the user * the string literal `\"me\"`, indicating the requesting user",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "v1/userProfiles/{userId}",
          response = {
            ["$ref"] = "UserProfile",
          },
          scopes = {
            "https://www.googleapis.com/auth/classroom.profile.emails",
            "https://www.googleapis.com/auth/classroom.profile.photos",
            "https://www.googleapis.com/auth/classroom.rosters",
            "https://www.googleapis.com/auth/classroom.rosters.readonly",
          },
        },
      },
      resources = {
        guardianInvitations = {
          methods = {
            create = {
              description = "Creates a guardian invitation, and sends an email to the guardian asking them to confirm that they are the student's guardian. Once the guardian accepts the invitation, their `state` will change to `COMPLETED` and they will start receiving guardian notifications. A `Guardian` resource will also be created to represent the active guardian. The request object must have the `student_id` and `invited_email_address` fields set. Failing to set these fields, or setting any other fields in the request, will result in an error. This method returns the following error codes: * `PERMISSION_DENIED` if the current user does not have permission to manage guardians, if the guardian in question has already rejected too many requests for that student, if guardians are not enabled for the domain in question, or for other access errors. * `RESOURCE_EXHAUSTED` if the student or guardian has exceeded the guardian link limit. * `INVALID_ARGUMENT` if the guardian email address is not valid (for example, if it is too long), or if the format of the student ID provided cannot be recognized (it is not an email address, nor a `user_id` from this API). This error will also be returned if read-only fields are set, or if the `state` field is set to to a value other than `PENDING`. * `NOT_FOUND` if the student ID provided is a valid student ID, but Classroom has no record of that student. * `ALREADY_EXISTS` if there is already a pending guardian invitation for the student and `invited_email_address` provided, or if the provided `invited_email_address` matches the Google account of an existing `Guardian` for this user.",
              flatPath = "v1/userProfiles/{studentId}/guardianInvitations",
              httpMethod = "POST",
              id = "classroom.userProfiles.guardianInvitations.create",
              parameterOrder = {
                "studentId",
              },
              parameters = {
                studentId = {
                  description = "ID of the student (in standard format)",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/userProfiles/{studentId}/guardianInvitations",
              request = {
                ["$ref"] = "GuardianInvitation",
              },
              response = {
                ["$ref"] = "GuardianInvitation",
              },
              scopes = {
                "https://www.googleapis.com/auth/classroom.guardianlinks.students",
              },
            },
            get = {
              description = "Returns a specific guardian invitation. This method returns the following error codes: * `PERMISSION_DENIED` if the requesting user is not permitted to view guardian invitations for the student identified by the `student_id`, if guardians are not enabled for the domain in question, or for other access errors. * `INVALID_ARGUMENT` if a `student_id` is specified, but its format cannot be recognized (it is not an email address, nor a `student_id` from the API, nor the literal string `me`). * `NOT_FOUND` if Classroom cannot find any record of the given student or `invitation_id`. May also be returned if the student exists, but the requesting user does not have access to see that student.",
              flatPath = "v1/userProfiles/{studentId}/guardianInvitations/{invitationId}",
              httpMethod = "GET",
              id = "classroom.userProfiles.guardianInvitations.get",
              parameterOrder = {
                "studentId",
                "invitationId",
              },
              parameters = {
                invitationId = {
                  description = "The `id` field of the `GuardianInvitation` being requested.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                studentId = {
                  description = "The ID of the student whose guardian invitation is being requested.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/userProfiles/{studentId}/guardianInvitations/{invitationId}",
              response = {
                ["$ref"] = "GuardianInvitation",
              },
              scopes = {
                "https://www.googleapis.com/auth/classroom.guardianlinks.students",
                "https://www.googleapis.com/auth/classroom.guardianlinks.students.readonly",
              },
            },
            list = {
              description = "Returns a list of guardian invitations that the requesting user is permitted to view, filtered by the parameters provided. This method returns the following error codes: * `PERMISSION_DENIED` if a `student_id` is specified, and the requesting user is not permitted to view guardian invitations for that student, if `\"-\"` is specified as the `student_id` and the user is not a domain administrator, if guardians are not enabled for the domain in question, or for other access errors. * `INVALID_ARGUMENT` if a `student_id` is specified, but its format cannot be recognized (it is not an email address, nor a `student_id` from the API, nor the literal string `me`). May also be returned if an invalid `page_token` or `state` is provided. * `NOT_FOUND` if a `student_id` is specified, and its format can be recognized, but Classroom has no record of that student.",
              flatPath = "v1/userProfiles/{studentId}/guardianInvitations",
              httpMethod = "GET",
              id = "classroom.userProfiles.guardianInvitations.list",
              parameterOrder = {
                "studentId",
              },
              parameters = {
                invitedEmailAddress = {
                  description = "If specified, only results with the specified `invited_email_address` are returned.",
                  location = "query",
                  type = "string",
                },
                pageSize = {
                  description = "Maximum number of items to return. Zero or unspecified indicates that the server may assign a maximum. The server may return fewer than the specified number of results.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "nextPageToken value returned from a previous list call, indicating that the subsequent page of results should be returned. The list request must be otherwise identical to the one that resulted in this token.",
                  location = "query",
                  type = "string",
                },
                states = {
                  description = "If specified, only results with the specified `state` values are returned. Otherwise, results with a `state` of `PENDING` are returned.",
                  enum = {
                    "GUARDIAN_INVITATION_STATE_UNSPECIFIED",
                    "PENDING",
                    "COMPLETE",
                  },
                  enumDescriptions = {
                    "Should never be returned.",
                    "The invitation is active and awaiting a response.",
                    "The invitation is no longer active. It may have been accepted, declined, withdrawn or it may have expired.",
                  },
                  location = "query",
                  repeated = true,
                  type = "string",
                },
                studentId = {
                  description = "The ID of the student whose guardian invitations are to be returned. The identifier can be one of the following: * the numeric identifier for the user * the email address of the user * the string literal `\"me\"`, indicating the requesting user * the string literal `\"-\"`, indicating that results should be returned for all students that the requesting user is permitted to view guardian invitations.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/userProfiles/{studentId}/guardianInvitations",
              response = {
                ["$ref"] = "ListGuardianInvitationsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/classroom.guardianlinks.students",
                "https://www.googleapis.com/auth/classroom.guardianlinks.students.readonly",
              },
            },
            patch = {
              description = "Modifies a guardian invitation. Currently, the only valid modification is to change the `state` from `PENDING` to `COMPLETE`. This has the effect of withdrawing the invitation. This method returns the following error codes: * `PERMISSION_DENIED` if the current user does not have permission to manage guardians, if guardians are not enabled for the domain in question or for other access errors. * `FAILED_PRECONDITION` if the guardian link is not in the `PENDING` state. * `INVALID_ARGUMENT` if the format of the student ID provided cannot be recognized (it is not an email address, nor a `user_id` from this API), or if the passed `GuardianInvitation` has a `state` other than `COMPLETE`, or if it modifies fields other than `state`. * `NOT_FOUND` if the student ID provided is a valid student ID, but Classroom has no record of that student, or if the `id` field does not refer to a guardian invitation known to Classroom.",
              flatPath = "v1/userProfiles/{studentId}/guardianInvitations/{invitationId}",
              httpMethod = "PATCH",
              id = "classroom.userProfiles.guardianInvitations.patch",
              parameterOrder = {
                "studentId",
                "invitationId",
              },
              parameters = {
                invitationId = {
                  description = "The `id` field of the `GuardianInvitation` to be modified.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                studentId = {
                  description = "The ID of the student whose guardian invitation is to be modified.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                updateMask = {
                  description = "Mask that identifies which fields on the course to update. This field is required to do an update. The update fails if invalid fields are specified. The following fields are valid: * `state` When set in a query parameter, this field should be specified as `updateMask=,,...`",
                  format = "google-fieldmask",
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/userProfiles/{studentId}/guardianInvitations/{invitationId}",
              request = {
                ["$ref"] = "GuardianInvitation",
              },
              response = {
                ["$ref"] = "GuardianInvitation",
              },
              scopes = {
                "https://www.googleapis.com/auth/classroom.guardianlinks.students",
              },
            },
          },
        },
        guardians = {
          methods = {
            delete = {
              description = "Deletes a guardian. The guardian will no longer receive guardian notifications and the guardian will no longer be accessible via the API. This method returns the following error codes: * `PERMISSION_DENIED` if no user that matches the provided `student_id` is visible to the requesting user, if the requesting user is not permitted to manage guardians for the student identified by the `student_id`, if guardians are not enabled for the domain in question, or for other access errors. * `INVALID_ARGUMENT` if a `student_id` is specified, but its format cannot be recognized (it is not an email address, nor a `student_id` from the API). * `NOT_FOUND` if the requesting user is permitted to modify guardians for the requested `student_id`, but no `Guardian` record exists for that student with the provided `guardian_id`.",
              flatPath = "v1/userProfiles/{studentId}/guardians/{guardianId}",
              httpMethod = "DELETE",
              id = "classroom.userProfiles.guardians.delete",
              parameterOrder = {
                "studentId",
                "guardianId",
              },
              parameters = {
                guardianId = {
                  description = "The `id` field from a `Guardian`.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                studentId = {
                  description = "The student whose guardian is to be deleted. One of the following: * the numeric identifier for the user * the email address of the user * the string literal `\"me\"`, indicating the requesting user",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/userProfiles/{studentId}/guardians/{guardianId}",
              response = {
                ["$ref"] = "Empty",
              },
              scopes = {
                "https://www.googleapis.com/auth/classroom.guardianlinks.students",
              },
            },
            get = {
              description = "Returns a specific guardian. This method returns the following error codes: * `PERMISSION_DENIED` if no user that matches the provided `student_id` is visible to the requesting user, if the requesting user is not permitted to view guardian information for the student identified by the `student_id`, if guardians are not enabled for the domain in question, or for other access errors. * `INVALID_ARGUMENT` if a `student_id` is specified, but its format cannot be recognized (it is not an email address, nor a `student_id` from the API, nor the literal string `me`). * `NOT_FOUND` if the requesting user is permitted to view guardians for the requested `student_id`, but no `Guardian` record exists for that student that matches the provided `guardian_id`.",
              flatPath = "v1/userProfiles/{studentId}/guardians/{guardianId}",
              httpMethod = "GET",
              id = "classroom.userProfiles.guardians.get",
              parameterOrder = {
                "studentId",
                "guardianId",
              },
              parameters = {
                guardianId = {
                  description = "The `id` field from a `Guardian`.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                studentId = {
                  description = "The student whose guardian is being requested. One of the following: * the numeric identifier for the user * the email address of the user * the string literal `\"me\"`, indicating the requesting user",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/userProfiles/{studentId}/guardians/{guardianId}",
              response = {
                ["$ref"] = "Guardian",
              },
              scopes = {
                "https://www.googleapis.com/auth/classroom.guardianlinks.me.readonly",
                "https://www.googleapis.com/auth/classroom.guardianlinks.students",
                "https://www.googleapis.com/auth/classroom.guardianlinks.students.readonly",
              },
            },
            list = {
              description = "Returns a list of guardians that the requesting user is permitted to view, restricted to those that match the request. To list guardians for any student that the requesting user may view guardians for, use the literal character `-` for the student ID. This method returns the following error codes: * `PERMISSION_DENIED` if a `student_id` is specified, and the requesting user is not permitted to view guardian information for that student, if `\"-\"` is specified as the `student_id` and the user is not a domain administrator, if guardians are not enabled for the domain in question, if the `invited_email_address` filter is set by a user who is not a domain administrator, or for other access errors. * `INVALID_ARGUMENT` if a `student_id` is specified, but its format cannot be recognized (it is not an email address, nor a `student_id` from the API, nor the literal string `me`). May also be returned if an invalid `page_token` is provided. * `NOT_FOUND` if a `student_id` is specified, and its format can be recognized, but Classroom has no record of that student.",
              flatPath = "v1/userProfiles/{studentId}/guardians",
              httpMethod = "GET",
              id = "classroom.userProfiles.guardians.list",
              parameterOrder = {
                "studentId",
              },
              parameters = {
                invitedEmailAddress = {
                  description = "Filter results by the email address that the original invitation was sent to, resulting in this guardian link. This filter can only be used by domain administrators.",
                  location = "query",
                  type = "string",
                },
                pageSize = {
                  description = "Maximum number of items to return. Zero or unspecified indicates that the server may assign a maximum. The server may return fewer than the specified number of results.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "nextPageToken value returned from a previous list call, indicating that the subsequent page of results should be returned. The list request must be otherwise identical to the one that resulted in this token.",
                  location = "query",
                  type = "string",
                },
                studentId = {
                  description = "Filter results by the student who the guardian is linked to. The identifier can be one of the following: * the numeric identifier for the user * the email address of the user * the string literal `\"me\"`, indicating the requesting user * the string literal `\"-\"`, indicating that results should be returned for all students that the requesting user has access to view.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/userProfiles/{studentId}/guardians",
              response = {
                ["$ref"] = "ListGuardiansResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/classroom.guardianlinks.me.readonly",
                "https://www.googleapis.com/auth/classroom.guardianlinks.students",
                "https://www.googleapis.com/auth/classroom.guardianlinks.students.readonly",
              },
            },
          },
        },
      },
    },
  },
  revision = "20230111",
  rootUrl = "https://classroom.googleapis.com/",
  schemas = {
    Announcement = {
      description = "Announcement created by a teacher for students of the course",
      id = "Announcement",
      properties = {
        alternateLink = {
          description = "Absolute link to this announcement in the Classroom web UI. This is only populated if `state` is `PUBLISHED`. Read-only.",
          type = "string",
        },
        assigneeMode = {
          description = "Assignee mode of the announcement. If unspecified, the default value is `ALL_STUDENTS`.",
          enum = {
            "ASSIGNEE_MODE_UNSPECIFIED",
            "ALL_STUDENTS",
            "INDIVIDUAL_STUDENTS",
          },
          enumDescriptions = {
            "No mode specified. This is never returned.",
            "All students can see the item. This is the default state.",
            "A subset of the students can see the item.",
          },
          type = "string",
        },
        courseId = {
          description = "Identifier of the course. Read-only.",
          type = "string",
        },
        creationTime = {
          description = "Timestamp when this announcement was created. Read-only.",
          format = "google-datetime",
          type = "string",
        },
        creatorUserId = {
          description = "Identifier for the user that created the announcement. Read-only.",
          type = "string",
        },
        id = {
          description = "Classroom-assigned identifier of this announcement, unique per course. Read-only.",
          type = "string",
        },
        individualStudentsOptions = {
          ["$ref"] = "IndividualStudentsOptions",
          description = "Identifiers of students with access to the announcement. This field is set only if `assigneeMode` is `INDIVIDUAL_STUDENTS`. If the `assigneeMode` is `INDIVIDUAL_STUDENTS`, then only students specified in this field can see the announcement.",
        },
        materials = {
          description = "Additional materials. Announcements must have no more than 20 material items.",
          items = {
            ["$ref"] = "Material",
          },
          type = "array",
        },
        scheduledTime = {
          description = "Optional timestamp when this announcement is scheduled to be published.",
          format = "google-datetime",
          type = "string",
        },
        state = {
          description = "Status of this announcement. If unspecified, the default state is `DRAFT`.",
          enum = {
            "ANNOUNCEMENT_STATE_UNSPECIFIED",
            "PUBLISHED",
            "DRAFT",
            "DELETED",
          },
          enumDescriptions = {
            "No state specified. This is never returned.",
            "Status for announcement that has been published. This is the default state.",
            "Status for an announcement that is not yet published. Announcement in this state is visible only to course teachers and domain administrators.",
            "Status for announcement that was published but is now deleted. Announcement in this state is visible only to course teachers and domain administrators. Announcement in this state is deleted after some time.",
          },
          type = "string",
        },
        text = {
          description = "Description of this announcement. The text must be a valid UTF-8 string containing no more than 30,000 characters.",
          type = "string",
        },
        updateTime = {
          description = "Timestamp of the most recent change to this announcement. Read-only.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    Assignment = {
      description = "Additional details for assignments.",
      id = "Assignment",
      properties = {
        studentWorkFolder = {
          ["$ref"] = "DriveFolder",
          description = "Drive folder where attachments from student submissions are placed. This is only populated for course teachers and administrators.",
        },
      },
      type = "object",
    },
    AssignmentSubmission = {
      description = "Student work for an assignment.",
      id = "AssignmentSubmission",
      properties = {
        attachments = {
          description = "Attachments added by the student. Drive files that correspond to materials with a share mode of STUDENT_COPY may not exist yet if the student has not accessed the assignment in Classroom. Some attachment metadata is only populated if the requesting user has permission to access it. Identifier and alternate_link fields are always available, but others (for example, title) may not be.",
          items = {
            ["$ref"] = "Attachment",
          },
          type = "array",
        },
      },
      type = "object",
    },
    Attachment = {
      description = "Attachment added to student assignment work. When creating attachments, setting the `form` field is not supported.",
      id = "Attachment",
      properties = {
        driveFile = {
          ["$ref"] = "DriveFile",
          description = "Google Drive file attachment.",
        },
        form = {
          ["$ref"] = "Form",
          description = "Google Forms attachment.",
        },
        link = {
          ["$ref"] = "Link",
          description = "Link attachment.",
        },
        youTubeVideo = {
          ["$ref"] = "YouTubeVideo",
          description = "Youtube video attachment.",
        },
      },
      type = "object",
    },
    CloudPubsubTopic = {
      description = "A reference to a Cloud Pub/Sub topic. To register for notifications, the owner of the topic must grant `classroom-notifications@system.gserviceaccount.com` the `projects.topics.publish` permission.",
      id = "CloudPubsubTopic",
      properties = {
        topicName = {
          description = "The `name` field of a Cloud Pub/Sub [Topic](https://cloud.google.com/pubsub/docs/reference/rest/v1/projects.topics#Topic).",
          type = "string",
        },
      },
      type = "object",
    },
    Course = {
      description = "A Course in Classroom.",
      id = "Course",
      properties = {
        alternateLink = {
          description = "Absolute link to this course in the Classroom web UI. Read-only.",
          type = "string",
        },
        calendarId = {
          description = "The Calendar ID for a calendar that all course members can see, to which Classroom adds events for course work and announcements in the course. Read-only.",
          type = "string",
        },
        courseGroupEmail = {
          description = "The email address of a Google group containing all members of the course. This group does not accept email and can only be used for permissions. Read-only.",
          type = "string",
        },
        courseMaterialSets = {
          description = "Sets of materials that appear on the \"about\" page of this course. Read-only.",
          items = {
            ["$ref"] = "CourseMaterialSet",
          },
          type = "array",
        },
        courseState = {
          description = "State of the course. If unspecified, the default state is `PROVISIONED`.",
          enum = {
            "COURSE_STATE_UNSPECIFIED",
            "ACTIVE",
            "ARCHIVED",
            "PROVISIONED",
            "DECLINED",
            "SUSPENDED",
          },
          enumDescriptions = {
            "No course state. No returned Course message will use this value.",
            "The course is active.",
            "The course has been archived. You cannot modify it except to change it to a different state.",
            "The course has been created, but not yet activated. It is accessible by the primary teacher and domain administrators, who may modify it or change it to the `ACTIVE` or `DECLINED` states. A course may only be changed to `PROVISIONED` if it is in the `DECLINED` state.",
            "The course has been created, but declined. It is accessible by the course owner and domain administrators, though it will not be displayed in the web UI. You cannot modify the course except to change it to the `PROVISIONED` state. A course may only be changed to `DECLINED` if it is in the `PROVISIONED` state.",
            "The course has been suspended. You cannot modify the course, and only the user identified by the `owner_id` can view the course. A course may be placed in this state if it potentially violates the Terms of Service.",
          },
          type = "string",
        },
        creationTime = {
          description = "Creation time of the course. Specifying this field in a course update mask results in an error. Read-only.",
          format = "google-datetime",
          type = "string",
        },
        description = {
          description = "Optional description. For example, \"We'll be learning about the structure of living creatures from a combination of textbooks, guest lectures, and lab work. Expect to be excited!\" If set, this field must be a valid UTF-8 string and no longer than 30,000 characters.",
          type = "string",
        },
        descriptionHeading = {
          description = "Optional heading for the description. For example, \"Welcome to 10th Grade Biology.\" If set, this field must be a valid UTF-8 string and no longer than 3600 characters.",
          type = "string",
        },
        enrollmentCode = {
          description = "Enrollment code to use when joining this course. Specifying this field in a course update mask results in an error. Read-only.",
          type = "string",
        },
        gradebookSettings = {
          ["$ref"] = "GradebookSettings",
          description = "The gradebook settings that specify how a student's overall grade for the course will be calculated and who it will be displayed to. Read-only",
        },
        guardiansEnabled = {
          description = "Whether or not guardian notifications are enabled for this course. Read-only.",
          type = "boolean",
        },
        id = {
          description = "Identifier for this course assigned by Classroom. When creating a course, you may optionally set this identifier to an alias string in the request to create a corresponding alias. The `id` is still assigned by Classroom and cannot be updated after the course is created. Specifying this field in a course update mask results in an error.",
          type = "string",
        },
        name = {
          description = "Name of the course. For example, \"10th Grade Biology\". The name is required. It must be between 1 and 750 characters and a valid UTF-8 string.",
          type = "string",
        },
        ownerId = {
          description = "The identifier of the owner of a course. When specified as a parameter of a create course request, this field is required. The identifier can be one of the following: * the numeric identifier for the user * the email address of the user * the string literal `\"me\"`, indicating the requesting user This must be set in a create request. Admins can also specify this field in a patch course request to transfer ownership. In other contexts, it is read-only.",
          type = "string",
        },
        room = {
          description = "Optional room location. For example, \"301\". If set, this field must be a valid UTF-8 string and no longer than 650 characters.",
          type = "string",
        },
        section = {
          description = "Section of the course. For example, \"Period 2\". If set, this field must be a valid UTF-8 string and no longer than 2800 characters.",
          type = "string",
        },
        teacherFolder = {
          ["$ref"] = "DriveFolder",
          description = "Information about a Drive Folder that is shared with all teachers of the course. This field will only be set for teachers of the course and domain administrators. Read-only.",
        },
        teacherGroupEmail = {
          description = "The email address of a Google group containing all teachers of the course. This group does not accept email and can only be used for permissions. Read-only.",
          type = "string",
        },
        updateTime = {
          description = "Time of the most recent update to this course. Specifying this field in a course update mask results in an error. Read-only.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    CourseAlias = {
      description = "Alternative identifier for a course. An alias uniquely identifies a course. It must be unique within one of the following scopes: * domain: A domain-scoped alias is visible to all users within the alias creator's domain and can be created only by a domain admin. A domain-scoped alias is often used when a course has an identifier external to Classroom. * project: A project-scoped alias is visible to any request from an application using the Developer Console project ID that created the alias and can be created by any project. A project-scoped alias is often used when an application has alternative identifiers. A random value can also be used to avoid duplicate courses in the event of transmission failures, as retrying a request will return `ALREADY_EXISTS` if a previous one has succeeded.",
      id = "CourseAlias",
      properties = {
        alias = {
          description = "Alias string. The format of the string indicates the desired alias scoping. * `d:` indicates a domain-scoped alias. Example: `d:math_101` * `p:` indicates a project-scoped alias. Example: `p:abc123` This field has a maximum length of 256 characters.",
          type = "string",
        },
      },
      type = "object",
    },
    CourseMaterial = {
      description = "A material attached to a course as part of a material set.",
      id = "CourseMaterial",
      properties = {
        driveFile = {
          ["$ref"] = "DriveFile",
          description = "Google Drive file attachment.",
        },
        form = {
          ["$ref"] = "Form",
          description = "Google Forms attachment.",
        },
        link = {
          ["$ref"] = "Link",
          description = "Link atatchment.",
        },
        youTubeVideo = {
          ["$ref"] = "YouTubeVideo",
          description = "Youtube video attachment.",
        },
      },
      type = "object",
    },
    CourseMaterialSet = {
      description = "A set of materials that appears on the \"About\" page of the course. These materials might include a syllabus, schedule, or other background information relating to the course as a whole.",
      id = "CourseMaterialSet",
      properties = {
        materials = {
          description = "Materials attached to this set.",
          items = {
            ["$ref"] = "CourseMaterial",
          },
          type = "array",
        },
        title = {
          description = "Title for this set.",
          type = "string",
        },
      },
      type = "object",
    },
    CourseRosterChangesInfo = {
      description = "Information about a `Feed` with a `feed_type` of `COURSE_ROSTER_CHANGES`.",
      id = "CourseRosterChangesInfo",
      properties = {
        courseId = {
          description = "The `course_id` of the course to subscribe to roster changes for.",
          type = "string",
        },
      },
      type = "object",
    },
    CourseWork = {
      description = "Course work created by a teacher for students of the course.",
      id = "CourseWork",
      properties = {
        alternateLink = {
          description = "Absolute link to this course work in the Classroom web UI. This is only populated if `state` is `PUBLISHED`. Read-only.",
          type = "string",
        },
        assigneeMode = {
          description = "Assignee mode of the coursework. If unspecified, the default value is `ALL_STUDENTS`.",
          enum = {
            "ASSIGNEE_MODE_UNSPECIFIED",
            "ALL_STUDENTS",
            "INDIVIDUAL_STUDENTS",
          },
          enumDescriptions = {
            "No mode specified. This is never returned.",
            "All students can see the item. This is the default state.",
            "A subset of the students can see the item.",
          },
          type = "string",
        },
        assignment = {
          ["$ref"] = "Assignment",
          description = "Assignment details. This is populated only when `work_type` is `ASSIGNMENT`. Read-only.",
        },
        associatedWithDeveloper = {
          description = "Whether this course work item is associated with the Developer Console project making the request. See CreateCourseWork for more details. Read-only.",
          type = "boolean",
        },
        courseId = {
          description = "Identifier of the course. Read-only.",
          type = "string",
        },
        creationTime = {
          description = "Timestamp when this course work was created. Read-only.",
          format = "google-datetime",
          type = "string",
        },
        creatorUserId = {
          description = "Identifier for the user that created the coursework. Read-only.",
          type = "string",
        },
        description = {
          description = "Optional description of this course work. If set, the description must be a valid UTF-8 string containing no more than 30,000 characters.",
          type = "string",
        },
        dueDate = {
          ["$ref"] = "Date",
          description = "Optional date, in UTC, that submissions for this course work are due. This must be specified if `due_time` is specified.",
        },
        dueTime = {
          ["$ref"] = "TimeOfDay",
          description = "Optional time of day, in UTC, that submissions for this course work are due. This must be specified if `due_date` is specified.",
        },
        gradeCategory = {
          ["$ref"] = "GradeCategory",
          description = "The category that this coursework's grade contributes to. Present only when a category has been chosen for the coursework. May be used in calculating the overall grade. Read-only.",
        },
        id = {
          description = "Classroom-assigned identifier of this course work, unique per course. Read-only.",
          type = "string",
        },
        individualStudentsOptions = {
          ["$ref"] = "IndividualStudentsOptions",
          description = "Identifiers of students with access to the coursework. This field is set only if `assigneeMode` is `INDIVIDUAL_STUDENTS`. If the `assigneeMode` is `INDIVIDUAL_STUDENTS`, then only students specified in this field are assigned the coursework.",
        },
        materials = {
          description = "Additional materials. CourseWork must have no more than 20 material items.",
          items = {
            ["$ref"] = "Material",
          },
          type = "array",
        },
        maxPoints = {
          description = "Maximum grade for this course work. If zero or unspecified, this assignment is considered ungraded. This must be a non-negative integer value.",
          format = "double",
          type = "number",
        },
        multipleChoiceQuestion = {
          ["$ref"] = "MultipleChoiceQuestion",
          description = "Multiple choice question details. For read operations, this field is populated only when `work_type` is `MULTIPLE_CHOICE_QUESTION`. For write operations, this field must be specified when creating course work with a `work_type` of `MULTIPLE_CHOICE_QUESTION`, and it must not be set otherwise.",
        },
        scheduledTime = {
          description = "Optional timestamp when this course work is scheduled to be published.",
          format = "google-datetime",
          type = "string",
        },
        state = {
          description = "Status of this course work. If unspecified, the default state is `DRAFT`.",
          enum = {
            "COURSE_WORK_STATE_UNSPECIFIED",
            "PUBLISHED",
            "DRAFT",
            "DELETED",
          },
          enumDescriptions = {
            "No state specified. This is never returned.",
            "Status for work that has been published. This is the default state.",
            "Status for work that is not yet published. Work in this state is visible only to course teachers and domain administrators.",
            "Status for work that was published but is now deleted. Work in this state is visible only to course teachers and domain administrators. Work in this state is deleted after some time.",
          },
          type = "string",
        },
        submissionModificationMode = {
          description = "Setting to determine when students are allowed to modify submissions. If unspecified, the default value is `MODIFIABLE_UNTIL_TURNED_IN`.",
          enum = {
            "SUBMISSION_MODIFICATION_MODE_UNSPECIFIED",
            "MODIFIABLE_UNTIL_TURNED_IN",
            "MODIFIABLE",
          },
          enumDescriptions = {
            "No modification mode specified. This is never returned.",
            "Submissions can be modified before being turned in.",
            "Submissions can be modified at any time.",
          },
          type = "string",
        },
        title = {
          description = "Title of this course work. The title must be a valid UTF-8 string containing between 1 and 3000 characters.",
          type = "string",
        },
        topicId = {
          description = "Identifier for the topic that this coursework is associated with. Must match an existing topic in the course.",
          type = "string",
        },
        updateTime = {
          description = "Timestamp of the most recent change to this course work. Read-only.",
          format = "google-datetime",
          type = "string",
        },
        workType = {
          description = "Type of this course work. The type is set when the course work is created and cannot be changed.",
          enum = {
            "COURSE_WORK_TYPE_UNSPECIFIED",
            "ASSIGNMENT",
            "SHORT_ANSWER_QUESTION",
            "MULTIPLE_CHOICE_QUESTION",
          },
          enumDescriptions = {
            "No work type specified. This is never returned.",
            "An assignment.",
            "A short answer question.",
            "A multiple-choice question.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    CourseWorkChangesInfo = {
      description = "Information about a `Feed` with a `feed_type` of `COURSE_WORK_CHANGES`.",
      id = "CourseWorkChangesInfo",
      properties = {
        courseId = {
          description = "The `course_id` of the course to subscribe to work changes for.",
          type = "string",
        },
      },
      type = "object",
    },
    CourseWorkMaterial = {
      description = "Course work material created by a teacher for students of the course",
      id = "CourseWorkMaterial",
      properties = {
        alternateLink = {
          description = "Absolute link to this course work material in the Classroom web UI. This is only populated if `state` is `PUBLISHED`. Read-only.",
          type = "string",
        },
        assigneeMode = {
          description = "Assignee mode of the course work material. If unspecified, the default value is `ALL_STUDENTS`.",
          enum = {
            "ASSIGNEE_MODE_UNSPECIFIED",
            "ALL_STUDENTS",
            "INDIVIDUAL_STUDENTS",
          },
          enumDescriptions = {
            "No mode specified. This is never returned.",
            "All students can see the item. This is the default state.",
            "A subset of the students can see the item.",
          },
          type = "string",
        },
        courseId = {
          description = "Identifier of the course. Read-only.",
          type = "string",
        },
        creationTime = {
          description = "Timestamp when this course work material was created. Read-only.",
          format = "google-datetime",
          type = "string",
        },
        creatorUserId = {
          description = "Identifier for the user that created the course work material. Read-only.",
          type = "string",
        },
        description = {
          description = "Optional description of this course work material. The text must be a valid UTF-8 string containing no more than 30,000 characters.",
          type = "string",
        },
        id = {
          description = "Classroom-assigned identifier of this course work material, unique per course. Read-only.",
          type = "string",
        },
        individualStudentsOptions = {
          ["$ref"] = "IndividualStudentsOptions",
          description = "Identifiers of students with access to the course work material. This field is set only if `assigneeMode` is `INDIVIDUAL_STUDENTS`. If the `assigneeMode` is `INDIVIDUAL_STUDENTS`, then only students specified in this field can see the course work material.",
        },
        materials = {
          description = "Additional materials. A course work material must have no more than 20 material items.",
          items = {
            ["$ref"] = "Material",
          },
          type = "array",
        },
        scheduledTime = {
          description = "Optional timestamp when this course work material is scheduled to be published.",
          format = "google-datetime",
          type = "string",
        },
        state = {
          description = "Status of this course work material. If unspecified, the default state is `DRAFT`.",
          enum = {
            "COURSEWORK_MATERIAL_STATE_UNSPECIFIED",
            "PUBLISHED",
            "DRAFT",
            "DELETED",
          },
          enumDescriptions = {
            "No state specified. This is never returned.",
            "Status for course work material that has been published. This is the default state.",
            "Status for an course work material that is not yet published. Course work material in this state is visible only to course teachers and domain administrators.",
            "Status for course work material that was published but is now deleted. Course work material in this state is visible only to course teachers and domain administrators. Course work material in this state is deleted after some time.",
          },
          type = "string",
        },
        title = {
          description = "Title of this course work material. The title must be a valid UTF-8 string containing between 1 and 3000 characters.",
          type = "string",
        },
        topicId = {
          description = "Identifier for the topic that this course work material is associated with. Must match an existing topic in the course.",
          type = "string",
        },
        updateTime = {
          description = "Timestamp of the most recent change to this course work material. Read-only.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    Date = {
      description = "Represents a whole or partial calendar date, such as a birthday. The time of day and time zone are either specified elsewhere or are insignificant. The date is relative to the Gregorian Calendar. This can represent one of the following: * A full date, with non-zero year, month, and day values. * A month and day, with a zero year (for example, an anniversary). * A year on its own, with a zero month and a zero day. * A year and month, with a zero day (for example, a credit card expiration date). Related types: * google.type.TimeOfDay * google.type.DateTime * google.protobuf.Timestamp",
      id = "Date",
      properties = {
        day = {
          description = "Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to specify a year by itself or a year and month where the day isn't significant.",
          format = "int32",
          type = "integer",
        },
        month = {
          description = "Month of a year. Must be from 1 to 12, or 0 to specify a year without a month and day.",
          format = "int32",
          type = "integer",
        },
        year = {
          description = "Year of the date. Must be from 1 to 9999, or 0 to specify a date without a year.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    DriveFile = {
      description = "Representation of a Google Drive file.",
      id = "DriveFile",
      properties = {
        alternateLink = {
          description = "URL that can be used to access the Drive item. Read-only.",
          type = "string",
        },
        id = {
          description = "Drive API resource ID.",
          type = "string",
        },
        thumbnailUrl = {
          description = "URL of a thumbnail image of the Drive item. Read-only.",
          type = "string",
        },
        title = {
          description = "Title of the Drive item. Read-only.",
          type = "string",
        },
      },
      type = "object",
    },
    DriveFolder = {
      description = "Representation of a Google Drive folder.",
      id = "DriveFolder",
      properties = {
        alternateLink = {
          description = "URL that can be used to access the Drive folder. Read-only.",
          type = "string",
        },
        id = {
          description = "Drive API resource ID.",
          type = "string",
        },
        title = {
          description = "Title of the Drive folder. Read-only.",
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
    Feed = {
      description = "A class of notifications that an application can register to receive. For example: \"all roster changes for a domain\".",
      id = "Feed",
      properties = {
        courseRosterChangesInfo = {
          ["$ref"] = "CourseRosterChangesInfo",
          description = "Information about a `Feed` with a `feed_type` of `COURSE_ROSTER_CHANGES`. This field must be specified if `feed_type` is `COURSE_ROSTER_CHANGES`.",
        },
        courseWorkChangesInfo = {
          ["$ref"] = "CourseWorkChangesInfo",
          description = "Information about a `Feed` with a `feed_type` of `COURSE_WORK_CHANGES`. This field must be specified if `feed_type` is `COURSE_WORK_CHANGES`.",
        },
        feedType = {
          description = "The type of feed.",
          enum = {
            "FEED_TYPE_UNSPECIFIED",
            "DOMAIN_ROSTER_CHANGES",
            "COURSE_ROSTER_CHANGES",
            "COURSE_WORK_CHANGES",
          },
          enumDescriptions = {
            "Should never be returned or provided.",
            "All roster changes for a particular domain. Notifications will be generated whenever a user joins or leaves a course. No notifications will be generated when an invitation is created or deleted, but notifications will be generated when a user joins a course by accepting an invitation.",
            "All roster changes for a particular course. Notifications will be generated whenever a user joins or leaves a course. No notifications will be generated when an invitation is created or deleted, but notifications will be generated when a user joins a course by accepting an invitation.",
            "All course work activity for a particular course. Notifications will be generated when a CourseWork or StudentSubmission object is created or modified. No notification will be generated when a StudentSubmission object is created in connection with the creation or modification of its parent CourseWork object (but a notification will be generated for that CourseWork object's creation or modification).",
          },
          type = "string",
        },
      },
      type = "object",
    },
    Form = {
      description = "Google Forms item.",
      id = "Form",
      properties = {
        formUrl = {
          description = "URL of the form.",
          type = "string",
        },
        responseUrl = {
          description = "URL of the form responses document. Only set if respsonses have been recorded and only when the requesting user is an editor of the form. Read-only.",
          type = "string",
        },
        thumbnailUrl = {
          description = "URL of a thumbnail image of the Form. Read-only.",
          type = "string",
        },
        title = {
          description = "Title of the Form. Read-only.",
          type = "string",
        },
      },
      type = "object",
    },
    GlobalPermission = {
      description = "Global user permission description.",
      id = "GlobalPermission",
      properties = {
        permission = {
          description = "Permission value.",
          enum = {
            "PERMISSION_UNSPECIFIED",
            "CREATE_COURSE",
          },
          enumDescriptions = {
            "No permission is specified. This is not returned and is not a valid value.",
            "User is permitted to create a course.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GradeCategory = {
      description = "Details for a grade category in a course. Coursework may have zero or one grade category, and the category may be used in computing the overall grade. See the [help center article](https://support.google.com/edu/classroom/answer/9184995) for details.",
      id = "GradeCategory",
      properties = {
        defaultGradeDenominator = {
          description = "Default value of denominator. Only applicable when grade calculation type is TOTAL_POINTS.",
          format = "int32",
          type = "integer",
        },
        id = {
          description = "ID of the grade category.",
          type = "string",
        },
        name = {
          description = "Name of the grade category.",
          type = "string",
        },
        weight = {
          description = "The weight of the category average as part of overall average. A weight of 12.34% is represented as 123400 (100% is 1,000,000). The last two digits should always be zero since we use two decimal precision. Only applicable when grade calculation type is WEIGHTED_CATEGORIES.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    GradeHistory = {
      description = "The history of each grade on this submission.",
      id = "GradeHistory",
      properties = {
        actorUserId = {
          description = "The teacher who made the grade change.",
          type = "string",
        },
        gradeChangeType = {
          description = "The type of grade change at this time in the submission grade history.",
          enum = {
            "UNKNOWN_GRADE_CHANGE_TYPE",
            "DRAFT_GRADE_POINTS_EARNED_CHANGE",
            "ASSIGNED_GRADE_POINTS_EARNED_CHANGE",
            "MAX_POINTS_CHANGE",
          },
          enumDescriptions = {
            "No grade change type specified. This should never be returned.",
            "A change in the numerator of the draft grade.",
            "A change in the numerator of the assigned grade.",
            "A change in the denominator of the grade.",
          },
          type = "string",
        },
        gradeTimestamp = {
          description = "When the grade of the submission was changed.",
          format = "google-datetime",
          type = "string",
        },
        maxPoints = {
          description = "The denominator of the grade at this time in the submission grade history.",
          format = "double",
          type = "number",
        },
        pointsEarned = {
          description = "The numerator of the grade at this time in the submission grade history.",
          format = "double",
          type = "number",
        },
      },
      type = "object",
    },
    GradebookSettings = {
      description = "The gradebook settings for a course. See the [help center article](https://support.google.com/edu/classroom/answer/9184995) for details.",
      id = "GradebookSettings",
      properties = {
        calculationType = {
          description = "Indicates how the overall grade is calculated.",
          enum = {
            "CALCULATION_TYPE_UNSPECIFIED",
            "TOTAL_POINTS",
            "WEIGHTED_CATEGORIES",
          },
          enumDescriptions = {
            "No method specified. This is never returned.",
            "Overall grade is the sum of grades divided by the sum of total points regardless of category.",
            "Overall grade is the weighted average by category.",
          },
          type = "string",
        },
        displaySetting = {
          description = "Indicates who can see the overall grade..",
          enum = {
            "DISPLAY_SETTING_UNSPECIFIED",
            "SHOW_OVERALL_GRADE",
            "HIDE_OVERALL_GRADE",
            "SHOW_TEACHERS_ONLY",
          },
          enumDescriptions = {
            "No setting specified. This is never returned.",
            "Shows overall grade in the gradebook and student profile to both teachers and students.",
            "Does not show overall grade in the gradebook or student profile.",
            "Shows the overall grade to teachers in the gradebook and student profile. Hides from students in their student profile.",
          },
          type = "string",
        },
        gradeCategories = {
          description = "Grade categories that are available for coursework in the course.",
          items = {
            ["$ref"] = "GradeCategory",
          },
          type = "array",
        },
      },
      type = "object",
    },
    Guardian = {
      description = "Association between a student and a guardian of that student. The guardian may receive information about the student's course work.",
      id = "Guardian",
      properties = {
        guardianId = {
          description = "Identifier for the guardian.",
          type = "string",
        },
        guardianProfile = {
          ["$ref"] = "UserProfile",
          description = "User profile for the guardian.",
        },
        invitedEmailAddress = {
          description = "The email address to which the initial guardian invitation was sent. This field is only visible to domain administrators.",
          type = "string",
        },
        studentId = {
          description = "Identifier for the student to whom the guardian relationship applies.",
          type = "string",
        },
      },
      type = "object",
    },
    GuardianInvitation = {
      description = "An invitation to become the guardian of a specified user, sent to a specified email address.",
      id = "GuardianInvitation",
      properties = {
        creationTime = {
          description = "The time that this invitation was created. Read-only.",
          format = "google-datetime",
          type = "string",
        },
        invitationId = {
          description = "Unique identifier for this invitation. Read-only.",
          type = "string",
        },
        invitedEmailAddress = {
          description = "Email address that the invitation was sent to. This field is only visible to domain administrators.",
          type = "string",
        },
        state = {
          description = "The state that this invitation is in.",
          enum = {
            "GUARDIAN_INVITATION_STATE_UNSPECIFIED",
            "PENDING",
            "COMPLETE",
          },
          enumDescriptions = {
            "Should never be returned.",
            "The invitation is active and awaiting a response.",
            "The invitation is no longer active. It may have been accepted, declined, withdrawn or it may have expired.",
          },
          type = "string",
        },
        studentId = {
          description = "ID of the student (in standard format)",
          type = "string",
        },
      },
      type = "object",
    },
    IndividualStudentsOptions = {
      description = "Assignee details about a coursework/announcement. This field is set if and only if `assigneeMode` is `INDIVIDUAL_STUDENTS`.",
      id = "IndividualStudentsOptions",
      properties = {
        studentIds = {
          description = "Identifiers for the students that have access to the coursework/announcement.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    Invitation = {
      description = "An invitation to join a course.",
      id = "Invitation",
      properties = {
        courseId = {
          description = "Identifier of the course to invite the user to.",
          type = "string",
        },
        id = {
          description = "Identifier assigned by Classroom. Read-only.",
          type = "string",
        },
        role = {
          description = "Role to invite the user to have. Must not be `COURSE_ROLE_UNSPECIFIED`.",
          enum = {
            "COURSE_ROLE_UNSPECIFIED",
            "STUDENT",
            "TEACHER",
            "OWNER",
          },
          enumDescriptions = {
            "No course role.",
            "Student in the course.",
            "Teacher of the course.",
            "Owner of the course.",
          },
          type = "string",
        },
        userId = {
          description = "Identifier of the invited user. When specified as a parameter of a request, this identifier can be set to one of the following: * the numeric identifier for the user * the email address of the user * the string literal `\"me\"`, indicating the requesting user",
          type = "string",
        },
      },
      type = "object",
    },
    Link = {
      description = "URL item.",
      id = "Link",
      properties = {
        thumbnailUrl = {
          description = "URL of a thumbnail image of the target URL. Read-only.",
          type = "string",
        },
        title = {
          description = "Title of the target of the URL. Read-only.",
          type = "string",
        },
        url = {
          description = "URL to link to. This must be a valid UTF-8 string containing between 1 and 2024 characters.",
          type = "string",
        },
      },
      type = "object",
    },
    ListAnnouncementsResponse = {
      description = "Response when listing course work.",
      id = "ListAnnouncementsResponse",
      properties = {
        announcements = {
          description = "Announcement items that match the request.",
          items = {
            ["$ref"] = "Announcement",
          },
          type = "array",
        },
        nextPageToken = {
          description = "Token identifying the next page of results to return. If empty, no further results are available.",
          type = "string",
        },
      },
      type = "object",
    },
    ListCourseAliasesResponse = {
      description = "Response when listing course aliases.",
      id = "ListCourseAliasesResponse",
      properties = {
        aliases = {
          description = "The course aliases.",
          items = {
            ["$ref"] = "CourseAlias",
          },
          type = "array",
        },
        nextPageToken = {
          description = "Token identifying the next page of results to return. If empty, no further results are available.",
          type = "string",
        },
      },
      type = "object",
    },
    ListCourseWorkMaterialResponse = {
      description = "Response when listing course work material.",
      id = "ListCourseWorkMaterialResponse",
      properties = {
        courseWorkMaterial = {
          description = "Course work material items that match the request.",
          items = {
            ["$ref"] = "CourseWorkMaterial",
          },
          type = "array",
        },
        nextPageToken = {
          description = "Token identifying the next page of results to return. If empty, no further results are available.",
          type = "string",
        },
      },
      type = "object",
    },
    ListCourseWorkResponse = {
      description = "Response when listing course work.",
      id = "ListCourseWorkResponse",
      properties = {
        courseWork = {
          description = "Course work items that match the request.",
          items = {
            ["$ref"] = "CourseWork",
          },
          type = "array",
        },
        nextPageToken = {
          description = "Token identifying the next page of results to return. If empty, no further results are available.",
          type = "string",
        },
      },
      type = "object",
    },
    ListCoursesResponse = {
      description = "Response when listing courses.",
      id = "ListCoursesResponse",
      properties = {
        courses = {
          description = "Courses that match the list request.",
          items = {
            ["$ref"] = "Course",
          },
          type = "array",
        },
        nextPageToken = {
          description = "Token identifying the next page of results to return. If empty, no further results are available.",
          type = "string",
        },
      },
      type = "object",
    },
    ListGuardianInvitationsResponse = {
      description = "Response when listing guardian invitations.",
      id = "ListGuardianInvitationsResponse",
      properties = {
        guardianInvitations = {
          description = "Guardian invitations that matched the list request.",
          items = {
            ["$ref"] = "GuardianInvitation",
          },
          type = "array",
        },
        nextPageToken = {
          description = "Token identifying the next page of results to return. If empty, no further results are available.",
          type = "string",
        },
      },
      type = "object",
    },
    ListGuardiansResponse = {
      description = "Response when listing guardians.",
      id = "ListGuardiansResponse",
      properties = {
        guardians = {
          description = "Guardians on this page of results that met the criteria specified in the request.",
          items = {
            ["$ref"] = "Guardian",
          },
          type = "array",
        },
        nextPageToken = {
          description = "Token identifying the next page of results to return. If empty, no further results are available.",
          type = "string",
        },
      },
      type = "object",
    },
    ListInvitationsResponse = {
      description = "Response when listing invitations.",
      id = "ListInvitationsResponse",
      properties = {
        invitations = {
          description = "Invitations that match the list request.",
          items = {
            ["$ref"] = "Invitation",
          },
          type = "array",
        },
        nextPageToken = {
          description = "Token identifying the next page of results to return. If empty, no further results are available.",
          type = "string",
        },
      },
      type = "object",
    },
    ListStudentSubmissionsResponse = {
      description = "Response when listing student submissions.",
      id = "ListStudentSubmissionsResponse",
      properties = {
        nextPageToken = {
          description = "Token identifying the next page of results to return. If empty, no further results are available.",
          type = "string",
        },
        studentSubmissions = {
          description = "Student work that matches the request.",
          items = {
            ["$ref"] = "StudentSubmission",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ListStudentsResponse = {
      description = "Response when listing students.",
      id = "ListStudentsResponse",
      properties = {
        nextPageToken = {
          description = "Token identifying the next page of results to return. If empty, no further results are available.",
          type = "string",
        },
        students = {
          description = "Students who match the list request.",
          items = {
            ["$ref"] = "Student",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ListTeachersResponse = {
      description = "Response when listing teachers.",
      id = "ListTeachersResponse",
      properties = {
        nextPageToken = {
          description = "Token identifying the next page of results to return. If empty, no further results are available.",
          type = "string",
        },
        teachers = {
          description = "Teachers who match the list request.",
          items = {
            ["$ref"] = "Teacher",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ListTopicResponse = {
      description = "Response when listing topics.",
      id = "ListTopicResponse",
      properties = {
        nextPageToken = {
          description = "Token identifying the next page of results to return. If empty, no further results are available.",
          type = "string",
        },
        topic = {
          description = "Topic items that match the request.",
          items = {
            ["$ref"] = "Topic",
          },
          type = "array",
        },
      },
      type = "object",
    },
    Material = {
      description = "Material attached to course work. When creating attachments, setting the `form` field is not supported.",
      id = "Material",
      properties = {
        driveFile = {
          ["$ref"] = "SharedDriveFile",
          description = "Google Drive file material.",
        },
        form = {
          ["$ref"] = "Form",
          description = "Google Forms material.",
        },
        link = {
          ["$ref"] = "Link",
          description = "Link material. On creation, this is upgraded to a more appropriate type if possible, and this is reflected in the response.",
        },
        youtubeVideo = {
          ["$ref"] = "YouTubeVideo",
          description = "YouTube video material.",
        },
      },
      type = "object",
    },
    ModifyAnnouncementAssigneesRequest = {
      description = "Request to modify assignee mode and options of an announcement.",
      id = "ModifyAnnouncementAssigneesRequest",
      properties = {
        assigneeMode = {
          description = "Mode of the announcement describing whether it is accessible by all students or specified individual students.",
          enum = {
            "ASSIGNEE_MODE_UNSPECIFIED",
            "ALL_STUDENTS",
            "INDIVIDUAL_STUDENTS",
          },
          enumDescriptions = {
            "No mode specified. This is never returned.",
            "All students can see the item. This is the default state.",
            "A subset of the students can see the item.",
          },
          type = "string",
        },
        modifyIndividualStudentsOptions = {
          ["$ref"] = "ModifyIndividualStudentsOptions",
          description = "Set which students can view or cannot view the announcement. Must be specified only when `assigneeMode` is `INDIVIDUAL_STUDENTS`.",
        },
      },
      type = "object",
    },
    ModifyAttachmentsRequest = {
      description = "Request to modify the attachments of a student submission.",
      id = "ModifyAttachmentsRequest",
      properties = {
        addAttachments = {
          description = "Attachments to add. A student submission may not have more than 20 attachments. Form attachments are not supported.",
          items = {
            ["$ref"] = "Attachment",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ModifyCourseWorkAssigneesRequest = {
      description = "Request to modify assignee mode and options of a coursework.",
      id = "ModifyCourseWorkAssigneesRequest",
      properties = {
        assigneeMode = {
          description = "Mode of the coursework describing whether it will be assigned to all students or specified individual students.",
          enum = {
            "ASSIGNEE_MODE_UNSPECIFIED",
            "ALL_STUDENTS",
            "INDIVIDUAL_STUDENTS",
          },
          enumDescriptions = {
            "No mode specified. This is never returned.",
            "All students can see the item. This is the default state.",
            "A subset of the students can see the item.",
          },
          type = "string",
        },
        modifyIndividualStudentsOptions = {
          ["$ref"] = "ModifyIndividualStudentsOptions",
          description = "Set which students are assigned or not assigned to the coursework. Must be specified only when `assigneeMode` is `INDIVIDUAL_STUDENTS`.",
        },
      },
      type = "object",
    },
    ModifyIndividualStudentsOptions = {
      description = "Contains fields to add or remove students from a course work or announcement where the `assigneeMode` is set to `INDIVIDUAL_STUDENTS`.",
      id = "ModifyIndividualStudentsOptions",
      properties = {
        addStudentIds = {
          description = "IDs of students to be added as having access to this coursework/announcement.",
          items = {
            type = "string",
          },
          type = "array",
        },
        removeStudentIds = {
          description = "IDs of students to be removed from having access to this coursework/announcement.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    MultipleChoiceQuestion = {
      description = "Additional details for multiple-choice questions.",
      id = "MultipleChoiceQuestion",
      properties = {
        choices = {
          description = "Possible choices.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    MultipleChoiceSubmission = {
      description = "Student work for a multiple-choice question.",
      id = "MultipleChoiceSubmission",
      properties = {
        answer = {
          description = "Student's select choice.",
          type = "string",
        },
      },
      type = "object",
    },
    Name = {
      description = "Details of the user's name.",
      id = "Name",
      properties = {
        familyName = {
          description = "The user's last name. Read-only.",
          type = "string",
        },
        fullName = {
          description = "The user's full name formed by concatenating the first and last name values. Read-only.",
          type = "string",
        },
        givenName = {
          description = "The user's first name. Read-only.",
          type = "string",
        },
      },
      type = "object",
    },
    ReclaimStudentSubmissionRequest = {
      description = "Request to reclaim a student submission.",
      id = "ReclaimStudentSubmissionRequest",
      properties = {},
      type = "object",
    },
    Registration = {
      description = "An instruction to Classroom to send notifications from the `feed` to the provided destination.",
      id = "Registration",
      properties = {
        cloudPubsubTopic = {
          ["$ref"] = "CloudPubsubTopic",
          description = "The Cloud Pub/Sub topic that notifications are to be sent to.",
        },
        expiryTime = {
          description = "The time until which the `Registration` is effective. This is a read-only field assigned by the server.",
          format = "google-datetime",
          type = "string",
        },
        feed = {
          ["$ref"] = "Feed",
          description = "Specification for the class of notifications that Classroom should deliver to the destination.",
        },
        registrationId = {
          description = "A server-generated unique identifier for this `Registration`. Read-only.",
          type = "string",
        },
      },
      type = "object",
    },
    ReturnStudentSubmissionRequest = {
      description = "Request to return a student submission.",
      id = "ReturnStudentSubmissionRequest",
      properties = {},
      type = "object",
    },
    SharedDriveFile = {
      description = "Drive file that is used as material for course work.",
      id = "SharedDriveFile",
      properties = {
        driveFile = {
          ["$ref"] = "DriveFile",
          description = "Drive file details.",
        },
        shareMode = {
          description = "Mechanism by which students access the Drive item.",
          enum = {
            "UNKNOWN_SHARE_MODE",
            "VIEW",
            "EDIT",
            "STUDENT_COPY",
          },
          enumDescriptions = {
            "No sharing mode specified. This should never be returned.",
            "Students can view the shared file.",
            "Students can edit the shared file.",
            "Students have a personal copy of the shared file.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    ShortAnswerSubmission = {
      description = "Student work for a short answer question.",
      id = "ShortAnswerSubmission",
      properties = {
        answer = {
          description = "Student response to a short-answer question.",
          type = "string",
        },
      },
      type = "object",
    },
    StateHistory = {
      description = "The history of each state this submission has been in.",
      id = "StateHistory",
      properties = {
        actorUserId = {
          description = "The teacher or student who made the change.",
          type = "string",
        },
        state = {
          description = "The workflow pipeline stage.",
          enum = {
            "STATE_UNSPECIFIED",
            "CREATED",
            "TURNED_IN",
            "RETURNED",
            "RECLAIMED_BY_STUDENT",
            "STUDENT_EDITED_AFTER_TURN_IN",
          },
          enumDescriptions = {
            "No state specified. This should never be returned.",
            "The Submission has been created.",
            "The student has turned in an assigned document, which may or may not be a template.",
            "The teacher has returned the assigned document to the student.",
            "The student turned in the assigned document, and then chose to \"unsubmit\" the assignment, giving the student control again as the owner.",
            "The student edited their submission after turning it in. Currently, only used by Questions, when the student edits their answer.",
          },
          type = "string",
        },
        stateTimestamp = {
          description = "When the submission entered this state.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    Student = {
      description = "Student in a course.",
      id = "Student",
      properties = {
        courseId = {
          description = "Identifier of the course. Read-only.",
          type = "string",
        },
        profile = {
          ["$ref"] = "UserProfile",
          description = "Global user information for the student. Read-only.",
        },
        studentWorkFolder = {
          ["$ref"] = "DriveFolder",
          description = "Information about a Drive Folder for this student's work in this course. Only visible to the student and domain administrators. Read-only.",
        },
        userId = {
          description = "Identifier of the user. When specified as a parameter of a request, this identifier can be one of the following: * the numeric identifier for the user * the email address of the user * the string literal `\"me\"`, indicating the requesting user",
          type = "string",
        },
      },
      type = "object",
    },
    StudentSubmission = {
      description = "Student submission for course work. StudentSubmission items are generated when a CourseWork item is created. StudentSubmissions that have never been accessed (i.e. with `state` = NEW) may not have a creation time or update time.",
      id = "StudentSubmission",
      properties = {
        alternateLink = {
          description = "Absolute link to the submission in the Classroom web UI. Read-only.",
          type = "string",
        },
        assignedGrade = {
          description = "Optional grade. If unset, no grade was set. This value must be non-negative. Decimal (that is, non-integer) values are allowed, but are rounded to two decimal places. This may be modified only by course teachers.",
          format = "double",
          type = "number",
        },
        assignmentSubmission = {
          ["$ref"] = "AssignmentSubmission",
          description = "Submission content when course_work_type is ASSIGNMENT. Students can modify this content using ModifyAttachments.",
        },
        associatedWithDeveloper = {
          description = "Whether this student submission is associated with the Developer Console project making the request. See CreateCourseWork for more details. Read-only.",
          type = "boolean",
        },
        courseId = {
          description = "Identifier of the course. Read-only.",
          type = "string",
        },
        courseWorkId = {
          description = "Identifier for the course work this corresponds to. Read-only.",
          type = "string",
        },
        courseWorkType = {
          description = "Type of course work this submission is for. Read-only.",
          enum = {
            "COURSE_WORK_TYPE_UNSPECIFIED",
            "ASSIGNMENT",
            "SHORT_ANSWER_QUESTION",
            "MULTIPLE_CHOICE_QUESTION",
          },
          enumDescriptions = {
            "No work type specified. This is never returned.",
            "An assignment.",
            "A short answer question.",
            "A multiple-choice question.",
          },
          type = "string",
        },
        creationTime = {
          description = "Creation time of this submission. This may be unset if the student has not accessed this item. Read-only.",
          format = "google-datetime",
          type = "string",
        },
        draftGrade = {
          description = "Optional pending grade. If unset, no grade was set. This value must be non-negative. Decimal (that is, non-integer) values are allowed, but are rounded to two decimal places. This is only visible to and modifiable by course teachers.",
          format = "double",
          type = "number",
        },
        id = {
          description = "Classroom-assigned Identifier for the student submission. This is unique among submissions for the relevant course work. Read-only.",
          type = "string",
        },
        late = {
          description = "Whether this submission is late. Read-only.",
          type = "boolean",
        },
        multipleChoiceSubmission = {
          ["$ref"] = "MultipleChoiceSubmission",
          description = "Submission content when course_work_type is MULTIPLE_CHOICE_QUESTION.",
        },
        shortAnswerSubmission = {
          ["$ref"] = "ShortAnswerSubmission",
          description = "Submission content when course_work_type is SHORT_ANSWER_QUESTION.",
        },
        state = {
          description = "State of this submission. Read-only.",
          enum = {
            "SUBMISSION_STATE_UNSPECIFIED",
            "NEW",
            "CREATED",
            "TURNED_IN",
            "RETURNED",
            "RECLAIMED_BY_STUDENT",
          },
          enumDescriptions = {
            "No state specified. This should never be returned.",
            "The student has never accessed this submission. Attachments are not returned and timestamps is not set.",
            "Has been created.",
            "Has been turned in to the teacher.",
            "Has been returned to the student.",
            "Student chose to \"unsubmit\" the assignment.",
          },
          type = "string",
        },
        submissionHistory = {
          description = "The history of the submission (includes state and grade histories). Read-only.",
          items = {
            ["$ref"] = "SubmissionHistory",
          },
          type = "array",
        },
        updateTime = {
          description = "Last update time of this submission. This may be unset if the student has not accessed this item. Read-only.",
          format = "google-datetime",
          type = "string",
        },
        userId = {
          description = "Identifier for the student that owns this submission. Read-only.",
          type = "string",
        },
      },
      type = "object",
    },
    SubmissionHistory = {
      description = "The history of the submission. This currently includes state and grade histories.",
      id = "SubmissionHistory",
      properties = {
        gradeHistory = {
          ["$ref"] = "GradeHistory",
          description = "The grade history information of the submission, if present.",
        },
        stateHistory = {
          ["$ref"] = "StateHistory",
          description = "The state history information of the submission, if present.",
        },
      },
      type = "object",
    },
    Teacher = {
      description = "Teacher of a course.",
      id = "Teacher",
      properties = {
        courseId = {
          description = "Identifier of the course. Read-only.",
          type = "string",
        },
        profile = {
          ["$ref"] = "UserProfile",
          description = "Global user information for the teacher. Read-only.",
        },
        userId = {
          description = "Identifier of the user. When specified as a parameter of a request, this identifier can be one of the following: * the numeric identifier for the user * the email address of the user * the string literal `\"me\"`, indicating the requesting user",
          type = "string",
        },
      },
      type = "object",
    },
    TimeOfDay = {
      description = "Represents a time of day. The date and time zone are either not significant or are specified elsewhere. An API may choose to allow leap seconds. Related types are google.type.Date and `google.protobuf.Timestamp`.",
      id = "TimeOfDay",
      properties = {
        hours = {
          description = "Hours of day in 24 hour format. Should be from 0 to 23. An API may choose to allow the value \"24:00:00\" for scenarios like business closing time.",
          format = "int32",
          type = "integer",
        },
        minutes = {
          description = "Minutes of hour of day. Must be from 0 to 59.",
          format = "int32",
          type = "integer",
        },
        nanos = {
          description = "Fractions of seconds in nanoseconds. Must be from 0 to 999,999,999.",
          format = "int32",
          type = "integer",
        },
        seconds = {
          description = "Seconds of minutes of the time. Must normally be from 0 to 59. An API may allow the value 60 if it allows leap-seconds.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    Topic = {
      description = "Topic created by a teacher for the course",
      id = "Topic",
      properties = {
        courseId = {
          description = "Identifier of the course. Read-only.",
          type = "string",
        },
        name = {
          description = "The name of the topic, generated by the user. Leading and trailing whitespaces, if any, are trimmed. Also, multiple consecutive whitespaces are collapsed into one inside the name. The result must be a non-empty string. Topic names are case sensitive, and must be no longer than 100 characters.",
          type = "string",
        },
        topicId = {
          description = "Unique identifier for the topic. Read-only.",
          type = "string",
        },
        updateTime = {
          description = "The time the topic was last updated by the system. Read-only.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    TurnInStudentSubmissionRequest = {
      description = "Request to turn in a student submission.",
      id = "TurnInStudentSubmissionRequest",
      properties = {},
      type = "object",
    },
    UserProfile = {
      description = "Global information for a user.",
      id = "UserProfile",
      properties = {
        emailAddress = {
          description = "Email address of the user. Read-only.",
          type = "string",
        },
        id = {
          description = "Identifier of the user. Read-only.",
          type = "string",
        },
        name = {
          ["$ref"] = "Name",
          description = "Name of the user. Read-only.",
        },
        permissions = {
          description = "Global permissions of the user. Read-only.",
          items = {
            ["$ref"] = "GlobalPermission",
          },
          type = "array",
        },
        photoUrl = {
          description = "URL of user's profile photo. Read-only.",
          type = "string",
        },
        verifiedTeacher = {
          description = "Represents whether a G Suite for Education user's domain administrator has explicitly verified them as being a teacher. If the user is not a member of a G Suite for Education domain, than this field is always false. Read-only",
          type = "boolean",
        },
      },
      type = "object",
    },
    YouTubeVideo = {
      description = "YouTube video item.",
      id = "YouTubeVideo",
      properties = {
        alternateLink = {
          description = "URL that can be used to view the YouTube video. Read-only.",
          type = "string",
        },
        id = {
          description = "YouTube API resource ID.",
          type = "string",
        },
        thumbnailUrl = {
          description = "URL of a thumbnail image of the YouTube video. Read-only.",
          type = "string",
        },
        title = {
          description = "Title of the YouTube video. Read-only.",
          type = "string",
        },
      },
      type = "object",
    },
  },
  servicePath = "",
  title = "Google Classroom API",
  version = "v1",
}
