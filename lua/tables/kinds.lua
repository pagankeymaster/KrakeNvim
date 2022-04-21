local M = {
  nvim_lua = " LUA",
  nvim_lsp = " LSP",
  tags = " TAG",
  zsh = " ZSH",
  fish = " FIS",
  path = " PTH",
  spell = " SPL",
  dictionary = " DIC",
  luasnip = " LSN",
  nvim_lsp_signature_help = " SGH",
  orgmode = " ORG",
  treesitter = " TSR",
  rg = " RIP",
  omni = " OMN",
  look = " LOK",
  calc = " CAL",
  emoji = " EMJ",
  tmux = " TMX",
  npm = " NPM",
  cmp_git = " GIT",
  latex_symbols = " TEX",
  nvim_lsp_document_symbol = " DSM",
  buffer = " BUF",
  cmdline = " CMD",
  gh_issues = " GHI",
  cmdline_history = " CMH",
  conventionalcommits = " CVC",
  pandoc_references = " PAN",
  digraphs = " DIG",
  greek = "GRK",
}

local N = {
  Text = " ",
  Method = " ",
  Snippet = " ",
  Function = " ",
  Constructor = " ",
  Field = " ",
  Variable = " ",
  Class = " ",
  Interface = " ",
  Module = " ",
  Property = " ",
  Unit = " ",
  Value = " ",
  Enum = " ",
  Keyword = " ",
  Color = " ",
  File = " ",
  Reference = " ",
  Folder = " ",
  EnumMember = " ",
  Constant = " ",
  Struct = " ",
  Event = " ",
  Operator = " ",
  TypeParameter = " ",
}

return {
  source = M,
  item = N,
}

-- vim:ft=lua
