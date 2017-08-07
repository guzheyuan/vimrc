" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

" 开始安装插件
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'              " let Vundle manage Vundle, required
Plugin 'tomasr/molokai'                    " 色彩主题molokai
Plugin 'vim-airline/vim-airline'           " 加强版状态栏airline
Plugin 'vim-airline/vim-airline-themes'    " airline主题包
Plugin 'powerline/fonts'                   " airline字体包
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-syntastic/syntastic'
call vundle#end()
filetype plugin indent on    " required, To ignore plugin indent changes, instead use:filetype plugin on

" vim相关设置
set backspace=2        " 兼容backspace设置
set nu                 " 开启行号
set foldmethod=syntax  " 折叠：按语法
syntax on              " 开启语法高亮

" 主题molokai相关设置
colorscheme molokai
let g:molokai_original = 1

" 状态栏airline相关设置
set laststatus=2                              " 开启显示，常驻
let g:airline#extensions#tabline#enabled = 1  " 顶部栏
let g:airline_theme='luna'                    " airline配色
let g:airline_powerline_fonts = 1             " 使用powerline的特殊字体

" nerdtree相关设置
map <F2> :NERDTreeToggle<CR>     
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ "Unknown"   : "?"
    \ }

" syntastic相关配置
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
