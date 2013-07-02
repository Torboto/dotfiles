filetype plugin indent on
set background=dark

colorscheme molokai_losh

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
set wildmode=longest,list
set wildmenu
nnoremap <tab> %
vnoremap <tab> %
set wrap
set textwidth=79
set formatoptions=qrn1
set clipboard=unnamed

inoremap kj <esc>
inoremap jk <esc>

"Set invisible characters
set list
"set listchars=tab:▸\ ,eol:¬

set colorcolumn=85

"Pathogen
execute pathogen#infect()

"Persistent session
let g:session_autosave = 'yes'
let g:session_autoload = 'yes'


nnoremap <leader>w <C-w>v<C-w>l

"Launch NerdTree automatically
"autocmd vimenter * NERDTree
"Map Ctrl+n to NerdTree
map <C-n> :NERDTreeToggle<CR>
