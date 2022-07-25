" 外部設定ファイルの読み込み
runtime! options.vim
runtime! keymap.vim

" インサートモード開始時と終了時にカーソル行番号をハイライト
autocmd InsertEnter,InsertLeave * set cursorline!
" ファイルを閉じたときのカーソル位置を記録
autocmd BufReadPost *
	\ if line("'\"") >= 1 && line("'\"") <= line("$") && &ft !~# 'commit'
	\ |   exe "normal! g`\""
	\ | endif

" Install Plugins
call plug#begin()

Plug 'vim-jp/vimdoc-ja'
Plug 'itchyny/lightline.vim' " ステータスラインを表示
Plug 'cocopon/iceberg.vim' " カラースキーマ
Plug 'junegunn/fzf', {'dir': '~/.fzf_bin', 'do': './install --all'}
Plug 'lambdalisue/gina.vim'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'lambdalisue/fern.vim' " ファイラー
Plug 'lambdalisue/fern-git-status.vim' " ファイルツリーにgitのステータスを表示
Plug 'lambdalisue/nerdfont.vim' " VimでNerd Fontを処理するため
Plug 'lambdalisue/fern-renderer-nerdfont.vim' " ファイルツリーにアイコンを表示
Plug 'lambdalisue/glyph-palette.vim' " Nerd Fontに色を付ける

Plug 'mattn/vim-goimports' " ファイル保存時にgoimports

call plug#end()

colorscheme iceberg

"" coc.nvim
" coc起動時にインストール
let g:coc_global_extensions = [
    \'coc-fzf-preview',
    \'coc-git',
    \'coc-go',
    \'coc-json',
    \'coc-lists',
    \'coc-pyright',
    \'coc-snippets',
    \'coc-yaml'
    \]

nmap m [dev]
xmap m [dev]

inoremap <silent> <expr> <C-Space> coc#refresh()
nmap <silent> [dev]d  <Plug>(coc-definition)
" nmap <silent> [dev]y  <Plug>(coc-type-definition)
" nmap <silent> [dev]i  <Plug>(coc-implementation)
" nmap <silent> [dev]r  <Plug>(coc-references)
nmap <silent> [dev]rn <Plug>(coc-rename)
nmap <silent> [dev]a  <Plug>(coc-codeaction-selected)iw

nnoremap <silent> K       :<C-u>call <SID>show_documentation()<CR>

function! s:show_documentation() abort
  if index(['vim','help'], &filetype) >= 0
    execute 'h ' . expand('<cword>')
  elseif coc#rpc#ready()
    call CocActionAsync('doHover')
  endif
endfunction

" ステータスラインにcocの状態を表示
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

"" fzf-preview
nmap z [fzf-p]
xmap z [fzf-p]

let $BAT_THEME                     = 'base16'
let $FZF_PREVIEW_PREVIEW_BAT_THEME = 'base16'

" プロジェクト内のファイル検索
nnoremap <silent> <C-p>  :<C-u>CocCommand fzf-preview.FromResources buffer project_mru project<CR>

" git statusを表示して、差分を確認しつつAdd, Reset, Commitなどを実行
nnoremap <silent> [fzf-p]s  :<C-u>CocCommand fzf-preview.GitStatus<CR>
nnoremap <silent> [fzf-p]gg :<C-u>CocCommand fzf-preview.GitActions<CR>
nnoremap <silent> [fzf-p]b  :<C-u>CocCommand fzf-preview.Buffers<CR>

" 文字列を入力して確定することで、grep結果を一覧表示してからその中で更に絞り込んでファイルの該当行を開く
nnoremap          [fzf-p]f  :<C-u>CocCommand fzf-preview.ProjectGrep --add-fzf-arg=--exact --add-fzf-arg=--no-sort<Space>
xnoremap          [fzf-p]f  "sy:CocCommand fzf-preview.ProjectGrep --add-fzf-arg=--exact --add-fzf-arg=--no-sort<Space>-F<Space>"<C-r>=substitute(substitute(@s, '\n', '', 'g'), '/', '\\/', 'g')<CR>"

nnoremap <silent> [fzf-p]q  :<C-u>CocCommand fzf-preview.CocCurrentDiagnostics<CR>
nnoremap <silent> [fzf-p]rf :<C-u>CocCommand fzf-preview.CocReferences<CR>
nnoremap <silent> [fzf-p]d  :<C-u>CocCommand fzf-preview.CocDefinition<CR>
nnoremap <silent> [fzf-p]t  :<C-u>CocCommand fzf-preview.CocTypeDefinition<CR>
nnoremap <silent> [fzf-p]i  :<C-u>CocCommand fzf-preview.CocImplementations<CR>
nnoremap <silent> [fzf-p]o  :<C-u>CocCommand fzf-preview.CocOutline --add-fzf-arg=--exact --add-fzf-arg=--no-sort<CR>

"" fern
" Space + eでファイラを開く
nnoremap <silent> <Leader>e :<C-u>Fern . -drawer<CR>
" Space + Eで開いているファイルのディレクトリを展開してファイルを開く
nnoremap <silent> <Leader>E :<C-u>Fern . -drawer -reveal=%<CR>

"" fern-renderer-nerdfont.vim
" ファイルのアイコンを表示
let g:fern#renderer = 'nerdfont'

"" glyph-palette.vim
" アイコンに色をつける
augroup my-glyph-palette
  autocmd! *
  autocmd FileType fern call glyph_palette#apply()
  autocmd FileType nerdtree,startify call glyph_palette#apply()
augroup END

"" vim-goimports
let g:goimports = 1
