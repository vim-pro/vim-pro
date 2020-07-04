"
" Bindings
"

"
" Settings
"

" open settings
nmap <leader>, :e $MYVIMRC<cr>

" reload settings
nmap <leader>s :so $MYVIMRC<cr>

" reload buffer
nmap <leader>sb :so %<cr>

"
" Navigation
"

" toggle between the current buffer and the previous buffer
nmap <leader><leader> :b#<cr>

" make only the current visible
nmap <leader>o :only<cr>

"
" Text Editing
"

" write, write+quit, and quit
nmap <leader>w :w<cr>
nmap <leader>x :x<cr>
nmap <leader>q :q<cr>

" toggle line numbers
nmap <leader>n :set number!<cr>

" sort visually selected lines
vnoremap <leader>s :sort<cr>

"
" Advanced
"

" since ; is remapped above, make it available as ;;
noremap ;; ;
" start typing a colon command by pressing ; instead of ⇧;
nmap ; :

" start typing a shell command by pressing 1 instead of press ⇧;1
nmap 1 :!

