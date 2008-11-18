" No compatible mode
set nocompatible

" Don't break words in middle
set linebreak
set number

" Show ruler
set ruler

" Swap ` and '
nnoremap ' `
nnoremap ` '

" Change leader
let mapleader = ","

" Search
set incsearch
set ignorecase
set smartcase
set gdefault
set hlsearch

" Switch off hlsearch temporarily
nmap <silent> <leader>h :silent :nohlsearch<CR>

" Syntax highlight
syntax on

" Catch trailing whitespace
set listchars=tab:>-,trail:·
set list
nmap <silent> <leader>s :set nolist!<CR>

" Load matchit (% to bounce from do to end, etc.)
runtime! macros/matchit.vim

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
nmap <D-1> 1gt
imap <D-1> <esc>1gt
nmap <D-2> 2gt
imap <D-2> <esc>2gt
nmap <D-3> 3gt
imap <D-3> <esc>3gt
nmap <D-4> 4gt
imap <D-4> <esc>4gt
nmap <D-5> 5gt
imap <D-5> <esc>5gt

" Window mappings
map <C-J> <C-W>j
map <C-K> <C-W>k
map <C-H> <C-W>h
map <C-L> <C-W>l

" FuzzyFinder plugin
let g:fuzzy_ignore = "*.log"
let g:fuzzy_matching_limit = 70
if has("ruby")
  map <leader>t :FuzzyFinderTextMate<CR>
else
  map <leader>t :FuzzyFinderFile<CR>
end

" Rails plugin
nmap <leader>f :Rfind<space>
nmap <leader>c :Rscript console<CR>
nmap <leader>d :Rscript dbconsole<CR>

" NERDTree plugin
nmap <leader>n :NERDTreeToggle<CR>

" Ack plugin
nmap <leader>a :call Ack()<cr>
nmap <leader>w :call Ack(expand("<cword>"))<cr>

