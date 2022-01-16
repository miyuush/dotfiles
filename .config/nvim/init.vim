set shell=/bin/zsh " コマンドの際にはzshを使う
set shiftwidth=4 " 自動インデント時の幅
set tabstop=4 " スペース*4でタブに変換
set expandtab " タブの入力の際にはスペースに変換
set textwidth=0 " 自動で行を折り返さない
set autoindent " 自動インデント :set pasteで解除可能
set hlsearch " 検索時にハイライト
set clipboard=unnamed " コピーでクリップボードへの登録
syntax on

call plug#begin()
Plug 'gkeep/iceberg-dark'
Plug 'ntk148v/vim-horizon'
Plug 'preservim/nerdtree'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'sheerun/vim-polyglot'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

let g:lightline = { 'colorscheme': 'icebergDark' }

" 変更した行をハイライト
" let g:gitgutter_highlight_lines = 1

" Start NERDTree when Vim is started without file arguments.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif

"nnoremap <C-n> :NERDTree<CR>
" if you don't set this option, this color might not correct
"set termguicolors

"colorscheme horizon

" lightline
"let g:lightline = {}
"let g:lightline.colorscheme = 'horizon'
