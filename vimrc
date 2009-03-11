" No compatible mode
set nocompatible

" Don't break words in middle
set linebreak
set number

" Show ruler
set ruler

" Read file when changed outside of Vim
set autoread

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

" Folding
set foldmethod=syntax
set foldnestmax=2
set nofoldenable

" Switch off hlsearch temporarily
nmap <silent> <leader>h :silent :nohlsearch<CR>

" Syntax highlight
syntax on

" Fix tabs
filetype plugin indent on
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set autoindent

" GUI settings
if has("gui_macvim")
  set columns=140
  set lines=40
  " http://www.ms-studio.com/FontSales/anonymous.html
  set guifont=Anonymous:h11
  set guioptions-=T
  set fuoptions=maxvert,maxhorz
  colorscheme molokai
endif

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

" Fix no break space
imap <M-Space> <space>

" Remap jump to tag
map <silent> <C-p> <C-]>

" Tab switching
map <D-1> :tabnext 1<CR>
map <D-2> :tabnext 2<CR>
map <D-3> :tabnext 3<CR>
map <D-4> :tabnext 4<CR>
map <D-5> :tabnext 5<CR>
map <D-6> :tabnext 6<CR>
map <D-7> :tabnext 7<CR>
map <D-8> :tabnext 8<CR>
map <D-9> :tabnext 9<CR>
imap <D-1> <ESC>:tabnext 1<CR>
imap <D-2> <ESC>:tabnext 2<CR>
imap <D-3> <ESC>:tabnext 3<CR>
imap <D-4> <ESC>:tabnext 4<CR>
imap <D-5> <ESC>:tabnext 5<CR>
imap <D-6> <ESC>:tabnext 6<CR>
imap <D-7> <ESC>:tabnext 7<CR>
imap <D-8> <ESC>:tabnext 8<CR>
imap <D-9> <ESC>:tabnext 9<CR>

" Window mappings
map <C-J> <C-W>j
map <C-K> <C-W>k
map <C-H> <C-W>h
map <C-L> <C-W>l

" FuzzyFinder plugin
let g:fuzzy_ignore = "*.log"
map <leader>t :FuzzyFinderFile<CR>
map <leader>d :FuzzyFinderDir<CR>

" Rails plugin
nmap <leader>f :Rfind<space>

" NERDTree plugin
nmap <leader>n :NERDTreeToggle<CR>

" Ack plugin
nmap <leader>a :Ack<space>

" Open the Ruby ApiDock page for the word under cursor, in a new Firefox tab
function! OpenRubyDoc(keyword)
  let url = 'http://apidock.com/ruby/'.a:keyword
  exec '!open '.url
endfunction
noremap RB :call OpenRubyDoc(expand('<cword>'))<CR>

" Open the Rails ApiDock page for the word under cursos, in a new Firefox tab
function! OpenRailsDoc(keyword)
  let url = 'http://apidock.com/rails/'.a:keyword
  exec '!open '.url
endfunction
noremap RR :call OpenRailsDoc(expand('<cword>'))<CR>

" Txt filetype
au BufRead,BufNewFile *  setfiletype txt 
