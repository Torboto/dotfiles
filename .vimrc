filetype plugin indent on
set background=dark

colorscheme molokai

syntax enable
set bs=2
set ruler
set hls
set ts=4 sts=4 et sw=4
set expandtab
set hls ic laststatus =2
"set ai si noci
set ic
set ignorecase
set smartcase
nnoremap <tab> %
vnoremap <tab> %
set wrap
set textwidth=79
set formatoptions=qrn1
set clipboard=unnamed

set wildmode=longest,list
set wildmenu

"Set invisible characters
set list
set listchars=tab:>\ 

set undofile
set colorcolumn=85
set relativenumber

"Pathogen
execute pathogen#infect()

"Persistent session
let g:session_autosave = 1
let g:session_autoload = 1
let g:session_autosave_periodic = 1

inoremap kj <esc>
inoremap jk <esc>

nnoremap <leader>w <C-w>v<C-w>l

nnoremap <leader>w <C-w>v<C-w>l

"Launch NerdTree automatically
"autocmd vimenter * NERDTree
"Map Ctrl+n to NerdTree
map <C-n> :NERDTreeToggle<CR>

"Set notes.vim save locations
let g:notes_directories = ['~/Documents/notes', '~/Dropbox/notes']
