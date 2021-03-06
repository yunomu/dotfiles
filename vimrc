set encoding=utf8
set number
set tabstop=4
set autoindent
set cpoptions+=$
set ruler
"set nohlsearch
set hlsearch
filetype on
filetype plugin on
filetype indent on
syntax on

inoremap <silent> <buffer> <C-w>j <Esc><C-w>j
inoremap <silent> <buffer> <C-w>k <Esc><C-w>k
inoremap <silent> <buffer> <C-w>h <Esc><C-w>h
inoremap <silent> <buffer> <C-w>l <Esc><C-w>l
inoremap <silent> <buffer> <C-w>w <Esc><C-w>w

nmap <C-d> :noh<cr>:<cr>

au BufRead,BufNewFile *.hx set filetype=haxe
au BufRead,BufNewFile *.scala set filetype=scala
