return function()
    local cmp = require'cmp'
    local lspkind = require('lspkind')
    cmp.setup({
        formatting = {
            format = lspkind.cmp_format({with_text = false, maxwidth = 50})
        },
        confirm_opts = {
            behavior = cmp.ConfirmBehavior.Replace,
            select = true,
        },
        completion = {
            completeopt = "menu,menuone,noinsert"
        },
        documentation = {
            border = {"╭", "─", "╮", "│", "╯", "─", "╰", "│"}
        },
        snippet = {
            expand = function(args)
                -- For `vsnip` user.
                -- vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` user.

                -- For `luasnip` user.
                -- require('luasnip').lsp_expand(args.body)

                -- For `ultisnips` user.
                -- vim.fn["UltiSnips#Anon"](args.body)
            end,
        },
        mapping = {
            ['<Tab>'] = cmp.mapping.select_next_item(),
            ['<S-Tab>'] = cmp.mapping.select_prev_item(), 
            ['<C-d>'] = cmp.mapping.scroll_docs(-4),
            ['<C-f>'] = cmp.mapping.scroll_docs(4),
            -- ['<C-<space>>'] = cmp.mapping.complete(),
            -- ['<C-e>'] = cmp.mapping.close(),
            ['<CR>'] = cmp.mapping.confirm({
                select = true,
            }),
            --[[ ["<Tab>"] = function(fallback)
                if cmp.visible() then
                    cmp.select_next_item()
                elseif require("luasnip").expand_or_jumpable() then
                    vim.fn.feedkeys(vim.api.nvim_replace_termcodes("<Plug>luasnip-expand-or-jump", true, true, true), "")
                else
                    fallback()
                end
            end,
            ["<S-Tab>"] = function(fallback)
                if cmp.visible() then
                    cmp.select_prev_item()
                elseif require("luasnip").jumpable(-1) then
                    vim.fn.feedkeys(vim.api.nvim_replace_termcodes("<Plug>luasnip-jump-prev", true, true, true), "")
                else
                    fallback()
                end
            end, ]]
        },
        sources = {
            { name = 'orgmode' },
            { name = 'nvim_lsp' },
            { name = 'treesitter' },

            -- For vsnip user.
            --   { name = 'vsnip' },

            -- For luasnip user.
            { name = 'luasnip' },

            -- For ultisnips user.
            -- { name = 'ultisnips' },

            { name = 'buffer' },
            { name = 'path' },
        }
    })
    -- local cmp_autopairs = require('nvim-autopairs.completion.cmp')
    -- cmp.event:on( 'confirm_done', cmp_autopairs.on_confirm_done())
    --
    -- Use buffer source for `/`. 
    --[[ cmp.setup.cmdline('/', { 
        sources = { 
            { name = 'buffer' } 
        } 
    }) 
    -- Use cmdline & path source for ':'. 
    cmp.setup.cmdline(':', { 
        sources = cmp.config.sources({ 
            { name = 'path' } 
        }, { 
            { name = 'cmdline' } 
        }) 
    }) ]]




end
