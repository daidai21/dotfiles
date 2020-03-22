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

