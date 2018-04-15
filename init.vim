set termguicolors
set number
set history=1000
set showcmd
set noshowmode
set gcr=a:linkon0
set visualbell
set autoread

set hidden

" Pathogen

execute pathogen#infect()

syntax on
filetype plugin indent on

" Remove swap files

set noswapfile
set nobackup
set nowb

" Indentation

set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab

" Auto-indent pasted content

nnoremap p p=`]<C-o>
nnoremap P P=`]<C-o>

"""

" Display tabs and trailing spaces

set nowrap
set linebreak

" Folding

set foldmethod=indent
set foldnestmax=3
set nofoldenable

" Scrolling

set scrolloff=8
set sidescrolloff=15
set sidescroll=1

" Theme

set background=dark
colorscheme PaperColor

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Airline

let g:airline#extensions#tabline#enabled = 1

" Support windows copy/paste

:source $VIMRUNTIME/mswin.vim

