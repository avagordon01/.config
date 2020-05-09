set number
set mouse=a
set laststatus=0

set viminfo=
set nobackup
set noswapfile

set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
set ignorecase
set smartcase
set inccommand=split
set clipboard=unnamed,unnamedplus
set complete=.,w,b,u,t,i,d
set tags=tags;~

syntax on
colorscheme nofrills

let loaded_netrwPlugin = 1
set guicursor=

set matchpairs+=<:>

noremap <MiddleMouse> <LeftMouse>
noremap <2-MiddleMouse> <LeftMouse>
noremap <3-MiddleMouse> <LeftMouse>
noremap <4-MiddleMouse> <LeftMouse>

call plug#begin('~/.config/nvim/plugged')
Plug 'editorconfig/editorconfig-vim'
call plug#end()
