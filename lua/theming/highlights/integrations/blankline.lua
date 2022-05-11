local colors = require("utils.theming").get_active_theme()

return {
  ["IndentBlanklineChar"] = {
    guifg = colors.shades.shade02,
  },
  ["IndentBlanklineContextChar"] = {
    guifg = colors.common.base10,
  },
  ["IndentBlanklineContextStart"] = {
    guifg = colors.common.base10,
  },
  ["IndentBlanklineSpaceChar"] = {
    guifg = colors.shades.shade02,
  },
  ["IndentBlanklineSpaceCharBlankline"] = {
    guifg = colors.shades.shade02,
  },
}

-- vim:ft=lua
