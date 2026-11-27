hl.config({
    general = {
        gaps_in  = {{ gap }},
        gaps_out = {{ gap * 2 }},
        border_size = {{ border_size }},

        col = {
            active_border   = "{{ accent }}",
            inactive_border = "rgba(00000000)",
        },

        resize_on_border = true,
        allow_tearing    = false,
        layout           = "dwindle",
    },

    decoration = {
        rounding       = {{ border_radius }},
        rounding_power = 2,

        active_opacity   = 1.0,
        inactive_opacity = 1.0,

        shadow = {
            enabled = false,
        },

        blur = {
            enabled = true,
            passes  = 5,
        },
    },
})
