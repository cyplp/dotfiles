set nu

set nocompatible
filetype off

"required for vundle
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
"Other bundle"
Bundle 'kien/ctrlp.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'kshenoy/vim-signature'
Bundle 'vim-scripts/bufexplorer.zip'
Bundle 'vim-scripts/taglist.vim'
" required!
filetype plugin indent on

let mapleader = ","

set hlsearch    " highlight search
set ignorecase  " Do case in sensitive matching with

syntax on               " enable syntax

set showcmd
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
set listchars=tab:→\ ,eol:↵,extends:≻,precedes:≺,trail:·,nbsp:␢ " Unprintable chars mapping
map <F12> :set list!<CR>

" Gestion des onglets
map <F2> <Esc>:tabprevious <CR>
map <F3> <Esc>:tabnext <CR>
""set showtabline=2                   " always show the tabline


" NERDTree configuration
let NERDTreeIgnore=['\.pyc$', '\.rbc$', '\~$']
map <F4> :NERDTreeToggle<CR>


map <F5> :TlistToggle<CR>
let Tlist_Use_Right_Window   = 1

" Delete all whitespace in end of line
autocmd BufWritePre * :%s/\s\+$//e


