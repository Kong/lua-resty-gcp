return {
  auth = {
    oauth2 = {
      scopes = {
        ["https://www.googleapis.com/auth/drive.appdata"] = {
          description = "See, create, and delete its own configuration data in your Google Drive",
        },
        ["https://www.googleapis.com/auth/games"] = {
          description = "Create, edit, and delete your Google Play Games activity",
        },
      },
    },
  },
  basePath = "",
  baseUrl = "https://games.googleapis.com/",
  batchPath = "batch",
  canonicalName = "Games",
  description = "The Google Play games service allows developers to enhance games with social leaderboards, achievements, game state, sign-in with Google, and more.",
  discoveryVersion = "v1",
  documentationLink = "https://developers.google.com/games/",
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "games:v1",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://games.mtls.googleapis.com/",
  name = "games",
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
    achievementDefinitions = {
      methods = {
        list = {
          description = "Lists all the achievement definitions for your application.",
          flatPath = "games/v1/achievements",
          httpMethod = "GET",
          id = "games.achievementDefinitions.list",
          parameterOrder = {},
          parameters = {
            language = {
              description = "The preferred language to use for strings returned by this method.",
              location = "query",
              type = "string",
            },
            maxResults = {
              description = "The maximum number of achievement resources to return in the response, used for paging. For any response, the actual number of achievement resources returned may be less than the specified `maxResults`.",
              format = "int32",
              location = "query",
              type = "integer",
            },
            pageToken = {
              description = "The token returned by the previous request.",
              location = "query",
              type = "string",
            },
          },
          path = "games/v1/achievements",
          response = {
            ["$ref"] = "AchievementDefinitionsListResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/games",
          },
        },
      },
    },
    achievements = {
      methods = {
        increment = {
          description = "Increments the steps of the achievement with the given ID for the currently authenticated player.",
          flatPath = "games/v1/achievements/{achievementId}/increment",
          httpMethod = "POST",
          id = "games.achievements.increment",
          parameterOrder = {
            "achievementId",
            "stepsToIncrement",
          },
          parameters = {
            achievementId = {
              description = "The ID of the achievement used by this method.",
              location = "path",
              required = true,
              type = "string",
            },
            requestId = {
              description = "A randomly generated numeric ID for each request specified by the caller. This number is used at the server to ensure that the request is handled correctly across retries.",
              format = "int64",
              location = "query",
              type = "string",
            },
            stepsToIncrement = {
              description = "The number of steps to increment.",
              format = "int32",
              location = "query",
              required = true,
              type = "integer",
            },
          },
          path = "games/v1/achievements/{achievementId}/increment",
          response = {
            ["$ref"] = "AchievementIncrementResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/games",
          },
        },
        list = {
          description = "Lists the progress for all your application's achievements for the currently authenticated player.",
          flatPath = "games/v1/players/{playerId}/achievements",
          httpMethod = "GET",
          id = "games.achievements.list",
          parameterOrder = {
            "playerId",
          },
          parameters = {
            language = {
              description = "The preferred language to use for strings returned by this method.",
              location = "query",
              type = "string",
            },
            maxResults = {
              description = "The maximum number of achievement resources to return in the response, used for paging. For any response, the actual number of achievement resources returned may be less than the specified `maxResults`.",
              format = "int32",
              location = "query",
              type = "integer",
            },
            pageToken = {
              description = "The token returned by the previous request.",
              location = "query",
              type = "string",
            },
            playerId = {
              description = "A player ID. A value of `me` may be used in place of the authenticated player's ID.",
              location = "path",
              required = true,
              type = "string",
            },
            state = {
              description = "Tells the server to return only achievements with the specified state. If this parameter isn't specified, all achievements are returned.",
              enum = {
                "ALL",
                "HIDDEN",
                "REVEALED",
                "UNLOCKED",
              },
              enumDescriptions = {
                "List all achievements. This is the default.",
                "List only hidden achievements.",
                "List only revealed achievements.",
                "List only unlocked achievements.",
              },
              location = "query",
              type = "string",
            },
          },
          path = "games/v1/players/{playerId}/achievements",
          response = {
            ["$ref"] = "PlayerAchievementListResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/games",
          },
        },
        reveal = {
          description = "Sets the state of the achievement with the given ID to `REVEALED` for the currently authenticated player.",
          flatPath = "games/v1/achievements/{achievementId}/reveal",
          httpMethod = "POST",
          id = "games.achievements.reveal",
          parameterOrder = {
            "achievementId",
          },
          parameters = {
            achievementId = {
              description = "The ID of the achievement used by this method.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "games/v1/achievements/{achievementId}/reveal",
          response = {
            ["$ref"] = "AchievementRevealResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/games",
          },
        },
        setStepsAtLeast = {
          description = "Sets the steps for the currently authenticated player towards unlocking an achievement. If the steps parameter is less than the current number of steps that the player already gained for the achievement, the achievement is not modified.",
          flatPath = "games/v1/achievements/{achievementId}/setStepsAtLeast",
          httpMethod = "POST",
          id = "games.achievements.setStepsAtLeast",
          parameterOrder = {
            "achievementId",
            "steps",
          },
          parameters = {
            achievementId = {
              description = "The ID of the achievement used by this method.",
              location = "path",
              required = true,
              type = "string",
            },
            steps = {
              description = "The minimum value to set the steps to.",
              format = "int32",
              location = "query",
              required = true,
              type = "integer",
            },
          },
          path = "games/v1/achievements/{achievementId}/setStepsAtLeast",
          response = {
            ["$ref"] = "AchievementSetStepsAtLeastResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/games",
          },
        },
        unlock = {
          description = "Unlocks this achievement for the currently authenticated player.",
          flatPath = "games/v1/achievements/{achievementId}/unlock",
          httpMethod = "POST",
          id = "games.achievements.unlock",
          parameterOrder = {
            "achievementId",
          },
          parameters = {
            achievementId = {
              description = "The ID of the achievement used by this method.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "games/v1/achievements/{achievementId}/unlock",
          response = {
            ["$ref"] = "AchievementUnlockResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/games",
          },
        },
        updateMultiple = {
          description = "Updates multiple achievements for the currently authenticated player.",
          flatPath = "games/v1/achievements/updateMultiple",
          httpMethod = "POST",
          id = "games.achievements.updateMultiple",
          parameterOrder = {},
          parameters = {},
          path = "games/v1/achievements/updateMultiple",
          request = {
            ["$ref"] = "AchievementUpdateMultipleRequest",
          },
          response = {
            ["$ref"] = "AchievementUpdateMultipleResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/games",
          },
        },
      },
    },
    applications = {
      methods = {
        get = {
          description = "Retrieves the metadata of the application with the given ID. If the requested application is not available for the specified `platformType`, the returned response will not include any instance data.",
          flatPath = "games/v1/applications/{applicationId}",
          httpMethod = "GET",
          id = "games.applications.get",
          parameterOrder = {
            "applicationId",
          },
          parameters = {
            applicationId = {
              description = "The application ID from the Google Play developer console.",
              location = "path",
              required = true,
              type = "string",
            },
            language = {
              description = "The preferred language to use for strings returned by this method.",
              location = "query",
              type = "string",
            },
            platformType = {
              description = "Restrict application details returned to the specific platform.",
              enum = {
                "PLATFORM_TYPE_UNSPECIFIED",
                "ANDROID",
                "IOS",
                "WEB_APP",
              },
              enumDescriptions = {
                "Default value, don't use.",
                "Retrieve applications that can be played on Android.",
                "Retrieve applications that can be played on iOS.",
                "Retrieve applications that can be played on desktop web.",
              },
              location = "query",
              type = "string",
            },
          },
          path = "games/v1/applications/{applicationId}",
          response = {
            ["$ref"] = "Application",
          },
          scopes = {
            "https://www.googleapis.com/auth/games",
          },
        },
        getEndPoint = {
          description = "Returns a URL for the requested end point type.",
          flatPath = "games/v1/applications/getEndPoint",
          httpMethod = "POST",
          id = "games.applications.getEndPoint",
          parameterOrder = {},
          parameters = {
            applicationId = {
              description = "The application ID from the Google Play developer console.",
              location = "query",
              type = "string",
            },
            endPointType = {
              description = "Type of endpoint being requested.",
              enum = {
                "END_POINT_TYPE_UNSPECIFIED",
                "PROFILE_CREATION",
                "PROFILE_SETTINGS",
              },
              enumDescriptions = {
                "Default value. This value is unused.",
                "Request a URL to create a new profile.",
                "Request a URL for the Settings view.",
              },
              location = "query",
              type = "string",
            },
          },
          path = "games/v1/applications/getEndPoint",
          response = {
            ["$ref"] = "EndPoint",
          },
          scopes = {
            "https://www.googleapis.com/auth/games",
          },
        },
        played = {
          description = "Indicate that the currently authenticated user is playing your application.",
          flatPath = "games/v1/applications/played",
          httpMethod = "POST",
          id = "games.applications.played",
          parameterOrder = {},
          parameters = {},
          path = "games/v1/applications/played",
          scopes = {
            "https://www.googleapis.com/auth/games",
          },
        },
        verify = {
          description = "Verifies the auth token provided with this request is for the application with the specified ID, and returns the ID of the player it was granted for.",
          flatPath = "games/v1/applications/{applicationId}/verify",
          httpMethod = "GET",
          id = "games.applications.verify",
          parameterOrder = {
            "applicationId",
          },
          parameters = {
            applicationId = {
              description = "The application ID from the Google Play developer console.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "games/v1/applications/{applicationId}/verify",
          response = {
            ["$ref"] = "ApplicationVerifyResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/games",
          },
        },
      },
    },
    events = {
      methods = {
        listByPlayer = {
          description = "Returns a list showing the current progress on events in this application for the currently authenticated user.",
          flatPath = "games/v1/events",
          httpMethod = "GET",
          id = "games.events.listByPlayer",
          parameterOrder = {},
          parameters = {
            language = {
              description = "The preferred language to use for strings returned by this method.",
              location = "query",
              type = "string",
            },
            maxResults = {
              description = "The maximum number of events to return in the response, used for paging. For any response, the actual number of events to return may be less than the specified maxResults.",
              format = "int32",
              location = "query",
              type = "integer",
            },
            pageToken = {
              description = "The token returned by the previous request.",
              location = "query",
              type = "string",
            },
          },
          path = "games/v1/events",
          response = {
            ["$ref"] = "PlayerEventListResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/games",
          },
        },
        listDefinitions = {
          description = "Returns a list of the event definitions in this application.",
          flatPath = "games/v1/eventDefinitions",
          httpMethod = "GET",
          id = "games.events.listDefinitions",
          parameterOrder = {},
          parameters = {
            language = {
              description = "The preferred language to use for strings returned by this method.",
              location = "query",
              type = "string",
            },
            maxResults = {
              description = "The maximum number of event definitions to return in the response, used for paging. For any response, the actual number of event definitions to return may be less than the specified `maxResults`.",
              format = "int32",
              location = "query",
              type = "integer",
            },
            pageToken = {
              description = "The token returned by the previous request.",
              location = "query",
              type = "string",
            },
          },
          path = "games/v1/eventDefinitions",
          response = {
            ["$ref"] = "EventDefinitionListResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/games",
          },
        },
        record = {
          description = "Records a batch of changes to the number of times events have occurred for the currently authenticated user of this application.",
          flatPath = "games/v1/events",
          httpMethod = "POST",
          id = "games.events.record",
          parameterOrder = {},
          parameters = {
            language = {
              description = "The preferred language to use for strings returned by this method.",
              location = "query",
              type = "string",
            },
          },
          path = "games/v1/events",
          request = {
            ["$ref"] = "EventRecordRequest",
          },
          response = {
            ["$ref"] = "EventUpdateResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/games",
          },
        },
      },
    },
    leaderboards = {
      methods = {
        get = {
          description = "Retrieves the metadata of the leaderboard with the given ID.",
          flatPath = "games/v1/leaderboards/{leaderboardId}",
          httpMethod = "GET",
          id = "games.leaderboards.get",
          parameterOrder = {
            "leaderboardId",
          },
          parameters = {
            language = {
              description = "The preferred language to use for strings returned by this method.",
              location = "query",
              type = "string",
            },
            leaderboardId = {
              description = "The ID of the leaderboard.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "games/v1/leaderboards/{leaderboardId}",
          response = {
            ["$ref"] = "Leaderboard",
          },
          scopes = {
            "https://www.googleapis.com/auth/games",
          },
        },
        list = {
          description = "Lists all the leaderboard metadata for your application.",
          flatPath = "games/v1/leaderboards",
          httpMethod = "GET",
          id = "games.leaderboards.list",
          parameterOrder = {},
          parameters = {
            language = {
              description = "The preferred language to use for strings returned by this method.",
              location = "query",
              type = "string",
            },
            maxResults = {
              description = "The maximum number of leaderboards to return in the response. For any response, the actual number of leaderboards returned may be less than the specified `maxResults`.",
              format = "int32",
              location = "query",
              type = "integer",
            },
            pageToken = {
              description = "The token returned by the previous request.",
              location = "query",
              type = "string",
            },
          },
          path = "games/v1/leaderboards",
          response = {
            ["$ref"] = "LeaderboardListResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/games",
          },
        },
      },
    },
    metagame = {
      methods = {
        getMetagameConfig = {
          description = "Return the metagame configuration data for the calling application.",
          flatPath = "games/v1/metagameConfig",
          httpMethod = "GET",
          id = "games.metagame.getMetagameConfig",
          parameterOrder = {},
          parameters = {},
          path = "games/v1/metagameConfig",
          response = {
            ["$ref"] = "MetagameConfig",
          },
          scopes = {
            "https://www.googleapis.com/auth/games",
          },
        },
        listCategoriesByPlayer = {
          description = "List play data aggregated per category for the player corresponding to `playerId`.",
          flatPath = "games/v1/players/{playerId}/categories/{collection}",
          httpMethod = "GET",
          id = "games.metagame.listCategoriesByPlayer",
          parameterOrder = {
            "playerId",
            "collection",
          },
          parameters = {
            collection = {
              description = "The collection of categories for which data will be returned.",
              enum = {
                "COLLECTION_UNSPECIFIED",
                "ALL",
              },
              enumDescriptions = {
                "Default value. This value is unused.",
                "Retrieve data for all categories. This is the default.",
              },
              location = "path",
              required = true,
              type = "string",
            },
            language = {
              description = "The preferred language to use for strings returned by this method.",
              location = "query",
              type = "string",
            },
            maxResults = {
              description = "The maximum number of category resources to return in the response, used for paging. For any response, the actual number of category resources returned may be less than the specified `maxResults`.",
              format = "int32",
              location = "query",
              type = "integer",
            },
            pageToken = {
              description = "The token returned by the previous request.",
              location = "query",
              type = "string",
            },
            playerId = {
              description = "A player ID. A value of `me` may be used in place of the authenticated player's ID.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "games/v1/players/{playerId}/categories/{collection}",
          response = {
            ["$ref"] = "CategoryListResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/games",
          },
        },
      },
    },
    players = {
      methods = {
        get = {
          description = "Retrieves the Player resource with the given ID. To retrieve the player for the currently authenticated user, set `playerId` to `me`.",
          flatPath = "games/v1/players/{playerId}",
          httpMethod = "GET",
          id = "games.players.get",
          parameterOrder = {
            "playerId",
          },
          parameters = {
            language = {
              description = "The preferred language to use for strings returned by this method.",
              location = "query",
              type = "string",
            },
            playerId = {
              description = "A player ID. A value of `me` may be used in place of the authenticated player's ID.",
              location = "path",
              required = true,
              type = "string",
            },
            playerIdConsistencyToken = {
              description = "Consistency token of the player id. The call returns a 'not found' result when the token is present and invalid. Empty value is ignored. See also GlobalPlayerIdConsistencyTokenProto",
              location = "query",
              type = "string",
            },
          },
          path = "games/v1/players/{playerId}",
          response = {
            ["$ref"] = "Player",
          },
          scopes = {
            "https://www.googleapis.com/auth/games",
          },
        },
        getScopedPlayerIds = {
          description = "Retrieves scoped player identifiers for currently authenticated user.",
          flatPath = "games/v1/players/me/scopedIds",
          httpMethod = "GET",
          id = "games.players.getScopedPlayerIds",
          parameterOrder = {},
          parameters = {},
          path = "games/v1/players/me/scopedIds",
          response = {
            ["$ref"] = "ScopedPlayerIds",
          },
          scopes = {
            "https://www.googleapis.com/auth/games",
          },
        },
        list = {
          description = "Get the collection of players for the currently authenticated user.",
          flatPath = "games/v1/players/me/players/{collection}",
          httpMethod = "GET",
          id = "games.players.list",
          parameterOrder = {
            "collection",
          },
          parameters = {
            collection = {
              description = "Collection of players being retrieved",
              enum = {
                "CONNECTED",
                "VISIBLE",
                "FRIENDS_ALL",
              },
              enumDescriptions = {
                "Retrieve a list of players that are also playing this game in reverse chronological order.",
                "Retrieve a list of players in the user's social graph that are visible to this game.",
                "Retrieve a list of players who are friends of the user in alphabetical order.",
              },
              location = "path",
              required = true,
              type = "string",
            },
            language = {
              description = "The preferred language to use for strings returned by this method.",
              location = "query",
              type = "string",
            },
            maxResults = {
              description = "The maximum number of player resources to return in the response, used for paging. For any response, the actual number of player resources returned may be less than the specified `maxResults`.",
              format = "int32",
              location = "query",
              type = "integer",
            },
            pageToken = {
              description = "The token returned by the previous request.",
              location = "query",
              type = "string",
            },
          },
          path = "games/v1/players/me/players/{collection}",
          response = {
            ["$ref"] = "PlayerListResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/games",
          },
        },
      },
    },
    revisions = {
      methods = {
        check = {
          description = "Checks whether the games client is out of date.",
          flatPath = "games/v1/revisions/check",
          httpMethod = "GET",
          id = "games.revisions.check",
          parameterOrder = {
            "clientRevision",
          },
          parameters = {
            clientRevision = {
              description = "The revision of the client SDK used by your application. Format: `[PLATFORM_TYPE]:[VERSION_NUMBER]`. Possible values of `PLATFORM_TYPE` are: * `ANDROID` - Client is running the Android SDK. * `IOS` - Client is running the iOS SDK. * `WEB_APP` - Client is running as a Web App.",
              location = "query",
              required = true,
              type = "string",
            },
          },
          path = "games/v1/revisions/check",
          response = {
            ["$ref"] = "RevisionCheckResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/games",
          },
        },
      },
    },
    scores = {
      methods = {
        get = {
          description = "Get high scores, and optionally ranks, in leaderboards for the currently authenticated player. For a specific time span, `leaderboardId` can be set to `ALL` to retrieve data for all leaderboards in a given time span. `NOTE: You cannot ask for 'ALL' leaderboards and 'ALL' timeSpans in the same request; only one parameter may be set to 'ALL'.",
          flatPath = "games/v1/players/{playerId}/leaderboards/{leaderboardId}/scores/{timeSpan}",
          httpMethod = "GET",
          id = "games.scores.get",
          parameterOrder = {
            "playerId",
            "leaderboardId",
            "timeSpan",
          },
          parameters = {
            includeRankType = {
              description = "The types of ranks to return. If the parameter is omitted, no ranks will be returned.",
              enum = {
                "INCLUDE_RANK_TYPE_UNSPECIFIED",
                "ALL",
                "PUBLIC",
                "SOCIAL",
                "FRIENDS",
              },
              enumDescriptions = {
                "Default value. Should be unused.",
                "Retrieve all supported ranks. In HTTP, this parameter value can also be specified as `ALL`.",
                "Retrieve public ranks, if the player is sharing their gameplay activity publicly.",
                "(Obsolete) Retrieve the social rank.",
                "Retrieve the rank on the friends collection.",
              },
              location = "query",
              type = "string",
            },
            language = {
              description = "The preferred language to use for strings returned by this method.",
              location = "query",
              type = "string",
            },
            leaderboardId = {
              description = "The ID of the leaderboard. Can be set to 'ALL' to retrieve data for all leaderboards for this application.",
              location = "path",
              required = true,
              type = "string",
            },
            maxResults = {
              description = "The maximum number of leaderboard scores to return in the response. For any response, the actual number of leaderboard scores returned may be less than the specified `maxResults`.",
              format = "int32",
              location = "query",
              type = "integer",
            },
            pageToken = {
              description = "The token returned by the previous request.",
              location = "query",
              type = "string",
            },
            playerId = {
              description = "A player ID. A value of `me` may be used in place of the authenticated player's ID.",
              location = "path",
              required = true,
              type = "string",
            },
            timeSpan = {
              description = "The time span for the scores and ranks you're requesting.",
              enum = {
                "SCORE_TIME_SPAN_UNSPECIFIED",
                "ALL",
                "ALL_TIME",
                "WEEKLY",
                "DAILY",
              },
              enumDescriptions = {
                "Default value. This value is unused.",
                "Get the high scores for all time spans. If this is used, maxResults values will be ignored.",
                "Get the all time high score.",
                "List the top scores for the current day.",
                "List the top scores for the current week.",
              },
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "games/v1/players/{playerId}/leaderboards/{leaderboardId}/scores/{timeSpan}",
          response = {
            ["$ref"] = "PlayerLeaderboardScoreListResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/games",
          },
        },
        list = {
          description = "Lists the scores in a leaderboard, starting from the top.",
          flatPath = "games/v1/leaderboards/{leaderboardId}/scores/{collection}",
          httpMethod = "GET",
          id = "games.scores.list",
          parameterOrder = {
            "leaderboardId",
            "collection",
            "timeSpan",
          },
          parameters = {
            collection = {
              description = "The collection of scores you're requesting.",
              enum = {
                "SCORE_COLLECTION_UNSPECIFIED",
                "PUBLIC",
                "SOCIAL",
                "FRIENDS",
              },
              enumDescriptions = {
                "Default value. This value is unused.",
                "List all scores in the public leaderboard.",
                "(Obsolete) Legacy G+ social scores.",
                "List only scores of friends.",
              },
              location = "path",
              required = true,
              type = "string",
            },
            language = {
              description = "The preferred language to use for strings returned by this method.",
              location = "query",
              type = "string",
            },
            leaderboardId = {
              description = "The ID of the leaderboard.",
              location = "path",
              required = true,
              type = "string",
            },
            maxResults = {
              description = "The maximum number of leaderboard scores to return in the response. For any response, the actual number of leaderboard scores returned may be less than the specified `maxResults`.",
              format = "int32",
              location = "query",
              type = "integer",
            },
            pageToken = {
              description = "The token returned by the previous request.",
              location = "query",
              type = "string",
            },
            timeSpan = {
              description = "The time span for the scores and ranks you're requesting.",
              enum = {
                "SCORE_TIME_SPAN_UNSPECIFIED",
                "ALL_TIME",
                "WEEKLY",
                "DAILY",
              },
              enumDescriptions = {
                "Default value. This value is unused.",
                "The score is an all-time score.",
                "The score is a weekly score.",
                "The score is a daily score.",
              },
              location = "query",
              required = true,
              type = "string",
            },
          },
          path = "games/v1/leaderboards/{leaderboardId}/scores/{collection}",
          response = {
            ["$ref"] = "LeaderboardScores",
          },
          scopes = {
            "https://www.googleapis.com/auth/games",
          },
        },
        listWindow = {
          description = "Lists the scores in a leaderboard around (and including) a player's score.",
          flatPath = "games/v1/leaderboards/{leaderboardId}/window/{collection}",
          httpMethod = "GET",
          id = "games.scores.listWindow",
          parameterOrder = {
            "leaderboardId",
            "collection",
            "timeSpan",
          },
          parameters = {
            collection = {
              description = "The collection of scores you're requesting.",
              enum = {
                "SCORE_COLLECTION_UNSPECIFIED",
                "PUBLIC",
                "SOCIAL",
                "FRIENDS",
              },
              enumDescriptions = {
                "Default value. This value is unused.",
                "List all scores in the public leaderboard.",
                "(Obsolete) Legacy G+ social scores.",
                "List only scores of friends.",
              },
              location = "path",
              required = true,
              type = "string",
            },
            language = {
              description = "The preferred language to use for strings returned by this method.",
              location = "query",
              type = "string",
            },
            leaderboardId = {
              description = "The ID of the leaderboard.",
              location = "path",
              required = true,
              type = "string",
            },
            maxResults = {
              description = "The maximum number of leaderboard scores to return in the response. For any response, the actual number of leaderboard scores returned may be less than the specified `maxResults`.",
              format = "int32",
              location = "query",
              type = "integer",
            },
            pageToken = {
              description = "The token returned by the previous request.",
              location = "query",
              type = "string",
            },
            resultsAbove = {
              description = "The preferred number of scores to return above the player's score. More scores may be returned if the player is at the bottom of the leaderboard; fewer may be returned if the player is at the top. Must be less than or equal to maxResults.",
              format = "int32",
              location = "query",
              type = "integer",
            },
            returnTopIfAbsent = {
              description = "True if the top scores should be returned when the player is not in the leaderboard. Defaults to true.",
              location = "query",
              type = "boolean",
            },
            timeSpan = {
              description = "The time span for the scores and ranks you're requesting.",
              enum = {
                "SCORE_TIME_SPAN_UNSPECIFIED",
                "ALL_TIME",
                "WEEKLY",
                "DAILY",
              },
              enumDescriptions = {
                "Default value. This value is unused.",
                "The score is an all-time score.",
                "The score is a weekly score.",
                "The score is a daily score.",
              },
              location = "query",
              required = true,
              type = "string",
            },
          },
          path = "games/v1/leaderboards/{leaderboardId}/window/{collection}",
          response = {
            ["$ref"] = "LeaderboardScores",
          },
          scopes = {
            "https://www.googleapis.com/auth/games",
          },
        },
        submit = {
          description = "Submits a score to the specified leaderboard.",
          flatPath = "games/v1/leaderboards/{leaderboardId}/scores",
          httpMethod = "POST",
          id = "games.scores.submit",
          parameterOrder = {
            "leaderboardId",
            "score",
          },
          parameters = {
            language = {
              description = "The preferred language to use for strings returned by this method.",
              location = "query",
              type = "string",
            },
            leaderboardId = {
              description = "The ID of the leaderboard.",
              location = "path",
              required = true,
              type = "string",
            },
            score = {
              description = "The score you're submitting. The submitted score is ignored if it is worse than a previously submitted score, where worse depends on the leaderboard sort order. The meaning of the score value depends on the leaderboard format type. For fixed-point, the score represents the raw value. For time, the score represents elapsed time in milliseconds. For currency, the score represents a value in micro units.",
              format = "int64",
              location = "query",
              required = true,
              type = "string",
            },
            scoreTag = {
              description = "Additional information about the score you're submitting. Values must contain no more than 64 URI-safe characters as defined by section 2.3 of RFC 3986.",
              location = "query",
              pattern = "[a-zA-Z0-9-._~]{0,64}",
              type = "string",
            },
          },
          path = "games/v1/leaderboards/{leaderboardId}/scores",
          response = {
            ["$ref"] = "PlayerScoreResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/games",
          },
        },
        submitMultiple = {
          description = "Submits multiple scores to leaderboards.",
          flatPath = "games/v1/leaderboards/scores",
          httpMethod = "POST",
          id = "games.scores.submitMultiple",
          parameterOrder = {},
          parameters = {
            language = {
              description = "The preferred language to use for strings returned by this method.",
              location = "query",
              type = "string",
            },
          },
          path = "games/v1/leaderboards/scores",
          request = {
            ["$ref"] = "PlayerScoreSubmissionList",
          },
          response = {
            ["$ref"] = "PlayerScoreListResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/games",
          },
        },
      },
    },
    snapshots = {
      methods = {
        get = {
          description = "Retrieves the metadata for a given snapshot ID.",
          flatPath = "games/v1/snapshots/{snapshotId}",
          httpMethod = "GET",
          id = "games.snapshots.get",
          parameterOrder = {
            "snapshotId",
          },
          parameters = {
            language = {
              description = "The preferred language to use for strings returned by this method.",
              location = "query",
              type = "string",
            },
            snapshotId = {
              description = "The ID of the snapshot.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "games/v1/snapshots/{snapshotId}",
          response = {
            ["$ref"] = "Snapshot",
          },
          scopes = {
            "https://www.googleapis.com/auth/drive.appdata",
            "https://www.googleapis.com/auth/games",
          },
        },
        list = {
          description = "Retrieves a list of snapshots created by your application for the player corresponding to the player ID.",
          flatPath = "games/v1/players/{playerId}/snapshots",
          httpMethod = "GET",
          id = "games.snapshots.list",
          parameterOrder = {
            "playerId",
          },
          parameters = {
            language = {
              description = "The preferred language to use for strings returned by this method.",
              location = "query",
              type = "string",
            },
            maxResults = {
              description = "The maximum number of snapshot resources to return in the response, used for paging. For any response, the actual number of snapshot resources returned may be less than the specified `maxResults`.",
              format = "int32",
              location = "query",
              type = "integer",
            },
            pageToken = {
              description = "The token returned by the previous request.",
              location = "query",
              type = "string",
            },
            playerId = {
              description = "A player ID. A value of `me` may be used in place of the authenticated player's ID.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "games/v1/players/{playerId}/snapshots",
          response = {
            ["$ref"] = "SnapshotListResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/drive.appdata",
            "https://www.googleapis.com/auth/games",
          },
        },
      },
    },
    stats = {
      methods = {
        get = {
          description = "Returns engagement and spend statistics in this application for the currently authenticated user.",
          flatPath = "games/v1/stats",
          httpMethod = "GET",
          id = "games.stats.get",
          parameterOrder = {},
          parameters = {},
          path = "games/v1/stats",
          response = {
            ["$ref"] = "StatsResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/games",
          },
        },
      },
    },
  },
  revision = "20230112",
  rootUrl = "https://games.googleapis.com/",
  schemas = {
    AchievementDefinition = {
      description = "An achievement definition object.",
      id = "AchievementDefinition",
      properties = {
        achievementType = {
          description = "The type of the achievement.",
          enum = {
            "ACHIEVEMENT_TYPE_UNSPECIFIED",
            "STANDARD",
            "INCREMENTAL",
          },
          enumDescriptions = {
            "Safe default, don't use.",
            "Achievement is either locked or unlocked.",
            "Achievement is incremental.",
          },
          type = "string",
        },
        description = {
          description = "The description of the achievement.",
          type = "string",
        },
        experiencePoints = {
          description = "Experience points which will be earned when unlocking this achievement.",
          format = "int64",
          type = "string",
        },
        formattedTotalSteps = {
          description = "The total steps for an incremental achievement as a string.",
          type = "string",
        },
        id = {
          description = "The ID of the achievement.",
          type = "string",
        },
        initialState = {
          description = "The initial state of the achievement.",
          enum = {
            "INITIAL_ACHIEVEMENT_STATE_UNSPECIFIED",
            "HIDDEN",
            "REVEALED",
            "UNLOCKED",
          },
          enumDescriptions = {
            "Safe default, don't use.",
            "Achievement is hidden.",
            "Achievement is revealed.",
            "Achievement is unlocked.",
          },
          type = "string",
        },
        isRevealedIconUrlDefault = {
          description = "Indicates whether the revealed icon image being returned is a default image, or is provided by the game.",
          type = "boolean",
        },
        isUnlockedIconUrlDefault = {
          description = "Indicates whether the unlocked icon image being returned is a default image, or is game-provided.",
          type = "boolean",
        },
        kind = {
          description = "Uniquely identifies the type of this resource. Value is always the fixed string `games#achievementDefinition`.",
          type = "string",
        },
        name = {
          description = "The name of the achievement.",
          type = "string",
        },
        revealedIconUrl = {
          description = "The image URL for the revealed achievement icon.",
          type = "string",
        },
        totalSteps = {
          description = "The total steps for an incremental achievement.",
          format = "int32",
          type = "integer",
        },
        unlockedIconUrl = {
          description = "The image URL for the unlocked achievement icon.",
          type = "string",
        },
      },
      type = "object",
    },
    AchievementDefinitionsListResponse = {
      description = "A list of achievement definition objects.",
      id = "AchievementDefinitionsListResponse",
      properties = {
        items = {
          description = "The achievement definitions.",
          items = {
            ["$ref"] = "AchievementDefinition",
          },
          type = "array",
        },
        kind = {
          description = "Uniquely identifies the type of this resource. Value is always the fixed string `games#achievementDefinitionsListResponse`.",
          type = "string",
        },
        nextPageToken = {
          description = "Token corresponding to the next page of results.",
          type = "string",
        },
      },
      type = "object",
    },
    AchievementIncrementResponse = {
      description = "An achievement increment response",
      id = "AchievementIncrementResponse",
      properties = {
        currentSteps = {
          description = "The current steps recorded for this incremental achievement.",
          format = "int32",
          type = "integer",
        },
        kind = {
          description = "Uniquely identifies the type of this resource. Value is always the fixed string `games#achievementIncrementResponse`.",
          type = "string",
        },
        newlyUnlocked = {
          description = "Whether the current steps for the achievement has reached the number of steps required to unlock.",
          type = "boolean",
        },
      },
      type = "object",
    },
    AchievementRevealResponse = {
      description = "An achievement reveal response",
      id = "AchievementRevealResponse",
      properties = {
        currentState = {
          description = "The current state of the achievement for which a reveal was attempted. This might be `UNLOCKED` if the achievement was already unlocked.",
          enum = {
            "REVEAL_ACHIEVEMENT_STATE_UNSPECIFIED",
            "REVEALED",
            "UNLOCKED",
          },
          enumDescriptions = {
            "Safe default, don't use.",
            "Achievement is revealed.",
            "Achievement is unlocked.",
          },
          type = "string",
        },
        kind = {
          description = "Uniquely identifies the type of this resource. Value is always the fixed string `games#achievementRevealResponse`.",
          type = "string",
        },
      },
      type = "object",
    },
    AchievementSetStepsAtLeastResponse = {
      description = "An achievement set steps at least response.",
      id = "AchievementSetStepsAtLeastResponse",
      properties = {
        currentSteps = {
          description = "The current steps recorded for this incremental achievement.",
          format = "int32",
          type = "integer",
        },
        kind = {
          description = "Uniquely identifies the type of this resource. Value is always the fixed string `games#achievementSetStepsAtLeastResponse`.",
          type = "string",
        },
        newlyUnlocked = {
          description = "Whether the current steps for the achievement has reached the number of steps required to unlock.",
          type = "boolean",
        },
      },
      type = "object",
    },
    AchievementUnlockResponse = {
      description = "An achievement unlock response",
      id = "AchievementUnlockResponse",
      properties = {
        kind = {
          description = "Uniquely identifies the type of this resource. Value is always the fixed string `games#achievementUnlockResponse`.",
          type = "string",
        },
        newlyUnlocked = {
          description = "Whether this achievement was newly unlocked (that is, whether the unlock request for the achievement was the first for the player).",
          type = "boolean",
        },
      },
      type = "object",
    },
    AchievementUpdateMultipleRequest = {
      description = "A list of achievement update requests.",
      id = "AchievementUpdateMultipleRequest",
      properties = {
        kind = {
          description = "Uniquely identifies the type of this resource. Value is always the fixed string `games#achievementUpdateMultipleRequest`.",
          type = "string",
        },
        updates = {
          description = "The individual achievement update requests.",
          items = {
            ["$ref"] = "AchievementUpdateRequest",
          },
          type = "array",
        },
      },
      type = "object",
    },
    AchievementUpdateMultipleResponse = {
      description = "Response message for UpdateMultipleAchievements rpc.",
      id = "AchievementUpdateMultipleResponse",
      properties = {
        kind = {
          description = "Uniquely identifies the type of this resource. Value is always the fixed string `games#achievementUpdateMultipleResponse`.",
          type = "string",
        },
        updatedAchievements = {
          description = "The updated state of the achievements.",
          items = {
            ["$ref"] = "AchievementUpdateResponse",
          },
          type = "array",
        },
      },
      type = "object",
    },
    AchievementUpdateRequest = {
      description = "A request to update an achievement.",
      id = "AchievementUpdateRequest",
      properties = {
        achievementId = {
          description = "The achievement this update is being applied to.",
          type = "string",
        },
        incrementPayload = {
          ["$ref"] = "GamesAchievementIncrement",
          description = "The payload if an update of type `INCREMENT` was requested for the achievement.",
        },
        kind = {
          description = "Uniquely identifies the type of this resource. Value is always the fixed string `games#achievementUpdateRequest`.",
          type = "string",
        },
        setStepsAtLeastPayload = {
          ["$ref"] = "GamesAchievementSetStepsAtLeast",
          description = "The payload if an update of type `SET_STEPS_AT_LEAST` was requested for the achievement.",
        },
        updateType = {
          description = "The type of update being applied.",
          enum = {
            "ACHIEVEMENT_UPDATE_TYPE_UNSPECIFIED",
            "REVEAL",
            "UNLOCK",
            "INCREMENT",
            "SET_STEPS_AT_LEAST",
          },
          enumDescriptions = {
            "Safe default, don't use.",
            "Achievement is revealed.",
            "Achievement is unlocked.",
            "Achievement is incremented.",
            "Achievement progress is set to at least the passed value.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    AchievementUpdateResponse = {
      description = "An updated achievement.",
      id = "AchievementUpdateResponse",
      properties = {
        achievementId = {
          description = "The achievement this update is was applied to.",
          type = "string",
        },
        currentState = {
          description = "The current state of the achievement.",
          enum = {
            "UPDATED_ACHIEVEMENT_STATE_UNSPECIFIED",
            "HIDDEN",
            "REVEALED",
            "UNLOCKED",
          },
          enumDescriptions = {
            "Safe default, don't use.",
            "Achievement is hidden.",
            "Achievement is revealed.",
            "Achievement is unlocked.",
          },
          type = "string",
        },
        currentSteps = {
          description = "The current steps recorded for this achievement if it is incremental.",
          format = "int32",
          type = "integer",
        },
        kind = {
          description = "Uniquely identifies the type of this resource. Value is always the fixed string `games#achievementUpdateResponse`.",
          type = "string",
        },
        newlyUnlocked = {
          description = "Whether this achievement was newly unlocked (that is, whether the unlock request for the achievement was the first for the player).",
          type = "boolean",
        },
        updateOccurred = {
          description = "Whether the requested updates actually affected the achievement.",
          type = "boolean",
        },
      },
      type = "object",
    },
    Application = {
      description = "The Application resource.",
      id = "Application",
      properties = {
        achievement_count = {
          description = "The number of achievements visible to the currently authenticated player.",
          format = "int32",
          type = "integer",
        },
        assets = {
          description = "The assets of the application.",
          items = {
            ["$ref"] = "ImageAsset",
          },
          type = "array",
        },
        author = {
          description = "The author of the application.",
          type = "string",
        },
        category = {
          ["$ref"] = "ApplicationCategory",
          description = "The category of the application.",
        },
        description = {
          description = "The description of the application.",
          type = "string",
        },
        enabledFeatures = {
          description = "A list of features that have been enabled for the application.",
          items = {
            enum = {
              "APPLICATION_FEATURE_UNSPECIFIED",
              "SNAPSHOTS",
            },
            enumDescriptions = {
              "Safe default, don't use.",
              "Saved Games (snapshots).",
            },
            type = "string",
          },
          type = "array",
        },
        id = {
          description = "The ID of the application.",
          type = "string",
        },
        instances = {
          description = "The instances of the application.",
          items = {
            ["$ref"] = "Instance",
          },
          type = "array",
        },
        kind = {
          description = "Uniquely identifies the type of this resource. Value is always the fixed string `games#application`.",
          type = "string",
        },
        lastUpdatedTimestamp = {
          description = "The last updated timestamp of the application.",
          format = "int64",
          type = "string",
        },
        leaderboard_count = {
          description = "The number of leaderboards visible to the currently authenticated player.",
          format = "int32",
          type = "integer",
        },
        name = {
          description = "The name of the application.",
          type = "string",
        },
        themeColor = {
          description = "A hint to the client UI for what color to use as an app-themed color. The color is given as an RGB triplet (e.g. \"E0E0E0\").",
          type = "string",
        },
      },
      type = "object",
    },
    ApplicationCategory = {
      description = "An application category object.",
      id = "ApplicationCategory",
      properties = {
        kind = {
          description = "Uniquely identifies the type of this resource. Value is always the fixed string `games#applicationCategory`.",
          type = "string",
        },
        primary = {
          description = "The primary category.",
          type = "string",
        },
        secondary = {
          description = "The secondary category.",
          type = "string",
        },
      },
      type = "object",
    },
    ApplicationVerifyResponse = {
      description = "A third party application verification response resource.",
      id = "ApplicationVerifyResponse",
      properties = {
        alternate_player_id = {
          description = "An alternate ID that was once used for the player that was issued the auth token used in this request. (This field is not normally populated.)",
          type = "string",
        },
        kind = {
          description = "Uniquely identifies the type of this resource. Value is always the fixed string `games#applicationVerifyResponse`.",
          type = "string",
        },
        player_id = {
          description = "The ID of the player that was issued the auth token used in this request.",
          type = "string",
        },
      },
      type = "object",
    },
    Category = {
      description = "Data related to individual game categories.",
      id = "Category",
      properties = {
        category = {
          description = "The category name.",
          type = "string",
        },
        experiencePoints = {
          description = "Experience points earned in this category.",
          format = "int64",
          type = "string",
        },
        kind = {
          description = "Uniquely identifies the type of this resource. Value is always the fixed string `games#category`.",
          type = "string",
        },
      },
      type = "object",
    },
    CategoryListResponse = {
      description = "A third party list metagame categories response.",
      id = "CategoryListResponse",
      properties = {
        items = {
          description = "The list of categories with usage data.",
          items = {
            ["$ref"] = "Category",
          },
          type = "array",
        },
        kind = {
          description = "Uniquely identifies the type of this resource. Value is always the fixed string `games#categoryListResponse`.",
          type = "string",
        },
        nextPageToken = {
          description = "Token corresponding to the next page of results.",
          type = "string",
        },
      },
      type = "object",
    },
    EndPoint = {
      description = "Container for a URL end point of the requested type.",
      id = "EndPoint",
      properties = {
        url = {
          description = "A URL suitable for loading in a web browser for the requested endpoint.",
          type = "string",
        },
      },
      type = "object",
    },
    EventBatchRecordFailure = {
      description = "A batch update failure resource.",
      id = "EventBatchRecordFailure",
      properties = {
        failureCause = {
          description = "The cause for the update failure.",
          enum = {
            "EVENT_FAILURE_CAUSE_UNSPECIFIED",
            "TOO_LARGE",
            "TIME_PERIOD_EXPIRED",
            "TIME_PERIOD_SHORT",
            "TIME_PERIOD_LONG",
            "ALREADY_UPDATED",
            "RECORD_RATE_HIGH",
          },
          enumDescriptions = {
            "Default value. Should not be used.",
            "A batch request was issued with more events than are allowed in a single batch.",
            "A batch was sent with data too far in the past to record.",
            "A batch was sent with a time range that was too short.",
            "A batch was sent with a time range that was too long.",
            "An attempt was made to record a batch of data which was already seen.",
            "An attempt was made to record data faster than the server will apply updates.",
          },
          type = "string",
        },
        kind = {
          description = "Uniquely identifies the type of this resource. Value is always the fixed string `games#eventBatchRecordFailure`.",
          type = "string",
        },
        range = {
          ["$ref"] = "EventPeriodRange",
          description = "The time range which was rejected; empty for a request-wide failure.",
        },
      },
      type = "object",
    },
    EventChild = {
      description = "An event child relationship resource.",
      id = "EventChild",
      properties = {
        childId = {
          description = "The ID of the child event.",
          type = "string",
        },
        kind = {
          description = "Uniquely identifies the type of this resource. Value is always the fixed string `games#eventChild`.",
          type = "string",
        },
      },
      type = "object",
    },
    EventDefinition = {
      description = "An event definition resource.",
      id = "EventDefinition",
      properties = {
        childEvents = {
          description = "A list of events that are a child of this event.",
          items = {
            ["$ref"] = "EventChild",
          },
          type = "array",
        },
        description = {
          description = "Description of what this event represents.",
          type = "string",
        },
        displayName = {
          description = "The name to display for the event.",
          type = "string",
        },
        id = {
          description = "The ID of the event.",
          type = "string",
        },
        imageUrl = {
          description = "The base URL for the image that represents the event.",
          type = "string",
        },
        isDefaultImageUrl = {
          description = "Indicates whether the icon image being returned is a default image, or is game-provided.",
          type = "boolean",
        },
        kind = {
          description = "Uniquely identifies the type of this resource. Value is always the fixed string `games#eventDefinition`.",
          type = "string",
        },
        visibility = {
          description = "The visibility of event being tracked in this definition.",
          enum = {
            "EVENT_VISIBILITY_UNSPECIFIED",
            "REVEALED",
            "HIDDEN",
          },
          enumDescriptions = {
            "Default value. Should not be used.",
            "This event should be visible to all users.",
            "This event should only be shown to users that have recorded this event at least once.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    EventDefinitionListResponse = {
      description = "A ListDefinitions response.",
      id = "EventDefinitionListResponse",
      properties = {
        items = {
          description = "The event definitions.",
          items = {
            ["$ref"] = "EventDefinition",
          },
          type = "array",
        },
        kind = {
          description = "Uniquely identifies the type of this resource. Value is always the fixed string `games#eventDefinitionListResponse`.",
          type = "string",
        },
        nextPageToken = {
          description = "The pagination token for the next page of results.",
          type = "string",
        },
      },
      type = "object",
    },
    EventPeriodRange = {
      description = "An event period time range.",
      id = "EventPeriodRange",
      properties = {
        kind = {
          description = "Uniquely identifies the type of this resource. Value is always the fixed string `games#eventPeriodRange`.",
          type = "string",
        },
        periodEndMillis = {
          description = "The time when this update period ends, in millis, since 1970 UTC (Unix Epoch).",
          format = "int64",
          type = "string",
        },
        periodStartMillis = {
          description = "The time when this update period begins, in millis, since 1970 UTC (Unix Epoch).",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    EventPeriodUpdate = {
      description = "An event period update resource.",
      id = "EventPeriodUpdate",
      properties = {
        kind = {
          description = "Uniquely identifies the type of this resource. Value is always the fixed string `games#eventPeriodUpdate`.",
          type = "string",
        },
        timePeriod = {
          ["$ref"] = "EventPeriodRange",
          description = "The time period being covered by this update.",
        },
        updates = {
          description = "The updates being made for this time period.",
          items = {
            ["$ref"] = "EventUpdateRequest",
          },
          type = "array",
        },
      },
      type = "object",
    },
    EventRecordFailure = {
      description = "An event update failure resource.",
      id = "EventRecordFailure",
      properties = {
        eventId = {
          description = "The ID of the event that was not updated.",
          type = "string",
        },
        failureCause = {
          description = "The cause for the update failure.",
          enum = {
            "EVENT_UPDATE_FAILURE_CAUSE_UNSPECIFIED",
            "NOT_FOUND",
            "INVALID_UPDATE_VALUE",
          },
          enumDescriptions = {
            "Default value. Should not use.",
            "An attempt was made to set an event that was not defined.",
            "An attempt was made to increment an event by a non-positive value.",
          },
          type = "string",
        },
        kind = {
          description = "Uniquely identifies the type of this resource. Value is always the fixed string `games#eventRecordFailure`.",
          type = "string",
        },
      },
      type = "object",
    },
    EventRecordRequest = {
      description = "An event period update resource.",
      id = "EventRecordRequest",
      properties = {
        currentTimeMillis = {
          description = "The current time when this update was sent, in milliseconds, since 1970 UTC (Unix Epoch).",
          format = "int64",
          type = "string",
        },
        kind = {
          description = "Uniquely identifies the type of this resource. Value is always the fixed string `games#eventRecordRequest`.",
          type = "string",
        },
        requestId = {
          description = "The request ID used to identify this attempt to record events.",
          format = "int64",
          type = "string",
        },
        timePeriods = {
          description = "A list of the time period updates being made in this request.",
          items = {
            ["$ref"] = "EventPeriodUpdate",
          },
          type = "array",
        },
      },
      type = "object",
    },
    EventUpdateRequest = {
      description = "An event period update resource.",
      id = "EventUpdateRequest",
      properties = {
        definitionId = {
          description = "The ID of the event being modified in this update.",
          type = "string",
        },
        kind = {
          description = "Uniquely identifies the type of this resource. Value is always the fixed string `games#eventUpdateRequest`.",
          type = "string",
        },
        updateCount = {
          description = "The number of times this event occurred in this time period.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    EventUpdateResponse = {
      description = "An event period update resource.",
      id = "EventUpdateResponse",
      properties = {
        batchFailures = {
          description = "Any batch-wide failures which occurred applying updates.",
          items = {
            ["$ref"] = "EventBatchRecordFailure",
          },
          type = "array",
        },
        eventFailures = {
          description = "Any failures updating a particular event.",
          items = {
            ["$ref"] = "EventRecordFailure",
          },
          type = "array",
        },
        kind = {
          description = "Uniquely identifies the type of this resource. Value is always the fixed string `games#eventUpdateResponse`.",
          type = "string",
        },
        playerEvents = {
          description = "The current status of any updated events",
          items = {
            ["$ref"] = "PlayerEvent",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GamesAchievementIncrement = {
      description = "The payload to request to increment an achievement.",
      id = "GamesAchievementIncrement",
      properties = {
        kind = {
          description = "Uniquely identifies the type of this resource. Value is always the fixed string `games#GamesAchievementIncrement`.",
          type = "string",
        },
        requestId = {
          description = "The requestId associated with an increment to an achievement.",
          format = "int64",
          type = "string",
        },
        steps = {
          description = "The number of steps to be incremented.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    GamesAchievementSetStepsAtLeast = {
      description = "The payload to request to increment an achievement.",
      id = "GamesAchievementSetStepsAtLeast",
      properties = {
        kind = {
          description = "Uniquely identifies the type of this resource. Value is always the fixed string `games#GamesAchievementSetStepsAtLeast`.",
          type = "string",
        },
        steps = {
          description = "The minimum number of steps for the achievement to be set to.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    ImageAsset = {
      description = "An image asset object.",
      id = "ImageAsset",
      properties = {
        height = {
          description = "The height of the asset.",
          format = "int32",
          type = "integer",
        },
        kind = {
          description = "Uniquely identifies the type of this resource. Value is always the fixed string `games#imageAsset`.",
          type = "string",
        },
        name = {
          description = "The name of the asset.",
          type = "string",
        },
        url = {
          description = "The URL of the asset.",
          type = "string",
        },
        width = {
          description = "The width of the asset.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    Instance = {
      description = "The Instance resource.",
      id = "Instance",
      properties = {
        acquisitionUri = {
          description = "URI which shows where a user can acquire this instance.",
          type = "string",
        },
        androidInstance = {
          ["$ref"] = "InstanceAndroidDetails",
          description = "Platform dependent details for Android.",
        },
        iosInstance = {
          ["$ref"] = "InstanceIosDetails",
          description = "Platform dependent details for iOS.",
        },
        kind = {
          description = "Uniquely identifies the type of this resource. Value is always the fixed string `games#instance`.",
          type = "string",
        },
        name = {
          description = "Localized display name.",
          type = "string",
        },
        platformType = {
          description = "The platform type.",
          enum = {
            "PLATFORM_TYPE_UNSPECIFIED",
            "ANDROID",
            "IOS",
            "WEB_APP",
          },
          enumDescriptions = {
            "Default value. Should be unused.",
            "Instance is for Android.",
            "Instance is for iOS.",
            "Instance is for Web App.",
          },
          type = "string",
        },
        realtimePlay = {
          description = "Flag to show if this game instance supports realtime play.",
          type = "boolean",
        },
        turnBasedPlay = {
          description = "Flag to show if this game instance supports turn based play.",
          type = "boolean",
        },
        webInstance = {
          ["$ref"] = "InstanceWebDetails",
          description = "Platform dependent details for Web.",
        },
      },
      type = "object",
    },
    InstanceAndroidDetails = {
      description = "The Android instance details resource.",
      id = "InstanceAndroidDetails",
      properties = {
        enablePiracyCheck = {
          description = "Flag indicating whether the anti-piracy check is enabled.",
          type = "boolean",
        },
        kind = {
          description = "Uniquely identifies the type of this resource. Value is always the fixed string `games#instanceAndroidDetails`.",
          type = "string",
        },
        packageName = {
          description = "Android package name which maps to Google Play URL.",
          type = "string",
        },
        preferred = {
          description = "Indicates that this instance is the default for new installations.",
          type = "boolean",
        },
      },
      type = "object",
    },
    InstanceIosDetails = {
      description = "The iOS details resource.",
      id = "InstanceIosDetails",
      properties = {
        bundleIdentifier = {
          description = "Bundle identifier.",
          type = "string",
        },
        itunesAppId = {
          description = "iTunes App ID.",
          type = "string",
        },
        kind = {
          description = "Uniquely identifies the type of this resource. Value is always the fixed string `games#instanceIosDetails`.",
          type = "string",
        },
        preferredForIpad = {
          description = "Indicates that this instance is the default for new installations on iPad devices.",
          type = "boolean",
        },
        preferredForIphone = {
          description = "Indicates that this instance is the default for new installations on iPhone devices.",
          type = "boolean",
        },
        supportIpad = {
          description = "Flag to indicate if this instance supports iPad.",
          type = "boolean",
        },
        supportIphone = {
          description = "Flag to indicate if this instance supports iPhone.",
          type = "boolean",
        },
      },
      type = "object",
    },
    InstanceWebDetails = {
      description = "The Web details resource.",
      id = "InstanceWebDetails",
      properties = {
        kind = {
          description = "Uniquely identifies the type of this resource. Value is always the fixed string `games#instanceWebDetails`.",
          type = "string",
        },
        launchUrl = {
          description = "Launch URL for the game.",
          type = "string",
        },
        preferred = {
          description = "Indicates that this instance is the default for new installations.",
          type = "boolean",
        },
      },
      type = "object",
    },
    Leaderboard = {
      description = "The Leaderboard resource.",
      id = "Leaderboard",
      properties = {
        iconUrl = {
          description = "The icon for the leaderboard.",
          type = "string",
        },
        id = {
          description = "The leaderboard ID.",
          type = "string",
        },
        isIconUrlDefault = {
          description = "Indicates whether the icon image being returned is a default image, or is game-provided.",
          type = "boolean",
        },
        kind = {
          description = "Uniquely identifies the type of this resource. Value is always the fixed string `games#leaderboard`.",
          type = "string",
        },
        name = {
          description = "The name of the leaderboard.",
          type = "string",
        },
        order = {
          description = "How scores are ordered.",
          enum = {
            "SCORE_ORDER_UNSPECIFIED",
            "LARGER_IS_BETTER",
            "SMALLER_IS_BETTER",
          },
          enumDescriptions = {
            "Default value. This value is unused.",
            "Larger values are better; scores are sorted in descending order",
            "Smaller values are better; scores are sorted in ascending order",
          },
          type = "string",
        },
      },
      type = "object",
    },
    LeaderboardEntry = {
      description = "The Leaderboard Entry resource.",
      id = "LeaderboardEntry",
      properties = {
        formattedScore = {
          description = "The localized string for the numerical value of this score.",
          type = "string",
        },
        formattedScoreRank = {
          description = "The localized string for the rank of this score for this leaderboard.",
          type = "string",
        },
        kind = {
          description = "Uniquely identifies the type of this resource. Value is always the fixed string `games#leaderboardEntry`.",
          type = "string",
        },
        player = {
          ["$ref"] = "Player",
          description = "The player who holds this score.",
        },
        scoreRank = {
          description = "The rank of this score for this leaderboard.",
          format = "int64",
          type = "string",
        },
        scoreTag = {
          description = "Additional information about the score. Values must contain no more than 64 URI-safe characters as defined by section 2.3 of RFC 3986.",
          type = "string",
        },
        scoreValue = {
          description = "The numerical value of this score.",
          format = "int64",
          type = "string",
        },
        timeSpan = {
          description = "The time span of this high score.",
          enum = {
            "SCORE_TIME_SPAN_UNSPECIFIED",
            "ALL_TIME",
            "WEEKLY",
            "DAILY",
          },
          enumDescriptions = {
            "Default value. This value is unused.",
            "The score is an all-time score.",
            "The score is a weekly score.",
            "The score is a daily score.",
          },
          type = "string",
        },
        writeTimestampMillis = {
          description = "The timestamp at which this score was recorded, in milliseconds since the epoch in UTC.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    LeaderboardListResponse = {
      description = "A list of leaderboard objects.",
      id = "LeaderboardListResponse",
      properties = {
        items = {
          description = "The leaderboards.",
          items = {
            ["$ref"] = "Leaderboard",
          },
          type = "array",
        },
        kind = {
          description = "Uniquely identifies the type of this resource. Value is always the fixed string `games#leaderboardListResponse`.",
          type = "string",
        },
        nextPageToken = {
          description = "Token corresponding to the next page of results.",
          type = "string",
        },
      },
      type = "object",
    },
    LeaderboardScoreRank = {
      description = "A score rank in a leaderboard.",
      id = "LeaderboardScoreRank",
      properties = {
        formattedNumScores = {
          description = "The number of scores in the leaderboard as a string.",
          type = "string",
        },
        formattedRank = {
          description = "The rank in the leaderboard as a string.",
          type = "string",
        },
        kind = {
          description = "Uniquely identifies the type of this resource. Value is always the fixed string `games#leaderboardScoreRank`.",
          type = "string",
        },
        numScores = {
          description = "The number of scores in the leaderboard.",
          format = "int64",
          type = "string",
        },
        rank = {
          description = "The rank in the leaderboard.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    LeaderboardScores = {
      description = "A ListScores response.",
      id = "LeaderboardScores",
      properties = {
        items = {
          description = "The scores in the leaderboard.",
          items = {
            ["$ref"] = "LeaderboardEntry",
          },
          type = "array",
        },
        kind = {
          description = "Uniquely identifies the type of this resource. Value is always the fixed string `games#leaderboardScores`.",
          type = "string",
        },
        nextPageToken = {
          description = "The pagination token for the next page of results.",
          type = "string",
        },
        numScores = {
          description = "The total number of scores in the leaderboard.",
          format = "int64",
          type = "string",
        },
        playerScore = {
          ["$ref"] = "LeaderboardEntry",
          description = "The score of the requesting player on the leaderboard. The player's score may appear both here and in the list of scores above. If you are viewing a public leaderboard and the player is not sharing their gameplay information publicly, the `scoreRank`and `formattedScoreRank` values will not be present.",
        },
        prevPageToken = {
          description = "The pagination token for the previous page of results.",
          type = "string",
        },
      },
      type = "object",
    },
    MetagameConfig = {
      description = "The metagame config resource",
      id = "MetagameConfig",
      properties = {
        currentVersion = {
          description = "Current version of the metagame configuration data. When this data is updated, the version number will be increased by one.",
          format = "int32",
          type = "integer",
        },
        kind = {
          description = "Uniquely identifies the type of this resource. Value is always the fixed string `games#metagameConfig`.",
          type = "string",
        },
        playerLevels = {
          description = "The list of player levels.",
          items = {
            ["$ref"] = "PlayerLevel",
          },
          type = "array",
        },
      },
      type = "object",
    },
    Player = {
      description = "A Player resource.",
      id = "Player",
      properties = {
        avatarImageUrl = {
          description = "The base URL for the image that represents the player.",
          type = "string",
        },
        bannerUrlLandscape = {
          description = "The url to the landscape mode player banner image.",
          type = "string",
        },
        bannerUrlPortrait = {
          description = "The url to the portrait mode player banner image.",
          type = "string",
        },
        displayName = {
          description = "The name to display for the player.",
          type = "string",
        },
        experienceInfo = {
          ["$ref"] = "PlayerExperienceInfo",
          description = "An object to represent Play Game experience information for the player.",
        },
        friendStatus = {
          description = "The friend status of the given player, relative to the requester. This is unset if the player is not sharing their friends list with the game.",
          enum = {
            "FRIEND_STATUS_UNSPECIFIED",
            "NO_RELATIONSHIP",
            "FRIEND",
          },
          enumDescriptions = {
            "Default value. This value is unused.",
            "There is no relationship between the players.",
            "The player and requester are friends.",
          },
          type = "string",
        },
        gamePlayerId = {
          description = "Per-application unique player identifier.",
          type = "string",
        },
        kind = {
          description = "Uniquely identifies the type of this resource. Value is always the fixed string `games#player`",
          type = "string",
        },
        name = {
          description = "A representation of the individual components of the name.",
          properties = {
            familyName = {
              description = "The family name of this player. In some places, this is known as the last name.",
              type = "string",
            },
            givenName = {
              description = "The given name of this player. In some places, this is known as the first name.",
              type = "string",
            },
          },
          type = "object",
        },
        originalPlayerId = {
          description = "The player ID that was used for this player the first time they signed into the game in question. This is only populated for calls to player.get for the requesting player, only if the player ID has subsequently changed, and only to clients that support remapping player IDs.",
          type = "string",
        },
        playerId = {
          description = "The ID of the player.",
          type = "string",
        },
        profileSettings = {
          ["$ref"] = "ProfileSettings",
          description = "The player's profile settings. Controls whether or not the player's profile is visible to other players.",
        },
        title = {
          description = "The player's title rewarded for their game activities.",
          type = "string",
        },
      },
      type = "object",
    },
    PlayerAchievement = {
      description = "An achievement object.",
      id = "PlayerAchievement",
      properties = {
        achievementState = {
          description = "The state of the achievement.",
          enum = {
            "STATE_UNSPECIFIED",
            "HIDDEN",
            "REVEALED",
            "UNLOCKED",
          },
          enumDescriptions = {
            "Default value. This value is unused.",
            "Achievement is hidden.",
            "Achievement is revealed.",
            "Achievement is unlocked.",
          },
          type = "string",
        },
        currentSteps = {
          description = "The current steps for an incremental achievement.",
          format = "int32",
          type = "integer",
        },
        experiencePoints = {
          description = "Experience points earned for the achievement. This field is absent for achievements that have not yet been unlocked and 0 for achievements that have been unlocked by testers but that are unpublished.",
          format = "int64",
          type = "string",
        },
        formattedCurrentStepsString = {
          description = "The current steps for an incremental achievement as a string.",
          type = "string",
        },
        id = {
          description = "The ID of the achievement.",
          type = "string",
        },
        kind = {
          description = "Uniquely identifies the type of this resource. Value is always the fixed string `games#playerAchievement`.",
          type = "string",
        },
        lastUpdatedTimestamp = {
          description = "The timestamp of the last modification to this achievement's state.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    PlayerAchievementListResponse = {
      description = "A list of achievement objects.",
      id = "PlayerAchievementListResponse",
      properties = {
        items = {
          description = "The achievements.",
          items = {
            ["$ref"] = "PlayerAchievement",
          },
          type = "array",
        },
        kind = {
          description = "Uniquely identifies the type of this resource. Value is always the fixed string `games#playerAchievementListResponse`.",
          type = "string",
        },
        nextPageToken = {
          description = "Token corresponding to the next page of results.",
          type = "string",
        },
      },
      type = "object",
    },
    PlayerEvent = {
      description = "An event status resource.",
      id = "PlayerEvent",
      properties = {
        definitionId = {
          description = "The ID of the event definition.",
          type = "string",
        },
        formattedNumEvents = {
          description = "The current number of times this event has occurred, as a string. The formatting of this string depends on the configuration of your event in the Play Games Developer Console.",
          type = "string",
        },
        kind = {
          description = "Uniquely identifies the type of this resource. Value is always the fixed string `games#playerEvent`.",
          type = "string",
        },
        numEvents = {
          description = "The current number of times this event has occurred.",
          format = "int64",
          type = "string",
        },
        playerId = {
          description = "The ID of the player.",
          type = "string",
        },
      },
      type = "object",
    },
    PlayerEventListResponse = {
      description = "A ListByPlayer response.",
      id = "PlayerEventListResponse",
      properties = {
        items = {
          description = "The player events.",
          items = {
            ["$ref"] = "PlayerEvent",
          },
          type = "array",
        },
        kind = {
          description = "Uniquely identifies the type of this resource. Value is always the fixed string `games#playerEventListResponse`.",
          type = "string",
        },
        nextPageToken = {
          description = "The pagination token for the next page of results.",
          type = "string",
        },
      },
      type = "object",
    },
    PlayerExperienceInfo = {
      description = "1P/3P metadata about the player's experience.",
      id = "PlayerExperienceInfo",
      properties = {
        currentExperiencePoints = {
          description = "The current number of experience points for the player.",
          format = "int64",
          type = "string",
        },
        currentLevel = {
          ["$ref"] = "PlayerLevel",
          description = "The current level of the player.",
        },
        kind = {
          description = "Uniquely identifies the type of this resource. Value is always the fixed string `games#playerExperienceInfo`.",
          type = "string",
        },
        lastLevelUpTimestampMillis = {
          description = "The timestamp when the player was leveled up, in millis since Unix epoch UTC.",
          format = "int64",
          type = "string",
        },
        nextLevel = {
          ["$ref"] = "PlayerLevel",
          description = "The next level of the player. If the current level is the maximum level, this should be same as the current level.",
        },
      },
      type = "object",
    },
    PlayerLeaderboardScore = {
      description = "A player leaderboard score object.",
      id = "PlayerLeaderboardScore",
      properties = {
        friendsRank = {
          ["$ref"] = "LeaderboardScoreRank",
          description = "The rank of the score in the friends collection for this leaderboard.",
        },
        kind = {
          description = "Uniquely identifies the type of this resource. Value is always the fixed string `games#playerLeaderboardScore`.",
          type = "string",
        },
        leaderboard_id = {
          description = "The ID of the leaderboard this score is in.",
          type = "string",
        },
        publicRank = {
          ["$ref"] = "LeaderboardScoreRank",
          description = "The public rank of the score in this leaderboard. This object will not be present if the user is not sharing their scores publicly.",
        },
        scoreString = {
          description = "The formatted value of this score.",
          type = "string",
        },
        scoreTag = {
          description = "Additional information about the score. Values must contain no more than 64 URI-safe characters as defined by section 2.3 of RFC 3986.",
          type = "string",
        },
        scoreValue = {
          description = "The numerical value of this score.",
          format = "int64",
          type = "string",
        },
        socialRank = {
          ["$ref"] = "LeaderboardScoreRank",
          description = "The social rank of the score in this leaderboard.",
        },
        timeSpan = {
          description = "The time span of this score.",
          enum = {
            "SCORE_TIME_SPAN_UNSPECIFIED",
            "ALL_TIME",
            "WEEKLY",
            "DAILY",
          },
          enumDescriptions = {
            "Default value. This value is unused.",
            "The score is an all-time score.",
            "The score is a weekly score.",
            "The score is a daily score.",
          },
          type = "string",
        },
        writeTimestamp = {
          description = "The timestamp at which this score was recorded, in milliseconds since the epoch in UTC.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    PlayerLeaderboardScoreListResponse = {
      description = "A list of player leaderboard scores.",
      id = "PlayerLeaderboardScoreListResponse",
      properties = {
        items = {
          description = "The leaderboard scores.",
          items = {
            ["$ref"] = "PlayerLeaderboardScore",
          },
          type = "array",
        },
        kind = {
          description = "Uniquely identifies the type of this resource. Value is always the fixed string `games#playerLeaderboardScoreListResponse`.",
          type = "string",
        },
        nextPageToken = {
          description = "The pagination token for the next page of results.",
          type = "string",
        },
        player = {
          ["$ref"] = "Player",
          description = "The Player resources for the owner of this score.",
        },
      },
      type = "object",
    },
    PlayerLevel = {
      description = "1P/3P metadata about a user's level.",
      id = "PlayerLevel",
      properties = {
        kind = {
          description = "Uniquely identifies the type of this resource. Value is always the fixed string `games#playerLevel`.",
          type = "string",
        },
        level = {
          description = "The level for the user.",
          format = "int32",
          type = "integer",
        },
        maxExperiencePoints = {
          description = "The maximum experience points for this level.",
          format = "int64",
          type = "string",
        },
        minExperiencePoints = {
          description = "The minimum experience points for this level.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    PlayerListResponse = {
      description = "A third party player list response.",
      id = "PlayerListResponse",
      properties = {
        items = {
          description = "The players.",
          items = {
            ["$ref"] = "Player",
          },
          type = "array",
        },
        kind = {
          description = "Uniquely identifies the type of this resource. Value is always the fixed string `games#playerListResponse`.",
          type = "string",
        },
        nextPageToken = {
          description = "Token corresponding to the next page of results.",
          type = "string",
        },
      },
      type = "object",
    },
    PlayerScore = {
      description = "A player score.",
      id = "PlayerScore",
      properties = {
        formattedScore = {
          description = "The formatted score for this player score.",
          type = "string",
        },
        kind = {
          description = "Uniquely identifies the type of this resource. Value is always the fixed string `games#playerScore`.",
          type = "string",
        },
        score = {
          description = "The numerical value for this player score.",
          format = "int64",
          type = "string",
        },
        scoreTag = {
          description = "Additional information about this score. Values will contain no more than 64 URI-safe characters as defined by section 2.3 of RFC 3986.",
          type = "string",
        },
        timeSpan = {
          description = "The time span for this player score.",
          enum = {
            "SCORE_TIME_SPAN_UNSPECIFIED",
            "ALL_TIME",
            "WEEKLY",
            "DAILY",
          },
          enumDescriptions = {
            "Default value. This value is unused.",
            "The score is an all-time score.",
            "The score is a weekly score.",
            "The score is a daily score.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    PlayerScoreListResponse = {
      description = "A list of score submission statuses.",
      id = "PlayerScoreListResponse",
      properties = {
        kind = {
          description = "Uniquely identifies the type of this resource. Value is always the fixed string `games#playerScoreListResponse`.",
          type = "string",
        },
        submittedScores = {
          description = "The score submissions statuses.",
          items = {
            ["$ref"] = "PlayerScoreResponse",
          },
          type = "array",
        },
      },
      type = "object",
    },
    PlayerScoreResponse = {
      description = "A list of leaderboard entry resources.",
      id = "PlayerScoreResponse",
      properties = {
        beatenScoreTimeSpans = {
          description = "The time spans where the submitted score is better than the existing score for that time span.",
          items = {
            enum = {
              "SCORE_TIME_SPAN_UNSPECIFIED",
              "ALL_TIME",
              "WEEKLY",
              "DAILY",
            },
            enumDescriptions = {
              "Default value. This value is unused.",
              "The score is an all-time score.",
              "The score is a weekly score.",
              "The score is a daily score.",
            },
            type = "string",
          },
          type = "array",
        },
        formattedScore = {
          description = "The formatted value of the submitted score.",
          type = "string",
        },
        kind = {
          description = "Uniquely identifies the type of this resource. Value is always the fixed string `games#playerScoreResponse`.",
          type = "string",
        },
        leaderboardId = {
          description = "The leaderboard ID that this score was submitted to.",
          type = "string",
        },
        scoreTag = {
          description = "Additional information about this score. Values will contain no more than 64 URI-safe characters as defined by section 2.3 of RFC 3986.",
          type = "string",
        },
        unbeatenScores = {
          description = "The scores in time spans that have not been beaten. As an example, the submitted score may be better than the player's `DAILY` score, but not better than the player's scores for the `WEEKLY` or `ALL_TIME` time spans.",
          items = {
            ["$ref"] = "PlayerScore",
          },
          type = "array",
        },
      },
      type = "object",
    },
    PlayerScoreSubmissionList = {
      description = "A list of score submission requests.",
      id = "PlayerScoreSubmissionList",
      properties = {
        kind = {
          description = "Uniquely identifies the type of this resource. Value is always the fixed string `games#playerScoreSubmissionList`.",
          type = "string",
        },
        scores = {
          description = "The score submissions.",
          items = {
            ["$ref"] = "ScoreSubmission",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ProfileSettings = {
      description = "Profile settings",
      id = "ProfileSettings",
      properties = {
        friendsListVisibility = {
          enum = {
            "FRIENDS_LIST_VISIBILITY_UNSPECIFIED",
            "VISIBLE",
            "REQUEST_REQUIRED",
            "UNAVAILABLE",
          },
          enumDescriptions = {
            "Unused.",
            "The friends list is currently visible to the game.",
            "The developer does not have access to the friends list, but can call the Android API to show a consent dialog.",
            "The friends list is currently unavailable for this user, and it is not possible to request access at this time, either because the user has permanently declined or the friends feature is not available to them. In this state, any attempts to request access to the friends list will be unsuccessful.",
          },
          type = "string",
        },
        kind = {
          description = "Uniquely identifies the type of this resource. Value is always the fixed string `games#profileSettings`.",
          type = "string",
        },
        profileVisible = {
          description = "Whether the player's profile is visible to the currently signed in player.",
          type = "boolean",
        },
      },
      type = "object",
    },
    RevisionCheckResponse = {
      description = "A third party checking a revision response.",
      id = "RevisionCheckResponse",
      properties = {
        apiVersion = {
          description = "The version of the API this client revision should use when calling API methods.",
          type = "string",
        },
        kind = {
          description = "Uniquely identifies the type of this resource. Value is always the fixed string `games#revisionCheckResponse`.",
          type = "string",
        },
        revisionStatus = {
          description = "The result of the revision check.",
          enum = {
            "REVISION_STATUS_UNSPECIFIED",
            "OK",
            "DEPRECATED",
            "INVALID",
          },
          enumDescriptions = {
            "Default value. This value is unused.",
            "The revision being used is current.",
            "There is currently a newer version available, but the revision being used still works.",
            "The revision being used is not supported in any released version.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    ScopedPlayerIds = {
      description = "Scoped player identifiers.",
      id = "ScopedPlayerIds",
      properties = {
        developerPlayerKey = {
          description = "Identifier of the player across all games of the given developer. Every player has the same developer_player_key in all games of one developer. Developer player key changes for the game if the game is transferred to another developer. Note that game_player_id will stay unchanged.",
          type = "string",
        },
        gamePlayerId = {
          description = "Game-scoped player identifier. This is the same id that is returned in GetPlayer game_player_id field.",
          type = "string",
        },
      },
      type = "object",
    },
    ScoreSubmission = {
      description = "A request to submit a score to leaderboards.",
      id = "ScoreSubmission",
      properties = {
        kind = {
          description = "Uniquely identifies the type of this resource. Value is always the fixed string `games#scoreSubmission`.",
          type = "string",
        },
        leaderboardId = {
          description = "The leaderboard this score is being submitted to.",
          type = "string",
        },
        score = {
          description = "The new score being submitted.",
          format = "int64",
          type = "string",
        },
        scoreTag = {
          description = "Additional information about this score. Values will contain no more than 64 URI-safe characters as defined by section 2.3 of RFC 3986.",
          type = "string",
        },
        signature = {
          description = "Signature Values will contain URI-safe characters as defined by section 2.3 of RFC 3986.",
          type = "string",
        },
      },
      type = "object",
    },
    Snapshot = {
      description = "An snapshot object.",
      id = "Snapshot",
      properties = {
        coverImage = {
          ["$ref"] = "SnapshotImage",
          description = "The cover image of this snapshot. May be absent if there is no image.",
        },
        description = {
          description = "The description of this snapshot.",
          type = "string",
        },
        driveId = {
          description = "The ID of the file underlying this snapshot in the Drive API. Only present if the snapshot is a view on a Drive file and the file is owned by the caller.",
          type = "string",
        },
        durationMillis = {
          description = "The duration associated with this snapshot, in millis.",
          format = "int64",
          type = "string",
        },
        id = {
          description = "The ID of the snapshot.",
          type = "string",
        },
        kind = {
          description = "Uniquely identifies the type of this resource. Value is always the fixed string `games#snapshot`.",
          type = "string",
        },
        lastModifiedMillis = {
          description = "The timestamp (in millis since Unix epoch) of the last modification to this snapshot.",
          format = "int64",
          type = "string",
        },
        progressValue = {
          description = "The progress value (64-bit integer set by developer) associated with this snapshot.",
          format = "int64",
          type = "string",
        },
        title = {
          description = "The title of this snapshot.",
          type = "string",
        },
        type = {
          description = "The type of this snapshot.",
          enum = {
            "SNAPSHOT_TYPE_UNSPECIFIED",
            "SAVE_GAME",
          },
          enumDescriptions = {
            "Default value. This value is unused.",
            "A snapshot representing a save game.",
          },
          type = "string",
        },
        uniqueName = {
          description = "The unique name provided when the snapshot was created.",
          type = "string",
        },
      },
      type = "object",
    },
    SnapshotImage = {
      description = "An image of a snapshot.",
      id = "SnapshotImage",
      properties = {
        height = {
          description = "The height of the image.",
          format = "int32",
          type = "integer",
        },
        kind = {
          description = "Uniquely identifies the type of this resource. Value is always the fixed string `games#snapshotImage`.",
          type = "string",
        },
        mime_type = {
          description = "The MIME type of the image.",
          type = "string",
        },
        url = {
          description = "The URL of the image. This URL may be invalidated at any time and should not be cached.",
          type = "string",
        },
        width = {
          description = "The width of the image.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    SnapshotListResponse = {
      description = "A third party list snapshots response.",
      id = "SnapshotListResponse",
      properties = {
        items = {
          description = "The snapshots.",
          items = {
            ["$ref"] = "Snapshot",
          },
          type = "array",
        },
        kind = {
          description = "Uniquely identifies the type of this resource. Value is always the fixed string `games#snapshotListResponse`.",
          type = "string",
        },
        nextPageToken = {
          description = "Token corresponding to the next page of results. If there are no more results, the token is omitted.",
          type = "string",
        },
      },
      type = "object",
    },
    StatsResponse = {
      description = "A third party stats resource.",
      id = "StatsResponse",
      properties = {
        avg_session_length_minutes = {
          description = "Average session length in minutes of the player. E.g., 1, 30, 60, ... . Not populated if there is not enough information.",
          format = "float",
          type = "number",
        },
        churn_probability = {
          description = "The probability of the player not returning to play the game in the next day. E.g., 0, 0.1, 0.5, ..., 1.0. Not populated if there is not enough information.",
          format = "float",
          type = "number",
        },
        days_since_last_played = {
          description = "Number of days since the player last played this game. E.g., 0, 1, 5, 10, ... . Not populated if there is not enough information.",
          format = "int32",
          type = "integer",
        },
        high_spender_probability = {
          description = "The probability of the player going to spend beyond a threshold amount of money. E.g., 0, 0.25, 0.50, 0.75. Not populated if there is not enough information.",
          format = "float",
          type = "number",
        },
        kind = {
          description = "Uniquely identifies the type of this resource. Value is always the fixed string `games#statsResponse`.",
          type = "string",
        },
        num_purchases = {
          description = "Number of in-app purchases made by the player in this game. E.g., 0, 1, 5, 10, ... . Not populated if there is not enough information.",
          format = "int32",
          type = "integer",
        },
        num_sessions = {
          description = "The approximate number of sessions of the player within the last 28 days, where a session begins when the player is connected to Play Games Services and ends when they are disconnected. E.g., 0, 1, 5, 10, ... . Not populated if there is not enough information.",
          format = "int32",
          type = "integer",
        },
        num_sessions_percentile = {
          description = "The approximation of the sessions percentile of the player within the last 30 days, where a session begins when the player is connected to Play Games Services and ends when they are disconnected. E.g., 0, 0.25, 0.5, 0.75. Not populated if there is not enough information.",
          format = "float",
          type = "number",
        },
        spend_percentile = {
          description = "The approximate spend percentile of the player in this game. E.g., 0, 0.25, 0.5, 0.75. Not populated if there is not enough information.",
          format = "float",
          type = "number",
        },
        spend_probability = {
          description = "The probability of the player going to spend the game in the next seven days. E.g., 0, 0.25, 0.50, 0.75. Not populated if there is not enough information.",
          format = "float",
          type = "number",
        },
        total_spend_next_28_days = {
          description = "The predicted amount of money that the player going to spend in the next 28 days. E.g., 1, 30, 60, ... . Not populated if there is not enough information.",
          format = "float",
          type = "number",
        },
      },
      type = "object",
    },
  },
  servicePath = "",
  title = "Google Play Game Services",
  version = "v1",
}
