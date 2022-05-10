local present, searchbox = pcall(require, "searchbox")

if not present then
  return
end

local config = {
  popup = {
    relative = "win",
    position = {
      row = "4%",
      col = "95%",
    },
    size = "20%",
    border = {
      style = "solid",
      highlight = "FloatBorder",
      text = {
        bottom = "",
        bottom_align = "center",
        top = "",
      },
    },
    win_options = {
      winhighlight = "NormalFloat:NormalFloat",
    },
    buf_options = {
      filetype = "search",
    },
  },
}

searchbox.setup(config)

-- vim:ft=lua
