vim.cmd("colo radium")

require("setting.neovide") -- load neovide gui settings
require("setting.builtins") -- disable redundant vim-plugs
require("setting.abbrevs") -- abbreviations
require("setting.opts") -- vim options
require("setting.globals") -- modify global vim variables
require("setting.cmds") -- load user-commands
-- require("setting.autocmds") -- load auto-commands

-- schedule reading shadafile to improve the startup time
vim.opt.shadafile = "NONE"
vim.schedule(function()
  vim.opt.shadafile = ""
  vim.cmd("silent! rsh")
end)

-- vim:ft=lua
