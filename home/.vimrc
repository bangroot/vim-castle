" init {{{
set encoding=utf-8
set nocompatible
set cpoptions+=d
"let $NVIM_TUI_ENABLE_TRUE_COLOR=1
"}}}
let g:VimCompileDoNotMap=1
" Pathogen {{{
filetype off
exec pathogen#infect('bundle/{}', 'bundle.local/{}')
Helptags
"}}}

set t_ut=
"set guicolors
let g:gruvbox_contrast_dark="hard"
set background=dark
let g:gruvbox_italic=1
colorscheme gruvbox
execute "set t_8f=\e[38;2;%lu;%lu;%lum"
execute "set t_8b=\e[48;2;%lu;%lu;%lum"
set guifont=Sauce\ Code\ Pro\ Light\ Nerd\ Font\ Complete:h10

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
set hidden
set wildmenu
set wildignore=*/generated/*,.git,*.pyc,.svn,*.jar,*.class,*.un~,*.swp,*.swo,*.png,*.jpg,*.ttf,*.woff,*/javadoc/*,*.gif,*.ogg,*.mp3,*.mp4,*/build/**
set undofile
set nostartofline
set number
set mouse=nv
set mousehide
let g:dispatch_compilers = {
  \ 'gradle test': 'gradle',
	\ './gradlew classes': 'gradlew'}
set listchars=tab:▸\ ,eol:¬,trail:˾
set list
au CursorHold,CursorHoldI,WinEnter,BufWinEnter * checktime
set diffopt+=iwhite
" }}}

" Colors {{{
syntax enable

"hi CtrlPMatch ctermfg=green
"hi CursorLine ctermbg=0
"hi LongLines term=standout ctermfg=red cterm=underline
"hi MatchParen ctermbg=63
" }}}
source ~/.vim/config/functions.vim
source ~/.vim/config/mac_keys.vim
source ~/.vim/config/keymap.vim
source ~/.vim/config/devicons.vim
source ~/.vim/config/compilers.vim
source ~/.vim/config/ctrlp.vim
source ~/.vim/config/ultisnips.vim
source ~/.vim/config/statusline.vim
source ~/.vim/config/search.vim
source ~/.vim/config/folding.vim
source ~/.vim/config/nerdtree.vim
source ~/.vim/config/java.vim
source ~/.vim/config/javascript.vim
source ~/.vim/config/gist.vim
source ~/.vim/config/git.vim
"source ~/.vim/config/neocomplete.vim
source ~/.vim/config/vimcompletesme.vim
"source ~/.vim/config/eclim.vim
source ~/.vim/config/gundo.vim
source ~/.vim/config/tlist.vim
source ~/.vim/config/easymotion.vim
source ~/.vim/config/surround.vim
source ~/.vim/config/syntastic.vim
source ~/.vim/config/easytags.vim
source ~/.vim/config/rainbow.vim
source ~/.vim/config/vebugger.vim
source ~/.vim/config/tagbar.vim

"set nocursorcolumn
"set nocursorline
set norelativenumber
"syntax sync minlines=256

set directory=~/.backup//
set backupdir=~/.backup//
set undodir=~/.backup//

set autoindent
set smartindent
filetype plugin indent on
set shiftwidth=2
set tabstop=2
set softtabstop=2
set noexpandtab

" lesscss
au BufNewFile,BufRead *.less set filetype=less


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

function! ToggleVerbose()
    if !&verbose
        set verbosefile=~/.log/vim/verbose.log
        set verbose=15
    else
        set verbose=0
        set verbosefile=
    endif
endfunction

"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "")
"autocmd VimEnter,BufNewFile,BufReadPost * silent! call HardMode()
