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
Plugin 'VundleVim/Vundle.vim'
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.

" open a NERDTree automatically when vim starts up
" autocmd vimenter * NERDTree
" https://github.com/preservim/nerdtree
Plugin 'preservim/nerdtree'
noremap <leader>n :NERDTreeToggle<CR>

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
nmap <leader>a1 <Plug>AirlineSelectTab1
nmap <leader>a2 <Plug>AirlineSelectTab2
nmap <leader>a3 <Plug>AirlineSelectTab3
nmap <leader>a4 <Plug>AirlineSelectTab4
nmap <leader>a5 <Plug>AirlineSelectTab5
nmap <leader>a6 <Plug>AirlineSelectTab6
nmap <leader>a7 <Plug>AirlineSelectTab7
nmap <leader>a8 <Plug>AirlineSelectTab8
nmap <leader>a9 <Plug>AirlineSelectTab9
nmap <leader>a0 <Plug>AirlineSelectTab0
nmap <leader>a- <Plug>AirlineSelectPrevTab
nmap <leader>a+ <Plug>AirlineSelectNextTab

" https://vimawesome.com/plugin/emmet-vim
" https://raw.githubusercontent.com/mattn/emmet-vim/master/TUTORIAL
Plugin 'mattn/emmet-vim'
let g:user_emmet_leader_key = '<leader>e'

" not support vim 8+ packages
" :Tabstop [count]
Plugin 'zoubin/vim-tabstop'

" not support vim 8+ packages
" https://github.com/zoubin/vim-gotofile
Plugin 'zoubin/vim-gotofile'
let g:gotofile_extensions = ['.js', '.ts', '.jsx', '.tsx', '.es6', '.json', '.wxml', '.wxss']

" https://github.com/sheerun/vim-polyglot
Plugin 'sheerun/vim-polyglot'

" https://github.com/chemzqm/wxapp.vim
Plugin 'chemzqm/wxapp.vim'

" https://github.com/andymass/vim-matchup
Plugin 'andymass/vim-matchup'
hi MatchWord ctermfg=red guifg=blue cterm=underline gui=underline

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
let g:CommandTMaxFiles=200000
let g:CommandTFileScanner='watchman'
let g:CommandTMaxHeight=20
let g:CommandTWildIgnore=&wildignore . ",*/node_modules,*/dist"
let g:CommandTTraverseSCM='dir'
let g:CommandTSmartCase=1
nmap <silent> <Leader>tt <Plug>(CommandT)
nmap <silent> <Leader>tb <Plug>(CommandTBuffer)
nmap <silent> <Leader>tj <Plug>(CommandTJump)
nmap <silent> <Leader>tr <Plug>(CommandTMRU)
nmap <silent> <Leader>te :CommandT %:h<CR>

"Plugin 'Konfekt/FastFold'

Plugin 'tpope/vim-fugitive'
if !exists('autocommands_loaded')
  let autocommands_loaded = 1
  au QuickFixCmdPost *grep*,make cwindow
  au BufNewFile,BufRead *.js setlocal makeprg=standard\ %
  au BufNewFile,BufRead *.js nmap <buffer> ,s :make<CR>
endif
nnoremap [c :cprevious<CR>
nnoremap ]c :cnext<CR>
vnoremap <leader>fk y:Ggrep <c-r>"<CR>
nnoremap <leader>fk :Ggrep <c-r><c-w><CR>
nnoremap <silent> <leader>f :Gblame<CR>
"set statusline=%{fugitive#statusline()}

" https://github.com/ycm-core/YouCompleteMe
Plugin 'valloric/youcompleteme'
nnoremap <leader>yd :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>yf :YcmCompleter GoToDefinition<CR>

" https://vimawesome.com/plugin/undotree-vim
Plugin 'mbbill/undotree'
nnoremap <leader>u :UndotreeToggle<cr>
if has("persistent_undo")
  set undodir=~/.undodir/
  set undofile
endif

" https://github.com/sirver/ultisnips
" Track the engine.
Plugin 'SirVer/ultisnips'
" Snippets are separated from the engine. Add this if you want them:
" https://vimawesome.com/plugin/vim-snippets
Plugin 'honza/vim-snippets'
" Trigger configuration. You need to change this to something other than <tab> if you use one of the following:
" - https://github.com/Valloric/YouCompleteMe
" - https://github.com/nvim-lua/completion-nvim
let g:UltiSnipsExpandTrigger="<c-l>"
let g:UltiSnipsJumpForwardTrigger="<c-f>"
let g:UltiSnipsJumpBackwardTrigger="<c-b>"

" https://vimawesome.com/plugin/vim-gitgutter
Plugin 'airblade/vim-gitgutter'
"nnoremap <leader>rl :GitGutterLineHighlightsToggle<cr>
nmap ]h <Plug>(GitGutterNextHunk)
nmap [h <Plug>(GitGutterPrevHunk)

" https://vimawesome.com/plugin/commentary-vim
Plugin 'tpope/vim-commentary'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Put your non-Plugin stuff after this line
" ------------------------ </vundle>
