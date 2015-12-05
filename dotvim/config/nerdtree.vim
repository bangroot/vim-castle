
let NERDTreeWinSize=42
let NERDTreeHighlightCursorline=0

function! g:NERDTreeFocusFind()
	if (exists("b:NERDTree"))
		NERDTreeFocusToggle
	else
		NERDTreeFind
	endif
endfunction

