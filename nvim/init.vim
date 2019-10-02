call plug#begin()
Plug 'SirVer/ultisnips'
Plug 'lilydjwg/Colorizer'
Plug 'vim-airline/vim-airline'
Plug 'honza/vim-snippets'
Plug 'JamshedVesuna/vim-markdown-preview'
Plug 'tyrannicaltoucan/vim-quantum'
Plug 'jiangmiao/auto-pairs'
Plug 'yuttie/comfortable-motion.vim'
Plug 'dylanaraps/wal.vim'
call plug#end()

set guioptions+=a

let g:airline_section_z = airline#section#create(['windowswap', '%3p%% ', 'linenr', ':%3v'])

let $NVIM_TUI_ENABLE_TRUE_COLOR=1

set mouse=a

set number

set clipboard+=unnamedplus

set lazyredraw

highlight clear

if exists("syntax_on")
  syntax reset
endif

set background=dark
"set termguicolors
"let g:quantum_black=1
"let g:quantum_italics=1
"colorscheme quantum

colorscheme wal

set fcs=eob:\

noremap <silent> <ScrollWheelUp> <C-Y>
noremap <silent> <ScrollWheelDown> <C-E>
autocmd BufWritePre * %s/\s\+$//e
"inoremap <C-U> <Esc>:call SmoothScroll(1)<Enter>i
"inoremap <C-D> <Esc>:call SmoothScroll(0)<Enter>i

"noremap <silent> <ScrollWheelDown> :call comfortable_motion#flick(10)<CR>
"noremap <silent> <ScrollWheelUp>   :call comfortable_motion#flick(-10)<CR>
