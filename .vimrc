set number
filetype plugin on
autocmd FileType python setlocal shiftwidth=4 tabstop=4 smarttab expandtab
autocmd FileType ruby setlocal shiftwidth=2 tabstop=2 smarttab expandtab
autocmd FileType html setlocal shiftwidth=2 tabstop=2 smarttab expandtab
autocmd BufRead,BufNewFile *.html.erb setlocal filetype=html
runtime macros/matchit.vim
