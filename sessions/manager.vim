nnoremap ,sf :call SessionMenu()<CR>
nnoremap ,sr :so ~/vim/sessions/recover.vim<CR>

let g:has_w = v:false

autocmd SessionLoadPost * let g:has_w = v:false

autocmd BufWritePost * let g:has_w = v:true

function s:SaveRecoverCond()
    if g:has_w
        mksession! ~/vim/sessions/recover.vim
    endif
endfunction

autocmd VimLeavePre * call s:SaveRecoverCond()

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
    2

    " Keybindings
    nnoremap <buffer> q :bd<CR>
    nnoremap <buffer> <ESC> :bd<CR>
    nnoremap <buffer> <CR> :call LoadSession()<CR>

    " Block buffer from editing
    set noma
endfunction
