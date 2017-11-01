autocmd BufNewFile,Bufread *.module,*.inc,*.php set keywordprg=:help
let s:php_funclist=expand("<sfile>:p:h")."/funcs_phpmanual20150807.txt"
function! AddPHPFuncList()
    exec "set dictionary+=".s:php_funclist
    set complete-=k complete+=k
endfunction
autocmd FileType php call AddPHPFuncList()
