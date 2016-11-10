set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim


" 开始安装插件
call vundle#begin()

" 必须安装 let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" 来自github的插件

" 色彩主题molokai
Plugin 'tomasr/molokai'

" vim-ariline插件
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'












call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on

" 兼容backspace设置
set backspace=2

" 开启行号
set nu

" 开启语法高亮
syntax on

" 使用颜色主题molokai
colorscheme molokai
let g:molokai_original = 1

" airline设置
set laststatus=2
let g:airline_theme='molokai'
"let g:airline_powerline_fonts = 1

