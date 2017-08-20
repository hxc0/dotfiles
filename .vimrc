set nocompatible
filetype off
set rtp+=/home/hxc0/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'morhetz/gruvbox'
Plugin 'scrooloose/syntastic'
"Plugin 'nvie/vim-flake8'
"Plugin 'scrooloose/nerdtree'
"Plugin 'jistr/vim-nerdtree-tabs'

call vundle#end()

filetype plugin indent plugin on
set noerrorbells
"colorscheme stuff
set t_Co=256
colorscheme doranged
let g:doranged_high_Contrast=1
let g:doranged_alternate_Error=1

set clipboard=unnamed
set hlsearch
set incsearch
set number
set linebreak
set cursorline
set nocursorcolumn
set showbreak=+++
set showmatch
set ruler
set smartindent
set encoding=utf-8
set noerrorbells visualbell t_vb=
set tabstop=4
set shiftwidth=4
if has('autocmd')
	  autocmd GUIEnter * set visualbell t_vb=
endif
"unmap <C-c>

"Basic windows-like keybinds for copy paste etc
nnoremap <C-c> <Esc>"+yy
nnoremap <C-v> <Esc>"+p
nnoremap <C-x> <Esc>"+dd
inoremap <C-x> <Esc>"+ddi
inoremap <C-c> <Esc>"+yyi
inoremap <C-v> <Esc>"+pi
nnoremap <C-s> :w<Enter>
inoremap <C-s> <Esc>:w<Enter>i
nnoremap <C-Left> b
inoremap <C-Left> <Esc>bi
nnoremap <C-Right> e
inoremap <C-Right> <Esc>lei
inoremap <C-o> <Esc>o
nnoremap <C-o> o<Esc>
nnoremap <C-d> yyp
inoremap <C-d> <Esc>yypi

"Folds and keymaps for it
setlocal foldmethod=indent
"set foldnestmax=10
set nofoldenable
set foldlevel=2
inoremap <F9> <Esc>zai
nnoremap <F9> za

"Splits
nnoremap <C-h> <C-w><C-h>
nnoremap <C-j> <C-w><C-j>
nnoremap <C-k> <C-w><C-k>
nnoremap <C-l> <C-w><C-l>
inoremap <C-h> <Esc><C-w><C-h>i
inoremap <C-j> <Esc><C-w><C-j>i
inoremap <C-k> <Esc><C-w><C-k>i
inoremap <C-l> <Esc><C-w><C-l>i

"Tabs
"nnoremap <C-PgUp> gt

"Sessions [remember to save before closing!]
nnoremap <F5> :mksession! ~/.vim_session<Enter>
nnoremap <F8> :source ~/.vim_session<Enter>


"Syntax specific sets
let python_highlight_all=1
highlight Comment cterm=bold


syntax enable
highlight Normal ctermbg=none
