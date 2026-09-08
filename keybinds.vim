let mapleader = " "

" Setup Which key
nnoremap <silent> <leader> :WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :WhichKeyVisual '<Space>'<CR>
set timeoutlen=0

" Accept autocompletion suggestion with TAB
inoremap <expr> <Tab> pumvisible() ? "\<C-y>" : "\<Tab>"

" Eval
vnoremap <leader>e "sy:@s<CR>

" Regex
nnoremap <leader>r :OverCommandLine<CR>
vnoremap <leader>r :OverCommandLine<CR>

" Find
"" File manager
nnoremap <leader>fe :Ex<CR>

"" Fuzzy find related
nnoremap <leader>ff :Files<CR>
nnoremap <leader>fh :History<CR>
nnoremap <leader>fb :Buffers<CR>
nnoremap <leader>fc :Colors<CR>

""Rip grep
nnoremap <leader>fg :RG<CR>

" Tabs
nnoremap <leader>tn :tabnext<CR>
nnoremap <leader>tp :tabprevious<CR>
nnoremap <leader>ta :tabnew<CR>
nnoremap <leader>tk :tabclose<CR>

" Windows
nnoremap <leader>wv :vsplit<CR>
nnoremap <leader>ws :split<CR>
nnoremap <leader>wn <C-w>w<CR>
nnoremap <leader>wk <C-w>c<CR>

" Special chars
inoremap <C-s>n ñ
inoremap <C-s>N Ñ

inoremap <C-s>a á
inoremap <C-s>e é
inoremap <C-s>i í
inoremap <C-s>o ó
inoremap <C-s>u ú

inoremap <C-s>y ü
inoremap <C-s>Y Ü

inoremap <C-s>A Á
inoremap <C-s>E É
inoremap <C-s>I Í
inoremap <C-s>O Ó
inoremap <C-s>U Ú

inoremap <C-s>? ¿
inoremap <C-s>! ¡


