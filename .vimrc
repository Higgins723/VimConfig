set nocompatible

set background=dark

colorscheme hybrid_material

filetype indent plugin on

execute pathogen#infect()

syntax on

set hidden

set wildmenu

set modifiable

set showcmd

set hlsearch

set ignorecase
set smartcase

set backspace=indent,eol,start

set autoindent

set nostartofline

set ruler

set laststatus=2

set confirm

set visualbell

set t_vb=

set mouse=a

set cmdheight=2

set number

set notimeout ttimeout ttimeoutlen=200

set shiftwidth=4
set softtabstop=4
set expandtab

"""""""""""""""""""""""""""""""""""""
"""""""""" N E R D T R E E """"""""""
"""""""""""""""""""""""""""""""""""""

"open nerdtree automatically if no files were specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
"open nerdtree when vim starts up
autocmd vimenter * NERDTree
"close nerdtree if only window left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
"show hidden files by default
let NERDTreeShowHidden=1
"load icons for nerdtree
let g:webdevicons_enable_nerdtree = 1

"""""""""""""""""""""""""""""""""""""
""""""""" S Y N T A S T I C """""""""
"""""""""""""""""""""""""""""""""""""
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"""""""""""""""""""""""""""""""""""""
"""""" V I M - D E V I C O N S """"""
"""""""""""""""""""""""""""""""""""""
set encoding=utf8
set guifont=DroidSansMono\ Nerd\ Font\ 11

"""""""""""""""""""""""""""""""""""""
""""""""" L I G H T L I N E """""""""
"""""""""""""""""""""""""""""""""""""
if !has('gui_running')
  set t_Co=256
endif
