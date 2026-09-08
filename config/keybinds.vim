let mapleader = " "

" Setup Which key
set timeoutlen=0
nnoremap <silent> <leader> :WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :WhichKeyVisual '<Space>'<CR>

nnoremap <silent> , :<c-u>WhichKey ','<CR>
vnoremap <silent> , :<c-u>WhichKeyVisual ','<CR>


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
nnoremap <leader>wn <C-w>w
nnoremap <leader>wk <C-w>c

"" Height
""" Heigth
nnoremap <leader>wh 2<C-w>+

""" Largeness
nnoremap <leader>wl 2<C-w>>

" Buffers
nnoremap <leader>bn :bNext<CR>
nnoremap <leader>bp :bprevious<CR>
nnoremap <leader>bk :bd<CR>

" Special chars
"" Spanish characters
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

"" Fallback characters
inoremap <C-s>q =

" Overwrites
"" inside > < spaces
vnoremap i> 0vf>lvt<
nnoremap ci> 0f>lvt<c
nnoremap di> 0f>lvt<d
nnoremap yi> 0f>lvt<y

"" gf can now also create the file if non existent (still will require mkdir if path doesn't exist
nnoremap gf :edit <cWORD>
