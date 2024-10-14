                                                                             
"----------------------------------------------------------------------------------------------------
"Pruiz neovim configuration file
"last update 10/14/2024
"
"need to install plugged,
"sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
"----------------------------------------------------------------------------------------------------
"-------------------
"base configurations
"------------------
:set number
:set autoindent
:set tabstop=4
"-------
"plugins
"-------
call plug#begin()
set encoding=UTF-8
"Markdown Preview
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
"Chadtree
Plug 'ms-jpq/chadtree', {'branch': 'chad', 'do': 'python3 -m chadtree deps'}
"Coq
Plug 'ms-jpq/coq_nvim', {'branch': 'coq'}
"Coq snippets
Plug 'ms-jpq/coq.artifacts', {'branch': 'artifacts'}
"auto closer
Plug 'm4xshen/autoclose.nvim'
call plug#end()
"---------
"shortcuts
"---------




