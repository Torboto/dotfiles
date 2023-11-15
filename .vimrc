filetype plugin indent on
set background=dark
colorscheme molokai

syntax enable
set bs=2
set ruler
set hls
set ts=2 sts=2 et sw=2
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
set clipboard+=unnamed
set encoding=utf-8
scriptencoding utf-8

set wildmode=longest,list
set wildmenu

"Set invisible characters
set list
set listchars=tab:>\

set undofile
set undodir=~/.vim/undodir/
set number relativenumber
set directory=$HOME/.vim/swapfiles/
set backupdir=$HOME/.vim/backups/

"Persistent vim-session
let g:session_autosave = 1
let g:session_autoload = 1
let g:session_autosave_periodic = 1

"jk/kj keys can be hit in any order to exit mode
inoremap kj <esc>
inoremap jk <esc>

cnoreabbrev <expr> te getcmdtype() == ":" && getcmdline() == 'te' ? 'tabedit' : 'te'
cnoreabbrev <expr> te getcmdtype() == ":" && getcmdline() == 'tc' ? 'tabclose' : 'tc'
"Allow mouse scrolling in iTerm2
set mouse=a

nnoremap <leader>w <C-w>v<C-w>l
nnoremap <leader>w <C-w>v<C-w>l

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap dt vat<Esc>da>`<da>

" Debugging helpers
autocmd BufEnter *.py iabbr qqq print("DERP",
autocmd BufEnter *.js iabbr qqq console.log("DERP",
autocmd BufEnter *.jsx iabbr qqq console.log("DERP",
autocmd BufEnter *.vue iabbr qqq console.log("DERP",

autocmd FileType js
      \ set foldmethod=expr |
      \ set foldexpr=getline(v:lnum)=~''\v^\s*$\/\*\*'' |
      \ exe "normal zM``"

 runtime bundle/vim-pathogen/autoload/pathogen.vim
 execute pathogen#infect()

"Launch NerdTree automatically
"autocmd vimenter * NERDTree
"Map Ctrl+n to NerdTree
map <C-n> :NERDTreeToggle<CR>

" The Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif
" bind K to grep word under cursor
nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>
" bind \ (backward slash) to grep shortcut
command -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw!

nnoremap \ :Ag<SPACE>


" bind \ (backward slash) to grep shortcut

"Disable folding
let g:vim_markdown_folding_disabled = 1

let g:mustache_abbreviations = 1
let g:typescript_indent_disable = 1

let g:typescript_compiler_binary = 'tsc'
let g:typescript_compiler_options = ''
autocmd QuickFixCmdPost [^l]* nested cwindow
autocmd QuickFixCmdPost    l* nested lwindow

let g:mustache_abbreviations = 1
au BufReadPost *.vue set syntax=html
au BufReadPost *.html set filetype=html.mustache
au BufReadPost *.html set syntax=mustache

autocmd Filetype html setlocal expandtab ts=2 sw=2 sts=2
autocmd Filetype css setlocal expandtab ts=2 sw=2 sts=2
autocmd Filetype mustache setlocal expandtab ts=2 sw=2 sts=2

if version >= 700
  map <C-t> <Esc>:tabnew<CR>
  map <C-w> <Esc>:tabclose<CR>
endif

" Vim plugin to make bracketed paste fast by temporarily disabling foldexpr

if &cp || exists('g:loaded_fastpaste')
	finish
endif

let g:loaded_fastpaste = 1

function! s:paste_toggled(new, old) abort
	if a:new && !a:old
		let b:saved_foldexpr = &foldexpr
		let &l:foldexpr = ''
	elseif !a:new && a:old && exists('b:saved_foldexpr')
		let &l:foldexpr = b:saved_foldexpr
		unlet b:saved_foldexpr
	endif
endfunc

augroup FastPaste
	autocmd OptionSet paste call s:paste_toggled(v:option_new, v:option_old)
augroup END
