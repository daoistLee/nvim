# Vim-daoist1037
my vimrc

# relay
+ python3
+ FloatTerm
+ fzf

# Plug
```vim
Plug 'glepnir/dashboard-nvim'
Plug 'itchyny/lightline.vim'                  "statusline
Plug 'honza/vim-snippets'                     "snippets
Plug 'SirVer/ultisnips'
Plug 'kien/rainbow_parentheses.vim'           "彩虹括号
Plug 'tpope/vim-surround'                     "
Plug 'easymotion/vim-easymotion'              "快速移动
Plug 'junegunn/fzf', {'do':{->fzf#install()}} "快速查找
Plug 'junegunn/fzf.vim'
Plug 'scrooloose/nerdcommenter'               "快速注释
Plug 'rakr/vim-one'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'altercation/vim-colors-solarized'
Plug 'machakann/vim-highlightedyank'          "高亮复制区域
Plug 'voldikss/vim-floaterm'                  "浮动终端
Plug 'liuchengxu/vim-which-key'
```

# keys bind
```vim
let mapleader="\<space>"
nnoremap <Leader>fw :w!<CR>
nnoremap <Leader>fq :qall<CR>
nnoremap <Leader>fs :source $MYVIMRC<CR>     
nnoremap <Leader>fd :edit $MYVIMRC<CR>     
nnoremap <Leader>w\ :vsp<CR><C-w><C-l>
nnoremap <Leader>w- :sp<CR><C-w><C-k>
nnoremap <Leader>ww <C-w>w
nnoremap <Leader>wh <C-w>h
nnoremap <Leader>wj <C-w>j
nnoremap <Leader>wk <C-w>k
nnoremap <Leader>wl <C-w>l
nnoremap <Leader>wd <C-w>c
nnoremap <C-p> :Files<CR>
nnoremap <silent> <Leader>fp :NERDTree<CR>
nnoremap <silent> <Leader>fb :Buffers<CR>
nnoremap <silent> <Leader>fg :Ag <CR>
nnoremap <silent> <Leader>fl :BLines<CR>
nnoremap <silent> <Leader>fh :History<CR>
nnoremap <silent> <Leader>fc :Commands<CR>
nnoremap <silent> <Leader>fm :Maps<CR>
nnoremap <silent> <Leader>wp :vs<CR><C-w><C-l> :term python3<CR>
nnoremap <silent> <Leader>ws :vs<CR><C-w><C-l> :term <CR>
nnoremap <silent> <Leader>tt :FloatermToggle<CR>
nnoremap <silent> <Leader>tk :FloatermKill<CR>
nnoremap <silent> <Leader>ts :FloatermShow<CR>
nnoremap <silent> <Leader>th :FloatermHide<CR>
nnoremap <silent> <Leader>tr :FloatermNew ranger<CR>
nnoremap <silent> <Leader>tf :FloatermNew fzf  --preview 'highlight -O ansi {}'<CR>
nnoremap <BackSpace> :nohl<CR>
"				\ci				注释
"				\\w				easymotion
"               i<C-t>          列表降级
"               i<C-d>          列表升级
```

# path
```
/home/dd/.config/nvim/
├── UltiSnips
│   └── startify.snippets
├── init.vim -> /home/dd/.local/vim/vimrc
├── mysnippets
│   ├── markdown.snippets
│   └── 新建文件夹
│       ├── markdown.snippets
│       ├── python.snippets
│       ├── pythonutil.py
│       ├── snippets.snippets
│       ├── temp_markdown.snippets
│       ├── tex.snippets
│       └── vim.snippets
└── vim -> /home/dd/.local/vim

/home/dd/.local/share/nvim/site/autoload/
└── plug.vim

0 directories, 1 file
```
