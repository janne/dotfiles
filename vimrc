" Basic setup
set nocompatible
set ignorecase
set smartcase
filetype plugin indent on

" Don't break words in middle
set linebreak
set showbreak=>\ 

" Show ruler
set ruler

" Search
set incsearch

" Syntax highlight
syntax on

" Fix tabs
set tabstop=2
set shiftwidth=2
set expandtab

" Maps
imap <M-Space> <space>
map ,n :NERDTreeToggle<CR>
map ,f :Rfind<space>
map ,c :Rscript console<CR>
map ,d :Rscript dbconsole<CR>
