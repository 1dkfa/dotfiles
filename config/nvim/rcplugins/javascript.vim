" ----------
" javascript
" ----------

Plug 'othree/yajs.vim', { 'for': [ 'javascript', 'javascript.jsx', 'html' ] }
Plug 'moll/vim-node', { 'for': 'javascript' }
Plug 'ternjs/tern_for_vim', { 'for': ['javascript', 'javascript.jsx'], 'do': 'npm install' }
Plug 'MaxMEllon/vim-jsx-pretty'

let g:vim_jsx_pretty_highlight_close_tag = 1
