local present, null_ls = pcall(require, "null-ls")

if not present then
  return
end

local lsp_util = require("utils.lsp")

local formatting = null_ls.builtins.formatting
local code_actions = null_ls.builtins.code_actions
local completion = null_ls.builtins.completion
local diagnostics = null_ls.builtins.diagnostics
local hover = null_ls.builtins.hover

local sources = {
  formatting.stylua.with({
    condition = function(utils)
      return utils.root_has_file({ "stylua.toml", ".stylua.toml" })
    end,
  }),
  formatting.google_java_format.with({ extra_args = { "--aosp" } }),

  formatting.prettier,
  formatting.autopep8,
  formatting.black,
  formatting.clang_format,
  formatting.cmake_format,
  formatting.codespell,
  formatting.eslint,
  formatting.fish_indent,
  formatting.fixjson,
  formatting.isort,
  formatting.json_tool,
  formatting.latexindent,
  formatting.markdownlint,
  formatting.nginx_beautifier,
  formatting.nixfmt,
  formatting.qmlformat,
  formatting.rustfmt,
  formatting.rustywind,
  formatting.shellharden,
  formatting.shfmt,
  formatting.sqlformat,
  formatting.stylelint,
  formatting.taplo,
  formatting.trim_whitespace,
  formatting.uncrustify,
  formatting.astyle,

  code_actions.gitsigns,
  code_actions.shellcheck,
  code_actions.statix,
  code_actions.proselint,

  hover.dictionary,
  completion.luasnip,
  diagnostics.standardjs,
  diagnostics.chktex,
  diagnostics.stylelint,
  diagnostics.qmllint,
  diagnostics.shellcheck,
  diagnostics.vint,
  diagnostics.write_good,
  diagnostics.yamllint,
}

local helpers = require("null-ls.helpers")

local markdownlint = {
  method = null_ls.methods.DIAGNOSTICS,
  filetypes = { "markdown" },
  generator = null_ls.generator({
    command = "markdownlint",
    args = { "--stdin" },
    to_stdin = true,
    from_stderr = true,
    format = "line",
    check_exit_code = function(code, stderr)
      local success = code <= 1

      if not success then
        vim.notify(stderr)
      end

      return success
    end,
    on_output = helpers.diagnostics.from_patterns({
      {
        pattern = [[:(%d+):(%d+) [%w-/]+ (.*)]],
        groups = { "row", "col", "message" },
      },
      { pattern = [[:(%d+) [%w-/]+ (.*)]], groups = { "row", "message" } },
    }),
  }),
}

null_ls.register(markdownlint)

null_ls.setup({
  sources = sources,
  flags = lsp_util.flags(),
  on_attach = lsp_util.on_attach(),
  capabilities = lsp_util.capabilities(),
})

-- vim:ft=lua
