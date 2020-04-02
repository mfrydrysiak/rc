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
Plug 'tomasr/molokai'
Plug 'vim-scripts/grep.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

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

""""""""""""""""""""""""""""""""""""
" Find, grep, etc.
""""""""""""""""""""""""""""""""""""

" grep.vim
nnoremap <silent> <leader>f :Rgrep<CR>
let Grep_Default_Options = '-IR'
let Grep_Skip_Files = '*.log *.db'
let Grep_Skip_Dirs = '.git'

" FZF search
nnoremap <silent> <leader>e :FZF -m<CR>

""""""""""""""""""""""""""""""""""""
" Visual settings
""""""""""""""""""""""""""""""""""""

colorscheme molokai
