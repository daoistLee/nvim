-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/daoist/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/daoist/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/daoist/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/daoist/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/daoist/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["bufferline.nvim"] = {
    config = { "\27LJ\2\n}\0\4\14\0\a\0\21'\4\0\0006\5\1\0\18\a\2\0B\5\2\4H\b\r�\a\b\2\0X\n\2�'\n\3\0X\v\5�\a\b\4\0X\n\2�'\n\5\0X\v\1�'\n\6\0\18\v\4\0\18\f\n\0\18\r\t\0&\4\r\vF\b\3\3R\b�L\4\2\0\b\b\fwarning\b\nerror\npairs\6 �\2\1\0\5\0\14\0\0176\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\3\0003\4\4\0=\4\5\3=\3\a\0025\3\t\0005\4\b\0=\4\n\0035\4\v\0=\4\f\3=\3\r\2B\0\2\1K\0\1\0\15highlights\23indicator_selected\1\0\2\nguifg\f#51afef\nguibg\f#282c34\tfill\1\0\0\1\0\2\nguifg\f#282c34\nguibg\f#202328\foptions\1\0\0\26diagnostics_indicator\0\1\0\4\22show_buffer_icons\2\20show_close_icon\1\28show_buffer_close_icons\1\16diagnostics\rnvim_lsp\nsetup\15bufferline\frequire\0" },
    loaded = true,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/start/bufferline.nvim"
  },
  ["dashboard-nvim"] = {
    config = { "\27LJ\2\n�\20\0\0\3\0\r\0\0216\0\0\0009\0\1\0'\2\2\0B\0\2\0026\1\3\0009\1\4\0015\2\6\0=\2\5\0016\1\3\0009\1\4\1'\2\b\0=\2\a\0016\1\3\0009\1\4\0015\2\n\0=\2\t\0016\1\3\0009\1\4\0015\2\f\0=\2\v\1K\0\1\0\1\2\0\0\19Welcome daoist\28dashboard_custom_footer\1\15\0\0m                                                                                                        w    ╔▄▒          ║▄                                                                                     �\1  ╔▄▓▒▒▒╔        ║▓█▄                                                                                   �\1╔▒▓▒▒▒▒▓▓▒       ║▓▓▓█▄                                                      ▓██                        �\1▒▒▓▓▒▒▒▓▓▓▒      ║▓▓▓▓▓█                                        ╔╔╔      ╔╔╔ ╔╔╔  ╔╔   ╔▄╔    ╔▄╔       �\1▒▓▓▓▓▓▒▓▓▓▓▒▄    ║▓▓▓▓▓█      ║█▄▀▀╚╚▀█    ▄▀▀└ ╚▀▄   ╔█▀╚╚╚▀█▄ ║███    ╔███ ▓██  ▓████▀▓██▄██▀▀███     �\1▒▓▓▓▓▓╚▓▓▓▓▓▓▒   ║▓▓▓▓▓█      ║█      ║█  █▀      ╚█ ▄█       ║█ ▀██▄  ╔███  ▓██  ▓██    ▓███   ║███    �\1▒▓▓▓▓▓  ▀▒▒▒▒▒▒▄ ║██████      ║█      ║▓ ║█▀▀▀▀▀▀▀▀▀ ▓        ║▓  ▓██▄ ▓██   ▓██  ▓██    ║██▒   ║███    �\1▒▓▓▓▓▓   ╚▓▒▒▒▒▒▒░██████      ║█      ║▓ ╚▓          ▓▒       ║█   ▓██▄██    ▓██  ▓██    ║██▒   ║███    �\1▓▒▓▒▒▒    ╚▓▒▒▒▒▒▓▓█████      ║█      ║▓  ╚█▄     ╔▄ ╚▀▄     ╔█▀   └▓███     ▓██  ▓██    ║██▒   ║███    �\1▓▒▒▒▒▒      ║▓▒▒▒▓▓▓████      ╚▀      ╚▀    └╚▀▀▀▀      ╚▀▀▀▀       ╚╚╚└     ▀▀▀  ╚▀▀    ╚▀▀└   ╚▀▀▀    �\1╚▓▒▒▒▒       ╚▓▓▓▓██▓██▀                                                                                �\1  ╚▓▒▒         ▀▓▓███╚                                                                                  w    ╚▓          ╚▓█                                                                                     \28dashboard_custom_header\14telescope dashboard_default_executive\1\2\0\0\14dashboard\31indentLine_fileTypeExclude\6g\bvim\tHOME\vgetenv\aos\0" },
    loaded = true,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/start/dashboard-nvim"
  },
  hop = {
    config = { "\27LJ\2\nU\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\tkeys\28etovxqpdygfblzhckisuran\nsetup\bhop\frequire\0" },
    loaded = true,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/start/hop"
  },
  ["indent-guides.nvim"] = {
    config = { "\27LJ\2\n�\2\0\0\4\0\n\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\2B\0\2\1K\0\1\0\15odd_colors\1\0\2\afg\f#332b36\abg\f#2a3834\16even_colors\1\0\2\afg\f#2a3834\abg\f#332b36\22exclude_filetypes\1\a\0\0\thelp\14dashboard\16dashpreview\rNvimTree\nvista\14sagahover\1\0\a\24indent_soft_pattern\a\\s\22indent_tab_guides\1\24indent_space_guides\2\18indent_enable\2\23indent_start_level\3\1\22indent_guide_size\3\1\18indent_levels\3\30\nsetup\18indent_guides\frequire\0" },
    loaded = true,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/start/indent-guides.nvim"
  },
  kommentary = {
    config = { "\27LJ\2\nD\0\0\2\0\3\0\0056\0\0\0009\0\1\0+\1\1\0=\1\2\0K\0\1\0'kommentary_create_default_mappings\6g\bvim\0" },
    loaded = true,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/start/kommentary"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\2\n�\4\0\0\5\0\31\0/6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\t\0005\3\3\0005\4\4\0=\4\5\0035\4\6\0=\4\a\0034\4\0\0=\4\b\3=\3\n\0025\3\f\0005\4\v\0=\4\r\0035\4\14\0=\4\15\0035\4\16\0=\4\17\0035\4\18\0=\4\19\0035\4\20\0=\4\21\0035\4\22\0=\4\23\3=\3\24\0025\3\25\0004\4\0\0=\4\r\0034\4\0\0=\4\15\0035\4\26\0=\4\17\0035\4\27\0=\4\19\0034\4\0\0=\4\21\0034\4\0\0=\4\23\3=\3\28\0024\3\0\0=\3\29\0024\3\0\0=\3\30\2B\0\2\1K\0\1\0\15extensions\ftabline\22inactive_sections\1\2\0\0\rlocation\1\2\0\0\rfilename\1\0\0\rsections\14lualine_z\1\2\0\0\rlocation\14lualine_y\1\2\0\0\rprogress\14lualine_x\1\4\0\0\rencoding\15fileformat\rfiletype\14lualine_c\1\2\0\0\rfilename\14lualine_b\1\2\0\0\vbranch\14lualine_a\1\0\0\1\2\0\0\tmode\foptions\1\0\0\23disabled_filetypes\23section_separators\1\3\0\0\b\b\25component_separators\1\3\0\0\b\b\1\0\2\ntheme\14palenight\18icons_enabled\2\nsetup\flualine\frequire\0" },
    loaded = true,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/start/lualine.nvim"
  },
  ["nvim-colorizer.lua"] = {
    loaded = true,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua"
  },
  ["nvim-cursorline"] = {
    loaded = true,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/start/nvim-cursorline"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\2\n�\3\0\0\6\0\18\0\0256\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0004\3\0\0=\3\4\0025\3\5\0=\3\6\0025\3\a\0004\4\0\0=\4\b\3=\3\t\0025\3\n\0004\4\0\0=\4\v\3=\3\f\0025\3\r\0005\4\14\0004\5\0\0=\5\15\4=\4\16\3=\3\17\2B\0\2\1K\0\1\0\tview\rmappings\tlist\1\0\1\16custom_only\1\1\0\3\16auto_resize\1\nwidth\3\30\tside\tleft\16system_open\targs\1\0\0\24update_focused_file\16ignore_list\1\0\2\venable\1\15update_cwd\1\22update_to_buf_dir\1\0\2\venable\2\14auto_open\2\23ignore_ft_on_setup\1\0\b\16open_on_tab\1\20lsp_diagnostics\1\18disable_netrw\2\17hijack_netrw\2\15auto_close\1\15update_cwd\1\18hijack_cursor\1\18open_on_setup\1\nsetup\14nvim-tree\frequire\0" },
    loaded = true,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/start/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/start/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/start/nvim-web-devicons"
  },
  ["onedark.nvim"] = {
    config = { "\27LJ\2\n4\0\0\2\0\4\0\0056\0\0\0009\0\1\0'\1\3\0=\1\2\0K\0\1\0\tcool\18onedark_style\6g\bvim\0" },
    loaded = true,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/start/onedark.nvim"
  },
  ["packer.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/opt/packer.nvim"
  },
  ["palenight.vim"] = {
    loaded = true,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/start/palenight.vim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/start/plenary.nvim"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\n�\1\0\0\5\0\t\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0004\3\0\0=\3\4\0025\3\6\0005\4\5\0=\4\a\3=\3\b\2B\0\2\1K\0\1\0\fpickers\15find_files\1\0\0\1\0\2\vhidden\2\14no_ignore\2\rdefaults\1\0\0\nsetup\14telescope\frequire\0" },
    loaded = true,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/start/telescope.nvim"
  },
  ["toggleterm.nvim"] = {
    config = { "\27LJ\2\n�\3\0\0\a\0\18\2!6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0004\3\0\0=\3\4\0026\3\5\0009\3\6\0039\3\a\3=\3\a\0025\3\b\0006\4\t\0009\4\n\0046\6\5\0009\6\6\0069\6\v\6\24\6\0\6B\4\2\2=\4\f\0036\4\t\0009\4\n\0046\6\5\0009\6\6\0069\6\r\6\24\6\1\6B\4\2\2=\4\14\0035\4\15\0=\4\16\3=\3\17\2B\0\2\1K\0\1\0\15float_opts\15highlights\1\0\2\15background\vNormal\vborder\vNormal\vheight\nlines\nwidth\fcolumns\tceil\tmath\1\0\2\rwinblend\3\3\vborder\vcurved\nshell\6o\bvim\20shade_filetypes\1\0\n\tsize\3\20\17open_mapping\n<c-\\>\20start_in_insert\2\17hide_numbers\2\17persist_size\2\19shading_factor\3\1\20shade_terminals\2\18close_on_exit\2\20insert_mappings\2\14direction\nfloat\nsetup\15toggleterm\frequire��̙\19����\3�̙�\6���\3\0" },
    loaded = true,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/start/toggleterm.nvim"
  },
  ["vim-startuptime"] = {
    commands = { "StartupTime" },
    loaded = false,
    needs_bufread = false,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/opt/vim-startuptime"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/start/vim-surround"
  },
  ["which-key.nvim"] = {
    config = { "\27LJ\2\n�\f\0\0\6\0H\0L6\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\4\0005\4\3\0=\4\5\0035\4\6\0005\5\a\0=\5\b\4=\4\t\0035\4\n\0=\4\v\0035\4\f\0005\5\r\0=\5\14\0045\5\15\0=\5\16\4=\4\17\0035\4\19\0005\5\18\0=\5\20\0045\5\21\0=\5\22\4=\4\23\3B\1\2\0019\1\24\0005\3\26\0005\4\25\0=\4\27\0035\4\28\0=\4\29\0035\4\30\0=\4\31\0035\4 \0=\4!\0035\4\"\0=\4#\0035\4$\0=\4%\0035\4&\0=\4'\0035\4(\0=\4)\0035\4*\0=\4+\0035\4,\0=\4-\0035\4.\0=\4/\0035\0040\0=\0041\0035\0042\0=\0043\0035\0044\0=\0045\0035\0046\0=\0047\0035\0048\0=\0049\0035\4:\0=\4;\0035\4<\0=\4=\0035\4>\0=\4?\0035\4@\0=\4A\0035\4B\0=\4C\0035\4D\0=\4E\0035\4F\0=\4G\3B\1\2\1K\0\1\0\15<leader>cd\1\3\0\0%<Plug>kommentary_motion_decrease\20motion_decrease\15<leader>ci\1\3\0\0%<Plug>kommentary_motion_increase\20motion_increase\14<leader>c\1\0\1\tname\16+kommentary\15<leader>nt\1\3\0\0\28<Cmd>NvimTreeToggle<CR>\20NvimTree Toggle\14<leader>n\1\0\1\tname\14+nvimtree\15<leader>w\\\1\3\0\0\23<Cmd>vsp<CR><C-w>l\vvsplit\15<leader>w-\1\3\0\0\22<Cmd>sp<CR><C-w>j\nsplit\15<leader>wl\1\3\0\0\v<C-w>l\17window right\15<leader>wk\1\3\0\0\v<C-w>k\14window up\15<leader>wj\1\3\0\0\v<C-w>j\16window down\15<leader>wh\1\3\0\0\v<C-w>h\16window left\15<leader>ww\1\3\0\0\v<C-w>w\16window next\15<leader>wc\1\3\0\0\v<C-w>c\19window conceal\14<leader>w\1\0\1\tname\f+window\15<leader>fd\1\3\0\0\18<cmd>enew<cr>\18Edit init.lua\15<leader>fn\1\3\0\0\18<cmd>enew<cr>\rNew File\15<leader>fq\1\3\0\0\18<cmd>qall<cr>\tExit\15<leader>fs\1\3\0\0\16<cmd>w!<cr>\14Save File\15<leader>fl\1\3\0\0!<cmd>Telescope live_grep<cr>\15Find Words\15<leader>fb\1\3\0\0\31<cmd>Telescope buffers<cr>\17Find buffers\15<leader>fr\1\3\0\0 <cmd>Telescope oldfiles<cr>\21Open Recent File\15<leader>ff\1\3\0\0\"<cmd>Telescope find_files<cr>\14Find File\14<leader>f\1\0\0\1\0\1\tname\n+file\rregister\vlayout\nwidth\1\0\2\bmin\3\20\bmax\0032\vheight\1\0\2\fspacing\3\3\nalign\tleft\1\0\2\bmin\3\1\bmax\3\25\vwindow\fpadding\1\5\0\0\3\1\3\1\3\1\3\1\vmargin\1\5\0\0\3\0\3\0\3\0\3\0\1\0\2\vborder\vsingle\rposition\vbottom\nicons\1\0\3\ngroup\6+\14separator\b➜\15breadcrumb\a»\fplugins\rspelling\1\0\2\16suggestions\3\20\fenabled\1\1\0\2\nmarks\2\14registers\2\rtriggers\1\0\0\1\2\0\0\r<leader>\nsetup\14which-key\frequire\0" },
    loaded = true,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/start/which-key.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\n�\1\0\0\5\0\t\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0004\3\0\0=\3\4\0025\3\6\0005\4\5\0=\4\a\3=\3\b\2B\0\2\1K\0\1\0\fpickers\15find_files\1\0\0\1\0\2\vhidden\2\14no_ignore\2\rdefaults\1\0\0\nsetup\14telescope\frequire\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: toggleterm.nvim
time([[Config for toggleterm.nvim]], true)
try_loadstring("\27LJ\2\n�\3\0\0\a\0\18\2!6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0004\3\0\0=\3\4\0026\3\5\0009\3\6\0039\3\a\3=\3\a\0025\3\b\0006\4\t\0009\4\n\0046\6\5\0009\6\6\0069\6\v\6\24\6\0\6B\4\2\2=\4\f\0036\4\t\0009\4\n\0046\6\5\0009\6\6\0069\6\r\6\24\6\1\6B\4\2\2=\4\14\0035\4\15\0=\4\16\3=\3\17\2B\0\2\1K\0\1\0\15float_opts\15highlights\1\0\2\15background\vNormal\vborder\vNormal\vheight\nlines\nwidth\fcolumns\tceil\tmath\1\0\2\rwinblend\3\3\vborder\vcurved\nshell\6o\bvim\20shade_filetypes\1\0\n\tsize\3\20\17open_mapping\n<c-\\>\20start_in_insert\2\17hide_numbers\2\17persist_size\2\19shading_factor\3\1\20shade_terminals\2\18close_on_exit\2\20insert_mappings\2\14direction\nfloat\nsetup\15toggleterm\frequire��̙\19����\3�̙�\6���\3\0", "config", "toggleterm.nvim")
time([[Config for toggleterm.nvim]], false)
-- Config for: kommentary
time([[Config for kommentary]], true)
try_loadstring("\27LJ\2\nD\0\0\2\0\3\0\0056\0\0\0009\0\1\0+\1\1\0=\1\2\0K\0\1\0'kommentary_create_default_mappings\6g\bvim\0", "config", "kommentary")
time([[Config for kommentary]], false)
-- Config for: onedark.nvim
time([[Config for onedark.nvim]], true)
try_loadstring("\27LJ\2\n4\0\0\2\0\4\0\0056\0\0\0009\0\1\0'\1\3\0=\1\2\0K\0\1\0\tcool\18onedark_style\6g\bvim\0", "config", "onedark.nvim")
time([[Config for onedark.nvim]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\2\n�\4\0\0\5\0\31\0/6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\t\0005\3\3\0005\4\4\0=\4\5\0035\4\6\0=\4\a\0034\4\0\0=\4\b\3=\3\n\0025\3\f\0005\4\v\0=\4\r\0035\4\14\0=\4\15\0035\4\16\0=\4\17\0035\4\18\0=\4\19\0035\4\20\0=\4\21\0035\4\22\0=\4\23\3=\3\24\0025\3\25\0004\4\0\0=\4\r\0034\4\0\0=\4\15\0035\4\26\0=\4\17\0035\4\27\0=\4\19\0034\4\0\0=\4\21\0034\4\0\0=\4\23\3=\3\28\0024\3\0\0=\3\29\0024\3\0\0=\3\30\2B\0\2\1K\0\1\0\15extensions\ftabline\22inactive_sections\1\2\0\0\rlocation\1\2\0\0\rfilename\1\0\0\rsections\14lualine_z\1\2\0\0\rlocation\14lualine_y\1\2\0\0\rprogress\14lualine_x\1\4\0\0\rencoding\15fileformat\rfiletype\14lualine_c\1\2\0\0\rfilename\14lualine_b\1\2\0\0\vbranch\14lualine_a\1\0\0\1\2\0\0\tmode\foptions\1\0\0\23disabled_filetypes\23section_separators\1\3\0\0\b\b\25component_separators\1\3\0\0\b\b\1\0\2\ntheme\14palenight\18icons_enabled\2\nsetup\flualine\frequire\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
-- Config for: indent-guides.nvim
time([[Config for indent-guides.nvim]], true)
try_loadstring("\27LJ\2\n�\2\0\0\4\0\n\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\2B\0\2\1K\0\1\0\15odd_colors\1\0\2\afg\f#332b36\abg\f#2a3834\16even_colors\1\0\2\afg\f#2a3834\abg\f#332b36\22exclude_filetypes\1\a\0\0\thelp\14dashboard\16dashpreview\rNvimTree\nvista\14sagahover\1\0\a\24indent_soft_pattern\a\\s\22indent_tab_guides\1\24indent_space_guides\2\18indent_enable\2\23indent_start_level\3\1\22indent_guide_size\3\1\18indent_levels\3\30\nsetup\18indent_guides\frequire\0", "config", "indent-guides.nvim")
time([[Config for indent-guides.nvim]], false)
-- Config for: bufferline.nvim
time([[Config for bufferline.nvim]], true)
try_loadstring("\27LJ\2\n}\0\4\14\0\a\0\21'\4\0\0006\5\1\0\18\a\2\0B\5\2\4H\b\r�\a\b\2\0X\n\2�'\n\3\0X\v\5�\a\b\4\0X\n\2�'\n\5\0X\v\1�'\n\6\0\18\v\4\0\18\f\n\0\18\r\t\0&\4\r\vF\b\3\3R\b�L\4\2\0\b\b\fwarning\b\nerror\npairs\6 �\2\1\0\5\0\14\0\0176\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\3\0003\4\4\0=\4\5\3=\3\a\0025\3\t\0005\4\b\0=\4\n\0035\4\v\0=\4\f\3=\3\r\2B\0\2\1K\0\1\0\15highlights\23indicator_selected\1\0\2\nguifg\f#51afef\nguibg\f#282c34\tfill\1\0\0\1\0\2\nguifg\f#282c34\nguibg\f#202328\foptions\1\0\0\26diagnostics_indicator\0\1\0\4\22show_buffer_icons\2\20show_close_icon\1\28show_buffer_close_icons\1\16diagnostics\rnvim_lsp\nsetup\15bufferline\frequire\0", "config", "bufferline.nvim")
time([[Config for bufferline.nvim]], false)
-- Config for: which-key.nvim
time([[Config for which-key.nvim]], true)
try_loadstring("\27LJ\2\n�\f\0\0\6\0H\0L6\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\4\0005\4\3\0=\4\5\0035\4\6\0005\5\a\0=\5\b\4=\4\t\0035\4\n\0=\4\v\0035\4\f\0005\5\r\0=\5\14\0045\5\15\0=\5\16\4=\4\17\0035\4\19\0005\5\18\0=\5\20\0045\5\21\0=\5\22\4=\4\23\3B\1\2\0019\1\24\0005\3\26\0005\4\25\0=\4\27\0035\4\28\0=\4\29\0035\4\30\0=\4\31\0035\4 \0=\4!\0035\4\"\0=\4#\0035\4$\0=\4%\0035\4&\0=\4'\0035\4(\0=\4)\0035\4*\0=\4+\0035\4,\0=\4-\0035\4.\0=\4/\0035\0040\0=\0041\0035\0042\0=\0043\0035\0044\0=\0045\0035\0046\0=\0047\0035\0048\0=\0049\0035\4:\0=\4;\0035\4<\0=\4=\0035\4>\0=\4?\0035\4@\0=\4A\0035\4B\0=\4C\0035\4D\0=\4E\0035\4F\0=\4G\3B\1\2\1K\0\1\0\15<leader>cd\1\3\0\0%<Plug>kommentary_motion_decrease\20motion_decrease\15<leader>ci\1\3\0\0%<Plug>kommentary_motion_increase\20motion_increase\14<leader>c\1\0\1\tname\16+kommentary\15<leader>nt\1\3\0\0\28<Cmd>NvimTreeToggle<CR>\20NvimTree Toggle\14<leader>n\1\0\1\tname\14+nvimtree\15<leader>w\\\1\3\0\0\23<Cmd>vsp<CR><C-w>l\vvsplit\15<leader>w-\1\3\0\0\22<Cmd>sp<CR><C-w>j\nsplit\15<leader>wl\1\3\0\0\v<C-w>l\17window right\15<leader>wk\1\3\0\0\v<C-w>k\14window up\15<leader>wj\1\3\0\0\v<C-w>j\16window down\15<leader>wh\1\3\0\0\v<C-w>h\16window left\15<leader>ww\1\3\0\0\v<C-w>w\16window next\15<leader>wc\1\3\0\0\v<C-w>c\19window conceal\14<leader>w\1\0\1\tname\f+window\15<leader>fd\1\3\0\0\18<cmd>enew<cr>\18Edit init.lua\15<leader>fn\1\3\0\0\18<cmd>enew<cr>\rNew File\15<leader>fq\1\3\0\0\18<cmd>qall<cr>\tExit\15<leader>fs\1\3\0\0\16<cmd>w!<cr>\14Save File\15<leader>fl\1\3\0\0!<cmd>Telescope live_grep<cr>\15Find Words\15<leader>fb\1\3\0\0\31<cmd>Telescope buffers<cr>\17Find buffers\15<leader>fr\1\3\0\0 <cmd>Telescope oldfiles<cr>\21Open Recent File\15<leader>ff\1\3\0\0\"<cmd>Telescope find_files<cr>\14Find File\14<leader>f\1\0\0\1\0\1\tname\n+file\rregister\vlayout\nwidth\1\0\2\bmin\3\20\bmax\0032\vheight\1\0\2\fspacing\3\3\nalign\tleft\1\0\2\bmin\3\1\bmax\3\25\vwindow\fpadding\1\5\0\0\3\1\3\1\3\1\3\1\vmargin\1\5\0\0\3\0\3\0\3\0\3\0\1\0\2\vborder\vsingle\rposition\vbottom\nicons\1\0\3\ngroup\6+\14separator\b➜\15breadcrumb\a»\fplugins\rspelling\1\0\2\16suggestions\3\20\fenabled\1\1\0\2\nmarks\2\14registers\2\rtriggers\1\0\0\1\2\0\0\r<leader>\nsetup\14which-key\frequire\0", "config", "which-key.nvim")
time([[Config for which-key.nvim]], false)
-- Config for: dashboard-nvim
time([[Config for dashboard-nvim]], true)
try_loadstring("\27LJ\2\n�\20\0\0\3\0\r\0\0216\0\0\0009\0\1\0'\2\2\0B\0\2\0026\1\3\0009\1\4\0015\2\6\0=\2\5\0016\1\3\0009\1\4\1'\2\b\0=\2\a\0016\1\3\0009\1\4\0015\2\n\0=\2\t\0016\1\3\0009\1\4\0015\2\f\0=\2\v\1K\0\1\0\1\2\0\0\19Welcome daoist\28dashboard_custom_footer\1\15\0\0m                                                                                                        w    ╔▄▒          ║▄                                                                                     �\1  ╔▄▓▒▒▒╔        ║▓█▄                                                                                   �\1╔▒▓▒▒▒▒▓▓▒       ║▓▓▓█▄                                                      ▓██                        �\1▒▒▓▓▒▒▒▓▓▓▒      ║▓▓▓▓▓█                                        ╔╔╔      ╔╔╔ ╔╔╔  ╔╔   ╔▄╔    ╔▄╔       �\1▒▓▓▓▓▓▒▓▓▓▓▒▄    ║▓▓▓▓▓█      ║█▄▀▀╚╚▀█    ▄▀▀└ ╚▀▄   ╔█▀╚╚╚▀█▄ ║███    ╔███ ▓██  ▓████▀▓██▄██▀▀███     �\1▒▓▓▓▓▓╚▓▓▓▓▓▓▒   ║▓▓▓▓▓█      ║█      ║█  █▀      ╚█ ▄█       ║█ ▀██▄  ╔███  ▓██  ▓██    ▓███   ║███    �\1▒▓▓▓▓▓  ▀▒▒▒▒▒▒▄ ║██████      ║█      ║▓ ║█▀▀▀▀▀▀▀▀▀ ▓        ║▓  ▓██▄ ▓██   ▓██  ▓██    ║██▒   ║███    �\1▒▓▓▓▓▓   ╚▓▒▒▒▒▒▒░██████      ║█      ║▓ ╚▓          ▓▒       ║█   ▓██▄██    ▓██  ▓██    ║██▒   ║███    �\1▓▒▓▒▒▒    ╚▓▒▒▒▒▒▓▓█████      ║█      ║▓  ╚█▄     ╔▄ ╚▀▄     ╔█▀   └▓███     ▓██  ▓██    ║██▒   ║███    �\1▓▒▒▒▒▒      ║▓▒▒▒▓▓▓████      ╚▀      ╚▀    └╚▀▀▀▀      ╚▀▀▀▀       ╚╚╚└     ▀▀▀  ╚▀▀    ╚▀▀└   ╚▀▀▀    �\1╚▓▒▒▒▒       ╚▓▓▓▓██▓██▀                                                                                �\1  ╚▓▒▒         ▀▓▓███╚                                                                                  w    ╚▓          ╚▓█                                                                                     \28dashboard_custom_header\14telescope dashboard_default_executive\1\2\0\0\14dashboard\31indentLine_fileTypeExclude\6g\bvim\tHOME\vgetenv\aos\0", "config", "dashboard-nvim")
time([[Config for dashboard-nvim]], false)
-- Config for: hop
time([[Config for hop]], true)
try_loadstring("\27LJ\2\nU\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\tkeys\28etovxqpdygfblzhckisuran\nsetup\bhop\frequire\0", "config", "hop")
time([[Config for hop]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
try_loadstring("\27LJ\2\n�\3\0\0\6\0\18\0\0256\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0004\3\0\0=\3\4\0025\3\5\0=\3\6\0025\3\a\0004\4\0\0=\4\b\3=\3\t\0025\3\n\0004\4\0\0=\4\v\3=\3\f\0025\3\r\0005\4\14\0004\5\0\0=\5\15\4=\4\16\3=\3\17\2B\0\2\1K\0\1\0\tview\rmappings\tlist\1\0\1\16custom_only\1\1\0\3\16auto_resize\1\nwidth\3\30\tside\tleft\16system_open\targs\1\0\0\24update_focused_file\16ignore_list\1\0\2\venable\1\15update_cwd\1\22update_to_buf_dir\1\0\2\venable\2\14auto_open\2\23ignore_ft_on_setup\1\0\b\16open_on_tab\1\20lsp_diagnostics\1\18disable_netrw\2\17hijack_netrw\2\15auto_close\1\15update_cwd\1\18hijack_cursor\1\18open_on_setup\1\nsetup\14nvim-tree\frequire\0", "config", "nvim-tree.lua")
time([[Config for nvim-tree.lua]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file StartupTime lua require("packer.load")({'vim-startuptime'}, { cmd = "StartupTime", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]])
time([[Defining lazy-load commands]], false)

vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au VimEnter * ++once lua require("packer.load")({'packer.nvim'}, { event = "VimEnter *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
vim.cmd("augroup END")
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
