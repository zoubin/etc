" 文件默认编码。支持中文显示。+multi_byte
set enc=utf-8
"文件保存时使用的编码
"fileencoding=utf-8
"打开文件进行解码的猜测列表，优先以utf-8打开
set fileencodings=utf-8,gbk
"文件默认格式unix
set ff=unix

"自动缩进
set autoindent
"显示标签栏 0: 从不 1: 大于1个时显示 2: 总是
set showtabline=2
"鼠标捕捉。设置为v时，可以copy on select
set mouse=v
" h comments
set comments=sl:/*,mb:*,ex:*/
"底部标尺
set ru
"设置制表符、回车、空格的显示
set listchars=tab:▸\ ,trail:·,eol:¬,nbsp:_
" set list
" 光标上下最小保留的屏幕行数
set scrolloff=2
" CTRL-H=BACKSPACE, 删除
set backspace=indent,eol,start
"打开语法高亮
syntax enable
" 当前行背景
set cursorline
set cursorcolumn
"搜索时高亮显示结果
set hls
"输入搜索命令时，显示目前输入的模式的匹配位置
set is
set incsearch
"显示行号
set number
"使用:e命令的时候 可选项预览
set wildmenu

" solarized
set background=dark
"colorscheme solarized
if $VIMCOLORSCHEME != ''
  colorscheme $VIMCOLORSCHEME
endif

" don't use syntax folding, it could be very slow
set foldmethod=indent
set foldlevelstart=99
let javaScript_fold=1         " JavaScript
"let perl_fold=1               " Perl
let php_folding=1             " PHP
"let r_syntax_folding=1        " R
"let ruby_fold=1               " Ruby
let sh_fold_enabled=1         " sh
let vimsyn_folding='af'       " Vim script
" vim-jsx does not support xml indent, has to turn it off
"let xml_syntax_folding=1      " XML

