function USACO_C()
    exec "normal! ggi/*\n"
    exec "normal! iUSER: " . g:USACOUser . "\n"
    exec "normal! iLANG: C\n" 
    exec "normal! iTASK: " . expand("%:t:r") . "\n"
    exec "normal! i*/\n"
    normal kk
    exec ":2,5s/ \\* //g"
endf

function USACO_CPP()
    exec "normal! ggi/*\n"
    exec "normal! iUSER: " . g:USACOUser . "\n"
    exec "normal! iLANG: C++\n" 
    exec "normal! iTASK: " . expand("%:t:r") . "\n"
    exec "normal! i*/\n"
    normal kk
    exec ":2,5s/ \\* //g"
endf

function USACO_PAS()
    exec "normal! ggi{\n"
    exec "normal! iUSER: " . g:USACOUser . "\n"
    exec "normal! iLANG: PASCAL\n" 
    exec "normal! iTASK: " . expand("%:t:r") . "\n"
    exec "normal! i}\n"
    normal kk
endf

if !exists("g:USACOUser")
    echo "usaco.vim: Please set 'g:USACOUser' in your vimrc file."
    finish
else
    au BufNewFile *.c :call USACO_C()
    au BufNewFile *.{cc,cpp} :call USACO_CPP()
    au BufNewFile *.pas :call USACO_PAS()
endif
