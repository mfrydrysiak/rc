""""""""""""""""""""""""""""""""""""
" Vim configuration file
" author: Marek Frydrysiak
""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""
" Basic settings
""""""""""""""""""""""""""""""""""""

let mapleader = ","

set encoding=utf-8

" enable hidden buffers
set hidden


""""""""""""""""""""""""""""""""""""
" Plugins
""""""""""""""""""""""""""""""""""""
call plug#begin(expand('~/.vim/plugged'))

Plug 'scrooloose/nerdtree'

nnoremap <silent> <F3> :NERDTreeToggle<CR>

call plug#end()

""""""""""""""""""""""""""""""""""""
" Editor control
""""""""""""""""""""""""""""""""""""

vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

""""""""""""""""""""""""""""""""""""
" Window control
""""""""""""""""""""""""""""""""""""

" resizing window by Ctrl+arrows
:nnoremap <silent><C-Right> :wincmd ><cr>
:nnoremap <silent><C-Left>  :wincmd <<cr>
:nnoremap <silent><C-Up> :wincmd +<cr>
:nnoremap <silent><C-Down> :wincmd -<cr>
