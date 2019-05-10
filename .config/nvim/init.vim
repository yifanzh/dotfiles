call plug#begin('~/.vimplug/nvim')
Plug 'vim-airline/vim-airline'
Plug 'morhetz/gruvbox'
source ~/.localnvim
call plug#end()

" General settings
set hlsearch
set ruler
set showcmd
set showmode
set number
set incsearch
set backupcopy=yes
set history=50
set backspace=indent,eol,start
set statusline=[%02n]\ %f\ %(\[%M%R%H]%)%=\ %4l,%02c%2V\ %P%*
set laststatus=2
set mouse=a
set modeline
set modelines=5
set wildignorecase " ignore case when completing filenames and directories
set background=dark

"highlight Pmenu ctermbg=blue ctermfg=white
"highlight PmenuSel ctermbg=white ctermfg=black
nnoremap <CR> :noh<CR><CR>

" Program editing
set foldmethod=syntax
set nofoldenable
set textwidth=80
set formatoptions+=orj
set autoindent
set smartindent

set softtabstop=2
set shiftwidth=2
set expandtab

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

map <MiddleMouse> <Nop>
map <2-MiddleMouse> <Nop>
map <3-MiddleMouse> <Nop>
map <4-MiddleMouse> <Nop>
imap <MiddleMouse> <Nop>
imap <2-MiddleMouse> <Nop>
imap <3-MiddleMouse> <Nop>
imap <4-MiddleMouse> <Nop>

if &diff
    set diffopt+=iwhite " diff mode
endif

if v:version >= 800
  set termguicolors
endif

"au BufRead,BufNewFile *.sqC set filetype=cpp
"au BufRead,BufNewFile *.sqc set filetype=c
"au FileType gnuplot setlocal fo-=t fo-=a

source ~/.localrc
