local colors = require("utils.theming").get_active_theme()

return {
  ["TreesitterContext"] = {
    guibg = colors.shades.shade04,
  },
  ["TSMethod"] = {
    link = "Method",
  },
  ["TSVariable"] = {
    link = "Identifier",
  },
  ["TSField"] = {
    guifg = colors.syntax.color20,
  },
  ["TSVariableBuiltin"] = {
    guifg = colors.syntax.color08,
    gui = "bold",
  },
}

-- vim:ft=lua
