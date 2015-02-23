filetype plugin indent on
syntax on

au BufRead,BufNewFile *.py   :call Python_stuff()
au BufRead,BufNewFile *.html :call HTML_stuff()
au BufRead,BufNewFile *.hs   :call Haskell_stuff()
au Filetype gitcommit :call Git_stuff()

function! Python_stuff()
	setlocal tabstop=8
	setlocal expandtab
	setlocal shiftwidth=4
	setlocal softtabstop=4
	setlocal autoindent
endfunction

function! HTML_stuff()
	setlocal tabstop=8
	setlocal shiftwidth=4
	setlocal softtabstop=4
	setlocal autoindent
endfunction

function! Haskell_stuff()
	setlocal tabstop=8
	setlocal expandtab
	setlocal softtabstop=4
	setlocal shiftwidth=4
endfunction

function! Git_stuff()
	setlocal spell
	setlocal textwidth=72
endfunction

set modeline
set ruler
set incsearch
set wildmenu
set wildignore=*.o,*~,*.pyc

set smarttab
set shiftround
set nojoinspaces

