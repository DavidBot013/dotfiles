set termguicolors
set number

call plug#begin('~/.config/nvim/plugged')
" Temas "
Plug 'morhetz/gruvbox'
Plug 'whatyouhide/vim-gotham'
Plug 'AlessandroYorba/Alduin'
Plug 'cocopon/iceberg.vim'
" Navegador de archivos "
Plug 'scrooloose/nerdtree'
" Tags "
Plug 'ludovicchabant/vim-gutentags'
" Lightline (barra de estado) "
Plug 'itchyny/lightline.vim'
" Comentarios "
Plug 'tpope/vim-commentary'

call plug#end()
" <leader> key
let mapleader = "ñ" 
" Generar tags cada vez que se guarde un archivo .php
" au BufWritePost *.php silent! !eval '[ -f "".git/hooks/ctags"" ] && .git/hooks/ctags' & 

" configuración de lightline (barra de estado)
let g:lightline = {
	\ 'colorscheme': 'seoul256',
	\}

" configuración gruvbox
colorscheme gruvbox
set background=dark
" Configuración de ultisnips
" Keybind para abrir el navegador cuando se presiona <leader> y 'q'
" mientras se este en el modo normal.
nmap <leader>q :NERDTreeToggle<CR>
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
