local present, installer = pcall(require, "nvim-lsp-installer")

if not present then
  return
end

local fn = vim.fn
local nv = require("utils.neovim")
local lsp = vim.lsp

local servers = {
  ["bashls"] = {},
  ["jdtls"] = require("configs.lsp.servers.jdtls"),
  ["jsonls"] = require("configs.lsp.servers.jsonls"),
  ["yamlls"] = {},
  ["pyright"] = {},
  ["sumneko_lua"] = require("configs.lsp.servers.sumneko_lua"),
  ["cssls"] = {},
  ["texlab"] = require("configs.lsp.servers.texlab"),
  ["ltex"] = {},
  ["stylelint_lsp"] = {},
  ["emmet_ls"] = require("configs.lsp.servers.emmet_ls"),
  ["awl_ls"] = {},
  ["tailwindcss"] = {},
  ["grammarly"] = {},
  ["html"] = {},
  ["zk"] = {},
  ["groovyls"] = {},
  ["reason_ls"] = {},
  ["vimls"] = {},
}

local function format(buffer)
  lsp.buf.format({
    timeout_ms = 3000, -- NOTE: Ignored if async is true.
    async = true,
    bufnr = buffer,
    filter = function(clients)
      return vim.tbl_filter(function(client)
        if vim.bo.filetype == "lua" then
          if client.name == "sumneko_lua" then
            return false
          end
          return client.name == "null-ls"
        end
        if client.name == "pyright" then
          return false
        end
        return true
      end, clients)
    end,
  })
end

local function on_attach(client, buffer)
  require("mappings.lsp").setup(client, buffer)
  require("configs.lsp.autocmds").setup(client, buffer)
  require("configs.lsp.commands").setup(client, buffer)
  require("configs.lsp.icons").setup(client, buffer)

  if client.supports_method("textDocument/formatting") then
    nv.buf_alias(buffer, "Format", function()
      format(buffer)
    end)
  end

  nv.notify({
    message = "LSP has been initialised.",
    title = "LSP: " .. client.name,
    icon = " ",
  })
end

require("configs.lsp.schema")

vim.diagnostic.config({
  virtual_text = { prefix = " ", source = "always" },
  signs = true,
  underline = true,
  update_in_insert = false,
  severity_sort = true,
  float = { source = "always" },
})

installer.settings({
  ui = {
    icons = {
      server_installed = "",
      server_pending = "◍",
      server_uninstalled = "ﮁ",
    },
    keymaps = {
      toggle_server_expand = "<CR>",
      install_server = "i",
      update_server = "u",
      update_all_servers = "U",
      uninstall_server = "X",
    },
  },
  install_root_dir = fn.stdpath("data") .. "/servers",
  log_level = vim.log.levels.INFO,
  max_concurrent_installers = 5,
})

for name, _ in pairs(servers) do
  local found, server = installer.get_server(name)
  ---@diagnostic disable-next-line: undefined-field
  if found and not server:is_installed() then
    nv.notify({
      message = "Installing " .. name,
      icon = "",
      title = "nvim-lsp-installer",
    })
    ---@diagnostic disable-next-line: undefined-field
    server:install()
  end
end

installer.on_server_ready(function(server)
  local capabilities = require("configs.lsp.capabilities")
  local flags = { debounce_text_changes = 150 }
  local handlers = require("configs.lsp.handlers")

  local server_config = vim.tbl_extend("keep", {
    flags = flags,
    capabilities = capabilities,
    on_attach = on_attach,
    handlers = handlers,
  }, servers[server.name] or {})

  if server.name ~= "jdtls" then
    ---@diagnostic disable-next-line: undefined-field
    server:setup(server_config)
  else
    if vim.bo.filetype == "java" then
      local _, jdtls = require("nvim-lsp-installer.servers").get_server("jdtls")
      ---@diagnostic disable-next-line: undefined-field
      server_config.cmd = jdtls:get_default_options().cmd
      local workspace = os.getenv("HOME") .. "/.workspaces/" .. fn.fnamemodify(fn.getcwd(), ":p:h:t")
      server_config.cmd[#server_config.cmd] = workspace
      require("jdtls").start_or_attach(server_config)
    end
  end
end)

require("configs.lsp.servers.null-ls").setup(on_attach)

-- vim:ft=lua
