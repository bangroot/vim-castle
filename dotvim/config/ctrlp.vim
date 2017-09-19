let g:ctrlp_by_filename = 1
let g:ctrlp_working_path_mode = 'raw'
let g:ctrlp_match_window = 'top,order:ttb'
"let g:ctrlp_working_path_mode = 0
let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
function GetDir()
return split(getcwd(), "/")[-1]
endfunction
let g:ctrlp_cache_dir = $HOME.'/.cache/ctrlp-'.GetDir()
