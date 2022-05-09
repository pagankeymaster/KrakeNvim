local benchmark = require("plenary.benchmark")

benchmark("Statusline and friends, startup time.", {
  warmup = 5,
  runs = 25,
  fun = {
    {
      "position",
      function()
        require("statusline.modules.position")
      end,
    },
    {
      "main",
      function()
        require("statusline").setup()
      end,
    },
  },
})
