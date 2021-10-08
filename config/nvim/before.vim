" before
let g:startify_disable_at_vimenter = 1

if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif
