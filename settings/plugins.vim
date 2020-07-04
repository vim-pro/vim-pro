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

so $HOME/.vim/settings/plugins/fzf.vim
so $HOME/.vim/settings/plugins/commentary.vim
