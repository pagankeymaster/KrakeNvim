--- NOTE: Bling plugins. These are mostly useless. Adds components like
--- NOTE: urlshortner, minimaps, discord-rpc, scrollbar, etc.
local use = require("packer").use

use({
  "rktjmp/paperplanes.nvim",
  config = function()
    require("plugin.config.others.paperplanes")
  end,
  cmd = "PP",
})

use({
  "rinx/nvim-minimap",
  cmd = { "MinimapOpen", "MinimapClose", "MinimapRefresh", "MinimapToggle" },
})

use({ "tpope/vim-dispatch", cmd = { "Dispatch", "Make", "Focus", "Start" } })

use({
  "andweeb/presence.nvim",
  event = "InsertEnter",
  config = function()
    require("plugin.config.others.presence")
  end,
})

use("wakatime/vim-wakatime")

use({
  "KadoBOT/nvim-spotify",
  wants = "telescope.nvim",
  config = function()
    require("plugin.config.others.spotify")
  end,
  run = "make",
  cmd = { "SpotifyDevices", "Spotify" },
})

use({
  "karb94/neoscroll.nvim",
  cmd = {
    "NeoscrollEnablePM",
    "NeoscrollEnableGlobalPM",
    "NeoscrollDisablePM",
    "NeoscrollDisableGlobalePM",
    "NeoscrollEnableBufferPM",
    "NeoscrollDisableBufferPM",
  },
  config = function()
    require("plugin.config.others.neoscroll")
  end,
})

use({
  "Xuyuanp/scrollbar.nvim",
  event = { "WinScrolled", "VimResized", "QuitPre" },
  setup = function()
    require("plugin.config.others.scrollbar")
  end,
  module = "scrollbar",
})

-- vim:ft=lua
