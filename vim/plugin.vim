" <vundle> ------------------------
" https://github.com/VundleVim/Vundle.vim
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" https://vimcolorschemes.com/
Plugin 'morhetz/gruvbox'
" set background=dark
" https://github.com/morhetz/gruvbox/wiki/Installation
autocmd vimenter * ++nested colorscheme gruvbox

Plugin 'zoubin/vim-tabstop'
Plugin 'zoubin/vim-gotofile'

" Plugin 'preservim/nerdtree'

let g:user_emmet_leader_key = '<leader>e'
Plugin 'mattn/emmet-vim'

Plugin 'sheerun/vim-polyglot'
" let g:vue_pre_processors = ['pug', 'scss']

Plugin 'chemzqm/wxapp.vim'
Plugin 'honza/vim-snippets'

" https://github.com/andymass/vim-matchup
Plugin 'andymass/vim-matchup'
augroup matchup_matchparen_highlight
  autocmd!
  autocmd ColorScheme * hi MatchWord ctermfg=red guifg=blue cterm=underline gui=underline
augroup END

" fuzzy file find
" https://github.com/junegunn/fzf/blob/master/README-VIM.md
Plugin 'junegunn/fzf'
" https://github.com/BurntSushi/ripgrep/blob/master/GUIDE.md
let $FZF_DEFAULT_COMMAND = 'rg --files --no-ignore --hidden --glob "!.git/*"'
Plugin 'junegunn/fzf.vim'

" git plugin
" https://github.com/tpope/vim-fugitive
Plugin 'tpope/vim-fugitive'
if !exists('autocommands_loaded')
  let autocommands_loaded = 1
  au QuickFixCmdPost *grep*,make cwindow
  au BufNewFile,BufRead *.js setlocal makeprg=standard\ %
  au BufNewFile,BufRead *.js nmap <buffer> ,s :make<CR>
endif
" set statusline=%{fugitive#statusline()}

" git hunks。感觉有点慢，关了再试用一段时间
" https://github.com/airblade/vim-gitgutter
" Plugin 'airblade/vim-gitgutter'

" Plugin 'vim-airline/vim-airline'
" Plugin 'vim-airline/vim-airline-themes'
" https://github.com/vim-airline/vim-airline/wiki/Screenshots
" let g:airline_theme = 'murmur'
" let g:airline_solarized_bg='dark'
" let g:airline#extensions#tabline#enabled = 1

Plugin 'tpope/vim-surround'

Plugin 'jiangmiao/auto-pairs'

" 为了在vue中添加注释，需要同时使用以下两个插件
" https://github.com/posva/vim-vue#how-to-use-commenting-functionality-with-multiple-languages-in-vue-files
Plugin 'tyru/caw.vim'
Plugin 'Shougo/context_filetype.vim'

" allows plugins that work with language servers
" coc-snippets": ">=3.1.5",
let g:coc_global_extensions = [
  \ 'coc-tsserver',
  \ 'coc-fzf-preview',
  \ 'coc-tabnine',
  \ 'coc-eslint',
  \ 'coc-stylelint',
  \ 'coc-vetur',
  \ 'coc-css',
  \ 'coc-prettier',
  \ 'coc-html',
  \ 'coc-json',
  \ 'coc-vimlsp',
  \ 'coc-thrift-syntax-support',
  \ 'coc-snippets',
  \ 'coc-explorer',
  \ 'coc-git'
  \ ]
Plugin 'neoclide/coc.nvim'
" TextEdit might fail if hidden is not set.
set hidden
" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup
set cmdheight=1
" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300
" Don't pass messages to |ins-completion-menu|.
" set shortmess+=c
" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved
" set signcolumn=yes
" Use K to show documentation in preview window
nnoremap <silent> K :call ShowDocumentation()<CR>
function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

" status line
" https://github.com/itchyny/lightline.vim
" lightline
let g:lightline = {
  \ 'active': {
  \   'left': [
  \     [ 'mode', 'paste' ],
  \     [ 'gitbranch', 'cocstatus', 'relativepath' ]
  \   ],
  \   'right':[
  \     [ 'filetype' ],
  \     [ 'blame' ]
  \   ],
  \ },
  \ 'component_function': {
  \   'blame': 'LightlineGitBlame',
  \   'gitbranch': 'FugitiveHead',
  \ }
\ }
function! LightlineGitBlame() abort
  let blame = get(b:, 'coc_git_blame', '')
  " return blame
  return winwidth(0) > 120 ? blame : ''
endfunction
Plugin 'itchyny/lightline.vim'
set noshowmode
autocmd User CocGitStatusChange {command}

" Plugin 'github/copilot.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" 打开语法高亮
syntax enable
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Put your non-Plugin stuff after this line
" ------------------------ </vundle>

" 切换时维持目录树定位在当前文件位置
" map <silent> <leader>n :call <SID>toggleNERDTreeFind()<CR>
" function! s:toggleNERDTreeFind()
"   if g:NERDTree.ExistsForTab() && g:NERDTree.IsOpen()
"     execute 'NERDTreeClose'
"   else
"     execute 'NERDTreeFind'
"   endif
" endfunction
" Exit Vim if NERDTree is the only window remaining in the only tab.
" autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

nmap <silent> <leader>n <Cmd>CocCommand explorer<CR>

" 文件预览
" https://github.com/yuki-yano/fzf-preview.vim/blob/main/doc/fzf_preview_vim.txt
nmap <leader>f [fzf-p]
xmap <leader>f [fzf-p]
nnoremap <silent> [fzf-p]o     :<C-u>CocCommand fzf-preview.FromResources buffer project_mru<CR>
nnoremap <silent> [fzf-p]O     :<C-u>CocCommand fzf-preview.FromResources project_mru git<CR>
nnoremap <silent> [fzf-p]j     :<C-u>CocCommand fzf-preview.Jumps<CR>
" nnoremap <silent> [fzf-p]g;    :<C-u>CocCommand fzf-preview.Changes<CR>
map <silent> <leader>ff :Files<CR>
nmap <silent> <leader>fb :Buffers<CR>

" Git操作
nmap <leader>g [git]
xmap <leader>g [git]
nnoremap <silent> [git]s    :<C-u>CocCommand fzf-preview.GitStatus<CR>
nnoremap [git]r    :<C-u>CocCommand fzf-preview.ProjectGrep<Space>
xnoremap [git]r    "sy:CocCommand   fzf-preview.ProjectGrep<Space>-F<Space>"<C-r>=substitute(substitute(@s, '\n', '', 'g'), '/', '\\/', 'g')<CR>"
nmap [git]g [git]r <c-r><c-w><CR>
" vnoremap [git]g [git]r <c-r>"<CR>
" Run FzfPreviewProjectGrep with the same arguments as before.
nmap [git]h :CocCommand fzf-preview.ProjectGrepRecall<CR>
nnoremap <silent> [git]b :Git blame<CR>

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: There's always complete item selected by default, you may want to enable
" no select by `"suggest.noselect": true` in your configuration file.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
" inoremap <silent><expr> <TAB>
"       \ coc#pum#visible() ? coc#pum#next(1) :
"       \ CheckBackspace() ? "\<Tab>" :
"       \ coc#refresh()
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ CheckBackspace() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"
" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
let g:coc_snippet_next = '<tab>'

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
" xmap ic <Plug>(coc-classobj-i)
" omap ic <Plug>(coc-classobj-i)
" xmap ac <Plug>(coc-classobj-a)
" omap ac <Plug>(coc-classobj-a)

" Remap <C-f> and <C-b> for scroll float windows/popups.
" Note coc#float#scroll works on neovim >= 0.4.0 or vim >= 8.2.0750
nnoremap <nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
nnoremap <nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
inoremap <nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
inoremap <nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
vnoremap <nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#nvim_scroll(1, 1) : "\<C-f>"
vnoremap <nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#nvim_scroll(0, 1) : "\<C-b>"

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of language server.
" nmap <silent> <C-s> <Plug>(coc-range-select)
" xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
" command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
" command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Mappings for CoCList
" Show all diagnostics.
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
" nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
" nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
" nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
" nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
" nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
" nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>

nmap ]b <Plug>AirlineSelectNextTab
nmap [b <Plug>AirlineSelectPrevTab

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gD <Plug>(coc-type-definition)
nmap <silent> gs :sp<CR><Plug>(coc-definition)
nmap <silent> gS :vsp<CR><Plug>(coc-definition)
" nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use `[d` and `]d` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [e <Plug>(coc-diagnostic-prev-error)
nmap <silent> ]e <Plug>(coc-diagnostic-next-error)
nmap <silent> [d <Plug>(coc-diagnostic-prev)
nmap <silent> ]d <Plug>(coc-diagnostic-next)

" navigate chunks of current buffer
nmap [g <Plug>(coc-git-prevchunk)
nmap ]g <Plug>(coc-git-nextchunk)
" navigate conflicts of current buffer
" nmap [c <Plug>(coc-git-prevconflict)
" nmap ]c <Plug>(coc-git-nextconflict)
" show chunk diff at current position
nmap gb <Plug>(coc-git-chunkinfo)
" show commit contains current position
" nmap gc <Plug>(coc-git-commit)
" create text object for git chunks
" omap ig <Plug>(coc-git-chunk-inner)
" xmap ig <Plug>(coc-git-chunk-inner)
" omap ag <Plug>(coc-git-chunk-outer)
" xmap ag <Plug>(coc-git-chunk-outer)

" https://stackoverflow.com/questions/27235102/vim-randomly-breaks-syntax-highlighting
autocmd BufEnter * syntax sync fromstart

