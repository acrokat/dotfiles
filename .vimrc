"Modified from ljhurst
"COLOR

"Allow Vim to use 256 colors
set t_Co=256

"Set color scheme to up
colorscheme up

"Set background to dark
set background=dark

"Enable syntax processing
syntax enable
"Turn on a ruler at column 80
set colorcolumn=80

"SPACES AND TABS

"Number of visual spaces per tab
set tabstop=4

"Number of visual spaces per indent
set shiftwidth=4

"Number of spaces in a tab when editing
set softtabstop=4

"Tabs are spaces
set expandtab

"Use auto indent
set autoindent

"For Python files use these settings
autocmd FileType python set tabstop=4 shiftwidth=4 softtabstop=4 noexpandtab

"Show line numbers
set number

"Visual auto-complete for command menu
set wildmenu


"SEARCH

"Search as characters are entered
set incsearch

"Highlight matches
set hlsearch

"ALIASES

"Alias for formatting JSON
command Prettify execute '%!python -m json.tool'

"PLUGINS

"Be improved
set nocompatible

"Required for Vundle
filetype off

"Set runtime path for Vundle
set rtp+=~/.vim/bundle/Vundle.vim

"Initialize Vundle
call vundle#begin()

"Let Vundle manage Vundle
Plugin 'VundleVim/Vundle.vim'

"Enumerate tabs
Plugin 'mkitt/tabline.vim'

"Use local vimrc's
Plugin 'embear/vim-localvimrc'

"All plugins must be above this line
call vundle#end()

"Reset variables
filetype plugin on


"Don't ask to load local vimrc
let g:localvimrc_ask=0
let g:localvimrc_sandbox=0
