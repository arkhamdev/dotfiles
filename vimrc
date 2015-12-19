set nocompatible
set encoding=utf8

"start vundle
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'chriskempson/base16-vim'
Plugin 'kien/ctrlp.vim'
Plugin 'bling/vim-airline'
Plugin 'edkolev/tmuxline.vim'
"Plugin 'Raimondi/delimitMate'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
call vundle#end()

filetype indent on "load filetype-specific indenting
filetype plugin on "load filetype-specific plugins
set backspace=2 "make backspace work normally
set number "show line numbers
set cursorline "highlight current line
set wildmenu "visual autocomplete for command menu
syntax enable "enable syntax processing
set showmatch "highlight matching [{()}]
"set foldenable "enable folding
"set foldmethod=indent

"colors
if $COLORTERM == 'gnome-terminal'
  set t_Co=256
endif
set background=dark
let base16colorspace=256
colorscheme base16-tomorrow

"vim-airline config
set laststatus=2
let g:airline_powerline_fonts=1
"let g:airline_theme='powerlineish'
"let g:airline_enable_syntastic=1
"let g:airline#extensions#branch#enabled=1

"indenting
set tabstop=2 "number of visual spaces per tab
set softtabstop=2 "number of spaces in tab when editing
set shiftwidth=2 "numbers of spaces indented with the reindent operations
set expandtab "turn tabs to spaces
set smarttab "smart handling of the <Tab> key
set autoindent
set copyindent
"-- php rules
autocmd Filetype php setlocal tabstop=4 softtabstop=4 shiftwidth=4

"search
set incsearch "search as characters are entered
set hlsearch "highlight matches
"map turn off search highlight to ,<space>
nnoremap <leader><space> :nohlsearch<CR>

"move vertically by visual line, no skipping of wrapped lines
nnoremap j gj
nnoremap k gk
" jk is escape
inoremap jk <esc>

"leader Shortcuts
let mapleader="," "change <leader> to ,

"highlight last inserted text
nnoremap gV `[v`]

"open ag.vim
"nnoremap <leader>a :Ag
"TODO: CtrlP settings
let g:ctrlp_custom_ignore='node_modules\|git'

"Nerdtree
map <C-n> :NERDTreeToggle<CR>

"allow JSX in normal JS files
let g:jsx_ext_required = 0

"syntastic
"let g:syntastic_check_on_open=1
let g:syntastic_javascript_checkers = ['eslint']

"UltiSnipsEdit
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
