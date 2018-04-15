set termguicolors
set number
set history=1000
set showcmd
set noshowmode
set gcr=a:linkon0
set visualbell
set autoread
set noshowmode            " lightline.vim takes care of this

set hidden

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

" Pathogen

execute pathogen#infect()

syntax on
filetype plugin indent on

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

" Airline

let g:airline#extensions#tabline#enabled = 1

" Support windows copy/paste

:source $VIMRUNTIME/mswin.vim

" ALE

let g:ale_sign_column_always = 1

:source ~/AppData/Local/nvim/files/keymap.vim

let g:NERDTreeMinimalUI = 1
let g:NERDTreeShowHidden = 1 

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

set fillchars+=vert:┊

