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

" Key mapping for ctags, shift-left go to function definition, shift-right back
" to function.
nmap <F3> <C-]>
nmap <F2> <C-t>

" taglist, F12 for poen taglist, F5 for switch between windows
nnoremap <silent> <F12> :TlistToggle<CR>
nnoremap <silent> <F5>  :wincmd p<CR>

