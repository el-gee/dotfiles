" begin plugins
call plug#begin()
Plug 'elzr/vim-json'
Plug 'pangloss/vim-javascript'
Plug 'benekastah/neomake'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-surround'
Plug 'Shougo/deoplete.nvim'
Plug 'scrooloose/nerdtree'
Plug 'nvie/vim-flake8'
Plug 'airblade/vim-gitgutter'
Plug 'zchee/deoplete-jedi'
call plug#end()

" ###### vim options ##########
set ignorecase "ignore case in search
set smartcase "unless case has upper, then be exact
set magic "make characters have the same meaning as in grep
set showmatch "show matching brackets () etc..
set wrap "soft wrap long lines
set number "line numbers on
set relativenumber "relative line nums
set expandtab "tabs are spaces
set noshowmode "don't show mode, lightline does it
"syntax enable
"let $NVIM_TUI_ENABLE_TRUE_COLOR=1
"set background=dark
"colorscheme Spacedust


" ###### plugin options ##########
"autocmd vimenter * NERDTree
"set termguicolors
map <C-n> :NERDTreeToggle<CR>
autocmd! BufWritePost * Neomake
let g:deoplete#enable_at_startup = 1
let g:airline_theme = 'molokai'
