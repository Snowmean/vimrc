" Basic setups
set tabstop=4
set shiftwidth=4
set expandtab
set smarttab
set showcmd
set number
set ignorecase
set smartcase
set incsearch
set hlsearch
set background=dark
set wildmenu
set scrolloff=8
set showtabline=2
set nocompatible
set dir=/tmp
set foldenable
set foldmethod=syntax
set foldlevelstart=99
" Syntax support
filetype plugin indent on
syntax on
colorscheme desert
set list listchars=tab:→\ ,trail:·
" Keys remapping
nnoremap <C-S-tab> :tabprevious<CR>
nnoremap <C-tab>   :tabnext<CR>
nnoremap <C-A-t>     :tabnew<CR>
cmap W w ! sudo tee %

" Plugins section
call plug#begin('~/.vim/plugged')
" Plugins list
Plug 'Shougo/neocomplete.vim'
let g:neocomplete#enable_at_startup = 1

Plug 'tpope/vim-fugitive'
Plug 'jiangmiao/auto-pairs'

" NERDTree plugin and Config
Plug 'scrooloose/nerdtree'
let NERDTreeChDirMode=2
map <F3> :NERDTreeToggle<CR>

Plug 'vim-ruby/vim-ruby'
Plug 'puppetlabs/puppet-syntax-vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'easymotion/vim-easymotion'

" Snippets Plugins and Config
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

call plug#end()
