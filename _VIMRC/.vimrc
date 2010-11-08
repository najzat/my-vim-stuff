
"=====================================================================
" Main {{{1

" One of the most important options to activate. Allows you to switch from an
" unsaved buffer without saving it first. Also allows you to keep an undo
" history for multiple files. Vim will complain if you try to quit without
" saving, and swap files will keep you safe if your computer crashes.
set hidden

" Instead of failing a command because of unsaved changes, instead raise a
" dialogue asking if you wish to save changed files.
set confirm

" Better command-line completion
set wildmenu

" Show partial commands in the last line of the screen
set showcmd


"=====================================================================
" Window {{{1

" Always display the status line, even if only one window is displayed
set laststatus=2

" show line numbers at side & info at bottom
set nowrap
set ruler
set number
set rulerformat=%30(%=\:b%n%y%m%r%w\ %l,%c%V\ %P%)

"min lines to keep above and below cursor
set scrolloff=3



"=====================================================================
" Searching & Highlights {{{1

" Highlight searches (use <C-L> to temporarily turn off highlighting; see the
" mapping of <C-L> below)
set hlsearch

"searching while typing 
set incsearch

" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase

"highlight matching ([{
set showmatch

"highlight syntax & file detection
syntax on
filetype on
"need for matchit plugin
filetype plugin on


"=====================================================================
" Indents {{{1

"use spaces instead of tabs with 2 spaces per tab
set expandtab
set tabstop=2

"disabled autoindent to use smartindent with 2 spaces for >> indent
set noautoindent
set smartindent
set shiftwidth=2






"best colorscheme i found
set t_Co=256
colorscheme dante
"colorscheme peachpuff

"backups in home/.backup
set backup
set backupdir=$HOME/.backup



"=====================================================================
" Mappings {{{1

" Map Y to act like D and C, i.e. to yank until EOL, rather than act as yy,
" which is the default
map Y y$

" Map <C-L> (redraw screen) to also turn off search highlighting until the
" next search
nnoremap <C-L> :nohl<CR><C-L>



"NERD Tree plugin toggling with F2
map <F2> :NERDTreeToggle<CR>

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

" PLUGIN zencoding 
let g:user_zen_expandabbr_key = '<c-e>'
let g:use_zen_complete_tag = 1

" PLUGIN fuzzyfinder 
map <leader>f :FufFile **/<CR>
map <leader>b :FufBuffer <CR>

let g:fuf_enumeratingLimit = 20
let g:fuf_file_exclude = '\v\.DS_Store|^\.git/$|\.swp|\.svn'
