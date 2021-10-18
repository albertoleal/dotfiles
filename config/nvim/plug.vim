" Commands {{{
function! InstallVipe(info)
  if a:info.status ==# 'installed' || a:info.force
    if has('unix')
      let s:uname = system('uname -s')
      if s:uname =~? 'Darwin'
        silent !rm -f ${HOME}/bin/vipe
        silent !ln -s `pwd`/vipe ${HOME}/bin || true
      else
        silent !ln -s `pwd`/vipe ~/bin || true
      endif
    endif
  endif
endfunction
" }}}

" Plugins

" Markdown {{{
  Plug 'tpope/vim-markdown', { 'for': ['markdown'] }
  Plug 'nelstrom/vim-markdown-folding', { 'for': ['markdown'] }
" }}}

" Golang {{{
  Plug 'AndrewRadev/splitjoin.vim'
" }}}

" Javascript {{{
  Plug 'pangloss/vim-javascript'
  Plug 'leafgarland/typescript-vim'
" }}}

" Ruby {{{
  Plug 'vim-ruby/vim-ruby'
" }}}

Plug 'simeji/winresizer'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'junegunn/fzf'
Plug 'luan/vipe', { 'do': function('InstallVipe') }

Plug 'dracula/vim', { 'as': 'dracula' }

Plug 'mileszs/ack.vim'
