filetype plugin indent on
set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4

set number
set relativenumber

syntax on

" Undo history
" Create a central directory to store undo files so they don't clutter your project folders
if !isdirectory($HOME . '/.vim/undodir')
    call mkdir($HOME . '/.vim/undodir', 'p', 0700)
endif

set undodir=~/.vim/undodir  " Tell Vim where to store history
set undofile                " Automatically save and restore the undo history

" Netrw explorer
let g:netrw_banner = 0
