source <sfile>:h/vim/theme.vim
source <sfile>:h/vim/plugin.vim
source <sfile>:h/vim/maps.vim
source <sfile>:h/vim/filetype.vim

"au BufNewFile,BufRead *.{es6,.jsx} setf javascript

" Store swap files in fixed location, not current directory.
set dir=~/.vimswap//,/var/tmp//,/tmp//,.

set formatoptions+=jor

" 打开文件时总是跳到最后光标所在的行
autocmd BufReadPost *
    \ if line("'\"") > 0 && line ("'\"") <= line("$") |
    \   exe "normal! g'\"" |
    \ endif

au BufRead,BufNewFile *.thrift set filetype=thrift
au! Syntax thrift source ~/.vim/thrift.vim
