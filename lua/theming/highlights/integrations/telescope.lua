local colors = require("utils.theming").get_active_theme()

return {
  ["TelescopePreviewBorder"] = { guifg = colors.shades.shade11, guibg = colors.shades.shade11, blend = 2 },
  ["TelescopePreviewTitle"] = { guifg = colors.common.base01, guibg = colors.common.base14, blend = 2 },
  ["TelescopePreviewNormal"] = { guibg = colors.shades.shade11, blend = 2 },
  ["TelescopePreviewLine"] = { guibg = colors.common.base03 },
  ["TelescopeSelectionCaret"] = { guifg = colors.common.base14, guibg = colors.shades.shade10, blend = 2 },
  ["TelescopeSelection"] = {
    guibg = colors.shades.shade10,
    guifg = colors.common.base14,
    blend = 2,
  },
  ["TelescopeResultsBorder"] = { guibg = colors.shades.shade10, guifg = colors.shades.shade10, blend = 2 },
  ["TelescopeResultsTitle"] = { guibg = colors.common.base15, guifg = colors.common.base01, blend = 2 },
  ["TelescopeResultsNormal"] = { guibg = colors.shades.shade10, guifg = colors.common.base04, blend = 2 },
  ["TelescopeMatching"] = { guifg = colors.common.base11, blend = 2 },
  ["TelescopePromptPrefix"] = { guifg = colors.common.base08, blend = 2, guibg = colors.shades.shade03 },
  ["TelescopePromptBorder"] = { guibg = colors.shades.shade03, guifg = colors.shades.shade03, blend = 2 },
  ["TelescopePromptNormal"] = { guibg = colors.shades.shade03, guifg = colors.common.base09, blend = 2 },
  ["TelescopePromptTitle"] = {
    guifg = colors.common.base01,
    guibg = colors.common.base08,
    blend = 2,
  },
  ["TelescopePromptCounter"] = { guifg = colors.common.base15, blend = 2 },
}

-- vim:ft=lua
