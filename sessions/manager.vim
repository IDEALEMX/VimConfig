nnoremap ,s :call SessionMenu()<CR>

function LoadSession()
    if line('.') isnot 1
        let l:file = expand('<cWORD>')
        wa
        set ma
        execute 'so ~/vim/sessions/' . l:file . '.vim'
    endif
endfunction

function SessionMenu()
    new
    set ma

    " Set up file format
    normal! J
    set buftype=nofile
    set filetype=markdown
    filetype detect

    " Setup menu
    normal! i# SESSIONS
    normal! v:!ls ~/vim/sessions/

    "" Parse links
    normal! /manager.vimVd
    normal! :%s/\.vim//

    " Keybindings
    nnoremap <buffer> q :bd<CR>
    nnoremap <buffer> <ESC> :bd<CR>
    nnoremap <buffer> <CR> :call LoadSession()<CR>

    " Block buffer from editing
    set noma
endfunction
