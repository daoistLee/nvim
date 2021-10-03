return {
    signcolumn     = "yes",
    relativenumber = true,
    number         = true,
    cursorline     = true,
    cursorcolumn   = true,
    showmode       = true,
    showcmd        = true,
    mouse          = "a",
    autoindent     = true,
    tabstop        = 2,
    shiftwidth     = 4,
    expandtab      = true,
    textwidth      = 80,
    wrap           = false,
    linebreak      = true,
    wrapmargin     = 2,
    whichwrap      = "b,s,<,>,h,l",
    scrolloff      = 10,
    sidescrolloff  = 15,
    laststatus     = 2,
    ruler          = true,
    showmatch      = true,
    showtabline    = 2,
    hlsearch       = true,
    ignorecase     = true,
    backup         = false,
    swapfile       = false,
    encoding       = "utf-8",
    foldenable     = false,
    autochdir      = true,
    autoread       = true,
    wildmenu       = true,
    background     = "dark",
    timeout        = true,
    ttimeout       = true,
    timeoutlen     = 250,
    ttimeoutlen    = 0,
    termguicolors  = true,
    completeopt    = "menuone,noinsert",
    -- clipboard      = "unnamedplus",
    splitbelow     = true,
    splitright     = true,
    spell          = false,
    spelllang      = "en_us,cjk",
    spellfile      = vim.fn.expand("~/dotfiles/nvim/spell/en.utf-8.add"),
    spelloptions   = "camel",
    -- gcr            = [[n-v-c:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor,]]
    --     .. [[ve:ver35-Cursor,]]
    --     .. [[o:hor50-Cursor,]]
    --     .. [[i-ci:ver25-Cursor/lCursor,]]
    --     .. [[r:hor50-Cursor/lCursor]],
}
