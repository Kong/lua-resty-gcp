local decode = require("cjson").new().decode
return assert(decode([===[
{ "description": "The Business Profile Performance API allows merchants to fetch performance reports about their business profile on Google.", "protocol": "rest", "kind": "discovery#restDescription", "title": "Business Profile Performance API", "batchPath": "batch", "id": "businessprofileperformance:v1", "discoveryVersion": "v1", "baseUrl": "https://businessprofileperformance.googleapis.com/", "ownerName": "Google", "fullyEncodeReservedExpansion": true, "version_module": true, "version": "v1", "canonicalName": "Business Profile Performance", "name": "businessprofileperformance", "parameters": { "upload_protocol": { "type": "string", "description": "Upload protocol for media (e.g. \"raw\", \"multipart\").", "location": "query" }, "fields": { "location": "query", "type": "string", "description": "Selector specifying which fields to include in a partial response." }, "prettyPrint": { "default": "true", "description": "Returns response with indentations and line breaks.", "type": "boolean", "location": "query" }, "$.xgafv": { "enum": [ "1", "2" ], "location": "query", "type": "string", "description": "V1 error format.", "enumDescriptions": [ "v1 error format", "v2 error format" ] }, "alt": { "enum": [ "json", "media", "proto" ], "default": "json", "enumDescriptions": [ "Responses with Content-Type of application/json", "Media download with context-dependent Content-Type", "Responses with Content-Type of application/x-protobuf" ], "type": "string", "description": "Data format for response.", "location": "query" }, "key": { "description": "API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.", "location": "query", "type": "string" }, "access_token": { "type": "string", "description": "OAuth access token.", "location": "query" }, "oauth_token": { "location": "query", "type": "string", "description": "OAuth 2.0 token for the current user." }, "callback": { "description": "JSONP", "type": "string", "location": "query" }, "quotaUser": { "description": "Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.", "location": "query", "type": "string" }, "uploadType": { "description": "Legacy upload protocol for media (e.g. \"media\", \"multipart\").", "location": "query", "type": "string" } }, "mtlsRootUrl": "https://businessprofileperformance.mtls.googleapis.com/", "documentationLink": "https://developers.google.com/my-business/", "servicePath": "", "ownerDomain": "google.com", "resources": { "locations": { "methods": { "getDailyMetricsTimeSeries": { "response": { "$ref": "GetDailyMetricsTimeSeriesResponse" }, "description": " Returns the values for each date from a given time range that are associated with the specific daily metric. Example request: `GET https://businessprofileperformance.googleapis.com/v1/locations/12345:getDailyMetricsTimeSeries?dailyMetric=WEBSITE_CLICKS&daily_range.start_date.year=2022&daily_range.start_date.month=1&daily_range.start_date.day=1&daily_range.end_date.year=2022&daily_range.end_date.month=3&daily_range.end_date.day=31`", "httpMethod": "GET", "id": "businessprofileperformance.locations.getDailyMetricsTimeSeries", "parameters": { "dailyRange.endDate.month": { "type": "integer", "format": "int32", "location": "query", "description": "Month of a year. Must be from 1 to 12, or 0 to specify a year without a month and day." }, "dailyRange.startDate.year": { "location": "query", "description": "Year of the date. Must be from 1 to 9999, or 0 to specify a date without a year.", "type": "integer", "format": "int32" }, "dailySubEntityType.dayOfWeek": { "type": "string", "enumDescriptions": [ "The day of the week is unspecified.", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday" ], "location": "query", "enum": [ "DAY_OF_WEEK_UNSPECIFIED", "MONDAY", "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY", "SUNDAY" ], "description": "Represents the day of the week. Eg: MONDAY." }, "dailySubEntityType.timeOfDay.nanos": { "type": "integer", "format": "int32", "location": "query", "description": "Fractions of seconds in nanoseconds. Must be from 0 to 999,999,999." }, "dailyRange.endDate.year": { "description": "Year of the date. Must be from 1 to 9999, or 0 to specify a date without a year.", "location": "query", "type": "integer", "format": "int32" }, "dailySubEntityType.timeOfDay.hours": { "description": "Hours of day in 24 hour format. Should be from 0 to 23. An API may choose to allow the value \"24:00:00\" for scenarios like business closing time.", "type": "integer", "location": "query", "format": "int32" }, "dailyRange.endDate.day": { "type": "integer", "location": "query", "format": "int32", "description": "Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to specify a year by itself or a year and month where the day isn't significant." }, "name": { "location": "path", "description": "Required. The location for which the time series should be fetched. Format: locations/{location_id} where location_id is an unobfuscated listing id.", "pattern": "^locations/[^/]+$", "type": "string", "required": true }, "dailyRange.startDate.month": { "type": "integer", "format": "int32", "location": "query", "description": "Month of a year. Must be from 1 to 12, or 0 to specify a year without a month and day." }, "dailyRange.startDate.day": { "format": "int32", "type": "integer", "description": "Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to specify a year by itself or a year and month where the day isn't significant.", "location": "query" }, "dailyMetric": { "type": "string", "enumDescriptions": [ "Represents the default unknown value.", "Business impressions on Google Maps on Desktop devices. Multiple impressions by a unique user within a single day are counted as a single impression.", "Business impressions on Google Search on Desktop devices. Multiple impressions by a unique user within a single day are counted as a single impression.", "Business impressions on Google Maps on Mobile devices. Multiple impressions by a unique user within a single day are counted as a single impression.", "Business impressions on Google Search on Mobile devices. Multiple impressions by a unique user within a single day are counted as a single impression.", "The number of message conversations received on the business profile.", "The number of times a direction request was requested to the business location.", "The number of times the business profile call button was clicked.", "The number of times the business profile website was clicked.", "The number of bookings received from the business profile.", "The number of food orders received from the business profile." ], "description": "Required. The metric to retrieve time series.", "enum": [ "DAILY_METRIC_UNKNOWN", "BUSINESS_IMPRESSIONS_DESKTOP_MAPS", "BUSINESS_IMPRESSIONS_DESKTOP_SEARCH", "BUSINESS_IMPRESSIONS_MOBILE_MAPS", "BUSINESS_IMPRESSIONS_MOBILE_SEARCH", "BUSINESS_CONVERSATIONS", "BUSINESS_DIRECTION_REQUESTS", "CALL_CLICKS", "WEBSITE_CLICKS", "BUSINESS_BOOKINGS", "BUSINESS_FOOD_ORDERS" ], "location": "query" }, "dailySubEntityType.timeOfDay.seconds": { "type": "integer", "location": "query", "format": "int32", "description": "Seconds of minutes of the time. Must normally be from 0 to 59. An API may allow the value 60 if it allows leap-seconds." }, "dailySubEntityType.timeOfDay.minutes": { "type": "integer", "location": "query", "description": "Minutes of hour of day. Must be from 0 to 59.", "format": "int32" } }, "flatPath": "v1/locations/{locationsId}:getDailyMetricsTimeSeries", "path": "v1/{+name}:getDailyMetricsTimeSeries", "parameterOrder": [ "name" ] } }, "resources": { "searchkeywords": { "resources": { "impressions": { "resources": { "monthly": { "methods": { "list": { "id": "businessprofileperformance.locations.searchkeywords.impressions.monthly.list", "description": "Returns the search keywords used to find a business in search or maps. Each search keyword is accompanied by impressions which are aggregated on a monthly basis. Example request: `GET https://businessprofileperformance.googleapis.com/v1/locations/12345/searchkeywords/impressions/monthly?monthly_range.start_month.year=2022&monthly_range.start_month.month=1&monthly_range.end_month.year=2022&monthly_range.end_month.month=3`", "flatPath": "v1/locations/{locationsId}/searchkeywords/impressions/monthly", "parameterOrder": [ "parent" ], "httpMethod": "GET", "parameters": { "pageToken": { "description": "Optional. A token indicating the next paginated result to be returned.", "location": "query", "type": "string", "format": "byte" }, "monthlyRange.startMonth.day": { "location": "query", "type": "integer", "description": "Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to specify a year by itself or a year and month where the day isn't significant.", "format": "int32" }, "monthlyRange.startMonth.month": { "format": "int32", "description": "Month of a year. Must be from 1 to 12, or 0 to specify a year without a month and day.", "type": "integer", "location": "query" }, "monthlyRange.endMonth.day": { "description": "Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to specify a year by itself or a year and month where the day isn't significant.", "location": "query", "format": "int32", "type": "integer" }, "parent": { "location": "path", "type": "string", "pattern": "^locations/[^/]+$", "description": "Required. The location for which the time series should be fetched. Format: locations/{location_id} where location_id is an unobfuscated listing id.", "required": true }, "pageSize": { "description": "Optional. The number of results requested. The default page size is 100. Page size can be set to a maximum of 100.", "location": "query", "type": "integer", "format": "int32" }, "monthlyRange.startMonth.year": { "description": "Year of the date. Must be from 1 to 9999, or 0 to specify a date without a year.", "format": "int32", "type": "integer", "location": "query" }, "monthlyRange.endMonth.year": { "format": "int32", "location": "query", "description": "Year of the date. Must be from 1 to 9999, or 0 to specify a date without a year.", "type": "integer" }, "monthlyRange.endMonth.month": { "format": "int32", "type": "integer", "description": "Month of a year. Must be from 1 to 12, or 0 to specify a year without a month and day.", "location": "query" } }, "path": "v1/{+parent}/searchkeywords/impressions/monthly", "response": { "$ref": "ListSearchKeywordImpressionsMonthlyResponse" } } } } } } } } } } }, "revision": "20220712", "schemas": { "InsightsValue": { "id": "InsightsValue", "type": "object", "description": "Represents an insights value.", "properties": { "threshold": { "type": "string", "format": "int64", "description": "Represents the threshold below which the actual value falls." }, "value": { "format": "int64", "type": "string", "description": "Represents the actual value." } } }, "Date": { "id": "Date", "type": "object", "description": "Represents a whole or partial calendar date, such as a birthday. The time of day and time zone are either specified elsewhere or are insignificant. The date is relative to the Gregorian Calendar. This can represent one of the following: LICENSE Makefile README.md gsa_key.json lua-resty-gcp-dev-1.rockspec lua-resty-gcp-scm-1.rockspec.original lua-resty-gcp-scm-1.rockspec.template spec src upload.sh A full date, with non-zero year, month, and day values. LICENSE Makefile README.md gsa_key.json lua-resty-gcp-dev-1.rockspec lua-resty-gcp-scm-1.rockspec.original lua-resty-gcp-scm-1.rockspec.template spec src upload.sh A month and day, with a zero year (for example, an anniversary). LICENSE Makefile README.md gsa_key.json lua-resty-gcp-dev-1.rockspec lua-resty-gcp-scm-1.rockspec.original lua-resty-gcp-scm-1.rockspec.template spec src upload.sh A year on its own, with a zero month and a zero day. LICENSE Makefile README.md gsa_key.json lua-resty-gcp-dev-1.rockspec lua-resty-gcp-scm-1.rockspec.original lua-resty-gcp-scm-1.rockspec.template spec src upload.sh A year and month, with a zero day (for example, a credit card expiration date). Related types: LICENSE Makefile README.md gsa_key.json lua-resty-gcp-dev-1.rockspec lua-resty-gcp-scm-1.rockspec.original lua-resty-gcp-scm-1.rockspec.template spec src upload.sh google.type.TimeOfDay LICENSE Makefile README.md gsa_key.json lua-resty-gcp-dev-1.rockspec lua-resty-gcp-scm-1.rockspec.original lua-resty-gcp-scm-1.rockspec.template spec src upload.sh google.type.DateTime LICENSE Makefile README.md gsa_key.json lua-resty-gcp-dev-1.rockspec lua-resty-gcp-scm-1.rockspec.original lua-resty-gcp-scm-1.rockspec.template spec src upload.sh google.protobuf.Timestamp", "properties": { "day": { "description": "Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to specify a year by itself or a year and month where the day isn't significant.", "type": "integer", "format": "int32" }, "year": { "description": "Year of the date. Must be from 1 to 9999, or 0 to specify a date without a year.", "format": "int32", "type": "integer" }, "month": { "type": "integer", "format": "int32", "description": "Month of a year. Must be from 1 to 12, or 0 to specify a year without a month and day." } } }, "SearchKeywordCount": { "id": "SearchKeywordCount", "description": "Represents a single search keyword and its value.", "type": "object", "properties": { "searchKeyword": { "description": "The lower-cased string that the user entered.", "type": "string" }, "insightsValue": { "description": "One of either: 1) The sum of the number of unique users that used the keyword in a month, aggregated for each month requested. 2) A threshold that indicates that the actual value is below this threshold.", "$ref": "InsightsValue" } } }, "DatedValue": { "description": "Represents a single datapoint in the timeseries, where each datapoint is a date-value pair.", "type": "object", "properties": { "date": { "description": "The date that the datapoint corresponds to. This represents a month value if the day field is not set.", "$ref": "Date" }, "value": { "description": "The value of the datapoint.", "format": "int64", "type": "string" } }, "id": "DatedValue" }, "TimeSeries": { "properties": { "datedValues": { "type": "array", "description": "List of datapoints in the timeseries, where each datapoint is a date-value pair.", "items": { "$ref": "DatedValue" } } }, "description": "Represents a timeseries.", "id": "TimeSeries", "type": "object" }, "ListSearchKeywordImpressionsMonthlyResponse": { "description": "Represents the response for ListSearchKeywordImpressionsMonthly.", "properties": { "nextPageToken": { "format": "byte", "type": "string", "description": "A token indicating the last paginated result returned. This can be used by succeeding requests to get the next \"page\" of keywords. It will only be present when there are more results to be returned." }, "searchKeywordsCounts": { "type": "array", "items": { "$ref": "SearchKeywordCount" }, "description": "Search terms which have been used to find a business." } }, "id": "ListSearchKeywordImpressionsMonthlyResponse", "type": "object" }, "GetDailyMetricsTimeSeriesResponse": { "id": "GetDailyMetricsTimeSeriesResponse", "type": "object", "description": "Represents the response for GetDailyMetricsTimeSeries.", "properties": { "timeSeries": { "description": "The daily time series.", "$ref": "TimeSeries" } } } }, "basePath": "", "rootUrl": "https://businessprofileperformance.googleapis.com/", "icons": { "x16": "http://www.google.com/images/icons/product/search-16.gif", "x32": "http://www.google.com/images/icons/product/search-32.gif" } }
]===]))