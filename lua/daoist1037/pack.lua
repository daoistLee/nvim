vim.cmd "packadd packer.nvim"

local present, packer = pcall(require, "packer")

if not present then
   local packer_path = vim.fn.stdpath "data" .. "/site/pack/packer/opt/packer.nvim"

   print "Cloning packer.."
   -- remove the dir before cloning
   vim.fn.delete(packer_path, "rf")
   vim.fn.system {
      "git",
      "clone",
      "https://github.com/wbthomason/packer.nvim",
      "--depth",
      "20",
      packer_path,
   }

   vim.cmd "packadd packer.nvim"
   present, packer = pcall(require, "packer")

   if present then
      print "Packer cloned successfully."
   else
      error("Couldn't clone packer !\nPacker path: " .. packer_path)
   end
end

packer.init {
   display = {
      open_fn = function()
         return require("packer.util").float { border = "single" }
      end,
      prompt_border = "single",
   },
   git = {
      clone_timeout = 600, -- Timeout, in seconds, for git clones
   },
   auto_clean = true,
}

local use = packer.use
return packer.startup(function()
    -------------------------------------
    ------------ Packer -----------------
    -------------------------------------
    use {
        "wbthomason/packer.nvim",
        event = "VimEnter",
    }


    -------------------------------------
    -------------- UI -------------------
    -------------------------------------
    use {
        'norcalli/nvim-colorizer.lua',
        ft = { 'css', 'javascript', 'vim', 'html' },
        config = [[require('colorizer').setup {'css', 'javascript', 'vim', 'html'}]],
        -- event = 'BufRead',
    }
    use {
        'navarasu/onedark.nvim',
        config = function()
            vim.g.onedark_style = 'dark'
            vim.g.onedark_toggle_style_keymap = '<nop>'
            -- vim.g.onedark_transparent_background = true
            require('onedark').setup()
        end,
    }
    use { 'kyazdani42/nvim-web-devicons' ,}
    use {
        'glepnir/dashboard-nvim',
        config = require('daoist1037.plugins_config.dashboard-nvim')
    }
    use {
        'hoob3rt/lualine.nvim',
        requires = {'kyazdani42/nvim-web-devicons', opt = true},
        config = require('daoist1037.plugins_config.lualine'),
    }
    use {
        'akinsho/bufferline.nvim',
        config = require('daoist1037.plugins_config.bufferline'),
        -- event = 'BufRead',
        -- event = 'User ActuallyEditing',
    }
    use {
        'yamatsum/nvim-cursorline',
    }
    --[[ use {
        'p00f/nvim-ts-rainbow',
        config = require('daoist1037.plugins_config.nvim-ts-rainbow'),
        -- event = 'BufRead',
    } ]]


    -------------------------------------
    -------------- LSP ------------------
    -------------------------------------
    use {
        'neovim/nvim-lspconfig',
        -- opt = true,
        config = require('daoist1037.plugins_config.nvim-lspconfig'),
    } 
    use {
        'tami5/lspsaga.nvim',
        config = require('daoist1037.plugins_config.lspsaga'),
        --[[ cmd = {
            "lua require('lspsaga.hover').render_hover_doc()",
            "lua require('lspsaga.signaturehelp').signature_help()",
            "lua require('lspsaga.rename').rename()",
            "lua require'lspsaga.provider'.preview_definition()",
            "lua require'lspsaga.provider'.lsp_finder()",
        } ]]
    }
    use {
        "hrsh7th/nvim-cmp",
        requires = {
            {'L3MON4D3/LuaSnip', after = 'nvim-cmp'},
            {"hrsh7th/cmp-nvim-lsp", after = 'nvim-cmp'},
            {"onsails/lspkind-nvim"},
            {"hrsh7th/cmp-buffer", after = 'nvim-cmp'},
            {"hrsh7th/cmp-nvim-lua", after = 'nvim-cmp'},
            {"hrsh7th/cmp-path", after = 'nvim-cmp'},
            {"octaltree/cmp-look", after = 'nvim-cmp'},
            {"f3fora/cmp-spell", after = 'nvim-cmp'},
            { 'saadparwaiz1/cmp_luasnip', after = 'nvim-cmp' },
        },
        config = require('daoist1037.plugins_config.nvim-cmp'),
        event = 'InsertEnter *',
    }  
    use {
        'williamboman/nvim-lsp-installer',
        -- opt = true,
        -- after = 'nvim-lspconfig',
    }
    use {
        "ray-x/lsp_signature.nvim",
        opt = true,
        -- disable = true,
    }


    -------------------------------------
    ------------- Tools -----------------
    -------------------------------------
    use {
        'kyazdani42/nvim-tree.lua',
        requires = 'kyazdani42/nvim-web-devicons',
        config = require('daoist1037.plugins_config.nvim-tree'),
        cmd = {'NvimTreeToggle',  'NvimFocus'},
    }
    use {"nvim-lua/plenary.nvim",}
    use {
        'nvim-telescope/telescope.nvim',
        requires = { {'nvim-lua/plenary.nvim'} },
        config = require('daoist1037.plugins_config.telescope'),
        cmd = 'Telescope',
    }
    use {
        'nvim-treesitter/nvim-treesitter',
        -- config = require('daoist1037.plugins_config.nvim-treesitter'),
        -- event = 'BufRead',
    }

    use {
        "dstein64/vim-startuptime",
        cmd = "StartupTime",
    }


    -------------------------------------
    --------------- Keys ----------------
    -------------------------------------
    use {
        "folke/which-key.nvim",
        config = require('daoist1037.plugins_config.which-key'),
        event = 'VimEnter',
    }
    use {
        'phaazon/hop.nvim',
        -- as = 'hop',
        config = function()
            require'hop'.setup { keys = 'etovxqpdygfblzhckisuran' }
            -- vim.api.nvim_set_keymap('n', '<leader><leader>w', "<cmd>lua require'hop'.hint_words()<cr>", {})
        end,
        -- cmd = {'HopWord', 'HopPattern'},
    }

    -------------------------------------
    --------------- Edit ----------------
    -------------------------------------
    use {
        'machakann/vim-highlightedyank',
        event = 'TextYankPost *',
    }
    use {
        'windwp/nvim-autopairs',
        config = require('daoist1037.plugins_config.nvim-autopairs'),
        event = 'InsertEnter *',
    }
    use {
        'b3nj5m1n/kommentary',
        config = require('daoist1037.plugins_config.kommentary'),
        --keys = {
        --    "<Plug>kommentary_line_increase",
        --    "<Plug>kommentary_line_decrease",
        --}
    }  
    -- use {   'tpope/vim-surround',}


    --[[ use {
        'glepnir/indent-guides.nvim',
        config = require('daoist1037.plugins_config.indent-guides')
    } ]]

end)
