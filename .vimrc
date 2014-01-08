filetype off
call pathogen#incubate()
call pathogen#helptags()

filetype on
filetype plugin on
filetype plugin indent on
syntax on

set t_Co=256
set encoding=utf8
set vb
set nu

set ignorecase smartcase
set expandtab
set smarttab
set autoindent

set softtabstop=2
set shiftwidth=2

set pastetoggle=<F2>

set backup
set backupdir=~/.vim/backups
set directory=~/.vim/tmp

au BufNewFile,BufRead *.py setlocal softtabstop=4 shiftwidth=4

au BufNewFile,BufRead *.html set ft=html

au BufNewFile,BufRead *.rake set ft=ruby

au BufNewFile,BufRead *.module set ft=php
au BufNewFile,BufRead *.install set ft=php
au BufNewFile,BufRead *.inc set ft=php

au BufRead,BufNewFile *.md set filetype=markdown

au BufReadPre * if getfsize(expand("%")) > 1000000 | syntax off | endif

set viminfo=%,'50,\"100,n~/.viminfo
let @d='idefault_array_get(^[/[^Mxi, ^[/]^Mr)?default^M'

" Allow saving of files as sudo when I forgot to start vim using sudo.
cmap w!! w !sudo tee > /dev/null %
