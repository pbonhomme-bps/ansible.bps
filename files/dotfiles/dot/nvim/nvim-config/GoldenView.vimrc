"" Golden-View
"  let g:goldenview__enable_default_mapping = 0
"  let g:goldenview__enable_at_startup = 1
"" 1. split to tiled windows
"  nmap <silent> <C-w> <Plug>GoldenViewSplit
"  vmap <silent> <C-w> <Plug>GoldenViewSplit
"" 2. quickly switch current window with the main pane
"" and toggle back
"  map <silent> ,wm <Plug>GoldenViewSwitchMain
"  map <silent> ,wt <Plug>GoldenViewSwitchToggle
"" 3. jump to next and previous window
"  ""nmap <silent> <C-N>  <Plug>GoldenViewNext
"  ""nmap <silent> <C-P>  <Plug>GoldenViewPrevious
"  map <silent> ,wr <Plug>GoldenViewResize
"" Extra
"  nnoremap <C-w><C-z> <C-w><Bar><C-w>_
