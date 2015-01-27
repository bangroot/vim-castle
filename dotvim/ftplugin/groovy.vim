if !exists(":JavaImport")
  command -buffer JavaImport :call eclim#java#import#Import()
endif
if exists(":JavaClasspath") != 2
  command -buffer -nargs=* JavaClasspath :call eclim#java#util#Classpath(<f-args>)
endif
if exists(":JavaListInstalls") != 2
  command -buffer -nargs=* JavaListInstalls :call eclim#java#util#ListInstalls()
endif
if !exists(":JavaDebug")
  command -nargs=* -buffer JavaDebugStart
    \ :call eclim#java#debug#DebugStart(<f-args>)
  command -nargs=0 -buffer JavaDebugStop :call eclim#java#debug#DebugStop()
  command -nargs=0 -buffer JavaDebugStatus :call eclim#java#debug#Status()
  command -nargs=+ -buffer JavaDebugStep :call eclim#java#debug#Step(<f-args>)

  command -nargs=0 -buffer JavaDebugThreadSuspendAll
    \ :call eclim#java#debug#DebugThreadSuspendAll()
  command -nargs=0 -buffer JavaDebugThreadResume
    \ :call eclim#java#debug#DebugThreadResume()
  command -nargs=0 -buffer JavaDebugThreadResumeAll
    \ :call eclim#java#debug#DebugThreadResumeAll()

  command -nargs=0 -buffer -bang JavaDebugBreakpointToggle
    \ :call eclim#java#debug#BreakpointToggle('<bang>')
  command -nargs=0 -buffer -bang JavaDebugBreakpointsList
    \ :call eclim#java#debug#BreakpointsList('<bang>')
  command -nargs=0 -buffer -bang JavaDebugBreakpointRemove
    \ :call eclim#java#debug#BreakpointRemove('<bang>')
endif

if !exists(":JavaCallHierarchy")
  command -buffer -bang JavaCallHierarchy
    \ :call eclim#lang#hierarchy#CallHierarchy(
      \ 'java', g:EclimJavaCallHierarchyDefaultAction, '<bang>')
endif

if !exists(":JavaHierarchy")
  command -buffer -range JavaHierarchy :call eclim#java#hierarchy#Hierarchy()
endif

if !exists(":JavaRename")
  command -nargs=1 -buffer JavaRename :call eclim#java#refactor#Rename('<args>')
endif
if !exists(":JavaMove")
  command -nargs=1 -buffer -complete=customlist,eclim#java#util#CommandCompletePackage
    \ JavaMove :call eclim#java#refactor#Move('<args>')
endif
