hl.monitor({
    output   = "",
    mode     = "preferred",
    position = "auto",
    scale    = "auto",
})

hl.monitor({
    output   = "DP-4",
    mode     = "2560x1440@144",
    position = "0x0",
    scale    = 1,
})

hl.monitor({
    output   = "DP-5",
    mode     = "2560x1440@180",
    position = "2560x0",
    scale    = 1,
})

hl.workspace_rule({ workspace = "1", monitor = "DP-5", default = true })
hl.workspace_rule({ workspace = "2", monitor = "DP-4", default = true })
hl.config({ cursor = { default_monitor = "DP-5" } })

hl.on("hyprland.start", function()
    hl.dispatch(hl.dsp.focus({ workspace = "1" }))
    hl.exec_cmd("xrandr --output DP-5 --primary")
end)
