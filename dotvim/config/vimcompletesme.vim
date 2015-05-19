autocmd FileType groovy let b:vcm_tab_complete = 'omnifunc'
autocmd FileType java let b:vcm_tab_complete = 'omnifunc'
autocmd CompleteDone * pclose
