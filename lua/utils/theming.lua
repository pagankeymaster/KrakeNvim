--- Theming related utility functions
-- @module utils.theming
-- @alias M

local M = {}

--- Returns the current theme colors.
-- @return table of highlight groups and their color values
function M.get_active_scheme()
  return require("theming.schemes." .. colorscheme)
end

--- Applies highlight to a group. Creates the group if it doesn't exists.
--- If a value doesn't exist within colors table then it is set to NONE.
-- @param group string name of the highlight group
-- @param colors table table of color categories such as guifg, guibg, guisp and gui
-- @tparam colors.foreground sets the foreground for the highlight.
-- @tparam colors.background sets the background for the highlight.
-- @tparam colors.decoration sets the decorations such as bold, italic for the highlight.
-- @tparam colors.foreground sets the foreground for the highlight.
-- @tparam colors.special sets the color of underline for the highlight.
-- @see help highlight-{guifg,guibg,gui,guisp,link,args,groups}
function M.highlight(group, colors)
  if colors.link then
    vim.highlight.link(group, colors.link, true)
    return
  end
  colors = vim.tbl_extend("keep", colors, { guifg = "NONE", guibg = "NONE" })
  vim.highlight.create(group, colors)
end

--- Main function for setting up the highlights.
-- @param options table additional options
-- @tparam options.disable table disabled plugin highlight groups
-- @todo Needs to be shortened and improved.
function M.apply(options)
  local enums = require "tables.theming"
  local base = enums.base -- contains native highlights
  local loaded_theme = M.get_active_scheme()

  -- plugin highlights
  local theme = enums.supports.theme -- ui related highlights
  local syntax = enums.supports.syntax -- syntax related highlights

  -- Helper for setting a highlight set. Like setting a chunk of
  -- highlight groups.
  -- @param group table same as the highlight function.
  local function set(groups)
    for group, highlights in pairs(groups) do
      M.highlight(group, highlights)
    end
  end

  -- Helper for checking if a plugin is excluded.
  -- @param plugin string name of the plugin that needs to be excluded.
  -- @return boolean true if in excluded list false, otherwise.
  local function disabled(plugin)
    if not options.disable then
      return false
    end

    for _, item in ipairs(options.disable) do
      if plugin == item then
        return true
      end
    end

    return false
  end

  -- set ui plugin highlights
  for name, config in pairs(theme) do
    if not disabled(name) then
      set(config(loaded_theme))
    end
  end

  -- set syntax plugin highlights
  for name, config in pairs(syntax) do
    if not disabled(name) then
      set(config(loaded_theme))
    end
  end

  base.terminal(loaded_theme) -- set terminal highlights
  set(base.ui(loaded_theme)) -- set native ui highlights
  set(base.statusline(loaded_theme)) -- set statusline highlights
  set(base.custom(loaded_theme)) -- set custom highlights
  set(base.lua(loaded_theme)) -- set lua syntax highlights
  set(base.html(loaded_theme)) -- set html syntax highlights
  set(base.general(loaded_theme)) -- set native syntax highlights
  set(base.markdown(loaded_theme)) -- set md syntax highlights
end

function M.prepare_plugin(plugin)
  return require("theming.groups.plugins." .. plugin)
end

function M.prepare_syntax(language)
  return require("theming.groups.syntax." .. language)
end

return M

-- vim:ft=lua
