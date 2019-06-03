call plug#begin()
Plug 'lilydjwg/Colorizer'
Plug 'tyrannicaltoucan/vim-quantum'
call plug#end()

set guioptions+=a

let $NVIM_TUI_ENABLE_TRUE_COLOR=1

set mouse=a

set number

highlight clear

if exists("syntax_on")
  syntax reset
endif

set background=dark
set termguicolors
let g:quantum_black=1
let g:quantum_italics=1
colorscheme quantum

set fcs=eob:\ 

