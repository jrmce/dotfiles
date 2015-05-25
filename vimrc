set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'bling/vim-airline'
Plugin 'ervandew/supertab'
Plugin 'Raimondi/delimitMate'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/syntastic'
Plugin 'tomtom/tcomment_vim'
Plugin 'tomtom/tlib_vim'
Plugin 'tpope/vim-fugitive'
Plugin 'chriskempson/base16-vim'
Plugin 'pangloss/vim-javascript'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

let mapleader=","
let g:syntastic_javascript_checkers = ['jshint']

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
let g:UltiSnipsEditSplit="vertical"

let delimitMate_expand_cr = 1

syntax enable
set background=dark
colorscheme base16-ocean
let g:pencil_terminal_italics = 1

set tabstop=2
set shiftwidth=2
set shiftround
set expandtab
set autoindent
set number
set numberwidth=5
set showcmd
set cursorline
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
set tw=80
set formatoptions+=t

" Quick save
nnoremap <leader>w :w!<cr>

" Quick set paste
nnoremap <leader>p :set paste<cr>

" Quick set no paste
nnoremap <leader>np :set nopaste<cr>

" Quick ESC
imap jj <ESC>

" Delete current file
nnoremap <Leader>rm :call delete(expand('%')) \| bdelete!<CR>

" Ctrlp search with tags
nnoremap <Leader>. :CtrlPTag<cr>

" Index ctags
map <Leader>ct :!ctags -R .<CR>

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
