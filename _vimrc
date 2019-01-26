"初始设置
"======================================================================
let $LANG = 'en'  "set message language
set langmenu=en_US "set menu's language of gvim. no spaces beside '='
set helplang=en
set encoding=utf-8
set fileencodings=usc-bom,utf-8,gbk,gb18030,big5,euc-jp,euc-kr,latin1
winpos 100 100 "设置初始界面位置
set lines=40 columns=100 "设置初始界面大小
source $VIMRUNTIME/vimrc_example.vim

"vundle插件设置
"=======================================================================
set nocompatible              " be iMproved, required
filetype off                  " required

"set the runtime path to include Vundle and initialize
set rtp+=$HOME/.vim/bundle/Vundle.vim
call vundle#begin('$HOME/.vim/bundle/')
"alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

"let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

"包含大量vim-airline插件主题，包括适配base16的主题
"Plugin 'vim-airline/vim-airline-themes'

"vim的状态栏插件,用来增强显示,需要在字体中打上powerline，请参考powerline字体
Plugin 'vim-airline/vim-airline'

"base16主题插件，太多了，选择困难，请查看base16-html-previews帮助选择
"Plugin 'chriskempson/base16-vim'

"onedark主题插件,包含onedark airline主题
Plugin 'joshdick/onedark.vim'

"中文帮助插件
"Plugin 'yianwillis/vimcdoc'

"git插件
Plugin 'tpope/vim-fugitive'

"树形菜单插件
Plugin 'scrooloose/nerdtree'

"makedown即时显示插件
Plugin 'suan/vim-instant-markdown'

"All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
"To ignore plugin indent changes, instead use:
"filetype plugin on
"
"Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
"see :h vundle for more details or wiki for FAQ
"Put your non-Plugin stuff after this line

"Airline设置
"===============================================================
let g:airline_powerline_fonts = 1
"let g:airline_theme="solarized"
let g:airline_theme="onedark"
let g:airline#extensions#tabline#exclude_preview = 0
"let g:airline_solarized_bg='dark'
let g:airline#extensions#tabline#enabled = 1    
"let g:airline#extensions#tabline#left_sep = '>'
"let g:airline#extensions#tabline#left_alt_sep = '>'
let g:airline#extensions#tabline#formatter = 'unique_tail'

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

"go to c:/windows/font to look up what the symbol is. 
let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.notexists = '●'
let g:airline_symbols.whitespace = 'Ξ'
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.maxlinenr = ''
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''


"字体设置
"=================================================================
"英文字体设置，中文字体需要等宽
"很多中文字体没有等宽，使用system link可以解决这个问题
"这里在注册表里inputMono关联其他中文字体，需重启
set guifont=inputMono:h12
"中文字体设置，使用 system link忽略此项
"set guifontwide=黑体:h11.5

"主题设置
"=================================================================
"colorscheme koehler
"colorscheme ron
"colorscheme darkblue
"colorscheme bickman 
syntax on
"set background=dark
colorscheme onedark
"colorscheme Base16-onedark

"其他设置
"==================================================================
"set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
"set guioptions-=r  "remove right-hand scroll bar
set guioptions-=L  "remove left-hand scroll bar

"显示行数
set nu
"搜索忽略大小写
set ic
"搜索高亮和递增显示，取消高亮：nohls
set hls is
"取消缓存文件
set nobackup
set noundofile
set noswapfile
filetype plugin on

"取消instant_markdown自动启动，使用:InstantMarkdownPreview来启动预览
let g:instant_markdown_autostart = 0


"快捷键设置
"=====================================================
"<F2>打开配置文件
nnoremap <F2> :e $MYVIMRC<CR>
"<F3>重新载入配置文件
nnoremap <F3> :source $MYVIMRC<CR>
"<F4>安装插件
nnoremap <F4> :PluginInstall<CR>
"<F5>删除不用的插件
nnoremap <F5> :PluginClean<CR>
"安装了nerdtree后设置ctrl-n来打开nerdtree
map <C-n> :NERDTreeToggle<CR>
"安装了instant_markdown后设置ctrl-m来打开预览
map <C-m> :InstantMarkdownPreview<CR>
