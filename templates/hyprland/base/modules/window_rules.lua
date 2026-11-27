hl.window_rule({
    name  = "suppress-maximize-events",
    match = { class = ".*" },
    suppress_event = "maximize",
})

hl.window_rule({
    name  = "fix-xwayland-drags",
    match = {
        class      = "^$",
        title      = "^$",
        xwayland   = true,
        float      = true,
        fullscreen = false,
        pin        = false,
    },
    no_focus = true,
})

hl.window_rule({
    name  = "move-hyprland-run",
    match = { class = "hyprland-run" },
    move  = "20 monitor_h-120",
    float = true,
})

hl.window_rule({
    name    = "floating",
    match   = { class = "^(floating)$" },
    float   = true,
    center  = true,
    no_anim = true,
    size    = "monitor_w * 0.6 monitor_h * 0.6",
})

hl.window_rule({
    name    = "fullscreen",
    match   = { class = "fullscreen" },
    float   = true,
    size    = "monitor_w monitor_h",
    move    = "0 0",
    no_anim = true,
})

hl.layer_rule({
    name      = "launcher-fade",
    match     = { namespace = "launcher" },
    animation = "fade",
})
