let mapleader = ","
let g:mapleader = ","
nnoremap <silent> <C-F5> :so ~/.vim/config/keymap.vim<cr>

"File searching
nnoremap <silent> <Leader>p :CtrlP<cr>
nnoremap <silent> <Leader>e :CtrlPMRU<cr>
nnoremap <silent> <Leader>b :CtrlPBuffer<cr>
nnoremap <silent> <Leader>a :Ag! 

map  ?? <Plug>(easymotion-sn)
omap ?? <Plug>(easymotion-tn)
nmap s <Plug>(easymotion-s2)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)

"Selection
map <Leader>w <Plug>(expand_region_expand)
map <Leader>s <Plug>(expand_region_shrink)

"Open structure view
map <leader>s :TlistToggle<cr>
let tlist_groovy_settings = 'groovy;p:package;c:class;i:interface;f:function;l:closures;v:variables'
inoremap <C-Space> <C-X><C-U>
nnoremap [[ <<
nnoremap ]] >>
vnoremap [[ <gv
vnoremap ]] >gv

nnoremap <F3> :set hlsearch!<cr>
"Close the current buffer
nnoremap <F4> :bp <BAR> bd #<CR>
map <F12> <C-W>z :cclo<cr>

"Folding
map <C-f> za
map <C-f><C-f> zR
map <C-f><C-f><C-f> zM

" git
nnoremap <silent> <Leader>gd :Gdiff<cr>
nnoremap <silent> <Leader>gl :Glog<cr>
nnoremap <silent> <Leader>gs :Gstatus<cr>
nnoremap <silent> <Leader>gb :Gblame<cr>
nnoremap <silent> <Leader>gc :Gcommit<cr>
nnoremap <silent> <Leader>gp :Gpush<cr>
nnoremap <silent> <Leader>GC :Git svn dcommit<cr>
nnoremap <silent> <Leader>GR :Git svn rebase<cr>:CommandTFlush<cr>
nnoremap <silent> <Leader>amend :Git commit --amend<cr>
nnoremap <silent> <Leader>stash :Git stash<cr>
nnoremap <silent> <Leader>pop :Git stash pop<cr>
nnoremap <Leader>gD <c-w>h<c-w>c

" java
nnoremap <silent> <Leader>j6 :call SetJDK('1.6')<cr>
nnoremap <silent> <Leader>j7 :call SetJDK('1.7')<cr>
nnoremap <silent> <Leader>j8 :call SetJDK('1.8')<cr>

nnoremap <silent> <Leader>u :GundoToggle<cr>

nnoremap <F9> :Dispatch<cr>

" vim-notes
nnoremap <silent> <Leader>d ^wiDONE <esc>

" YankRing
nnoremap <silent> <Leader>yr :YRShow<cr>

" Windows 
nnoremap <silent> <C-h> :wincmd h<CR>
nnoremap <silent> <C-j> :wincmd j<CR>
nnoremap <silent> <C-k> :wincmd k<CR>
nnoremap <silent> <C-l> :wincmd l<CR>

":cmap bc Bclose
if has("unix")
	let s:uname = system("echo -n \"$(uname)\"")
	if s:uname == "Darwin"
		nnoremap <silent> <Leader>pp :set paste<cr>$:r ! pbpaste <cr>:set nopaste<cr>$
	else
		nnoremap <silent> <Leader>pp :set paste<cr>$:r ! xclip -o<cr>:set nopaste<cr>$
		nnoremap <silent> <Leader>pv :set paste<cr>$:r ! xclip -selection clipboard -o<cr>:set nopaste<cr>$
	endif
endif

nnoremap <F6> :set spell!<cr>
nnoremap <Leader>h :set list!<cr>
nnoremap <F8> :set wrap!<cr>

" NERDTree
nnoremap \\ :NERDTreeToggle<cr>
nnoremap <leader>\\ :NERDTreeFind<cr>
nnoremap <tab><tab> :call g:NERDTreeFocusFind()<cr>

nnoremap == :bnext<cr>
nnoremap -- :bprev<cr>

nnoremap <leader>i :JavaImport<cr>
map <leader>f mzgg=G`z<CR>
