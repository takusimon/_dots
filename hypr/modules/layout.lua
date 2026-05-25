

-- See https://wiki.hypr.land/Configuring/Layouts/Dwindle-Layout/ for more
hl.config({
    general = {
    	    layout = "scrolling",
    },
    dwindle = {
        preserve_split = true, -- You probably want this
    },
})

-- See https://wiki.hypr.land/Configuring/Layouts/Master-Layout/ for more
hl.config({
    master = {
        new_status = "master",
    },
})

-- See https://wiki.hypr.land/Configuring/Layouts/Scrolling-Layout/ for more
hl.config({
    scrolling = {
        column_width = 0.5,
	follow_min_visible = 0,
	explicit_column_widths = "0.5, 1.0",
	wrap_focus = false,
	wrap_swapcol = false,
    },
})