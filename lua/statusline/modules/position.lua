--- Current line position STL module
local M = {}

local fn = vim.fn
local lsp = vim.lsp
local theming = require "utils.theming"
local colors = theming.get_active_scheme()

local config = require("statusline.config").position -- load position specific config
local util = require "utils.statusline" -- load STL specific utilities

--- Driver function for displaying the current line position in the STL
-- views current line / total lines as percentage
-- also displays an optional spinner
function M.position()
  local clients = config.buf_local_clients and lsp.buf_get_clients(0) or lsp.get_active_clients()
  local current_line = fn.line "." -- @see help line
  local total_lines = fn.line "$"
  local chars = config.spinners
  local line_ratio = current_line / total_lines
  local index = math.ceil(line_ratio * #chars)
  local position = math.ceil(line_ratio * 100)
  if position <= 10 then -- display a different icon if the cursor is at the bottom / nearing bottom
    position = config.top
  elseif position >= 90 then -- display another different icon if the cursor is at the top / nearing top
    position = config.bottom
  elseif config.icon then -- display a spinner icon
    position = chars[index] .. position .. "%%"
  end
  local loaded = packer_plugins and packer_plugins["gitsigns.nvim"].loaded
  local transition = {
    guifg = colors.common.base03,
    gui = "bold",
  }

  -- handle dynamic modules like lsp / lightbulb / git
  if loaded then
    transition.guibg = loaded and colors.common.base02 or colors.shades.shade06
  elseif #clients ~= 0 then
    transition.guibg = colors.common.base01
  else
    transition.guibg = colors.shades.shade06
  end
  theming.highlight("StatusLinePositionFirst", transition)

  local loaded_and_is_git = loaded and (util.git_branch() ~= "")
  return string.format(
    "%s%%#StatusLinePositionFirst#%s%%#StatusLinePositionReverse#%s%%#StatusLinePosition#%s%%#StatusLinePositionLast# %s%%#StatusLinePositionLastExtra#%s",
    loaded_and_is_git and " " or "", -- add an extra space once the git module is enabled which implies gitsigns.nvim is loaded
    config.style.right,
    config.style.right,
    position,
    config.style.right,
    config.extra
  )
end

return M

-- vim:ft=lua
