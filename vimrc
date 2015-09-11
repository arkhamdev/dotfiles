set nocompatible

filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'chriskempson/base16-vim'
Plugin 'bling/vim-airline'
Plugin 'Raimondi/delimitMate'
Plugin 'airblade/vim-gitgutter'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'scrooloose/nerdtree'

call vundle#end()
filetype plugin indent on

set number
set cursorline
syntax enable
set encoding=utf8

"colors
set background=dark
let base16colorspace=256
colorscheme base16-tomorrow

"vim-airline config
set laststatus=2
let g:airline_powerline_fonts=1

"disable autofolding of markdown
let g:vim_markdown_folding_disabled=1

"indenting
set tabstop=2
set smarttab
set softtabstop=2
set expandtab
set shiftwidth=2
set autoindent
set copyindent

"Nerdtree
nmap <silent> <C-T> :NERDTreeToggle<CR>
