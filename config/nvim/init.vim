" nvimrc
"
" this file contains the minimal settings to set the foundation, with the
" majority of the configuration and settings living in files spread between
" nvim/rcfiles and nvim/rcplugins

let mapleader = "\,"

" function for sourcing plugins and config files
function! s:SourceConfigFilesIn(directory)
	let directory_splat = '~/.config/nvim/' . a:directory . '/*'
	for config_file in split(glob(directory_splat), '\n')
		if filereadable(config_file)
			execute 'source' config_file
		endif
	endfor
endfunction

call plug#begin('~/.config/nvim/plugged')
call s:SourceConfigFilesIn('rcplugins')
call plug#end()

call s:SourceConfigFilesIn('rcfiles')
