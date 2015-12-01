function! s:SetupGradleCompiler()
	if !empty(glob("build.gradle"))
		if !empty(glob("gradlew"))
			:compiler ./gradlew
			let g:VimCompileCustomBuilder='gradlew'
			let g:VimCompileCustomBuilderCompile='./gradlew --daemon -i test'
			let g:VimCompileCustomBuilderExec='./gradlew --daemon build'
			let g:VimCompileCustomBuilderClean='./gradlew --daemon clean'
			let g:BangRootRunnerCmd='./gradlew --daemon run'
			let g:BangRootDebuggerCmd='./gradlew --daemon debug'
			nnoremap <silent> <Leader>G :Dispatch ./gradlew --daemon 
		endif
	endif
endfunction


au BufRead * :call s:SetupGradleCompiler()

let g:dispatch_compilers = {
	\ './gradlew': 'gradlew'
	\ }

