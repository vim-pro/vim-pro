"
" Settings
"

so settings/plugins.vim       " plugins and their configurations
so settings/general.vim       " mouse, leader, etc.
so settings/appearance.vim    " theme
so settings/editing.vim       " text editing
so settings/bindings.vim      " quick access to navigation, editing

"
" Settings related
"

" open settings
nmap <leader>, :e $MYVIMRC<cr>

" reload vimrc
nmap <leader>s :so $MYVIMRC<cr>

