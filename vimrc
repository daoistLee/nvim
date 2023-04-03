
runtime! debian.vim
"----------------------------------------------------------------
"----------------------------基本配置----------------------------
"----------------------------------------------------------------
set number	"显示行号
set relativenumber	"显示相对行号·
set cursorline	"高亮当前行
set cursorcolumn	"高亮当前列
syntax on		"语法高亮
syntax enable
filetype on	"侦测文件类型
filetype indent on		"开启文件类型检查，并且载入与该类型对应的缩进规则
filetype plugin on           "针对不同的文件类型加载对应的插件
filetype plugin indent on    " 启用自动补全
set showmode	"在底部显示，当前处于命令模式还是插入模式
set showcmd		"命令模式下，在底部显示，当前键入的指令
set mouse=a		"支持使用鼠标
set t_Co=256		"启用256色
set autoindent	"按下回车键后，下一行的缩进会自动跟上一行的缩进保持一致
set tabstop=2		"按下 Tab 键时，Vim 显示的空格数
set shiftwidth=4	"在文本上按下>>（增加一级缩进）、<<（取消一级缩进）或者==（取消全部缩进）时，每一级的字符数
set expandtab			"由于 Tab 键在不同的编辑器缩进不一致，该设置自动将 Tab 转为空格
set textwidth=80	"一行80个字符
set wrap				"自动折行，即太长的行分成几行显示
set linebreak		"只有遇到指定的符号（比如空格、连词号和其他标点符号），才发生折行。也就是说，不会在单词内部折行
set wrapmargin=2	"指定折行处与编辑窗口的右边缘之间空出的字符数
set scrolloff=5		"垂直滚动时，光标距离顶部/底部的位置（单位：行）
set sidescrolloff=15	"水平滚动时，光标距离行首或行尾的位置（单位：字符）。该配置在不折行时比较有用
set laststatus=2			" 总显示最后一个窗口的状态行；设为1则窗口数多于一个的时候显示最后一个窗口的状态行；0不显示最后一个窗口的状态行"
set ruler							"在状态栏显示光标的当前位置（位于哪一行哪一列）
set showmatch					"光标遇到圆括号、方括号、大括号时，自动高亮对应的另一个圆括号、方括号和大括号
set showtabline=2			"总是显示标签栏"
set hlsearch					"搜索时，高亮显示匹配结果
set ignorecase				"搜索忽略大小写
set nobackup				"不创建备份文件。默认情况下，文件保存时，会额外创建一个备份文件，它的文件名是在原文件名的末尾，再添加一个波浪号（〜）
set noswapfile
set helplang=cn                " 中文文档"
set nocompatible			"设置不兼容vi
set encoding=utf-8		"使用 utf-8 编码
set fenc=utf-8
set fileencodings=utf-8,gbk,cp936,latin-1
set fileformat=unix
set fileformats=unix,mac,dos
set completeopt=preview,menuone
set listchars=tab:>-,space:▯        "Tab和Space的显示
set list
set backupdir=~/.local/.vim/.backup//	"设置备份文件、交换文件、操作历史文件的保存位置
set autochdir		"自动切换工作目录。这主要用在一个 Vim 会话之中打开多个文件的情况，默认的工作目录是打开的第一个文件的目录。该配置可以将工作目录自动切换到，正在编辑的文件的目录。
set autoread		"打开文件监视。如果在编辑过程中文件发生外部改变（比如被别的编辑器编辑了），就会发出提示。
set wildmenu		"命令模式下，底部操作指令按下 Tab 键自动补全。第一次按下 Tab，会显示所有匹配的操作指令的清单；第二次按下 Tab，会依次选择各个指令。
set path+=/mnt/d/study/**,/home/daoist/.config/nvim/**,/home/daoist/.local/vim/**
"set go=
set fillchars=vert:\|
",stl:\ ,stlnc:\  " 在被分割的窗口间显示空白，便于阅读
"----------------------------------------------------------------
"----------------------------vim三种模式下光标样式---------------
"----------------------------------------------------------------
"set gcr=n-v-c:ver25-Cursor/lCursor,ve:ver35-Cursor,o:hor50-Cursor,i-ci:ver25-Cursor/lCursor,r:hor50-Cursor/lCursor
set gcr=n-v-c:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor,ve:ver35-Cursor,o:hor50-Cursor,i-ci:ver25-Cursor/lCursor,r:hor50-Cursor/lCursor
"----------------------------------------------------------------
"----------------------------重新打开一个文件时跳到上一次编辑的地方
"----------------------------------------------------------------
"if has("autocmd")
    "au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
"endif
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
"----------------------------------------------------------------
"----------------------------python3路径-------------------------
"----------------------------------------------------------------
let g:python3_host_skip_check=1
let g:python_host_skip_check=1
let g:python3_host_prog="/usr/bin/python3"
"----------------------------------------------------------------
"----------------------------插件管理----------------------------
"----------------------------------------------------------------
call plug#begin('~/.local/vim/plugged')
"Plug 'preservim/nerdtree'                    "文件管理
"Plug 'mbbill/undotree'
"Plug 'mhinz/vim-startify'
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
"Plug 'vimwiki/vimwiki'
"Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install()  }, 'for':['markdown','vim-plug']  }  "markdown
"Plug 'dhruvasagar/vim-table-mode',{'for':['markdown','vim-plug']}
"Plug 'dkarter/bullets.vim',{'for':['markdown','vim-plug']}
"Plug 'neoclide/coc.nvim', {'branch': 'release'} "代码补全
Plug 'voldikss/vim-floaterm'                  "浮动终端
Plug 'liuchengxu/vim-which-key'
call plug#end()
"----------------------------------------------------------------
"----------------------------onedark设置-------------------------
"----------------------------------------------------------------
set termguicolors
set background=dark
"let g:solarized_termcolors=256
"colorscheme palenight
"colorscheme solarized
colorscheme one
"hi Comment guifg=#5C6370 ctermfg=59
"hi Normal     ctermbg=NONE guibg=NONE
"hi LineNr     ctermbg=NONE guibg=NONE
"hi SignColumn ctermbg=NONE guibg=NONE
"hi LineNr ctermbg=NONE guibg=NONE
"let g:rehash256 = 1
"hi Normal     ctermbg=NONE guibg=NONE
"hi LineNr     ctermbg=NONE guibg=NONE
"hi SignColumn ctermbg=NONE guibg=NONE
"hi Comment guifg=#5C6370 ctermfg=59 cterm=italic
let g:lightline = {
    \ 'colorscheme': 'palenight',
    "\ 'colorscheme': 'solarized',
    \ 'active': {
    \   'left': [ [ 'mode', 'paste' ],
    \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ],
    \   'right': [ [ 'lineinfo' ],
    \              [ 'percent' ],
    \              [ 'fileformat', 'fileencoding', 'filetype' ] ]
    \ },
    \ 'component': {
    \   'helloworld': 'Hello, daoist!'
    \ },
    \ 'component_function': {
    \   'gitbranch': 'fugitive#head',
    \   'filename': 'LightlineFilename'
    \ },
    \ }
function! LightlineFilename()
    let filename = expand('%:t') !=# '' ? expand('%:p') : '[No Name]'
    "let modified = &modified ? ' +' : ''
    "return filename . modified
    return filename 
endfunction
"----------------------------------------------------------------
"----------------------------snippets----------------------------
"----------------------------------------------------------------
let g:UltiSnipsExpandTrigger="<tab>"
"let g:UltiSnipsListSnippets="<C-i>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
let g:UltiSnipsSnippetDirectories=["UltiSnips","mysnippets"]
"----------------------------------------------------------------
"----------------------------F5 一键编译运行| 文件头 | 悬浮窗口--
"----------------------------------------------------------------
source ~/.local/vim/myconfig/self_run.vim
"----------------------------------------------------------------
"----------------------------fzf配置-----------------------------
"----------------------------------------------------------------
"let g:fzf_layout = {'window':'call OpenFloatingWin()'}
let $FZF_DEFAULT_OPTS = '--layout=reverse --inline-info' 
let $FZF_DEFAULT_COMMAND='fdfind --hidden --type f '

let g:fzf_layout = {   'window': { 'width' : 0.6, 'height' : 0.6}  }
"let g:fzf_layout = { 'window': '-tabnew' }
"----------------------------------------------------------------
"----------------------------vim-floaterm------------------------
"----------------------------------------------------------------
let g:floaterm_winblend = 0
let g:floaterm_borderchars = ['─', '│', '─', '│', '╭', '╮', '╯', '╰']
let g:floaterm_width=0.6
let g:floaterm_height=0.6
hi Floaterm guibg=NONE
hi FloatermBorder guibg=NONE guifg=cyan
hi FloatermNC guibg=NONE
"----------------------------------------------------------------
"----------------------------cocnvim配置-------------------------
"----------------------------------------------------------------
set hidden
set nobackup
set nowritebackup
set cmdheight=1
set updatetime=300
set shortmess+=c
set foldcolumn=0
"----------------------------------------------------------------
"----------------------------MarkdownPreview---------------------
"----------------------------------------------------------------
source ~/.local/vim/myconfig/self_markdown.vim
"----------------------------------------------------------------
"----------------------------快捷键映射--------------------------
"----------------------------------------------------------------
let mapleader="\<space>"
"map <F5> :call CompileRunGcc()<CR>
nnoremap <Leader>fw :w!<CR>
"nnoremap <Leader>fq :bd %<CR> :q!<CR>
nnoremap <Leader>fq :qall<CR>
"nnoremap <Leader>fs :source ~/.local/vim/vimrc<CR>
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
"nnoremap <silent> <Leader>f :Files<CR>
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
"nnoremap <silent> <Leader>tf :FloatermNew fzf <CR>
nnoremap <BackSpace> :nohl<CR>
"nnoremap <silent> <Leader>rg :Rg <CR>
"				\ci				注释
"				\\w				easymotion
"               i<C-t>          列表降级
"               i<C-d>          列表升级

"----------------------------------------------------------------
"----------------------------vim-which-key-----------------------
"----------------------------------------------------------------
let g:which_key_use_floating_win = 0
"let g:which_key_floating_relative_win=1
nnoremap <silent> <leader> :WhichKey '<Space>'<CR>
set timeoutlen=200
let g:mapleader = "\<Space>"
let g:maplocalleader = ','
call which_key#register('<Space>', "g:which_key_map")
nnoremap <silent> <leader> :<c-u>WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :<c-u>WhichKeyVisual '<Space>'<CR>
autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 showmode ruler
let g:which_key_map =  {}
let g:which_key_map['c'] = { 'name': 'which_key_ignore' }
let g:which_key_map['a'] = { 'name': 'which_key_ignore' }
let g:which_key_map['w'] = {
      \ 'name' : '+windows' ,
      \ 'w' :  'other-window'          ,
      \ 'd' :  'delete-window'         ,
      \ '-' :  'split-window-below'    ,
      \ '\' :  'split-window-right'    ,
      \ 'h' :  'window-left'           ,
      \ 'j' :  'window-below'          ,
      \ 'l' :  'window-right'          ,
      \ 'k' :  'window-up'             ,
      \ 'p' :  'Python3'               ,
      \ 's' :  'Shell'                 ,
      \ }
let g:which_key_map['f'] = {
      \ 'name' : '+file and fzf'       ,
      \ 'p' :  'NERDTree'              ,
      \ 'w' :  'write file'            ,
      \ 's' :  'source $MYVIMRC'       ,
      \ 'q' :  'quit'                  ,
      \ 'b' :  'fzf-buffers'           ,
      \ 'l' :  'fzf-blines'            ,
      \ 'h' :  'fzf-history'           ,
      \ 'g' :  'fzf-ag'                ,
      \ 'c' :  'fzf-commands'          ,
      \ 'm' :  'fzf-maps'              ,
      \ }
let g:which_key_map['t'] = {
      \ 'name' : '+floaterm and term'           ,
      \ 't' :  'FloatermToggle'        ,
      \ 'k' :  'FloatermKill'          ,
      \ 's' :  'FloatermShow'          ,
      \ 'h' :  'FloatermHide'          ,
      \ 'r' :  'FloatermNew-ranger'    ,
      \ 'f' :  'FloatermNew fzf'       ,
      \ }
let g:which_key_map[' '] = {
      \ 'name' : '+easymotion'                                      ,
      \ 'w' :  [ '<Plug>(easymotion-w)','word-forward']             ,
      \ 'b' :  [ '<Plug>(easymotion-b)','word-backward']            ,
      \ 'j' :  [ '<Plug>(easymotion-j)','line-downward']            ,
      \ 'k' :  [ '<Plug>(easymotion-k)','line-upward']              ,
      \ 'f' :  [ '<Plug>(easymotion-f)','find{char}-right']         ,
      \ 't' :  [ '<Plug>(easymotion-t)','find{char}-left']          ,
      \ }


"----------------------------------------------------------------
"----------------------------dash-board--------------------------
"----------------------------------------------------------------
let g:dashboard_default_executive ='fzf'
let g:dashboard_custom_shortcut={
  \ 'last_session'       : 'SPC s l',
  \ 'find_history'       : 'SPC f h',
  \ 'find_file'          : 'SPC f f',
  \ 'new_file'           : 'SPC c n',
  \ 'change_colorscheme' : 'SPC t c',
  \ 'find_word'          : 'SPC f a',
  \ 'book_marks'         : 'SPC f b',
  \ }
 let g:dashboard_custom_shortcut_icon={}
 let g:dashboard_custom_shortcut_icon['last_session'] = '😀 '
 let g:dashboard_custom_shortcut_icon['find_history'] = '😉 '
 let g:dashboard_custom_shortcut_icon['find_file'] = '😁 '
 let g:dashboard_custom_shortcut_icon['new_file'] = '😂 '
 let g:dashboard_custom_shortcut_icon['change_colorscheme'] = '🤣 '
 let g:dashboard_custom_shortcut_icon['find_word'] = '😄 '
 let g:dashboard_custom_shortcut_icon['book_marks'] = '😆 '
highlight dashboardFooter    ctermfg=240
highlight dashboardHeader    ctermfg=114
highlight dashboardCenter    ctermfg=215
highlight dashboardShortCut  ctermfg=245
let g:dashboard_default_header='pikachu'
