return function()
    local  wk = require("which-key")
        wk.setup(
            {
                triggers = { "<leader>" },
                plugins = {
                marks = true, -- shows a list of your marks on ' and `
                registers = true, -- shows your registers on " in NORMAL or <C-r> in INSERT mode
                spelling = {
                enabled = false, -- enabling this will show WhichKey when pressing z= to select spelling suggestions
                suggestions = 20, -- how many suggestions should be shown in the list?
                }
                },
                icons = {
                    breadcrumb = "»", -- symbol used in the command line area that shows your active key combo
                    separator = "➜", -- symbol used between a key and it's label
                    group = "+", -- symbol prepended to a group
                },
                window = {
                    border = "single", -- none, single, double, shadow
                    position = "bottom", -- bottom, top
                    margin = { 0, 0, 0, 0 }, -- extra window margin [top, right, bottom, left]
                    padding = { 1, 1, 1, 1 }, -- extra window padding [top, right, bottom, left]
                },
                layout = {
                    height = { min = 1, max = 25 }, -- min and max height of the columns
                    width = { min = 20, max = 50 }, -- min and max width of the columns
                    spacing = 3, -- spacing between columns
                    align = "left", -- align columns left, center or right
                },
            }
        )
        wk.register {
            ["<leader>f"] = { name = "+file" },
            ["<leader>ff"] = { "<cmd>Telescope find_files<cr>", "Find File" },
            ["<leader>fr"] = { "<cmd>Telescope oldfiles<cr>", "Open Recent File" },
            ["<leader>fb"] = { "<cmd>Telescope buffers<cr>", "Find buffers" },
            ["<leader>fl"] = { "<cmd>Telescope live_grep<cr>", "Find Words" },

            ["<leader>fs"] = { "<cmd>w!<cr>", "Save File" },
            ["<leader>fq"] = { "<cmd>qall!<cr>", "Exit" },
            ["<leader>fn"] = { "<cmd>enew<cr>", "New File" },
            ["<leader>fd"] = { "<cmd>enew<cr>", "Edit init.lua" },

            ["<leader>w"] = { name = "+window" },
            ["<leader>wc"] = { "<C-w>c", "window conceal" },
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

            ["<leader>c"] = { name = "+kommentary" },
            ["<leader>ci"] = { "<Plug>kommentary_motion_increase", "motion_increase" },
            ["<leader>cd"] = { "<Plug>kommentary_motion_decrease", "motion_decrease" },

            ["<leader>p"] = { name = "+Packer" },
            ["<leader>pi"] = { "<Cmd>PackerInstall<CR>", "PackerInstall" },
            ["<leader>pc"] = { "<Cmd>PackerCompile<CR>", "PackerCompile" },
            ["<leader>ps"] = { "<Cmd>PackerStatus<CR>", "PackerStatus" },
            ["<leader>pC"] = { "<Cmd>PackerClean<CR>", "PackerClean" },
        }
    end
