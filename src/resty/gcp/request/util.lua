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

return {
    build_proxy_opts = build_proxy_opts,
    apply_proxy_opts = apply_proxy_opts,
}
