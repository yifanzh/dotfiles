set encoding=utf-8
call plug#begin('~/.vimplug/')
Plug 'tpope/vim-sensible'
Plug 'Osse/vim-picker'
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-fugitive'
Plug 'dag/vim-fish'
Plug 'tpope/vim-commentary'
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

" Key mapping
map j gj
map k gk

nnoremap <F2> za

inoremap <F5> <Esc>:tabprevious<CR>
nnoremap <F5> :tabprevious<CR>
inoremap <F6> <Esc>:tabnext<CR>
nnoremap <F6> :tabnext<CR>

nnoremap <CR> :noh<CR><CR>

if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

let loaded_matchparen = 1

nmap <c-n> <Plug>(PickerEdit)
nmap <c-p> <Plug>(PickerBuffer)

