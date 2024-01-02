call plug#begin()

Plug 'OmniSharp/omnisharp-vim'
Plug 'scrooloose/nerdtree'
Plug 'https://github.com/cocopon/iceberg.vim'
Plug 'https://github.com/vim-airline/vim-airline/'
Plug 'https://github.com/vim-airline/vim-airline-themes'
Plug 'https://github.com/ryanoasis/vim-devicons'
Plug 'https://github.com/morhetz/gruvbox'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'https://github.com/dense-analysis/ale'
Plug 'https://github.com/mattn/emmet-vim'

call plug#end()

"colorscheme settings
colo gruvbox
set background=dark

"default settings
set encoding=UTF-8
set number
set nowrap
set tabstop=4

"vim-airline

"omnisharp
let g:OmniSharp_server_stdio = 1
let g:OmniSharp_server_use_net6 = 1
let g:OmniSharp_highlight_types = 2
"let g:OmniSharp_loglevel = 'DEBUG'

"ale
let g:ale_linters = {
\ 'cs': ['OmniSharp']
\}

"maps and bindigs
map <C-o> :NERDTreeToggle<CR>
inoremap {<CR> <CR>{}<LEFT><CR><UP><RIGHT><CR>
inoremap () ()<LEFT>
inoremap kj <ESC>
inoremap <silent><expr> <TAB> coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<TAB>"
