function! s:SetupGradleCompiler()
	if !empty(glob("build.gradle"))
		if !empty(glob("gradlew"))
			:compiler ./gradlew
			let g:VimCompileCustomBuilder='gradlew'
			let g:VimCompileCustomBuilderCompile='./gradlew --daemon build'
			let g:VimCompileCustomBuilderExec='./gradlew --daemon run'
			let g:VimCompileCustomBuilderClean='./gradlew --daemon clean'
			let g:DispatchRunnerCmd='./gradlew --daemon run'
			let g:DispatchDebuggerCmd='./gradlew --daemon debug'
			let g:DebuggerOptions={}
			nnoremap <silent> <Leader>G :Dispatch ./gradlew --daemon 
		endif
	endif
endfunction


au BufRead * :call s:SetupGradleCompiler()

let g:dispatch_compilers = {
	\ './gradlew': 'gradlew'
	\ }

