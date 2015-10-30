call plug#begin()

execute 'source' Dot('plugins.vim')

call plug#end()

for file in split(glob(Dot('modules/plugins/*.vim')), '\n')
   exec 'source' file
endfor
