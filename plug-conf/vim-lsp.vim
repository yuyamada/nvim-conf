function! s:on_lsp_buffer_enabled() abort
    setlocal omnifunc=lsp#complete
    setlocal signcolumn=yes
    if exists('+tagfunc') | setlocal tagfunc=lsp#tagfunc | endif
    nmap <leader>d <C-w>w:LspDefinition<cr>
    nmap <leader>h <plug>(lsp-hover)
    "nmap <leader>s <plug>(lsp-document-symbol-search)
    "nmap <leader>S <plug>(lsp-workspace-symbol-search)
    nmap <leader>r <plug>(lsp-references)
    "nmap <leader>i <plug>(lsp-implementation)
    "nmap <leader>t <plug>(lsp-type-definition)
    nmap <leader>rn <plug>(lsp-rename)
    "nmap <leader>h <plug>(lsp-previous-diagnostic)
    "nmap <leader>l <plug>(lsp-next-diagnostic)
    "inoremap <buffer> <expr><c-f> lsp#scroll(+4)
    "inoremap <buffer> <expr><c-d> lsp#scroll(-4)

    let g:lsp_format_sync_timeout = 1000
    autocmd! BufWritePre <buffer> call execute('LspDocumentFormatSync')
    autocmd BufWritePre <buffer> call execute('LspCodeActionSync source.organizeImports')
    
    " refer to doc to add more commands
endfunction

augroup lsp_install
    au!
    " call s:on_lsp_buffer_enabled only for languages that has the server registered.
    autocmd User lsp_buffer_enabled call s:on_lsp_buffer_enabled()
augroup END
