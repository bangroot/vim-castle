let g:easytags_always_enabled = 1
let g:easytags_async = 1
set tags=./.tags;
let g:easytags_dynamic_files = 2

function! RegenerateTags()
	silent !clear
	execute "!rm ./tags"
	execute "!ctags -R -f ./tags grails-app src test webapp"
endfunction

