syntax on

"about encode
set fileencodings=utf-8,euc-jp,sjis,iso-2022-jp,latin1
set fileformats=unix

"about tab
set expandtab
set shiftwidth=4
set tabstop=4
autocmd FileType make setlocal noexpandtab

set hlsearch

"about status line
set laststatus=2
set statusline+=%f
set statusline+=%=
set statusline+=[L%l,c%c]

au BufNewFile,BufRead *.ts set filetype=text
au BufNewFile,BufRead *.tsx set filetype=text
