" ---------------
" Visual Settings
" ---------------

" make it obvious where 80 characters is
set textwidth=80
set colorcolumn=+1
set signcolumn=yes

" automatically rebalance windows on vim resize
autocmd VimResized * GoldenRatioResize

" open new split panes to right and bottom
set splitbelow
set splitright

" ignore whitespace only changes in diff, always use vertical diffs
set diffopt+=iwhite
set diffopt+=vertical

" floating windows
highlight VertSplit guibg=NONE
highlight NormalFloat guifg=#999999 guibg=#222222
hi Pmenu guibg=#222222 guifg=#999999

" make comments and HTML attributes italic
highlight Comment cterm=italic term=italic gui=italic
highlight htmlArg cterm=italic term=italic gui=italic
highlight xmlAttrib cterm=italic term=italic gui=italic
