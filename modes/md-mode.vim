autocmd FileType markdown call SetMdMode()

function SetMdMode()
    " Proper wrapping
    setlocal wrap
    setlocal linebreak

    " Spell checking
    setlocal spell

    " Soft wrap movement
    nnoremap <buffer> j gj
    nnoremap <buffer> k gk

    nnoremap <buffer> $ g$
    nnoremap <buffer> ^ g^

    nnoremap <buffer> A g$a
    nnoremap <buffer> I g^i

    nnoremap <buffer> o g$a
    nnoremap <buffer> O g^i
endfunction
