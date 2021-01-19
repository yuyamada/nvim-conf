" Vim起動時にdeopleteを有効にする
let g:deoplete#enable_at_startup = 0
" smartcase有効化. 大文字が入力されるまで大文字小文字の区別を無視する
"let g:deoplete#enable_smart_case = 1
" 3文字以上の単語に対して補完を有効にする
let g:deoplete#min_keyword_length = 3
" 区切り文字まで補完する
let g:deoplete#enable_auto_delimiter = 1
" 1文字目の入力から補完のポップアップを表示
let g:deoplete#auto_completion_start_length = 1
" バックスペースで補完のポップアップを閉じる
inoremap <expr><BS> deoplete#smart_close_popup()."<C-h>"

" エンターキーで補完候補の確定. スニペットの展開もエンターキーで確定・・・・・・②
imap <expr><CR> deoppet#expandable() ? "<Plug>(deoppet_expand_or_jump)" : pumvisible() ? "<C-y>" : "<CR>"
" タブキーで補完候補の選択. スニペット内のジャンプもタブキーでジャンプ・・・・・・③
"imap <expr><TAB> pumvisible() ? "<C-n>" : deoppet#jumpable() ? "<Plug>(deoppet_expand_or_jump)" : "<TAB>"
