return {
  setup = function(colors)
    hi("NvimTreeRootFolder", { guifg = colors.common.base11, gui = "bold" })
    hi("NvimTreeGitDirty", { guifg = colors.common.base15 })
    hi("NvimTreeGitNew", { guifg = colors.common.base14, gui = "bold" })
    hi("NvimTreeImageFile", { guifg = colors.common.base13 })
    hi("NvimTreeExecFile", { guifg = colors.common.base07 })
    hi("NvimTreeSpecialFile", { guifg = colors.common.base12, gui = "bold" })
    hi("NvimTreeFolderName", { guifg = colors.common.base09 })
    hi("NvimTreeEmptyFolderName", { guifg = colors.common.base03 })
    hi("NvimTreeOpenedFolderName", { guifg = colors.common.base10 })
    hi("NvimTreeFolderIcon", { guifg = colors.common.base09 })
    hi("NvimTreeIndentMarker", { guifg = colors.shades.shade00 })
    hi("NvimTreeNormal", { guibg = colors.shades.shade08 })
    hi("NvimTreeRenamed", { guifg = colors.common.base07 })
    hi("NvimTreeSymlink", { guifg = colors.common.base13 })
    hi("NvimTreeVertSplit", { guifg = colors.common.base13, guibg = colors.common.base13 })
    hi("NvimTreeImageFile", { guifg = colors.common.base15 })
  end,
}

-- vim:ft=lua
