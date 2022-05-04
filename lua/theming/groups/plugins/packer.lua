local hi = require("utils.theming").highlight

return {
  setup = function(colors)
    hi("packerPackageNotLoaded", { guifg = colors.common.base11 })
  end,
}

-- vim:ft=lua
