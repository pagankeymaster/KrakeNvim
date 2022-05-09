local colors = require("utils.theming").get_active_theme()

return {
  ["BookmarkSign"] = { guifg = colors.common.base13, gui = "bold" },
  ["BookmarkAnnotationSign"] = { guifg = colors.common.base07, gui = "bold" },
  ["BookmarkLine"] = { guifg = colors.common.base13 },
  ["BookmarkAnnotationLine"] = { guifg = colors.common.base09 },
}

-- vim:ft=lua
