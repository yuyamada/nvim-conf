let g:go_metalinter_autosave = 1
let g:go_fmt_command = "goimports"
let g:go_metalinter_autosave_enabled = ['golint', 'vet']
"let g:go_metalinter_autosave_enabled = ['vet']
let mapleader = "go"
au FileType go nmap <silent> <leader>r <Plug>(go-run)
au FileType go nmap <silent> <leader>s <Plug>(go-def-split)
au FileType go nmap <silent> <leader>v <Plug>(go-def-vertical)
au FileType go nmap <silent> <leader>t <Plug>(go-test)
au FileType go nmap <silent> <leader>at :GoAddTags<CR>
au FileType go nmap <silent> <leader>fs :GoFillStruct<CR>
au FileType go nmap <silent> <leader>ei :GoIfErr<CR>
au FileType go nmap <silent> <leader>ki :GoKeyify<CR>
au FileType go nmap <silent> <leader>dd :GoDeclsDir<CR>
au FileType go nmap <silent> <leader>ip :GoImpl<CR>
