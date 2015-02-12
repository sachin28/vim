set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Plugins
Plugin 'elzr/vim-json'
Plugin 'nanotech/jellybeans.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-fugitive'
Plugin 'Valloric/YouCompleteMe'
Plugin 'Valloric/ycmd'
Plugin 'vim-scripts/taglist.vim'

" Required, plugins available after
call vundle#end()            " required

" Above Plugin Settings
let mapleader=","       " Define global Leader for shortcut

" Syntastic Check additional config
let g:syntastic_mode_map = { 'mode': 'passive' }   " Perform syntastic test manually

" YouCompleteMe C-code completion additional config
autocmd CompleteDone * pclose  " YouCompleteMe close Preview automatically
let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py" " Copied for C-family from ycmd/cpp dir
let g:ycm_confirm_extra_conf = 0  " Avoid confirmation to load over again
let g:ycm_enable_diagnostic_highlighting = 0  " Turn of highlighting


" Below are the commands that are not part of Vundle
filetype plugin indent on
syntax on
syntax enable       " enable syntax processing


" Color
color jellybeans
let g:jellybeans_use_lowcolor_black = 0

set encoding=utf-8

" General
set number          " show line numbers
set paste
set wildmenu        " visual autocomplete for command menu
set title           " Show filename.ext and path
set noeb vb t_vb=   " stop beep
set noswapfile

" Don’t add empty newlines at the end of files
set binary
set noeol

" Highlight current line
set cursorline

" Highlight searches
set hlsearch

" Ignore case of searches
set ignorecase

" Highlight dynamically as pattern is typed
set incsearch

" Always show status line
set laststatus=2

" <Ctrl-l> redraws the screen and removes any search highlighting.
nnoremap <silent> <C-l> :nohl<CR><C-l>

" Don’t reset cursor to start of line when moving around.
set nostartofline

" Show the cursor position
set ruler

" Don’t show the intro message when starting Vim
set shortmess=atI

" Show the current mode
set showmode

" Show the filename in the window titlebar
set title

" Nerdtree
nmap <leader>n :NERDTreeToggle<CR>
let NERDTreeHighlightCursorline=1
let NERDTreeIgnore = ['tmp']


" Ctags
set autochdir " look in parent directory parent for the tags file, recursively.
set tags=tags;

" strip trailing whitespace on save for some filetypes
autocmd FileType c,cpp,python,javascript,htmldjango,less,scss,css,make,json,jade
    \ autocmd BufWritePre <buffer> :%s/\s\+$//e

" File extension associations
au BufRead,BufNewFile *.pyt set filetype=python
au BufRead,BufNewFile *.jst set filetype=javascript
au BufRead,BufNewFile *.tmpl set filetype=htmldjango
au BufRead,BufNewFile *.html set filetype=htmldjango
au BufRead,BufNewFile *.json set filetype=json
au BufRead,BufNewFile master.cfg set filetype=python
au BufRead,BufNewFile *git\/config set filetype=gitconfig
au BufRead,BufNewFile *.md,*.markdown set filetype=ghmarkdown


" Show me extra whitespace
hi ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

" Highlight some relevant columns
" let max_width=$MAX_WIDTH
let max_width=120
execute "set cc=".max_width
hi ColorColumn ctermbg=lightgrey guibg=lightgrey

" Compile python code from vim
nmap <leader>p :!clear;python %<CR>

" Shortcuts for syntax
ab impdb import ipdb
ab ips   import ipdb; ipdb.set_trace()
ab ist   ipdb.set_trace()



" Tabs and spaces  - Keep at the EOF as some plugin seems to override the expantab
set expandtab       " insert spaces when hitting TABs
set textwidth=120   " lines longer than 120 columns will be broken
set tabstop=4       " a hard TAB displays as 4 columns
set softtabstop=4   " insert/delete 4 spaces when hitting a TAB/BACKSPACE
set shiftwidth=4    " operation >> indents 4 columns; << unindents 4 columns
set backspace+=start,eol,indent

" Indenting
set autoindent
set shiftround      " Use multiple of shiftwidth when indenting with '<' and '>'
set smartindent
set copyindent





" References
" YouCompleteMe(C-family) - http://www.alexeyshmalko.com/2014/youcompleteme-ultimate-autocomplete-plugin-for-vim/ 



