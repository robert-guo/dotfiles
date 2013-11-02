execute pathogen#infect()
map <C-n> :NERDTreeToggle<CR>

set history=1000
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on
set nocompatible
set autoread
set shortmess=atI
set nobackup
set nowb
set noswapfile
"set paste
set mouse-=a
set selection=exclusive
set selectmode=mouse,key
set noerrorbells
set novisualbell
set t_vb=
set tm=500
set number
set nowrap
set showmatch
set mat=2
set hlsearch
set ignorecase
set incsearch
set smartcase
set foldenable
set tabstop=2
set shiftwidth=4
set expandtab
set softtabstop=4
set ai
set si
set ruler
set showcmd
set so=7
set laststatus=2
set statusline=\ %F%m%r%h%w\ %=%({%{&ff}\|%{(&fenc==\"\"?&enc:&fenc).((exists(\"+bomb\")\ &&\ &bomb)?\",B\":\"\")}%k\|%Y}%)\ %([%l,%v][%p%%]\ %)
syntax enable
syntax on
set t_Co=256
"set background=dark
"set background=light
colorscheme railscasts
autocmd! bufwritepost .vimrc source %
set completeopt=longest,menu
set wildmenu
set wildignore=*~
set magic
set backspace=eol,start,indent
set whichwrap+=<,>,h,l
set encoding=utf-8
set fillchars+=stl:\ ,stlnc:\
let g:EasyMotion_leader_key = '<Leader>'
