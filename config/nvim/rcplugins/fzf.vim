" -------
" fzf.vim
" -------

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" key mappings
nnoremap <leader>e :Files<cr>
nnoremap <leader>r :Buffer<cr>
nnoremap <leader><Tab> :Colors<cr>

if isdirectory(".git")
  " if in a git project, use :GFiles
  nmap <silent> <leader>t :GFiles --cached --others --exclude-standard<cr>
else
  " otherwise, use :Files
  nmap <silent> <leader>t :Files<cr>
endif

" config
let g:fzf_files_options =
  \ '--reverse ' .
  \ '--preview "(coderay {} || cat {}) 2> /dev/null | head -'.&lines.'"'
let g:fzf_layout = { 'window': { 'width': 0.8, 'height': 0.5, 'highlight': 'Comment' } }
