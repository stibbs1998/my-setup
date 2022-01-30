set nocompatible " be iMproved, required

" set the runtime path to include Vundle and initialize
call plug#begin('~/.vim/plugged')

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'vim-scripts/AutoComplPop' 
Plug 'sudar/comments.vim'
Plug 'jalvesaq/Nvim-R' , {'for': ['R', 'Rmd', 'rnoweb']}
Plug 'iamcco/markdown-preview.nvim' , {'for': 'markdown'}

" All of your Plugins must be added before the following line
call plug#end() " required
filetype plugin indent on    " required

" SYNTAX CONFIGURATION
syntax on
:colorscheme gruvbox
:set bg=dark

" CUSTOM SNIPPETS
let mapleader = " "
map 0 ^
nnoremap ,chunk :-1read ~/.vim/snippets/rchunk.txt<CR>3wi
nnoremap ,flex :-1read ~/.vim/snippets/flexdashboard.txt<CR>j$i
nnoremap ,plt :-1read ~/.vim/snippets/pyplot.txt<CR>ji
nnoremap ,pylibs :-1read ~/.vim/snippets/python_libs.txt<CR>
nnoremap ,pydoc :-1read ~/.vim/snippets/python_doc.txt<CR>
nnoremap ,pysql :-1read ~/.vim/snippets/pysql.txt<CR>38j3wci"
nnoremap ,rsql :-1read ~/.vim/snippets/rsql.txt<CR>
nnoremap ,rlibs :-1read ~/.vim/snippets/r_libs.txt<CR>
nnoremap ,valuebox :-1read ~/.vim/snippets/valuebox.txt<CR>1wa

" Split Windows shortcuts
nnoremap <leader>= :wincmd =<CR>
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>pv :wincmd v <bar> :Ex <bar> :vertical resize 30<CR>

" key-mappings for comment line in normal mode
noremap  <silent> <leader>cm :call CommentLine()<CR>
" key-mappings for range comment lines in visual <Shift-V> mode
vnoremap <silent> <leader>cm :call RangeCommentLine()<CR>

" key-mappings for un-comment line in normal mode
noremap  <silent> <leader>ucm :call UnCommentLine()<CR>
" key-mappings for range un-comment lines in visual <Shift-V> mode
vnoremap <silent> <leader>ucm :call RangeUnCommentLine()<CR>

" Tab completion remap
inoremap <C-k> <C-p>
inoremap <C-j> <C-n>

" dplyr pipe
autocmd FileType r inoremap <buffer> >> <Esc>:normal! a %>%<CR>a 
autocmd FileType rnoweb inoremap <buffer> >> <Esc>:normal! a %>%<CR>a 
autocmd FileType rmd inoremap <buffer> >> <Esc>:normal! a %>%<CR>a 

" MISC SETTINGS
set ai "Auto indent
" set hlsearch "Highlight search result
set incsearch "Incremental search
set lazyredraw 
set mat=2 " indent space
set nocompatible              " be iMproved, required
set noerrorbells "No error bells
set nohlsearch "Temporarily clear highlights
set nowrap "Don't wrap Lines
set number relativenumber "Line numbers!!!!!
set path+=** " Search all file paths
set shiftwidth=4
set showcmd " Show command as you type it
set showmatch
set si "Smart indent
set tabstop=4 "Tab = 4 space keys
set wildmenu " Display all matching files when we tab complete
