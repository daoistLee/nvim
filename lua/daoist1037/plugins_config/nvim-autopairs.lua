return function()
    require('nvim-autopairs').setup{
        disable_filetype = { "TelescopePrompt" , "vim" },

    }
    -- require('nvim-autopairs').setup {fast_wrap = {}}
    -- require("nvim-autopairs.completion.cmp").setup({
    --     map_cr = true,
    --     -- map_complete = true,
    --     -- auto_select = true
    -- })
end
