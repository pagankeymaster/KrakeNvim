local colors = require("utils.theming").get_active_theme()

return {
  ["GitSignsChange"] = {
    guifg = colors.common.base02,
  },
  ["GitSignsChangeNr"] = {
    guifg = colors.common.base15,
  },
  ["GitSignsChangeLn"] = {
    guifg = colors.common.base15,
  },
  ["GitSignsAdd"] = {
    guifg = colors.common.base09,
  },
  ["GitSignsAddNr"] = {
    guifg = colors.common.base14,
  },
  ["GitSignsAddLn"] = {
    guifg = colors.common.base14,
  },
  ["GitSignsDeleteLn"] = {
    guifg = colors.common.base11,
  },
  ["GitSignsDelete"] = {
    guifg = colors.common.base11,
  },
  ["GitSignsDeleteNr"] = {
    guifg = colors.common.base11,
  },
}

-- vim:ft=lua
