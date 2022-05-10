local colors = require("utils.theming").get_active_theme()

return {
  ["TelescopePreviewBorder"] = { guifg = colors.shades.shade12, guibg = colors.shades.shade12 },
  ["TelescopePreviewTitle"] = { guifg = colors.common.base01, guibg = colors.common.base14 },
  ["TelescopePreviewNormal"] = { guibg = colors.shades.shade12 },
  ["TelescopePreviewLine"] = { guibg = colors.shades.shade05 },
  ["TelescopeSelectionCaret"] = { guifg = colors.common.base14, guibg = colors.shades.shade11 },
  ["TelescopeSelection"] = {
    guibg = colors.shades.shade11,
    guifg = colors.common.base14,
  },
  ["TelescopeResultsBorder"] = { guibg = colors.shades.shade11, guifg = colors.shades.shade11 },
  ["TelescopeResultsTitle"] = { guibg = colors.common.base15, guifg = colors.common.base01 },
  ["TelescopeResultsNormal"] = { guibg = colors.shades.shade11, guifg = colors.common.base04 },
  ["TelescopeMatching"] = { guifg = colors.common.base11 },
  ["TelescopePromptPrefix"] = { guifg = colors.common.base08, guibg = colors.shades.shade08 },
  ["TelescopePromptBorder"] = { guibg = colors.shades.shade08, guifg = colors.shades.shade08 },
  ["TelescopePromptNormal"] = { guibg = colors.shades.shade08, guifg = colors.common.base09 },
  ["TelescopePromptTitle"] = {
    guifg = colors.common.base01,
    guibg = colors.common.base08,
  },
  ["TelescopePromptCounter"] = { guifg = colors.common.base15 },
}

-- vim:ft=lua
