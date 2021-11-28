# nvim
neovim config in lua

# TOC 
- [Options](#Options)
- [Disable](#Disable)
- [Plugins](#Plugins)
- [Mappings](#Mappings)

## Options
```lua
relativenumber = true,
number = true,
cursorline = true,
cursorcolumn = true,
showmode = true,
showcmd = true,
mouse = a,
autoindent = true,
tabstop = 2,
shiftwidth = 4,
expandtab = true,
textwidth = 80,
wrap = true,
linebreak = true,
wrapmargin = 2,
scrolloff = 5,
sidescrolloff = 15,
laststatus = 2,
ruler = true,
showmatch = true,
showtabline = 2,
hlsearch = true,
ignorecase = true,
encoding = "utf-8",
listchars="tab:>-,space:▯",
autochdir = true,
autoread = true,
wildmenu = true,
background = "dark",
timeout = true,
ttimeout = true,
timeoutlen = 500,
ttimeoutlen = 0,
termguicolors=true,
gcr = [[n-v-c:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor,]]..
      [[ve:ver35-Cursor,]]..
      [[o:hor50-Cursor,]]..
      [[i-ci:ver25-Cursor/lCursor,]]..
      [[r:hor50-Cursor/lCursor]],
completeopt = 'menuone,noinsert',
```

## Disable

```lua
  vim.g.loaded_gzip              = 1
  vim.g.loaded_tar               = 1
  vim.g.loaded_tarPlugin         = 1
  vim.g.loaded_zip               = 1
  vim.g.loaded_zipPlugin         = 1
  vim.g.loaded_getscript         = 1
  vim.g.loaded_getscriptPlugin   = 1
  vim.g.loaded_vimball           = 1
  vim.g.loaded_vimballPlugin     = 1
  vim.g.loaded_matchit           = 1
  vim.g.loaded_matchparen        = 1
  vim.g.loaded_2html_plugin      = 1
  vim.g.loaded_logiPat           = 1
  vim.g.loaded_rrhelper          = 1
  vim.g.loaded_netrw             = 1
  vim.g.loaded_netrwPlugin       = 1
  vim.g.loaded_netrwSettings     = 1
  vim.g.loaded_netrwFileHandlers = 1

```

## Plugins

```
~/.config/nvim/..
│  .git
│  ✗ lua
│ └  ✗ daoist1037
│   │  ✗ plugins_config
│   │ │  bufferline.lua
│   │ │  dashboard-nvim.lua
│   │ │  indent-guides.lua
│   │ │  kommentary.lua
│   │ │  lspsaga.lua
│   │ │  lualine.lua
│   │ │  nvim-autopairs.lua
│   │ │  ✗ nvim-cmp.lua
│   │ │  nvim-lspconfig.lua
│   │ │  ✗ nvim-tree.lua
│   │ │  nvim-treesitter.lua
│   │ │  nvim-ts-rainbow.lua
│   │ │  telescope.lua
│   │ └  ✗ which-key.lua
│   │  disable.lua
│   │  ✗ init.lua
│   │  ✗ mappings.lua
│   │  options.lua
│   └  ✗ pack.lua
│  ✗ plugin
│  init.lua
└ ✗ README.md
```

## Mapping

```lua
{'i', 'jk', '<Esc>' },
{'n', '<backspace>', '<Cmd>nohl<CR>' },
{'n', 'K', "<cmd>lua require('lspsaga.hover').render_hover_doc()<CR>" },
{'n', 'gs', "<cmd>lua require('lspsaga.signaturehelp').signature_help()<CR>" },
{'n', 'gr', "<cmd>lua require('lspsaga.rename').rename()<CR>" },
{'n', 'gd', "<cmd>lua require'lspsaga.provider'.preview_definition()<CR>" },
{'n', 'gh', "<cmd>lua require'lspsaga.provider'.lsp_finder()<CR>" },
["<leader>f"] = { name = "+file" },
["<leader>fF"] = { "<cmd>Telescope find_files<cr>", "Find File" },
["<leader>ff"] = { "<cmd>Telescope file_browser<cr>", "File browser" },
["<leader>fl"] = { "<cmd>Telescope current_buffer_fuzzy_find<cr>", "fuzzy search" },
["<leader>fr"] = { "<cmd>Telescope oldfiles<cr>", "Open Recent File" },
["<leader>fb"] = { "<cmd>Telescope buffers<cr>", "Find buffers" },
["<leader>fg"] = { "<cmd>Telescope live_grep<cr>", "Live grep" },
["<leader>fh"] = { "<cmd>Telescope help_tags<cr>", "help tags" },

["<leader>fs"] = { "<cmd>w!<cr>", "Save File" },
["<leader>fn"] = { "<cmd>enew<cr>", "New File" },
["<leader>fd"] = { "<cmd>edit ~/.config/nvim/lua/daoist1037/init.lua<cr>", "Edit init.lua" },

["<leader>w"] = { name = "+window" },
["<leader>wq"] = { "<Cmd>qall!<CR>", "window Exit" },
["<leader>wc"] = { "<Cmd>quit!<CR>", "window conceal" },
["<leader>ww"] = { "<C-w>w", "window next" },
["<leader>wh"] = { "<C-w>h", "window left" },
["<leader>wj"] = { "<C-w>j", "window down" },
["<leader>wk"] = { "<C-w>k", "window up" },
["<leader>wl"] = { "<C-w>l", "window right" },
["<leader>w-"] = { "<Cmd>sp<CR><C-w>j", "split" },
["<leader>w\\"] = { "<Cmd>vsp<CR><C-w>l", "vsplit" },

["<leader>n"] = { name = "+nvimtree" },
["<leader>nt"] = { "<Cmd>NvimTreeToggle<CR>", "NvimTree Toggle" },
["<leader>no"] = { "<Cmd>NvimTreeFocus<CR>", "NvimTree Focus" },


["<leader>p"] = { name = "+Packer" },

["<leader>pi"] = { "<Cmd>PackerInstall<CR>", "PackerInstall" },
["<leader>pc"] = { "<Cmd>PackerCompile<CR>", "PackerCompile" },
["<leader>ps"] = { "<Cmd>PackerStatus<CR>", "PackerStatus" },
["<leader>pC"] = { "<Cmd>PackerClean<CR>", "PackerClean" },

["<leader><leader>"] = { name = "+hop" },
["<leader><Leader>w"] = { "<cmd>lua require'hop'.hint_words()<cr>", "HopWord" },
["<leader><Leader>p"] = { "<cmd>lua require'hop'.hint_patterns()<cr>", "HopPattern" },
```

