filetype plugin indent on
syntax on

au BufRead,BufNewFile *.py             :call Python_settings()
au BufRead,BufNewFile *.sh             :call Shell_settings()
au BufRead,BufNewFile *.go             :call Go_settings()
au BufRead,BufNewFile *.yml,*.yaml     :call YAML_settings()
au BufRead,BufNewFile *.html,*.tmpl    :call HTML_settings()
au BufRead,BufNewFile *.hs             :call Haskell_settings()
au BufRead,BufNewFile *.js             :call JavaScript_settings()
au BufRead,BufNewFile *.script         :call JavaScript_settings()
au BufRead,BufNewFile *.tf             :call TerraForm_settings()
au BufRead,BufNewFile *.asm            :call Assembly_settings()
au BufRead,BufNewFile Jenkinsfile      :call Jenkinsfile_settings()
au Filetype gitcommit                  :call Git_settings()

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

function! Shell_settings()
	setlocal tabstop=8
	setlocal expandtab
	setlocal shiftwidth=4
	setlocal softtabstop=4
	setlocal autoindent
endfunction

function! Go_settings()
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

function! JavaScript_settings()
	setlocal tabstop=8
	setlocal expandtab
	setlocal shiftwidth=4
	setlocal softtabstop=4
	setlocal autoindent
endfunction

function! TerraForm_settings()
	setlocal tabstop=8
	setlocal expandtab
	setlocal shiftwidth=2
	setlocal softtabstop=2
	setlocal autoindent
endfunction

function! Assembly_settings()
	setlocal tabstop=8
	setlocal expandtab
	setlocal shiftwidth=4
	setlocal softtabstop=4
	setlocal autoindent
endfunction

function! Jenkinsfile_settings()
	setlocal tabstop=8
	setlocal expandtab
	setlocal shiftwidth=4
	setlocal softtabstop=4
	setlocal autoindent
	setlocal filetype=Groovy
endfunction

function! Git_settings()
	setlocal spell
	setlocal textwidth=72
endfunction

let g:FactorRoot = "~/Multiplexer/Factor"

set modeline
set ruler
set incsearch
set wildmenu
set wildignore=*.o,*~,*.pyc
" set number
" set relativenumber

"augroup numbertoggle
"  autocmd!
"  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
"  autocmd BufLeave,FocusLost,InsertEnter   * set nonumber
"augroup END

set smarttab
set shiftround
set nojoinspaces

set backspace=indent,eol,start

set statusline=%<%F%h%m%r%h%w%y\ %{&ff}%=line:%l/%L\ col:%c%V\ ascii:%b\ %P
set laststatus=2
set t_Co=256

" vsplit

set rtp+=~/.venv/powerline/lib/python3.7/site-packages/powerline/bindings/vim

