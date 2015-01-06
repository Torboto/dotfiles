set transparency=10

"Set cmd+0-9 to change tabs
for i in range(1, 9) 
exec "nnoremap <D-".i."> ".i."gt" 
endfor 

" Do awesome stuff on MacVim
if has("gui_macvim")

" Disable toolbar/scrollbars on MacVim
set guioptions-=T
set guioptions-=r
"Disable scrollbar in nerdtree
set guioptions-=L
"set go-=T
endif
"
" "Global clipboard
" set clipboard=unnamed
