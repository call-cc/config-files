filetype plugin indent on
syntax on

au BufRead,BufNewFile *.py         :call Python_settings()
au BufRead,BufNewFile *.yml,*.yaml :call YAML_settings()
au BufRead,BufNewFile *.html       :call HTML_settings()
au BufRead,BufNewFile *.hs         :call Haskell_settings()
au Filetype gitcommit              :call Git_settings()

if has('gui_running')
	" Remove tool-bar
	set guioptions-=T
	" Remove scroll-bars
	set guioptions-=r
	set guioptions-=L
	set guifont=Consolas\ 12
	colorscheme darktooth
else
	colorscheme delek
endif

highlight UnneededWhitespace ctermbg=darkgreen guibg=orange
match UnneededWhitespace /\s\+$/

function! Python_settings()
	setlocal tabstop=8
	setlocal expandtab
	setlocal shiftwidth=4
	setlocal softtabstop=4
	setlocal autoindent
endfunction

function! YAML_settings()
	setlocal tabstop=8
	setlocal expandtab
	setlocal shiftwidth=2
	setlocal softtabstop=2
	setlocal autoindent
endfunction

function! HTML_settings()
	setlocal tabstop=8
	setlocal expandtab
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

let g:FactorRoot = "~/Multiplexer/Factor"

set modeline
set ruler
set nonumber
set incsearch
set wildmenu
set wildignore=*.o,*~,*.pyc

set smarttab
set shiftround
set nojoinspaces

set statusline=%<%F%h%m%r%h%w%y\ %{&ff}%=line:%l/%L\ col:%c%V\ ascii:%b\ %P
set laststatus=2

" vsplit
