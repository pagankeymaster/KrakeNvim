wo.spell = true
bo.spelllang = "en"

-- local node_modules = vim.loop.cwd() .. "/node_modules"
-- if not exists(node_modules) then
--   local Job = require "plenary.job"
--   Job:new({
--       command = "npm",
--       args = {
--         "install",
--         "remark",
--         "remark-cli",
--         "remark-toc",
--         "remark-preset-lint-consistent",
--         "remark-preset-lint-recommended",
--       },
--       cwd = vim.loop.cwd(),
--       on_exit = function(output, return_value)
--       end,
--       on_stderr = function(...)
--         vim.notify "ERROR: Please check your internet connection!"
--       end
--     })
--     :sync()
-- end
