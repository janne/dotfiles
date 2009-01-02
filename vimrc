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

" Fix key mappings in command mode
cnoremap <C-A> <Home>
cnoremap <C-E> <End>
cnoremap <C-F> <Right>
cnoremap <C-B> <Left>
cnoremap <C-D> <Del>
cnoremap <C-K> <C-E><C-U>

" Ease of use keyboard mappings
nmap H ^
nmap L $
nmap <Space> <C-f>
nmap <S-Space> <C-b>

" Bind control-l to hashrocket
imap <C-l> <Space>=><Space>

" Buffer switching/management, might as well use those keys for something useful
map <Right> :bnext<CR>
imap <Right> <ESC>:bnext<CR>
map <Left> :bprev<CR>
imap <Left> <ESC>:bprev<CR>
map <Del> :bd<CR>

" Catch trailing whitespace
set listchars=tab:>-,trail:·
set list
nmap <leader>s :set nolist!<cr>
nmap <leader>d :retab<cr>:%s/\s\+$//e<cr>:%s/\sand\s/ \&\& /e<cr>:%s/\sor\s/ \|\| /e<cr>:%s/\snot\s/ !/e<cr>gg

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

map <silent> <C-p> :tabprevious<CR>
map <silent> <C-n> :tabnext<CR>
map <silent> g0 1gt
map <silent> g1 2gt
map <silent> g2 3gt
map <silent> g3 4gt
map <silent> g4 5gt

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

" NERDTree plugin
nmap <leader>n :NERDTreeToggle<CR>

" Ack plugin
nmap <leader>a :Ack<space>

