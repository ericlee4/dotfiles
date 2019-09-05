" load defaults
unlet! skip_defaults_vim
source $VIMRUNTIME/defaults.vim

" line numbers
set number

" dark bg
set background=dark

" custom colorscheme
colorscheme hybrid

" gvim font
set guifont=Source\ Code\ Pro\ 12

" syntax highlighting
syntax enable

" don't wrap text
set nowrap

" allow hidden buffers
set hidden

" highlight search matches
set hlsearch

" ignore case by default
set ignorecase

" smart case if capitalized
set smartcase

" don't wrap search
set nowrapscan

" 3 space tabs and shifts
set tabstop=3 expandtab shiftwidth=3 smarttab

" v split to the right
set splitright

" buffer/tab shortcuts
map <C-j> :bnext<CR>
map <C-k> :bprev<CR>
map <C-l> :tabn<CR>
map <C-h> :tabp<CR>

" paste shortcut
inoremap <C-v> <C-r>+

" infinite files
let g:ctrlp_max_files = 0

" go deeper
let g:ctrlp_max_depth = 100

" the directory of the current file, unless it is a subdirectory of the cwd
let g:ctrlp_working_path_mode = "a"

" add plugin
set runtimepath+=~/.vim/plugins/ctrlp.vim/

" ignore files and dirs in ctrlp
set wildignore+=*.class,*.swp,*/.git/*,*/.hg/*,*/.svn/*,*/node_modules/*

" plugins
filetype plugin indent on
runtime macros/matchit.vim
runtime ftplugin/man.vim
