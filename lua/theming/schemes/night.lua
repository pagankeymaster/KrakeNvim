local N = {}

N.common = {
  ["base00"] = "#101317",
  ["base01"] = "#23242A",
  ["base02"] = "#27282d",
  ["base03"] = "#38393f",

  ["base04"] = "#dddddd",
  ["base05"] = "#d4d4d5",
  ["base06"] = "#ffffff",

  ["base07"] = "#54ced6",
  ["base08"] = "#70c0ba",
  ["base09"] = "#7ab0df",
  ["base10"] = "#b77ee0",

  ["base11"] = "#f87070",
  ["base12"] = "#36c692",
  ["base13"] = "#ffe59e",
  ["base14"] = "#79dcaa",
  ["base15"] = "#c397d8",
}

N.shades = {
  ["shade00"] = "#353538",
  ["shade01"] = "#2d2d30",
  ["shade02"] = "#252528",
  ["shade03"] = "#1f1f23",
  ["shade04"] = "#1e1e21",
  ["shade05"] = "#212123",
  ["shade06"] = "#17171b",
  ["shade07"] = "#19191c",
  ["shade08"] = "#1a1a1F",
  ["shade09"] = "#151519",
  ["shade10"] = "#141416",
  ["shade11"] = "#121214",
}

N.rainbow = {
  ["cobalt"] = "#7ab0df",
  ["pink"] = "#b77ee0",
  ["cyan"] = "#54ced6",
  ["green"] = "#79dcaa",
  ["yellow"] = "#ffe59e",
  ["orange"] = "#f87070",
  ["purple"] = "#c397d8",
}

N.modes = setmetatable({
  ["n"] = "#79dcaa",
  ["no"] = "#79dcaa",
  ["v"] = "#f87070",
  ["V"] = "#b77ee0",
  [""] = "#c397d8",
  ["s"] = "#CE878F",
  ["S"] = "#CE878F",
  [""] = "#CE878F",
  ["i"] = "#54ced6",
  ["ic"] = "#54ced6",
  ["R"] = "#70c0ba",
  ["Rv"] = "#70c0ba",
  ["c"] = "#ffe59e",
  ["cv"] = "#ffe59e",
  ["ce"] = "#ffe59e",
  ["r"] = "#36c692",
  ["rm"] = "#36c692",
  ["r?"] = "#DE878F",
  ["!"] = "#7ab0df",
  ["t"] = "#7ab0df",
}, {
  __index = function()
    return "#949494"
  end,
})

N.syntax = {
  ["color16"] = "#7ab0df",
  ["color09"] = "#c397d8",

  ["color00"] = "#f87070",
  ["color03"] = "#b77ee0",
  ["color02"] = "#36c692",
  ["color19"] = "#54ced6",

  ["color17"] = "#70c0ba",
  ["color20"] = "#619acc",

  ["color13"] = "#d66f6f",
  ["color01"] = "#e25656",
  ["color05"] = "#AF50C0",

  ["color12"] = "#79dcaa",
  ["color15"] = "#79dcaa",
  ["color04"] = "#7dcea6",

  ["color06"] = "#F186b5",
  ["color08"] = "#Fac767",

  ["color10"] = "#ffe59e",
  ["color11"] = "#ffe59e",

  ["color18"] = "#949494",
  ["color14"] = "#828282",
  ["color07"] = "#d4d4d5",
}

N.kinds = {
  ["Text"] = "#273a4e",
  ["Method"] = "#471d1d",
  ["Snippet"] = "#321b42",
  ["Function"] = "#3a1818",
  ["Constructor"] = "#3f1628",
  ["Field"] = "#193d2b",
  ["Variable"] = "#0c2d21",
  ["Class"] = "#331212",
  ["Interface"] = "#2b1e13",
  ["Module"] = "#2b1e13",
  ["Property"] = "#13172b",
  ["Unit"] = "#13252b",
  ["Value"] = "#302511",
  ["Enum"] = "#2b1319",
  ["Keyword"] = "#23132b",
  ["Color"] = "#0d2614",
  ["File"] = "#261f0b",
  ["Reference"] = "#261f0b",
  ["Folder"] = "#261f0b",
  ["EnumMember"] = "#13172b",
  ["Constant"] = "#103330",
  ["Struct"] = "#280f0f",
  ["Event"] = "#280f0f",
  ["Operator"] = "#231517",
  ["TypeParameter"] = "#2c1033",
}

return N

-- vim:ft=lua
