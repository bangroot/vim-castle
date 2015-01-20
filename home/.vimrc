" init {{{
set encoding=utf-8
set nocompatible
"}}}

" Pathogen {{{
filetype off
exec pathogen#infect('bundle/{}', 'bundle.local/{}')
"}}}


" misc {{{
autocmd!
set esckeys 
set timeout timeoutlen=1000 ttimeoutlen=100
set t_Co=256
filetype plugin on
set viminfo='100,\"50,:20
set formatoptions=croql
set autowrite
set textwidth=100
set bs=2
set so=7
let mapleader = ","
let g:mapleader = ","
set hidden
set wildmenu
set wildignore=*/generated/*,.git,*.pyc,.svn,*.jar,*.class,*.un~,*.swp,*.swo,*.png,*.jpg,*.ttf,*.woff,*/javadoc/*,*.gif,*.ogg,*.mp3,*.mp4,*/build/**
set undofile
set number
:set mouse=nv
:set mousehide
let g:dispatch_compilers = {
  \ 'gradle test': 'gradle' }
map Q gq}
let g:yankring_history_file='.yankring_history'
let g:notes_directories = ['~/Google\ Drive/notes']
au CursorHold,CursorHoldI,WinEnter,BufWinEnter * checktime
" }}}

" Colors {{{
set background=dark
syntax enable
colorscheme gruvbox

hi CtrlPMatch ctermfg=green
hi CursorLine ctermbg=0
hi LongLines term=standout ctermfg=red cterm=underline
hi MatchParen ctermbg=63
" }}}

source ~/.vim/mac_keys
source ~/.vim/config/keymap.vim
source ~/.vim/config/ctrlp.vim
source ~/.vim/config/ultisnips.vim
source ~/.vim/config/statusline.vim
source ~/.vim/config/search.vim
source ~/.vim/config/folding.vim
source ~/.vim/config/nerdtree.vim
source ~/.vim/config/java.vim
source ~/.vim/config/gist.vim

" UI {{{
augroup CursorLine
	au!
	au VimEnter,WinEnter,BufWinEnter * setlocal cursorline
	au WinLeave * setlocal nocursorline
augroup END
set showmatch
set matchtime=1
" }}}


" Indentation {{{
set autoindent
filetype plugin indent on
set shiftwidth=2
set tabstop=2
set softtabstop=2
set noexpandtab
" }}}

"define :HighlightLongLines command to highlight the offending parts of
"lines that are longer than the specified length (defaulting to 80)
fu! s:HighlightLongLines(width)
	let targetWidth = a:width != '' ? a:width : 100
	if targetWidth > 0
		exec 'match LongLines /\%>' . (targetWidth) . 'v/'
	else
		echomsg "Usage: HighlightLongLines [natural number]"
	endif
endfunction

fu! CodeInit()
	set noexpandtab
	set shiftwidth=2
	set tabstop=2
	set softtabstop=2
	call s:HighlightLongLines(100)
	if exists("g:has_local_codeinit")
		call LocalCodeInit()
	endif
endfu

" omnicomplete (javacomplete)
imap <Nul> <Space>

" Autocommands {{{
au FileType xhtml,htm,html,dtd,xml,xml2,xsd,ant set shiftwidth=2 tabstop=2
au FileType xjb set filetype=xml

" trailing space highlighting
au BufWinEnter,BufRead,BufNewFile *.java,*.c,*.cpp,*.js,*.html,*.htm,*.xml,*.lzx,*.groovy,*.gradle,*.scss let w:m1=matchadd( 'Error', '\s\{2,}$', -1)
au BufWinEnter,BufRead,BufNewFile *.java,*.c,*.cpp,*.js,*.groovy,*.gradle,*.m,*.h :call CodeInit()

" lesscss
au BufNewFile,BufRead *.less set filetype=less

" When editing a file, always jump to the last cursor position
au BufReadPost *
			\ if &ft == 'gitcommit' || &ft == 'mail' |
			\   exe "normal! gg" |
			\   exe "startinsert" |
			\ elseif line("'\"") > 1 && line ("'\"") <= line("$") |
			\   exe "normal! g`\"" |
			\ endif
"}}}


" DelimitMate {{{
let g:delimitMate_expand_space = 1
let g:delimitMate_expand_cr = 1
"}}}

function! s:MkNonExDir(file, buf)
    if empty(getbufvar(a:buf, '&buftype')) && a:file!~#'\v^\w+\:\/'
        let dir=fnamemodify(a:file, ':h')
        if !isdirectory(dir)
            call mkdir(dir, 'p')
        endif
    endif
endfunction
augroup BWCCreateDir
    autocmd!
    autocmd BufWritePre * :call s:MkNonExDir(expand('<afile>'), +expand('<abuf>'))
augroup END

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "")
