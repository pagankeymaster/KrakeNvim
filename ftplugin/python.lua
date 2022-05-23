vim.bo.shiftwidth = 4
vim.bo.tabstop = 4

local paths = {
  string.format("%s/rofi/scripts/player.py", vim.env.XDG_CONFIG_HOME),
  string.format("%s/Dotfiles/nightly/config/rofi/scripts/player.py", vim.env.HOME),
}

-- special attention to rofi/../player.py
-- not making it a autocmd is intentional
vim.tbl_map(function(path)
  if vim.fn.expand("%:p") == path then
    vim.cmd("LspStart")
    vim.cmd("TSStart")
    return
  end
end, paths)

-- vim:ft=lua
