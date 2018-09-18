" <vundle> ------------------------
" https://github.com/gmarik/Vundle.vim
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.

Plugin 'scrooloose/nerdtree'
" open a NERDTree automatically when vim starts up
" autocmd vimenter * NERDTree

"Plugin 'vim-scripts/SyntaxRange'

" <<<<<<<<<<<<<<<<<<<<<<<<< syntax
Plugin 'pangloss/vim-javascript'
" Vastly improved Javascript indentation and syntax support in Vim
" 打开javascript对dom、html和css的支持
let javascript_enable_domhtmlcss = 1

Plugin 'mxw/vim-jsx'
let g:jsx_ext_required = 0

" :Tabu /=
Plugin 'godlygeek/tabular'

" Must be placed after tabular
" gx, open external links in browser
" ge, open relative links in vim
" :Toc
" :TableFormat
" ]], [[
Plugin 'plasticboy/vim-markdown'
let g:vim_markdown_conceal = 0
let g:vim_markdown_new_list_item_indent = 2
let g:vim_markdown_folding_disabled = 1

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
"let g:airline_theme = 'dark'
" display the statusline always, even when there is only one window
set laststatus=2
"https://github.com/vim-airline/vim-airline/wiki/FAQ
let g:airline_powerline_fonts = 1

" >>>>>>>>>>>>>>>>>>>>>>>>> syntax

Plugin 'mattn/emmet-vim'
let g:user_emmet_leader_key = '<leader>a'

Plugin 'zoubin/vim-git'

" :Tabstop [count]
Plugin 'zoubin/vim-tabstop'

Plugin 'zoubin/vim-gotofile'
let g:gotofile_extensions = ['js', 'jsx', 'es6', 'css', 'scss', 'sass']
au BufNewFile,BufRead *.js,*.jsx,*.es6 call gotofile#SetOptions({
\ 'moduleDirectory': ['node_modules', 'web_modules']
\ })
au BufNewFile,BufRead *.css,*.scss,*.sass call gotofile#SetOptions({
\ 'alwaysTryRelative': 1,
\ 'main': 'style',
\ 'extensions': ['.css', '.scss', '.sass'],
\ 'moduleDirectory': ['node_modules', 'web_modules']
\ })

Plugin 'vim-scripts/matchit.zip'
"let b:match_ignorecase = 1

Plugin 'tpope/vim-surround'

" autoclose与neocomplete有一处不兼容的问题，插入模式下如果有补全窗口时，需要按两次esc才能回到插入模式。用auto-pairs则ok
" Plugin 'Townk/vim-autoclose'
Plugin 'jiangmiao/auto-pairs'


" Plugin 'leshill/vim-json'
Plugin 'othree/html5.vim'
Plugin 'cakebaker/scss-syntax.vim'
"Plugin 'wavded/vim-stylus'
" Plugin 'honza/vim-snippets'

"ctrlp is slower than command-t in big project, really
"Plugin 'ctrlpvim/ctrlp.vim'
"let g:ctrlp_match_window = 'bottom,order:btt,min:1,max:20,results:20'
"let g:ctrlp_max_files = 0
" Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
"let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
" ag is fast enough that CtrlP doesn't need to cache
"let g:ctrlp_use_caching = 0
"let g:ctrlp_custom_ignore = {
"      \ 'dir':  '\v[\/](node_modules)',
"      \ 'file': '\v\.(exe|so|dll)$'
"      \ }
"if exists("g:ctrlp_user_command")
"  unlet g:ctrlp_user_command
"endif
"if executable('ag')
"  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
"  let g:ctrlp_user_command =
"    \ 'ag %s --files-with-matches -g "" --ignore "\.git$\|\.hg$\|\.svn$"'
"
"  " ag is fast enough that CtrlP doesn't need to cache
"  let g:ctrlp_use_caching = 0
"else
"  " Fall back to using git ls-files if Ag is not available
"  let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$'
"  let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . --cached --exclude-standard --others']
"endif

Plugin 'wincent/command-t'
let g:CommandTFileScanner='watchman'
let g:CommandTMaxHeight=20
"let g:CommandTWildIgnore="*/node_modules"
let g:CommandTSmartCase=1

"Plugin 'Konfekt/FastFold'

Plugin 'tpope/vim-fugitive'
"set statusline=%{fugitive#statusline()}
"vim-git would be better for grep

" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'

" <<<<<<<<<<<<<<<<<<<<<<<<< neocomplete
Plugin 'Shougo/neocomplete'
Plugin 'Shougo/neosnippet'
source <sfile>:h/neocomplete.vim
" >>>>>>>>>>>>>>>>>>>>>>>>> neocomplete

"Plugin 'scrooloose/syntastic'
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0
"let g:syntastic_javascript_checkers = ['standard']

Plugin 'mbbill/undotree'
nnoremap ,u :UndotreeToggle<cr>
if has("persistent_undo")
  set undodir=~/.undodir/
  set undofile
endif

Plugin 'kchmck/vim-coffee-script'
Plugin 'NSIS-syntax-highlighting'
Plugin 'posva/vim-vue'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Put your non-Plugin stuff after this line
" ------------------------ </vundle>

" <auto-pairs> ------------------------
" let g:AutoPairsFlyMode=1
" ------------------------ </auto-pairs>

