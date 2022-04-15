local M = {}

local function use(plugin)
  table.insert(M, plugin)
end

use {
  "rktjmp/paperplanes.nvim",
  config = function()
    require "configs.others.paperplanes"
  end,
  cmd = "PP"
}

use {
  "rinx/nvim-minimap",
  cmd = { "MinimapOpen", "MinimapClose", "MinimapRefresh", "MinimapToggle" },
}

use { "tpope/vim-dispatch", cmd = { "Dispatch", "Make", "Focus", "Start" } }

use {
  "andweeb/presence.nvim",
  event = "InsertEnter",
  config = function()
    require "configs.others.presence"
  end,
}

use "wakatime/vim-wakatime"

use {
  "KadoBOT/nvim-spotify",
  wants = "telescope.nvim",
  config = function()
    require "configs.others.spotify"
  end,
  run = "make",
  cmd = { "SpotifyDevices", "Spotify" },
}

use {
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
    require "configs.others.neoscroll"
  end,
}

use {
  "Xuyuanp/scrollbar.nvim",
  event = { "WinScrolled", "VimResized", "QuitPre" },
  setup = function()
    require "configs.others.scrollbar"
  end,
  module = "scrollbar",
}

return M

-- vim:ft=lua
