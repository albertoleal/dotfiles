" Plugins


" Markdown {{{
  Plug 'tpope/vim-markdown', { 'for': ['markdown'] }
  Plug 'nelstrom/vim-markdown-folding', { 'for': ['markdown'] }
  Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }
" }}}

" Golang {{{
  Plug 'AndrewRadev/splitjoin.vim'
" }}}

Plug 'dracula/vim', { 'as': 'dracula' }

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }


" Javascript {{{
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'jparise/vim-graphql'
" }}}

Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
