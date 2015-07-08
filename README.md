# Limit S2S for domains using SASL ANONYMOUS

Configuring:

```lua
VirtualHost "anon-domain.example"
    modules_enabled = { "anon_s2s_whitelist" }

    authentication = "anonymous"

    -- We need to set this so that we can use S2S with our whitelisted domains 
    allow_anonymous_s2s = true

    -- And now we restrict anonymous S2S to just these domains
    anon_s2s_whitelist = { "allowed-domain-1.example", "allowed-domain-2.example" }
```
