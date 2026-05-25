local custom_color = require("modules.colors")
-----------------------
---- LOOK AND FEEL ----
-----------------------

-- Refer to https://wiki.hypr.land/Configuring/Basics/Variables/
hl.config({
    general = {
        gaps_in  = 10,
        gaps_out = 10,

        border_size = 2,

        col = {
            active_border   = { colors = {custom_color.primary, custom_color.tertiary}, angle = 45 },
            inactive_border = custom_color.background,
        },

        -- Set to true to enable resizing windows by clicking and dragging on borders and gaps
        resize_on_border = false,

        -- Please see https://wiki.hypr.land/Configuring/Advanced-and-Cool/Tearing/ before you turn this on
        allow_tearing = false,
    },

    decoration = {
        rounding       = 10,
        rounding_power = 2,

        -- Change transparency of focused and unfocused windows
        active_opacity   = 0.80,
        inactive_opacity = 0.75,

        shadow = {
            enabled      = true,
            range        = 20,
            render_power = 3,
            color        = custom_color.background,
        },

        blur = {
            enabled   = true,
            size      = 20,
            passes    = 4,
            vibrancy  = 0.2,
	    popups = 1,
	    noise = 0.01,
	    brightness = 1.1,	    
        },
    },

    animations = {
        enabled = true,
    },
})