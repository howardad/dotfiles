" Adam's .vimrc

source ~/vimfiles/bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()
syntax on
filetype plugin indent on
set laststatus=2
set number
set hlsearch
set ignorecase
set smartcase
set title
set mouse=a
set background=dark
colorscheme spacegray
set encoding=utf-8

" I don't even know what Modula-2 is, so let's change .md filetype detection
" see https://github.com/tpope/vim-markdown/README.markdown
autocmd BufNewFile,BufReadPost *.md set filetype=markdown

" tab settings
set shiftwidth=4
set softtabstop=4
set expandtab
set smartindent

"""""""""""""""""
" Plugin Settings
"""""""""""""""""

" Syntastic settings
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Airline settings
let g:airline_powerline_fonts = 1
let g:airline#extensions#virtualenv#enabled = 1
let g:airline#extensions#branch#enabled = 1
