let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_aggregate_errors = 1
let g:syntastic_error_symbol = "✗"
let g:syntastic_warning_symbol = "⚠"
let g:syntastic_auto_jump = 3
let g:syntastic_enable_balloons = 1
let g:syntastic_enable_highlighting = 1

let g:syntastic_mode_map = {
        \ "mode": "passive",
				\ "active_filetypes": ["javascript"] }

"let g:syntastic_debug = 63
let g:syntastic_java_checkers = []
let g:syntastic_groovy_checkers = ['codenarc']
let g:syntastic_javascript_checkers = ['jshint']
let g:syntastic_javascript_eslint_exec = StrTrim(system('npm-which eslint'))
let g:syntastic_javascript_eslint_args = ['--fix']
let g:syntastic_javascript_flow_exe = StrTrim(system('npm-which flow'))


