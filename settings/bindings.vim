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

" quick access to files, buffers, and searching
nmap <leader>e :Files<cr>
nmap <leader>b :Buffers<cr>
nmap <leader>f :Ag<cr>
nmap <leader>* :Ag <c-r><c-w><cr>

" toggle between the current buffer and the previous buffer
nmap <leader><leader> :b#<cr>

" make only the current visible
nmap <leader>o :only<cr>

"
" General Text Editing
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
" Code Editing
"

" leader access to comment toggle
nmap <leader>c :Commentary<cr>
vmap <leader>c :Commentary<cr>

"
" Advanced
"

" since ; is remapped above, make it available as ;;
noremap ;; ;
" start typing a colon command by pressing ; instead of ⇧;
nmap ; :

" start typing a shell command by pressing 1 instead of press ⇧;1
nmap 1 :!

