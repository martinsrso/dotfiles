let g:eleline_powerline_fonts = 1


"let g:airline_section_z = '%l:%c'
let g:airline#extensions#coc#enabled = 1
let g:airline_detect_modified=1
let g:airline_theme = 'dracula'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#default#layout = [
    \ [ 'a', 'b', 'error', 'warning', 'c' ],
    \ [ 'x', 'y', 'z', 'warning', 'error']
    \ ]
let airline#extensions#coc#stl_format_warn = '%W{[%w(#%fw)]}'
let airline#extensions#coc#stl_format_err = '%E{[%e(#%fe)]}'
let airline#extensions#coc#warning_symbol = ' '
let airline#extensions#coc#error_symbol = ' '

let g:airline#extensions#whitespace#enabled = 0

" lightline
"let g:lightline = {
"  \ 'colorscheme': 'dracula',
"  \ 'active': {
"  \   'left': [
"  \     [ 'mode', 'paste'],
"  \     ['gitbranch', 'cocstatus','currentfunction', 'absolutepath','method']
"  \   ],
"  \ },
"  \ 'component_function': {
"  \   'blame': 'LightlineGitBlame',
"  \   'cocstatus': 'coc#status',
"  \   'gitbranch': 'fugitive#head',
"  \   'currentfunction': 'CocCurrentFunction',
"  \ },
"  \ 'separator': { 'left': '', 'right': '' },
"  \ 'subseparator': { 'left': '', 'right': '' }
"\ }
"
"function! LightlineGitBlame() abort
"  let blame = get(b:, 'coc_git_blame', '')
"  " return blame
"  return winwidth(0) > 120 ? blame : ''
"endfunction

