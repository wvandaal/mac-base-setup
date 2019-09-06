" Willem's most-excellent Vim dotfiles

" Install vim-plug if it doesn't exist
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" install plugins
call plug#begin('~/.vim/plugged')

Plug 'pangloss/vim-javascript'        " improved js highlighting and other options	
Plug 'tomasr/molokai'                 " molokai color scheme
Plug 'Lokaltog/vim-easymotion'        " easymotion pattern matching
Plug 'tpope/vim-fugitive'             " git command support
Plug 'airblade/vim-gitgutter'         " git diff signs in gutter
Plug 'Lokaltog/vim-powerline'         " descriptive status bar
Plug 'ap/vim-css-color'               " highlight hex color-codes in the color they represent
Plug 'ervandew/supertab'              " Allow for tab completion in insert mode
Plug 'terryma/vim-multiple-cursors'   " multiple cursors like those in Sublime Text

" Sublime text snippets
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'

" finish installing plugins
call plug#end()


inoremap ii <ESC>					" map ii to ESC
nnoremap <CR> :nohlsearch<CR><CR> 			" toggle off search highlighting with 'Enter' 

syntax on						" syntax highlighting
set encoding=utf-8					" char encoding
set mouse+=a 						" allow input with mouse
set nu							" line numbers
set laststatus=2 					" keep status line visible always
set hlsearch 						" turn on search highlighting

" auto-indent braces and set tab width to 4 spaces
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab


"   Splitting Options   "
"""""""""""""""""""""""""
set winheight=30
set winminheight=5

" map + and - to pane resizing
nnoremap <silent> + :exe "resize " . (winheight(0) * 3/2)<CR>
nnoremap <silent> - :exe "resize " . (winheight(0) * 2/3)<CR>

" pane navigation shortcuts
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l


" Set 80 col ruler 
if exists('+colorcolumn')
  set colorcolumn=80
else
  au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
endif


"   Supertab Options    "
"""""""""""""""""""""""""
set completeopt=longest,menuone


"  Colorscheme Options  "
"""""""""""""""""""""""""
" set vim to 256 colors
if $TERM == "xterm-256color" || $TERM == "screen-256color" || $COLORTERM == "gnome-terminal"
  set t_Co=256 						
endif				

" molokai 256 colors, should come before colorscheme declaration
let g:rehash256 = 1					
syntax enable						" enable complex color schemes
colorscheme molokai					" set molokai color scheme


"  Easymotion Settings  "
"""""""""""""""""""""""""
" map <Leader> <Plug>(easymotion-prefix)
map  // <Plug>(easymotion-sn)
omap // <Plug>(easymotion-tn)
let g:EasyMotion_smartcase = 1
