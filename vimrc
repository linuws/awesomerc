call pathogen#infect()

syntax on                 " syntax highlighing
set background=dark   " adapt colors for background
colorscheme molokai

set nocompatible    " use vim defaults

set number
set expandtab
set ts=4
set backspace=indent,eol,start " allow backspacing over everything in insert     mode
set numberwidth=4   " line numbering takes up 5 spaces
set shiftwidth=4    " numbers of spaces to (auto)indent
set title

set hlsearch        " highlight searches
set incsearch       " do incremental searching
set ignorecase

set sm

if &term =~ "xterm"
  "256 color --
  let &t_Co=256
  " restore screen after quitting
 " set t_ti=ESC7ESC[rESC[?47h t_te=ESC[?47lESC8
  if has("terminfo")
    let &t_Sf="\ESC[3%p1%dm"
    let &t_Sb="\ESC[4%p1%dm"
  else
    let &t_Sf="\ESC[3%dm"
    let &t_Sb="\ESC[4%dm"
  endif
endif


