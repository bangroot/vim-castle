autocmd FileType groovy let b:vcm_tab_complete = 'tags'
autocmd FileType java let b:vcm_tab_complete = 'tags'
autocmd CompleteDone * pclose
