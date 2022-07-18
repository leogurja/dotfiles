set number relativenumber " line numbers
set nohlsearch " better search
set nowrap " no line wrap
set noswapfile " no swapfile
set undofile undodir=~/.cache/nvim/undodir " undo
set scrolloff=8 " centralize cursor
set signcolumn=yes " linting column
set noshowmode " airline already shows mode
set smartindent expandtab softtabstop=2 tabstop=2 shiftwidth=2 " indentation
set mouse=a " mouse
set updatetime=50 " Having longer updatetime (default is 4000 ms) leads to noticeable delays and poor user experience
set shortmess+=c " Don't pass messages to |ins-completion-menu|
set completeopt=menu,menuone,noselect " autocomplete window

" :find
set path +=** " recursive
set wildmode=longest,list,full
set wildmenu
set wildignore+=*.pyc
set wildignore+=**/node_modules/*
set wildignore+=**/coverage/*
set wildignore+=**/.git/*

call plug#begin()

Plug 'nvim-telescope/telescope.nvim'
Plug 'tpope/vim-commentary' " Easy comment with 'gcc' and 'gc'
Plug 'ap/vim-css-color' " Css color highlight

" rice
Plug 'vim-airline/vim-airline'
Plug 'ryanoasis/vim-devicons'

" better syntax highlighting
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/nvim-treesitter-context'

" language servers
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/nvim-cmp'

" Snippets
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'

call plug#end()

let mapleader = " "
nnoremap <leader>ps :lua require('telescope.builtin').grep_string({ search = vim.fn.input("Search Project: ") })<CR>

augroup LGURGEL
  autocmd!
  autocmd BufWritePre * %s/\s\+$//e " trim whitespace on save
augroup END
