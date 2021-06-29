"spaceをleaderに設定
let mapleader = "\<Space>"

"jjでnormal mode
inoremap <silent> jj <ESC>

" 行が折り返し表示されていた場合、行単位ではなく表示行単位でカーソルを移動する
nnoremap j gj
nnoremap k gk
nnoremap <down> gj
nnoremap <up> gk

noremap <C-n> :bnext<CR>
noremap <C-p> :bprev<CR>
noremap ]b :bnext<CR>
noremap [b :bprev<CR>
"noremap <C-j> :bnext<CR>
"noremap <C-k> :bprev<CR>
"noremap <C-h> :bfirst<CR>
"noremap <C-l> :blast<CR>

"insert mode中Ctrl+hjklで移動
inoremap <C-h> <Left>
inoremap <C-k> <Up>
inoremap <C-j> <Down>
inoremap <C-l> <Right>

"行頭・行末移動
noremap <C-a> ^
noremap <C-e> $<Right>
inoremap <C-a> <C-o>^
inoremap <C-e> <C-o>$

"returnとbackspace
noremap <C-d> i<BS>
inoremap <C-d> <BS>
noremap <C-m> i<CR>
inoremap <C-m> <CR>
noremap <BS> i<BS>

"タブ移動
nnoremap s <Nop>
nnoremap sj <C-w>j
nnoremap sk <C-w>k
nnoremap sl <C-w>l
nnoremap sh <C-w>h
nnoremap sJ <C-w>J
nnoremap sK <C-w>K
nnoremap sL <C-w>L
nnoremap sH <C-w>H
nnoremap sn gt
nnoremap sp gT
nnoremap sr <C-w>r
nnoremap s= <C-w>=
nnoremap sw <C-w>w
nnoremap so <C-w>_<C-w>|
nnoremap sO <C-w>=
nnoremap sN :<C-u>bn<CR>
nnoremap sP :<C-u>bp<CR>
nnoremap st :<C-u>tabnew<CR>
nnoremap sT :<C-u>Unite tab<CR>
nnoremap ss :<C-u>sp<CR>
nnoremap sv :<C-u>vs<CR>
nnoremap sq :q<CR>
nnoremap sQ :<C-u>bd<CR>
nnoremap sb :<C-u>Unite buffer_tab -buffer-name=file<CR>
nnoremap sB :<C-u>Unite buffer -buffer-name=file<CR>

"tab関連
" noremap <C-n> gt
" noremap <C-p> gT
" noremap <C-t> :tabnew<CR>
" noremap <Leader>w :q<CR>

"文字列検索
nnoremap <silent><esc><esc> :<C-u>set nohlsearch!<CR>  " tabキー2度押しでハイライトの切り替え

"delete without cut
nnoremap x "_x
nnoremap d "_d
nnoremap p P

