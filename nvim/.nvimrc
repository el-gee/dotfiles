" begin plugins
call plug#begin()
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-surround'
Plug 'Shougo/deoplete.nvim'
Plug 'scrooloose/nerdtree'
Plug 'airblade/vim-gitgutter'
Plug 'zchee/deoplete-jedi'
Plug 'benekastah/neomake'
Plug 'nvie/vim-flake8'
Plug 'elzr/vim-json'
Plug 'pangloss/vim-javascript'
Plug 'PProvost/vim-ps1'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'tpope/vim-repeat',
Plug 'morhetz/gruvbox',
Plug 'tmux-plugins/vim-tmux'
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
set termguicolors
"colorscheme Spacedust
colorscheme gruvbox
set background=dark
set tabstop=4
set shiftwidth=4

" ###### plugin options ##########
"autocmd vimenter * NERDTree
map <C-n> :NERDTreeToggle<CR>
autocmd! BufWritePost * Neomake
let g:deoplete#enable_at_startup = 1
let g:airline_theme = 'gruvbox'
let g:gruvbox_contrast_dark = 'hard'

" FZF
function! s:fzf_statusline()
  " Override statusline as you like
  highlight fzf1 ctermfg=161 ctermbg=251
  highlight fzf2 ctermfg=23 ctermbg=251
  highlight fzf3 ctermfg=237 ctermbg=251
  setlocal statusline=%#fzf1#\ >\ %#fzf2#fz%#fzf3#f
endfunction

autocmd! User FzfStatusLine call <SID>fzf_statusline()
