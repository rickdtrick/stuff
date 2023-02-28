set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim

call plug#begin()


" ZOOMWIN
Plug 'vim-scripts/ZoomWin'

" Emmet
Plug 'mattn/emmet-vim'

" Git commands
Plug 'tpope/vim-fugitive'

" Commenter
Plug 'scrooloose/nerdcommenter'

" Rspec Highlighting
Plug 'Keithbsmiley/rspec.vim'

" Badwolf
Plug 'sjl/badwolf'

" NerdTree
Plug 'scrooloose/nerdtree'

" CtrlP
Plug 'kien/ctrlp.vim'

" Haml
Plug 'tpope/vim-haml'

" hybrid material
Plug 'kristijanhusak/vim-hybrid-material'

" Coffee Script
Plug 'kchmck/vim-coffee-script'

" Endwise
Plug 'tpope/vim-endwise'

" Matchit
Plug 'Spaceghost/vim-matchit'

" jsx
 Plug 'pangloss/vim-javascript'
 Plug 'mxw/vim-jsx'

" elixir
Plug 'elixir-lang/vim-elixir'

" Set leader key
let mapleader=","

" Status Line
Plug 'vim-airline/vim-airline-themes'

call plug#end()

syntax enable
filetype plugin indent on

set t_Co=256
set background=dark
colorscheme hybrid_material

au! BufNewFile,BufRead crontab.* set nobackup | set nowritebackup

" Custom Mappings
imap jj <Esc>
imap jk <Esc>
imap dw <C-w>
imap ;; <c-y>,
imap :zz :ZoomWin<cr>
map <Tab> :NERDTreeToggle <cr>
nnoremap <leader>n :NERDTreeToggle <cr>
nn <leader>zz :ZoomWin<cr>
nnoremap ; :
" UI
set guifont=*
set guifont=Monaco:h10
set nowrap
set hlsearch
set incsearch
set mouse=ncr
set relativenumber
set number
set tabstop=2
set softtabstop=2
set shiftwidth=2
set noswapfile
set expandtab
set backspace=indent,eol,start
set showmatch
set autoindent
set noeb vb t_vb=
set list lcs=trail:·,tab:»·

let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline_fugitive_prefix = ''
let g:airline_theme='hybrid'


" Buffers
au BufNewFile,BufRead *.ejs set filetype=html
au BufNewFile,BufRead *.jade set filetype=haml
au BufNewFile,BufRead *.hamljs set filetype=haml

" CLIPBOARD
let os=substitute(system('uname'), '\n', '', '')
if os == 'Darwin' || os == 'Mac'
  vmap <C-c> y:call system("pbcopy", getreg("\""))<CR>
elseif os == 'Linux'
  vmap <C-c> y:call system("xclip -i -selection clipboard", getreg("\""))<CR>:call system("xclip -i", ge
endif
