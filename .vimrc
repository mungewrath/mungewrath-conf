set number
filetype plugin on
setlocal shiftwidth=4 tabstop=4 smarttab expandtab
autocmd FileType ruby setlocal shiftwidth=2 tabstop=2
autocmd FileType html setlocal shiftwidth=2 tabstop=2
autocmd FileType yaml setlocal shiftwidth=2 tabstop=2
autocmd FileType make setlocal smarttab=off expandtab=off
autocmd BufRead,BufNewFile *.html.erb setlocal filetype=html
runtime macros/matchit.vim
