" do not make vim compatible with vi.
set nocompatible
set backspace=eol,start,indent  " backspace in insert mode works like normal editor
filetype indent on      " activates indenting for files
filetype plugin on
set autoindent          " auto indenting
set smartindent
set nobackup            " get rid of anoying ~file
set number                   " number the lines.
set cursorline               " show location of cursor using a horizontal line.
set scrolloff=999            " keep cursor in the middle of the screen while scrolling up and down.
set wildmenu                 " show auto complete menus.
set wildmode=list:longest    " Make wildmenu behave like bash completion. Finding commands are so easy now.
"set wildmode=longest:full,full

set syntax=on                " turn on syntax hightlighting.
set expandtab
set tabstop=4
set shiftwidth=4

set hlsearch
set incsearch
set laststatus=2
autocmd BufEnter * :syntax sync fromstart
"set hidden
set history=1000
set title
set scrolloff=3

set noerrorbells
set novisualbell
set t_vb=
