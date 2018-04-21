""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 256 Color stuff
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set t_Co=256
" set t_AB=^[[48;5;%dm
" set t_AF=^[[38;5;%dm

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General Editor Settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

syntax enable
syntax sync fromstart
set nocompatible
set encoding=utf-8
set laststatus=2
set number
set tabstop=4
set softtabstop=4
set shiftwidth=4
set smarttab
"set expandtab
set scrolloff=5

" set statusline=%F%m%r%h%w\ [Format=%{&ff}]\ [Type=%Y]\ [ASCII=\%03.3b]\ [Hex=\%02.2B]\ [Pos=%04l,%04v][%p%%]\ [Len=%L]\ [Buf=%n]
set history=1000
set nowrap
set nowrap sidescroll=8
set sidescrolloff=8
set showmatch
set scrollopt=hor,ver,jump
set ttyfast
set backspace=indent,eol,start
set modeline
set colorcolumn=80,132
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<

" Search behaviour

set incsearch
set hlsearch
set ignorecase
set smartcase

" Fix annoyances in smart indent

set autoindent                              "Retain indentation on next line
set smartindent                             "Turn on autoindenting of blocks

inoremap # X<C-H>#|                         "And no magic outdent for comments
nnoremap <silent> >> :call ShiftLine()<CR>| "And no shift magic on comments

function! ShiftLine()
    set nosmartindent
    normal! >>
    set smartindent
endfunction
