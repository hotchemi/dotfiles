filetype off
set rtp+=~/.vim/vundle.git/
call vundle#rc()   

"visually indent guide
Bundle 'nathanaelkane/vim-indent-guides'

" -- でメソッドチェーン整形
Bundle 'c9s/cascading.vim'

"XMLとかHTMLとかの編集機能を強化する
Bundle 'xmledit'

"Align : 高機能整形・桁揃えプラグイン
Bundle 'Align'

"フィルタリングと整形
Bundle 'godlygeek/tabular'

"マルチバイト対応の整形
Bundle 'h1mesuke/vim-alignta'

"for Ruby
Bundle 'ruby.vim'

"自動閉じタグ
Bundle 'yuroyoro/vim-autoclose'

"smartchr.vim : ==などの前後を整形
Bundle 'smartchr'

"補完 neocomplcache.vim
Bundle 'Shougo/neocomplcache'

"smooth_scroll.vim : スクロールを賢く
Bundle 'Smooth-Scroll'

"vim-smartword : 単語移動がスマートな感じで
Bundle 'smartword'

"matchit.vim : 「%」による対応括弧へのカーソル移動機能を拡張
Bundle 'matchit.zip'

"ruby用のmatchit拡張
Bundle 'ruby-matchit'

"SQLUtilities : SQL整形、生成ユーティリティ
Bundle 'SQLUtilities'

"ソースコード上のメソッド宣言、変数宣言の一覧を表示
Bundle 'taglist.vim'

"tagsを利用したソースコード閲覧・移動補助機能 tagsファイルの自動生成
Bundle 'Source-Explorer-srcexpl.vim'

Bundle 'thinca/vim-quickrun'

Bundle 'haml.zip'

Bundle 'JavaScript-syntax'

Bundle 'pangloss/vim-javascript'

Bundle 'jQuery'

Bundle 'nginx.vim'

Bundle 'tpope/vim-markdown'

Bundle 'yuroyoro/vim-python'

Bundle 'kchmck/vim-coffee-script'

Bundle 'othree/html5.vim'

Bundle 'gre/play2vim'

Bundle 'scala.vim'

Bundle 'titanium-vim'

Bundle 'The-NERD-tree'

Bundle 'Lokaltog/vim-powerline'

filetype plugin indent on

"起動時のメッセージを消す
set shortmess=I

"Ctrl+Sでモード切り替え
imap <C-s> <esc>

set notitle

set nobackup

set noswapfile

set autoread

set hidden

syntax on

set t_Co=256

colorscheme Tomorrow-Night-Eighties

set imdisable

"ヤンク/pでクリップボード操作
set clipboard+=unnamed

":browse の初期ディレクトリ(vimエディタで開いているファイルと同じディレクトリ) 
set browsedir=buffer

"自動的にインデントする (noautoindent:インデントしない)
set autoindent

"Vi互換モードをoff
set nocompatible

"コマンドライン補完を便利に
set wildmenu

"タイプ途中のコマンドを画面最下行
set showcmd

set hlsearch

set ruler

"ビープの代わりにビジュアルベルを使う
set visualbell

set mouse=a

"タブの代わりに空白文字を挿入する
set expandtab

"インクリメンタルサーチを行う
set incsearch

"listで表示される文字のフォーマットを指定する
set listchars=eol:$,tab:>\ ,extends:<

"行番号を表示する
set number

"タブを挿入するときの幅
set shiftwidth=2

"閉じ括弧が入力されたとき、対応する括弧を表示する
set showmatch

"検索時に大文字を含んでいたら大/小を区別
set smartcase

"行頭の余白内で Tab を打ち込むと、'shiftwidth' の数だけインデントする。
set smarttab

"ファイル内の <Tab> が対応する空白の数
set tabstop=2

"カーソルを行頭、行末で止まらないようにする
set whichwrap=b,s,h,l,<,>,[,]

"検索をファイルの先頭へループしない
set nowrapscan

"日本語入力をリセット
au BufNewFile,BufRead * set iminsert=0

"neocomplcache
let g:neocomplcache_enable_at_startup = 1 " 起動時に有効化
let g:NeoComplCache_EnableAtStartup = 1

" 大文字小文字を区別する
let g:NeoComplCache_SmartCase = 1

" キャメルケース補完を有効にする
let g:NeoComplCache_EnableCamelCaseCompletion = 1

" アンダーバー補完を有効にする
let g:NeoComplCache_EnableUnderbarCompletion = 1

" シンタックスファイルの補完対象キーワードとする最小の長さ
let g:NeoComplCache_MinSyntaxLength = 2

" プラグイン毎の補完関数を呼び出す文字数
let g:NeoComplCache_PluginCompletionLength = {
  \ 'keyword_complete'  : 2,
  \ 'syntax_complete'   : 2
  \ }

"下に移動
inoremap <C-j> <Down>
"上に移動
inoremap <C-k> <Up>
"左に移動
inoremap <C-h> <Left>
"右に移動
inoremap <C-l> <Right>

"esc押下時のIME OFF設定
inoremap <ESC> <ESC>:set iminsert=0<CR>

"for quickrun
silent! nmap <unique> q <Plug>(quickrun)

"for NerdTree
nnoremap ,nt :<C-u>:NERDTreeToggle<CR>