" after

nnoremap <leader>nn :NERDTreeToggle<CR>
nnoremap \ :NERDTreeToggle<CR>

" Window Splitting
nmap <silent> <leader>hs :split<CR>
nmap <silent> <leader>vs :vsplit<CR>
nmap <silent> <leader>sc :close<CR>
" }}}

map <leader><space> :Vipe <CR>

" Switch between test and production code {{{
nnoremap <leader>. :A<cr>
" }}}

" Common typos {{{
command! W w
command! Q q
command! WQ wq
command! Wq wq
command! Qall qall
" }}}

" If you want to start window resize mode by `Ctrl+W`
let g:winresizer_start_key = '<C-E>'
