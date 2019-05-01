" =============================================================================
" FileName: .vimrc
" Author: DaiDai
" E-mail: daidai4269aliyun.com
" CreateTime: 2019.4.23  2:59
" =============================================================================




" 设置




" =============================================================================
" 编辑设置
" =============================================================================


" 显示相关

" 显示行号
set number
" 突出显示当前行
set cursorline
" 突出显示当前列
set cursorcolumn
" 显示空格和tab键
set listchars=tab:>-,trail:-
" 总是显示状态栏
set laststatus=2
" 显示光标当前位置
set ruler
" 显示括号匹配
set showmatch
" 打开语法高亮显示
syntax on


" 编辑相关

" 设置Tab长度为4空格
set tabstop=4
" 设置自动缩进长度为4空格
set shiftwidth=4


" 编码相关

" 写入文件时采用的编码类型
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
" 设置输出到终端时采用的编码类型
set termencoding=utf-8
" 设置缓存的文本、寄存器、Vim 脚本文件等编码
set encoding=utf-8
" 继承前一行的缩进方式，适用于多行注释
set autoindent
" 设置粘贴模式
set paste
" 自动缩进
set autoindent
" 代码折叠
set foldmethod=indent
" Vim插入模式下Tab键缩进设置  按下Tab键时，输入到Vim中的都是空格
set expandtab
" 基于缩进进行代码折叠
set foldmethod=indent  
" 启动 Vim 时关闭折叠
set nofoldenable  
" 自动缩进
set smartindent


" 搜索相关

" 搜索结果高亮
set hlsearch


" 文件相关

" 打开文件的时候进行类型检测
filetype plugin indent on
" 打开文件类型检测
filetype on


" 其他设置

" 让vimrc配置变更立即生效
autocmd BufWritePost $MYVIMRC source $MYVIMRC
" 启用鼠标
set mouse=a
set selection=exclusive
set selectmode=mouse, key




" =============================================================================
" 编辑设置
" =============================================================================



" =============================================================================
" 主题设置
" =============================================================================


" molokai.vim


" =============================================================================
" 插件管理
" =============================================================================


" TODO bug

" YouCompleteMe
" vim-gutentags
" NERDTree
" Molokai


call vundle  " begin()

Plugin 'VundleVim/Vundle.vim'  " 启用vundle管理插件，必须
Plugin 'Valloric/YouCompleteMe'

"在此增加其他插件，安装的插件需要放在vundle#begin和vundle#end之间"
"安装github上的插件格式为 Plugin '用户名/插件仓库名'"

call vundle  " end()


" =============================================================================
" 语言配置
" =============================================================================



" =============================================================================
" 新文件头部
" =============================================================================


" 新建.c .h .cpp .hpp .sh .java .py 文件，自动插入文件头
autocmd BufNewFile *.cpp,*.[ch],*.sh,*.rb,*.java,*.py exec ":call SetTitle()" 
" 定义函数SetTitle，自动插入文件头 
func SetTitle()
    " bash 语言
    " 如果文件类型为.sh文件 
    if &filetype == 'sh' 
        call setline(1,"\#!/bin/bash")
        call append(line("."), "")
        call append(line(".")+1, "# ********************************************************************************")
        call append(line(".")+2, "    > File Name: ".expand("%")")
        call append(line(".")+3, "    > Author: DaiDai") 
        call append(line(".")+4, "    > Mail: daidai4269@aliyun.com") 
        call append(line(".")+5, "    > Created Time: ".strftime("%c"))
        call append(line(".")+6, "# ********************************************************************************")
        call append(line(".")+7, ""))
        call append(line(".")+8, "")
    endif
    " python 语言
    " 如果文件类型为.py文件
    if expand("%:e") == 'py'
        call setline(1,"#!/usr/bin/python")
        call append(line("."),"# coding:utf-8")
        call append(line(".")+1, "")
        call append(line(".")+2, "")
        call append(line(".")+3, "# ********************************************************************************") 
        call append(line(".")+4, "    > File Name: ".expand("%")) 
        call append(line(".")+5, "    > Author: DaiDai") 
        call append(line(".")+6, "    > Mail: daidai4269@aliyun.com") 
        call append(line(".")+7, "    > Created Time: ".strftime("%c"))
        call append(line(".")+8, "# ********************************************************************************") 
        call append(line(".")+9, "")
    " 如果文件类型为.cpp文件
    " C++ 语言
    if expand("%:e") == 'cpp'
        call append(line(".")+6, "#include<iostream>")
        call append(line(".")+7, "using namespace std;")
        call append(line(".")+8, "")
    endif
    " 如果文件类型为.hpp文件
    if expand("%:e") == 'cpp'
        call append(line(".")+6, "#include<iostream>")
        call append(line(".")+7, "using namespace std;")
        call append(line(".")+8, "")
    endif
    " C 语言
    " 如果文件类型为.c文件
    if &filetype == 'c'
        call append(line(".")+6, "#include<stdio.h>")
        call append(line(".")+7, "")
    endif
    " 如果文件类型为.h文件
    if expand("%:e") == 'h'
        call append(line(".")+6, "#ifndef _".toupper(expand("%:r"))."_H")
        call append(line(".")+7, "#define _".toupper(expand("%:r"))."_H")
        call append(line(".")+8, "#endif")
    endif
    " Java 语言
    " 如果文件类型为.java文件
    if &filetype == 'java'
        call append(line(".")+6,"public class ".expand("%:r"))
        call append(line(".")+7,"")
    endif
    "新建文件后，自动定位到文件末尾
endfunc
autocmd BufNewFile * normal G


" =============================================================================
" 快捷键设置
" =============================================================================



