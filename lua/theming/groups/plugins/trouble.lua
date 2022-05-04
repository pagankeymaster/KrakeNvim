local hi = require("utils.theming").highlight

return {
  setup = function(colors)
    hi("TroubleNormal", { guibg = colors.shades.shade08 })
  end,
}

-- vim:ft=lua
