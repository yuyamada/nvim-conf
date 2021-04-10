" Bootstrap Plug
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

Plug 'cocopon/iceberg.vim'  "テーマ
Plug 'ryanoasis/vim-devicons'  "icon表示
Plug 'itchyny/lightline.vim'  "ステータスラインの表示内容強化
Plug 'Yggdroot/indentLine'  "インデントの可視化
Plug 'scrooloose/nerdtree'  "ファイルをtree表示
Plug 'jistr/vim-nerdtree-tabs' "タブページでtreeを同期
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'  "あいまい検索
Plug 'kana/vim-submode' " ウィンドウ関連サブモードを定義
"Plug 'scrooloose/syntastic'  "シンタックスハイライト
"Plug 'Shougo/deoplete.nvim'  "コードの自動補完
"Plug 'Shougo/deoppet.nvim'  "スニペット補完機能
"Plug 'zxqfl/tabnine-vim'  "自動補完
"Plug 'tell-k/vim-autopep8'  "python
"Plug 'fatih/vim-go'  "golang
"Plug 'elzr/vim-json'  "json
"Plug 'rhysd/vim-clang-format'  "c/c++ formatter
"Plug 'quark-zju/vim-cpp-auto-include'  "c/c++ auto include
Plug 'prabirshrestha/async.vim'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
"Plug 'mattn/vim-goimports'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'

call plug#end()

filetype plugin indent on
