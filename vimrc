filetype plugin indent on " filetype specific indentation
syntax on " syntax highlighting, omni-completion, +more

" cycle through matching statements such as if to else
runtime macros/matchit.vim

set autoindent
set smartindent
set smarttab
set softtabstop=4
set shiftwidth=4
set expandtab

set listchars=tab:>-,trail:-,nbsp:_
set list

set backspace=indent,eol,start " makes backspace nice
set hidden " allows for multiple unsaved buffers
set incsearch " Shows results while typing pattern to search
set ruler " shows current line
set wildmenu " auto complete
set autoread

" set number
set relativenumber

set display+=lastline " start on last line
set cc=80

set formatoptions+=r " auto comment
set formatoptions+=o " auto comment
set formatoptions+=j " auto comment

set undofile                " Save undos after file closes
set undodir=$HOME/.vim/undo " where to save undo histories
set undolevels=1000         " How many undos
set undoreload=10000        " number of lines to save for undo

" Put plugins and dictionaries in this dir (also on Windows)
let vimDir = '$HOME/.vim'

if stridx(&runtimepath, expand(vimDir)) == -1
  " vimDir is not on runtimepath, add it
  let &runtimepath.=','.vimDir
endif

" Keep undo history across sessions by storing it in a file
if has('persistent_undo')
    let myUndoDir = expand(vimDir . '/undodir')
    " Create dirs
    call system('mkdir ' . vimDir)
    call system('mkdir ' . myUndoDir)
    let &undodir = myUndoDir
    set undofile
endif


