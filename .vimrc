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
Plugin 'Valloric/YouCompleteMe'

filetype plugin indent on     " required

" Show status bar 
 set laststatus=2
 set t_Co=256
 let g:airline_theme='bubblegum'

" others
syntax on
set incsearch
set hlsearch

" Key mapping for ctags, F3 go to function definition, F2 back to function.
nmap <F3> <C-]>
nmap <F2> <C-t>
nmap <F4> g]

" taglist, F12 for open taglist, F5 for switch between windows
nnoremap <silent> <F12> :TlistToggle<CR>
nnoremap <silent> <F5>  :wincmd p<CR>

" this is for ctags:tag not found
" it will search current folder for tags file and keep going one dirctory up
" all the way to the root folder.
set tags=tags;/

" for YouCompleteMe"
let g:ycm_global_ycm_extra_conf = '~/.ycm_global_ycm_extra_conf.py'
let g:ycm_confirm_extra_conf = 0
inoremap <expr> <CR>       pumvisible() ? "\<C-y>" : "\<CR>"   	"enter for select
let g:ycm_collect_identifiers_from_tags_files=1
let g:ycm_seed_identifiers_with_syntax=1

" this is for ycm synatastic check and 
"let g:ycm_register_as_syntastic_checker = 1 "default 1
"let g:Show_diagnostics_ui = 1 "default 1

" this is detailed settings for synatastic check.
"let g:ycm_enable_diagnostic_signs = 1
"let g:ycm_enable_diagnostic_highlighting = 1 
"let g:ycm_always_populate_location_list = 0 "default 0
"let g:ycm_open_loclist_on_ycm_diags = 1 "default 1

" this is for debugging ycm.
"let g:ycm_server_keep_logfiles = 1
"let g:ycm_server_log_level = 'debug'

