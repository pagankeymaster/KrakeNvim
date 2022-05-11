local colors = require("utils.theming").get_active_theme()

return {
  ["LightBulbFloatWin"] = {
    guifg = colors.common.base09,
    guibg = colors.shades.shade08,
    gui = "bold",
  },
  ["LightBulbVirtualText"] = {
    guifg = colors.common.base12,
    gui = "bold",
  },
}

-- vim:ft=lua
