let cmake_build_dir = $BPS_DEV_BUILD_DBG
let g:cmake_build_dir = cmake_build_dir
let g:cmake_build_type = cmake_build_dir
let g:cmake_c_compiler = $BPS_DEV_CC
let g:cmake_cxx_compiler = $BPS_DEV_CXX
nnoremap <C-t> :Make -j4<cr>
nnoremap <C-q> :ccl<cr>
"nnoremap <C-p> :FZFCMakeSelectTarget<cr>
"let g:make_arguments = "j4"
"let g:cmake_project_generator = "Ninja"
"function! s:runDispatch(cmd, errFormat)
"    let s:old_error = &efm
"    let s:old_make = &makeprg
"
"    let &efm = a:errFormat
"    let &makeprg = a:cmd
"    silent execute '25Term'
"    let &efm = s:old_error
"    let &makeprg = s:old_make
"endfunction
"function! s:executeCommandTerm(cmd)
"    let s:ErrorFormatCMake =
"        \ ' %#%f:%l %#(%m),'
"        \ .'See also "%f".,'
"        \ .'%E%>CMake Error at %f:%l:,'
"        \ .'%Z  %m,'
"        \ .'%E%>CMake Error at %f:%l (%[%^)]%#):,'
"        \ .'%Z  %m,'
"        \ .'%W%>Cmake Warning at %f:%l (%[%^)]%#):,'
"        \ .'%Z  %m,'
"        \ .'%E%>CMake Error: Error in cmake code at,'
"        \ .'%C%>%f:%l:,'
"        \ .'%Z%m,'
"        \ .'%E%>CMake Error in %.%#:,'
"        \ .'%C%>  %m,'
"        \ .'%C%>,'
"        \ .'%C%>    %f:%l (if),'
"        \ .'%C%>,'
"        \ .'%Z  %m,'
"    if exists(':Dispatch')
"        silent call s:runDispatch(a:cmd, s:ErrorFormatCMake)
"    else
"        silent call s:runSystem(a:cmd, s:ErrorFormatCMake)
"    endif
"endfunction
"function! GenerateCMakeTerm(...)
"    let s:build_dir = s:makeDir(cmake4vim#DetectBuildDir())
"    let l:cmake_args = []
"
"    let l:cmake_args += ["-DCMAKE_BUILD_TYPE=" . cmake4vim#DetectBuildType()]
"    if g:cmake_project_generator != ""
"        let l:cmake_args += ["-G \"" . g:cmake_project_generator . "\""]
"    endif
"    if g:cmake_install_prefix != ""
"        let l:cmake_args += ["-DCMAKE_INSTALL_PREFIX=" . g:cmake_install_prefix]
"    endif
"    if g:cmake_c_compiler != ""
"        let l:cmake_args += ["-DCMAKE_C_COMPILER=" . g:cmake_c_compiler]
"    endif
"    if g:cmake_cxx_compiler != ""
"        let l:cmake_args += ["-DCMAKE_CXX_COMPILER=" . g:cmake_cxx_compiler]
"    endif
"    if g:cmake_compile_commands
"        let l:cmake_args += ["-DCMAKE_EXPORT_COMPILE_COMMANDS=ON"]
"    endif
"    if g:cmake_usr_args != ""
"        let l:cmake_args += [g:cmake_usr_args]
"    endif
"
"    let s:cmake_cmd = 'cmake '.join(l:cmake_args).' '.join(a:000).' -H'.getcwd().' -B'.s:build_dir
"
"    silent call s:executeCommandTerm(s:cmake_cmd)
"
"    if g:cmake_change_build_command
"        silent call cmake4vim#SelectTarget(g:cmake_build_target)
"    endif
"endfunction
"command! -nargs=? CMakeTerm call GenerateCMakeTerm(<f-args>)
