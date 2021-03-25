let g:ansible_options = {'ignore_blank_lines': 0}  "reset indent with empty line

" all yml files = ansible
augroup filetypedetect
  au BufRead,BufNewFile *.yaml setfiletype ansible
  au BufRead,BufNewFile *.yml  setfiletype ansible
augroup END
