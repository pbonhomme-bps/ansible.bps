" Settings
  nmap gs <plug>(GrepperOperator)
  xmap gs <plug>(GrepperOperator)

  nnoremap <leader>gg :Grepper -tool git<cr>
  nnoremap <leader>ga :Grepper -tool ag<cr>
  nnoremap <leader>gs :Grepper -tool ag -side<cr>
  nnoremap <leader>*  :Grepper -tool ag -cword -noprompt<cr>

  let g:grepper           = {}
  let g:grepper.tools     = ['git', 'ag', 'grep']
  let g:grepper.open      = 0
  let g:grepper.jump      = 1
  let g:grepper.next_tool = '<leader>g'
