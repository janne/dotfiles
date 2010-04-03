call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

filetype plugin on
syntax on

runtime! macros/matchit.vim

set tabstop=2
set smarttab
set shiftwidth=2
set autoindent
set number
set expandtab
set autoread
set incsearch
set ignorecase
set linebreak
set listchars=tab:▸\ ,eol:¬ " Use the same symbols as TextMate for tabstops and EOLs

" ZenCoding
let g:user_zen_expandabbr_key = '<c-e>'

" REST OF FILE CONTAINS MAPPINGS
let mapleader = ","

let g:sparkupNextMapping = "c-x c-e"

" Load todo.txt and done.txt
nmap gt :e ~/Dropbox/Documents/todo.txt<CR>vl:e ~/Dropbox/Documents/done.txt<CR>h

" Switch j/k/0/$/^ to g-alternative
noremap j gj
noremap gj j
noremap k gk
noremap gk k
noremap 0 g0
noremap g0 0
noremap $ g$
noremap g$ $
noremap ^ g^
noremap g^ ^

" Remap jump to tag
map <silent> <C-p> <C-]>

" Edit previously edited file
map <silent> <C-t> <C-^>

" NERDTree plugin
nmap <leader>n :NERDTreeToggle<CR>

" Rails plugin
autocmd User Rails silent! Rlcd

" Command mode
cnoremap <C-A> <Home>
cnoremap <C-E> <End>
cnoremap <C-F> <Right>
cnoremap <C-B> <Left>
cnoremap <C-D> <Del>
cnoremap <C-K> <C-E><C-U>

" Underline with = / - with F5 / F6
nnoremap gmu yyp<c-v>$r-
nnoremap gmU yyp<c-v>$r=

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

