local colors = require("utils.theming").get_active_theme()

return {
  ["TreesitterContext"] = { guibg = colors.shades.shade04, blend = 8 },
  ["TSMethod"] = { link = "Method" },
  ["TSVariable"] = { link = "Identifier" },
}

-- vim:ft=lua
