local colors = require("utils.theming").get_active_theme()

return {
  ["AlphaKeyPrefix"] = { guifg = colors.common.base01, guibg = colors.common.base09, gui = "bold" },
  ["AlphaHeading"] = { guifg = colors.shades.shade02 },
  ["AlphaLoaded"] = { guifg = colors.shades.shade02 },
  ["AlphaFooting"] = { guifg = colors.common.base15, gui = "bold" },
  ["AlphaScroll"] = { guifg = colors.common.base15 },
  ["AlphaButtonLabelText"] = { guifg = colors.common.base08 },
}

-- vim:ft=lua
