--- NOTE: This file contains all completion related plugins.
local use = require("packer").use

use({
  "hrsh7th/nvim-cmp",
  config = function()
    require("plugin.config.cmp")
  end,
  event = { "InsertEnter", "CmdlineEnter" },
})

use({
  "tamago324/cmp-zsh",
  after = "nvim-cmp",
  config = function()
    require("plugin.config.cmp.zsh")
  end,
})

use({
  "uga-rosa/cmp-dictionary",
  wants = "nvim-cmp",
  ft = { "text", "txt", "plaintex", "plaintext", "tex", "markdown" },
  config = function()
    require("plugin.config.cmp.dictionary")
  end,
})

use({
  "L3MON4D3/LuaSnip",
  after = "nvim-cmp",
  config = function()
    require("plugin.config.cmp.luasnip")
  end,
})

use({
  "windwp/nvim-autopairs",
  config = function()
    require("plugin.config.cmp.autopairs")
  end,
  event = "InsertEnter",
})

use({
  "petertriho/cmp-git",
  wants = "nvim-cmp",
  config = function()
    require("plugin.config.cmp.git")
  end,
  opt = true,
})

use({
  "hrsh7th/cmp-nvim-lsp-document-symbol",
  after = { "nvim-cmp", "nvim-lspconfig" },
})

use({
  "hrsh7th/cmp-nvim-lsp-signature-help",
  after = { "nvim-cmp", "nvim-lspconfig" },
})

use({ "dmitmel/cmp-cmdline-history", after = "nvim-cmp", event = "CmdlineEnter" })

use({
  "quangnguyen30192/cmp-nvim-tags",
  wants = "nvim-cmp",
  ft = {
    "htnl",
    "xml",
    "markdown",
    "svelte",
    "tsx",
    "js",
    "javascript",
    "typescript",
    "tsx",
  },
})

use({
  "David-Kunz/cmp-npm",
  wants = "nvim-cmp",
  ft = "package.json",
})

use({ "andersevenrud/cmp-tmux", wants = "nvim-cmp", ft = "tmux" })

use({
  "hrsh7th/cmp-emoji",
  wants = "nvim-cmp",
  ft = { "tex", "markdown", "txt", "plaintext", "plaintex" },
})

use({
  "hrsh7th/cmp-nvim-lsp",
  config = function()
    require("plugin.config.cmp.lsp")
  end,
  opt = true,
})

use({ "hrsh7th/cmp-calc", after = "nvim-cmp" })

use({ "octaltree/cmp-look", after = "nvim-cmp" })

use({ "f3fora/cmp-spell", after = "nvim-cmp" })

use({ "hrsh7th/cmp-omni", after = "nvim-cmp" })

use({ "lukas-reineke/cmp-rg", after = "nvim-cmp" })

use({ "ray-x/cmp-treesitter", after = { "nvim-treesitter", "nvim-cmp" } })

use({ "hrsh7th/cmp-nvim-lua", after = "nvim-cmp" })

use({ "kdheepak/cmp-latex-symbols", wants = "nvim-cmp", ft = "tex" })

use({ "saadparwaiz1/cmp_luasnip", after = { "LuaSnip", "nvim-cmp" } })

use({ "hrsh7th/cmp-cmdline", wants = "nvim-cmp", event = "CmdlineEnter" })

use({ "hrsh7th/cmp-buffer", wants = "nvim-cmp", event = "InsertEnter" })

use({ "hrsh7th/cmp-path", wants = "cmp-buffer", keys = { { "i", "/" } } })

use({ "dmitmel/cmp-digraphs", after = "nvim-cmp" })

use({ "davidsierradz/cmp-conventionalcommits", after = "cmp-buffer" })

use({ "max397574/cmp-greek", after = "nvim-cmp" })

use({ "jc-doyle/cmp-pandoc-references", ft = "markdown", wants = "nvim-cmp" })

-- vim:ft=lua
