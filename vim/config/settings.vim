syntax on
set number
set expandtab
set tabstop=2
set shiftwidth=2

set hlsearch
set ignorecase
set smartcase

set autoindent
set smartindent

set mouse=a
set laststatus=2
set cursorline
set ttymouse=xterm2

set directory=~/tmp//,.,/var/tmp//,/tmp//

set clipboard=unnamed " share clipboard with OSX

au FileType ruby setlocal tabstop=2 softtabstop=2 shiftwidth=2
au FileType python setlocal tabstop=2 softtabstop=2 shiftwidth=2
au BufNewFile,BufRead COMMIT_EDITMSG setlocal spell " git commit messages
au FileType markdown setlocal spell

let g:netrw_dirhistmax = 0

set modeline
set modelines=5

