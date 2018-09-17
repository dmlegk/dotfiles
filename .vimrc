set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'tomasr/molokai'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'rodjek/vim-puppet'
Plugin 'vim-airline/vim-airline'
Plugin 'tpope/vim-fugitive'

" TODO: check these plugins
"Plugin 'kien/ctrlp.vim'
"Plugin 'tpope/vim-bundler'
"Plugin 'godlygeek/tabular'
"Plugin 'stephpy/vim-yaml'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" see :h vundle for more details or wiki for FAQ

" **********************************************
" end of Vundle init
" **********************************************


syntax on
colorscheme molokai

" Make tab handling consistent with eclipse settings
set expandtab
set tabstop=4
set softtabstop=-1  " use tabstop
set shiftwidth=0    " use tabstop
set autoindent
set cindent
set ignorecase
set smartcase
set nowrap
filetype plugin indent on

" Show incomplete commands in status bar.
set showcmd

" Show cursor line by default - makes it easier to pair
set cursorline

" Always show a status line
set laststatus=2

" Don't show the mode: Powerline already shows it
set noshowmode

" line numbers on
set number

" next/previous search results always centered
nmap n nzz
nmap s-n s-nzz
nnoremap n nzz
nnoremap N Nzz
nnoremap * *zz
nnoremap # #zz
nnoremap g* g*zz
nnoremap g# g#zz

" incremental search
set incsearch
set hlsearch

let mapleader="\\"
map <Leader>h :set hls!<CR>
map <Leader>i :set ignorecase!<CR>
map <Leader>l :set number!<CR>
map <Leader>p :set paste!<CR>
map <Leader>c :set cursorline!<CR>

map <C-n> :NERDTreeToggle<CR>
map <C-h> <C-w><C-h>
map <C-j> <C-w><C-j>
map <C-k> <C-w><C-k>
map <C-l> <C-w><C-l>

" one space after a period not two
set nojoinspaces

set lazyredraw

" we hate literal tabs tabs
highlight LiteralTabs ctermbg=darkgreen guibg=darkgreen
match LiteralTabs /\s\ /

" highlight extra spaces ftw
highlight ExtraWhitespace ctermbg=darkgreen guibg=darkgreen
match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * redraw!

highlight VisualNOS ctermbg=236
highlight Visual ctermbg=236
highlight CursorLine ctermbg=236


" search for word under cursor recursively starting from current working dir
map <C-f> :execute "vimgrep /" . expand("<cword>") . "/j **" <Bar> cw<CR>
"noautocmd may be useful here also

" Go to tab by number
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt

" fix appearance when using xterm-256color terminal by disabling Background Color Erase (BCE)
"if &term =~ '256color'
"  set t_ut=
"endif

