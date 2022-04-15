set nocompatible
set number relativenumber
set t_Co=256
set autoindent
set shiftwidth=4
set hlsearch
set ignorecase
set cursorline
set title
set background=dark
set mouse=a

if (has('termguicolors'))
  set termguicolors
endif

syntax on

filetype off

call plug#begin()

Plug 'VundleVim/Vundle.vim'
Plug 'tpope/vim-fugitive'
Plug 'git://git.wincent.com/command-t.git'
Plug 'rstacruz/sparkup', {'rtp': 'vim/'}
Plug 'kaicataldo/material.vim', { 'branch': 'main' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/vim-easy-align'
Plug 'SirVer/ultisnips'
Plug 'scrooloose/nerdtree'
Plug 'kien/ctrlp.vim'
Plug 'bfrg/vim-cpp-modern'
Plug 'cespare/vim-toml', { 'branch': 'main' }
Plug 'rust-lang/rust.vim'
Plug 'derekwyatt/vim-scala'
Plug 'raimondi/delimitmate'

call plug#end()

filetype plugin indent on

let &packpath = &runtimepath

let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

let g:airline_left_sep           = '»'
let g:airline_left_sep           = '▶'
let g:airline_right_sep          = '«'
let g:airline_right_sep          = '◀'
let g:airline_symbols.linenr     = '␊'
let g:airline_symbols.linenr     = '␤'
let g:airline_symbols.linenr     = '¶'
let g:airline_symbols.branch     = '⎇'
let g:airline_symbols.paste      = 'ρ'
let g:airline_symbols.paste      = 'Þ'
let g:airline_symbols.paste      = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep         = ''
let g:airline_left_alt_sep     = ''
let g:airline_right_sep        = ''
let g:airline_right_alt_sep    = ''
let g:airline_symbols.branch   = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr   = ''

let g:material_theme_style = 'darker'
colorscheme material

xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
