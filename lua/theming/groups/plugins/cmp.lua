local hi = require("utils.theming").highlight

return {
  setup = function(colors)
    hi("CmpItemKindText", { guifg = colors.syntax.color16 })
    hi("CmpItemKindMethod", { guifg = colors.syntax.color00 })
    hi("CmpItemKindSnippet", { guifg = colors.syntax.color03 })
    hi("CmpItemKindFunction", { guifg = colors.syntax.color01 })
    hi("CmpItemKindConstructor", { guifg = colors.syntax.color06 })
    hi("CmpItemKindField", { guifg = colors.syntax.color04 })
    hi("CmpItemKindVariable", { guifg = colors.syntax.color02 })
    hi("CmpItemKindClass", { guifg = colors.syntax.color01 })
    hi("CmpItemKindInterface", { guifg = colors.syntax.color13 })
    hi("CmpItemKindModule", { guifg = colors.syntax.color13 })
    hi("CmpItemKindProperty", { guifg = colors.syntax.color20 })
    hi("CmpItemKindUnit", { guifg = colors.syntax.color19 })
    hi("CmpItemKindValue", { guifg = colors.syntax.color08 })
    hi("CmpItemKindEnum", { guifg = colors.syntax.color06 })
    hi("CmpItemKindKeyword", { guifg = colors.syntax.color15 })
    hi("CmpItemKindColor", { guifg = colors.syntax.color17 })
    hi("CmpItemKindFile", { guifg = colors.syntax.color10 })
    hi("CmpItemKindReference", { guifg = colors.syntax.color10 })
    hi("CmpItemKindFolder", { guifg = colors.syntax.color17 })
    hi("CmpItemKindEnumMember", { guifg = colors.syntax.color20 })
    hi("CmpItemKindConstant", { guifg = colors.syntax.color19 })
    hi("CmpItemKindStruct", { guifg = colors.syntax.color00 })
    hi("CmpItemKindEvent", { guifg = colors.syntax.color00 })
    hi("CmpItemKindOperator", { guifg = colors.syntax.color0 })
    hi("CmpItemKindTypeParameter", { guifg = colors.syntax.color05 })
    hi("CmpItemMenu", { guifg = colors.syntax.color10 })
    hi("CmpItemAbbr", { guifg = colors.syntax.color15 })
    hi("CmpItemAbbrMatchFuzzy", { guifg = colors.syntax.color00 })
    hi("CmpItemAbbrMatch", { guifg = colors.syntax.color06 })
    hi("CmpItemAbbrMatchDeprecated", { guifg = colors.syntax.color08 })
  end,
}

-- vim:ft=lua
