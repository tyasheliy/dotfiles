call plug#begin()

"Plug 'scrooloose/nerdtree'
"Plug 'https://github.com/cocopon/iceberg.vim'
"Plug 'https://github.com/vim-airline/vim-airline/'
"Plug 'https://github.com/vim-airline/vim-airline-themes'
Plug 'https://github.com/ryanoasis/vim-devicons'
Plug 'https://github.com/morhetz/gruvbox'
Plug 'https://github.com/dense-analysis/ale'
Plug 'https://github.com/mattn/emmet-vim'
Plug 'neovim/nvim-lspconfig'
"Plug 'ghifarit53/tokyonight-vim'
"Plug 'catppuccin/vim', { 'as': 'catppuccin' }
Plug 'francoiscabrol/ranger.vim'
Plug 'https://github.com/svermeulen/vim-easyclip'
Plug 'junegunn/fzf.vim'
"Plug 'chriskempson/base16-vim'
Plug 'https://github.com/vim-scripts/ScrollColors'
Plug 'https://github.com/ap/vim-css-color'
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'L3MON4D3/LuaSnip'
Plug 'VonHeikemen/lsp-zero.nvim', {'branch': 'v3.x'}
Plug 'rebelot/kanagawa.nvim'

call plug#end()

" nvim lsp config
lua << EOF
local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp_zero.default_keymaps({buffer = bufnr})
end)

require'lspconfig'.phpactor.setup{
    on_attach = on_attach,
    init_options = {
        ["language_server_phpstan.enabled"] = false,
        ["language_server_psalm.enabled"] = false,
    }
}

EOF

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

"colorscheme industry


lua << EOF
require('kanagawa').setup({
    theme = 'wave',
    colors = {
        theme = {
            all = {
                ui = {
                    bg_gutter = "none"
                }
            }
        }
    }
})
EOF
colorscheme kanagawa

"let g:airline_theme = 'catppuccin_mocha'
"colorscheme catppuccin_mocha

"default settings
set encoding=UTF-8
set number
set nowrap
set noswapfile
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
map <S-C-f> :Ag<CR>


"maps and bindigs
"map <C-o> :NERDTreeToggle<CR>
"inoremap {<CR> <CR>{}<LEFT><CR><UP><RIGHT><CR>
"inoremap () ()<LEFT>
inoremap kj <ESC>

nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>
