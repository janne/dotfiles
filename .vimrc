set tabstop=2
set softtabstop=2
set shiftwidth=2
set autoindent
set number
set expandtab
set autoread
set incsearch
set smartcase
set linebreak
set encoding=utf-8
set splitbelow splitright
set t_Co=256

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC | quit
endif

" Plugins
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-surround'
Plug 'jpo/vim-railscasts-theme'
Plug 'ctrlpvim/ctrlp.vim'
call plug#end()

if !empty(glob('~/.vim/autoload/plug.vim'))

  " Colorscheme
  silent! colorscheme railscasts

  " Navigate splits
  map <C-h> <C-w>h
  map <C-l> <C-w>l
  map <C-k> <C-w>k
  map <C-j> <C-w>j

endif
