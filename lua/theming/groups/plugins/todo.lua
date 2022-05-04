local hi = require("utils.theming").highlight

return {
  setup = function(colors)
    hi("TodoBgFIX", { guibg = colors.common.base13, guifg = colors.common.base01, gui = "bold" })
    hi("TodoBgHACK", { guibg = colors.common.base12, guifg = colors.common.base01, gui = "bold" })
    hi("TodoBgNOTE", { guibg = colors.common.base14, guifg = colors.common.base01, gui = "bold" })
    hi("TodoBgPERF", { guibg = colors.common.base09, guifg = colors.common.base01, gui = "bold" })
    hi("TodoBgTODO", { guibg = colors.common.base15, guifg = colors.common.base01, gui = "bold" })
    hi("TodoBgWARN", { guibg = colors.common.base11, guifg = colors.common.base01, gui = "bold" })
    hi("TodoBgIMPROVE", { guibg = colors.common.base07, guifg = colors.common.base01, gui = "bold" })
    hi("TodoBgCLEAN", { guibg = colors.common.base11, guifg = colors.common.base01, gui = "bold" })
    hi("TodoBgWANTS", { guibg = colors.common.base12, guifg = colors.common.base01, gui = "bold" })
    hi("TodoBgCHORE", { guibg = colors.common.base13, guifg = colors.common.base01, gui = "bold" })
    hi("TodoBgUPDATE", { guibg = colors.common.base15, guifg = colors.common.base01, gui = "bold" })
    hi("TodoFgFIX", { guifg = colors.common.base13, gui = "bold" })
    hi("TodoFgHACK", { guifg = colors.common.base12, gui = "bold" })
    hi("TodoFgNOTE", { guifg = colors.common.base14, gui = "bold" })
    hi("TodoFgPERF", { guifg = colors.common.base09, gui = "bold" })
    hi("TodoFgTODO", { guifg = colors.common.base15, gui = "bold" })
    hi("TodoFgWARN", { guifg = colors.common.base11, gui = "bold" })
    hi("TodoFgIMPROVE", { guifg = colors.common.base07, gui = "bold" })
    hi("TodoFgCLEAN", { guifg = colors.common.base11, gui = "bold" })
    hi("TodoFgUPDATE", { guifg = colors.common.base15, gui = "bold" })
    hi("TodoFgCHORE", { guifg = colors.common.base13, gui = "bold" })
    hi("TodoFgWANTS", { guifg = colors.common.base12, gui = "bold" })
    hi("TodoSignFIX", { guifg = colors.common.base13 })
    hi("TodoSignHACK", { guifg = colors.common.base12 })
    hi("TodoSignNOTE", { guifg = colors.common.base14 })
    hi("TodoSignPERF", { guifg = colors.common.base09 })
    hi("TodoSignTODO", { guifg = colors.common.base15 })
    hi("TodoSignWARN", { guifg = colors.common.base11 })
    hi("TodoSignIMPROVE", { guifg = colors.common.base08 })
    hi("TodoSignWANTS", { guifg = colors.common.base12 })
    hi("TodoSignUPDATE", { guifg = colors.common.base13 })
    hi("TodoSignCHORE", { guifg = colors.common.base14 })
    hi("TodoSignCLEAN", { guifg = colors.common.base15 })
  end,
}

-- vim:ft=lua
