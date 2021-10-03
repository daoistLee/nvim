return function()
    require('telescope').setup {
        defaults = {
            -- scroll_strategy = [[limit]],
        },
        pickers = {
            find_files = {
                hidden = true,
                no_ignore = true,
            },
        }
    }
end
