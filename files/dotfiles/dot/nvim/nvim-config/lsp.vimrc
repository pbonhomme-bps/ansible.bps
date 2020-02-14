"" Basic
"" Required for operations modifying multiple buffers like rename.
"set hidden
"" ccls
"" also see https://github.com/autozimu/LanguageClient-neovim/wiki/ccls
"let s:ccls_settings = {
"         \ 'highlight': { 'lsRanges' : v:true },
"         \ }
"
"let s:ccls_command = ['ccls', '-init=' . json_encode(s:ccls_settings)]
"let g:LanguageClient_serverCommands = {
"    \ 'rust': ['rustup', 'run', 'stable', 'rls'],
"    \ 'python': ['pyls'],
"    \ 'haskell': ['hie'],
"    \ 'c': s:ccls_command,
"    \ 'cpp': s:ccls_command,
"    \ 'hpp': s:ccls_command,
"    \ 'objc': s:ccls_command,
"    \ }
"" Keybindings
"nnoremap <F5> :call LanguageClient_contextMenu()<CR>
""nn <silent> <C-[> :call LanguageClient#textDocument_definition()<cr>
""nn <silent> <C-p> :call LanguageClient#textDocument_references({'includeDeclaration': v:false})<cr>
"function SetLSPShortcuts()
"  nnoremap <silent> <C-]> :call LanguageClient#textDocument_definition()<CR>
"  nnoremap <leader>lr :call LanguageClient#textDocument_rename()<CR>
"  nnoremap <leader>lf :call LanguageClient#textDocument_formatting()<CR>
"  nnoremap <leader>lt :call LanguageClient#textDocument_typeDefinition()<CR>
"  nnoremap <silent> <C-[> :call LanguageClient#textDocument_references()<CR>
"  nnoremap <leader>la :call LanguageClient_workspace_applyEdit()<CR>
"  nnoremap <leader>lc :call LanguageClient#textDocument_completion()<CR>
"  nnoremap <leader>lh :call LanguageClient#textDocument_hover()<CR>
"  "nnoremap <silent> <C-_> :call LanguageClient#workspace_symbol()<CR>
"  "nnoremap <silent> <C-_> :call LanguageClient#textDocument_documentSymbol()<CR>
"  nnoremap <leader>lm :call LanguageClient_contextMenu()<CR>
"endfunction()
"
"augroup LSP
"  autocmd!
"  autocmd FileType cpp,c,rust,python,haskell call SetLSPShortcuts()
"augroup END
"" Cross Referencing
"" bases
"nn <silent> xb :call LanguageClient#findLocations({'method':'$ccls/inheritance'})<cr>
"" bases of up to 3 levels
"nn <silent> xB :call LanguageClient#findLocations({'method':'$ccls/inheritance','levels':3})<cr>
"" derived
"nn <silent> xd :call LanguageClient#findLocations({'method':'$ccls/inheritance','derived':v:true})<cr>
"" derived of up to 3 levels
"nn <silent> xD :call LanguageClient#findLocations({'method':'$ccls/inheritance','derived':v:true,'levels':3})<cr>
"" caller
"nn <silent> xc :call LanguageClient#findLocations({'method':'$ccls/call'})<cr>
"" callee
"nn <silent> xC :call LanguageClient#findLocations({'method':'$ccls/call','callee':v:true})<cr>
"" $ccls/member
"" nested classes / types in a namespace
"nn <silent> xs :call LanguageClient#findLocations({'method':'$ccls/member','kind':2})<cr>
"" member functions / functions in a namespace
"nn <silent> xf :call LanguageClient#findLocations({'method':'$ccls/member','kind':3})<cr>
"" member variables / variables in a namespace
"nn <silent> xm :call LanguageClient#findLocations({'method':'$ccls/member'})<cr>
"nn xx x
"" CCLS Navigation
"nn <silent> xh :call LanguageClient#findLocations({'method':'$ccls/navigate','direction':'L'})<cr>
"nn <silent> xj :call LanguageClient#findLocations({'method':'$ccls/navigate','direction':'D'})<cr>
"nn <silent> xk :call LanguageClient#findLocations({'method':'$ccls/navigate','direction':'U'})<cr>
"nn <silent> xl :call LanguageClient#findLocations({'method':'$ccls/navigate','direction':'R'})<cr>
"" Colors/Highlighting
"augroup LanguageClient_config
"  au!
"  au BufEnter * let b:Plugin_LanguageClient_started = 0
"  au User LanguageClientStarted setl signcolumn=yes
"  au User LanguageClientStarted let b:Plugin_LanguageClient_started = 1
"  au User LanguageClientStopped setl signcolumn=auto
"  au User LanguageClientStopped let b:Plugin_LanguageClient_started = 0
"  au CursorMoved * if b:Plugin_LanguageClient_started | sil call LanguageClient#textDocument_documentHighlight() | endif
"augroup END
"" Formatting
"fu! C_init()
"  setl formatexpr=LanguageClient#textDocument_rangeFormatting()
"endf
"au FileType c,cpp,cuda,objc :call C_init()
"" Enable Deoplete
"let g:deoplete#enable_at_startup = 1
