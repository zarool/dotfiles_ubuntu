""""""""""""""""""""""""
" settings

:set number
:set relativenumber

:set mouse=a

:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4


"""""""""""""""""""""""""
" plugins

call plug#begin('~/.config/nvim/plugged')
" additional gui 
Plug 'https://github.com/vim-airline/vim-airline'
" tree
Plug 'preservim/nerdtree'

Plug 'https://github.com/neoclide/coc.nvim'  " Auto Completion

Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc

Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal
Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursors

" theme plugins
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'jacoborus/tender.vim'
Plug 'nightsense/carbonized'
Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview

:set encoding=UTF-8

call plug#end()

"""""""""""""""""""""
" tagbar
nmap <F8> :TagbarToggle<CR>


"""""""""""""""""""""""""""""""
" nerdtree
nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>

let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"

" Start NERDTree and put the cursor back in the other window.
autocmd VimEnter * NERDTree | wincmd p
" Quit if NERDTree is only buffer left
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
" On launch, if no file is specified, open NERDTree
autocmd vimenter * if !argc() | NERDTree | endif


"""""""""""""""""""""""""""""""
" theme
set termguicolors
syntax enable
colorscheme tender
let g:airline_theme = 'tender'


" stuff
" g:ycm_always_populate_location_list = 1
""""""""""""""""""""""""""""""""
" auto complete
inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"

