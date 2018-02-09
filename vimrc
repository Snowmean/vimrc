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
set completeopt-=preview
set mouse=a
set clipboard=unnamedplus
set spell spelllang=en_us
set nolist wrap linebreak breakat&vim
set backspace=indent,eol,start

" Syntax support
filetype plugin indent on
syntax on
highlight SpellBad ctermbg=DarkBlue
set list listchars=tab:→\ ,trail:·

" Keys remapping
nnoremap <Leader>q" ciw""<Esc>P
nnoremap <Leader>q' ciw''<Esc>P
nnoremap <Leader>ca :ThesaurusQueryReplaceCurrentWord<CR>
cmap W w ! sudo tee %
cmap C w ! /usr/bin/xsel -b -i
" cmap C w ! /usr/bin/pbcopy

" Completion menu setup
inoremap <expr> <Down>     pumvisible() ? "\<C-n>" : "\<Down>"
inoremap <expr> <Up>       pumvisible() ? "\<C-p>" : "\<Up>"
inoremap <expr> <CR>       pumvisible() ? "\<C-y>" : "\<CR>"

" Plugins section
call plug#begin('~/.vim/plugged')

" Plugins list
Plug 'maralla/completor.vim'
inoremap <expr> <Tab>      pumvisible() ? "<C-N>" : "<C-R>=completor#do('complete')<CR>"

Plug 'jiangmiao/auto-pairs'

" NERDTree plugin and Config
Plug 'scrooloose/nerdtree'
let NERDTreeChDirMode=2
map <F3> :NERDTreeToggle<CR>

Plug 'terryma/vim-multiple-cursors'
Plug 'ron89/thesaurus_query.vim'

" Grammarous
Plug 'rhysd/vim-grammarous'
let g:grammarous#hooks = {}
let g:grammarous#languagetool_cmd = 'languagetool'

" Snippets Plugins and Config
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
let g:UltiSnipsEditSplit='vertical'
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
"let g:UltiSnipsJumpBackwardTrigger="<c-tab>"
let g:UltiSnipsSnippetDirectories=["custom_snippets", "plugged/vim-snippets/UltiSnips"]

call plug#end()
