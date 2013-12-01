set nocompatible

runtime bundle/vim-unbundle/unbundle.vim
runtime macros/matchit.vim

syntax on
filetype plugin on
filetype indent on

colorscheme jellybeans

set encoding=utf-8
set termencoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8,euc-jp,sjis,iso-2022-jp,cp932
set fileformats=unix,dos,mac

set ambiwidth=double
set backspace=indent,eol,start
set formatoptions+=m
set list
set listchars=tab:>-,extends:<,trail:-
set number
set hidden

set wildmenu
set showmatch

set wrapscan
set ignorecase
set smartcase
set incsearch
set hlsearch

set autoindent smartindent
set expandtab
set smarttab

set tabstop=4
set softtabstop=4
set shiftwidth=4

set laststatus=2
set statusline=[%n]\ %t\ %y%{GetStatusEx()}\ %m%h%r=%l/%L,%c%V\ %P

function! GetStatusEx()
    let str = &fileformat
    if has("multi_byte") && &fileencoding != ""
        let str = &fileencoding . ":" . str
    endif
    let str = "[" . str . "]"
    return str
endfunction

highlight ZenkakuSpace cterm=underline ctermfg=lightblue
match ZenkakuSpace /　/

au FileType sql  set timeoutlen=0
au FileType sh   set tabstop=2 softtabstop=2 shiftwidth=2
au FileType zsh  set tabstop=2 softtabstop=2 shiftwidth=2
au FileType cpp  set tabstop=2 softtabstop=2 shiftwidth=2
au FileType ruby set tabstop=2 softtabstop=2 shiftwidth=2
au FileType php  set tabstop=2 softtabstop=2 shiftwidth=2



