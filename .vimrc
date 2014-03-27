execute pathogen#infect()

au FileType ruby setl sw=2 sts=2 et
au FileType python setl sw=2 sts=2 et
au FileType html setl sw=2 sts=2 et

map <C-n> :NERDTreeToggle<CR>
autocmd vimenter * if !argc() | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

map <F5> :!ruby % <CR><CR>

vmap <Tab> >gv
vmap <S-Tab> <gv
set guifont=Consolas:h12

set encoding=utf-8
set fileencodings=utf-8,cp936
set fileencoding=cp936

source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
source $VIMRUNTIME/mswin.vim
behave mswin
language messages zh_CN.utf-8

if v:lang =~? '^\(zh\)\|\(ja\)\|\(ko\)'
    set ambiwidth=double
endif

set nobomb

if has("gui_running")
    au GUIEnter * simalt ~x  " 窗口启动时自动最大化
    set lines=25 columns=80 " 指定窗口大小，lines为高度，columns为宽度
    set guioptions-=m       " 隐藏菜单栏
    set guioptions-=T        " 隐藏工具栏
    set guioptions-=L       " 隐藏左侧滚动条
    set guioptions-=r       " 隐藏右侧滚动条
    set guioptions-=b       " 隐藏底部滚动条
    "set showtabline=0       " 隐藏Tab栏
endif
set laststatus=2             " 开启状态栏信息
set cmdheight=1              " 命令行的高度，默认为1，这里设为2
set showtabline=1	 "设置标签


set noeb vb
set history=1000
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on
set autoindent
set smartindent
set cindent
set nocompatible
set autoread
set shortmess=atI
set nobackup
set nowb
set noswapfile
"set paste
set mouse=a
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
set tabstop=4
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

if has('gui_running')
    set background=light
else
    set background=dark
endif

colorscheme solarized

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
let g:auto_save = 1

"""""""""""""""""""""""""""""""""""""""""""
"       CtrlP
"""""""""""""""""""""""""""""""""""""""""""
let g:ctrlp_map = '..'
let g:ctrlp_open_myltiple_files = 'v'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_custom_ignore = {
            \ 'dir': '\v[\/]\.(git)$',
            \ 'file':'\v\.(log|jpg|png|jpeg)$',
            \ }

let g:user_emmet_install_global=1
let g:user_emmet_leader_key=','
