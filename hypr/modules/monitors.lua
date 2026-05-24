------------------
---- MONITORS ----
------------------

-- See https://wiki.hypr.land/Configuring/Basics/Monitors/
hl.monitor({
    output   = "eDP-1",
    mode     = "1920x1080@59.98",
    position = "auto",
    scale    = "1.0",
})

--workspaces 1-3 on main monitor
hl.workspace_rule({workspace = "1", monitor = "eDP-1", persistent = true })
hl.workspace_rule({workspace = "2", monitor = "eDP-1", persistent = true })
hl.workspace_rule({workspace = "3", monitor = "eDP-1", persistent = true })