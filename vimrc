" Basic setup
set nocompatible
set ignorecase
set smartcase
filetype plugin indent on

" Don't break words in middle
set linebreak
set number

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
map <C-J> <C-W>j
map <C-K> <C-W>k
map <C-H> <C-W>h
map <C-L> <C-W>l
map <D-1> :tabfirst<CR>
map <D-2> :tabfirst<CR>:tabnext<CR>
map <D-3> :tabfirst<CR>:tabnext<CR>:tabnext<CR>
map <D-4> :tabfirst<CR>:tabnext<CR>:tabnext<CR>:tabnext<CR>
map <D-5> :tabfirst<CR>:tabnext<CR>:tabnext<CR>:tabnext<CR>:tabnext<CR>
map <D-6> :tabfirst<CR>:tabnext<CR>:tabnext<CR>:tabnext<CR>:tabnext<CR>:tabnext<CR>
