" Theme related: make backaground same as regular background
highlight link WhichKeyFloating Normal

" Leader Key Menus
let g:which_key_map = {}

"" Eval
let g:which_key_map["e"] = "Eval"

"" Regex related
let g:which_key_map["r"] = "Regex"

"" Find
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
            \ 'v'    : "Vertial",
            \ 's'    : "Spilt",
            \}

call which_key#register('<Space>', "g:which_key_map") 
