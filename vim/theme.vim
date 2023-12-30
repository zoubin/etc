" be iMproved, required
" set nocompatible
" 文件默认编码。支持中文显示。+multi_byte
set enc=utf-8
"文件保存时使用的编码 打开文件进行解码的猜测列表，优先以utf-8打开
set fileencodings=utf-8,gbk
"文件默认格式unix
set ff=unix
" 展示搜索结果数量信息
set shortmess-=S
"鼠标捕捉。设置为v时，可以copy on select
set mouse=v
" 当前行背景
set cursorline
" column启动后会明显变卡顿
set cursorcolumn
"搜索时高亮显示结果
set hls
"输入搜索命令时，显示目前输入的模式的匹配位置
set is
set incsearch
"使用:e命令的时候 可选项预览
set wildmenu
" don't use syntax folding, it could be very slow
set foldmethod=indent
set foldlevelstart=99
" let javaScript_fold=1
" let perl_fold=1
" let php_folding=1
" let r_syntax_folding=1
" let ruby_fold=1
" let sh_fold_enabled=1
" let vimsyn_folding='af'
" vim-jsx does not support xml indent, has to turn it off
" let xml_syntax_folding=1

" Store swap files in fixed location, not current directory.
set dir=~/.vimswap//,/var/tmp//,/tmp//,.
" r: 注释前缀的自动添加、删除
set formatoptions+=jor
" 在自动添加注释的时候，需要先识别注释行，默认情况下 //
" 是注释，但不需要自动插入，所以覆盖。不过在vue中文件中还是被vim-polyglot给覆盖了
set comments=sl:/*,mb:*,ex:*/
"显示行号
set number
set relativenumber
" don't show bottom line that says `--Insert` since lightline takes care of it
set noshowmode

"自动缩进
set autoindent
"显示标签栏 0: 从不 1: 大于1个时显示 2: 总是
set showtabline=2
set laststatus=2

"底部标尺
" set ru
"设置制表符、回车、空格的显示
" set listchars=tab:▸\ ,trail:·,eol:¬,nbsp:_
" set list
" 光标上下最小保留的屏幕行数
" set scrolloff=2
" CTRL-H=BACKSPACE, 删除
" set backspace=indent,eol,start

" some plugin has added -
set iskeyword-=-
