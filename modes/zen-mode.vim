let g:zen_mode = v:false
nnoremap <leader>z :call ToggleZenMode()<CR>

function ToggleZenMode()
    let g:zen_mode = !g:zen_mode
    let &laststatus = g:zen_mode ? 0 : 2
    let &showtabline = g:zen_mode ? 0 : 1
endfunction
