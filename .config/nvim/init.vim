set termguicolors
set number

call plug#begin('~/.config/nvim/plugged')
Plug 'morhetz/gruvbox'

Plug 'scrooloose/nerdtree'
Plug 'ludovicchabant/vim-gutentags'
Plug 'itchyny/lightline.vim'
Plug 'Shougo/deoplete.vim', { 'do': ':UpdateRemotePlugins'} | Plug 'roxma/nvim-yarp'
Plug 'dense-analysis/ale'
Plug 'tpope/vim-commentary'
Plug 'StanAngeloff/php.vim'
call plug#end()
" <leader> key
let mapleader = "ñ" 
" Generar tags cada vez que se guarde un archivo .php
au BufWritePost *.php silent! !eval '[ -f ".git/hooks/ctags" ] && .git/hooks/ctags' & 

" configuración de lightline (barra de estado)
let g:lightline = {
	\ 'colorscheme': 'seoul256',
	\}

" configuración gruvbox
colo gruvbox
set background=dark
" Configuración de ultisnips
" Keybind para abrir el navegador cuando se presiona <leader> y 'q'
" mientras se este en el modo normal.
nmap <leader>q :NERDTreeToggle<CR>
"conf deoplete
let g:deoplete#enable_at_startup=1
" Configuración general dedded

" insertar espacios cuando se presiona TAB
set expandtab
set tabstop=4
set shiftwidth=4
set autoindent
set smartindent

"show a ruler with line number
set ruler

" autoclosing brackets
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>

autocmd FileType php set omnifunc=phpcomplete#CompletePHP
