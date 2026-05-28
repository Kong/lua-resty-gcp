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
-- (except for fractions of a second to avoid precision errors)
local function aip_date_to_timestamp(date)
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

return {
    build_proxy_opts = build_proxy_opts,
    apply_proxy_opts = apply_proxy_opts,
    aip_date_to_timestamp = aip_date_to_timestamp,
}
