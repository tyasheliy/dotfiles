call plug#begin()

Plug 'OmniSharp/omnisharp-vim'
"Plug 'scrooloose/nerdtree'
"Plug 'https://github.com/cocopon/iceberg.vim'
"Plug 'https://github.com/vim-airline/vim-airline/'
"Plug 'https://github.com/vim-airline/vim-airline-themes'
Plug 'https://github.com/ryanoasis/vim-devicons'
Plug 'https://github.com/morhetz/gruvbox'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'https://github.com/dense-analysis/ale'
Plug 'https://github.com/mattn/emmet-vim'
"Plug 'ghifarit53/tokyonight-vim'
"Plug 'catppuccin/vim', { 'as': 'catppuccin' }
Plug 'sheerun/vim-polyglot'
Plug 'StanAngeloff/php.vim'
Plug 'francoiscabrol/ranger.vim'
Plug 'https://github.com/svermeulen/vim-easyclip'
Plug 'junegunn/fzf.vim'
"Plug 'chriskempson/base16-vim'
Plug 'https://github.com/vim-scripts/ScrollColors'
Plug 'https://github.com/ap/vim-css-color'

call plug#end()

"colorscheme settings

"set background=dark
"colorscheme gruvbox
"hi Normal guibg=NONE ctermbg=NONE

"let g:tokyonight_style = 'night'
"let g:airline_theme = "tokyonight"
"let g:tokyonight_transparent_background = 1
"let g:tokyonight_enable_italic = 1
"colorscheme tokyonight

"base16 settings
"set termguicolors

colorscheme industry

"let g:airline_theme = 'catppuccin_mocha'
"colorscheme catppuccin_mocha

"default settings
set encoding=UTF-8
set number
set nowrap
set magic
set expandtab
set tabstop=8
set shiftwidth=4

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

"rangervim
let g:ranger_map_keys = 0
map <C-o> :RangerWorkingDirectory<CR>

"fzfvim
map <C-f> :Files<CR>


"maps and bindigs
"map <C-o> :NERDTreeToggle<CR>
"inoremap {<CR> <CR>{}<LEFT><CR><UP><RIGHT><CR>
"inoremap () ()<LEFT>
inoremap kj <ESC>
inoremap <silent><expr> <TAB> coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<TAB>"
