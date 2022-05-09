local exists = require("utils").exists
local notify = require("utils.neovim").notify
local fn = vim.fn

local PACKER_BOOTSTRAP = false

local PACKER_INSTALL_PATH = fn.stdpath("data") .. "/site/pack/packer/opt/packer.nvim"
local PACKER_COMPILE_PATH = fn.stdpath("config") .. "/lua/_compiled.lua"

if not exists(PACKER_INSTALL_PATH) then
  notify("packer.nvim doesn't exist. Cloning...")
  PACKER_BOOTSTRAP = fn.system({
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    PACKER_INSTALL_PATH,
  })

  if not pcall(vim.cmd, "packadd packer.nvim") then
    notify("Check your internet connection.")
  end
end

if not exists(PACKER_COMPILE_PATH) then
  notify("Couldn't find plugin specifications. Syncing now...")
  PACKER_BOOTSTRAP = true
  pcall(vim.cmd, "packadd packer.nvim")
end

local packer = require("packer")
packer.init(require("configs.core.packer"))
packer.reset()

require("plugins.dev")
require("plugins.editing")
require("plugins.workflow")
require("plugins.lsp")
require("plugins.telescope")
require("plugins.utils")
require("plugins.treesitter")
require("plugins.core")
require("plugins.ui")
require("plugins.others")
require("plugins.cmp")
require("plugins.wellbeing")

if PACKER_BOOTSTRAP then
  packer.on_compile_done = function()
    notify({
      message = "Run :LspInstall and :TSStart",
      icon = " ",
      title = "KrakeNvim",
    })
  end
  packer.sync()
end

return setmetatable({}, {
  __index = function(_, operation)
    return packer[operation]
  end,
})

-- vim:ft=lua
