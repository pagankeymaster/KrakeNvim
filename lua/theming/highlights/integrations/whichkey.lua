local colors = require("utils.theming").get_active_theme()

return {
  ["WhichKeyGroup"] = { guifg = colors.common.base11, gui = "bold" },
  ["WhichKeyDesc"] = { guifg = colors.common.base08 },
  ["WhichKeySeparator"] = { guifg = colors.common.base09 },
  ["WhichKeyValue"] = { guifg = colors.common.base14 },
  ["WhichKey"] = { guifg = colors.common.base14 },
  ["WhichKeyFloat"] = { link = "FloatBorder" },
}

-- vim:ft=lua
