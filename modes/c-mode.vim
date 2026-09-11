autocmd FileType c call SetUpCBuffer()

function SetUpCBuffer()
    " Compile and run (Eval)
    nnoremap <buffer> ,e :! bash ./build.bash<CR>
endfunction

