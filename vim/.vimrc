filetype off

colorscheme vividchalk

set hls
set expandtab
set tabstop=8
set softtabstop=4
set shiftwidth=4
set autoindent
set backspace=indent,eol,start
set incsearch
set ignorecase
set smartcase
set ruler
set wildmenu
set smarttab
set hidden
set wildmenu
set wildmode=list:longest
set scrolloff=3
"set cursorcolumn
"set scrolloff=5
"set relativenumber

"keep .swp in backup
set directory=~/.vim/swap//

let mapleader = ","
filetype on
filetype indent on
:syntax on

:silent! /\s$
:ab pdb import pdb;pdb.set_trace();
:ab log( console.log("");

":au FocusLost * silent! wa

set nomore
set cursorline
highlight CursorLine term=bold cterm=bold

"autocmd BufWritePost *.py call Flake8()
autocmd bufnewfile *.js so ~/.vim/headerjs.txt
autocmd bufnewfile *.js exe "1," . 6 . "g/File  :.*/s//File  : " .expand("%:t")
"au FileType xml exe ":silent %!xmllint --format --recover - 2>/dev/null"
"%s/<Ctrl-V><Ctrl-M>//g
