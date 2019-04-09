set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
"Plugin 'ascenator/L9', {'name': 'newL9'}

Plugin 'majutsushi/tagbar'

"Plugin 'davidhalter/jedi-vim.git'

"Plugin 'vim-syntastic/syntastic'

Plugin 'uarun/vim-protobuf'

Plugin 'chiphogg/vim-prototxt'

"Plugin 'Yggdroot/indentLine'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0

set nu              " 显示行号 
set shortmess=atI   " 启动的时候不显示那个援助乌干达儿童的提示  
set syntax=on           " 语法高亮  
""autocmd InsertLeave * se nocul   用浅色高亮当前行  
""autocmd InsertEnter * se cul     用浅色高亮当前行 
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}   "状态行显示的内容 
set nobackup
set noswapfile
set laststatus=2    " 启动显示状态行(1),总是显示状态行(2)  


" 自动缩进
set autoindent
set cindent
" Tab键的宽度
set tabstop=4
" 统一缩进为4
set softtabstop=4
set shiftwidth=4
" 用空格代替制表符
set expandtab

" 在行和段开始处使用制表符
set smarttab  

"搜索逐字符高亮
set hlsearch
set incsearch

" 高亮显示匹配的括号
set showmatch

" 保持一行显示
"set nowrap

" unix system
set ff=unix

" 侦测文件类型
filetype on
" 载入文件类型插件
filetype plugin on
" 为特定文件类型载入相关缩进文件
filetype indent on

"编码设置
set enc=utf-8
set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936
"语言设置
set langmenu=zh_CN.UTF-8

"set cursorline               突出显示当前行
set magic                   " 设置魔术

" 高亮显示普通txt文件（需要txt.vim脚本）
au BufRead,BufNewFile *  setfiletype txt
""自动补全
":inoremap ( ()<ESC>i
":inoremap ) <c-r>=ClosePair(')')<CR>
":inoremap { {<CR>}<ESC>O
":inoremap } <c-r>=ClosePair('}')<CR>
":inoremap [ []<ESC>i
":inoremap ] <c-r>=ClosePair(']')<CR>
":inoremap " ""<ESC>i
":inoremap ' ''<ESC>i
"function! ClosePair(char)
"    if getline('.')[col('.') - 1] == a:char
"        return "\<Right>"
"    else
"        return a:char
"    endif
"endfunction
filetype plugin indent on 
"打开文件类型检测, 加了这句才可以用智能补全
set completeopt=longest,menu


set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936
set fileencoding=utf-8
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""新文件标题""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"新建.c,.h,.sh,.java文件，自动插入文件头 
autocmd BufNewFile *.cpp,*.[c],*.sh,*.java,*.py exec ":call SetTitle()" 
""定义函数SetTitle，自动插入文件头 
func SetTitle() 
    "如果文件类型为.sh文件 
    if &filetype == 'sh' 
        call setline(1, "\#!/bin/bash") 
        call append(line("."),"\#########################################################################") 
        call append(line(".")+1, "\# File Name: ".expand("%:t")) 
        call append(line(".")+2, "\# Author: gaoyu") 
        call append(line(".")+3, "\# mail: gaoyu@momenta.ai") 
        call append(line(".")+4, "\# Created Time: ".strftime("%Y-%m-%d %H:%M:%S")) 
        call append(line(".")+5, "\#########################################################################") 
        call append(line(".")+6, "") 
    elseif &filetype == 'python' 
        call setline(1, "\#!/usr/bin/env python") 
        call append(line("."), "\#########################################################################") 
        call append(line(".")+1, "\# File Name: ".expand("%:t")) 
        call append(line(".")+2, "\# Author: gaoyu") 
        call append(line(".")+3, "\# mail: gaoyu@momenta.ai") 
        call append(line(".")+4, "\# Created Time: ".strftime("%Y-%m-%d %H:%M:%S")) 
        call append(line(".")+5, "\#########################################################################") 
        call append(line(".")+6, "") 
    else 
        call setline(1, "/*************************************************************************") 
        call append(line("."), "    > File Name: ".expand("%:t")) 
        call append(line(".")+1, "    > Author: gaoyu") 
        call append(line(".")+2, "    > Mail: gaoyu@momenta.ai ") 
        call append(line(".")+3, "    > Created Time: ".strftime("%Y-%m-%d %H:%M:%S")) 
        call append(line(".")+4, " ************************************************************************/") 
        call append(line(".")+5, "")
    endif
    if &filetype == 'cpp'
        call append(line(".")+8, "")
    endif
    if &filetype == 'c'
        call append(line(".")+6, "#include <stdio.h>")
        call append(line(".")+7, "")
    endif
    "新建文件后，自动定位到文件末尾
    autocmd BufNewFile * normal G
endfunc 

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""".h and .hpp"""""""""""""""""""""""""
function! s:insert_gates()
    call setline(1, "/*************************************************************************") 
    call append(line("."), "    > File Name: ".expand("%:t")) 
    call append(line(".")+1, "    > Author: gaoyu") 
    call append(line(".")+2, "    > Mail: gaoyu@momenta.ai") 
    call append(line(".")+3, "    > Created Time: ".strftime("%Y-%m-%d %H:%M:%S")) 
    call append(line(".")+4, " ************************************************************************/") 
    call append(line(".")+5, "")
    let gatename = substitute(toupper(expand("%:t")), "\\.", "_", "g")
    execute "normal! Go#pragma once"
    "execute "normal! Go#ifndef " . gatename
    "execute "normal! o#define " . gatename . " "
    "execute "normal! o"
    "execute "normal! Go#endif /* " . gatename . " */"
    "
    call setline(9, "")
    call setline(10, "// vim: syntax=cpp.doxygen foldmethod=marker foldmarker=f{{{,f}}}")
    normal! kk
endfunction
autocmd BufNewFile *.{h,hpp} call <SID>insert_gates()

nmap <F8> :TagbarToggle<CR>
""autocmd BufReadPost *.cpp,*.c,*.h,*.hpp,*.cc,*.cxx call tagbar#autoopen()

let g:pep8_map='<F6>'

"let g:indentLine_char = '┊'

map <F5> :call CompileRunGcc()<CR>
func! CompileRunGcc()
    exec "w"
    if &filetype == 'c'
        exec "!g++ % -o %< -g -std=c++11"
        exec "! ./%<"
    elseif &filetype == 'cpp'
        exec "!g++ % -o %< -g -std=c++11"
        exec "! ./%<"
    elseif &filetype == 'java' 
        exec "!javac %" 
        exec "!java %<"
    elseif &filetype == 'sh'
        :!./%
    elseif &filetype == 'python'
        exec "!time python2.7 %"
    endif
endfunc

au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif
set noswapfile
"set mouse=aa

Bundle 'Valloric/YouCompleteMe'

map <C-K> :py3file /home/gaoyu/software/clang-format.py<cr>
imap <C-K> <c-o>:py3file /home/gaoyu/software/clang-format.py<cr>
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/examples/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf=0

" 输入第2个字符开始补全
let g:ycm_min_num_of_chars_for_completion=2
" 禁止缓存匹配项,每次都重新生成匹配项
let g:ycm_cache_omnifunc=0
" 开启语义补全
let g:ycm_seed_identifiers_with_syntax=1	
"在注释输入中也能补全
let g:ycm_complete_in_comments = 1
"在字符串输入中也能补全
let g:ycm_complete_in_strings = 1
" 设置在下面几种格式的文件上屏蔽ycm
let g:ycm_filetype_blacklist = {
      \ 'tagbar' : 1,
      \ 'nerdtree' : 1,
      \}
"youcompleteme  默认tab  s-tab 和 ultisnips 冲突
let g:ycm_key_list_select_completion = ['<TAB>']
let g:ycm_key_list_previous_completion = ['<S-TAB>']

" 跳转到定义处, 分屏打开
"let g:ycm_goto_buffer_command = 'vertical-split'
let g:ycm_goto_buffer_command = 'horizontal-split'
" nnoremap <leader>jd :YcmCompleter GoToDefinition<CR>
nnoremap <leader>gg :YcmCompleter GoToDefinitionElseDeclaration<CR>
nnoremap <leader>gf :YcmCompleter GoToDefinition<CR>
nnoremap <leader>gd :YcmCompleter GoToDeclaration<CR>

colorscheme desert
