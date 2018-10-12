
"filetype on
"filetype plugin on
"filetype indent on
set nocompatible
filetype plugin indent on

call plug#begin('~/.config/nvim/plugged')

	Plug 'Shougo/neosnippet.vim'
	Plug 'Shougo/neosnippet-snippets'
	Plug 'alvan/vim-closetag'
	Plug 'Xuyuanp/nerdtree-git-plugin'
	Plug 'jiangmiao/auto-pairs'
"    Plug 'joshdick/onedark.vim'

	if has('nvim')
	  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
	else
	  Plug 'Shougo/deoplete.nvim'
	  Plug 'roxma/nvim-yarp'
	  Plug 'roxma/vim-hug-neovim-rpc'
	endif
    Plug 'ap/vim-css-color'
    Plug 'morhetz/gruvbox'
    Plug 'posva/vim-vue'
	Plug 'slashmili/alchemist.vim'
    Plug 'derekwyatt/vim-scala'
	Plug 'pangloss/vim-javascript'
	Plug 'mxw/vim-jsx'
	Plug 'Yggdroot/indentLine'
	Plug 'wokalski/autocomplete-flow'
	Plug 'zchee/deoplete-jedi'
	Plug 'HerringtonDarkholme/yats.vim'
	Plug 'mhartington/nvim-typescript', {'do': './install.sh'}
    Plug 'prabirshrestha/async.vim'
    Plug 'prabirshrestha/asyncomplete.vim'
    Plug 'wellle/tmux-complete.vim'
    Plug 'elixir-editors/vim-elixir'
	Plug 'mhinz/vim-mix-format'
	Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
	Plug 'junegunn/fzf.vim'
	Plug 'terryma/vim-multiple-cursors'
	Plug 'tpope/vim-eunuch'
	Plug 'tpope/vim-surround'
	Plug 'scrooloose/nerdtree'
	Plug 'jistr/vim-nerdtree-tabs'
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	Plug 'scrooloose/syntastic'
	Plug 'mattn/emmet-vim'
	Plug 'w0rp/ale'
	Plug 'majutsushi/tagbar'
	Plug 'crusoexia/vim-monokai'
    Plug 'lambdalisue/gina.vim'
"    Plug 'matze/vim-move'
    Plug 'airblade/vim-gitgutter'
    Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }
"        Plug 'davidhalter/jedi-vim'
  Plug 'dracula/vim', { 'as': 'dracula' }
  Plug 'crusoexia/vim-monokai',
  Plug 'arcticicestudio/nord-vim', { 'branch': 'develop' }
call plug#end()

set termguicolors
color monokai
syntax on

set t_Co=256                                                    " display 256 colors
set noswapfile                                                  " avoid swap files
set nobackup                                                    " avoid bkp files
set nowritebackup                                               " no make a backup before overwriting file
set undofile                                                    " persistent undo
set undolevels=1000                                             " maximum number of changes that can be undone
set undoreload=10000                                            " maximum number lines to save for undo on a buffer reload
set number                                                      " show line numbers on the sidebar
set showbreak=↪                                                 " show arrow at wrap
set hidden                                                      " allow buffer switching without saving
set updatetime=250                                              " pretty much just so gittgutter will update quickly
set clipboard=unnamed,unnamedplus                               " set clipboard
set cursorline                                                  " highlight current line
set lazyredraw                                                  " don’t update screen during macro and script execution
set noshowmode                                                  " don't show pressed commands
set ignorecase                                                  " ignore case omnifunc search
set shortmess+=A                                                " avoid locking popup messages
set omnifunc=syntaxcomplete#Complete                            " enable autocomplete
set autowrite                                                   " write the content of the file automatically when call :make
set list
"set listchars=trail:-,tab:\ \ ,                                 " show trailing whitespace
set list listchars=tab:→\ ,trail:·  " Exibe o caractere tab para o caso de alguém cometer o sacrilégio de misturar espaços com tabs

set wildmode=list:longest,list:full                             " completion mode that is used for the character specified with wildchar
set wildignore+=*.o,*.obj,.git,*.rbc,*.pyc,__pycache__          " ignore files matching these patterns when opening files based on a glob pattern

set foldenable              " can slow Vim down with some plugins
set foldlevelstart=99       " can slow Vim down with some plugins
set foldmethod=syntax       " can slow Vim down with some plugins

set encoding=utf-8	" Use UTF-8 everywhere
set guioptions-=T	" Hide toolbar

set guioptions-=r	" Don't show right scrollbar

set hidden

set number
set relativenumber

set mouse=a

set wrap
set cursorline
"set termguicolors

" -----------------------------------------------
" Tabs e espaços
" -----------------------------------------------
set smartindent                     " Mantém a mesma identação que a linha anterior
set expandtab                       " Troca o tab or espaços
set tabstop=2            " a tab is two spaces
set shiftwidth=2         " an autoindent (with <<) is two spaces
set softtabstop=2

"set shiftwidth=4  " operation >> indents 2 columns; << unindents 2 columns
"set tabstop=4     " a hard TAB displays as 2 columns
"set expandtab     " insert spaces when hitting TABs
"set softtabstop=4 " insert/delete 2 spaces when hitting a TAB/BACKSPACE
"set shiftround    " round indent to multiple of 'shiftwidth'
"set autoindent    " align the new line indent with the previous line

"syntax on

"colorscheme onedark
" colorscheme gruvbox
"color dracula

let g:javascript_plugin_flow = 1

set background=dark

let g:deoplete#enable_at_startup = 1

imap <expr><TAB>
	 \ neosnippet#expandable_or_jumpable() ?
	 \    "\<Plug>(neosnippet_expand_or_jump)" :
         \ 	  pumvisible() ? "\<C-n>" : "\<TAB>"

"let g:deoplete#sources#jedi#statement_length = 10
let g:mix_format_on_save = 1

let g:tmuxcomplete#asyncomplete_source_options = {
            \ 'name':      'tmuxcomplete',
            \ 'whitelist': ['*'],
            \ 'config': {
            \     'splitmode':      'words',
            \     'filter_prefix':   1,
            \     'show_incomplete': 1,
            \     'sort_candidates': 0,
            \     'scrollback':      0,
            \     'truncate':        0
            \     }
            \ }

nnoremap <c-p> :GFiles<cr>
nnoremap <c-f> :Ag<space>

" let g:airline_theme = 'onedark'
let g:airline_theme = 'base16_monokai'

let g:ale_fix_on_save = 1
let g:ale_completion_enabled = 1

map <F3> :NERDTreeToggle<CR>;

let g:ale_sign_error = '●' " Less aggressive than the default '>>'
let g:ale_sign_warning = '.'
let g:ale_lint_on_enter = 0 " Less distracting when opening a new file

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tagbar#enabled = 1
let g:airline_skip_empty_sections = 1

let g:airline_powerline_fonts = 1

"" Split
noremap <Leader>h :<C-u>split<CR>
noremap <Leader>v :<C-u>vsplit<CR>

nmap <silent> <F4> :TagbarToggle<CR>
let g:tagbar_autofocus = 1

syntax on
set ignorecase
inoremap jj <Esc>

map <c-l> :bnext<cr>
map <c-h> :bprev<cr>
map <c-d> :bdelete<cr>
map  <c-o> :e<space>
nnoremap <Leader>c :noh<cr>


"" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

set nobackup
set noswapfile

"jset t_Co=256

let mapleader="\<space>"

nnoremap <leader>; A;<esc>

nnoremap <leader>ev :vsplit ~/.config/nvim/init.vim<cr>
nnoremap <leader>sv :source ~/.config/nvim/init.vim<cr>
nnoremap <leader>p :PlugInstall<cr>
nnoremap <leader>qq :q<cr>
nnoremap <silent> <leader>sh :terminal<CR>

" Save using Control-S on NeoVim withou replacing
noremap <c-s> :w<CR>
noremap	<c-q> :wqa<CR>

" IndentLine
let g:indentLine_enabled = 1
let g:indentLine_concealcursor = 0
let g:indentLine_char = 'c'
let g:indentLine_char = '┆'
"let g:indentLine_char = '¦'
let g:indentLine_faster = 1

" Fix backspace indent
set backspace=indent,eol,start

"Credit joshdick
"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
"if (empty($TMUX))
"  if (has("nvim"))
"  "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
"  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
"  endif
"  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
"  if (has("termguicolors"))
"    set termguicolors
"  endif
"endif

let g:closetag_filenames = '*.html, *.xhtml, *.phtml, *.js, *.vue, *.ts, *.tsx'

let g:deoplete#enable_at_startup = 1
let g:deoplete#file#enable_buffer_path = 1
let g:deoplete#enable_smart_case = 1

"set autochdir

function! s:find_git_root()
  return system('git rev-parse --show-toplevel 2> /dev/null')[:-2]
endfunction

command! ProjectFiles execute 'Files' s:find_git_root()

let g:python_host_prog = '/usr/bin/python'
let g:python3_host_prog = '/usr/bin/python3'

autocmd BufReadPost *
  \ if line("'\"") >= 1 && line("'\"") <= line("$") |
  \   exe "normal! g`\"" |
  \ endif

" FZF
let $FZF_DEFAULT_COMMAND = 'ag --hidden -l --ignore .git'
nnoremap <c-p> :Files<CR>

" Ag
" Default options are --nogroup --column --color
let s:ag_options = ' --skip-vcs-ignores --smart-case -Q '
command! -bang -nargs=* AgQ
      \ call fzf#vim#ag(
      \   <q-args>,
      \   s:ag_options,
      \  <bang>0 ? fzf#vim#with_preview('up:60%')
      \        : fzf#vim#with_preview('right:50%:hidden', '?'),
      \   <bang>0
      \ )
nnoremap <Leader>a :Ag<Space>
nnoremap <Leader>aq :AgQ<Space>
nnoremap <Leader>ag :Ag <C-R><C-W><CR>

let NERDTreeShowHidden=1
let NERDTreeIgnore=['\.git$[[dir]]', '\node_modules$[[dir]]']
map <leader>n :NERDTreeToggle<CR>
" Leader + n open/close tree

map <leader>r :NERDTreeFind<cr>
"Leader + r show file on tree
"
set conceallevel=0
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
set mouse=c
let g:move_key_modifier = 'C'

