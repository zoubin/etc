" =======================================
" vundle section begins
" https://github.com/gmarik/Vundle.vim
" =======================================
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-surround'
Plugin 'Townk/vim-autoclose'
Plugin 'pangloss/vim-javascript'
Plugin 'gabrielelana/vim-markdown'
Plugin 'mattn/emmet-vim'
Plugin 'othree/html5.vim'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'wavded/vim-stylus'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'

" Plugin 'hail2u/vim-css3-syntax'
" Plugin 'hdima/python-syntax'
" Plugin 'digitaltoad/vim-jade'
" Plugin 'tpope/vim-fugitive'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.

" plugin on GitHub repo

" The NERD tree allows you to explore your filesystem and to open files and directories
" https://github.com/scrooloose/nerdtree
" h NERD_Tree.txt
autocmd vimenter * NERDTree
map <leader>n :NERDTreeToggle<CR>
" open a NERDTree automatically when vim starts up
" let NERDTreeHighlightCursorline=1
" close vim if the only window left open is a NERDTree
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" a Git wrapper so awesome, it should be illegal
" https://github.com/tpope/vim-fugitive

" provides mappings to easily delete, change and add such surroundings in pairs.
" https://github.com/tpope/vim-surround

" This plugin for Vim enable an auto-close chars feature for you.
" https://github.com/Townk/vim-autoclose

" Vastly improved Javascript indentation and syntax support in Vim
" https://github.com/pangloss/vim-javascript
" let g:javascript_conceal = 1
" set cole=1
let b:javascript_fold=1
" 打开javascript对dom、html和css的支持
" let javascript_enable_domhtmlcss = 1

" Markdown for Vim: a complete environment to create Markdown files with a syntax highlight that don't sucks!
" https://github.com/gabrielelana/vim-markdown

" emmet for vim. zencoding
" https://github.com/mattn/emmet-vim

" HTML5 + inline SVG omnicomplete funtion, indent and syntax for Vim
" https://github.com/othree/html5.vim

" Vim syntax file for scss
" https://github.com/cakebaker/scss-syntax.vim

" Syntax Highlighting for Stylus
" https://github.com/wavded/vim-stylus

" Add CSS3 syntax support to vim's built-in `syntax/css.vim`
" https://github.com/hail2u/vim-css3-syntax

" The ultimate snippet solution for Vim
" https://github.com/SirVer/ultisnips
" let g:UltiSnipsExpandTrigger="<c-l>"
" let g:UltiSnipsJumpForwardTrigger="<c-l>"
" let g:UltiSnipsJumpBackwardTrigger="<c-q>"
" g:UltiSnipsExpandTrigger               <tab>
" g:UltiSnipsListSnippets                <c-tab>
" g:UltiSnipsJumpForwardTrigger          <c-j>
" g:UltiSnipsJumpBackwardTrigger         <c-k>
" 默认在.vim/UltiSnips目录下添加。见g:UltiSnipsSnippetDirectories
" Snips参见https://github.com/honza/vim-snippets/tree/master/UltiSnips
" https://github.com/honza/vim-snippets

" Python syntax highlighting script for Vim
" https://github.com/hdima/python-syntax

" Vim Jade template engine syntax highlighting and indention
" https://github.com/digitaltoad/vim-jade

" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'

" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'

" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'

" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
" =======================================
" vundle section ends
" =======================================

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
" searching section begins
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

" ======================================
" searching section ends
" ======================================

" ======================================
" git extension section begins
" ======================================

" In visual mode, git blame the selection
function! GitBlame() range
" look up function-range-example for more information
    exec '!fp=$(readlink -f %); cd $(dirname $fp); git blame -L '. line("'<"). ','. line("'>"). ' $(basename $fp); cd -'
endfunction
vnoremap <leader>g :call GitBlame()<CR>
" --------------------------------------
" In normal mode, git blame the current line
nnoremap <leader>g :exec '!fp=$(readlink -f %); cd $(dirname $fp); git blame -L '. line("."). ','. line("."). ' $(basename $fp); cd -'<CR>
" ======================================

" http://vim.wikia.com/wiki/Display_output_of_shell_commands_in_new_window
function! s:RunShellCommand(cmdline)
    echo a:cmdline
    let expanded_cmdline = a:cmdline
    for part in split(a:cmdline, ' ')
     if part[0] =~ '\v[%#<]'
        let expanded_part = fnameescape(expand(part))
        let expanded_cmdline = substitute(expanded_cmdline, part, expanded_part, '')
     endif
    endfor
    botright new
    setlocal buftype=nofile bufhidden=wipe nobuflisted noswapfile nowrap
    call setline(1, 'You entered:    ' . a:cmdline)
    call setline(2, 'Expanded Form:  ' .expanded_cmdline)
    call setline(3, substitute(getline(2),'.','=','g'))
    execute '$read !'. expanded_cmdline
    4
endfunction

"vnoremap K y:Shell git grep -n <C-R><C-R>"<CR><CR>/\<<C-R><C-R>"\><CR>""
vnoremap K y:call GitGrepEx(1)<CR>
"set grepprg=git\ grep\ -n
"set grepformat=%f:%l:%m
nnoremap K viwy:call GitGrepEx(0)<CR>
" 在新tab中打开文件
nnoremap <C-T> ^<C-W>F
function! GitGrepEx(isLiteral)
    let oldpwd = getcwd()
    let reporoot = system('git rev-parse --show-toplevel')

    let newp = system('dirname ' . shellescape(expand('%')))
    exec 'cd ' . newp
    let newreporoot = system('git rev-parse --show-toplevel')
    exec 'cd ' . newreporoot
    let kw = getreg('"')
    if a:isLiteral == 1
        let target = ' -F ' . escape(kw, ' >()&$')
    else
        if kw[0] == '$'
            let target = '"\' . kw . '\b"'
        else
            let target = '"\b' . kw . '\b"'
        endif
    endif

    silent call s:RunShellCommand('git grep -n ' . target)
    call setreg('/', kw, getregtype('/'))

    if newreporoot == reporoot
    " in the same repo
    else
    " not in the same repo
        let abspath = getcwd()
        exec '4,$s:^:' . abspath . '/'
    endif
    exec 'cd ' . oldpwd
endfunction
" ======================================
" git extension section begins
" ======================================
" ======================================
" key mapping section begins
" ======================================

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

" ======================================
" key mapping section ends
" ======================================

