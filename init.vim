set encoding=utf-8
call plug#begin()

" List your plugins here
Plug 'lervag/vimtex', { 'tag': 'v2.15' }
let g:vimtex_compiler_method = 'latexmk'
let g:vimtex_view_method = 'zathura'
Plug 'dracula/vim'
Plug 'ryanoasis/vim-devicons'

Plug 'SirVer/ultisnips'
    let g:UltiSnipsExpandTrigger = '<tab>'
    let g:UltiSnipsJumpForwardTrigger = '<tab>'
    let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'

Plug 'honza/vim-snippets'

Plug 'scrooloose/nerdtree'

Plug 'mhinz/vim-startify'

Plug 'neoclide/coc.nvim', {'branch': 'release'}
inoremap <silent><expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <silent><expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <silent><expr> <CR> pumvisible() ? "\<C-y>" : "\<CR>"

Plug 'KeitaNakamura/tex-conceal.vim'
    set conceallevel=1
    let g:tex_conceal='abdmg'
    hi Conceal ctermbg=none


call plug#end()


" vimtex config

filetype plugin indent on
"base config
syntax enable
set nocompatible
set mouse=v "paste with middle mouse
set hlsearch "higlight search
set incsearch "increamental search
set tabstop=4 "number of columns of a tab
set expandtab
set softtabstop=4
set shiftwidth=4
set autoindent
set number
set mouse=a
set clipboard=unnamedplus
"filetype plugin on
set cursorline
set ttyfast


