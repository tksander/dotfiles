set nocompatible              " be iMproved, require
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
" http://vimawesome.com/plugin/trailing-whitespace
" This plugin causes all trailing whitespace to be highlighted in red.
  Plugin 'bronson/vim-trailing-whitespace'

 " http://vimawesome.com/plugin/ctrlp-vim-state-of-grace {
      Plugin 'kien/ctrlp.vim'
      "let g:ctrlp_map = '<c-p>'
      "let g:ctrlp_cmd = 'CtrlP'
      let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'
      " let g:ctrlp_custom_ignore = {'dir': '\v[\/](dist|bower|bower_components|node_modules|coverage)'}
      let g:ctrlp_match_window = 'bottom,order:btt,min:1,max:20,results:20'
    " } Config Plugin End

    " http://vimawesome.com/plugin/vim-airline-sad-beautiful-tragic {
      Plugin 'bling/vim-airline'
      set laststatus=2
      " TODO # Install desired patched font (for powerline)
      " git clone https://github.com/powerline/fonts
      " mkdir -p ~/.fonts && mv desiredFonts ~/.fonts
      " fc-cache -vf ~/.fonts/
      let g:airline_powerline_fonts = 1
      let g:airline#extensions#tabline#enabled = 1
    " } Config Plugin End


  Plugin 'vim-airline/vim-airline-themes'
    let g:airline_theme='dark'
  Plugin 'altercation/vim-colors-solarized'
  Plugin 'rking/ag.vim'

  Plugin 'valloric/youcompleteme'
  Plugin 'jelera/vim-javascript-syntax'
  Plugin 'nathanaelkane/vim-indent-guides'
  Plugin 'pangloss/vim-javascript'
  " https://github.com/scrooloose/nerdcommenter {
  Plugin 'scrooloose/nerdcommenter'
   " Add spaces after comment delimiters by default
   let g:NERDSpaceDelims = 1
  " }

 " http://vimawesome.com/plugin/syntastic {
      Plugin 'scrooloose/syntastic'
      let g:syntastic_always_populate_loc_list = 1
      " TODO sudo npm install -g jscs jshint
      let g:syntastic_javascript_checkers = ['jshint', 'jscs']
      let g:syntastic_error_symbol = '✗'
      let g:syntastic_warning_symbol = '!'
      " TODO sudo apt-get install tidy
      " html5 support https://github.com/htacg/tidy-html5
      let g:syntastic_html_tidy_exec = 'tidy'
      " Config to make it work better with AngularJS
      let g:syntastic_html_tidy_ignore_errors=["proprietary attribute " ,"trimming empty <", "unescaped &" , "lacks \"action", "is not recognized!", "discarding unexpected"]
    " } Config Plugin End
    "
" http://vimcasts.org/episodes/aligning-text-with-tabular-vim/
  Plugin 'godlygeek/tabular'

" http://vimawesome.com/plugin/vim-gitgutter
  Plugin 'airblade/vim-gitgutter'

" http://vimawesome.com/plugin/numbers-vim
  Plugin 'myusuf3/numbers.vim'

" http://vimawesome.com/plugin/typescript-vim
  Plugin 'leafgarland/typescript-vim'

" http://vimawesome.com/plugin/tsuquyomi
  Plugin 'quramy/tsuquyomi'

" http://vimawesome.com/plugin/vimproc-vim
  Plugin 'shougo/vimproc.vim'

 " http://vimawesome.com/plugin/matchit-zip
  Plugin 'matchit.zip'

 " http://vimawesome.com/plugin/autoclose
  Plugin 'townk/vim-autoclose'

 " http://vimawesome.com/plugin/javascript-indent
  Plugin 'JavaScript-Indent'

  " http://vimawesome.com/plugin/vim-jsx
  Plugin 'mxw/vim-jsx'

    " http://vimawesome.com/plugin/tagbar {
      "Plugin 'majutsushi/tagbar'
      "" TODO sudo apt-get install exuberant-ctags
      "" http://ctags.sourceforge.net/
      "let g:tagbar_width=30
      "" let g:tagbar_autofocus=1
      "autocmd Filetype * nested :call tagbar#autoopen(0)
      "" Angular html
      "let g:tagbar_type_html = {
          "\ 'csagstype' : 'html',
          "\ 'kinds'     : [
              "\ 'd:directive'
          "\ ]
      "\ }
      "" Angular javascript
      "let g:tagbar_type_javascript = {
          "\ 'csagstype' : 'JavaScript',
          "\ 'kinds'     : [
              "\ 'M:module',
              "\ 'C:controller',
              "\ 'D:directive',
              "\ 'E:decorator',
              "\ 'I:filter',
              "\ 'S:service',
              "\ 'r:ngRoute',
              "\ 'F:factory',
              "\ 'd:delegate',
              "\ 'c:class',
              "\ 'm:method',
              "\ 'v:scopeVariables',
              "\ 't:this',
              "\ 'o:model'
          "\ ]
      "\ }
    " } Config Plugin End
    "
 "TODO: This breaks Typescript Syntax Highlighting
  "http://vimawesome.com/plugin/instant-markdown-vim
   " Plugin 'suan/vim-instant-markdown'
   " filetype plugin on

   "http://vimawesome.com/plugin/notes-vim
   Plugin 'xolox/vim-notes'

  " http://vimawesome.com/plugin/indentline {
      Plugin 'Yggdroot/indentLine'
      let g:indentLine_char = '¦'
      let g:indentLine_enabled = 0
    " } Config Plugin End

   "http://vimawesome.com/plugin/vim-misc
   Plugin 'xolox/vim-misc'

" http://vimawesome.com/plugin/vim-devicons-holy-gound {
    Plugin 'ryanoasis/vim-devicons'
    let g:webdevicons_conceal_nerdtree_brackets = 1
    let g:webdevicons_enable_nerdtree = 1
    " These are the basic settings to get the font to work (required):

    " TODO # Install desired patched font (for devicons)
    " git clone https://github.com/ryanoasis/nerd-fonts.git
    " mkdir -p ~/.fonts && mv desiredFonts ~/.fonts
    " Update font cache: fc-cache -fv
  " } Config Plugin End

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
  set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Nerd\ Font\ Complete.otf:h11
  set encoding=utf-8

" Folding
  set foldlevelstart=20
  set foldmethod=indent

" Spacing
  nmap <S-Enter> O<Esc>j
  nmap <CR> o<Esc>k

  set colorcolumn=100            " Set gray bar at 100 character
  set smartindent                " as above
  set softtabstop=2              " as above
  set splitbelow                 " Puts new split windows to the bottom of the current
  set splitright                 " Puts new vsplit windows to the right of the current
  set tabpagemax=15              " Only show 15 tabs
  set tabstop=2                  " number of spaces in a tab
  set mouse=a                    " Allow mouse usageet nojoinspaces               " Prevents inserting two spaces after punctuation on a join (J)

  let g:airline#extensions#tabline#enabled = 1 " Allows airline to show tab line on top of vim

" Buffers
  nnoremap <C-T> :enew<CR>
  nnoremap <C-l> :bnext<CR>
  nnoremap <C-h> :bprevious<CR>
  set hidden " Allow hidden buffers, don't limit to 1 file per window/split
" Closes a buffer and moves to previous one - like closing a tab
  nnoremap <C-i> :bp <BAR> bd #<CR>

" Vim nagivation
  inoremap <C-c> <ESC>

" <Leader>i Indent lines {
  nmap <Leader>il :IndentLinesToggle<CR>
  " Use tidy to indent html attribute on selected line (visual mode)
  nmap <silent> <Leader>ic :!tidy -q -i -xml --indent-attributes 1 --show-errors 0<CR>
  vmap <silent> <Leader>ic :!tidy -q -i -xml --indent-attributes 1 --show-errors 0<CR>
" } Config ShortCut End
"
" Space leaders
  nnoremap <Leader>o :CtrlP<CR>
  noremap <Leader>w :w<CR>
  nmap <leader>q :wq<CR>
  nmap <leader>a :Ag ""<left>
  nmap <leader>/ :noh<CR>
  nmap <Leader><Leader> V
  nmap <Leader>c :w !open %
" Space leaders: copy paste to system clipboard
  vmap <Leader>y "+y
  vmap <Leader>d "+d
  nmap <Leader>p "+p
  nmap <Leader>P "+P
  vmap <Leader>p "+p
  vmap <Leader>P "+P

" Space leaders: Git Commands
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

" youcompleteme subcommand mappings
  nnoremap <Leader>yd :YcmCompleter GoToDeclaration<CR>
  nnoremap <leader>yf :YcmCompleter GoToDefinition<CR>
  nnoremap <leader>yr :YcmCompleter GoToReferences<CR>
  nnoremap <leader>yo :YcmCompleter GetDoc<CR>
  nnoremap <leader>yt :YcmCompleter GetType<CR>

" Delete and replace with last copy
  noremap <Leader><Enter> diwh"0p<cr>

" Auto carriage return and tab with braces
  inoremap {<cr> {<cr>}<c-o>O<tab>
  inoremap [<cr> [<cr>]<c-o>O<tab>
  inoremap (<cr> (<cr>)<c-o>O<tab>

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

    " Find merge conflict markers
      map <leader>fc /\v^[<\|=>]{7}( .*\|$)<CR>
