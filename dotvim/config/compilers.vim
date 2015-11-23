function! s:SetupGradleCompiler()
	if !empty(glob("build.gradle"))
		if !empty(glob("gradlew"))
			:compiler gradlew
			let g:VimCompileCustomBuilder='gradlew'
			let g:VimCompileCustomBuilderCompile='./gradlew --daemon test'
			let g:VimCompileCustomBuilderExec='./gradlew --daemon build'
			let g:VimCompileCustomBuilderClean='./gradlew --daemon clean'
		endif
	endif
endfunction


au BufRead * :call s:SetupGradleCompiler()

