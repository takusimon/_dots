local custom_color = require("modules.colors")

hl.config({
 group = {	
    auto_group = true,
    insert_after_current = false,
    focus_removed_window = false,

    ["col.border_active"] = custom_color.secondary,
    ["col.border_inactive"] = custom_color.background,
    ["col.border_locked_active"] = custom_color.on_error,
    ["col.border_locked_inactive"] = custom_color.shadow_dim,
    
    groupbar = {
       height = 16,
       indicator_height = 8,
       stacked = false,
       render_titles = false,
       rounding = 10,
       rounding_power = 4.0,
      ["col.active"] = custom_color.primary,
      ["col.inactive"] = custom_color.background,
      ["col.locked_active"] = custom_color.on_error,
      ["col.locked_inactive"] = custom_color.shadow_dim,
    },
  },
})