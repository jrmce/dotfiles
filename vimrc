call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'kien/ctrlp.vim'
Plug 'fxn/vim-monochrome'

call plug#end()

syntax on
filetype plugin indent on

set encoding=utf-8
set nocompatible

colorscheme monochrome
set background=dark

let g:airline_theme='minimalist'

let mapleader=","
set cole=2
set tabstop=2
set shiftwidth=2
set shiftround
set expandtab
set autoindent
set number
set numberwidth=5
set showcmd
set wildmenu
set lazyredraw
set showmatch
set incsearch
set hlsearch
set noswapfile
set history=50
set laststatus=2
set autowrite
set backspace=2
set formatoptions+=t
set ruler
set textwidth=80
set colorcolumn=+1


" Open vimrc in new tab
nnoremap <leader>ev :vsplit $MYVIMRC<cr>

" <leader>sv sources .vimrc
nnoremap <leader>sv :source $MYVIMRC<CR>:redraw<CR>:echo $MYVIMRC 'reloaded'<CR>

" First character of line
nnoremap <leader>a ^

" Quick save
nnoremap <leader>w :w!<cr>

" Quick set paste
nnoremap <leader>p :set paste<cr>

" Quick set no paste
nnoremap <leader>np :set nopaste<cr>

" Quick ESC
inoremap jj <ESC>

" Delete current file
nnoremap <Leader>rm :call delete(expand('%')) \| bdelete!<CR>

" Ctrlp search with tags
nnoremap <Leader>. :CtrlP<cr>

" Index ctags
map <Leader>ct :!ctags -R .<CR>

" Clear search using spacebar
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

" No arrows
nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up> :echoe "Use k"<CR>
nnoremap <Down> :echoe "Use j"<CR>

" Switch between the last two files
nnoremap <Leader><Leader> <c-^>

" Use The Silver Searcher https://github.com/ggreer/the_silver_searcher
if executable('ag')
  " Use Ag over Grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif
