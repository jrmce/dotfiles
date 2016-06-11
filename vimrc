set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'ervandew/supertab'
Plugin 'Raimondi/delimitMate'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/syntastic'
Plugin 'pangloss/vim-javascript'
Plugin 'tomtom/tcomment_vim'
Plugin 'tomtom/tlib_vim'
Plugin 'tpope/vim-fugitive'
Plugin 'chriskempson/base16-vim'
Plugin 'mustache/vim-mustache-handlebars'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

let mapleader=","
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_html_checkers=['']
let g:airline_theme='base16_ocean'

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
let g:UltiSnipsEditSplit="vertical"

let delimitMate_expand_cr=1
let g:javascript_conceal_function   = "ƒ"
let g:javascript_conceal_null       = "ø"
let g:javascript_conceal_this       = "@"
let g:javascript_conceal_return     = "<"
let g:javascript_conceal_undefined  = "¿"
let g:javascript_conceal_NaN        = "ℕ"
let g:javascript_conceal_prototype  = "#"
let g:javascript_conceal_static     = "•"
let g:javascript_conceal_super      = "Ω"

let base16colorspace=256 
set t_Co=256
syntax enable
set background=dark
colorscheme base16-ocean

set cole=2
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
set formatoptions+=t
set ruler
set textwidth=80
set colorcolumn=+1

set list listchars=tab:»·,trail:·,nbsp:·

" Open vimrc in new tab
nnoremap <leader>ev :vsplit $MYVIMRC<cr>

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
