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

