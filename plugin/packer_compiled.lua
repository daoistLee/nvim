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
  LuaSnip = {
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/opt/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["bufferline.nvim"] = {
    config = { "\27LJ\2\n}\0\4\14\0\a\0\21'\4\0\0006\5\1\0\18\a\2\0B\5\2\4H\b\r�\a\b\2\0X\n\2�'\n\3\0X\v\5�\a\b\4\0X\n\2�'\n\5\0X\v\1�'\n\6\0\18\v\4\0\18\f\n\0\18\r\t\0&\4\r\vF\b\3\3R\b�L\4\2\0\b\b\fwarning\b\nerror\npairs\6 �\2\1\0\5\0\14\0\0176\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\3\0003\4\4\0=\4\5\3=\3\a\0025\3\t\0005\4\b\0=\4\n\0035\4\v\0=\4\f\3=\3\r\2B\0\2\1K\0\1\0\15highlights\23indicator_selected\1\0\2\nguibg\f#282c34\nguifg\f#51afef\tfill\1\0\0\1\0\2\nguibg\f#202328\nguifg\f#282c34\foptions\1\0\0\26diagnostics_indicator\0\1\0\4\16diagnostics\rnvim_lsp\28show_buffer_close_icons\1\22show_buffer_icons\2\20show_close_icon\1\nsetup\15bufferline\frequire\0" },
    loaded = true,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/start/bufferline.nvim",
    url = "https://github.com/akinsho/bufferline.nvim"
  },
  ["cmp-buffer"] = {
    after_files = { "/home/daoist/.local/share/nvim/site/pack/packer/opt/cmp-buffer/after/plugin/cmp_buffer.lua" },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/opt/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-look"] = {
    after_files = { "/home/daoist/.local/share/nvim/site/pack/packer/opt/cmp-look/after/plugin/cmp_look.lua" },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/opt/cmp-look",
    url = "https://github.com/octaltree/cmp-look"
  },
  ["cmp-nvim-lsp"] = {
    after_files = { "/home/daoist/.local/share/nvim/site/pack/packer/opt/cmp-nvim-lsp/after/plugin/cmp_nvim_lsp.lua" },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/opt/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-nvim-lua"] = {
    after_files = { "/home/daoist/.local/share/nvim/site/pack/packer/opt/cmp-nvim-lua/after/plugin/cmp_nvim_lua.lua" },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/opt/cmp-nvim-lua",
    url = "https://github.com/hrsh7th/cmp-nvim-lua"
  },
  ["cmp-path"] = {
    after_files = { "/home/daoist/.local/share/nvim/site/pack/packer/opt/cmp-path/after/plugin/cmp_path.lua" },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/opt/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  ["cmp-spell"] = {
    after_files = { "/home/daoist/.local/share/nvim/site/pack/packer/opt/cmp-spell/after/plugin/cmp-spell.lua" },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/opt/cmp-spell",
    url = "https://github.com/f3fora/cmp-spell"
  },
  cmp_luasnip = {
    after_files = { "/home/daoist/.local/share/nvim/site/pack/packer/opt/cmp_luasnip/after/plugin/cmp_luasnip.lua" },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/opt/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["dashboard-nvim"] = {
    config = { "\27LJ\2\n�\19\0\0\3\0\v\0\0176\0\0\0009\0\1\0'\2\2\0B\0\2\0026\1\3\0009\1\4\0015\2\6\0=\2\5\0016\1\3\0009\1\4\1'\2\b\0=\2\a\0016\1\3\0009\1\4\0015\2\n\0=\2\t\1K\0\1\0\1\15\0\0i                                                                                                    s    ╔▄▒          ║▄                                                                                   ╔▄▓▒▒▒╔        ║▓█▄                                                                               �\1╔▒▓▒▒▒▒▓▓▒       ║▓▓▓█▄                                                      ▓██                    �\1▒▒▓▓▒▒▒▓▓▓▒      ║▓▓▓▓▓█                                        ╔╔╔      ╔╔╔ ╔╔╔  ╔╔   ╔▄╔    ╔▄╔   �\1▒▓▓▓▓▓▒▓▓▓▓▒▄    ║▓▓▓▓▓█      ║█▄▀▀╚╚▀█    ▄▀▀└ ╚▀▄   ╔█▀╚╚╚▀█▄ ║███    ╔███ ▓██  ▓████▀▓██▄██▀▀███ �\1▒▓▓▓▓▓╚▓▓▓▓▓▓▒   ║▓▓▓▓▓█      ║█      ║█  █▀      ╚█ ▄█       ║█ ▀██▄  ╔███  ▓██  ▓██    ▓███   ║███�\1▒▓▓▓▓▓  ▀▒▒▒▒▒▒▄ ║██████      ║█      ║▓ ║█▀▀▀▀▀▀▀▀▀ ▓        ║▓  ▓██▄ ▓██   ▓██  ▓██    ║██▒   ║███�\1▒▓▓▓▓▓   ╚▓▒▒▒▒▒▒░██████      ║█      ║▓ ╚▓          ▓▒       ║█   ▓██▄██    ▓██  ▓██    ║██▒   ║███�\1▓▒▓▒▒▒    ╚▓▒▒▒▒▒▓▓█████      ║█      ║▓  ╚█▄     ╔▄ ╚▀▄     ╔█▀   └▓███     ▓██  ▓██    ║██▒   ║███�\1▓▒▒▒▒▒      ║▓▒▒▒▓▓▓████      ╚▀      ╚▀    └╚▀▀▀▀      ╚▀▀▀▀       ╚╚╚└     ▀▀▀  ╚▀▀    ╚▀▀└   ╚▀▀▀�\1╚▓▒▒▒▒       ╚▓▓▓▓██▓██▀                                                                              ╚▓▒▒         ▀▓▓███╚                                                                              s    ╚▓          ╚▓█                                                                                 \28dashboard_custom_header\14telescope dashboard_default_executive\1\2\0\0\14dashboard\31indentLine_fileTypeExclude\6g\bvim\tHOME\vgetenv\aos\0" },
    loaded = true,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/start/dashboard-nvim",
    url = "https://github.com/glepnir/dashboard-nvim"
  },
  ["hop.nvim"] = {
    config = { "\27LJ\2\nU\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\tkeys\28etovxqpdygfblzhckisuran\nsetup\bhop\frequire\0" },
    loaded = true,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/start/hop.nvim",
    url = "https://github.com/phaazon/hop.nvim"
  },
  kommentary = {
    config = { "\27LJ\2\n�\2\0\0\6\0\v\0!6\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0'\4\5\0004\5\0\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\6\0'\3\4\0'\4\a\0004\5\0\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\b\0'\4\t\0004\5\0\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\6\0'\3\b\0'\4\n\0004\5\0\0B\0\5\1K\0\1\0%<Plug>kommentary_visual_decrease#<Plug>kommentary_line_decrease\15<leader>cd%<Plug>kommentary_visual_increase\6x#<Plug>kommentary_line_increase\15<leader>ci\6n\20nvim_set_keymap\bapi\bvim\0" },
    loaded = true,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/start/kommentary",
    url = "https://github.com/b3nj5m1n/kommentary"
  },
  ["lsp_signature.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/opt/lsp_signature.nvim",
    url = "https://github.com/ray-x/lsp_signature.nvim"
  },
  ["lspkind-nvim"] = {
    loaded = true,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/start/lspkind-nvim",
    url = "https://github.com/onsails/lspkind-nvim"
  },
  ["lspsaga.nvim"] = {
    config = { "\27LJ\2\n�\1\0\0\4\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\3\0B\1\2\1K\0\1\0\1\0\3\17border_style\nround\22max_preview_lines\3\n\21code_action_icon\t💡\18init_lsp_saga\flspsaga\frequire\0" },
    loaded = true,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/start/lspsaga.nvim",
    url = "https://github.com/tami5/lspsaga.nvim"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\2\n�\4\0\0\5\0\31\0/6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\t\0005\3\3\0005\4\4\0=\4\5\0035\4\6\0=\4\a\0034\4\0\0=\4\b\3=\3\n\0025\3\f\0005\4\v\0=\4\r\0035\4\14\0=\4\15\0035\4\16\0=\4\17\0035\4\18\0=\4\19\0035\4\20\0=\4\21\0035\4\22\0=\4\23\3=\3\24\0025\3\25\0004\4\0\0=\4\r\0034\4\0\0=\4\15\0035\4\26\0=\4\17\0035\4\27\0=\4\19\0034\4\0\0=\4\21\0034\4\0\0=\4\23\3=\3\28\0024\3\0\0=\3\29\0024\3\0\0=\3\30\2B\0\2\1K\0\1\0\15extensions\ftabline\22inactive_sections\1\2\0\0\rlocation\1\2\0\0\rfilename\1\0\0\rsections\14lualine_z\1\2\0\0\rlocation\14lualine_y\1\2\0\0\rprogress\14lualine_x\1\4\0\0\rencoding\15fileformat\rfiletype\14lualine_c\1\2\0\0\rfilename\14lualine_b\1\2\0\0\vbranch\14lualine_a\1\0\0\1\2\0\0\tmode\foptions\1\0\0\23disabled_filetypes\23section_separators\1\3\0\0\b\b\25component_separators\1\3\0\0\b\b\1\0\2\18icons_enabled\2\ntheme\14palenight\nsetup\flualine\frequire\0" },
    loaded = true,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/hoob3rt/lualine.nvim"
  },
  ["nvim-autopairs"] = {
    config = { "\27LJ\2\n�\1\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\21disable_filetype\1\0\0\1\6\0\0\20TelescopePrompt\bvim\vguihua\16guihua_rust\15clap_input\nsetup\19nvim-autopairs\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/opt/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    after = { "cmp-look", "cmp-nvim-lua", "cmp-buffer", "cmp-nvim-lsp", "cmp-path", "LuaSnip", "cmp-spell", "cmp_luasnip" },
    config = { "\27LJ\2\n\v\0\1\1\0\0\0\1K\0\1\0�\6\1\0\t\0,\0F6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\2\3\0005\4\b\0005\5\6\0009\6\4\0015\b\5\0B\6\2\2=\6\a\5=\5\t\0045\5\f\0009\6\n\0009\6\v\6=\6\r\5=\5\14\0045\5\15\0=\5\16\0045\5\18\0005\6\17\0=\6\19\5=\5\20\0045\5\22\0003\6\21\0=\6\23\5=\5\24\0045\5\27\0009\6\25\0009\6\26\6B\6\1\2=\6\28\0059\6\25\0009\6\29\6B\6\1\2=\6\30\0059\6\25\0009\6\31\6)\b��B\6\2\2=\6 \0059\6\25\0009\6\31\6)\b\4\0B\6\2\2=\6!\0059\6\25\0009\6\"\0065\b#\0B\6\2\2=\6$\5=\5\25\0044\5\a\0005\6%\0>\6\1\0055\6&\0>\6\2\0055\6'\0>\6\3\0055\6(\0>\6\4\0055\6)\0>\6\5\0055\6*\0>\6\6\5=\5+\4B\2\2\1K\0\1\0\fsources\1\0\1\tname\tpath\1\0\1\tname\vbuffer\1\0\1\tname\fluasnip\1\0\1\tname\15treesitter\1\0\1\tname\rnvim_lsp\1\0\1\tname\forgmode\t<CR>\1\0\1\vselect\2\fconfirm\n<C-f>\n<C-d>\16scroll_docs\f<S-Tab>\21select_prev_item\n<Tab>\1\0\0\21select_next_item\fmapping\fsnippet\vexpand\1\0\0\0\18documentation\vborder\1\0\0\1\t\0\0\b╭\b─\b╮\b│\b╯\b─\b╰\b│\15completion\1\0\1\16completeopt\26menu,menuone,noinsert\17confirm_opts\rbehavior\1\0\1\vselect\2\fReplace\20ConfirmBehavior\15formatting\1\0\0\vformat\1\0\0\1\0\2\rmaxwidth\0032\14with_text\1\15cmp_format\nsetup\flspkind\bcmp\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/opt/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-colorizer.lua"] = {
    config = { "require('colorizer').setup {'css', 'javascript', 'vim', 'html'}" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/opt/nvim-colorizer.lua",
    url = "https://github.com/norcalli/nvim-colorizer.lua"
  },
  ["nvim-cursorline"] = {
    loaded = true,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/start/nvim-cursorline",
    url = "https://github.com/yamatsum/nvim-cursorline"
  },
  ["nvim-lsp-installer"] = {
    loaded = true,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/start/nvim-lsp-installer",
    url = "https://github.com/williamboman/nvim-lsp-installer"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\2\n?\0\2\5\0\3\0\0066\2\0\0'\4\1\0B\2\2\0029\2\2\2B\2\1\1K\0\1\0\14on_attach\18lsp_signature\frequire�\3\1\0\r\0\24\0'6\0\0\0009\0\1\0009\0\2\0009\0\3\0B\0\1\0029\1\4\0009\1\5\0019\1\6\1+\2\2\0=\2\a\0016\1\b\0'\3\t\0B\1\2\0023\2\n\0005\3\v\0006\4\f\0\18\6\3\0B\4\2\4X\a\17�8\t\b\0019\t\r\t5\v\14\0=\2\15\v=\0\16\v5\f\17\0=\f\18\vB\t\2\0019\t\19\0019\t\r\t5\v\20\0=\2\15\v5\f\21\0=\f\22\v5\f\23\0=\f\18\vB\t\2\1E\a\3\3R\a�K\0\1\0\1\0\1\26debounce_text_changes\3�\1\bcmd\1\6\0\0\vclangd\23--background-index\31--suggest-missing-includes\17--clang-tidy\28--header-insertion=iwyu\1\0\0\vclangd\nflags\1\0\1\26debounce_text_changes\3�\1\17capabilities\14on_attach\1\0\0\nsetup\vipairs\1\2\0\0\fpyright\0\14lspconfig\frequire\19snippetSupport\19completionItem\15completion\17textDocument\29make_client_capabilities\rprotocol\blsp\bvim\0" },
    loaded = true,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-tree.lua"] = {
    commands = { "NvimTreeToggle", "NvimFocus" },
    config = { "\27LJ\2\n�\5\0\0\a\0\31\0)6\0\0\0009\0\1\0)\1\0\0=\1\2\0)\1\3\0=\1\3\0)\1\0\0=\1\4\0)\1\1\0=\1\5\0005\1\b\0005\2\a\0=\2\t\0015\2\n\0=\2\v\1=\1\6\0006\1\f\0'\3\r\0B\1\2\0029\1\14\0015\3\15\0005\4\16\0=\4\17\0035\4\18\0=\4\19\0035\4\20\0004\5\0\0=\5\21\4=\4\22\0035\4\23\0004\5\0\0=\5\24\4=\4\25\0035\4\26\0005\5\27\0004\6\0\0=\6\28\5=\5\29\4=\4\30\3B\1\2\1K\0\1\0\tview\rmappings\tlist\1\0\1\16custom_only\1\1\0\3\tside\tleft\nwidth\3\30\16auto_resize\2\16system_open\targs\1\0\0\24update_focused_file\16ignore_list\1\0\2\15update_cwd\1\venable\2\22update_to_buf_dir\1\0\2\venable\2\14auto_open\2\23ignore_ft_on_setup\1\2\0\0\5\1\0\a\15auto_close\1\15update_cwd\1\18hijack_cursor\2\16open_on_tab\1\18open_on_setup\2\17hijack_netrw\2\18disable_netrw\2\nsetup\14nvim-tree\frequire\fbuftype\1\2\0\0\rterminal\rfiletype\1\0\0\1\4\0\0\vnotify\vpacker\aqf$nvim_tree_window_picker_exclude\29nvim_tree_indent_markers\27nvim_tree_quit_on_open%nvim_tree_highlight_opened_files\27nvim_tree_add_trailing\6g\bvim\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/opt/nvim-tree.lua",
    url = "https://github.com/kyazdani42/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["onedark.nvim"] = {
    config = { "\27LJ\2\n�\1\0\0\3\0\t\0\0146\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\1\0'\1\5\0=\1\4\0006\0\6\0'\2\a\0B\0\2\0029\0\b\0B\0\1\1K\0\1\0\nsetup\fonedark\frequire\n<nop> onedark_toggle_style_keymap\tdark\18onedark_style\6g\bvim\0" },
    loaded = true,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/start/onedark.nvim",
    url = "https://github.com/navarasu/onedark.nvim"
  },
  ["packer.nvim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/opt/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["telescope.nvim"] = {
    commands = { "Telescope" },
    config = { "\27LJ\2\n�\1\0\0\5\0\14\0\0196\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\a\0005\4\6\0=\4\b\0035\4\t\0=\4\n\0034\4\0\0=\4\v\0034\4\0\0=\4\f\3=\3\r\2B\0\2\1K\0\1\0\fpickers\14live_grep\roldfiles\17file_browser\1\0\2\vhidden\2\14no_ignore\2\15find_files\1\0\0\1\0\2\vhidden\2\14no_ignore\2\rdefaults\1\0\0\1\0\1\26dynamic_preview_title\2\nsetup\14telescope\frequire\0" },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/opt/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["vim-highlightedyank"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/opt/vim-highlightedyank",
    url = "https://github.com/machakann/vim-highlightedyank"
  },
  ["vim-startuptime"] = {
    commands = { "StartupTime" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/opt/vim-startuptime",
    url = "https://github.com/dstein64/vim-startuptime"
  },
  ["which-key.nvim"] = {
    config = { "\27LJ\2\n�\17\0\0\6\0Z\0^6\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\4\0005\4\3\0=\4\5\0035\4\6\0005\5\a\0=\5\b\4=\4\t\0035\4\n\0=\4\v\0035\4\f\0005\5\r\0=\5\14\0045\5\15\0=\5\16\4=\4\17\0035\4\19\0005\5\18\0=\5\20\0045\5\21\0=\5\22\4=\4\23\3B\1\2\0019\1\24\0005\3\26\0005\4\25\0=\4\27\0035\4\28\0=\4\29\0035\4\30\0=\4\31\0035\4 \0=\4!\0035\4\"\0=\4#\0035\4$\0=\4%\0035\4&\0=\4'\0035\4(\0=\4)\0035\4*\0=\4+\0035\4,\0=\4-\0035\4.\0=\4/\0035\0040\0=\0041\0035\0042\0=\0043\0035\0044\0=\0045\0035\0046\0=\0047\0035\0048\0=\0049\0035\4:\0=\4;\0035\4<\0=\4=\0035\4>\0=\4?\0035\4@\0=\4A\0035\4B\0=\4C\0035\4D\0=\4E\0035\4F\0=\4G\0035\4H\0=\4I\0035\4J\0=\4K\0035\4L\0=\4M\0035\4N\0=\4O\0035\4P\0=\4Q\0035\4R\0=\4S\0035\4T\0=\4U\0035\4V\0=\4W\0035\4X\0=\4Y\3B\1\2\1K\0\1\0\22<leader><Leader>p\1\3\0\0.<cmd>lua require'hop'.hint_patterns()<cr>\15HopPattern\22<leader><Leader>w\1\3\0\0+<cmd>lua require'hop'.hint_words()<cr>\fHopWord\21<leader><leader>\1\0\1\tname\t+hop\15<leader>pC\1\3\0\0\25<Cmd>PackerClean<CR>\16PackerClean\15<leader>ps\1\3\0\0\26<Cmd>PackerStatus<CR>\17PackerStatus\15<leader>pc\1\3\0\0\27<Cmd>PackerCompile<CR>\18PackerCompile\15<leader>pi\1\3\0\0\27<Cmd>PackerInstall<CR>\18PackerInstall\14<leader>p\1\0\1\tname\f+Packer\15<leader>no\1\3\0\0\27<Cmd>NvimTreeFocus<CR>\19NvimTree Focus\15<leader>nt\1\3\0\0\28<Cmd>NvimTreeToggle<CR>\20NvimTree Toggle\14<leader>n\1\0\1\tname\14+nvimtree\15<leader>w\\\1\3\0\0\23<Cmd>vsp<CR><C-w>l\vvsplit\15<leader>w-\1\3\0\0\22<Cmd>sp<CR><C-w>j\nsplit\15<leader>wl\1\3\0\0\v<C-w>l\17window right\15<leader>wk\1\3\0\0\v<C-w>k\14window up\15<leader>wj\1\3\0\0\v<C-w>j\16window down\15<leader>wh\1\3\0\0\v<C-w>h\16window left\15<leader>ww\1\3\0\0\v<C-w>w\16window next\15<leader>wc\1\3\0\0\19<Cmd>quit!<CR>\19window conceal\15<leader>wq\1\3\0\0\19<Cmd>qall!<CR>\16window Exit\14<leader>w\1\0\1\tname\f+window\15<leader>fd\1\3\0\0009<cmd>edit ~/.config/nvim/lua/daoist1037/init.lua<cr>\18Edit init.lua\15<leader>fn\1\3\0\0\18<cmd>enew<cr>\rNew File\15<leader>fs\1\3\0\0\16<cmd>w!<cr>\14Save File\15<leader>fh\1\3\0\0!<cmd>Telescope help_tags<cr>\14help tags\15<leader>fg\1\3\0\0!<cmd>Telescope live_grep<cr>\14Live grep\15<leader>fb\1\3\0\0\31<cmd>Telescope buffers<cr>\17Find buffers\15<leader>fr\1\3\0\0 <cmd>Telescope oldfiles<cr>\21Open Recent File\15<leader>fl\1\3\0\0001<cmd>Telescope current_buffer_fuzzy_find<cr>\17fuzzy search\15<leader>ff\1\3\0\0$<cmd>Telescope file_browser<cr>\17File browser\15<leader>fF\1\3\0\0\"<cmd>Telescope find_files<cr>\14Find File\14<leader>f\1\0\0\1\0\1\tname\n+file\rregister\vlayout\nwidth\1\0\2\bmax\0032\bmin\3\20\vheight\1\0\2\fspacing\3\3\nalign\tleft\1\0\2\bmax\3\25\bmin\3\1\vwindow\fpadding\1\5\0\0\3\1\3\1\3\1\3\1\vmargin\1\5\0\0\3\0\3\0\3\0\3\0\1\0\2\rposition\vbottom\vborder\vdouble\nicons\1\0\3\ngroup\6+\14separator\b➜\15breadcrumb\a»\fplugins\rspelling\1\0\2\fenabled\1\16suggestions\3\20\1\0\2\14registers\2\nmarks\2\rtriggers\1\0\0\1\2\0\0\r<leader>\nsetup\14which-key\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/opt/which-key.nvim",
    url = "https://github.com/folke/which-key.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\2\n�\4\0\0\5\0\31\0/6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\t\0005\3\3\0005\4\4\0=\4\5\0035\4\6\0=\4\a\0034\4\0\0=\4\b\3=\3\n\0025\3\f\0005\4\v\0=\4\r\0035\4\14\0=\4\15\0035\4\16\0=\4\17\0035\4\18\0=\4\19\0035\4\20\0=\4\21\0035\4\22\0=\4\23\3=\3\24\0025\3\25\0004\4\0\0=\4\r\0034\4\0\0=\4\15\0035\4\26\0=\4\17\0035\4\27\0=\4\19\0034\4\0\0=\4\21\0034\4\0\0=\4\23\3=\3\28\0024\3\0\0=\3\29\0024\3\0\0=\3\30\2B\0\2\1K\0\1\0\15extensions\ftabline\22inactive_sections\1\2\0\0\rlocation\1\2\0\0\rfilename\1\0\0\rsections\14lualine_z\1\2\0\0\rlocation\14lualine_y\1\2\0\0\rprogress\14lualine_x\1\4\0\0\rencoding\15fileformat\rfiletype\14lualine_c\1\2\0\0\rfilename\14lualine_b\1\2\0\0\vbranch\14lualine_a\1\0\0\1\2\0\0\tmode\foptions\1\0\0\23disabled_filetypes\23section_separators\1\3\0\0\b\b\25component_separators\1\3\0\0\b\b\1\0\2\18icons_enabled\2\ntheme\14palenight\nsetup\flualine\frequire\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
-- Config for: bufferline.nvim
time([[Config for bufferline.nvim]], true)
try_loadstring("\27LJ\2\n}\0\4\14\0\a\0\21'\4\0\0006\5\1\0\18\a\2\0B\5\2\4H\b\r�\a\b\2\0X\n\2�'\n\3\0X\v\5�\a\b\4\0X\n\2�'\n\5\0X\v\1�'\n\6\0\18\v\4\0\18\f\n\0\18\r\t\0&\4\r\vF\b\3\3R\b�L\4\2\0\b\b\fwarning\b\nerror\npairs\6 �\2\1\0\5\0\14\0\0176\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\3\0003\4\4\0=\4\5\3=\3\a\0025\3\t\0005\4\b\0=\4\n\0035\4\v\0=\4\f\3=\3\r\2B\0\2\1K\0\1\0\15highlights\23indicator_selected\1\0\2\nguibg\f#282c34\nguifg\f#51afef\tfill\1\0\0\1\0\2\nguibg\f#202328\nguifg\f#282c34\foptions\1\0\0\26diagnostics_indicator\0\1\0\4\16diagnostics\rnvim_lsp\28show_buffer_close_icons\1\22show_buffer_icons\2\20show_close_icon\1\nsetup\15bufferline\frequire\0", "config", "bufferline.nvim")
time([[Config for bufferline.nvim]], false)
-- Config for: kommentary
time([[Config for kommentary]], true)
try_loadstring("\27LJ\2\n�\2\0\0\6\0\v\0!6\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0'\4\5\0004\5\0\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\6\0'\3\4\0'\4\a\0004\5\0\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\b\0'\4\t\0004\5\0\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\6\0'\3\b\0'\4\n\0004\5\0\0B\0\5\1K\0\1\0%<Plug>kommentary_visual_decrease#<Plug>kommentary_line_decrease\15<leader>cd%<Plug>kommentary_visual_increase\6x#<Plug>kommentary_line_increase\15<leader>ci\6n\20nvim_set_keymap\bapi\bvim\0", "config", "kommentary")
time([[Config for kommentary]], false)
-- Config for: onedark.nvim
time([[Config for onedark.nvim]], true)
try_loadstring("\27LJ\2\n�\1\0\0\3\0\t\0\0146\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\1\0'\1\5\0=\1\4\0006\0\6\0'\2\a\0B\0\2\0029\0\b\0B\0\1\1K\0\1\0\nsetup\fonedark\frequire\n<nop> onedark_toggle_style_keymap\tdark\18onedark_style\6g\bvim\0", "config", "onedark.nvim")
time([[Config for onedark.nvim]], false)
-- Config for: lspsaga.nvim
time([[Config for lspsaga.nvim]], true)
try_loadstring("\27LJ\2\n�\1\0\0\4\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\3\0B\1\2\1K\0\1\0\1\0\3\17border_style\nround\22max_preview_lines\3\n\21code_action_icon\t💡\18init_lsp_saga\flspsaga\frequire\0", "config", "lspsaga.nvim")
time([[Config for lspsaga.nvim]], false)
-- Config for: dashboard-nvim
time([[Config for dashboard-nvim]], true)
try_loadstring("\27LJ\2\n�\19\0\0\3\0\v\0\0176\0\0\0009\0\1\0'\2\2\0B\0\2\0026\1\3\0009\1\4\0015\2\6\0=\2\5\0016\1\3\0009\1\4\1'\2\b\0=\2\a\0016\1\3\0009\1\4\0015\2\n\0=\2\t\1K\0\1\0\1\15\0\0i                                                                                                    s    ╔▄▒          ║▄                                                                                   ╔▄▓▒▒▒╔        ║▓█▄                                                                               �\1╔▒▓▒▒▒▒▓▓▒       ║▓▓▓█▄                                                      ▓██                    �\1▒▒▓▓▒▒▒▓▓▓▒      ║▓▓▓▓▓█                                        ╔╔╔      ╔╔╔ ╔╔╔  ╔╔   ╔▄╔    ╔▄╔   �\1▒▓▓▓▓▓▒▓▓▓▓▒▄    ║▓▓▓▓▓█      ║█▄▀▀╚╚▀█    ▄▀▀└ ╚▀▄   ╔█▀╚╚╚▀█▄ ║███    ╔███ ▓██  ▓████▀▓██▄██▀▀███ �\1▒▓▓▓▓▓╚▓▓▓▓▓▓▒   ║▓▓▓▓▓█      ║█      ║█  █▀      ╚█ ▄█       ║█ ▀██▄  ╔███  ▓██  ▓██    ▓███   ║███�\1▒▓▓▓▓▓  ▀▒▒▒▒▒▒▄ ║██████      ║█      ║▓ ║█▀▀▀▀▀▀▀▀▀ ▓        ║▓  ▓██▄ ▓██   ▓██  ▓██    ║██▒   ║███�\1▒▓▓▓▓▓   ╚▓▒▒▒▒▒▒░██████      ║█      ║▓ ╚▓          ▓▒       ║█   ▓██▄██    ▓██  ▓██    ║██▒   ║███�\1▓▒▓▒▒▒    ╚▓▒▒▒▒▒▓▓█████      ║█      ║▓  ╚█▄     ╔▄ ╚▀▄     ╔█▀   └▓███     ▓██  ▓██    ║██▒   ║███�\1▓▒▒▒▒▒      ║▓▒▒▒▓▓▓████      ╚▀      ╚▀    └╚▀▀▀▀      ╚▀▀▀▀       ╚╚╚└     ▀▀▀  ╚▀▀    ╚▀▀└   ╚▀▀▀�\1╚▓▒▒▒▒       ╚▓▓▓▓██▓██▀                                                                              ╚▓▒▒         ▀▓▓███╚                                                                              s    ╚▓          ╚▓█                                                                                 \28dashboard_custom_header\14telescope dashboard_default_executive\1\2\0\0\14dashboard\31indentLine_fileTypeExclude\6g\bvim\tHOME\vgetenv\aos\0", "config", "dashboard-nvim")
time([[Config for dashboard-nvim]], false)
-- Config for: hop.nvim
time([[Config for hop.nvim]], true)
try_loadstring("\27LJ\2\nU\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\tkeys\28etovxqpdygfblzhckisuran\nsetup\bhop\frequire\0", "config", "hop.nvim")
time([[Config for hop.nvim]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\2\n?\0\2\5\0\3\0\0066\2\0\0'\4\1\0B\2\2\0029\2\2\2B\2\1\1K\0\1\0\14on_attach\18lsp_signature\frequire�\3\1\0\r\0\24\0'6\0\0\0009\0\1\0009\0\2\0009\0\3\0B\0\1\0029\1\4\0009\1\5\0019\1\6\1+\2\2\0=\2\a\0016\1\b\0'\3\t\0B\1\2\0023\2\n\0005\3\v\0006\4\f\0\18\6\3\0B\4\2\4X\a\17�8\t\b\0019\t\r\t5\v\14\0=\2\15\v=\0\16\v5\f\17\0=\f\18\vB\t\2\0019\t\19\0019\t\r\t5\v\20\0=\2\15\v5\f\21\0=\f\22\v5\f\23\0=\f\18\vB\t\2\1E\a\3\3R\a�K\0\1\0\1\0\1\26debounce_text_changes\3�\1\bcmd\1\6\0\0\vclangd\23--background-index\31--suggest-missing-includes\17--clang-tidy\28--header-insertion=iwyu\1\0\0\vclangd\nflags\1\0\1\26debounce_text_changes\3�\1\17capabilities\14on_attach\1\0\0\nsetup\vipairs\1\2\0\0\fpyright\0\14lspconfig\frequire\19snippetSupport\19completionItem\15completion\17textDocument\29make_client_capabilities\rprotocol\blsp\bvim\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Telescope lua require("packer.load")({'telescope.nvim'}, { cmd = "Telescope", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file NvimTreeToggle lua require("packer.load")({'nvim-tree.lua'}, { cmd = "NvimTreeToggle", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file NvimFocus lua require("packer.load")({'nvim-tree.lua'}, { cmd = "NvimFocus", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file StartupTime lua require("packer.load")({'vim-startuptime'}, { cmd = "StartupTime", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
time([[Defining lazy-load commands]], false)

vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time([[Defining lazy-load filetype autocommands]], true)
vim.cmd [[au FileType css ++once lua require("packer.load")({'nvim-colorizer.lua'}, { ft = "css" }, _G.packer_plugins)]]
vim.cmd [[au FileType html ++once lua require("packer.load")({'nvim-colorizer.lua'}, { ft = "html" }, _G.packer_plugins)]]
vim.cmd [[au FileType javascript ++once lua require("packer.load")({'nvim-colorizer.lua'}, { ft = "javascript" }, _G.packer_plugins)]]
vim.cmd [[au FileType vim ++once lua require("packer.load")({'nvim-colorizer.lua'}, { ft = "vim" }, _G.packer_plugins)]]
time([[Defining lazy-load filetype autocommands]], false)
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au VimEnter * ++once lua require("packer.load")({'which-key.nvim', 'packer.nvim'}, { event = "VimEnter *" }, _G.packer_plugins)]]
vim.cmd [[au TextYankPost * ++once lua require("packer.load")({'vim-highlightedyank'}, { event = "TextYankPost *" }, _G.packer_plugins)]]
vim.cmd [[au InsertEnter * ++once lua require("packer.load")({'nvim-cmp', 'nvim-autopairs'}, { event = "InsertEnter *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
vim.cmd("augroup END")
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
