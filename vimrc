source ~/etc/vim/vimrc_plugin
source ~/etc/vim/vimrc_git

" =======================================
" folding section begins
" =======================================
" don't use syntax folding, it could be very slow
set foldmethod=indent
set foldlevelstart=2
let javaScript_fold=1         " JavaScript
let perl_fold=1               " Perl
let php_folding=1             " PHP
let r_syntax_folding=1        " R
let ruby_fold=1               " Ruby
let sh_fold_enabled=1         " sh
let vimsyn_folding='af'       " Vim script
let xml_syntax_folding=1      " XML
" =======================================
" folding section ends
" =======================================

" ======================================
" vim theme section begins
" ======================================
" 文件默认编码。支持中文显示。+multi_byte
set enc=utf-8
"文件保存时使用的编码
"fileencoding=utf-8
"打开文件进行解码的猜测列表，优先以utf-8打开
set fileencodings=utf-8,gbk
"文件默认格式unix
set ff=unix

" 缩进为4个空格宽度
set tabstop=4
"自动缩进使用的空格数
set shiftwidth=4
"编辑插入tab时，把tab算作的空格数
set softtabstop=4
"缩进使用空格
set expandtab
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
" 当前行背影
set cursorline
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
colorscheme solarized

 " Store swap files in fixed location, not current directory.
 set dir=~/.vimswap//,/var/tmp//,/tmp//,.

" 打开文件时总是跳到最后光标所在的行
autocmd BufReadPost *
    \ if line("'\"") > 0 && line ("'\"") <= line("$") |
    \   exe "normal! g'\"" |
    \ endif
" ======================================
" vim theme section ends
" ======================================

" ======================================
" key mapping section begins
" ======================================
" Search for selected text, forwards or backwards.
" http://vim.wikia.com/wiki/Search_for_visually_selected_text
vnoremap <silent> * :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy/<C-R><C-R>=substitute(
  \escape(@", '/\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gV:call setreg('"', old_reg, old_regtype)<CR>
" --------------------------------------
vnoremap <silent> # :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy?<C-R><C-R>=substitute(
  \escape(@", '?\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gV:call setreg('"', old_reg, old_regtype)<CR>

" 重新载入配置
map <leader>s :source ~/.vimrc<CR>
map <leader>0 :set number!<CR>
map <leader>p :set paste!<CR>

" visual模式修改缩进时不退出该模式
vnoremap < <gv
vnoremap > >gv
" 选中后put时再复制put的内容，需要多次选中替换时有用
vnoremap p pgvy

" 选中put的文本（整行）
nnoremap <leader>v V`]
" 删除行末空格
nnoremap <silent><leader>w :%s/\s\+$//<CR>:let @/=''<CR>
" 切换tab
nmap <C-N> :tabnext<CR>
nmap <C-P> :tabprevious<CR>
nnoremap <leader><space> :noh<CR>

" 扩展%
nnoremap g{ f{%
nnoremap g[ f[%
nnoremap g( f(%
nnoremap g} f}%
nnoremap g] f]%
nnoremap g) f)%
nnoremap gb{ F{%
nnoremap gb[ F[%
nnoremap gb( F(%
nnoremap gb} F}%
nnoremap gb] F]%
nnoremap gb) F)%

vnoremap g{ f{%
vnoremap g[ f[%
vnoremap g( f(%
vnoremap g} f}%
vnoremap g] f]%
vnoremap g) f)%
vnoremap gb{ F{%
vnoremap gb[ F[%
vnoremap gb( F(%
vnoremap gb} F}%
vnoremap gb] F]%
vnoremap gb) F)%

" insert mode shortcut
" 模拟mac编辑方式
inoremap <C-E> <Esc>A
inoremap <C-A> <Esc>I
inoremap <C-J> <Down>
inoremap <C-K> <Up>
inoremap <C-B> <Left>
inoremap <C-F> <Right>
inoremap <C-D> <DELETE>

" command line
cnoremap <C-A> <Home>
cnoremap <C-E> <End>
cnoremap <C-B> <Left>
cnoremap <C-F> <Right>
cnoremap <C-D> <DELETE>

" ======================================
" key mapping section ends
" ======================================

