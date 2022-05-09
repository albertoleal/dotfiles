local M = {}


M.plugins = function(use)
  use {'dracula/vim', as = 'dracula'}

  use 'simeji/winresizer'
  use 'vim-ruby/vim-ruby'
  use 'preservim/nerdtree'
  use 'luan/vipe'
  use 'ludovicchabant/vim-gutentags'
  use 'shime/vim-livedown'
  use {
    'neoclide/coc.nvim',
    branch = 'release',
    config = function()
      vim.cmd("let g:coc_global_extensions = ['coc-tsserver', 'coc-css', 'coc-emmet', 'coc-go', 'coc-highlight', 'coc-html', 'coc-json', 'coc-python', 'coc-rust-analyzer', 'coc-rls', 'coc-snippets', 'coc-solargraph', 'coc-tsserver', 'coc-yaml']")
    end
  }
end

return M


