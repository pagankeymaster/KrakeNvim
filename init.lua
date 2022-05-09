-- setup vim options, auto-commands, user commands, etc.
require("settings")

local stdpath = vim.fn.stdpath
local exists = require("utils").exists

local pk_install = exists(stdpath("data") .. "/site/pack/packer/opt/packer.nvim")
local pk_compile = exists(stdpath("config") .. "/lua/_compiled.lua")

-- bootstrap
-- if packer doesn't exists then clone and generate plugins spec
-- if packer plugin spec file doesn't exist then generate it
if not pk_install or not pk_compile then
  require("plugins")
end

-- Load plugin specs and statusline
pcall(require, "configs.core.impatient")
require("statusline").setup()

-- vim:ft=lua
