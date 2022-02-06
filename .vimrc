" tab is set to 4 spaces
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
set nonumber
set relativenumber

" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

Plug 'preservim/nerdtree'
Plug 'rust-lang/rust.vim'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'itchyny/lightline.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

" Initialize plugin system
call plug#end()
