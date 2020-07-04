"
" Plugin management using vim-plug
"

" Install vim-plug if it is not installed
if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
                \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

"
" Plugins list
"

call plug#begin()
" common defaults
Plug 'tpope/vim-sensible'
" fuzzy finding
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'reedes/vim-wheel'
Plug 'tpope/vim-commentary'
" themes
Plug 'chriskempson/base16-vim'
" provide some level of support for a large
" variety of languages
Plug 'sheerun/vim-polyglot'
" additional filetype support
Plug 'bfontaine/Brewfile.vim'
call plug#end()

"
" Plugin configurations
"

source settings/plugins/fzf.vim
source settings/plugins/commentary.vim
