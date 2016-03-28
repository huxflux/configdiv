set t_Co=256
colorscheme industry 
syntax enable
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set number
set autoindent
set cindent

set showcmd
set showmatch
set incsearch
set hlsearch

au BufNewFile,BufRead *.asm set ft=nasm

map <F2> :tabe<SPACE>
map <F3> :tabp<CR>
map <F4> :tabn<CR>
