call plug#begin('~/plugged')

Plug 'svrana/neosolarized.nvim'
Plug 'nvim-tree/nvim-web-devicons' " Recommended (for coloured icons)
Plug 'ryanoasis/vim-devicons' "Icons without colours
Plug 'sainnhe/everforest'
Plug 'akinsho/bufferline.nvim', { 'tag': 'v3.*' }
Plug 'tiagovla/tokyodark.nvim'
Plug 'sonph/onehalf'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'dense-analysis/ale'
Plug 'ayu-theme/ayu-vim'
Plug 'honza/vim-snippets'
Plug 'nvim-tree/nvim-web-devicons'
Plug 'joshdick/onedark.vim'
Plug 'frazrepo/vim-rainbow'
Plug 'sainnhe/sonokai'
Plug 'Mofiqul/vscode.nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'jiangmiao/auto-pairs'
Plug 'numToStr/Comment.nvim'
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'sheerun/vim-polyglot'
Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}
Plug 'voldikss/vim-floaterm'

call plug#end()

autocmd vimEnter *.cpp nnoremap <c-b> :w <Cr> :!g++ -Wall % -o a<Cr>

au BufNewFIle, BufRead *.cpp
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=120 |
    \ set expandtab |
    \ set autoindent |
    \ set smartindent |
    \ set fileformat=unix |
    \ set autoindent |
au FileType cpp call rainbow#load()

cd d:/code

syntax on

set number
set relativenumber
set autoindent
set smartindent
set background=light
set t_Co=256
set guifont=Fixedsys:h14
set noundofile

set hidden
set nowrap
set ruler
set showcmd
set noswapfile
set shortmess+=c
set omnifunc=syntaxcomplete#Complete

set wildmenu
set showmatch
set incsearch
set hlsearch
set termguicolors

set encoding=UTF-8

set splitbelow
set splitright

set tabstop=4
set shiftwidth=4

nnoremap ; :
:command W w
:command E e
:command WQ wq
:command Wq wq
:command Q q
:command Qa qa
:command QA qa

" mapping
map <C-P> :e ~/.vimrc<Cr>
nnoremap <c-b> :w <cr> :!g++ -Wall % -o %:r && %:r.exe<cr> 
nnoremap <C-y> :%y+ <Cr>

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" Close the tab if NERDTree is the only window remaining in it.
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
autocmd BufReadPost * tab ball
