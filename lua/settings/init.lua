require "settings.builtins" -- disable redundant vim-plugs
require "settings.abbrevs" -- abbreviations
require "settings.options" -- vim options
require "settings.globals" -- modify global vim variables
require "settings.autocmds" -- load auto-commands
require "settings.commands" -- load user-commands

vim.cmd "colo night" -- set initial colorscheme

-- schedule reading shadafile to improve the startup time
vim.opt.shadafile = "NONE"
vim.schedule(function()
  vim.opt.shadafile = ""
  vim.cmd "silent! rsh"
end)

-- vim:ft=lua
