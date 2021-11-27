return function()
    require('telescope').setup {
        defaults = {
            -- scroll_strategy = [[limit]],
            -- initial_mode = [[normal]]
            dynamic_preview_title = true,

        },
        pickers = {
            find_files = {
                hidden = true,
                no_ignore = true,
            },
            file_browser = {
                hidden = true,
                no_ignore = true,
            },
            oldfiles = {
            },
            live_grep = {
            }
        }
    }
    -- require('telescope').load_extension('projects')
end
