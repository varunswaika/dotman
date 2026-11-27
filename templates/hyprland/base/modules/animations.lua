hl.config({
    animations = {
        enabled = true,
    },
})

hl.curve("easeOut", { type = "bezier", points = { {0.16, 1}, {0.3, 1} } })
hl.curve("easeIn",  { type = "bezier", points = { {0.4, 0}, {0.2, 1} } })

hl.animation({ leaf = "global",        enabled = true, speed = 5,   bezier = "easeOut" })
hl.animation({ leaf = "windows",       enabled = true, speed = 3,   bezier = "easeOut" })
hl.animation({ leaf = "windowsIn",     enabled = true, speed = 2.5, bezier = "easeOut", style = "slide up" })
hl.animation({ leaf = "windowsOut",    enabled = true, speed = 1.2, bezier = "easeIn",  style = "slide down" })
hl.animation({ leaf = "fadeIn",        enabled = true, speed = 2,   bezier = "easeOut" })
hl.animation({ leaf = "fadeOut",       enabled = true, speed = 1.5, bezier = "easeIn" })
hl.animation({ leaf = "layers",        enabled = true, speed = 3,   bezier = "easeOut" })
hl.animation({ leaf = "layersIn",      enabled = true, speed = 2.5, bezier = "easeOut", style = "slide left" })
hl.animation({ leaf = "layersOut",     enabled = true, speed = 1.2, bezier = "easeIn",  style = "slide right" })
hl.animation({ leaf = "fadeLayers",    enabled = true, speed = 1,   bezier = "default" })
hl.animation({ leaf = "fadeLayersIn",  enabled = true, speed = 1,   bezier = "default" })
hl.animation({ leaf = "fadeLayersOut", enabled = true, speed = 1,   bezier = "default" })
hl.animation({ leaf = "workspaces",    enabled = true, speed = 2.5, bezier = "easeOut" })
hl.animation({ leaf = "workspacesIn",  enabled = true, speed = 2,   bezier = "easeOut", style = "slide right" })
hl.animation({ leaf = "workspacesOut", enabled = true, speed = 1.5, bezier = "easeIn",  style = "slide left" })
hl.animation({ leaf = "border",        enabled = true, speed = 3,   bezier = "easeOut" })
hl.animation({ leaf = "zoomFactor",    enabled = true, speed = 4,   bezier = "easeIn" })
