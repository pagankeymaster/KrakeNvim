--- Theming related utility functions

local M = {}

--- Returns the current theme colors.
-- @return table of highlight groups and their color values
function M.get_active_theme()
  return require("theming.themes." .. theme)
end

--- Applies highlight to a group. Creates the group if it doesn't exists.
-- @see help highlight-{guifg,guibg,gui,guisp,link,args,groups}
function M.highlight(group, colors)
  if colors.link then
    vim.highlight.link(group, colors.link, true)
    return
  end
  colors = vim.tbl_extend("keep", colors, {
    guifg = "NONE",
    guibg = "NONE",
  })
  vim.highlight.create(group, colors)
end

return M

-- vim:ft=lua
