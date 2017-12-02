set tags=tags;

augroup ctags
    autocmd!
    autocmd BufRead,BufWritePost *.cpp,*.hpp call s:ctags_run_on_buf()
augroup END

function! s:ctags_run_on_buf()
    if !exists("b:ctags_repo_home")
        "TODO: :saveas may require resetting b:ctags_repo_home
        let l:save_cwd = getcwd()
        let l:buffer_dir = expand("%:p:h")
        execute "lcd " . l:buffer_dir
        let b:ctags_repo_home = system('git rev-parse --show-toplevel')
        if v:shell_error == 0
            let b:ctags_repo_home = substitute(b:ctags_repo_home,"\n$","","")
            let b:ctags_repo_tags_filename = b:ctags_repo_home . "/tags"
            let b:ctags_repo_ctags_cmd = "ctags --recurse -f " . b:ctags_repo_tags_filename . " " . b:ctags_repo_home
        else
            unlet b:ctags_repo_home
        endif
        execute "lcd " . l:save_cwd
    endif
    if exists("b:ctags_repo_home")
        let l:cmd_output = system(b:ctags_repo_ctags_cmd)
    endif
endfunction
