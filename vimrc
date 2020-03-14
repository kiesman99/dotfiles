set encoding=utf-8 " Enable UTF-8 Encoding for this file

" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')


" Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'

Plug 'scrooloose/nerdtree' " A File Explorer

Plug 'ryanoasis/vim-devicons' " Get some nice icons into NERDTree

Plug 'scrooloose/nerdcommenter' " Commenting Lines is easy

Plug 'tpope/vim-surround' " Extensive Plugin to add and edit surroundings

" Plug 'tpope/vim-fugitive' " A git wrapper

Plug 'itchyny/lightline.vim' " Status Bar

Plug 'ctrlpvim/ctrlp.vim' " A fuzzy finder

Plug 'airblade/vim-gitgutter' " A git integration to show which line has been edited

Plug 'liuchengxu/vista.vim' " A helpul sidebar

" Plugin for docker syntax highlighting
Plug 'ekalinin/Dockerfile.vim'

" Plugin for viewing diff
Plug 'sjl/splice.vim'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Automatically start language servers.
let g:LanguageClient_autoStart = 1

" Plug 'dracula/vim'
Plug 'arcticicestudio/nord-vim'
set termguicolors     " enable true colors support
"let ayucolor="light"  " for light version of theme
let ayucolor="mirage" " for mirage version of theme
"let ayucolor="dark"   " for dark version of theme

" Syntax Highlighting Plugins
Plug 'dart-lang/dart-vim-plugin'

call plug#end()
" END PLUGINS

" Vista configuration
function! NearestMethodOrFunction() abort
  return get(b:, 'vista_nearest_method_or_function', '')
endfunction

set statusline+=%{NearestMethodOrFunction()}

" By default vista.vim never run if you don't call it explicitly.
"
" If you want to show the nearest function in your statusline automatically,
" you can add the following line to your vimrc 
autocmd VimEnter * call vista#RunForNearestMethodOrFunction()

" LIGHTLINE Config
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'readonly', 'filename', 'modified', 'method' ] ]
      \ },
      \ 'component_function': {
      \   'method': 'NearestMethodOrFunction'
      \ },
      \ }

" custom keybindings

" NERDTree
" autocmd vimenter * NERDTree
map <C-n> :NERDTreeToggle<CR>

" THEMES
" Enable Colorscheme
" colorscheme dracula
colorscheme nord

" Custom Settings
set relativenumber  " Set relative line Numbers
set showtabline=2  " Show tabline
set guioptions-=e  " Don't use GUI tabline
syntax enable " Enable Syntax Highlighting
set showcmd " always show command prompt
set number " show absolute line numbers
