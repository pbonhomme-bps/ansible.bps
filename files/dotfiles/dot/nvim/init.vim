" Python Host Version
let g:python_host_prog  = '$HOME/.pyenv/versions/neovim2/bin/python'
let g:python3_host_prog  = '$HOME/.pyenv/versions/neovim3/bin/python3'
" VTE Workaround
"set guicursor=
" Specify a directory for plugins (for Neovim: ~/.local/share/nvim/plugged)
call plug#begin('~/.local/share/nvim/plugged')
  " Plugins
  Plug 'liuchengxu/vim-which-key'
 " Plug 'lifepillar/vim-solarized8'
  Plug 'iCyMind/NeoSolarized'
  " Needed Before Devicons ---------------------------------------------
  Plug 'mhinz/vim-startify'
  "Plug 'vim-ctrlspace/vim-ctrlspace'
  Plug 'vim-airline/vim-airline' | Plug 'vim-airline/vim-airline-themes'
  "Plug 'zefei/vim-wintabs' | Plug 'zefei/vim-wintabs-powerline'
  " --------------------------------------------------------------------
  Plug 'ryanoasis/vim-devicons'
  " --------------------------------------------------------------------
  "Plug 'jceb/vim-orgmode'
  "Plug 'tpope/vim-surround'
  "Plug 'tpope/vim-unimpaired'
  Plug 'tpope/vim-dispatch' | Plug 'radenling/vim-dispatch-neovim'
  Plug 'machakann/vim-sandwich'
  Plug 'jeffkreeftmeijer/vim-numbertoggle'
  "Plug 'lambdalisue/gina.vim'
  Plug 'haya14busa/incsearch.vim'| Plug 'haya14busa/incsearch-fuzzy.vim'
  "Plug 'justinmk/vim-sneak'
  Plug 'rhysd/clever-f.vim'
  "Plug 'zhaocai/GoldenView.Vim'
  Plug 'simeji/winresizer'
  Plug 'vimlab/split-term.vim'
  Plug 'kassio/neoterm'
  Plug 'Lenovsky/nuake'
  "Plug 'rbgrouleff/bclose.vim' | Plug 'francoiscabrol/ranger.vim'
  "Plug 'Valloric/YouCompleteMe', { 'do': './install.py --clangd-completer' }
  Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
  Plug 'neomake/neomake'
  Plug 'mhinz/vim-signify'
  " Language Server Protocol/C++ -----------------------------------------------
  Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
  "Plug 'sakhnik/nvim-gdb', { 'do': ':!./install.sh \| UpdateRemotePlugins' }
  Plug 'liuchengxu/vista.vim'
  Plug 'jackguo380/vim-lsp-cxx-highlight'
  Plug 'ilyachur/cmake4vim'
  Plug 'pboettch/vim-cmake-syntax'
  " Debugger UI -----------------------------------------------
  Plug 'puremourning/vimspector', {'do': './install_gadget.py --enable-c'}
  " Selection UI -----------------------------------------------
  "Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  Plug 'junegunn/fzf.vim'
  Plug 'liuchengxu/vim-clap', { 'do': ':Clap install-binary' }
  Plug 'Shougo/denite.nvim', { 'do': ':UpdateRemotePlugins' }
  Plug 'neoclide/coc-denite'
  " Syntax Highlighting -----------------------------------------------
  Plug 'vim-scripts/bnf.vim'
  Plug 'vim-scripts/ebnf.vim'
  " Unit Testing -----------------------------------------------
  Plug 'janko/vim-test'
  " Ansible -----------------------------------------------
  Plug 'pearofducks/ansible-vim'
  " Initialize plugin system
call plug#end()
source $HOME/.config/nvim/plugins.vim
source $HOME/.config/nvim/general.vim
