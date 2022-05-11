local colors = require("utils.theming").get_active_theme()

return {
  ["NvimTreeRootFolder"] = {
    guifg = colors.common.base11,
    gui = "bold",
  },
  ["NvimTreeGitDirty"] = {
    guifg = colors.common.base15,
  },
  ["NvimTreeCursorLine"] = {
    guifg = colors.syntax.color04,
    gui = "bold",
  },
  ["NvimTreeGitNew"] = {
    guifg = colors.common.base14,
    gui = "bold",
  },
  ["NvimTreeExecFile"] = {
    guifg = colors.common.base07,
  },
  ["NvimTreeSpecialFile"] = {
    guifg = colors.common.base12,
    gui = "bold",
  },
  ["NvimTreeFolderName"] = {
    guifg = colors.common.base09,
  },
  ["NvimTreeEmptyFolderName"] = {
    guifg = colors.common.base03,
  },
  ["NvimTreeOpenedFolderName"] = {
    guifg = colors.common.base10,
  },
  ["NvimTreeFolderIcon"] = {
    guifg = colors.common.base09,
  },
  ["NvimTreeIndentMarker"] = {
    guifg = colors.shades.shade00,
  },
  ["NvimTreeNormal"] = {
    guibg = colors.shades.shade11,
  },
  ["NvimTreeRenamed"] = {
    guifg = colors.common.base07,
  },
  ["NvimTreeSymlink"] = {
    guifg = colors.common.base13,
  },
  ["NvimTreeVertSplit"] = {
    guifg = colors.common.base00,
    guibg = colors.common.base00,
  },
  ["NvimTreeWinSeparator"] = {
    guifg = colors.common.base00,
    guibg = colors.common.base00,
  },
  ["NvimTreeImageFile"] = {
    guifg = colors.common.base15,
  },
  ["NvimTreeWindowPicker"] = {
    guifg = colors.common.base09,
    guibg = colors.common.base02,
    gui = "bold",
  },
}

-- vim:ft=lua
