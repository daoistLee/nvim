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
    use {
        "wbthomason/packer.nvim",
        event = "VimEnter",
    }
    use {
        'kyazdani42/nvim-tree.lua',
        requires = 'kyazdani42/nvim-web-devicons',
        config = require('daoist1037.plugins_config.nvim-tree')
    }

    use {
        "dstein64/vim-startuptime",
        cmd = "StartupTime",
    }

    use {"nvim-lua/plenary.nvim",}
    use {
        'nvim-telescope/telescope.nvim',
        requires = { {'nvim-lua/plenary.nvim'} },
        config = require('daoist1037.plugins_config.telescope')
    }

    use {'nvim-treesitter/nvim-treesitter',}

    use {   'tpope/vim-surround',}

    use {'norcalli/nvim-colorizer.lua',}
    use { 'drewtempelmeyer/palenight.vim', }
    use {
        'navarasu/onedark.nvim',
        config = function()
            vim.g.onedark_style = 'cool'
        end
    }

    use {
        "folke/which-key.nvim",
        config = require('daoist1037.plugins_config.which-key')
    }

    use { 'kyazdani42/nvim-web-devicons' ,}
    use {
        'glepnir/dashboard-nvim',
        config = require('daoist1037.plugins_config.dashboard-nvim')
    }
    use {
        'hoob3rt/lualine.nvim',
        requires = {'kyazdani42/nvim-web-devicons', opt = true},
        config = require('daoist1037.plugins_config.lualine')
    }

    use {
        'phaazon/hop.nvim',
        as = 'hop',
        config = function()
            require'hop'.setup { keys = 'etovxqpdygfblzhckisuran' }
            -- vim.api.nvim_set_keymap('n', '$', "<cmd>lua require'hop'.hint_words()<cr>", {})
        end
    }

    use {
        'akinsho/bufferline.nvim',
        config = require('daoist1037.plugins_config.bufferline')
    }

    use {
        "akinsho/toggleterm.nvim",
        config = require('daoist1037.plugins_config.toggleterm')
    }

    use {'yamatsum/nvim-cursorline'}
    use {
        'b3nj5m1n/kommentary',
        config = require('daoist1037.plugins_config.kommentary')
    }

    use {
        'glepnir/indent-guides.nvim',
        config = require('daoist1037.plugins_config.indent-guides')
    }

    -- use {
    --     'hrsh7th/nvim-cmp',
    --     config = require('daoist1037.plugins_config.nvim-cmp')
    -- }
    -- use {
    --     'folke/lua-dev.nvim',
    -- }
    -- use {
    --     'neovim/nvim-lspconfig',
    --     config = require('daoist1037.plugins_config.nvim-lspconfig')
    -- }

    -- use {
    --     'kabouzeid/nvim-lspinstall',
    --     config = require('daoist1037.plugins_config.nvim-lspinstall')
    -- }
    -- use {
    --     'alexaandru/nvim-lspupdate',
    -- }

end)
