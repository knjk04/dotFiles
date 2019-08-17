"Delete this afterwards

" All system-wide defaults are set in $VIMRUNTIME/debian.vim and sourced by
" the call to :runtime you can find below.  If you wish to change any of those 
" settings, you should do it in this file (/etc/vim/vimrc), since debian.vim
" will be overwritten everytime an upgrade of the vim packages is performed.
" It is recommended to make changes after sourcing debian.vim since it alters
" the value of the 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
  runtime! debian.vim

  set nocompatible              " be iMproved, required
  filetype off                  " required

" set the runtime path to include Vundle and initialize
  set rtp+=~/.vim/bundle/Vundle.vim
  call vundle#begin()

" let Vundle manage Vundle, required
  Plugin 'VundleVim/Vundle.vim'
  Plugin 'vim-airline/vim-airline'
  Plugin 'vim-airline/vim-airline-themes'
  Plugin 'scrooloose/syntastic'
  Plugin 'scrooloose/nerdtree'
  Plugin 'airblade/vim-gitgutter'
  Plugin 'tpope/vim-commentary'
  Plugin 'ervandew/supertab'
  Plugin 'tpope/vim-surround'
  Plugin 'kien/ctrlp.vim'
  Plugin 'easymotion/vim-easymotion'
  Plugin 'lervag/vimtex'
  Plugin 'altercation/vim-colors-solarized'


" All of your Plugins must be added before the following line
  call vundle#end()            " required
  filetype plugin indent on    " required

" Open NERDTree automatically
" autocmd vimenter * NERDTree

" Make NERDTree look nicer
  let NERDTreeMinimalUI = 1
  let NERDTreeDirArrows = 1

" uncomment the next line to make vim more vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes
" numerous
" options, so any other options should be set AFTER setting 'compatible'.
" set compatible

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
  if has("syntax")
    syntax on
  endif

" Uncomment the following to have Vim jump to the last position when
" reopening a file
" if has("autocmd")
" au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe
" normal! g'\"" | endif
" endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected iletype.
" if has("autocmd")
"   filetype plugin indent on
" endif


" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
" set showcmd          " Show (partial) command in status line.
  set showmatch         " Show matching brackets.
  set ignorecase        " Do case insensitive matching
  set smartcase         " Do smart case matching
  set incsearch         " Incremental search
  set hlsearch          " Highlight matches
" set autowrite         " Automatically save before commands like
" set hidden           " Hide buffers when they are abandoned
" set mouse=a          " Enable mouse usage (all modes)


  set autoindent
  set visualbell                " Visual bell instead of beeping when something is wrong
  set tabstop=2
  set softtabstop=0 noexpandtab
  set shiftwidth=4
  set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
  set colorcolumn=80 "Should be 80, but is 81
  highlight ColorColumn ctermbg=0

  set relativenumber

" Source a global configuration file if available
  if filereadable("/etc/vim/vimrc.local")
    source /etc/vim/vimrc.local
  endif

" Automatic bracket completion 
" inoremap ( ()<Esc>i
" inoremap { {}<Esc>i
" inoremap ' ''<Esc>i
" inoremap " ""<Esc>i

" Interface"
  set nu                   " Line numbers
" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
  syntax enable
  set background=dark
  " colorscheme solarized
  "let g:airline_solarized_bg='dark'
  "
  
  "hi Search cterm=NONE ctermfg=grey ctermbg=blue
  let g:airline_theme='base16_atelierdune'

  noremap<CR> o<ESC>

  let g:airline_powerline_fonts = 1
