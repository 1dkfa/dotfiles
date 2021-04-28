" --------
" Mappings
" --------

" move between wrapped lines, rather than jumping over wrapped segments
nmap j gj
nmap k gk

" keep visual selection when indenting/outdenting
vmap < <gv
vmap > >gv

" remap esc to exit insert mode with jk
inoremap jk <esc>

" switch between current and last buffer
nmap <leader>. <c-^>

" enable . command in visual mode
vnoremap . :normal .<cr>

" toggle cursor line
nnoremap <leader>i :set cursorline!<cr>

" scroll the viewport faster
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>

" open current buffer in a new tab
nmap <silent> gTT :tab sb<cr>

" use <C-Space> to Esc out of any mode
nnoremap <C-Space> <Esc>:noh<CR>
vnoremap <C-Space> <Esc>gV
onoremap <C-Space> <Esc>
cnoremap <C-Space> <C-c>
inoremap <C-Space> <Esc>
" terminal sees <C-@> as <C-Space>
nnoremap <C-@> <Esc>:noh<CR>
vnoremap <C-@> <Esc>gV
onoremap <C-@> <Esc>
cnoremap <C-@> <C-c>
inoremap <C-@> <Esc>

" quick sourcing of the current file, allowing for quick vimrc testing
nnoremap <leader>sop :so ~/.config/nvim/init.vim<cr>
" open dotfiles
nnoremap <leader>df :Files ~/dotfiles<cr>
" :PlugInstall
nmap <leader>bi :PlugInstall<cr>

" Q for Ex mode is useless, this will run the macro in q register
nnoremap Q @q

" swap 0 and ^
nnoremap 0 ^
nnoremap ^ 0

" :write file
nnoremap <leader><leader> :w<cr>
