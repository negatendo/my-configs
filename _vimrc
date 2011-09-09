" Brett O'Connor's .vimrc

" Use Vim settings rather than Vi settings
set nocompatible

""" EDITING

" allow buffers to be put to background
" without writing to disk
set hidden

" allow buffers to be put to background
" without writing to disk
set hidden

" autoindent rulez
set autoindent
" indents when it recognizes code blocks
set smartindent

" soft tabs (spaced tabs) at 4 spaces
set expandtab
set tabstop=2
set shiftwidth=2

" show matching braces when selected
set showmatch

" fix backspace behavior
set backspace=2

""" LOOK AND FEEL

" gvim settings
if has("gui_running")
  set guioptions-=T " hide toolbar
endif

" show the cursor position in the bottom right
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

" don't highlight searched on terms (temp re-enable with set hls)
set nohls

" show the `best match so far' as search strings are typed:
set incsearch

""" KEYBOARD MAPPINGS
" map F1 to open previous buffer
map <F1> :bp<CR>
" map F2 to open next buffer
map <F2> :bn<CR>
" map F3 to list buffers
map <F3> :ls
" map F12 to load project
map <F12> :NERDTree ~/Dropbox/Codebase/unicorn/<CR>

""" OTHER

" let mouse clicks move the cursor anywhere
set virtualedit=all

" no backup files. I hate those.
set nobackup

" long history
set history=1000

" imporoves file and command completion when 
" tab is pressed
set wildmode=list:longest

" turn on autocompletion with CTL-X CTL-O in insert mode
set ofu=syntaxcomplete#Complete

