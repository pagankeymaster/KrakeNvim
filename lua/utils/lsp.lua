--- LSP utility functions

local M = {}

--- Applies highlights and defines the icon to LSP symbols like
--- hints, warn, ... they are displayed at the number column.
-- @param group the highlight group of the symbol icon.
-- @param text_group the highlight group of the symbol text.
-- @param icon the symbol glyph
-- @see help sign_define
-- @see help vim.diagnostic.severity
function M.lsp_signdef(group, icon, text_group)
  vim.fn.sign_define(group, { text = icon, texthl = text_group })
end

return M

-- vim:ft=lua
