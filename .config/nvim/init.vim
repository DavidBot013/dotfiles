set termguicolors
set number

call plug#begin('~/.config/nvim/plugged')
Plug 'morhetz/gruvbox'

Plug 'scrooloose/nerdtree'
Plug 'ludovicchabant/vim-gutentags'
Plug 'itchyny/lightline.vim'
Plug 'SirVer/ultisnips' | Plug 'phux/vim-snippets' 
Plug 'ncm2/ncm2' |Plug 'roxma/nvim-yarp'
Plug 'phpactor/phpactor', {'for': 'php', 'do': 'composer install'}
Plug 'phpactor/ncm2-phpactor', {'for': 'php'}
Plug 'ncm2/ncm2-ultisnips'
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
let g:UltiSnipsExpandTrigger="<c-s>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-b>"

" PHP7

let g:ultisnips_php_scalar_types = 1
"Fin configuración ultisnips

" Configuracion para phpactor/ncm2-phpactor
augroup ncm2
	au!
	" this one is which you're most likely to use?
	autocmd BufEnter * call ncm2#enable_for_buffer()
	au User Ncm2PopupOpen set completeopt=noinsert,menuone,noselect
	au User Ncm2PopupClose set completeopt=menuone
augroup end

" param expansion for selected entry via Entej
inoremap <silent> <expr> <CR> (pumvisible() ? ncm2_ultisnips#expand_or("\<CR>", 'n') : "\<CR>")

" cycle through completion entries with tab/shift+tab
inoremap <expr> <TAB> pumvisible() ? "\<c-n>" : "\<TAB>"
inoremap <expr> <s-tab> pumvisible() ? "\<c-p>" : "\<TAB>"
" Keybind para abrir el navegador cuando se presiona <leader> y 'q'
" mientras se este en el modo normal.
nmap <leader>q :NERDTreeToggle<CR>

" Configuración general dedded

" autoclosing brackets
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
