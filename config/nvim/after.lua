local cmd = vim.cmd

-- " Commands
-- cmd([[colorscheme dracula]])

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

cmd[[colorscheme dracula]]

-- " Mappings
-- " Search under word
vim.keymap.set('n', '<Leader>rg', '<ESC>:FZFRg <C-R><C-W><enter>', { noremap = true, silent = false })

-- " Split window and file navigation
vim.keymap.set('n', '<Leader>hh', ':split<CR>', {silent = true})
vim.keymap.set('n', '<Leader>vv', ':vsplit<CR>', {silent = true})
vim.keymap.set('n', '\\', ':NERDTreeToggle<CR>', {noremap = true, silent = true})
vim.keymap.set('n', '\\f', ':NERDTreeFind<CR>', {noremap = true, silent = true})

vim.keymap.set('n', '<leader><space>', ':Vipe<CR>', {silent = true})

-- " Switch between test and production code
vim.keymap.set('n', '<Leader>.', ':A<CR>',{})

-- " Open nvim help
vim.keymap.set( "n", ",h", [[<Cmd>lua require'telescope.builtin'.help_tags({results_title='Help Results'})<CR>]], { noremap = true, silent = true })



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
require'lspconfig'.sorbet.setup{cmd = { 'srb', 'tc', '--lsp' ,'.'}}
require'lspconfig'.gopls.setup{}
