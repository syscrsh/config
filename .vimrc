" This needs to happen so when a python virtenv 
" is activated and vim is used it finds the correct modules 
" for powerline, otherwise the virtenv python installation 
" will be used and throw a ModuleNotFound Error
python3 sys.path.append('/usr/lib/python3/dist-packages')

" start powerline 
python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup()
python3 del powerline_setup

" start pathogen plugin manager
execute pathogen#infect()
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p

" bindings for nerdtree
let NERDTreeShowHidden=1
nmap <F2> :NERDTreeFind<CR>
nmap <F1> :NERDTreeToggle<CR>

" ctrl-pv vim fuzzy finder
set runtimepath^=~/.vim/bundle/ctrlp.vim

" binding for ctrp fuzzy finder
nnoremap <F3> :CtrlP<CR>

" binding for mundo
nnoremap <F4> :MundoToggle<CR>

" binding for yankring
" and location of yank file
nnoremap <F5> :YRShow<CR>
let g:yankring_history_dir = '/home/asphyxia/.vim/'

" colorscheme and syntax 
colorscheme slate
syntax on

" load plugins and ident settings 
" based on file type
filetype plugin on
filetype indent on

" use sudo when vim is started without sudo
cmap w!! w !sudo tee > /dev/null %

" automatically enter to main window instead of nerdtree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" clear search result highlighting with CTRL+L
nnoremap <silent> <C-l> :nohl<CR><C-l>

" show cursor line and column in status
set ruler

" always display a status line
set laststatus=2

" allow mouse
set mouse=a

" show tabs as 4 spaces
set tabstop=4

" number of spaces for indent
set shiftwidth=4

" convert tabs into spaces
set expandtab

" copy indent from previous line
set autoindent

" dont wrap long lines
set nowrap

" search case-insensitively unless uppercase characters are used
set ignorecase smartcase

" use line numbers
set number 

" use relative line numbers
set rnu

" show match when searching
set showmatch

" hightlight matches
set hlsearch

" enable incremental search
set incsearch

" enable persistent undo
set undofile
set undodir=~/.vim/undo
