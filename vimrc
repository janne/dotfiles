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

" Automatically remove all trailing whitespace
" autocmd BufWritePre * :%s/\s\+$//e

" Fix tabs
filetype plugin indent on
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set autoindent

" Fix no break space
imap <M-Space> <space>

" Fix cmd+1, cmd+2 etc
map <D-1> :tabfirst<CR>
map <D-2> :tabfirst<CR>:tabnext<CR>
map <D-3> :tabfirst<CR>:tabnext<CR>:tabnext<CR>
map <D-4> :tabfirst<CR>:tabnext<CR>:tabnext<CR>:tabnext<CR>
map <D-5> :tabfirst<CR>:tabnext<CR>:tabnext<CR>:tabnext<CR>:tabnext<CR>

" Change leader
let mapleader = ","

" Window mappings
map <C-J> <C-W>j
map <C-K> <C-W>k
map <C-H> <C-W>h
map <C-L> <C-W>l

" FuzzyFinder plugin
let g:fuzzy_matching_limit=30
if has("ruby")
  map <leader>t :FuzzyFinderTextMate<CR>
else
  map <leader>t :FuzzyFinderFile<CR>
end

" Rails plugin
map <leader>f :Rfind<space>
map <leader>c :Rscript console<CR>
map <leader>d :Rscript dbconsole<CR>

" NERDTree plugin
map <leader>n :NERDTreeToggle<CR>

" Ack plugin
map <leader>a :call Ack()<cr>
map <leader>w :call Ack(expand("<cword>"))<cr>
