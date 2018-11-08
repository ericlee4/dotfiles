unlet! skip_defaults_vim
source $VIMRUNTIME/defaults.vim
set nocompatible

set number
set background=dark
colorscheme hybrid

set guifont=Source\ Code\ Pro\ 24
set showcmd
syntax enable

set backspace=indent,eol,start
set nowrap

set incsearch
set hlsearch
set ignorecase
set smartcase

set mouse=a
set tabstop=3 softtabstop=0 expandtab shiftwidth=3 smarttab
set splitright
set wildignore+=*.class,*.jar,*.swp
map <C-j> :bnext<CR>
map <C-k> :bprev<CR>
map <C-l> :tabn<CR>
map <BS> :tabp<CR>
" inoremap jk <ESC>

" ctrlp
"let g:ctrlp_max_files = 0
"let g:ctrlp_max_depth = 100
"set runtimepath+=~/.vim/plugins/ctrlp.vim/

filetype plugin indent on
runtime macros/matchit.vim
runtime ftplugin/man.vim
