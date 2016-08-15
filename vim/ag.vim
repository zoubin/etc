if executable('ag')
  set grepprg=ag\ --nogroup\ --nocolor
  "set grepprg=ag\ --vimgrep\ $*
  "set grepformat=%f::%l:%c:%m

  " bind K to grep word under cursor
  nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>
  "vnoremap K y:grep! getreg('"')<CR>:cw<CR>

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  " let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
  " ag is fast enough that CtrlP doesn't need to cache
  " let g:ctrlp_use_caching = 0
endif

