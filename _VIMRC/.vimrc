set nocompatible

"show line numbers at side & info at bottom
set nowrap
set ruler
set number
set rulerformat=%30(%=\:b%n%y%m%r%w\ %l,%c%V\ %P%)

"highlight syntax & file detection
syntax on
filetype on
"need for matchit plugin
filetype plugin on

"use spaces instead of tabs with 2 spaces per tab
set expandtab
set tabstop=2

"disabled autoindent to use smartindent with 2 spaces for >> indent
set noautoindent
set smartindent
set shiftwidth=2

"highlight matching ([{
set showmatch

"NERD Tree plugin toggling with F2
map <F2> :NERDTreeToggle<CR>

"best colorscheme i found
set t_Co=256
colorscheme dante
"colorscheme peachpuff

"backups in home/.backup
set backup
set backupdir=$HOME/.backup

"min lines to keep above and below cursor
set scrolloff=3

"searching while typing with highlight
set hls
set incsearch




map <c-A> :bnext<CR>

" linie, gora dol
map 11 10jzz_
map 22 10kzz_

"sp nowy_plik, przemieszczanie sie pomiedzy splitami, Ctrl+hjkl
nmap <C-J> <C-W>j
nmap <C-K> <C-W>k
nmap <C-H> <C-W>h
nmap <C-L> <C-W>l

" prev/next tab
nmap <C-N> :tabprevious<CR>
nmap <C-M> :tabnext<CR>


:map <C-tab> :tabnext<CR>
:imap <C-tab> <Esc>:tabnext<CR>i
:nmap <C-t> :tabnew<CR>
:imap <C-t> <Esc>:tabnew<CR>

"au BufNewFile,BufRead *.tt2 set filetype=xml
"au BufNewFile,BufRead *.tt2 setf tt2html
au BufNewFile,BufRead *.tt2 setf html

"zencoding trix
let g:user_zen_expandabbr_key = '<c-e>'
let g:use_zen_complete_tag = 1

map <leader>f :FufFile **/<CR>
map <leader>b :FufBuffer <CR>

