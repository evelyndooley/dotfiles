call plug#begin()
Plug 'SirVer/ultisnips'
Plug 'lilydjwg/Colorizer'
Plug 'vim-airline/vim-airline'
Plug 'honza/vim-snippets'
Plug 'JamshedVesuna/vim-markdown-preview'
Plug 'tyrannicaltoucan/vim-quantum'
Plug 'jiangmiao/auto-pairs'
call plug#end()

set guioptions+=a

let g:airline_section_z = airline#section#create(['windowswap', '%3p%% ', 'linenr', ':%3v'])

let $NVIM_TUI_ENABLE_TRUE_COLOR=1

set mouse=a

set number

set clipboard+=unnamedplus

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
