
" An example for a vimrc file.
"
" Maintainer:	Bram Moolenaar <Bram@vim.org>
" Last change:	2011 Apr 15
"
" To use it, copy it to
"     for Unix and OS/2:  ~/.vimrc
"	      for Amiga:  s:.vimrc
"  for MS-DOS and Win32:  $VIM\_vimrc
"	    for OpenVMS:  sys$login:.vimrc

" When started as "evim", evim.vim will already have done these settings.
if v:progname =~? "evim"
  finish
endif

" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

set encoding=utf-8

" automatically set working dir to file's dir
set autochdir

" show line numbers
set number

filetype plugin indent on

if has("vms")
  set nobackup		" do not keep a backup file, use versions instead
else
  set backup		" keep a backup file
endif
set history=50		" keep 50 lines of command line history
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set incsearch		" do incremental searching

" For Win32 GUI: remove 't' flag from 'guioptions': no tearoff menu entries
" let &guioptions = substitute(&guioptions, "t", "", "g")

" Don't use Ex mode, use Q for formatting
map Q gq

" CTRL-U in insert mode deletes a lot.  Use CTRL-G u to first break undo,
" so that you can undo CTRL-U after inserting a line break.
inoremap <C-U> <C-G>u<C-U>

" In many terminal emulators the mouse works just fine, thus enable it.
if has('mouse')
  set mouse=a
endif

set background=dark

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif

" Only do this part when compiled with support for autocommands.
if has("autocmd")

  " Enable file type detection.
  " Use the default filetype settings, so that mail gets 'tw' set to 72,
  " 'cindent' is on in C files, etc.
  " Also load indent files, to automatically do language-dependent indenting.
  filetype plugin indent on

  " Put these in an autocmd group, so that we can delete them easily.
  augroup vimrcEx
  au!

  " For all text files set 'textwidth' to 78 characters.
  autocmd FileType text setlocal textwidth=78

  " When editing a file, always jump to the last known cursor position.
  " Don't do it when the position is invalid or when inside an event handler
  " (happens when dropping a file on gvim).
  " Also don't do it when the mark is in the first line, that is the default
  " position when opening a file.
  autocmd BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif

  augroup END

  augroup vimrc_autocmds
      autocmd!
  augroup END

else

  set autoindent		" always set autoindenting on

endif " has("autocmd")

" Convenient command to see the difference between the current buffer and the
" file it was loaded from, thus the changes you made.
" Only define it when not defined already.
if !exists(":DiffOrig")
  command DiffOrig vert new | set bt=nofile | r ++edit # | 0d_ | diffthis
                \ | wincmd p | diffthis
endif

"let base16colorspace=256
" Set colorscheme to something lovely
colorscheme base16-default

" Turn off line wrap
set nowrap
set listchars+=precedes:<,extends:>	" How to see that part of the row is off the screen
set sidescroll=5			" Scroll 5 columns at a time when scrolling sideways

" Set up tabs to cause less trouble
set listchars+=tab:>-,trail:-		" Makes tabs and trailing whitespace visible
set expandtab				" Expand tabs to spaces
set shiftround				" Indenting is rounded to a multiple of shiftwidth
set shiftwidth=4			" 4 spaces used for each step of indent
set softtabstop=4			" <TAB> is treated like it inserts 4 spaces, but tab stops are not changed

" For vim-latexsuite
set grepprg=grep\ -nH\ $*
let g:tex_flavor = "latex"
set runtimepath=~/.vim,$VIM/vimfiles,$VIMRUNTIME,$VIM/vimfiles/after,~/.vim/after

" Show statusline when only one window
set laststatus=2

" Allow saving of files as sudo even when vim is not running as sudo
cmap w!! w !sudo tee > /dev/null %
" Airline
" use patched powerline symbrls
let g:airline_powerline_fonts=1

" color theme
"let g:airline_theme='tomorrow'

let g:airline#extensions#virtualenv#enabled = 1

" Enable fugitive integration
let g:airline#extensions#branch#enabled = 1

" For NERD Tree
"map <F2> :NERDTreeToggle<CR>

" ConqueTerm options
"let g:ConqueTerm_PyVersion = 3

" Jedi-vim
"let g:jedi#auto_initialization = 1
"let g:jedi#auto_vim_configuration = 1
