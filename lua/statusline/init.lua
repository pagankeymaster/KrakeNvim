--- Statusline main file

local hidden = require("tables.blacklisted").hidden -- load all filetypes where stl would be hidden
local set_colors = require("utils.statusline").set_colors -- load statusline specific utility function
local config = require "statusline.config" -- load the config file for the statusline

local modules = {} -- enabled modules
modules["mode"] = require("statusline.modules.mode")["mode"] -- displays vim-mode
modules["dirname"] = require("statusline.modules.dirname")["dirname"] -- displays cwd name
modules["filename"] = require("statusline.modules.filename")["filename"] -- displays current filename
modules["treesitter"] = require("statusline.modules.treesitter")["treesitter"] -- ts contexts (document symbol)
modules["diagnostics"] = require("statusline.modules.diagnostics")["diagnostics"] -- lsp diagnostics
modules["lightbulb"] = require("statusline.modules.lightbulb")["lightbulb"] -- indicator for code actions
modules["lsp"] = require("statusline.modules.lsp")["lsp"] -- lsp status
modules["git"] = require("statusline.modules.git")["git"] -- git related info
modules["position"] = require("statusline.modules.position")["position"] -- position of the cursor in the file

--- Truncator function.
-- If the size of the statusline component is greater than
-- configured window length then return an empty string, return the component string otherwise
-- @param module the component string
-- @see other component specific values are passed on by the ellipsis.
local function truncated(module, ...)
  if api.nvim_win_get_width(0) < config[module].truncate then
    return ""
  end
  return modules[module](...)
end

--- Main statusline function
-- @param state there are 5 states
-- active: the normal state of the statusline
-- inactive: the state of the statusline when filetype is within @{hidden}
-- small: this happens automatically.. when the window size is abnormally small
-- default: also happens automatically when none of the conditions apply
function __StatusLine(state)
  local mode = api.nvim_get_mode().mode
  local width = api.nvim_win_get_width(0)
  set_colors(mode)
  local combined = "%#StatusLineInactive#%=" .. truncated("mode", true) .. "%="

  if width < 17 then
    return combined .. modules.mode(true) .. "%="
  end

  -- NOTE: all of these modules is passed through the trancator in order to make the size dynamic
  if state == "active" then
    local left = table.concat {
      truncated "mode",
      truncated "dirname",
      truncated "filename",
      truncated "treesitter",
      "%#Statusline#",
    }
    local right = table.concat {
      "%=",
      truncated "diagnostics",
      truncated "lightbulb" .. truncated "lsp",
      truncated "git",
      truncated "position",
    }
    combined = left .. right
  elseif state == "inactive" then
    combined = "%#StatuslineNC#"
  end
  return combined
end

-- statusline augroup which makes the statusline persisten throughout buffers
augroup("StatusLine", {
  {
    events = { "WinEnter", "BufEnter", "FileType" },
    command = "setlocal statusline=%!v:lua.__StatusLine()",
    options = {
      patterns = hidden,
      desc = "Show the small statusline on specific filetypes",
    },
  },
  {
    events = { "WinEnter", "BufEnter" },
    command = "setlocal statusline=%!v:lua.__StatusLine('active')",
    options = {
      desc = "Show the active statusline on BufEnter and WinEnter",
    },
  },
  {
    events = { "WinLeave", "BufLeave" },
    command = "setlocal statusline=%!v:lua.__StatusLine('inactive')",
    options = {
      desc = "Hide the statusline on leaving the current window, i.e. moving onto a floating window for instance",
    },
  },
})

-- vim:ft=lua
