let mapleader=" "

"high light
syntax on
set number
set relativenumber
set cursorline
set wrap
set showcmd
set wildmenu

"high light search
set hlsearch
exec "nohlsearch"
set incsearch 
set ignorecase
set smartcase

"search result next and last one
noremap n nzz
noremap N Nzz
noremap <LEADER><CR> :nohlsearch<CR>

"key map
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

map <LEADER>i <C-w>k
map <LEADER>k <C-w>j
map <LEADER>j <C-w>h
map <LEADER>l <C-w>l

map <up> :res +5<CR>
map <down> :res -5<CR>
map <left> :vertical resize+5<CR>
map <right> :vertical resize-5<CR>

map tu :tabe<CR>
map tj :-tabnext<CR>
map tl :+tabnext<CR>

map sv <C-w>t<C-w>H
map sh <C-w>t<C-w>K

vnoremap h i
vnoremap H I 

map s <nop>
map S :w<CR>
map Q :q<CR>
map R :source $MYVIMRC<CR>

"split screen
map sl :set splitright<CR>:vsplit<CR>
map sj :set nosplitright<CR>:vsplit<CR>
map si :set nosplitbelow<CR>:split<CR>
map sk :set splitbelow<CR>:split<CR>

"vim-plug
call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline' 
Plug 'connorholyday/vim-snazzy'

call plug#end()

let g:SnazzyTransparent = 1
color snazzy 
