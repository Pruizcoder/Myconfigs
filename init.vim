set number
set encoding=utf-8
call plug#begin()

" List your plugins here
Plug 'lervag/vimtex', { 'tag': 'v2.15' }

call plug#end()


" vimtex config

filetype plugin indent on

syntax enable


let g:vimtex_compiler_method = 'latexmk'
let g:vimtex_view_method = 'zathura'


let maplocalleader = ","


