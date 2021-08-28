" --------
" coc.nvim
" --------

Plug 'neoclide/coc.nvim', {'branch': 'release'}

let g:coc_global_extensions = [
        \ 'coc-explorer',
        \ 'coc-diagnostic',
        \ 'coc-eslint',
        \ 'coc-tslint-plugin',
        \ 'coc-prettier',
        \ 'coc-emmet',
        \ 'coc-tsserver',
        \ 'coc-git',
        \ 'coc-html',
        \ 'coc-pairs',
        \ 'coc-css',
        \ 'coc-json',
        \ 'coc-phpls',
        \ 'coc-sh',
        \ 'coc-vimlsp',
        \ 'coc-styled-components',
        \ 'coc-highlight'
        \ ]

autocmd CursorHold * silent call CocActionAsync('highlight')

" coc-prettier
command! -nargs=0 Prettier :CocCommand prettier.formatFile
nmap <leader>f :CocCommand prettier.formatFile<cr>

" coc-git
nmap [g <Plug>(coc-git-prevchunk)
nmap ]g <Plug>(coc-git-nextchunk)
nmap gs <Plug>(coc-git-chunkinfo)
nmap gu :CocCommand git.chunkUndo<cr>

nmap <silent> <leader>k :CocCommand explorer<cr>

"remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> gh <Plug>(coc-doHover)

" diagnostics navigation
nmap <silent> [c <Plug>(coc-diagnostic-prev)
nmap <silent> ]c <Plug>(coc-diagnostic-next)

" rename
nmap <silent> <leader>c <Plug>(coc-rename)

" Remap for format selected region
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

" organize imports
command! -nargs=0 OR :call CocAction('runCommand', 'editor.action.organizeImport')

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
    if (index(['vim','help'], &filetype) >= 0)
        execute 'h '.expand('<cword>')
    else
        call CocAction('doHover')
    endif
endfunction

"tab completion
inoremap <silent><expr> <TAB>
    \ pumvisible() ? "\<C-n>" :
    \ <SID>check_back_space() ? "\<TAB>" :
    \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

if has('nvim')
    inoremap <silent><expr> <c-space> coc#refresh()
else
    inoremap <silent><expr> <c-@> coc#refresh();
endif

function! s:check_back_space() abort
let col = col('.') - 1
return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
if exists('*complete_info')
    inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
    imap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

" For enhanced <CR> experience with coc-pairs checkout :h coc#on_enter()
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
      \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
