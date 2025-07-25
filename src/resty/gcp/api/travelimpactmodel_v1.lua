return {
  basePath = "",
  baseUrl = "https://travelimpactmodel.googleapis.com/",
  batchPath = "batch",
  canonicalName = "Travel Impact Model",
  description = "Travel Impact Model API lets you query travel carbon emission estimates.",
  discoveryVersion = "v1",
  documentationLink = "https://developers.google.com/travel/impact-model",
  fullyEncodeReservedExpansion = true,
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "travelimpactmodel:v1",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://travelimpactmodel.mtls.googleapis.com/",
  name = "travelimpactmodel",
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
    flights = {
      methods = {
        computeFlightEmissions = {
          description = "Stateless method to retrieve emission estimates. Details on how emission estimates are computed: https://github.com/google/travel-impact-model The response will contain all entries that match the input flight legs, in the same order. If there are no estimates available for a certain flight leg, the response will return the flight leg object with empty emission fields. The request will still be considered successful. Reasons for missing emission estimates include: - The flight is unknown to the server. - The input flight leg is missing one or more identifiers. - The flight date is in the past. - The aircraft type is not supported by the model. - Missing seat configuration. The request can contain up to 1000 flight legs. If the request has more than 1000 direct flights, if will fail with an INVALID_ARGUMENT error.",
          flatPath = "v1/flights:computeFlightEmissions",
          httpMethod = "POST",
          id = "travelimpactmodel.flights.computeFlightEmissions",
          parameterOrder = {},
          parameters = {},
          path = "v1/flights:computeFlightEmissions",
          request = {
            ["$ref"] = "ComputeFlightEmissionsRequest",
          },
          response = {
            ["$ref"] = "ComputeFlightEmissionsResponse",
          },
        },
      },
    },
  },
  revision = "20230117",
  rootUrl = "https://travelimpactmodel.googleapis.com/",
  schemas = {
    ComputeFlightEmissionsRequest = {
      description = "Input definition for the ComputeFlightEmissions request.",
      id = "ComputeFlightEmissionsRequest",
      properties = {
        flights = {
          description = "Required. Direct flights to return emission estimates for.",
          items = {
            ["$ref"] = "Flight",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ComputeFlightEmissionsResponse = {
      description = "Output definition for the ComputeFlightEmissions response.",
      id = "ComputeFlightEmissionsResponse",
      properties = {
        flightEmissions = {
          description = "List of flight legs with emission estimates.",
          items = {
            ["$ref"] = "FlightWithEmissions",
          },
          type = "array",
        },
        modelVersion = {
          ["$ref"] = "ModelVersion",
          description = "The model version under which emission estimates for all flights in this response were computed.",
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
    EmissionsGramsPerPax = {
      description = "Grouped emissions per seating class results.",
      id = "EmissionsGramsPerPax",
      properties = {
        business = {
          description = "Emissions for one passenger in business class in grams. This field is always computed and populated, regardless of whether the aircraft has business class seats or not.",
          format = "int32",
          type = "integer",
        },
        economy = {
          description = "Emissions for one passenger in economy class in grams. This field is always computed and populated, regardless of whether the aircraft has economy class seats or not.",
          format = "int32",
          type = "integer",
        },
        first = {
          description = "Emissions for one passenger in first class in grams. This field is always computed and populated, regardless of whether the aircraft has first class seats or not.",
          format = "int32",
          type = "integer",
        },
        premiumEconomy = {
          description = "Emissions for one passenger in premium economy class in grams. This field is always computed and populated, regardless of whether the aircraft has premium economy class seats or not.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    Flight = {
      description = "All details related to a single request item for a direct flight emission estimates.",
      id = "Flight",
      properties = {
        departureDate = {
          ["$ref"] = "Date",
          description = "Required. Date of the flight in the time zone of the origin airport. Must be a date in the present or future.",
        },
        destination = {
          description = "Required. IATA airport code for flight destination, e.g. \"JFK\".",
          type = "string",
        },
        flightNumber = {
          description = "Required. Flight number, e.g. 324.",
          format = "int32",
          type = "integer",
        },
        operatingCarrierCode = {
          description = "Required. IATA carrier code, e.g. \"AA\".",
          type = "string",
        },
        origin = {
          description = "Required. IATA airport code for flight origin, e.g. \"LHR\".",
          type = "string",
        },
      },
      type = "object",
    },
    FlightWithEmissions = {
      description = "Direct flight with emission estimates.",
      id = "FlightWithEmissions",
      properties = {
        emissionsGramsPerPax = {
          ["$ref"] = "EmissionsGramsPerPax",
          description = "Optional. Per-passenger emission estimate numbers. Will not be present if emissions could not be computed. For the list of reasons why emissions could not be computed, see ComputeFlightEmissions.",
        },
        flight = {
          ["$ref"] = "Flight",
          description = "Required. Matches the flight identifiers in the request. Note: all IATA codes are capitalized.",
        },
      },
      type = "object",
    },
    ModelVersion = {
      description = "Travel Impact Model version. For more information about the model versioning see https://github.com/google/travel-impact-model/#versioning.",
      id = "ModelVersion",
      properties = {
        dated = {
          description = "Dated versions: Model datasets are recreated with refreshed input data but no change to the algorithms regularly.",
          type = "string",
        },
        major = {
          description = "Major versions: Major changes to methodology (e.g. adding new data sources to the model that lead to major output changes). Such changes will be infrequent and announced well in advance. Might involve API version changes, which will respect guidelines in https://cloud.google.com/endpoints/docs/openapi/versioning-an-api#backwards-incompatible",
          format = "int32",
          type = "integer",
        },
        minor = {
          description = "Minor versions: Changes to the model that, while being consistent across schema versions, change the model parameters or implementation.",
          format = "int32",
          type = "integer",
        },
        patch = {
          description = "Patch versions: Implementation changes meant to address bugs or inaccuracies in the model implementation.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
  },
  servicePath = "",
  title = "Travel Impact Model API",
  version = "v1",
  version_module = true,
}
