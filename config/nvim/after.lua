local map = require('utils').map
local cmd = vim.cmd

cmd([[colorscheme dracula]])

-- " Remove trailing spaces on save
cmd([[autocmd BufWritePre * :%s/\s\+$//e]])

-- " Search under word
map('n', '<Leader>rg', '<ESC>:FZFRg<Space>', { noremap = true, silent = false })
map('n', '<Leader>rw', '<ESC>:FZFRg <C-R><C-W><enter>', { noremap = true, silent = false })

-- " Split window and file navigation
map('n', '<Leader>hs', ':split<CR>', {silent = true})
map('n', '<Leader>vs', ':vsplit<CR>', {silent = true})
map('n', '\\', ':NERDTreeToggle<CR>', {noremap = true, silent = true})

map('n', '<leader><space>', ':Vipe<CR>', {silent = true})

-- " Switch between test and production code
map('n', '<Leader>.', ':A<CR>',{})

-- " Open nvim help
map( "n", ",h", [[<Cmd>lua require'telescope.builtin'.help_tags({results_title='Help Results'})<CR>]], { noremap = true, silent = true })

-- " Common typos
cmd(':command! WQ wq')
cmd(':command! WQ wq')
cmd(':command! Wq wq')
cmd(':command! Wqa wqa')
cmd(':command! Qall qall')
cmd(':command! W w')
cmd(':command! Q q')

require'lspconfig'.solargraph.setup{}
