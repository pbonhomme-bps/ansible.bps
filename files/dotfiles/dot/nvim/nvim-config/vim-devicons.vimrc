  set encoding=utf8
" adding to vim-airline's tabline 
  let g:webdevicons_enable_airline_tabline = 1
" adding to vim-airline's statusline 
  let g:webdevicons_enable_airline_statusline = 1
" for vim-startify
  let entry_format = "'   ['. index .']'. repeat(' ', (3 - strlen(index)))"
  if exists('*WebDevIconsGetFileTypeSymbol')  " support for vim-devicons
    let entry_format .= ". WebDevIconsGetFileTypeSymbol(entry_path) .' '.  entry_path"
  else
    let entry_format .= '. entry_path'
  endif
