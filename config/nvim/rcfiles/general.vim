" --------------------
" General Vim Settings
" -------------------- 

colorscheme gruvbox   " themes are located in nvim/rcplugins/colorschemes

syntax on
filetype plugin indent on

set guicursor=        " keeps cursor as block in all modes
set backspace=2       " backspace deletes like most programs in insert mode
set history=50        " set ':' command history
set ruler             " show the cursor position all the time
set showcmd           " display incomplete commands
set incsearch         " do incremental searching
set ignorecase        " case insensitive searching
set laststatus=2      " always display the status line
set autowrite         " automatically :write before running commands
set formatoptions-=t  " don't auto-break long lines
set nolazyredraw      " don't redraw while executing macros
set noshowmode        " current active mode hidden for airline plug
set laststatus=2      " shows the status line all the time
set scrolloff=7       " set lines to the cursor - when moving vertical
set smartindent       " set autoindent

" backup
set noswapfile
set nowritebackup
set nobackup
set undodir=~/.config/nvim/undodir
set undofile

" softtabs, 2 spaces
set tabstop=2
set shiftwidth=2
set shiftround
set expandtab

" display extra whitespace
set list listchars=tab:»·,trail:·,nbsp:·

" use one space, not two, after punctuation
set nojoinspaces

" display relative line numbers, with absolute line number for current line
set number
set numberwidth=5
set relativenumber

" autocomplete with dictionary words when spellcheck is on
set complete+=kspell

" always use vertical diffs
set diffopt+=vertical

" don't require saving before closing a buffer
set hidden
