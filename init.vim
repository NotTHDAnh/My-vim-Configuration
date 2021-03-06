"
"█▀▄ ▄▀█ █▄░█ █▀▀   ▄▀█ █▄░█ █░█
"█▄▀ █▀█ █░▀█ █▄█   █▀█ █░▀█ █▀█
"
"==================================

call plug#begin('~/plugged')

Plug 'tpope/vim-commentary'
Plug 'andweeb/presence.nvim'
Plug 'catppuccin/nvim', {'as': 'catppuccin'}
Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}
Plug 'preservim/nerdtree'
Plug 'Erichain/vim-monokai-pro'
Plug 'aluriak/nerdcommenter'
Plug 'joshdick/onedark.vim'
Plug 'sheerun/vim-polyglot'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'
Plug 'Raimondi/delimitMate'
Plug 'vim-airline/vim-airline'
Plug 'vim-syntastic/syntastic'
Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline-themes'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'preservim/nerdcommenter'
"Plug 'ervandew/supertab'

call plug#end()


syntax on

filetype plugin on

let mapleader = "-"
let maplocalleader = "\\"

"split navigations
nnoremap <C-B> :w <bar> :!g++ -Wall % -o a <Cr> 
nnoremap <C-Y> :%y+ <Cr>
nnoremap <C-Q> :e ~/Appdata/Local/nvim/init.vim <Cr>
"for linux
"nnoremap <C-Q> :e ~/.config/nvim/init.vim
nnoremap <C-D> :e code/a.cpp <Cr>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

set splitbelow
set splitright

" Enable folding
set foldmethod=indent
set foldlevel=99

au BufNewFile,BufRead *.py,*.java,*.cpp,*.c,*.cs,*.rkt,*.h,*.html
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=120 |
    \ set expandtab |
    \ set autoindent |
    \ set smartindent |
    \ set fileformat=unix |
    \ set autoindent |

set encoding=utf-8

" air-line
let g:airline_powerline_fonts = 1
let g:airline_theme = 'onedark'
let g:airline#extensions#tabline#enabled = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

highlight Comment cterm=italic gui=italic

nnoremap ; :
:command W w
:command WQ wq
:command Wq wq
:command Q q
:command Qa qa
:command QA qa

set laststatus=2
set mouse=a
" set showtabline=2

" true colours
set background=dark
set t_Co=256

if (has("nvim"))
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

if (has("termguicolors"))
  set termguicolors
endif

colorscheme catppuccin

set nu rnu " relative line numbering
set clipboard=unnamed " public copy/paste register
set ruler
set showcmd
set noswapfile " doesn't create swap files
set noshowmode
set shortmess+=c
set omnifunc=syntaxcomplete#Complete

set backspace=indent,eol,start " let backspace delete over lines
set autoindent " enable auto indentation of lines
set smartindent " allow vim to best-effort guess the indentation
set pastetoggle=<F2> " enable paste mode

set wildmenu "graphical auto complete menu
set lazyredraw "redraws the screne when it needs to
set showmatch "highlights matching brackets
set incsearch "search as characters are entered
set hlsearch "highlights matching searches


"Nerd tree
nnoremap <f5> :NERDTreeToggle <Cr>
