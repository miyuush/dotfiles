let mapleader = "\<Space>"

" Normal mode
" 表示行で上下にカーソル移動
noremap j gj
noremap k gk
noremap <Down> gj
noremap <Up> gk

noremap <S-h>   ^
noremap <S-l>   $

" 日本語モードでも操作
nnoremap あ a
nnoremap い i
nnoremap う u
nnoremap お o
nnoremap っｄ dd
nnoremap っｙ yy

" Insert mode
" インサートモードで素早くjjと入力した場合はESCとみなす
inoremap <silent> jj <Esc>
" 日本語モード
inoremap <silent> っｊ <Esc>

inoremap <C-j>  <down>
inoremap <C-k>  <up>
inoremap <C-h>  <left>
inoremap <C-l>  <right>

inoremap { {}<LEFT>
inoremap [ []<LEFT>
inoremap ( ()<LEFT>
inoremap ' ''<LEFT>
inoremap " ""<LEFT>
