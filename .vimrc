""" VIM BEHAVIOR

" Use Vim settings rather than Vi settings
set nocompatible

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

" automaticaly wrap at 79 characters
set textwidth=79
set formatoptions=cto "auto wrap comments and lines using textwidth

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

" show matching braces when selected (nice for php)
set showmatch

" show the line and cursor position in the bottom right
set ruler 

" set background to light
set background=light

" Switch syntax highlighting on, when the terminal has colors
if &t_Co > 2 || has("gui_running")
    syntax on
endif

" detect filetype
filetype plugin on

" maintain more lines around cursor when scrolling
set scrolloff=3

""" SEARCHES

" make searches case-insensitive, unless they contain upper-case letters:
set ignorecase
set smartcase

" show the `best match so far' as search strings are typed:
set incsearch

""" KEYBOARD MAPPINGS

" map F1 to open previous buffer
map <F1> :bp<CR>
" map F2 to open next buffer
map <F2> :bn<CR>
" map F3 to list buffers
map <F3> :ls
" map F12 to load project in NERDTree
map <F12> :NERDTree ~/projects/unicorn/<CR>

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
