local map = require('utils').map
local cmd = vim.cmd

cmd([[colorscheme dracula]])

-- " Remove trailing spaces on save
cmd([[autocmd BufWritePre * :%s/\s\+$//e]])


-- " Window Splitting and file navigation
map('n', ',hs', ':split<CR>', {silent = true})
map('n', ',vs', ':vsplit<CR>', {silent = true})
map('n', '\\', ':NERDTreeToggle<CR>', {noremap = true, silent = true})

map('n', '<leader><space>', ':Vipe<CR>', {silent = true})

-- " Switch between test and production code
map('n', '<Leader>.', ':A<CR>',{})

-- " Common typos
cmd(':command! WQ wq')
cmd(':command! WQ wq')
cmd(':command! Wq wq')
cmd(':command! Wqa wqa')
cmd(':command! Qall qall')
cmd(':command! W w')
cmd(':command! Q q')

