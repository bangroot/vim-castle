if exists('g:loaded_syntastic_groovy_groovy_checker')
	finish
endif
let g:loaded_syntastic_groovy_groovy_checker = 1

let s:save_cpo = &cpo
set cpo&vim

function! SyntaxCheckers_groovy_groovy_GetLocList() dict
	let makeprg = self.makeprgBuild({
				\ 'exe': [self.getExec()],
				\ 'args_before': '-e "import org.codehaus.groovy.control.*; file = new File(args[0]); unit = new CompilationUnit(); unit.addSource(file); try { unit.compile(Phases.CONVERSION); } catch (MultipleCompilationErrorsException e) { e.errorCollector.write(new PrintWriter(System.out, true), null) } "' })
	let errorformat =
				\ '%E%f: %l: %m,'.
				\ '%Z%p^,'.
				\ '%-G%.%#'

	return SyntasticMake({
				\ 'makeprg': makeprg,
				\ 'errorformat': errorformat })
endfunction

call g:SyntasticRegistry.CreateAndRegisterChecker({
			\ 'filetype': 'groovy',
			\ 'name': 'groovy',
			\ 'exec': 'groovy'})

let &cpo = s:save_cpo
unlet s:save_cpo

