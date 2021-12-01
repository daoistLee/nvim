return function()
    -- vim.g.nvim_tree_respect_buf_cwd = 1
    local g = vim.g
    -- g.nvim_tree_ignore = 1
    g.nvim_tree_add_trailing = 0 -- append a trailing slash to folder names
    g.nvim_tree_highlight_opened_files = 3
    g.nvim_tree_quit_on_open = 0 -- closes tree when file's opened
    g.nvim_tree_indent_markers = 1
    g.nvim_tree_window_picker_exclude = {
        filetype = { 'notify', 'packer', 'qf' },
        buftype = {'terminal' },
    }


    require'nvim-tree'.setup {
        disable_netrw       = true,
        hijack_netrw        = true,
        open_on_setup       = true,
        ignore_ft_on_setup  = {''},
        auto_close          = false,
        open_on_tab         = false,
        update_to_buf_dir   = {
            enable = true,
            auto_open = true,
        },
        hijack_cursor       = true,
        update_cwd          = false,
        update_focused_file = {
            enable      = true,
            update_cwd  = false,
            ignore_list = {}
        },
        system_open = {
            cmd  = nil,
            args = {}
        },

        view = {
            width = 30,
            side = 'left',
            auto_resize = true,
            mappings = {
                custom_only = false,
                list = {}
            }
        }
    }
end

