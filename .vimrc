" =============================================================================
" FileName: .vimrc
" Author: DaiDai
" E-mail: daidai4269aliyun.com
" CreateTime: 2019.4.23  2:59
" =============================================================================




" =============================================================================
" 编辑设置
" =============================================================================


" ***** 显示相关 *****


" vim与系统粘贴板互通
" TODO
" 每行的第80个字符开始有提示
autocmd FileType python match Underlined /\%>79v.*/
" 显示行号
set number
" 突出显示当前行
set cursorline
" 突出显示当前列
set cursorcolumn
" 总是显示状态栏
set laststatus=2
" 状态栏显示文件路径、格式、类型、编码、行列号、百分比
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]
" 显示光标当前位置
set ruler
" 显示括号匹配
set showmatch
" 打开语法高亮显示
syntax on
" 设置双宽显示,防止有些字体显示不全
set ambiwidth=double
" 设置json文件中的双引号默认显示
let g:indentLine_conceallevel = 0


" ***** 编辑相关 *****
" 设置Tab长度为4空格
set tabstop=4
" 设置自动缩进长度为4空格
set shiftwidth=4
" 继承前一行的缩进方式，适用于多行注释
set autoindent
" 设置粘贴模式
set paste
" 代码折叠
set foldmethod=indent
" Vim插入模式下Tab键缩进设置  按下Tab键时，输入到Vim中的都是空格
set expandtab
" 启动 Vim 时关闭折叠
set nofoldenable  
" 自动缩进
set smartindent

" ***** 编码相关 *****
" 写入文件时采用的编码类型
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
" 设置输出到终端时采用的编码类型
set termencoding=utf-8
" 设置缓存的文本、寄存器、Vim 脚本文件等编码
set encoding=utf-8

" ***** 搜索相关 *****
" 搜索结果高亮
set hlsearch

" ***** 文件相关 *****
" 必须的 打开文件的时候进行类型检测
filetype plugin indent on
" 打开文件类型检测
filetype on

" ***** 自动补全 *****
set wildmenu
set completeopt=longest,menu
set completeopt=preview,menu
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType cpp set omnifunc=cppcomplete#Complete
autocmd FileType c set omnifunc=ccomplete#Complete
" autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
" autocmd FileType css set omnifunc=csscomplete#CompleteCSS
" autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
" autocmd FileType sh set omnifunc=shcomplete#Complete
" TODO: ctrl auto open && ignore some file && color configuration


" ***** 其他设置 *****
" 让vimrc配置变更立即生效
autocmd BufWritePost $MYVIMRC source $MYVIMRC
" 启用鼠标
set mouse=a
set selection=exclusive
" set selectmode=mouse, key


" =============================================================================
" 主题设置
" =============================================================================


" =============================================================================
" 插件管理
" =============================================================================


" 必须的
set nocompatible
" 将运行时路径设置为包含Vundle并初始化
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" 插件设置位置
" ***** 开始 *****
" 必须的 让Vundle管理Vundle
Plugin 'VundleVim/Vundle.vim'
" 目录树
" Plugin 'scrooloose/nerdtree'
" autocmd VimEnter * NERDTree  " 自动开启NERDTree
" map <F2> :NERDTreeToggle<CR> " 按下F2调出/隐藏NERDTree

" 自动补全插件
" Plugin 'Valloric/YouCompleteMe'
" 状态栏
" Plugin 'vim-airline/vim-airline'
" let g:airline#extensions#tabline#enabled = 1  "tabline中当前buffer两端的分隔字符
" let g:airline#extensions#tabline#left_sep = ' '  "tabline中未激活buffer两端的分隔字符
" let g:airline#extensions#tabline#left_alt_sep = '|'  "tabline中buffer显示编号
" let g:airline#extensions#tabline#buffer_nr_show = 1
" 状态栏主题
" Plugin 'vim-airline/vim-airline-themes'
" let g:airline_powerline_fonts = 1  " 设置字体
" set t_Co=256 " 状态栏颜色
" let g:airline_theme='molokai'  " 选择主题
" 语法检查
" Plugin 'vim-syntastic/syntastic'
" 拥有python几乎所有IDE的功能，吐血推荐 ，杀手级python插件
" Plugin 'klen/python-mode'  " 有bug
" 搜索插件
" Plugin 'haya14busa/incsearch.vim'
" 模糊搜索，自带搜索比较弱，这个模糊搜索很快速
" Plugin 'haya14busa/incsearch-fuzzy.vim'
" 文件缩略图  但是使用TagBar之前先确保已经有ctags
" Plugin 'majutsushi/tagbar'
" map <F9> :TagbarToggle<CR>  " F9打开
" let g:tagbar_width=30  " 设置tagbar的窗口宽度
" let g:tagbar_ctags_bin='/usr/bin/ctags'  "设置tagbar使用的ctags的插件,必须要设置对
"autocmd BufReadPost *.cpp,*.c,*.h,*.hpp,*.cc,*.cxx call tagbar#autoopen()  " 打开文件自动 打开tagbar
" 代码缩进显示
" Bundle 'Yggdroot/indentLine'
" let g:indentLine_char='|'  " 设置缩进分隔符
"let g:indentLine_enabled = 1  " 开启插件
" Python语法检查
" Plugin 'nvie/vim-flake8'
" 自动补全括号引号等
" Plugin 'jiangmiao/auto-pairs'

" ***** 结束 *****
call vundle#end()


" =============================================================================
" 创建文件自动插入头部
" =============================================================================


" 新建.c .h .cpp .hpp .cc .sh .java .py 文件，自动插入文件头
autocmd BufNewFile *.c,*.h,*.cpp,*.hpp,*.cc,*.sh,*.java,*.py exec ":call SetTitle()" 
" 定义函数SetTitle，自动插入文件头 
function! SetTitle()
    " bash 语言
    if expand("%:e") == 'sh'
        call setline(1,"\#!/bin/bash")
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
    if expand("%:e") == 'cpp'
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
    if expand("%:e") == 'hpp'
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
    if expand("%:e") == 'cc'
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
    if expand("%:e") == 'c'
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
    if expand("%:e") == 'h'
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
    " 新建文件后，自动定位到文件末尾
endfunction
autocmd BufNewFile * normal G


" =============================================================================
" 快捷键设置
" =============================================================================


" 左右分割窗口的情况下，扩大窗口
map <F5> <ESC><C-W>-
" 左右分割窗口的情况下，缩小窗口
map <F6> <ESC><C-W>+
" 上下分割窗口的情况下，左移窗口
map <F7> <ESC><C-W><
" 上下分割窗口的情况下，右移窗口
map <F8> <ESC><C-W>>

" Tab 自动补全
" TODO
