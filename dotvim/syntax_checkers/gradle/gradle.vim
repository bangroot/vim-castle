if exists('g:loaded_syntastic_gradle_gradle_checker')
    finish
endif
let g:loaded_syntastic_gradle_gradle_checker = 1

runtime! syntax_checkers/java/gradle.vim

call g:SyntasticRegistry.CreateAndRegisterChecker({
    \ 'filetype': 'gradle',
    \ 'name': 'gradle',
		\ 'exec': './gradlew',
    \ 'redirect': 'java/gradle'})

