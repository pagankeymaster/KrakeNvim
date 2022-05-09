--- NOTE: Contains plugins that this config is fully dependent on.
local use = require("packer").use

use({
  "wbthomason/packer.nvim",
  module = "packer",
  config = function()
    require("plugins")
  end,
})

use({ "lewis6991/impatient.nvim" })

-- vim:ft=lua
