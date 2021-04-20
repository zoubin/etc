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
" map <leader>s :source ~/.vimrc<CR>
" map <leader>0 :set number!<CR>
" map <leader>p :set paste!<CR>

" visual模式修改缩进时不退出该模式
vnoremap < <gv
vnoremap > >gv
" 选中后put时再复制put的内容，需要多次选中替换时有用
vnoremap p pgvy
" 复制到系统剪贴板
vnoremap <leader>y "+y
" 选中put的文本（整行）
nnoremap <leader>v V`]
nnoremap <leader>; mxA;<esc>`x
inoremap <leader>; <esc>mxA;<esc>`xa

" 删除行末空格
"nnoremap <silent><leader>w :%s/\s\+$//<CR>:let @/=''<CR>

" http://stackoverflow.com/questions/2600783/how-does-the-vim-write-with-sudo-trick-work
" Allow saving of files as sudo when I forgot to start vim using sudo.
" However, the following line did not work for me!
" cmap w!! w !sudo tee > /dev/null %
" nnoremap <silent><leader>W :w !sudo tee > /dev/null %<CR>

nnoremap <leader><space> :noh<CR>

let s:exts = ['ts', 'wxss', 'wxml', 'js', 'json']
" https://learnvimscriptthehardway.stevelosh.com/chapters/24.html
fun s:ChangeExt(dir)
  let root = expand('%:r')
  let cur_ext = expand('%:e')
  let cur_idx = index(s:exts, cur_ext)
  if cur_idx == -1
    return
  end
  let l = len(s:exts)
  let j = 1
  while j < l
    if a:dir == 'next'
      let start_idx = (cur_idx + j) % l
    else
      let start_idx = (cur_idx - j + l) % l
    end
    let file = root . '.' . s:exts[start_idx]
    if filereadable(file)
      exe 'e ' . file
      return
    end
    let j = j + 1
  endw
endfun
nnoremap ]e :call <SID>ChangeExt('next')<CR>
nnoremap [e :call <SID>ChangeExt('prev')<CR>

inoremap <leader>ww <esc>:w<CR>

" command line edit
cnoremap <C-A> <Home>
cnoremap <C-E> <End>
cnoremap <C-B> <Left>
cnoremap <C-F> <Right>
cnoremap <C-D> <DELETE>

" plugin leader key
" nerdtree <leader>n
" airline  <leader>a
" emmet    <leader>e
" commandt <leader>t
" fugitive <leader>f
" ycm      <leader>y
" undotree <leader>u
