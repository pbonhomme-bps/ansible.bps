"" System Settings  ----------------------------------------------------------{{{
"  set hidden
"  set noshowmode
"  set noswapfile
"  set wildmenu
"  set laststatus=2
"  set showtabline=2
"  set wildmode=longest:full,full
"  set nobackup
"  set timeoutlen=1000 ttimeoutlen=100
"  set nomodeline
"" }}}

" Display  ----------------------------------------------------------{{{
" Press <tab>, get two spaces
set expandtab shiftwidth=2
" Tabs
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
" Show `▸▸` for tabs: 	, `·` for tailing whitespace:
set list listchars=tab:▸▸,trail:·
" Enable mouse mode
set mouse=a
set nowrap
set formatoptions-=t " do not automatically wrap text when typing
" Use the system clipboard
set clipboard=unnamedplus
" Use a color column on the 80-character mark
set colorcolumn=80
" Text Width
set textwidth=80
" }}}

" Search  ----------------------------------------------------------{{{
set ignorecase smartcase
" }}}

" Cursor  ----------------------------------------------------------{{{
set cursorline cursorcolumn
" }}}

" Line Numbers  ----------------------------------------------------------{{{
set number relativenumber
"augroup numbertoggle
"  autocmd!
"  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
"  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
"augroup END
" }}}

" Terminal Settings  ----------------------------------------------------------{{{
  "command! -bar StartTerminal terminal<cr>
  "nnoremap <C-t> :StartTerminal|startinsert
  "nnoremap <C-t> :Tnew<cr>
" Allow hitting $Command$ to switch to normal mode
  tnoremap <C-]> <C-\><C-n>
  "tnoremap <C-b> <C-\><C-n>:Buffers<cr>
  "tnoremap <C-f> <C-\><C-n>:Files<cr>
  tnoremap <C-h> <C-\><C-n><C-w>h
  tnoremap <C-j> <C-\><C-n><C-w>j
  tnoremap <C-k> <C-\><C-n><C-w>k
  tnoremap <C-l> <C-\><C-n><C-w>l
  au BufEnter 'term://*' startinsert
" }}}

" Split Settings  ----------------------------------------------------------{{{
  set splitright
  set splitbelow
  nnoremap <C-J> <C-W><C-J>
  nnoremap <C-K> <C-W><C-K>
  nnoremap <C-L> <C-W><C-L>
  nnoremap <C-H> <C-W><C-H>
" }}}

" Misc Functions  ----------------------------------------------------------{{{
function! s:show_position()
      return ":\<c-u>echo 'start=" . string(getpos("v")) . " end=" . string(getpos(".")) . "'\<cr>gv"
endfunction
vmap <expr> ;j s:show_position()
" }}}
