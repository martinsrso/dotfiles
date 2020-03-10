" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.config/nvim/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
" Protobuf
Plug 'uarun/vim-protobuf'
" Plug 'tpope/vim-commentary'

Plug 'preservim/nerdcommenter'
"Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-fugitive'
"Plug 'liuchengxu/eleline.vim'
Plug 'ryanoasis/vim-devicons'

Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'editorconfig/editorconfig-vim'
Plug 'arcticicestudio/nord-vim'
Plug 'mhartington/oceanic-next'
call plug#end()
