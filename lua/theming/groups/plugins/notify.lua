local hi = require("utils.theming").highlight

return {
  setup = function(colors)
    hi("NotifyINFOBody", { guibg = colors.shades.shade08, guifg = colors.common.base09 })
    hi("NotifyINFOBody2", { link = "NotifyINFOBody" })
    hi("NotifyINFOBorder", { guibg = colors.shades.shade08, guifg = colors.shades.shade08 })
    hi("NotifyINFOBorder2", { link = "NotifyINFOBody" })
    hi("NotifyINFOIcon", { guifg = colors.common.base15 })
    hi("NotifyINFOIcon2", { guifg = colors.common.base09 })
    hi("NotifyINFOTitle", { guifg = colors.common.base08, gui = "bold" })
    hi("NotifyINFOTitle2", { guifg = colors.common.base08, gui = "bold" })
    hi("NotifyLogTime", { guifg = colors.common.base08, gui = "bold" })
    hi("NotifyLogTitle", { guifg = colors.common.base08, gui = "bold" })
    hi("NotifyWARNBody", { guifg = colors.common.base01, guibg = colors.common.base13 })
    hi("NotifyWARNIcon", { guifg = colors.common.base12, guibg = colors.common.base13 })
    hi("NotifyWARNTitle", { guifg = colors.common.base01, guibg = colors.common.base13, gui = "bold" })
    hi("NotifyWARNBorder", { guifg = colors.common.base13, guibg = colors.common.base13 })
    hi("NotifyDebugBody", { guifg = colors.common.base01, guibg = colors.common.base15 })
    hi("NotifyDebugIcon", { guifg = colors.common.base11, guibg = colors.common.base15 })
    hi("NotifyDebugTitle", { guifg = colors.common.base01, guibg = colors.common.base15, gui = "bold" })
    hi("NotifyDebugBorder", { guifg = colors.common.base15, guibg = colors.common.base15 })
    hi("NotifyERRORBody", { guibg = colors.common.base01, guifg = colors.common.base11 })
    hi("NotifyERRORIcon", { guifg = colors.common.base08, guibg = colors.common.base01 })
    hi("NotifyERRORTitle", { guibg = colors.common.base01, guifg = colors.common.base11, gui = "bold" })
    hi("NotifyERRORBorder", { guibg = colors.common.base01, guifg = colors.common.base01 })
    hi("NotifyTRACEBody", { guifg = colors.common.base01, guibg = colors.common.base10 })
    hi("NotifyTRACEIcon", { guifg = colors.common.base14, guibg = colors.common.base10 })
    hi("NotifyTRACETitle", { guifg = colors.common.base01, guibg = colors.common.base10, gui = "bold" })
    hi("NotifyTRACEBorder", { guifg = colors.common.base10, guibg = colors.common.base10 })
  end,
}

-- vim:ft=lua
