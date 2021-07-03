" srBootstrap Plug
let autoload_plug_path = stdpath('data') . '/site/autoload/plug.vim'
if !filereadable(autoload_plug_path)
  silent execute '!curl -fLo ' . autoload_plug_path . '  --create-dirs 
      \ "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"'
endif
unlet autoload_plug_path

" Run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync
\| endif

" Install plugins
call plug#begin('~/.local/share/nvim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}  " lsp and ide
Plug 'lambdalisue/gina.vim'
Plug 'airblade/vim-gitgutter'  "変更箇所を表示
Plug 'cocopon/iceberg.vim'  "テーマ
Plug 'ryanoasis/vim-devicons'  "icon表示
Plug 'itchyny/lightline.vim'  "ステータスラインの表示内容強化
Plug 'Yggdroot/indentLine'  "インデントの可視化
"Plug 'scrooloose/nerdtree'  "ファイルをtree表示
"Plug 'jistr/vim-nerdtree-tabs' "タブページでtreeを同期
Plug 'lambdalisue/fern.vim'  " ファイラ
Plug 'antoinemadec/FixCursorHold.nvim'
Plug 'lambdalisue/nerdfont.vim'
Plug 'lambdalisue/fern-renderer-nerdfont.vim'
Plug 'lambdalisue/fern-hijack.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'  "あいまい検索
Plug 'kana/vim-submode' " ウィンドウ関連サブモードを定義
"Plug 'jiangmiao/auto-pairs'
"Plug 'scrooloose/syntastic'  "シンタックスハイライト
"Plug 'Shougo/deoplete.nvim'  "コードの自動補完
"Plug 'Shougo/deoppet.nvim'  "スニペット補完機能
"Plug 'zxqfl/tabnine-vim'  "自動補完
"Plug 'tell-k/vim-autopep8'  "python
"Plug 'fatih/vim-go'  "golang
Plug 'elzr/vim-json'  "json
"Plug 'rhysd/vim-clang-format'  "c/c++ formatter
"Plug 'quark-zju/vim-cpp-auto-include'  "c/c++ auto include
" Plug 'prabirshrestha/async.vim'
" Plug 'prabirshrestha/asyncomplete.vim'
" Plug 'prabirshrestha/asyncomplete-lsp.vim'
" Plug 'prabirshrestha/vim-lsp'
" Plug 'Shougo/neosnippet.vim'
" Plug 'Shougo/neosnippet-snippets'
" Plug 'prabirshrestha/asyncomplete-neosnippet.vim'
" Plug 'prabirshrestha/asyncomplete-neosnippet.vim'
" Plug 'mattn/vim-lsp-settings'
"Plug 'mattn/vim-goimports'
Plug 'tpope/vim-fugitive'  "gitコマンド
Plug 'tpope/vim-surround'  "開き/閉じカッコをまとめて選択
Plug 'tpope/vim-commentary'

Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'hashivim/vim-terraform'

call plug#end()

filetype plugin indent on
