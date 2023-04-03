"func! TermPython3()
    "exec":term python3"
    "exec":startinsert"
"endfunc
"----------------------------------------------------------------
"----------------------------F5 一键编译运行---------------------
"----------------------------------------------------------------
func! CompileRunGcc()
    exec"w!"
    if &filetype =='c'
        exec"!g++ % -o %<"
        exec"!time ./%<"
    elseif &filetype =='cpp'
        exec":!/mnt/c/mingw64/bin/g++.exe % -o %<.exe"
        exec":!chmod +x %<.exe"
        exec":FloatermNew  %"
    elseif &filetype =='java'
        exec"!javac %"
        exec"!time java %<"
    elseif &filetype =='python'
        exec":FloatermNew python3 %"
    elseif &filetype =='go'
        exec"!go build %<"
        exec"!time go run %"
    elseif &filetype =='markdown'
        exec "MarkdownPreview"
    elseif &filetype =='tex'
        exec":!/mnt/d/Program\\ Files\\ \\(x86\\)/texlive/2019/bin/win32/xelatex.exe -synctex=1 -interaction=nonstopmode '%<'\.tex"
    endif
endfunc
"----------------------------------------------------------------
"----------------------------自动写入文件头----------------------
"----------------------------------------------------------------
autocmd BufNewFile *.cpp,*.[ch],*.sh,*.py,*.html,*.php,*java exec ":call SetTitle()"
func! SetTitle()
    if &filetype=='python'
        call setline(1, "#!/usr/bin/python3")
        call append(line("."), "#-*- encoding: UTF-8 -*-")
	endif
	if &filetype=='cpp'
        call setline(1, "/*************************************************************************")
        call append(line("."), "      > File Name: ".expand("%"))
        call append(line(".")+1, "      > Author: daoist")
        call append(line(".")+2, "      > Mail: 1748624858@qq.com")
        call append(line(".")+3, "      > Created Time: ".strftime("%c"))
        call append(line(".")+4, "      > Last changed: TIMESTAMP")
        call append(line(".")+5, " ************************************************************************/")
        call append(line(".")+6, "#include<iostream>")
        call append(line(".")+7, "using namespace std;")
        call append(line(".")+8, "")
    endif
    if &filetype=='c'
        call setline(1, "/*************************************************************************")
        call append(line("."), "      > File Name: ".expand("%"))
        call append(line(".")+1, "      > Author: daoist")
        call append(line(".")+2, "      > Mail: 1748624858@qq.com")
        call append(line(".")+3, "      > Created Time: ".strftime("%c"))
        call append(line(".")+4, "      > Last changed: TIMESTAMP")
        call append(line(".")+5, " ************************************************************************/")
        call append(line(".")+6, "#include<stdio.h>")
        call append(line(".")+7, "")
    endif
endfunc
autocmd BufNewFile * normal G  	"新建文件后，自动定位到文件末尾"
"----------------------------------------------------------------
"----------------------------浮动窗口----------------------------
"----------------------------------------------------------------
"function! OpenFloatingWin()
    "let height = &lines - 3
    "let width = float2nr(&columns - (&columns * 2 / 10))
    "let col = float2nr((&columns - width) / 2)
     "设置浮动窗口打开的位置，大小等
     "这里的大小配置可能不是那么的 flexible 有继续改进的空间
    "let opts = {
                "\ 'relative': 'editor',
                "\ 'row': height * 0.3,
                "\ 'col': col + 30,
                "\ 'width': width * 2 / 3,
                "\ 'height': height / 2,
                "\ }
    "let buf = nvim_create_buf(v:false, v:true)
    "let win = nvim_open_win(buf, v:true, opts)
     "设置浮动窗口高亮
    "call setwinvar(win, '&winhl', 'Normal:Pmenu')
    "setlocal 
                "\ buftype=nofile
                "\ nobuflisted
                "\ bufhidden=hide
                "\ nonumber
                "\ norelativenumber
                "\ signcolumn=no
"endfunction
