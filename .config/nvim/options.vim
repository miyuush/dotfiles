" 見た目
set number " 行番号の表示
set termguicolors " 24 bit colorで表示
" set cursorline " カーソル行番号のハイライト
set nocursorline " カーソル行番号をハイライトしない
set textwidth=0 " 自動で行を折り返さない
set showmatch " 括弧を閉じるときに、対応する括弧をハイライト
set laststatus=2 " ステータスラインを常に表示
set showmode " 現在のモードを左下に表示
set ruler " カーソルの位置表示
syntax on

" インデント
set shiftwidth=4 " 自動インデント時の幅
set tabstop=4 " スペース*4でタブに変換
set expandtab " タブの入力の際にはスペースに変換
set autoindent " 自動インデント :set pasteで解除可能
set smartindent " プログラミング言語に合わせて自動インデント

" 検索
set hlsearch " 検索時にハイライト

" エンコーディング
set encoding=utf-8 " vimが内部処理に使う文字コード
set fileencodings=iso-2022-jp,cp932,sjis,euc-jp,utf-8 " ファイルを読み込むときに文字コード推定に使う文字コード
set fileformats=unix,dos,mac " ファイルを作成、開いたときの改行コード設定

" 言語
set ambiwidth=double " 日本語の記号をきれいに表示
set spell " スペルチェック
set spelllang=en,cjk " スペルチェックから日本語を除外

" コマンドライン
set shell=/bin/bash " コマンドの際にはbashを使う

" 操作
set clipboard=unnamed " コピーでクリップボードへの登録
set mouse=a " マウスのホイールを有効化
set backspace=indent,eol,start " バックスペースキーの有効化
set splitright " 新規ウィンドウを右に開く
set noequalalways " 新規ウィンドウを開いたときに、自動で全ウィンドウのサイズを均等にしない
