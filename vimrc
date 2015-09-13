set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()

Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Bundle 'scrooloose/syntastic'
Bundle 'powerline/powerline', {'rtp': 'powerline/bindings/vim/'}
Bundle 'scrooloose/nerdtree'
Bundle 'kien/ctrlp.vim'
Bundle 'mattn/emmet-vim'
Bundle 'wavded/vim-stylus'
Bundle 'flazz/vim-colorschemes'

let g:Powerline_symbols = 'fancy'

filetype off
filetype plugin indent on
syntax on

set autoindent
set smartindent
set autoread
set background=dark
set backspace=indent,eol,start
set cmdheight=1
set lazyredraw	
set linebreak
set more	
set noautowrite	
set noerrorbells	
set noexpandtab
set nowrap
set number	
set showcmd	
set nocompatible	
set smarttab	
set shiftwidth=4
set shell=bash
set splitright	
set splitbelow	
set tabstop=4
set visualbell
set wildmenu	
set encoding=utf-8
set termencoding=utf-8
set laststatus=2
set t_Co=256
set mouse=a

colorscheme gruvbox

" powerline settings
let g:Powerline_symbols = 'fancy'
set guifont=Inconsolata\ for\ Powerline:h15

" ignore some directorires in ctrlp
let g:ctrlp_custom_ignore = '(node_modules|bower_components|.sass-cache)'

" map <Leader> to ,
let mapleader = ","

" Leader commands
nmap <Leader>r :e app/Http/routes.php<cr>

" NERDTree
silent! nmap <F2> :NERDTreeToggle<cr>
let NERDTreeShowHidden=1

" switch buffers with Ctrl+{h,j,k,l}
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

" quicker splits
nmap vs :vsplit<cr>
nmap sp :split<cr>

" highlight the search term
highlight Search cterm=underline

