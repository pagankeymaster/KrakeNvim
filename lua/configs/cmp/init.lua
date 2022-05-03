local present, cmp = pcall(require, "cmp")

if not present then
  return
end

local kinds = require "tables.kinds"
local kind_icons = kinds.item
local kind_sources = kinds.source
local sources = require "tables.sources"
local source_normal = sources.normal
local source_cmdline = sources.cmdline
local snip = require "luasnip"

local cmp_fmt = {
  icon_only = function(entry, vim_item)
    vim_item.menu = kind_sources[entry.source.name]
    vim_item.kind = " " .. kind_icons[vim_item.kind] .. " "
    return vim_item
  end,
  full_info = function(entry, vim_item)
    vim_item.menu = kind_sources[entry.source.name]
    vim_item.kind = " " .. kind_icons[vim_item.kind] .. " " .. vim_item.kind .. " "
    return vim_item
  end,
}

local fmt_order = {
  { "kind", "abbr", "menu" },
  { "kind", "abbr" },
}

local config = {
  snippet = {
    expand = function(args)
      require("luasnip").lsp_expand(args.body)
    end,
  },
  mapping = cmp.mapping.preset.insert {
    ["<C-b>"] = cmp.mapping(cmp.mapping.scroll_docs(-4), { "i", "c" }),
    ["<C-f>"] = cmp.mapping(cmp.mapping.scroll_docs(4), { "i", "c" }),
    ["<C-y>"] = cmp.config.disable,
    ["<C-Space>"] = cmp.mapping(cmp.mapping.complete(), { "i", "c" }),
    ["<C-e>"] = cmp.mapping {
      i = cmp.mapping.abort(),
      c = cmp.mapping.close(),
    },
    ["<CR>"] = cmp.mapping.confirm {
      behavior = cmp.ConfirmBehavior.Replace,
      select = true,
    },
    ["<S-Tab>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      elseif snip.jumpable(-1) then
        api.nvim_feedkeys(api.nvim_replace_termcodes("<Plug>luasnip-jump-prev", true, true, true), "i", "")
      else
        fallback()
      end
    end, { "i", "s" }),
    ["<Tab>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      elseif snip.expand_or_jumpable() then
        api.nvim_feedkeys(api.nvim_replace_termcodes("<Plug>luasnip-expand-or-jump", true, true, true), "i", "")
      else
        fallback()
      end
    end),
    ["<C-l>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        return cmp.complete_common_string()
      end
      fallback()
    end, { "i", "c" }),
  },
  sources = cmp.config.sources(source_normal),
  window = {
    documentation = {
      border = "solid",
    },
    completion = {
      border = "solid",
    },
  },
  view = {
    entries = {
      name = "custom",
    },
  },
  formatting = {
    fields = fmt_order[1],
    format = cmp_fmt.icon_only,
  },
  experimental = {
    ghost_text = true,
  },
  completion = {
    completeopt = "menu,menuone,noselect",
  },
  sorting = {
    comparators = {
      cmp.config.compare.offset,
      cmp.config.compare.exact,
      cmp.config.compare.score,
      require("utils.plugins").cmp_under,
      cmp.config.compare.kind,
      cmp.config.compare.sort_text,
      cmp.config.compare.length,
      cmp.config.compare.order,
    },
  },
}

cmp.setup(config)

local cmdlines = {
  sources = cmp.config.sources(source_cmdline),
  mapping = cmp.mapping.preset.cmdline(),
  formatting = {
    format = cmp_fmt.icon_only,
  },
  entries = { name = "custom", selection_order = "near_cursor" },
}

for _, cmdtype in ipairs { ":", "/", "?", "@", "=" } do
  cmp.setup.cmdline(cmdtype, cmdlines)
end

local cmp_autopairs = require "nvim-autopairs.completion.cmp"
cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done { map_char = { tex = "" } })
cmp_autopairs.lisp[#cmp_autopairs.lisp + 1] = "fennel"

require "configs.cmp.issues"

-- vim:ft=lua
