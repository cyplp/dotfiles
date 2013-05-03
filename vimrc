set nu

set nocompatible
filetype off

"required for vundle
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
Bundle 'kien/ctrlp.vim'
"Other bundle"
Bundle 'scrooloose/nerdtree'
Bundle 'kshenoy/vim-signature'
Bundle 'vim-scripts/bufexplorer.zip'
" required!
filetype plugin indent on

let mapleader = ","

set hlsearch    " highlight search
set ignorecase  " Do case in sensitive matching with

syntax on               " enable syntax

set showmatch  " Show matching brackets.
set laststatus=2
set ruler  " Show ruler
set showcmd " Display an incomplete command in the lower right corner of the Vim window

set tabstop=4    " Set the default tabstop
set softtabstop=4
set shiftwidth=4 " Set the default shift width for indents
set expandtab   " Make tabs into spaces (set by tabstop)
set smarttab " Smarter tab levels

set nolist " Display unprintable characters f12 - switches
set listchars=tab:·\ ,eol:¶,trail:·,extends:»,precedes:« " Unprintable chars mapping


" NERDTree configuration
let NERDTreeIgnore=['\.pyc$', '\.rbc$', '\~$']
map <Leader>n :NERDTreeToggle<CR>

" Delete all whitespace in end of line
autocmd BufWritePre * :%s/\s\+$//e


