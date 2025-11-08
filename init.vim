set encoding=utf-8
call plug#begin()

" List your plugins here
Plug 'lervag/vimtex' 
let g:vimtex_compiler_method = 'latexmk'
let g:vimtex_view_method = 'zathura'
nnoremap <leader>e :VimtexErrors<CR>   
" press Space-e → errors in a tiny buffer
" NO POPUP, NO QUICKFIX, JUST SILENT BACKGROUND COMPILE
" === SILENT LaTeX – NO POPUP ===
let g:vimtex_quickfix_mode = 0
let g:vimtex_compiler_latexmk = {
      \ 'background': 1,
      \ 'build_dir': 'build',
      \ 'callback': 0,
      \ 'continuous': 1,
      \ 'executable': 'latexmk',
      \ 'options': [
      \   '-pdf',
      \   '-verbose',
      \   '-file-line-error',
      \   '-synctex=1',
      \   '-interaction=nonstopmode',
      \   '-shell-escape'
      \ ],
      \}
" devicons
Plug 'ryanoasis/vim-devicons'

" Snippets
Plug 'SirVer/ultisnips'
    let g:UltiSnipsExpandTrigger = '<tab>'
    let g:UltiSnipsJumpForwardTrigger = '<tab>'
    let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'

 " NerdTree
Plug 'scrooloose/nerdtree'
" Conceal
Plug 'mhinz/vim-startify'
" Autocomplete
Plug 'neoclide/coc.nvim', {'branch': 'release'}
inoremap <silent><expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <silent><expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <silent><expr> <CR> pumvisible() ? "\<C-y>" : "\<CR>"
" Conceal 
Plug 'KeitaNakamura/tex-conceal.vim'
    set conceallevel=2
    let g:tex_conceal='abdmg'
    hi Conceal ctermbg=none


call plug#end()


"base config
syntax enable
filetype plugin indent on
colorscheme vim
set nocompatible
set mouse=v "paste with middle mouse
set hlsearch "higlight search
set incsearch "increamental search
set tabstop=5 "number of columns of a tab
set expandtab
set softtabstop=5
set shiftwidth=5
set autoindent
set number
set mouse=a
set clipboard=unnamedplus
"filetype plugin on
set cursorline
set ttyfast

" === VSCode Alt ↑/↓ magic ===
" Alt+k / Alt+j → move line up/down
nnoremap <silent> <A-k> :<C-u>move-2<CR>==
nnoremap <silent> <A-j> :<C-u>move+1<CR>==
xnoremap <silent> <A-k> :move-2<CR>gv=gv
xnoremap <silent> <A-j> :move'>+<CR>gv=gv

" Alt+Shift+k / Alt+Shift+j → duplicate line up/down
nnoremap <silent> <A-J> :<C-u>copy.<CR>
nnoremap <silent> <A-K> :<C-u>copy-2<CR>

