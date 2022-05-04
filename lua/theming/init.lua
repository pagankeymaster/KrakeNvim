local I = {}

local theming = require "utils.theming"

--- This is the trigger function for setting up highlights.
-- @param options which will contain the colorscheme and other.
function I.setup(options)
  _G.colorscheme = options.scheme
  if vim.fn.exists "syntax_on" then
    vim.cmd "syntax reset"
  end
  colors = theming.get_active_scheme()
  theming.apply(colors)
end

return I

-- vim:ft=lua
