local colors = require("utils.theming").get_active_theme()

return {
  ["htmlLink"] = { guifg = colors.syntax.color15, gui = "underline" },
  ["htmlH1"] = { guifg = colors.syntax.color09, gui = "bold" },
  ["htmlH2"] = { guifg = colors.syntax.color17, gui = "bold" },
  ["htmlH3"] = { guifg = colors.syntax.color13, gui = "bold" },
  ["htmlH4"] = { guifg = colors.syntax.color06, gui = "bold" },
  ["htmlH5"] = { guifg = colors.syntax.color00, gui = "bold" },
}

-- vim:ft=lua
