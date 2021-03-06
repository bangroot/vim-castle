
if has("unix")
	let s:uname = system("echo -n \"$(uname)\"")
	if s:uname == "Darwin"
		":set <S-F1>=[1;2P
		":set <S-F2>=[1;2Q
		":set <S-F3>=[1;2R
		":set <S-F4>=[1;2S
		":set <S-F5>=[15;2~
		":set <S-F6>=[17;2~
		":set <S-F7>=[18;2~
		":set <S-F8>=[19;2~
		":set <S-F9>=[20;2~
		":set <S-F10>=[21;2~
		":set <S-F11>=[23;2~
		":set <S-F12>=[24;2~
		:map  <C-/>
		:map! <Esc>[1;5P <C-F1>
		:map <Esc>[1;5Q <C-F2>
		:map! <Esc>[1;5Q <C-F2>
		:map <Esc>[1;5R <C-F3>
		:map! <Esc>[1;5R <C-F3>
		:map <Esc>[1;5S <C-F4>
		:map! <Esc>[1;5S <C-F4>
		:map <Esc>[15;5~ <C-F5>
		:map! <Esc>[15;5~ <C-F5>
		:map <Esc>[17;5~ <C-F6>
		:map! <Esc>[17;5~ <C-F6>
		:map <Esc>[18;5~ <C-F7>
		:map! <Esc>[18;5~ <C-F7>
		:map <Esc>[19;5~ <C-F8>
		:map! <Esc>[19;5~ <C-F8>
		:map <Esc>[20;5~ <C-F9>
		:map! <Esc>[20;5~ <C-F9>
		:map <Esc>[21;5~ <C-F10>
		:map! <Esc>[21;5~ <C-F10>
		:map <Esc>[23;5~ <C-F11>
		:map! <Esc>[23;5~ <C-F11>
		:map <Esc>[24;5~ <C-F12>
		:map! <Esc>[24;5~ <C-F12>
		:map <Esc>[1;6P <C-S-F1>
		:map! <Esc>[1;6P <C-S-F1>
		:map <Esc>[1;6Q <C-S-F2>
		:map! <Esc>[1;6Q <C-S-F2>
		:map <Esc>[1;6R <C-S-F3>
		:map! <Esc>[1;6R <C-S-F3>
		:map <Esc>[1;6S <C-S-F4>
		:map! <Esc>[1;6S <C-S-F4>
		:map <Esc>[15;6~ <C-S-F5>
		:map! <Esc>[15;6~ <C-S-F5>
		:map <Esc>[17;6~ <C-S-F6>
		:map! <Esc>[17;6~ <C-S-F6>
		:map <Esc>[18;6~ <C-S-F7>
		:map! <Esc>[18;6~ <C-S-F7>
		:map <Esc>[19;6~ <C-S-F8>
		:map! <Esc>[19;6~ <C-S-F8>
		:map <Esc>[20;6~ <C-S-F9>
		:map! <Esc>[20;6~ <C-S-F9>
		:map <Esc>[21;6~ <C-S-F10>
		:map! <Esc>[21;6~ <C-S-F10>
		:map <Esc>[23;6~ <C-S-F11>
		:map! <Esc>[23;6~ <C-S-F11>
		:map <Esc>[24;6~ <C-S-F12>
		:map! <Esc>[24;6~ <C-S-F12>
		if has('nvim')
      :map!   <F25>   <C-F1>
      :map    <F26>   <C-F2>
      :map!   <F26>   <C-F2>
      :map    <F27>   <C-F3>
      :map!   <F27>   <C-F3>
      :map    <F28>   <C-F4>
      :map!   <F28>   <C-F4>
      :map    <F29>   <C-F5>
      :map!   <F29>   <C-F5>
      :map    <F30>   <C-F6>
      :map!   <F30>   <C-F6>
      :map    <F31>   <C-F7>
      :map!   <F31>   <C-F7>
      :map    <F32>   <C-F8>
      :map!   <F32>   <C-F8>
      :map    <F33>   <C-F9>
      :map!   <F33>   <C-F9>
      :map    <F34>   <C-F10>
      :map!   <F34>   <C-F10>
      :map    <F35>   <C-F11>
      :map!   <F35>   <C-F11>
      :map    <F36>   <C-F12>
      :map!   <F36>   <C-F12>
      :map    <F37>   <C-S-F1>
      :map!   <F37>   <C-S-F1>
      :map    <F38>   <C-S-F2>
      :map!   <F38>   <C-S-F2>
      :map    <F39>   <C-S-F3>
      :map!   <F39>   <C-S-F3>
      :map    <F40>   <C-S-F4>
      :map!   <F40>   <C-S-F4>
      :map    <F41>   <C-S-F5>
      :map!   <F41>   <C-S-F5>
      :map    <F42>   <C-S-F6>
      :map!   <F42>   <C-S-F6>
      :map    <F43>   <C-S-F7>
      :map!   <F43>   <C-S-F7>
      :map    <F44>   <C-S-F8>
      :map!   <F44>   <C-S-F8>
      :map    <F45>   <C-S-F9>
      :map!   <F45>   <C-S-F9>
      :map    <F46>   <C-S-F10>
      :map!   <F46>   <C-S-F10>
      :map    <F47>   <C-S-F11>
      :map!   <F47>   <C-S-F11>
      :map    <F48>   <C-S-F12>
      :map!   <F48>   <C-S-F12>
		endif
	endif
endif

