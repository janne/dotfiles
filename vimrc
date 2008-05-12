set ruler
set nocompatible
set tabstop=2
set shiftwidth=2
set expandtab
syntax on
filetype plugin indent on
set autoindent

" Line up or down acts as expected
map k gk
map <up> gk
map j gj
map <down> gj

" Don't break words in middle
set linebreak

" Show incomplete paragraphs even when they don'f fit on screen (avoid @'s)
set display+=lastline
