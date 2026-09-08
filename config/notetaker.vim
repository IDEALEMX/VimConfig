" Commands
command! NewNote call NewNote()
command! FindNote Files ~/.notes/
command! TagSearch Rg \[T: .+\]
command! InsertTag call InsertTag()

" Keybindings
"" Custom Note New
nnoremap ,na :NewNote<CR>
"" Custom Note Find
nnoremap ,nf :FindNote<CR>
"" Custom Note Insert-tag
nnoremap ,ni :InsertTag<CR>
"" Custom Note Tag-search
nnoremap ,nt :TagSearch<CR>

" Logic
let s:notes_path = "~/.notes/"

function! NewNote()
    call inputsave()
    let  l:note_name = input("Enter note name: ")
    call inputrestore()

    if (empty(l:note_name))
        return 1
    endif

    let  l:full_note_path = s:notes_path . strftime("[%d-%m-%y]") . l:note_name . ".md"
    execute 'edit ' .  fnameescape(l:full_note_path)
    let @l = l:note_name

    let l:undo_levels = &undolevels
    set undolevels=-1

    normal! i# # TAGS
    normal! gg$"lpVUj
    let &undolevels = l:undo_levels
endfunction

function! InsertTag()
    let @l = input("Enter tag: ")
    normal! Go[T: "lpa]
endfunction
