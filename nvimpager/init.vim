call plug#begin('~/.vim/plugged')
Plug 'lilydjwg/Colorizer'
Plug 'dylanaraps/wal.vim'
call plug#end()

set guioptions+=a

let $NVIM_TUI_ENABLE_TRUE_COLOR=1

set mouse=a

set number

highlight clear

if exists("syntax_on")
  syntax reset
endif

colorscheme wal

set fcs=eob:\ 

