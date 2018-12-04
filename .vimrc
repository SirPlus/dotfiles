set nocompatible
set number
set splitbelow
set splitright

"Cursor styling. Insert: | Else: []
set guicursor=n-v-c:block-Cursor
set guicursor+=i-ci:ver30-iCursor

"Vim Configuration
filetype off
syntax on
set mouse=a
set ls=2
set showcmd
set hlsearch
set incsearch
set ignorecase
set ruler "show the cursor position
set ttyfast
set autoindent
set smartindent
set wildmode=longest,list,full
set wildmenu
autocmd FileType markdown setlocal spell
"Vundle Configuration
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'cuhdev/vim-latex-live-preview'
Plugin 'scrooloose/nerdtree'

call vundle#end()
filetype plugin indent on

" :PluginList :PluginInstall :PluginSearch :PluginClean :h vundle
