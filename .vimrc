filetype off
let g:pathogen_disabled = ['minibufexpl']
call pathogen#incubate()
call pathogen#helptags()

filetype on
filetype plugin on
filetype plugin indent on
syntax on

set t_Co=256
set encoding=utf8
set history=1024
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

set wildignore+=*.dll,*.o,*.obj,*.bak,*.exe,*.pyc,*.jpg,*.gif,*.png,*.pyc

let g:ctrlp_use_caching = 1
let g:ctrlp_clear_cache_on_exit = 0
"let g:ctrlp_custom_ignore = 'node_modules\|^\.DS_Store\|^\.git|.pyc'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|\.hg$\|\.svn$\|^\.DS_Store',
  \ 'file': '\.exe$\|\.so$\|\.dll$\|\.pyc$',
  \ 'link': 'SOME_BAD_SYMBOLIC_LINKS',
\ }

let g:syntastic_javascript_checkers = ['jshint']

let g:syntastic_check_on_open = 1
let g:syntastic_enable_signs = 1    " Put errors on left side
" let g:syntastic_quiet_messages = {'level': 'warnings'}
let g:syntastic_auto_loc_list = 2   " Only show errors when I ask
let g:syntastic_disabled_filetypes = ['html']

let g:syntastic_python_flake8_quiet_messages = {'level': 'warnings'}
let g:syntastic_python_flake8_args = "--max-line-length=100"

let g:syntastic_cpp_check_header = 1
let g:syntastic_cpp_no_include_search = 1
let g:syntastic_cpp_compiler = 'g++'
let g:syntastic_cpp_compiler_options = ' -std=c++11'
if has('unix')
        let g:syntastic_error_symbol = '★'
        let g:syntastic_style_error_symbol = '>'
        let g:syntastic_warning_symbol = '⚠'
        let g:syntastic_style_warning_symbol = '>'
else
        let g:syntastic_error_symbol = '!'
        let g:syntastic_style_error_symbol = '>'
        let g:syntastic_warning_symbol = '.'
        let g:syntastic_style_warning_symbol = '>'
endif

inoremap kj <Esc>

au BufNewFile,BufRead *.py setlocal softtabstop=4 shiftwidth=4

au BufNewFile,BufRead *.rake set ft=ruby
au BufNewFile,BufRead *.module set ft=php
au BufNewFile,BufRead *.install set ft=php
au BufNewFile,BufRead *.inc set ft=php
au BufNewFile,BufRead *.jinja set ft=htmljinja

au BufRead,BufNewFile *.md set filetype=markdown

au BufReadPre * if getfsize(expand("%")) > 1000000 | syntax off | endif

set viminfo=%,'50,\"100,n~/.viminfo
let @d='idefault_array_get(^[/[^Mxi, ^[/]^Mr)?default^M'

" Allow saving of files as sudo when I forgot to start vim using sudo.
cmap w!! w !sudo tee > /dev/null %

fun! RefreshBuffers()
  set noconfirm
  bufdo e!
  set confirm
endfun

nmap <leader>gr call RefreshBuffers()
