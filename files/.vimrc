syntax on
colorscheme darkblue

set fileformats=unix

set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set backspace=indent,eol,start

set hlsearch

"statusline
set laststatus=2
set statusline=%F%r%=%l,%c
highlight StatusLine term=NONE cterm=NONE ctermfg=black ctermbg=white

autocmd BufRead,BufNewFile *.tsv setfiletype tsv
