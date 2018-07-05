set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

syntax on
colorscheme darkblue

"tab setting 
set expandtab
set shiftwidth=2
set softtabstop=2

"search

set hlsearch
"color of vimdiff
highlight DiffAdd    cterm=bold ctermfg=10 ctermbg=22
highlight DiffDelete cterm=bold ctermfg=10 ctermbg=52
highlight DiffChange cterm=bold ctermfg=10 ctermbg=17
highlight DiffText   cterm=bold ctermfg=10 ctermbg=21


"yank
"nnoremap <silent>yy :.w !win32yank.exe -i<CR><CR>
"vnoremap <silent>y :w !win32yank.exe -i<CR><CR>
"nnoremap <silent>dd :.w !win32yank.exe -i<CR>dd
"vnoremap <silent>d x:let pos = getpos(".")<CR>GpVG:w !win32yank.exe -i<CR>VGx:call setpos(".", pos)<CR>
"nnoremap <silent>p :r !win32yank.exe -o<CR>
"vnoremap <silent>p :r !win32yank.exe -o<CR>
