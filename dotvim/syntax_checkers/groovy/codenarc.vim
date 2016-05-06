if exists('g:loaded_syntastic_groovy_codenarc_checker')
	finish
endif
let g:loaded_syntastic_groovy_codenarc_checker = 1

let s:save_cpo = &cpo
set cpo&vim

function! SyntaxCheckers_groovy_codenarc_IsAvailable() dict
    return 1
endfunction

function! SyntaxCheckers_groovy_codenarc_GetLocList() dict
	let makeprg = self.makeprgBuild({
				\ 'exe': [self.getExec()],
				\ 'fname': '',
				\ 'args': expand('%')})
	let errorformat =
				\ '%+P%.%#File: %f,'.
				\ '%E%.%#Violation%.%#P=1%.%#Line=%l%.%#Msg=[%m,'.
				\ '%W%.%#Violation%.%#P=2%.%#Line=%l%.%#Msg=[%m,'.
				\ '%I%.%#Violation%.%#P=3%.%#Line=%l%.%#Msg=[%m,'.
 				\ '%-Q,'.
				\ '%-G%.%#'

	return SyntasticMake({
				\ 'makeprg': makeprg,
				\ 'errorformat': errorformat })
endfunction

call g:SyntasticRegistry.CreateAndRegisterChecker({
			\ 'filetype': 'groovy',
			\ 'name': 'codenarc',
			\ 'exec': 'codenarc'})

let &cpo = s:save_cpo
unlet s:save_cpo

