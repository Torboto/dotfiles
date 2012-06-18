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

"Set invisible characters
set list
set listchars=tab:▸\ ,eol:¬

set colorcolumn=85

inoremap kj <esc>
inoremap jk <esc>

nnoremap <leader>w <C-w>v<C-w>l

nnoremap <leader>w <C-w>v<C-w>l

"Map F2 to NerdTree
map <F2> :NERDTreeToggle<CR>

set wildmode=longest,list
set wildmenu
