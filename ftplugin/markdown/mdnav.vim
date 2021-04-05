" if exists('g:mdnav#PythonScript')
"    finish
"endif

let g:mdnav#PythonScript = expand('<sfile>:r') . '.py'

function! _MDNavExec(target)
    execute 'python3 sys.argv = ["' . a:target . '"]'
    execute 'py3file ' . g:mdnav#PythonScript
endfunction
command! -nargs=1 MDNavExec call _MDNavExec((<args>))
nnoremap <buffer> <CR> :MDNavExec "e"<CR>
