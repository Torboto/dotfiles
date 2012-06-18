set background=dark
set transparency=10

colorscheme molokai

set colorcolumn=85

"Set cmd+0-9 to change tabs
for i in range(1, 9) 
exec "nnoremap <D-".i."> ".i."gt" 
endfor 

"Set invisible characters
set list
set listchars=tab:▸\ ,eol:¬

set relativenumber
set undofile

" Do awesome stuff on MacVim
if has("gui_macvim")

" Disable toolbar on MacVim
set go-=T
endif

"Global clipboard
set clipboard=unnamed
