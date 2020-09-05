set nocompatible              " be iMproved, required
filetype off                  " required
set visualbell t_vb=

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'


" # plugin on GitHub repo
" " 目录树导航
Plugin 'preservim/nerdtree'
" " 美化状态栏
Plugin 'lokaltog/vim-powerline'
" " 主题风格
"Plugin 'jnurmine/Zenburn'
Plugin 'tomasr/molokai'
"
"标签导航
Plugin 'majutsushi/tagbar'
"静态代码分析，检查语法错误
Plugin 'vim-syntastic/syntastic'
"yank rings
Plugin 'vim-scripts/YankRing.vim'
"括号匹配增强
Plugin 'tpope/vim-surround'
"括号引号自动补齐
"Plugin 'jiangmiao/auto-pairs'
"彩虹括号
Plugin 'kien/rainbow_parentheses.vim'
"用YCM来实现自动补全功能
Plugin 'ycm-core/YouCompleteMe'

call vundle#end()            " required
filetype plugin indent on    " required
"" to ignore plugin indent changes, instead use:
""filetype plugin on
""
"" brief help
"" :pluginlist       - lists configured plugins
"" :plugininstall    - installs plugins; append `!` to update or just :pluginUpdate
"" :PluginSearch foo - searches for foo; append `!` to refresh local cache
"" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
""
"" see :h vundle for more details or wiki for FAQ
"" Put your non-Plugin stuff after this line
""
""
"

"显示行号
set nu
"突出显示当前行
set cursorline
"关闭错误声音
set visualbell
set noerrorbells
"colorscheme afterglow
syntax on
"set background=dark
"colorscheme solarized
"colorscheme zenburn
colorscheme molokai
set fileencoding=utf-8

"tagbar
nmap <F8> :TagbarToggle<CR>
map <F2> : NERDTreeToggle<CR>
map <F11> :YRShow<CR>

" No next line ,the statusline is hidden/only appear in split windows.
set laststatus=2

"Recommended setting for newbie
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1

"rainbowParenthese配置
let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]

let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

" turn off pymode's rope.
" use jedi-vim completion code.
"let g:pymode_repo = 0

"set yankring directory
let g:yankring_history_dir = '~/.yankringdir'
let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_semantic_triggers = {
	\ 'python':['re!\w{2}'],
	\ }

