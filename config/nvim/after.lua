local map = require('utils').map
local cmd = vim.cmd

-- " Commands
cmd([[colorscheme dracula]])

-- " Remove trailing spaces on save
cmd([[autocmd BufWritePre * :%s/\s\+$//e]])

-- " Common typos
cmd(':command! WQ wq')
cmd(':command! WQ wq')
cmd(':command! Wq wq')
cmd(':command! Wqa wqa')
cmd(':command! Qall qall')
cmd(':command! W w')
cmd(':command! Q q')


-- " Mappings
-- " Search under word
map('n', '<Leader>rg', '<ESC>:FZFRg<Space>', { noremap = true, silent = false })
map('n', '<Leader>rw', '<ESC>:FZFRg <C-R><C-W><enter>', { noremap = true, silent = false })

-- " Split window and file navigation
map('n', '<Leader>hh', ':split<CR>', {silent = true})
map('n', '<Leader>vv', ':vsplit<CR>', {silent = true})
map('n', '\\', ':NERDTreeToggle<CR>', {noremap = true, silent = true})
map('n', '\\f', ':NERDTreeFind<CR>', {noremap = true, silent = true})

map('n', '<leader><space>', ':Vipe<CR>', {silent = true})

-- " Switch between test and production code
map('n', '<Leader>.', ':A<CR>',{})

-- " Open nvim help
map( "n", ",h", [[<Cmd>lua require'telescope.builtin'.help_tags({results_title='Help Results'})<CR>]], { noremap = true, silent = true })



-- " Plugin Config
vim.g.gutentags_ctags_exclude = {
  '*.git', '*.svg', '*.hg',
  '*/tests/*',
  'build',
  'dist',
  '*sites/*/files/*',
  'bin',
  'node_modules',
  'bower_components',
  'cache',
  'compiled',
  'docs',
  'example',
  'bundle',
  'vendor',
  '*.md',
  '*-lock.json',
  '*.lock',
  '*bundle*.js',
  '*build*.js',
  '.*rc*',
  '*.json',
  '*.min.*',
  '*.map',
  '*.bak',
  '*.zip',
  '*.pyc',
  '*.class',
  '*.sln',
  '*.Master',
  '*.csproj',
  '*.tmp',
  '*.csproj.user',
  '*.cache',
  '*.pdb',
  'tags*',
  'cscope.*',
  '*.exe', '*.dll',
  '*.mp3', '*.ogg', '*.flac',
  '*.swp', '*.swo',
  '*.bmp', '*.gif', '*.ico', '*.jpg', '*.png',
  '*.rar', '*.zip', '*.tar', '*.tar.gz', '*.tar.xz', '*.tar.bz2',
  '*.pdf', '*.doc', '*.docx', '*.ppt', '*.pptx',
}

vim.g.gutentags_add_default_project_roots = false
vim.g.gutentags_project_root = {'package.json', '.git'}
vim.g.gutentags_cache_dir = vim.fn.expand('~/.cache/nvim/ctags/')
vim.g.gutentags_generate_on_new = true
vim.g.gutentags_generate_on_missing = true
vim.g.gutentags_generate_on_write = true
vim.g.gutentags_generate_on_empty_buffer = true
vim.cmd([[command! -nargs=0 GutentagsClearCache call system('rm ' . g:gutentags_cache_dir . '/*')]])
vim.g.gutentags_ctags_extra_args = {'--tag-relative=yes', '--fields=+ailmnS', }

require'lspconfig'.solargraph.setup{}
require'lspconfig'.sorbet.setup{}
require'lspconfig'.gopls.setup{}
