local present, lspconfig = pcall(require, "lspconfig")

if not present then
  return
end

local fn = vim.fn
local nv = require("utils.neovim")
local lsp = vim.lsp
local lsp_util = require("utils.lsp")

vim.diagnostic.config({
  virtual_text = { prefix = " ", source = "always" },
  signs = true,
  underline = true,
  update_in_insert = false,
  severity_sort = true,
  float = { source = "always" },
})

for server_name, server_config in pairs(require("tables.servers")) do
  local user_config = vim.tbl_extend("keep", {
    autostart = true,
    flags = lsp_util.flags(),
    capabilities = lsp_util.capabilities(),
    on_attach = lsp_util.on_attach(),
    handlers = lsp_util.handlers(),
  }, server_config or {})

  if server_name ~= "jdtls" then
    lspconfig[server_name].setup(user_config)
  else
    if vim.bo.filetype == "java" then
      local ok, jdtls = require("nvim-lsp-installer.servers").get_server("jdtls")
      if ok then
        user_config.cmd = jdtls:get_default_options().cmd
        local workspace = os.getenv("HOME") .. "/.workspaces/" .. fn.fnamemodify(fn.getcwd(), ":p:h:t")
        user_config.cmd[#user_config.cmd] = workspace
        require("jdtls").start_or_attach(user_config)
      end
    end
  end
end

nv.unalias("LoadNullLsp")
