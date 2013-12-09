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

set smartindent

set sm
set wildignore=*.o,*.obj,*.bak,*.exe,*.pyc,*.png,*.jpg,*.gif,*.DS_Store,*.egg-info/**,*.db,**/_build/**,**/external/**,**/CACHE/**,**/node_modules/**,**/bower_components/**,**/build/**,*.tar.gz,*.tar.bz2


let g:syntastic_python_flake8_args="--ignore=E501"

" make it possible to easily create new files in the same directories as
" " existing files
cabbr <expr> %% expand('%:p:h')

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

" Commands
let mapleader = ","
nmap <silent> <leader>* :nohlsearch<cr>
nnoremap <leader>s :%s/\<<C-r><C-w>\>//g<Left><Left>
nmap <leader>p :CtrlP<cr>
nmap <leader>b :CtrlPBuffer<cr>
nmap <leader>w :w<cr>
nnoremap <leader><leader> <c-^>


" Splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

set splitbelow
set splitright

" highlight trailing whitespace
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()
