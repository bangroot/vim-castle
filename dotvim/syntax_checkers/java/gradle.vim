if exists('g:loaded_syntastic_java_gradle_checker')
	finish
endif
let g:loaded_syntastic_java_gradle_checker = 1

let s:save_cpo = &cpo
set cpo&vim

function! SyntaxCheckers_java_gradle_GetLocList() dict
	let makeprg = self.makeprgBuild({
				\ 'exe': [self.getExec()],
				\ 'fname': '',
				\ 'args': '--daemon classes testClasses' })
	let errorformat =
				\ '%E:compileJava%f:%l: %m,'.
				\ '%E%f: %l: %m,'.
				\ '%Z%p^,'.
				\ '%-G%.%#'

	return SyntasticMake({
				\ 'makeprg': makeprg,
				\ 'errorformat': errorformat })
endfunction

call g:SyntasticRegistry.CreateAndRegisterChecker({
			\ 'filetype': 'java',
			\ 'name': 'gradle',
			\ 'exec': './gradlew'})

let &cpo = s:save_cpo
unlet s:save_cpo


