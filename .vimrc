"general

set nocompatible
filetype plugin indent on 
set encoding=utf-8

"set nowrap
"set tabstop=4
"set backspace=indent,eol,start
"set autoindent
"set copyindent
"set number
"set shiftwidth=4
"set shiftround
"set showmatch
"set ignorecase
"set smartcase
"set smarttab
"set hlsearch
"set incsearch

"set history=1000
"set undolevels=1000
"set wildignore=*.swp,*.bak
"set visualbell
"set noerrorbells

"set nobackup
"set noswapfile

"set mouse=a
"set pastetoggle=<F2>

" indentation settings
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

 " line numers
 set number relativenumber
 
 " netrw
 let g:netrw_banner = 0

" mappings
let mapleader = "\<Space>"
inoremap jk <ESC>
"map <up> <nop>
"map <down> <nop>
"map <left> <nop>
"map <right> <nop>
"map jk <ESC>
"let mapleader = "\<Space>"
nmap ; :Buffers<CR>
nmap <Leader>t :Files<CR>
nmap <Leader>r :Tags<CR>

" vundle

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
"Plugin 'kien/ctrlp.vim'
"Plugin 'scrooloose/syntastic'
"Plugin 'scrooloose/nerdTree'
"Plugin 'jelera/vim-javascript-syntax'
"Plugin 'pangloss/vim-javascript'
"Plugin 'tpope/vim-surround'
"Plugin 'ervandew/supertab'
"Plugin 'nathanaelkane/vim-indent-guides'
"Plugin 'Raimondi/delimitMate'
"Plugin 'marijnh/tern_for_vim'
"Plugin 'altercation/vim-colors-solarized'
"Plugin 'wombat256.vim'
Plugin 'bling/vim-airline'
Plugin 'dracula/vim'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'

call vundle#end()
filetype plugin indent on

" interface
set t_Co=256
color dracula
syntax on

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" eslint with syntastic
let g:syntastic_javascript_checkers = ['eslint']

" airline
set laststatus=2
let g:airline#extensions#tabline#enabled = 1
