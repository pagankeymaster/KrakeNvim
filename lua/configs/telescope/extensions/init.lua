local extensions = {}

for _, extension in ipairs({
  "command_palette",
  "bookmarks",
  "frecency",
  "media_files",
  "packer",
  "tele_tabby",
  "project",
  "file_browser",
  "fzf",
  "ui-select",
  "history",
  "bibtex",
}) do
  extensions[extension] = require("configs.telescope.extensions." .. extension)
end

return extensions

-- vim:ft=lua
