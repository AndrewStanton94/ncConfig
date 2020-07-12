set encoding=utf-8
set nocompatible

" Spaces & Tabs {{{
filetype plugin indent on
set tabstop=4       " number of visual spaces per TAB
set softtabstop=4   " number of spaces in tab when editing
set shiftwidth=4    " number of spaces to use for autoindent
set noexpandtab     " tabs are space
" set autoindent
" set copyindent      " copy indent from the previous line
" }}} Spaces & Tabs

" Search {{{
set incsearch       " search as characters are entered
set hlsearch        " highlight matches
set ignorecase      " ignore case when searching
set smartcase       " ...as long as there's no capitals
set showmatch       " highlight matching brace
" }}}

" Leader & Mappings {{{

" edit/reload vimrc
nmap <leader>sv :so $MYVIMRC<CR>

" better ESC
inoremap jk <esc>

" move up/down consider wrapped lines
nnoremap j gj
nnoremap k gk

" fix indentation
nnoremap <leader>i mzgg=G`z<CR>

" turn off search highlights
nnoremap <leader><space> :nohlsearch<CR>

" move through grep results
nmap <silent> <right> :cnext<CR>
nmap <silent> <left> :cprev<CR>

" tabs
nnoremap <Tab> :tabnext<CR>

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

vnoremap > >gv
vnoremap < <gv

imap cll console.log()<Esc>==f(a
"}}}

" Plugins {{{
execute pathogen#infect()
" git clone https://github.com/leafOfTree/vim-vue-plugin --depth 1
" git clone https://tpope.io/vim/commentary.git
" git clone https://tpope.io/vim/surround.git
" git clone https://tpope.io/vim/repeat.git
" git clone https://github.com/preservim/nerdtree.git ~/.vim/bundle/nerdtree
" git clone https://github.com/airblade/vim-gitgutter.git

map <C-n> :NERDTreeToggle<CR>
autocmd StdinReadPre * let s:std_in=1
" Open if no files specified
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '-'

let g:ctrlp_cmd = 'CtrlPMixed'
" Plugins }}}

" UI Config {{{
set hidden
set number                   " show line number
set relativenumber
set showcmd                  " show command in bottom bar
set cursorline               " highlight current line

set listchars=eol:$,tab:>\ ,trail:~,extends:>,precedes:<,nbsp:☠
set list

set wildmenu                 " visual autocomplete for command menu
set wildmode=list:longest
set laststatus=2             " window will always have a status line
let &colorcolumn="80,".join(range(119,999),",")

set scrolloff=3
" }}} UI Config

" Colors {{{
set t_Co=256
syntax enable                " enable syntax processing
set background=dark

let g:gruvbox_material_background = 'hard'
let g:gruvbox_material_palette = 'original'
colorscheme gruvbox-material
" }}} Colors

" vim: set sts=2 fdm=marker fmr={{{,}}}:
