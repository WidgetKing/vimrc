"#### TRISTAN'S SETTINGS FOR VIM. WOO!

" reset to vim-defaults
if &compatible
   set nocompatible
endif

" display settings
"set background=dark
set nowrap
set showmatch
set showmode
set showcmd
set ruler
set title
set wildmenu
set wildignore=*.0,*.obj,*.bak,*.exe,*.py[co],*.swp,*~,*.pyc,.svn,**/node_modules/**,**/.git/**
set complete-=i " Makes wildignore fast
set foldmethod=manual
set laststatus=2
set matchtime=2
set matchpairs+=<:>

" editor settings
set esckeys
set ignorecase
set smartcase
set smartindent
set smarttab
set magic
set bs=indent,eol,start

set tabstop=4
set shiftwidth=4

" system settings
"set lazyredraw
set confirm
set nobackup
set viminfo='20,\"500
set hidden
set history=50
set mouse=v
set path+=**



" color settings (if terminal/gui supports it)
if &t_Co > 2 || has("gui_running")
   syntax enable
   set hlsearch
   set incsearch
   set termguicolors
   colorscheme desert

"  python from powerline.vim import setup as powerline_setup
"  python powerline_setup()
"  python del powerline_setup
endif

" Use of the filetype plugins, auto completion and indentation support
filetype plugin indent on

"# Line numbers (including hybrid relative numbers)
set number relativenumber

" --------------- PLUGINS
" Specify a directory for plugins
" Make sure to use single quotes in teh following section
call plug#begin('~/.vim/plugged')

	Plug 'tpope/vim-repeat' "Confirmed to work
	Plug 'liuchengxu/space-vim-dark' " Can't get non-native themes to look right :(
	Plug 'scrooloose/nerdtree' " Now working. Use Ctrl+N to toggle on and off
	Plug 'Xuyuanp/nerdtree-git-plugin' " Loaded, but as NerdTree has yet to load it's not useful
	Plug 'tpope/vim-surround' "Confirmed to work
	Plug 'tpope/vim-commentary' "Confirmed to work
	Plug 'michaeljsmith/vim-indent-object' " Confirmed to work
	Plug 'jelera/vim-javascript-syntax'
	Plug 'vim-scripts/JavaScript-Indent'
	" Plug 'kana/vim-textobj-line' 

call plug#end()

" NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>
