" let mapleader="\<Space>"
let mapleader=";"
" Or if you have Neovim >= 0.1.5
if (has("termguicolors"))
 set termguicolors
endif

set t_Co=256
set t_ut=
colorscheme dracula

let g:WebDevIconsUnicodeGlyphDoubleWidth = 1
let g:WebDevIconsOS = 'Darwin'

set hidden
set encoding=utf-8
set incsearch
set hlsearch
" set ignorecase
set smartcase
set relativenumber
set nobackup
set nowritebackup
set noswapfile
set tabstop=2 shiftwidth=2 expandtab
set number
set showbreak=↪
set clipboard+=unnamedplus
set cursorline
set undolevels=1000
set undoreload=10000
" open new split panes to right and below
set splitright
set splitbelow
set list! "show all whitespaces
" Give more space for displaying messages.
set cmdheight=2

set laststatus=2

