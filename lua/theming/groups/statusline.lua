local hi = require("utils.theming").highlight

return {
  setup = function(colors)
    hi("StatusLineDirnameReverse", { guifg = colors.common.base02, guibg = colors.common.base01 })
    hi("StatusLineFilenameExtra", { guifg = colors.common.base15, guibg = colors.common.base02 })
    hi("StatusLineFilenameExtraRight", { guifg = colors.common.base15, guibg = colors.common.base01 })
    hi("StatusLinePositionLastExtra", { guifg = colors.common.base01, guibg = colors.common.base15 })
    hi("StatusLineLSPDone", { guifg = colors.common.base14, guibg = colors.common.base01 })
    hi("StatusLineLSPClients", { guibg = colors.common.base01, guifg = colors.common.base13 })
    hi("StatusLineLSPExtra", { guifg = colors.common.base03, guibg = colors.common.base01 })
    hi("StatusLineLSPExtraExtra", { guifg = colors.common.base03, guibg = colors.shades.shade06 })
    hi("StatusLineLSPDark", { guifg = colors.syntax.color08, guibg = colors.common.base01 })
    hi("StatusLineLSPReverse", { guibg = colors.shades.shade06, guifg = colors.common.base01 })
    hi("StatusLineGitBranch", { guifg = colors.common.base12, guibg = colors.common.base02, gui = "bold" })
    hi("StatusLineGitAdd", { guifg = colors.common.base14, guibg = colors.common.base02, gui = "bold" })
    hi("StatusLineGitDelete", { guifg = colors.common.base11, guibg = colors.common.base02 })
    hi("StatusLineGitChange", { guifg = colors.common.base15, guibg = colors.common.base02 })
    hi("StatusLineGit", { guibg = colors.common.base02 })
    hi("StatusLineGitExtra", { guibg = colors.common.base01, guifg = colors.common.base02 })
    hi("StatusLineGitExtraExtra", { guibg = colors.shades.shade06, guifg = colors.common.base02 })
    hi("StatuslineNC", { guibg = colors.common.base00, guifg = colors.shades.shade01 })
    hi("StatusLineBulbON", {
      guifg = colors.common.base13,
      guibg = colors.common.base01,
      gui = "bold",
    })
    hi("StatusLineBulbOFF", {
      guifg = colors.common.base11,
      guibg = colors.common.base01,
      gui = "bold",
    })
    hi("StatusLineBulbLOAD", {
      guifg = colors.common.base15,
      guibg = colors.common.base01,
      gui = "bold",
    })
    hi("StatusLineDirname", {
      guifg = colors.common.base15,
      guibg = colors.common.base02,
      gui = "bold",
    })
  end,
}

-- vim:ft=lua
