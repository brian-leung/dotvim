filetype off
call pathogen#incubate()
call pathogen#helptags()

set vb
set history=256
set nu
set ignorecase smartcase
set expandtab
set smarttab
set autoindent

filetype plugin on
filetype plugin indent on
set softtabstop=2
set shiftwidth=2

syntax on

set backup
set backupdir=~/.vim/backups
set directory=~/.vim/tmp

au BufNewFile,BufRead *.py setlocal softtabstop=4 shiftwidth=4
autocmd BufWritePost *.py call Flake8()

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
