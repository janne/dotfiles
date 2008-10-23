" No compatible mode
set nocompatible

" Don't break words in middle
set linebreak
set number

" Show ruler
set ruler

" Search
set incsearch
set ignorecase
set smartcase
set gdefault

" Syntax highlight
syntax on

" Fix tabs
filetype plugin indent on
set tabstop=2
set shiftwidth=2
set expandtab

" Fix no break space
imap <M-Space> <space>

" Fix cmd+1, cmd+2 etc
map <D-1> :tabfirst<CR>
map <D-2> :tabfirst<CR>:tabnext<CR>
map <D-3> :tabfirst<CR>:tabnext<CR>:tabnext<CR>
map <D-4> :tabfirst<CR>:tabnext<CR>:tabnext<CR>:tabnext<CR>
map <D-5> :tabfirst<CR>:tabnext<CR>:tabnext<CR>:tabnext<CR>:tabnext<CR>

" FuzzyFinder plugin
let g:fuzzy_matching_limit=30
if has("ruby")
  map ,t :FuzzyFinderTextMate<CR>
else
  map ,t :FuzzyFinderFile<CR>
end

" Rails plugin
map ,f :Rfind<space>
map ,c :Rscript console<CR>
map ,d :Rscript dbconsole<CR>

" NERDTree plugin
map ,n :NERDTreeToggle<CR>
map <C-J> <C-W>j
map <C-K> <C-W>k
map <C-H> <C-W>h
map <C-L> <C-W>l
