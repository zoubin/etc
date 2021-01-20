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
" Plugin 'gmarik/Vundle.vim'
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.

" support vim 8+ packages
Plugin 'scrooloose/nerdtree'
" open a NERDTree automatically when vim starts up
" autocmd vimenter * NERDTree

" support vim 8+ packages
" https://vimawesome.com/plugin/vim-airline-superman
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
let g:airline_theme = 'solarized'
let g:airline_solarized_bg='dark'
"let g:airline_statusline_ontop=1
let g:airline#extensions#tabline#enabled = 1
" display the statusline always, even when there is only one window
set laststatus=2
"https://github.com/vim-airline/vim-airline/wiki/FAQ
"let g:airline_powerline_fonts = 1
"* Disable setting the statusline option: >
" disable globally
"let g:airline_disable_statusline = 1
" disable per-buffer
"let b:airline_disable_statusline = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9
nmap <leader>0 <Plug>AirlineSelectTab0
nmap <leader>- <Plug>AirlineSelectPrevTab
nmap <leader>+ <Plug>AirlineSelectNextTab


" not support vim 8+ packages
" https://vimawesome.com/plugin/emmet-vim
" https://raw.githubusercontent.com/mattn/emmet-vim/master/TUTORIAL
Plugin 'mattn/emmet-vim'
let g:user_emmet_leader_key = '<leader>a'

" not support vim 8+ packages
Plugin 'zoubin/vim-git'

" not support vim 8+ packages
" :Tabstop [count]
Plugin 'zoubin/vim-tabstop'

" not support vim 8+ packages
Plugin 'zoubin/vim-gotofile'
let g:gotofile_extensions = ['js', 'ts', 'jsx', 'es6', 'css', 'scss', 'sass']
au BufNewFile,BufRead *.js,*.ts,*.jsx,*.es6 call gotofile#SetOptions({
\ 'alwaysTryRelative': 1,
\ 'moduleDirectory': ['node_modules', 'web_modules']
\ })
au BufNewFile,BufRead *.css,*.scss,*.sass call gotofile#SetOptions({
\ 'alwaysTryRelative': 1,
\ 'main': 'style',
\ 'extensions': ['.css', '.scss', '.sass'],
\ 'moduleDirectory': ['node_modules', 'web_modules']
\ })

" https://github.com/sheerun/vim-polyglot
Plugin 'sheerun/vim-polyglot'

" https://github.com/andymass/vim-matchup
Plugin 'andymass/vim-matchup'

" support vim 8+ packages
" https://vimawesome.com/plugin/surround-vim
Plugin 'tpope/vim-surround'

" autoclose与neocomplete有一处不兼容的问题，插入模式下如果有补全窗口时，需要按两次esc才能回到插入模式。用auto-pairs则ok
" Plugin 'Townk/vim-autoclose'
" https://vimawesome.com/plugin/auto-pairs
Plugin 'jiangmiao/auto-pairs'

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

" https://vimawesome.com/plugin/undotree-vim
Plugin 'mbbill/undotree'
nnoremap ,u :UndotreeToggle<cr>
if has("persistent_undo")
  set undodir=~/.undodir/
  set undofile
endif

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

