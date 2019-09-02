let mapleader=" "

" ===
" === Editor behavior
" ===

"high light syntax
syntax on
"show line number
set number
"show relative line number
set relativenumber
"show corsor line
set cursorline
"automatic line break
set wrap
"show type command
set showcmd
"open command line comletion in enhanced mode
set wildmenu

"high light search
set hlsearch
"clear search high light whem use vim or nvim open a file
exec "nohlsearch"
"charter by charter high light the entered words during the search
set incsearch 
"ignore case the word during the search
set ignorecase
set smartcase

"jump to search result next one
noremap n nzz
"jumo to search result last one
noremap N Nzz
"clear all search high light
noremap <LEADER><CR> :nohlsearch<CR>

"direction key map
noremap i k
noremap k j 
noremap j h
noremap l l
noremap h i
noremap H I 
noremap I 5k
noremap K 5j
noremap J 5h
noremap L 5l

"control windows focus
map <LEADER>i <C-w>k
map <LEADER>k <C-w>j
map <LEADER>j <C-w>h
map <LEADER>l <C-w>l

"resize windows
map <up> :res +5<CR>
map <down> :res -5<CR>
map <left> :vertical resize+5<CR>
map <right> :vertical resize-5<CR>

"control tab
map tu :tabe<CR>
map tj :-tabnext<CR>
map tl :+tabnext<CR>

"switch between horzontal split screen and vertical split screen
map sv <C-w>t<C-w>H
map sh <C-w>t<C-w>K

"visual mode key map
vnoremap h i
vnoremap H I 

"change hot key for saving file and quit
map s <nop>
map S :w<CR>
map Q :q<CR>

"reload config file
map R :source $MYVIMRC<CR>

"split screen
map sl :set splitright<CR>:vsplit<CR>
map sj :set nosplitright<CR>:vsplit<CR>
map si :set nosplitbelow<CR>:split<CR>
map sk :set splitbelow<CR>:split<CR>

"=== 
"=== management plug
"=== in normal mode type "PlugInstall" to install plugs
"===
"vim-plug begin
call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline' 
Plug 'connorholyday/vim-snazzy'

"vim-plag end
call plug#end()

"open transparent and color
let g:SnazzyTransparent = 1
color snazzy 
