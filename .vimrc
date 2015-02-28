filetype plugin indent on
syntax on

au BufRead,BufNewFile *.py   :call Python_settings()
au BufRead,BufNewFile *.html :call HTML_settings()
au BufRead,BufNewFile *.hs   :call Haskell_settings()
au Filetype gitcommit :call Git_settings()

function! Python_settings()
	setlocal tabstop=8
	setlocal expandtab
	setlocal shiftwidth=4
	setlocal softtabstop=4
	setlocal autoindent
endfunction

function! HTML_settings()
	setlocal tabstop=8
	setlocal shiftwidth=4
	setlocal softtabstop=4
	setlocal autoindent
endfunction

function! Haskell_settings()
	setlocal tabstop=8
	setlocal expandtab
	setlocal softtabstop=4
	setlocal shiftwidth=4
endfunction

function! Git_settings()
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

