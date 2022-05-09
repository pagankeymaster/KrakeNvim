local colors = require("utils.theming").get_active_theme()

return {
  ["StatusLineDirnameReverse"] = { guifg = colors.common.base02, guibg = colors.common.base01 },
  ["StatusLineFilenameExtra"] = { guifg = colors.common.base15, guibg = colors.common.base02 },
  ["StatusLineFilenameExtraRight"] = { guifg = colors.common.base15, guibg = colors.common.base01 },
  ["StatusLinePositionLastExtra"] = { guifg = colors.common.base01, guibg = colors.common.base15 },
  ["StatusLineLSPDone"] = { guifg = colors.common.base14, guibg = colors.common.base01 },
  ["StatusLineLSPClients"] = { guibg = colors.common.base01, guifg = colors.common.base13 },
  ["StatusLineLSPExtra"] = { guifg = colors.common.base03, guibg = colors.common.base01 },
  ["StatusLineLSPExtraExtra"] = { guifg = colors.common.base03, guibg = colors.shades.shade06 },
  ["StatusLineLSPDark"] = { guifg = colors.syntax.color08, guibg = colors.common.base01 },
  ["StatusLineLSPReverse"] = { guibg = colors.shades.shade06, guifg = colors.common.base01 },
  ["StatusLineGitBranch"] = { guifg = colors.common.base12, guibg = colors.common.base02, gui = "bold" },
  ["StatusLineGitAdd"] = { guifg = colors.common.base14, guibg = colors.common.base02, gui = "bold" },
  ["StatusLineGitDelete"] = { guifg = colors.common.base11, guibg = colors.common.base02 },
  ["StatusLineGitChange"] = { guifg = colors.common.base15, guibg = colors.common.base02 },
  ["StatusLineGit"] = { guibg = colors.common.base02 },
  ["StatusLineGitExtra"] = { guibg = colors.common.base01, guifg = colors.common.base02 },
  ["StatusLineGitExtraExtra"] = { guibg = colors.shades.shade06, guifg = colors.common.base02 },
  ["StatuslineNC"] = { guibg = colors.common.base00, guifg = colors.shades.shade01 },
  ["StatusLineBulbON"] = {
    guifg = colors.common.base13,
    guibg = colors.common.base01,
    gui = "bold",
  },
  ["StatusLineBulbOFF"] = {
    guifg = colors.common.base11,
    guibg = colors.common.base01,
    gui = "bold",
  },
  ["StatusLineBulbLOAD"] = {
    guifg = colors.common.base15,
    guibg = colors.common.base01,
    gui = "bold",
  },
  ["StatusLineDirname"] = {
    guifg = colors.common.base15,
    guibg = colors.common.base02,
    gui = "bold",
  },
}

-- vim:ft=lua
