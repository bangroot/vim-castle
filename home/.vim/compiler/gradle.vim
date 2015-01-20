" Vim Compiler File
" Compiler: gradle

if exists("current_compiler")
    finish
endif
let current_compiler = "gradle"

if exists(":CompilerSet") != 2 " older Vim always used :setlocal
  command -nargs=* CompilerSet setlocal <args>
endif

let $TERM='dumb'
CompilerSet makeprg=gradle

CompilerSet errorformat=
    \%-G:%.%\\+,
    \%m\ at\ %f:%l,
    \%-G\\s%#,
    \%-GBUILD\ SUCCESSFUL,
    \%+GBUILD\ FAILED,
    \%-GTotal\ \time:\ %.%#
