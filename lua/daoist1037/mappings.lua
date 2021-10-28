return {
    {'i', 'jk', '<Esc>' },
--  {'n', '<leader>fs', '<Cmd>w!<CR>' },
--  -- {'n', '<leader>fq', '<Cmd>bd %<CR> <Cmd>q!<CR>' },

--  {'n', '<leader>w\\', '<Cmd>vsp<CR><C-w><c-l>' },
--  {'n', '<leader>w-', '<Cmd>sp<CR><C-w><c-k>' },
--  {'n', '<leader>ww', '<C-w>w' },
--  {'n', '<leader>wh', '<C-w>h' },
--  {'n', '<leader>wj', '<C-w>j' },
--  {'n', '<leader>wk', '<C-w>k' },
--  {'n', '<leader>wl', '<C-w>l' },
--  {'n', '<leader>wc', '<C-w>c' },
 {'n', '<backspace>', '<Cmd>nohl<CR>' },

--  {'n', '<leader>fF', '<Cmd>Telescope find_files<CR>' },
--  {'n', '<leader>fb', '<Cmd>Telescope buffers<CR>' },
--  {'n', '<leader>fg', '<Cmd>Telescope live_grep<CR>' },
--  {'n', '<leader>fh', '<Cmd>Telescope help_tags<CR>' },
--  {'n', '<leader>fr', '<Cmd>Telescope oldfiles<CR>' },
--  {'n', '<leader>ff', '<Cmd>Telescope file_browser<CR>' },
--  {'n', '<leader>fl', '<Cmd>Telescope current_buffer_fuzzy_find<CR>' },

--  {'n', '<leader>fd', '<Cmd>edit /home/daoist/.config/nvim/init.lua<CR>' },
--  {'n', '<leader>fq', '<Cmd>qall!<CR>' },
--  {'n', '<leader><leader>w', '<Cmd>HopWord<CR>' },

--  -- {'n', '<leader>nr', '<Cmd>NvimTreeRefresh<CR>' },
--  {'n', '<leader>nt', '<Cmd>NvimTreeToggle<CR>' },
--  {'n', '<leader>no', '<Cmd>NvimTreeFocus<CR>' },
--  -- {'n', '<leader>nf', '<Cmd>NvimTreeFindFile<CR>' },


--  {'n', '<leader>pi', '<Cmd>PackerInstall<CR>' },
--  {'n', '<leader>pc', '<Cmd>PackerCompile<CR>' },
--  {'n', '<leader>ps', '<Cmd>PackerStatus<CR>' },
--  {'n', '<leader>pc', '<Cmd>PackerClean<CR>' },
 {'n', 'K', "<cmd>lua require('lspsaga.hover').render_hover_doc()<CR>" },
 {'n', 'gs', "<cmd>lua require('lspsaga.signaturehelp').signature_help()<CR>" },
 {'n', 'gr', "<cmd>lua require('lspsaga.rename').rename()<CR>" },
 {'n', 'gd', "<cmd>lua require'lspsaga.provider'.preview_definition()<CR>" },
 {'n', 'gh', "<cmd>lua require'lspsaga.provider'.lsp_finder()<CR>" },
 {'n', '<C-f>', "<cmd>lua require('lspsaga.action').smart_scroll_with_saga(1)<CR>" },
 {'n', '<C-b>', "<cmd>lua require('lspsaga.action').smart_scroll_with_saga(1)<CR>" },
--  {'n', '<A-d>', "<cmd>lua require('lspsaga.floaterm').open_float_terminal()<CR>" },
--  {'t', '<A-d>', "<C-\\><C-n>:lua require('lspsaga.floaterm').close_float_terminal()<CR>" },
--  {'n', '<leader>ld', "<cmd>lua require'lspsaga.diagnostic'.show_line_diagnostics()<CR>" },
--  {'n', '<leader>lc', "<cmd>lua require'lspsaga.diagnostic'.show_cursor_diagnostics()<CR>" },



}
