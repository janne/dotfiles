if exists("b:did_markdown")
  finish
endif
let b:did_markdown = 1

autocmd BufWritePost <buffer> silent !md2html "%"
nmap <buffer> <leader>m :w<CR>:silent !open "%.html"<CR>

setlocal tabstop=4
setlocal softtabstop=4
setlocal shiftwidth=4
