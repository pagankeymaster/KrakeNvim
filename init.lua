-- setup vim options, auto-commands, user commands, etc.
require("settings")

local utils = require("utils")
local PACKER_INSTALL_PATH = vim.fn.stdpath("data") .. "/site/pack/packer/opt/packer.nvim"
local PACKER_COMPILE_PATH = vim.fn.stdpath("config") .. "/lua/_compiled.lua"

-- bootstrap
-- if packer doesn't exists then clone and generate plugins spec
-- if packer plugin spec file doesn't exist then generate it
if not utils.exists(PACKER_INSTALL_PATH) or not utils.exists(PACKER_COMPILE_PATH) then
  require("plugins")
end

-- Load plugin specs and statusline
pcall(require, "configs.core.impatient")
require("statusline")

-- vim:ft=lua
