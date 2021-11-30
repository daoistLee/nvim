return function()
    local npairs = require "nvim-autopairs"
    -- local cmp_autopairs = require("nvim-autopairs.completion.cmp")
    -- local Rule = require "nvim-autopairs.rule" 

    npairs.setup {
        disable_filetype = { "TelescopePrompt" , "vim" },
        --ignored_next_char = [[ [%w%%%{%(%[%'%'%.] ]]
        ignored_next_char = "[%w%.%(%{%[]",
    }

    -- npairs.add_rule(Rule("|", "", "ql"))

    --[[ local cmp = require "cmp"
    cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done()) ]]

    -- require('nvim-autopairs').setup {fast_wrap = {}}
    -- require("nvim-autopairs.completion.cmp").setup({
    --     map_cr = true,
    --     -- map_complete = true,
    --     -- auto_select = true
    -- })
end
