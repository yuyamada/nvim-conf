"spaceをleaderに設定
let mapleader = "\<Space>"

"jjでnormal mode
inoremap <silent> jj <ESC>

" 行が折り返し表示されていた場合、行単位ではなく表示行単位でカーソルを移動する
nnoremap j gj
nnoremap k gk
nnoremap <down> gj
nnoremap <up> gk

"Ctrl+hjklで移動
noremap <C-h> h
noremap <C-j> gj
noremap <C-k> gk
noremap <C-l> l
inoremap <C-h> <Left>
inoremap <C-k> <Up>
inoremap <C-j> <Down>
inoremap <C-l> <Right>

"行頭・行末移動
noremap <C-e> $<Right>a
noremap <C-a> ^i
inoremap <C-a> <C-o>^
inoremap <C-e> <C-o>$

"returnとbackspace
noremap <C-d> i<BS>
inoremap <C-d> <BS>
noremap <C-m> i<CR>
inoremap <C-m> <CR>

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
nnoremap sq :<C-u>q<CR>
nnoremap sQ :<C-u>bd<CR>
nnoremap sb :<C-u>Unite buffer_tab -buffer-name=file<CR>
nnoremap sB :<C-u>Unite buffer -buffer-name=file<CR>

"文字列検索
nnoremap <silent><tab><tab> :<C-u>set nohlsearch!<CR>  " tabキー2度押しでハイライトの切り替え
