" Theme related: make backaground same as regular background
highlight link WhichKeyFloating Normal

" Leader Normal
let g:which_key_map = {}

let g:which_key_map["r"] = "Regex"

let g:which_key_map["f"] = {
            \ 'name' : "+Find",
            \ 'f'    : "Files",
            \ 'e'    : "Explorer",
            \ 'h'    : "History",
            \ 'c'    : "Colorscheme",
            \ 'g'    : "Grep",
            \}

let g:which_key_map["t"] = {
            \ 'name' : "+Tab",
            \ 'n'    : "Next",
            \ 'p'    : "Prev",
            \ 'a'    : "Add",
            \ 'k'    : "Kill",
            \}

let g:which_key_map["w"] = {
            \ 'name' : "+Window",
            \ 'n'    : "Next",
            \ 'k'    : "Kill",
            \ 'v'    : "Vertical",
            \ 's'    : "Spilt",
            \ 'h'    : "Heigth inc",
            \ 'l'    : "Width inc",
            \}

let g:which_key_map["b"] = {
            \ 'name' : "+Buffer",
            \ 'n'    : "Next",
            \ 'p'    : "Previous",
            \ 'k'    : "Kill",
            \}

call which_key#register('<Space>', "g:which_key_map", 'n') 


" Leader Normal
let g:which_key_map_visual = {}

let g:which_key_map_visual["e"] = "Eval"

let g:which_key_map["r"] = "Regex"

call which_key#register('<Space>', "g:which_key_map_visual", 'v') 

" LocalLeader Normal
let g:which_key_local_map = {}
let g:which_key_local_map["n"] = {
            \ 'name' : "+Note",
            \ 'a'    : "Add",
            \ 'f'    : "Find",
            \ 't'    : "Search Tag",
            \ 'i'    : "Insert Tag",
            \}

let g:which_key_local_map["s"] = 'Sessions'

call which_key#register(',', "g:which_key_local_map", 'n') 
