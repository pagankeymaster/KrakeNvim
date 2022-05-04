local hi = require("utils.theming").highlight

return {
  setup = function(colors)
    hi("LightBulbFloatWin", { guifg = colors.common.base09, guibg = colors.shades.shade08, gui = "bold" })
    hi("LightBulbVirtualText", { guifg = colors.common.base12, gui = "bold" })
  end,
}

-- vim:ft=lua
