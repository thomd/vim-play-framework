" Play Framework
"
" tag files should be handled as html
" play specifies that tag file must reside within app/views/tags
"
"     for `autocmd` see http://learnvimscriptthehardway.stevelosh.com/chapters/12.html
"
autocmd BufNewFile,BufRead */views/tags/*.tag set filetype=html syntax=html
