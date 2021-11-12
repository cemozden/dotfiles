set number
set runtimepath^=~/.vim runtimepath+=~/.vim/after
set mouse=a
set autoindent
set shiftwidth=4
set hlsearch
set ignorecase
set cursorline
set title
set background=dark
set history=1000
set termguicolors

if (has("nvim"))
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

if (has("termguicolors"))
  set termguicolors
endif


call plug#begin()

Plug 'vim-airline/vim-airline'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'ixru/nvim-markdown'
Plug 'tpope/vim-fugitive'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'cespare/vim-toml', { 'branch': 'main' }
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'sainnhe/edge'
Plug 'arzg/vim-colors-xcode'
Plug 'morhetz/gruvbox'

call plug#end()

syntax on

let &packpath = &runtimepath

inoremap {      {}<Left>
inoremap {<CR>  {<CR>}<Esc>O
inoremap {{     {
inoremap {}     {}

source ~/.vimrc

set background=dark
colorscheme gruvbox

lua require('nvimtree')
