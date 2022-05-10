local benchmark = require("plenary.benchmark")
local packer = require("packer")

packer.loader("gitsigns.nvim")
packer.loader("nvim-lightbulb")
packer.loader("nvim-gps")

vim.cmd("LspStart")
vim.cmd("TSStart")

benchmark("Statusline and friends, startup time.", {
  warmup = 1,
  runs = 25,
  fun = {
    {
      "Position and line number",
      function()
        require("statusline.modules.position").position()
      end,
    },
    {
      "Diagnostics",
      function()
        require("statusline.modules.diagnostics").diagnostics()
      end,
    },
    {
      "Dirname",
      function()
        require("statusline.modules.dirname").dirname()
      end,
    },
    {
      "Filename",
      function()
        require("statusline.modules.filename").filename()
      end,
    },
    {
      "Git",
      function()
        require("statusline.modules.git").git()
      end,
    },
    {
      "Code actions indicator",
      function()
        require("statusline.modules.lightbulb").lightbulb()
      end,
    },
    {
      "Short mode",
      function()
        require("statusline.modules.mode").mode(true)
      end,
    },
    {
      "Mode",
      function()
        require("statusline.modules.mode").mode()
      end,
    },
    {
      "Treesitter",
      function()
        require("statusline.modules.treesitter").treesitter()
      end,
    },
    {
      "Full statusline",
      function()
        require("statusline").setup()
      end,
    },
  },
})
