set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
  set rtp+=~/vim/.vim/bundle/Vundle.vim
  call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/Dropbox/vim/')

" let Vundle manage Vundle, required
  Plugin 'VundleVim/Vundle.vim'

" http://vimawesome.com/plugin/the-nerd-tree {
  Plugin 'scrooloose/nerdtree'
  let NERDTreeWinSize=30
  let NERDTreeShowHidden=1
  let NERDTreeKeepTreeInNewTab=1
" } Config Plugin End

  Plugin 'tpope/vim-fugitive'
  Plugin 'tpope/vim-surround'
  Plugin 'kien/ctrlp.vim'
  Plugin 'scrooloose/syntastic'
  Plugin 'bling/vim-airline'
  Plugin 'vim-airline/vim-airline-themes'
  Plugin 'altercation/vim-colors-solarized'
  Plugin 'rking/ag.vim'
  Plugin 'valloric/youcompleteme'
  Plugin 'jelera/vim-javascript-syntax'
  Plugin 'nathanaelkane/vim-indent-guides'
  Plugin 'pangloss/vim-javascript'
" http://vimcasts.org/episodes/aligning-text-with-tabular-vim/
  Plugin 'godlygeek/tabular'



" All of your Plugins must be added before the following line
  call vundle#end()            " required
  filetype plugin indent on    " required

" Basic Options
  let mapleader = "\<Space>"
  set autoindent                 " text indenting
  set cursorline                 " Highlight current line
  set number
  set mouse=a
  set ignorecase
  set smartcase
  set visualbell
  set hlsearch
  set incsearch " search as characters are entered
  syntax enable
  set backspace=indent,eol,start " Make backspace behave in a sane manner.
  filetype plugin indent on " Enable file type detection and do language-dependent indenting.

" Tab formatting
  set expandtab
  set shiftwidth=2
  set softtabstop=2

" Misc
  set noswapfile

" Styling
  colorscheme solarized
  set background=dark

" Spacing
  nmap <S-Enter> O<Esc>j
  nmap <CR> o<Esc>k


  let g:airline#extensions#tabline#enabled = 1 " Allows airline to show tab line on top of vim

" Buffers
  nnoremap <C-T> :enew<CR>
  nnoremap <C-l> :bnext<CR>
  nnoremap <C-h> :bprevious<CR>
  set hidden " Allow hidden buffers, don't limit to 1 file per window/split
" Closes a buffer and moves to previous one - like closing a tab
  nnoremap <C-i> :bp <BAR> bd #<CR>

" Vim nagivation
  inoremap jk <ESC>

" Space leaders
  nnoremap <Leader>o :CtrlP<CR>
  noremap <Leader>w :w<CR>
  nmap <leader>q :wq<CR>
  nmap <leader>a :Ag ""<left>
  nmap <leader>/ :noh<CR>
  nmap <Leader><Leader> V
" Space leaders: copy paste to system clipboard
  vmap <Leader>y "+y
  vmap <Leader>d "+d
  nmap <Leader>p "+p
  nmap <Leader>P "+P
  vmap <Leader>p "+p
  vmap <Leader>P "+P

  noremap <Leader>gs :Gstatus<CR>
  noremap <Leader>gd :Gdiff<CR>
  noremap <Leader>gb :Gblame<CR>
  noremap <Leader>gc :Gcommit<CR>
  noremap <Leader>gr :Gread<CR>
  noremap <Leader>gw :Gwrite<CR>
  noremap <Leader>gp :Gpush<CR>
  noremap <Leader>gl :Gpush<CR>
  noremap <Leader>go :Gbrowse<CR>
  noremap <Leader>gg :Ggrep 

" Closing brackets
  "inoremap {      {}<Left>
  "inoremap {<CR>  {<CR>}<Esc>O
  "inoremap {{     {
  "inoremap {}     {}

" NerdTree Preferences
  map <C-n> :NERDTreeToggle<CR>


 " <Leader>f Code folding options {
      nmap <leader>f0 :set foldlevel=0<CR>
      nmap <leader>f1 :set foldlevel=1<CR>
      nmap <leader>f2 :set foldlevel=2<CR>
      nmap <leader>f3 :set foldlevel=3<CR>
      nmap <leader>f4 :set foldlevel=4<CR>
      nmap <leader>f5 :set foldlevel=5<CR>
      nmap <leader>f6 :set foldlevel=6<CR>
      nmap <leader>f7 :set foldlevel=7<CR>
      nmap <leader>f8 :set foldlevel=8<CR>
      nmap <leader>f9 :set foldlevel=9<CR>
      nmap <leader>fa :set foldlevel=100<CR>
    " } Config ShortCut End
