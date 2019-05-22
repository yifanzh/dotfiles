call plug#begin('~/.vimplug/nvim')
Plug 'vim-airline/vim-airline'
Plug 'morhetz/gruvbox'
source ~/.pluglocal
call plug#end()

" General settings
set number
set mouse=a

nnoremap <CR> :noh<CR><CR>

" Program editing
set softtabstop=4
set shiftwidth=4
set expandtab
set formatoptions-=t

" Key mapping
map j gj
map k gk
" nmap <F3> a<C-R>=strftime("%A %Y-%m-%d %H:%M:%S")<CR><Esc>
" imap <F3> <C-R>=strftime("%A %Y-%m-%d %H:%M:%S")<CR>
nnoremap <F2> za
inoremap <F2> <Esc>zai
nnoremap <F3> zA
nnoremap <F4> zi
inoremap <F4> <Esc>zi

inoremap <F5> <Esc>:tabprevious<CR>
nnoremap <F5> :tabprevious<CR>
inoremap <F6> <Esc>:tabnext<CR>
nnoremap <F6> :tabnext<CR>
inoremap <F7> =system("cite")<CR>

set pastetoggle=<F9>

if &diff
    set diffopt+=iwhite " diff mode
endif

if v:version >= 800
  set termguicolors
endif

source ~/.localrc
