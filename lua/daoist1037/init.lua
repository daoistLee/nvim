vim.g.python3_host_prog = '/usr/bin/python3'
local options = require('daoist1037.options')
for o,v in pairs(options) do
   vim.opt[o] = v
end
local disable = require('daoist1037.disable')

local function map(mode, lhs, rhs, opts)
   local options = { noremap = true, silent = true }
   if opts then
      options = vim.tbl_extend("force", options, opts)
   end
   vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

vim.g.mapleader = ' '
vim.g.maplocalleader = ','

mappings = require('daoist1037.mappings')
for _,list in pairs(mappings) do
	map(list[1], list[2], list[3])
end

vim.cmd([[
    autocmd!
    autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
]])

vim.cmd "silent! command PackerCompile lua require 'daoist1037.pack' require('packer').compile()"
vim.cmd "silent! command PackerInstall lua require 'daoist1037.pack' require('packer').install()"
vim.cmd "silent! command PackerStatus lua require 'daoist1037.pack' require('packer').status()"
vim.cmd "silent! command PackerSync lua require 'daoist1037.pack' require('packer').sync()"
vim.cmd "silent! command PackerUpdate lua require 'daoist1037.pack' require('packer').update()"
vim.cmd "silent! command PackerClean lua require 'daoist1037.pack' require('packer').clean()"
-- vim.g.oceanic_next_terminal_bold = 1
-- vim.g.oceanic_next_terminal_italic = 1
-- vim.cmd "colorscheme OceanicNext"
vim.cmd "colorscheme zephyr"
--vim.g.onedark_style = 'cool'
--vim.g.onedark_transparent_bg = 1
-- vim.g.transparent_enabled="enable"
-- vim.g.material_style = 'darker'
-- vim.cmd [[ hi Normal ctermbg=NONE ]]
-- vim.cmd [[ hi LinrNr ctermbg=NONE ]]
-- vim.cmd [[ hi SignColumn ctermbg=NONE ]]

