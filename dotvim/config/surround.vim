let g:surround_indent = 1
autocmd FileType groovy\|java let g:surround_{char2nr("t")} = "try { \r } catch () {\n}"
autocmd FileType groovy\|java let g:surround_{char2nr("f")} = "try { \r } catch () {\n} finally {\n}"
autocmd FileType groovy\|java let g:surround_{char2nr("i")} = "if() { \n\r\n }"
autocmd FileType groovy\|java let g:surround_{char2nr("e")} = "if() { \n\r\n } else {\n}"
