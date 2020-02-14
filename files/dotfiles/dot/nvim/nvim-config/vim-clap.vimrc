let g:clap_theme = 'material_design_dark'
"nnoremap <Space><Space> :Clap<cr>
nnoremap <cr> :
nnoremap : :Clap<cr>
nnoremap <C-f> :Clap files<cr>
nnoremap <C-b> :Clap buffers<cr>
nnoremap g/ :Clap blines<cr>
nnoremap <C-_> :Clap grep<cr>
let g:clap_provider_cmake4vimtargets = {
      \ 'source': cmake4vim#GetAllTargets(),
      \ 'sink': function('cmake4vim#SelectTarget'),
      \ }
nnoremap <C-p> :Clap cmake4vimtargets<cr>
