" General settings
syntax on
if &t_Co > 2 || has('gui_running')
   colorscheme solarized
endif

set hlsearch
set nocompatible
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

if has('gui_running')
   set lines=37
   set columns=140
   set guifont=Consolas:h11
endif

highlight Pmenu ctermbg=blue ctermfg=white
highlight PmenuSel ctermbg=white ctermfg=black
set pastetoggle=<F4>
nnoremap <CR> :noh<CR><CR>

" Program editing
set foldmethod=marker
set textwidth=80
set formatoptions=cqwn
set cindent
set autoindent

set softtabstop=4
set shiftwidth=4
set expandtab

" Key mapping
map j gj
map k gk
nmap <F3> a<C-R>=strftime("%A %Y-%m-%d %H:%M:%S")<CR><Esc>
imap <F3> <C-R>=strftime("%A %Y-%m-%d %H:%M:%S")<CR>
nmap <F2> za
imap <F2> <Esc>zai

map <MiddleMouse> <Nop>
map <2-MiddleMouse> <Nop>
map <3-MiddleMouse> <Nop>
map <4-MiddleMouse> <Nop>
imap <MiddleMouse> <Nop>
imap <2-MiddleMouse> <Nop>
imap <3-MiddleMouse> <Nop>
imap <4-MiddleMouse> <Nop>

au BufRead,BufNewFile *.sqC set filetype=cpp
au BufRead,BufNewFile *.sqc set filetype=c

source ~/.localrc
