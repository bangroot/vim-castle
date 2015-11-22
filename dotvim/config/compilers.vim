function! s:SetupGradleCompiler()
	if !empty(glob("build.gradle"))
		if !empty(glob("gradlew"))
			:compiler gradlew
			let g:VimCompileCustomBuilder='gradlew'
			let g:VimCompileCustomBuilderCompile='./gradlew build'
			let g:VimCompileCustomBuilderExec='./gradlew run'
			let g:VimCompileCustomBuilderClean='./gradlew clean'
		endif
	endif
endfunction


au BufRead * :call s:SetupGradleCompiler()

