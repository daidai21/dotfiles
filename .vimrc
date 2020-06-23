set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936 " config encode
set termencoding=utf-8
set encoding=utf-8
set number                                               " show line number
set cursorline                                           " highlight current line
set cursorcolumn                                         " highlight current column
set statusline=%t\ (%l,%v)\ %p%%
set mouse=a                                              " enable mouse
set selection=exclusive
set selectmode=mouse,key
set showmatch                                            " show parenthesis match
if expand("%:e") == 'c' || expand("%:e") == 'h'          " config indent
    set tabstop=2
elseif expand("%:e") == 'cc' || expand("%:e") == 'cpp' || expand("%:e") == 'hpp'
    set tabstop=2
elseif expand("%:e") == 'py' || expand("%:e") == 'sh' || expand("%:e") == 'java'
    set tabstop=4
else
    set tabstop=4
endif
set shiftwidth=4
set expandtab
set listchars=tab:>-,trail:-
set list
set autoindent                                           " indent
set laststatus=2                                         " show status bar
set ruler                                                " show current mark position
filetype plugin indent on                                " open file type check
autocmd BufWritePost $MYVIMRC source $MYVIMRC            " config changes take effect immediately
set hlsearch                                             " highlight search
syntax on                                                " highlight syntax
set ambiwidth=double                                     " .
set wildmenu                                             " .
set completeopt=longest,menu                             " auto complete
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType cpp    set omnifunc=cppcomplete#Complete
autocmd FileType c      set omnifunc=ccomplete#Complete
autocmd FileType java   set omnifunc=javacomplete#Complet


func! Run()                                               " run function
    let type = b:current_syntax
    if type == "c"
        exec "!gcc % ; ./a.out"
    elseif type == "cpp" || type == "cc"
        exec "!g++ % -std=c++11 ; ./a.out"
    elseif type == "python"
        exec "!python %"
    endif
endfunc
map <F5> :call Run()<CR>


" 新建.c .h .cpp .hpp .cc .sh .java .py 文件，自动插入文件头
autocmd BufNewFile *.c,*.h,*.cpp,*.hpp,*.cc,*.sh,*.java,*.py exec ":call SetTitle()" 
" 定义函数SetTitle，自动插入文件头 
function! SetTitle()
    " Bash language
    if expand("%:e") == 'sh'
        call setline(1,           "\#!/usr/bin/env bash")
        call append(line("."),    "")
        call append(line(".")+1,  "")
        call append(line(".")+2,  "# #############################################################################")
        call append(line(".")+3,  "# File Name   : ".expand("%"))
        call append(line(".")+4,  "# Author      : DaiDai")
        call append(line(".")+5,  "# Mail        : daidai4269@aliyun.com") 
        call append(line(".")+6,  "# Created Time: ".strftime("%c"))
        call append(line(".")+7,  "# #############################################################################")
        call append(line(".")+8,  "")
        call append(line(".")+9,  "")
        call append(line(".")+10, "")
    endif
    " Python language
    if expand("%:e") == 'py'
        call setline(1,           "#!/usr/bin/env python3")
        call append(line("."),    "# -*- coding:utf-8 -*-")
        call append(line(".")+1,  "")
        call append(line(".")+2,  "")
        call append(line(".")+3,  "# #############################################################################")
        call append(line(".")+4,  "# File Name   : ".expand("%")) 
        call append(line(".")+5,  "# Author      : DaiDai") 
        call append(line(".")+6,  "# Mail        : daidai4269@aliyun.com") 
        call append(line(".")+7,  "# Created Time: ".strftime("%c"))
        call append(line(".")+8,  "# #############################################################################")
        call append(line(".")+9,  "")
        call append(line(".")+10, "")
        call append(line(".")+11, "")
    endif
    " C++ language
    if expand("%:e") == 'cpp'
        call setline(1,           "/* ****************************************************************************")
        call append(line("."),    " * File Name   : ".expand("%"))
        call append(line(".")+1,  " * Author      : DaiDai") 
        call append(line(".")+2,  " * Mail        : daidai4269@aliyun.com") 
        call append(line(".")+3,  " * Created Time: ".strftime("%c"))
        call append(line(".")+4,  " *************************************************************************** */")
        call append(line(".")+5,  "")
        call append(line(".")+6,  "")
        call append(line(".")+7,  "#include <iostream>")
        call append(line(".")+8,  "")
        call append(line(".")+9,  "")
        call append(line(".")+10, "using namespace std;")
        call append(line(".")+11, "")
        call append(line(".")+12, "")
        call append(line(".")+13, "int main(int argc, char* argv[]) {")
        call append(line(".")+14, "  return 0;")
        call append(line(".")+15, "}")
        call append(line(".")+16, "")
        call append(line(".")+14, "")
    endif
    if expand("%:e") == 'hpp'
        call setline(1,           "/* ****************************************************************************")
        call append(line("."),    " * File Name   : ".expand("%"))
        call append(line(".")+1,  " * Author      : DaiDai") 
        call append(line(".")+2,  " * Mail        : daidai4269@aliyun.com") 
        call append(line(".")+3,  " * Created Time: ".strftime("%c"))
        call append(line(".")+4,  " *************************************************************************** */")
        call append(line(".")+5,  "")
        call append(line(".")+6,  "")
        call append(line(".")+7,  "#include <iostream>")
        call append(line(".")+8,  "")
        call append(line(".")+9,  "")
        call append(line(".")+10, "")
    endif
    if expand("%:e") == 'cc'
        call setline(1,           "/* ****************************************************************************")
        call append(line("."),    " * File Name   : ".expand("%"))
        call append(line(".")+1,  " * Author      : DaiDai") 
        call append(line(".")+2,  " * Mail        : daidai4269@aliyun.com") 
        call append(line(".")+3,  " * Created Time: ".strftime("%c"))
        call append(line(".")+4,  " *************************************************************************** */")
        call append(line(".")+5,  "")
        call append(line(".")+6,  "")
        call append(line(".")+7,  "#include <iostream>")
        call append(line(".")+8,  "")
        call append(line(".")+9,  "")
        call append(line(".")+10, "using namespace std;")
        call append(line(".")+11, "")
        call append(line(".")+12, "")
        call append(line(".")+13, "int main(int argc, char* argv[]) {")
        call append(line(".")+14, "  return 0;")
        call append(line(".")+15, "}")
        call append(line(".")+16, "")
        call append(line(".")+14, "")
    endif
    " C language
    if expand("%:e") == 'c'
        call setline(1,           "/* ****************************************************************************")
        call append(line("."),    " * File Name   : ".expand("%"))
        call append(line(".")+1,  " * Author      : DaiDai") 
        call append(line(".")+2,  " * Mail        : daidai4269@aliyun.com") 
        call append(line(".")+3,  " * Created Time: ".strftime("%c"))
        call append(line(".")+4,  " *************************************************************************** */")
        call append(line(".")+5,  "")
        call append(line(".")+6,  "")
        call append(line(".")+7,  "#include <stdio.h>")
        call append(line(".")+8,  "")
        call append(line(".")+9,  "")
        call append(line(".")+10, "int main(int argc, char* argv[]) {")
        call append(line(".")+11, "  return 0;")
        call append(line(".")+12, "}")
        call append(line(".")+13, "")
    endif
    if expand("%:e") == 'h'
        call setline(1,           "/* ****************************************************************************")
        call append(line("."),    " * File Name   : ".expand("%"))
        call append(line(".")+1,  " * Author      : DaiDai") 
        call append(line(".")+2,  " * Mail        : daidai4269@aliyun.com") 
        call append(line(".")+3,  " * Created Time: ".strftime("%c"))
        call append(line(".")+4,  " *************************************************************************** */")
        call append(line(".")+5,  "")
        call append(line(".")+6,  "")
        call append(line(".")+7,  "#include <stdio.h>")
        call append(line(".")+8,  "")
        call append(line(".")+9,  "")
        call append(line(".")+10, "")
    endif
    " Java language
    if expand("%:e") == 'java'
        call setline(1,          "/* ****************************************************************************")
        call append(line("."),   " * File Name   : ".expand("%"))
        call append(line(".")+1, " * Author      : DaiDai") 
        call append(line(".")+2, " * Mail        : daidai4269@aliyun.com") 
        call append(line(".")+3, " * Created Time: ".strftime("%c"))
        call append(line(".")+4, " *************************************************************************** */")
        call append(line(".")+5, "")
        call append(line(".")+6, "")
        call append(line(".")+7, "")
    endif
endfunction
autocmd BufNewFile * normal G
