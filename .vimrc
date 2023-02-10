" =============================================================================
" 基础配置
" =============================================================================

set statusline=%F%m%r%h%w\ [TYPE=%Y]\ [POS=%04l,%04v][%p%%]" 状态栏显示文件路径、类型、行列号、百分比
set number " 显示行号
set cursorline " 突出显示当前行
set cursorcolumn " 突出显示当前列
set laststatus=2 " 总是显示状态栏
set ruler " 显示光标当前位置
set showmatch " 显示括号匹配
syntax on " 打开语法高亮显示
set ambiwidth=double " 设置双宽显示,防止有些字体显示不全
let g:indentLine_conceallevel = 0 " 设置json文件中的双引号默认显示
filetype plugin indent on " 必须的 打开文件的时候进行类型检测
filetype on " 打开文件类型检测
set ff=unix " unix system file type
set autoindent " 继承前一行的缩进方式，适用于多行注释
set paste " 设置粘贴模式
set foldmethod=indent " 代码折叠
set expandtab " Vim插入模式下Tab键缩进设置  按下Tab键时，输入到Vim中的都是空格
set nofoldenable  " 启动 Vim 时关闭折叠
set smartindent " 自动缩进
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936  " 写入文件时采用的编码类型
set termencoding=utf-8 " 设置输出到终端时采用的编码类型
set encoding=utf-8 " 设置缓存的文本、寄存器、Vim 脚本文件等编码
set hlsearch " 搜索结果高亮
set wildmenu " 启用增强模式的命令行补全
" set cc=80 " 在第80列显示竖线


" 设置Tab长度 和 自动缩进长度
if expand("%:e") == 'c' || expand("%:e") == 'h' || expand("%:e") == 'cc' || expand("%:e") == 'cpp' || expand("%:e") == 'hpp'
    set tabstop=2
    set expandtab " 选项把插入的 tab 字符替换成特定数目的空格
elseif expand("%:e") == 'go'
elseif expand("%:e") == 'py'
    set tabstop=4
    set expandtab
elseif expand("%:e") == 'md' || expand("%:e") == 'txt'
    set tabstop=4
    set expandtab
elseif expand("%:e") == 'java'
elseif expand("%:e") == 'sh'
else
    set tabstop=4
    set expandtab
endif


" 启用鼠标
set mouse=a
set selection=exclusive


" 语言设置
set langmenu=zh_CN.UTF-8
set helplang=cn


" 新建.c .h .cpp .hpp .cc .sh .java .py .go 文件，自动插入文件头
autocmd BufNewFile *.c,*.h,*.cpp,*.hpp,*.cc,*.sh,*.java,*.py,*.go,*.md,*.txt exec ":call SetTitle()" 
" 定义函数SetTitle，自动插入文件头 
function! SetTitle()
    " bash 语言
    if expand("%:e") == 'sh'
        call setline(1,"\#!/usr/bin/env bash")
        call append(line("."), "")
        call append(line(".")+1, "# =============================================================================")
        call append(line(".")+2, "# File Name: ".expand("%"))
        call append(line(".")+3, "# Author: DaiDai")
        call append(line(".")+4, "# Mail: daidai4269@aliyun.com") 
        call append(line(".")+5, "# Created Time: ".strftime("%c"))
        call append(line(".")+6, "# =============================================================================")
        call append(line(".")+7, "")
        call append(line(".")+8, "")
    endif
    " python 语言
    if expand("%:e") == 'py'
        call setline(1,"#!/usr/bin/env python3")
        call append(line("."),"# -*- coding:utf-8 -*-")
        call append(line(".")+1, "")
        call append(line(".")+2, "")
        call append(line(".")+3, "# =============================================================================") 
        call append(line(".")+4, "# File Name: ".expand("%")) 
        call append(line(".")+5, "# Author: DaiDai") 
        call append(line(".")+6, "# Mail: daidai4269@aliyun.com") 
        call append(line(".")+7, "# Created Time: ".strftime("%c"))
        call append(line(".")+8, "# =============================================================================") 
        call append(line(".")+9, "")
    endif
    " C++ 语言
    if expand("%:e") == 'cpp' || expand("%:e") == 'cc' || expand("%:e") == 'hpp'
        call setline(1,"/* =============================================================================")
        call append(line("."),"> File Name: ".expand("%"))
        call append(line(".")+1, "> Author: DaiDai") 
        call append(line(".")+2, "> Mail: daidai4269@aliyun.com") 
        call append(line(".")+3, "> Created Time: ".strftime("%c"))
        call append(line(".")+4, "============================================================================= */") 
        call append(line(".")+5, "")
        call append(line(".")+6, "")
        call append(line(".")+7, "#include <iostream>")
        call append(line(".")+8, "")
        call append(line(".")+9, "using namespace std;")
        call append(line(".")+10, "")
        call append(line(".")+11, "")
    endif
    " C 语言
    if expand("%:e") == 'c' || expand("%:e") == 'h'
        call setline(1,"/* =============================================================================")
        call append(line("."),"> File Name: ".expand("%"))
        call append(line(".")+1, "> Author: DaiDai") 
        call append(line(".")+2, "> Mail: daidai4269@aliyun.com") 
        call append(line(".")+3, "> Created Time: ".strftime("%c"))
        call append(line(".")+4, "============================================================================= */") 
        call append(line(".")+5, "")
        call append(line(".")+6, "")
        call append(line(".")+7, "#include <stdio.h>")
        call append(line(".")+8, "")
    endif
    " Java 语言
    if expand("%:e") == 'java'
        call setline(1, "/* =============================================================================")
        call append(line("."),"> File Name: ".expand("%"))
        call append(line(".")+1, "> Author: DaiDai") 
        call append(line(".")+2, "> Mail: daidai4269@aliyun.com") 
        call append(line(".")+3, "> Created Time: ".strftime("%c"))
        call append(line(".")+4, "============================================================================= */") 
        call append(line(".")+5, "")
        call append(line(".")+6, "")
    endif
    " Golang 语言
    if expand("%:e") == 'go'
        call setline(1,"/* =============================================================================")
        call append(line("."),"> File Name: ".expand("%"))
        call append(line(".")+1, "> Author: DaiDai") 
        call append(line(".")+2, "> Mail: daidai4269@aliyun.com") 
        call append(line(".")+3, "> Created Time: ".strftime("%c"))
        call append(line(".")+4, "============================================================================= */") 
        call append(line(".")+5, "")
        call append(line(".")+6, "")
        call append(line(".")+7, "package main")
        call append(line(".")+8, "")
        call append(line(".")+9, "import \"fmt\"")
        call append(line(".")+10, "")
        call append(line(".")+11, "func main() {")
        call append(line(".")+12, "\tfmt.Println(\"hello\")")
        call append(line(".")+13, "}")
    endif
endfunction
autocmd BufNewFile * normal G
