local hi = require("utils.theming").highlight

return {
  setup = function(colors)
    hi("RnvimrNormal", { link = "NormalFloat" })
  end,
}

-- vim:ft=lua
