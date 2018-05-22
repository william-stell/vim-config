" Vim defaults
set nocompatible

set exrc
set secure

filetype off
filetype indent plugin on
syntax on

" Set spacing to 4 spaces instead of 8
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

" Auto indent the code
set autoindent
set smartindent

" Remove auto newline commenting
autocmd BufNewFile,BufRead * setlocal formatoptions-=cro

" Display line numbers
set number
highlight LineNr ctermfg=grey

" highlight Normal ctermbg=black

set colorcolumn=80

set bg=dark

" Fix backspace
set backspace=2

" Jump to the last position when reopening a file
if has("autocmd")
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

if &t_Co > 2 || has("gui_running")
    syntax on
    set hlsearch
endif


" Add syntax files
source ~/vimconfig/syntax/*.vim


" /** 
"iab <buffer> /** /**^M *^M*/^[0A

autocmd BufNewFile,BufRead * setlocal formatoptions+=r
