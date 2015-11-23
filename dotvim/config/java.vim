
let java_allow_cpp_keywords=1
let java_highlight_all=1
let java_minlines=50
"autocmd BufRead *.java nnoremap <silent> <Leader>o o@Override<esc>
autocmd FileType java set omnifunc=javacomplete#Complete
autocmd FileType groovy set omnifunc=javacomplete#Complete

function! SetJDK(version)
   call RemoveFromPath('/System/Library/Frameworks/JavaVM.framework/Home/bin')
   call RemoveFromPath($JAVA_HOME)
   let $JAVA_HOME=system('/usr/libexec/java_home -v ' . a:version)[:-2]

   let $PATH = $JAVA_HOME . '/bin:' . $PATH
endfunction

function! RemoveFromPath(str)
	let $PATH = system('echo $PATH | sed -E -e "s;:' . a:str . ';;" -e "s;' . a:str . ':?;;"')
endfunction
