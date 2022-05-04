local hi = require("utils.theming").highlight

return {
  setup = function(colors)
    hi("TreesitterContext", { guibg = colors.shades.shade03, blend = 8 })
    hi("TSMethod", { link = "Method" })
  end,
}

-- vim:ft=lua
