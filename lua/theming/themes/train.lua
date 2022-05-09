local N = {}

N.common = {
  ["base00"] = "#",
  ["base01"] = "#",
  ["base02"] = "#",
  ["base03"] = "#",

  ["base04"] = "#",
  ["base05"] = "#",
  ["base06"] = "#",

  ["base07"] = "#",
  ["base08"] = "#",
  ["base09"] = "#",
  ["base10"] = "#",

  ["base11"] = "#",
  ["base12"] = "#",
  ["base13"] = "#",
  ["base14"] = "#",
  ["base15"] = "#",
}

N.shades = {
  ["shade00"] = "#",
  ["shade01"] = "#",
  ["shade02"] = "#",
  ["shade03"] = "#",
  ["shade04"] = "#",
  ["shade05"] = "#",
  ["shade06"] = "#",
  ["shade07"] = "#",
  ["shade08"] = "#",
  ["shade09"] = "#",
  ["shade10"] = "#",
  ["shade11"] = "#",
}

N.rainbow = {
  ["cobalt"] = "#",
  ["pink"] = "#",
  ["cyan"] = "#",
  ["green"] = "#",
  ["yellow"] = "#",
  ["orange"] = "#",
  ["purple"] = "#",
}

N.modes = setmetatable({
  ["n"] = "#",
  ["no"] = "#",
  ["v"] = "#",
  ["V"] = "#",
  [""] = "#",
  ["s"] = "#",
  ["S"] = "#",
  [""] = "#",
  ["i"] = "#",
  ["ic"] = "#",
  ["R"] = "#",
  ["Rv"] = "#",
  ["c"] = "#",
  ["cv"] = "#",
  ["ce"] = "#",
  ["r"] = "#",
  ["rm"] = "#",
  ["r?"] = "#",
  ["!"] = "#",
  ["t"] = "#",
}, {
  __index = function()
    return "#"
  end,
})

N.syntax = {
  ["color16"] = "#",
  ["color09"] = "#",

  ["color00"] = "#",
  ["color03"] = "#",
  ["color02"] = "#",
  ["color19"] = "#",

  ["color17"] = "#",
  ["color20"] = "#",

  ["color13"] = "#",
  ["color01"] = "#",
  ["color05"] = "#",

  ["color12"] = "#",
  ["color15"] = "#",
  ["color04"] = "#",

  ["color06"] = "#",
  ["color08"] = "#",

  ["color10"] = "#",
  ["color11"] = "#",

  ["color18"] = "#",
  ["color14"] = "#",
  ["color07"] = "#",
}

return N

-- vim:ft=lua
