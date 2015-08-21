""" VIM BEHAVIOR

" Use Vim settings rather than Vi settings
set nocompatible

" This shows what you are typing as a command.  I love this!
set showcmd

" Folding Stuffs
set foldmethod=marker

" default unix utf-8
set fileformat="unix"
set fileencoding="utf-8"

""" EDITING

" allow buffers to be put to background
" without writing to disk
set hidden

" autoindent rulez
set autoindent

" indents when it recognizes code blocks
set smartindent

" soft tab default is 2 spaces
set tabstop=2
set shiftwidth=2

" detect set python and c files and set tabs to 4 spaces as per spec
au BufRead,BufNewFile *.py,*pyw set shiftwidth=4
au BufRead,BufNewFile *.py,*pyw set tabstop=4

" smarter backsapce behavior
set backspace=indent,eol,start

" use the appropriate number of spaces to insert a tab
set expandtab
set smarttab

" show line numbers
set number

" show matching braces when selected (nice for php)
set showmatch

" show the line and cursor position in the bottom right
set ruler

" syntax highlighting
filetype on
filetype plugin indent on
syntax enable

" maintain more lines around cursor when scrolling
set scrolloff=3

""" SEARCHES

" make searches case-insensitive, unless they contain upper-case letters:
set ignorecase
set smartcase

" show the `best match so far' as search strings are typed:
set incsearch

""" OTHER

" let mouse clicks move the cursor anywhere (gvim)
set virtualedit=all

" no backup files. I hate those.
set nobackup

" long history
set history=1000

" imporoves file and command completion when
" tab is pressed
set wildmode=list:longest

" automagically remove trailing whitespace
autocmd BufWritePre * :%s/\s\+$//e

" enable pathogen
execute pathogen#infect()

" map NERDTree to Ctrl+n
map <C-n> :NERDTreeToggle<CR>

" close vim if only open buffer is nerdtree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
