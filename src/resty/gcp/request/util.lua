local luatz = require("luatz")

local PROXY_OPT_KEYS = {
    "http_proxy",
    "https_proxy",
    "http_proxy_authorization",
    "https_proxy_authorization",
    "no_proxy",
}

local function build_proxy_opts(opts)
    if type(opts) ~= "table" then
        return nil
    end

    local proxy_source = opts
    if opts.proxy_opts ~= nil then
        if type(opts.proxy_opts) ~= "table" then
            return nil, "opts.proxy_opts must be a table"
        end
        proxy_source = opts.proxy_opts
    end

    local proxy_opts = {}
    for _, key in ipairs(PROXY_OPT_KEYS) do
        if proxy_source[key] then
            proxy_opts[key] = proxy_source[key]
        end
    end

    return next(proxy_opts) and proxy_opts or nil
end

local function apply_proxy_opts(client, proxy_opts)
    if not proxy_opts then
        return
    end

    if client.set_proxy_options then
        client:set_proxy_options(proxy_opts)
        return
    end

    ngx.log(ngx.WARN,
        "[resty.gcp] proxy_opts were provided but the HTTP client does not support set_proxy_options; requests may bypass the configured proxy")
end

-- The date format follows RFC3339
-- YYYY-MM-DDTHH:MI:SSZ
-- 1985-04-12T23:20:50Z
-- (fractions of a second are stripped as they are irrelevant here)
local function aip_date_to_timestamp(date)
	date = date:gsub("%.[0-9]+Z$", "Z")
    local year, month, day, hour, min, sec = date:match("^(%d%d%d%d)%-(%d%d)%-(%d%d)T(%d%d):(%d%d):(%d%d)Z$")
    if not year then
		return nil, "date param: '" .. date .. "' does not match expected format: YYYY-MM-DDTHH:MI:SSZ"
	end

    -- We need to use luatz.timetable.timestamp instead of os.time to correctly build
    -- timestamp based on datetime. The reason why os.time is not suitable is that
    -- it uses system timezone so it'll interpret passed hour within it's timezone
    -- to shift to timestamp (which is in utc by definition).
    local timetable = luatz.timetable.new(year, month, day, hour, min, sec)
    return timetable:timestamp()
end


-- Checks whether value is a syntactically valid absolute URL (scheme://host).
-- Anything that isn't a string (including nil, ngx.null and cjson.null) is
-- simply "not a valid URL" -- callers decide whether that's an error.
local function is_valid_url(value)
  if type(value) ~= "string" then
    return false
  end

  local scheme, host = value:match("^(%a[%w+.-]*)://([^/?#]+)")
  return scheme ~= nil and host ~= nil
end


-- Validates a decoded GCP Workload Identity Federation JSON table.
--
-- @param {table} auth_json the decoded gcp_workload_identity_federation_auth_json
-- @treturn boolean true if the JSON is valid, false otherwise
-- @treturn string nil on success, or an error message on failure
local function validate_gcp_wif_auth_json(auth_json)
  if type(auth_json) ~= "table" then
    return false, "GCP Workload Identity Federation auth JSON must be a JSON object"
  end

  if type(auth_json.audience) ~= "string" or auth_json.audience == "" then
    return false, "GCP Workload Identity Federation auth JSON is missing required field 'audience'"
  end

  if type(auth_json.subject_token_type) ~= "string" or auth_json.subject_token_type == "" then
    return false, "GCP Workload Identity Federation auth JSON is missing required field 'subject_token_type'"
  end

  if not is_valid_url(auth_json.token_url) then
    return false, "GCP Workload Identity Federation auth JSON field 'token_url' is missing or not a valid URL"
  end

  local credential_source = auth_json.credential_source
  if type(credential_source) ~= "table" then
    return false, "GCP Workload Identity Federation auth JSON is missing required field 'credential_source'"
  end

  if type(credential_source.environment_id) ~= "string" or credential_source.environment_id == "" then
    return false, "GCP Workload Identity Federation auth JSON is missing required field 'credential_source.environment_id'"
  end

  -- optional: only validated when present as a string
  if type(auth_json.service_account_impersonation_url) == "string"
      and not is_valid_url(auth_json.service_account_impersonation_url) then
    return false, "GCP Workload Identity Federation auth JSON field 'service_account_impersonation_url' is not a valid URL"
  end

  return true
end

return {
    build_proxy_opts = build_proxy_opts,
    apply_proxy_opts = apply_proxy_opts,
    aip_date_to_timestamp = aip_date_to_timestamp,
    validate_gcp_wif_auth_json = validate_gcp_wif_auth_json,
}
