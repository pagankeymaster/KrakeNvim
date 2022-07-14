-- This file has been generated by regen.py
-- Changes may be overwritten the next time 
-- configs are re-generated

local N = {}

N.common = {
  ["base00"] = "#151A1F",
  ["base01"] = "#2C3035",
  ["base02"] = "#292F35",
  ["base03"] = "#2E343A",

  ["base04"] = "#42484E",
  ["base05"] = "#BEBEBE",
  ["base06"] = "#BBBBBB",

  ["base07"] = "#B0B0B0",
  ["base08"] = "#AC8A8C",
  ["base09"] = "#c9938a",
  ["base10"] = "#ACA98A",

  ["base11"] = "#8AAC8B",
  ["base12"] = "#8AABAC",
  ["base13"] = "#7797B7",
  ["base14"] = "#948FB1",
  ["base15"] = "#AC8A8C",
}

N.shades = {
  ["shade00"] = "#565C62",
  ["shade01"] = "#50565C",
  ["shade02"] = "#474D53",
  ["shade03"] = "#42484E",
  ["shade04"] = "#2E343A",
  ["shade05"] = "#292F35",
  ["shade06"] = "#242A30",
  ["shade07"] = "#20262C",
  ["shade08"] = "#212528",
  ["shade09"] = "#1C2023",
  ["shade10"] = "#151B21",
  ["shade11"] = "#1A1F22",
  ["shade12"] = "#14181B",
}

N.rainbow = {
  ["cobalt"] = "#7EA4C9",
  ["pink"] = "#CC707D",
  ["cyan"] = "#87C6A7",
  ["green"] = "#77AD9F",
  ["yellow"] = "#C9A47E",
  ["orange"] = "#E28E6A",
  ["purple"] = "#AD8CCE",
}

N.modes = setmetatable({
  ["n"] = "#948FB1",
  ["no"] = "#AC8A8C",
  ["v"] = "#c9938a",
  ["V"] = "#AE9fCf",
  [""] = "#C795AE",
  ["s"] = "#AC8A8C",
  ["S"] = "#ACA98A",
  [""] = "#8AAC8B ",
  ["i"] = "#B0B0B0",
  ["ic"] = "#8AAC8B",
  ["R"] = "#C4C19E",
  ["Rv"] = "#ACA98A",
  ["c"] = "#A39EC4",
  ["cv"] = "#8AABAC",
  ["ce"] = "#8AABAC",
  ["r"] = "#8AAC8B",
  ["rm"] = "#70B2A0",
  ["r?"] = "#AEC795",
  ["t"] = "#C795AE",
}, {
  __index = function()
    return "#C795AE"
  end,
})

N.syntax = {
  ["color16"] = "#9AAFE6",
  ["color09"] = "#A39EC4",

  ["color00"] = "#C795AE",
  ["color03"] = "#8F8AAC",
  ["color02"] = "#9EC49F",
  ["color19"] = "#8AAC8B",

  ["color17"] = "#70B2A0",
  ["color20"] = "#7D9FC1",

  ["color13"] = "#E0987F",
  ["color01"] = "#CC707D",
  ["color05"] = "#AE9fCf",

  ["color12"] = "#B8D19F",
  ["color15"] = "#B1CA98",
  ["color04"] = "#AEC795",

  ["color06"] = "#C795AE",
  ["color08"] = "#C4C19E",

  ["color10"] = "#ACA98A",
  ["color11"] = "#C7AE95",

  ["color18"] = "#CBD0D5",
  ["color14"] = "#747C84",
  ["color07"] = "#C7CCD1",
}

return N

-- vim:ft=lua
