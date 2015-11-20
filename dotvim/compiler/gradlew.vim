" Vim Compiler File
" Compiler: gradle

if exists("current_compiler")
    finish
endif
let current_compiler = "gradlew"

if exists(":CompilerSet") != 2 " older Vim always used :setlocal
  command -nargs=* CompilerSet setlocal <args>
endif

let $TERM='dumb'
CompilerSet makeprg=./gradlew

CompilerSet errorformat=
    \%-G:%.%\\+,
    \%m\ at\ %f:%l,
    \%-G\\s%#,
		\%c,
    \%-GBUILD\ SUCCESSFUL,
    \%+GBUILD\ FAILED,
    \%-GTotal\ \time:\ %.%#
