return {
		{'i', 'jk', '<Esc>' },
		{'n', '<leader>fs', '<Cmd>w!<CR>' },
		-- {'n', '<leader>fq', '<Cmd>bd %<CR> <Cmd>q!<CR>' },

		{'n', '<leader>w\\', '<Cmd>vsp<CR><C-w><c-l>' },
		{'n', '<leader>w-', '<Cmd>sp<CR><C-w><c-k>' },
		{'n', '<leader>ww', '<C-w>w' },
		{'n', '<leader>wh', '<C-w>h' },
		{'n', '<leader>wj', '<C-w>j' },
		{'n', '<leader>wk', '<C-w>k' },
		{'n', '<leader>wl', '<C-w>l' },
		{'n', '<leader>wc', '<C-w>c' },
		{'n', '<backspace>', '<Cmd>nohl<CR>' },

		{'n', '<leader>ff', '<Cmd>Telescope find_files<CR>' },
		{'n', '<leader>fb', '<Cmd>Telescope buffers<CR>' },
		{'n', '<leader>fl', '<Cmd>Telescope live_grep<CR>' },
		{'n', '<leader>fh', '<Cmd>Telescope help_tags<CR>' },
		{'n', '<leader>fr', '<Cmd>Telescope oldfiles<CR>' },

		{'n', '<leader>fd', '<Cmd>edit /home/daoist/.config/nvim/init.lua<CR>' },
    {'n', '<leader>fq', '<Cmd>qall!<CR>' },
		{'n', '<leader><leader>w', '<Cmd>HopWord<CR>' },

		-- {'n', '<leader>nr', '<Cmd>NvimTreeRefresh<CR>' },
		{'n', '<leader>nt', '<Cmd>NvimTreeToggle<CR>' },
		{'n', '<leader>no', '<Cmd>NvimTreeFocus<CR>' },
		-- {'n', '<leader>nf', '<Cmd>NvimTreeFindFile<CR>' },

    {'n', '<leader>ci', '<Plug>kommentary_motion_increase' },
    {'n', '<leader>cd', '<Plug>kommentary_motion_decrease' },

    {'n', '<leader>pi', '<Cmd>PackerInstall<CR>' },
    {'n', '<leader>pc', '<Cmd>PackerCompile<CR>' },
    {'n', '<leader>ps', '<Cmd>PackerStatus<CR>' },
    {'n', '<leader>pc', '<Cmd>PackerClean<CR>' },
	}
