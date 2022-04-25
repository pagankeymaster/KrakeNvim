<div align="center">

# nvim-config

![Lines of code](https://img.shields.io/tokei/lines/github/pagankeymaster/KrakenVim?color=%2381A1C1&label=LINES/Bloat&logo=BookStack&logoColor=%2381A1C1&style=for-the-badge)
![GitHub repo size](https://img.shields.io/github/repo-size/pagankeymaster/KrakenVim?color=red&label=SIZE&logo=serverless&logoColor=red&style=for-the-badge)
![Repo License](https://img.shields.io/badge/LICENSE-GPL--3.0-%2388c0d0?style=for-the-badge&logo=GNU)
![GitHub repo file count](https://img.shields.io/github/directory-file-count/pagankeymaster/KrakenVim?color=%23ad85a6&logo=files&logoColor=%23ad85a6&style=for-the-badge)

```txt
---Startuptime---
035.291 (avg) with [160 Plugs]
```

`vim-polyglot` will be removed once
`filetype.lua` becomes a bit less buggy.
</div>

## Installation
Well, there isn't much of an installation proceduere for this. You would just clone this and open neovim.
Anyways, just for the sake of it I'll provide you with some installation instructions.
```sh
$ git clone --depth 1 https://github.com/pagankeymaster/nvim-config.git ~/.config/nvim
$ nvim
```
You can use symbolic links as well.
```sh
$ git clone --depth 1 https://github.com/pagankeymaster/nvim-config.git ~/Dotfiles/nvim-config
$ ln -s ~/Dotfiles/nvim-config ~/.config/nvim
$ nvim
```

## Keybindings
The following are some notable default mappings that come with my config.

### Launchers and Color illustrators

| **Keybind**     | **Action**                            | **Description**                                                             |
|-----------------|---------------------------------------|-----------------------------------------------------------------------------|
| `<Leader>l<CR>` | `LspStart`                            | Starts the LSP server.                                                      |
| `<Leader>T`     | `TSStart`                             | Starts the TreeSitter plugin.                                               |
| `<Leader>L`     | `TSStart LspStart require"telescope"` | Starts LSP, TS and loads Telescope all at once.                             |
| `<F3>`          | `ColorizerToggle`                     | Enables colorizer so to get a visual representation of the hex color codes. |
| `<Leader>k<F1>` | `ColorToggle`                         | Same as `<F3>` but this one supports HSL, ANSI, RGB, etc.                     |

### Git

| **Keybind**         | **Action**                                       |
|---------------------|--------------------------------------------------|
| `<Leader><Leader>j` | Next Git Hunk                                    |
| `<Leader><Leader>k` | Previous Git Hunk                                |
| `<Leader><Leader>h` | Highlights Git number column                     |
| `<Leader><Leader>d` | Shows Git Diff                                   |
| `<Leader><Leader>L` | Opens up `lazygit` in a floating terminal buffer |

## Statusline
Coming soon...

## Debuggers
Coming soon...

## Showcase
Following are various screenshots of this configuration is action. Enjoy!

### nvim-tree.lua
![nvim-tree.lua](./assets/nvim-tree.png) 

### which-key.nvim
![which-key.nvim](./assets/which-key.png) 

### SymbolsOutline.nvim 
![SymbolsOutline.nvim](./assets/outline.png)

### Completion by nvim-cmp
![nvim-cmp](./assets/cmp.png)

### `vim.notify` backend by nvim-notify
![nvim-cmp](./assets/notify.png)

### Focus with twilight.nvim
![twilight.nvim](./assets/twilight.gif)

### FZF though git, files, clipboards, etc using telescope.nvim
![telescope.nvim](./assets/telescope.gif)

### Edit without any distractions using TruZen.nvim
![TrueZen.nvim](./assets/truezen.png)

### Brightness control in Neovim
![Glow.nvim](./assets/glow.gif)

### Treesitter playground extension
![ts-playground.nvim](./assets/playground.gif)

### Toggle terminals
![ToggleTerm.nvim](./assets/toggleterm.gif) 

### URL Shortner
![url-shortner](./assets/url-shortener.gif) 

### Code file host
![code-host](./assets/paperplanes.gif) 

### Read, Write and Change reference highlights
![lsp-reference-hl](./assets/lsp-reference.gif) 

More coming soon...

## Todos
Coming soon...

## End goals
Coming soon...

## Not goals
Coming soon...

---

<div align="center">

## License
This project is licensed under [GPL--3.0](./LICENSE.txt).

</div>

<!--
  vim:ft=markdown
-->
