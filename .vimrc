set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" alternatively, pass a path where Vundle should install plugins
"let path = '~/some/path/here'
"call vundle#rc(path)

Plugin 'gmarik/vundle'
Plugin 'bling/vim-airline'

filetype plugin indent on     " required

" Show status bar 
 set laststatus=2
 set t_Co=256
 let g:airline_theme='bubblegum'

" others
syntax on
set incsearch
set hlsearch
