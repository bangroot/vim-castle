" Keymapping based on IntelliJ key maps where it makes sense
" Organized by the same structure as the keymap PDF from JetBrains here:
" https://www.jetbrains.com/idea/docs/IntelliJIDEA_ReferenceCard.pdf
" VIM specific mappings are under the General/VIM section

let mapleader = "\<Space>"
let g:mapleader = "\<Space>"

"""""""""""""""""""""""""""""""""""""""""""""
"Editing
"""""""""""""""""""""""""""""""""""""""""""""

"Code completion
inoremap <C-Space> <C-x><C-o>
"inoremap <C-Space> <C-X><C-U>
map <C-/> <Plug>NERDCommenterToggle
"Block comment ... doesn't work, need to look into key codes
map <C-S-/> <plug>NERDCommenterMinimal
map	<C-I> mzgg=G`z<CR>
nnoremap [[ <<
nnoremap ]] >>
vnoremap [[ <gv
vnoremap ]] >gv
nnoremap <C-F4> :bp <BAR> bd #<CR>

"""""""""""""""""""""""""""""""""""""""""""""
"Search/Replace
"""""""""""""""""""""""""""""""""""""""""""""

nnoremap <silent> <Leader>a :Ag! 
nnoremap <Leader>r :%s/
map  ?? <Plug>(easymotion-sn)
omap ?? <Plug>(easymotion-tn)
nmap s <Plug>(easymotion-s2)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)

"""""""""""""""""""""""""""""""""""""""""""""
"Usage Search
"""""""""""""""""""""""""""""""""""""""""""""

nnoremap <C-F7> :set hlsearch!<cr>

"""""""""""""""""""""""""""""""""""""""""""""
"Compile/Run
"""""""""""""""""""""""""""""""""""""""""""""

"update syntax
nmap <C-S-F9> :SyntasticCheck<cr>
"compile
nmap <C-F9> <C-S-F9> :call vimcompile#Compile(1,0,0,0,0)<CR>
"clean compile
nmap <C-F9><C-F9> :call vimcompile#Compile(1,0,0,0,1)<CR> <F9>

"dispatch
nnoremap <F5> :Dispatch<cr>

"exec
nnoremap <S-F10> :call vimcompile#Compile(0,0,0,1,0)<CR>
nnoremap <S-F9> :exec "Dispatch ".expand(g:DispatchDebuggerCmd)<CR> 
nmap <S-F9><S-F9> :call vebugger#jdb#start(g:DebuggerOptions)<CR> :VBGtoggleTerminalBuffer<CR> :VBGcontinue<CR>
"nnoremap <C-F9> :exec "Dispatch ".expand(g:DispatchRunnerCmd)<CR>
"nnoremap <C-S-F9> :exec "Dispatch ".expand(g:DispatchDebuggerCmd)<CR>

"""""""""""""""""""""""""""""""""""""""""""""
"Debugging
"""""""""""""""""""""""""""""""""""""""""""""

"vebugger
let g:vebugger_leader='<C-d>'
map <F8> :VBGstepOver<CR>
map <F7> :VBGstepIn<CR>
map <S-F8> :VBGstepOut<CR>
map <F9> :VBGcontinue<CR>
map <C-F8> :VBGtoggleBreakpointThisLine<CR>
map <C-F8><C-F8> :VBGeval
vmap <C-F8><C-F8> :VBGevalSelectedText

"""""""""""""""""""""""""""""""""""""""""""""
"Navigation
"""""""""""""""""""""""""""""""""""""""""""""

nnoremap <silent> <Leader>o :CtrlP<cr>
"recent files
nnoremap <silent> <C-e> :CtrlPMRU<cr>
"open buffers
nnoremap <silent> <Leader>b :CtrlPBuffer<cr>
nnoremap <silent> <Leader>w :w<CR>
"go to declaration/jump to tag
nmap <C-B> g]
nmap <C-F12> :TagbarOpen<CR>

"""""""""""""""""""""""""""""""""""""""""""""
"Refactoring
"""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""
"VCS
"""""""""""""""""""""""""""""""""""""""""""""
nnoremap <silent> <Leader>gd :Gdiff<cr>
nnoremap <silent> <Leader>gl :Glog<cr>
nnoremap <silent> <Leader>gs :Gstatus<cr><C-w>20+
nnoremap <silent> <Leader>gb :Gblame<cr>
nnoremap <silent> <Leader>gc :Gcommit<cr>
nnoremap <silent> <Leader>gp :Gpush<cr>
nnoremap <silent> <C-k> :Gpush<cr>
nnoremap <silent> <C-t> :Gpull<cr>
nnoremap <silent> <Leader>amend :Git commit --amend<cr>
nnoremap <silent> <Leader>stash :Git stash<cr>
nnoremap <silent> <Leader>pop :Git stash pop<cr>
nnoremap <silent> <Leader>u :GundoToggle<cr>

"""""""""""""""""""""""""""""""""""""""""""""
"Live Templates
"""""""""""""""""""""""""""""""""""""""""""""

let g:UltiSnipsJumpForwardTrigger="<C-j>"
let g:UltiSnipsJumpBackwardTrigger="<C-k>"
let g:UltiSnipsExpandTrigger="<C-j>"
let g:UltiSnipsListSnippets="<F2>"

"""""""""""""""""""""""""""""""""""""""""""""
"General/VIM
"""""""""""""""""""""""""""""""""""""""""""""
nnoremap ¡ :NERDTreeToggle<cr>
nnoremap <tab><tab> :call g:NERDTreeFocusFind()<cr>

nnoremap <silent> <C-F5> :so ~/.vim/config/keymap.vim<cr>
nmap <Leader><Leader> V

" Windows 
nnoremap <silent> <C-h> :wincmd h<CR>
nnoremap <silent> <C-j> :wincmd j<CR>
nnoremap <silent> <C-k> :wincmd k<CR>
nnoremap <silent> <C-l> :wincmd l<CR>
nnoremap <silent> <Leader>Q :cclose<CR>

"System copy paste
vmap <Leader>y "+y
vmap <Leader>d "+d
nmap <Leader>p "+p
nmap <Leader>P "+P
vmap <Leader>p "+p
vnoremap <silent> y y`]
vnoremap <silent> p p`]
nnoremap <silent> p p`]
map <F4> :set paste!<cr>
imap <F4> <C-O>:set paste!<cr>

nnoremap <leader>d "_d
nnoremap <leader>c "_c
vnoremap <leader>d "_d
vnoremap <leader>p "_dP

nnoremap <Leader><F2> :set list!<cr>

nnoremap <Leader><Right> :bnext<cr>
nnoremap <Leader><Left> :bprev<cr>
nnoremap <Leader>l :bnext<cr>
nnoremap <Leader>h :bprev<cr>

