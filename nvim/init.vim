call plug#begin('~/.config/nvim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'sheerun/vim-polyglot'
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'arcticicestudio/nord-vim'
Plug 'lervag/vimtex'

call plug#end()

" basic options
nnoremap <SPACE> <Nop>
let mapleader="\<Space>"
" switch tabs
nnoremap <M-1> 1gt<CR>
nnoremap <M-2> 2gt<CR>
nnoremap <M-3> 3gt<CR>
nnoremap <M-4> 4gt<CR>
nnoremap <M-5> 5gt<CR>
nnoremap <M-6> 6gt<CR>

" move line/selection
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

set number
set tabstop=4
set shiftwidth=4
set expandtab

colorscheme nord
" plugin configs
source $HOME/.config/nvim/plug-config/coc.vim
" source $HOME/.config/nvim/plug-config/gruvbox.vim
source $HOME/.config/nvim/plug-config/airline.vim
source $HOME/.config/nvim/plug-config/vimtex.vim
