lua << EOF
theme.setup { scheme = "nord" }
require("utils.statusline").set_stl_float(require("statusline.config").MAIN.floating)
if not require("statusline.config").MAIN.floating then
  hi("StatusLineScopes", { guifg = colors.common.base13, guibg = colors.shades.shade06 })
else
  hi("StatusLineScopes", { guifg = colors.common.base13, guibg = colors.common.base00 })
end
hi("Pmenu", { guibg = colors.shades.shade09, guifg = colors.common.base04, blend = 2 })
hi("WhichKeyFloat", { guibg = colors.shades.shade09 })
EOF

" vim:ft=vim
