return {
  auth = {
    oauth2 = {
      scopes = {
        ["https://www.googleapis.com/auth/games"] = {
          description = "Create, edit, and delete your Google Play Games activity",
        },
      },
    },
  },
  basePath = "",
  baseUrl = "https://gamesmanagement.googleapis.com/",
  batchPath = "batch",
  canonicalName = "Games Management",
  description = "The Google Play Game Management API allows developers to manage resources from the Google Play Game service.",
  discoveryVersion = "v1",
  documentationLink = "https://developers.google.com/games/",
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "gamesManagement:v1management",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://gamesmanagement.mtls.googleapis.com/",
  name = "gamesManagement",
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
    achievements = {
      methods = {
        reset = {
          description = "Resets the achievement with the given ID for the currently authenticated player. This method is only accessible to whitelisted tester accounts for your application.",
          flatPath = "games/v1management/achievements/{achievementId}/reset",
          httpMethod = "POST",
          id = "gamesManagement.achievements.reset",
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
          path = "games/v1management/achievements/{achievementId}/reset",
          response = {
            ["$ref"] = "AchievementResetResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/games",
          },
        },
        resetAll = {
          description = "Resets all achievements for the currently authenticated player for your application. This method is only accessible to whitelisted tester accounts for your application.",
          flatPath = "games/v1management/achievements/reset",
          httpMethod = "POST",
          id = "gamesManagement.achievements.resetAll",
          parameterOrder = {},
          parameters = {},
          path = "games/v1management/achievements/reset",
          response = {
            ["$ref"] = "AchievementResetAllResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/games",
          },
        },
        resetAllForAllPlayers = {
          description = "Resets all draft achievements for all players. This method is only available to user accounts for your developer console.",
          flatPath = "games/v1management/achievements/resetAllForAllPlayers",
          httpMethod = "POST",
          id = "gamesManagement.achievements.resetAllForAllPlayers",
          parameterOrder = {},
          parameters = {},
          path = "games/v1management/achievements/resetAllForAllPlayers",
          scopes = {
            "https://www.googleapis.com/auth/games",
          },
        },
        resetForAllPlayers = {
          description = "Resets the achievement with the given ID for all players. This method is only available to user accounts for your developer console. Only draft achievements can be reset.",
          flatPath = "games/v1management/achievements/{achievementId}/resetForAllPlayers",
          httpMethod = "POST",
          id = "gamesManagement.achievements.resetForAllPlayers",
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
          path = "games/v1management/achievements/{achievementId}/resetForAllPlayers",
          scopes = {
            "https://www.googleapis.com/auth/games",
          },
        },
        resetMultipleForAllPlayers = {
          description = "Resets achievements with the given IDs for all players. This method is only available to user accounts for your developer console. Only draft achievements may be reset.",
          flatPath = "games/v1management/achievements/resetMultipleForAllPlayers",
          httpMethod = "POST",
          id = "gamesManagement.achievements.resetMultipleForAllPlayers",
          parameterOrder = {},
          parameters = {},
          path = "games/v1management/achievements/resetMultipleForAllPlayers",
          request = {
            ["$ref"] = "AchievementResetMultipleForAllRequest",
          },
          scopes = {
            "https://www.googleapis.com/auth/games",
          },
        },
      },
    },
    applications = {
      methods = {
        listHidden = {
          description = "Get the list of players hidden from the given application. This method is only available to user accounts for your developer console.",
          flatPath = "games/v1management/applications/{applicationId}/players/hidden",
          httpMethod = "GET",
          id = "gamesManagement.applications.listHidden",
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
          path = "games/v1management/applications/{applicationId}/players/hidden",
          response = {
            ["$ref"] = "HiddenPlayerList",
          },
          scopes = {
            "https://www.googleapis.com/auth/games",
          },
        },
      },
    },
    events = {
      methods = {
        reset = {
          description = "Resets all player progress on the event with the given ID for the currently authenticated player. This method is only accessible to whitelisted tester accounts for your application.",
          flatPath = "games/v1management/events/{eventId}/reset",
          httpMethod = "POST",
          id = "gamesManagement.events.reset",
          parameterOrder = {
            "eventId",
          },
          parameters = {
            eventId = {
              description = "The ID of the event.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "games/v1management/events/{eventId}/reset",
          scopes = {
            "https://www.googleapis.com/auth/games",
          },
        },
        resetAll = {
          description = "Resets all player progress on all events for the currently authenticated player. This method is only accessible to whitelisted tester accounts for your application.",
          flatPath = "games/v1management/events/reset",
          httpMethod = "POST",
          id = "gamesManagement.events.resetAll",
          parameterOrder = {},
          parameters = {},
          path = "games/v1management/events/reset",
          scopes = {
            "https://www.googleapis.com/auth/games",
          },
        },
        resetAllForAllPlayers = {
          description = "Resets all draft events for all players. This method is only available to user accounts for your developer console.",
          flatPath = "games/v1management/events/resetAllForAllPlayers",
          httpMethod = "POST",
          id = "gamesManagement.events.resetAllForAllPlayers",
          parameterOrder = {},
          parameters = {},
          path = "games/v1management/events/resetAllForAllPlayers",
          scopes = {
            "https://www.googleapis.com/auth/games",
          },
        },
        resetForAllPlayers = {
          description = "Resets the event with the given ID for all players. This method is only available to user accounts for your developer console. Only draft events can be reset.",
          flatPath = "games/v1management/events/{eventId}/resetForAllPlayers",
          httpMethod = "POST",
          id = "gamesManagement.events.resetForAllPlayers",
          parameterOrder = {
            "eventId",
          },
          parameters = {
            eventId = {
              description = "The ID of the event.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "games/v1management/events/{eventId}/resetForAllPlayers",
          scopes = {
            "https://www.googleapis.com/auth/games",
          },
        },
        resetMultipleForAllPlayers = {
          description = "Resets events with the given IDs for all players. This method is only available to user accounts for your developer console. Only draft events may be reset.",
          flatPath = "games/v1management/events/resetMultipleForAllPlayers",
          httpMethod = "POST",
          id = "gamesManagement.events.resetMultipleForAllPlayers",
          parameterOrder = {},
          parameters = {},
          path = "games/v1management/events/resetMultipleForAllPlayers",
          request = {
            ["$ref"] = "EventsResetMultipleForAllRequest",
          },
          scopes = {
            "https://www.googleapis.com/auth/games",
          },
        },
      },
    },
    players = {
      methods = {
        hide = {
          description = "Hide the given player's leaderboard scores from the given application. This method is only available to user accounts for your developer console.",
          flatPath = "games/v1management/applications/{applicationId}/players/hidden/{playerId}",
          httpMethod = "POST",
          id = "gamesManagement.players.hide",
          parameterOrder = {
            "applicationId",
            "playerId",
          },
          parameters = {
            applicationId = {
              description = "The application ID from the Google Play developer console.",
              location = "path",
              required = true,
              type = "string",
            },
            playerId = {
              description = "A player ID. A value of `me` may be used in place of the authenticated player's ID.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "games/v1management/applications/{applicationId}/players/hidden/{playerId}",
          scopes = {
            "https://www.googleapis.com/auth/games",
          },
        },
        unhide = {
          description = "Unhide the given player's leaderboard scores from the given application. This method is only available to user accounts for your developer console.",
          flatPath = "games/v1management/applications/{applicationId}/players/hidden/{playerId}",
          httpMethod = "DELETE",
          id = "gamesManagement.players.unhide",
          parameterOrder = {
            "applicationId",
            "playerId",
          },
          parameters = {
            applicationId = {
              description = "The application ID from the Google Play developer console.",
              location = "path",
              required = true,
              type = "string",
            },
            playerId = {
              description = "A player ID. A value of `me` may be used in place of the authenticated player's ID.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "games/v1management/applications/{applicationId}/players/hidden/{playerId}",
          scopes = {
            "https://www.googleapis.com/auth/games",
          },
        },
      },
    },
    scores = {
      methods = {
        reset = {
          description = "Resets scores for the leaderboard with the given ID for the currently authenticated player. This method is only accessible to whitelisted tester accounts for your application.",
          flatPath = "games/v1management/leaderboards/{leaderboardId}/scores/reset",
          httpMethod = "POST",
          id = "gamesManagement.scores.reset",
          parameterOrder = {
            "leaderboardId",
          },
          parameters = {
            leaderboardId = {
              description = "The ID of the leaderboard.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "games/v1management/leaderboards/{leaderboardId}/scores/reset",
          response = {
            ["$ref"] = "PlayerScoreResetResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/games",
          },
        },
        resetAll = {
          description = "Resets all scores for all leaderboards for the currently authenticated players. This method is only accessible to whitelisted tester accounts for your application.",
          flatPath = "games/v1management/scores/reset",
          httpMethod = "POST",
          id = "gamesManagement.scores.resetAll",
          parameterOrder = {},
          parameters = {},
          path = "games/v1management/scores/reset",
          response = {
            ["$ref"] = "PlayerScoreResetAllResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/games",
          },
        },
        resetAllForAllPlayers = {
          description = "Resets scores for all draft leaderboards for all players. This method is only available to user accounts for your developer console.",
          flatPath = "games/v1management/scores/resetAllForAllPlayers",
          httpMethod = "POST",
          id = "gamesManagement.scores.resetAllForAllPlayers",
          parameterOrder = {},
          parameters = {},
          path = "games/v1management/scores/resetAllForAllPlayers",
          scopes = {
            "https://www.googleapis.com/auth/games",
          },
        },
        resetForAllPlayers = {
          description = "Resets scores for the leaderboard with the given ID for all players. This method is only available to user accounts for your developer console. Only draft leaderboards can be reset.",
          flatPath = "games/v1management/leaderboards/{leaderboardId}/scores/resetForAllPlayers",
          httpMethod = "POST",
          id = "gamesManagement.scores.resetForAllPlayers",
          parameterOrder = {
            "leaderboardId",
          },
          parameters = {
            leaderboardId = {
              description = "The ID of the leaderboard.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "games/v1management/leaderboards/{leaderboardId}/scores/resetForAllPlayers",
          scopes = {
            "https://www.googleapis.com/auth/games",
          },
        },
        resetMultipleForAllPlayers = {
          description = "Resets scores for the leaderboards with the given IDs for all players. This method is only available to user accounts for your developer console. Only draft leaderboards may be reset.",
          flatPath = "games/v1management/scores/resetMultipleForAllPlayers",
          httpMethod = "POST",
          id = "gamesManagement.scores.resetMultipleForAllPlayers",
          parameterOrder = {},
          parameters = {},
          path = "games/v1management/scores/resetMultipleForAllPlayers",
          request = {
            ["$ref"] = "ScoresResetMultipleForAllRequest",
          },
          scopes = {
            "https://www.googleapis.com/auth/games",
          },
        },
      },
    },
  },
  revision = "20230112",
  rootUrl = "https://gamesmanagement.googleapis.com/",
  schemas = {
    AchievementResetAllResponse = {
      description = "Achievement reset all response.",
      id = "AchievementResetAllResponse",
      properties = {
        kind = {
          description = "Uniquely identifies the type of this resource. Value is always the fixed string `gamesManagement#achievementResetAllResponse`.",
          type = "string",
        },
        results = {
          description = "The achievement reset results.",
          items = {
            ["$ref"] = "AchievementResetResponse",
          },
          type = "array",
        },
      },
      type = "object",
    },
    AchievementResetMultipleForAllRequest = {
      id = "AchievementResetMultipleForAllRequest",
      properties = {
        achievement_ids = {
          description = "The IDs of achievements to reset.",
          items = {
            type = "string",
          },
          type = "array",
        },
        kind = {
          description = "Uniquely identifies the type of this resource. Value is always the fixed string `gamesManagement#achievementResetMultipleForAllRequest`.",
          type = "string",
        },
      },
      type = "object",
    },
    AchievementResetResponse = {
      description = "An achievement reset response.",
      id = "AchievementResetResponse",
      properties = {
        currentState = {
          description = "The current state of the achievement. This is the same as the initial state of the achievement. Possible values are: - \"`HIDDEN`\"- Achievement is hidden. - \"`REVEALED`\" - Achievement is revealed. - \"`UNLOCKED`\" - Achievement is unlocked. ",
          type = "string",
        },
        definitionId = {
          description = "The ID of an achievement for which player state has been updated.",
          type = "string",
        },
        kind = {
          description = "Uniquely identifies the type of this resource. Value is always the fixed string `gamesManagement#achievementResetResponse`.",
          type = "string",
        },
        updateOccurred = {
          description = "Flag to indicate if the requested update actually occurred.",
          type = "boolean",
        },
      },
      type = "object",
    },
    EventsResetMultipleForAllRequest = {
      description = "Multiple events reset all request.",
      id = "EventsResetMultipleForAllRequest",
      properties = {
        event_ids = {
          description = "The IDs of events to reset.",
          items = {
            type = "string",
          },
          type = "array",
        },
        kind = {
          description = "Uniquely identifies the type of this resource. Value is always the fixed string `gamesManagement#eventsResetMultipleForAllRequest`.",
          type = "string",
        },
      },
      type = "object",
    },
    GamesPlayerExperienceInfoResource = {
      description = "1P/3P metadata about the player's experience.",
      id = "GamesPlayerExperienceInfoResource",
      properties = {
        currentExperiencePoints = {
          description = "The current number of experience points for the player.",
          format = "int64",
          type = "string",
        },
        currentLevel = {
          ["$ref"] = "GamesPlayerLevelResource",
          description = "The current level of the player.",
        },
        lastLevelUpTimestampMillis = {
          description = "The timestamp when the player was leveled up, in millis since Unix epoch UTC.",
          format = "int64",
          type = "string",
        },
        nextLevel = {
          ["$ref"] = "GamesPlayerLevelResource",
          description = "The next level of the player. If the current level is the maximum level, this should be same as the current level.",
        },
      },
      type = "object",
    },
    GamesPlayerLevelResource = {
      description = "1P/3P metadata about a user's level.",
      id = "GamesPlayerLevelResource",
      properties = {
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
    HiddenPlayer = {
      description = "The HiddenPlayer resource.",
      id = "HiddenPlayer",
      properties = {
        hiddenTimeMillis = {
          description = "Output only. The time this player was hidden.",
          format = "int64",
          readOnly = true,
          type = "string",
        },
        kind = {
          description = "Output only. Uniquely identifies the type of this resource. Value is always the fixed string `gamesManagement#hiddenPlayer`.",
          readOnly = true,
          type = "string",
        },
        player = {
          ["$ref"] = "Player",
          description = "Output only. The player information.",
          readOnly = true,
        },
      },
      type = "object",
    },
    HiddenPlayerList = {
      description = "A list of hidden players.",
      id = "HiddenPlayerList",
      properties = {
        items = {
          description = "The players.",
          items = {
            ["$ref"] = "HiddenPlayer",
          },
          type = "array",
        },
        kind = {
          description = "Uniquely identifies the type of this resource. Value is always the fixed string `gamesManagement#hiddenPlayerList`.",
          type = "string",
        },
        nextPageToken = {
          description = "The pagination token for the next page of results.",
          type = "string",
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
          ["$ref"] = "GamesPlayerExperienceInfoResource",
          description = "An object to represent Play Game experience information for the player.",
        },
        kind = {
          description = "Uniquely identifies the type of this resource. Value is always the fixed string `gamesManagement#player`.",
          type = "string",
        },
        name = {
          description = "An object representation of the individual components of the player's name. For some players, these fields may not be present.",
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
    PlayerScoreResetAllResponse = {
      description = "A list of leaderboard reset resources.",
      id = "PlayerScoreResetAllResponse",
      properties = {
        kind = {
          description = "Uniquely identifies the type of this resource. Value is always the fixed string `gamesManagement#playerScoreResetAllResponse`.",
          type = "string",
        },
        results = {
          description = "The leaderboard reset results.",
          items = {
            ["$ref"] = "PlayerScoreResetResponse",
          },
          type = "array",
        },
      },
      type = "object",
    },
    PlayerScoreResetResponse = {
      description = "A list of reset leaderboard entry resources.",
      id = "PlayerScoreResetResponse",
      properties = {
        definitionId = {
          description = "The ID of an leaderboard for which player state has been updated.",
          type = "string",
        },
        kind = {
          description = "Uniquely identifies the type of this resource. Value is always the fixed string `gamesManagement#playerScoreResetResponse`.",
          type = "string",
        },
        resetScoreTimeSpans = {
          description = "The time spans of the updated score. Possible values are: - \"`ALL_TIME`\" - The score is an all-time score. - \"`WEEKLY`\" - The score is a weekly score. - \"`DAILY`\" - The score is a daily score. ",
          items = {
            type = "string",
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
        kind = {
          description = "Uniquely identifies the type of this resource. Value is always the fixed string `gamesManagement#profileSettings`.",
          type = "string",
        },
        profileVisible = {
          type = "boolean",
        },
      },
      type = "object",
    },
    ScoresResetMultipleForAllRequest = {
      id = "ScoresResetMultipleForAllRequest",
      properties = {
        kind = {
          description = "Uniquely identifies the type of this resource. Value is always the fixed string `gamesManagement#scoresResetMultipleForAllRequest`.",
          type = "string",
        },
        leaderboard_ids = {
          description = "The IDs of leaderboards to reset.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
  },
  servicePath = "",
  title = "Google Play Game Management",
  version = "v1management",
}
