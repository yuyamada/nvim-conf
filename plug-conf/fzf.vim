function! s:find_git_root()
  return system('git rev-parse --show-toplevel 2> /dev/null')[:-2]
endfunction
command! ProjectFiles execute 'Files' s:find_git_root()
" noremap <Leader><Leader> :ProjectFiles<CR>
noremap <Leader><Leader> :Files<CR>
noremap <Leader>b :Buffer<CR>
noremap <Leader>r :Rg<CR>
noremap <Leader>q :History:<CR>
let g:fzf_buffers_jump = 0  " [Buffers] Jump to the existing window if possible
let g:fzf_commits_log_options = '--graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"'  " [[B]Commits] Customize the options used by 'git log':
let g:fzf_tags_command = 'ctags -R'  " [Tags] Command to generate tags file
let g:fzf_commands_expect = 'alt-enter,ctrl-x'  " [Commands] --expect expression for directly executing the command
