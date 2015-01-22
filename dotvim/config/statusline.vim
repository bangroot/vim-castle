
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline_powerline_fonts = 1
let g:airline_theme='tomorrow'

set statusline=%t%m%r%h%w\ [%{&ff}\ \|\ %04l,%04v\ (%p%%)\ \|\ lines:\ %L]\ %{fugitive#statusline()}
set laststatus=2

if has("unix")
	let s:uname = system("echo -n \"$(uname)\"")
	if s:uname == "Darwin"
		set rtp+=/usr/local/lib/python2.7/site-packages/powerline/bindings/vim/
	else
		set rtp+=$HOME/.local/lib/python2.7/site-packages/powerline/bindings/vim/
	endif
endif
set laststatus=2
