local M = {}

M.plugins = function(use)
  use {'dracula/vim', as = 'dracula'}
  use 'simeji/winresizer'
  use 'vim-ruby/vim-ruby'
  use 'preservim/nerdtree'
  -- use  'luan/vipe', { 'do': function('InstallVipe') }
end

return M


