"
" Plugin management using vim-plug
"

" Install vim-plug if it is not installed
if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
                \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | so $MYVIMRC
endif

"
" Plugins list
"

call plug#begin()
Plug 'tpope/vim-sensible'                        " common defaults
Plug 'junegunn/fzf',                             " fuzzy finding
            \ { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'reedes/vim-wheel'                          " in-place cursor scroll
Plug 'tpope/vim-commentary'                      " code comments
Plug 'chriskempson/base16-vim'                   " themes
Plug 'sheerun/vim-polyglot'                      " variety language pack
"
" additional filetype support
"
Plug 'bfontaine/Brewfile.vim'                    " homebrew
call plug#end()

"
" Plugin configurations
"

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


"
" Commentary
"

" leader access to comment toggle
nmap <leader>c :Commentary<cr>
vmap <leader>c :Commentary<cr>
