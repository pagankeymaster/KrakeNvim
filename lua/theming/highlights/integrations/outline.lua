local colors = require("utils.theming").get_active_theme()

return {
  ["SymbolsOutlineConnector"] = { guifg = colors.shades.shade02 },
  ["FocusedSymbol"] = { guibg = colors.common.base13, guifg = colors.common.base01 },
}

-- vim:ft=lua
