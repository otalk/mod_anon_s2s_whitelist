local s2s_whitelist = module:get_option_array("anon_s2s_whitelist") or {};
local whitelist = {};

for i, domain in ipairs(s2s_whitelist) do
    whitelist[domain] = true;
end


module:hook("route/remote", function (event)
    if not whitelist[event.to_host] then
        module:log("info", "Blocking anonymous s2s access to %s", event.to_host);
        return false;
    end
end, 300);
