" plugins
noremap ,n :NERDTreeToggle<CR>
vnoremap K y:call git#GrepText(getreg('"'))<CR>
nnoremap K :call git#GrepCursorWord()<CR>
nnoremap <silent> ,t :CommandT<CR>
nnoremap <silent> ,b :CommandTBuffer<CR>
nnoremap <silent> ,j :CommandTJump<CR>
nnoremap <silent> ,r :CommandTMRU<CR>
nnoremap <silent> ,g :Gblame<CR>

nnoremap [c :cprevious<CR>
nnoremap ]c :cnext<CR>
if !exists('autocommands_loaded')
  let autocommands_loaded = 1
  au QuickFixCmdPost *grep*,make cwindow
  au BufNewFile,BufRead *.js setlocal makeprg=standard\ %
  au BufNewFile,BufRead *.js nmap <buffer> ,s :make<CR>
endif

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
"nnoremap <silent><leader>w :%s/\s\+$//<CR>:let @/=''<CR>

" http://stackoverflow.com/questions/2600783/how-does-the-vim-write-with-sudo-trick-work
" Allow saving of files as sudo when I forgot to start vim using sudo.
" However, the following line did not work for me!
" cmap w!! w !sudo tee > /dev/null %
nnoremap <silent><leader>W :w !sudo tee > /dev/null %<CR>

nnoremap <leader><space> :noh<CR>
" 切换tab
" deprecated. Use [count]gt instead
" nnoremap <C-N> :tabnext<CR>
" nnoremap <C-P> :tabprevious<CR>

" 末尾添加分号
"nnoremap <leader>a m`A;<esc>``
"inoremap <leader>a <esc>m`A;<esc>``a

" 扩展%
"noremap g{ f{%
"noremap g[ f[%
"noremap g( f(%
"noremap g} f}%
"noremap g] f]%
"noremap g) f)%

" insert mode shortcut
" 模拟mac编辑方式 deprecated use `CTRL-o {normal command}` instead
"inoremap <C-E> <Esc>A
"inoremap <C-A> <Esc>I
"inoremap <C-J> <Down>
"inoremap <C-K> <Up>
"inoremap <C-B> <Left>
"inoremap <C-F> <Right>
"inoremap <C-D> <DELETE>

" command line edit
cnoremap <C-A> <Home>
cnoremap <C-E> <End>
cnoremap <C-B> <Left>
cnoremap <C-F> <Right>
cnoremap <C-D> <DELETE>

"function! ShowJumpList()
"  redir =>output
"  silent jumps
"  redir END
"  botright new
"  setlocal buftype=nofile bufhidden=wipe nobuflisted noswapfile nowrap
"  put =output
"endfunction
"nnoremap [j :call ShowJumpList()<CR>

