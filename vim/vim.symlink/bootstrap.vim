set nocompatible

function! Dot(path)
   return '~/.vim/' . a:path
endfunction

for file in split(glob(Dot('modules/*.vim')), '\n')
   execute 'source' file
endfor
