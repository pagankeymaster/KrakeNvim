local colors = require("utils.theming").get_active_theme()

return {
  ["NeogitBranch"] = {
    guifg = colors.common.base10,
  },
  ["NeogitRemote"] = {
    guifg = colors.common.base09,
  },
  ["NeogitHunkHeader"] = {
    guifg = colors.common.base08,
  },
  ["NeogitHunkHeaderHighlight"] = {
    guifg = colors.common.base08,
    guibg = colors.common.base02,
  },
  ["NeogitDiffContextHighlight"] = {
    guibg = colors.common.base01,
  },
  ["NeogitDiffDeleteHighlight"] = {
    guifg = colors.common.base11,
    gui = "reverse",
  },
  ["NeogitDiffAddHighlight"] = {
    guifg = colors.common.base14,
    gui = "reverse",
  },
}

-- vim:ft=lua
