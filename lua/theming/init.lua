local I = {}

--- This is the trigger function for setting up highlights.
-- @param options which will contain the colorscheme and other.
function I.setup(options)
  _G.scheme = options.scheme
  if vim.fn.exists("syntax_on") then
    vim.cmd("syntax reset")
  end
  local theming = require("utils.theming")
  theming.apply(theming.get_active_scheme())
end

return I

-- vim:ft=lua
