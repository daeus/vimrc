set nocompatible

execute pathogen#infect('~/.vim/bundle/{}')
filetype plugin on
" End of vimrc-install additions.
source $VIMRUNTIME/vimrc_example.vim
set tabstop=2
set softtabstop=2
set shiftwidth=2
set smarttab
set expandtab
set nu
set ruler
set cursorline
set t_Co=256
set formatoptions+=r
set noundofile

" Setting for Drupal file type
if has("autocmd")
  " Drupal *.module and *.install files.
  augroup module
    autocmd BufRead,BufNewFile *.module set filetype=php
    autocmd BufRead,BufNewFile *.install set filetype=php
    autocmd BufRead,BufNewFile *.test set filetype=php
    autocmd BufRead,BufNewFile *.inc set filetype=php
    autocmd BufRead,BufNewFile *.profile set filetype=php
    autocmd BufRead,BufNewFile *.view set filetype=php
  augroup END
endif

" Setting for Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Setting for vim-airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

" Set Backup path
set directory=$HOME/.vim/tmp
set backupdir=$HOME/.vim/backup

" Clear Search Highlight
nmap <SPACE> <SPACE>:noh<CR>

" Set color scheme
hi Comment ctermfg=DarkGray
