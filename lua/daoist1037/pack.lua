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
    }
    use {
        "hrsh7th/nvim-cmp",
        requires = {
            {'L3MON4D3/LuaSnip', after = 'nvim-cmp'},
            {"hrsh7th/cmp-nvim-lsp", after = 'nvim-cmp'},
            { "hrsh7th/cmp-nvim-lsp-document-symbol", after = "nvim-cmp" },
            { "hrsh7th/cmp-cmdline", after = "nvim-cmp" },
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
        -- opt = true,
        -- disable = true,
    }


    -------------------------------------
    ------------- Tools -----------------
    -------------------------------------
    -- use { "nvim-lua/popup.nvim" }
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
        "nvim-treesitter/playground",
        requires = "nvim-treesitter",
    }
    use {
        "nvim-treesitter/completion-treesitter",
        requires = "nvim-treesitter",
    }
    use {
        "nvim-treesitter/nvim-treesitter-refactor",
        requires = "nvim-treesitter",
    }
    use {
        "nvim-treesitter/nvim-treesitter-textobjects",
        requires = "nvim-treesitter",
    }
    use {
        "dstein64/vim-startuptime",
        cmd = "StartupTime",
        opt = true,
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
    -- 'tabout' is imcompatible with 'nvim-autopairs'

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
    }  
    use {
        "blackCauldron7/surround.nvim",
        config = function()
            require("surround").setup { mappings_style = "sandwich" }
        end,
        --- add: sa{motion/textobject}{delimiter}
        --- delete: sd{delimiter}
        --- replace: sr{old}{new}
        --- ss repeats last surround command.
    }

end)
