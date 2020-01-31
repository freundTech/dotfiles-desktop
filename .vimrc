"Syntax
syntax on

"Line numbers
set number
set relativenumber

"Indents
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab

"Navigation
noremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')
noremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')

"Search
set incsearch
set hlsearch

"Windows
set splitright
set splitbelow

"Plugins

"CamelCaseMotion
let g:camelcasemotion_key=','

"delimitMate
let delimitMate_expand_cr=1

"nerdtree
map <C-n> :NERDTreeToggle<CR>
