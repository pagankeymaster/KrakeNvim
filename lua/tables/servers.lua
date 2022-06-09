-- TODO: Use plenary.scandir.scan_dir for this.
return {
  ["bashls"] = {},
  ["jdtls"] = require("plugin.config.lsp.servers.jdtls"),
  ["jsonls"] = require("plugin.config.lsp.servers.jsonls"),
  ["yamlls"] = {},
  ["pyright"] = {},
  ["sumneko_lua"] = require("plugin.config.lsp.servers.sumneko_lua"),
  ["cssls"] = {},
  ["texlab"] = require("plugin.config.lsp.servers.texlab"),
  ["ltex"] = {},
  ["stylelint_lsp"] = {},
  ["emmet_ls"] = require("plugin.config.lsp.servers.emmet_ls"),
  ["tailwindcss"] = {},
  ["grammarly"] = {},
  ["html"] = {},
  ["zk"] = {},
  ["reason_ls"] = {},
  ["vimls"] = {},
  ["clangd"] = {},
  ["rust_analyzer"] = {},
  ["sourcery"] = require("plugin.config.lsp.servers.sourcery"),
}
