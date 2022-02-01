" Set Option
set shell=/bin/bash " コマンドの際にはbashを使う
set shiftwidth=4 " 自動インデント時の幅
set tabstop=4 " スペース*4でタブに変換
set expandtab " タブの入力の際にはスペースに変換
set textwidth=0 " 自動で行を折り返さない
set autoindent " 自動インデント :set pasteで解除可能
set smartindent " プログラミング言語に合わせて自動インデント
set hlsearch " 検索時にハイライト
set clipboard=unnamed " コピーでクリップボードへの登録
set number " 行番号の表示
set termguicolors " 24 bit colorで表示
" set cursorline " カーソル行番号のハイライト
set ambiwidth=double " 日本語の記号をきれいに表示
set showmatch " 括弧を閉じるときに、対応する括弧をハイライト
set showmode " 現在のモードを左下に表示
set encoding=utf-8 " vimが内部処理に使う文字コード
set fileencodings=iso-2022-jp,cp932,sjis,euc-jp,utf-8 " ファイルを読み込むときに文字コード推定に使う文字コード
set fileformats=unix,dos,mac " ファイルを作成、開いたときの改行コード設定
set laststatus=2 " ステータスラインを常に表示
set mouse=a " マウスのホイールを有効化
set backspace=indent,eol,start " バックスペースキーの有効化
set nocursorline " カーソル行番号をハイライトしない
set splitright " 新規ウィンドウを右に開く
set noequalalways " 新規ウィンドウを開いたときに、自動で全ウィンドウのサイズを均等にしない
set spell " スペルチェック
set spelllang=en,cjk " スペルチェックから日本語を除外
set ruler " カーソルの位置表示
syntax on

" インサートモード開始時と終了時にカーソル行番号をハイライト
autocmd InsertEnter,InsertLeave * set cursorline!
" ファイルを閉じたときのカーソル位置を記録
autocmd BufReadPost *
	\ if line("'\"") >= 1 && line("'\"") <= line("$") && &ft !~# 'commit'
	\ |   exe "normal! g`\""
	\ | endif

" Remap key bindings
" Normal mode
" 表示行で上下にカーソル移動
noremap j gj
noremap k gk
noremap <Down> gj
noremap <Up> gk

noremap <S-h>   ^
noremap <S-l>   $

" Insert mode
" インサートモードで素早くjjと入力した場合はESCとみなす
inoremap <silent> jj <Esc>:<C-u>w<CR>

inoremap <C-j>  <down>
inoremap <C-k>  <up>
inoremap <C-h>  <left>
inoremap <C-l>  <right>

inoremap { {}<LEFT>
inoremap [ []<LEFT>
inoremap ( ()<LEFT>
inoremap ' ''<LEFT>
inoremap " ""<LEFT>

" Install Plugins
call plug#begin()

Plug 'vim-jp/vimdoc-ja'
Plug 'junegunn/fzf', {'dir': '~/.fzf_bin', 'do': './install --all'}
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'lambdalisue/fern.vim'
Plug 'lambdalisue/gina.vim'
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'sainnhe/gruvbox-material'
" Plug 'gkeep/iceberg-dark'
Plug 'itchyny/lightline.vim' " ステータスライン

call plug#end()

" let g:lightline = { 'colorscheme': 'icebergDark' }

" map prefix
let mapleader = "\<Space>"
nnoremap <Leader> <Nop>
xnoremap <Leader> <Nop>
nnoremap [dev]    <Nop>
xnoremap [dev]    <Nop>
nmap     m        [dev]
xmap     m        [dev]
nnoremap [ff]     <Nop>
xnoremap [ff]     <Nop>
nmap     z        [ff]
xmap     z        [ff]

"" coc.nvim
let g:coc_global_extensions = ['coc-prettier', 'coc-git', 'coc-fzf-preview', 'coc-lists']

inoremap <silent> <expr> <C-Space> coc#refresh()
nnoremap <silent> K       :<C-u>call <SID>show_documentation()<CR>
nmap     <silent> [dev]rn <Plug>(coc-rename)
nmap     <silent> [dev]a  <Plug>(coc-codeaction-selected)iw

function! s:show_documentation() abort
  if index(['vim','help'], &filetype) >= 0
    execute 'h ' . expand('<cword>')
  elseif coc#rpc#ready()
    call CocActionAsync('doHover')
  endif
endfunction

"" fzf-preview
let $BAT_THEME                     = 'gruvbox-dark'
let $FZF_PREVIEW_PREVIEW_BAT_THEME = 'gruvbox-dark'

" プロジェクト内のファイル検索
nnoremap <silent> <C-p>  :<C-u>CocCommand fzf-preview.FromResources buffer project_mru project<CR>

" git statusを表示して、差分を確認しつつAdd, Reset, Commitなどを実行
nnoremap <silent> [ff]s  :<C-u>CocCommand fzf-preview.GitStatus<CR>
nnoremap <silent> [ff]gg :<C-u>CocCommand fzf-preview.GitActions<CR>
nnoremap <silent> [ff]b  :<C-u>CocCommand fzf-preview.Buffers<CR>
nnoremap          [ff]f  :<C-u>CocCommand fzf-preview.ProjectGrep --add-fzf-arg=--exact --add-fzf-arg=--no-sort<Space>

" 文字列を入力して確定することで、grep結果を一覧表示してからその中で更に絞り込んでファイルの該当行を開く
xnoremap          [ff]f  "sy:CocCommand fzf-preview.ProjectGrep --add-fzf-arg=--exact --add-fzf-arg=--no-sort<Space>-F<Space>"<C-r>=substitute(substitute(@s, '\n', '', 'g'), '/', '\\/', 'g')<CR>"

nnoremap <silent> [ff]q  :<C-u>CocCommand fzf-preview.CocCurrentDiagnostics<CR>
nnoremap <silent> [ff]rf :<C-u>CocCommand fzf-preview.CocReferences<CR>
nnoremap <silent> [ff]d  :<C-u>CocCommand fzf-preview.CocDefinition<CR>
nnoremap <silent> [ff]t  :<C-u>CocCommand fzf-preview.CocTypeDefinition<CR>
nnoremap <silent> [ff]o  :<C-u>CocCommand fzf-preview.CocOutline --add-fzf-arg=--exact --add-fzf-arg=--no-sort<CR>

"" fern
" Space + eでファイラを開く
nnoremap <silent> <Leader>e :<C-u>Fern . -drawer<CR>
" Space + Eで開いているファイルのディレクトリを展開してファイルを開く
nnoremap <silent> <Leader>E :<C-u>Fern . -drawer -reveal=%<CR>

"" treesitter
lua <<EOF
require('nvim-treesitter.configs').setup {
  ensure_installed = {
"    "go",
     "maintained",
  },
  highlight = {
    enable = true,
  },
}
EOF

"" gruvbox
colorscheme gruvbox-material
