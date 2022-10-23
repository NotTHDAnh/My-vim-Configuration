" ____                                 ______          __         
"/\  _`\                              /\  _  \        /\ \        
"\ \ \/\ \     __      ___      __    \ \ \L\ \    ___\ \ \___    
" \ \ \ \ \  /'__`\  /' _ `\  /'_ `\   \ \  __ \ /' _ `\ \  _ `\  
"  \ \ \_\ \/\ \L\.\_/\ \/\ \/\ \L\ \   \ \ \/\ \/\ \/\ \ \ \ \ \ 
"   \ \____/\ \__/.\_\ \_\ \_\ \____ \   \ \_\ \_\ \_\ \_\ \_\ \_\
"    \/___/  \/__/\/_/\/_/\/_/\/___L\ \   \/_/\/_/\/_/\/_/\/_/\/_/
"                               /\____/                           
"                               \_/__/                            

call plug#begin('~/plugged')
"{Plug '907th/vim-auto-save'
    Plug 'Shatur/neovim-ayu'
    Plug 'sainnhe/sonokai'
    Plug 'connorholyday/vim-snazzy'
    Plug 'MeF0504/vim-pets'
    Plug 'murtaza-u/ez.nvim'
    Plug 'edluffy/hologram.nvim'
    Plug 'mangeshrex/everblush.vim'
    Plug 'larsbs/vimterial_dark'
    Plug 'lambdalisue/battery.vim'
    Plug 'safv12/andromeda.vim'
    Plug 'akinsho/toggleterm.nvim', {'tag' : 'v2.*'}
    Plug 'nvim-lua/plenary.nvim'
    Plug 'p00f/cphelper.nvim'
    Plug 'ghifarit53/tokyonight-vim'
    Plug 'ryanoasis/vim-devicons'
    Plug 'folke/tokyonight.nvim'
    Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
    Plug 'manuelschiller/vim'
    Plug 'Rigellute/shades-of-purple.vim'
    Plug 'stillwwater/vim-nebula'
    Plug 'voldikss/vim-floaterm'
    Plug 'SirVer/ultisnips'
    Plug 'tpope/vim-commentary'
    Plug 'honza/vim-snippets'
    Plug 'andweeb/presence.nvim'
    Plug 'joshdick/onedark.vim'
    "Plug 'catppuccin/nvim', {'as': 'catppuccin'}
    Plug 'sheerun/vim-polyglot'
    Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}
    Plug 'dracula/vim'
    Plug 'preservim/nerdtree'
    Plug 'Erichain/vim-monokai-pro'
    Plug 'jiangmiao/auto-pairs'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-syntastic/syntastic'
    "Plug 'cj/vim-webdevicons'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'tc50cal/vim-terminal'
    Plug 'Raimondi/delimitMate'
    Plug 'rafi/awesome-vim-colorschemes'
    Plug 'preservim/nerdcommenter'
    Plug 'tpope/vim-surround'
"Plug 'ervandew/supertab}'

call plug#end()


syntax on

filetype plugin on

let mapleader = "-"
let maplocalleader = "\\"

"split navigations
nnoremap <C-B> :w <bar> :!g++ -Wall % -o a <Cr>
nnoremap <C-Y> :%y+ <Cr>
nnoremap <C-C> <Esc>
"Linux
nnoremap <C-Q> :e ~/.config/nvim/init.vim <Cr>
"Windows
"nnoremap <C-Q> :e ~/Appdata/Local/nvim/init.vim <Cr>
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

set encoding=UTF-8

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

" air-line
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

" unicode symbols
let g:airline_left_sep = '◤'
let g:airline_left_sep = '◤'
let g:airline_right_sep = '◢'
let g:airline_right_sep = '◢'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = '◤'
let g:airline_left_alt_sep = '◤'
let g:airline_right_sep = '◢'
let g:airline_right_alt_sep = '◢'
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

nnoremap ; :
:command W w
:command WQ wq
:command Wq wq
:command Q q
:command Qa qa
:command QA qa

set laststatus=2
set mouse=a
set showtabline=2

" true colours
colorscheme sonokai
set background=dark
set t_Co=256

if (has("nvim"))
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

if (has("termguicolors"))
  set termguicolors
endif


"autocmd TextChanged,TextChangedI <buffer> silent write
set nu rnu
" augroup numbertoggle
"     autocmd!
"     autocmd BufEnter,FocusGained,InsertLeave * set rnu
"     autocmd BufLeave,FocusLost,InsertEnter * set nornu
" augroup END

"set clipboard=unnamed " public copy/paste register
set ruler
set showcmd
set noswapfile " doesn't create swap files
set noshowmode
set shortmess+=c
set omnifunc=syntaxcomplete#Complete

set backspace=indent,eol,start " let backspace delete over lines
set autoindent " enabl auto indentation of lines
set smartindent " allow vim to best-effort guess the indentation
set pastetoggle=<F2> " enable paste mode

set wildmenu "graphical auto complete menu
set lazyredraw "redraws the screne when it needs to
set showmatch "highlights matching brackets
set incsearch "search as characters are entered
set hlsearch "highlights matching searches

"Nerd tree
nnoremap <f5> :NERDTreeToggle <Cr>
" Start NERDTree, unless a file or session is specified, eg. vim -S session_file.vim.
autocmd StdinReadPre * let s:std_in=1
set statusline=...%{battery#component()}...
set tabline=...%{battery#component()}...
let g:WebDevIconsDisableDefaultFolderSymbolColorFromNERDTreeDir = 1
let g:WebDevIconsDisableDefaultFileSymbolColorFromNERDTreeFile = 1
let g:battery#update_tabline = 1    " For tabline.
let g:battery#update_statusline = 1 " For statusline.
let g:airline_theme='sonokai'
set t_RV=
" Start NERDTree. If a file is specified, move the cursor to its window.
autocmd StdinReadPre * let s:std_in=1
highlight iCursor guifg=white guibg=steelblue
