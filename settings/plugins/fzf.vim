"
" FZF
"

" use silver searcher for things like gitignore exclusions
" https://github.com/junegunn/fzf.vim/issues/121#issuecomment-209534405
let $FZF_DEFAULT_COMMAND='ag -g ""'

" quick access to files, buffers, and searching
nmap <leader>e :Files<cr>
nmap <leader>b :Buffers<cr>
nmap <leader>f :Ag<cr>
nmap <leader>* :Ag <c-r><c-w><cr>

" use ctrl-s for split as it's less awkward to strike
let g:fzf_action = {
            \ 'ctrl-t': 'tab split',
            \ 'ctrl-s': 'split',
            \ 'ctrl-v': 'vsplit' }
