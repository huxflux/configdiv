set t_Co=256
colorscheme molokai 
syntax enable
set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab
set number
set autoindent
set cindent
"set tw=79

set showcmd
set showmatch
set incsearch
set hlsearch

" set relativenumber

execute pathogen#infect()
set colorcolumn=80
highlight colorcolumn ctermbg=233

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

au BufNewFile,BufRead *.asm set ft=nasm

filetype indent plugin on

map <F2> :tabe<SPACE>
map <F3> :tabp<CR>
map <F4> :tabn<CR>

" Stuff for list/tabs/whitespace
nmap <leader>l :set list!<CR>
set listchars=tab:▸\ ,eol:¬
