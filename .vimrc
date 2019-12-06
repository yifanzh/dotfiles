set encoding=utf-8
call plug#begin('~/.vimplug/')
Plug 'tpope/vim-sensible'
Plug 'srstevenson/vim-picker'
Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-signify'
source ~/.config/locals/vimpluglocal
call plug#end()

" General settings
set hlsearch
set nocompatible
set showcmd
set showmode
set number
set backupcopy=yes
set mouse=a
set wildignorecase " ignore case when completing filenames and directories
set ignorecase " ignore case when searching (/)
set smartcase " unless search pattern includes uppercase character
set background=light
set cursorline
set foldmethod=syntax
set foldlevel=3

set splitbelow
set splitright


" Program editing
set textwidth=100
set colorcolumn=+1

set formatoptions+=orj
set formatoptions-=t
set smartindent

set softtabstop=4
set shiftwidth=4
set expandtab

set switchbuf=usetab
set completeopt-=preview

" Disable connection to X11
" If this is disabled, + and * won't work
" set clipboard=exclude:.*

" Key mapping
map j gj
map k gk

nnoremap <F2> za

inoremap <F5> <Esc>:tabprevious<CR>
nnoremap <F5> :tabprevious<CR>
inoremap <F6> <Esc>:tabnext<CR>
nnoremap <F6> :tabnext<CR>

nnoremap <CR> :noh<CR><CR>

if &diff
    set diffopt+=iwhite " diff mode
endif

if v:version >= 800
  set termguicolors
endif

let loaded_matchparen = 1
source ~/.config/locals/vimlocal
