nnoremap <leader>e :e<Space>
nnoremap <leader>ls :ls<cr>
nnoremap <leader>bp :bp<cr>
nnoremap <leader>bn :bn<cr>
nnoremap <leader>bd :b#<bar>bd#<CR>

nnoremap <leader>ta :tabnew<Space>
nnoremap <leader>tc :tabc<cr>
nnoremap <leader>tn :tabn<cr>
nnoremap <leader>tp :tabp<cr>
nnoremap <leader>tl :tabl<cr>

autocmd BufReadPost *
            \ if line("'\"") > 0 && line("'\"") <= line("$") |
            \   exe "normal g`\"" |
            \ endif

nnoremap <leader>I :PlugInstall<cr>
nnoremap <leader>x :q<cr>
nnoremap <leader>w :w<cr>
"nnoremap <leader>z :wqa<cr>
nnoremap <leader>z :noh<cr>

nnoremap <leader>ev :vsplit ~/.config/nvim/init.vim<cr>
nnoremap <leader>sv :source ~/.config/nvim/init.vim<cr>
" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
set signcolumn=yes
set foldmethod=syntax

" let mapleader="\<Space>"
inoremap jk <ESC>
