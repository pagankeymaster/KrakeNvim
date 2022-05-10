lua << EOF
require("theming").setup { theme = "radium" }
require("utils.statusline").set_stl_float(require("statusline.config").MAIN.floating)

local theming = require("utils.theming")
local hi = theming.highlight
local colors = theming.get_active_theme()

if not require("statusline.config").MAIN.floating then
  hi("StatusLineScopes", { guifg = colors.common.base15, guibg = colors.shades.shade06 })
else
  hi("StatusLineScopes", { guifg = colors.common.base15, guibg = colors.common.base00 })
end
EOF

" vim:ft=vim
