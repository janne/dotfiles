if exists("b:did_markdown")
  finish
endif
let b:did_markdown= 1

autocmd BufWritePost <buffer> silent !md2html "%"
nmap <buffer> <leader>m :w<CR>:silent !open "%.html"<CR>

set tabstop=4
set softtabstop=4
set shiftwidth=4
